uint64_t sub_225B28AC0()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CECAD0[v1]);
  return sub_225CCFC24();
}

uint64_t sub_225B28B48()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CECAD0[v1]);
  return sub_225CCFC24();
}

CoreIDVShared::DIPError::PropertyKey_optional __swiftcall DIPError.PropertyKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCFA64();

  v5 = 0;
  v6 = 9;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_225B28D10()
{
  v0 = DIPError.PropertyKey.rawValue.getter();
  v2 = v1;
  if (v0 == DIPError.PropertyKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_225CCF934();
  }

  return v5 & 1;
}

uint64_t sub_225B28DAC()
{
  sub_225CCFBD4();
  DIPError.PropertyKey.rawValue.getter();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B28E14()
{
  DIPError.PropertyKey.rawValue.getter();
  sub_225CCE5B4();
}

uint64_t sub_225B28E78()
{
  sub_225CCFBD4();
  DIPError.PropertyKey.rawValue.getter();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

unint64_t sub_225B28EE8@<X0>(unint64_t *a1@<X8>)
{
  result = DIPError.PropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void DIPError.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 4);
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = (v2 + 40);
    v6 = *(v2 + 16);
    v7 = (v2 + 40);
    while (1)
    {
      v9 = *v7;
      v7 += 7;
      v8 = v9;
      if (v9)
      {
        v10 = *(v5 - 1) & 0xFFFFFFFFFFFFLL;
        if ((v8 & 0x2000000000000000) != 0)
        {
          v10 = HIBYTE(v8) & 0xF;
        }

        if (v10)
        {
          break;
        }
      }

      v5 = v7;
      if (!--v6)
      {
        goto LABEL_15;
      }
    }

    v11 = v4 - 1;
    v12 = (v2 + 56 * v4 - 24);
    while (1)
    {
      v13 = v12[1];
      if (v13)
      {
        v14 = *v12;
        v15 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v15 = *v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v15)
        {
          break;
        }
      }

      v12 -= 7;
      if (--v11 >= v4)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
LABEL_15:
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  sub_225CCF204();

  *&v36[0] = 0x20726F727245;
  *(&v36[0] + 1) = 0xE600000000000000;
  MEMORY[0x22AA6CE70](v14, v13);

  MEMORY[0x22AA6CE70](0x206E69616D6F4420, 0xEA0000000000203DLL);
  MEMORY[0x22AA6CE70](0x726F727245504944, 0xE800000000000000);
  MEMORY[0x22AA6CE70](0x203D2065646F4320, 0xE800000000000000);
  *&v33 = qword_225CECAD0[v1];
  v16 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v16);

  MEMORY[0x22AA6CE70](10272, 0xE200000000000000);
  LOWORD(v33) = v1;
  v17 = sub_225CCE504();
  MEMORY[0x22AA6CE70](v17);

  MEMORY[0x22AA6CE70](41, 0xE100000000000000);
  v36[3] = v36[0];
  if (*(v3 + 16))
  {
    MEMORY[0x22AA6CE70](0x747265706F725020, 0xEF5B203D20736569);
    v18 = 1 << *(v3 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v3 + 64);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    v23 = 0;
    v24 = 0xE000000000000000;
    if (v20)
    {
      while (1)
      {
        v25 = v23;
LABEL_28:
        v28 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v29 = v28 | (v25 << 6);
        v30 = *(*(v3 + 48) + v29);
        sub_225A32940(*(v3 + 56) + 40 * v29, v32);
        LOBYTE(v33) = v30;
        sub_2259A9C20(v32, &v33 + 8);
        v27 = v25;
LABEL_29:
        v36[1] = v34;
        v36[2] = v35;
        v36[0] = v33;
        if (!v35)
        {
          break;
        }

        sub_2259A9C20((v36 + 8), &v33);
        *&v32[0] = 0;
        *(&v32[0] + 1) = 0xE000000000000000;
        sub_225CCF434();
        MEMORY[0x22AA6CE70](8250, 0xE200000000000000);
        __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
        sub_225CCF914();
        v31 = v32[0];
        *&v32[0] = v22;
        *(&v32[0] + 1) = v24;

        MEMORY[0x22AA6CE70](v31, *(&v31 + 1));

        MEMORY[0x22AA6CE70](*&v32[0], *(&v32[0] + 1));

        __swift_destroy_boxed_opaque_existential_0(&v33);
        v22 = 8236;
        v24 = 0xE200000000000000;
        v23 = v27;
        if (!v20)
        {
          goto LABEL_21;
        }
      }

      MEMORY[0x22AA6CE70](93, 0xE100000000000000);
    }

    else
    {
LABEL_21:
      if (v21 <= v23 + 1)
      {
        v26 = v23 + 1;
      }

      else
      {
        v26 = v21;
      }

      v27 = v26 - 1;
      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v21)
        {
          v20 = 0;
          v34 = 0u;
          v35 = 0u;
          v33 = 0u;
          goto LABEL_29;
        }

        v20 = *(v3 + 64 + 8 * v25);
        ++v23;
        if (v20)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }
  }
}

uint64_t DIPError.debugDescription.getter()
{
  v45 = sub_225CCCEA4();
  v1 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v2);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v46 = v0[1];
  v5 = v0[4];
  v42 = v0[5];
  *&v54[0] = 0;
  *(&v54[0] + 1) = 0xE000000000000000;
  sub_225CCF204();

  *&v54[0] = 0xD00000000000001FLL;
  *(&v54[0] + 1) = 0x8000000225D1DD70;
  *&v51 = qword_225CECAD0[v4];
  v6 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v6);

  MEMORY[0x22AA6CE70](10272, 0xE200000000000000);
  LOWORD(v51) = v4;
  v7 = sub_225CCE504();
  MEMORY[0x22AA6CE70](v7);

  MEMORY[0x22AA6CE70](41, 0xE100000000000000);
  v55 = v54[0];
  if (*(v5 + 16))
  {
    v47 = v1;
    MEMORY[0x22AA6CE70](0x7265706F7250090ALL, 0xED00003A73656974);
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 64);
    v11 = (v8 + 63) >> 6;

    v13 = 0;
    if (!v10)
    {
LABEL_6:
      if (v11 <= v13 + 1)
      {
        v15 = v13 + 1;
      }

      else
      {
        v15 = v11;
      }

      v16 = v15 - 1;
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          v10 = 0;
          v52 = 0u;
          v53 = 0u;
          v51 = 0u;
          goto LABEL_14;
        }

        v10 = *(v5 + 64 + 8 * v14);
        ++v13;
        if (v10)
        {
          goto LABEL_13;
        }
      }

LABEL_32:
      __break(1u);
      return result;
    }

    while (1)
    {
      v14 = v13;
LABEL_13:
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v18 = v17 | (v14 << 6);
      v19 = *(*(v5 + 48) + v18);
      sub_225A32940(*(v5 + 56) + 40 * v18, v50);
      LOBYTE(v51) = v19;
      sub_2259A9C20(v50, &v51 + 8);
      v16 = v14;
LABEL_14:
      v54[0] = v51;
      v54[1] = v52;
      v54[2] = v53;
      if (!v53)
      {
        break;
      }

      v20 = v54[0];
      sub_2259A9C20((v54 + 8), &v51);
      MEMORY[0x22AA6CE70](10, 0xE100000000000000);
      *&v50[0] = 0;
      *(&v50[0] + 1) = 0xE000000000000000;
      v48 = v20;
      sub_225CCF434();
      MEMORY[0x22AA6CE70](8250, 0xE200000000000000);
      __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
      sub_225CCF914();
      v22 = *(&v50[0] + 1);
      v21 = *&v50[0];
      *&v50[0] = 539822345;
      *(&v50[0] + 1) = 0xE400000000000000;
      MEMORY[0x22AA6CE70](v21, v22);

      MEMORY[0x22AA6CE70](*&v50[0], *(&v50[0] + 1));

      result = __swift_destroy_boxed_opaque_existential_0(&v51);
      v13 = v16;
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v1 = v47;
  }

  v23 = *(v46 + 16);
  if (v23)
  {
    result = MEMORY[0x22AA6CE70](0x61636F766E49090ALL, 0xEE003A736E6F6974);
    v43 = (v1 + 8);
    v24 = (v46 + 56 * v23);
    while (v23 <= *(v46 + 16))
    {
      v25 = *(v24 - 2);
      v47 = *(v24 - 3);
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];

      MEMORY[0x22AA6CE70](10, 0xE100000000000000);
      v29 = v44;
      sub_225CCCDC4();
      v30 = sub_225CCCDE4();
      v32 = v31;
      (*v43)(v29, v45);
      *&v54[0] = v30;
      *(&v54[0] + 1) = v32;
      MEMORY[0x22AA6CE70](58, 0xE100000000000000);

      MEMORY[0x22AA6CE70](v26, v27);

      MEMORY[0x22AA6CE70](58, 0xE100000000000000);
      *&v51 = v28;
      v33 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v33);

      v34 = v54[0];
      *&v54[0] = 539822345;
      *(&v54[0] + 1) = 0xE400000000000000;
      MEMORY[0x22AA6CE70](v34, *(&v34 + 1));

      MEMORY[0x22AA6CE70](*&v54[0], *(&v54[0] + 1));

      if (v25)
      {
        v35 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v35 = v47 & 0xFFFFFFFFFFFFLL;
        }

        if (v35)
        {
          *&v54[0] = 9;
          *(&v54[0] + 1) = 0xE100000000000000;
          MEMORY[0x22AA6CE70]();

          MEMORY[0x22AA6CE70](*&v54[0], *(&v54[0] + 1));
        }
      }

      v24 -= 7;
      if (!--v23)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_28:
  v36 = v42;
  if (v42)
  {
    v37 = v42;
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D1DD90);
    ErrorValue = swift_getErrorValue();
    MEMORY[0x28223BE20](ErrorValue, v49);
    (*(v40 + 16))(&v42 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    v41 = sub_225CCE524();
    *&v54[0] = 0x202D09090ALL;
    *(&v54[0] + 1) = 0xE500000000000000;
    MEMORY[0x22AA6CE70](v41);

    MEMORY[0x22AA6CE70](*&v54[0], *(&v54[0] + 1));
  }

  return v55;
}

char *sub_225B29AA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_225B29BC8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_225B29CD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_225B29DD8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D928);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_225B29F2C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_225B2A114(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_225B2A270(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_225B2A398(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_225B2A4F4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_225B2A6D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CBD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_225B2A818(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_225B2A91C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_225B2AA3C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_225B2AB30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

double sub_225B2AC50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_2259F18D4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_225A43EF0();
      v10 = v12;
    }

    sub_2259B9624((*(v10 + 56) + 32 * v8), a3);
    sub_225B2B010(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_225B2ACF4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2259F1C5C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_225A44248();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_225CCF454();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_2259B9624((*(v9 + 56) + 32 * v7), a2);
    sub_225B2B1C0(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_225B2ADD0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2259F1AA8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_225A454A4();
      v9 = v11;
    }

    sub_2259B9624((*(v9 + 56) + 32 * v7), a2);
    sub_225B2BB88(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_225B2AE70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2259F2024(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_225A45D44();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
    sub_2259F61BC(v10 + *(*(v11 - 8) + 72) * v7);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_225B2BF24(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_225B2B010(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_225CCF104() + 1) & ~v5;
    do
    {
      sub_225CCFBD4();

      sub_225CCE5B4();
      v10 = sub_225CCFC24();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_225B2B1C0(int64_t a1, uint64_t a2)
{
  v4 = sub_225CCF454();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20]();
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_225CCF104();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_225CCE344();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_225B2B474(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_225CCF104() + 1) & ~v5;
    do
    {
      sub_225CCFBD4();
      sub_225CCE5B4();

      result = sub_225CCFC24();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 40 * v3;
        v17 = (v15 + 40 * v6);
        if (v3 != v6 || v16 >= v17 + 40)
        {
          v9 = *v17;
          v10 = v17[1];
          *(v16 + 32) = *(v17 + 4);
          *v16 = v9;
          *(v16 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_225B2B9D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_225CCF104() + 1) & ~v5;
    do
    {
      sub_225CCFBD4();

      sub_225CCE5B4();
      v9 = sub_225CCFC24();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_225B2BB88(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_225CCF104() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_225CCFBD4();
      type metadata accessor for CFString(0);
      sub_225B2EB64(&qword_27D73AEA0, type metadata accessor for CFString);
      v11 = v10;
      sub_225CCD504();
      v12 = sub_225CCFC24();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_225B2BD80(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_225CCF104() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_225CCFBD4();
      MEMORY[0x22AA6E420](v10);
      MEMORY[0x22AA6E420](v11);
      result = sub_225CCFC24();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_225B2BF24(int64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  v4 = *(v29 - 8);
  result = MEMORY[0x28223BE20](v29, v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_225CCF104();
    v27 = v12;
    v28 = (v13 + 1) & v12;
    v14 = *(v4 + 72);
    do
    {
      v15 = v14 * v11;
      sub_2259F6158(*(a2 + 48) + v14 * v11, v8);
      sub_225CCFBD4();
      sub_225CCE5B4();
      sub_225CCD124();
      sub_225B2EB64(&qword_27D73FDF0, MEMORY[0x277CC95F0]);
      sub_225CCE354();
      v16 = sub_225CCFC24();
      result = sub_2259F61BC(v8);
      v17 = v16 & v12;
      if (a1 >= v28)
      {
        if (v17 >= v28 && a1 >= v17)
        {
LABEL_11:
          if (v14 * a1 < v15 || *(a2 + 48) + v14 * a1 >= (*(a2 + 48) + v15 + v14))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v14 * a1 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18 = *(a2 + 56);
          v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8) - 8) + 72);
          v20 = v19 * a1;
          result = v18 + v19 * a1;
          v21 = v19 * v11;
          v22 = v18 + v19 * v11 + v19;
          if (v20 < v21 || result >= v22)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v12 = v27;
          }

          else
          {
            a1 = v11;
            v12 = v27;
            if (v20 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
              a1 = v11;
            }
          }
        }
      }

      else if (v17 >= v28 || a1 >= v17)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_225B2C248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B368);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, v10, &qword_27D73B060);
      result = sub_2259F193C(v10);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_2259A9C20(&v11, v3[7] + 40 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_225B2C374(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B368);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, v10, &qword_27D73B060);
      result = sub_2259F19CC(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_2259A9C20(&v11, v3[7] + 40 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_225B2C4A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_225B33B40(v43);
  if (!v44)
  {
    goto LABEL_25;
  }

  v12 = v43[0];
  sub_2259A9C20((v43 + 8), v42);
  v13 = *a5;
  result = sub_2259F19CC(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_225A3FEA4(v19, a4 & 1);
    result = sub_2259F19CC(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_225CCFAC4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_225A43D70();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 40 * result;
    sub_225A32940(*(*a5 + 56) + 40 * result, v41);
    __swift_destroy_boxed_opaque_existential_0(v42);
    v24 = *(v22 + 56);
    __swift_destroy_boxed_opaque_existential_0(v24 + v23);
    sub_2259A9C20(v41, v24 + v23);
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + result) = v12;
  result = sub_2259A9C20(v42, v26[7] + 40 * result);
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    sub_225B33B40(v43);
    if (v44)
    {
      v20 = 1;
      do
      {
        v12 = v43[0];
        sub_2259A9C20((v43 + 8), v42);
        v32 = *a5;
        result = sub_2259F19CC(v12);
        v34 = *(v32 + 16);
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (*(v32 + 24) < v36)
        {
          sub_225A3FEA4(v36, 1);
          result = sub_2259F19CC(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 40 * result;
          sub_225A32940(*(*a5 + 56) + 40 * result, v41);
          __swift_destroy_boxed_opaque_existential_0(v42);
          v31 = *(v29 + 56);
          __swift_destroy_boxed_opaque_existential_0(v31 + v30);
          sub_2259A9C20(v41, v31 + v30);
        }

        else
        {
          v38 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v38[6] + result) = v12;
          result = sub_2259A9C20(v42, v38[7] + 40 * result);
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_225B33B40(v43);
      }

      while (v44);
    }

LABEL_25:
    sub_2259D8710();
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_225B2C7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
  }
}

unint64_t sub_225B2C828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D990);
    v3 = sub_225CCF584();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2259F1900(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_225B2C92C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B180);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, &v13, &unk_27D73B090);
      v5 = v13;
      v6 = v14;
      result = sub_2259F18D4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2259B9624(&v15, (v3[7] + 32 * result));
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

unint64_t sub_225B2CA64()
{
  result = qword_281059B98;
  if (!qword_281059B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B98);
  }

  return result;
}

unint64_t sub_225B2CABC()
{
  result = qword_281059BA0;
  if (!qword_281059BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059BA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DIPError.Code(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB62)
  {
    goto LABEL_17;
  }

  if (a2 + 1182 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 1182 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 1182;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 1182;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 1182;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x49F;
  v8 = v6 - 1183;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for DIPError.Code(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1182 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 1182 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB62)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB61)
  {
    v6 = ((a2 - 64354) >> 16) + 1;
    *result = a2 + 1182;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 1182;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_225B2CCA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225B2CCEC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_225B2CD48()
{
  result = qword_27D73D8C8;
  if (!qword_27D73D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D8C8);
  }

  return result;
}

unint64_t sub_225B2CD9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B338);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, &v13, &qword_27D73AF90);
      v5 = v13;
      v6 = v14;
      result = sub_2259F18D4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2259B9624(&v15, (v3[7] + 32 * result));
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

void *sub_225B2CECC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B418);
  v3 = sub_225CCF584();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_2259F1BAC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_2259F1BAC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_225B2CFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D980);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, &v11, &qword_27D73B070);
      v5 = v11;
      result = sub_2259F1CC0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2259B9624(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_225B2D108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D970);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, v13, &qword_27D73D978);
      result = sub_2259F1C18(v13);
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
      result = sub_2259B9624(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_225B2D244(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D968);
  v3 = sub_225CCF584();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_2259F1D10(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_2259CB710(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 16);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_2259F1D10(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_225B2D350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B408);
    v3 = sub_225CCF584();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_2259CB710(v5, v6);
      v8 = v7;
      result = sub_2259F1D7C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_225B2D458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3F0);
    v3 = sub_225CCF584();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_2259F18D4(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_225B2D5A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B390);
    v8 = sub_225CCF584();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_225A0DE54(v10, v6, &qword_27D73BD18);
      v12 = *v6;
      v13 = v6[1];
      result = sub_2259F18D4(*v6, v13);
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
      v19 = type metadata accessor for AnyCodable();
      result = sub_225B2EBAC(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for AnyCodable);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_225B2D79C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D948);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D8);
    v8 = sub_225CCF584();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_225A0DE54(v10, v6, &qword_27D73D948);
      v13 = *v6;
      v12 = v6[1];
      result = sub_2259F18D4(*v6, v12);
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
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
      result = sub_225A47298(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_225B2D990(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3C8);
  v3 = sub_225CCF584();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  result = sub_2259F1900(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = a1 + 9;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v10 = (v3[7] + 16 * result);
    *v10 = v4;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_2259CB710(v4, v6);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v9 - 2);
    v4 = *(v9 - 1);
    v6 = *v9;
    result = sub_2259F1900(v5);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_225B2DA9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D940);
    v8 = sub_225CCF584();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_225A0DE54(v10, v6, &qword_27D73BD68);
      v12 = *v6;
      v13 = v6[1];
      result = sub_2259F18D4(*v6, v13);
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
      v19 = type metadata accessor for ISO18013Package.Document();
      result = sub_225B2EBAC(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for ISO18013Package.Document);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_225B2DC84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B348);
    v3 = sub_225CCF584();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2259F18D4(v5, v6);
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

unint64_t sub_225B2DDA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3A8);
    v3 = sub_225CCF584();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      sub_2259CB710(v5, *i);
      result = sub_2259F1D7C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v9 = (*(v3 + 48) + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = *(v3 + 16);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v12;
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

unint64_t sub_225B2DEC4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_225CCF584();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_225B2DFBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D930);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B388);
    v8 = sub_225CCF584();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_225A0DE54(v10, v6, &qword_27D73D930);
      v12 = *v6;
      result = sub_2259F1900(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for AnyCodable();
      result = sub_225B2EBAC(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for AnyCodable);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_225B2E194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B378);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, &v11, &qword_27D73D648);
      v5 = v11;
      result = sub_2259F1AA8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2259B9624(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_225B2E2BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B370);
    v3 = sub_225CCF584();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2259F18D4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_225B2E3D4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_225CCF584();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_2259F18D4(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
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

unint64_t sub_225B2E4D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D910);
    v3 = sub_225CCF584();

    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_2259F1E8C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 4 * result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_225B2E5BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8D8);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, &v11, &qword_27D73D8E0);
      v5 = v11;
      result = sub_2259F7044(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2259B9624(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void *sub_225B2E6E4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B358);
  v3 = sub_225CCF584();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_2259F1F14(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_2259F1F14(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_225B2E800(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D900);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, &v11, &qword_27D73D908);
      v5 = v11;
      result = sub_2259F7044(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2259B9624(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_225B2E928(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B340);
    v3 = sub_225CCF584();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2259F18D4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_225B2EA3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8D0);
    v3 = sub_225CCF584();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 16);
      v9 = *(i - 1);
      v8 = *i;
      sub_2259F6128(v5, v6, v7);

      result = sub_2259F20F0(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 24 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      v13 = (v3[7] + 16 * result);
      *v13 = v9;
      v13[1] = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

uint64_t sub_225B2EB64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225B2EBAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t DIPRetrier.init(maxRetries:backoffStrategy:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a1;
  v5 = sub_225CCEDA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCDA64();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = sub_225CCED84();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = *a2;
  v15 = *(a2 + 8);
  sub_2259D8718(0, &qword_28105BFA8);
  sub_225CCED74();
  sub_225CCDA54();
  (*(v6 + 104))(v9, *MEMORY[0x277D85260], v5);
  result = sub_225CCEDD4();
  *(a3 + 24) = result;
  v17 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
  }

  else
  {
    if (v17 <= 1)
    {
      v17 = 1;
    }

    *a3 = v17;
    *(a3 + 8) = v14;
    *(a3 + 16) = v15;
  }

  return result;
}

uint64_t DIPRetrier.retry<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = sub_225CCF3F4();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v7 = sub_225CCF404();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = type metadata accessor for DIPRetrier.RetryResult();
  v8 = swift_task_alloc();
  v9 = *v4;
  *(v5 + 152) = v8;
  *(v5 + 160) = v9;
  *(v5 + 168) = v4[1];
  *(v5 + 33) = *(v4 + 16);

  return MEMORY[0x2822009F8](sub_225B2EF90, 0, 0);
}

uint64_t sub_225B2EF90()
{
  sub_225CCEA54();
  v1 = v0[20];
  v2 = v0[8];
  if (v1 <= 1)
  {
    v1 = 1;
  }

  v0[22] = v1;
  v0[23] = 0;
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_225B2F114;
  v4 = v0[19];

  return v6(v4);
}

uint64_t sub_225B2F114()
{

  return MEMORY[0x2822009F8](sub_225B2F210, 0, 0);
}

uint64_t sub_225B2F210()
{
  v1 = *(v0 + 152);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(*(*(v0 + 80) - 8) + 32))(*(v0 + 56), v1);

    v3 = *(v0 + 8);
LABEL_7:

    return v3();
  }

  if (EnumCaseMultiPayload == 1 || (v4 = *(v0 + 184), v5 = *(v0 + 176) - 1, v6 = *v1, *(v0 + 200) = *v1, v4 == v5))
  {
    swift_willThrow();

    v3 = *(v0 + 8);
    goto LABEL_7;
  }

  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  if (*(v0 + 33))
  {
    if (*(v0 + 33) != 1)
    {
      v24 = v8 <= 0.0;
      if (v8 < -1.0)
      {
        v24 = 1;
      }

      if (((v9 | v24) & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }

    v10 = *(v0 + 168);
    v11 = 0.0;
    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    if (v4 <= 0x3F)
    {
      v11 = (1 << v4);
    }

    v12 = v11 * v10;
  }

  else
  {
    v12 = *(v0 + 168);
    if (v12 < 0.0)
    {
      if (v8 <= 0.0)
      {
        LOBYTE(v9) = 1;
      }

      if ((v9 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }
  }

  if ((v9 & 1) == 0)
  {
    if (v12 <= v8)
    {
      if (v8 <= 0.0)
      {
        goto LABEL_32;
      }
    }

    else if (v12 <= 0.0)
    {
      goto LABEL_32;
    }

LABEL_26:
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);
    v16 = _sSd13CoreIDVSharedE8durations8DurationVvg_0();
    v18 = v17;
    sub_225CCFAF4();
    *(v0 + 40) = v16;
    *(v0 + 48) = v18;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v19 = sub_225B33CE8(&qword_28105B8A0, MEMORY[0x277D85928]);
    sub_225CCFAD4();
    sub_225B33CE8(&unk_28105B8A8, MEMORY[0x277D858F8]);
    sub_225CCF414();
    v20 = *(v14 + 8);
    *(v0 + 208) = v20;
    *(v0 + 216) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v13, v15);
    v21 = swift_task_alloc();
    *(v0 + 224) = v21;
    *v21 = v0;
    v21[1] = sub_225B2F698;
    v23 = *(v0 + 112);
    v22 = *(v0 + 120);

    return MEMORY[0x2822008C8](v23, v0 + 16, v22, v19);
  }

  if (v12 > 0.0 && v12 > -1.0 && v12 > 0.0)
  {
    goto LABEL_26;
  }

LABEL_32:

  ++*(v0 + 184);
  v27 = (*(v0 + 64) + **(v0 + 64));
  v25 = swift_task_alloc();
  *(v0 + 192) = v25;
  *v25 = v0;
  v25[1] = sub_225B2F114;
  v26 = *(v0 + 152);

  return v27(v26);
}

uint64_t sub_225B2F698()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    (*(v2 + 208))(*(v2 + 112), *(v2 + 88));
    v3 = sub_225B2F8F8;
  }

  else
  {
    v5 = *(v2 + 128);
    v4 = *(v2 + 136);
    v6 = *(v2 + 120);
    (*(v2 + 208))(*(v2 + 112), *(v2 + 88));
    (*(v5 + 8))(v4, v6);
    v3 = sub_225B2F7F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225B2F7F0()
{
  ++*(v0 + 184);
  v4 = (*(v0 + 64) + **(v0 + 64));
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_225B2F114;
  v2 = *(v0 + 152);

  return v4(v2);
}

uint64_t sub_225B2F8F8()
{
  v1 = v0[25];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v2 = v0[1];

  return v2();
}

void DIPRetrier.sync(_:)(unint64_t a1, const char *a2)
{
  v130 = a1;
  v131 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v119 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v120 = &v118 - v9;
  v132 = sub_225CCD954();
  v11 = MEMORY[0x28223BE20](v132, v10);
  v121 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v126 = &v118 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v127 = &v118 - v17;
  v18 = 0;
  v133 = *v2;
  v128 = (v19 + 16);
  v129 = (v19 + 8);
  v20 = *(v2 + 8);
  v123 = *(v2 + 16);
  v122 = "CoreIDVShared/DIPRetrier.swift";
  if (v20 < 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v20;
  }

  v124 = " retryWithError from action";
  v125 = " retryAfterDelay from action";
  v22 = 64;
  LOBYTE(v23) = 1;
  while ((v23 & 1) != 0)
  {
    v24 = v22 - 63;
    if (v133 < v22 - 63)
    {
      *&v136 = 0;
      *(&v136 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v136 = 0x656972742078616DLL;
      *(&v136 + 1) = 0xEA00000000002073;
      v135 = v133;
      v69 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v69);

      MEMORY[0x22AA6CE70](0x6564656563786520, 0xE900000000000064);
      v71 = *(&v136 + 1);
      v70 = v136;
      v131 = "retrier action returned error";
      v72 = v18;
      v73 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v74 = swift_allocError();
      v25 = v75;
      v132 = v74;
      v133 = v71;
      if (v18)
      {
        swift_getErrorValue();
        v76 = v134;
        v77 = v18;
        sub_225B21FAC(v76, &v136);

        v23 = *(&v136 + 1);
        if (*(&v136 + 1))
        {
          v129 = v138;
          v130 = v136;
          v78 = v139;
          v127 = v140;
          v128 = v137;
          goto LABEL_81;
        }

        *&v136 = v18;
        v87 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
        sub_2259D8718(0, &qword_281059A90);
        if (swift_dynamicCast())
        {
          v88 = v135;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v90 = [v88 code];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = MEMORY[0x277D83BF8];
          *(inited + 40) = v90;
          v78 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v91 = v18;
          v128 = 0;
          v129 = 0;
          v23 = MEMORY[0x277D84F90];
          v130 = 141;
          v127 = v18;
          goto LABEL_81;
        }

        *&v136 = v18;
        v106 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
        v79 = sub_225CCE954();
        v80 = v120;
        v107 = swift_dynamicCast();
        (*(*(v79 - 8) + 56))(v80, v107 ^ 1u, 1, v79);
        v71 = v133;
      }

      else
      {
        v79 = sub_225CCE954();
        v80 = v120;
        (*(*(v79 - 8) + 56))(v120, 1, 1, v79);
      }

      sub_225CCE954();
      v108 = (*(*(v79 - 8) + 48))(v80, 1, v79);
      sub_2259CB640(v80, &unk_27D73B050);
      if (v108)
      {
        v109 = 141;
      }

      else
      {
        v109 = 23;
      }

      v130 = v109;

      v23 = MEMORY[0x277D84F90];
      v78 = sub_225B2C374(MEMORY[0x277D84F90]);
      v110 = v18;
      v127 = v18;
      v128 = v70;
      v129 = v71;
LABEL_81:
      v24 = v131 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v136 = v78;
      sub_225B2C4A0(v73, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v136);

      v3 = v136;
      v22 = v70;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_82:
        v113 = *(v23 + 16);
        v112 = *(v23 + 24);
        if (v113 >= v112 >> 1)
        {
          v23 = sub_225B29AA0((v112 > 1), v113 + 1, 1, v23);
        }

        *(v23 + 16) = v113 + 1;
        v114 = (v23 + 56 * v113);
        v115 = v133;
        v114[4] = v22;
        v114[5] = v115;
        v114[6] = 0xD00000000000001ELL;
        v114[7] = v24;
        v114[8] = 0x293A5F28636E7973;
        v114[9] = 0xE800000000000000;
        v114[10] = 148;
        *v25 = v130;
        v117 = v128;
        v116 = v129;
        *(v25 + 8) = v23;
        *(v25 + 16) = v117;
        *(v25 + 24) = v116;
        *(v25 + 32) = v3;
        *(v25 + 40) = v127;
        goto LABEL_85;
      }

LABEL_87:
      v23 = sub_225B29AA0(0, *(v23 + 16) + 1, 1, v23);
      goto LABEL_82;
    }

    (v130)(&v136, v22 - 63);

    v25 = *(&v136 + 1);
    v18 = v136;
    if (v137 <= 1u)
    {
      if (!v137)
      {
        v26 = v136;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v27 = off_28105B918;
        v28 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v3 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
        os_unfair_lock_lock(&v3[off_28105B918]);
        v29 = v127;
        v30 = v27 + v28;
        v31 = v132;
        (*v128)(v127, v30, v132);
        os_unfair_lock_unlock(&v3[v27]);
        DIPLogError(_:message:log:)(v18, 0xD00000000000002ALL, v124 | 0x8000000000000000);
        sub_225B33C90(v18, v25, 0);
        (*v129)(v29, v31);
        v23 = 0;
        goto LABEL_7;
      }

      v39 = v136;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v40 = off_28105B918;
      v41 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v3 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
      os_unfair_lock_lock(&v3[off_28105B918]);
      v42 = v127;
      v43 = v40 + v41;
      v44 = v132;
      (*v128)(v127, v43, v132);
      os_unfair_lock_unlock(&v3[v40]);
      DIPLogError(_:message:log:)(v18, 0xD00000000000002BLL, v125 | 0x8000000000000000);
      (*v129)(v42, v44);
      if (v24 < v133)
      {
        if (v123)
        {
          if (v123 == 1)
          {
            v45 = (1 << v22);
            if (v24 > 0x40)
            {
              v45 = 0.0;
            }

            v46 = v21 * v45;
            goto LABEL_5;
          }
        }

        else
        {
          v46 = v20;
          if (v20 < 0.0)
          {
            v46 = 0.0;
          }

LABEL_5:
          [objc_opt_self() sleepForTimeInterval_];
        }
      }

      v23 = 1;
      sub_225B33C90(v18, v25, 1u);
      goto LABEL_7;
    }

    if (v137 == 2)
    {
      if (v136)
      {
        sub_225B33CA4(v136, *(&v136 + 1), 2u);
        v32 = v18;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v33 = off_28105B918;
        v34 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v3 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
        os_unfair_lock_lock(&v3[off_28105B918]);
        v35 = v127;
        v36 = v33 + v34;
        v37 = v132;
        (*v128)(v127, v36, v132);
        os_unfair_lock_unlock(&v3[v33]);
        DIPLogError(_:message:log:)(v18, 0xD00000000000002CLL, v122 | 0x8000000000000000);
        v38 = v35;
      }

      else
      {
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v53 = off_28105B918;
        v54 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v3 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
        os_unfair_lock_lock(&v3[off_28105B918]);
        v55 = v121;
        (*v128)(v121, &v53[v54], v132);
        v56 = &v3[v53];
        v57 = v55;
        os_unfair_lock_unlock(v56);
        v58 = sub_225CCD934();
        v59 = sub_225CCED04();
        if (os_log_type_enabled(v58, v59))
        {
          v3 = swift_slowAlloc();
          *v3 = 0;
          _os_log_impl(&dword_2259A7000, v58, v59, "Retrier received retryAfterDelay from action", v3, 2u);
          MEMORY[0x22AA6F950](v3, -1, -1);

          v38 = v121;
        }

        else
        {

          v38 = v57;
        }

        v37 = v132;
      }

      (*v129)(v38, v37);
      [objc_opt_self() sleepForTimeInterval_];
      sub_225B33C90(v18, v25, 2u);
      sub_225B33C90(v18, v25, 2u);
      goto LABEL_53;
    }

    if (v136 != 0)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v47 = off_28105B918;
      v48 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v3 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
      os_unfair_lock_lock(&v3[off_28105B918]);
      (*v128)(v126, &v47[v48], v132);
      os_unfair_lock_unlock(&v3[v47]);
      v49 = sub_225CCD934();
      v50 = sub_225CCED04();
      if (os_log_type_enabled(v49, v50))
      {
        v3 = swift_slowAlloc();
        *v3 = 0;
        _os_log_impl(&dword_2259A7000, v49, v50, "Retrier received retry from action", v3, 2u);
        MEMORY[0x22AA6F950](v3, -1, -1);
      }

      (*v129)(v126, v132);
      if (v24 < v133)
      {
        if (v123)
        {
          if (v123 == 1)
          {
            v51 = (1 << v22);
            if (v24 > 0x40)
            {
              v51 = 0.0;
            }

            v52 = v21 * v51;
            goto LABEL_51;
          }
        }

        else
        {
          v52 = v20;
          if (v20 < 0.0)
          {
            v52 = 0.0;
          }

LABEL_51:
          [objc_opt_self() sleepForTimeInterval_];
        }
      }

      sub_225B33C90(v18, v25, 3u);
      v18 = 0;
LABEL_53:
      v23 = 1;
      goto LABEL_7;
    }

    v23 = 0;
    v18 = 0;
LABEL_7:
    ++v22;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_87;
    }
  }

  if (!v18)
  {
    return;
  }

  v60 = v18;
  v61 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v129 = swift_allocError();
  v63 = v62;
  swift_getErrorValue();
  v64 = v141;
  v65 = v18;
  sub_225B21FAC(v64, &v136);

  v66 = *(&v136 + 1);
  v130 = 0x8000000225D1DDD0;
  if (*(&v136 + 1))
  {
    v132 = v137;
    v133 = v136;
    v131 = v138;
    v67 = v139;
    v68 = v140;
  }

  else
  {
    *&v136 = v18;
    v81 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v82 = v135;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      v83 = swift_initStackObject();
      *(v83 + 16) = xmmword_225CD30F0;
      *(v83 + 32) = 20;
      v84 = [v82 code];
      v85 = MEMORY[0x277D83BF8];
      *(v83 + 64) = MEMORY[0x277D83B88];
      *(v83 + 72) = v85;
      *(v83 + 40) = v84;
      v67 = sub_225B2C374(v83);
      swift_setDeallocating();
      sub_2259CB640(v83 + 32, &qword_27D73B060);

      v86 = v18;
      v132 = 0;
      v133 = 0;
      v131 = 0;
      v66 = MEMORY[0x277D84F90];
    }

    else
    {
      *&v136 = v18;
      v92 = v18;
      v93 = sub_225CCE954();
      v94 = v119;
      v95 = swift_dynamicCast();
      v96 = *(v93 - 8);
      (*(v96 + 56))(v94, v95 ^ 1u, 1, v93);
      LODWORD(v96) = (*(v96 + 48))(v94, 1, v93);
      sub_2259CB640(v94, &unk_27D73B050);
      if (v96)
      {
        v97 = 0;
      }

      else
      {
        v97 = 23;
      }

      v133 = v97;
      v66 = MEMORY[0x277D84F90];
      v67 = sub_225B2C374(MEMORY[0x277D84F90]);
      v98 = v18;
      v131 = 0x8000000225D1DDD0;
      v132 = 0xD00000000000001DLL;
    }

    v68 = v18;
  }

  v99 = swift_isUniquelyReferenced_nonNull_native();
  *&v136 = v67;
  sub_225B2C4A0(v61, sub_225B2AC40, 0, v99, &v136);

  v100 = v136;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v66 = sub_225B29AA0(0, *(v66 + 2) + 1, 1, v66);
  }

  v102 = *(v66 + 2);
  v101 = *(v66 + 3);
  if (v102 >= v101 >> 1)
  {
    v66 = sub_225B29AA0((v101 > 1), v102 + 1, 1, v66);
  }

  *(v66 + 2) = v102 + 1;
  v103 = &v66[56 * v102];
  v104 = v130;
  *(v103 + 4) = 0xD00000000000001DLL;
  *(v103 + 5) = v104;
  *(v103 + 6) = 0xD00000000000001ELL;
  *(v103 + 7) = 0x8000000225D1DDF0;
  *(v103 + 8) = 0x293A5F28636E7973;
  *(v103 + 9) = 0xE800000000000000;
  *(v103 + 10) = 154;
  v105 = v132;
  *v63 = v133;
  *(v63 + 8) = v66;
  *(v63 + 16) = v105;
  *(v63 + 24) = v131;
  *(v63 + 32) = v100;
  *(v63 + 40) = v68;
LABEL_85:
  swift_willThrow();
}

uint64_t DIPRetrier.async(action:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a3;
  v7 = sub_225CCDA34();
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_225CCDA64();
  v11 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v4;
  v16 = v4[1];
  v17 = *(v4 + 16);
  v18 = v4[3];
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v16;
  *(v19 + 32) = v17;
  v21 = v25;
  v20 = v26;
  *(v19 + 40) = v18;
  *(v19 + 48) = v21;
  *(v19 + 56) = a2;
  *(v19 + 64) = v20;
  *(v19 + 72) = a4;
  aBlock[4] = sub_225B33CB8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225A1A000;
  aBlock[3] = &block_descriptor_4;
  v22 = _Block_copy(aBlock);
  v18;

  sub_225CCDA54();
  v29 = MEMORY[0x277D84F90];
  sub_225B33CE8(&qword_28105BFD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B170);
  sub_225B33D30();
  sub_225CCF0E4();
  MEMORY[0x22AA6D600](0, v14, v10, v22);
  _Block_release(v22);
  (*(v28 + 8))(v10, v7);
  (*(v11 + 8))(v14, v27);
}

void sub_225B30E60(int64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(uint64_t, uint64_t (*)(uint64_t a1), uint64_t), uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v332 = a8;
  v333 = a7;
  v352 = a5;
  v353 = a6;
  v338 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v321 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v321 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v323 = &v321 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v326 = &v321 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v325 = &v321 - v26;
  v27 = sub_225CCD954();
  v29 = MEMORY[0x28223BE20](v27, v28);
  v330 = &v321 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v339 = &v321 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v345 = &v321 - v36;
  MEMORY[0x28223BE20](v35, v37);
  v329 = &v321 - v39;
  v40 = *&a2;
  if (*&a2 < 0.0)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = *&a2;
  }

  v346 = 0x8000000225D1DEB0;
  v347 = 0x8000000225D1DDF0;
  v324 = v18;
  if (a1 < 1)
  {
    isUniquelyReferenced_nonNull_native = 0;
    v331 = 0;
    goto LABEL_204;
  }

  v322 = v14;
  isUniquelyReferenced_nonNull_native = 0;
  v331 = 0;
  v350 = (v38 + 8);
  v351 = (v38 + 16);
  v43 = &v371;
  v328 = "CoreIDVShared/DIPRetrier.swift";
  v336 = " retryWithError from action";
  v337 = " retryAfterDelay from action";
  v348 = xmmword_225CD30F0;
  v335 = xmmword_225CEEFF0;
  v334 = xmmword_225CEEFE0;
  v327 = xmmword_225CEEFD0;
  v44 = 1;
  v349 = a1;
  v342 = v27;
  while (1)
  {
    while (1)
    {

      v45 = dispatch_semaphore_create(0);
      v46 = swift_allocObject();
      *(v46 + 24) = 0;
      *(v46 + 16) = 0;
      *(v46 + 32) = 3;
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = v45;

      v48 = v45;
      v352(v44, sub_225B3438C, v47);

      v357 = v48;
      sub_225CCEEB4();
      swift_beginAccess();
      v49 = *(v46 + 16);
      v50 = *(v46 + 24);
      v51 = *(v46 + 32);
      if (v51 <= 1)
      {
        break;
      }

      if (v51 == 2)
      {
        v355 = v46;
        if (!v49)
        {
          a1 = v50;
          if (qword_28105B910 != -1)
          {
            swift_once();
          }

          v85 = off_28105B918;
          v86 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
          v87 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
          os_unfair_lock_lock((off_28105B918 + v87));
          v88 = &v85[v86];
          v89 = v330;
          (*v351)(v330, v88, v27);
          v90 = &v85[v87];
          v91 = v89;
          os_unfair_lock_unlock(v90);
          v92 = sub_225CCD934();
          v80 = sub_225CCED04();
          if (os_log_type_enabled(v92, v80))
          {
            v93 = swift_slowAlloc();
            *v93 = 0;
            _os_log_impl(&dword_2259A7000, v92, v80, "Retrier received retryAfterDelay from action", v93, 2u);
            MEMORY[0x22AA6F950](v93, -1, -1);
          }

          (*v350)(v91, v27);
          isUniquelyReferenced_nonNull_native = 0;
          goto LABEL_195;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        v57 = swift_allocObject();
        *(v57 + 16) = v348;
        *(v57 + 32) = 24;
        *(v57 + 64) = MEMORY[0x277D83B88];
        *(v57 + 72) = MEMORY[0x277D83BF8];
        *(v57 + 40) = v44;
        v58 = v49;
        v59 = v49;
        v60 = v49;
        v359 = sub_225B2C374(v57);
        swift_setDeallocating();
        sub_2259CB640(v57 + 32, &qword_27D73B060);
        swift_deallocClassInstance();
        swift_getErrorValue();
        v61 = v370;
        v62 = v49;
        sub_225B21FAC(v61, &v371);
        sub_225B33C90(v49, v50, 2u);
        v354 = v44;
        v358 = v50;
        v356 = v49;
        if (*(&v371 + 1))
        {
          v344 = *(&v371 + 1);
          v340 = v372;
          *&v341 = v371;
          v343 = *(&v372 + 1);
          *(&v341 + 1) = *(&v373 + 1);
          v63 = v373;
        }

        else
        {
          *&v371 = v49;
          v108 = v49;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
          sub_2259D8718(0, &qword_281059A90);
          if (swift_dynamicCast())
          {
            v61 = v366;
            v109 = swift_allocObject();
            *(v109 + 16) = v348;
            *(v109 + 32) = 20;
            v110 = [v61 code];
            *(v109 + 64) = MEMORY[0x277D83B88];
            *(v109 + 72) = MEMORY[0x277D83BF8];
            *(v109 + 40) = v110;
            v63 = sub_225B2C374(v109);
            swift_setDeallocating();
            sub_2259CB640(v109 + 32, &qword_27D73B060);
            swift_deallocClassInstance();

            sub_225B33CA4(v49, v50, 2u);
            v340 = 0;
            *&v341 = 0;
            v343 = 0;
            *(&v341 + 1) = v49;
            v344 = MEMORY[0x277D84F90];
          }

          else
          {
            *&v371 = v49;
            v215 = v49;
            v216 = sub_225CCE954();
            v61 = v50;
            v217 = v323;
            v218 = swift_dynamicCast();
            v219 = *(v216 - 8);
            (*(v219 + 56))(v217, v218 ^ 1u, 1, v216);
            LODWORD(v219) = (*(v219 + 48))(v217, 1, v216);
            sub_2259CB640(v217, &unk_27D73B050);
            if (v219)
            {
              v220 = 0;
            }

            else
            {
              v220 = 23;
            }

            *&v341 = v220;
            v221 = MEMORY[0x277D84F90];
            v63 = sub_225B2C374(MEMORY[0x277D84F90]);
            sub_225B33CA4(v49, v61, 2u);
            v340 = 0x7466417972746572;
            v343 = 0xEF79616C65447265;
            v344 = v221;
            *(&v341 + 1) = v49;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v369 = v63;
        v44 = v359 + 64;
        v222 = 1 << *(v359 + 32);
        if (v222 < 64)
        {
          v223 = ~(-1 << v222);
        }

        else
        {
          v223 = -1;
        }

        v27 = v223 & *(v359 + 64);
        a1 = (v222 + 63) >> 6;

        v80 = 0;
        while (2)
        {
          if (v27)
          {
            v224 = v80;
            goto LABEL_172;
          }

          if (a1 <= (v80 + 1))
          {
            v225 = v80 + 1;
          }

          else
          {
            v225 = a1;
          }

          v226 = v225 - 1;
          do
          {
            v224 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              __break(1u);
              goto LABEL_228;
            }

            if (v224 >= a1)
            {
              v27 = 0;
              v367 = 0u;
              v368 = 0u;
              v80 = v226;
              v366 = 0u;
              goto LABEL_173;
            }

            v27 = *(v44 + 8 * v224);
            ++v80;
          }

          while (!v27);
          v80 = v224;
LABEL_172:
          v227 = __clz(__rbit64(v27));
          v27 &= v27 - 1;
          v228 = v227 | (v224 << 6);
          v229 = *(*(v359 + 48) + v228);
          sub_225A32940(*(v359 + 56) + 40 * v228, &v363);
          LOBYTE(v366) = v229;
          sub_2259A9C20(&v363, &v366 + 8);
LABEL_173:
          v364 = v367;
          v365 = v368;
          v363 = v366;
          if (!v368)
          {
            v372 = 0u;
            v373 = 0u;
            v371 = 0u;
LABEL_188:

            v238 = v344;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v238 = sub_225B29AA0(0, *(v238 + 2) + 1, 1, v238);
            }

            v239 = v356;
            v240 = v343;
            v241 = *(&v341 + 1);
            v243 = *(v238 + 2);
            v242 = *(v238 + 3);
            if (v243 >= v242 >> 1)
            {
              v238 = sub_225B29AA0((v242 > 1), v243 + 1, 1, v238);
            }

            a1 = v358;
            sub_225B33C90(v239, v358, 2u);
            *(v238 + 2) = v243 + 1;
            v244 = &v238[56 * v243];
            *(v244 + 2) = v327;
            v245 = v346;
            v246 = v347;
            *(v244 + 6) = 0xD00000000000001ELL;
            *(v244 + 7) = v246;
            *(v244 + 8) = 0xD000000000000019;
            *(v244 + 9) = v245;
            *(v244 + 10) = 276;
            sub_2259CB5EC();
            v359 = swift_allocError();
            v248 = v340;
            v247 = v341;
            *v249 = v341;
            *(v249 + 8) = v238;
            *(v249 + 16) = v248;
            *(v249 + 24) = v240;
            *(v249 + 32) = v63;
            *(v249 + 40) = v241;
            v344 = swift_allocError();
            *v250 = v247;
            *(v250 + 8) = v238;
            *(v250 + 16) = v248;
            *(v250 + 24) = v240;
            *(v250 + 32) = v63;
            *(v250 + 40) = v241;

            v251 = v241;

            v252 = v241;
            v80 = v240;
            v253 = v241;
            if (qword_28105B910 != -1)
            {
              swift_once();
            }

            v254 = off_28105B918;
            v255 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
            v256 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
            os_unfair_lock_lock((off_28105B918 + v256));
            v257 = &v254[v255];
            v258 = v345;
            v27 = v342;
            (*v351)(v345, v257, v342);
            os_unfair_lock_unlock(&v254[v256]);
            v259 = v344;
            DIPLogError(_:message:log:)(v344, 0xD00000000000002CLL, v328 | 0x8000000000000000);

            v49 = v356;
            sub_225B33C90(v356, a1, 2u);
            (*v350)(v258, v27);

            v43 = &v371;
            v44 = v354;
            isUniquelyReferenced_nonNull_native = v359;
LABEL_195:
            [objc_opt_self() sleepForTimeInterval_];

            sub_225B33C90(v49, a1, 2u);

            v136 = __OFADD__(v44++, 1);
            if (v136)
            {
              goto LABEL_247;
            }

            a1 = v349;
            goto LABEL_197;
          }

          LOBYTE(v371) = v363;
          sub_225A32940(&v363 + 8, &v371 + 8);
          sub_2259CB640(&v363, &qword_27D73D9A0);
          if (!v373)
          {
            goto LABEL_188;
          }

          v49 = v371;
          sub_2259A9C20((&v371 + 8), &v366);
          v43 = sub_2259F19CC(v49);
          v231 = v63[2];
          v232 = (v230 & 1) == 0;
          v233 = v231 + v232;
          if (__OFADD__(v231, v232))
          {
            goto LABEL_242;
          }

          v61 = v230;
          if (v63[3] >= v233)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v230 & 1) == 0)
              {
                goto LABEL_182;
              }
            }

            else
            {
              sub_225A43D70();
              if ((v61 & 1) == 0)
              {
                goto LABEL_182;
              }
            }
          }

          else
          {
            sub_225A3FEA4(v233, isUniquelyReferenced_nonNull_native & 1);
            v234 = sub_2259F19CC(v49);
            if ((v61 & 1) != (v235 & 1))
            {
LABEL_249:
              sub_225CCFAC4();
              __break(1u);
              return;
            }

            v43 = v234;
            if ((v61 & 1) == 0)
            {
LABEL_182:
              v63 = v369;
              v369[(v43 >> 6) + 8] |= 1 << v43;
              *(v63[6] + v43) = v49;
              sub_2259A9C20(&v366, v63[7] + 40 * v43);
              v236 = v63[2];
              v136 = __OFADD__(v236, 1);
              v237 = v236 + 1;
              if (v136)
              {
                goto LABEL_245;
              }

              v63[2] = v237;
              goto LABEL_161;
            }
          }

          v63 = v369;
          sub_225A32940(v369[7] + 40 * v43, &v363);
          __swift_destroy_boxed_opaque_existential_0(&v366);
          v61 = v63[7];
          __swift_destroy_boxed_opaque_existential_0(v61 + 40 * v43);
          sub_2259A9C20(&v363, v61 + 40 * v43);
LABEL_161:
          isUniquelyReferenced_nonNull_native = 1;
          continue;
        }
      }

      if (!(v49 | v50))
      {
        v49 = v46;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v98 = off_28105B918;
        v99 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v100 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v100));
        v101 = &v98[v99];
        v102 = v329;
        (*v351)(v329, v101, v27);
        v103 = &v98[v100];
        v104 = v102;
        os_unfair_lock_unlock(v103);
        v105 = sub_225CCD934();
        v106 = sub_225CCED04();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&dword_2259A7000, v105, v106, "Retrier received stop from action", v107, 2u);
          MEMORY[0x22AA6F950](v107, -1, -1);
        }

        else
        {
        }

        (*v350)(v104, v27);

        v80 = 0;
        isUniquelyReferenced_nonNull_native = 0;
        goto LABEL_149;
      }

      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v69 = off_28105B918;
      v70 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v71 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v71));
      (*v351)(v339, &v69[v70], v27);
      os_unfair_lock_unlock(&v69[v71]);
      v72 = sub_225CCD934();
      v73 = sub_225CCED04();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_2259A7000, v72, v73, "Retrier received retry from action", v74, 2u);
        MEMORY[0x22AA6F950](v74, -1, -1);
      }

      (*v350)(v339, v27);
      if (v44 >= a1)
      {
LABEL_31:

        isUniquelyReferenced_nonNull_native = 0;
        v80 = 1;
        goto LABEL_149;
      }

      if (v338)
      {
        if (v338 != 1)
        {
          goto LABEL_31;
        }

        v75 = v44 & ~(v44 >> 63);
        v76 = v75 + 63;
        v77 = 1uLL >> (1 - v75);
        v78 = 1 << v76;
        if (v44 == 65)
        {
          v78 = 0;
        }

        if (v44 >= 1)
        {
          v77 = v78;
        }

        if (v44 > 65)
        {
          v77 = 0;
        }

        v79 = v41 * v77;
      }

      else
      {
        v79 = v40;
        if (v40 < 0.0)
        {
          v79 = 0.0;
        }
      }

      [objc_opt_self() sleepForTimeInterval_];

      isUniquelyReferenced_nonNull_native = 0;
      if (++v44 > a1)
      {
        goto LABEL_204;
      }
    }

    v354 = v44;
    v355 = v46;
    v358 = v50;
    v356 = v49;
    if (!v51)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    v64 = swift_allocObject();
    *(v64 + 16) = v348;
    *(v64 + 32) = 24;
    *(v64 + 64) = MEMORY[0x277D83B88];
    *(v64 + 72) = MEMORY[0x277D83BF8];
    *(v64 + 40) = v44;
    sub_225B33CA4(v49, v358, 1u);
    v65 = v49;
    v359 = sub_225B2C374(v64);
    swift_setDeallocating();
    sub_2259CB640(v64 + 32, &qword_27D73B060);
    swift_deallocClassInstance();
    swift_getErrorValue();
    v66 = v362;
    v67 = v49;
    sub_225B21FAC(v66, &v371);
    sub_225B33C90(v49, v358, 1u);
    *(&v341 + 1) = *(&v371 + 1);
    if (*(&v371 + 1))
    {
      v340 = v372;
      *&v341 = v371;
      v68 = v373;
      v343 = *(&v372 + 1);
      v344 = *(&v373 + 1);
    }

    else
    {
      *&v371 = v49;
      v94 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259D8718(0, &qword_281059A90);
      if (swift_dynamicCast())
      {
        v95 = v366;
        v96 = swift_allocObject();
        *(v96 + 16) = v348;
        *(v96 + 32) = 20;
        v97 = [v95 code];
        *(v96 + 64) = MEMORY[0x277D83B88];
        *(v96 + 72) = MEMORY[0x277D83BF8];
        *(v96 + 40) = v97;
        v68 = sub_225B2C374(v96);
        swift_setDeallocating();
        sub_2259CB640(v96 + 32, &qword_27D73B060);
        swift_deallocClassInstance();

        sub_225B33CA4(v49, v358, 1u);
        v343 = 0;
        v344 = v49;
        v340 = 0;
        *&v341 = 0;
        *(&v341 + 1) = MEMORY[0x277D84F90];
      }

      else
      {
        *&v371 = v49;
        v160 = v49;
        v161 = sub_225CCE954();
        v162 = v326;
        v163 = swift_dynamicCast();
        v164 = *(v161 - 8);
        (*(v164 + 56))(v162, v163 ^ 1u, 1, v161);
        LODWORD(v164) = (*(v164 + 48))(v162, 1, v161);
        sub_2259CB640(v162, &unk_27D73B050);
        if (v164)
        {
          v165 = 0;
        }

        else
        {
          v165 = 23;
        }

        *&v341 = v165;
        v166 = MEMORY[0x277D84F90];
        v68 = sub_225B2C374(MEMORY[0x277D84F90]);
        sub_225B33CA4(v49, v358, 1u);
        v343 = 0xEE00726F72724568;
        v344 = v49;
        v340 = 0x7469577972746572;
        *(&v341 + 1) = v166;
      }
    }

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v369 = v68;
    isUniquelyReferenced_nonNull_native = v359 + 64;
    v167 = 1 << *(v359 + 32);
    if (v167 < 64)
    {
      v168 = ~(-1 << v167);
    }

    else
    {
      v168 = -1;
    }

    v80 = v168 & *(v359 + 64);
    a1 = (v167 + 63) >> 6;

    v44 = 0;
    while (1)
    {
      if (v80)
      {
        v171 = v44;
LABEL_110:
        v174 = __clz(__rbit64(v80));
        v80 &= v80 - 1;
        v175 = v174 | (v171 << 6);
        v176 = *(*(v359 + 48) + v175);
        sub_225A32940(*(v359 + 56) + 40 * v175, &v363);
        LOBYTE(v366) = v176;
        sub_2259A9C20(&v363, &v366 + 8);
      }

      else
      {
        v172 = a1 <= v44 + 1 ? v44 + 1 : a1;
        v173 = v172 - 1;
        while (1)
        {
          v171 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            __break(1u);
            goto LABEL_214;
          }

          if (v171 >= a1)
          {
            break;
          }

          v80 = *(isUniquelyReferenced_nonNull_native + 8 * v171);
          ++v44;
          if (v80)
          {
            v44 = v171;
            goto LABEL_110;
          }
        }

        v80 = 0;
        v367 = 0u;
        v368 = 0u;
        v44 = v173;
        v366 = 0u;
      }

      v364 = v367;
      v365 = v368;
      v363 = v366;
      if (!v368)
      {
        break;
      }

      LOBYTE(v371) = v363;
      sub_225A32940(&v363 + 8, &v371 + 8);
      sub_2259CB640(&v363, &qword_27D73D9A0);
      if (!v373)
      {
        goto LABEL_126;
      }

      LOWORD(v43) = v371;
      sub_2259A9C20((&v371 + 8), &v366);
      v27 = sub_2259F19CC(v43);
      v178 = v68[2];
      v179 = (v177 & 1) == 0;
      v180 = v178 + v179;
      if (__OFADD__(v178, v179))
      {
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        v44 = sub_225B29AA0(0, *(v44 + 16) + 1, 1, v44);
LABEL_223:
        v291 = *(v44 + 16);
        v290 = *(v44 + 24);
        if (v291 >= v290 >> 1)
        {
          v44 = sub_225B29AA0((v290 > 1), v291 + 1, 1, v44);
        }

        *(v44 + 16) = v291 + 1;
        v292 = (v44 + 56 * v291);
        v293 = v359;
        v292[4] = v358;
        v292[5] = v293;
        v294 = v347;
        v292[6] = 0xD00000000000001ELL;
        v292[7] = v294;
        v295 = v346;
        v292[8] = 0xD000000000000019;
        v292[9] = v295;
        v292[10] = 289;
        sub_2259CB5EC();
        v296 = swift_allocError();
        *v297 = v43;
        *(v297 + 8) = v44;
        *(v297 + 16) = v27;
        *(v297 + 24) = v49;
        *(v297 + 32) = v80;
        *(v297 + 40) = a1;

        v298 = a1;
        v333(v296);

        v299 = a1;
LABEL_226:

        return;
      }

      v181 = v177;
      if (v68[3] >= v180)
      {
        if (v49)
        {
          if (v177)
          {
            goto LABEL_98;
          }
        }

        else
        {
          sub_225A43D70();
          if (v181)
          {
            goto LABEL_98;
          }
        }
      }

      else
      {
        sub_225A3FEA4(v180, v49 & 1);
        v182 = sub_2259F19CC(v43);
        if ((v181 & 1) != (v183 & 1))
        {
          goto LABEL_249;
        }

        v27 = v182;
        if (v181)
        {
LABEL_98:
          v68 = v369;
          v169 = 40 * v27;
          sub_225A32940(v369[7] + 40 * v27, &v363);
          __swift_destroy_boxed_opaque_existential_0(&v366);
          v170 = v68[7];
          __swift_destroy_boxed_opaque_existential_0(v170 + v169);
          sub_2259A9C20(&v363, v170 + v169);
          goto LABEL_99;
        }
      }

      v68 = v369;
      v369[(v27 >> 6) + 8] |= 1 << v27;
      *(v68[6] + v27) = v43;
      sub_2259A9C20(&v366, v68[7] + 40 * v27);
      v184 = v68[2];
      v136 = __OFADD__(v184, 1);
      v185 = v184 + 1;
      if (v136)
      {
        goto LABEL_244;
      }

      v68[2] = v185;
LABEL_99:
      v49 = 1;
    }

    v372 = 0u;
    v373 = 0u;
    v371 = 0u;
LABEL_126:

    v186 = *(&v341 + 1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v186 = sub_225B29AA0(0, *(v186 + 2) + 1, 1, v186);
    }

    v187 = v356;
    v189 = *(v186 + 2);
    v188 = *(v186 + 3);
    if (v189 >= v188 >> 1)
    {
      v260 = v356;
      v186 = sub_225B29AA0((v188 > 1), v189 + 1, 1, v186);
      v187 = v260;
    }

    sub_225B33C90(v187, v358, 1u);
    *(v186 + 2) = v189 + 1;
    v190 = &v186[56 * v189];
    *(v190 + 2) = v334;
    v191 = v346;
    v192 = v347;
    *(v190 + 6) = 0xD00000000000001ELL;
    *(v190 + 7) = v192;
    *(v190 + 8) = 0xD000000000000019;
    *(v190 + 9) = v191;
    *(v190 + 10) = 270;
    sub_2259CB5EC();
    v359 = swift_allocError();
    v194 = v340;
    v193 = v341;
    *v195 = v341;
    *(v195 + 8) = v186;
    *(v195 + 16) = v194;
    v197 = v343;
    v196 = v344;
    *(v195 + 24) = v343;
    *(v195 + 32) = v68;
    *(v195 + 40) = v196;
    v198 = swift_allocError();
    *v199 = v193;
    *(v199 + 8) = v186;
    *(v199 + 16) = v194;
    *(v199 + 24) = v197;
    *(v199 + 32) = v68;
    *(v199 + 40) = v196;

    v200 = v196;
    v201 = v186;

    v202 = v196;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v203 = off_28105B918;
    v204 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v205 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v205));
    v206 = &v203[v204];
    v207 = v345;
    v208 = v342;
    (*v351)(v345, v206, v342);
    v209 = &v203[v205];
    v27 = v208;
    os_unfair_lock_unlock(v209);
    DIPLogError(_:message:log:)(v198, 0xD00000000000002BLL, v337 | 0x8000000000000000);
    (*v350)(v207, v208);

    v44 = v354;
    v49 = v201;
    if (v354 >= v349)
    {
      goto LABEL_142;
    }

    if (v338)
    {
      if (v338 == 1)
      {
        v210 = v354 & ~(v354 >> 63);
        v211 = v210 + 63;
        v212 = 1uLL >> (1 - v210);
        v213 = 1 << v211;
        if (v354 == 65)
        {
          v213 = 0;
        }

        if (v354 >= 1)
        {
          v212 = v213;
        }

        if (v354 > 65)
        {
          v212 = 0;
        }

        v214 = v41 * v212;
        v43 = &v371;
        goto LABEL_147;
      }

LABEL_142:

      v80 = 1;
      sub_225B33C90(v356, v358, 1u);

      v43 = &v371;
    }

    else
    {
      v214 = v40;
      v43 = &v371;
      if (v40 < 0.0)
      {
        v214 = 0.0;
      }

LABEL_147:
      [objc_opt_self() sleepForTimeInterval_];

      v80 = 1;
      sub_225B33C90(v356, v358, 1u);
    }

LABEL_148:
    a1 = v349;
    isUniquelyReferenced_nonNull_native = v359;
LABEL_149:
    v136 = __OFADD__(v44++, 1);
    if (v136)
    {
      goto LABEL_246;
    }

    if (!v80)
    {
      if (!isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_215;
      }

      v44 = 0xD000000000000019;
      v49 = 0x8000000225D1DDD0;
      v271 = isUniquelyReferenced_nonNull_native;
      v61 = sub_225B2C248(MEMORY[0x277D84F90]);
      swift_getErrorValue();
      v272 = v374;
      v273 = isUniquelyReferenced_nonNull_native;
      sub_225B21FAC(v272, &v371);

      v274 = *(&v371 + 1);
      v359 = 0x8000000225D1DDD0;
      if (*(&v371 + 1))
      {
        v275 = v371;
        v276 = *(&v372 + 1);
        v277 = v372;
        v279 = *(&v373 + 1);
        v278 = v373;
LABEL_235:
        v311 = swift_isUniquelyReferenced_nonNull_native();
        *&v371 = v278;
        sub_225B2C4A0(v61, sub_225B2AC40, 0, v311, &v371);

        v312 = v371;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v274 = sub_225B29AA0(0, *(v274 + 2) + 1, 1, v274);
        }

        v314 = *(v274 + 2);
        v313 = *(v274 + 3);
        if (v314 >= v313 >> 1)
        {
          v274 = sub_225B29AA0((v313 > 1), v314 + 1, 1, v274);
        }

        *(v274 + 2) = v314 + 1;
        v315 = &v274[56 * v314];
        v316 = v359;
        *(v315 + 4) = 0xD00000000000001DLL;
        *(v315 + 5) = v316;
        v317 = v347;
        *(v315 + 6) = 0xD00000000000001ELL;
        *(v315 + 7) = v317;
        v318 = v346;
        *(v315 + 8) = 0xD000000000000019;
        *(v315 + 9) = v318;
        *(v315 + 10) = 297;
        sub_2259CB5EC();
        v296 = swift_allocError();
        *v319 = v275;
        *(v319 + 8) = v274;
        *(v319 + 16) = v277;
        *(v319 + 24) = v276;
        *(v319 + 32) = v312;
        *(v319 + 40) = v279;

        v320 = v279;
        v333(v296);

        v299 = v279;
        goto LABEL_226;
      }

LABEL_228:
      *&v371 = isUniquelyReferenced_nonNull_native;
      v300 = isUniquelyReferenced_nonNull_native;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259D8718(0, &qword_281059A90);
      if (swift_dynamicCast())
      {
        v301 = v366;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        v302 = swift_allocObject();
        *(v302 + 16) = v348;
        *(v302 + 32) = 20;
        v303 = [v301 code];
        *(v302 + 64) = MEMORY[0x277D83B88];
        *(v302 + 72) = MEMORY[0x277D83BF8];
        *(v302 + 40) = v303;
        v278 = sub_225B2C374(v302);
        swift_setDeallocating();
        sub_2259CB640(v302 + 32, &qword_27D73B060);
        swift_deallocClassInstance();

        v304 = isUniquelyReferenced_nonNull_native;
        v275 = 0;
        v277 = 0;
        v276 = 0;
        v274 = MEMORY[0x277D84F90];
      }

      else
      {
        *&v371 = isUniquelyReferenced_nonNull_native;
        v305 = isUniquelyReferenced_nonNull_native;
        v306 = sub_225CCE954();
        v307 = v322;
        v308 = swift_dynamicCast();
        v309 = *(v306 - 8);
        (*(v309 + 56))(v307, v308 ^ 1u, 1, v306);
        LODWORD(v309) = (*(v309 + 48))(v307, 1, v306);
        sub_2259CB640(v307, &unk_27D73B050);
        if (v309)
        {
          v275 = 0;
        }

        else
        {
          v275 = 23;
        }

        v274 = MEMORY[0x277D84F90];
        v278 = sub_225B2C374(MEMORY[0x277D84F90]);
        v310 = isUniquelyReferenced_nonNull_native;
        v277 = v44 + 4;
        v276 = v49;
      }

      v279 = isUniquelyReferenced_nonNull_native;
      goto LABEL_235;
    }

LABEL_197:
    if (v44 > a1)
    {
LABEL_204:
      *&v371 = 0;
      *(&v371 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v371 = 0x656972742078616DLL;
      *(&v371 + 1) = 0xEA00000000002073;
      *&v366 = a1;
      v261 = MEMORY[0x277D83B88];
      v262 = MEMORY[0x277D83BF8];
      v263 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v263);

      MEMORY[0x22AA6CE70](0x6564656563786520, 0xE900000000000064);
      v359 = *(&v371 + 1);
      v27 = v371;
      v264 = isUniquelyReferenced_nonNull_native;
      v265 = sub_225B2C248(MEMORY[0x277D84F90]);
      v358 = v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        swift_getErrorValue();
        v266 = v360;
        v267 = isUniquelyReferenced_nonNull_native;
        sub_225B21FAC(v266, &v371);

        v44 = *(&v371 + 1);
        if (*(&v371 + 1))
        {
          LOWORD(v43) = v371;
          v49 = *(&v372 + 1);
          v27 = v372;
          a1 = *(&v373 + 1);
          v268 = v373;
          goto LABEL_222;
        }

        *&v371 = isUniquelyReferenced_nonNull_native;
        v280 = isUniquelyReferenced_nonNull_native;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
        sub_2259D8718(0, &qword_281059A90);
        if (swift_dynamicCast())
        {
          v281 = v366;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v282 = swift_allocObject();
          *(v282 + 16) = xmmword_225CD30F0;
          *(v282 + 32) = 20;
          v283 = [v281 code];
          *(v282 + 64) = v261;
          *(v282 + 72) = v262;
          *(v282 + 40) = v283;
          v268 = sub_225B2C374(v282);
          swift_setDeallocating();
          sub_2259CB640(v282 + 32, &qword_27D73B060);
          swift_deallocClassInstance();

          v284 = isUniquelyReferenced_nonNull_native;
          v49 = 0;
          v27 = 0;
          v44 = MEMORY[0x277D84F90];
          LOWORD(v43) = 141;
LABEL_221:
          a1 = isUniquelyReferenced_nonNull_native;
LABEL_222:
          v289 = swift_isUniquelyReferenced_nonNull_native();
          *&v371 = v268;
          sub_225B2C4A0(v265, sub_225B2AC40, 0, v289, &v371);

          v80 = v371;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_248;
          }

          goto LABEL_223;
        }

        *&v371 = isUniquelyReferenced_nonNull_native;
        v285 = isUniquelyReferenced_nonNull_native;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
        v269 = sub_225CCE954();
        v270 = v324;
        v286 = swift_dynamicCast();
        (*(*(v269 - 8) + 56))(v270, v286 ^ 1u, 1, v269);
      }

      else
      {
        v269 = sub_225CCE954();
        v270 = v324;
        (*(*(v269 - 8) + 56))(v324, 1, 1, v269);
      }

      sub_225CCE954();
      v287 = (*(*(v269 - 8) + 48))(v270, 1, v269);
      sub_2259CB640(v270, &unk_27D73B050);
      if (v287)
      {
        LOWORD(v43) = 141;
      }

      else
      {
        LOWORD(v43) = 23;
      }

      v49 = v359;

      v44 = MEMORY[0x277D84F90];
      v268 = sub_225B2C374(MEMORY[0x277D84F90]);
      v288 = isUniquelyReferenced_nonNull_native;
      goto LABEL_221;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
  v52 = swift_allocObject();
  *(v52 + 16) = v348;
  *(v52 + 32) = 24;
  *(v52 + 64) = MEMORY[0x277D83B88];
  *(v52 + 72) = MEMORY[0x277D83BF8];
  *(v52 + 40) = v44;
  sub_225B33CA4(v49, v50, 0);
  v53 = v49;
  v359 = sub_225B2C374(v52);
  swift_setDeallocating();
  sub_2259CB640(v52 + 32, &qword_27D73B060);
  swift_deallocClassInstance();
  swift_getErrorValue();
  v54 = v361;
  v55 = v49;
  sub_225B21FAC(v54, &v371);
  sub_225B33C90(v49, v50, 0);
  if (*(&v371 + 1))
  {
    v340 = v372;
    v341 = v371;
    v343 = *(&v373 + 1);
    v56 = v373;
    v344 = *(&v372 + 1);
  }

  else
  {
    *&v371 = v49;
    v81 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v82 = v366;
      v83 = swift_allocObject();
      *(v83 + 16) = v348;
      *(v83 + 32) = 20;
      v84 = [v82 code];
      *(v83 + 64) = MEMORY[0x277D83B88];
      *(v83 + 72) = MEMORY[0x277D83BF8];
      *(v83 + 40) = v84;
      v56 = sub_225B2C374(v83);
      swift_setDeallocating();
      sub_2259CB640(v83 + 32, &qword_27D73B060);
      swift_deallocClassInstance();

      sub_225B33CA4(v49, v50, 0);
      v343 = v49;
      v344 = 0;
      v340 = 0;
      *&v341 = 0;
      *(&v341 + 1) = MEMORY[0x277D84F90];
    }

    else
    {
      *&v371 = v49;
      v111 = v49;
      v112 = sub_225CCE954();
      v113 = v50;
      v114 = v325;
      v115 = swift_dynamicCast();
      v116 = *(v112 - 8);
      (*(v116 + 56))(v114, v115 ^ 1u, 1, v112);
      LODWORD(v116) = (*(v116 + 48))(v114, 1, v112);
      sub_2259CB640(v114, &unk_27D73B050);
      if (v116)
      {
        v117 = 0;
      }

      else
      {
        v117 = 23;
      }

      *&v341 = v117;
      v118 = MEMORY[0x277D84F90];
      v56 = sub_225B2C374(MEMORY[0x277D84F90]);
      sub_225B33CA4(v49, v113, 0);
      v343 = v49;
      v344 = 0xED0000726F727245;
      v340 = 0x68746957706F7473;
      *(&v341 + 1) = v118;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v369 = v56;
  v44 = v359 + 64;
  v119 = 1 << *(v359 + 32);
  if (v119 < 64)
  {
    v120 = ~(-1 << v119);
  }

  else
  {
    v120 = -1;
  }

  v49 = v120 & *(v359 + 64);
  a1 = (v119 + 63) >> 6;

  v80 = 0;
  while (2)
  {
    if (v49)
    {
      v122 = v80;
LABEL_67:
      v125 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v126 = v125 | (v122 << 6);
      v127 = *(*(v359 + 48) + v126);
      sub_225A32940(*(v359 + 56) + 40 * v126, &v363);
      LOBYTE(v366) = v127;
      sub_2259A9C20(&v363, &v366 + 8);
LABEL_68:
      v364 = v367;
      v365 = v368;
      v363 = v366;
      if (!v368)
      {
        v372 = 0u;
        v373 = 0u;
        v371 = 0u;
LABEL_83:

        v138 = *(&v341 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_225B29AA0(0, *(v138 + 2) + 1, 1, v138);
        }

        v49 = 0xD000000000000019;
        v139 = v356;
        v141 = v343;
        v140 = v344;
        v142 = v341;
        v144 = *(v138 + 2);
        v143 = *(v138 + 3);
        if (v144 >= v143 >> 1)
        {
          v138 = sub_225B29AA0((v143 > 1), v144 + 1, 1, v138);
        }

        sub_225B33C90(v139, v358, 0);
        *(v138 + 2) = v144 + 1;
        v145 = &v138[56 * v144];
        *(v145 + 2) = v335;
        v146 = v346;
        v147 = v347;
        *(v145 + 6) = 0xD00000000000001ELL;
        *(v145 + 7) = v147;
        *(v145 + 8) = 0xD000000000000019;
        *(v145 + 9) = v146;
        *(v145 + 10) = 263;
        sub_2259CB5EC();
        v359 = swift_allocError();
        *v148 = v142;
        v149 = v340;
        *(v148 + 8) = v138;
        *(v148 + 16) = v149;
        *(v148 + 24) = v140;
        *(v148 + 32) = v56;
        *(v148 + 40) = v141;
        v344 = swift_allocError();
        *v150 = v142;
        *(v150 + 8) = v138;
        *(v150 + 16) = v149;
        *(v150 + 24) = v140;
        *(v150 + 32) = v56;
        *(v150 + 40) = v141;

        v151 = v141;

        v152 = v141;
        v153 = v141;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v154 = off_28105B918;
        v155 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v156 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v156));
        v157 = &v154[v155];
        v158 = v345;
        v27 = v342;
        (*v351)(v345, v157, v342);
        os_unfair_lock_unlock(&v154[v156]);
        v159 = v344;
        DIPLogError(_:message:log:)(v344, 0xD00000000000002ALL, v336 | 0x8000000000000000);

        sub_225B33C90(v356, v358, 0);
        (*v350)(v158, v27);

        v80 = 0;
        v43 = &v371;
        v44 = v354;
        goto LABEL_148;
      }

      LOBYTE(v371) = v363;
      sub_225A32940(&v363 + 8, &v371 + 8);
      sub_2259CB640(&v363, &qword_27D73D9A0);
      if (!v373)
      {
        goto LABEL_83;
      }

      v27 = v371;
      sub_2259A9C20((&v371 + 8), &v366);
      v43 = sub_2259F19CC(v27);
      v129 = v56[2];
      v130 = (v128 & 1) == 0;
      v131 = v129 + v130;
      if (__OFADD__(v129, v130))
      {
        goto LABEL_241;
      }

      v132 = v128;
      if (v56[3] >= v131)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v128 & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        else
        {
          sub_225A43D70();
          if ((v132 & 1) == 0)
          {
            goto LABEL_77;
          }
        }
      }

      else
      {
        sub_225A3FEA4(v131, isUniquelyReferenced_nonNull_native & 1);
        v133 = sub_2259F19CC(v27);
        if ((v132 & 1) != (v134 & 1))
        {
          goto LABEL_249;
        }

        v43 = v133;
        if ((v132 & 1) == 0)
        {
LABEL_77:
          v56 = v369;
          v369[(v43 >> 6) + 8] |= 1 << v43;
          *(v56[6] + v43) = v27;
          sub_2259A9C20(&v366, v56[7] + 40 * v43);
          v135 = v56[2];
          v136 = __OFADD__(v135, 1);
          v137 = v135 + 1;
          if (v136)
          {
            goto LABEL_243;
          }

          v56[2] = v137;
          goto LABEL_56;
        }
      }

      v56 = v369;
      sub_225A32940(v369[7] + 40 * v43, &v363);
      __swift_destroy_boxed_opaque_existential_0(&v366);
      v121 = v56[7];
      __swift_destroy_boxed_opaque_existential_0(v121 + 40 * v43);
      sub_2259A9C20(&v363, v121 + 40 * v43);
LABEL_56:
      isUniquelyReferenced_nonNull_native = 1;
      continue;
    }

    break;
  }

  if (a1 <= (v80 + 1))
  {
    v123 = v80 + 1;
  }

  else
  {
    v123 = a1;
  }

  v124 = v123 - 1;
  while (1)
  {
    v122 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      break;
    }

    if (v122 >= a1)
    {
      v49 = 0;
      v367 = 0u;
      v368 = 0u;
      v80 = v124;
      v366 = 0u;
      goto LABEL_68;
    }

    v49 = *(v44 + 8 * v122);
    ++v80;
    if (v49)
    {
      v80 = v122;
      goto LABEL_67;
    }
  }

LABEL_214:
  __break(1u);
LABEL_215:
  v333(0);
}

uint64_t sub_225B33A94(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  v8 = *(a2 + 32);
  *(a2 + 32) = v5;
  sub_225B33CA4(v3, v4, v5);
  sub_225B33C90(v6, v7, v8);
  return sub_225CCEEC4();
}

uint64_t sub_225B33B40@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + v13);
    sub_225A32940(*(v3 + 56) + 40 * v13, v18);
    LOBYTE(v21) = v14;
    result = sub_2259A9C20(v18, &v21 + 8);
    v16 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18[0] = v21;
      v18[1] = v22;
      v19 = v16;
      v20 = *(&v23 + 1);
      v17(v18);
      return sub_2259CB640(v18, &qword_27D73D9A0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_225B33C90(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }
}

id sub_225B33CA4(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    return result;
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225B33CE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_225B33D30()
{
  result = qword_28105BFD0;
  if (!qword_28105BFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D73B170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105BFD0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared14DIPRetryResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_225B33DB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_225B33DF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_225B33E3C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DIPBackoffStrategy(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DIPBackoffStrategy(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_225B33EF0(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_225B33F08(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_225B33F40()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_225B3429C();
    if (v1 <= 0x3F)
    {
      sub_225B34300();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_225B33FCC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 17;
  if (*(v3 + 64) > 0x11uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
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
      if (v11 >= 3)
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

  return (v5 | v10) + 254;
}

void sub_225B340E4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x11)
  {
    v5 = 17;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
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

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
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

unint64_t sub_225B3429C()
{
  result = qword_281059A30;
  if (!qword_281059A30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281059A30);
  }

  return result;
}

void sub_225B34300()
{
  if (!qword_281059A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73CEE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281059A28);
    }
  }
}

Swift::String __swiftcall Data.base16EncodedString()()
{
  sub_225B34448(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v2 = sub_225CCE384();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_225B34448(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    v32 = a2 >> 62;
    sub_2259D52A4(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_225CCCA44();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_225CCCA74();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_225CCCA44();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_225CCCA74();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7B0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_225CD30F0;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v22 = sub_225CCE4A4();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_2259D52A4((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t Digest.data.getter()
{
  v0 = Digest.bytes.getter();
  v1 = sub_2259D8490(v0);

  return v1;
}

uint64_t Data.clone()(uint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return sub_225CCCFD4();
    }

    result = *(result + 16);
    v4 = *(v2 + 24);
  }

  else
  {
    if (!v3)
    {
      return sub_225CCCFD4();
    }

    result = result;
    v4 = v2 >> 32;
  }

  if (v4 >= result)
  {
    return sub_225CCCFD4();
  }

  __break(1u);
  return result;
}

_BYTE *Data.init(base16Encoded:)()
{
  v26[5] = *MEMORY[0x277D85DE8];
  v0 = sub_225CCE444();

  v1 = HexToBytes(v0);

  if (v1)
  {
    v2 = sub_225CCCFA4();
    v4 = v3;

    v26[3] = MEMORY[0x277CC9318];
    v26[4] = MEMORY[0x277CC9300];
    v26[0] = v2;
    v26[1] = v4;
    v5 = __swift_project_boxed_opaque_existential_1(v26, MEMORY[0x277CC9318]);
    v6 = *v5;
    v7 = v5[1];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        memset(v24, 0, 14);
        v10 = v24;
        v9 = v24;
        goto LABEL_25;
      }

      v11 = *(v6 + 16);
      v12 = *(v6 + 24);
      v13 = sub_225CCCA44();
      if (v13)
      {
        v14 = sub_225CCCA74();
        v6 = v11 - v14;
        if (__OFSUB__(v11, v14))
        {
          goto LABEL_28;
        }

        v13 += v6;
      }

      v15 = __OFSUB__(v12, v11);
      v16 = v12 - v11;
      if (!v15)
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    else if (!v8)
    {
      v24[0] = *v5;
      LOWORD(v24[1]) = v7;
      BYTE2(v24[1]) = BYTE2(v7);
      BYTE3(v24[1]) = BYTE3(v7);
      BYTE4(v24[1]) = BYTE4(v7);
      BYTE5(v24[1]) = BYTE5(v7);
      v9 = v24 + BYTE6(v7);
      v10 = v24;
LABEL_25:
      sub_225B3D3E8(v10, v9, &v25);
      v1 = v25;
      __swift_destroy_boxed_opaque_existential_0(v26);
      return v1;
    }

    v17 = v6;
    v18 = v6 >> 32;
    v16 = v18 - v17;
    if (v18 >= v17)
    {
      v13 = sub_225CCCA44();
      if (!v13)
      {
LABEL_17:
        v20 = sub_225CCCA64();
        if (v20 >= v16)
        {
          v21 = v16;
        }

        else
        {
          v21 = v20;
        }

        v22 = (v21 + v13);
        if (v13)
        {
          v9 = v22;
        }

        else
        {
          v9 = 0;
        }

        v10 = v13;
        goto LABEL_25;
      }

      v19 = sub_225CCCA74();
      if (!__OFSUB__(v17, v19))
      {
        v13 += v17 - v19;
        goto LABEL_17;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  return v1;
}

_OWORD *sub_225B34A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_225CCF0F4();
  if (result == (1 << *(a1 + 32)))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *a2 = sub_225B3D6D8(v5, result, *(a1 + 36), 0, a1);
    return sub_2259B9624(v5, (a2 + 8));
  }

  return result;
}

uint64_t URL.serializedOrigin.getter()
{
  v0 = sub_225CCCE74();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = sub_225CCCE44();
  if (!v4)
  {

    return 0;
  }

  v5 = v3;
  v6 = v4;
  v19 = v2;

  MEMORY[0x22AA6CE70](3092282, 0xE300000000000000);
  MEMORY[0x22AA6CE70](v5, v6);

  v7 = v2;
  v8 = sub_225CCCE64();
  if (v9)
  {

    return v7;
  }

  v11 = v8;
  if (sub_225CCE514() == 1886680168 && v12 == 0xE400000000000000)
  {
  }

  else
  {
    v13 = sub_225CCF934();

    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (v11 != 80)
  {

LABEL_19:
    v18 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v18);

    MEMORY[0x22AA6CE70](58, 0xE100000000000000);

    return v19;
  }

LABEL_14:
  v14 = sub_225CCE514();
  v16 = v15;

  if (v14 == 0x7370747468 && v16 == 0xE500000000000000)
  {
  }

  else
  {
    v17 = sub_225CCF934();

    if ((v17 & 1) == 0)
    {
      return v7;
    }
  }

  result = v7;
  if (v11 != 443)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t Sequence<>.uniqued.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness();
  v18 = sub_225CCE294();
  (*(v8 + 16))(v10, v4, a1);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = &v18;
  v11 = sub_225CCE744();

  return v11;
}

double KeyedDecodingContainer.decodeDouble(forKey:)()
{
  sub_225CCF6A4();
  if (v0)
  {
    v2 = sub_225CCF6C4();

    return v2;
  }

  return result;
}

double KeyedDecodingContainer.decodeDoubleIfPresent(forKey:)()
{
  sub_225CCF644();
  if (v0)
  {
    v2 = sub_225CCF6C4();

    return v2;
  }

  return result;
}

Swift::String __swiftcall Data.base64urlEncodedString()()
{
  sub_225CCCF84();
  sub_2259D8654();
  sub_225CCF064();

  sub_225CCF064();

  v0 = sub_225CCF064();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t Data.init(base64urlEncoded:)()
{
  sub_2259D8654();
  sub_225CCF064();

  sub_225CCF064();

  v0 = sub_225CCE5D4();

  v1 = v0 & 3;
  if (v0 <= 0)
  {
    v1 = -(-v0 & 3);
  }

  if (v1 >= 1)
  {
    v2 = sub_225CCE6D4();
    MEMORY[0x22AA6CE70](v2);
  }

  v3 = sub_225CCCF04();
  v5 = v4;
  sub_2259CB6FC(v3, v4);

  if (v5 >> 60 != 15)
  {
    sub_2259B97A8(v3, v5);
  }

  return v3;
}

uint64_t Date.utcDayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA8);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v25 - v3;
  v5 = sub_225CCD1E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_225CCD284();
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277CC9830], v5);
  sub_225CCD1F4();
  (*(v6 + 8))(v9, v5);
  sub_225CCD294();
  v14 = sub_225CCD2D4();
  result = (*(*(v14 - 8) + 48))(v4, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_225CCD254();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8);
    v16 = sub_225CCD264();
    v17 = *(v16 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_225CD73C0;
    v21 = v20 + v19;
    v22 = *(v17 + 104);
    v22(v21, *MEMORY[0x277CC99C0], v16);
    v22(v21 + v18, *MEMORY[0x277CC99C8], v16);
    v22(v21 + 2 * v18, *MEMORY[0x277CC9988], v16);
    v22(v21 + 3 * v18, *MEMORY[0x277CC9998], v16);
    v22(v21 + 4 * v18, *MEMORY[0x277CC9968], v16);
    sub_2259F4D58(v20);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v23 = v27;
    sub_225CCD224();

    (*(v10 + 8))(v13, v26);
    v24 = sub_225CCCB74();
    return (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  }

  return result;
}

uint64_t OS_dispatch_group.wait(interval:)(double a1)
{
  return sub_225B35704(MEMORY[0x277D85220], a1);
}

{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_225B3597C, 0, 0);
}

uint64_t sub_225B35704(uint64_t (*a1)(char *), double a2)
{
  v4 = sub_225CCDA94();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - v11;
  v13 = sub_225CCDA14();
  v14 = *(v13 - 8);
  result = MEMORY[0x28223BE20](v13, v15);
  v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a2 * 1000.0;
  if (COERCE__INT64(fabs(a2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v19 < 9.22337204e18)
  {
    *v18 = v19;
    (*(v14 + 104))(v18, *MEMORY[0x277D85178], v13);
    sub_225CCDA84();
    MEMORY[0x22AA6C2E0](v9, v18);
    v20 = *(v5 + 8);
    v20(v9, v4);
    v21 = a1(v12);
    v20(v12, v4);
    (*(v14 + 8))(v18, v13);
    return v21 & 1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_225B3597C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  if (v2 <= 0.0)
  {
    v10 = v4;
    v11 = swift_task_alloc();
    *(v0 + 64) = v11;
    *(v11 + 16) = v10;
    v12 = swift_task_alloc();
    *(v0 + 72) = v12;
    *v12 = v0;
    v12[1] = sub_225B35C90;
    v13 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v12, 0, 0, 0x292874696177, 0xE600000000000000, sub_225B3D82C, v11, v13);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = &unk_225CEF168;
    *(v5 + 32) = v3;
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_225B35B6C;
    v7 = MEMORY[0x277D84F78] + 8;
    v8 = MEMORY[0x277D84F78] + 8;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v6, v7, v8, 0, 0, &unk_225CEF170, v5, v9);
  }
}

uint64_t sub_225B35B6C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_225B35E28;
  }

  else
  {

    v2 = sub_225B35E10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225B35C90()
{

  return MEMORY[0x2822009F8](sub_225B35DA8, 0, 0);
}

uint64_t sub_225B35DA8()
{

  return MEMORY[0x2822009F8](sub_225B35E10, 0, 0);
}

uint64_t sub_225B35E28()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_225B35EC0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_225B35FA4;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0x292874696177, 0xE600000000000000, sub_225B3DAD4, v2, v4);
}

uint64_t sub_225B35FA4()
{

  return MEMORY[0x2822009F8](sub_2259FDE14, 0, 0);
}

uint64_t sub_225B360DC()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_225B361C0;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0x292874696177, 0xE600000000000000, sub_225B3DAD4, v2, v4);
}

uint64_t sub_225B361C0()
{

  return MEMORY[0x2822009F8](sub_225B362D8, 0, 0);
}

uint64_t sub_225B362EC(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v25 = a1;
  v30 = sub_225CCDA64();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v2);
  v27 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - v7;
  v9 = sub_225CCDA44();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_225CCDA34();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCDA24();
  sub_2259D8718(0, &qword_28105BFA8);
  (*(v10 + 104))(v13, *MEMORY[0x277D851C8], v9);
  v17 = sub_225CCEDE4();
  (*(v10 + 8))(v13, v9);
  (*(v5 + 16))(v8, v25, v4);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  (*(v5 + 32))(v19 + v18, v8, v4);
  aBlock[4] = sub_225B3DA4C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225A1A000;
  aBlock[3] = &block_descriptor_5;
  v20 = _Block_copy(aBlock);
  v21 = v27;
  sub_225CCDA54();
  sub_225CCED64();
  _Block_release(v20);

  (*(v28 + 8))(v21, v30);
  (*(v24 + 8))(v16, v26);
}

uint64_t Dictionary<>.optString(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_225CCEFC4();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v23 - v11;
  v13 = *(a4 - 8);
  v15 = MEMORY[0x28223BE20](v10, v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v23 - v19;
  v23[1] = a1;
  v23[2] = a2;

  sub_225CCF194();
  sub_225CCE334();
  sub_2259F60D4(&v24);
  if ((*(v13 + 48))(v12, 1, a4) == 1)
  {
    (*(v8 + 8))(v12, v7);
    return 0;
  }

  else
  {
    v22 = *(v13 + 32);
    v22(v20, v12, a4);
    v22(v17, v20, a4);
    if (swift_dynamicCast())
    {
      return v24;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t Dictionary<>.optInt(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_225CCEFC4();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v23 - v11;
  v13 = *(a4 - 8);
  v15 = MEMORY[0x28223BE20](v10, v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v23 - v19;
  v23[1] = a1;
  v23[2] = a2;

  sub_225CCF194();
  sub_225CCE334();
  sub_2259F60D4(v24);
  if ((*(v13 + 48))(v12, 1, a4) == 1)
  {
    (*(v8 + 8))(v12, v7);
    return 0;
  }

  else
  {
    v22 = *(v13 + 32);
    v22(v20, v12, a4);
    v22(v17, v20, a4);
    if (swift_dynamicCast())
    {
      return v24[0];
    }

    else
    {
      return 0;
    }
  }
}

uint64_t Dictionary<>.optDataHex(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_225CCEFC4();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v25 - v11;
  v13 = *(a4 - 8);
  v15 = MEMORY[0x28223BE20](v10, v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v25 - v19;
  v25[1] = a1;
  v25[2] = a2;

  sub_225CCF194();
  sub_225CCE334();
  sub_2259F60D4(&v26);
  if ((*(v13 + 48))(v12, 1, a4) == 1)
  {
    (*(v8 + 8))(v12, v7);
  }

  else
  {
    (*(v13 + 32))(v20, v12, a4);
    (*(v13 + 16))(v17, v20, a4);
    if (swift_dynamicCast())
    {
      v21 = v26;
      v22 = v27;
      v26 = sub_225B34448(v26, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
      sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
      v23 = sub_225CCE384();
      sub_2259BEF00(v21, v22);
      (*(v13 + 8))(v20, a4);

      return v23;
    }

    (*(v13 + 8))(v20, a4);
  }

  return 0;
}

uint64_t sub_225B36ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v9 = sub_225CCEFC4();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v25 - v13;
  v15 = *(a4 - 8);
  v17 = MEMORY[0x28223BE20](v12, v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v25 - v21;
  v28 = a1;
  v29 = a2;

  sub_225CCF194();
  sub_225CCE334();
  sub_2259F60D4(v30);
  if ((*(v15 + 48))(v14, 1, a4) == 1)
  {
    (*(v10 + 8))(v14, v9);
    return 0;
  }

  else
  {
    v24 = *(v15 + 32);
    v24(v22, v14, a4);
    v24(v19, v22, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(v26);
    if (swift_dynamicCast())
    {
      return v30[0];
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _sSq13CoreIDVSharedE8asyncMapyqd__Sgqd__xYaqd_0_YKXEYaqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = v8;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v9[10] = *(a6 - 8);
  v9[11] = swift_task_alloc();
  v11 = *(a4 + 16);
  v9[12] = v11;
  v9[13] = *(v11 - 8);
  v9[14] = swift_task_alloc();
  v9[15] = *(a4 - 8);
  v9[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B37298, 0, 0);
}

uint64_t sub_225B37298()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  (*(v0[15] + 16))(v1, v0[8], v0[5]);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0[6] - 8) + 56))(v0[2], 1, 1);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[3];
    (*(v0[13] + 32))(v0[14], v0[16], v0[12]);
    v11 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_225B37494;
    v8 = v0[14];
    v9 = v0[11];
    v10 = v0[2];

    return v11(v10, v8, v9);
  }
}

uint64_t sub_225B37494()
{

  if (v0)
  {
    v1 = sub_225B3DAD0;
  }

  else
  {
    v1 = sub_225B375A4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_225B375A4()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(*(v0[6] - 8) + 56))(v0[2], 0, 1);

  v1 = v0[1];

  return v1();
}

uint64_t _sSq13CoreIDVSharedE12asyncFlatMapyqd__SgACxYaqd_0_YKXEYaqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = v8;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v9[10] = *(a6 - 8);
  v9[11] = swift_task_alloc();
  v11 = *(a4 + 16);
  v9[12] = v11;
  v9[13] = *(v11 - 8);
  v9[14] = swift_task_alloc();
  v9[15] = *(a4 - 8);
  v9[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B377E8, 0, 0);
}

uint64_t sub_225B377E8()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  (*(v0[15] + 16))(v1, v0[8], v0[5]);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0[6] - 8) + 56))(v0[2], 1, 1);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[3];
    (*(v0[13] + 32))(v0[14], v0[16], v0[12]);
    v11 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_225B379E0;
    v8 = v0[14];
    v9 = v0[11];
    v10 = v0[2];

    return v11(v10, v8, v9);
  }
}

uint64_t sub_225B379E0()
{

  if (v0)
  {
    v1 = sub_225B37B84;
  }

  else
  {
    v1 = sub_225B37AF0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_225B37AF0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_225B37B84()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v3 + 32))(v2, v1, v4);

  v5 = v0[1];

  return v5();
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D9B8);
      [v2 addObject_];
      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }

  v5 = v2;
  sub_225CCEBF4();

  sub_225CCF524();
  __break(1u);
}

Swift::Bool __swiftcall NSXPCConnection.isEntitled(_:)(Swift::String a1)
{
  v2 = sub_225CCE444();
  v3 = [v1 valueForEntitlement_];

  if (!v3)
  {
    return 0;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();
  sub_2259B9624(v9, v10);
  sub_2259CB810(v10, v9);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
    return v7;
  }

  sub_2259CB810(v10, v9);
  if (!swift_dynamicCast())
  {
    sub_2259CB810(v10, v9);
    sub_2259D8718(0, &qword_281059AA0);
    if (swift_dynamicCast() || (sub_2259CB810(v10, v9), sub_2259D8718(0, &unk_27D73E350), swift_dynamicCast()))
    {
      v6 = [v7 count];

      __swift_destroy_boxed_opaque_existential_0(v10);
      return v6 > 0;
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v10);

  v5 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v5 = v7 & 0xFFFFFFFFFFFFLL;
  }

  return v5 != 0;
}

uint64_t static NSXPCConnection.hasArrayEntitlement(name:values:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [swift_getObjCClassFromMetadata() currentConnection];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = sub_225CCE444();
  v7 = [v5 valueForEntitlement_];

  if (v7)
  {
    sub_225CCF0A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {

    sub_2259CB640(v16, &qword_27D73DD90);
    return 0;
  }

  sub_2259D8718(0, &qword_281059AA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v8 = a3 + 40;
  v9 = *(a3 + 16) + 1;
  while (--v9)
  {
    v10 = v8 + 16;

    v11 = sub_225CCE444();

    v12 = [v13 containsObject_];

    v8 = v10;
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  return 1;
}

Swift::Bool __swiftcall NSXPCConnection.hasArrayEntitlement(name:values:)(Swift::String name, Swift::OpaquePointer values)
{
  v4 = sub_225CCE444();
  v5 = [v2 valueForEntitlement_];

  if (v5)
  {
    sub_225CCF0A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_2259CB640(v15, &qword_27D73DD90);
    return 0;
  }

  sub_2259D8718(0, &qword_281059AA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = values._rawValue + 40;
  v7 = *(values._rawValue + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 16;

    v9 = sub_225CCE444();

    v10 = [v12 containsObject_];

    v6 = v8;
    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  return 1;
}

Swift::OpaquePointer_optional __swiftcall NSXPCConnection.getArrayEntitlement(name:)(Swift::String name)
{
  v2 = sub_225CCCD54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCE444();
  v8 = [v1 valueForEntitlement_];

  if (v8)
  {
    sub_225CCF0A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {
    sub_2259CB640(&v29, &qword_27D73DD90);
    goto LABEL_17;
  }

  sub_2259D8718(0, &qword_281059AA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v11 = 0;
    goto LABEL_20;
  }

  v10 = v25;
  sub_225CCEF04();
  sub_225CCCD44();
  if (*(&v30 + 1))
  {
    v11 = MEMORY[0x277D84F90];
    do
    {
      sub_2259B9624(&v29, &v27);
      if (swift_dynamicCast())
      {
        v13 = v25;
        v12 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_225B29BC8(0, *(v11 + 2) + 1, 1, v11);
        }

        v14 = *(v11 + 2);
        v15 = *(v11 + 3);
        v16 = v14 + 1;
        if (v14 >= v15 >> 1)
        {
          v24 = v12;
          v18 = v14 + 1;
          v19 = v11;
          v20 = v14;
          v21 = sub_225B29BC8((v15 > 1), v14 + 1, 1, v19);
          v14 = v20;
          v16 = v18;
          v12 = v24;
          v11 = v21;
        }

        *(v11 + 2) = v16;
        v17 = &v11[16 * v14];
        *(v17 + 4) = v13;
        *(v17 + 5) = v12;
      }

      sub_225CCCD44();
    }

    while (*(&v30 + 1));
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  (*(v3 + 8))(v6, v2);

LABEL_20:
  v22 = v11;
  result.value._rawValue = v22;
  result.is_nil = v9;
  return result;
}

Swift::OpaquePointer_optional __swiftcall NSXPCConnection.getDictionaryOfStringArraysEntitlement(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v68 = &v60 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v60 - v14;
  v65 = sub_225CCCD54();
  v16 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v17);
  v67 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = countAndFlagsBits;
  v19 = sub_225CCE444();
  v20 = [v1 valueForEntitlement_];

  if (v20)
  {
    sub_225CCF0A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
  }

  v82 = v78;
  v83 = v79;
  if (!*(&v79 + 1))
  {
    sub_2259CB640(&v82, &qword_27D73DD90);
    goto LABEL_39;
  }

  sub_2259D8718(0, &unk_27D73E350);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    v59 = 0;
    goto LABEL_41;
  }

  v22 = v76;
  v64 = sub_225B2E3C0(MEMORY[0x277D84F90]);
  v63 = v22;
  v71 = sub_225CCECC4();
  sub_225CCECD4();
  v82 = v78;
  v83 = v79;
  *(&v23 + 1) = *(&v80 + 1);
  v84 = v80;
  v85 = v81;
  if (*(&v79 + 1))
  {
    v66 = v15;
    v72 = (v5 + 16);
    v24 = (v5 + 8);
    v61 = (v16 + 8);
    *&v23 = 136315138;
    v69 = v23;
    v25 = v68;
    do
    {
      sub_2259B9624(&v82, &v78);
      sub_2259B9624(&v84, &v76);
      sub_2259D8718(0, &qword_281059AA0);
      if (swift_dynamicCast())
      {
        v26 = v75[0];
        sub_2259CB810(&v78, &v76);
        if (!swift_dynamicCast())
        {
          v27 = v9;
          if (qword_28105B910 != -1)
          {
            swift_once();
          }

          v28 = off_28105B918;
          v29 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
          v30 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
          os_unfair_lock_lock((off_28105B918 + v30));
          (*v72)(v25, &v28[v29], v4);
          os_unfair_lock_unlock(&v28[v30]);

          v31 = sub_225CCD934();
          v32 = v25;
          v33 = sub_225CCED14();

          if (os_log_type_enabled(v31, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            *&v76 = v35;
            *v34 = v69;
            *(v34 + 4) = sub_2259BE198(v70, object, &v76);
            _os_log_impl(&dword_2259A7000, v31, v33, "Dictionary entitlement %s has an invalid value", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v35);
            MEMORY[0x22AA6F950](v35, -1, -1);
            MEMORY[0x22AA6F950](v34, -1, -1);
          }

          (*v24)(v32, v4);
          __swift_destroy_boxed_opaque_existential_0(&v78);
          v25 = v32;
          v9 = v27;
          goto LABEL_9;
        }

        v60 = *v75;
        sub_225CCEF04();
        sub_225CCCD44();
        if (v77)
        {
          v62 = MEMORY[0x277D84F90];
          do
          {
            while (1)
            {
              sub_2259B9624(&v76, v75);
              if (swift_dynamicCast())
              {
                break;
              }

              if (qword_28105B910 != -1)
              {
                swift_once();
              }

              v43 = off_28105B918;
              v44 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
              v45 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
              os_unfair_lock_lock((off_28105B918 + v45));
              v46 = v66;
              (*v72)(v66, &v43[v44], v4);
              os_unfair_lock_unlock(&v43[v45]);

              v47 = sub_225CCD934();
              v48 = sub_225CCED14();

              if (os_log_type_enabled(v47, v48))
              {
                v49 = swift_slowAlloc();
                v50 = swift_slowAlloc();
                v75[0] = v50;
                *v49 = v69;
                *(v49 + 4) = sub_2259BE198(v70, object, v75);
                _os_log_impl(&dword_2259A7000, v47, v48, "Dictionary entitlement %s has an invalid value", v49, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v50);
                MEMORY[0x22AA6F950](v50, -1, -1);
                MEMORY[0x22AA6F950](v49, -1, -1);
              }

              (*v24)(v46, v4);
              v25 = v68;
              sub_225CCCD44();
              if (!v77)
              {
                goto LABEL_37;
              }
            }

            v51 = v73;
            v52 = v74;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v62 = sub_225B29BC8(0, *(v62 + 2) + 1, 1, v62);
            }

            v54 = *(v62 + 2);
            v53 = *(v62 + 3);
            if (v54 >= v53 >> 1)
            {
              v62 = sub_225B29BC8((v53 > 1), v54 + 1, 1, v62);
            }

            v55 = v62;
            *(v62 + 2) = v54 + 1;
            v56 = &v55[16 * v54];
            *(v56 + 4) = v51;
            *(v56 + 5) = v52;
            sub_225CCCD44();
            v25 = v68;
          }

          while (v77);
        }

        else
        {
          v62 = MEMORY[0x277D84F90];
        }

LABEL_37:
        (*v61)(v67, v65);
        v57 = v64;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v76 = v57;
        sub_225A04A70(v62, v60, *(&v60 + 1), isUniquelyReferenced_nonNull_native);

        v64 = v76;
      }

      else
      {
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v36 = off_28105B918;
        v37 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v38 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v38));
        (*v72)(v9, &v36[v37], v4);
        os_unfair_lock_unlock(&v36[v38]);

        v39 = sub_225CCD934();
        v40 = sub_225CCED14();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *&v76 = v42;
          *v41 = v69;
          *(v41 + 4) = sub_2259BE198(v70, object, &v76);
          _os_log_impl(&dword_2259A7000, v39, v40, "Dictionary entitlement %s has an invalid value", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x22AA6F950](v42, -1, -1);
          MEMORY[0x22AA6F950](v41, -1, -1);
        }

        (*v24)(v9, v4);
      }

      __swift_destroy_boxed_opaque_existential_0(&v78);
LABEL_9:
      sub_225CCECD4();
      v82 = v78;
      v83 = v79;
      v84 = v80;
      v85 = v81;
    }

    while (*(&v79 + 1));
  }

  v59 = v64;
LABEL_41:
  result.value._rawValue = v59;
  result.is_nil = v21;
  return result;
}

uint64_t sub_225B3904C()
{
  v1 = [v0 debugDescription];
  v2 = sub_225CCE474();

  return v2;
}

id KeyedDecodingContainer.decodeBase64URLEncodedData(forKey:)()
{
  sub_225CCF684();
  if (!v1)
  {
    v2 = sub_2259D8654();
    v3 = MEMORY[0x277D837D0];
    sub_225CCF064();

    v17 = v2;
    v18 = v2;
    v15 = v3;
    v16 = v2;
    sub_225CCF064();

    v4 = sub_225CCE5D4();

    v5 = v4 & 3;
    if (v4 <= 0)
    {
      v5 = -(-v4 & 3);
    }

    if (v5 >= 1)
    {
      v6 = sub_225CCE6D4();
      MEMORY[0x22AA6CE70](v6);
    }

    v0 = sub_225CCCF04();
    v8 = v7;
    sub_2259CB6FC(v0, v7);

    if (v8 >> 60 == 15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = sub_225CCE474();
      *(inited + 72) = v3;
      *(inited + 40) = v10;
      *(inited + 48) = 0xD000000000000029;
      *(inited + 56) = 0x8000000225D1DF50;
      sub_225B2C92C(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &unk_27D73B090);
      v11 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v12 = sub_225CCE444();
      v13 = sub_225CCE2B4();

      v0 = [v11 initWithDomain:v12 code:-1 userInfo:{v13, v15, v16, v17, v18}];

      swift_willThrow();
    }

    else
    {
      sub_2259B97A8(v0, v8);
    }
  }

  return v0;
}

id UnkeyedDecodingContainer.decodeBase64URLEncodedData()()
{
  sub_225CCF874();
  if (!v1)
  {
    v2 = sub_2259D8654();
    v3 = MEMORY[0x277D837D0];
    sub_225CCF064();

    v17 = v2;
    v18 = v2;
    v15 = v3;
    v16 = v2;
    sub_225CCF064();

    v4 = sub_225CCE5D4();

    v5 = v4 & 3;
    if (v4 <= 0)
    {
      v5 = -(-v4 & 3);
    }

    if (v5 >= 1)
    {
      v6 = sub_225CCE6D4();
      MEMORY[0x22AA6CE70](v6);
    }

    v0 = sub_225CCCF04();
    v8 = v7;
    sub_2259CB6FC(v0, v7);

    if (v8 >> 60 == 15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = sub_225CCE474();
      *(inited + 72) = v3;
      *(inited + 40) = v10;
      *(inited + 48) = 0xD000000000000029;
      *(inited + 56) = 0x8000000225D1DF50;
      sub_225B2C92C(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &unk_27D73B090);
      v11 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v12 = sub_225CCE444();
      v13 = sub_225CCE2B4();

      v0 = [v11 initWithDomain:v12 code:-1 userInfo:{v13, v15, v16, v17, v18}];

      swift_willThrow();
    }

    else
    {
      sub_2259B97A8(v0, v8);
    }
  }

  return v0;
}

uint64_t Digest.bytes.getter()
{
  v0 = sub_225CCE154();
  v2 = sub_2259D732C(v0, v1);

  return v2;
}

uint64_t Digest.hexStr.getter()
{
  v0 = Digest.bytes.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2259D52A4(0, v1, 0);
    v2 = 32;
    v3 = v17;
    v4 = MEMORY[0x277D84B78];
    v5 = MEMORY[0x277D84BC0];
    do
    {
      v6 = *(v0 + v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7B0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_225CD30F0;
      *(v7 + 56) = v4;
      *(v7 + 64) = v5;
      *(v7 + 32) = v6;
      v8 = sub_225CCE4A4();
      v18 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        v16 = v8;
        v13 = v9;
        sub_2259D52A4((v10 > 1), v11 + 1, 1);
        v9 = v13;
        v8 = v16;
        v3 = v18;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      ++v2;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v14 = sub_225CCE384();

  return v14;
}

uint64_t Digest.base64Str.getter()
{
  v0 = Digest.bytes.getter();
  v1 = sub_2259D8490(v0);
  v3 = v2;

  v4 = sub_225CCCF84();
  sub_2259BEF00(v1, v3);
  return v4;
}

uint64_t Date.isAtLeast(days:after:)()
{
  v0 = sub_225CCD0B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD024();
  sub_225B3D8F8();
  v5 = sub_225CCE3A4();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t Date.isAtLeast(seconds:after:)()
{
  v0 = sub_225CCD0B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD024();
  sub_225B3D8F8();
  v5 = sub_225CCE3A4();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t Date.isAfterAndWithin(seconds:of:)()
{
  v0 = sub_225CCD0B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225B3D8F8();
  if (sub_225CCE3A4())
  {
    sub_225CCD024();
    v5 = sub_225CCE3B4();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t Date.isBeforeAndWithin(seconds:of:)()
{
  v0 = sub_225CCD0B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225B3D8F8();
  if (sub_225CCE3B4())
  {
    sub_225CCD024();
    v5 = sub_225CCE3A4();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL Date.isWithin(seconds:of:)(double a1)
{
  sub_225CCD004();
  v3 = v2;
  sub_225CCD004();
  return vabdd_f64(v3, v4) < a1;
}

uint64_t Date.addingRandomOffset(in:)(double a1)
{
  if (a1 < 0.0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_225B3D47C(0x20000000000001uLL);

  return sub_225CCD024();
}

uint64_t Int.formattedByteSize.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  v3 = [v2 stringFromByteCount_];

  v4 = sub_225CCE474();
  return v4;
}

char *Array<A>.intArray.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_225CCF144();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v11 = MEMORY[0x277D84F90];
  result = sub_2259D5304(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v11;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AA6DA80](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 integerValue];

      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2259D5304((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      *(v11 + 16) = v10 + 1;
      *(v11 + 8 * v10 + 32) = v8;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.numberArray.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v6 = MEMORY[0x277D84F90];
    sub_225CCF394();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_225CCF364();
      sub_225CCF3A4();
      sub_225CCF3B4();
      sub_225CCF374();
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

unint64_t UUID.data.getter()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = sub_225CCD104();
  v2[1] = v0;
  return sub_2259D2BE8(v2, &v3);
}

Swift::String_optional __swiftcall URL.fileSize()()
{
  v0 = sub_225CCD954();
  MEMORY[0x28223BE20](v0, v1);
  v2 = sub_225CCCBA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D9C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  v8 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v9 = v8;
  sub_2259F6C80(inited);
  swift_setDeallocating();
  sub_225B3D950(inited + 32);
  sub_225CCCDB4();

  v10 = sub_225CCCB94();
  (*(v3 + 8))(v6, v2);
  sub_225B34A98(v10, &v21);

  if (!v21)
  {
    sub_2259CB640(&v21, &qword_27D73D9D0);
    goto LABEL_4;
  }

  sub_2259B9624(&v22, &v23);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_4:
    v18 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_7;
  }

  v11 = v21;
  v12 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  v13 = [v12 stringFromByteCount_];
  v14 = sub_225CCE474();
  v16 = v15;

  v17 = v16;
  v18 = v14;
LABEL_7:
  result.value._object = v17;
  result.value._countAndFlagsBits = v18;
  return result;
}

id URL.count.getter()
{
  v0 = sub_225CCD954();
  MEMORY[0x28223BE20](v0, v1);
  v2 = sub_225CCCBA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D9C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  v8 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v9 = v8;
  sub_2259F6C80(inited);
  swift_setDeallocating();
  sub_225B3D950(inited + 32);
  sub_225CCCDB4();

  v10 = sub_225CCCB94();
  (*(v3 + 8))(v6, v2);
  sub_225B34A98(v10, &v13);

  if (v13)
  {

    sub_2259B9624(&v14, &v15);
    if (swift_dynamicCast())
    {
      return v13;
    }
  }

  else
  {
    sub_2259CB640(&v13, &qword_27D73D9D0);
  }

  return 0;
}