uint64_t sub_24B9AA28C(uint64_t a1, double a2, double a3)
{
  v6 = [*(a1 + 16) platform];
  type metadata accessor for InstalledApp();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
  }

  swift_beginAccess();
  v8 = *(v3 + 64);
  if (*(v8 + 16) && (v9 = sub_24BA157D4(v7, v6, a2, a3), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 16 * v9);
    v12 = *v11;
    v13 = v11[1];
    swift_retain_n();
    v14 = v13;
    swift_endAccess();

    sub_24B9B0B04(v12, v13);
    return v12;
  }

  else
  {

    swift_endAccess();
    return 0;
  }
}

uint64_t sub_24B9AA390(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = [*(a1 + 16) platform];
  type metadata accessor for InstalledApp();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
  }

  swift_beginAccess();
  if (*(*(v3 + 64) + 16))
  {
    sub_24BA157D4(v8, v7, a2, a3);
    if (v9)
    {
      swift_endAccess();
LABEL_8:
      v14 = 0;
      goto LABEL_9;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v10 = *(v3 + 48);

  v11 = sub_24B91491C(v8, v7, v10, a2, a3);

  if (v11)
  {
    goto LABEL_8;
  }

  swift_beginAccess();
  v12 = *(v4 + 56);

  v13 = sub_24B91491C(v8, v7, v12, a2, a3);

  if (v13)
  {
    goto LABEL_8;
  }

  swift_beginAccess();
  v16 = *(v4 + 40);

  v17 = sub_24B9A9810(v8, v7, v16, a2, a3);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    swift_beginAccess();
    sub_24B9AADD0(v17);
    swift_endAccess();
  }

  swift_beginAccess();

  sub_24B9AF9C0(0, 0, v8, v7, a2, a3);
  swift_endAccess();

  sub_24B9AAE74();
  v14 = 1;
LABEL_9:

  return v14;
}

id sub_24B9AA5DC(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 72);
  if (*(v8 + 16) && (v9 = sub_24BA157D4(0, a1, a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    v12 = v11;
  }

  else
  {
    swift_endAccess();
    if (a1 == 3)
    {
      v13 = sub_24BAA9FDC();
      v14 = [objc_opt_self() bundleWithIdentifier_];

      v15 = sub_24BAA9FDC();
      v11 = [objc_opt_self() imageNamed:v15 inBundle:v14 compatibleWithTraitCollection:0];

      if (v11)
      {
        swift_beginAccess();
        v16 = v11;
        sub_24BA1B5CC(v11, 0, 3, a2, a3);
        swift_endAccess();
      }
    }

    else
    {
      v17 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a2 scale:{a2, a3}];
      [v17 setDrawBorder_];
      v18 = [objc_opt_self() genericApplicationIcon];
      v19 = [v18 CGImageForDescriptor_];
      v11 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

      swift_beginAccess();
      v20 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(v4 + 72);
      *(v4 + 72) = 0x8000000000000000;
      sub_24BA1F9C0(v20, 0, a1, isUniquelyReferenced_nonNull_native, a2, a3);
      *(v4 + 72) = v23;
      swift_endAccess();
    }
  }

  return v11;
}

double sub_24B9AA8A4@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v20 = *v1;
  v21[0] = v3;
  *(v21 + 9) = *(v1 + 25);
  sub_24B9A9998(&v12);
  v4 = v12;
  v5 = v13;
  v6 = v14;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 9) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  result = *&v19;
  *(a1 + 48) = v19;
  return result;
}

uint64_t sub_24B9AA96C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24BAAA81C();
  if (a1 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a1;
  }

  MEMORY[0x24C2508F0](*&v8);
  if (a2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a2;
  }

  MEMORY[0x24C2508F0](*&v9);
  return MEMORY[0x24C2508C0](a5);
}

uint64_t sub_24B9AA9E0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[3];
  sub_24BAAA7FC();
  sub_24B9AA96C(v2, v3, v6, v1, v4);
  return sub_24BAAA84C();
}

uint64_t sub_24B9AAA54()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[3];
  sub_24BAAA7FC();
  sub_24B9AA96C(v2, v3, v6, v1, v4);
  return sub_24BAAA84C();
}

uint64_t sub_24B9AAAD8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24BAA9E3C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B8F37E8(0, &qword_27F0644F0);
  (*(v7 + 104))(v9, *MEMORY[0x277D851C0], v6);
  v10 = sub_24BAAA36C();
  (*(v7 + 8))(v9, v6);
  v11 = MEMORY[0x277D84F90];
  *(v3 + 16) = v10;
  v12 = MEMORY[0x277D84FA0];
  *(v3 + 40) = v11;
  *(v3 + 48) = v12;
  *(v3 + 56) = v12;
  *(v3 + 64) = sub_24BA208D0(v11);
  *(v3 + 72) = sub_24BA20A14(v11);
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return v3;
}

void *sub_24B9AAC3C(uint64_t a1, double a2, double a3)
{
  v6 = [*(a1 + 16) platform];
  type metadata accessor for InstalledApp();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
  }

  swift_beginAccess();
  v8 = *(v3 + 64);
  if (*(v8 + 16) && (v9 = sub_24BA157D4(v7, v6, a2, a3), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 16 * v9);
    v12 = *v11;
    v13 = v11[1];
    v14 = v13;

    v15 = v14;
    swift_endAccess();

    sub_24B9B0B04(v12, v13);
    return v13;
  }

  else
  {

    swift_endAccess();
    return 0;
  }
}

uint64_t sub_24B9AAD44(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24B9AEC44(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24B9AADD0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24B9AECC0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 32 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 64), 32 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_24B9AAE74()
{
  v1 = v0;
  v2 = sub_24BAA9E2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA9E5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v11 = v1[5];
  v12 = *(v11 + 16);
  if (v12)
  {
    result = swift_beginAccess();
    v13 = *(v1[6] + 16);
    v14 = v1[3];
    v15 = __OFSUB__(v14, v13);
    v16 = v14 - v13;
    if (!((v16 < 0) ^ v15 | (v16 == 0)))
    {
      if (v16 < v12)
      {
        v12 = v16;
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else
      {
        if (*(v11 + 16) >= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = *(v11 + 16);
        }

        if (v17)
        {
          v30 = v12;
          v37 = v1[2];
          v36 = v41;
          v35 = (v3 + 8);
          v34 = (v7 + 8);

          v29[1] = v11;
          v18 = (v11 + 56);
          v33 = v2;
          v32 = v5;
          v31 = v9;
          do
          {
            v19 = *(v18 - 3);
            v20 = *(v18 - 2);
            v21 = *(v18 - 1);
            v22 = *v18;
            swift_beginAccess();
            swift_retain_n();
            sub_24B8E5DFC(aBlock, v19, v22, v20, v21);
            swift_endAccess();

            v23 = swift_allocObject();
            swift_weakInit();
            v24 = swift_allocObject();
            *(v24 + 2) = v23;
            *(v24 + 3) = v19;
            v38 = v19;
            v39 = v23;
            v24[4] = v20;
            v24[5] = v21;
            *(v24 + 6) = v22;
            v41[2] = sub_24B9AFAF0;
            v41[3] = v24;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            v41[0] = sub_24B97ACC4;
            v41[1] = &block_descriptor_6;
            v25 = _Block_copy(aBlock);

            sub_24BAA9E4C();
            v41[4] = MEMORY[0x277D84F90];
            sub_24B9B0B44(&qword_27F063470, 255, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
            sub_24B97C674();
            v26 = v17;
            v27 = v32;
            v28 = v33;
            sub_24BAAA48C();
            MEMORY[0x24C250400](0, v9, v27, v25);
            _Block_release(v25);

            (*v35)(v27, v28);
            (*v34)(v9, v6);

            v18 += 4;
            v17 = v26 - 1;
          }

          while (v26 != 1);
          swift_unknownObjectRelease();
          v12 = v30;
        }

        result = swift_beginAccess();
        if (*(v1[5] + 16) >= v12)
        {
          sub_24B9AFBD8(0, v12, sub_24B99A96C, sub_24B9AFB18);
          return swift_endAccess();
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24B9AB360(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;

    sub_24B9AFCB0(a4, a5, a1, a2, a1, a2, v10, v10, a4, a5);
  }

  return result;
}

uint64_t sub_24B9AB41C(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_24BAA9E2C();
  v24 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24BAA9E5C();
  v14 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B8F37E8(0, &qword_27F0644F0);
  v17 = sub_24BAAA33C();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  *(v19 + 32) = a5;
  *(v19 + 40) = a2;
  *(v19 + 48) = a3;
  *(v19 + 56) = a6;
  aBlock[4] = sub_24B9B0AE0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = &block_descriptor_30_0;
  v20 = _Block_copy(aBlock);

  v21 = a1;

  sub_24BAA9E4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24B9B0B44(&qword_27F063470, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B97C674();
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v16, v13, v20);
  _Block_release(v20);

  (*(v24 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v23);
}

uint64_t sub_24B9AB73C(double a1, double a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    type metadata accessor for AppIconCache();
    sub_24B9B0B44(&qword_27F0651D0, v13, type metadata accessor for AppIconCache);
    sub_24BAA814C();
    sub_24BAA816C();

    if (a4)
    {
      v14 = a4;
      v15 = sub_24BAA990C();
      swift_beginAccess();

      v16 = v14;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v12 + 64);
      *(v12 + 64) = 0x8000000000000000;
      sub_24BA1FB5C(v15, v16, a5, a6, isUniquelyReferenced_nonNull_native, a1, a2);

      *(v12 + 64) = v20;
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();

      sub_24B8E5DFC(v21, a5, a6, a1, a2);
      swift_endAccess();
    }

    swift_beginAccess();
    v18 = sub_24B9ACB28(a5, a6, a1, a2);
    swift_endAccess();
    v19 = sub_24B9B0AF4(v18);
    sub_24B9AAE74(v19);
  }

  return result;
}

void sub_24B9AB970(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48[7] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0654F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - v6;
  if (*(v2 + 32) == 1 && a1)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);

    v10 = sub_24BAA9FDC();
    v11 = [objc_opt_self() serviceForClientIdentifier_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0669E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24BAAD5B0;
    *(inited + 32) = v8;
    *(inited + 40) = v9;

    sub_24B8F3034(inited);
    swift_setDeallocating();
    sub_24B9528C8(inited + 32);
    v13 = sub_24BAAA1FC();

    v48[0] = 0;
    v14 = [v11 getAppInfoForBundleIdentifiers:v13 error:v48];

    v15 = v48[0];
    sub_24B8F37E8(0, &qword_27F066CB0);
    v16 = sub_24BAA9EEC();
    v17 = v15;

    if (*(v16 + 16))
    {
      v18 = sub_24BA1575C(v8, v9);
      v20 = v19;

      if (v20)
      {
        v21 = *(*(v16 + 56) + 8 * v18);

        if (!v17)
        {
          goto LABEL_18;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    v21 = 0;
    if (!v17)
    {
LABEL_18:
      if (v21)
      {
        v39 = [v21 cachedIconURL];
        if (v39)
        {
          v40 = v39;
          sub_24BAA7D3C();

          v41 = 0;
          v11 = v40;
        }

        else
        {
          v41 = 1;
        }

        v43 = sub_24BAA7D5C();
        (*(*(v43 - 8) + 56))(v7, v41, 1, v43);
        sub_24B9B0A28(v7, a2);
      }

      else
      {

        v42 = sub_24BAA7D5C();
        (*(*(v42 - 8) + 56))(a2, 1, 1, v42);
      }

      return;
    }

LABEL_12:
    v47 = v11;
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v24 = sub_24BAA812C();
    __swift_project_value_buffer(v24, qword_27F077038);
    v25 = v17;
    v26 = sub_24BAA810C();
    v27 = sub_24BAAA2AC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48[0] = v45;
      *v28 = 136446466;
      v29 = sub_24BAAA86C();
      v31 = sub_24B8E49D4(v29, v30, v48);
      v46 = v17;
      v32 = v31;

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = [v25 localizedDescription];
      v34 = sub_24BAAA01C();
      v36 = v35;

      v37 = sub_24B8E49D4(v34, v36, v48);

      *(v28 + 14) = v37;
      v17 = v46;
      _os_log_impl(&dword_24B8D3000, v26, v27, "[%{public}s] %s", v28, 0x16u);
      v38 = v45;
      swift_arrayDestroy();
      MEMORY[0x24C251390](v38, -1, -1);
      MEMORY[0x24C251390](v28, -1, -1);
    }

    else
    {
    }

    v11 = v47;
    goto LABEL_18;
  }

  v22 = sub_24BAA7D5C();
  v23 = *(*(v22 - 8) + 56);

  v23(a2, 1, 1, v22);
}

void sub_24B9ABF28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_24B9ABF94()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24B9AC018(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B9AC060(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24B9AC0AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24B9AC108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
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

uint64_t sub_24B9AC18C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_24B9AC1D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B9AC250()
{
  result = qword_27F066C78;
  if (!qword_27F066C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066C78);
  }

  return result;
}

uint64_t sub_24B9AC2A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24BAA814C();
  *a1 = result;
  return result;
}

uint64_t sub_24B9AC3E4(void *a1, unint64_t *a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v10 = *v5;
    }

    else
    {
      v10 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = a1;
    v12 = sub_24BAAA57C();

    if (v12)
    {
      v13 = sub_24B9ACFD8(v10, v11, a5, a2);

      return v13;
    }

    return 0;
  }

  v16 = v5;
  sub_24B8F37E8(0, a2);
  v17 = sub_24BAAA3BC();
  v18 = -1 << *(v7 + 32);
  v19 = v17 & ~v18;
  if (((*(v7 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return 0;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v7 + 48) + 8 * v19);
    v22 = sub_24BAAA3CC();

    if (v22)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v7 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v24 = v26;
  }

  v25 = *(*(v24 + 48) + 8 * v19);
  sub_24B9AD3D8(v19);
  result = v25;
  *v16 = v26;
  return result;
}

uint64_t sub_24B9AC58C(unsigned __int8 a1)
{
  v3 = *v1;
  sub_24BAAA7FC();
  MEMORY[0x24C2508C0](a1);
  v4 = sub_24BAAA84C();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 7;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 7;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B8E8CA0();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_24B9AD578(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_24B9AC694(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_24BAAA7FC();
  sub_24BAAA07C();
  v6 = sub_24BAAA84C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_24BAAA78C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B8E89B4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_24B9AD720(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_24B9AC7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for FocusSystemConfigurationAction(0);
  v24 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v7 = *v2;
  sub_24BAAA7FC();
  sub_24BAA7E4C();
  sub_24B9B0B44(&unk_27F063400, 255, MEMORY[0x277CC95F0]);
  sub_24BAA9F1C();
  v29 = *(a1 + v4[5]);
  sub_24BAAA81C();
  v28 = *(a1 + v4[6]);
  sub_24BAAA81C();
  v8 = (a1 + v4[7]);
  v9 = *v8;
  v26 = v8[1];
  v27 = v9;
  sub_24BAAA07C();
  v25 = *(a1 + v4[8]);
  sub_24BAAA3DC();
  v10 = sub_24BAAA84C();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return (*(v24 + 56))(v23, 1, 1, v4);
  }

  v13 = ~v11;
  v14 = *(v24 + 72);
  while (1)
  {
    sub_24B9A1C8C(*(v7 + 48) + v14 * v12, v6, type metadata accessor for FocusSystemConfigurationAction);
    if ((sub_24BAA7E0C() & 1) != 0 && v29 == v6[v4[5]] && v28 == v6[v4[6]])
    {
      v15 = &v6[v4[7]];
      v16 = *v15 == v27 && *(v15 + 1) == v26;
      if (v16 || (sub_24BAAA78C() & 1) != 0)
      {
        sub_24B8F37E8(0, &unk_27F067FA0);
        if (sub_24BAAA3CC())
        {
          break;
        }
      }
    }

    sub_24B9A1CF4(v6, type metadata accessor for FocusSystemConfigurationAction);
    v12 = (v12 + 1) & v13;
    if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return (*(v24 + 56))(v23, 1, 1, v4);
    }
  }

  sub_24B9A1CF4(v6, type metadata accessor for FocusSystemConfigurationAction);
  v18 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v18;
  v30 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B8E9154();
    v20 = v30;
  }

  v21 = v23;
  sub_24B9B0B8C(*(v20 + 48) + v14 * v12, v23);
  sub_24B9ADCB4(v12);
  *v18 = v30;
  return (*(v24 + 56))(v21, 0, 1, v4);
}

uint64_t sub_24B9ACB28(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = *v4;
  sub_24BAAA7FC();
  sub_24B9AA96C(a3, a4, v25, a1, a2);
  v10 = sub_24BAAA84C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 1;
  }

  v13 = ~v11;
  v14 = 1;
  while (1)
  {
    v17 = *(v9 + 48) + 32 * v12;
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (*v17)
    {
      break;
    }

    if (!a1)
    {
      v21 = v19 == a3;
      goto LABEL_3;
    }

LABEL_10:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return v14;
    }
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  if ([*(*v17 + 16) isEqual_])
  {
    v21 = v19 == a3;
  }

  else
  {
    v21 = 0;
  }

LABEL_3:
  if (!v21 || v18 != a4 || v20 != a2)
  {
    goto LABEL_10;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v4;
  v25[0] = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B8E9360();
    v23 = v25[0];
  }

  v14 = *(*(v23 + 48) + 32 * v12);
  sub_24B9AE00C(v12);
  *v4 = v25[0];
  return v14;
}

id sub_24B9ACCE0(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_24BAAA57C();

    if (v5)
    {
      v6 = sub_24B9AD148(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_24BAAA7FC();
  v8 = sub_24BAAA84C();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (([*(*(*(v3 + 48) + 8 * v10) + 16) isEqual_] & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B8E8DE0();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_24B9AE20C(v10);
  result = v14;
  *v1 = v15;
  return result;
}

id sub_24B9ACE5C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_24BAAA57C();

    if (v5)
    {
      v6 = sub_24B9AD290(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_24BAAA7FC();
  v8 = sub_24BAAA84C();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (([*(*(*(v3 + 48) + 8 * v10) + 16) isEqual_] & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B8E8DF4();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_24B9AE20C(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_24B9ACFD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4)
{
  v7 = v4;

  v8 = sub_24BAAA52C();
  v9 = swift_unknownObjectRetain();
  v10 = a3(v9, v8);
  v19 = v10;

  v11 = sub_24BAAA3BC();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    sub_24B8F37E8(0, a4);
    while (1)
    {
      v15 = *(*(v10 + 48) + 8 * v13);
      v16 = sub_24BAAA3CC();

      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v17 = *(*(v10 + 48) + 8 * v13);
  sub_24B9AD3D8(v13);
  result = sub_24BAAA3CC();
  if (result)
  {
    *v7 = v19;
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24B9AD148(uint64_t a1, uint64_t a2)
{

  v4 = sub_24BAAA52C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_24B8E624C(v5, v4);
  sub_24BAAA7FC();
  v7 = sub_24BAAA84C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  v10 = *(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8));

  if ((v10 >> v9))
  {
    v11 = ~v8;
    v10 = &off_279018000;
    while (1)
    {
      v8 = *(a2 + 16);
      if ([*(*(*(v6 + 48) + 8 * v9) + 16) isEqual_])
      {
        break;
      }

      v9 = (v9 + 1) & v11;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v6 + 48) + 8 * v9);
  sub_24B9AE20C(v9);
  result = [v8 *(v10 + 1952)];
  if (result)
  {
    *v2 = v6;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24B9AD290(uint64_t a1, uint64_t a2)
{

  v4 = sub_24BAAA52C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_24B8E6274(v5, v4);
  sub_24BAAA7FC();
  v7 = sub_24BAAA84C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  v10 = *(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8));

  if ((v10 >> v9))
  {
    v11 = ~v8;
    v10 = &off_279018000;
    while (1)
    {
      v8 = *(a2 + 16);
      if ([*(*(*(v6 + 48) + 8 * v9) + 16) isEqual_])
      {
        break;
      }

      v9 = (v9 + 1) & v11;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v6 + 48) + 8 * v9);
  sub_24B9AE20C(v9);
  result = [v8 *(v10 + 1952)];
  if (result)
  {
    *v2 = v6;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24B9AD3D8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24BAAA4AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_24BAAA3BC();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_24B9AD578(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24BAAA4AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_24BAAA7FC();
        MEMORY[0x24C2508C0](v10);
        v11 = sub_24BAAA84C() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_24B9AD720(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24BAAA4AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_24BAAA7FC();

        sub_24BAAA07C();
        v10 = sub_24BAAA84C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_24B9AD8E4(unint64_t a1)
{
  v3 = type metadata accessor for FocusConfigurationAction(0);
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_24BAAA4AC();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v30 = v12;
      v31 = v9;
      v14 = (v13 + 1) & v12;
      v15 = *(v4 + 72);
      while (1)
      {
        v16 = v15;
        v17 = v15 * v11;
        sub_24B9A1C8C(*(v8 + 48) + v15 * v11, v7, type metadata accessor for FocusConfigurationAction);
        sub_24BAAA7FC();
        sub_24BAA7E4C();
        sub_24B9B0B44(&unk_27F063400, 255, MEMORY[0x277CC95F0]);
        sub_24BAA9F1C();
        sub_24BAAA81C();
        sub_24BAAA81C();
        sub_24BAAA07C();
        sub_24BAAA07C();
        sub_24BAAA3DC();
        v18 = *&v7[*(v3 + 40)];
        sub_24BAAA81C();
        if (v18)
        {
          v19 = v18;
          sub_24BAAA3DC();
        }

        v20 = *&v7[*(v3 + 44)];
        sub_24BAAA81C();
        if (v20)
        {
          v21 = v20;
          sub_24BAAA3DC();
        }

        v22 = sub_24BAAA84C();
        sub_24B9A1CF4(v7, type metadata accessor for FocusConfigurationAction);
        v23 = v30;
        v24 = v22 & v30;
        if (a1 >= v14)
        {
          break;
        }

        v15 = v16;
        if (v24 < v14)
        {
          goto LABEL_15;
        }

LABEL_16:
        v25 = v15 * a1;
        if ((v15 * a1) < v17 || *(v8 + 48) + v15 * a1 >= *(v8 + 48) + v17 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v11;
          if (v25 == v17)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v11;
LABEL_6:
        v11 = (v11 + 1) & v23;
        if (((*(v31 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          v9 = v31;
          goto LABEL_23;
        }
      }

      v15 = v16;
      if (v24 < v14)
      {
        goto LABEL_6;
      }

LABEL_15:
      if (a1 < v24)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_23:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v26 = *(v8 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v28;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_24B9ADCB4(unint64_t a1)
{
  v27 = type metadata accessor for FocusSystemConfigurationAction(0);
  v3 = *(v27 - 8);
  result = MEMORY[0x28223BE20](v27);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = a1;
    v13 = sub_24BAAA4AC();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v14 = (v13 + 1) & v11;
      v15 = *(v3 + 72);
      v25 = v15;
      v26 = v8;
      do
      {
        v16 = v15 * v10;
        sub_24B9A1C8C(*(v7 + 48) + v15 * v10, v6, type metadata accessor for FocusSystemConfigurationAction);
        v17 = v7;
        sub_24BAAA7FC();
        sub_24BAA7E4C();
        sub_24B9B0B44(&unk_27F063400, 255, MEMORY[0x277CC95F0]);
        v18 = v14;
        sub_24BAA9F1C();
        sub_24BAAA81C();
        sub_24BAAA81C();
        sub_24BAAA07C();
        sub_24BAAA3DC();
        v19 = sub_24BAAA84C();
        sub_24B9A1CF4(v6, type metadata accessor for FocusSystemConfigurationAction);
        v20 = v19 & v11;
        v14 = v18;
        if (v12 >= v18)
        {
          if (v20 < v18)
          {
            v7 = v17;
            v15 = v25;
            goto LABEL_5;
          }

          v7 = v17;
          v15 = v25;
          if (v12 < v20)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v7 = v17;
          v15 = v25;
          if (v20 < v14 && v12 < v20)
          {
            goto LABEL_5;
          }
        }

        v21 = v15 * v12;
        if (v15 * v12 < v16 || *(v7 + 48) + v15 * v12 >= (*(v7 + 48) + v16 + v15))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        v12 = v10;
        if (v21 != v16)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          v12 = v10;
        }

LABEL_5:
        v10 = (v10 + 1) & v11;
        v8 = v26;
      }

      while (((*(v26 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v12) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v7 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v24;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_24B9AE00C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24BAAA4AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v11 = *(v3 + 48) + 32 * v6;
        v12 = *(v11 + 8);
        v13 = *(v11 + 16);
        v14 = *(v11 + 24);
        sub_24BAAA7FC();
        sub_24BAAA81C();
        if (v12 == 0.0)
        {
          v15 = 0.0;
        }

        else
        {
          v15 = v12;
        }

        MEMORY[0x24C2508F0](*&v15);
        if (v13 == 0.0)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = v13;
        }

        MEMORY[0x24C2508F0](*&v16);
        MEMORY[0x24C2508C0](v14);
        v17 = sub_24BAAA84C() & v7;
        if (v2 >= v9)
        {
          if (v17 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v17 >= v9)
        {
          goto LABEL_17;
        }

        if (v2 >= v17)
        {
LABEL_17:
          v18 = *(v3 + 48);
          v19 = (v18 + 32 * v2);
          v20 = (v18 + 32 * v6);
          if (v2 != v6 || v19 >= v20 + 2)
          {
            v10 = v20[1];
            *v19 = *v20;
            v19[1] = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_24B9AE20C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24BAAA4AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_24BAAA7FC();
        v10 = sub_24BAAA84C() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_24B9AE3FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    goto LABEL_17;
  }

  v8 = a4;
  v5 = a3;
  v7 = a2;
  v9 = a1;
  v18 = a5;
  v10 = *v6;
  v11 = *v6 >> 62;
  if (v11)
  {
    goto LABEL_18;
  }

  result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < a2)
  {
LABEL_19:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v13 = v7 - v9;
      if (__OFSUB__(v7, v9))
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v14 = sub_24BAAA52C();
        v15 = __OFSUB__(v14, v13);
        v16 = v14 - v13;
        if (!v15)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v14 = *(v5 + 16);
        v15 = __OFSUB__(v14, v13);
        v16 = v14 - v13;
        if (!v15)
        {
LABEL_7:
          if (v11)
          {
            v17 = sub_24BAAA52C();
          }

          else
          {
            v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v15 = __OFADD__(v17, v16);
          result = v17 + v16;
          if (!v15)
          {
            v8(result, 1);

            return v18(v9, v7, v14, v5);
          }

          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      result = sub_24BAAA52C();
      if (result < v7)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_24B9AE530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (a2 - a1);
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_52;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v13 = *v5;
  v5 = *v5 & 0xFFFFFFFFFFFFFF8;
  v10 = v5 + 32;
  v6 = (v5 + 32 + 8 * a1);
  sub_24B8F37E8(0, &qword_27F0631A0);
  swift_arrayDestroy();
  v9 = v8 - v12;
  if (__OFSUB__(v8, v12))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v12 = &v6[v8];
  if (v9)
  {
    v11 = (v13 >> 62);
    if (!(v13 >> 62))
    {
      v14 = *(v5 + 16);
      v15 = v14 - v7;
      if (!__OFSUB__(v14, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_56;
    }

LABEL_54:
    v34 = sub_24BAAA52C();
    v15 = v34 - v7;
    if (!__OFSUB__(v34, v7))
    {
LABEL_6:
      v16 = (v10 + 8 * v7);
      if (v12 != v16 || v12 >= &v16[8 * v15])
      {
        memmove(v12, v16, 8 * v15);
      }

      if (v11)
      {
        v18 = sub_24BAAA52C();
      }

      else
      {
        v18 = *(v5 + 16);
      }

      if (!__OFADD__(v18, v9))
      {
        *(v5 + 16) = v18 + v9;
        goto LABEL_17;
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_17:
  if (v8 > 0)
  {
    v10 = v4 & 0xC000000000000001;
    v8 = (v4 & 0xC000000000000001) != 0;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      v5 = sub_24BAAA4CC();
      v9 = v19;
    }

    else
    {
      v5 = sub_24BAAA49C();
      v9 = *(v4 + 36);
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = v4 + 56;
    v37 = v5;
    v38 = v9;
    if (v4 < 0)
    {
      v7 = v4;
    }

    v39 = v10 != 0;
    v11 = &qword_27F066CC0;
    v35 = v12;
    while (1)
    {
      sub_24B9A0064(v5, v9, v8 & 1, v4);
      *v6 = v21;
      if (v10)
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_58;
        }

        if (sub_24BAAA4EC())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066CC0);
        v25 = sub_24BAAA23C();
        sub_24BAAA59C();
        v25(v36, 0);
      }

      else
      {
        if (v8)
        {
          goto LABEL_59;
        }

        if ((v5 & 0x8000000000000000) != 0 || (v8 = 1 << *(v4 + 32), v5 >= v8))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v22 = v5 >> 6;
        v23 = *(v20 + 8 * (v5 >> 6));
        if (((v23 >> v5) & 1) == 0)
        {
          goto LABEL_50;
        }

        if (*(v4 + 36) != v9)
        {
          goto LABEL_51;
        }

        v24 = v23 & (-2 << (v5 & 0x3F));
        if (v24)
        {
          v8 = __clz(__rbit64(v24)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v26 = v7;
          v27 = v20;
          v28 = v22 << 6;
          v29 = v22 + 1;
          v30 = (v4 + 64 + 8 * v22);
          while (v29 < (v8 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_24B8F3830(v5, v9, 0);
              v8 = __clz(__rbit64(v31)) + v28;
              goto LABEL_44;
            }
          }

          sub_24B8F3830(v5, v9, 0);
LABEL_44:
          v20 = v27;
          v7 = v26;
          v12 = v35;
          v11 = &qword_27F066CC0;
        }

        v33 = *(v4 + 36);
        v37 = v8;
        v38 = v33;
        v39 = 0;
      }

      if (++v6 >= v12)
      {

        sub_24B8F3830(v37, v38, v39);
        return;
      }

      v8 = v39;
      v5 = v37;
      v9 = v38;
    }
  }
}

uint64_t sub_24B9AE8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (a2 - a1);
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_52;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v13 = *v5;
  v5 = *v5 & 0xFFFFFFFFFFFFFF8;
  v10 = v5 + 32;
  v6 = (v5 + 32 + 8 * a1);
  type metadata accessor for EventSource();
  swift_arrayDestroy();
  v9 = v8 - v12;
  if (__OFSUB__(v8, v12))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v12 = &v6[v8];
  if (v9)
  {
    v11 = (v13 >> 62);
    if (!(v13 >> 62))
    {
      result = *(v5 + 16);
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_56;
    }

LABEL_54:
    result = sub_24BAAA52C();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = (v10 + 8 * v7);
      if (v12 != v16 || v12 >= &v16[v15])
      {
        memmove(v12, v16, 8 * v15);
      }

      if (v11)
      {
        result = sub_24BAAA52C();
      }

      else
      {
        result = *(v5 + 16);
      }

      if (!__OFADD__(result, v9))
      {
        *(v5 + 16) = result + v9;
        goto LABEL_17;
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return result;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_17:
  if (v8 > 0)
  {
    v10 = v4 & 0xC000000000000001;
    v8 = (v4 & 0xC000000000000001) != 0;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      v5 = sub_24BAAA4CC();
      v9 = v18;
    }

    else
    {
      v5 = sub_24BAAA49C();
      v9 = *(v4 + 36);
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v19 = v4 + 56;
    v34 = v5;
    v35 = v9;
    if (v4 < 0)
    {
      v7 = v4;
    }

    v36 = v10 != 0;
    v11 = &qword_27F066CB8;
    v32 = v12;
    while (1)
    {
      result = sub_24B9A0290(v5, v9, v8 & 1, v4);
      *v6 = result;
      if (v10)
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_58;
        }

        if (sub_24BAAA4EC())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066CB8);
        v23 = sub_24BAAA23C();
        sub_24BAAA59C();
        v23(v33, 0);
      }

      else
      {
        if (v8)
        {
          goto LABEL_59;
        }

        if ((v5 & 0x8000000000000000) != 0 || (v8 = 1 << *(v4 + 32), v5 >= v8))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v20 = v5 >> 6;
        v21 = *(v19 + 8 * (v5 >> 6));
        if (((v21 >> v5) & 1) == 0)
        {
          goto LABEL_50;
        }

        if (*(v4 + 36) != v9)
        {
          goto LABEL_51;
        }

        v22 = v21 & (-2 << (v5 & 0x3F));
        if (v22)
        {
          v8 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = v7;
          v25 = v19;
          v26 = v20 << 6;
          v27 = v20 + 1;
          v28 = (v4 + 64 + 8 * v20);
          while (v27 < (v8 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              sub_24B8F3830(v5, v9, 0);
              v8 = __clz(__rbit64(v29)) + v26;
              goto LABEL_44;
            }
          }

          sub_24B8F3830(v5, v9, 0);
LABEL_44:
          v19 = v25;
          v7 = v24;
          v12 = v32;
          v11 = &qword_27F066CB8;
        }

        v31 = *(v4 + 36);
        v34 = v8;
        v35 = v31;
        v36 = 0;
      }

      if (++v6 >= v12)
      {

        return sub_24B8F3830(v34, v35, v36);
      }

      v8 = v36;
      v5 = v34;
      v9 = v35;
    }
  }
}

uint64_t sub_24B9AEC5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_24BAAA52C();
  }

  return sub_24BAAA63C();
}

BOOL sub_24B9AECFC(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  if (result)
  {
    if (!a3)
    {
      return 0;
    }

    v14 = [*(result + 16) isEqual_] && a5 == a7;
    if (!v14 || a6 != a8)
    {
      return 0;
    }

    return a2 == a4;
  }

  if (!a3 && a5 == a7 && a6 == a8)
  {
    return a2 == a4;
  }

  return result;
}

uint64_t sub_24B9AED8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B9AEDFC()
{
  result = qword_27F066C98;
  if (!qword_27F066C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066C88);
    sub_24B9AEE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066C98);
  }

  return result;
}

unint64_t sub_24B9AEE88()
{
  result = qword_27F066CA0;
  if (!qword_27F066CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066CA0);
  }

  return result;
}

char *sub_24B9AEF0C(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9AEFB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for HomeScreenSnapshot();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_24BAAA52C();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_24BAAA52C();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_24B9AF0D0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_24B9AF1B4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_24B99A290(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_24B9AF0D0(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_24B9AF290(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_24B9AF37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Trigger(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24B9AF4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for EventSource();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_24BAAA52C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_24BAAA52C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9AF5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_24B8F37E8(0, &qword_27F0631A0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_24BAAA52C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_24BAAA52C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9AF72C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_24BAAA52C();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = sub_24BAAA52C();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t sub_24B9AF828(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_24BAAA09C();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_24B9AF8C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = *v7;
  v16 = v15 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v17 = __OFSUB__(a3, v8);
  v18 = a3 - v8;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v18)
  {
    v19 = *(v15 + 16);
    v17 = __OFSUB__(v19, a2);
    v20 = v19 - a2;
    if (!v17)
    {
      result = v16 + 32 * a3;
      v21 = (v15 + 32 + 32 * a2);
      if (result != v21 || result >= v21 + 32 * v20)
      {
        result = memmove(result, v21, 32 * v20);
      }

      v23 = *(v15 + 16);
      v17 = __OFADD__(v23, v18);
      v24 = v23 + v18;
      if (!v17)
      {
        *(v15 + 16) = v24;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v16 = a4;
    *(v16 + 8) = a6;
    *(v16 + 16) = a7;
    *(v16 + 24) = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_24B9AF9C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *v6;
  v9 = *(*v6 + 2);
  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = __OFSUB__(1, v11);
  v13 = 1 - v11;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9 + v13;
  if (__OFADD__(v9, v13))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 3) >> 1)
  {
    if (v9 <= v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = v9;
    }

    v8 = sub_24B99A96C(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = sub_24B9AF8C4(v10, a2, 1, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

uint64_t sub_24B9AFAB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24B9AFB18(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9AFBD8(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

void sub_24B9AFCB0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v104 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0654F8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v99 - v19;
  v21 = sub_24BAA7D5C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  *(v25 + 16) = a8;
  *(v25 + 24) = a9;
  *(v25 + 32) = a5;
  *(v25 + 40) = a6;
  v103 = v25;
  v101 = a10;
  *(v25 + 48) = a10;
  v26 = objc_allocWithZone(MEMORY[0x277D1B1C8]);
  v102 = a8;
  v27 = a9;

  v28 = [v26 initWithSize:a3 scale:{a3, a4}];
  [v28 setDrawBorder_];
  if (a2 == 3)
  {
    [v28 setShape_];
  }

  v29 = v104;
  sub_24B9AB970(v104, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_24B8F35E4(v20, &qword_27F0654F8);
    if (v29)
    {
      goto LABEL_5;
    }

LABEL_21:
    v43 = 0;
    goto LABEL_22;
  }

  (*(v22 + 32))(v24, v20, v21);
  v36 = objc_allocWithZone(MEMORY[0x277D1B160]);
  v37 = sub_24BAA7D2C();
  v38 = [v36 initWithContentsOfURL:v37 scale:a4];

  if (v38)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_24BAAE690;
    *(v39 + 32) = v38;
    v40 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    sub_24B8F37E8(0, &qword_27F066CA8);
    v41 = v38;
    v42 = sub_24BAAA11C();

    v43 = [v40 initWithImages_];

    (*(v22 + 8))(v24, v21);
    if (v43)
    {
      goto LABEL_17;
    }

    if (!v29)
    {
      goto LABEL_21;
    }
  }

  else
  {
    (*(v22 + 8))(v24, v21);
    if (!v29)
    {
      goto LABEL_21;
    }
  }

LABEL_5:

  v30 = sub_24BAA9FDC();
  v31 = sub_24BAA9FDC();
  v32 = [v30 isEqual_];

  if (!v32)
  {
    v44 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v45 = sub_24BAA9FDC();
    v43 = [v44 initWithBundleIdentifier_];

    v46 = objc_opt_self();
    v47 = [v46 currentTraitCollection];
    v48 = [v47 userInterfaceStyle];

    [v28 setAppearance_];
    v49 = [v46 currentTraitCollection];
    v50 = [v49 layoutDirection];

    if (v50)
    {
      v51 = 2;
    }

    else
    {
      v51 = 1;
    }

    [v28 setLanguageDirection_];
    v52 = [v46 currentTraitCollection];
    v53 = [v52 accessibilityContrast];

    [v28 setContrast_];
    v54 = [objc_opt_self() displayIdentifiers];
    v55 = sub_24BAAA20C();

    v56 = *(v29 + 40);
    v57 = *(v29 + 48);

    LOBYTE(v56) = sub_24B91471C(v56, v57, v55);

    if (v56)
    {

      if (v43)
      {
        goto LABEL_17;
      }

LABEL_22:
      sub_24B9AB41C(0, a5, a6, v102, v27, v101);

      v35 = v43;
      goto LABEL_28;
    }

    if ([*(v29 + 16) platform] == 3)
    {
      v63 = [objc_opt_self() sharedInstance];
      if (v63)
      {
        v35 = v63;
        v64 = sub_24BAA9FDC();

        v65 = swift_allocObject();
        v66 = v103;
        *(v65 + 16) = sub_24B9B0930;
        *(v65 + 24) = v66;
        aBlock[4] = sub_24B9B09CC;
        aBlock[5] = v65;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24B9ABF28;
        aBlock[3] = &block_descriptor_23_0;
        v67 = _Block_copy(aBlock);

        [v35 getIconForBundleID:v64 iconVariant:32771 block:v67 timeout:-1.0];

        _Block_release(v67);

        v28 = v64;
        goto LABEL_28;
      }

      goto LABEL_46;
    }

    v69 = objc_opt_self();

    v70 = [v69 currentNotificationSettingsCenter];
    v71 = sub_24BAA9FDC();

    v72 = [v70 notificationSourceWithIdentifier_];

    v73 = [v72 icon];
    v74 = [v73 name];

    if (v74)
    {
      sub_24BAAA01C();

      v75 = [v72 bundlePath];
      if (!v75)
      {
        sub_24BAAA01C();
        v75 = sub_24BAA9FDC();
      }

      v76 = [objc_allocWithZone(MEMORY[0x277CCA8D8]) initWithPath_];

      v77 = sub_24BAA9FDC();

      v78 = [objc_opt_self() imageNamed:v77 inBundle:v76];
    }

    else
    {
      v79 = [v72 icon];
      v80 = [v79 data];

      if (v80)
      {
        v81 = sub_24BAA7D7C();
        v82 = v72;
        v84 = v83;

        v85 = objc_allocWithZone(MEMORY[0x277D755B8]);
        v86 = sub_24BAA7D6C();
        v78 = [v85 initWithData_];

        v87 = v84;
        v72 = v82;
        sub_24B9B0940(v81, v87);
      }

      else
      {
        v88 = [v72 icon];
        v89 = [v88 path];

        if (!v89)
        {
          goto LABEL_41;
        }

        v78 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithContentsOfFile_];
      }
    }

    if (v78)
    {
      v90 = [v78 CGImage];
      if (v90)
      {
        v91 = v90;
        [v78 scale];
        v93 = [objc_allocWithZone(MEMORY[0x277D1B160]) initWithCGImage:v91 scale:v92];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_24BAAE690;
        *(v94 + 32) = v93;
        v100 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
        sub_24B8F37E8(0, &qword_27F066CA8);
        v95 = v72;
        v96 = v93;
        v97 = sub_24BAAA11C();

        v98 = [v100 initWithImages_];

        v43 = v98;
        if (!v98)
        {
          goto LABEL_22;
        }
      }

      else
      {

        if (!v43)
        {
          goto LABEL_22;
        }
      }

LABEL_17:
      v58 = [v43 imageForDescriptor_];
      if (v58)
      {
        v59 = v58;
        if ([v58 placeholder])
        {
          v60 = [v43 prepareImageForDescriptor_];
          v61 = v27;
          v62 = [v60 CGImage];

          sub_24B9AB41C(v62, a5, a6, v102, v61, v101);
        }

        else
        {
          v68 = [v59 CGImage];
          sub_24B9AB41C(v68, a5, a6, v102, v27, v101);
        }

        v35 = v28;
        v28 = v43;
        goto LABEL_28;
      }

      goto LABEL_22;
    }

LABEL_41:

    if (!v43)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v33 = PSPassbookImage();
  if (v33)
  {
    v34 = v33;

    v35 = [v34 CGImage];

    sub_24B9AB41C(v35, a5, a6, v102, v27, v101);

LABEL_28:

    return;
  }

  __break(1u);
LABEL_46:

  __break(1u);
}

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24B9B0940(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24B9B0994()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24B9B09CC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 CGImage];
  v2();
}

uint64_t sub_24B9B0A28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0654F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9B0A98()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24B9B0AF4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_24B9B0B04(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_24B9B0B44(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B9B0B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusSystemConfigurationAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B9B0BF4()
{
  result = qword_27F066CC8;
  if (!qword_27F066CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066CD0);
    sub_24B9B0C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066CC8);
  }

  return result;
}

unint64_t sub_24B9B0C80()
{
  result = qword_27F066CD8;
  if (!qword_27F066CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066CE0);
    sub_24B9AEDFC();
    sub_24B9AEE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066CD8);
  }

  return result;
}

unint64_t sub_24B9B0D0C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9B0E4C()
{
  result = sub_24BAA7E4C();
  if (v1 <= 0x3F)
  {
    result = sub_24B8F37E8(319, &qword_27F066CF8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24BAA7E4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24BAA7E4C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24B9B10B8()
{
  sub_24BAA7E4C();
  if (v0 <= 0x3F)
  {
    sub_24B8F37E8(319, &qword_27F066B10);
    if (v1 <= 0x3F)
    {
      sub_24B9B11C8(319, &qword_27F066D10, &qword_27F063430);
      if (v2 <= 0x3F)
      {
        sub_24B9B11C8(319, &qword_27F066D18, &qword_27F063428);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B9B11C8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_24B8F37E8(255, a3);
    v4 = sub_24BAAA3FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24B9B1220(uint64_t a1)
{
  v2 = type metadata accessor for FocusConfigurationAction(0);
  if (*(a1 + v2[5]) != 1)
  {
    goto LABEL_7;
  }

  v3 = *(a1 + v2[11]);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v2;
  v5 = v3;
  v6 = [v5 title];
  v7 = [v6 localizedStringForLocaleIdentifier_];

  v8 = sub_24BAAA01C();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    v2 = v4;
LABEL_7:
    v12 = (a1 + v2[8]);
    v13 = *v12;
    v14 = v12[1];

    v8 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v13, v14)[3];
  }

  return v8;
}

id sub_24B9B1330(uint64_t a1)
{
  v2 = type metadata accessor for FocusConfigurationAction(0);
  if (*(a1 + v2[5]) == 1)
  {
    v3 = *(a1 + v2[11]);
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      v6 = [v5 subtitle];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 localizedStringForLocaleIdentifier_];
        v9 = sub_24BAAA01C();
        v11 = v10;

        v12 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (v12)
        {
          return v9;
        }
      }

      else
      {
      }

      v2 = v4;
    }
  }

  result = *(a1 + v2[10]);
  if (result)
  {
    result = [result title];
    if (result)
    {
      v14 = result;
      v15 = [result localizedStringForLocaleIdentifier_];
      v16 = sub_24BAAA01C();
      v18 = v17;

      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        return v16;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

void sub_24B9B14A4(void *a1)
{
  v2 = *(type metadata accessor for FocusConfigurationAction(0) + 44);
  v3 = *(v1 + v2);
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
LABEL_11:

    *(v1 + v2) = a1;
    return;
  }
}

void sub_24B9B1520()
{
  v1 = v0;
  sub_24BAA7E4C();
  sub_24B9B17C8(&unk_27F063400, MEMORY[0x277CC95F0]);
  sub_24BAA9F1C();
  v2 = type metadata accessor for FocusConfigurationAction(0);
  sub_24BAAA81C();
  sub_24BAAA81C();
  sub_24BAAA07C();
  sub_24BAAA07C();
  sub_24BAAA3DC();
  v3 = *(v0 + *(v2 + 40));
  sub_24BAAA81C();
  if (v3)
  {
    v4 = v3;
    sub_24BAAA3DC();
  }

  v5 = *(v1 + *(v2 + 44));
  if (v5)
  {
    sub_24BAAA81C();
    v6 = v5;
    sub_24BAAA3DC();
  }

  else
  {
    sub_24BAAA81C();
  }
}

uint64_t sub_24B9B16B0()
{
  sub_24BAAA7FC();
  sub_24B9B1520();
  return sub_24BAAA84C();
}

uint64_t sub_24B9B16F4()
{
  sub_24BAAA7FC();
  sub_24B9B1520();
  return sub_24BAAA84C();
}

uint64_t sub_24B9B17C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B9B1810()
{
  sub_24BAAA7FC();
  sub_24BAA7E4C();
  sub_24B9B17C8(&unk_27F063400, MEMORY[0x277CC95F0]);
  sub_24BAA9F1C();
  type metadata accessor for FocusSystemConfigurationAction(0);
  sub_24BAAA81C();
  sub_24BAAA81C();
  sub_24BAAA07C();
  sub_24BAAA3DC();
  return sub_24BAAA84C();
}

uint64_t sub_24B9B18F8()
{
  sub_24BAA7E4C();
  sub_24B9B17C8(&unk_27F063400, MEMORY[0x277CC95F0]);
  sub_24BAA9F1C();
  sub_24BAAA81C();
  sub_24BAAA81C();
  sub_24BAAA07C();
  return sub_24BAAA3DC();
}

uint64_t sub_24B9B19C0()
{
  sub_24BAAA7FC();
  sub_24BAA7E4C();
  sub_24B9B17C8(&unk_27F063400, MEMORY[0x277CC95F0]);
  sub_24BAA9F1C();
  sub_24BAAA81C();
  sub_24BAAA81C();
  sub_24BAAA07C();
  sub_24BAAA3DC();
  return sub_24BAAA84C();
}

uint64_t sub_24B9B1A98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24BAA7E4C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24B9B1B4C(uint64_t a1, uint64_t a2)
{
  if ((sub_24BAA7E0C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FocusConfigurationAction(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4;
  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_24BAAA78C() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[8];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_24BAAA78C() & 1) == 0)
  {
    return 0;
  }

  sub_24B8F37E8(0, &unk_27F067FA0);
  if ((sub_24BAAA3CC() & 1) == 0)
  {
    return 0;
  }

  v16 = v5[10];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    sub_24B8F37E8(0, &qword_27F063430);
    v19 = v18;
    v20 = v17;
    v21 = sub_24BAAA3CC();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v22 = v5[11];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23)
  {
    if (v24)
    {
      sub_24B8F37E8(0, &qword_27F063428);
      v25 = v24;
      v26 = v23;
      v27 = sub_24BAAA3CC();

      if (v27)
      {
        return 1;
      }
    }
  }

  else if (!v24)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_24B9B1D0C(uint64_t a1, uint64_t a2)
{
  if ((sub_24BAA7E0C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FocusSystemConfigurationAction(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v8 == *v9 && v7 == v9[1];
  if (!v10 && (sub_24BAAA78C() & 1) == 0)
  {
    return 0;
  }

  sub_24B8F37E8(0, &unk_27F067FA0);
  return sub_24BAAA3CC() & 1;
}

double sub_24B9B1DFC@<D0>(void *a1@<X8>)
{
  result = *&qword_27F076FB8;
  *a1 = qword_27F076FB8;
  return result;
}

double sub_24B9B1E0C(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_24B9B1E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24B9B1FA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24B9B20E8()
{
  sub_24B936680(319, &qword_27F063A30, MEMORY[0x277CE02A8]);
  if (v0 <= 0x3F)
  {
    sub_24B9BCC3C(319, &qword_27F063A38, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24B936680(319, &qword_27F068F10, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        sub_24B8F47B4();
        if (v3 <= 0x3F)
        {
          type metadata accessor for DNDConfigurationType(319);
          if (v4 <= 0x3F)
          {
            sub_24B9B22D0();
            if (v5 <= 0x3F)
            {
              sub_24B9BCC3C(319, &qword_27F063BA8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
              if (v6 <= 0x3F)
              {
                sub_24B9BCC3C(319, &qword_27F0659B0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_24B901BFC();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24B9B22D0()
{
  if (!qword_27F066D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066D48);
    v0 = sub_24BAA9BBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F066D40);
    }
  }
}

uint64_t sub_24B9B2334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B9B2398@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_24BAA89FC();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NotificationExceptionsItemView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066D50);
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066D58);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  sub_24B9BC11C(v1, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotificationExceptionsItemView);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_24B9BBAB4(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for NotificationExceptionsItemView);
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066D60);
  sub_24B9BAAD4();
  sub_24BAA9A5C();
  v16 = v1 + *(v5 + 20);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    sub_24BAAA2BC();
    v18 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();
    sub_24B8FFD5C(v17, 0);
    (*(v21 + 8))(v4, v22);
    LOBYTE(v17) = v26;
  }

  if (v17)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.55;
  }

  (*(v8 + 32))(v13, v10, v23);
  *&v13[*(v11 + 36)] = v19;
  sub_24B9BAEF8();
  sub_24BAA94DC();

  return sub_24B8F35E4(v13, &qword_27F066D58);
}

uint64_t sub_24B9B27BC()
{
  type metadata accessor for NotificationExceptionsItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E90);
  sub_24BAA9B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  return sub_24BAA9B6C();
}

uint64_t sub_24B9B289C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61[1] = a2;
  v61[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066DC8);
  MEMORY[0x28223BE20](v61[0]);
  v4 = v61 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E10);
  MEMORY[0x28223BE20](v5);
  v7 = v61 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066D78);
  MEMORY[0x28223BE20](v8);
  v10 = v61 - v9;
  v11 = sub_24BAA8B9C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BA8DAA8(v14);
  v15 = sub_24BAA8B8C();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    *v4 = sub_24BAA8AAC();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E20);
    sub_24B9B6C08(a1, &v4[*(v16 + 44)]);
    v17 = sub_24BAA90AC();
    sub_24BAA828C();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066DE8) + 36)];
    *v26 = v17;
    *(v26 + 1) = v19;
    *(v26 + 2) = v21;
    *(v26 + 3) = v23;
    *(v26 + 4) = v25;
    v26[40] = 0;
    v27 = sub_24BAA911C();
    sub_24BAA828C();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066DD8) + 36)];
    *v36 = v27;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    v4[*(v61[0] + 36)] = 0;
    v37 = &qword_27F066DC8;
    sub_24B8F3208(v4, v7, &qword_27F066DC8);
    swift_storeEnumTagMultiPayload();
    sub_24B9BAB60();
    sub_24B9BACFC();
    sub_24BAA8D0C();
    v38 = v4;
  }

  else
  {
    *v10 = sub_24BAA8BDC();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E18);
    sub_24B9B2D14(a1, &v10[*(v39 + 44)]);
    v40 = sub_24BAA90AC();
    sub_24BAA828C();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066D98) + 36)];
    *v49 = v40;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    v50 = sub_24BAA911C();
    sub_24BAA828C();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066D88) + 36)];
    *v59 = v50;
    *(v59 + 1) = v52;
    *(v59 + 2) = v54;
    *(v59 + 3) = v56;
    *(v59 + 4) = v58;
    v59[40] = 0;
    v10[*(v8 + 36)] = 0;
    v37 = &qword_27F066D78;
    sub_24B8F3208(v10, v7, &qword_27F066D78);
    swift_storeEnumTagMultiPayload();
    sub_24B9BAB60();
    sub_24B9BACFC();
    sub_24BAA8D0C();
    v38 = v10;
  }

  return sub_24B8F35E4(v38, v37);
}

uint64_t sub_24B9B2D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v80 = a2;
  v2 = sub_24BAA8B7C();
  v78 = *(v2 - 8);
  v79 = v2;
  MEMORY[0x28223BE20](v2);
  v75 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E70);
  MEMORY[0x28223BE20](v77);
  v73 = &v63 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0670F0);
  MEMORY[0x28223BE20](v76);
  v72 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E78);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v63 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E80);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E88);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v74 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v63 - v17;
  MEMORY[0x28223BE20](v16);
  v71 = &v63 - v18;
  v19 = type metadata accessor for NotificationExceptionsItemView(0);
  v20 = v19 - 8;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0670F8);
  v25 = v24 - 8;
  v26 = MEMORY[0x28223BE20](v24);
  v69 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v63 - v28;
  *v29 = sub_24BAA8AAC();
  *(v29 + 1) = 0x3FF0000000000000;
  v29[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067100);
  v31 = v68;
  sub_24B9B3500(v68, &v29[*(v30 + 44)]);
  sub_24B9BC11C(v31, v23, type metadata accessor for NotificationExceptionsItemView);
  v32 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v33 = swift_allocObject();
  sub_24B9BBAB4(v23, v33 + v32, type metadata accessor for NotificationExceptionsItemView);
  v34 = sub_24BAA9D1C();
  v35 = &v29[*(v25 + 44)];
  v63 = v29;
  *v35 = sub_24B9B477C;
  v35[1] = 0;
  v35[2] = sub_24B9BC604;
  v35[3] = v33;
  v35[4] = v34;
  v35[5] = v36;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v67 = v85;
  v66 = v87;
  v65 = v89;
  v64 = v90;
  v93 = 1;
  v92 = v86;
  v91 = v88;
  v37 = v31 + *(v20 + 48);
  v38 = *v37;
  v39 = *(v37 + 8);
  LOBYTE(v37) = *(v37 + 16);
  v82 = v38;
  v83 = v39;
  v84 = v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E90);
  MEMORY[0x24C24FC10](&v81, v40);
  *v8 = sub_24BAA8AAC();
  *(v8 + 1) = 0xC024000000000000;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E98);
  v41 = v73;
  sub_24B9B4944(v73);
  v42 = v75;
  sub_24BAA8B4C();
  sub_24B9BB148();
  v43 = v72;
  sub_24BAA963C();
  (*(v78 + 8))(v42, v79);
  sub_24B8F35E4(v41, &qword_27F066E70);
  sub_24BAA85CC();
  sub_24B8F35E4(v43, &qword_27F0670F0);
  LOBYTE(v33) = sub_24BAA90DC();
  sub_24BAA828C();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_24B90294C(v8, v12, &qword_27F066E78);
  v52 = &v12[*(v10 + 44)];
  *v52 = v33;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  v53 = v70;
  sub_24B90294C(v12, v70, &qword_27F066E80);
  v54 = v71;
  sub_24B90294C(v53, v71, &qword_27F066E88);
  v55 = v29;
  v56 = v69;
  sub_24B8F3208(v55, v69, &qword_27F0670F8);
  LOBYTE(v53) = v93;
  LOBYTE(v20) = v92;
  LOBYTE(v8) = v91;
  v57 = v74;
  sub_24B8F3208(v54, v74, &qword_27F066E88);
  v58 = v80;
  sub_24B8F3208(v56, v80, &qword_27F0670F8);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067108);
  v60 = v58 + *(v59 + 48);
  *v60 = 0;
  *(v60 + 8) = v53;
  *(v60 + 16) = v67;
  *(v60 + 24) = v20;
  *(v60 + 32) = v66;
  *(v60 + 40) = v8;
  v61 = v64;
  *(v60 + 48) = v65;
  *(v60 + 56) = v61;
  sub_24B8F3208(v57, v58 + *(v59 + 64), &qword_27F066E88);
  sub_24B8F35E4(v54, &qword_27F066E88);
  sub_24B8F35E4(v63, &qword_27F0670F8);
  sub_24B8F35E4(v57, &qword_27F066E88);
  return sub_24B8F35E4(v56, &qword_27F0670F8);
}

uint64_t sub_24B9B3500@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v53 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067110);
  MEMORY[0x28223BE20](v50);
  v59 = (&v49 - v3);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067118);
  MEMORY[0x28223BE20](v57);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067120);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v60 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = &v49 - v9;
  v10 = type metadata accessor for NotificationExceptionsItemView(0);
  v11 = (a1 + *(v10 + 56));
  v12 = *v11;
  v13 = v11[1];
  v68 = v12;
  v49 = v13;
  v69 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065C00);
  sub_24BAA99FC();
  v68 = sub_24B9B3BF8(*&v63);
  v69 = v14;
  sub_24B8F5E3C();
  v15 = sub_24BAA93CC();
  v17 = v16;
  v19 = v18;
  sub_24BAA916C();
  v56 = sub_24BAA939C();
  v55 = v20;
  v22 = v21;
  v58 = v23;

  sub_24B900910(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v24 = sub_24B9B3F84();
  if (!v24)
  {
    v24 = sub_24BAA988C();
  }

  v54 = v24;
  v52 = swift_getKeyPath();
  v51 = v22 & 1;
  v82 = v22 & 1;
  v80 = 0;
  if (*(a1 + *(v10 + 36)) == 2)
  {
    v68 = v12;
    v69 = v49;
    sub_24BAA99FC();
    if (*&v63 >= 142.0)
    {
      v25 = 0;
      v27 = 0;
      v26 = 0;
      v29 = 0;
      v28 = 0;
    }

    else
    {
      v25 = sub_24BAA991C();
      v26 = sub_24B9B3F84();
      v27 = swift_getKeyPath();
      sub_24BAA916C();
      v28 = sub_24BAA917C();

      v29 = swift_getKeyPath();
    }

    v36 = v59;
    *v59 = v25;
    v36[1] = v27;
    v36[2] = v26;
    v36[3] = v29;
    v36[4] = v28;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067130);
    sub_24B9BC760();
    sub_24B9BC844();
    v35 = v62;
    sub_24BAA8D0C();
    sub_24B952C54(v25);
  }

  else
  {
    *v5 = sub_24BAA8AAC();
    *(v5 + 1) = 0x4000000000000000;
    v5[16] = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067128);
    sub_24B9B40FC(&v5[*(v30 + 44)]);
    v31 = [objc_opt_self() secondaryLabelColor];
    v32 = sub_24BAA973C();
    v33 = swift_getKeyPath();
    v34 = &v5[*(v57 + 36)];
    *v34 = v33;
    v34[1] = v32;
    sub_24B8F3208(v5, v59, &qword_27F067118);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067130);
    sub_24B9BC760();
    sub_24B9BC844();
    v35 = v62;
    sub_24BAA8D0C();
    sub_24B8F35E4(v5, &qword_27F067118);
  }

  v37 = v60;
  sub_24B8F3208(v35, v60, &qword_27F067120);
  v38 = v56;
  *&v63 = v56;
  v39 = v55;
  *(&v63 + 1) = v55;
  v40 = v51;
  LOBYTE(v64) = v51;
  *(&v64 + 1) = *v81;
  DWORD1(v64) = *&v81[3];
  v41 = v58;
  *(&v64 + 1) = v58;
  *&v65 = KeyPath;
  *(&v65 + 1) = 1;
  LOBYTE(v66) = 0;
  *(&v66 + 1) = *v79;
  DWORD1(v66) = *&v79[3];
  v42 = v52;
  v43 = v54;
  *(&v66 + 1) = v52;
  v67 = v54;
  v44 = v64;
  v45 = v53;
  *v53 = v63;
  v45[1] = v44;
  v46 = v66;
  v45[2] = v65;
  v45[3] = v46;
  *(v45 + 8) = v43;
  *(v45 + 9) = 0x4024000000000000;
  *(v45 + 80) = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067158);
  sub_24B8F3208(v37, v45 + *(v47 + 64), &qword_27F067120);
  sub_24B8F3208(&v63, &v68, &qword_27F067160);
  sub_24B8F35E4(v62, &qword_27F067120);
  sub_24B8F35E4(v37, &qword_27F067120);
  v68 = v38;
  v69 = v39;
  v70 = v40;
  *v71 = *v81;
  *&v71[3] = *&v81[3];
  v72 = v41;
  v73 = KeyPath;
  v74 = 1;
  v75 = 0;
  *v76 = *v79;
  *&v76[3] = *&v79[3];
  v77 = v42;
  v78 = v43;
  return sub_24B8F35E4(&v68, &qword_27F067160);
}

uint64_t sub_24B9B3BF8(double a1)
{
  v3 = sub_24BAA8B9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  sub_24BA8DAA8(&v18 - v8);
  (*(v4 + 104))(v7, *MEMORY[0x277CE0290], v3);
  v10 = sub_24B9BC1EC(v9, v7);
  v11 = *(v4 + 8);
  v11(v7, v3);
  v11(v9, v3);
  if (v10)
  {
    v12 = a1;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = type metadata accessor for NotificationExceptionsItemView(0);
  if (*(v1 + *(v13 + 36)) == 2)
  {
    if (*(v1 + *(v13 + 32)))
    {
      if (qword_27F063110 != -1)
      {
        goto LABEL_23;
      }
    }

    else if (qword_27F063110 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      sub_24BAA7C2C();
      v14 = sub_24BAA9FDC();

      if (v10 && (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v12 <= -9.22337204e18)
      {
        goto LABEL_21;
      }

      if (v12 < 9.22337204e18)
      {
        v15 = [v14 variantFittingPresentationWidth_];
        v16 = sub_24BAAA01C();

        return v16;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      swift_once();
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (*(v1 + *(v13 + 32)))
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }
  }

  else if (qword_27F063110 != -1)
  {
    swift_once();
  }

  return sub_24BAA7C2C();
}

uint64_t sub_24B9B3F84()
{
  v1 = type metadata accessor for NotificationExceptionsItemView(0);
  v2 = *(v0 + *(v1 + 28));
  if (*(v0 + *(v1 + 32)) == 1)
  {
    if (v2)
    {

      sub_24B984444();
      v3 = sub_24B8D7188();
      if (v3)
      {
        v4 = v3;
        v5 = [v3 configuration];
        v6 = [v5 applicationConfigurationType];
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else if (v2)
  {

    sub_24B984444();
    v7 = sub_24B8D7188();
    if (v7)
    {
      v4 = v7;
      v5 = [v7 configuration];
      v6 = [v5 senderConfigurationType];
LABEL_8:
      v8 = v6;

      if (v8 != 2)
      {
        return sub_24BAA988C();
      }

      return sub_24BAA974C();
    }

LABEL_10:

    return sub_24BAA974C();
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24B9B2334(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24B9B40FC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067168);
  MEMORY[0x28223BE20](v2);
  v4 = (&v41 - v3);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067170);
  v5 = *(v45 - 8);
  v6 = MEMORY[0x28223BE20](v45);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v41 - v9);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067178);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  if (sub_24B9B4654())
  {
    type metadata accessor for NotificationExceptionsItemView(0);
    v42 = sub_24BAA991C();
    v43 = v2;
    v22 = (v4 + *(v2 + 36));
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C38);
    v44 = a1;
    v24 = *(v23 + 28);
    v25 = *MEMORY[0x277CE1050];
    v26 = sub_24BAA996C();
    (*(*(v26 - 8) + 104))(v22 + v24, v25, v26);
    *v22 = swift_getKeyPath();
    *v4 = v42;
    sub_24BAA916C();
    v27 = sub_24BAA917C();

    KeyPath = swift_getKeyPath();
    sub_24B90294C(v4, v13, &qword_27F067168);
    v29 = v45;
    v30 = &v13[*(v45 + 36)];
    *v30 = KeyPath;
    v30[1] = v27;
    sub_24B90294C(v13, v15, &qword_27F067170);
    v2 = v43;
    a1 = v44;
    sub_24B90294C(v15, v21, &qword_27F067170);
    (*(v5 + 56))(v21, 0, 1, v29);
  }

  else
  {
    v29 = v45;
    (*(v5 + 56))(v21, 1, 1, v45);
    v25 = *MEMORY[0x277CE1050];
  }

  v31 = sub_24BAA991C();
  v32 = (v10 + *(v2 + 36));
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C38) + 28);
  v34 = sub_24BAA996C();
  (*(*(v34 - 8) + 104))(v32 + v33, v25, v34);
  *v32 = swift_getKeyPath();
  *v10 = v31;
  sub_24BAA916C();
  v35 = sub_24BAA917C();

  v36 = swift_getKeyPath();
  v37 = (v10 + *(v29 + 36));
  *v37 = v36;
  v37[1] = v35;
  sub_24B8F3208(v21, v19, &qword_27F067178);
  v38 = v46;
  sub_24B8F3208(v10, v46, &qword_27F067170);
  sub_24B8F3208(v19, a1, &qword_27F067178);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067180);
  sub_24B8F3208(v38, a1 + *(v39 + 48), &qword_27F067170);
  sub_24B8F35E4(v10, &qword_27F067170);
  sub_24B8F35E4(v21, &qword_27F067178);
  sub_24B8F35E4(v38, &qword_27F067170);
  return sub_24B8F35E4(v19, &qword_27F067178);
}

uint64_t sub_24B9B4654()
{
  v1 = type metadata accessor for NotificationExceptionsItemView(0);
  if (*(v0 + v1[9]) == 2)
  {
    return 1;
  }

  v3 = *(v0 + v1[8]);
  v4 = *(v0 + v1[7]);
  if (v3 != 1)
  {
    if (v4)
    {

      v5 = sub_24B9A179C();
      goto LABEL_8;
    }

LABEL_12:
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9B2334(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = sub_24B9A1610();
LABEL_8:
  v6 = v5;

  if (v6 >> 62)
  {
    v7 = sub_24BAAA52C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v7 > 0;
}

uint64_t sub_24B9B477C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24BAA83DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_24BAA980C();
  sub_24BAA83CC();
  v9 = v8;
  (*(v5 + 16))(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  result = (*(v5 + 32))(v11 + v10, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *a2 = v7;
  a2[1] = v9;
  a2[2] = sub_24B9BC6FC;
  a2[3] = v11;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

uint64_t sub_24B9B48CC()
{
  type metadata accessor for NotificationExceptionsItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065C00);
  return sub_24BAA9A0C();
}

uint64_t sub_24B9B4944@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066F50);
  MEMORY[0x28223BE20](v3);
  v223 = &v198 - v4;
  v206 = type metadata accessor for NotificationExceptionsItemView.MoreContactView(0);
  MEMORY[0x28223BE20](v206);
  v207 = (&v198 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066F60);
  MEMORY[0x28223BE20](v215);
  v216 = &v198 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066F68);
  v218 = *(v7 - 8);
  v219 = v7;
  MEMORY[0x28223BE20](v7);
  v208 = &v198 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066F70);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v220 = &v198 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v244 = &v198 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066F78);
  v221 = *(v13 - 8);
  v222 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v217 = &v198 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v250 = &v198 - v16;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066F80);
  MEMORY[0x28223BE20](v236);
  v237 = &v198 - v17;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066F40);
  MEMORY[0x28223BE20](v213);
  v200 = (&v198 - v18);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066F88);
  MEMORY[0x28223BE20](v209);
  v210 = &v198 - v19;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066F28);
  v201 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v199 = &v198 - v20;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066F18);
  MEMORY[0x28223BE20](v235);
  v212 = &v198 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066F08);
  MEMORY[0x28223BE20](v22);
  v249 = &v198 - v23;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066F90);
  MEMORY[0x28223BE20](v251);
  v252 = &v198 - v24;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066EF8);
  MEMORY[0x28223BE20](v242);
  v234 = &v198 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066F98);
  v230 = *(v26 - 8);
  v231 = v26;
  MEMORY[0x28223BE20](v26);
  v214 = &v198 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066FA0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v232 = &v198 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v233 = &v198 - v31;
  v32 = type metadata accessor for NotificationExceptionsItemView(0);
  v245 = *(v32 - 1);
  MEMORY[0x28223BE20](v32);
  v246 = v33;
  v247 = &v198 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066FA8);
  v227 = *(v34 - 8);
  v228 = v34;
  MEMORY[0x28223BE20](v34);
  v226 = &v198 - v35;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066FB0);
  v36 = MEMORY[0x28223BE20](v225);
  v229 = &v198 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v224 = &v198 - v39;
  MEMORY[0x28223BE20](v38);
  v248 = &v198 - v40;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066FB8);
  MEMORY[0x28223BE20](v240);
  v241 = &v198 - v41;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066EE8);
  MEMORY[0x28223BE20](v205);
  v43 = &v198 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066FC0);
  MEMORY[0x28223BE20](v44);
  v202 = &v198 - v45;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066ED0);
  v198 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v47 = &v198 - v46;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066EC0);
  MEMORY[0x28223BE20](v238);
  v204 = &v198 - v48;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066EB0);
  MEMORY[0x28223BE20](v254);
  v239 = (&v198 - v49);
  v50 = v32[7];
  v51 = *(v1 + v32[8]);
  v255 = v1;
  v52 = *(v1 + v50);
  v253 = v22;
  if (v51 != 1)
  {
    v242 = v3;
    if (!v52)
    {
      goto LABEL_136;
    }

    v63 = v52;
    KeyPath = sub_24B9A179C();

    v47 = sub_24B9A179C();

    v65 = v32[13];
    v66 = *(v255 + v65);
    v67 = v249;
    if (v66 < 0)
    {
      __break(1u);
    }

    else
    {
      v65 = v47 & 0xFFFFFFFFFFFFFF8;
      v22 = v47 >> 62;
      if (!(v47 >> 62))
      {
        v68 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v68 >= v66)
        {
          v69 = v66;
        }

        else
        {
          v69 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v66)
        {
          v70 = v69;
        }

        else
        {
          v70 = 0;
        }

        if (v68 >= v70)
        {
          goto LABEL_29;
        }

        goto LABEL_116;
      }
    }

    if (v47 < 0)
    {
      v63 = v47;
    }

    else
    {
      v63 = v65;
    }

    v32 = sub_24BAAA52C();
    if (sub_24BAAA52C() < 0)
    {
      __break(1u);
      goto LABEL_136;
    }

    if (v32 >= v66)
    {
      v196 = v66;
    }

    else
    {
      v196 = v32;
    }

    if (v32 < 0)
    {
      v196 = v66;
    }

    if (v66)
    {
      v70 = v196;
    }

    else
    {
      v70 = 0;
    }

    if (sub_24BAAA52C() >= v70)
    {
LABEL_29:
      if ((v47 & 0xC000000000000001) != 0 && v70)
      {
        sub_24B915A1C();

        v71 = 0;
        do
        {
          v72 = v71 + 1;
          sub_24BAAA61C();
          v71 = v72;
        }

        while (v70 != v72);
      }

      else
      {
      }

      if (v22)
      {
        v63 = sub_24BAAA6FC();
        v240 = v73;
        v32 = v74;
        v22 = v75;
      }

      else
      {
        v32 = 0;
        v63 = v47 & 0xFFFFFFFFFFFFFF8;
        v240 = (v47 & 0xFFFFFFFFFFFFFF8) + 32;
        v22 = (2 * v70) | 1;
      }

      if (!(KeyPath >> 62))
      {
        v248 = (v22 >> 1) - v32;
        if (!__OFSUB__(v22 >> 1, v32))
        {
          v238 = v22 >> 1;
          v76 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
          v77 = v76;
          goto LABEL_41;
        }

        goto LABEL_122;
      }

LABEL_117:
      if (KeyPath < 0)
      {
        v47 = KeyPath;
      }

      else
      {
        v47 = KeyPath & 0xFFFFFFFFFFFFFF8;
      }

      v197 = sub_24BAAA52C();
      v248 = (v22 >> 1) - v32;
      if (!__OFSUB__(v22 >> 1, v32))
      {
        v76 = v197;
        v238 = v22 >> 1;
        v77 = sub_24BAAA52C();
LABEL_41:

        v241 = v63;
        if (!v77)
        {
          v123 = v67;
          if (sub_24B9B8A80())
          {
            v264 = xmmword_24BAB5830;
            swift_getKeyPath();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067040);
            type metadata accessor for NotificationExceptionsItemView.ColoringBookPeopleView(0);
            sub_24B9BBC04();
            sub_24B9B2334(&qword_27F066F30, type metadata accessor for NotificationExceptionsItemView.ColoringBookPeopleView);
            v124 = v199;
            sub_24BAA9BFC();
            v125 = v201;
            v126 = v211;
            (*(v201 + 16))(v210, v124, v211);
            swift_storeEnumTagMultiPayload();
            sub_24B9BB588();
            sub_24B8F384C(&qword_27F066F38, &qword_27F066F40);
            v127 = v212;
            sub_24BAA8D0C();
            (*(v125 + 8))(v124, v126);
          }

          else
          {
            v149 = sub_24BAA8AAC();
            v150 = v200;
            *v200 = v149;
            *(v150 + 8) = 0;
            *(v150 + 16) = 1;
            v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067038);
            sub_24B9B8C14(v150 + *(v151 + 44));
            sub_24B8F3208(v150, v210, &qword_27F066F40);
            swift_storeEnumTagMultiPayload();
            sub_24B9BB588();
            sub_24B8F384C(&qword_27F066F38, &qword_27F066F40);
            v127 = v212;
            sub_24BAA8D0C();
            sub_24B8F35E4(v150, &qword_27F066F40);
          }

          v152 = v252;
          sub_24B8F3208(v127, v237, &qword_27F066F18);
          swift_storeEnumTagMultiPayload();
          sub_24B9BB4D0();
          sub_24B8F384C(&qword_27F066F48, &qword_27F066F50);
          sub_24BAA8D0C();
          sub_24B8F35E4(v127, &qword_27F066F18);
LABEL_96:
          v121 = &qword_27F066F08;
          sub_24B8F3208(v123, v152, &qword_27F066F08);
          swift_storeEnumTagMultiPayload();
          sub_24B9BB1D4();
          sub_24B9BB418();
          sub_24BAA8D0C();
          swift_unknownObjectRelease();
          v122 = v123;
          return sub_24B8F35E4(v122, v121);
        }

        v239 = v32;
        v78 = v248;
        v79 = v255;
        if (v66 < v76 && (v78 = v248 - 1, __OFSUB__(v248, 1)))
        {
          __break(1u);
        }

        else
        {
          KeyPath = sub_24B9A9920(v78, v63, v240, v239, v22);
          v77 = v80;
          v22 = v81;
          v67 = v82;
          v243 = a1;
          v234 = v66;
          if ((v82 & 1) == 0)
          {
            swift_unknownObjectRetain();
            while (1)
            {
              sub_24B99B2F8(KeyPath, v77, v22, v67);
              v84 = v83;
              v85 = v247;
              v86 = v245;
LABEL_73:
              swift_unknownObjectRelease();
LABEL_74:
              *&v264 = v84;
              KeyPath = swift_getKeyPath();
              sub_24B9BC11C(v79, v85, type metadata accessor for NotificationExceptionsItemView);
              v130 = (*(v86 + 80) + 16) & ~*(v86 + 80);
              v77 = swift_allocObject();
              sub_24B9BBAB4(v85, v77 + v130, type metadata accessor for NotificationExceptionsItemView);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0634E8);
              v131 = &qword_27F066FC8;
              v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066FC8);
              v22 = sub_24B8F384C(&qword_27F066578, &qword_27F0634E8);
              v67 = sub_24B9BB8BC();
              sub_24B9BBE48(&qword_27F066FD8, &qword_27F066FC8, &unk_24BAB5B18, sub_24B9BB938);
              sub_24BAA9BFC();
              v132 = v234;
              if (v234 >= v76)
              {
                v145 = v244;
                (*(v218 + 56))(v244, 1, 1, v219);
                goto LABEL_95;
              }

              v133 = v76 - v248;
              if (!__OFSUB__(v76, v248))
              {
                break;
              }

LABEL_130:
              __break(1u);
LABEL_131:
              swift_unknownObjectRelease();
            }

            v134 = v215;
            v135 = v216;
            if (__OFADD__(v133, 1))
            {
              __break(1u);
            }

            else
            {
              v136 = sub_24B9B930C(v133 + 1);
              if (v132 > v239 && v132 <= v238)
              {
                v138 = v136;
                v139 = v137;
                v131 = *(v240 + 8 * v132 - 8);
                v140 = [v131 contactIdentifier];
                if (v140)
                {
                  v141 = v140;
                  v142 = sub_24BAAA01C();
                  v144 = v143;
                }

                else
                {
                  v142 = 0;
                  v144 = 0;
                }

                v153 = swift_getKeyPath();
                v154 = v207;
                *v207 = v153;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
                swift_storeEnumTagMultiPayload();
                v155 = v206;
                v156 = (v154 + *(v206 + 20));
                *v156 = v142;
                v156[1] = v144;
                v157 = (v154 + *(v155 + 24));
                *v157 = v138;
                v157[1] = v139;
                *(v154 + *(v155 + 28)) = 0x4041800000000000;
                v158 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
                v159 = sub_24BAA973C();
                v160 = sub_24BAA90BC();
                sub_24BAA828C();
                v162 = v161;
                v164 = v163;
                v166 = v165;
                v168 = v167;
                LOBYTE(v256) = 0;
                v169 = sub_24BAA9D1C();
                v171 = v170;
                *&v259 = v159;
                WORD4(v259) = 256;
                LOBYTE(v260) = v160;
                *(&v260 + 1) = v162;
                *&v261 = v164;
                *(&v261 + 1) = v166;
                *&v262 = v168;
                BYTE8(v262) = 0;
                *&v263 = v169;
                *(&v263 + 1) = v170;
                sub_24B9BBAB4(v154, v135, type metadata accessor for NotificationExceptionsItemView.MoreContactView);
                v172 = (v135 + *(v134 + 36));
                v173 = v262;
                v172[2] = v261;
                v172[3] = v173;
                v172[4] = v263;
                v174 = v260;
                *v172 = v259;
                v172[1] = v174;
                *&v264 = v159;
                WORD4(v264) = 256;
                LOBYTE(v265) = v160;
                *(&v265 + 1) = v162;
                *&v266 = v164;
                *(&v266 + 1) = v166;
                v267 = v168;
                v268 = 0;
                v269 = v169;
                v270 = v171;
                sub_24B8F3208(&v259, &v258, &qword_27F067018);
                sub_24B8F35E4(&v264, &qword_27F067018);
                if (qword_27F0630D0 == -1)
                {
LABEL_88:
                  swift_beginAccess();
                  v175 = xmmword_27F076FF0;

                  v176 = v175;
                  v177 = *(&v175 + 1);

                  v178 = sub_24BA22270(v131, v177);
                  v179 = v131;
                  v181 = v180;

                  if (v181)
                  {
                    v182 = v178;
                  }

                  else
                  {
                    v182 = 0;
                  }

                  if (v181)
                  {
                    v183 = v181;
                  }

                  else
                  {
                    v183 = 0xE000000000000000;
                  }

                  v256 = v182;
                  v257 = v183;
                  sub_24B9BBB1C();
                  sub_24B8F5E3C();
                  v184 = v208;
                  v185 = v216;
                  sub_24BAA959C();

                  sub_24B8F35E4(v185, &qword_27F066F60);
                  v145 = v244;
                  sub_24B90294C(v184, v244, &qword_27F066F68);
                  (*(v218 + 56))(v145, 0, 1, v219);
LABEL_95:
                  v187 = v220;
                  v186 = v221;
                  v188 = *(v221 + 16);
                  v189 = v217;
                  v190 = v222;
                  v188(v217, v250, v222);
                  sub_24B8F3208(v145, v187, &qword_27F066F70);
                  v191 = v223;
                  v188(v223, v189, v190);
                  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067010);
                  sub_24B8F3208(v187, v191 + *(v192 + 48), &qword_27F066F70);
                  sub_24B8F35E4(v187, &qword_27F066F70);
                  v193 = *(v186 + 8);
                  v193(v189, v190);
                  sub_24B8F3208(v191, v237, &qword_27F066F50);
                  swift_storeEnumTagMultiPayload();
                  sub_24B9BB4D0();
                  sub_24B8F384C(&qword_27F066F48, &qword_27F066F50);
                  v123 = v249;
                  sub_24BAA8D0C();
                  sub_24B8F35E4(v191, &qword_27F066F50);
                  sub_24B8F35E4(v244, &qword_27F066F70);
                  v193(v250, v190);
                  v152 = v252;
                  goto LABEL_96;
                }

LABEL_134:
                swift_once();
                goto LABEL_88;
              }
            }

            __break(1u);
            goto LABEL_134;
          }

          sub_24BAAA7AC();
          swift_unknownObjectRetain_n();
          swift_unknownObjectRetain();
          v128 = swift_dynamicCastClass();
          if (!v128)
          {
            swift_unknownObjectRelease();
            v128 = MEMORY[0x277D84F90];
          }

          v129 = *(v128 + 16);

          if (!__OFSUB__(v67 >> 1, v22))
          {
            if (v129 != (v67 >> 1) - v22)
            {
              goto LABEL_131;
            }

            v84 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            v85 = v247;
            v86 = v245;
            if (v84)
            {
              goto LABEL_74;
            }

            v84 = MEMORY[0x277D84F90];
            goto LABEL_73;
          }
        }

        __break(1u);
        goto LABEL_130;
      }

LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v243 = a1;
  if (v52)
  {

    v53 = sub_24B9A1610();

    v54 = v53 >> 62;
    if (v53 >> 62)
    {
      v22 = sub_24BAAA52C();
      if (v22)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v22 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_6;
      }
    }

    v55 = sub_24B991C2C();

    if (!v55)
    {

      if (sub_24B9B834C())
      {
        v264 = xmmword_24BAB5830;
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067040);
        type metadata accessor for NotificationExceptionsItemView.ColoringBookAppView(0);
        sub_24B9BBC04();
        sub_24B9B2334(&qword_27F066ED8, type metadata accessor for NotificationExceptionsItemView.ColoringBookAppView);
        sub_24BAA9BFC();
        v146 = v198;
        v147 = v203;
        (*(v198 + 16))(v202, v47, v203);
        swift_storeEnumTagMultiPayload();
        sub_24B9BB344();
        sub_24B8F384C(&qword_27F066EE0, &qword_27F066EE8);
        v148 = v204;
        sub_24BAA8D0C();
        (*(v146 + 8))(v47, v147);
      }

      else
      {
        *v43 = sub_24BAA8AAC();
        *(v43 + 1) = 0;
        v43[16] = 1;
        v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0670D0);
        sub_24B9B8488(&v43[*(v195 + 44)]);
        sub_24B8F3208(v43, v202, &qword_27F066EE8);
        swift_storeEnumTagMultiPayload();
        sub_24B9BB344();
        sub_24B8F384C(&qword_27F066EE0, &qword_27F066EE8);
        v148 = v204;
        sub_24BAA8D0C();
        sub_24B8F35E4(v43, &qword_27F066EE8);
      }

      v120 = v252;
      v119 = v239;
      sub_24B8F3208(v148, v241, &qword_27F066EC0);
      swift_storeEnumTagMultiPayload();
      sub_24B9BB28C();
      sub_24B8F384C(&qword_27F066EF0, &qword_27F066EF8);
      sub_24BAA8D0C();
      sub_24B8F35E4(v148, &qword_27F066EC0);
      goto LABEL_64;
    }

LABEL_6:

    v56 = sub_24B991C2C();

    v57 = v255;
    v58 = *(v255 + v32[13]);
    if (v56 && __OFSUB__(v58--, 1))
    {
      goto LABEL_125;
    }

    if ((v58 & 0x8000000000000000) == 0)
    {
      if (v22 >= v58)
      {
        v60 = v58;
      }

      else
      {
        v60 = v22;
      }

      if ((v22 & 0x8000000000000000) != 0)
      {
        v60 = v58;
      }

      if (v58)
      {
        v61 = v60;
      }

      else
      {
        v61 = 0;
      }

      if (v54)
      {
        if (sub_24BAAA52C() < 0)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        v62 = sub_24BAAA52C();
      }

      else
      {
        v62 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v62 >= v61)
      {
        if ((v53 & 0xC000000000000001) != 0 && v61)
        {
          type metadata accessor for EventSource();

          v87 = 0;
          do
          {
            v88 = v87 + 1;
            sub_24BAAA61C();
            v87 = v88;
          }

          while (v61 != v88);
        }

        else
        {
        }

        if (v54)
        {
          v90 = sub_24BAAA6FC();
          v91 = v93;
          v89 = v94;
          v92 = v95;
        }

        else
        {
          v89 = 0;
          v90 = v53 & 0xFFFFFFFFFFFFFF8;
          v91 = (v53 & 0xFFFFFFFFFFFFFF8) + 32;
          v92 = (2 * v61) | 1;
        }

        *&v264 = v90;
        *(&v264 + 1) = v91;
        *&v265 = v89;
        *(&v265 + 1) = v92;
        v250 = swift_getKeyPath();
        v96 = v247;
        sub_24B9BC11C(v57, v247, type metadata accessor for NotificationExceptionsItemView);
        v97 = (*(v245 + 80) + 16) & ~*(v245 + 80);
        v98 = swift_allocObject();
        sub_24B9BBAB4(v96, v98 + v97, type metadata accessor for NotificationExceptionsItemView);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067058);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067060);
        sub_24B8F384C(&qword_27F067068, &qword_27F067058);
        sub_24B9B2334(&qword_27F063338, type metadata accessor for EventSource);
        sub_24B9BBD90();
        v99 = v226;
        sub_24BAA9BFC();
        type metadata accessor for AppIconCache();
        sub_24B9B2334(&qword_27F0651D0, type metadata accessor for AppIconCache);
        v100 = sub_24BAA82FC();
        v101 = sub_24BAA813C();
        v102 = v224;
        (*(v227 + 32))(v224, v99, v228);
        v103 = (v102 + *(v225 + 36));
        *v103 = v101;
        v103[1] = v100;
        sub_24B90294C(v102, v248, &qword_27F066FB0);

        LOBYTE(v101) = sub_24B991C2C();

        if ((v101 & 1) == 0)
        {
          v114 = 1;
          v47 = v232;
          v113 = v233;
          v22 = v230;
          v110 = v231;
          goto LABEL_63;
        }

        v104 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
        v105 = sub_24BAA973C();
        v106 = sub_24BAA9D1C();
        *&v264 = 0x4041800000000000;
        *(&v264 + 1) = 1;
        *&v265 = 0x4024000000000000;
        *(&v265 + 1) = v105;
        *&v266 = v106;
        *(&v266 + 1) = v107;
        v47 = v232;
        v22 = v230;
        if (qword_27F063110 == -1)
        {
LABEL_61:
          *&v259 = sub_24BAA7C2C();
          *(&v259 + 1) = v108;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0670B8);
          sub_24B9BC008();
          sub_24B8F5E3C();
          v109 = v214;
          sub_24BAA959C();

          sub_24BAA9D1C();
          sub_24BAA83BC();
          v110 = v231;
          v111 = (v109 + *(v231 + 36));
          v112 = v265;
          *v111 = v264;
          v111[1] = v112;
          v111[2] = v266;
          v113 = v233;
          sub_24B90294C(v109, v233, &qword_27F066F98);
          v114 = 0;
LABEL_63:
          (*(v22 + 56))(v113, v114, 1, v110);
          v115 = v248;
          v116 = v229;
          sub_24B8F3208(v248, v229, &qword_27F066FB0);
          sub_24B8F3208(v113, v47, &qword_27F066FA0);
          v117 = v234;
          sub_24B8F3208(v116, v234, &qword_27F066FB0);
          v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0670B0);
          sub_24B8F3208(v47, v117 + *(v118 + 48), &qword_27F066FA0);
          sub_24B8F35E4(v47, &qword_27F066FA0);
          sub_24B8F35E4(v116, &qword_27F066FB0);
          sub_24B8F3208(v117, v241, &qword_27F066EF8);
          swift_storeEnumTagMultiPayload();
          sub_24B9BB28C();
          sub_24B8F384C(&qword_27F066EF0, &qword_27F066EF8);
          v119 = v239;
          sub_24BAA8D0C();
          sub_24B8F35E4(v117, &qword_27F066EF8);
          sub_24B8F35E4(v113, &qword_27F066FA0);
          sub_24B8F35E4(v115, &qword_27F066FB0);
          v120 = v252;
LABEL_64:
          v121 = &qword_27F066EB0;
          sub_24B8F3208(v119, v120, &qword_27F066EB0);
          swift_storeEnumTagMultiPayload();
          sub_24B9BB1D4();
          sub_24B9BB418();
          sub_24BAA8D0C();
          v122 = v119;
          return sub_24B8F35E4(v122, v121);
        }

LABEL_127:
        swift_once();
        goto LABEL_61;
      }

      goto LABEL_124;
    }

LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

LABEL_136:
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9B2334(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24B9B6C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E28);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v37 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - v6;
  *v7 = sub_24BAA8BDC();
  *(v7 + 1) = 0x401C000000000000;
  v7[16] = 0;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E30) + 44);
  v36 = v7;
  sub_24B9B71F4(a1, &v7[v8]);
  if (*(a1 + *(type metadata accessor for NotificationExceptionsItemView(0) + 36)) == 2)
  {
    v9 = sub_24BAA991C();
    v10 = sub_24B9B3F84();
    KeyPath = swift_getKeyPath();
    sub_24BAA926C();
    v12 = sub_24BAA917C();

    v13 = swift_getKeyPath();
    *&v34 = v9;

    *&v33 = KeyPath;

    v32[1] = v10;

    LOBYTE(v52[0]) = 1;
    LOBYTE(v50[0]) = 1;
    *&v38[0] = 0;
    BYTE8(v38[0]) = 1;
    *&v38[1] = v9;
    *(&v38[1] + 1) = KeyPath;
    *&v38[2] = v10;
    *(&v38[2] + 1) = v13;
    *&v38[3] = v12;
    BYTE8(v38[6]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E48);
    sub_24B8F384C(&qword_27F066E50, &qword_27F066E40);
    sub_24B8F384C(&qword_27F066E58, &qword_27F066E48);
    sub_24BAA8D0C();
  }

  else
  {
    v14 = sub_24BAA8AAC();
    LOBYTE(v38[0]) = 0;
    sub_24B9B77E0(&v39);
    v15 = *&v40[0];
    v16 = *(&v40[1] + 1);
    v33 = *(v40 + 8);
    v34 = v39;
    v17 = v38[0];
    v18 = [objc_opt_self() secondaryLabelColor];
    v19 = sub_24BAA973C();
    v20 = swift_getKeyPath();
    *&v46 = v14;
    *(&v46 + 1) = 0x4000000000000000;
    LOBYTE(v47[0]) = v17;
    *(v47 + 8) = v34;
    v47[2] = v33;
    *(&v47[1] + 1) = v15;
    *&v48 = v16;
    *(&v48 + 1) = v20;
    v52[2] = v47[1];
    v52[3] = v33;
    v52[0] = v46;
    v52[1] = v47[0];
    v52[4] = v48;
    v50[3] = v33;
    v50[4] = v48;
    v50[1] = v47[0];
    v50[2] = v47[1];
    v50[0] = v46;
    *(&v44[1] + 7) = v47[0];
    v49 = v19;
    v53 = v19;
    v45 = 1;
    v51 = v19;
    *(v44 + 7) = v46;
    *(&v44[5] + 7) = v19;
    *(&v44[4] + 7) = v48;
    *(&v44[3] + 7) = v33;
    *(&v44[2] + 7) = v47[1];
    sub_24B8F3208(&v46, &v39, &qword_27F066E38);
    sub_24B8F3208(v50, &v39, &qword_27F066E38);
    sub_24B8F35E4(v52, &qword_27F066E38);
    *(&v38[2] + 9) = v44[2];
    *(&v38[3] + 9) = v44[3];
    *(&v38[4] + 9) = v44[4];
    *(&v38[5] + 8) = *(&v44[4] + 15);
    *(v38 + 9) = v44[0];
    v54 = 0;
    *&v38[0] = 0;
    BYTE8(v38[0]) = 1;
    *(&v38[1] + 9) = v44[1];
    BYTE8(v38[6]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E48);
    sub_24B8F384C(&qword_27F066E50, &qword_27F066E40);
    sub_24B8F384C(&qword_27F066E58, &qword_27F066E48);
    sub_24BAA8D0C();
    sub_24B8F35E4(&v46, &qword_27F066E38);
  }

  v59 = v42;
  v60[0] = v43[0];
  *(v60 + 9) = *(v43 + 9);
  v55 = v39;
  v56 = v40[0];
  v57 = v40[1];
  v58 = v41;
  v22 = v36;
  v21 = v37;
  sub_24B8F3208(v36, v37, &qword_27F066E28);
  v23 = v35;
  sub_24B8F3208(v21, v35, &qword_27F066E28);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E60) + 48));
  v25 = v59;
  v26 = v60[0];
  v38[4] = v59;
  v38[5] = v60[0];
  v27 = *(v60 + 9);
  *(&v38[5] + 9) = *(v60 + 9);
  v28 = v56;
  v38[0] = v55;
  v38[1] = v56;
  v30 = v57;
  v29 = v58;
  v38[2] = v57;
  v38[3] = v58;
  *v24 = v55;
  v24[1] = v28;
  v24[4] = v25;
  v24[5] = v26;
  v24[2] = v30;
  v24[3] = v29;
  *(v24 + 89) = v27;
  sub_24B8F3208(v38, &v39, &qword_27F066E68);
  sub_24B8F35E4(v22, &qword_27F066E28);
  v42 = v59;
  v43[0] = v60[0];
  *(v43 + 9) = *(v60 + 9);
  v39 = v55;
  v40[0] = v56;
  v40[1] = v57;
  v41 = v58;
  sub_24B8F35E4(&v39, &qword_27F066E68);
  return sub_24B8F35E4(v21, &qword_27F066E28);
}

uint64_t sub_24B9B71F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a2;
  v74 = sub_24BAA8B7C();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v70 = &v61[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E70);
  MEMORY[0x28223BE20](v67);
  v68 = &v61[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E78);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v61[-v6];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E80);
  MEMORY[0x28223BE20](v66);
  v65 = &v61[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E88);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v73 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v64 = &v61[-v12];
  MEMORY[0x28223BE20](v11);
  v69 = &v61[-v13];
  v77 = sub_24B9B3BF8(1.0);
  v78 = v14;
  sub_24B8F5E3C();
  v15 = sub_24BAA93CC();
  v17 = v16;
  v19 = v18;
  sub_24BAA916C();
  v20 = sub_24BAA939C();
  v22 = v21;
  v24 = v23;

  sub_24B900910(v15, v17, v19 & 1);

  v71 = a1;
  if (!sub_24B9B3F84())
  {
    sub_24BAA988C();
  }

  v25 = sub_24BAA933C();
  v27 = v26;
  v29 = v28;
  sub_24B900910(v20, v22, v24 & 1);

  sub_24BAA927C();
  v30 = sub_24BAA939C();
  v32 = v31;
  v62 = v33;
  v35 = v34;

  sub_24B900910(v25, v27, v29 & 1);

  v36 = v71 + *(type metadata accessor for NotificationExceptionsItemView(0) + 40);
  v37 = *v36;
  v38 = *(v36 + 8);
  LOBYTE(v36) = *(v36 + 16);
  v77 = v37;
  v78 = v38;
  v79 = v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E90);
  MEMORY[0x24C24FC10](&v76, v39);
  v40 = sub_24BAA8AAC();
  v41 = v63;
  *v63 = v40;
  *(v41 + 8) = 0xC024000000000000;
  *(v41 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E98);
  v42 = v68;
  sub_24B9B4944(v68);
  v43 = v70;
  sub_24BAA8B4C();
  sub_24B9BB148();
  sub_24BAA963C();
  (*(v72 + 8))(v43, v74);
  sub_24B8F35E4(v42, &qword_27F066E70);
  v44 = sub_24BAA911C();
  sub_24BAA828C();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v65;
  sub_24B90294C(v41, v65, &qword_27F066E78);
  v54 = &v53[*(v66 + 36)];
  *v54 = v44;
  *(v54 + 1) = v46;
  *(v54 + 2) = v48;
  *(v54 + 3) = v50;
  *(v54 + 4) = v52;
  v54[40] = 0;
  v55 = v64;
  sub_24B90294C(v53, v64, &qword_27F066E80);
  v56 = v69;
  sub_24B90294C(v55, v69, &qword_27F066E88);
  v57 = v73;
  sub_24B8F3208(v56, v73, &qword_27F066E88);
  v58 = v75;
  *v75 = v30;
  v58[1] = v32;
  LOBYTE(v55) = v62 & 1;
  *(v58 + 16) = v62 & 1;
  v58[3] = v35;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066F58);
  sub_24B8F3208(v57, v58 + *(v59 + 48), &qword_27F066E88);
  sub_24B8F319C(v30, v32, v55);

  sub_24B8F35E4(v56, &qword_27F066E88);
  sub_24B8F35E4(v57, &qword_27F066E88);
  sub_24B900910(v30, v32, v55);
}

uint64_t sub_24B9B77E0@<X0>(uint64_t *a1@<X8>)
{
  if (sub_24B9B4654())
  {
    type metadata accessor for NotificationExceptionsItemView(0);
    v2 = sub_24BAA991C();
    sub_24BAA926C();
    v3 = sub_24BAA917C();

    KeyPath = swift_getKeyPath();
  }

  else
  {
    v2 = 0;
    KeyPath = 0;
    v3 = 0;
  }

  v5 = sub_24BAA991C();
  sub_24BAA926C();
  v6 = sub_24BAA917C();

  v7 = swift_getKeyPath();
  sub_24B9BAFC0(v2);

  sub_24B9BB010(v2);
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;

  return sub_24B9BB010(v2);
}

uint64_t sub_24B9B7998()
{
  v1 = type metadata accessor for NotificationExceptionsItemView(0);
  v2 = *(v0 + *(v1 + 36));
  if (v2)
  {
    if (v2 == 1)
    {
      if (*(v0 + *(v1 + 32)))
      {
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }
      }

      else if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }
    }

    else if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

    goto LABEL_15;
  }

  if (*(v0 + *(v1 + 32)))
  {
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

    goto LABEL_15;
  }

  if (qword_27F063110 != -1)
  {
LABEL_15:
    swift_once();
  }

  return sub_24BAA7C2C();
}

uint64_t sub_24B9B7B94(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067248);
  MEMORY[0x28223BE20](v6);
  v8 = &v32[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067250);
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-v10];
  if (a1 == 3)
  {
    v12 = sub_24BAA9D1C();
    v14 = v13;
    sub_24B9B7FE8(a2, &v33);
    v52 = v41;
    v53 = v42;
    v54[0] = v43[0];
    *(v54 + 9) = *(v43 + 9);
    v48 = v37;
    v49 = v38;
    v50 = v39;
    v51 = v40;
    v44 = v33;
    v45 = v34;
    v46 = v35;
    v47 = v36;
    v55[8] = v41;
    v55[9] = v42;
    v56[0] = v43[0];
    *(v56 + 9) = *(v43 + 9);
    v55[4] = v37;
    v55[5] = v38;
    v55[6] = v39;
    v55[7] = v40;
    v55[0] = v33;
    v55[1] = v34;
    v55[2] = v35;
    v55[3] = v36;
    sub_24B8F3208(&v44, v32, &qword_27F067270);
    sub_24B8F35E4(v55, &qword_27F067270);
    *v11 = v12;
    *(v11 + 1) = v14;
    v15 = v53;
    *(v11 + 9) = v52;
    *(v11 + 10) = v15;
    *(v11 + 11) = v54[0];
    *(v11 + 185) = *(v54 + 9);
    v16 = v49;
    *(v11 + 5) = v48;
    *(v11 + 6) = v16;
    v17 = v51;
    *(v11 + 7) = v50;
    *(v11 + 8) = v17;
    v18 = v45;
    *(v11 + 1) = v44;
    *(v11 + 2) = v18;
    v19 = v47;
    *(v11 + 3) = v46;
    *(v11 + 4) = v19;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067258);
    sub_24B8F384C(&qword_27F067260, &qword_27F067258);
    sub_24B9BCEE4(&qword_27F067268, &qword_27F067248, &unk_24BAB60D8, sub_24B95B784);
    return sub_24BAA8D0C();
  }

  else
  {
    v21 = *(sub_24BAA869C() + 20);
    v22 = *MEMORY[0x277CE0118];
    v23 = sub_24BAA8B2C();
    (*(*(v23 - 8) + 104))(v8 + v21, v22, v23);
    *v8 = a3;
    v8[1] = a3;
    KeyPath = swift_getKeyPath();
    v25 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065518) + 36));
    *v25 = KeyPath;
    v25[1] = a2;

    v26 = sub_24BAA90BC();
    sub_24BAA828C();
    v27 = v8 + *(v6 + 36);
    *v27 = v26;
    *(v27 + 1) = v28;
    *(v27 + 2) = v29;
    *(v27 + 3) = v30;
    *(v27 + 4) = v31;
    v27[40] = 0;
    sub_24B8F3208(v8, v11, &qword_27F067248);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067258);
    sub_24B8F384C(&qword_27F067260, &qword_27F067258);
    sub_24B9BCEE4(&qword_27F067268, &qword_27F067248, &unk_24BAB60D8, sub_24B95B784);
    sub_24BAA8D0C();
    return sub_24B8F35E4(v8, &qword_27F067248);
  }
}

uint64_t sub_24B9B7FE8@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();

  v5 = sub_24BAA90BC();
  sub_24BAA828C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [objc_opt_self() quaternaryLabelColor];
  v39 = sub_24BAA973C();
  sub_24BAA832C();
  v15 = v57;
  v16 = v57 * 0.5;
  v17 = v58;
  v18 = DWORD1(v58);
  v19 = *(&v58 + 1);
  v20 = v59;
  v21 = sub_24BAA9D1C();
  v23 = v22;
  v24 = sub_24BAA90BC();
  sub_24BAA828C();
  *&v60 = KeyPath;
  *(&v60 + 1) = a1;
  LOBYTE(v61) = v5;
  *(&v61 + 1) = v7;
  *v62 = v9;
  *&v62[8] = v11;
  *&v62[16] = v13;
  v62[24] = 0;
  *&v49[9] = *&v62[9];
  v47 = v60;
  v48 = v61;
  *v63 = v57 * 0.5;
  *(v63 + 1) = v57;
  v63[1] = v58;
  v63[2] = v59;
  *&v64 = v39;
  WORD4(v64) = 256;
  *&v65 = v21;
  *(&v65 + 1) = v23;
  LOBYTE(v66) = v24;
  *(&v66 + 1) = v25;
  *v67 = v26;
  *&v67[8] = v27;
  *&v67[16] = v28;
  v67[24] = 0;
  v51 = v58;
  v52 = v59;
  *v49 = *v62;
  v50 = v63[0];
  *(v56 + 9) = *&v67[9];
  v55 = v66;
  v56[0] = *v67;
  v53 = v64;
  v54 = v65;
  v29 = v60;
  v30 = v61;
  v31 = *&v49[16];
  a2[2] = *v62;
  a2[3] = v31;
  *a2 = v29;
  a2[1] = v30;
  v32 = v50;
  v33 = v51;
  v34 = v53;
  a2[6] = v52;
  a2[7] = v34;
  a2[4] = v32;
  a2[5] = v33;
  v35 = v54;
  v36 = v55;
  v37 = v56[0];
  *(a2 + 169) = *(v56 + 9);
  a2[9] = v36;
  a2[10] = v37;
  a2[8] = v35;
  *v68 = v16;
  *&v68[1] = v15;
  v69 = v17;
  v70 = v18;
  v71 = v19;
  v72 = v20;
  v73 = v39;
  v74 = 256;
  v75 = v21;
  v76 = v23;
  v77 = v24;
  v78 = v25;
  v79 = v26;
  v80 = v27;
  v81 = v28;
  v82 = 0;
  sub_24B8F3208(&v60, v40, &qword_27F067278);
  sub_24B8F3208(v63, v40, &qword_27F067280);
  sub_24B8F35E4(v68, &qword_27F067280);
  v40[0] = KeyPath;
  v40[1] = a1;
  v41 = v5;
  v42 = v7;
  v43 = v9;
  v44 = v11;
  v45 = v13;
  v46 = 0;
  return sub_24B8F35E4(v40, &qword_27F067278);
}

uint64_t sub_24B9B82D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_24BAA90BC();
  sub_24BAA828C();
  *a1 = v3;
  *(a1 + 8) = 256;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = 0;
}

uint64_t sub_24B9B834C()
{
  v1 = type metadata accessor for NotificationExceptionsItemView(0);
  if (*(v0 + *(v1 + 32)) != 1)
  {
    return 0;
  }

  if (*(v0 + *(v1 + 28)))
  {

    sub_24B984444();
    v2 = sub_24B8D7188();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 configuration];
      v5 = [v4 applicationConfigurationType];

      return v5 == 2;
    }

    else
    {

      return 1;
    }
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9B2334(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9B8488@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for NotificationExceptionsItemView.ColoringBookAppView(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = (&v31 - v4);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v42 = sub_24B9B7998();
  v43 = v6;
  sub_24B8F5E3C();
  v7 = sub_24BAA93CC();
  v9 = v8;
  v11 = v10;
  sub_24BAA926C();
  v12 = sub_24BAA939C();
  v14 = v13;
  v16 = v15;
  v31 = v17;

  sub_24B900910(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v19 = v16 & 1;
  LOBYTE(v42) = v16 & 1;
  LOBYTE(v37) = 0;
  v20 = sub_24BAA989C();
  v21 = swift_getKeyPath();
  v22 = v33;
  sub_24B9BC11C(v5, v33, type metadata accessor for NotificationExceptionsItemView.ColoringBookAppView);
  v23 = v22;
  v24 = v32;
  sub_24B9BC11C(v23, v32, type metadata accessor for NotificationExceptionsItemView.ColoringBookAppView);
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0670D8) + 48);
  *&v37 = v12;
  *(&v37 + 1) = v14;
  v26 = v14;
  LOBYTE(v38) = v19;
  *(&v38 + 1) = *v34;
  DWORD1(v38) = *&v34[3];
  v27 = v31;
  *(&v38 + 1) = v31;
  *&v39 = KeyPath;
  *(&v39 + 1) = 3;
  LOBYTE(v40) = 0;
  *(&v40 + 1) = 256;
  *(&v40 + 3) = v35;
  BYTE7(v40) = v36;
  *(&v40 + 1) = v21;
  v41 = v20;
  *(v25 + 64) = v20;
  v28 = v40;
  *(v25 + 32) = v39;
  *(v25 + 48) = v28;
  v29 = v38;
  *v25 = v37;
  *(v25 + 16) = v29;
  sub_24B8F3208(&v37, &v42, &qword_27F0670E0);
  sub_24B9BC18C(v5, type metadata accessor for NotificationExceptionsItemView.ColoringBookAppView);
  v42 = v12;
  v43 = v26;
  v44 = v19;
  *v45 = *v34;
  *&v45[3] = *&v34[3];
  v46 = v27;
  v47 = KeyPath;
  v48 = 3;
  v49 = 0;
  v50 = 256;
  v51 = v35;
  v52 = v36;
  v53 = v21;
  v54 = v20;
  sub_24B8F35E4(&v42, &qword_27F0670E0);
  return sub_24B9BC18C(v33, type metadata accessor for NotificationExceptionsItemView.ColoringBookAppView);
}

double sub_24B9B8798@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067080);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v7 = *a1;
  if ([*(v7 + 16) platform] == 2)
  {
    v8 = 43.4;
  }

  else
  {
    v8 = 35.0;
  }

  type metadata accessor for AppIconCache();
  sub_24B9B2334(&qword_27F0651D0, type metadata accessor for AppIconCache);

  v9 = sub_24BAA86FC();
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = [*(v7 + 16) platform];
  v14 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v15 = sub_24BAA973C();
  v16 = sub_24BAA9D1C();
  v31 = 0;
  *&v23 = v7;
  *(&v23 + 1) = v8;
  *&v24 = v9;
  *(&v24 + 1) = v11;
  *&v25 = KeyPath;
  BYTE8(v25) = 0;
  *&v26 = v13;
  *(&v26 + 1) = 0x4024000000000000;
  *&v27 = v15;
  *(&v27 + 1) = v16;
  v28 = v17;
  v18 = *(v7 + 32);
  v22[1] = *(v7 + 24);
  v22[2] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067090);
  sub_24B9BBEFC();
  sub_24B8F5E3C();
  sub_24BAA959C();
  v29[2] = v25;
  v29[3] = v26;
  v29[4] = v27;
  v30 = v28;
  v29[0] = v23;
  v29[1] = v24;
  sub_24B8F35E4(v29, &qword_27F067090);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  sub_24B90294C(v6, a2, &qword_27F067080);
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067060) + 36));
  v20 = v24;
  *v19 = v23;
  v19[1] = v20;
  result = *&v25;
  v19[2] = v25;
  return result;
}

uint64_t sub_24B9B8A80()
{
  v1 = type metadata accessor for NotificationExceptionsItemView(0);
  if (*(v0 + *(v1 + 32)))
  {
    return 0;
  }

  if (*(v0 + *(v1 + 28)))
  {

    sub_24B984444();
    v3 = sub_24B8D7188();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 configuration];
      v6 = [v5 senderConfigurationType];

      return v6 == 2;
    }

    else
    {

      return 1;
    }
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9B2334(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9B8BB4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24B9B8C14@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for NotificationExceptionsItemView.ColoringBookPeopleView(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = (&v31 - v4);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v42 = sub_24B9B7998();
  v43 = v6;
  sub_24B8F5E3C();
  v7 = sub_24BAA93CC();
  v9 = v8;
  v11 = v10;
  sub_24BAA926C();
  v12 = sub_24BAA939C();
  v14 = v13;
  v16 = v15;
  v31 = v17;

  sub_24B900910(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v19 = v16 & 1;
  LOBYTE(v42) = v16 & 1;
  LOBYTE(v37) = 0;
  v20 = sub_24BAA989C();
  v21 = swift_getKeyPath();
  v22 = v33;
  sub_24B9BC11C(v5, v33, type metadata accessor for NotificationExceptionsItemView.ColoringBookPeopleView);
  v23 = v22;
  v24 = v32;
  sub_24B9BC11C(v23, v32, type metadata accessor for NotificationExceptionsItemView.ColoringBookPeopleView);
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0670E8) + 48);
  *&v37 = v12;
  *(&v37 + 1) = v14;
  v26 = v14;
  LOBYTE(v38) = v19;
  *(&v38 + 1) = *v34;
  DWORD1(v38) = *&v34[3];
  v27 = v31;
  *(&v38 + 1) = v31;
  *&v39 = KeyPath;
  *(&v39 + 1) = 3;
  LOBYTE(v40) = 0;
  *(&v40 + 1) = 256;
  *(&v40 + 3) = v35;
  BYTE7(v40) = v36;
  *(&v40 + 1) = v21;
  v41 = v20;
  *(v25 + 64) = v20;
  v28 = v40;
  *(v25 + 32) = v39;
  *(v25 + 48) = v28;
  v29 = v38;
  *v25 = v37;
  *(v25 + 16) = v29;
  sub_24B8F3208(&v37, &v42, &qword_27F0670E0);
  sub_24B9BC18C(v5, type metadata accessor for NotificationExceptionsItemView.ColoringBookPeopleView);
  v42 = v12;
  v43 = v26;
  v44 = v19;
  *v45 = *v34;
  *&v45[3] = *&v34[3];
  v46 = v27;
  v47 = KeyPath;
  v48 = 3;
  v49 = 0;
  v50 = 256;
  v51 = v35;
  v52 = v36;
  v53 = v21;
  v54 = v20;
  sub_24B8F35E4(&v42, &qword_27F0670E0);
  return sub_24B9BC18C(v33, type metadata accessor for NotificationExceptionsItemView.ColoringBookPeopleView);
}

void sub_24B9B8F24(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 contactIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24BAAA01C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_24B9B8F8C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066FE8);
  MEMORY[0x28223BE20](v3);
  v5 = (&v31 - v4);
  v6 = *a1;
  v7 = [v6 contactIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_24BAAA01C();
    v31 = v10;
    v32 = v9;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  if (qword_27F0630D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = xmmword_27F076FF0;

  v12 = v11;
  v13 = *(&v11 + 1);

  v14 = sub_24BA22270(v6, v13);
  v16 = v15;

  if (!v16)
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v14 = sub_24BAA7C2C();
    v16 = v17;
  }

  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for ContactImageView();
  v19 = (v5 + *(v18 + 20));
  v20 = v31;
  *v19 = v32;
  v19[1] = v20;
  v21 = (v5 + *(v18 + 24));
  v34 = sub_24BAA991C();
  sub_24BAA99EC();
  v22 = *(&v36 + 1);
  *v21 = v36;
  v21[1] = v22;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v23 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0665E8) + 36));
  v24 = v37;
  *v23 = v36;
  v23[1] = v24;
  v23[2] = v38;
  v25 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v26 = sub_24BAA973C();
  v27 = sub_24BAA9D1C();
  v28 = (v5 + *(v3 + 36));
  *v28 = v26;
  v28[1] = v27;
  v28[2] = v29;
  v34 = v14;
  v35 = v16;
  sub_24B9BB938();
  sub_24B8F5E3C();
  sub_24BAA959C();
  sub_24B8F35E4(v5, &qword_27F066FE8);
}

uint64_t sub_24B9B930C(uint64_t a1)
{
  if (a1 < 100)
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    sub_24BAA7C2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
    v3 = swift_allocObject();
    v4 = MEMORY[0x277D83B88];
    *(v3 + 16) = xmmword_24BAAD5B0;
    v5 = MEMORY[0x277D83C10];
    *(v3 + 56) = v4;
    *(v3 + 64) = v5;
    *(v3 + 32) = a1;
    v6 = sub_24BAA9FEC();

    return v6;
  }

  else
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    return sub_24BAA7C2C();
  }
}

uint64_t sub_24B9B94A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a1;
  v102 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v3 - 8);
  v101 = &KeyPath - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067200);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v104 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = (&KeyPath - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067208);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v103 = &KeyPath - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&KeyPath - v15);
  v98 = type metadata accessor for NotificationExceptionsItemView.MoreContactView(0);
  v17 = (a1 + *(v98 + 20));
  v18 = *v17;
  v19 = v17[1];
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for ContactImageView();
  v21 = (v16 + *(v20 + 20));
  *v21 = v18;
  v21[1] = v19;
  v22 = (v16 + *(v20 + 24));

  *&v119 = sub_24BAA991C();
  sub_24BAA99EC();
  v23 = v125;
  *v22 = v124;
  v22[1] = v23;
  v24 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067210) + 36);
  *v24 = 0x4024000000000000;
  v24[8] = 0;
  LOBYTE(v19) = sub_24BAA90BC();
  sub_24BAA828C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067218) + 36);
  *v33 = v19;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067220) + 36)) = 256;
  v100 = v16;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v34 = (v16 + *(v12 + 44));
  v35 = v109;
  *v34 = v108;
  v34[1] = v35;
  v34[2] = v110;
  v36 = [objc_opt_self() quaternaryLabelColor];
  v37 = sub_24BAA973C();
  sub_24BAA832C();
  v38 = v111;
  v39 = v113;
  v40 = v114;
  v41 = v115;
  v42 = sub_24BAA9D1C();
  v44 = v43;
  v45 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067228) + 36);
  sub_24BAA9CAC();
  v46 = sub_24BAA90BC();
  v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065490) + 36)] = v46;
  *v10 = v38 * 0.5;
  v10[1] = v38;
  *(v10 + 2) = v112;
  *(v10 + 3) = v39;
  *(v10 + 4) = v40;
  *(v10 + 5) = v41;
  *(v10 + 6) = v37;
  *(v10 + 28) = 256;
  *(v10 + 8) = v42;
  *(v10 + 9) = v44;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v47 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067230) + 36);
  v48 = v117;
  *v47 = v116;
  *(v47 + 1) = v48;
  *(v47 + 2) = v118;
  *(v10 + *(v6 + 44)) = 256;
  v49 = (v99 + *(v98 + 24));
  v50 = v49[1];
  v124 = *v49;
  v125 = v50;
  sub_24B8F5E3C();

  v51 = sub_24BAA93CC();
  v53 = v52;
  LOBYTE(v6) = v54;
  v55 = sub_24BAA93AC();
  v57 = v56;
  LOBYTE(v44) = v58;
  sub_24B900910(v51, v53, v6 & 1);

  sub_24BAA989C();
  v59 = sub_24BAA933C();
  v61 = v60;
  LOBYTE(v6) = v62;
  v97 = v63;

  sub_24B900910(v55, v57, v44 & 1);

  sub_24BAA91DC();
  v64 = *MEMORY[0x277CE09A0];
  v65 = sub_24BAA919C();
  v66 = *(v65 - 8);
  v67 = v101;
  (*(v66 + 104))(v101, v64, v65);
  (*(v66 + 56))(v67, 0, 1, v65);
  sub_24BAA91FC();
  sub_24B8F35E4(v67, &qword_27F063CD8);
  v68 = sub_24BAA939C();
  v98 = v69;
  v99 = v68;
  LOBYTE(v55) = v70;
  v101 = v71;

  sub_24B900910(v59, v61, v6 & 1);

  KeyPath = swift_getKeyPath();
  LODWORD(v97) = sub_24BAA90BC();
  sub_24BAA828C();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  LOBYTE(v61) = v55 & 1;
  LOBYTE(v124) = v55 & 1;
  LOBYTE(v119) = 0;
  v80 = v100;
  v81 = v103;
  sub_24B8F3208(v100, v103, &qword_27F067208);
  v82 = v104;
  sub_24B8F3208(v10, v104, &qword_27F067200);
  v83 = v81;
  v84 = v102;
  sub_24B8F3208(v83, v102, &qword_27F067208);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067238);
  sub_24B8F3208(v82, v84 + *(v85 + 48), &qword_27F067200);
  v86 = (v84 + *(v85 + 64));
  v87 = v98;
  v88 = v99;
  *&v119 = v99;
  *(&v119 + 1) = v98;
  LOBYTE(v120) = v61;
  *(&v120 + 1) = *v107;
  DWORD1(v120) = *&v107[3];
  v89 = v101;
  v90 = KeyPath;
  *(&v120 + 1) = v101;
  *&v121 = KeyPath;
  BYTE8(v121) = 1;
  *(&v121 + 9) = *v106;
  HIDWORD(v121) = *&v106[3];
  LOBYTE(v85) = v97;
  LOBYTE(v122) = v97;
  DWORD1(v122) = *&v105[3];
  *(&v122 + 1) = *v105;
  *(&v122 + 1) = v73;
  *&v123[0] = v75;
  *(&v123[0] + 1) = v77;
  *&v123[1] = v79;
  BYTE8(v123[1]) = 0;
  v91 = v120;
  *v86 = v119;
  v86[1] = v91;
  v92 = v121;
  v93 = v122;
  v94 = v123[0];
  *(v86 + 73) = *(v123 + 9);
  v86[3] = v93;
  v86[4] = v94;
  v86[2] = v92;
  sub_24B8F3208(&v119, &v124, &qword_27F067240);
  sub_24B8F35E4(v10, &qword_27F067200);
  sub_24B8F35E4(v80, &qword_27F067208);
  v124 = v88;
  v125 = v87;
  v126 = v61;
  *v127 = *v107;
  *&v127[3] = *&v107[3];
  v128 = v89;
  v129 = v90;
  v130 = 1;
  *v131 = *v106;
  *&v131[3] = *&v106[3];
  v132 = v85;
  *v133 = *v105;
  *&v133[3] = *&v105[3];
  v134 = v73;
  v135 = v75;
  v136 = v77;
  v137 = v79;
  v138 = 0;
  sub_24B8F35E4(&v124, &qword_27F067240);
  sub_24B8F35E4(v104, &qword_27F067200);
  return sub_24B8F35E4(v103, &qword_27F067208);
}

uint64_t sub_24B9B9D5C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v46 = a1;
  v3 = sub_24BAA82DC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v10 = v95;
  v47 = v94;
  v48 = v96;
  v11 = v97;
  v51 = v95;
  v52 = v97;
  v49 = v99;
  v50 = v98;
  v12 = objc_opt_self();
  v13 = [v12 secondarySystemGroupedBackgroundColor];
  v45 = sub_24BAA973C();
  KeyPath = swift_getKeyPath();
  LOBYTE(v80) = v10;
  LOBYTE(v70) = v11;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v41 = v100;
  v42 = v102;
  v39 = v103;
  v40 = v101;
  v43 = v105;
  v44 = v104;
  sub_24B9BA198(v9);
  (*(v4 + 104))(v7, *MEMORY[0x277CDF3D0], v3);
  v14 = sub_24BAA82CC();
  v15 = *(v4 + 8);
  v15(v7, v3);
  v15(v9, v3);
  v16 = &selRef_systemGroupedBackgroundColor;
  if ((v14 & 1) == 0)
  {
    v16 = &selRef_quaternaryLabelColor;
  }

  v17 = [v12 *v16];
  v18 = sub_24BAA973C();
  v19 = swift_getKeyPath();
  v93 = v40;
  v91 = v39;
  v21 = v47;
  v20 = v48;
  *&v62 = v47;
  BYTE8(v62) = v51;
  HIDWORD(v62) = *(v107 + 3);
  *(&v62 + 9) = v107[0];
  *&v63 = v48;
  BYTE8(v63) = v52;
  *(&v63 + 9) = *v106;
  HIDWORD(v63) = *&v106[3];
  v23 = v49;
  v22 = v50;
  *&v64 = v50;
  *(&v64 + 1) = v49;
  v24 = v45;
  *&v65 = KeyPath;
  *(&v65 + 1) = v45;
  v54 = v62;
  v55 = v63;
  v56 = v64;
  v57 = v65;
  v26 = v41;
  v25 = v42;
  *&v66 = v41;
  BYTE8(v66) = v40;
  v27 = v40;
  HIDWORD(v66) = *&v92[3];
  *(&v66 + 9) = *v92;
  *&v67 = v42;
  BYTE8(v67) = v39;
  v28 = v39;
  HIDWORD(v67) = *&v90[3];
  *(&v67 + 9) = *v90;
  v30 = v43;
  v29 = v44;
  *&v68 = v44;
  *(&v68 + 1) = v43;
  *&v69 = v19;
  *(&v69 + 1) = v18;
  v60 = v68;
  v61 = v69;
  v58 = v66;
  v59 = v67;
  v31 = v62;
  v32 = v63;
  v33 = v65;
  a2[2] = v64;
  a2[3] = v33;
  *a2 = v31;
  a2[1] = v32;
  v34 = v58;
  v35 = v59;
  v36 = v61;
  a2[6] = v60;
  a2[7] = v36;
  a2[4] = v34;
  a2[5] = v35;
  v70 = v26;
  v71 = v27;
  *&v72[3] = *&v92[3];
  *v72 = *v92;
  v73 = v25;
  v74 = v28;
  *&v75[3] = *&v90[3];
  *v75 = *v90;
  v76 = v29;
  v77 = v30;
  v78 = v19;
  v79 = v18;
  sub_24B8F3208(&v62, &v80, &qword_27F0671F0);
  sub_24B8F3208(&v66, &v80, &qword_27F0671F0);
  sub_24B8F35E4(&v70, &qword_27F0671F0);
  v80 = v21;
  v81 = v51;
  *v82 = v107[0];
  *&v82[3] = *(v107 + 3);
  v83 = v20;
  v84 = v52;
  *v85 = *v106;
  *&v85[3] = *&v106[3];
  v86 = v22;
  v87 = v23;
  v88 = KeyPath;
  v89 = v24;
  return sub_24B8F35E4(&v80, &qword_27F0671F0);
}

uint64_t sub_24B9BA198@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24BAA89FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24B8F3208(v2, &v14 - v9, &unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA82DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_24B9BA398@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24BAA9D1C();
  v5 = v4;
  sub_24B9B9D5C(v1, &v12);
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v27 = v19;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v28[0] = v12;
  v28[1] = v13;
  v28[2] = v14;
  v28[3] = v15;
  v28[4] = v16;
  v28[5] = v17;
  v28[6] = v18;
  v28[7] = v19;
  sub_24B8F3208(&v20, &v11, &qword_27F0671E8);
  sub_24B8F35E4(v28, &qword_27F0671E8);
  *a1 = v3;
  *(a1 + 8) = v5;
  v6 = v25;
  *(a1 + 80) = v24;
  *(a1 + 96) = v6;
  v7 = v27;
  *(a1 + 112) = v26;
  *(a1 + 128) = v7;
  v8 = v21;
  *(a1 + 16) = v20;
  *(a1 + 32) = v8;
  result = *&v22;
  v10 = v23;
  *(a1 + 48) = v22;
  *(a1 + 64) = v10;
  return result;
}

uint64_t sub_24B9BA470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v68 = a2;
  v66 = sub_24BAA82DC();
  v63 = *(v66 - 8);
  v2 = MEMORY[0x28223BE20](v66);
  v62 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v59 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0671D0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v58 = (&v58 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0671D8);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v64 = &v58 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v60 = &v58 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v61 = &v58 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - v18;
  v20 = sub_24BAA869C();
  v21 = *(v20 + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_24BAA8B2C();
  v24 = *(*(v23 - 8) + 104);
  v24(&v19[v21], v22, v23);
  __asm { FMOV            V0.2D, #7.0 }

  *v19 = _Q0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v30 = &v19[*(v6 + 44)];
  v31 = v70;
  *v30 = v69;
  *(v30 + 1) = v31;
  *(v30 + 2) = v71;
  v32 = objc_opt_self();
  v33 = [v32 secondarySystemGroupedBackgroundColor];
  v34 = sub_24BAA973C();
  KeyPath = swift_getKeyPath();
  v36 = &v19[*(v9 + 44)];
  *v36 = KeyPath;
  v36[1] = v34;
  v37 = v58;
  v24(&v58->i8[*(v20 + 20)], v22, v23);
  *v37 = vdupq_n_s64(0x401A666666666666uLL);
  v38 = v37;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v39 = &v37->i8[*(v6 + 44)];
  v40 = v73;
  *v39 = v72;
  *(v39 + 1) = v40;
  *(v39 + 2) = v74;
  v41 = v59;
  sub_24B9BA198(v59);
  v43 = v62;
  v42 = v63;
  v44 = v66;
  (*(v63 + 104))(v62, *MEMORY[0x277CDF3D0], v66);
  LOBYTE(v6) = sub_24BAA82CC();
  v45 = *(v42 + 8);
  v45(v43, v44);
  v45(v41, v44);
  v46 = &selRef_systemGroupedBackgroundColor;
  if ((v6 & 1) == 0)
  {
    v46 = &selRef_quaternaryLabelColor;
  }

  v47 = [v32 *v46];
  v48 = sub_24BAA973C();
  v49 = swift_getKeyPath();
  v50 = v60;
  sub_24B90294C(v38, v60, &qword_27F0671D0);
  v51 = (v50 + *(v9 + 44));
  *v51 = v49;
  v51[1] = v48;
  v52 = v61;
  sub_24B90294C(v50, v61, &qword_27F0671D8);
  v53 = v64;
  sub_24B8F3208(v19, v64, &qword_27F0671D8);
  v54 = v67;
  sub_24B8F3208(v52, v67, &qword_27F0671D8);
  v55 = v68;
  sub_24B8F3208(v53, v68, &qword_27F0671D8);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0671E0);
  sub_24B8F3208(v54, v55 + *(v56 + 48), &qword_27F0671D8);
  sub_24B8F35E4(v52, &qword_27F0671D8);
  sub_24B8F35E4(v19, &qword_27F0671D8);
  sub_24B8F35E4(v54, &qword_27F0671D8);
  return sub_24B8F35E4(v53, &qword_27F0671D8);
}

uint64_t sub_24B9BAA00@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(uint64_t)@<X4>, uint64_t *a3@<X8>)
{
  *a3 = sub_24BAA9D1C();
  a3[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  return a2(v3);
}

uint64_t sub_24B9BAA6C()
{
  type metadata accessor for NotificationExceptionsItemView(0);

  return sub_24B9B27BC();
}

unint64_t sub_24B9BAAD4()
{
  result = qword_27F066D68;
  if (!qword_27F066D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066D60);
    sub_24B9BAB60();
    sub_24B9BACFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066D68);
  }

  return result;
}

unint64_t sub_24B9BAB60()
{
  result = qword_27F066D70;
  if (!qword_27F066D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066D78);
    sub_24B9BCEE4(&qword_27F066D80, &qword_27F066D88, &unk_24BAB58E8, sub_24B9BAC44);
    sub_24B8F384C(&qword_27F066DB0, &qword_27F066DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066D70);
  }

  return result;
}

unint64_t sub_24B9BAC44()
{
  result = qword_27F066D90;
  if (!qword_27F066D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066D98);
    sub_24B8F384C(&qword_27F066DA0, &qword_27F066DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066D90);
  }

  return result;
}

unint64_t sub_24B9BACFC()
{
  result = qword_27F066DC0;
  if (!qword_27F066DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066DC8);
    sub_24B9BADB4();
    sub_24B8F384C(&qword_27F066DB0, &qword_27F066DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066DC0);
  }

  return result;
}

unint64_t sub_24B9BADB4()
{
  result = qword_27F066DD0;
  if (!qword_27F066DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066DD8);
    sub_24B9BAE40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066DD0);
  }

  return result;
}

unint64_t sub_24B9BAE40()
{
  result = qword_27F066DE0;
  if (!qword_27F066DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066DE8);
    sub_24B8F384C(&qword_27F066DF0, &qword_27F066DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066DE0);
  }

  return result;
}

unint64_t sub_24B9BAEF8()
{
  result = qword_27F066E00;
  if (!qword_27F066E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066D58);
    sub_24B8F384C(&qword_27F066E08, &qword_27F066D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066E00);
  }

  return result;
}

uint64_t sub_24B9BAFC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24B9BB010(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24B9BB080(uint64_t a1)
{
  v2 = sub_24BAA996C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24BAA872C();
}

unint64_t sub_24B9BB148()
{
  result = qword_27F066EA0;
  if (!qword_27F066EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066E70);
    sub_24B9BB1D4();
    sub_24B9BB418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066EA0);
  }

  return result;
}

unint64_t sub_24B9BB1D4()
{
  result = qword_27F066EA8;
  if (!qword_27F066EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066EB0);
    sub_24B9BB28C();
    sub_24B8F384C(&qword_27F066EF0, &qword_27F066EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066EA8);
  }

  return result;
}

unint64_t sub_24B9BB28C()
{
  result = qword_27F066EB8;
  if (!qword_27F066EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066EC0);
    sub_24B9BB344();
    sub_24B8F384C(&qword_27F066EE0, &qword_27F066EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066EB8);
  }

  return result;
}

unint64_t sub_24B9BB344()
{
  result = qword_27F066EC8;
  if (!qword_27F066EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066ED0);
    sub_24B9B2334(&qword_27F066ED8, type metadata accessor for NotificationExceptionsItemView.ColoringBookAppView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066EC8);
  }

  return result;
}

unint64_t sub_24B9BB418()
{
  result = qword_27F066F00;
  if (!qword_27F066F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066F08);
    sub_24B9BB4D0();
    sub_24B8F384C(&qword_27F066F48, &qword_27F066F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066F00);
  }

  return result;
}

unint64_t sub_24B9BB4D0()
{
  result = qword_27F066F10;
  if (!qword_27F066F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066F18);
    sub_24B9BB588();
    sub_24B8F384C(&qword_27F066F38, &qword_27F066F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066F10);
  }

  return result;
}

unint64_t sub_24B9BB588()
{
  result = qword_27F066F20;
  if (!qword_27F066F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066F28);
    sub_24B9B2334(&qword_27F066F30, type metadata accessor for NotificationExceptionsItemView.ColoringBookPeopleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066F20);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for NotificationExceptionsItemView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA8B9C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_24B8FFD5C(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));
  v7 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24BAA82DC();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_24B900C14();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_24B9BB8BC()
{
  result = qword_27F066FD0;
  if (!qword_27F066FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066FD0);
  }

  return result;
}

unint64_t sub_24B9BB938()
{
  result = qword_27F066FE0;
  if (!qword_27F066FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066FE8);
    sub_24B9BB9F0();
    sub_24B8F384C(&qword_27F067000, &qword_27F067008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066FE0);
  }

  return result;
}

unint64_t sub_24B9BB9F0()
{
  result = qword_27F066FF0;
  if (!qword_27F066FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0665E8);
    sub_24B9B2334(&qword_27F066FF8, type metadata accessor for ContactImageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066FF0);
  }

  return result;
}

uint64_t sub_24B9BBAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B9BBB1C()
{
  result = qword_27F067020;
  if (!qword_27F067020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066F60);
    sub_24B9B2334(&qword_27F067028, type metadata accessor for NotificationExceptionsItemView.MoreContactView);
    sub_24B8F384C(&qword_27F067030, &qword_27F067018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067020);
  }

  return result;
}

unint64_t sub_24B9BBC04()
{
  result = qword_27F067048;
  if (!qword_27F067048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067040);
    sub_24B9BBC90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067048);
  }

  return result;
}

unint64_t sub_24B9BBC90()
{
  result = qword_27F067050;
  if (!qword_27F067050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067050);
  }

  return result;
}

uint64_t sub_24B9BBCFC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NotificationExceptionsItemView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_24B9BBD90()
{
  result = qword_27F067070;
  if (!qword_27F067070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067060);
    sub_24B9BBE48(&qword_27F067078, &qword_27F067080, &unk_24BAB5BD8, sub_24B9BBEFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067070);
  }

  return result;
}

uint64_t sub_24B9BBE48(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24B9B2334(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B9BBEFC()
{
  result = qword_27F067088;
  if (!qword_27F067088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067090);
    sub_24B9BBFB4();
    sub_24B8F384C(&qword_27F0670A0, &qword_27F0670A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067088);
  }

  return result;
}

unint64_t sub_24B9BBFB4()
{
  result = qword_27F067098;
  if (!qword_27F067098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067098);
  }

  return result;
}

unint64_t sub_24B9BC008()
{
  result = qword_27F0670C0;
  if (!qword_27F0670C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0670B8);
    sub_24B9BC0C0();
    sub_24B8F384C(&qword_27F0670A0, &qword_27F0670A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0670C0);
  }

  return result;
}

unint64_t sub_24B9BC0C0()
{
  result = qword_27F0670C8;
  if (!qword_27F0670C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0670C8);
  }

  return result;
}

uint64_t sub_24B9BC11C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B9BC18C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_24B9BC1EC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_24BAA8B9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a2, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x277CE0268];
  if (v12 != *MEMORY[0x277CE0268])
  {
    if (v12 == *MEMORY[0x277CE0298])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE02A0])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x277CE0260])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x277CE0270])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x277CE0248])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x277CE0280])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x277CE0278])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x277CE0288])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x277CE0250])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x277CE0298])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x277CE02A0])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x277CE0290])
    {
      if (v15 == *MEMORY[0x277CE0260])
      {
        v16 = 4;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0270])
      {
        v16 = 5;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0248])
      {
        v16 = 6;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0280])
      {
        v16 = 7;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0278])
      {
        v16 = 8;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0288])
      {
        v16 = 9;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0250])
      {
        v16 = 10;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0258])
      {
        v16 = 11;
        return v13 >= v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 >= v16;
}

uint64_t sub_24B9BC604()
{
  type metadata accessor for NotificationExceptionsItemView(0);

  return sub_24B9B48CC();
}

uint64_t sub_24B9BC674()
{
  v1 = sub_24BAA83DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B9BC6FC()
{
  sub_24BAA83DC();
  result = sub_24BAA83CC();
  qword_27F076FB8 = v1;
  return result;
}

unint64_t sub_24B9BC760()
{
  result = qword_27F067138;
  if (!qword_27F067138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067118);
    sub_24B8F384C(&qword_27F067140, &qword_27F067148);
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067138);
  }

  return result;
}

unint64_t sub_24B9BC844()
{
  result = qword_27F067150;
  if (!qword_27F067150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067130);
    sub_24B9BC8C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067150);
  }

  return result;
}

unint64_t sub_24B9BC8C8()
{
  result = qword_27F066210;
  if (!qword_27F066210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066208);
    sub_24B96C3DC();
    sub_24B8F384C(&unk_27F069050, &qword_27F064F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066210);
  }

  return result;
}

uint64_t sub_24B9BC9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B9BCA9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24B9BCB64()
{
  sub_24B936680(319, &qword_27F068F10, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_24B9BCC3C(319, &qword_27F063DF8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B9BCC3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_56Tm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_57Tm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24B9BCEE4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24B9BD038()
{
  result = qword_27F0672B8;
  if (!qword_27F0672B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0672C0);
    sub_24B8F384C(&qword_27F064DC0, &qword_27F064DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0672B8);
  }

  return result;
}

unint64_t sub_24B9BD0F4()
{
  result = qword_27F0672C8;
  if (!qword_27F0672C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F0672D0);
    sub_24B8F384C(&qword_27F067260, &qword_27F067258);
    sub_24B9BCEE4(&qword_27F067268, &qword_27F067248, &unk_24BAB60D8, sub_24B95B784);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0672C8);
  }

  return result;
}

void sub_24B9BD1F8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067378);
  sub_24BAA8FCC();
  v3 = *&v27[OBJC_IVAR____TtCV15FocusSettingsUI18LocationTriggerMap11MapDelegate_slider];
  v4 = v3;

  if (v3)
  {
    v29 = v1[2];
    *&v30 = *(v1 + 6);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067368);
    MEMORY[0x24C24FC10](&v31, v5);
    HIDWORD(v6) = HIDWORD(v31);
    *&v6 = v31;
    [v4 setValue_];
  }

  sub_24BAA8FCC();
  v7 = v29;
  v29 = v1[2];
  *&v30 = *(v1 + 6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067368);
  MEMORY[0x24C24FC10](&v27);
  v9 = *&v27 * 4.0;
  v10 = v1[1];
  v29 = *v1;
  v30 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F067380);
  v12 = MEMORY[0x24C24FC10](&v27);
  MEMORY[0x24C2509E0](v12, *&v27, v28, v9, v9);
  [a1 setRegion_];
  v13 = *&v7[OBJC_IVAR____TtCV15FocusSettingsUI18LocationTriggerMap11MapDelegate_annotation];
  v14 = v1[1];
  v29 = *v1;
  v30 = v14;
  v15 = v13;
  MEMORY[0x24C24FC10](&v27, v11);
  [v15 setCoordinate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24BAAE690;
  v17 = OBJC_IVAR____TtCV15FocusSettingsUI18LocationTriggerMap11MapDelegate_circle;
  v18 = *&v7[OBJC_IVAR____TtCV15FocusSettingsUI18LocationTriggerMap11MapDelegate_circle];
  *(v16 + 32) = v18;
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067390);
  v20 = sub_24BAAA11C();

  [a1 removeOverlays_];

  v21 = v1[1];
  v29 = *v1;
  v30 = v21;
  MEMORY[0x24C24FC10](&v27, v11);
  v22 = v27;
  v23 = v28;
  v29 = v1[2];
  *&v30 = *(v1 + 6);
  MEMORY[0x24C24FC10](&v27, v8);
  v24 = [objc_opt_self() circleWithCenterCoordinate:*&v22 radius:{v23, *&v27}];
  v25 = *&v7[v17];
  *&v7[v17] = v24;
  v26 = v24;

  [a1 addOverlay_];
}

id sub_24B9BD654()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationTriggerMap.MapDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24B9BD72C@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067368);
  sub_24BAA9B8C();
  v2 = objc_allocWithZone(type metadata accessor for LocationTriggerMap.MapDelegate());
  v3 = sub_24B9BD9B0(v5, v6, v7);

  *a1 = v3;
  return result;
}

uint64_t sub_24B9BD7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B9BDCB0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24B9BD834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B9BDCB0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24B9BD898()
{
  sub_24B9BDCB0();
  sub_24BAA8CDC();
  __break(1u);
}

id sub_24B9BD8C0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD4EC8]) init];
  [v0 setRotateEnabled_];
  [v0 setPitchEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067378);
  sub_24BAA8FCC();
  [v0 setDelegate_];

  sub_24BAA8FCC();
  v1 = *&v3[OBJC_IVAR____TtCV15FocusSettingsUI18LocationTriggerMap11MapDelegate_annotation];

  [v0 addAnnotation_];
  return v0;
}

id sub_24B9BD9B0(uint64_t a1, uint64_t a2, double a3)
{
  v7 = OBJC_IVAR____TtCV15FocusSettingsUI18LocationTriggerMap11MapDelegate_slider;
  *&v3[OBJC_IVAR____TtCV15FocusSettingsUI18LocationTriggerMap11MapDelegate_slider] = 0;
  v8 = OBJC_IVAR____TtCV15FocusSettingsUI18LocationTriggerMap11MapDelegate_annotation;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277CD4F08]) init];
  v9 = OBJC_IVAR____TtCV15FocusSettingsUI18LocationTriggerMap11MapDelegate_circle;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x277CD4DA0]) init];
  v10 = &v3[OBJC_IVAR____TtCV15FocusSettingsUI18LocationTriggerMap11MapDelegate__radius];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  v11 = *&v3[v7];
  *&v3[v7] = 0;

  v13.receiver = v3;
  v13.super_class = type metadata accessor for LocationTriggerMap.MapDelegate();
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_24B9BDA8C(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD4DA8]) initWithOverlay_];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 tintColor];
  v5 = [v4 colorWithAlphaComponent_];

  [v3 setFillColor_];
  v6 = [v2 tintColor];
  [v3 setStrokeColor_];

  [v3 setLineWidth_];
  return v3;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24B9BDBB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24B9BDBFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B9BDC5C()
{
  result = qword_27F067370;
  if (!qword_27F067370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067370);
  }

  return result;
}

unint64_t sub_24B9BDCB0()
{
  result = qword_27F067398;
  if (!qword_27F067398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067398);
  }

  return result;
}

uint64_t sub_24B9BDD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B9BDDE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24B9BDEB8()
{
  sub_24B9BDFC0();
  if (v0 <= 0x3F)
  {
    sub_24B9BE054();
    if (v1 <= 0x3F)
    {
      sub_24B9C9D1C(319, &qword_27F0673C8, &type metadata for Trigger.Location, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24B8F47B4();
        if (v3 <= 0x3F)
        {
          sub_24B9C9C34(319, &qword_27F063938, &qword_27F063940);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B9BDFC0()
{
  if (!qword_27F0673B8)
  {
    type metadata accessor for LocationSuggestions(255);
    sub_24B9BE0E8(&qword_27F065EC0, type metadata accessor for LocationSuggestions);
    v0 = sub_24BAA850C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F0673B8);
    }
  }
}

void sub_24B9BE054()
{
  if (!qword_27F0673C0)
  {
    type metadata accessor for ReverseGeocoder(255);
    sub_24B9BE0E8(&qword_27F065EC8, type metadata accessor for ReverseGeocoder);
    v0 = sub_24BAA850C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F0673C0);
    }
  }
}

uint64_t sub_24B9BE0E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B9BE14C()
{
  LocationSelection = type metadata accessor for CreateLocationSelection();
  MEMORY[0x28223BE20](LocationSelection - 8);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067498);
  sub_24BAA99FC();
  sub_24B9E3DD8(*(v0 + LocationTriggerView[6] + 8), v31);
  sub_24B9C9520(v3, type metadata accessor for CreateLocationSelection);
  if (v33)
  {
    v5 = v0 + LocationTriggerView[8];
    v6 = *(v5 + 16);
    v7 = *(v5 + 48);
    v26 = *(v5 + 32);
    v27 = v7;
    v8 = *(v5 + 16);
    v25[0] = *v5;
    v25[1] = v8;
    v9 = *(v5 + 48);
    v22 = v26;
    v23 = v9;
    v28 = *(v5 + 64);
    v24 = *(v5 + 64);
    v20 = v25[0];
    v21 = v6;
    v16[0] = v31[0];
    v16[1] = v31[1];
    v17 = v32;
    v18 = v33;
    v19 = v34;
    sub_24B8F3208(v31, v29, &qword_27F067650);
    sub_24B8F3208(v25, v29, &qword_27F0673F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673F8);
    sub_24BAA9A0C();
    v29[2] = v22;
    v29[3] = v23;
    v30 = v24;
    v29[0] = v20;
    v29[1] = v21;
    sub_24B8F35E4(v29, &qword_27F0673F8);
    v10 = v0 + LocationTriggerView[9];
    v11 = *(v10 + 8);
    LOBYTE(v20) = *v10;
    *(&v20 + 1) = v11;
    LOBYTE(v16[0]) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
    sub_24BAA9A0C();
    sub_24B8F35E4(v31, &qword_27F067650);
  }

  else
  {
    v13 = (v0 + LocationTriggerView[9]);
    v14 = *v13;
    v15 = *(v13 + 1);
    LOBYTE(v29[0]) = v14;
    *(&v29[0] + 1) = v15;
    LOBYTE(v25[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
    return sub_24BAA9A0C();
  }
}

id sub_24B9BE3D0()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  qword_27F0673A0 = result;
  return result;
}

uint64_t sub_24B9BE404@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v33 = sub_24BAA8D6C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24BAA8D7C();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0674E0);
  MEMORY[0x28223BE20](v34);
  v9 = v32 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0674E8);
  MEMORY[0x28223BE20](v39);
  v37 = v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0674F0);
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x28223BE20](v11);
  v40 = v32 - v12;
  *v9 = sub_24BAA8BCC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0674F8);
  sub_24B9BEB2C(v2, &v9[*(v13 + 44)]);
  type metadata accessor for CreateLocationTriggerView(0);
  type metadata accessor for LocationService(0);
  sub_24B9BE0E8(&qword_27F067480, type metadata accessor for LocationService);
  v14 = sub_24BAA84EC();
  swift_getKeyPath();
  sub_24BAA84FC();

  v32[3] = v46;
  v32[1] = v48;
  sub_24BAA8D5C();
  v35 = v7;
  sub_24BAA8D4C();
  (*(v3 + 8))(v5, v33);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v32[2] = qword_27F077088;
  v44 = sub_24BAA7C2C();
  v45 = v15;
  MEMORY[0x28223BE20](v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067500);
  v33 = v2;
  sub_24B8F384C(&qword_27F067508, &qword_27F0674E0);
  sub_24B9C9ED0();
  v31 = sub_24B8F5E3C();
  v16 = v37;
  v17 = v35;
  sub_24BAA942C();

  (*(v36 + 8))(v17, v38);
  sub_24B8F35E4(v9, &qword_27F0674E0);
  v18 = sub_24BAA916C();
  KeyPath = swift_getKeyPath();
  v20 = v39;
  v21 = (v16 + *(v39 + 36));
  *v21 = KeyPath;
  v21[1] = v18;
  v46 = sub_24BAA7C2C();
  v47 = v22;
  v23 = sub_24B9CA014();
  v24 = v40;
  v25 = MEMORY[0x277D837D0];
  sub_24BAA952C();

  v26 = sub_24B8F35E4(v16, &qword_27F0674E8);
  MEMORY[0x28223BE20](v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064050);
  v46 = v20;
  v47 = v25;
  v48 = v23;
  v49 = v31;
  swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064058);
  v28 = sub_24B8F384C(&qword_27F064060, &qword_27F064058);
  v46 = v27;
  v47 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v42;
  sub_24BAA96CC();
  return (*(v41 + 8))(v24, v29);
}

uint64_t sub_24B9BEB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067558);
  v4 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v87 = &v73[-v5];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067560);
  v6 = MEMORY[0x28223BE20](v86);
  v8 = &v73[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v88 = &v73[-v9];
  v10 = sub_24BAA9BDC();
  v89 = *(v10 - 8);
  v90 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v91 = &v73[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v92 = &v73[-v13];
  v14 = sub_24BAA89FC();
  v85 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v73[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067568);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v73[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v96 = &v73[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067570);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v95 = &v73[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v93 = &v73[-v25];
  sub_24B9BF4D0(&v73[-v25]);
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  v27 = a1 + LocationTriggerView[9];
  v28 = *v27;
  v29 = *(v27 + 8);
  LOBYTE(v115) = v28;
  *(&v115 + 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  if (LOBYTE(v114[0]) != 1)
  {
    goto LABEL_6;
  }

  v82 = v14;
  v83 = v8;
  v30 = a1 + LocationTriggerView[15];
  v31 = *v30;
  LODWORD(v30) = *(v30 + 8);
  v84 = v20;
  if (v30 != 1)
  {

    sub_24BAAA2BC();
    v68 = sub_24BAA907C();
    sub_24BAA80FC();

    v20 = v84;
    sub_24BAA89EC();
    swift_getAtKeyPath();
    sub_24B8FFD5C(v31, 0);
    (*(v85 + 8))(v16, v82);
    if ((v115 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v67 = v96;
    (*(v4 + 56))(v96, 1, 1, v94);
    goto LABEL_7;
  }

  if (v31)
  {
    goto LABEL_6;
  }

LABEL_4:
  v80 = v4;
  v81 = a2;
  sub_24BAA9BCC();
  v32 = a1 + LocationTriggerView[8];
  v33 = *(v32 + 48);
  v117 = *(v32 + 32);
  v118 = v33;
  *&v119 = *(v32 + 64);
  v34 = *(v32 + 16);
  v115 = *v32;
  v116 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673F8);
  sub_24BAA9A1C();
  swift_getKeyPath();
  v111 = v114[2];
  v112 = v114[3];
  v113 = v114[4];
  v109 = v114[0];
  v110 = v114[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067458);
  sub_24BAA9B7C();

  sub_24B8F35E4(v114, &qword_27F067458);
  v85 = v105;
  v82 = v106;
  v35 = v107;
  v36 = v108;
  v37 = *(v32 + 48);
  v102 = *(v32 + 32);
  v103 = v37;
  *&v104 = *(v32 + 64);
  v38 = *(v32 + 16);
  v100 = *v32;
  v101 = v38;
  sub_24BAA9A1C();
  swift_getKeyPath();
  v102 = v117;
  v103 = v118;
  v104 = v119;
  v100 = v115;
  v101 = v116;
  sub_24BAA9B7C();

  sub_24B8F35E4(&v115, &qword_27F067458);
  v78 = v98;
  v79 = v97;
  v39 = v99;
  v77 = sub_24BAA85FC();
  v76 = sub_24BAA90BC();
  v75 = sub_24BAA860C();
  v74 = sub_24BAA90BC();
  v40 = sub_24BAA8BCC();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067580);
  v42 = v88;
  v43 = &v88[*(v41 + 36)];
  *v43 = v40;
  *(v43 + 1) = 0;
  v43[16] = 1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067588);
  sub_24B9C3634(&v43[*(v44 + 44)]);
  v45 = sub_24BAA8BCC();
  v46 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067590) + 36)];
  sub_24B9C4000(a1, v46);
  v47 = sub_24BAA837C();
  v48 = MEMORY[0x24C24F1F0]((2 * v47));
  v49 = sub_24BAA861C();
  v50 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067598) + 36);
  v20 = v84;
  *v50 = v49;
  *(v50 + 8) = 0;
  *(v50 + 16) = 1;
  *(v50 + 17) = v48;
  *(v50 + 24) = v45;
  v51 = sub_24BAA9D0C();
  v53 = v52;
  v54 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0675A0) + 36)];
  *v54 = v51;
  v54[1] = v53;
  v55 = v82;
  *v42 = v85;
  *(v42 + 8) = v55;
  *(v42 + 16) = v35;
  *(v42 + 24) = v36;
  v56 = v78;
  *(v42 + 32) = v79;
  *(v42 + 40) = v56;
  *(v42 + 48) = v39;
  *(v42 + 56) = v77;
  *(v42 + 64) = v76;
  *(v42 + 72) = v75;
  *(v42 + 80) = v74;
  sub_24B9BF980();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v57 = (v42 + *(v86 + 36));
  v58 = v110;
  *v57 = v109;
  v57[1] = v58;
  v57[2] = v111;
  v60 = v89;
  v59 = v90;
  v61 = *(v89 + 16);
  v62 = v91;
  v61(v91, v92, v90);
  v63 = v83;
  sub_24B8F3208(v42, v83, &qword_27F067560);
  v64 = v87;
  v61(v87, v62, v59);
  a2 = v81;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0675A8);
  sub_24B8F3208(v63, v64 + *(v65 + 48), &qword_27F067560);
  sub_24B8F35E4(v42, &qword_27F067560);
  v66 = *(v60 + 8);
  v66(v92, v59);
  sub_24B8F35E4(v63, &qword_27F067560);
  v66(v91, v59);
  v67 = v96;
  sub_24B90294C(v64, v96, &qword_27F067558);
  (*(v80 + 56))(v67, 0, 1, v94);
LABEL_7:
  v69 = v93;
  v70 = v95;
  sub_24B9CA724(v93, v95);
  sub_24B8F3208(v67, v20, &qword_27F067568);
  sub_24B9CA724(v70, a2);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067578);
  sub_24B8F3208(v20, a2 + *(v71 + 48), &qword_27F067568);
  sub_24B8F35E4(v67, &qword_27F067568);
  sub_24B8F35E4(v69, &qword_27F067570);
  sub_24B8F35E4(v20, &qword_27F067568);
  return sub_24B8F35E4(v70, &qword_27F067570);
}

uint64_t sub_24B9BF4D0@<X0>(BOOL *a1@<X8>)
{
  v21 = a1;
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  v20 = *(LocationTriggerView - 8);
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](LocationTriggerView);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v4 = *(v22 + 16);

  v5 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v6 = sub_24BAAA08C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  if (v22 >> 62)
  {
    v7 = sub_24BAAA52C();
  }

  else
  {
    v7 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = v4 > 0;
  v9 = v21;
  *v21 = v8;
  v9[1] = v6 > 0;
  v9[2] = v7 != 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067570);
  v18[1] = *(v10 + 60);
  v19 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v26 = v22;
  sub_24B9C9478(v1, v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateLocationTriggerView);
  v11 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v12 = swift_allocObject();
  sub_24B9CA18C(v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for CreateLocationTriggerView);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067610);
  sub_24BAA7E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067618);
  sub_24B8F384C(&qword_27F067620, &qword_27F067610);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067628);
  v14 = sub_24BAA8DEC();
  v15 = sub_24B8F384C(&qword_27F067630, &qword_27F067628);
  v16 = sub_24B9BE0E8(&qword_27F0667F8, MEMORY[0x277CDE0B8]);
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  swift_getOpaqueTypeConformance2();
  sub_24B9BE0E8(&qword_27F067638, type metadata accessor for LocationSuggestions.PointOfInterest);
  sub_24BAA9C0C();
  return sub_24B9C21A0(v5, &v9[*(v19 + 64)]);
}

double sub_24B9BF980()
{
  v0 = sub_24BAA8E5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0675B0);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0674C0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 1)
  {
    return 300.0;
  }

  sub_24BA8DCF8(v14);
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v18 = *(v3 + 48);
  sub_24B8F3208(v14, v5, &qword_27F0674C0);
  sub_24B8F3208(v12, &v5[v18], &qword_27F0674C0);
  v19 = *(v1 + 48);
  if (v19(v5, 1, v0) == 1)
  {
    sub_24B8F35E4(v12, &qword_27F0674C0);
    sub_24B8F35E4(v14, &qword_27F0674C0);
    if (v19(&v5[v18], 1, v0) == 1)
    {
      sub_24B8F35E4(v5, &qword_27F0674C0);
      return 300.0;
    }

LABEL_8:
    sub_24B8F35E4(v5, &qword_27F0675B0);
    return 150.0;
  }

  sub_24B8F3208(v5, v9, &qword_27F0674C0);
  if (v19(&v5[v18], 1, v0) == 1)
  {
    sub_24B8F35E4(v12, &qword_27F0674C0);
    sub_24B8F35E4(v14, &qword_27F0674C0);
    (*(v1 + 8))(v9, v0);
    goto LABEL_8;
  }

  v21 = v25;
  (*(v1 + 32))(v25, &v5[v18], v0);
  sub_24B9BE0E8(&qword_27F0675B8, MEMORY[0x277CE0570]);
  v22 = sub_24BAA9F5C();
  v23 = *(v1 + 8);
  v23(v21, v0);
  sub_24B8F35E4(v12, &qword_27F0674C0);
  sub_24B8F35E4(v14, &qword_27F0674C0);
  v23(v9, v0);
  sub_24B8F35E4(v5, &qword_27F0674C0);
  result = 150.0;
  if (v22)
  {
    return 300.0;
  }

  return result;
}