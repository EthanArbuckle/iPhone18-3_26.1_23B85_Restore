uint64_t PersonModel.Handle.label.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_24AE08288();
  return v1;
}

BOOL sub_24ADFEF04(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AE08688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  sub_24AE08648();
  sub_24AE08668();
  v12 = objc_opt_self();
  v13 = [v12 controlCharacterSet];
  sub_24AE08658();

  sub_24AE08678();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v15 = [v12 whitespaceAndNewlineCharacterSet];
  sub_24AE08658();

  sub_24AE08678();
  v14(v9, v4);
  v21[0] = a1;
  v21[1] = a2;
  sub_24ADA16A8();
  v21[0] = sub_24AE09458();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA5E0, &qword_24AE12098);
  sub_24ADFE658();
  v16 = sub_24AE08EC8();
  v18 = v17;

  v14(v11, v4);

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  return v19 == 0;
}

uint64_t PersonModel.Handle.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t static PersonModel.Handle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_24AE097C8();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v5)
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_24AE097C8();
}

uint64_t PersonModel.Handle.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_24AE09048();
  MEMORY[0x24C231780](v3);

  return sub_24AE09048();
}

uint64_t PersonModel.Handle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_24AE09838();
  sub_24AE09048();
  MEMORY[0x24C231780](v3);
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t sub_24ADFF384()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_24AE09838();
  sub_24AE09048();
  MEMORY[0x24C231780](v3);
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t sub_24ADFF404()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_24AE09048();
  MEMORY[0x24C231780](v3);

  return sub_24AE09048();
}

uint64_t sub_24ADFF46C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_24AE09838();
  sub_24AE09048();
  MEMORY[0x24C231780](v3);
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t sub_24ADFF4E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_24AE097C8();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v5)
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_24AE097C8();
}

uint64_t static PersonModel.Handle.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t PersonModel.Handle.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v5 = *(v0 + 16);
  v3 = sub_24AE08FF8();
  MEMORY[0x24C230FB0](v3);

  MEMORY[0x24C230FB0](10333, 0xE200000000000000);
  MEMORY[0x24C230FB0](v1, v2);
  MEMORY[0x24C230FB0](41, 0xE100000000000000);
  return 91;
}

uint64_t sub_24ADFF688()
{
  v1 = *v0;
  v2 = v0[1];
  v5 = *(v0 + 16);
  v3 = sub_24AE08FF8();
  MEMORY[0x24C230FB0](v3);

  MEMORY[0x24C230FB0](10333, 0xE200000000000000);
  MEMORY[0x24C230FB0](v1, v2);
  MEMORY[0x24C230FB0](41, 0xE100000000000000);
  return 91;
}

uint64_t DefaultStringInterpolation.appendInterpolation(_:)(uint64_t *a1)
{
  v1 = a1[1];
  if (!v1)
  {

    JUMPOUT(0x24C230FB0);
  }

  v2 = *a1;
  v5 = a1[2];
  v3 = sub_24AE08FF8();
  MEMORY[0x24C230FB0](v3);

  MEMORY[0x24C230FB0](10333, 0xE200000000000000);
  MEMORY[0x24C230FB0](v2, v1);
  MEMORY[0x24C230FB0](41, 0xE100000000000000);
  MEMORY[0x24C230FB0](91, 0xE100000000000000);
}

{
  v1 = *a1;
  v2 = a1[1];
  v5 = *(a1 + 16);
  v3 = sub_24AE08FF8();
  MEMORY[0x24C230FB0](v3);

  MEMORY[0x24C230FB0](10333, 0xE200000000000000);
  MEMORY[0x24C230FB0](v1, v2);
  MEMORY[0x24C230FB0](41, 0xE100000000000000);
  MEMORY[0x24C230FB0](91, 0xE100000000000000);
}

unint64_t sub_24ADFF8EC()
{
  result = qword_27EFAA610;
  if (!qword_27EFAA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA610);
  }

  return result;
}

unint64_t sub_24ADFF940()
{
  result = qword_27EFAA618;
  if (!qword_27EFAA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA618);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24ADFF9A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24ADFF9F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t PersonModel.Section.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE08948();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_24AE086E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24AE08F78();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  if (*v1 && *v1 == 1)
  {
    sub_24AE08F08();
    *v9 = type metadata accessor for ModelsModule();
    (*(v6 + 104))(v9, *MEMORY[0x277CC9120], v5);
    sub_24AE08938();
    sub_24AE08728();
    v12 = sub_24AE08718();
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  else
  {
    v14 = sub_24AE08718();
    v15 = *(*(v14 - 8) + 56);

    return v15(a1, 1, 1, v14);
  }
}

uint64_t sub_24ADFFCDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 5)
    {
      v5 = *(v3 - 16);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(i - 16);
      v9 = *(i - 1);
      v10 = *i;
      if (*(v3 - 4) == *(i - 4) && *(v3 - 3) == *(i - 3))
      {
        if (v5 != v8)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_24AE097C8();
        result = 0;
        if ((v12 & 1) == 0 || v5 != v8)
        {
          return result;
        }
      }

      v14 = v6 == v9 && v7 == v10;
      if (!v14 && (sub_24AE097C8() & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24ADFFDD8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v19 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v23 = a2 + 56;
  v20 = v7;
  v21 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v22 = (v6 - 1) & v6;
LABEL_13:
      v11 = (*(result + 48) + 16 * (v8 | (v3 << 6)));
      v13 = *v11;
      v12 = v11[1];
      v14 = *(a2 + 40);
      sub_24AE09838();
      sub_24AE08288();
      MEMORY[0x24C230FB0](v13, v12);
      sub_24AE09048();

      v15 = sub_24AE09868() & ~(-1 << *(a2 + 32));
      if (((*(v23 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        break;
      }

      v16 = (*(a2 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_24AE08288();
      MEMORY[0x24C230FB0](v18, v17);
      MEMORY[0x24C230FB0](v13, v12);

      v7 = v20;
      result = v21;
      v6 = v22;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v19 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v22 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE00090(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v43 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v55 = a2 + 56;
  v44 = v6;
  v45 = result;
  v48 = a2;
  while (v5)
  {
    v7 = __clz(__rbit64(v5));
    v46 = (v5 - 1) & v5;
LABEL_15:
    v47 = v2;
    v10 = *(result + 48) + 48 * (v7 | (v2 << 6));
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v15 = *(v10 + 24);
    v14 = *(v10 + 32);
    v16 = *(v10 + 40);
    v17 = *(a2 + 40);
    v18 = a2;
    sub_24AE09838();
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE09048();
    v52 = v13;
    MEMORY[0x24C231780](v13);
    v49 = v15;
    v51 = v14;
    sub_24AE09048();
    v50 = v16;
    sub_24ADF9798(v58, v16);
    v19 = sub_24AE09868();
    v20 = v11;
    v21 = -1 << *(v18 + 32);
    v22 = v19 & ~v21;
    if (((*(v55 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_50:

      return 0;
    }

    v23 = v12;
    v53 = ~v21;
    v54 = v12;
    v56 = v11;
    v57 = *(v48 + 48);
    while (1)
    {
      v24 = v57 + 48 * v22;
      result = *v24;
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);
      v27 = *(v24 + 32);
      v28 = *(v24 + 40);
      v29 = *v24 == v23 && *(v24 + 8) == v20;
      if (v29 || (result = sub_24AE097C8(), (result & 1) != 0))
      {
        if (v25 == v52)
        {
          v30 = v26 == v49 && v27 == v51;
          if (v30 || (result = sub_24AE097C8(), (result & 1) != 0))
          {
            v31 = *(v28 + 16);
            if (v31 == *(v50 + 16))
            {
              break;
            }
          }
        }
      }

LABEL_17:
      v23 = v54;
      v22 = (v22 + 1) & v53;
      v20 = v56;
      if (((*(v55 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    if (v31)
    {
      v32 = v28 == v50;
    }

    else
    {
      v32 = 1;
    }

    if (!v32)
    {
      v33 = (v28 + 64);
      v34 = (v50 + 64);
      while (v31)
      {
        result = *(v33 - 4);
        v35 = *(v33 - 16);
        v36 = *(v33 - 1);
        v37 = *v33;
        v38 = *(v34 - 16);
        v40 = *(v34 - 1);
        v39 = *v34;
        if (result != *(v34 - 4) || *(v33 - 3) != *(v34 - 3))
        {
          result = sub_24AE097C8();
          if ((result & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if (v35 != v38)
        {
          goto LABEL_17;
        }

        if (v36 != v40 || v37 != v39)
        {
          result = sub_24AE097C8();
          if ((result & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v33 += 5;
        v34 += 5;
        if (!--v31)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_7:

    v2 = v47;
    a2 = v48;
    v6 = v44;
    result = v45;
    v5 = v46;
  }

  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v43 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v46 = (v9 - 1) & v9;
      goto LABEL_15;
    }
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_24AE0040C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v30 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v37 = a2 + 56;
  v31 = v6;
  v32 = result;
  v34 = a2;
  if (v5)
  {
    while (1)
    {
      v7 = __clz(__rbit64(v5));
      v33 = (v5 - 1) & v5;
LABEL_13:
      v10 = *(result + 48) + 40 * (v7 | (v2 << 6));
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      v16 = *(a2 + 40);
      v17 = a2;
      sub_24AE09838();
      sub_24AE08288();
      sub_24AE08288();
      sub_24AE09048();
      v35 = v13;
      MEMORY[0x24C231780](v13);
      v36 = v14;
      v18 = v15;
      sub_24AE09048();
      v19 = sub_24AE09868();
      v20 = -1 << *(v17 + 32);
      v21 = v19 & ~v20;
      if (((*(v37 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        break;
      }

      v22 = ~v20;
      v23 = *(v34 + 48);
      while (1)
      {
        v24 = v23 + 40 * v21;
        v25 = *(v24 + 16);
        v26 = *(v24 + 24);
        v27 = *(v24 + 32);
        v28 = *v24 == v12 && *(v24 + 8) == v11;
        if (v28 || (sub_24AE097C8()) && v25 == v35)
        {
          v29 = v26 == v36 && v27 == v18;
          if (v29 || (sub_24AE097C8() & 1) != 0)
          {
            break;
          }
        }

        v21 = (v21 + 1) & v22;
        if (((*(v37 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v6 = v31;
      result = v32;
      v5 = v33;
      a2 = v34;
      if (!v33)
      {
        goto LABEL_8;
      }
    }

LABEL_30:

    return 0;
  }

LABEL_8:
  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v30 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v33 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t KeyPath.appendingSendable<A>(path:)(uint64_t a1)
{
  v3 = (*v1 + *MEMORY[0x277D84DE8]);
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_24AE09898();

  return MEMORY[0x2821FD258](a1, v6);
}

uint64_t sub_24AE006FC()
{
  v0 = sub_24AE08E08();
  __swift_allocate_value_buffer(v0, qword_27EFAA620);
  __swift_project_value_buffer(v0, qword_27EFAA620);
  return sub_24AE08DF8();
}

Swift::Bool __swiftcall PersonModel.contains(search:)(Swift::String search)
{
  v2 = HIBYTE(search._object) & 0xF;
  if ((search._object & 0x2000000000000000) == 0)
  {
    v2 = search._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v9 = *(v1 + 64);
    v11 = *(v1 + 72);
    object = search._object;
    countAndFlagsBits = search._countAndFlagsBits;
    sub_24ADA16A8();
    v5 = sub_24AE09468();
    v10 = *(v1 + 16);
    v12 = *(v1 + 24);
    v13 = *(v1 + 32);
    v14 = *(v1 + 40);
    v15 = *(v1 + 48);
    v16 = *(v1 + 56);
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE08288();
    v6._countAndFlagsBits = countAndFlagsBits;
    v6._object = object;
    LOBYTE(object) = PersonModel.AssociatedHandles.contains(search:)(v6);

    v7 = v5 | object;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_24AE0089C()
{
  result = sub_24ADDB83C(&unk_285E2F5B8);
  qword_27EFB76D0 = result;
  return result;
}

uint64_t PersonModel.listSection(enabledSections:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PersonModel();
  v7 = v2 + *(v6 + 32);
  result = PersonModel.Relationship.pendingAction.getter(&v10);
  if (v10 == 2 || (result = sub_24ADDAAC0(0, a1), v9 = 0, (result & 1) == 0))
  {
    if ((*(v3 + *(v6 + 36) + 8) & 1) != 0 || (v9 = 1, result = sub_24ADDAAC0(1, a1), (result & 1) == 0))
    {
      v9 = 2;
    }
  }

  *a2 = v9;
  return result;
}

uint64_t PersonModel.Tag.title.getter()
{
  if (*v0 == 1)
  {
    if (qword_27EFA8800 != -1)
    {
      swift_once();
    }

    v1 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (*v0)
  {
    if (qword_27EFA8800 != -1)
    {
      swift_once();
    }

    v1 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      goto LABEL_14;
    }

LABEL_15:
    v4 = objc_opt_self();
    sub_24AE08288();
    v3 = [v4 mainBundle];
    v2 = 0;
    goto LABEL_16;
  }

  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFB76F0;
  if (!qword_27EFB76F0)
  {
    goto LABEL_15;
  }

LABEL_14:
  sub_24AE08288();
  v2 = v1;
  v3 = v2;
LABEL_16:
  v5 = v2;
  v6 = sub_24AE08F88();
  v7 = sub_24AE08F88();
  v8 = [v3 localizedStringForKey:v6 value:0 table:v7];

  v9 = sub_24AE08FB8();

  return v9;
}

uint64_t PersonModel.Tag.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x24C231780](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x24C231780](v4);
  }

  MEMORY[0x24C231780](2);

  return sub_24ADF0718(a1, v3);
}

uint64_t PersonModel.Tag.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x24C231780](2);
      sub_24ADF0718(v4, v1);
      return sub_24AE09868();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x24C231780](v2);
  return sub_24AE09868();
}

uint64_t sub_24AE00DC4()
{
  v1 = *v0;
  sub_24AE09838();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x24C231780](2);
      sub_24ADF0718(v4, v1);
      return sub_24AE09868();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x24C231780](v2);
  return sub_24AE09868();
}

uint64_t sub_24AE00E38(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x24C231780](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x24C231780](v4);
  }

  MEMORY[0x24C231780](2);

  return sub_24ADF0718(a1, v3);
}

uint64_t sub_24AE00EB8()
{
  v1 = *v0;
  sub_24AE09838();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x24C231780](2);
      sub_24ADF0718(v4, v1);
      return sub_24AE09868();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x24C231780](v2);
  return sub_24AE09868();
}

uint64_t PersonModel.contains(tag:)(unint64_t *a1)
{
  v3 = type metadata accessor for PersonModel();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v54 - v9);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v54 - v12);
  v14 = *a1;
  if (!v14)
  {
    return 1;
  }

  if (v14 != 1)
  {
    v26 = *(v1 + 16);
    v25 = *(v1 + 24);
    v27 = *(v1 + 32);
    v28 = *(v1 + 40);
    v29 = *(v1 + 48);
    v30 = v1;
    v31 = *(v1 + 56);
    v56 = v26;
    v57 = v25;
    v58 = v27;
    v59 = v28;
    *&v60 = v29;
    *(&v60 + 1) = v31;
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE08288();
    LOBYTE(v31) = PersonModel.AssociatedHandles.match(handlesSet:)(v14);

    if ((v31 & 1) == 0)
    {
      if (qword_27EFA87D0 != -1)
      {
        swift_once();
      }

      v33 = sub_24AE08E08();
      __swift_project_value_buffer(v33, qword_27EFAA620);
      sub_24AE02024(v30, v10, type metadata accessor for PersonModel);
      sub_24AE02024(v30, v7, type metadata accessor for PersonModel);
      sub_24AE08288();
      v34 = sub_24AE08DE8();
      v35 = sub_24AE09408();
      sub_24ADC3E14(v14);
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v55 = v37;
        *v36 = 136315650;
        v38 = *v10;
        v39 = v10[1];
        v56 = 0x3A3156444953;
        v57 = 0xE600000000000000;
        MEMORY[0x24C230FB0](v38, v39);
        v40 = v56;
        v41 = v57;
        sub_24AE0208C(v10, type metadata accessor for PersonModel);
        v42 = sub_24AD9F840(v40, v41, &v55);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2080;
        v43 = *(v7 + 3);
        v44 = v7[32];
        v45 = *(v7 + 5);
        v56 = *(v7 + 2);
        v57 = v43;
        v58 = v44;
        v59 = v45;
        v60 = *(v7 + 3);
        v46 = PersonModel.AssociatedHandles.debugDescription.getter();
        v48 = v47;
        sub_24AE0208C(v7, type metadata accessor for PersonModel);
        v49 = sub_24AD9F840(v46, v48, &v55);

        *(v36 + 14) = v49;
        *(v36 + 22) = 2080;
        sub_24AE01A58();
        v50 = sub_24AE09328();
        v52 = sub_24AD9F840(v50, v51, &v55);

        *(v36 + 24) = v52;
        _os_log_impl(&dword_24AD89000, v34, v35, "PersonModel: %s is not part of specificHandles - contains:false - handles: %s, specificHandles: %s", v36, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C231F80](v37, -1, -1);
        MEMORY[0x24C231F80](v36, -1, -1);

        return 0;
      }

      sub_24AE0208C(v10, type metadata accessor for PersonModel);
      v53 = v7;
LABEL_16:
      sub_24AE0208C(v53, type metadata accessor for PersonModel);
      return 0;
    }

    return 1;
  }

  if (*(v1 + *(v11 + 36) + 8) != 1)
  {
    return 1;
  }

  if (qword_27EFA87D0 != -1)
  {
    swift_once();
  }

  v15 = sub_24AE08E08();
  __swift_project_value_buffer(v15, qword_27EFAA620);
  sub_24AE02024(v1, v13, type metadata accessor for PersonModel);
  v16 = sub_24AE08DE8();
  v17 = sub_24AE09408();
  if (!os_log_type_enabled(v16, v17))
  {

    v53 = v13;
    goto LABEL_16;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v55 = v19;
  *v18 = 136315138;
  v20 = *v13;
  v21 = v13[1];
  v56 = 0x3A3156444953;
  v57 = 0xE600000000000000;
  MEMORY[0x24C230FB0](v20, v21);
  v22 = v56;
  v23 = v57;
  sub_24AE0208C(v13, type metadata accessor for PersonModel);
  v24 = sub_24AD9F840(v22, v23, &v55);

  *(v18 + 4) = v24;
  _os_log_impl(&dword_24AD89000, v16, v17, "PersonModel: %s is not favorite - contains:false", v18, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v19);
  MEMORY[0x24C231F80](v19, -1, -1);
  MEMORY[0x24C231F80](v18, -1, -1);

  return 0;
}

uint64_t sub_24AE014A0()
{
  result = sub_24ADDB850(&unk_285E2F5E0);
  qword_27EFB76D8 = result;
  return result;
}

uint64_t PersonModel.Sort.sortDescriptor<A>(rootKeyPath:)()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      KeyPath = swift_getKeyPath();
      KeyPath.appendingSendable<A>(path:)(KeyPath);

      sub_24ADC3CF8();
    }

    else
    {
      v3 = swift_getKeyPath();
      KeyPath.appendingSendable<A>(path:)(v3);

      sub_24ADC3BD4();
    }
  }

  else
  {
    v2 = swift_getKeyPath();
    KeyPath.appendingSendable<A>(path:)(v2);
  }

  return sub_24ADF4914();
}

uint64_t sub_24AE015E8()
{
  v1 = (v0 + *(type metadata accessor for PersonModel() + 36));
  if (v1[8])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_24AE01620@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = type metadata accessor for PersonModel();
  v5 = a1 + *(result + 36);
  v6 = *v5;
  v7 = *(v5 + 8) == 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7)
  {
    v8 = v6;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_24AE0166C()
{
  v1 = type metadata accessor for PersonModel.Relationship.Following(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for PersonModel() + 32);
  PersonModel.Relationship.pendingAction.getter(&v9);
  if (v9 != 2)
  {
    return ~v9 & 1;
  }

  sub_24AE02024(v0 + v5, v4, type metadata accessor for PersonModel.Relationship.Following);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24AE0208C(v4, type metadata accessor for PersonModel.Relationship.Following);
    return 3;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8);
    sub_24ADF9B4C(&v4[*(v7 + 48)]);
    sub_24ADF9B4C(v4);
    return 2;
  }
}

uint64_t sub_24AE017A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PersonModel.Relationship.Following(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for PersonModel() + 32);
  result = PersonModel.Relationship.pendingAction.getter(&v13);
  if (v13 == 2)
  {
    sub_24AE02024(a1 + v8, v7, type metadata accessor for PersonModel.Relationship.Following);
    if (swift_getEnumCaseMultiPayload())
    {
      result = sub_24AE0208C(v7, type metadata accessor for PersonModel.Relationship.Following);
      v10 = 3;
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8);
      sub_24ADF9B4C(&v7[*(v11 + 48)]);
      result = sub_24ADF9B4C(v7);
      v10 = 2;
    }
  }

  else
  {
    v10 = (v13 & 1) == 0;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_24AE018DC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t sub_24AE018E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  *a2 = v2;
  a2[1] = v3;
  return sub_24AE08288();
}

uint64_t _s10FindMyCore11PersonModelV3TagO2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_24ADC3E24(*a2);
      sub_24ADC3E24(v2);
      v4 = sub_24AE00090(v2, v3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_24ADC3E24(*a2);
    sub_24ADC3E24(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  sub_24ADC3E14(v2);
  sub_24ADC3E14(v3);
  return v4 & 1;
}

unint64_t sub_24AE01A58()
{
  result = qword_27EFAA648;
  if (!qword_27EFAA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA648);
  }

  return result;
}

unint64_t sub_24AE01AB0()
{
  result = qword_27EFAA650;
  if (!qword_27EFAA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA650);
  }

  return result;
}

unint64_t sub_24AE01B08()
{
  result = qword_27EFAA658;
  if (!qword_27EFAA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA658);
  }

  return result;
}

unint64_t sub_24AE01B5C()
{
  result = qword_27EFAA660;
  if (!qword_27EFAA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA660);
  }

  return result;
}

unint64_t sub_24AE01BDC()
{
  result = qword_27EFAA668;
  if (!qword_27EFAA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA668);
  }

  return result;
}

unint64_t sub_24AE01C64()
{
  result = qword_27EFAA680;
  if (!qword_27EFAA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA680);
  }

  return result;
}

unint64_t sub_24AE01CB8(uint64_t a1)
{
  result = sub_24AE01CE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE01CE0()
{
  result = qword_27EFAA688;
  if (!qword_27EFAA688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA688);
  }

  return result;
}

unint64_t sub_24AE01D38()
{
  result = qword_27EFAA690;
  if (!qword_27EFAA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA690);
  }

  return result;
}

unint64_t sub_24AE01D90()
{
  result = qword_27EFAA698;
  if (!qword_27EFAA698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA698);
  }

  return result;
}

unint64_t sub_24AE01DE8()
{
  result = qword_27EFAA6A0;
  if (!qword_27EFAA6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA6A0);
  }

  return result;
}

uint64_t sub_24AE01E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24AE01EA4()
{
  result = qword_27EFAA6A8;
  if (!qword_27EFAA6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA6A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FindMyCore11PersonModelV3TagO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24AE01F54(uint64_t *a1, unsigned int a2)
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

uint64_t sub_24AE01FA8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24AE02024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AE0208C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PersonModel.Relationship.init(following:follower:replyState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for PersonModel.Relationship(0);
  v9 = *(v8 + 24);
  *(a4 + v9) = 2;
  sub_24AD92C44(a1, a4, type metadata accessor for PersonModel.Relationship.Following);
  result = sub_24AD92C44(a2, a4 + *(v8 + 20), type metadata accessor for PersonModel.Relationship.Follower);
  *(a4 + v9) = v7;
  return result;
}

BOOL sub_24AE0228C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  sub_24AE0239C(v6, &v14 - v9, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_24AE02404(v10, a3);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8);
    sub_24AD92BE4(&v10[*(v12 + 48)], &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(v10, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  return EnumCaseMultiPayload == 0;
}

uint64_t sub_24AE0239C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AE02404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PersonModel.Relationship.Follower.expiryDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE0239C(v2, v7, type metadata accessor for PersonModel.Relationship.Follower);
  if (swift_getEnumCaseMultiPayload())
  {
    v8 = sub_24AE088E8();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    return sub_24AE02404(v7, type metadata accessor for PersonModel.Relationship.Follower);
  }

  else
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    sub_24AE05B10(v7, a1, &qword_27EFA8878, &qword_24AE0E6E0);
    return sub_24AD92BE4(&v7[v10], &qword_27EFA8878, &qword_24AE0E6E0);
  }
}

BOOL sub_24AE025F4(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  sub_24AE0239C(v6, &v13 - v9, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_24AD92BE4(v10, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  else
  {
    sub_24AE02404(v10, a3);
  }

  return EnumCaseMultiPayload == 1;
}

BOOL PersonModel.Relationship.Follower.isPendingOffer.getter()
{
  v1 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE0239C(v0, v4, type metadata accessor for PersonModel.Relationship.Follower);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_24AD92BE4(v4, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  else
  {
    sub_24AE02404(v4, type metadata accessor for PersonModel.Relationship.Follower);
  }

  return EnumCaseMultiPayload == 2;
}

uint64_t PersonModel.Relationship.pendingAction.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PersonModel.Relationship(0);
  sub_24AE0239C(v1 + *(v7 + 20), v6, type metadata accessor for PersonModel.Relationship.Follower);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_24AD92BE4(v6, &qword_27EFA8878, &qword_24AE0E6E0);
    v9 = 0;
  }

  else
  {
    v10 = *(v1 + *(v7 + 24));
    if (v10 == 2 || (v10 & 1) == 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    result = sub_24AE02404(v6, type metadata accessor for PersonModel.Relationship.Follower);
  }

  *a1 = v9;
  return result;
}

uint64_t PersonModel.Relationship.sortOrder.getter()
{
  v1 = type metadata accessor for PersonModel.Relationship.Following(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  PersonModel.Relationship.pendingAction.getter(&v8);
  if (v8 != 2)
  {
    return ~v8 & 1;
  }

  sub_24AE0239C(v0, v4, type metadata accessor for PersonModel.Relationship.Following);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24AE02404(v4, type metadata accessor for PersonModel.Relationship.Following);
    return 3;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8);
    sub_24AD92BE4(&v4[*(v6 + 48)], &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(v4, &qword_27EFA8878, &qword_24AE0E6E0);
    return 2;
  }
}

uint64_t PersonModel.Relationship.replyState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PersonModel.Relationship(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PersonModel.Relationship.replyState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PersonModel.Relationship(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t sub_24AE02C30()
{
  v0 = type metadata accessor for PersonModel.Relationship(0);
  __swift_allocate_value_buffer(v0, qword_27EFAA6C0);
  v1 = __swift_project_value_buffer(v0, qword_27EFAA6C0);
  type metadata accessor for PersonModel.Relationship.Following(0);
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 20);
  type metadata accessor for PersonModel.Relationship.Follower(0);
  result = swift_storeEnumTagMultiPayload();
  *(v1 + *(v0 + 24)) = 2;
  return result;
}

uint64_t static PersonModel.Relationship.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA87F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PersonModel.Relationship(0);
  v3 = __swift_project_value_buffer(v2, qword_27EFAA6C0);
  return sub_24AE0239C(v3, a1, type metadata accessor for PersonModel.Relationship);
}

uint64_t PersonModel.Relationship.isMutual.getter()
{
  v1 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PersonModel.Relationship.Following(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE0239C(v0, v8, type metadata accessor for PersonModel.Relationship.Following);
  if (swift_getEnumCaseMultiPayload())
  {
    v9 = type metadata accessor for PersonModel.Relationship.Following;
    v10 = v8;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8);
    sub_24AD92BE4(&v8[*(v11 + 48)], &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(v8, &qword_27EFA8878, &qword_24AE0E6E0);
    v12 = type metadata accessor for PersonModel.Relationship(0);
    sub_24AE0239C(v0 + *(v12 + 20), v4, type metadata accessor for PersonModel.Relationship.Follower);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_24AD92BE4(&v4[*(v11 + 48)], &qword_27EFA8878, &qword_24AE0E6E0);
      sub_24AD92BE4(v4, &qword_27EFA8878, &qword_24AE0E6E0);
      return 1;
    }

    v9 = type metadata accessor for PersonModel.Relationship.Follower;
    v10 = v4;
  }

  sub_24AE02404(v10, v9);
  return 0;
}

uint64_t PersonModel.Relationship.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  PersonModel.Relationship.pendingAction.getter(&v20);
  if (v20 == 2)
  {
    v10 = type metadata accessor for PersonModel.Relationship(0);
    sub_24AE0239C(v1 + *(v10 + 20), v9, type metadata accessor for PersonModel.Relationship.Follower);
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_5:
      result = sub_24AE02404(v9, type metadata accessor for PersonModel.Relationship.Follower);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_9;
    }

    sub_24AE0239C(v9, v7, type metadata accessor for PersonModel.Relationship.Follower);
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    v12 = sub_24AE088E8();
    if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
    {
      sub_24AD92BE4(&v7[v11], &qword_27EFA8878, &qword_24AE0E6E0);
      sub_24AD92BE4(v7, &qword_27EFA8878, &qword_24AE0E6E0);
      goto LABEL_5;
    }

    v19 = v11;
    if (qword_27EFA86E8 != -1)
    {
      swift_once();
    }

    v14 = qword_27EFAA008;
    v15 = unk_27EFAA010;
    v16 = qword_27EFAA018;
    v17 = unk_27EFAA020;
    v18 = word_27EFAA028 | (HIBYTE(word_27EFAA028) << 8);
    sub_24AE08288();
    sub_24AE08288();
    sub_24AD92BE4(v7, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(&v7[v19], &qword_27EFA8878, &qword_24AE0E6E0);
    result = sub_24AE02404(v9, type metadata accessor for PersonModel.Relationship.Follower);
  }

  else
  {
    if (qword_27EFA86D8 != -1)
    {
      swift_once();
    }

    v14 = qword_27EFA9FB8;
    v15 = unk_27EFA9FC0;
    v16 = qword_27EFA9FC8;
    v17 = unk_27EFA9FD0;
    v18 = word_27EFA9FD8 | (HIBYTE(word_27EFA9FD8) << 8);
    sub_24AE08288();
    result = sub_24AE08288();
  }

LABEL_9:
  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
  return result;
}

uint64_t PersonModel.Relationship.status(isLocationSharingOn:isCapableOfRunningActions:includePendingActionStatus:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v66) = a3;
  LODWORD(v65) = a2;
  v60 = a1;
  v6 = sub_24AE08948();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_24AE086E8();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v8);
  v61 = (&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_24AE08F78();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v14 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v68 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for PersonModel.Relationship.Following(0);
  v16 = *(*(v71 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v71);
  v70 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v59 = &v57 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA6D8, &qword_24AE12838);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v69 = &v57 - v26;
  v27 = sub_24AE08718();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v57 - v33;
  PersonModel.Relationship.pendingAction.getter(&v73);
  if (v73 == 2)
  {
    v66 = a4;
    v35 = v27;
  }

  else
  {
    v58 = v23;
    v72 = v73 & 1;
    PersonModel.Relationship.PendingAction.compactStatus(isCapableOfRunningActions:)(v32);
    v36 = *(v28 + 32);
    v36(v34, v32, v27);
    v35 = v27;
    if (v66)
    {
      v36(a4, v34, v27);
      return (*(v28 + 56))(a4, 0, 1, v27);
    }

    (*(v28 + 8))(v34, v27);
    v66 = a4;
    v23 = v58;
  }

  v38 = type metadata accessor for PersonModel.Relationship(0);
  v39 = *(v20 + 48);
  sub_24AE0239C(v4 + *(v38 + 20), v23, type metadata accessor for PersonModel.Relationship.Follower);
  sub_24AE0239C(v4, &v23[v39], type metadata accessor for PersonModel.Relationship.Following);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v41 = v68;
  v42 = v70;
  if (!EnumCaseMultiPayload)
  {
    v44 = v59;
    sub_24AE0239C(&v23[v39], v59, type metadata accessor for PersonModel.Relationship.Following);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    v43 = v69;
    (*(v28 + 56))(v69, 1, 1, v35);
    sub_24AD92BE4(v44 + v45, &qword_27EFA8878, &qword_24AE0E6E0);
    v46 = v44;
LABEL_11:
    sub_24AD92BE4(v46, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE02404(&v23[v39], type metadata accessor for PersonModel.Relationship.Following);
LABEL_18:
    v52 = type metadata accessor for PersonModel.Relationship.Follower;
    v53 = v23;
LABEL_24:
    sub_24AE02404(v53, v52);
    return sub_24AE05B10(v43, v66, &qword_27EFA8D98, &qword_24AE0B490);
  }

  v43 = v69;
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_15;
  }

  sub_24AE0239C(&v23[v39], v70, type metadata accessor for PersonModel.Relationship.Following);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24AD92BE4(v42, &qword_27EFAA6E0, &qword_24AE12840);
    goto LABEL_15;
  }

  v65 = v28;
  sub_24AE0239C(v23, v41, type metadata accessor for PersonModel.Relationship.Follower);
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
  if (v60)
  {
    sub_24AE08F08();
    v48 = type metadata accessor for ModelsModule();
    v49 = v61;
    *v61 = v48;
    (*(v63 + 104))(v49, *MEMORY[0x277CC9120], v64);
    sub_24AE08938();
    sub_24AE08728();
    (*(v65 + 56))(v43, 0, 1, v35);
    sub_24AD92BE4(v70, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(v41 + v47, &qword_27EFA8878, &qword_24AE0E6E0);
    v46 = v41;
    goto LABEL_11;
  }

  sub_24AD92BE4(v70, &qword_27EFA8878, &qword_24AE0E6E0);
  sub_24AD92BE4(v41 + v47, &qword_27EFA8878, &qword_24AE0E6E0);
  sub_24AD92BE4(v41, &qword_27EFA8878, &qword_24AE0E6E0);
  v28 = v65;
LABEL_15:
  if (!swift_getEnumCaseMultiPayload())
  {
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    if (v60)
    {
      sub_24AE08F08();
      v55 = type metadata accessor for ModelsModule();
      v56 = v61;
      *v61 = v55;
      (*(v63 + 104))(v56, *MEMORY[0x277CC9120], v64);
      sub_24AE08938();
      sub_24AE08728();
      (*(v28 + 56))(v43, 0, 1, v35);
    }

    else
    {
      (*(v28 + 56))(v43, 1, 1, v35);
    }

    sub_24AD92BE4(&v23[v54], &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(v23, &qword_27EFA8878, &qword_24AE0E6E0);
    v52 = type metadata accessor for PersonModel.Relationship.Following;
    v53 = &v23[v39];
    goto LABEL_24;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24AE08F08();
    v50 = type metadata accessor for ModelsModule();
    v51 = v61;
    *v61 = v50;
    (*(v63 + 104))(v51, *MEMORY[0x277CC9120], v64);
    sub_24AE08938();
    sub_24AE08728();
    (*(v28 + 56))(v43, 0, 1, v35);
    sub_24AD92BE4(&v23[v39], &qword_27EFA8878, &qword_24AE0E6E0);
    goto LABEL_18;
  }

  (*(v28 + 56))(v43, 1, 1, v35);
  sub_24AD92BE4(v23, &qword_27EFAA6D8, &qword_24AE12838);
  return sub_24AE05B10(v43, v66, &qword_27EFA8D98, &qword_24AE0B490);
}

uint64_t PersonModel.Relationship.PendingAction.compactStatus(isCapableOfRunningActions:)@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_24AE08948();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_24AE086E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24AE08F78();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v22 = sub_24AE08718();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  v18 = *v1;
  v19 = (v5 + 104);
  if (v18)
  {
    sub_24AE08F08();
    *v8 = type metadata accessor for ModelsModule();
    (*v19)(v8, *MEMORY[0x277CC9120], v4);
    sub_24AE08938();
    v17 = v15;
  }

  else
  {
    sub_24AE08F08();
    *v8 = type metadata accessor for ModelsModule();
    (*v19)(v8, *MEMORY[0x277CC9120], v4);
    sub_24AE08938();
  }

  sub_24AE08728();
  return (*(v11 + 32))(v23, v17, v22);
}

uint64_t PersonModel.Relationship.PendingAction.status(isCapableOfRunningActions:)(uint64_t a1, uint64_t a2, char a3)
{
  v48 = a1;
  v49 = a2;
  v5 = sub_24AE08948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_24AE086E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_24AE08F78();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA6E8, &qword_24AE12848);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v45 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v45 - v23;
  v25 = *v3;
  v46 = *(v22 + 48);
  v47 = v22;
  v26 = (v8 + 104);
  if (v25)
  {
    sub_24AE08F08();
    if (a3)
    {
      *v11 = type metadata accessor for ModelsModule();
      (*v26)(v11, *MEMORY[0x277CC9120], v7);
      sub_24AE08938();
      sub_24AE08728();
      v27 = 1;
      v28 = v46;
    }

    else
    {
      v31 = type metadata accessor for ModelsModule();
      *v11 = v31;
      v32 = *MEMORY[0x277CC9120];
      v33 = *v26;
      (*v26)(v11, v32, v7);
      sub_24AE08938();
      sub_24AE08728();
      sub_24AE08F08();
      *v11 = v31;
      v33(v11, v32, v7);
      sub_24AE08938();
      v28 = v46;
      sub_24AE08728();
      v27 = 0;
    }

    v34 = sub_24AE08718();
    v35 = *(v34 - 8);
    (*(v35 + 56))(&v18[v28], v27, 1, v34);
    v36 = v47;
    v37 = *(v47 + 48);
    (*(v35 + 32))(v24, v18, v34);
    v38 = &v18[v37];
  }

  else
  {
    sub_24AE08F08();
    if (a3)
    {
      *v11 = type metadata accessor for ModelsModule();
      (*v26)(v11, *MEMORY[0x277CC9120], v7);
      sub_24AE08938();
      sub_24AE08728();
      v29 = 1;
      v30 = v46;
    }

    else
    {
      v39 = type metadata accessor for ModelsModule();
      *v11 = v39;
      v40 = *MEMORY[0x277CC9120];
      v41 = *v26;
      (*v26)(v11, v40, v7);
      sub_24AE08938();
      sub_24AE08728();
      sub_24AE08F08();
      *v11 = v39;
      v41(v11, v40, v7);
      sub_24AE08938();
      v30 = v46;
      sub_24AE08728();
      v29 = 0;
    }

    v34 = sub_24AE08718();
    v42 = *(v34 - 8);
    (*(v42 + 56))(&v21[v30], v29, 1, v34);
    v36 = v47;
    v37 = *(v47 + 48);
    (*(v42 + 32))(v24, v21, v34);
    v38 = &v21[v37];
  }

  sub_24AE05B10(v38, &v24[v37], &qword_27EFA8D98, &qword_24AE0B490);
  v43 = *(v36 + 48);
  sub_24AE08718();
  (*(*(v34 - 8) + 32))(v48, v24, v34);
  return sub_24AE05B10(&v24[v43], v49, &qword_27EFA8D98, &qword_24AE0B490);
}

uint64_t PersonModel.Relationship.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24AE088E8();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v49 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v49 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v49 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v49 - v25;
  v27 = type metadata accessor for PersonModel.Relationship.Following(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v2;
  sub_24AE0239C(v2, v30, type metadata accessor for PersonModel.Relationship.Following);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24AE05B10(v30, v18, &qword_27EFA8878, &qword_24AE0E6E0);
      MEMORY[0x24C231780](2);
      sub_24ADF9ADC(v18, v15);
      v32 = v52;
      v33 = v53;
      if ((*(v53 + 48))(v15, 1, v52) == 1)
      {
        sub_24AE09858();
      }

      else
      {
        v39 = v51;
        (*(v33 + 32))(v51, v15, v32);
        sub_24AE09858();
        sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
        sub_24AE08EB8();
        (*(v33 + 8))(v39, v32);
      }

      sub_24AD92BE4(v18, &qword_27EFA8878, &qword_24AE0E6E0);
      v38 = v54;
    }

    else
    {
      MEMORY[0x24C231780](1);
      v38 = v54;
    }
  }

  else
  {
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    sub_24AE05B10(v30, v26, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(&v30[v34], v24, &qword_27EFA8878, &qword_24AE0E6E0);
    MEMORY[0x24C231780](0);
    sub_24ADF9ADC(v26, v21);
    v36 = v52;
    v35 = v53;
    v37 = *(v53 + 48);
    if (v37(v21, 1, v52) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v40 = *(v35 + 32);
      v50 = v37;
      v41 = v51;
      v40(v51, v21, v36);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
      sub_24AE08EB8();
      v42 = v41;
      v37 = v50;
      (*(v35 + 8))(v42, v36);
    }

    v38 = v54;
    sub_24ADF9ADC(v24, v12);
    if (v37(v12, 1, v36) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v43 = v53;
      v44 = v51;
      (*(v53 + 32))(v51, v12, v36);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
      sub_24AE08EB8();
      (*(v43 + 8))(v44, v36);
    }

    sub_24AD92BE4(v24, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(v26, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  v45 = type metadata accessor for PersonModel.Relationship(0);
  v46 = v38 + *(v45 + 20);
  PersonModel.Relationship.Follower.hash(into:)(a1);
  v47 = *(v38 + *(v45 + 24));
  if (v47 == 2)
  {
    return sub_24AE09858();
  }

  sub_24AE09858();
  return MEMORY[0x24C231780](v47 & 1);
}

uint64_t PersonModel.Relationship.Follower.hash(into:)(uint64_t a1)
{
  v54 = a1;
  v2 = sub_24AE088E8();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v49 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v49 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v49 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v49 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v49 - v26;
  MEMORY[0x28223BE20](v25);
  v50 = &v49 - v28;
  v29 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE0239C(v1, v32, type metadata accessor for PersonModel.Relationship.Follower);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return MEMORY[0x24C231780](1);
    }

    sub_24AE05B10(v32, v12, &qword_27EFA8878, &qword_24AE0E6E0);
    MEMORY[0x24C231780](3);
    sub_24ADF9ADC(v12, v9);
    v40 = v52;
    v39 = v53;
    if ((*(v52 + 48))(v9, 1, v53) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v45 = v51;
      (*(v40 + 32))(v51, v9, v39);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
      sub_24AE08EB8();
      (*(v40 + 8))(v45, v39);
    }

    v46 = v12;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_24AE05B10(v32, v18, &qword_27EFA8878, &qword_24AE0E6E0);
    MEMORY[0x24C231780](2);
    sub_24ADF9ADC(v18, v15);
    v42 = v52;
    v41 = v53;
    if ((*(v52 + 48))(v15, 1, v53) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v47 = v51;
      (*(v42 + 32))(v51, v15, v41);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
      sub_24AE08EB8();
      (*(v42 + 8))(v47, v41);
    }

    v46 = v18;
  }

  else
  {
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    v35 = v50;
    sub_24AE05B10(v32, v50, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(&v32[v34], v27, &qword_27EFA8878, &qword_24AE0E6E0);
    MEMORY[0x24C231780](0);
    sub_24ADF9ADC(v35, v24);
    v37 = v52;
    v36 = v53;
    v38 = *(v52 + 48);
    if (v38(v24, 1, v53) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v44 = v51;
      (*(v37 + 32))(v51, v24, v36);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
      sub_24AE08EB8();
      (*(v37 + 8))(v44, v36);
    }

    sub_24ADF9ADC(v27, v21);
    if (v38(v21, 1, v36) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v48 = v51;
      (*(v37 + 32))(v51, v21, v36);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
      sub_24AE08EB8();
      (*(v37 + 8))(v48, v36);
    }

    sub_24AD92BE4(v27, &qword_27EFA8878, &qword_24AE0E6E0);
    v46 = v50;
  }

  return sub_24AD92BE4(v46, &qword_27EFA8878, &qword_24AE0E6E0);
}

uint64_t PersonModel.Relationship.Following.hash(into:)(uint64_t a1)
{
  v43 = a1;
  v2 = sub_24AE088E8();
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v40 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = type metadata accessor for PersonModel.Relationship.Following(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE0239C(v1, v27, type metadata accessor for PersonModel.Relationship.Following);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return MEMORY[0x24C231780](1);
    }

    sub_24AE05B10(v27, v12, &qword_27EFA8878, &qword_24AE0E6E0);
    MEMORY[0x24C231780](2);
    sub_24ADF9ADC(v12, v9);
    v29 = v42;
    if ((*(v42 + 48))(v9, 1, v2) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v34 = v41;
      (*(v29 + 32))(v41, v9, v2);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
      sub_24AE08EB8();
      (*(v29 + 8))(v34, v2);
    }

    v35 = v12;
  }

  else
  {
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    sub_24AE05B10(v27, v23, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(&v27[v30], v21, &qword_27EFA8878, &qword_24AE0E6E0);
    MEMORY[0x24C231780](0);
    sub_24ADF9ADC(v23, v18);
    v31 = v42;
    v32 = *(v42 + 48);
    if (v32(v18, 1, v2) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v36 = *(v31 + 32);
      v40 = v32;
      v37 = v41;
      v36(v41, v18, v2);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
      sub_24AE08EB8();
      v38 = v37;
      v32 = v40;
      (*(v31 + 8))(v38, v2);
    }

    sub_24ADF9ADC(v21, v15);
    if (v32(v15, 1, v2) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v39 = v41;
      (*(v31 + 32))(v41, v15, v2);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
      sub_24AE08EB8();
      (*(v31 + 8))(v39, v2);
    }

    sub_24AD92BE4(v21, &qword_27EFA8878, &qword_24AE0E6E0);
    v35 = v23;
  }

  return sub_24AD92BE4(v35, &qword_27EFA8878, &qword_24AE0E6E0);
}

uint64_t sub_24AE05984(void (*a1)(_BYTE *))
{
  sub_24AE09838();
  a1(v3);
  return sub_24AE09868();
}

uint64_t sub_24AE059E4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_24AE09838();
  a3(v5);
  return sub_24AE09868();
}

uint64_t sub_24AE05A48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_24AE09838();
  a4(v6);
  return sub_24AE09868();
}

uint64_t sub_24AE05AA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AE05B10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

BOOL _s10FindMyCore11PersonModelV12RelationshipV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s10FindMyCore11PersonModelV12RelationshipV9FollowingO2eeoiySbAG_AGtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PersonModel.Relationship(0);
  if ((_s10FindMyCore11PersonModelV12RelationshipV8FollowerO2eeoiySbAG_AGtFZ_0(a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 != 2)
  {
    return v7 != 2 && ((v7 ^ v6) & 1) == 0;
  }

  return v7 == 2;
}

uint64_t _s10FindMyCore11PersonModelV12RelationshipV9FollowingO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v87 = a1;
  v88 = a2;
  v2 = sub_24AE088E8();
  v83 = *(v2 - 8);
  v84 = v2;
  v3 = *(v83 + 64);
  MEMORY[0x28223BE20](v2);
  v81 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8870, &unk_24AE0A2C0);
  v5 = *(*(v86 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v86);
  v82 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v79 = &v79 - v9;
  MEMORY[0x28223BE20](v8);
  v85 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v80 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v79 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v79 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v79 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v79 - v24;
  v26 = type metadata accessor for PersonModel.Relationship.Following(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v79 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA760, &qword_24AE12AE0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v79 - v36;
  v38 = &v79 + *(v35 + 56) - v36;
  sub_24AE0239C(v87, &v79 - v36, type metadata accessor for PersonModel.Relationship.Following);
  sub_24AE0239C(v88, v38, type metadata accessor for PersonModel.Relationship.Following);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v45 = v85;
    v87 = v25;
    v88 = v23;
    v82 = v17;
    sub_24AE0239C(v37, v32, type metadata accessor for PersonModel.Relationship.Following);
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_24AD92BE4(&v32[v46], &qword_27EFA8878, &qword_24AE0E6E0);
      goto LABEL_13;
    }

    v80 = v37;
    v49 = v87;
    sub_24AE05B10(&v32[v46], v87, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(&v38[v46], v88, &qword_27EFA8878, &qword_24AE0E6E0);
    v50 = *(v86 + 48);
    v51 = v32;
    v52 = v45;
    sub_24AE05B10(v51, v45, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(v38, v45 + v50, &qword_27EFA8878, &qword_24AE0E6E0);
    v53 = v83;
    v54 = *(v83 + 48);
    v55 = v45;
    v56 = v84;
    if (v54(v55, 1, v84) == 1)
    {
      if (v54(v52 + v50, 1, v56) == 1)
      {
        sub_24AD92BE4(v52, &qword_27EFA8878, &qword_24AE0E6E0);
LABEL_30:
        v70 = *(v86 + 48);
        v71 = v49;
        v72 = v49;
        v73 = v79;
        sub_24ADF9ADC(v71, v79);
        v74 = v88;
        sub_24ADF9ADC(v88, v73 + v70);
        if (v54(v73, 1, v56) == 1)
        {
          sub_24AD92BE4(v74, &qword_27EFA8878, &qword_24AE0E6E0);
          sub_24AD92BE4(v72, &qword_27EFA8878, &qword_24AE0E6E0);
          if (v54(v73 + v70, 1, v56) == 1)
          {
            sub_24AD92BE4(v73, &qword_27EFA8878, &qword_24AE0E6E0);
LABEL_39:
            v47 = v80;
            goto LABEL_11;
          }
        }

        else
        {
          v75 = v82;
          sub_24ADF9ADC(v73, v82);
          if (v54(v73 + v70, 1, v56) != 1)
          {
            v76 = v81;
            (*(v53 + 32))(v81, v73 + v70, v56);
            sub_24AE074CC(&qword_27EFA8890, MEMORY[0x277CC9578]);
            v77 = sub_24AE08EF8();
            v78 = *(v53 + 8);
            v78(v76, v56);
            sub_24AD92BE4(v88, &qword_27EFA8878, &qword_24AE0E6E0);
            sub_24AD92BE4(v87, &qword_27EFA8878, &qword_24AE0E6E0);
            v78(v75, v56);
            sub_24AD92BE4(v73, &qword_27EFA8878, &qword_24AE0E6E0);
            if (v77)
            {
              goto LABEL_39;
            }

LABEL_37:
            sub_24AE02404(v80, type metadata accessor for PersonModel.Relationship.Following);
            return 0;
          }

          sub_24AD92BE4(v88, &qword_27EFA8878, &qword_24AE0E6E0);
          sub_24AD92BE4(v87, &qword_27EFA8878, &qword_24AE0E6E0);
          (*(v53 + 8))(v75, v56);
        }

        v60 = &qword_27EFA8870;
        v61 = &unk_24AE0A2C0;
        v59 = v73;
LABEL_36:
        sub_24AD92BE4(v59, v60, v61);
        goto LABEL_37;
      }
    }

    else
    {
      v58 = v20;
      sub_24ADF9ADC(v52, v20);
      if (v54(v52 + v50, 1, v56) != 1)
      {
        v66 = v81;
        (*(v53 + 32))(v81, v52 + v50, v56);
        sub_24AE074CC(&qword_27EFA8890, MEMORY[0x277CC9578]);
        v67 = sub_24AE08EF8();
        v68 = *(v53 + 8);
        v69 = v66;
        v49 = v87;
        v68(v69, v56);
        v68(v58, v56);
        sub_24AD92BE4(v52, &qword_27EFA8878, &qword_24AE0E6E0);
        if (v67)
        {
          goto LABEL_30;
        }

LABEL_26:
        sub_24AD92BE4(v88, &qword_27EFA8878, &qword_24AE0E6E0);
        v59 = v49;
        v60 = &qword_27EFA8878;
        v61 = &qword_24AE0E6E0;
        goto LABEL_36;
      }

      (*(v53 + 8))(v20, v56);
    }

    sub_24AD92BE4(v52, &qword_27EFA8870, &unk_24AE0A2C0);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_24AE0239C(v37, v30, type metadata accessor for PersonModel.Relationship.Following);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *(v86 + 48);
    v41 = v82;
    sub_24AE05B10(v30, v82, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(v38, v41 + v40, &qword_27EFA8878, &qword_24AE0E6E0);
    v43 = v83;
    v42 = v84;
    v44 = *(v83 + 48);
    if (v44(v41, 1, v84) == 1)
    {
      if (v44(v41 + v40, 1, v42) == 1)
      {
        sub_24AD92BE4(v41, &qword_27EFA8878, &qword_24AE0E6E0);
LABEL_10:
        v47 = v37;
LABEL_11:
        sub_24AE02404(v47, type metadata accessor for PersonModel.Relationship.Following);
        return 1;
      }
    }

    else
    {
      v57 = v80;
      sub_24ADF9ADC(v41, v80);
      if (v44(v41 + v40, 1, v42) != 1)
      {
        v62 = v41 + v40;
        v63 = v81;
        (*(v43 + 32))(v81, v62, v42);
        sub_24AE074CC(&qword_27EFA8890, MEMORY[0x277CC9578]);
        v64 = sub_24AE08EF8();
        v65 = *(v43 + 8);
        v65(v63, v42);
        v65(v57, v42);
        sub_24AD92BE4(v41, &qword_27EFA8878, &qword_24AE0E6E0);
        if (v64)
        {
          goto LABEL_10;
        }

        goto LABEL_22;
      }

      (*(v43 + 8))(v57, v42);
    }

    sub_24AD92BE4(v41, &qword_27EFA8870, &unk_24AE0A2C0);
LABEL_22:
    sub_24AE02404(v37, type metadata accessor for PersonModel.Relationship.Following);
    return 0;
  }

  v32 = v30;
LABEL_13:
  sub_24AD92BE4(v32, &qword_27EFA8878, &qword_24AE0E6E0);
LABEL_14:
  sub_24AD92BE4(v37, &qword_27EFAA760, &qword_24AE12AE0);
  return 0;
}

uint64_t _s10FindMyCore11PersonModelV12RelationshipV8FollowerO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AE088E8();
  v100 = *(v4 - 8);
  v101 = v4;
  v5 = *(v100 + 64);
  MEMORY[0x28223BE20](v4);
  v96 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8870, &unk_24AE0A2C0);
  v7 = *(*(v102 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v102);
  v98 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v91 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v92 = &v91 - v14;
  MEMORY[0x28223BE20](v13);
  v95 = &v91 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v94 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v91 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v91 = &v91 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v93 = &v91 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v99 = &v91 - v28;
  MEMORY[0x28223BE20](v27);
  v97 = &v91 - v29;
  v30 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v91 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v91 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA768, &qword_24AE12AE8);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = &v91 + *(v42 + 56) - v43;
  v45 = a1;
  v46 = &v91 - v43;
  sub_24AE0239C(v45, &v91 - v43, type metadata accessor for PersonModel.Relationship.Follower);
  sub_24AE0239C(a2, v44, type metadata accessor for PersonModel.Relationship.Follower);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_24AE0239C(v46, v39, type metadata accessor for PersonModel.Relationship.Follower);
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_24AD92BE4(&v39[v48], &qword_27EFA8878, &qword_24AE0E6E0);
LABEL_18:
        sub_24AD92BE4(v39, &qword_27EFA8878, &qword_24AE0E6E0);
        goto LABEL_19;
      }

      v59 = v97;
      sub_24AE05B10(&v39[v48], v97, &qword_27EFA8878, &qword_24AE0E6E0);
      v60 = v99;
      sub_24AE05B10(&v44[v48], v99, &qword_27EFA8878, &qword_24AE0E6E0);
      v61 = *(v102 + 48);
      v62 = v39;
      v63 = v95;
      sub_24AE05B10(v62, v95, &qword_27EFA8878, &qword_24AE0E6E0);
      sub_24AE05B10(v44, v63 + v61, &qword_27EFA8878, &qword_24AE0E6E0);
      v65 = v100;
      v64 = v101;
      v66 = *(v100 + 48);
      if (v66(v63, 1, v101) == 1)
      {
        if (v66(v63 + v61, 1, v64) == 1)
        {
          sub_24AD92BE4(v63, &qword_27EFA8878, &qword_24AE0E6E0);
LABEL_38:
          v83 = *(v102 + 48);
          v84 = v92;
          sub_24ADF9ADC(v59, v92);
          sub_24ADF9ADC(v60, v84 + v83);
          if (v66(v84, 1, v64) == 1)
          {
            sub_24AD92BE4(v60, &qword_27EFA8878, &qword_24AE0E6E0);
            sub_24AD92BE4(v59, &qword_27EFA8878, &qword_24AE0E6E0);
            if (v66(v84 + v83, 1, v64) == 1)
            {
              v54 = v84;
              goto LABEL_41;
            }

            goto LABEL_45;
          }

          v86 = v91;
          sub_24ADF9ADC(v84, v91);
          if (v66(v84 + v83, 1, v64) == 1)
          {
            sub_24AD92BE4(v99, &qword_27EFA8878, &qword_24AE0E6E0);
            sub_24AD92BE4(v59, &qword_27EFA8878, &qword_24AE0E6E0);
            (*(v65 + 8))(v86, v64);
LABEL_45:
            v68 = &qword_27EFA8870;
            v69 = &unk_24AE0A2C0;
            v70 = v84;
            goto LABEL_46;
          }

          v87 = v96;
          (*(v65 + 32))(v96, v84 + v83, v64);
          sub_24AE074CC(&qword_27EFA8890, MEMORY[0x277CC9578]);
          v88 = v86;
          v89 = sub_24AE08EF8();
          v90 = *(v65 + 8);
          v90(v87, v64);
          sub_24AD92BE4(v99, &qword_27EFA8878, &qword_24AE0E6E0);
          sub_24AD92BE4(v59, &qword_27EFA8878, &qword_24AE0E6E0);
          v90(v88, v64);
          sub_24AD92BE4(v84, &qword_27EFA8878, &qword_24AE0E6E0);
          if (v89)
          {
            goto LABEL_42;
          }

LABEL_47:
          sub_24AE02404(v46, type metadata accessor for PersonModel.Relationship.Follower);
          return 0;
        }
      }

      else
      {
        v71 = v93;
        sub_24ADF9ADC(v63, v93);
        if (v66(v63 + v61, 1, v64) != 1)
        {
          v80 = v96;
          (*(v65 + 32))(v96, v63 + v61, v64);
          sub_24AE074CC(&qword_27EFA8890, MEMORY[0x277CC9578]);
          LODWORD(v98) = sub_24AE08EF8();
          v81 = *(v65 + 8);
          v82 = v80;
          v60 = v99;
          v81(v82, v64);
          v59 = v97;
          v81(v71, v64);
          sub_24AD92BE4(v63, &qword_27EFA8878, &qword_24AE0E6E0);
          if (v98)
          {
            goto LABEL_38;
          }

          goto LABEL_32;
        }

        (*(v65 + 8))(v71, v64);
      }

      sub_24AD92BE4(v63, &qword_27EFA8870, &unk_24AE0A2C0);
LABEL_32:
      sub_24AD92BE4(v60, &qword_27EFA8878, &qword_24AE0E6E0);
      v70 = v59;
      v68 = &qword_27EFA8878;
      v69 = &qword_24AE0E6E0;
      goto LABEL_46;
    }

    sub_24AE0239C(v46, v37, type metadata accessor for PersonModel.Relationship.Follower);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v39 = v37;
      goto LABEL_18;
    }

    v55 = *(v102 + 48);
    sub_24AE05B10(v37, v12, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(v44, &v12[v55], &qword_27EFA8878, &qword_24AE0E6E0);
    v57 = v100;
    v56 = v101;
    v58 = *(v100 + 48);
    if (v58(v12, 1, v101) == 1)
    {
      if (v58(&v12[v55], 1, v56) == 1)
      {
        v54 = v12;
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    sub_24ADF9ADC(v12, v22);
    if (v58(&v12[v55], 1, v56) == 1)
    {
      (*(v57 + 8))(v22, v56);
LABEL_28:
      v68 = &qword_27EFA8870;
      v69 = &unk_24AE0A2C0;
      v70 = v12;
      goto LABEL_46;
    }

    v77 = &v12[v55];
    v78 = v96;
    (*(v57 + 32))(v96, v77, v56);
    sub_24AE074CC(&qword_27EFA8890, MEMORY[0x277CC9578]);
    v74 = sub_24AE08EF8();
    v79 = *(v57 + 8);
    v79(v78, v56);
    v79(v22, v56);
    v76 = v12;
LABEL_35:
    sub_24AD92BE4(v76, &qword_27EFA8878, &qword_24AE0E6E0);
    if (v74)
    {
LABEL_42:
      sub_24AE02404(v46, type metadata accessor for PersonModel.Relationship.Follower);
      return 1;
    }

    goto LABEL_47;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24AE0239C(v46, v34, type metadata accessor for PersonModel.Relationship.Follower);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v39 = v34;
      goto LABEL_18;
    }

    v49 = *(v102 + 48);
    v50 = v98;
    sub_24AE05B10(v34, v98, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(v44, v50 + v49, &qword_27EFA8878, &qword_24AE0E6E0);
    v52 = v100;
    v51 = v101;
    v53 = *(v100 + 48);
    if (v53(v50, 1, v101) == 1)
    {
      if (v53(v50 + v49, 1, v51) == 1)
      {
        v54 = v50;
LABEL_41:
        sub_24AD92BE4(v54, &qword_27EFA8878, &qword_24AE0E6E0);
        goto LABEL_42;
      }
    }

    else
    {
      v67 = v94;
      sub_24ADF9ADC(v50, v94);
      if (v53(v50 + v49, 1, v51) != 1)
      {
        v72 = v50 + v49;
        v73 = v96;
        (*(v52 + 32))(v96, v72, v51);
        sub_24AE074CC(&qword_27EFA8890, MEMORY[0x277CC9578]);
        v74 = sub_24AE08EF8();
        v75 = *(v52 + 8);
        v75(v73, v51);
        v75(v67, v51);
        v76 = v50;
        goto LABEL_35;
      }

      (*(v52 + 8))(v67, v51);
    }

    v68 = &qword_27EFA8870;
    v69 = &unk_24AE0A2C0;
    v70 = v50;
LABEL_46:
    sub_24AD92BE4(v70, v68, v69);
    goto LABEL_47;
  }

  if (swift_getEnumCaseMultiPayload() == 3)
  {
    goto LABEL_42;
  }

LABEL_19:
  sub_24AD92BE4(v46, &qword_27EFAA768, &qword_24AE12AE8);
  return 0;
}

unint64_t sub_24AE07430()
{
  result = qword_27EFAA6F0;
  if (!qword_27EFAA6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA6F0);
  }

  return result;
}

uint64_t sub_24AE074CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24AE075A8()
{
  result = qword_27EFAA710;
  if (!qword_27EFAA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA710);
  }

  return result;
}

void sub_24AE07624()
{
  type metadata accessor for PersonModel.Relationship.Following(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PersonModel.Relationship.Follower(319);
    if (v1 <= 0x3F)
    {
      sub_24AE076C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24AE076C0()
{
  if (!qword_27EFAA728)
  {
    v0 = sub_24AE09438();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFAA728);
    }
  }
}

void sub_24AE07720()
{
  sub_24AE07794();
  if (v0 <= 0x3F)
  {
    sub_24AE07808();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24AE07794()
{
  if (!qword_27EFAA740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA8878, &qword_24AE0E6E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EFAA740);
    }
  }
}

void sub_24AE07808()
{
  if (!qword_27EFAA748)
  {
    sub_24ADCC244();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFAA748);
    }
  }
}

void sub_24AE07850()
{
  sub_24AE07794();
  if (v0 <= 0x3F)
  {
    sub_24AE07808();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t PersonModel.ServerIdentifier.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PersonModel.ServerIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE08288();
  return v1;
}

uint64_t static PersonModel.ServerIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t PersonModel.ServerIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24AE09048();
}

uint64_t PersonModel.ServerIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE09838();
  sub_24AE09048();
  return sub_24AE09868();
}

unint64_t sub_24AE079B0()
{
  result = qword_27EFAA770;
  if (!qword_27EFAA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA770);
  }

  return result;
}

void *PersonModel.UniqueIdentifier.init(serverIdentifier:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t PersonModel.UniqueIdentifier.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24AE090D8();
  if (result)
  {
    v7 = sub_24AE09058();
    v8 = sub_24ADF89E4(v7, a1, a2);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    a1 = MEMORY[0x24C230F60](v8, v10, v12, v14);
    a2 = v15;
  }

  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t PersonModel.UniqueIdentifier.rawValueWithoutPrefix.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE08288();
  return v1;
}

uint64_t sub_24AE07B04()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE09838();
  MEMORY[0x24C230FB0](v1, v2);
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24AE07B84()
{
  MEMORY[0x24C230FB0](*v0, v0[1]);
  sub_24AE09048();
}

uint64_t sub_24AE07BF0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE09838();
  MEMORY[0x24C230FB0](v1, v2);
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24AE07C6C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  MEMORY[0x24C230FB0](*a1, a1[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 1;
}

uint64_t sub_24AE07D40@<X0>(void *a1@<X8>)
{
  result = MEMORY[0x24C230FB0](*v1, v1[1]);
  *a1 = 0x3A3156444953;
  a1[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_24AE07D9C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  MEMORY[0x24C230FB0](*a2, a2[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 1;
}

uint64_t sub_24AE07E70(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  MEMORY[0x24C230FB0](*a1, a1[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 1;
}

uint64_t sub_24AE07F4C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  MEMORY[0x24C230FB0](*a2, a2[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 0;
}

uint64_t _s10FindMyCore11PersonModelV16UniqueIdentifierV1loiySbAE_AEtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  MEMORY[0x24C230FB0](*a1, a1[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 0;
}

unint64_t sub_24AE080D4()
{
  result = qword_27EFAA778;
  if (!qword_27EFAA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA778);
  }

  return result;
}

unint64_t sub_24AE0814C()
{
  result = qword_27EFAA780;
  if (!qword_27EFAA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA780);
  }

  return result;
}

id sub_24AE081CC()
{
  type metadata accessor for ModelsModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EFB76E0 = 0x736C65646F4DLL;
  *algn_27EFB76E8 = 0xE600000000000000;
  qword_27EFB76F0 = result;
  return result;
}