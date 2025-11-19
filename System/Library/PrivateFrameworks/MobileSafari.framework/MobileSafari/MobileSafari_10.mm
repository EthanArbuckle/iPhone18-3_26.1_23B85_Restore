unint64_t sub_18B992AF8()
{
  result = qword_1EA9D3EA8;
  if (!qword_1EA9D3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3EA8);
  }

  return result;
}

unint64_t sub_18B992B4C()
{
  result = qword_1EA9D3EC0;
  if (!qword_1EA9D3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3EC0);
  }

  return result;
}

unint64_t sub_18B992BA0()
{
  result = qword_1EA9D3EC8;
  if (!qword_1EA9D3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3EC8);
  }

  return result;
}

unint64_t sub_18B992BF4()
{
  result = qword_1EA9D3ED0;
  if (!qword_1EA9D3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3ED0);
  }

  return result;
}

unint64_t sub_18B992C48()
{
  result = qword_1EA9D3EF0;
  if (!qword_1EA9D3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3EF0);
  }

  return result;
}

unint64_t sub_18B992C9C()
{
  result = qword_1EA9D3EF8;
  if (!qword_1EA9D3EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D3E98);
    sub_18B992D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3EF8);
  }

  return result;
}

unint64_t sub_18B992D20()
{
  result = qword_1EA9D3F00;
  if (!qword_1EA9D3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3F00);
  }

  return result;
}

unint64_t sub_18B992D74()
{
  result = qword_1EA9D3F10;
  if (!qword_1EA9D3F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3F10);
  }

  return result;
}

unint64_t sub_18B992DC8()
{
  result = qword_1EA9D3F18;
  if (!qword_1EA9D3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3F18);
  }

  return result;
}

unint64_t sub_18B992E1C()
{
  result = qword_1EA9D3F20;
  if (!qword_1EA9D3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3F20);
  }

  return result;
}

uint64_t sub_18B992E70(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_18B9929B8(*a1, 0);
      sub_18B9929B8(*&v4, 0);
      v5 = (LOBYTE(v4) ^ LOBYTE(v2)) ^ 1;
      return v5 & 1;
    }

    goto LABEL_14;
  }

  if (v3 != 1)
  {
    if (v5 == 2)
    {
      if (v2 == 0.0)
      {
        if (v4 == 0.0)
        {
          sub_18B9929A4(0, 2);
          sub_18B9929B8(0, 2);
          sub_18B9929B8(0, 2);
          LOBYTE(v5) = 1;
          return v5 & 1;
        }

        v11 = *&v4;
        v2 = 0.0;
      }

      else
      {
        if (v4 != 0.0)
        {
          sub_18B7B0AC0(0, &qword_1ED6514F0);
          sub_18B9929A4(*&v4, 2);
          sub_18B9929A4(*&v2, 2);
          sub_18B9929A4(*&v4, 2);
          sub_18B9929A4(*&v2, 2);
          v6 = sub_18BC215C8();
          sub_18B9929B8(*&v2, 2);
          sub_18B9929B8(*&v4, 2);
          sub_18B9929B8(*&v4, 2);
          sub_18B9929B8(*&v2, 2);
          if (v6)
          {
            LOBYTE(v5) = 1;
            return v5 & 1;
          }

LABEL_16:
          LOBYTE(v5) = 0;
          return v5 & 1;
        }

        sub_18B9929A4(0, 2);
        sub_18B9929A4(0, 2);
        sub_18B9929A4(*&v2, 2);
      }

      sub_18B9929B8(*&v2, 2);
      v8 = v4;
      v9 = 2;
LABEL_15:
      sub_18B9929B8(*&v8, v9);
      goto LABEL_16;
    }

    v7 = *&v2;
LABEL_14:
    sub_18B9929A4(*&v4, v5);
    sub_18B9929B8(*&v2, v3);
    v8 = v4;
    v9 = v5;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
    goto LABEL_14;
  }

  sub_18B9929B8(*a1, 1);
  sub_18B9929B8(*&v4, 1);
  if (v2 != v4)
  {
    goto LABEL_16;
  }

  return v5 & 1;
}

uint64_t sub_18B993064(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_18B7B0AC0(0, &unk_1EA9D91D0);
    v6 = v5;
    v7 = v4;
    v8 = sub_18BC215C8();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v10 = *(a1 + 24);
  v11 = *(a2 + 24);
  if (v10)
  {
    if (!v11 || (*(a1 + 16) != *(a2 + 16) || v10 != v11) && (sub_18BC21FD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if ((sub_18B98D6C0(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 48);
  v13 = *(a2 + 48);
  if (v12)
  {
    if (!v13 || (*(a1 + 40) != *(a2 + 40) || v12 != v13) && (sub_18BC21FD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v14 = *(a1 + 64);
  v15 = *(a2 + 64);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    sub_18B7B0AC0(0, &qword_1ED6514F0);
    v16 = v15;
    v17 = v14;
    v18 = sub_18BC215C8();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (*(a1 + 72) != *(a2 + 72) || (sub_18B98D8E0(*(a1 + 80), *(a2 + 80)) & 1) == 0)
  {
    return 0;
  }

  v19 = *(a1 + 104);
  v20 = *(a2 + 104);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v20 == 2)
    {
      return 0;
    }

    v28 = *(a2 + 88);
    v21 = *(a2 + 128);
    v30 = *(a2 + 112);
    v31 = v21;
    v32 = *(a2 + 144);
    v23 = *(a1 + 88);
    v22 = *(a1 + 128);
    v25 = *(a1 + 112);
    v29 = v20;
    v26 = v22;
    v27 = *(a1 + 144);
    v24 = v19;
    if (!sub_18BB4041C(&v23, &v28))
    {
      return 0;
    }
  }

  if (*(a1 + 160) != *(a2 + 160))
  {
    return 0;
  }

  _s5LayerVMa();

  return _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_18B9932EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369736162 && a2 == 0xE500000000000000;
  if (v4 || (sub_18BC21FD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x706F72646B636162 && a2 == 0xE800000000000000 || (sub_18BC21FD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697463656C666572 && a2 == 0xEA00000000006E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_18BC21FD8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_18B993408(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3FC0);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3FC8);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3FD0);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3FD8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v12);
  sub_18B995EBC();
  v13 = v34;
  sub_18BC221D8();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_18BC21EB8();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_18BB38050();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_18B995F64();
          sub_18BC21E38();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1Tm(v35);
          return v9;
        }

        v40 = 2;
        sub_18B995F10();
        v24 = v11;
        sub_18BC21E38();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_18B995FB8();
        v24 = v11;
        sub_18BC21E38();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_18BC21B48();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3FE8) + 48);
    *v22 = &_s9LayerTypeON;
    sub_18BC21E48();
    sub_18BC21B38();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  return v9;
}

uint64_t sub_18B993978(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4028);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4030);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4038);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18B99600C();
  v11 = v26;
  sub_18BC221D8();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_18BC21EB8();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_18BB36678();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_18BC21B48();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3FE8);
    *v19 = &_s13SemanticColorON;
    sub_18BC21E48();
    sub_18BC21B38();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_18B996060();
    sub_18BC21E38();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_18B9960B4();
    sub_18BC21E38();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v31 & 1;
}

void sub_18B993E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v5 = sub_18BC20B98();
  v34 = [v4 initWithType_];

  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  sub_18BC1E3F8();
  v11 = 0;
  v31 = a3;
  while (v9)
  {
LABEL_13:
    v23 = (v11 << 10) | (16 * __clz(__rbit64(v9)));
    v24 = *(*(a3 + 48) + v23 + 8);
    v25 = *(a3 + 56) + v23;
    v26 = *v25;
    v20 = *(v25 + 8);
    v35 = *v25;
    v36 = v24;
    if (v20 != 2)
    {
      if (v20)
      {
        v27 = MEMORY[0x1E69E7DE0];
        v38 = MEMORY[0x1E69E7DE0];
        v39 = sub_18B7F3B64();
        v37[0] = v26;
      }

      else
      {
        v27 = MEMORY[0x1E69E6370];
        v38 = MEMORY[0x1E69E6370];
        v39 = MEMORY[0x1E69E6380];
        LOBYTE(v37[0]) = v26 & 1;
      }

      v28 = __swift_project_boxed_opaque_existential_1Tm(v37, v27);
      v41 = v27;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v40);
      (*(*(v27 - 8) + 16))(boxed_opaque_existential_0Tm, v28, v27);
      sub_18BC1E3F8();
      sub_18B9929A4(v26, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      v13 = v41;
      if (v41)
      {
LABEL_5:
        v14 = __swift_project_boxed_opaque_existential_1Tm(v40, v13);
        v32 = &v30;
        v15 = *(v13 - 8);
        v16 = MEMORY[0x1EEE9AC00](v14);
        v33 = v20;
        v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v15 + 16))(v18, v16);
        v19 = sub_18BC21FB8();
        LOBYTE(v20) = v33;
        (*(v15 + 8))(v18, v13);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
      }

      else
      {
        v19 = 0;
      }

      a3 = v31;
      goto LABEL_7;
    }

    if (v26)
    {
      sub_18BC1E3F8();
      sub_18B9929A4(v26, 2);
      v19 = [v26 CGImage];
      if (v19)
      {
        type metadata accessor for CGImage(0);
        v13 = v12;
        v41 = v12;
        v40[0] = v19;
        goto LABEL_5;
      }
    }

    else
    {
      sub_18BC1E3F8();
      sub_18B9929A4(0, 2);
      v19 = 0;
    }

LABEL_7:
    v9 &= v9 - 1;
    v21 = sub_18BC20B98();

    [v34 setValue:v19 forKey:v21];
    swift_unknownObjectRelease();

    sub_18B9929B8(v35, v20);
  }

  while (1)
  {
    v22 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v22 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v22);
    ++v11;
    if (v9)
    {
      v11 = v22;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_18B9941D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v4 || (sub_18BC21FD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000018BC60F00 == a2 || (sub_18BC21FD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018BC60F20 == a2 || (sub_18BC21FD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000 || (sub_18BC21FD8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065 || (sub_18BC21FD8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018BC60F40 == a2 || (sub_18BC21FD8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x67616D496B73616DLL && a2 == 0xE900000000000065 || (sub_18BC21FD8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000 || (sub_18BC21FD8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726579616C627573 && a2 == 0xE900000000000073 || (sub_18BC21FD8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x697463656C666572 && a2 == 0xEA00000000006E6FLL || (sub_18BC21FD8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_18BC21FD8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_18BC21FD8();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_18B9945B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18BA64548(MEMORY[0x1E69E7CC0]);
  v58 = *(a3 + 16);
  if (!v58)
  {
    return a1;
  }

  v5 = 0;
  v6 = (a3 + 64);
  v7 = MEMORY[0x1E69E7DE0];
  v57 = a3;
  while (v5 < *(a3 + 16))
  {
    v11 = *(v6 - 4);
    v12 = *(v6 - 3);
    v14 = *(v6 - 1);
    v13 = *v6;
    if (*(v6 - 16) != 1)
    {
      v17 = (v11 + v12) * 0.5;
      v62 = v7;
      v63 = sub_18B7F3B64();
      *v61 = v17;
      sub_18B80DBC4(v61, v60);
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4098);
      sub_18B7B0AC0(0, &qword_1ED6514F0);
      if (swift_dynamicCast())
      {
        v18 = v59;
        v19 = 2;
      }

      else
      {
        sub_18B80DBC4(v61, v60);
        if (swift_dynamicCast())
        {
          v18 = v59;
          v19 = 1;
        }

        else
        {
          sub_18B80DBC4(v61, v60);
          if (!swift_dynamicCast())
          {
            goto LABEL_34;
          }

          v19 = 0;
          v18 = v59;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61[0] = v4;
      v22 = sub_18B831970(v14, v13);
      v23 = v4[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_49;
      }

      v26 = v21;
      if (v4[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v21 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_18BB29030();
          if ((v26 & 1) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        sub_18BB2CE74(v25, isUniquelyReferenced_nonNull_native);
        v27 = sub_18B831970(v14, v13);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_53;
        }

        v22 = v27;
        if ((v26 & 1) == 0)
        {
LABEL_24:
          v4 = v61[0];
          *(v61[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
          v29 = (v4[6] + 16 * v22);
          *v29 = v14;
          v29[1] = v13;
          v30 = v4[7] + 16 * v22;
          *v30 = v18;
          *(v30 + 8) = v19;

          v31 = v4[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_50;
          }

          v4[2] = v33;
          goto LABEL_4;
        }
      }

      v4 = v61[0];
      v8 = *(v61[0] + 56) + 16 * v22;
      v9 = *v8;
      *v8 = v18;
      v10 = *(v8 + 8);
      *(v8 + 8) = v19;
      sub_18B9929B8(v9, v10);

LABEL_4:
      a3 = v57;
      v7 = MEMORY[0x1E69E7DE0];
      goto LABEL_5;
    }

    if (!(*&v11 | *&v12))
    {
      v62 = MEMORY[0x1E69E6370];
      v63 = MEMORY[0x1E69E6380];
      LOBYTE(v61[0]) = 0;
      sub_18B80DBC4(v61, v60);
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4098);
      sub_18B7B0AC0(0, &qword_1ED6514F0);
      if (swift_dynamicCast())
      {
        v15 = v59;
        v16 = 2;
      }

      else
      {
        sub_18B80DBC4(v61, v60);
        if (swift_dynamicCast())
        {
          v15 = v59;
          v16 = 1;
        }

        else
        {
          sub_18B80DBC4(v61, v60);
          if (!swift_dynamicCast())
          {
LABEL_34:
            __swift_destroy_boxed_opaque_existential_1Tm(v61);
            v42 = sub_18B831970(v14, v13);
            v44 = v43;

            if (v44)
            {
              v45 = swift_isUniquelyReferenced_nonNull_native();
              v61[0] = v4;
              if (!v45)
              {
                sub_18BB29030();
                v4 = v61[0];
              }

              sub_18B9929B8(*(v4[7] + 16 * v42), *(v4[7] + 16 * v42 + 8));
              sub_18BB5A3C8(v42, v4);
            }

            goto LABEL_42;
          }

          v16 = 0;
          v15 = v59;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v61[0] = v4;
      v35 = sub_18B831970(v14, v13);
      v37 = v4[2];
      v38 = (v36 & 1) == 0;
      v32 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v32)
      {
        goto LABEL_51;
      }

      v40 = v36;
      if (v4[3] >= v39)
      {
        if ((v34 & 1) == 0)
        {
          v54 = v35;
          sub_18BB29030();
          v35 = v54;
        }
      }

      else
      {
        sub_18BB2CE74(v39, v34);
        v35 = sub_18B831970(v14, v13);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_53;
        }
      }

      v7 = MEMORY[0x1E69E7DE0];
      if (v40)
      {
        v46 = v35;

        v4 = v61[0];
        v47 = *(v61[0] + 56) + 16 * v46;
        v48 = *v47;
        *v47 = v15;
        v49 = *(v47 + 8);
        *(v47 + 8) = v16;
        sub_18B9929B8(v48, v49);
LABEL_42:

        goto LABEL_5;
      }

      v4 = v61[0];
      *(v61[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
      v50 = (v4[6] + 16 * v35);
      *v50 = v14;
      v50[1] = v13;
      v51 = v4[7] + 16 * v35;
      *v51 = v15;
      *(v51 + 8) = v16;

      v52 = v4[2];
      v32 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v32)
      {
        goto LABEL_52;
      }

      v4[2] = v53;
    }

LABEL_5:
    ++v5;
    v6 += 5;
    if (v58 == v5)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_18BC22078();
  __break(1u);
  return result;
}

uint64_t sub_18B994B7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result;
  v7 = (a3 + 64);
  v8 = *(a3 + 16) + 1;
  while (1)
  {
    if (!--v8)
    {
      v9 = 0;
      v11 = 0;
      v10 = 0;
      v13 = 0uLL;
      goto LABEL_12;
    }

    v14 = *(v7 - 2);
    v9 = *(v7 - 16);
    v11 = *(v7 - 1);
    v10 = *v7;
    if (v11 == v5 && v10 == a2)
    {
      break;
    }

    v7 += 5;
    result = sub_18BC21FD8();
    if (result)
    {
      goto LABEL_11;
    }
  }

  v11 = v5;
LABEL_11:
  result = sub_18BC1E3F8();
  v13 = v14;
LABEL_12:
  *a4 = v13;
  *(a4 + 16) = v9;
  *(a4 + 24) = v11;
  *(a4 + 32) = v10;
  return result;
}

uint64_t sub_18B994C48(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_18B7CA054(a1, &v11, &qword_1EA9D4080);
  if (*(&v12 + 1))
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
    if (a4)
    {
      if (a2 | a3)
      {
        v7 = sub_18BC21A28();
        sub_18B831014(&v14);
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass() != 0;

        return v8;
      }

      else
      {
        v11 = v14;
        v12 = v15;
        v13 = v16;
        return swift_dynamicCast();
      }
    }

    else
    {
      v11 = v14;
      v12 = v15;
      v13 = v16;
      return (swift_dynamicCast() & 1) != 0 && v10 >= *&a2 && v10 <= *&a3;
    }
  }

  else
  {
    sub_18B988BAC(&v11, &qword_1EA9D4080);
    return 1;
  }
}

uint64_t sub_18B994DA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_18BC21FD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737475706E69 && a2 == 0xE600000000000000 || (sub_18BC21FD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_18BC21FD8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_18B994EB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3F30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  sub_18BA64548(MEMORY[0x1E69E7CC0]);

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18B995190();
  sub_18BC221D8();
  if (!v1)
  {
    LOBYTE(v11) = 0;
    v7 = sub_18BC21E78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3F40);
    v10 = 1;
    sub_18B9951E4();
    sub_18BC21EA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3F58);
    v10 = 2;
    sub_18B9953E8(&qword_1EA9D3F60, sub_18B9952BC);
    sub_18BC21EA8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_18B995190()
{
  result = qword_1EA9D3F38;
  if (!qword_1EA9D3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3F38);
  }

  return result;
}

unint64_t sub_18B9951E4()
{
  result = qword_1EA9D3F48;
  if (!qword_1EA9D3F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D3F40);
    sub_18B995268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3F48);
  }

  return result;
}

unint64_t sub_18B995268()
{
  result = qword_1EA9D3F50;
  if (!qword_1EA9D3F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3F50);
  }

  return result;
}

unint64_t sub_18B9952BC()
{
  result = qword_1EA9D3F68;
  if (!qword_1EA9D3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3F68);
  }

  return result;
}

unint64_t sub_18B995310()
{
  result = qword_1EA9D3F78;
  if (!qword_1EA9D3F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D3F40);
    sub_18B995394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3F78);
  }

  return result;
}

unint64_t sub_18B995394()
{
  result = qword_1EA9D3F80;
  if (!qword_1EA9D3F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3F80);
  }

  return result;
}

uint64_t sub_18B9953E8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D3F58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B99546C()
{
  result = qword_1EA9D3F90;
  if (!qword_1EA9D3F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3F90);
  }

  return result;
}

uint64_t sub_18B9954C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242338 && a2 == 0xE400000000000000;
  if (v3 || (sub_18BC21FD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_18BC21FD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_18BC21FD8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_18B9955D0(void *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4230);
  v42 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v34 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4238);
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4240);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4248);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v49 = a1;
  v15 = __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  sub_18B9972E4();
  v16 = v43;
  sub_18BC221D8();
  if (v16)
  {
    goto LABEL_11;
  }

  v35 = v7;
  v36 = 0;
  v18 = v40;
  v17 = v41;
  v19 = v42;
  v43 = v11;
  v20 = sub_18BC21EB8();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_18BB38050();
  if (v22 == 3 || v47 != v48 >> 1)
  {
    v27 = sub_18BC21B48();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3FE8);
    *v29 = &type metadata for SFFilterInput.ValueType;
    v15 = v13;
    sub_18BC21E48();
    sub_18BC21B38();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
LABEL_9:
    v25 = v43;
    goto LABEL_10;
  }

  if (!v22)
  {
    LOBYTE(v44) = 0;
    sub_18B997464();
    v15 = v13;
    v31 = v36;
    sub_18BC21E38();
    if (!v31)
    {
      (*(v18 + 8))(v9, v35);
      (*(v43 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v15 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v22 == 1)
  {
    LOBYTE(v44) = 1;
    sub_18B99738C();
    v23 = v6;
    v15 = v13;
    v24 = v36;
    sub_18BC21E38();
    v25 = v43;
    if (!v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4268);
      sub_18B9973E0();
      v26 = v38;
      sub_18BC21EA8();
      (*(v39 + 8))(v23, v26);
      (*(v25 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v15 = v44;
      goto LABEL_11;
    }

LABEL_10:
    (*(v25 + 8))(v13, v10);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  LOBYTE(v44) = 2;
  sub_18B997338();
  v32 = v36;
  sub_18BC21E38();
  v33 = v43;
  if (v32)
  {
    v15 = v43 + 8;
    (*(v43 + 8))(v13, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v19 + 8))(v17, v37);
    (*(v33 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v15 = 1;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  return v15;
}

uint64_t sub_18B995BDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3F98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18B995DC0();
  sub_18BC221D8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = 0;
  sub_18B995E14();
  sub_18BC21EA8();
  v9 = v16;
  v15 = v17;
  v19 = v18;
  LOBYTE(v16) = 1;
  v10 = sub_18BC21E78();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v14 = v15;
  *a2 = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  return result;
}

unint64_t sub_18B995DC0()
{
  result = qword_1EA9D3FA0;
  if (!qword_1EA9D3FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3FA0);
  }

  return result;
}

unint64_t sub_18B995E14()
{
  result = qword_1EA9D3FA8;
  if (!qword_1EA9D3FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3FA8);
  }

  return result;
}

unint64_t sub_18B995E68()
{
  result = qword_1EA9D3FB8;
  if (!qword_1EA9D3FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3FB8);
  }

  return result;
}

unint64_t sub_18B995EBC()
{
  result = qword_1EA9D3FE0;
  if (!qword_1EA9D3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3FE0);
  }

  return result;
}

unint64_t sub_18B995F10()
{
  result = qword_1EA9D3FF0;
  if (!qword_1EA9D3FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3FF0);
  }

  return result;
}

unint64_t sub_18B995F64()
{
  result = qword_1EA9D3FF8;
  if (!qword_1EA9D3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3FF8);
  }

  return result;
}

unint64_t sub_18B995FB8()
{
  result = qword_1EA9D4000;
  if (!qword_1EA9D4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4000);
  }

  return result;
}

unint64_t sub_18B99600C()
{
  result = qword_1EA9D4040;
  if (!qword_1EA9D4040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4040);
  }

  return result;
}

unint64_t sub_18B996060()
{
  result = qword_1EA9D4048;
  if (!qword_1EA9D4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4048);
  }

  return result;
}

unint64_t sub_18B9960B4()
{
  result = qword_1EA9D4050;
  if (!qword_1EA9D4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4050);
  }

  return result;
}

unint64_t sub_18B996108()
{
  result = qword_1EA9D4090;
  if (!qword_1EA9D4090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D4088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4090);
  }

  return result;
}

unint64_t sub_18B996184()
{
  result = qword_1EA9D64C0;
  if (!qword_1EA9D64C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D40A0);
    sub_18B996208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D64C0);
  }

  return result;
}

unint64_t sub_18B996208()
{
  result = qword_1EA9D40A8;
  if (!qword_1EA9D40A8)
  {
    sub_18B7B0AC0(255, &qword_1ED6514F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D40A8);
  }

  return result;
}

uint64_t sub_18B996270(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_18B9962E0()
{
  result = qword_1EA9D40C8;
  if (!qword_1EA9D40C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D40C8);
  }

  return result;
}

unint64_t sub_18B996334()
{
  result = qword_1EA9D40D8;
  if (!qword_1EA9D40D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D40D0);
    sub_18B7F3B64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D40D8);
  }

  return result;
}

uint64_t _s4ModeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4ModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s5LayerV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5LayerV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_18B9966F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18B996740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SFFilterInput.ValueType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SFFilterInput.ValueType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_18B996800(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B99681C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

unint64_t sub_18B996850()
{
  result = qword_1EA9D40F8;
  if (!qword_1EA9D40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D40F8);
  }

  return result;
}

unint64_t sub_18B9968A8()
{
  result = qword_1EA9D4100;
  if (!qword_1EA9D4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4100);
  }

  return result;
}

unint64_t sub_18B996900()
{
  result = qword_1EA9D4108;
  if (!qword_1EA9D4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4108);
  }

  return result;
}

unint64_t sub_18B996958()
{
  result = qword_1EA9D4110;
  if (!qword_1EA9D4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4110);
  }

  return result;
}

unint64_t sub_18B9969B0()
{
  result = qword_1EA9D4118;
  if (!qword_1EA9D4118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4118);
  }

  return result;
}

unint64_t sub_18B996A08()
{
  result = qword_1EA9D4120;
  if (!qword_1EA9D4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4120);
  }

  return result;
}

unint64_t sub_18B996A60()
{
  result = qword_1EA9D4128;
  if (!qword_1EA9D4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4128);
  }

  return result;
}

unint64_t sub_18B996AB8()
{
  result = qword_1EA9D4130;
  if (!qword_1EA9D4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4130);
  }

  return result;
}

unint64_t sub_18B996B10()
{
  result = qword_1EA9D4138;
  if (!qword_1EA9D4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4138);
  }

  return result;
}

unint64_t sub_18B996B68()
{
  result = qword_1EA9D4140;
  if (!qword_1EA9D4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4140);
  }

  return result;
}

unint64_t sub_18B996BC0()
{
  result = qword_1EA9D4148;
  if (!qword_1EA9D4148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4148);
  }

  return result;
}

unint64_t sub_18B996C18()
{
  result = qword_1EA9D4150;
  if (!qword_1EA9D4150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4150);
  }

  return result;
}

unint64_t sub_18B996C70()
{
  result = qword_1EA9D4158;
  if (!qword_1EA9D4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4158);
  }

  return result;
}

unint64_t sub_18B996CC8()
{
  result = qword_1EA9D4160;
  if (!qword_1EA9D4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4160);
  }

  return result;
}

unint64_t sub_18B996D20()
{
  result = qword_1EA9D4168;
  if (!qword_1EA9D4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4168);
  }

  return result;
}

unint64_t sub_18B996D78()
{
  result = qword_1EA9D4170;
  if (!qword_1EA9D4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4170);
  }

  return result;
}

unint64_t sub_18B996DD0()
{
  result = qword_1EA9D4178;
  if (!qword_1EA9D4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4178);
  }

  return result;
}

unint64_t sub_18B996E28()
{
  result = qword_1EA9D4180;
  if (!qword_1EA9D4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4180);
  }

  return result;
}

unint64_t sub_18B996E80()
{
  result = qword_1EA9D4188;
  if (!qword_1EA9D4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4188);
  }

  return result;
}

unint64_t sub_18B996ED8()
{
  result = qword_1EA9D4190;
  if (!qword_1EA9D4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4190);
  }

  return result;
}

unint64_t sub_18B996F30()
{
  result = qword_1EA9D4198;
  if (!qword_1EA9D4198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4198);
  }

  return result;
}

unint64_t sub_18B996F88()
{
  result = qword_1EA9D41A0;
  if (!qword_1EA9D41A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D41A0);
  }

  return result;
}

unint64_t sub_18B996FE0()
{
  result = qword_1EA9D41A8;
  if (!qword_1EA9D41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D41A8);
  }

  return result;
}

unint64_t sub_18B997038()
{
  result = qword_1EA9D41B0;
  if (!qword_1EA9D41B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D41B0);
  }

  return result;
}

unint64_t sub_18B997090()
{
  result = qword_1EA9D41B8;
  if (!qword_1EA9D41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D41B8);
  }

  return result;
}

unint64_t sub_18B9970E8()
{
  result = qword_1EA9D41C0;
  if (!qword_1EA9D41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D41C0);
  }

  return result;
}

unint64_t sub_18B997140()
{
  result = qword_1EA9D41C8;
  if (!qword_1EA9D41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D41C8);
  }

  return result;
}

unint64_t sub_18B997194()
{
  result = qword_1EA9D41F0;
  if (!qword_1EA9D41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D41F0);
  }

  return result;
}

unint64_t sub_18B9971E8()
{
  result = qword_1EA9D41F8;
  if (!qword_1EA9D41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D41F8);
  }

  return result;
}

unint64_t sub_18B99723C()
{
  result = qword_1EA9D4200;
  if (!qword_1EA9D4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4200);
  }

  return result;
}

unint64_t sub_18B997290()
{
  result = qword_1EA9D4208;
  if (!qword_1EA9D4208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4208);
  }

  return result;
}

unint64_t sub_18B9972E4()
{
  result = qword_1EA9D4250;
  if (!qword_1EA9D4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4250);
  }

  return result;
}

unint64_t sub_18B997338()
{
  result = qword_1EA9D4258;
  if (!qword_1EA9D4258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4258);
  }

  return result;
}

unint64_t sub_18B99738C()
{
  result = qword_1EA9D4260;
  if (!qword_1EA9D4260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4260);
  }

  return result;
}

unint64_t sub_18B9973E0()
{
  result = qword_1EA9D4270;
  if (!qword_1EA9D4270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D4268);
    sub_18B992B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4270);
  }

  return result;
}

unint64_t sub_18B997464()
{
  result = qword_1EA9D4278;
  if (!qword_1EA9D4278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4278);
  }

  return result;
}

unint64_t sub_18B9974B8()
{
  result = qword_1EA9D42A0;
  if (!qword_1EA9D42A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D4268);
    sub_18B992D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D42A0);
  }

  return result;
}

uint64_t _s4PageV14PeekingOverlayOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4PageV14PeekingOverlayOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReaderModeType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ReaderModeType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_18B9977CC()
{
  result = qword_1EA9D42A8;
  if (!qword_1EA9D42A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D42A8);
  }

  return result;
}

unint64_t sub_18B997824()
{
  result = qword_1EA9D42B0;
  if (!qword_1EA9D42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D42B0);
  }

  return result;
}

unint64_t sub_18B99787C()
{
  result = qword_1EA9D42B8;
  if (!qword_1EA9D42B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D42B8);
  }

  return result;
}

unint64_t sub_18B9978D4()
{
  result = qword_1EA9D42C0;
  if (!qword_1EA9D42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D42C0);
  }

  return result;
}

unint64_t sub_18B99792C()
{
  result = qword_1EA9D42C8;
  if (!qword_1EA9D42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D42C8);
  }

  return result;
}

unint64_t sub_18B997984()
{
  result = qword_1EA9D42D0;
  if (!qword_1EA9D42D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D42D0);
  }

  return result;
}

unint64_t sub_18B9979DC()
{
  result = qword_1EA9D42D8;
  if (!qword_1EA9D42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D42D8);
  }

  return result;
}

unint64_t sub_18B997A34()
{
  result = qword_1EA9D42E0;
  if (!qword_1EA9D42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D42E0);
  }

  return result;
}

unint64_t sub_18B997A8C()
{
  result = qword_1EA9D42E8;
  if (!qword_1EA9D42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D42E8);
  }

  return result;
}

unint64_t sub_18B997AE4()
{
  result = qword_1EA9D42F0;
  if (!qword_1EA9D42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D42F0);
  }

  return result;
}

unint64_t sub_18B997B3C()
{
  result = qword_1EA9D42F8;
  if (!qword_1EA9D42F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D42F8);
  }

  return result;
}

unint64_t sub_18B997B94()
{
  result = qword_1EA9D4300;
  if (!qword_1EA9D4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4300);
  }

  return result;
}

unint64_t sub_18B997BEC()
{
  result = qword_1EA9D4308;
  if (!qword_1EA9D4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4308);
  }

  return result;
}

unint64_t sub_18B997C44()
{
  result = qword_1EA9D4310;
  if (!qword_1EA9D4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4310);
  }

  return result;
}

unint64_t sub_18B997C9C()
{
  result = qword_1EA9D4318;
  if (!qword_1EA9D4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4318);
  }

  return result;
}

unint64_t sub_18B997CF4()
{
  result = qword_1EA9D4320;
  if (!qword_1EA9D4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4320);
  }

  return result;
}

unint64_t sub_18B997D4C()
{
  result = qword_1EA9D4328;
  if (!qword_1EA9D4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4328);
  }

  return result;
}

unint64_t sub_18B997DA4()
{
  result = qword_1EA9D4330;
  if (!qword_1EA9D4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4330);
  }

  return result;
}

unint64_t sub_18B997DFC()
{
  result = qword_1EA9D4338;
  if (!qword_1EA9D4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4338);
  }

  return result;
}

unint64_t sub_18B997E54()
{
  result = qword_1EA9D4340;
  if (!qword_1EA9D4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4340);
  }

  return result;
}

unint64_t sub_18B997EAC()
{
  result = qword_1EA9D4348;
  if (!qword_1EA9D4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4348);
  }

  return result;
}

unint64_t sub_18B997F04()
{
  result = qword_1EA9D4350;
  if (!qword_1EA9D4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4350);
  }

  return result;
}

id sub_18B998450()
{
  v2.receiver = v0;
  v2.super_class = _s6LayoutCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B998504(void *a1)
{
  v1 = a1;
  v2 = sub_18B998538();

  return v2;
}

uint64_t sub_18B9985A8(uint64_t a1)
{
  swift_getObjectType();
  sub_18B998960(a1, v5);
  if (!v6)
  {
    sub_18B7E0F80(v5);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_18BC20AE8();

  return v2 & 1;
}

uint64_t sub_18B9986CC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_18B9985A8(v8);

  sub_18B7E0F80(v8);
  return v6 & 1;
}

id sub_18B998798()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B998834()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18B998884()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18B998960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_18B998A8C(uint64_t a1)
{
  v2 = sub_18BC1EC08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_18BC1EBE8();
  sub_18BC1E1A8();
  v7 = v6(v5);

  (*(v3 + 8))(v5, v2);

  return v7;
}

id sub_18B998C50(uint64_t a1)
{
  v2 = sub_18BC1EC08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1EA98();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 32);
  sub_18BC1EA38();
  sub_18BC1EBE8();
  sub_18BC1E1A8();
  v11 = v10(v9, v5);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  return v11;
}

id sub_18B998E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18BC1E9E8();
  v5 = sub_18BC1EBC8();
  v6 = (*(a3 + 16))(a3, v4, v5);

  return v6;
}

id sub_18B998F40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_18BC1EC08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  sub_18BC1EBE8();
  sub_18BC1E1A8();
  v9(v8);

  (*(v6 + 8))(v8, v5);
  v10 = sub_18BC1EA98();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v4, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_18BC1E9E8();
    (*(v11 + 8))(v4, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_18B99912C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_18BC1EBC8();
  v5 = (*(a1 + 16))(a1, v4);

  if (v5)
  {
    sub_18BC1EA38();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_18BC1EA98();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

id sub_18B9991F4(uint64_t a1)
{
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR___SFTabIconPool_wrapped);
  swift_beginAccess();
  v8 = *(v7 + 64);
  v9 = *(v8 + 16);
  sub_18BC1E1A8();
  if (v9)
  {
    sub_18BC1E3F8();
    v10 = sub_18B857EE4(a1);
    if (v11)
    {
      v12 = *(*(v8 + 56) + 8 * v10);
      sub_18BC1E3F8();

      v13 = sub_18BA61718(v12);

      if (v13)
      {
        swift_beginAccess();
        v14 = *(v13 + 16);
        v15 = v14;

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v14 = 0;
LABEL_7:
  (*(v4 + 16))(v6, a1, v3);
  type metadata accessor for TabIconRegistration(0);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = CGRectMake;
  v16[4] = 0;
  swift_weakInit();
  swift_beginAccess();
  v22 = a1;
  v17 = v16[2];
  v16[2] = v14;
  v18 = v14;
  sub_18BC1E1A8();
  v19 = v18;

  (*(v4 + 32))(v16 + OBJC_IVAR____TtC12MobileSafari19TabIconRegistration_id, v6, v3);
  swift_weakAssign();

  sub_18BA62EFC(v16);
  if (v14)
  {
  }

  else
  {
    sub_18BA61EC0(v22);
  }

  v20 = objc_allocWithZone(SFTabIconRegistration);
  *&v20[OBJC_IVAR___SFTabIconRegistration_wrapped] = v16;
  v23.receiver = v20;
  v23.super_class = SFTabIconRegistration;
  return objc_msgSendSuper2(&v23, sel_init);
}

void sub_18B99972C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_18BC1E1A8();
  v4 = a2;
  v3(a2);
}

id _sSo13SFTabIconPoolC12MobileSafariEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_18B999A54(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_18B99AC18(a1);
  }
}

uint64_t sub_18B999AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v135 = a3;
  v137 = a2;
  v141 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v132 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v133 = &v126 - v6;
  v7 = _s4ItemVMa_4();
  v142 = *(v7 - 1);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v126 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v128 = &v126 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v127 = (&v126 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v126 - v14;
  v131 = _s7ContentVMa_4();
  v16 = MEMORY[0x1EEE9AC00](v131);
  v134 = (&v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v129 = (&v126 - v18);
  v19 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v130 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v136 = &v126 - v22;
  v23 = _s4ItemVMa();
  v140 = *(v23 - 1);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v138 = &v126 - v27;
  v28 = &unk_18BC49EA0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v126 - v30;
  v32 = _s4PageVMa();
  v33 = *(v32 - 1);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B7CA054(v141, v31, &qword_1EA9D52E0);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    v36 = &qword_1EA9D52E0;
    return sub_18B988BAC(v31, v36);
  }

  sub_18B99B254(v31, v35, _s4PageVMa);
  v31 = v136;
  sub_18B7CA054(v137, v136, &qword_1EA9D7CD0);
  if ((*(v140 + 48))(v31, 1, v23) == 1)
  {
    sub_18B7DFEA4(v35, _s4PageVMa);
    v36 = &qword_1EA9D7CD0;
    return sub_18B988BAC(v31, v36);
  }

  sub_18B99B254(v31, v138, _s4ItemVMa);
  sub_18B7CA054(v135, &v147, &unk_1EA9D5060);
  v38 = &qword_1EA9D4000;
  v137 = v35;
  if (!v148)
  {
    sub_18B988BAC(&v147, &unk_1EA9D5060);
    v55 = v130;
    goto LABEL_18;
  }

  sub_18B7C3FA4(&v147, &v143);
  v39 = *(*(v139 + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher) + qword_1EA9F8558);
  v40 = *(v39 + 24);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    goto LABEL_49;
  }

  *(v39 + 24) = v42;
  if (v42 == 1)
  {
    swift_beginAccess();
    v43 = *(v39 + 16);
    v44 = *(v43 + 16);
    if (v44)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v45 = v43 + 40;
      do
      {
        v46 = *(v45 - 8);
        LOBYTE(v147) = *(v39 + 24) > 0;
        sub_18BC1E1A8();
        v46(&v147);

        v45 += 16;
        --v44;
      }

      while (v44);
    }
  }

  v47 = __swift_project_boxed_opaque_existential_1Tm(&v143, *(&v144 + 1));
  v48 = swift_allocObject();
  v49 = v139;
  *(v48 + 16) = v139;
  v28 = *v47;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_18B99B2BC;
  *(v39 + 24) = v48;
  swift_beginAccess();
  v32 = *(v28 + 32);
  v50 = v49;
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 32) = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v53 = v32[2];
    v52 = v32[3];
    if (v53 >= v52 >> 1)
    {
      v32 = sub_18B9B5814((v52 > 1), v53 + 1, 1, v32);
    }

    v32[2] = v53 + 1;
    v54 = &v32[2 * v53];
    v54[4] = sub_18B7D1E94;
    v54[5] = v39;
    *(v28 + 32) = v32;
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1Tm(&v143);
    v55 = v130;
    v38 = &qword_1EA9D4000;
LABEL_18:
    v56 = *(v139 + v38[161]);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v58 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF500(Strong + v58, v55, _s7ContentVMa);

    LOBYTE(v58) = *(v55 + 2);
    sub_18B7DFEA4(v55, _s7ContentVMa);
    *(v56 + qword_1EA9F8518) = (v58 & 1) == 0;
    if (v58)
    {
      v59 = sub_18B7C37F4();
      if ([v59 isEnabled])
      {
        [v59 setEnabled_];
        [v59 setEnabled_];
      }
    }

    v60 = sub_18BBD9DE0();
    v61 = *(v60 + 16);
    v62 = MEMORY[0x1E69E7CC0];
    v136 = v56;
    if (v61)
    {
      *&v143 = MEMORY[0x1E69E7CC0];
      sub_18B9B67B4(0, v61, 0);
      v63 = v143;
      v64 = (*(v140 + 80) + 32) & ~*(v140 + 80);
      v130 = v60;
      v65 = v60 + v64;
      v141 = *(v140 + 72);
      do
      {
        sub_18B7DF500(v65, v26, _s4ItemVMa);
        v66 = *v26;
        v67 = v23[7];
        v68 = v7[5];
        v69 = sub_18BC1EC08();
        (*(*(v69 - 8) + 16))(&v15[v68], &v26[v67], v69);
        v70 = v26[v23[8]];
        v71 = v26[v23[11]];
        v72 = *&v26[v23[12]];
        v73 = *&v26[v23[14]];
        v74 = &v26[v23[15]];
        v76 = *v74;
        v75 = v74[1];
        *v15 = v66;
        v15[v7[6]] = v70;
        v15[v7[7]] = v71;
        *&v15[v7[8]] = v72;
        *&v15[v7[9]] = v73;
        v77 = &v15[v7[10]];
        *v77 = v76;
        *(v77 + 1) = v75;
        sub_18BC1E3F8();
        sub_18BC1E3F8();
        sub_18B7DFEA4(v26, _s4ItemVMa);
        *&v143 = v63;
        v79 = v63[2];
        v78 = v63[3];
        if (v79 >= v78 >> 1)
        {
          sub_18B9B67B4(v78 > 1, v79 + 1, 1);
          v63 = v143;
        }

        v63[2] = v79 + 1;
        sub_18B99B254(v15, v63 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v79, _s4ItemVMa_4);
        v65 += v141;
        --v61;
      }

      while (v61);
      v139 = v63;

      v62 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v139 = MEMORY[0x1E69E7CC0];
    }

    v80 = sub_18BBDA02C();
    v81 = *(v80 + 16);
    if (v81)
    {
      *&v143 = v62;
      sub_18B9B67B4(0, v81, 0);
      v82 = v143;
      v83 = (*(v140 + 80) + 32) & ~*(v140 + 80);
      v130 = v80;
      v84 = v80 + v83;
      v141 = *(v140 + 72);
      v85 = v128;
      do
      {
        sub_18B7DF500(v84, v26, _s4ItemVMa);
        v86 = *v26;
        v87 = v23[7];
        v88 = v7[5];
        v89 = sub_18BC1EC08();
        (*(*(v89 - 8) + 16))(&v85[v88], &v26[v87], v89);
        v90 = v26[v23[8]];
        v91 = v26[v23[11]];
        v92 = *&v26[v23[12]];
        v93 = *&v26[v23[14]];
        v94 = &v26[v23[15]];
        v96 = *v94;
        v95 = v94[1];
        *v85 = v86;
        v85[v7[6]] = v90;
        v85[v7[7]] = v91;
        *&v85[v7[8]] = v92;
        *&v85[v7[9]] = v93;
        v97 = &v85[v7[10]];
        *v97 = v96;
        v97[1] = v95;
        sub_18BC1E3F8();
        sub_18BC1E3F8();
        sub_18B7DFEA4(v26, _s4ItemVMa);
        *&v143 = v82;
        v99 = *(v82 + 16);
        v98 = *(v82 + 24);
        if (v99 >= v98 >> 1)
        {
          sub_18B9B67B4(v98 > 1, v99 + 1, 1);
          v82 = v143;
        }

        *(v82 + 16) = v99 + 1;
        sub_18B99B254(v85, v82 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v99, _s4ItemVMa_4);
        v84 += v141;
        --v81;
      }

      while (v81);
    }

    else
    {

      v82 = MEMORY[0x1E69E7CC0];
    }

    v141 = sub_18BBA2DDC(v82);

    v100 = v138;
    v101 = *v138;
    v102 = v23[7];
    v103 = v7[5];
    v104 = sub_18BC1EC08();
    v32 = v133;
    (*(*(v104 - 8) + 16))(&v133[v103], &v100[v102], v104);
    v105 = v100[v23[8]];
    v106 = v100[v23[11]];
    v107 = *&v100[v23[12]];
    v108 = *&v100[v23[14]];
    v109 = &v100[v23[15]];
    v110 = *v109;
    v111 = v109[1];
    *v32 = v101;
    *(v32 + v7[6]) = v105;
    *(v32 + v7[7]) = v106;
    *(v32 + v7[8]) = v107;
    *(v32 + v7[9]) = v108;
    v112 = (v32 + v7[10]);
    *v112 = v110;
    v112[1] = v111;
    v113 = v142;
    v114 = *(v142 + 56);
    v114(v32, 0, 1, v7);
    v115 = v131;
    v116 = *(v131 + 24);
    v117 = v134;
    v114((v134 + v116), 1, 1, v7);
    v15 = v117 + *(v115 + 28);
    *v15 = 0;
    v15[8] = 1;
    v118 = v139;
    v119 = v141;
    *v117 = v139;
    v117[1] = v119;
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18B7C267C(v32, v117 + v116);
    v120 = v132;
    sub_18B7CA054(v32, v132, &qword_1EA9DBE00);
    if ((*(v113 + 48))(v120, 1, v7) == 1)
    {

      sub_18B988BAC(v32, &qword_1EA9DBE00);
      sub_18B988BAC(v120, &qword_1EA9DBE00);
      v121 = v129;
      v122 = v137;
      goto LABEL_47;
    }

    v23 = v127;
    sub_18B99B254(v120, v127, _s4ItemVMa_4);
    v39 = *(v118 + 2);
    v122 = v137;
    v123 = v118;
    v28 = 0;
    if (!v39)
    {
      break;
    }

    v26 = v126;
    while (v28 < *(v123 + 2))
    {
      sub_18B7DF500(&v123[((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v28], v26, _s4ItemVMa_4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7DFEA4(v26, _s4ItemVMa_4);
      if (updated)
      {
        goto LABEL_45;
      }

      ++v28;
      v123 = v139;
      if (v39 == v28)
      {
        v28 = 0;
LABEL_45:
        v125 = updated ^ 1;
        v121 = v129;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v32 = sub_18B9B5814(0, v32[2] + 1, 1, v32);
    *(v28 + 32) = v32;
  }

  v125 = 1;
  v121 = v129;
LABEL_46:

  sub_18B7DFEA4(v23, _s4ItemVMa_4);
  sub_18B988BAC(v32, &qword_1EA9DBE00);
  *v15 = v28;
  v15[8] = v125 & 1;
LABEL_47:
  sub_18B99B254(v134, v121, _s7ContentVMa_4);
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  sub_18BBC3AF0(v121, &v143, v135);
  sub_18B988BAC(&v143, &unk_1EA9D53A0);
  sub_18B7DFEA4(v121, _s7ContentVMa_4);
  sub_18B7DFEA4(v138, _s4ItemVMa);
  return sub_18B7DFEA4(v122, _s4PageVMa);
}

uint64_t sub_18B99AB30(uint64_t result)
{
  v1 = *(*(result + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher) + qword_1EA9F8558);
  v2 = *(v1 + 24);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
    if (!v4)
    {
      result = swift_beginAccess();
      v5 = *(v1 + 16);
      v6 = *(v5 + 16);
      if (v6)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v7 = v5 + 40;
        do
        {
          v8 = *(v7 - 8);
          v9 = *(v1 + 24) > 0;
          sub_18BC1E1A8();
          v8(&v9);

          v7 += 16;
          --v6;
        }

        while (v6);
      }
    }
  }

  return result;
}

uint64_t sub_18B99AC18(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v32 - v5;
  v6 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = _s4ItemVMa();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v17 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF500(Strong + v17, v8, _s7ContentVMa);

  v35 = a1 + *(_s4ItemVMa_4() + 20);
  sub_18BB17290(sub_18B99B24C, v34, v11);
  sub_18B7DFEA4(v8, _s7ContentVMa);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_18B988BAC(v11, &qword_1EA9D7CD0);
  }

  sub_18B99B254(v11, v15, _s4ItemVMa);
  v19 = swift_unknownObjectUnownedLoadStrong();
  v20 = *&v19[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemSelectionHandler];
  sub_18BC1E1A8();

  v20(v15);

  v21 = *(v2 + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher) + qword_1EA9F8528;
  swift_beginAccess();
  if (*(v21 + 24))
  {
    sub_18B80DBC4(v21, &v39);
    if (!*(&v40 + 1))
    {
      goto LABEL_10;
    }

LABEL_7:
    sub_18B80DBC4(&v39, v36);
    if (*(&v40 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v39);
    }

    v24 = v37;
    v25 = v38;
    __swift_project_boxed_opaque_existential_1Tm(v36, v37);
    (*(v25 + 32))(&v15[*(v12 + 28)], "selecting item", 14, 2, v24, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    goto LABEL_10;
  }

  v22 = *v21;
  v23 = *(v21 + 16);
  v41 = *(v21 + 32);
  v39 = v22;
  v40 = v23;
  if (*(&v23 + 1))
  {
    goto LABEL_7;
  }

LABEL_10:
  v26 = sub_18B7EBEFC();
  v27 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
  swift_beginAccess();
  v28 = v26 + v27;
  v29 = v33;
  sub_18B7CA054(v28, v33, &qword_1EA9D4520);

  v30 = _s17PinchGestureStateVMa(0);
  LODWORD(v26) = (*(*(v30 - 8) + 48))(v29, 1, v30);
  sub_18B988BAC(v29, &qword_1EA9D4520);
  if (v26 != 1)
  {
    v31 = swift_unknownObjectUnownedLoadStrong();
    sub_18BAF228C(v15);
  }

  return sub_18B7DFEA4(v15, _s4ItemVMa);
}

id sub_18B99B0D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v4);

  sub_18B7DFD58(v4);
  *&v1[qword_1EA9F8568 + 128] = v4[4];
  return [v1 setNeedsLayout];
}

void sub_18B99B184()
{
  v1 = *(v0 + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_transitionContainerView);
}

id sub_18B99B1C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickTabSwitcherDisplayItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B99B254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B99B2C4()
{
  swift_beginAccess();
  result = *(v0 + 32);
  v54 = *(result + 16);
  if (!v54)
  {
    return result;
  }

  v53 = result + 32;
  result = sub_18BC1E3F8();
  v2 = 0;
  v3 = &selRef_setContentMode_;
  v52 = result;
  while (v2 < *(result + 16))
  {
    sub_18B99B8C0(v53 + 144 * v2, v83);
    v4 = v84;
    swift_getObjectType();
    (*(v4 + 48))();
    swift_getAssociatedTypeWitness();
    sub_18B7F4394();
    v5 = sub_18BC21C48();

    v55 = v2;
    if (v5 >> 62)
    {
      result = sub_18BC219A8();
      v6 = result;
      if (!result)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_3;
      }
    }

    if (v6 < 1)
    {
      goto LABEL_37;
    }

    v7 = 0;
    v57 = v5;
    v58 = v5 & 0xC000000000000001;
    v56 = v6;
    do
    {
      if (v58)
      {
        v8 = MEMORY[0x18CFFD010](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      type metadata accessor for TabThumbnailView();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        v12 = OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView;
        v13 = *(v10 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView);
        v14 = v9;
        v15 = v3;
        [v13 v3[108]];
        v16 = v11 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration;
        v81[0] = *(v11 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
        v18 = *(v11 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32);
        v17 = *(v11 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48);
        v19 = *(v11 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16);
        *(v82 + 9) = *(v11 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57);
        v81[2] = v18;
        v82[0] = v17;
        v81[1] = v19;
        v20 = *&v81[0];
        v21 = *(v11 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 24);
        v22 = *(v11 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 56);
        v78 = *(v11 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 40);
        v79 = v22;
        v80 = *(v11 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 72);
        v76 = *(v11 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 8);
        v77 = v21;
        if (*&v81[0])
        {
          *v75 = *&v81[0];
          *&v75[24] = v77;
          *&v75[40] = v78;
          *&v75[56] = v79;
          v75[72] = v80;
          *&v75[8] = v76;
          sub_18B99B970(v81, v73);
          v23 = v20;
          sub_18B99B9E0(v75);
          v24 = [v23 layer];
          v25 = sub_18BC20B98();
          [v24 removeAnimationForKey_];
        }

        else
        {
          *v75 = 0;
          *&v75[24] = v77;
          *&v75[40] = v78;
          *&v75[56] = v79;
          v75[72] = v80;
          *&v75[8] = v76;
          sub_18B99B970(v81, v73);
          sub_18B99B9E0(v75);
        }

        v73[0] = *v16;
        v26 = *(v16 + 16);
        v27 = *(v16 + 32);
        v28 = *(v16 + 48);
        *(v74 + 9) = *(v16 + 57);
        v73[2] = v27;
        v74[0] = v28;
        v73[1] = v26;
        *(v16 + 32) = 0u;
        *(v16 + 48) = 0u;
        *(v16 + 57) = 0u;
        *v16 = 0u;
        *(v16 + 16) = 0u;
        sub_18B99B9E0(v73);
        *v75 = *v16;
        v30 = *(v16 + 32);
        v29 = *(v16 + 48);
        v31 = *(v16 + 16);
        *&v75[57] = *(v16 + 57);
        *&v75[32] = v30;
        *&v75[48] = v29;
        *&v75[16] = v31;
        v32 = *v75;
        if (*v75)
        {
          if (v75[72])
          {
            v33 = *(v11 + v12);
            v34 = *v75;
            [v33 v15 + 1656];
            [*(v11 + v12) addSubview_];
            v35 = *v75;
          }

          else
          {
            v35 = *v75;
          }

          v36 = *(v11 + OBJC_IVAR___SFTabThumbnailView_capsuleMatchMoveReferenceView);
          v37 = v35;
          v38 = [v32 layer];
          v39 = [v36 layer];
          sub_18BAE31BC(v39);

          sub_18B99B9E0(v75);
          [v32 v15 + 1656];
          v40 = sub_18BA188F4();
          [v40 presentationValue];
          v42 = v41;

          v43 = _SFUninterpolate(v42, 0.2, 0.9);
          v71[0] = *v16;
          v44 = *(v16 + 16);
          v45 = *(v16 + 32);
          v46 = *(v16 + 48);
          *(v72 + 9) = *(v16 + 57);
          v71[2] = v45;
          v72[0] = v46;
          v71[1] = v44;
          v47 = *&v71[0];
          v48 = *(v16 + 24);
          v49 = *(v16 + 56);
          v68 = *(v16 + 40);
          v69 = v49;
          v70 = *(v16 + 72);
          v66 = *(v16 + 8);
          v67 = v48;
          v3 = v15;
          if (*&v71[0])
          {
            v62 = v67;
            v63 = v68;
            v64 = v69;
            if (v43 <= 0.0)
            {
              v43 = 0.0;
            }

            if (v43 <= 1.0)
            {
              v50 = v43;
            }

            else
            {
              v50 = 1.0;
            }

            v60 = *&v71[0];
            v65 = v70;
            v61 = v66;
            sub_18B99B970(v71, v59);
            v51 = v47;
            sub_18B99B9E0(&v60);
            [v51 setAlpha_];
          }

          else
          {
            v60 = 0;
            v62 = v67;
            v63 = v68;
            v64 = v69;
            v65 = v70;
            v61 = v66;
            sub_18B99B970(v71, v59);
            sub_18B99B9E0(&v60);
          }

          v6 = v56;
          v5 = v57;
          sub_18BA18614();

          sub_18B99B9E0(v75);
        }

        else
        {

          v3 = v15;
          v6 = v56;
          v5 = v57;
        }
      }

      else
      {
      }

      ++v7;
    }

    while (v6 != v7);
LABEL_3:
    v2 = v55 + 1;

    sub_18B99B91C(v83);
    result = v52;
    if (v55 + 1 == v54)
    {
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_18B99B970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B99B9E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B99BA48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_18BC1E8B8();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_18BC1E8D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_18BC1E4F8();
  __swift_allocate_value_buffer(v10, qword_1EA9F7910);
  __swift_project_value_buffer(v10, qword_1EA9F7910);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_18BC1E8F8();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_18BC1E4E8();
}

uint64_t sub_18B99BD34()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18B99BD98()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18B99BDE4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_18BC21E28();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_18B99BE88(uint64_t a1)
{
  v2 = sub_18B99D3E0();

  return MEMORY[0x1EEDB2C18](a1, v2);
}

uint64_t sub_18B99BED8(uint64_t a1)
{
  v2 = sub_18B99D360();

  return MEMORY[0x1EEDB3D70](a1, v2);
}

uint64_t sub_18B99BF34()
{
  v0 = sub_18BC1E8B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_18BC1E8F8();
}

uint64_t sub_18B99C23C()
{
  v0 = sub_18BC1E8B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v6, qword_1EA9F7928);
  __swift_project_value_buffer(v6, qword_1EA9F7928);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_18BC1E8F8();
}

uint64_t sub_18B99C450(uint64_t a1)
{
  v2 = sub_18BC1E078();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_18BC1E0B8();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_18B99C540(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BC1E098();
  return sub_18B99C5B4;
}

void (*sub_18B99C5DC(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BC1E098();
  return sub_18B99E80C;
}

void sub_18B99C650(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_18B99C6F0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_18B99C7B8()
{
  sub_18BC1DF98();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B99C81C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B99E010();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SFSiriLinkCoordinator.changeReaderModeInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC41888;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B807EB0();
  return sub_18BC1F028();
}

uint64_t sub_18B99C8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  v5 = sub_18BC1E078();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_18BC20F28();
  v4[11] = sub_18BC20F18();
  v7 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18B99C9EC, v7, v6);
}

uint64_t sub_18B99C9EC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong, v3 = [Strong actionPerformer], v2, !v3))
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v12 = sub_18BC1DE48();
    v13 = __swift_project_value_buffer(v12, qword_1EA9F8578);
    sub_18B99E75C(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v12 - 8) + 16))(v14, v13, v12);
    swift_willThrow();
    goto LABEL_12;
  }

  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v4 = sub_18BC1F2C8();
  __swift_project_value_buffer(v4, qword_1EA9F7EC8);
  v5 = sub_18BC1F2A8();
  v6 = sub_18BC21218();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_18B7AC000, v5, v6, "Change Reader Mode via view-based action.", v7, 2u);
    MEMORY[0x18CFFEEE0](v7, -1, -1);
  }

  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];

  sub_18BC1E0A8();
  v11 = (*(v9 + 88))(v8, v10);
  if (v11 != *MEMORY[0x1E695A100])
  {
    if (v11 == *MEMORY[0x1E695A0F0])
    {
      [v3 setReaderModeEnabled_];
      goto LABEL_15;
    }

    if (v11 == *MEMORY[0x1E695A0F8])
    {
      [v3 toggleReaderMode];
      goto LABEL_15;
    }

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[8];
    v21 = sub_18BC1DE48();
    v22 = __swift_project_value_buffer(v21, qword_1EA9F8578);
    sub_18B99E75C(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v21 - 8) + 16))(v23, v22, v21);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v19 + 8))(v18, v20);
LABEL_12:

    v15 = v0[1];
    goto LABEL_16;
  }

  [v3 setReaderModeEnabled_];
LABEL_15:
  v16 = v0[5];
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0);
  v16[4] = sub_18B7B0B08(&qword_1EA9D45B8, &qword_1EA9D45C0);
  __swift_allocate_boxed_opaque_existential_0Tm(v16);
  sub_18BC1DF98();
  swift_unknownObjectRelease();

  v15 = v0[1];
LABEL_16:

  return v15();
}

uint64_t sub_18B99CE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_18B7B6968;

  return sub_18B99C8F4(a1, a2, a3, v3);
}

uint64_t sub_18B99CF1C(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return v9(a1, v5, v6);
}

uint64_t sub_18B99D028(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18B99CF1C(a1, a2, v6);
}

unint64_t sub_18B99D0F4()
{
  result = qword_1EA9D4530;
  if (!qword_1EA9D4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4530);
  }

  return result;
}

unint64_t sub_18B99D14C()
{
  result = qword_1EA9D4538;
  if (!qword_1EA9D4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4538);
  }

  return result;
}

unint64_t sub_18B99D1A4()
{
  result = qword_1EA9D4540;
  if (!qword_1EA9D4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4540);
  }

  return result;
}

unint64_t sub_18B99D1FC()
{
  result = qword_1EA9D4548;
  if (!qword_1EA9D4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4548);
  }

  return result;
}

unint64_t sub_18B99D260()
{
  result = qword_1EA9D4550;
  if (!qword_1EA9D4550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4550);
  }

  return result;
}

unint64_t sub_18B99D2B4()
{
  result = qword_1EA9D4558;
  if (!qword_1EA9D4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4558);
  }

  return result;
}

unint64_t sub_18B99D308()
{
  result = qword_1EA9D4560;
  if (!qword_1EA9D4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4560);
  }

  return result;
}

unint64_t sub_18B99D360()
{
  result = qword_1EA9D4568;
  if (!qword_1EA9D4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4568);
  }

  return result;
}

unint64_t sub_18B99D3E0()
{
  result = qword_1EA9D4570;
  if (!qword_1EA9D4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4570);
  }

  return result;
}

unint64_t sub_18B99D438()
{
  result = qword_1EA9D4578;
  if (!qword_1EA9D4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4578);
  }

  return result;
}

unint64_t sub_18B99D490()
{
  result = qword_1EA9D4580;
  if (!qword_1EA9D4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4580);
  }

  return result;
}

unint64_t sub_18B99D4E8()
{
  result = qword_1EA9D4588;
  if (!qword_1EA9D4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4588);
  }

  return result;
}

unint64_t sub_18B99D584()
{
  result = qword_1EA9D45A0;
  if (!qword_1EA9D45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D45A0);
  }

  return result;
}

uint64_t sub_18B99D680(uint64_t *a1, int a2)
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

uint64_t sub_18B99D6C8(uint64_t result, int a2, int a3)
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

uint64_t sub_18B99D714(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18B99CF1C(a1, a2, v6);
}

unint64_t sub_18B99D7DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v20 = &v18 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v19 = sub_18BC1E8B8();
  v5 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_18BC1E8D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4610);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4618) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18BC3E410;
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v5 + 104))(v7, *MEMORY[0x1E6968DF0], v19);
  sub_18BC1E8F8();
  (*(v11 + 56))(v4, 1, 1, v10);
  v15 = sub_18BC1E398();
  (*(*(v15 - 8) + 56))(v20, 1, 1, v15);
  sub_18BC1E3A8();
  v16 = sub_18BA64EE8(v14);
  swift_setDeallocating();
  sub_18B99E6F4(v14 + v13);
  swift_deallocClassInstance();
  return v16;
}

uint64_t sub_18B99DBFC(void *a1)
{
  v2 = sub_18BC1E078();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v27 - v14;
  v31 = a1;
  v16 = [a1 isShowingReader];
  v17 = (v3 + 104);
  if (!v16)
  {
    sub_18BC1E0A8();
    (*v17)(v5, *MEMORY[0x1E695A100], v2);
    sub_18B99E75C(&qword_1EA9D45F8, MEMORY[0x1E695A110]);
    sub_18BC20D68();
    sub_18BC20D68();
    if (v29 == v27 && v30 == v28)
    {
      v20 = *(v3 + 8);
      v20(v5, v2);
      v20(v8, v2);

      v19 = 1;
    }

    else
    {
      v24 = sub_18BC21FD8();
      v25 = *(v3 + 8);
      v25(v5, v2);
      v25(v8, v2);

      if (v24)
      {
        v19 = 1;
      }

      else
      {
        result = [v31 isReaderAvailable];
        if (result)
        {
          return result;
        }

        v19 = 2;
      }
    }

    goto LABEL_14;
  }

  sub_18BC1E0A8();
  (*v17)(v11, *MEMORY[0x1E695A0F0], v2);
  sub_18B99E75C(&qword_1EA9D45F8, MEMORY[0x1E695A110]);
  sub_18BC20D68();
  sub_18BC20D68();
  if (v29 == v27 && v30 == v28)
  {
    v18 = *(v3 + 8);
    v18(v11, v2);
    v18(v15, v2);

    v19 = 0;
LABEL_14:
    sub_18B99E6A0();
    swift_allocError();
    *v26 = v19;
    return swift_willThrow();
  }

  v21 = sub_18BC21FD8();
  v22 = *(v3 + 8);
  v22(v11, v2);
  v22(v15, v2);

  v19 = 0;
  if (v21)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_18B99E010()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v40 = &v27 - v1;
  v2 = sub_18BC1E8B8();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_18BC1E488();
  v8 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - v17;
  v19 = sub_18BC1E8D8();
  v29 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D8);
  sub_18BC1E8A8();
  v28 = *(v20 + 56);
  v28(v18, 1, 1, v19);
  v43 = 1;
  v21 = sub_18BC1DF68();
  v22 = *(*(v21 - 8) + 56);
  v22(v15, 1, 1, v21);
  v27 = v12;
  v22(v12, 1, 1, v21);
  v30 = *MEMORY[0x1E695A4F8];
  v23 = *(v8 + 104);
  v31 = v8 + 104;
  v32 = v23;
  v23(v41);
  sub_18B99D3E0();
  v35 = sub_18BC1E0F8();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45E0);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v38 + 104))(v37, *MEMORY[0x1E6968DF0], v39);
  sub_18BC1E8F8();
  v28(v18, 1, 1, v29);
  v24 = sub_18BC1E078();
  (*(*(v24 - 8) + 56))(v40, 1, 1, v24);
  v22(v15, 1, 1, v21);
  v22(v27, 1, 1, v21);
  v32(v41, v30, v42);
  v25 = MEMORY[0x1E695A110];
  sub_18B99E75C(&qword_1EA9D45E8, MEMORY[0x1E695A110]);
  sub_18BC21AE8();
  sub_18B99E75C(&qword_1EA9D45F0, v25);
  sub_18BC1E0F8();
  return v35;
}

unint64_t sub_18B99E6A0()
{
  result = qword_1EA9D4600;
  if (!qword_1EA9D4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4600);
  }

  return result;
}

uint64_t sub_18B99E6F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B99E75C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18B99E7B8()
{
  result = qword_1EA9D4628;
  if (!qword_1EA9D4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4628);
  }

  return result;
}

id sub_18B99E9A4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR___SFTabOverviewLargeTitleView_configuration];
  *v9 = 257;
  v9[2] = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = CGRectMake;
  *(v9 + 3) = 0;
  *(v9 + 4) = CGRectMake;
  *(v9 + 5) = 0;
  *(v9 + 6) = CGRectMake;
  *(v9 + 7) = 0;
  *(v9 + 8) = 0;
  *(v9 + 9) = 0;
  *(v9 + 10) = CGRectMake;
  *(v9 + 11) = 0;
  v9[96] = 1;
  *(v9 + 13) = CGRectMake;
  *(v9 + 14) = 0;
  *(v9 + 15) = 0;
  *(v9 + 16) = 0;
  v9[136] = 0;
  v10 = OBJC_IVAR___SFTabOverviewLargeTitleView_collaborationButtonWrapper;
  type metadata accessor for CollaborationButtonWrapper();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR___SFTabOverviewLargeTitleView_placeholderButton;
  type metadata accessor for BlurrableButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR___SFTabOverviewLargeTitleView_shareButton;
  *&v4[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  *&v4[OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextFieldToTrailingButtonConstraint] = 0;
  v15 = OBJC_IVAR___SFTabOverviewLargeTitleView_cancelEditingButton;
  *&v4[v15] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR___SFTabOverviewLargeTitleView_trailingButtonConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR___SFTabOverviewLargeTitleView_trailingButtons] = v16;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for TabOverviewLargeTitleView();
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18B99EDC0();

  return v17;
}

id sub_18B99EBBC(void *a1)
{
  v3 = &v1[OBJC_IVAR___SFTabOverviewLargeTitleView_configuration];
  *v3 = 257;
  v3[2] = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = CGRectMake;
  *(v3 + 3) = 0;
  *(v3 + 4) = CGRectMake;
  *(v3 + 5) = 0;
  *(v3 + 6) = CGRectMake;
  *(v3 + 7) = 0;
  *(v3 + 8) = 0;
  *(v3 + 9) = 0;
  *(v3 + 10) = CGRectMake;
  *(v3 + 11) = 0;
  v3[96] = 1;
  *(v3 + 13) = CGRectMake;
  *(v3 + 14) = 0;
  *(v3 + 15) = 0;
  *(v3 + 16) = 0;
  v3[136] = 0;
  v4 = OBJC_IVAR___SFTabOverviewLargeTitleView_collaborationButtonWrapper;
  type metadata accessor for CollaborationButtonWrapper();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR___SFTabOverviewLargeTitleView_placeholderButton;
  type metadata accessor for BlurrableButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v1[v5] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7 = OBJC_IVAR___SFTabOverviewLargeTitleView_shareButton;
  *&v1[v7] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  *&v1[OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextFieldToTrailingButtonConstraint] = 0;
  v9 = OBJC_IVAR___SFTabOverviewLargeTitleView_cancelEditingButton;
  *&v1[v9] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___SFTabOverviewLargeTitleView_trailingButtonConstraints] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___SFTabOverviewLargeTitleView_trailingButtons] = v10;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for TabOverviewLargeTitleView();
  v11 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    sub_18B99EDC0();
  }

  return v12;
}

void sub_18B99EDC0()
{
  v1 = sub_18BC21628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  *&v6 = MEMORY[0x1EEE9AC00](v5 - 8).n128_u64[0];
  v8 = &v55 - v7;
  v55 = v0;
  v9 = *&v0[OBJC_IVAR___SFTabOverviewLargeTitleView_cancelEditingButton];
  [v9 addTarget:v0 action:sel_cancelEditingButtonReceivedTap forControlEvents:{0x2000, v6}];
  sub_18BC216D8();
  v60 = *MEMORY[0x1E69DC508];
  v59 = *(v2 + 104);
  v59(v4);
  sub_18BC21638();
  sub_18BC21788();
  v10 = objc_opt_self();
  v11 = [v10 configurationWithScale_];
  sub_18BC215F8();
  v56 = sub_18BC21808();
  v12 = *(v56 - 8);
  v57 = *(v12 + 56);
  v58 = v12 + 56;
  v57(v8, 0, 1, v56);
  sub_18BC21828();
  v64 = v9;
  [v9 setPointerInteractionEnabled_];
  v63 = *MEMORY[0x1E69DDC58];
  v13 = v63;
  [v9 setMaximumContentSizeCategory_];
  LODWORD(v14) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v14];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = v55;
  v16 = *&v55[OBJC_IVAR___SFTabOverviewLargeTitleView_collaborationButtonWrapper];
  [v16 setMaximumContentSizeCategory_];
  [v16 &selRef:0 showPromptForExtensionDisabledBecauseItDoesNotSupportThisVersionOfSafariWithMessage:? extensionIdentifier:? + 2];
  v17 = *&v15[OBJC_IVAR___SFTabOverviewLargeTitleView_placeholderButton];
  v18 = v15;
  v19 = sub_18BC20B98();
  v61 = objc_opt_self();
  v20 = [v61 systemImageNamed_];

  sub_18BC216D8();
  (v59)(v4, v60, v1);
  sub_18BC21638();
  v21 = v20;
  sub_18BC21788();
  v22 = [v10 configurationWithScale_];
  sub_18BC215F8();

  v23 = v56;
  v24 = v57;
  v57(v8, 0, 1, v56);
  v62 = v17;
  sub_18BC21828();
  [v17 setHidden_];
  [v17 &selRef:0 showPromptForExtensionDisabledBecauseItDoesNotSupportThisVersionOfSafariWithMessage:? extensionIdentifier:? + 2];
  v25 = v18;
  v26 = *&v18[OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField];
  v27 = sub_18BC20B98();
  [v26 setAccessibilityIdentifier_];

  [v26 setAdjustsFontForContentSizeCategory_];
  [v26 setAdjustsFontSizeToFitWidth_];
  [v26 setAutocapitalizationType_];
  [v26 setDelegate_];
  v28 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v26 setFont_];

  [v26 setReturnKeyType_];
  v29 = [objc_opt_self() labelColor];
  [v26 setTextColor_];

  [v26 &selRef:0 showPromptForExtensionDisabledBecauseItDoesNotSupportThisVersionOfSafariWithMessage:? extensionIdentifier:? + 2];
  v30 = *&v18[OBJC_IVAR___SFTabOverviewLargeTitleView_shareButton];
  v31 = sub_18BC20B98();
  [v30 setAccessibilityIdentifier_];

  [v30 addTarget:v25 action:sel_shareButtonReceivedTap forControlEvents:0x2000];
  sub_18BC21798();
  v32 = sub_18BC20B98();
  v33 = [v61 systemImageNamed_];

  sub_18BC21788();
  sub_18BC21678();
  v24(v8, 0, 1, v23);
  sub_18BC21828();
  [v30 setMaximumContentSizeCategory_];
  [v30 setPointerInteractionEnabled_];
  LODWORD(v34) = 1148846080;
  [v30 setContentCompressionResistancePriority:0 forAxis:v34];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 addSubview_];
  v35 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_18BC41E50;
  v37 = v64;
  v38 = [v64 widthAnchor];
  v39 = [v37 heightAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v36 + 32) = v40;
  v41 = v62;
  v42 = [v62 widthAnchor];
  v43 = [v41 heightAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v36 + 40) = v44;
  v45 = [v26 centerYAnchor];
  v46 = [v25 centerYAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v36 + 48) = v47;
  v48 = [v26 leadingAnchor];
  v49 = [v25 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v36 + 56) = v50;
  v51 = [v26 trailingAnchor];
  v52 = [v25 trailingAnchor];
  v53 = [v51 constraintLessThanOrEqualToAnchor_];

  *(v36 + 64) = v53;
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  v54 = sub_18BC20D88();

  [v35 activateConstraints_];

  sub_18B99F83C();
}

id sub_18B99F6AC(id result)
{
  if (!result)
  {
    return result;
  }

  if (result == 1)
  {
    v1 = sub_18BC20B98();
    v2 = [objc_opt_self() systemImageNamed_];
  }

  else
  {
    v3 = sub_18BC20B98();
    v1 = [objc_opt_self() systemImageNamed_];

    if (!v1)
    {
      return 0;
    }

    v2 = [v1 imageWithAlignmentRectInsets_];
  }

  v4 = v2;

  return v4;
}

uint64_t sub_18B99F7B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v12[0] = v2;
  *(v12 + 9) = *(a1 + 121);
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v14[0] = v6;
  *(v14 + 9) = *(a2 + 121);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  return sub_18B9A2284(v11, v13) & 1;
}

void sub_18B99F83C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration;
  if (*(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 136) == 1 && *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 2) != 0)
  {
    sub_18BC21818();
    v9 = sub_18BC21808();
    if ((*(*(v9 - 8) + 48))(v6, 1, v9))
    {
      sub_18B9A2744(v6, v3);
      sub_18BC21828();
      sub_18B9A27B4(v6);
    }

    else
    {
      sub_18B99F6AC(*(v7 + 2));
      sub_18BC21788();
      sub_18BC21828();
    }
  }

  if (*(v7 + 1) == 1)
  {
    v10 = *(v7 + 96) & (*(v7 + 136) ^ 1);
  }

  else
  {
    v10 = 1;
  }

  [*(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_shareButton) setEnabled_];
  v11 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField);
  [v11 setEnablesReturnKeyAutomatically_];
  if (*(v7 + 72))
  {
    sub_18BC1E3F8();
    v12 = sub_18BC20B98();
  }

  else
  {
    v12 = 0;
  }

  [v11 setPlaceholder_];

  if ((*(v7 + 136) & 1) == 0)
  {
    if (*(v7 + 128))
    {
      sub_18BC1E3F8();
      v13 = sub_18BC20B98();
    }

    else
    {
      v13 = 0;
    }

    [v11 setText_];
  }

  sub_18B9A1750();
}

uint64_t sub_18B99FB28()
{
  v1 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField);
  v2 = [v1 text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_18BC20BD8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration;
  v8 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 80);
  v9 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 112);
  v25 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 96);
  v26[0] = v9;
  *(v26 + 9) = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 121);
  v10 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 16);
  v11 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 48);
  v21 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 32);
  v22 = v11;
  v12 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 48);
  v13 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 80);
  v23 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 64);
  v24 = v13;
  v14 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 16);
  v20[0] = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v20[1] = v14;
  v15 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 112);
  v27[6] = v25;
  v27[7] = v15;
  v27[2] = v21;
  v27[3] = v12;
  v27[4] = v23;
  v27[5] = v8;
  v28 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 128);
  v27[0] = v20[0];
  v27[1] = v10;
  v29 = 0;
  sub_18B9A2574(v20, &v19);
  sub_18B9A2438(v27);
  sub_18B9A25AC(v27);
  if (*(v7 + 128))
  {
    sub_18BC1E3F8();
    v16 = sub_18BC20B98();
  }

  else
  {
    v16 = 0;
  }

  [v1 setText_];

  [v1 resignFirstResponder];
  v17 = *(v7 + 48);
  sub_18BC1E1A8();
  v17(v4, v6);
}

void sub_18B99FD00(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SFTabOverviewLargeTitleView_trailingButtonConstraints;
  swift_beginAccess();
  v38 = v4;
  *&v2[v4] = MEMORY[0x1E69E7CC0];

  v37 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18BC219A8())
  {
    v6 = 0;
    v33 = a1 + 32;
    v34 = OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField;
    v39 = a1 & 0xC000000000000001;
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = &selRef_setTransform_;
    v35 = i;
    v36 = a1;
    while (v39)
    {
      v16 = MEMORY[0x18CFFD010](v6, a1);
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_30;
      }

LABEL_9:
      v18 = v16;
      v19 = [v18 superview];
      if (!v19 || (v20 = v19, sub_18B7B0AC0(0, &qword_1EA9D46F0), v21 = v2, v22 = sub_18BC215C8(), v20, v21, v7 = &selRef_setTransform_, (v22 & 1) == 0))
      {
        [v2 addSubview_];
      }

      if (v37)
      {
        v23 = sub_18BC219A8();
      }

      else
      {
        v23 = *(v40 + 16);
      }

      v24 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        goto LABEL_32;
      }

      if (v6)
      {
        if (v6 == v24)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v25 = [v18 leadingAnchor];
        v26 = [*&v2[v34] v7[499]];
        v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26 constant:8.0];

        v28 = swift_beginAccess();
        MEMORY[0x18CFFC270](v28);
        if (*((*&v2[v38] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v38] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18BC20DD8();
        }

        sub_18BC20E18();
        swift_endAccess();
        v7 = &selRef_setTransform_;
        if (!v24)
        {
LABEL_4:
          v8 = [v2 v7[499]];
          v9 = 0.0;
          goto LABEL_5;
        }
      }

      if (v39)
      {
        v29 = MEMORY[0x18CFFD010](v17, a1);
      }

      else
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        if (v17 >= *(v40 + 16))
        {
          goto LABEL_34;
        }

        v29 = *(v33 + 8 * v17);
      }

      v30 = v29;
      v8 = [v29 leadingAnchor];

      v9 = 11.0;
LABEL_5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18BC41E60;
      v11 = [v18 centerYAnchor];
      v12 = [v2 centerYAnchor];
      v13 = [v11 constraintEqualToAnchor_];

      *(inited + 32) = v13;
      v14 = [v18 v7[499]];

      v15 = [v8 constraintEqualToAnchor:v14 constant:v9];
      *(inited + 40) = v15;
      swift_beginAccess();
      sub_18BA01A10(inited);
      swift_endAccess();

      ++v6;
      a1 = v36;
      if (v17 == v35)
      {
        goto LABEL_36;
      }
    }

    if (v6 >= *(v40 + 16))
    {
      goto LABEL_31;
    }

    v16 = *(a1 + 8 * v6 + 32);
    v17 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:
  v31 = objc_opt_self();
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  sub_18BC1E3F8();
  v32 = sub_18BC20D88();

  [v31 activateConstraints_];
}

void sub_18B9A01D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v21 = a1;
    v2 = sub_18BC219A8();
    a1 = v21;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v3 = a1;
  v24 = objc_opt_self();
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = v3;
    v23 = v3 & 0xC000000000000001;
    v22 = xmmword_18BC41E60;
    v6 = v2;
    v7 = v5;
    do
    {
      if (v23)
      {
        v18 = MEMORY[0x18CFFD010](v4);
      }

      else
      {
        v18 = *(v5 + 8 * v4 + 32);
      }

      v19 = v18;
      if ([v1 effectiveUserInterfaceLayoutDirection])
      {
        [v19 frame];
        MinX = CGRectGetMinX(v25);
      }

      else
      {
        [v1 bounds];
        MaxX = CGRectGetMaxX(v26);
        [v19 frame];
        MinX = MaxX - CGRectGetMaxX(v27);
      }

      ++v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
      v9 = swift_allocObject();
      *(v9 + 16) = v22;
      v10 = v19;
      v11 = [v10 centerYAnchor];
      v12 = [v1 centerYAnchor];
      v13 = [v11 constraintEqualToAnchor_];

      *(v9 + 32) = v13;
      v14 = [v1 trailingAnchor];
      v15 = [v10 trailingAnchor];

      v16 = [v14 constraintEqualToAnchor:v15 constant:MinX];
      *(v9 + 40) = v16;
      sub_18B7B0AC0(0, &qword_1EA9D4700);
      v17 = sub_18BC20D88();

      [v24 activateConstraints_];

      v5 = v7;
    }

    while (v6 != v4);
  }
}

uint64_t sub_18B9A0478(uint64_t a1)
{
  v75 = sub_18BC208F8();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_18BC20928();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_18BC20948();
  v69 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v67 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4708);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  v81 = OBJC_IVAR___SFTabOverviewLargeTitleView_trailingButtons;
  aBlock.a = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_trailingButtons);
  v15 = *&aBlock.a;
  v84 = a1;
  sub_18BC1E3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4710);
  sub_18B7B0B08(&qword_1EA9D4718, &qword_1EA9D4710);
  sub_18B9A2638(&qword_1EA9D4720, type metadata accessor for BlurrableButton);
  sub_18BC20AA8();
  v16 = v1;
  sub_18B9A2638(&qword_1EA9D4728, type metadata accessor for BlurrableButton);
  sub_18BC21DF8();
  v17 = *(v9 + 8);
  v80 = v8;
  v76 = v17;
  v17(v11, v8);
  v18 = sub_18B9A10D0();
  v77 = v14;
  v19 = sub_18B9A11DC();
  v20 = objc_opt_self();
  swift_beginAccess();
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  sub_18BC1E3F8();
  v21 = sub_18BC20D88();

  [v20 deactivateConstraints_];

  sub_18B99FD00(v15);

  v22 = objc_opt_self();
  result = [v22 areAnimationsEnabled];
  v78 = v9 + 8;
  v82 = v18;
  if (result)
  {
    v24 = v16;
    sub_18B9A01D8(v19);
    v25 = swift_allocObject();
    *(v25 + 16) = v16;
    *(v25 + 24) = v18;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_18B9A2898;
    *(v16 + 24) = v25;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_18B7D1EC4;
    *(v26 + 24) = v16;
    *&aBlock.tx = sub_18B7D1E94;
    *&aBlock.ty = v26;
    *&aBlock.a = MEMORY[0x1E69E9820];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_18B7E3BF4;
    *&aBlock.d = &block_descriptor_2;
    v27 = _Block_copy(&aBlock);
    v28 = v24;
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v22 performWithoutAnimation_];
    _Block_release(v27);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      type metadata accessor for AnimationSettings();
      inited = swift_initStaticObject();
      v31 = swift_allocObject();
      *(v31 + 16) = v28;
      *(v31 + 24) = v19;
      v32 = swift_allocObject();
      *(v32 + 16) = v28;
      *(v32 + 24) = v19;
      v33 = swift_allocObject();
      v33[2] = inited;
      v33[3] = sub_18B9A25F8;
      v33[4] = v31;
      *&aBlock.tx = sub_18B7D80AC;
      *&aBlock.ty = v33;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_18B7B0DB0;
      *&aBlock.d = &block_descriptor_58;
      v34 = _Block_copy(&aBlock);
      v66 = v28;
      sub_18BC1E3F8();
      sub_18BC1E1A8();

      *&aBlock.tx = sub_18B9A2624;
      *&aBlock.ty = v32;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_18B8043A0;
      *&aBlock.d = &block_descriptor_61;
      v35 = _Block_copy(&aBlock);
      sub_18BC1E1A8();

      [v22 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v35);
      _Block_release(v34);

      sub_18B7B0AC0(0, &unk_1EA9D3A90);
      v36 = sub_18BC21348();
      v37 = v67;
      sub_18BC20938();
      v38 = v68;
      sub_18BC20958();
      v81 = *(v69 + 8);
      v81(v37, v79);
      v39 = swift_allocObject();
      v40 = v66;
      v39[2] = inited;
      v39[3] = v40;
      v39[4] = v82;
      *&aBlock.tx = sub_18B9A262C;
      *&aBlock.ty = v39;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_18B7B0DB0;
      *&aBlock.d = &block_descriptor_67;
      v41 = _Block_copy(&aBlock);
      v42 = v40;

      v43 = v70;
      sub_18BC20908();
      *&aBlock.a = MEMORY[0x1E69E7CC0];
      sub_18B9A2638(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
      sub_18B7B0B08(&qword_1EA9D6D30, &unk_1EA9D3AA0);
      v44 = v72;
      v45 = v75;
      sub_18BC21908();
      MEMORY[0x18CFFC820](v38, v43, v44, v41);
      _Block_release(v41);

      (*(v74 + 8))(v44, v45);
      (*(v71 + 8))(v43, v73);
      v81(v38, v79);
      return v76(v77, v80);
    }

    __break(1u);
LABEL_15:
    result = sub_18BC219A8();
    v46 = v19;
    v47 = result;
    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  v46 = v19;
  if (v19 >> 62)
  {
    goto LABEL_15;
  }

  v47 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v47)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v47 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v48 = 0;
  v49 = v46 & 0xC000000000000001;
  v50 = v46;
  do
  {
    if (v49)
    {
      v51 = MEMORY[0x18CFFD010](v48);
    }

    else
    {
      v51 = *(v46 + 8 * v48 + 32);
    }

    v52 = v51;
    v53 = v16;
    v54 = *(v81 + v16);
    *&aBlock.a = v51;
    MEMORY[0x1EEE9AC00](v51);
    *(&v65 - 2) = &aBlock;
    sub_18BC1E3F8();
    v55 = sub_18B9B8B10(sub_18B9A25DC, (&v65 - 4), v54);

    if ((v55 & 1) == 0)
    {
      [v52 removeFromSuperview];
    }

    ++v48;

    v16 = v53;
    v46 = v50;
  }

  while (v47 != v48);
LABEL_16:

  v56 = v82;
  if (!(v82 >> 62))
  {
    v57 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v58 = v80;
    if (v57)
    {
      goto LABEL_18;
    }

LABEL_25:

    return v76(v77, v58);
  }

  v64 = v82;
  result = sub_18BC219A8();
  v56 = v64;
  v57 = result;
  v58 = v80;
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v57 >= 1)
  {
    v59 = 0;
    v60 = v56 & 0xC000000000000001;
    do
    {
      if (v60)
      {
        v61 = MEMORY[0x18CFFD010](v59);
      }

      else
      {
        v61 = *(v56 + 8 * v59 + 32);
      }

      v62 = v61;
      ++v59;
      [v61 setAlpha_];
      v63 = sub_18BC0F2C4();
      [v63 setValue_];

      CGAffineTransformMakeScale(&aBlock, 1.0, 1.0);
      [v62 setTransform_];

      v56 = v82;
    }

    while (v57 != v59);
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_18B9A10D0()
{
  v0 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4708);
  v1 = sub_18BC21DA8();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 57);
    do
    {
      if (*v3 & 1) == 0 && (*(v3 - 1))
      {
        v4 = *(v3 - 17);
        v5 = v4;
        v6 = v4;
        MEMORY[0x18CFFC270]();
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18BC20DD8();
        }

        sub_18BC20E18();

        v0 = v8;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_18B9A11DC()
{
  v0 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4708);
  v1 = sub_18BC21DD8();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 57);
    do
    {
      if (*v3 == 1 && (*(v3 - 1) & 1) != 0)
      {
        v4 = *(v3 - 17);
        v5 = v4;
        v6 = v4;
        MEMORY[0x18CFFC270]();
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18BC20DD8();
        }

        sub_18BC20E18();

        v0 = v8;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  return v0;
}

void sub_18B9A12EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a3;
  if (a4 >> 62)
  {
    v5 = sub_18BC219A8();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = OBJC_IVAR___SFTabOverviewLargeTitleView_trailingButtons;
    do
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x18CFFD010](v6, a4);
      }

      else
      {
        v8 = *(a4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = *(v13 + v7);
      v14 = v8;
      MEMORY[0x1EEE9AC00](v8);
      v12[2] = &v14;
      sub_18BC1E3F8();
      v11 = sub_18B9B8B10(sub_18B9A28B0, v12, v10);

      if ((v11 & 1) == 0)
      {
        [v9 removeFromSuperview];
      }

      ++v6;
    }

    while (v5 != v6);
  }
}

uint64_t sub_18B9A1444(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = sub_18B9A26C0;
  v8[4] = v6;
  v17 = sub_18B7E767C;
  v18 = v8;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_18B7B0DB0;
  v16 = &block_descriptor_77;
  v9 = _Block_copy(&v13);
  v10 = a2;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  v17 = CGRectMake;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_18B8043A0;
  v16 = &block_descriptor_80;
  v11 = _Block_copy(&v13);

  [v7 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v11);
  _Block_release(v9);
}

void sub_18B9A1614(double a1, double a2, CGFloat a3, uint64_t a4, unint64_t a5)
{
  if (a5 >> 62)
  {
    v9 = sub_18BC219A8();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = 0;
    do
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x18CFFD010](v10, a5);
      }

      else
      {
        v11 = *(a5 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      [v11 setAlpha_];
      v13 = sub_18BC0F2C4();
      [v13 setValue_];

      CGAffineTransformMakeScale(&v14, a3, a3);
      [v12 setTransform_];
    }

    while (v9 != v10);
  }
}

void sub_18B9A1750()
{
  v1 = v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration;
  if (*(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 136) == 1 && *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 2) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_18BC3E3E0;
    v11 = OBJC_IVAR___SFTabOverviewLargeTitleView_cancelEditingButton;
    goto LABEL_16;
  }

  if (*(v1 + 1) != 1)
  {
    v12 = *(v1 + 128);
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = *(v1 + 120) & 0xFFFFFFFFFFFFLL;
    if ((v12 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v12) & 0xF;
    }

    if (!v13)
    {
LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_18BC3E3E0;
      v11 = OBJC_IVAR___SFTabOverviewLargeTitleView_placeholderButton;
LABEL_16:
      v14 = *(v0 + v11);
      *(v10 + 32) = v14;
      v15 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_trailingButtons);
      *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_trailingButtons) = v10;
      v16 = v14;
      v17 = sub_18BC1E3F8();
      v18 = sub_18B98E064(v17, v15);

      if (v18)
      {
LABEL_18:

        return;
      }

LABEL_17:
      sub_18B9A0478(v15);
      goto LABEL_18;
    }

LABEL_22:
    v15 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_trailingButtons);
    v19 = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_trailingButtons) = MEMORY[0x1E69E7CC0];
    if (sub_18B98E064(v19, v15))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v3 = *(v1 + 8);
  if (!v3)
  {
    if (![objc_opt_self() isSolariumEnabled])
    {
      return;
    }

    goto LABEL_22;
  }

  v4 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_collaborationButtonWrapper);
  v5 = OBJC_IVAR____TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper_contentView;
  v6 = *&v4[OBJC_IVAR____TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper_contentView];
  *&v4[OBJC_IVAR____TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper_contentView] = v3;
  v30 = v3;
  if (!v6)
  {
    v20 = v3;
LABEL_26:
    [v6 removeFromSuperview];
    v21 = *&v4[v5];
    if (v21)
    {
      v22 = v21;
      [v22 setTranslatesAutoresizingMaskIntoConstraints_];
      [v4 addSubview_];
      v23 = objc_opt_self();
      sub_18B7DE2FC(15, v22, *MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24));
      sub_18B7B0AC0(0, &qword_1EA9D4700);
      v24 = sub_18BC20D88();

      [v23 activateConstraints_];
    }

    else
    {
    }

    v6 = v30;
    goto LABEL_31;
  }

  v7 = v0;
  sub_18B7B0AC0(0, &qword_1EA9D46F0);
  v8 = v30;
  v6 = v6;
  v9 = sub_18BC215C8();

  if ((v9 & 1) == 0)
  {
    v0 = v7;
    goto LABEL_26;
  }

  v0 = v7;
LABEL_31:

  if ([objc_opt_self() isSolariumEnabled])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18BC3E3E0;
    *(v25 + 32) = v4;
    v26 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_trailingButtons);
    *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_trailingButtons) = v25;
    v27 = v4;
    v28 = sub_18BC1E3F8();
    v29 = sub_18B98E064(v28, v26);

    if ((v29 & 1) == 0)
    {
      sub_18B9A0478(v26);
    }
  }
}

void *sub_18B9A1C2C(void *result)
{
  v2 = (v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  if (*(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 136) == 1)
  {
    v3 = result;
    v4 = [result text];
    if (v4)
    {
      v5 = v4;
      v6 = sub_18BC20BD8();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = [v3 text];
      if (v10)
      {
        v11 = v10;
        v12 = sub_18BC20BD8();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      *&v46[9] = *(v2 + 121);
      v16 = v2[7];
      v45 = v2[6];
      *v46 = v16;
      v17 = v2[3];
      v41 = v2[2];
      v42 = v17;
      v18 = v2[5];
      v43 = v2[4];
      v44 = v18;
      v19 = v2[1];
      v39 = *v2;
      v40 = v19;
      sub_18B9A2574(&v39, v47);

      v47[4] = v43;
      v47[5] = v44;
      v47[6] = v45;
      v47[0] = v39;
      v47[1] = v40;
      v47[2] = v41;
      v47[3] = v42;
      v48 = *v46;
      v49 = v12;
      v50 = v14;
      v51 = v46[24];
      sub_18B9A2438(v47);
      sub_18B9A25AC(v47);
      v20 = *(v2 + 10);
    }

    else
    {
      if (*(v2 + 16))
      {
        sub_18BC1E3F8();
        v15 = sub_18BC20B98();
      }

      else
      {
        v15 = 0;
      }

      [v3 setText_];

      v20 = *(v2 + 6);
    }

    sub_18BC1E1A8();
    v20(v6, v8);

    v21 = v2[5];
    v22 = v2[7];
    v37 = v2[6];
    v38[0] = v22;
    *(v38 + 9) = *(v2 + 121);
    v23 = v2[1];
    v24 = v2[3];
    v33 = v2[2];
    v34 = v24;
    v25 = v2[3];
    v26 = v2[5];
    v35 = v2[4];
    v36 = v26;
    v27 = v2[1];
    v32[0] = *v2;
    v32[1] = v27;
    v28 = v2[7];
    v45 = v37;
    *v46 = v28;
    v41 = v33;
    v42 = v25;
    v43 = v35;
    v44 = v21;
    *&v46[16] = *(v2 + 16);
    v39 = v32[0];
    v40 = v23;
    v46[24] = 0;
    sub_18B9A2574(v32, &v31);
    sub_18B9A2438(&v39);
    sub_18B9A25AC(&v39);
    v29 = *(v2 + 4);
    v30 = sub_18BC1E1A8();
    v29(v30);
  }

  return result;
}

uint64_t sub_18B9A1F64()
{
  v1 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 112);
  v6[6] = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 96);
  v7[0] = v1;
  *(v7 + 9) = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 121);
  v2 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 48);
  v6[2] = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 32);
  v6[3] = v2;
  v3 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 80);
  v6[4] = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 64);
  v6[5] = v3;
  v4 = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 16);
  v6[0] = *(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v6[1] = v4;
  sub_18B9A25AC(v6);
}

id sub_18B9A2054(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_18B9A21C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18B9A2210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18B9A2284(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || a1[2] != a2[2])
  {
    return 0;
  }

  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = a1;
    v5 = a2;
    sub_18B7B0AC0(0, &qword_1EA9D46F0);
    v6 = v3;
    v7 = v2;
    v8 = sub_18BC215C8();

    a1 = v4;
    a2 = v5;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((a1[136] ^ a2[136]))
  {
    return 0;
  }

  v11 = *(a1 + 9);
  v12 = *(a2 + 9);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    if (*(a1 + 8) != *(a2 + 8) || v11 != v12)
    {
      v13 = a1;
      v14 = a2;
      v15 = sub_18BC21FD8();
      a2 = v14;
      v16 = v15;
      a1 = v13;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if ((a1[96] ^ a2[96]))
  {
    return 0;
  }

  v17 = *(a1 + 16);
  v18 = *(a2 + 16);
  v9 = (v17 | v18) == 0;
  if (!v17 || !v18)
  {
    return v9;
  }

  if (*(a1 + 15) == *(a2 + 15) && v17 == v18)
  {
    return 1;
  }

  return sub_18BC21FD8();
}

uint64_t sub_18B9A2438(_OWORD *a1)
{
  v2 = a1;
  v3 = (v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v4 = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 80);
  v5 = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 112);
  v29 = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 96);
  v30[0] = v5;
  *(v30 + 9) = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 121);
  v6 = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 16);
  v7 = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 48);
  v25 = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 32);
  v26 = v7;
  v8 = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 48);
  v9 = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 80);
  v27 = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 64);
  v28 = v9;
  v10 = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 16);
  v24[0] = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v24[1] = v10;
  v11 = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 112);
  v31[6] = v29;
  v32[0] = v11;
  *(v32 + 9) = *(v1 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 121);
  v31[2] = v25;
  v31[3] = v8;
  v31[4] = v27;
  v31[5] = v4;
  v31[0] = v24[0];
  v31[1] = v6;
  v12 = a1[5];
  v3[4] = a1[4];
  v3[5] = v12;
  v13 = a1[3];
  v3[2] = a1[2];
  v3[3] = v13;
  v14 = a1[1];
  *v3 = *a1;
  v3[1] = v14;
  *(v3 + 121) = *(a1 + 121);
  v15 = a1[7];
  v3[6] = a1[6];
  v3[7] = v15;
  sub_18B9A2574(v24, v22);
  sub_18B9A2574(v2, v22);
  sub_18B9A25AC(v31);
  v16 = v3[7];
  v22[6] = v3[6];
  v23[0] = v16;
  *(v23 + 9) = *(v3 + 121);
  v17 = v3[3];
  v22[2] = v3[2];
  v22[3] = v17;
  v18 = v3[5];
  v22[4] = v3[4];
  v22[5] = v18;
  v19 = v3[1];
  v22[0] = *v3;
  v22[1] = v19;
  sub_18B9A2574(v22, &v21);
  LOBYTE(v2) = sub_18B9A2284(v22, v24);
  sub_18B9A25AC(v22);
  if ((v2 & 1) == 0)
  {
    sub_18B99F83C();
  }

  return sub_18B9A25AC(v24);
}

uint64_t sub_18B9A2638(unint64_t *a1, void (*a2)(uint64_t))
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

  return swift_deallocObject();
}

uint64_t sub_18B9A2744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B9A27B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18B9A2830()
{
  result = qword_1EA9D4738;
  if (!qword_1EA9D4738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4738);
  }

  return result;
}

uint64_t sub_18B9A28CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_18B9A2928();
  return sub_18BC215C8() & (v2 == v3);
}

unint64_t sub_18B9A2928()
{
  result = qword_1EA9D5BE0;
  if (!qword_1EA9D5BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D5BE0);
  }

  return result;
}

void sub_18B9A2974(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = *v2;
  if (a2 == 1.0)
  {
    v18 = *(v2 + 1);
    v19 = *(v2 + 3);
    sub_18BC1E3F8();
    v7 = v18;
    v6 = v19;
  }

  else
  {
    v8 = *(v5 + 16);
    if (v8)
    {
      v21 = MEMORY[0x1E69E7CC0];
      v20 = v2;
      sub_18B9B6700(0, v8, 0);
      v9 = (v5 + 40);
      v5 = v21;
      do
      {
        v10 = *v9;
        v11 = *(v9 - 1);
        [v11 alphaComponent];
        v13 = v12 * a2;
        if (v13 <= 0.0)
        {
          v13 = 0.0;
        }

        if (v13 > 1.0)
        {
          v13 = 1.0;
        }

        v14 = [v11 colorWithAlphaComponent_];

        v16 = *(v21 + 16);
        v15 = *(v21 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_18B9B6700((v15 > 1), v16 + 1, 1);
          v2 = v20;
        }

        *(v21 + 16) = v16 + 1;
        v17 = v21 + 16 * v16;
        *(v17 + 32) = v14;
        *(v17 + 40) = v10;
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v6 = *(v2 + 3);
    v7 = *(v2 + 1);
  }

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 24) = v6;
}

BOOL sub_18B9A2AFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = sub_18B98DB80(*a1, *a2);
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7)
  {
    return v4 == v8 && v5 == v9;
  }

  return result;
}

uint64_t sub_18B9A2B8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_18B9A2BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SFSiriLinkCoordinator.searchTabsInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC420A8;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B80A188();
  return sub_18BC1F028();
}

uint64_t sub_18B9A2CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_18BC1E348();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  sub_18BC20F28();
  v3[11] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18B9A2DD4, v6, v5);
}

uint64_t sub_18B9A2DD4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Search Tabs", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    v11 = v0[5];

    sub_18BC1E0A8();
    sub_18BC1E338();
    (*(v9 + 8))(v8, v10);
    v12 = sub_18BC20B98();

    [v3 performTabSearchUsingQuery_];

    v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0);
    v11[4] = sub_18B9A3450();
    __swift_allocate_boxed_opaque_existential_0Tm(v11);
    sub_18BC1DF98();
    swift_unknownObjectRelease();

    v13 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v14 = sub_18BC1DE48();
    v15 = __swift_project_value_buffer(v14, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v14 - 8) + 16))(v16, v15, v14);
    swift_willThrow();

    v13 = v0[1];
  }

  return v13();
}

uint64_t sub_18B9A30B8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18B9A2CDC(a1, a2, v2);
}

uint64_t sub_18B9A3164(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B987B10;

  return v8(a1, v5);
}

uint64_t sub_18B9A3268(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18B9A3164(a1, a2, v6);
}

uint64_t sub_18B9A3330(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18B9A3164(a1, a2, v6);
}

unint64_t sub_18B9A33F8()
{
  result = qword_1EA9D4620;
  if (!qword_1EA9D4620)
  {
    sub_18BC1DE48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4620);
  }

  return result;
}

unint64_t sub_18B9A3450()
{
  result = qword_1EA9D45B8;
  if (!qword_1EA9D45B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D45C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D45B8);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_18B9A34D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 112))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18B9A352C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

BOOL sub_18B9A359C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_18B9A3604(v13, v14);
}

BOOL sub_18B9A3604(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v2 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    v3 = v2 && *(a1 + 32) == *(a2 + 32);
    if (v3 && *(a1 + 40) == *(a2 + 40) && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0 && *(a1 + 56) == *(a2 + 56))
    {
      v4 = 0;
      if (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88))
      {
        return v4;
      }

      if (*(a1 + 96) == *(a2 + 96))
      {
        return *(a1 + 104) == *(a2 + 104);
      }
    }
  }

  return 0;
}

double sub_18B9A36E8(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  if (v2 == v3)
  {
    v4 = *(v1 + 3);
    v5 = v1[5];
  }

  else
  {
    v9 = *v1;
    if (!*(*v1 + 16) || (v10 = sub_18B85DC48(a1), (v11 & 1) == 0))
    {
      v4 = *(v1 + 3);
      v5 = v1[4];
      type metadata accessor for AnimationSettings();
      v8 = swift_allocObject();
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      goto LABEL_10;
    }

    v12 = _SFUninterpolate(*(*(*&v9 + 56) + 8 * v10), v2, v3);
    v5 = _SFInterpolate(v1[5], v1[4], v12);
    v4 = *(v1 + 3);
  }

  if (qword_1EA9D24A0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EA9F8388;
  v7 = *&dword_1EA9F8390;
  type metadata accessor for AnimationSettings();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  *(v8 + 32) = 0;
LABEL_10:
  *(v8 + 40) = v4;
  *(v8 + 48) = v5;
  result = 0.0;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 1;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  return result;
}

uint64_t sub_18B9A3814(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_18B9A385C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18B9A3964(void *a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x90));

  sub_18BB23214(a1);
}

uint64_t sub_18B9A39F4()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = sub_18BB47738();

  return v1;
}

uint64_t sub_18B9A3A44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v4;
  sub_18B9A3964(&v20);
  sub_18BC1E1A8();

  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_18BB65A78();
  sub_18BC1E3F8();

  v10 = *((v6 & v5) + 0x50);
  v11 = *((v6 & v5) + 0x68);
  v12 = swift_allocObject();
  v13 = *(v7 + 88);
  v14 = *(v7 + 112);
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  *(v12 + 40) = v11;
  *(v12 + 48) = v14;
  *(v12 + 64) = v9;
  v15 = sub_18BC1F0E8();
  WitnessTable = swift_getWitnessTable();
  a4(a3, v12, v15, WitnessTable);
}

uint64_t sub_18B9A3BF4()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = sub_18BB65AD8();
  sub_18BC1E1A8();

  return v1;
}

char *sub_18B9A3C6C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = qword_1EA9D4750;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DCCA8]) init];
  *&v1[qword_1EA9D4758] = 0;
  swift_unknownObjectUnownedInit();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = qword_1EA9D4750;
  v7 = *&v5[qword_1EA9D4750];
  v8 = v5;
  [v7 setDelegate_];
  [a1 addInteraction_];

  return v8;
}

uint64_t sub_18B9A3D4C(uint64_t a1)
{
  v79 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v72 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(*((v3 & v2) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v71 = &v59 - v5;
  v7 = v6;
  v8 = sub_18BC21848();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v88 = &v59 - v9;
  v10 = v8;
  v11 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v21 = &v59 - v20;
  v82 = v1;
  v22 = [*(v1 + qword_1EA9D4750) gesturesForFailureRequirements];
  sub_18B9A7B2C();
  v23 = sub_18BC20D98();

  if (v23 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18BC219A8())
  {
    v25 = v10;
    v81 = qword_1EA9D4760;
    v66 = v23 & 0xC000000000000001;
    v62 = v23 & 0xFFFFFFFFFFFFFF8;
    v61 = v23 + 32;
    v77 = (v4 + 16);
    v74 = (v11 + 16);
    v75 = (v4 + 56);
    v73 = (v4 + 48);
    v67 = (v4 + 32);
    v68 = (v4 + 8);
    v4 = 0;
    v76 = (v11 + 8);
    v11 = v7;
    v65 = i;
    v70 = v14;
    v83 = v17;
    v69 = v21;
    v63 = v23;
    while (1)
    {
      if (v66)
      {
        v26 = MEMORY[0x18CFFD010](v4, v23);
      }

      else
      {
        if (v4 >= *(v62 + 16))
        {
          goto LABEL_36;
        }

        v26 = *(v61 + 8 * v4);
      }

      v84 = v26;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v7 = v84;
      if ([v84 state] != 5)
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        v29 = [v7 numberOfTouches];
        if (v29 < 0)
        {
          goto LABEL_35;
        }

        v17 = v29;
        v64 = v4;
        if (v29)
        {
          v10 = v25;
          v7 = v11;
          v89 = MEMORY[0x1E69E7CC0];
          sub_18B9B67F8(0, v29, 0);
          v23 = v84;
          v30 = 0;
          v14 = v89;
          do
          {
            [v23 locationOfTouch:v30 inView:Strong];
            v89 = v14;
            v34 = *(v14 + 2);
            v33 = *(v14 + 3);
            v4 = v34 + 1;
            if (v34 >= v33 >> 1)
            {
              v36 = v31;
              v37 = v32;
              sub_18B9B67F8((v33 > 1), v34 + 1, 1);
              v23 = v84;
              v32 = v37;
              v31 = v36;
              v14 = v89;
            }

            ++v30;
            *(v14 + 2) = v4;
            v35 = &v14[16 * v34];
            *(v35 + 4) = v31;
            *(v35 + 5) = v32;
          }

          while (v17 != v30);

          v11 = v7;
          v25 = v10;
        }

        else
        {
          v23 = v7;

          v14 = MEMORY[0x1E69E7CC0];
        }

        v78 = *(v14 + 2);
        if (v78)
        {
          v38 = 0;
          v39 = (v14 + 40);
          while (v38 < *(v14 + 2))
          {
            v85 = v39;
            v86 = v38;
            v42 = *(v39 - 1);
            v41 = *v39;
            v43 = swift_unknownObjectUnownedLoadStrong();
            sub_18BB503F4(v21, v42, v41);

            v10 = v21;
            v44 = v83;
            (*v77)(v83, v79, v11);
            (*v75)(v44, 0, 1, v11);
            v45 = *(TupleTypeMetadata2 + 48);
            v7 = v11;
            v46 = *v74;
            v47 = v88;
            (*v74)(v88, v10, v25);
            v87 = v45;
            v46(&v47[v45], v44, v25);
            v17 = v73;
            v48 = *v73;
            if ((*v73)(v47, 1, v7) == 1)
            {
              v4 = v76;
              v40 = *v76;
              (*v76)(v44, v25);
              v40(v10, v25);
              if (v48(&v88[v87], 1, v7) != 1)
              {
                goto LABEL_31;
              }

              v21 = v10;
              v40(v88, v25);
              v11 = v7;
              v23 = v84;
            }

            else
            {
              v49 = v25;
              v10 = v88;
              v50 = v7;
              v51 = v70;
              v46(v70, v88, v25);
              v52 = v87;
              if (v48(&v10[v87], 1, v50) == 1)
              {
                v56 = v51;
                v57 = *v76;
                (*v76)(v83, v49);
                v57(v69, v49);
                (*v68)(v56, v50);
LABEL_31:
                (*(v60 + 8))(v88, TupleTypeMetadata2);
                v23 = v84;
LABEL_32:

                return 0;
              }

              v53 = v71;
              (*v67)(v71, &v10[v52], v50);
              LODWORD(v87) = sub_18BC20AE8();
              v54 = *v68;
              (*v68)(v53, v50);
              v4 = v76;
              v55 = *v76;
              (*v76)(v83, v49);
              v17 = v51;
              v7 = v69;
              v55(v69, v49);
              v54(v17, v50);
              v55(v10, v49);
              v25 = v49;
              v21 = v7;
              v11 = v50;
              v23 = v84;
              if ((v87 & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            v38 = v86 + 1;
            v39 = v85 + 2;
            if (v78 == v86 + 1)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
          break;
        }

LABEL_4:

        v7 = v23;
        v23 = v63;
        v4 = v64;
      }

      if (v4 == v65)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_38:

  return 1;
}

void sub_18B9A45EC()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = *(v1 + 0x58);
  v3 = sub_18BC21848();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v38 - v7;
  v42 = v0;
  v9 = *(v0 + qword_1EA9D4758);
  if (!v9)
  {
    return;
  }

  v10 = *(*(v1 + 112) + 8);
  swift_bridgeObjectRetain_n();
  v38[2] = v9;
  sub_18BC1E1A8();
  v11 = sub_18BC20FF8();
  sub_18BC1E3F8();
  v12 = sub_18BC20FF8();

  v38[1] = v10;
  if ((v11 & 0xC000000000000001) != 0)
  {
    sub_18BC21958();
    sub_18BC210A8();
    v11 = v43;
    v13 = v44;
    v14 = v45;
    v40 = v46;
    v15 = v47;
  }

  else
  {
    v40 = 0;
    v16 = -1 << *(v11 + 32);
    v13 = v11 + 56;
    v14 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v11 + 56);
  }

  v41 = qword_1EA9D4760;
  v38[3] = v14;
  v39 = v12;
  v19 = (v14 + 64) >> 6;
  while (v11 < 0)
  {
    if (!sub_18BC219D8())
    {
      goto LABEL_21;
    }

    sub_18BC21FA8();
    swift_unknownObjectRelease();
    v22 = *(v2 - 8);
LABEL_11:
    (*(v22 + 56))(v8, 0, 1, v2);
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_18BB535E0(v8);

    (*(v22 + 8))(v8, v2);
    v12 = v39;
  }

  if (v15)
  {
    v20 = v40;
LABEL_10:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v22 = *(v2 - 8);
    (*(v22 + 16))(v8, *(v11 + 48) + *(v22 + 72) * (v21 | (v20 << 6)), v2);
    goto LABEL_11;
  }

  v24 = v40;
  while (1)
  {
    v20 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v20 >= v19)
    {
      break;
    }

    v15 = *(v13 + 8 * v20);
    ++v24;
    if (v15)
    {
      v40 = v20;
      goto LABEL_10;
    }
  }

LABEL_21:
  v25 = *(v2 - 8);
  (*(v25 + 56))(v8, 1, 1, v2);
  sub_18B7D2E34();
  if ((v12 & 0xC000000000000001) != 0)
  {
    sub_18BC21958();
    sub_18BC210A8();
    v12 = v48;
    v26 = v49;
    v27 = v50;
    v40 = v51;
    v28 = v52;
  }

  else
  {
    v40 = 0;
    v29 = -1 << *(v12 + 32);
    v26 = v12 + 56;
    v27 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v28 = v31 & *(v12 + 56);
  }

  v39 = v27;
  v32 = (v27 + 64) >> 6;
  while (2)
  {
    if (v12 < 0)
    {
      if (!sub_18BC219D8())
      {
LABEL_40:

        (*(v25 + 56))(v5, 1, 1, v2);
        sub_18B7D2E34();
        return;
      }

      sub_18BC21FA8();
      swift_unknownObjectRelease();
      v35 = v25;
      (*(v25 + 56))(v5, 0, 1, v2);
      goto LABEL_30;
    }

    if (v28)
    {
      v33 = v40;
LABEL_29:
      v34 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v35 = v25;
      (*(v25 + 16))(v5, *(v12 + 48) + *(v25 + 72) * (v34 | (v33 << 6)), v2);
      (*(v25 + 56))(v5, 0, 1, v2);
LABEL_30:
      v36 = swift_unknownObjectUnownedLoadStrong();
      sub_18BB53E54(v5);

      (*(v35 + 8))(v5, v2);
      continue;
    }

    break;
  }

  v37 = v40;
  while (1)
  {
    v33 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v33 >= v32)
    {
      goto LABEL_40;
    }

    v28 = *(v26 + 8 * v33);
    ++v37;
    if (v28)
    {
      v40 = v33;
      goto LABEL_29;
    }
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_18B9A4C60(double a1, double a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = sub_18BC21848();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  if ((sub_18B9A4EA8() & 1) == 0)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_18BB503F4(v9, a1, a2);

    if ((*(v10 + 48))(v9, 1, v5) == 1)
    {
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v10 + 32))(v13, v9, v5);
      if (sub_18B9A3D4C(v13))
      {
        v14 = sub_18B9A4F34(v13);
        (*(v10 + 8))(v13, v5);
        return v14 & 1;
      }

      (*(v10 + 8))(v13, v5);
    }

    v14 = 0;
    return v14 & 1;
  }

  v14 = 1;
  return v14 & 1;
}

uint64_t sub_18B9A4EA8()
{
  result = sub_18B9A39F4();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    Strong = swift_unknownObjectUnownedLoadStrong();
    LOBYTE(v2) = (*(v2 + 16))(Strong, ObjectType, v2);
    swift_unknownObjectRelease();

    return v2 & 1;
  }

  return result;
}

uint64_t sub_18B9A4F34(uint64_t a1)
{
  result = sub_18B9A39F4();
  if (result)
  {
    v4 = v3;
    if (sub_18B9A4EA8())
    {
      swift_unknownObjectRelease();
      return 1;
    }

    else
    {
      ObjectType = swift_getObjectType();
      Strong = swift_unknownObjectUnownedLoadStrong();
      v7 = (*(v4 + 32))(Strong, a1, ObjectType, v4);
      swift_unknownObjectRelease();

      return v7 & 1;
    }
  }

  return result;
}

BOOL sub_18B9A4FE4(double a1, double a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = sub_18BC21848();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = [Strong hitTest:0 withEvent:{a1, a2}];

  if (v11 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {

    return 0;
  }

  else
  {
    v13 = swift_unknownObjectUnownedLoadStrong();
    sub_18BB50724(v9, a1, a2);

    v12 = (*(*(v5 - 8) + 48))(v9, 1, v5) != 1;
    (*(v7 + 8))(v9, v6);
  }

  return v12;
}

BOOL sub_18B9A51AC(double a1, double a2, double a3, double a4)
{
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v10 = sub_18BC21848();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  if ((sub_18B9A4EA8() & 1) == 0)
  {
    return 0;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18BB503F4(v13, a1, a2);

  LODWORD(Strong) = (*(*(v9 - 8) + 48))(v13, 1, v9);
  (*(v11 + 8))(v13, v10);
  if (Strong == 1)
  {
    return 0;
  }

  v15 = sub_18B9A3BF4();
  v16 = (*(*v15 + 480))(v15);

  if (v16 != 1)
  {
    if (v16 == 2)
    {
      return fabs(a4) < fabs(a3);
    }

    return 0;
  }

  return fabs(a3) < fabs(a4);
}

uint64_t sub_18B9A53A0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_18B9A669C();

  return a1 & 1;
}

uint64_t sub_18B9A53EC(void *a1)
{
  v1 = a1;
  v2 = sub_18B9A4EA8();

  return v2 & 1;
}

void sub_18B9A5420(void *a1)
{
  v1 = a1;
  sub_18B9A66D4();
}

uint64_t sub_18B9A5468(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  LOBYTE(a1) = sub_18B9A5FBC(a2, a3);

  return a1 & 1;
}

uint64_t sub_18B9A54CC(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, uint64_t a8)
{
  v14 = a7;
  v15 = a1;
  LOBYTE(a8) = sub_18B9A6780(a8, a2, a3, a4, a5);

  return a8 & 1;
}

uint64_t sub_18B9A5550(void *a1, int a2, double a3, double a4)
{
  v5 = v4;
  v41 = a2;
  v42 = a1;
  v8 = *MEMORY[0x1E69E7D40] & *v4;
  v9 = *(v8 + 0x58);
  v10 = sub_18BC21848();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40[-v14];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v17 = sub_18BB65A78();
  sub_18BC1E3F8();

  v19.n128_u64[0] = *(MEMORY[0x1E695F050] + 8);
  if (*MEMORY[0x1E695F050] == a3 && v19.n128_f64[0] == a4)
  {
    v18.n128_u64[0] = *MEMORY[0x1E695F050];
    (*(*(v9 - 8) + 56))(v15, 1, 1, v9, v18, v19);
  }

  else
  {
    v21 = swift_unknownObjectUnownedLoadStrong();
    sub_18BB503F4(v15, a3, a4);
  }

  v22 = qword_1EA9D4758;
  v23 = *(v5 + qword_1EA9D4758);
  if (v23 || ((v25 = *(v8 + 96), v24 = *(v8 + 104), v27 = *(v8 + 112), v26 = *(v8 + 120), v45 = *(v8 + 80), v46 = v9, v47 = v25, v48 = v24, v49 = v27, v50 = v26, (v41 & 1) == 0) ? (_s16MultiSelectStateCMa(), v31 = (*(*(v9 - 8) + 56))(v12, 1, 1, v9), v30 = sub_18B9A5968(v31, v9, v32, v33, v27), v29 = v12) : (_s16MultiSelectStateCMa(), v28 = swift_unknownObjectUnownedLoadStrong(), sub_18BB47534(v12), v28, sub_18BC1E3F8(), v29 = v12, v30 = v17), *(v5 + v22) = sub_18BBE304C(v29, v30), , (v23 = *(v5 + v22)) != 0))
  {
    sub_18BC1E1A8();
    sub_18BBE309C();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = *(v8 + 80);
    *(v35 + 24) = v9;
    *(v35 + 32) = *(v8 + 96);
    *(v35 + 40) = *(v8 + 104);
    *(v35 + 56) = *(v8 + 120);
    *(v35 + 64) = v34;
    v36 = (v23 + *(*v23 + 168));
    *v36 = sub_18B9A7B78;
    v36[1] = v35;

    v37 = [v42 activeGestureType];
    if ((v37 - 5) >= 3)
    {
      sub_18BBE3340(v15, v17);
    }

    else
    {
      sub_18BBE3170(v15, v17, v37 != 5);
    }

    v38 = swift_unknownObjectUnownedLoadStrong();
    sub_18BB52C14();

    return (*(v43 + 8))(v15, v44);
  }

  else
  {
    (*(v43 + 8))(v15, v44);
  }
}

uint64_t sub_18B9A5968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v8 = sub_18BB32DD8(v7, a2, *(a5 + 8));
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  return v8;
}

void sub_18B9A59D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18B9A45EC();
  }
}

void sub_18B9A5A34(void *a1, double a2, double a3, uint64_t a4, void *a5, int a6)
{
  v10 = a5;
  v11 = a1;
  sub_18B9A5550(v10, a6, a2, a3);
}

void sub_18B9A5ABC(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  sub_18B9A696C(a2, a3);
}

uint64_t sub_18B9A5B34(double a1, double a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v24[1] = *MEMORY[0x1E69E7D40] & *v2;
  v7 = *((v6 & v5) + 0x58);
  v8 = sub_18BC21848();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v24 - v16;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18BB503F4(v10, a1, a2);

  v19 = *(v14 + 48);
  if (v19(v10, 1, v7) == 1)
  {
    v20 = swift_unknownObjectUnownedLoadStrong();
    sub_18BB47534(v13);

    if (v19(v10, 1, v7) != 1)
    {
      (*(v25 + 8))(v10, v26);
    }
  }

  else
  {
    (*(v14 + 32))(v13, v10, v7);
    (*(v14 + 56))(v13, 0, 1, v7);
  }

  if (v19(v13, 1, v7) == 1)
  {
    (*(v25 + 8))(v13, v26);
    v21 = 0;
  }

  else
  {
    (*(v14 + 32))(v17, v13, v7);
    v22 = swift_unknownObjectUnownedLoadStrong();
    sub_18BB65A78();
    sub_18BC1E3F8();

    LOBYTE(v22) = sub_18BC21098();

    if (v22)
    {
      v21 = 0;
    }

    else
    {
      v21 = sub_18B9A4F34(v17);
    }

    (*(v14 + 8))(v17, v7);
  }

  return v21 & 1;
}

uint64_t sub_18B9A5E98(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_18B9A5B34(a2, a3);

  return v6 & 1;
}

void sub_18B9A5EE4(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  sub_18B9A6E7C(a2, a3);
}

void sub_18B9A5F5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18B9A7140();
}

uint64_t sub_18B9A5FC0(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_18B9A5FBC(a2, a3);

  return v6 & 1;
}

uint64_t sub_18B9A600C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  if (a3)
  {
    sub_18BC1ED88();
    v7 = sub_18BC1EDD8();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_18BC1EDD8();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  sub_18B9A7AC4(v6);
  return 1;
}

void sub_18B9A6114(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18B9A7198();
}

void sub_18B9A6174(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7)
{
  v12 = a7;
  v13 = a1;
  sub_18B9A72B8(sub_18BBE3660, a2, a3, a4, a5);
}

void sub_18B9A621C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7)
{
  v12 = a7;
  v13 = a1;
  sub_18B9A72B8(sub_18BBE3B24, a2, a3, a4, a5);
}

uint64_t sub_18B9A62C4(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  LOBYTE(a1) = sub_18B9A741C(a2, a3);

  return a1 & 1;
}

uint64_t sub_18B9A6330(uint64_t a1)
{
  if ((a1 | 2) == 3)
  {
    v1 = &unk_1EFF1D720;
    v2 = MEMORY[0x1E69955B8];
    v3 = sub_18B9A7AB0;
    v4 = MEMORY[0x1E69E5F28];
  }

  else
  {
    v1 = &unk_1EFF1D748;
    v2 = MEMORY[0x1E69955C0];
    v3 = sub_18B9A7B8C;
    v4 = MEMORY[0x1E69E6228];
  }

  return sub_18B9A3A44(v1, v2, v3, v4);
}

void sub_18B9A63EC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_18B9A7420(a4);
}

uint64_t sub_18B9A6458(double a1, double a2)
{
  if (sub_18B9A39F4())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    Strong = swift_unknownObjectUnownedLoadStrong();
    v8 = (*(v5 + 40))(Strong, ObjectType, v5, a1, a2);
    swift_unknownObjectRelease();

    if (v8)
    {
      return v8;
    }
  }

  return swift_unknownObjectUnownedLoadStrong();
}

id sub_18B9A653C(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_18B9A6458(a2, a3);

  return v6;
}

uint64_t sub_18B9A6628(uint64_t a1)
{

  return swift_unknownObjectUnownedDestroy();
}

BOOL sub_18B9A669C()
{
  v0 = sub_18B9A39F4();
  if (v0)
  {
    swift_unknownObjectRelease();
  }

  return v0 != 0;
}

uint64_t sub_18B9A66D4()
{
  result = sub_18B9A4EA8();
  if ((result & 1) == 0)
  {
    result = sub_18B9A39F4();
    if (result)
    {
      v2 = v1;
      ObjectType = swift_getObjectType();
      Strong = swift_unknownObjectUnownedLoadStrong();
      (*(v2 + 24))(Strong, ObjectType, v2);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

BOOL sub_18B9A6780(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x58);
  v12 = sub_18BC21848();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  if ((sub_18B9A4C60(a2, a3) & 1) == 0)
  {
    return 0;
  }

  if (a1)
  {
    if (a1 != 5)
    {
      return 1;
    }

    if (sub_18B9A4FE4(a2, a3))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      sub_18BB503F4(v15, a2, a3);

      v17 = (*(*(v11 - 8) + 48))(v15, 1, v11) == 1;
      (*(v13 + 8))(v15, v12);
      return v17;
    }
  }

  return sub_18B9A51AC(a2, a3, a4, a5);
}

void sub_18B9A696C(double a1, double a2)
{
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = *(v5 + 0x58);
  v7 = sub_18BC21848();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - v17;
  v19 = *(v2 + qword_1EA9D4758);
  if (v19)
  {
    *&v39 = v16;
    v36 = v5;
    v37 = v15;
    v20 = *(*v19 + 160);
    swift_beginAccess();
    (*(v8 + 16))(v11, v19 + v20, v7);
    v21 = *(v12 + 48);
    if (v21(v11, 1, v6) == 1)
    {
      (*(v8 + 8))(v11, v7);
    }

    else
    {
      v33 = v8;
      v34 = v7;
      v22 = v18;
      v23 = v12;
      v24 = *(v12 + 32);
      v35 = v22;
      v24();
      Strong = swift_unknownObjectUnownedLoadStrong();
      sub_18BC1E1A8();
      v26 = v39;
      sub_18BB50724(v39, a1, a2);

      v38 = v6;
      if (v21(v26, 1, v6) == 1)
      {
        (*(v12 + 8))(v35, v38);

        (*(v33 + 8))(v26, v34);
      }

      else
      {
        v27 = v37;
        v28 = v38;
        (v24)(v37, v26, v38);
        sub_18B9A3964(v49);
        v44 = v49[0];
        v45 = v49[1];
        v46 = v50;
        v47 = v51;
        v48 = v52;
        v40 = *(v36 + 80);
        v41 = v28;
        v29 = *(v36 + 96);
        v39 = *(v36 + 112);
        v42 = v29;
        v43 = v39;
        type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
        v30 = v35;
        v36 = SFFluidCollectionView.DataSource.Snapshot.allItems(between:and:)();

        v49[0] = v36;
        sub_18BC20E78();
        swift_getWitnessTable();
        sub_18BC210F8();
        if ((sub_18BC21098() & 1) == 0)
        {
          sub_18BBE3660();
        }

        v31 = *(v23 + 8);
        v32 = v38;
        v31(v27, v38);
        v31(v30, v32);
      }
    }
  }
}

void sub_18B9A6E7C(double a1, double a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = sub_18BC21848();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v17 = *(v2 + qword_1EA9D4758);
  if (v17)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_18BC1E1A8();
    sub_18BB503F4(v12, a1, a2);

    if ((*(v13 + 48))(v12, 1, v5) == 1)
    {

      (*(v7 + 8))(v12, v6);
    }

    else
    {
      v21 = v6;
      v19 = *(v13 + 32);
      v19(v16, v12, v5);
      sub_18BBE37B4(v16);
      v19(v9, v16, v5);
      (*(v13 + 56))(v9, 0, 1, v5);
      v20 = *(*v17 + 160);
      swift_beginAccess();
      (*(v7 + 40))(v17 + v20, v9, v21);
      swift_endAccess();
    }
  }
}

uint64_t sub_18B9A7140()
{
  if (*(v0 + qword_1EA9D4758))
  {
    sub_18BC1E1A8();
    sub_18BBE3A54();
  }

  return result;
}

void sub_18B9A7198()
{
  v1 = qword_1EA9D4758;
  if (*(v0 + qword_1EA9D4758))
  {
    v2 = *MEMORY[0x1E69E7D40] & *v0;
    v3 = *(v2 + 0x58);
    sub_18BC1E1A8();
    v4 = sub_18BC20DE8();
    if (sub_18BC20E28())
    {
      sub_18BB32DD8(v4, v3, *(*(v2 + 112) + 8));
    }

    sub_18BBE3660();

    if (*(v0 + v1))
    {
      sub_18BC1E1A8();
      sub_18BBE3A54();
    }
  }
}

uint64_t sub_18B9A72B8(uint64_t result, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (*(v5 + qword_1EA9D4758))
  {
    v6 = result;
    v11 = (*MEMORY[0x1E69E7D40] & *v5);
    sub_18BC1E1A8();
    sub_18B9A3BF4();
    sub_18B81D198(v15);

    v12 = v11[6];
    v17 = v11[5];
    v18 = v12;
    v19[0] = v11[7];
    v13 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
    v14 = SFFluidCollectionView.LayoutSnapshot.items(in:)(v13, a2, a3, a4, a5);
    v17 = v15[0];
    v18 = v15[1];
    v19[0] = v16[0];
    *(v19 + 9) = *(v16 + 9);
    (*(*(v13 - 1) + 8))(&v17, v13);
    v6(v14);
  }

  return result;
}

void sub_18B9A7420(uint64_t a1)
{
  v2 = v1;
  *&v52 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v49 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *((v4 & v3) + 0x58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v12 = sub_18BC21848();
  v53 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - v23;
  v25 = *(v2 + qword_1EA9D4758);
  if (v25)
  {
    v47 = v8;
    v48 = v11;
    v51 = v22;
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_18BB47534(v20);
    v50 = v25;
    sub_18BC1E1A8();

    v27 = v6;
    v28 = *(v6 + 48);
    if (v28(v20, 1, v5) == 1)
    {
      v29 = v27;
      sub_18B9A6330(v52);
      v30 = v28(v20, 1, v5);
      v31 = v51;
      if (v30 != 1)
      {
        (*(v53 + 8))(v20, v51);
      }
    }

    else
    {
      (*(v27 + 32))(v24, v20, v5);
      v29 = v27;
      (*(v27 + 56))(v24, 0, 1, v5);
      v31 = v51;
    }

    v32 = v53;
    (*(v53 + 16))(v17, v24, v31);
    if (v28(v17, 1, v5) == 1)
    {
      v33 = *(v32 + 8);
      v33(v24, v31);

      v33(v17, v31);
    }

    else
    {
      v46 = v29;
      v34 = *(v29 + 32);
      v35 = v48;
      v36 = v17;
      v37 = v34;
      v34(v48, v36, v5);
      v38 = sub_18B9A3BF4();
      if (v52 >= 4)
      {
        v39 = 2;
      }

      else
      {
        v39 = v52;
      }

      LOBYTE(v63[0]) = v39;
      (*(*v38 + 520))(v35, v63);

      if (v28(v14, 1, v5) == 1)
      {

        (*(v46 + 8))(v35, v5);
        v40 = *(v53 + 8);
        v41 = v51;
        v40(v24, v51);
        v40(v14, v41);
      }

      else
      {
        v42 = v47;
        v37(v47, v14, v5);
        sub_18B9A3964(v63);
        v58 = v63[0];
        v59 = v63[1];
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v54 = *(v49 + 80);
        v55 = v5;
        v43 = *(v49 + 96);
        v52 = *(v49 + 112);
        v56 = v43;
        v57 = v52;
        type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
        v44 = SFFluidCollectionView.DataSource.Snapshot.allItems(between:and:)();

        v63[0] = v44;
        sub_18BC20E78();
        swift_getWitnessTable();
        sub_18BC210F8();
        sub_18BBE3660();

        v45 = *(v46 + 8);
        v45(v42, v5);
        v45(v35, v5);
        (*(v53 + 8))(v24, v51);
      }
    }
  }
}

uint64_t sub_18B9A7AC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18B9A7B2C()
{
  result = qword_1EA9D4850;
  if (!qword_1EA9D4850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D4850);
  }

  return result;
}

uint64_t sub_18B9A7B90()
{
  v0 = sub_18BC1E8B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v6, qword_1EA9F7940);
  __swift_project_value_buffer(v6, qword_1EA9F7940);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_18BC1E8E8();
}

uint64_t sub_18B9A7DA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA9D2158 != -1)
  {
    swift_once();
  }

  v2 = sub_18BC1E8D8();
  v3 = __swift_project_value_buffer(v2, qword_1EA9F7940);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SFSiriLinkCoordinator.listenToPageSiriReaderInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC42220;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B809BA0();
  return sub_18BC1F028();
}

uint64_t sub_18B9A7F00(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_18BC20F28();
  v2[7] = sub_18BC20F18();
  v4 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18B9A7F98, v4, v3);
}

uint64_t sub_18B9A7F98()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if ([v3 canReadThis])
    {
      if ([v3 canReadActiveLanguage])
      {
        v4 = *(v0 + 40);
        [v3 siriReadThisVocalInvocation];
        v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0);
        v4[4] = sub_18B9A3450();
        __swift_allocate_boxed_opaque_existential_0Tm(v4);
        sub_18BC1DF98();
        swift_unknownObjectRelease();
        v5 = *(v0 + 8);
        goto LABEL_13;
      }

      sub_18B9A8574();
      swift_allocError();
      v10 = 2;
    }

    else
    {
      sub_18B9A8574();
      swift_allocError();
      v10 = 1;
    }

    *v9 = v10;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v6 = sub_18BC1DE48();
    v7 = __swift_project_value_buffer(v6, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v6 - 8) + 16))(v8, v7, v6);
    swift_willThrow();
  }

  v5 = *(v0 + 8);
LABEL_13:

  return v5();
}

uint64_t sub_18B9A81D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B7B6968;

  return sub_18B9A7F00(a1, v1);
}

uint64_t sub_18B9A8270(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_18B987B10;

  return v7(a1);
}

uint64_t sub_18B9A8368(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18B9A8270(a1, a2, v6);
}

uint64_t sub_18B9A84AC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18B9A8270(a1, a2, v6);
}

unint64_t sub_18B9A8574()
{
  result = qword_1EA9D4878;
  if (!qword_1EA9D4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4878);
  }

  return result;
}

uint64_t sub_18B9A85F0(uint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  if ((sub_18B98DC74(*v2, *a1) & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  result = _s7ContentVMa_4();
  v7 = *(result + 28);
  v8 = (v2 + v7);
  if (*(v2 + v7 + 8))
  {
    return MEMORY[0x1E69E7CD0];
  }

  v9 = a1 + v7;
  if (v9[8])
  {
    return MEMORY[0x1E69E7CD0];
  }

  v10 = *v8;
  v11 = *v9;
  if (*v8 == *v9)
  {
    return MEMORY[0x1E69E7CD0];
  }

  if (v11 <= v10)
  {
    v12 = *v8;
  }

  else
  {
    v12 = *v9;
  }

  if (v11 >= v10)
  {
    v13 = *v8;
  }

  else
  {
    v13 = *v9;
  }

  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v12 < v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v14 < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v15 = *(v5 + 16);
  if (v15 < v14 || v15 < v12)
  {
    goto LABEL_26;
  }

  v17 = *(_s4ItemVMa_4() - 8);
  v18 = (2 * v12) | 1;
  v19 = v5 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  if (v10 >= v11)
  {
    sub_18B9A87CC(a2, v5, v19, v14, v18);
  }

  else
  {
    sub_18B9A8754(a2, v5, v19, v14, v18);
  }

  v23 = v20;
  v24 = v21;
  v25 = v22;
  sub_18BC1E3F8();
  sub_18BBA2F6C(v23, v24, v25);
  v27 = v26;
  swift_unknownObjectRelease();
  return v27;
}

unint64_t sub_18B9A8754(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_18B9A87CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = a5 >> 1;
  v6 = a4 - (a5 >> 1);
  if (__OFSUB__(a4, a5 >> 1))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 > -result && v6 < 1)
  {
    v8 = a4;
  }

  else
  {
    v8 = v5 - result;
  }

  if (v5 < v8)
  {
    goto LABEL_14;
  }

  if (v8 >= a4)
  {
    return a2;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_18B9A8824@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = _s7ContentVMa_4();
  v6 = result;
  v7 = v2 + *(result + 28);
  if (v7[8])
  {
    goto LABEL_7;
  }

  v8 = *v7;
  v9 = v8 + a1;
  if (__OFADD__(v8, a1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v9 & 0x8000000000000000) != 0 || (v10 = *v2, v9 >= *(*v2 + 16)))
  {
LABEL_7:
    v17 = *(*(result - 8) + 56);
    v18 = a2;
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v2[1];
  v12 = *(result + 24);
  v13 = _s4ItemVMa_4();
  v14 = *(v13 - 8);
  v20 = *(v14 + 56);
  v20(a2 + v12, 1, 1, v13);
  v15 = *(v6 + 28);
  *a2 = v10;
  a2[1] = v11;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  result = sub_18B988BAC(a2 + v12, &qword_1EA9DBE00);
  if (v9 >= *(v10 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v16 = a2 + v15;
  sub_18B7EC5AC(v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v9, a2 + v12, _s4ItemVMa_4);
  v20(a2 + v12, 0, 1, v13);
  *v16 = v9;
  v16[8] = 0;
  v17 = *(*(v6 - 8) + 56);
  v18 = a2;
  v19 = 0;
LABEL_8:

  return v17(v18, v19, 1, v6);
}

void sub_18B9A8A24(uint64_t a1, uint64_t a2)
{
  v36 = _s4ItemVMa();
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v10;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v13 = 0;
    v14 = *(a1 + 56);
    v29 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v35 = a2 + 56;
    v30 = v18;
    v31 = &v28 - v10;
    v32 = v11;
    v33 = a1;
    if (v17)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
LABEL_13:
        v22 = *(v11 + 72);
        sub_18B7EC5AC(*(a1 + 48) + v22 * (v19 | (v13 << 6)), v12, _s4ItemVMa);
        sub_18B80D4EC(v12, v8, _s4ItemVMa);
        sub_18BC22158();
        sub_18BC1EC08();
        sub_18B7C1244(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
        sub_18BC20A78();
        v23 = sub_18BC221A8();
        v24 = -1 << *(a2 + 32);
        v25 = v23 & ~v24;
        if (((*(v35 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          break;
        }

        v26 = ~v24;
        while (1)
        {
          sub_18B7EC5AC(*(a2 + 48) + v25 * v22, v5, _s4ItemVMa);
          updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          sub_18B7ED058(v5, _s4ItemVMa);
          if (updated)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v35 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        sub_18B7ED058(v8, _s4ItemVMa);
        v11 = v32;
        a1 = v33;
        v18 = v30;
        v12 = v31;
        v17 = v34;
        if (!v34)
        {
          goto LABEL_8;
        }
      }

LABEL_21:
      sub_18B7ED058(v8, _s4ItemVMa);
    }

    else
    {
LABEL_8:
      v20 = v13;
      while (1)
      {
        v13 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v13 >= v18)
        {
          return;
        }

        v21 = *(v29 + 8 * v13);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v34 = (v21 - 1) & v21;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

BOOL sub_18B9A8D94(uint64_t *a1, uint64_t *a2)
{
  v4 = _s4ItemVMa_4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE40);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if ((sub_18B98DC74(*a1, *a2) & 1) == 0 || (sub_18B836AB8(a1[1], a2[1], _s4ItemVMa_4, _s4ItemVMa_4) & 1) == 0)
  {
    return 0;
  }

  v25 = _s7ContentVMa_4();
  v14 = *(v25 + 24);
  v15 = *(v11 + 48);
  sub_18B7C27C0(a1 + v14, v13);
  sub_18B7C27C0(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_18B988BAC(v13, &qword_1EA9DBE00);
      goto LABEL_11;
    }

LABEL_8:
    sub_18B988BAC(v13, &unk_1EA9DBE40);
    return 0;
  }

  sub_18B7C27C0(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_18B7ED058(v10, _s4ItemVMa_4);
    goto LABEL_8;
  }

  sub_18B80D4EC(&v13[v15], v7, _s4ItemVMa_4);
  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
  sub_18B7ED058(v7, _s4ItemVMa_4);
  sub_18B7ED058(v10, _s4ItemVMa_4);
  sub_18B988BAC(v13, &qword_1EA9DBE00);
  if ((updated & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v19 = *(v25 + 28);
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 8);
  if ((v21 & 1) == 0)
  {
    if (*v20 != *v22)
    {
      v23 = 1;
    }

    return (v23 & 1) == 0;
  }

  return (v23 & 1) != 0;
}

uint64_t sub_18B9A90DC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_18BC20C48();

    return sub_18BC20CB8();
  }

  return result;
}

uint64_t sub_18B9A9180(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
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

uint64_t sub_18B9A91C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18B9A9284(uint64_t a1, uint64_t a2)
{
  v4 = _s15DropDestinationVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id SFCapsulePageLayoutTopFloatingSquished.__allocating_init(container:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id SFCapsulePageLayoutTopFloatingSquished.init(container:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SFCapsulePageLayoutTopFloatingSquished();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_unknownObjectRelease();
  return v1;
}

id SFCapsulePageLayoutTopFloatingSquished.__allocating_init(container:baseLayout:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

id SFCapsulePageLayoutTopFloatingSquished.init(container:baseLayout:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SFCapsulePageLayoutTopFloatingSquished();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t (*sub_18B9A978C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12MobileSafari38SFCapsulePageLayoutTopFloatingSquished_baseLayout;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A9824;
}