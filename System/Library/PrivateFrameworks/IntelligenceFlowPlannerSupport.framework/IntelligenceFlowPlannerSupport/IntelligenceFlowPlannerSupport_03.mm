unint64_t sub_22BE6117C(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v19 = ~v4;
    v7 = *a1;
    v8 = a1[1];
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 48 * v5);
      v11 = v10[2];
      v12 = v10[3];
      v13 = v10[4];
      v14 = v10[5];
      v15 = *v10 == v7 && v10[1] == v8;
      if (v15 || (sub_22C274014() & 1) != 0)
      {
        v16 = v11 == a1[2] && v12 == a1[3];
        if (v16 || (sub_22C274014() & 1) != 0)
        {
          v17 = v13 == a1[4] && v14 == a1[5];
          if (v17 || (sub_22C274014() & 1) != 0)
          {
            break;
          }
        }
      }

      v5 = (v5 + 1) & v19;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22BE612A8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_22C273024();
    v8 = v7;
    if (v6 == sub_22C273024() && v8 == v9)
    {

      return i;
    }

    v11 = sub_22C274014();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_22BE613A0(uint64_t *a1, uint64_t a2)
{
  v27 = type metadata accessor for ToolboxCache.ToolCacheKey(0);
  v5 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v2 + 64;
  v30 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = a1[1];
    v14 = a1[2];
    v15 = a1[3];
    v25 = a1;
    v26 = v14;
    v28 = *(a1 + 32);
    v16 = *(v6 + 72);
    while (1)
    {
      v17 = *(v30 + 48);
      sub_22BE6346C();
      v18 = *(v8 + 2);
      v19 = *(v8 + 3);
      v20 = v8[32];
      v21 = *v8 == v12 && *(v8 + 1) == v13;
      if (!v21 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_21;
      }

      if (!v19)
      {
        break;
      }

      if (!v15)
      {
        goto LABEL_21;
      }

      if (v18 != v26 || v19 != v15)
      {
        if ((sub_22C274014() & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_17:
        if (((v28 ^ v20) & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_21;
      }

      if (v28 == v20)
      {
LABEL_18:
        v23 = MEMORY[0x2318A6910](&v8[*(v27 + 20)], v25 + *(v27 + 20));
        sub_22BE63414(v8, type metadata accessor for ToolboxCache.ToolCacheKey);
        if (v23)
        {
          return v10;
        }

        goto LABEL_22;
      }

LABEL_21:
      sub_22BE63414(v8, type metadata accessor for ToolboxCache.ToolCacheKey);
LABEL_22:
      v10 = (v10 + 1) & v11;
      if (((*(v29 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    if (v15)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  return v10;
}

unint64_t sub_22BE615DC(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v4 = sub_22C272AC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  v8 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v10 = &v45[-v9];
  v53 = sub_22BE5CE4C(&qword_27D9071E8, &unk_22C28C9C0);
  v11 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v13 = &v45[-v12];
  v14 = type metadata accessor for Toolbox.ContainerForTypeLookup(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v54 = &v45[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = sub_22BE5CE4C(&qword_27D9071F0, &qword_22C275070);
  v17 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v19 = &v45[-v18];
  v59 = type metadata accessor for ToolboxCache.TypeCacheKey(0);
  v20 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v23 = &v45[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = v2 + 64;
  v25 = -1 << *(v2 + 32);
  v26 = a2 & ~v25;
  if ((*(v2 + 64 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v51 = v13;
    v52 = v4;
    v27 = ~v25;
    v47 = (v5 + 32);
    v28 = *(v21 + 72);
    v48 = (v5 + 8);
    v49 = v10;
    v55 = ~v25;
    v56 = v28;
    while (1)
    {
      v29 = *(v2 + 48);
      sub_22BE6346C();
      if (sub_22C272954())
      {
        break;
      }

LABEL_19:
      sub_22BE63414(v23, type metadata accessor for ToolboxCache.TypeCacheKey);
LABEL_20:
      v26 = (v26 + 1) & v27;
      if (((*(v24 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        return v26;
      }
    }

    v30 = v2;
    v31 = *(v59 + 20);
    v32 = *(v57 + 48);
    sub_22BE6346C();
    v33 = v60;
    sub_22BE6346C();
    v34 = v58;
    if (sub_22BE1AEA8(v19, 1, v58) == 1)
    {
      v35 = sub_22BE1AEA8(&v19[v32], 1, v34);
      v2 = v30;
      if (v35 == 1)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }

    v37 = v54;
    sub_22BE6346C();
    if (sub_22BE1AEA8(&v19[v32], 1, v34) == 1)
    {
      sub_22BE33928(v37, &unk_27D906F38, qword_22C274D30);
      v2 = v30;
LABEL_10:
      sub_22BE33928(v19, &qword_27D9071F0, &qword_22C275070);
LABEL_18:
      v27 = v55;
      goto LABEL_19;
    }

    v38 = *(v53 + 48);
    v39 = v51;
    sub_22BE424BC();
    sub_22BE424BC();
    v40 = v52;
    if (sub_22BE1AEA8(v39, 1, v52) == 1)
    {
      v41 = sub_22BE1AEA8(v39 + v38, 1, v40);
      v2 = v30;
      if (v41 == 1)
      {
        sub_22BE33928(v39, &unk_27D906F38, qword_22C274D30);
        v33 = v60;
LABEL_6:
        sub_22BE63414(v19, type metadata accessor for Toolbox.ContainerForTypeLookup);
        v36 = MEMORY[0x2318A6910](&v23[*(v59 + 24)], v33 + *(v59 + 24));
        sub_22BE63414(v23, type metadata accessor for ToolboxCache.TypeCacheKey);
        v27 = v55;
        if (v36)
        {
          return v26;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v42 = v49;
      sub_22BE22814();
      if (sub_22BE1AEA8(v39 + v38, 1, v40) != 1)
      {
        (*v47)(v50, v39 + v38, v40);
        sub_22BE63514(&qword_27D9071F8, MEMORY[0x277D73110]);
        v46 = sub_22C272FD4();
        v43 = *v48;
        (*v48)(v50, v40);
        v43(v42, v40);
        sub_22BE33928(v39, &unk_27D906F38, qword_22C274D30);
        v2 = v30;
        v33 = v60;
        if (v46)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }

      (*v48)(v42, v40);
      v2 = v30;
    }

    sub_22BE33928(v39, &qword_27D9071E8, &unk_22C28C9C0);
LABEL_17:
    sub_22BE63414(v19, type metadata accessor for Toolbox.ContainerForTypeLookup);
    goto LABEL_18;
  }

  return v26;
}

uint64_t sub_22BE61C88(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22BE61D4C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_22BE635C4(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_22BE26B64(v11);
  return v7;
}

unint64_t sub_22BE61D4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22BE61E4C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_22C273B44();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22BE61E4C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22BE61E98(a1, a2);
  sub_22BE61FB0(&unk_283F8B3A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22BE61E98(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_22C273214())
  {
    result = sub_22C192768(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_22C273A54();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_22C273B44();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22BE61FB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_22BE62094(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_22BE62094(char *result, int64_t a2, char a3, char *a4)
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
    sub_22BE5CE4C(&qword_27D9072C0, &unk_22C2752C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_22BE62188()
{
  sub_22BE22B9C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_22BE3D3A0();
  sub_22BE18BF0();
  v11 = sub_22BE2F06C(v8, v9, v10);
  if (v12)
  {
    v13 = v11;
    v14 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v26 = *v1;
    v15 = *(*v1 + 24);
    sub_22BE5CE4C(v7, v5);
    sub_22C273C44();
    v16 = *(*(v26 + 48) + 16 * v13 + 8);

    v17 = *(v26 + 56);
    v18 = v3(0);
    sub_22BE18000(v18);
    (*(v19 + 32))(v0, v17 + *(v19 + 72) * v13, v18);
    sub_22C273C64();
    sub_22BE1A12C();
  }

  else
  {
    v3(0);
    sub_22BE38960();
  }

  sub_22BE234D8();

  return sub_22BE19DC4(v20, v21, v22, v23);
}

uint64_t sub_22BE622B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE22B9C();
  sub_22BE3D3A0();
  sub_22BE6071C();
  if (v11)
  {
    v12 = *v10;
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE3C344();
    sub_22BE5CE4C(&qword_27D907210, &qword_22C275088);
    sub_22BE33980();
    v13 = *(a10 + 48);
    v14 = type metadata accessor for ToolboxCache.ToolCacheKey(0);
    sub_22BE18000(v14);
    v16 = *(v15 + 72);
    sub_22BE18360();
    sub_22BE63414(v17, v18);
    v19 = *(a10 + 56);
    v20 = sub_22BE5CE4C(&qword_27D907208, &qword_22C275080);
    sub_22BE18000(v20);
    v22 = *(v21 + 72);
    sub_22BE29060();
    sub_22BE63514(&qword_27D907218, type metadata accessor for ToolboxCache.ToolCacheKey);
    sub_22BE253D0();
    sub_22BE1A12C();
  }

  else
  {
    sub_22BE5CE4C(&qword_27D907208, &qword_22C275080);
    sub_22BE38960();
  }

  sub_22BE234D8();

  return sub_22BE19DC4(v23, v24, v25, v26);
}

uint64_t sub_22BE623EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE22B9C();
  sub_22BE3D3A0();
  sub_22BE608D0();
  if (v11)
  {
    v12 = *v10;
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE3C344();
    sub_22BE5CE4C(&qword_27D9071D8, &qword_22C275068);
    sub_22BE33980();
    v13 = *(a10 + 48);
    v14 = type metadata accessor for ToolboxCache.TypeCacheKey(0);
    sub_22BE18000(v14);
    v16 = *(v15 + 72);
    sub_22BE1A4A0();
    sub_22BE63414(v17, v18);
    v19 = *(a10 + 56);
    v20 = sub_22BE5CE4C(&qword_27D9071D0, &qword_22C275060);
    sub_22BE18000(v20);
    v22 = *(v21 + 72);
    sub_22BE29060();
    sub_22BE63514(&qword_27D9071E0, type metadata accessor for ToolboxCache.TypeCacheKey);
    sub_22BE253D0();
    sub_22BE1A12C();
  }

  else
  {
    sub_22BE5CE4C(&qword_27D9071D0, &qword_22C275060);
    sub_22BE38960();
  }

  sub_22BE234D8();

  return sub_22BE19DC4(v23, v24, v25, v26);
}

uint64_t *sub_22BE62524(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *sub_22BE62584(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_22BE62594()
{
  result = qword_27D907198;
  if (!qword_27D907198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907198);
  }

  return result;
}

unint64_t sub_22BE625E8()
{
  result = qword_27D9071A0;
  if (!qword_27D9071A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9071A0);
  }

  return result;
}

unint64_t sub_22BE6263C()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  v13 = sub_22BE60508(v8, v6, v4, v2);
  sub_22BE22F90(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  sub_22BE5CE4C(&qword_27D907250, &qword_22C2750B8);
  if ((sub_22BE20148() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = *v1;
  sub_22BE35F50();
  v24 = sub_22BE60508(v21, v22, v23, v3);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_13:
    result = sub_22C2740B4();
    __break(1u);
    return result;
  }

  v18 = v24;
LABEL_5:
  v26 = *v1;
  if (v19)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v18);
    *(v27 + 8 * v18) = v11;
    sub_22BE1AABC();

    return sub_22BE63574(v29);
  }

  else
  {
    sub_22BE62FB4(v18, v9, v7, v5, v3, v11, v26);
    sub_22BE35F50();
    sub_22BE1AABC();

    return sub_22BE6355C(v32, v33, v34, v35);
  }
}

uint64_t sub_22BE627A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22BE22B9C();
  v58 = v15;
  v59 = v16;
  v18 = v17;
  v20 = v19;
  v21 = v14;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *v14;
  sub_22BE18BF0();
  v31 = sub_22BE2F06C(v29, v23, v30);
  sub_22BE22F90(v31, v32);
  if (v35)
  {
    __break(1u);
LABEL_14:
    result = sub_22C2740B4();
    __break(1u);
    return result;
  }

  v36 = v33;
  v37 = v34;
  sub_22BE5CE4C(v20, v18);
  if (sub_22BE20148())
  {
    v38 = *v21;
    sub_22BE18BF0();
    sub_22BE2F06C(v25, v23, v39);
    sub_22BE19608();
    if (!v41)
    {
      goto LABEL_14;
    }

    v36 = v40;
  }

  v42 = *v21;
  if (v37)
  {
    v43 = *(v42 + 56);
    v44 = v58(0);
    sub_22BE18000(v44);
    v46 = *(v45 + 40);
    v47 = v43 + *(v45 + 72) * v36;
    sub_22BE234D8();

    return v51(v48, v49, v50, v51, v52, v53, v54, v55, v58, v59, a11, a12, a13, a14);
  }

  else
  {
    sub_22BE63004(v36, v25, v23, v27, v42);
    sub_22BE234D8();
  }
}

uint64_t sub_22BE628F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ToolboxCache.ToolCacheKey(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = sub_22BE6071C();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  sub_22BE5CE4C(&qword_27D907210, &qword_22C275088);
  if ((sub_22C273C44() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v2;
  v14 = sub_22BE6071C();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_10:
    result = sub_22C2740B4();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v2;
  if (v12)
  {
    v17 = *(v16 + 56);
    v18 = *(*(sub_22BE5CE4C(&qword_27D907208, &qword_22C275080) - 8) + 72);
    return sub_22BE2343C();
  }

  else
  {
    sub_22BE6346C();
    return sub_22BE6309C(v11, v7, a1, v16, type metadata accessor for ToolboxCache.ToolCacheKey, type metadata accessor for ToolboxCache.ToolCacheKey, &qword_27D907208, &qword_22C275080);
  }
}

uint64_t sub_22BE62AD4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ToolboxCache.TypeCacheKey(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = sub_22BE608D0();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  sub_22BE5CE4C(&qword_27D9071D8, &qword_22C275068);
  if ((sub_22C273C44() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v2;
  v14 = sub_22BE608D0();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_10:
    result = sub_22C2740B4();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v2;
  if (v12)
  {
    v17 = *(v16 + 56);
    v18 = *(*(sub_22BE5CE4C(&qword_27D9071D0, &qword_22C275060) - 8) + 72);
    return sub_22BE2343C();
  }

  else
  {
    sub_22BE6346C();
    return sub_22BE6309C(v11, v7, a1, v16, type metadata accessor for ToolboxCache.TypeCacheKey, type metadata accessor for ToolboxCache.TypeCacheKey, &qword_27D9071D0, &qword_22C275060);
  }
}

void sub_22BE62CB4()
{
  sub_22BE19460();
  sub_22BE2F0E8();
  v3 = sub_22C26DF64();
  v4 = sub_22BE179D8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  sub_22BE35AE8();
  v7 = *v1;
  sub_22BE60930();
  sub_22BE22F90(v8, v9);
  if (v12)
  {
    __break(1u);
LABEL_12:
    sub_22C2740B4();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v11;
  sub_22BE5CE4C(&qword_27D907238, &unk_22C2750A0);
  if (sub_22BE18154())
  {
    v15 = *v2;
    sub_22BE60930();
    sub_22BE19608();
    if (!v17)
    {
      goto LABEL_12;
    }

    v13 = v16;
  }

  if (v14)
  {
    v18 = *(*v2 + 56);
    v19 = *(v18 + 8 * v13);
    *(v18 + 8 * v13) = v0;
    sub_22BE1AABC();
  }

  else
  {
    v21 = sub_22BE63680();
    v22(v21);
    v23 = sub_22BE354A8();
    sub_22BE63170(v23, v24, v25, v26);
    sub_22BE1AABC();
  }
}

void sub_22BE62DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE19460();
  sub_22BE2F0E8();
  v14 = sub_22C26E494();
  v15 = sub_22BE179D8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  sub_22BE35AE8();
  v18 = *v12;
  sub_22BE609E0();
  sub_22BE22F90(v19, v20);
  if (v23)
  {
    __break(1u);
LABEL_12:
    sub_22C2740B4();
    __break(1u);
    return;
  }

  v24 = v21;
  v25 = v22;
  sub_22BE5CE4C(&qword_27D907230, &qword_22C28ED40);
  if (sub_22BE18154())
  {
    v26 = *v13;
    sub_22BE609E0();
    sub_22BE19608();
    if (!v28)
    {
      goto LABEL_12;
    }

    v24 = v27;
  }

  if (v25)
  {
    v29 = *(*v13 + 56);
    v30 = sub_22C26E4D4();
    sub_22BE18000(v30);
    v32 = *(v31 + 40);
    v33 = v29 + *(v31 + 72) * v24;
    sub_22BE1AABC();

    v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
  }

  else
  {
    v42 = sub_22BE63680();
    v43(v42);
    v44 = sub_22BE354A8();
    sub_22BE63228(v44, v45, v46, v47);
    sub_22BE1AABC();
  }
}

uint64_t sub_22BE62F6C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_22BE26900(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

unint64_t sub_22BE62FB4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

uint64_t sub_22BE63004(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22BE26900(a1, a5 + 8 * (a1 >> 6));
  v10 = (*(v9 + 48) + 16 * v8);
  *v10 = v11;
  v10[1] = v12;
  v13 = *(v9 + 56);
  v15 = v14(0);
  sub_22BE1834C(v15);
  result = (*(v16 + 32))(v13 + *(v16 + 72) * a1, a4);
  v18 = *(a5 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v20;
  }

  return result;
}

uint64_t sub_22BE6309C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  sub_22BE26900(a1, a4 + 8 * (a1 >> 6));
  v12 = *(v11 + 48);
  v14 = v13(0);
  sub_22BE19448(v14);
  v16 = *(v15 + 72);
  sub_22BE634C0();
  v17 = *(a4 + 56);
  v18 = sub_22BE5CE4C(a7, a8);
  sub_22BE19448(v18);
  v20 = *(v19 + 72);
  result = sub_22BE424BC();
  v22 = *(a4 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v24;
  }

  return result;
}

uint64_t sub_22BE63170(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22C26DF64();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_22BE63228(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22C26E494();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_22C26E4D4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_22BE6331C()
{
  sub_22C273024();
  sub_22C274154();
  sub_22C272F44();
  v0 = sub_22C2741A4();

  return v0;
}

uint64_t sub_22BE63390()
{
  v0 = sub_22C273024();
  v2 = v1;
  if (v0 == sub_22C273024() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22C274014();
  }

  return v5 & 1;
}

uint64_t sub_22BE63414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18000(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BE6346C()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE1834C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

uint64_t sub_22BE634C0()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE1834C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

uint64_t sub_22BE63514(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE6355C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

unint64_t sub_22BE63574(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BE635AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_22BE635C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22BE63620(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_22BE63664()
{

  sub_22BE60BA0();
}

uint64_t dispatch thunk of AppResolving.matchApps(query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22BE637C4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_22BE637C4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t GlobalEntityMatcherShim.__allocating_init(maxEntityCount:)(uint64_t a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  GlobalEntityMatcherShim.init(maxEntityCount:)(a1, a2 & 1);
  return v7;
}

uint64_t sub_22BE63910@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_matcherType;
  v4 = sub_22C270F94();
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_22BE63980(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22BE5CE4C(&qword_27D9072C8, &unk_22C275178);
  sub_22BE19448(v4);
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();
  v7 = sub_22C270FD4();
  v3[6] = v7;
  v8 = *(v7 - 8);
  v3[7] = v8;
  v9 = *(v8 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BE63A84, 0, 0);
}

uint64_t sub_22BE63A84()
{
  v83 = v0;
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_22C272EF4();
  v6 = sub_22BE65AC8(v4, v5);
  sub_22BE65CA8();

  v74 = v6;
  v7 = [v6 answers];
  sub_22BE45D84(0, &qword_27D9072D0, 0x277D1F420);
  v8 = sub_22C273494();

  v9 = sub_22BE66128(v8);
  v10 = 0;
  v11 = v8 & 0xC000000000000001;
  v79 = MEMORY[0x277D84F90];
  while (v9 != v10)
  {
    sub_22BE66104(v10, v11 == 0, v8);
    if (v11)
    {
      v12 = MEMORY[0x2318AC200](v10, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 = v1;
    v7 = v1[4];
    sub_22BE65710();
    if (v17)
    {
      v7 = v16;
      v19 = v17;
      v20 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v79 + 16);
        sub_22BE1B8F8();
        sub_22BE66648();
        v79 = v26;
      }

      v22 = *(v79 + 16);
      v21 = *(v79 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_22BE1AAE4(v21);
        v77 = v27;
        sub_22BE66648();
        v23 = v77;
        v79 = v28;
      }

      *(v79 + 16) = v23;
      v24 = (v79 + 32 * v22);
      v24[4] = v13;
      v24[5] = v7;
      v24[6] = v19;
      v24[7] = v20;
      v10 = v14;
      v1 = v15;
    }

    else
    {

      ++v10;
    }
  }

  v7 = v1[7];

  v82 = v79;
  sub_22BE640CC(&v82);
  v14 = 0;
  v8 = v82;
  v80 = *(v82 + 16);
  v73 = v7;
  v75 = v7 + 4;
  v76 = MEMORY[0x277D84F90];
  v78 = v82;
LABEL_15:
  v29 = 32 * v14;
  while (v80 != v14)
  {
    if (v14 >= *(v8 + 16))
    {
      goto LABEL_38;
    }

    v30 = v1[5];
    v81 = v1[6];
    v31 = v1[3];
    v7 = v1[4];
    v32 = v1;
    v33 = v1[2];
    v34 = v8 + v29;
    v35 = *(v8 + v29 + 56);
    v11 = *(v8 + v29 + 40);
    v36 = *(v8 + v29 + 48);
    v37 = *(v34 + 32);

    sub_22BE64468();

    if (sub_22BE1AEA8(v30, 1, v81) != 1)
    {
      v38 = v32[8];
      v39 = v32[9];
      v40 = v32[6];
      v11 = *v75;
      (*v75)(v39, v32[5], v40);
      (v11)(v38, v39, v40);
      v1 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = *(v76 + 16);
        v50 = sub_22BE1B8F8();
        sub_22BE66558(v50, v51, v52, v53, v54, v55, v56);
        v76 = v57;
      }

      v8 = v78;
      v42 = *(v76 + 16);
      v41 = *(v76 + 24);
      v7 = (v42 + 1);
      if (v42 >= v41 >> 1)
      {
        v58 = sub_22BE1AAE4(v41);
        sub_22BE66558(v58, v42 + 1, 1, v76, sub_22BEDDC40, MEMORY[0x277D1EEB0], MEMORY[0x277D1EEB0]);
        v76 = v59;
      }

      ++v14;
      v43 = v32[8];
      v44 = v32[6];
      *(v76 + 16) = v7;
      v45 = *(v73 + 80);
      sub_22BE19E14();
      (v11)(v47 + v46 + *(v48 + 72) * v42);
      goto LABEL_15;
    }

    sub_22BE33928(v32[5], &qword_27D9072C8, &unk_22C275178);
    v29 += 32;
    ++v14;
    v1 = v32;
    v8 = v78;
  }

  v60 = v1[4];

  v7 = sub_22BE641EC(*(v60 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_maxEntityCount), v76, sub_22C26A8B0);
  v14 = v61;
  v8 = v62;
  v11 = v63;
  if ((v63 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_22C274064();
  swift_unknownObjectRetain_n();
  v65 = swift_dynamicCastClass();
  if (!v65)
  {
    swift_unknownObjectRelease();
    v65 = MEMORY[0x277D84F90];
  }

  v66 = *(v65 + 16);

  if (__OFSUB__(v11 >> 1, v8))
  {
    goto LABEL_39;
  }

  if (v66 != (v11 >> 1) - v8)
  {
LABEL_40:
    swift_unknownObjectRelease();
LABEL_26:
    sub_22BE68D94(v7, v14, v8, v11, sub_22BEDDC40, MEMORY[0x277D1EEB0]);
LABEL_32:
    v67 = v64;

    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v64 = swift_dynamicCastClass();
  if (v64)
  {
    goto LABEL_32;
  }

  swift_unknownObjectRelease_n();

  v67 = MEMORY[0x277D84F90];
LABEL_33:
  v69 = v1[8];
  v68 = v1[9];
  v70 = v1[5];

  v71 = v1[1];

  return v71(v67);
}

uint64_t sub_22BE640CC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C265508(v2);
    v2 = v5;
  }

  v3 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v3;
  result = sub_22BE68F78(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_22BE6413C(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_22C273854();
    if (v5)
    {
      v6 = a3;
    }

    else
    {
      v6 = result;
    }

    if (v6 >> 14 >= a2 >> 14)
    {
      sub_22C273874();
      sub_22BE23674();
      return sub_22BE26918();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE641EC(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_22BE69984(0, result, v4);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      a3(0);
      sub_22BE23674();
      return sub_22BE26918();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE64280(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_22C273CF4();

    return v10;
  }

  v4 = sub_22BE66128(a2);
  v5 = sub_22BE69984(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_22BE7652C(0, a2);
  sub_22BE7652C(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_22C273AE4();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_22BE643C8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C2731A4();
    sub_22C2732E4();
    sub_22BE23674();
    return sub_22BE26918();
  }

  return result;
}

void sub_22BE64468()
{
  sub_22BE3D0F0();
  v189 = v1;
  v190 = v2;
  v162 = v0;
  v171 = v4;
  v172 = v3;
  v6 = v5;
  v173 = v7;
  v174 = v8;
  v10 = v9;
  v166 = sub_22C270F94();
  v11 = sub_22BE179D8(v166);
  v165 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  sub_22BE190A8(v16 - v15);
  v17 = sub_22BE5CE4C(&qword_27D9073C0, &qword_22C275330);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE190A8(&v150 - v21);
  v22 = sub_22C270E54();
  v23 = sub_22BE19448(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  sub_22BE190A8(v27 - v26);
  v28 = sub_22BE5CE4C(&qword_27D907170, &unk_22C275980);
  sub_22BE19448(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE190A8(&v150 - v32);
  v33 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE190A8(&v150 - v37);
  v178 = sub_22C272984();
  v38 = sub_22BE179D8(v178);
  v176 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE179EC();
  v179 = (v43 - v42);
  v183 = sub_22C272874();
  v44 = sub_22BE179D8(v183);
  v180 = v45;
  v47 = *(v46 + 64);
  v48 = MEMORY[0x28223BE20](v44);
  v182 = &v150 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v177 = (&v150 - v50);
  v51 = sub_22BE5CE4C(&qword_27D9073C8, &qword_22C275338);
  sub_22BE19448(v51);
  v53 = *(v52 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  v56 = &v150 - v55;
  v57 = sub_22C270404();
  v58 = sub_22BE179D8(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE179EC();
  v65 = (v64 - v63);
  v66 = &off_278725000;
  v67 = [v6 facts];
  sub_22BE45D84(0, &qword_27D9072D8, 0x277D1F430);
  v68 = sub_22C273494();

  if (!sub_22BE66128(v68))
  {

    sub_22C270FD4();
    sub_22BE1A140();
    sub_22BE25A18();

    sub_22BE19DC4(v89, v90, v91, v92);
    return;
  }

  v181 = v10;
  if ((v68 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

  if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    sub_22C2740B4();
    __break(1u);
    return;
  }

  for (i = *(v68 + 32); ; i = MEMORY[0x2318AC200](0, v68))
  {
    v70 = i;

    v71 = [v70 subjectId];

    v154 = sub_22C273024();
    v73 = v72;

    sub_22C2703E4();
    sub_22C2703D4();
    v68 = v74;
    (*(v60 + 8))(v65, v57);
    sub_22BE6552C();
    v76 = v75;

    if (!v76[2])
    {

      sub_22C270FD4();
      sub_22BE1A140();
      sub_22BE19DC4(v94, v95, v96, v97);
      goto LABEL_32;
    }

    v57 = v76[5];
    v151 = v76[4];

    v186[0] = v173;
    v186[1] = v174;
    v184 = v172;
    v185 = v171;
    sub_22C26E244();
    sub_22BE1A140();
    sub_22BE19DC4(v77, v78, v79, v80);
    sub_22BE699D0();
    v81 = sub_22C273934();
    v152 = v82;
    v84 = v83;
    sub_22BE33928(v56, &qword_27D9073C8, &qword_22C275338);
    if (v84)
    {
      sub_22C270FD4();
      sub_22BE19478();
      sub_22BE1A140();
      sub_22BE19DC4(v85, v86, v87, v88);

      goto LABEL_31;
    }

    v150 = v81;
    v65 = MEMORY[0x277D84F98];
    v186[0] = MEMORY[0x277D84F98];
    v98 = [v6 *(v66 + 3616)];
    v99 = sub_22C273494();

    sub_22BE6545C(v99, v186);

    v6 = (v186[0] + 64);
    v100 = 1 << *(v186[0] + 32);
    v101 = -1;
    if (v100 < 64)
    {
      v101 = ~(-1 << v100);
    }

    v66 = v101 & *(v186[0] + 64);
    v56 = ((v100 + 63) >> 6);
    v161 = *MEMORY[0x277D72CE0];
    v160 = *MEMORY[0x277D72D50];
    v167 = v176 + 13;
    v159 = *MEMORY[0x277D729E0];
    v168 = v180 + 104;
    v170 = (v180 + 32);
    v153 = v180 + 40;
    v169 = v186[0];

    v60 = 0;
    v158 = v73;
    v157 = v57;
    v156 = v6;
    v155 = v56;
    if (!v66)
    {
      break;
    }

    while (1)
    {
      v176 = v65;
LABEL_20:
      v103 = __clz(__rbit64(v66)) | (v60 << 6);
      v104 = (*(v169 + 48) + 16 * v103);
      v105 = *v104;
      v106 = v104[1];
      v107 = *(*(v169 + 56) + 8 * v103);
      sub_22C2726B4();
      v108 = swift_allocBox();
      v68 = sub_22C272934();
      v109 = swift_allocBox();
      (*(*(v68 - 8) + 104))(v110, v161, v68);
      v111 = v179;
      *v179 = v109;
      sub_22BE33554(&v187);
      v112(v111, v160);
      swift_bridgeObjectRetain_n();

      v175 = v107;
      sub_22C272684();
      v113 = v177;
      *v177 = v108;
      sub_22BE33554(v188);
      v6 = v183;
      v114(v113, v159, v183);
      v57 = *v170;
      (*v170)(v182, v113, v6);
      v115 = v176;
      swift_isUniquelyReferenced_nonNull_native();
      v184 = v115;
      v56 = v105;
      v116 = v105;
      v65 = v115;
      v117 = sub_22BE3B674(v116, v106);
      if (__OFADD__(v115[2], (v118 & 1) == 0))
      {
        break;
      }

      v68 = v117;
      v119 = v118;
      sub_22BE5CE4C(&qword_27D9071A8, &qword_22C274FC0);
      if (sub_22C273C44())
      {
        v120 = sub_22BE3B674(v56, v106);
        if ((v119 & 1) != (v121 & 1))
        {
          goto LABEL_38;
        }

        v68 = v120;
      }

      v65 = v184;
      if (v119)
      {
        (*(v180 + 40))(v184[7] + *(v180 + 72) * v68, v182, v183);
      }

      else
      {
        v184[(v68 >> 6) + 8] |= 1 << v68;
        v122 = (v65[6] + 16 * v68);
        *v122 = v56;
        v122[1] = v106;
        v57(v65[7] + *(v180 + 72) * v68, v182, v183);
        v123 = v65[2];
        v124 = __OFADD__(v123, 1);
        v125 = v123 + 1;
        if (v124)
        {
          goto LABEL_37;
        }

        v65[2] = v125;
      }

      v66 &= v66 - 1;

      v57 = v157;
      v6 = v156;
      v56 = v155;
      if (!v66)
      {
        goto LABEL_16;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  while (1)
  {
LABEL_16:
    v102 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v102 >= v56)
    {
      break;
    }

    v66 = *(v6 + v102);
    ++v60;
    if (v66)
    {
      v176 = v65;
      v60 = v102;
      goto LABEL_20;
    }
  }

  sub_22C272754();
  v126 = swift_allocBox();
  v127 = swift_allocObject();
  v128 = *(v162 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_intelligencePlatformBundleId);
  v181 = *(v162 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_intelligencePlatformBundleId + 8);
  v129 = v181;
  v182 = v128;
  v127[2] = v128;
  v127[3] = v129;
  v127[4] = v151;
  v127[5] = v57;
  v130 = v179;
  *v179 = v127;
  v131 = *MEMORY[0x277D72D28];
  sub_22BE33554(&v187);
  v132(v130);
  sub_22C272B84();
  sub_22BE1A140();
  sub_22BE19DC4(v133, v134, v135, v136);
  swift_bridgeObjectRetain_n();

  sub_22C272734();
  v137 = v163;
  *v163 = v126;
  v138 = *MEMORY[0x277D72A38];
  sub_22BE33554(v188);
  v139 = v183;
  v140(v137);
  sub_22BE19DC4(v137, 0, 1, v139);
  sub_22BE5CE4C(&qword_27D9073D0, &qword_22C2756C0);
  v141 = *(sub_22C270AF4() - 8);
  v142 = *(v141 + 72);
  v143 = (*(v141 + 80) + 32) & ~*(v141 + 80);
  *(swift_allocObject() + 16) = xmmword_22C275160;
  sub_22C270944();
  sub_22BE1A140();
  sub_22BE19DC4(v144, v145, v146, v147);

  sub_22C270E14();
  (*(v165 + 104))(v164, *MEMORY[0x277D1EE80], v166);
  sub_22C270A34();
  sub_22C270FA4();
  sub_22C270FD4();
  v148 = sub_22BE19478();
  sub_22BE19DC4(v148, 0, 1, v149);

LABEL_31:

LABEL_32:
  sub_22BE25A18();
}

uint64_t sub_22BE6515C(void **a1, uint64_t *a2)
{
  v5 = sub_22C272874();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  result = sub_22BE69924(v10, &selRef_predicateId);
  if (!v12)
  {
    return result;
  }

  v13 = result;
  v14 = v12;
  v15 = sub_22BE69924(v10, &selRef_objectID);
  if (!v16)
  {
  }

  v17 = v15;
  v18 = v16;
  v50 = v2;
  v19 = sub_22C272804();
  v20 = swift_allocBox();
  v51 = a2;
  v21 = v6;
  v22 = v9;
  v23 = v13;
  v24 = v20;
  *v25 = v17;
  v25[1] = v18;
  (*(*(v19 - 8) + 104))(v25, *MEMORY[0x277D729B8], v19);
  *v22 = v24;
  v26 = *MEMORY[0x277D72A58];
  v46 = v21;
  v27 = v21;
  v28 = v51;
  v29 = *(v27 + 104);
  v48 = v22;
  v49 = v5;
  v29(v22, v26, v5);
  v30 = *v28;
  swift_isUniquelyReferenced_nonNull_native();
  v52 = *v28;
  v31 = v52;
  *v28 = 0x8000000000000000;
  v47 = v23;
  v32 = sub_22BE3B674(v23, v14);
  if (__OFADD__(*(v31 + 16), (v33 & 1) == 0))
  {
    __break(1u);
    goto LABEL_15;
  }

  v34 = v32;
  v35 = v33;
  sub_22BE5CE4C(&qword_27D9073D8, &qword_22C275340);
  v36 = sub_22C273C44();
  v37 = v52;
  if ((v36 & 1) == 0)
  {
    v40 = v46;
    goto LABEL_9;
  }

  v38 = sub_22BE3B674(v47, v14);
  v40 = v46;
  if ((v35 & 1) != (v39 & 1))
  {
LABEL_15:
    result = sub_22C2740B4();
    __break(1u);
    return result;
  }

  v34 = v38;
LABEL_9:
  v41 = *v28;
  *v28 = v37;

  v42 = *v28;
  if (v35)
  {
  }

  else
  {
    sub_22BE62F6C(v34, v47, v14, MEMORY[0x277D84F90], *v28);
  }

  v43 = *(v42 + 56) + 8 * v34;
  sub_22BE78AC0();
  v44 = *(*v43 + 16);
  sub_22BE78BAC(v44);
  v45 = *v43;
  *(v45 + 16) = v44 + 1;
  return (*(v40 + 32))(v45 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v44, v48, v49);
}

void sub_22BE6545C(unint64_t a1, uint64_t *a2)
{
  v5 = sub_22BE66128(a1);
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2318AC200](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v9 = v7;
    sub_22BE6515C(&v9, a2);

    if (v2)
    {
      return;
    }
  }
}

void sub_22BE6552C()
{
  sub_22BE3D0F0();
  v24 = v0;
  v2 = v1;
  v4 = [v3 facts];
  sub_22BE45D84(0, &qword_27D9072D8, 0x277D1F430);
  v5 = sub_22C273494();

  v6 = sub_22BE66128(v5);
  v7 = 0;
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v6 == v7)
    {

      sub_22BE25A18();
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318AC200](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v10 = sub_22BE69924(v8, &selRef_predicateId);
    if (!v11)
    {
      goto LABEL_13;
    }

    if (v10 == v2 && v11 == v24)
    {
    }

    else
    {
      v13 = sub_22C274014();

      if ((v13 & 1) == 0)
      {
LABEL_13:

        goto LABEL_16;
      }
    }

    v14 = sub_22BE69924(v9, &selRef_objectID);
    v16 = v15;

    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v23 + 16);
        sub_22BE1B8F8();
        sub_22BE66214();
        v23 = v21;
      }

      v18 = *(v23 + 16);
      v17 = *(v23 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22BE1AAE4(v17);
        sub_22BE66214();
        v23 = v22;
      }

      *(v23 + 16) = v18 + 1;
      v19 = v23 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      ++v7;
    }

    else
    {
LABEL_16:
      ++v7;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_22BE65710()
{
  sub_22BE3D0F0();
  v1 = v0;
  v2 = sub_22C270404();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v10 = v9 - v8;
  sub_22C2703F4();
  sub_22C2703D4();
  (*(v5 + 8))(v10, v2);
  sub_22BE6552C();
  v12 = v11;

  v13 = 0;
  v14 = *(v12 + 16);
  v15 = v12 + 40;
  v61 = MEMORY[0x277D84F90];
LABEL_2:
  v16 = (v15 + 16 * v13);
  while (v14 != v13)
  {
    if (v13 >= *(v12 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

    v17 = *(v16 - 1);
    v18 = *v16;
    v19 = sub_22C272EF4();
    v21 = v20;

    sub_22BE65CA8();
    v23 = v22;

    sub_22BF3954C(v24);
    sub_22BF3954C(v23);
    v25 = sub_22BF6633C();

    v26 = *(v25 + 16);

    v27 = v26 / *(v1 + 16);
    v28 = (*&v27 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v27 & 0x7FF0000000000000) == 0;
    if (!v28 && v27 > 0.0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = v61[2];
        v33 = sub_22BE1B8F8();
        v61 = sub_22BE66734(v33, v34, v35, v36);
      }

      v30 = v61[2];
      v29 = v61[3];
      if (v30 >= v29 >> 1)
      {
        v37 = sub_22BE1AAE4(v29);
        v61 = sub_22BE66734(v37, v30 + 1, 1, v61);
      }

      ++v13;
      v61[2] = v30 + 1;
      v31 = &v61[3 * v30];
      *(v31 + 4) = v19;
      *(v31 + 5) = v21;
      v31[6] = v27;
      v15 = v12 + 40;
      goto LABEL_2;
    }

    v16 += 2;
    ++v13;
  }

  v38 = sub_22C1EE5A0(v61);
  v39 = v38;
  v40 = v38 + 64;
  v41 = 1 << *(v38 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v38 + 64);
  if (v43)
  {
    v44 = 0;
    v45 = __clz(__rbit64(v43));
    v46 = (v43 - 1) & v43;
    v47 = (v41 + 63) >> 6;
LABEL_24:
    v50 = (*(v38 + 48) + 16 * v45);
    v51 = *v50;
    v52 = v50[1];
    v53 = *(*(v38 + 56) + 8 * v45);

    while (v46)
    {
LABEL_30:
      v55 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v56 = v55 | (v44 << 6);
      v57 = *(*(v39 + 56) + 8 * v56);
      if (v53 < v57)
      {
        v58 = (*(v39 + 48) + 16 * v56);
        v59 = *v58;
        v60 = v58[1];

        v53 = v57;
      }
    }

    while (1)
    {
      v54 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_36;
      }

      if (v54 >= v47)
      {

        goto LABEL_33;
      }

      v46 = *(v40 + 8 * v54);
      ++v44;
      if (v46)
      {
        v44 = v54;
        goto LABEL_30;
      }
    }
  }

  v48 = 0;
  v47 = (v41 + 63) >> 6;
  while (1)
  {
    v44 = v43 + 1;
    if (v43 + 1 >= v47)
    {
      break;
    }

    v49 = *(v38 + 8 * v43 + 72);
    v48 += 64;
    ++v43;
    if (v49)
    {
      v46 = (v49 - 1) & v49;
      v45 = __clz(__rbit64(v49)) + v48;
      goto LABEL_24;
    }
  }

LABEL_33:
  sub_22BE25A18();
}

id sub_22BE65AC8(uint64_t a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277D1F4C0]) init];
  sub_22C273AA4();

  v17[1] = 0x800000022C2D2B30;
  MEMORY[0x2318AB8D0](a1, a2);
  MEMORY[0x2318AB8D0](10535, 0xE200000000000000);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);
  v6 = sub_22C273804();
  v7 = objc_allocWithZone(MEMORY[0x277D1F440]);
  v8 = sub_22BE29454();
  v11 = sub_22BE6605C(v8, v9, 0xD000000000000011, v10, v5, v6);
  v17[0] = 0;
  v12 = [v4 executeKGQ:v11 error:v17];

  if (v12)
  {
    v13 = v17[0];
  }

  else
  {
    v14 = v17[0];
    sub_22C26DE84();

    swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_22BE65CA8()
{
  sub_22BE3D0F0();
  v1 = v0;
  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  sub_22BE698CC(v3, v1, v4);
  v19 = v4;
  v5 = sub_22C273774();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 40);
    v8 = MEMORY[0x277D84F90];
    while (*v7 >> 14 >= *(v7 - 1) >> 14)
    {
      v9 = sub_22C2732E4();
      v10 = MEMORY[0x2318AB7C0](v9);
      v12 = v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v8 + 16);
        sub_22BE1B8F8();
        sub_22BE66214();
        v8 = v17;
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22BE1AAE4(v13);
        sub_22BE66214();
        v8 = v18;
      }

      v7 += 2;
      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    sub_22BE25A18();
  }
}

uint64_t GlobalEntityMatcherShim.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_matcherType;
  v2 = sub_22C270F94();
  sub_22BE18000(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_intelligencePlatformBundleId + 8);

  return v0;
}

uint64_t sub_22BE65EB4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22BE65F5C;

  return sub_22BE63980(a1, a2);
}

uint64_t sub_22BE65F5C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

id sub_22BE6605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = sub_22C272FF4();

  v10 = sub_22C272FF4();

  v11 = [v6 initWithKGQ:v9 query:v10 limit:a5 offset:a6];

  return v11;
}

unint64_t sub_22BE66104(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BE66128(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_22C273CE4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_22BE6614C()
{
  sub_22BE23668();
  if (v5)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22BE1C218(v6);
  if (v2)
  {
    sub_22BE5CE4C(&qword_27D907300, &qword_22C2B5FD0);
    v9 = sub_22BE2B740();
    j__malloc_size(v9);
    sub_22BE1A4B8();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_22BE372CC();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_22BE66214()
{
  sub_22BE23668();
  if (v5)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22BE187C0(v6);
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
    v9 = sub_22BE2B740();
    j__malloc_size(v9);
    sub_22BE1A4B8();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_22BE19E08();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE662E4()
{
  sub_22BE23668();
  if (v7)
  {
    sub_22BE1BD80();
    if (v9 != v10)
    {
      sub_22BE22FB8();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_22BE187C0(v8);
  if (v3)
  {
    sub_22BE5CE4C(&unk_27D9077C0, &qword_22C2752D8);
    v11 = sub_22BE2B740();
    j__malloc_size(v11);
    sub_22BE1A4B8();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  sub_22BE253F4();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = sub_22BE29454();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_22BE5CE4C(&qword_27D907370, &qword_22C2752E0);
    sub_22BE29454();
    swift_arrayInitWithCopy();
  }
}

void sub_22BE663D4()
{
  sub_22BE23668();
  if (v7)
  {
    sub_22BE1BD80();
    if (v9 != v10)
    {
      sub_22BE22FB8();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_22BE187C0(v8);
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D907378, &qword_22C2752E8);
    v4 = 24;
    v11 = swift_allocObject();
    sub_22BE2896C(v11);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v12 / 24);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_22BE253F4();
  if (v1)
  {
    if (v3 != v0 || v5 + 24 * v2 <= v4)
    {
      v14 = sub_22BE29454();
      memmove(v14, v15, v16);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BE5CE4C(&qword_27D907380, &qword_22C2752F0);
    sub_22BE29454();
    swift_arrayInitWithCopy();
  }
}

void sub_22BE66558(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    sub_22BE1BD80();
    if (v12 != v13)
    {
      sub_22BE22FB8();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(*(a6(0) - 8) + 80);
  sub_22BE19E14();
  if (a1)
  {
    sub_22BE685CC(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE66648()
{
  sub_22BE23668();
  if (v7)
  {
    sub_22BE1BD80();
    if (v9 != v10)
    {
      sub_22BE22FB8();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_22BE187C0(v8);
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D9073E0, &qword_22C275350);
    v11 = sub_22BE2B740();
    sub_22BE2896C(v11);
    sub_22BE190B4(v12);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_22BE253F4();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v14 = sub_22BE29454();
      memmove(v14, v15, v16);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BE5CE4C(&qword_27D907840, &qword_22C275348);
    sub_22BE29454();
    swift_arrayInitWithCopy();
  }
}

void *sub_22BE66734(void *result, int64_t a2, char a3, void *a4)
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
    sub_22BE5CE4C(&qword_27D9073E8, &qword_22C275358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22BE5CE4C(&unk_27D9073F0, &qword_22C275360);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_22BE66894()
{
  sub_22BE23668();
  if (v5)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22BE1C218(v6);
  if (v2)
  {
    sub_22BE5CE4C(&qword_27D9073B8, &unk_22C275A20);
    v9 = sub_22BE2B740();
    sub_22BE23B90(v9);
    sub_22BE3826C();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_22BE372CC();
  if (v1)
  {
    if (v9 != v0 || &v12[2 * v3] <= v11)
    {
      memmove(v11, v12, 2 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 2 * v3);
  }
}

void sub_22BE66A18()
{
  sub_22BE23668();
  if (v5)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22BE187C0(v6);
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D9072F8, &unk_22C275220);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_22BE19E08();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_22BE66B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = a1;
  if (a3)
  {
    sub_22BE1BD80();
    if (v9 != v10)
    {
      sub_22BE22FB8();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 16);
  if (v8 <= v11)
  {
    v12 = *(a4 + 16);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_22BE2F100(a1, a2, a3, a4, a5, a6);
    v13 = sub_22BE2B740();
    sub_22BE23B90(v13);
    sub_22BE3826C();
    *(v13 + 2) = v11;
    *(v13 + 3) = v14;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = (a4 + 32);
  if (v7)
  {
    if (v13 != a4 || &v16[8 * v11] <= v15)
    {
      memmove(v15, v16, 8 * v11);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE66D18()
{
  sub_22BE23668();
  if (v5)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22BE187C0(v6);
  if (v3)
  {
    sub_22BE2F100(v9, v10, v11, v12, v13, v14);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v15[2] = v2;
    v15[3] = 2 * v16 - 64;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v17 = sub_22BE19E08();
  if (v1)
  {
    if (v15 != v0 || &v18[v2] <= v17)
    {
      memmove(v17, v18, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v17, v18, v2);
  }
}

void sub_22BE66EFC()
{
  sub_22BE25874();
  if (v6)
  {
    sub_22BE1BD80();
    if (v11 != v12)
    {
      sub_22BE22FB8();
      if (v11)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    sub_22BE2F100(v4, v5, v6, v7, v8, v9);
    v15 = swift_allocObject();
    sub_22BE23B90(v15);
    v15[2] = v13;
    v15[3] = 2 * (v16 / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[5 * v13 + 4] <= v15 + 4)
    {
      memmove(v15 + 4, v0 + 4, 40 * v13);
    }

    v0[2] = 0;
  }

  else
  {
    sub_22BE5CE4C(v2, v1);
    sub_22BE19478();
    swift_arrayInitWithCopy();
  }
}

void sub_22BE6702C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t *a6, uint64_t *a7)
{
  if (a3)
  {
    sub_22BE1BD80();
    if (v12 != v13)
    {
      sub_22BE22FB8();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(*(sub_22BE5CE4C(a6, a7) - 8) + 80);
  sub_22BE19E14();
  if (a1)
  {
    sub_22BE68694(a4 + v17, v14, v15 + v17, a6, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE67160()
{
  sub_22BE23668();
  if (v5)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22BE187C0(v6);
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D907308, &qword_22C275240);
    v9 = sub_22BE2B740();
    j__malloc_size(v9);
    sub_22BE1A4B8();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_22BE19E08();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE67230()
{
  sub_22BE23668();
  if (v7)
  {
    sub_22BE1BD80();
    if (v9 != v10)
    {
      sub_22BE22FB8();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_22BE187C0(v8);
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D907710, &qword_22C275248);
    v11 = sub_22BE2B740();
    j__malloc_size(v11);
    sub_22BE1A4B8();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  sub_22BE253F4();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = sub_22BE29454();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_22BE5CE4C(&qword_27D907310, &unk_22C275250);
    sub_22BE29454();
    swift_arrayInitWithCopy();
  }
}

void sub_22BE67320()
{
  sub_22BE23668();
  if (v5)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22BE187C0(v6);
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D907340, &qword_22C275298);
    v9 = swift_allocObject();
    sub_22BE2896C(v9);
    sub_22BE190B4(v10);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v11 = sub_22BE19E08();
  if (v1)
  {
    if (v3 != v0 || &v12[64 * v2] <= v11)
    {
      memmove(v11, v12, v2 << 6);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE67418()
{
  sub_22BE23668();
  if (v5)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22BE1C218(v6);
  if (v2)
  {
    sub_22BE5CE4C(&unk_27D907730, &qword_22C275270);
    v9 = sub_22BE2B740();
    sub_22BE23B90(v9);
    sub_22BE3826C();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_22BE372CC();
  if (v1)
  {
    if (v9 != v0 || &v12[2 * v3] <= v11)
    {
      memmove(v11, v12, 2 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 2 * v3);
  }
}

void sub_22BE674E4()
{
  sub_22BE23668();
  if (v5)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22BE1C218(v6);
  if (v2)
  {
    sub_22BE5CE4C(&qword_27D907330, &qword_22C2757B0);
    v9 = sub_22BE2B740();
    sub_22BE23B90(v9);
    sub_22BE3826C();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_22BE372CC();
  if (v1)
  {
    if (v9 != v0 || &v12[4 * v3] <= v11)
    {
      memmove(v11, v12, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v3);
  }
}

void sub_22BE675B0()
{
  sub_22BE23668();
  if (v5)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22BE187C0(v6);
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D907348, &qword_22C2752A0);
    v9 = swift_allocObject();
    sub_22BE2896C(v9);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v10 / 56);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v11 = sub_22BE19E08();
  if (v1)
  {
    if (v3 != v0 || &v12[56 * v2] <= v11)
    {
      memmove(v11, v12, 56 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE676C0()
{
  sub_22BE25874();
  if (v6)
  {
    sub_22BE1BD80();
    if (v11 != v12)
    {
      sub_22BE22FB8();
      if (v11)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    sub_22BE2F100(v4, v5, v6, v7, v8, v9);
    v15 = sub_22BE2B740();
    sub_22BE23B90(v15);
    sub_22BE3826C();
    v15[2] = v13;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[v13 + 4] <= v15 + 4)
    {
      memmove(v15 + 4, v0 + 4, 8 * v13);
    }

    v0[2] = 0;
  }

  else
  {
    sub_22BE5CE4C(v2, v1);
    sub_22BE19478();
    swift_arrayInitWithCopy();
  }
}

void sub_22BE677F4()
{
  sub_22BE23668();
  if (v5)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22BE187C0(v6);
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D907360, &qword_22C2752B8);
    v9 = sub_22BE2B740();
    sub_22BE2896C(v9);
    sub_22BE190B4(v10);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v11 = sub_22BE19E08();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE67BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = a1;
  if (a3)
  {
    sub_22BE1BD80();
    if (v9 != v10)
    {
      sub_22BE22FB8();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 16);
  if (v8 <= v11)
  {
    v12 = *(a4 + 16);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_22BE2F100(a1, a2, a3, a4, a5, a6);
    v13 = sub_22BE2B740();
    sub_22BE23B90(v13);
    sub_22BE3826C();
    *(v13 + 2) = v11;
    *(v13 + 3) = v14;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = (a4 + 32);
  if (v7)
  {
    if (v13 != a4 || &v16[32 * v11] <= v15)
    {
      memmove(v15, v16, 32 * v11);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_22BE67CB0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

char *sub_22BE67CD0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

char *sub_22BE68018(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_22BE68148(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

char *sub_22BE68170(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

char *sub_22BE68280(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

char *sub_22BE682A0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

char *sub_22BE682C0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

uint64_t sub_22BE685CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_22BE354BC();
  if (v8 && (v9 = (a4)(0), result = sub_22BE18000(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_22BE22FA4();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_22BE22FA4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_22BE68694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_22BE354BC();
  if (v10 && (v11 = sub_22BE5CE4C(a4, a5), result = sub_22BE18000(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      sub_22BE22FA4();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_22BE5CE4C(a4, a5);
    sub_22BE22FA4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

size_t sub_22BE6875C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_22BEDDBF4(*(a1 + 16), 0);
  v3 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  sub_22BE19448(v3);
  v5 = *(v4 + 80);
  sub_22BE19E14();
  sub_22BEDE304();
  v7 = v6;

  sub_22BE29454();
  sub_22BE4926C();
  if (v7 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_22BE68858()
{
  result = sub_22C270F94();
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

uint64_t dispatch thunk of GlobalEntityMatcherShim.matchEntitySpans(query:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22BE637C4;

  return v10(a1, a2);
}

void sub_22BE68A80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    v6 = sub_22BE25170();
    sub_22BEDDD50(v6, v7);
    if (v5 != v4)
    {
      v8 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
      sub_22BE3D3B0(v8);
      v10 = v9;
      v12 = v11;
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v12 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_22BE68B50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 >= 1)
    {
      sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
      v8 = sub_22BE2B740();
      sub_22BE2896C(v8);
      *(v4 + 16) = v6;
      *(v4 + 24) = (2 * (v9 / 8)) | 1;
    }

    if (v5 != a3)
    {
      sub_22BE45D84(0, &qword_27D9073A0, 0x277CD3E98);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

size_t sub_22BE68C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_22BEDDDEC(*(a3 + 16), 0);
  v5 = type metadata accessor for ProgramStatement(0);
  sub_22BE19448(v5);
  v7 = *(v6 + 80);
  sub_22BE19E14();
  sub_22BEDE980();
  v9 = v8;

  if (v9 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

void sub_22BE68D94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v7 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    v9 = sub_22BE25170();
    v10(v9);
    if (v7 != v6)
    {
      v11 = a6(0);
      sub_22BE3D3B0(v11);
      v13 = v12;
      v15 = v14;
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = *(v15 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_22BE68EA4(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void *, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = a3(v16, v8 + 32, v4, a1);
  v10 = v16[0];
  v11 = v16[1];
  v12 = v16[2];
  v13 = v16[3];
  v14 = v16[4];

  a4(v10, v11, v12, v13, v14);
  if (v9 != v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t sub_22BE68F78(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C273FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BE5CE4C(&qword_27D907840, &qword_22C275348);
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22BE690FC(v7, v8, a1, v4);
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
    return sub_22BE6907C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BE6907C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3 + 24);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 + 24);
        v13 = *(v9 - 8);
        *(v9 + 8) = *(v9 - 24);
        *(v9 + 24) = v13;
        *(v9 - 24) = v10;
        *(v9 - 16) = v11;
        *(v9 - 8) = v12;
        *v9 = v7;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22BE690FC(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v87 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9 + 24);
        v11 = *a3 + 32 * v7;
        v12 = 32 * v7;
        v13 = *(v11 + 24);
        v14 = (v11 + 88);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 4;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 32 * v6 - 16;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = *(v24 + 2);
                v28 = *(v24 + 3);
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[1] = v29;
                *(v25 - 1) = v26;
                *v25 = v27;
                *(v25 + 1) = v28;
              }

              ++v22;
              v20 -= 32;
              v12 += 32;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v9 - 8;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 32 * v9 + 24);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*v35 >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 8);
                v37 = *(v35 + 16);
                v38 = *(v35 + 24);
                v39 = *(v35 - 8);
                *(v35 + 8) = *(v35 - 24);
                *(v35 + 24) = v39;
                *(v35 - 24) = v36;
                *(v35 - 16) = v37;
                *(v35 - 8) = v38;
                *v35 = v33;
                v35 -= 32;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 32;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v89 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = v8[2];
        sub_22BE6614C();
        v8 = v85;
      }

      v41 = v8[2];
      v42 = v41 + 1;
      if (v41 >= v8[3] >> 1)
      {
        sub_22BE6614C();
        v8 = v86;
      }

      v8[2] = v42;
      v43 = v8 + 4;
      v44 = &v8[2 * v41 + 4];
      *v44 = v7;
      v44[1] = v9;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          v46 = &v43[2 * v42 - 2];
          v47 = &v8[2 * v42];
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v48 = v8[4];
            v49 = v8[5];
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_56:
            if (v51)
            {
              goto LABEL_96;
            }

            v63 = *v47;
            v62 = v47[1];
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_99;
            }

            v67 = v46[1];
            v68 = v67 - *v46;
            if (__OFSUB__(v67, *v46))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v65, v68))
            {
              goto LABEL_104;
            }

            if (v65 + v68 >= v50)
            {
              if (v50 < v68)
              {
                v45 = v42 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v42 < 2)
          {
            goto LABEL_98;
          }

          v70 = *v47;
          v69 = v47[1];
          v58 = __OFSUB__(v69, v70);
          v65 = v69 - v70;
          v66 = v58;
LABEL_71:
          if (v66)
          {
            goto LABEL_101;
          }

          v72 = *v46;
          v71 = v46[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_103;
          }

          if (v73 < v65)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v45 - 1 >= v42)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v77 = &v43[2 * v45 - 2];
          v78 = *v77;
          v79 = &v43[2 * v45];
          v80 = v79[1];
          sub_22BE69728((*a3 + 32 * *v77), (*a3 + 32 * *v79), (*a3 + 32 * v80), v90);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v80 < v78)
          {
            goto LABEL_91;
          }

          v81 = v8;
          v82 = v8[2];
          if (v45 > v82)
          {
            goto LABEL_92;
          }

          *v77 = v78;
          v77[1] = v80;
          if (v45 >= v82)
          {
            goto LABEL_93;
          }

          v42 = v82 - 1;
          memmove(&v43[2 * v45], v79 + 2, 16 * (v82 - 1 - v45));
          v81[2] = v82 - 1;
          v83 = v82 > 2;
          v8 = v81;
          v5 = 0;
          if (!v83)
          {
            goto LABEL_85;
          }
        }

        v52 = &v43[2 * v42];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_94;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_95;
        }

        v59 = v47[1];
        v60 = v59 - *v47;
        if (__OFSUB__(v59, *v47))
        {
          goto LABEL_97;
        }

        v58 = __OFADD__(v50, v60);
        v61 = v50 + v60;
        if (v58)
        {
          goto LABEL_100;
        }

        if (v61 >= v55)
        {
          v75 = *v46;
          v74 = v46[1];
          v58 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v58)
          {
            goto LABEL_105;
          }

          if (v50 < v76)
          {
            v45 = v42 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v89;
      a4 = v87;
      if (v89 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_22BE695FC(&v92, *a1, a3);
LABEL_89:
}

uint64_t sub_22BE695FC(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C115CA4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_22BE69728((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_22BE69728(double *__src, double *__dst, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[4 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (v4[3] >= v6[3])
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 4;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 4;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 4;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *(v13 + 1);
    *v7 = *v13;
    *(v7 + 1) = v15;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[4 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[4 * v9];
LABEL_25:
  for (v5 -= 4; v11 > v4 && v6 > v7; v5 -= 4)
  {
    if (*(v6 - 1) < *(v11 - 1))
    {
      v19 = v6 - 4;
      v14 = v5 + 4 == v6;
      v6 -= 4;
      if (!v14)
      {
        v20 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
        v6 = v19;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 4)
    {
      v18 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v18;
    }

    v11 -= 4;
  }

LABEL_38:
  v21 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[4 * v21])
  {
    memmove(v6, v4, 32 * v21);
  }

  return 1;
}

void sub_22BE698CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22C272FF4();
  [a3 setString_];
}

uint64_t sub_22BE69924(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22C273024();

  return v4;
}

uint64_t sub_22BE69984(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_22BE699D0()
{
  result = qword_28106DEB0;
  if (!qword_28106DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106DEB0);
  }

  return result;
}

uint64_t sub_22BE69A3C(uint64_t *a1)
{
  v2 = *(sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C116048(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22BE6E9B4(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22BE69B14(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v3 = [v1 matchSpans:a1 error:v10];
  v4 = v10[0];
  if (v3)
  {
    v5 = v3;
    sub_22BE45D84(0, &unk_28106DB18, 0x277D55D30);
    v2 = sub_22C273494();
    v6 = v4;
  }

  else
  {
    v7 = v10[0];
    sub_22C26DE84();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_22BE69C40(void *a1, uint64_t a2, int a3)
{
  v75 = a3;
  v74 = a2;
  v81 = a1;
  v86[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22C270F94();
  v5 = sub_22BE179D8(v4);
  v76 = v6;
  v77 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v78 = v10 - v9;
  sub_22BE183BC();
  v11 = sub_22C2720A4();
  v12 = sub_22BE179D8(v11);
  v79 = v13;
  v80 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v83 = (v17 - v16);
  v18 = sub_22BE5CE4C(&qword_27D9073C8, &qword_22C275338);
  v19 = sub_22BE19448(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v74 - v22;
  v24 = sub_22C26E244();
  v25 = sub_22BE179D8(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE183AC();
  v32 = v30 - v31;
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v74 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v74 - v37;
  v39 = [objc_opt_self() indexMatcher];
  v84 = 0;
  v82 = v39;
  v40 = [v39 indexLocale_];
  v41 = v84;
  if (v40)
  {
    v42 = v40;
    sub_22C26E224();
    v43 = v41;

    v44 = *(v27 + 32);
    v44(v23, v36, v24);
    sub_22BE19DC4(v23, 0, 1, v24);
    v44(v38, v23, v24);
    v45 = v3;
  }

  else
  {
    v46 = v84;
    v47 = sub_22C26DE84();

    swift_willThrow();
    v45 = 0;

    sub_22BE19DC4(v23, 1, 1, v24);
    sub_22C26E234();
    if (sub_22BE1AEA8(v23, 1, v24) != 1)
    {
      sub_22BE33928(v23, &qword_27D9073C8, &qword_22C275338);
    }
  }

  v48 = v27;
  (*(v27 + 16))(v32, v38, v24);
  v49 = objc_allocWithZone(MEMORY[0x277D55D40]);
  v50 = sub_22BE45C28(v32);
  if (v45)
  {

    v51 = v83;
  }

  else
  {
    v64 = v50;
    v51 = v83;
    if (v50)
    {
      v83 = *(v27 + 32);
      v83(v36, v38, v24);
      v65 = v76;
      v66 = v77;
      (*(v76 + 104))(v78, *MEMORY[0x277D1EE78], v77);
      v67 = type metadata accessor for SiriEntityMatcherShim();
      v68 = *(v67 + 48);
      v69 = *(v67 + 52);
      v51 = swift_allocObject();
      v70 = (v51 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_spanMatcher);
      v70[3] = sub_22BE45D84(0, &unk_28106DB50, 0x277D55D38);
      v70[4] = &protocol witness table for SEMSpanMatcher;
      *v70 = v82;
      v71 = v51 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_maxEntityCount;
      *v71 = v74;
      *(v71 + 8) = v75 & 1;
      v83((v51 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_locale), v36, v24);
      (*(v65 + 32))(v51 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_matcherType, v78, v66);
      *(v51 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_tokenizer) = v64;
      *(v51 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_selectedEntityTypes) = v81;
      goto LABEL_13;
    }
  }

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_22C273AA4();
  MEMORY[0x2318AB8D0](0xD000000000000052, 0x800000022C2D2BF0);
  sub_22BE74518(&qword_27D907830, MEMORY[0x277CC9788]);
  v52 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v52);

  v54 = v84;
  v53 = v85;
  sub_22C271AE4();

  v55 = sub_22C272084();
  v56 = sub_22C2737A4();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v81 = v54;
    v58 = v57;
    v59 = swift_slowAlloc();
    v78 = v48;
    v60 = v59;
    v85 = v53;
    v86[0] = v59;
    *v58 = 136315138;
    v84 = v81;
    sub_22BE74560();
    v61 = sub_22C2740E4();
    v51 = sub_22BE61C88(v61, v62, v86);

    *(v58 + 4) = v51;
    _os_log_impl(&dword_22BE15000, v55, v56, "%s", v58, 0xCu);
    sub_22BE26B64(v60);
    v48 = v78;
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    v54 = v81;
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();

    (*(v79 + 8))(v83, v80);
  }

  else
  {

    (*(v79 + 8))(v51, v80);
  }

  sub_22BE74560();
  swift_allocError();
  *v63 = v54;
  v63[1] = v53;
  swift_willThrow();

  (*(v48 + 8))(v38, v24);
LABEL_13:
  v72 = *MEMORY[0x277D85DE8];
  return v51;
}

void SiriEntityMatcherShim.__allocating_init(tokenizer:spanMatcher:)()
{
  sub_22BE3C358();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C270F94();
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v13 = v12 - v11;
  v14 = sub_22C26E244();
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  v20 = v19 - v18;
  sub_22BE26B00(v2, v30);
  v21 = [v4 locale];
  sub_22C26E224();

  sub_22BE26B64(v2);
  (*(v8 + 104))(v13, *MEMORY[0x277D1EE78], v5);
  v22 = v31;
  v23 = v32;
  v24 = sub_22BE73F10(v30, v31);
  v25 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE179EC();
  v28 = v27 - v26;
  (*(v29 + 16))(v27 - v26);
  sub_22BE73D88(0, 1, v28, v20, v13, v4, 0, v0, v22, v23);
  sub_22BE26B64(v30);
  sub_22BE267B8();
}

uint64_t sub_22BE6A588@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = sub_22BE18000(v6);
  v9 = *(v8 + 16);

  return v9(a3, v3 + v5, v7);
}

uint64_t sub_22BE6A5F8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_22C272984();
  v3[7] = v4;
  sub_22BE17A18(v4);
  v3[8] = v5;
  v7 = *(v6 + 64);
  v3[9] = sub_22BE25184();
  v8 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  v3[10] = sub_22BE3602C();
  v3[11] = swift_task_alloc();
  v11 = sub_22C270AF4();
  v3[12] = v11;
  sub_22BE17A18(v11);
  v3[13] = v12;
  v14 = *(v13 + 64);
  v3[14] = sub_22BE25184();
  v15 = sub_22BE5CE4C(&qword_27D907408, &qword_22C275380);
  v3[15] = v15;
  sub_22BE19448(v15);
  v17 = *(v16 + 64);
  v3[16] = sub_22BE25184();
  v18 = sub_22BE5CE4C(&unk_27D907410, qword_22C275388);
  sub_22BE19448(v18);
  v20 = *(v19 + 64);
  v3[17] = sub_22BE3602C();
  v3[18] = swift_task_alloc();
  v21 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  v3[19] = v21;
  sub_22BE17A18(v21);
  v3[20] = v22;
  v24 = *(v23 + 64);
  v3[21] = sub_22BE3602C();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v25 = sub_22C2720A4();
  v3[24] = v25;
  sub_22BE17A18(v25);
  v3[25] = v26;
  v28 = *(v27 + 64);
  v3[26] = sub_22BE3602C();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BE6A860, 0, 0);
}

uint64_t sub_22BE6A860()
{
  v178 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_tokenizer);
  v5 = sub_22C272FF4();
  v6 = [v4 queryFromText_];

  v7 = *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_selectedEntityTypes);
  v146 = v6;
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v0[27];
  sub_22C271AE4();

  v9 = sub_22C272084();
  v10 = sub_22C273794();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[27];
  v14 = v0[24];
  v13 = v0[25];
  if (v11)
  {
    v172 = v0[27];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v177[0] = v16;
    *v15 = 136315138;
    v17 = sub_22C273674();
    v19 = sub_22BE61C88(v17, v18, v177);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_22BE15000, v9, v10, "[SiriEntityMatcherShim] Entity type filters applied to allow only the following CCItemTypes: %s", v15, 0xCu);
    sub_22BE26B64(v16);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();

    (*(v13 + 8))(v172, v14);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v20 = *(v7 + 56);
  v21 = MEMORY[0x277D84F90];
  v177[0] = MEMORY[0x277D84F90];
  v22 = -1;
  v23 = -1 << *(v7 + 32);
  if (-v23 < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & v20;
  v25 = (63 - v23) >> 6;

  v26 = 0;
  while (v24)
  {
LABEL_13:
    v28 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v29 = *(*(v7 + 48) + ((v26 << 7) | (2 * v28)));
    v30 = objc_allocWithZone(MEMORY[0x277D55D20]);
    if (sub_22BE6E900(v29))
    {
      MEMORY[0x2318ABB70]();
      if (*((v177[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v177[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22C2734F4();
      }

      sub_22C273554();
      v21 = v177[0];
    }
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_60;
    }

    if (v27 >= v25)
    {
      break;
    }

    v24 = *(v7 + 56 + 8 * v27);
    ++v26;
    if (v24)
    {
      v26 = v27;
      goto LABEL_13;
    }
  }

  if (v21 >> 62)
  {
    goto LABEL_63;
  }

  v31 = v21 & 0xFFFFFFFFFFFFFF8;

  sub_22C274054();
  sub_22BE5CE4C(&unk_27D907420, &qword_22C2753A8);
  sub_22BE23BA8();
  v6 = v146;
  if (swift_dynamicCastMetatype() || (v71 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
  {
LABEL_19:
  }

  else
  {
    v72 = (v31 + 32);
    while (1)
    {
      v73 = *v72;
      v0[2] = &unk_283FA6A00;
      v0[3] = &unk_283FA7CA8;
      if (!swift_dynamicCastObjCProtocolConditional())
      {
        break;
      }

      ++v72;
      if (!--v71)
      {
        goto LABEL_19;
      }
    }

    v21 = v31 | 1;
  }

  while (1)
  {
    sub_22BE738C8(v21, v6);
LABEL_21:
    v32 = (v0[6] + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_spanMatcher);
    v33 = v32[3];
    v34 = v32[4];
    sub_22BE1BD3C(v32, v33);
    v35 = (*(v34 + 8))(v6, v33, v34);
    v36 = v0[20];
    v173 = v0[19];
    v176 = MEMORY[0x277D84F90];
    v37 = 0;
    v155 = v35 & 0xC000000000000001;
    v159 = sub_22BE69A28(v35);
    v153 = v35 + 32;
    v175 = v0;
    v151 = v35;
LABEL_22:
    if (v37 == v159)
    {
      break;
    }

    sub_22BE69A38(v37, v155 == 0, v35);
    if (v155)
    {
      v38 = MEMORY[0x2318AC200](v37, v35);
    }

    else
    {
      v38 = *(v153 + 8 * v37);
    }

    v39 = v38;
    v40 = __OFADD__(v37, 1);
    v41 = v37 + 1;
    if (!v40)
    {
      v42 = v0[6];
      v43 = 0;
      v44 = sub_22BE6B588(v38, v0[4], v0[5]);
      v162 = v39;
      v165 = v41;
      v45 = *(v44 + 16);
      v169 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v45 == v43)
        {

          sub_22BE3D108();
          sub_22BE6E118();
          v35 = v151;
          v37 = v165;
          goto LABEL_22;
        }

        if (v43 >= *(v44 + 16))
        {
          break;
        }

        v46 = v0[23];
        v47 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v48 = *(v36 + 72);
        sub_22BE3D108();
        sub_22BE2B984(v49, v50, v51, v52);
        v53 = *(v173 + 48);
        v54 = sub_22C272874();
        v55 = v46 + v53;
        v0 = v175;
        if (sub_22BE1AEA8(v55, 1, v54) == 1)
        {
          sub_22BE33928(v175[23], &qword_27D9073B0, &unk_22C275320);
          ++v43;
        }

        else
        {
          v56 = v175[22];
          sub_22BE3D108();
          sub_22BE73F60(v57, v58, v59, v60);
          v61 = v169;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v177[0] = v169;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v63 = *(v169 + 16);
            sub_22BE701EC();
            v61 = v177[0];
          }

          v64 = *(v61 + 16);
          v65 = v64 + 1;
          if (v64 >= *(v61 + 24) >> 1)
          {
            sub_22BE701EC();
            v65 = v64 + 1;
            v61 = v177[0];
          }

          ++v43;
          v66 = v175[22];
          *(v61 + 16) = v65;
          v169 = v61;
          v0 = v175;
          sub_22BE3D108();
          sub_22BE73F60(v67, v68, v69, v70);
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:

    sub_22BE5CE4C(&unk_27D907420, &qword_22C2753A8);
    v144 = sub_22C273CA4();
    swift_bridgeObjectRelease_n();
    v21 = v144;
    v6 = v146;
  }

  v74 = v0[25];
  v160 = v0[15];
  v75 = v175[13];
  v76 = v175[8];

  v77 = 0;
  v150 = (v75 + 8);
  v152 = (v75 + 32);
  v0 = v175;
  v78 = v176;
  v149 = (v74 + 8);
  v79 = *(v176 + 16);
  v145 = (v76 + 8);
  v80 = &qword_27D907400;
  v81 = &unk_22C274F90;
  v148 = v79;
  while (1)
  {
    if (v77 == v79)
    {
      v82 = 1;
      v83 = v79;
    }

    else
    {
      if (v77 >= *(v78 + 16))
      {
        goto LABEL_62;
      }

      v84 = v0[16];
      v85 = v0[17];
      v83 = v77 + 1;
      v86 = *(v36 + 80);
      sub_22BE19E14();
      v89 = v78 + v87 + *(v36 + 72) * v88;
      v90 = *(v160 + 48);
      *v84 = v88;
      sub_22BE2B984(v89, v84 + v90, &qword_27D9073B0, &unk_22C275320);
      v91 = sub_22BE19454();
      sub_22BE73F60(v91, v92, &qword_27D907408, &qword_22C275380);
      v82 = 0;
      v0 = v175;
    }

    v93 = v0[18];
    v94 = v0[15];
    sub_22BE19DC4(v0[17], v82, 1, v94);
    v95 = sub_22BE19454();
    sub_22BE73F60(v95, v96, &unk_27D907410, qword_22C275388);
    if (sub_22BE1AEA8(v93, 1, v94) == 1)
    {
      break;
    }

    v97 = v0[26];
    v98 = v0[21];
    v99 = v0[18];
    v163 = v0[14];
    v100 = v0[12];
    v166 = v0[11];
    v170 = v83;
    v156 = *v99;
    v101 = v81;
    v102 = v80;
    v103 = v99 + *(v160 + 48);
    v104 = *(v173 + 48);
    v105 = *v152;
    (*v152)(v98, v103, v100);
    v106 = &v103[v104];
    v80 = v102;
    v81 = v101;
    sub_22BE73F60(v106, &v98[v104], v80, v101);
    sub_22C271AE4();
    v105(v163, v98, v100);
    sub_22BE73F60(&v98[v104], v166, v80, v101);
    v107 = sub_22C272084();
    v108 = sub_22C273794();
    if (os_log_type_enabled(v107, v108))
    {
      v167 = v108;
      v0 = v175;
      v109 = v175[14];
      v110 = v175[12];
      v147 = v175[11];
      v111 = v175[10];
      v112 = swift_slowAlloc();
      v177[0] = swift_slowAlloc();
      *v112 = 134218498;
      *(v112 + 4) = v156;
      *(v112 + 12) = 2080;
      v113 = sub_22C270A74();
      v115 = v114;
      (*v150)(v109, v110);
      v116 = sub_22BE61C88(v113, v115, v177);

      *(v112 + 14) = v116;
      *(v112 + 22) = 2080;
      sub_22BE2B984(v147, v111, &qword_27D907400, v81);
      v117 = sub_22C272874();
      v118 = sub_22BE1AEA8(v111, 1, v117);
      v119 = v175[10];
      if (v118 == 1)
      {
        sub_22BE33928(v175[10], &qword_27D907400, v81);
        v120 = 0xE700000000000000;
        v121 = v81;
        v122 = 0x6E776F6E6B6E75;
      }

      else
      {
        v128 = v175[9];
        v129 = v175[7];
        sub_22C272814();
        (*(*(v117 - 8) + 8))(v119, v117);
        v121 = v81;
        v122 = sub_22C272944();
        v120 = v130;
        (*v145)(v128, v129);
      }

      v79 = v148;
      v157 = v175[26];
      v131 = v175[24];
      sub_22BE33928(v175[11], &qword_27D907400, v121);
      v132 = sub_22BE61C88(v122, v120, v177);

      *(v112 + 24) = v132;
      _os_log_impl(&dword_22BE15000, v107, v167, "[SiriEntityMatcherShim] Span match [%ld]: %s \nWith entity type: %s", v112, 0x20u);
      swift_arrayDestroy();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();

      (*v149)(v157, v131);
      v78 = v176;
      v80 = &qword_27D907400;
      v81 = v121;
      v77 = v170;
    }

    else
    {
      v0 = v175;
      v123 = v175[26];
      v124 = v175[24];
      v125 = v175[14];
      v127 = v175[11];
      v126 = v175[12];

      sub_22BE33928(v127, v80, v81);
      (*v150)(v125, v126);
      (*v149)(v123, v124);
      v78 = v176;
      v79 = v148;
      v77 = v170;
    }
  }

  v133 = v0[26];
  v134 = v0[27];
  v135 = v0[22];
  v136 = v0[23];
  v137 = v0[21];
  v154 = v0[18];
  v158 = v0[17];
  v161 = v0[16];
  v164 = v0[14];
  v168 = v0[11];
  v171 = v0[10];
  v174 = v0[9];
  v138 = v0[6];
  sub_22BE6CFA0(v78);

  v140 = sub_22BE6C35C(v139);
  v141 = sub_22BE6CC4C(v140);

  sub_22BE2589C();

  return v142(v141);
}

uint64_t sub_22BE6B588(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C270F94();
  v7 = sub_22BE179D8(v6);
  v129 = v8;
  v130 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v132 = v12 - v11;
  sub_22BE183BC();
  v13 = sub_22C270AF4();
  v14 = sub_22BE179D8(v13);
  v134 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  v136 = v19 - v18;
  v20 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v21 = sub_22BE19448(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v137 = (v118 - v24);
  sub_22BE183BC();
  v138 = sub_22C272874();
  v25 = sub_22BE179D8(v138);
  v133 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE179EC();
  v135 = v30 - v29;
  sub_22BE183BC();
  v31 = sub_22C270E54();
  v32 = sub_22BE179D8(v31);
  v140 = v33;
  v141 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE183AC();
  v128 = v36 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = v118 - v39;
  v41 = sub_22BE5CE4C(&qword_27D9073C0, &qword_22C275330);
  v42 = sub_22BE19448(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BE183AC();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = v118 - v49;
  v143 = a1;
  v51 = [a1 spanInfo];
  v52 = [v51 spanRange];
  v54 = v52 + v53;
  if (__OFADD__(v52, v53))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v127 = v13;
  v145 = a2;
  v146 = a3;
  sub_22BE699D0();
  v142 = v50;

  v125 = sub_22C273164();
  v126 = a2;
  v145 = a2;
  v146 = a3;
  v144 = a3;

  v55 = v142;
  v56 = sub_22C273164();
  [v51 aliasMatchOptions];
  sub_22BE6C160();
  [v51 maxTokenCount];
  [v51 matchedTokenCount];
  sub_22BE2B984(v55, v47, &qword_27D9073C0, &qword_22C275330);
  v57 = v40;
  sub_22C270E14();
  v40 = v143;
  v58 = [v143 entityInfo];
  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  if (!v59)
  {
    swift_unknownObjectRelease();
    v67 = sub_22C270FE4();
    sub_22BE1B28C();
    sub_22BE74518(v68, v69);
    sub_22BE23BA8();
    swift_allocError();
    (*(*(v67 - 8) + 104))(v70, *MEMORY[0x277D1EED8], v67);
    swift_willThrow();

LABEL_10:
    (*(v140 + 8))(v57, v141);
    sub_22BE33928(v55, &qword_27D9073C0, &qword_22C275330);
    return v67;
  }

  v60 = v59;
  v61 = sub_22BE73948(v59);
  if (!v61)
  {
    v67 = sub_22C270FE4();
    sub_22BE1B28C();
    sub_22BE74518(v71, v72);
    sub_22BE23BA8();
    swift_allocError();
    (*(*(v67 - 8) + 104))(v73, *MEMORY[0x277D1EED0], v67);
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v54 = v61;
  v62 = sub_22BE69A28(v61);
  v123 = v57;
  v122 = v51;
  v120 = v58;
  v118[1] = v56;
  v119 = v60;
  if (v62)
  {
    sub_22BE69A38(0, (v54 & 0xC000000000000001) == 0, v54);
    if ((v54 & 0xC000000000000001) == 0)
    {
      v63 = *(v54 + 32);
LABEL_7:
      v64 = v63;

      v65 = [v64 sourceItemIdentifier];

      v121 = sub_22C273024();
      v124 = v66;

      goto LABEL_12;
    }

LABEL_34:
    v63 = MEMORY[0x2318AC200](0, v54);
    goto LABEL_7;
  }

  v121 = 0;
  v124 = 0xE000000000000000;
LABEL_12:
  v74 = [v40 fieldMatches];
  sub_22BE45D84(0, &qword_28106DB60, 0x277D55D28);
  sub_22BE23BA8();
  v54 = sub_22C273494();

  v75 = sub_22BE69A28(v54);
  v40 = 0;
  v139 = MEMORY[0x277D84F90];
  while (v75 != v40)
  {
    if ((v54 & 0xC000000000000001) != 0)
    {
      v76 = MEMORY[0x2318AC200](v40, v54);
    }

    else
    {
      if (v40 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v76 = *(v54 + 8 * v40 + 32);
    }

    v77 = v76;
    v78 = (v40 + 1);
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v79 = [v76 entityFieldInfo];
    objc_opt_self();
    sub_22BE23BA8();
    v80 = swift_dynamicCastObjCClass();
    if (v80)
    {
      v81 = v80;
      swift_unknownObjectRetain();
      v82 = [v81 fieldType];
      swift_unknownObjectRelease_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = *(v139 + 16);
        sub_22BE66894();
        v139 = v86;
      }

      v83 = *(v139 + 16);
      if (v83 >= *(v139 + 24) >> 1)
      {
        sub_22BE66894();
        v139 = v87;
      }

      v84 = v139;
      *(v139 + 16) = v83 + 1;
      *(v84 + 2 * v83 + 32) = v82;
      v40 = v78;
    }

    else
    {

      swift_unknownObjectRelease();
      ++v40;
    }
  }

  v88 = v143;
  v89 = [v143 spanValue];
  v90 = sub_22C273024();
  v92 = v91;

  v93 = v137;
  v94 = v124;
  v95 = v119;
  sub_22BE746AC(v121, v124, v90, v92, v139, v137);

  v96 = v138;
  if (sub_22BE1AEA8(v93, 1, v138) == 1)
  {

    sub_22BE33928(v93, &qword_27D907400, &unk_22C274F90);

    swift_unknownObjectRelease();
    v67 = MEMORY[0x277D84F90];
    v98 = v140;
    v97 = v141;
    v99 = v123;
  }

  else
  {
    v124 = v94;
    v100 = v133;
    (*(v133 + 32))(v135, v93, v96);

    v101 = [v88 spanValue];
    v144 = sub_22C273024();

    [v122 matchScore];
    v98 = v140;
    (*(v140 + 16))(v128, v123, v141);
    (*(v129 + 16))(v132, v131 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_matcherType, v130);
    v102 = [v95 sourceIdentifierOrConstant];
    sub_22C273024();

    v103 = v136;
    sub_22C270A34();
    sub_22BE5CE4C(&qword_27D907810, &unk_22C288170);
    v104 = (sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320) - 8);
    v105 = *(*v104 + 72);
    v106 = (*(*v104 + 80) + 32) & ~*(*v104 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_22C275160;
    v107 = v67 + v106;
    v108 = v104[14];
    v109 = v134;
    v110 = v103;
    v111 = v127;
    (*(v134 + 16))(v107, v110, v127);
    v112 = v100;
    v113 = *(v100 + 16);
    v114 = v135;
    v115 = v138;
    v113(v107 + v108, v135, v138);
    sub_22BE19DC4(v107 + v108, 0, 1, v115);

    swift_unknownObjectRelease();
    (*(v109 + 8))(v136, v111);
    (*(v112 + 8))(v114, v115);
    v99 = v123;
    v97 = v141;
  }

  v116 = v142;
  (*(v98 + 8))(v99, v97);
  sub_22BE33928(v116, &qword_27D9073C0, &qword_22C275330);
  return v67;
}

void sub_22BE6C160()
{
  sub_22BE3C358();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C270944();
  v5 = sub_22BE179D8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE183AC();
  v12 = v10 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v20 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v20 - v17;
  v20[3] = 0;
  sub_22BE74518(&qword_28107F1D0, MEMORY[0x277D1E9E8]);
  sub_22C2742B4();
  switch(v1)
  {
    case 1:
      sub_22C2708D4();
      goto LABEL_6;
    case 2:
      sub_22C270924();
      goto LABEL_6;
    case 4:
      sub_22C270914();
      goto LABEL_6;
    case 8:
      sub_22C270904();
LABEL_6:
      sub_22C1AE63C(v16, v12);
      v19 = *(v7 + 8);
      v19(v12, v4);
      v19(v16, v4);
      break;
    default:
      break;
  }

  (*(v7 + 32))(v3, v18, v4);
  sub_22BE19DC4(v3, 0, 1, v4);
  sub_22BE267B8();
}

uint64_t sub_22BE6C35C(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v57 = &v53 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - v8;
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v69 = MEMORY[0x277D84F98];
  v60 = *(a1 + 16);
  v54 = xmmword_22C275160;
  v55 = a1;
  while (1)
  {
    if (v60 == v10)
    {

      return v11;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v12 = *(v58 + 80);
    v62 = *(v58 + 72);
    v63 = (v12 + 32) & ~v12;
    v61 = v10;
    sub_22BE2B984(a1 + v63 + v62 * v10, v9, &qword_27D9073B0, &unk_22C275320);
    v13 = v9;
    v14 = v57;
    sub_22BE2B984(v9, v57, &qword_27D9073B0, &unk_22C275320);
    v65 = *(v59 + 48);
    v64 = sub_22C270AD4();
    v16 = v15;
    v17 = v11;
    v18 = sub_22C270AC4();
    v20 = v19;
    v21 = sub_22C270AB4();
    v23 = v22;
    v24 = sub_22C270AF4();
    (*(*(v24 - 8) + 8))(v14, v24);
    sub_22BE33928(v14 + v65, &qword_27D907400, &unk_22C274F90);
    *&v66 = v64;
    *(&v66 + 1) = v16;
    *&v67 = v18;
    *(&v67 + 1) = v20;
    v11 = v17;
    *&v68 = v21;
    *(&v68 + 1) = v23;
    v26 = sub_22BE605E8();
    v27 = v17[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_19;
    }

    v30 = v25;
    if (v11[3] < v29)
    {
      sub_22C24F890(v29, 1);
      v11 = v69;
      v31 = sub_22BE605E8();
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }

      v26 = v31;
    }

    v9 = v13;
    if (v30)
    {

      v33 = v11[7];
      sub_22BE73F60(v13, v56, &qword_27D9073B0, &unk_22C275320);
      v34 = *(v33 + 8 * v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v33 + 8 * v26) = v34;
      v36 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BE6686C(0, *(v34 + 16) + 1, 1, v34);
        v34 = v50;
        *(v33 + 8 * v26) = v50;
      }

      v37 = v63;
      v39 = *(v34 + 16);
      v38 = *(v34 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_22BE6686C(v38 > 1, v39 + 1, 1, v34);
        v34 = v51;
        *(v33 + 8 * v26) = v51;
      }

      a1 = v55;
      v40 = v56;
      v42 = v61;
      v41 = v62;
      *(v34 + 16) = v39 + 1;
      sub_22BE73F60(v40, v34 + v37 + v39 * v41, &qword_27D9073B0, &unk_22C275320);
      v11 = v36;
    }

    else
    {
      sub_22BE5CE4C(&qword_27D907810, &unk_22C288170);
      v43 = v63;
      v44 = swift_allocObject();
      *(v44 + 16) = v54;
      sub_22BE73F60(v13, v44 + v43, &qword_27D9073B0, &unk_22C275320);
      v11[(v26 >> 6) + 8] |= 1 << v26;
      v45 = (v11[6] + 48 * v26);
      v46 = v67;
      *v45 = v66;
      v45[1] = v46;
      v45[2] = v68;
      *(v11[7] + 8 * v26) = v44;
      v47 = v11[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_20;
      }

      v11[2] = v49;
      a1 = v55;
      v42 = v61;
    }

    v10 = v42 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C2740B4();
  __break(1u);
  return result;
}

uint64_t sub_22BE6C7D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v41 - v8;
  v9 = sub_22C270AF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BE5CE4C(&qword_27D907808, &unk_22C275820);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v45 = &v41 - v16;
  v17 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v41 = &v41 - v22;
    v42 = v21;
    v44 = a2;
    v50 = MEMORY[0x277D84F90];
    sub_22BE7020C(0, v24, 0);
    v25 = v50;
    v26 = *(v46 + 80);
    v43 = a1;
    v27 = a1 + ((v26 + 32) & ~v26);
    v49 = v10;
    v28 = (v10 + 32);
    v46 = *(v46 + 72);
    do
    {
      v29 = v48;
      sub_22BE2B984(v27, v48, &qword_27D9073B0, &unk_22C275320);
      v30 = v29;
      v31 = v47;
      sub_22BE73F60(v30, v47, &qword_27D9073B0, &unk_22C275320);
      v32 = v4;
      v33 = *(v4 + 48);
      v34 = *v28;
      (*v28)(v13, v31, v9);
      sub_22BE33928(v31 + v33, &qword_27D907400, &unk_22C274F90);
      v50 = v25;
      v35 = v9;
      v37 = *(v25 + 16);
      v36 = *(v25 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_22BE7020C(v36 > 1, v37 + 1, 1);
        v25 = v50;
      }

      *(v25 + 16) = v37 + 1;
      v34((v25 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v37), v13, v35);
      v27 += v46;
      --v24;
      v4 = v32;
      v9 = v35;
    }

    while (v24);
    a1 = v43;
    v10 = v49;
    v23 = v41;
    v21 = v42;
  }

  v38 = v45;
  sub_22BF2DA90(a1);
  if (sub_22BE1AEA8(v38, 1, v4) == 1)
  {
    sub_22BE33928(v38, &qword_27D907808, &unk_22C275820);
    v39 = sub_22C272874();
    sub_22BE19DC4(v23, 1, 1, v39);
  }

  else
  {
    sub_22BE73F60(v38 + *(v4 + 48), v23, &qword_27D907400, &unk_22C274F90);
    (*(v10 + 8))(v38, v9);
  }

  sub_22BE2B984(v23, v21, &qword_27D907400, &unk_22C274F90);
  sub_22C270FA4();
  return sub_22BE33928(v23, &qword_27D907400, &unk_22C274F90);
}

uint64_t sub_22BE6CC4C(uint64_t a1)
{
  v41 = sub_22C270FD4();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v41);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v33 = v1;
  v51 = MEMORY[0x277D84F90];
  sub_22BE70194(0, v7, 0);
  v8 = v51;
  result = sub_22C259374(a1);
  v12 = result;
  v13 = 0;
  v14 = a1 + 64;
  v38 = v3 + 32;
  v39 = a1 + 64;
  v35 = v10;
  v36 = v7;
  v34 = a1 + 72;
  v40 = v3;
  v37 = a1;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    if (*(a1 + 36) != v10)
    {
      goto LABEL_23;
    }

    v43 = v13;
    v44 = v10;
    v42 = v11;
    v16 = (*(a1 + 48) + 48 * v12);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[5];
    v22 = *(*(a1 + 56) + 8 * v12);
    v45 = *v16;
    v46 = v17;
    v47 = v18;
    v48 = v19;
    v49 = v20;
    v50 = v21;

    sub_22BE6C7D0(v22, v6);

    v51 = v8;
    v24 = *(v8 + 16);
    v23 = *(v8 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_22BE70194(v23 > 1, v24 + 1, 1);
      v8 = v51;
    }

    *(v8 + 16) = v24 + 1;
    result = (*(v40 + 32))(v8 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v24, v6, v41);
    a1 = v37;
    v25 = 1 << *(v37 + 32);
    v14 = v39;
    if (v12 >= v25)
    {
      goto LABEL_24;
    }

    v26 = *(v39 + 8 * v15);
    if ((v26 & (1 << v12)) == 0)
    {
      goto LABEL_25;
    }

    if (*(v37 + 36) != v44)
    {
      goto LABEL_26;
    }

    v27 = v26 & (-2 << (v12 & 0x3F));
    if (v27)
    {
      v25 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v15 << 6;
      v29 = v15 + 1;
      v30 = (v34 + 8 * v15);
      while (v29 < (v25 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_22BE2FC64(v12, v44, v42 & 1);
          v25 = __clz(__rbit64(v31)) + v28;
          goto LABEL_19;
        }
      }

      result = sub_22BE2FC64(v12, v44, v42 & 1);
    }

LABEL_19:
    v11 = 0;
    v13 = v43 + 1;
    v12 = v25;
    v10 = v35;
    if (v43 + 1 == v36)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22BE6CFA0(uint64_t a1)
{
  v15 = a1;

  v4 = 0;
  sub_22BE69A3C(&v15);
  v5 = v15;
  if (*(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_maxEntityCount + 8))
  {
    return v5;
  }

  v6 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_maxEntityCount);
  if (v6 >= *(a1 + 16))
  {
    return v5;
  }

  if (v6 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_22C26A8C8(0, v6, v15);
  v4 = v7;
  v2 = v8;

  if ((v2 & 1) == 0)
  {
LABEL_5:
    v9 = sub_22BE19454();
    sub_22BE68A80(v9, v10, v4, v2);
    v5 = v11;
LABEL_12:
    swift_unknownObjectRelease();
    return v5;
  }

  sub_22C274064();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v2 >> 1, v4))
  {
    goto LABEL_15;
  }

  if (v13 != (v2 >> 1) - v4)
  {
LABEL_16:
    swift_unknownObjectRelease_n();
    goto LABEL_5;
  }

  v5 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v5)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  return v5;
}

BOOL sub_22BE6D108(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  sub_22BE2B984(a1, &v20 - v9, &qword_27D9073B0, &unk_22C275320);
  v11 = *(v4 + 56);
  sub_22C270A54();
  v13 = v12;
  v14 = sub_22C270AF4();
  v15 = *(*(v14 - 8) + 8);
  v15(v10, v14);
  sub_22BE2B984(v21, v8, &qword_27D9073B0, &unk_22C275320);
  v16 = *(v4 + 56);
  sub_22C270A54();
  v18 = v17;
  v15(v8, v14);
  sub_22BE33928(&v8[v16], &qword_27D907400, &unk_22C274F90);
  sub_22BE33928(&v10[v11], &qword_27D907400, &unk_22C274F90);
  return v18 < v13;
}

uint64_t sub_22BE6D2B8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    return 1;
  }

  return sub_22C274014();
}

uint64_t sub_22BE6D360()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22C272F44();
  v3 = v0[2];
  v4 = v0[3];
  sub_22C272F44();
  v5 = v0[4];
  v6 = v0[5];

  return sub_22C272F44();
}

uint64_t sub_22BE6D3AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_22C274154();
  sub_22C272F44();
  sub_22C272F44();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t sub_22BE6D430()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_22BE6D3AC();
}

uint64_t sub_22BE6D46C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_22BE6D360();
}

uint64_t sub_22BE6D4A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_22C274154();
  sub_22C272F44();
  sub_22C272F44();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t sub_22BE6D528(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_22BE6D2B8(v7, v8) & 1;
}

uint64_t sub_22BE6D594(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22BE6D63C;

  return sub_22BE6A5F8(a1, a2);
}

uint64_t sub_22BE6D63C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  sub_22BE2589C();
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t SiriEntityMatcherShim.matchApps(query:)()
{
  v1 = sub_22C272804();
  v0[2] = v1;
  sub_22BE17A18(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = sub_22BE25184();
  v5 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  v0[5] = sub_22BE25184();
  v8 = sub_22C272794();
  v0[6] = v8;
  sub_22BE17A18(v8);
  v0[7] = v9;
  v11 = *(v10 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v12 = sub_22C270FD4();
  v0[11] = v12;
  sub_22BE17A18(v12);
  v0[12] = v13;
  v15 = *(v14 + 64);
  v0[13] = sub_22BE25184();
  v16 = swift_task_alloc();
  v0[14] = v16;
  *v16 = v0;
  v17 = sub_22BE25888(v16);

  return sub_22BE6A5F8(v17, v18);
}

uint64_t sub_22BE6D900(uint64_t a1)
{
  v3 = *(*v2 + 112);
  v4 = *v2;
  v4[15] = a1;

  if (v1)
  {
    v5 = v4[13];
    v7 = v4[9];
    v6 = v4[10];
    v8 = v4[8];
    v9 = v4[4];
    v10 = v4[5];

    v11 = v4[1];

    return v11();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22BE6DA88, 0, 0);
  }
}

uint64_t sub_22BE6DA88()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = v0[3];
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v60 = *(v3 + 56);
    v8 = (v3 - 8);
    v58 = *MEMORY[0x277D72A58];
    v56 = (v6 + 88);
    v57 = (v6 + 16);
    v55 = *MEMORY[0x277D72970];
    v49 = (v6 + 96);
    v50 = (v6 + 8);
    v51 = v0[7];
    v54 = (v51 + 32);
    v9 = MEMORY[0x277D84F90];
    v59 = v5;
    v48 = (v3 - 8);
    do
    {
      v10 = v0[13];
      v11 = v0[11];
      v12 = v0[5];
      v4(v10, v7, v11);
      sub_22C270FB4();
      (*v8)(v10, v11);
      v13 = sub_22C272874();
      v14 = sub_22BE1AEA8(v12, 1, v13);
      v15 = v0[5];
      if (v14 == 1)
      {
        sub_22BE33928(v15, &qword_27D907400, &unk_22C274F90);
      }

      else
      {
        v16 = *(v13 - 8);
        v17 = (*(v16 + 88))(v15, v13);
        v18 = v0[5];
        if (v17 == v58)
        {
          v19 = v0[4];
          v20 = v0[2];
          (*(v16 + 96))(v0[5], v13);
          v21 = *v18;
          v22 = swift_projectBox();
          (*v57)(v19, v22, v20);
          if ((*v56)(v19, v20) == v55)
          {
            v23 = v0[9];
            v52 = v0[10];
            v53 = v9;
            v24 = v0[8];
            v25 = v0[6];
            v26 = v0[4];
            (*v49)(v26, v0[2]);
            v27 = *v54;
            (*v54)(v24, v26, v25);

            v27(v23, v24, v25);
            v28 = v25;
            v9 = v53;
            v27(v52, v23, v28);
            v29 = v27;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22BE66960(0, *(v53 + 16) + 1, 1, v53);
              v9 = v37;
            }

            v31 = *(v9 + 16);
            v30 = *(v9 + 24);
            v8 = v48;
            if (v31 >= v30 >> 1)
            {
              sub_22BE66960(v30 > 1, v31 + 1, 1, v9);
              v9 = v38;
            }

            v32 = v0[10];
            v33 = v0[6];
            *(v9 + 16) = v31 + 1;
            v34 = *(v51 + 80);
            sub_22BE19E14();
            v29(v9 + v35 + *(v36 + 72) * v31);
          }

          else
          {
            (*v50)(v0[4], v0[2]);
          }
        }

        else
        {
          (*(v16 + 8))(v0[5], v13);
        }

        v4 = v59;
      }

      v7 += v60;
      --v2;
    }

    while (v2);
    v39 = v0[15];
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v40 = v0[13];
  v42 = v0[9];
  v41 = v0[10];
  v43 = v0[8];
  v45 = v0[4];
  v44 = v0[5];

  sub_22BE2589C();

  return v46(v9);
}

uint64_t sub_22BE6DED0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BE746A8;

  return SiriEntityMatcherShim.matchApps(query:)();
}

void sub_22BE6DF78(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_22BE19E20();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C172174(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22BE3E48C();
  if (v6 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v5 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22BE6E118()
{
  sub_22BE3C358();
  v4 = sub_22BE372D8(v3);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v6;
  v5(v4, 1);
  v11 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v12 = (*(v11 + 24) >> 1) - *(v11 + 16);
  v13 = *(sub_22BE5CE4C(v10, v9) - 8);
  if (v12 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = *(v13 + 72);
  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v11;
    sub_22BE267B8();
    return;
  }

  v16 = *(v11 + 16);
  v8 = __OFADD__(v16, v0);
  v17 = v16 + v0;
  if (!v8)
  {
    *(v11 + 16) = v17;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_22BE6E248(uint64_t a1, int64_t a2)
{
  v4 = v2;
  v7 = sub_22C273174();
  sub_22BE19E20();
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22C172204(v11, 1);
  v3 = *v2;
  v12 = *(*v2 + 16);
  v13 = (*(*v2 + 24) >> 1) - v12;
  v14 = sub_22BE739B4(&v25, (*v4 + 16 * v12 + 32), (*(*v4 + 24) >> 1) - v12, a1, a2);
  if (v14 < v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v14 >= 1)
  {
    v15 = *(v3 + 16);
    v10 = __OFADD__(v15, v14);
    v16 = v15 + v14;
    if (v10)
    {
      __break(1u);
LABEL_19:
      *(v3 + 16) = a2;
      goto LABEL_7;
    }

    *(v3 + 16) = v16;
  }

  if (v14 != v13)
  {
    goto LABEL_7;
  }

LABEL_10:
  a2 = *(v3 + 16);
  v18 = sub_22C273204();
  if (v19)
  {
    while (1)
    {
      v20 = *(v3 + 24) >> 1;
      if (v20 < a2 + 1)
      {
        v22 = v18;
        v23 = v19;
        sub_22BE67160();
        v19 = v23;
        v3 = v24;
        v18 = v22;
        v20 = *(v3 + 24) >> 1;
      }

      v21 = (v3 + 16 * a2 + 40);
      while (a2 < v20)
      {
        *(v21 - 1) = v18;
        *v21 = v19;
        ++a2;
        v18 = sub_22C273204();
        v21 += 2;
        if (!v19)
        {
          goto LABEL_19;
        }
      }

      *(v3 + 16) = a2;
    }
  }

LABEL_7:

  *v4 = v3;
  return result;
}

void sub_22BE6E3B0(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_22BE19E20();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C17221C(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22BE3E48C();
  if (v6 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_22BE5CE4C(&qword_27D907310, &unk_22C275250);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v5 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22BE6E47C(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_22BE19E20();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C172234(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22BE3E48C();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 2 * v6 + 32), (a1 + 32), 2 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22BE6E528()
{
  sub_22BE3C358();
  v2 = v1 >> 1;
  v4 = (v1 >> 1) - v3;
  if (__OFSUB__(v1 >> 1, v3))
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_22BE19E20();
  if (__OFADD__(v7, v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v5;
  sub_22C172234(v7 + v4, 1);
  v10 = *v0;
  if (v2 == v8)
  {
    if (v4 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v0 = v10;
      sub_22BE267B8();
      return;
    }

    __break(1u);
  }

  v11 = *(v10 + 16);
  if ((*(v10 + 24) >> 1) - v11 < v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  memcpy((v10 + 2 * v11 + 32), (v9 + 2 * v8), 2 * v4);
  if (v4 <= 0)
  {
    goto LABEL_10;
  }

  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, v4);
  v14 = v12 + v4;
  if (!v13)
  {
    *(v10 + 16) = v14;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void sub_22BE6E5F4(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_22BE19E20();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C17224C(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22BE3E48C();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 4 * v6 + 32), (a1 + 32), 4 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22BE6E6F8()
{
  sub_22BE3C358();
  v4 = sub_22BE372D8(v3);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(v4, 1);
  v9 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  v11 = *(v8(0) - 8);
  if (v10 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v9;
    sub_22BE267B8();
    return;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v0);
  v15 = v14 + v0;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_22BE6E838(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_22BE6E900(unsigned __int16 a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 initWithItemType:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_22C26DE84();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_22BE6E9B4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C273FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22BE6EEA0(v8, v9, a1, v4);
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
    return sub_22BE6EAFC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BE6EAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v56 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  v8 = *(*(v56 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v56);
  v49 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v51 = &v40 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v50 = &v40 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v40 - v16;
  result = MEMORY[0x28223BE20](v15);
  v54 = &v40 - v19;
  v42 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v18 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v47 = -v21;
    v48 = v20;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v20 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v52 = v23;
      v25 = v56;
      do
      {
        v26 = v54;
        sub_22BE2B984(v24, v54, &qword_27D9073B0, &unk_22C275320);
        v27 = v55;
        sub_22BE2B984(v22, v55, &qword_27D9073B0, &unk_22C275320);
        v28 = v50;
        sub_22BE2B984(v26, v50, &qword_27D9073B0, &unk_22C275320);
        v53 = *(v25 + 48);
        sub_22C270A54();
        v30 = v29;
        v31 = sub_22C270AF4();
        v32 = *(*(v31 - 8) + 8);
        v32(v28, v31);
        v33 = v51;
        sub_22BE2B984(v27, v51, &qword_27D9073B0, &unk_22C275320);
        v34 = *(v56 + 48);
        sub_22C270A54();
        v36 = v35;
        v32(v33, v31);
        v37 = v33 + v34;
        v25 = v56;
        sub_22BE33928(v37, &qword_27D907400, &unk_22C274F90);
        sub_22BE33928(v28 + v53, &qword_27D907400, &unk_22C274F90);
        sub_22BE33928(v55, &qword_27D9073B0, &unk_22C275320);
        result = sub_22BE33928(v54, &qword_27D9073B0, &unk_22C275320);
        if (v36 >= v30)
        {
          break;
        }

        if (!v48)
        {
          __break(1u);
          return result;
        }

        v38 = v49;
        sub_22BE73F60(v24, v49, &qword_27D9073B0, &unk_22C275320);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_22BE73F60(v38, v22, &qword_27D9073B0, &unk_22C275320);
        v22 += v47;
        v24 += v47;
      }

      while (!__CFADD__(v52++, 1));
      a3 = v46 + 1;
      v22 = v45 + v41;
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22BE6EEA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v132 = a4;
  v134 = a1;
  v6 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  v142 = *(v6 - 8);
  v7 = *(v142 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v148 = &v130 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v151 = &v130 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v130 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v149 = &v130 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v155 = &v130 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v143 = a3;
  v23 = *(a3 + 8);
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_106:
    v4 = *v134;
    if (!*v134)
    {
      goto LABEL_149;
    }

    a3 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v121 = a3;
    }

    else
    {
LABEL_143:
      v121 = sub_22C115CA4(a3);
    }

    v122 = v121 + 16;
    v123 = *(v121 + 2);
    while (v123 >= 2)
    {
      if (!*v143)
      {
        goto LABEL_146;
      }

      a3 = v121;
      v124 = &v121[16 * v123];
      v125 = *v124;
      v126 = &v122[2 * v123];
      v127 = *(v126 + 1);
      v128 = v144;
      sub_22BE6FA9C(*v143 + *(v142 + 72) * *v124, *v143 + *(v142 + 72) * *v126, *v143 + *(v142 + 72) * v127, v4);
      v144 = v128;
      if (v128)
      {
        break;
      }

      if (v127 < v125)
      {
        goto LABEL_134;
      }

      if (v123 - 2 >= *v122)
      {
        goto LABEL_135;
      }

      *v124 = v125;
      *(v124 + 1) = v127;
      v129 = *v122 - v123;
      if (*v122 < v123)
      {
        goto LABEL_136;
      }

      v123 = *v122 - 1;
      sub_22C115E84(v126 + 16, v129, v126);
      *v122 = v123;
      v121 = a3;
    }

LABEL_117:

    return;
  }

  v130 = &v130 - v20;
  v131 = v21;
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v152 = v6;
  v137 = v22;
  while (1)
  {
    v26 = v24++;
    v138 = v25;
    if (v24 >= v23)
    {
      goto LABEL_31;
    }

    v147 = v23;
    v27 = *v143;
    a3 = *(v142 + 72);
    v145 = v24;
    v28 = v27 + a3 * v24;
    v4 = v28;
    v29 = v130;
    sub_22BE2B984(v28, v130, &qword_27D9073B0, &unk_22C275320);
    v30 = v131;
    sub_22BE2B984(v27 + a3 * v26, v131, &qword_27D9073B0, &unk_22C275320);
    v31 = v144;
    LODWORD(v146) = sub_22BE6D108(v29, v30);
    v144 = v31;
    if (v31)
    {
      sub_22BE33928(v30, &qword_27D9073B0, &unk_22C275320);
      sub_22BE33928(v29, &qword_27D9073B0, &unk_22C275320);
      goto LABEL_117;
    }

    sub_22BE33928(v30, &qword_27D9073B0, &unk_22C275320);
    sub_22BE33928(v29, &qword_27D9073B0, &unk_22C275320);
    v133 = v26;
    v32 = v26 + 2;
    v33 = v27 + a3 * (v26 + 2);
    v24 = v145;
    v34 = v147;
    v141 = a3;
    while (1)
    {
      v35 = v32;
      v36 = v24 + 1;
      if (v36 >= v34)
      {
        break;
      }

      v37 = v155;
      v154 = v32;
      sub_22BE2B984(v33, v155, &qword_27D9073B0, &unk_22C275320);
      v38 = v149;
      sub_22BE2B984(v4, v149, &qword_27D9073B0, &unk_22C275320);
      v145 = v36;
      v39 = v150;
      sub_22BE2B984(v37, v150, &qword_27D9073B0, &unk_22C275320);
      v153 = *(v6 + 48);
      sub_22C270A54();
      v41 = v40;
      v42 = sub_22C270AF4();
      v43 = *(*(v42 - 8) + 8);
      v43(v39, v42);
      v44 = v151;
      sub_22BE2B984(v38, v151, &qword_27D9073B0, &unk_22C275320);
      v45 = *(v152 + 48);
      sub_22C270A54();
      v47 = v46;
      v43(v44, v42);
      v6 = v152;
      sub_22BE33928(v44 + v45, &qword_27D907400, &unk_22C274F90);
      v48 = v39 + v153;
      v24 = v145;
      sub_22BE33928(v48, &qword_27D907400, &unk_22C274F90);
      v49 = v38;
      a3 = v141;
      sub_22BE33928(v49, &qword_27D9073B0, &unk_22C275320);
      sub_22BE33928(v155, &qword_27D9073B0, &unk_22C275320);
      v35 = v154;
      v34 = v147;
      v33 += a3;
      v4 += a3;
      v32 = v154 + 1;
      if (((v146 ^ (v47 >= v41)) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v24 = v34;
LABEL_10:
    if (v146)
    {
      v26 = v133;
      if (v24 < v133)
      {
        goto LABEL_142;
      }

      if (v133 >= v24)
      {
        goto LABEL_31;
      }

      if (v34 >= v35)
      {
        v50 = v35;
      }

      else
      {
        v50 = v34;
      }

      v51 = a3 * (v50 - 1);
      v52 = a3 * v50;
      v53 = v133 * a3;
      v54 = v24;
      do
      {
        if (v26 != --v54)
        {
          v55 = *v143;
          if (!*v143)
          {
            goto LABEL_147;
          }

          v4 = v55 + v53;
          sub_22BE73F60(v55 + v53, v137, &qword_27D9073B0, &unk_22C275320);
          v56 = v53 < v51 || v4 >= v55 + v52;
          if (v56)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v53 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_22BE73F60(v137, v55 + v51, &qword_27D9073B0, &unk_22C275320);
        }

        ++v26;
        v51 -= a3;
        v52 -= a3;
        v53 += a3;
      }

      while (v26 < v54);
      v6 = v152;
    }

    v26 = v133;
LABEL_31:
    v57 = v143[1];
    if (v24 < v57)
    {
      if (__OFSUB__(v24, v26))
      {
        goto LABEL_139;
      }

      if (v24 - v26 < v132)
      {
        v58 = v26 + v132;
        if (__OFADD__(v26, v132))
        {
          goto LABEL_140;
        }

        if (v58 >= v57)
        {
          v58 = v143[1];
        }

        if (v58 < v26)
        {
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v24 != v58)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v24 < v26)
    {
      goto LABEL_138;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = v138;
    }

    else
    {
      v118 = v138[2];
      sub_22BE6614C();
      v25 = v119;
    }

    v77 = v25[2];
    v78 = v77 + 1;
    if (v77 >= v25[3] >> 1)
    {
      sub_22BE6614C();
      v25 = v120;
    }

    v25[2] = v78;
    v4 = (v25 + 4);
    v79 = &v25[2 * v77 + 4];
    *v79 = v26;
    v79[1] = v24;
    v154 = *v134;
    if (!v154)
    {
      goto LABEL_148;
    }

    if (v77)
    {
      v6 = v152;
      while (1)
      {
        v80 = v78 - 1;
        v81 = (v4 + 16 * (v78 - 1));
        a3 = v25;
        v82 = &v25[2 * v78];
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v83 = v25[4];
          v84 = v25[5];
          v93 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          v86 = v93;
LABEL_71:
          if (v86)
          {
            goto LABEL_125;
          }

          v98 = *v82;
          v97 = v82[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_128;
          }

          v102 = v81[1];
          v103 = v102 - *v81;
          if (__OFSUB__(v102, *v81))
          {
            goto LABEL_131;
          }

          if (__OFADD__(v100, v103))
          {
            goto LABEL_133;
          }

          if (v100 + v103 >= v85)
          {
            if (v85 < v103)
            {
              v80 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v78 < 2)
        {
          goto LABEL_127;
        }

        v105 = *v82;
        v104 = v82[1];
        v93 = __OFSUB__(v104, v105);
        v100 = v104 - v105;
        v101 = v93;
LABEL_86:
        if (v101)
        {
          goto LABEL_130;
        }

        v107 = *v81;
        v106 = v81[1];
        v93 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v93)
        {
          goto LABEL_132;
        }

        if (v108 < v100)
        {
          goto LABEL_102;
        }

LABEL_93:
        if (v80 - 1 >= v78)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v143)
        {
          goto LABEL_145;
        }

        v112 = (v4 + 16 * (v80 - 1));
        v113 = *v112;
        v114 = v4 + 16 * v80;
        v115 = *(v114 + 8);
        v116 = v144;
        sub_22BE6FA9C(*v143 + *(v142 + 72) * *v112, *v143 + *(v142 + 72) * *v114, *v143 + *(v142 + 72) * v115, v154);
        v144 = v116;
        if (v116)
        {
          goto LABEL_117;
        }

        if (v115 < v113)
        {
          goto LABEL_120;
        }

        v117 = *(a3 + 16);
        if (v80 > v117)
        {
          goto LABEL_121;
        }

        *v112 = v113;
        v112[1] = v115;
        if (v80 >= v117)
        {
          goto LABEL_122;
        }

        v78 = v117 - 1;
        sub_22C115E84((v114 + 16), v117 - 1 - v80, (v4 + 16 * v80));
        v25 = a3;
        *(a3 + 16) = v117 - 1;
        v6 = v152;
        if (v117 <= 2)
        {
          goto LABEL_102;
        }
      }

      v87 = v4 + 16 * v78;
      v88 = *(v87 - 64);
      v89 = *(v87 - 56);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_123;
      }

      v92 = *(v87 - 48);
      v91 = *(v87 - 40);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_124;
      }

      v94 = v82[1];
      v95 = v94 - *v82;
      if (__OFSUB__(v94, *v82))
      {
        goto LABEL_126;
      }

      v93 = __OFADD__(v85, v95);
      v96 = v85 + v95;
      if (v93)
      {
        goto LABEL_129;
      }

      if (v96 >= v90)
      {
        v110 = *v81;
        v109 = v81[1];
        v93 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v93)
        {
          goto LABEL_137;
        }

        if (v85 < v111)
        {
          v80 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

    v6 = v152;
LABEL_102:
    v23 = v143[1];
    if (v24 >= v23)
    {
      goto LABEL_106;
    }
  }

  v59 = *v143;
  v60 = *(v142 + 72);
  v61 = *v143 + v60 * (v24 - 1);
  v146 = -v60;
  v133 = v26;
  v62 = v26 - v24;
  v147 = v59;
  v135 = v60;
  v63 = v59 + v24 * v60;
  v136 = v58;
LABEL_41:
  v145 = v24;
  v139 = v63;
  v140 = v62;
  v64 = v62;
  v141 = v61;
  v65 = v61;
  while (1)
  {
    v153 = v64;
    v66 = v155;
    sub_22BE2B984(v63, v155, &qword_27D9073B0, &unk_22C275320);
    v67 = v149;
    sub_22BE2B984(v65, v149, &qword_27D9073B0, &unk_22C275320);
    v4 = v150;
    sub_22BE2B984(v66, v150, &qword_27D9073B0, &unk_22C275320);
    v154 = *(v6 + 48);
    sub_22C270A54();
    v69 = v68;
    v70 = sub_22C270AF4();
    v71 = *(*(v70 - 8) + 8);
    v71(v4, v70);
    v72 = v151;
    sub_22BE2B984(v67, v151, &qword_27D9073B0, &unk_22C275320);
    v73 = *(v6 + 48);
    sub_22C270A54();
    v75 = v74;
    v71(v72, v70);
    a3 = &qword_27D907400;
    sub_22BE33928(v72 + v73, &qword_27D907400, &unk_22C274F90);
    sub_22BE33928(v4 + v154, &qword_27D907400, &unk_22C274F90);
    sub_22BE33928(v67, &qword_27D9073B0, &unk_22C275320);
    sub_22BE33928(v155, &qword_27D9073B0, &unk_22C275320);
    if (v75 >= v69)
    {
      v6 = v152;
LABEL_48:
      v24 = v145 + 1;
      v61 = v141 + v135;
      v62 = v140 - 1;
      v63 = v139 + v135;
      if (v145 + 1 == v136)
      {
        v24 = v136;
        v26 = v133;
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    v76 = v153;
    if (!v147)
    {
      break;
    }

    a3 = v148;
    sub_22BE73F60(v63, v148, &qword_27D9073B0, &unk_22C275320);
    v6 = v152;
    swift_arrayInitWithTakeFrontToBack();
    sub_22BE73F60(a3, v65, &qword_27D9073B0, &unk_22C275320);
    v65 += v146;
    v63 += v146;
    v56 = __CFADD__(v76, 1);
    v64 = v76 + 1;
    if (v56)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

uint64_t sub_22BE6FA9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v80 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  v8 = *(*(v80 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v80);
  v73 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v72 = &v65 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v65 - v14;
  result = MEMORY[0x28223BE20](v13);
  v76 = &v65 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_61;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_62;
  }

  v23 = v19 / v18;
  v83 = a1;
  v82 = a4;
  v24 = v21 / v18;
  if (v19 / v18 >= v21 / v18)
  {
    sub_22BE67D34(a2, v21 / v18, a4);
    v43 = a4 + v24 * v18;
    v44 = -v18;
    v45 = v43;
    v77 = a1;
    v78 = a4;
    v68 = -v18;
LABEL_36:
    v46 = a2 + v44;
    v66 = v45;
    v79 = a2;
    v69 = a2 + v44;
    while (1)
    {
      if (v43 <= a4)
      {
        v83 = a2;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v67 = v45;
      v74 = a3;
      v75 = a3 + v44;
      v47 = v43 + v44;
      v48 = v76;
      sub_22BE2B984(v43 + v44, v76, &qword_27D9073B0, &unk_22C275320);
      v49 = v71;
      sub_22BE2B984(v46, v71, &qword_27D9073B0, &unk_22C275320);
      v50 = v72;
      sub_22BE2B984(v48, v72, &qword_27D9073B0, &unk_22C275320);
      v51 = v80;
      v70 = *(v80 + 48);
      sub_22C270A54();
      v53 = v52;
      v54 = sub_22C270AF4();
      v55 = *(*(v54 - 8) + 8);
      v55(v50, v54);
      v56 = v73;
      sub_22BE2B984(v49, v73, &qword_27D9073B0, &unk_22C275320);
      v57 = *(v51 + 48);
      sub_22C270A54();
      v59 = v58;
      v55(v56, v54);
      sub_22BE33928(v56 + v57, &qword_27D907400, &unk_22C274F90);
      sub_22BE33928(v50 + v70, &qword_27D907400, &unk_22C274F90);
      sub_22BE33928(v49, &qword_27D9073B0, &unk_22C275320);
      sub_22BE33928(v76, &qword_27D9073B0, &unk_22C275320);
      if (v59 < v53)
      {
        a4 = v78;
        a3 = v75;
        if (v74 < v79 || v75 >= v79)
        {
          a2 = v69;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v67;
          v44 = v68;
          a1 = v77;
        }

        else
        {
          v45 = v67;
          v44 = v68;
          v63 = v69;
          a2 = v69;
          a1 = v77;
          if (v74 != v79)
          {
            v64 = v67;
            swift_arrayInitWithTakeBackToFront();
            a2 = v63;
            v45 = v64;
          }
        }

        goto LABEL_36;
      }

      v60 = v75;
      v61 = v74 < v43 || v75 >= v43;
      a4 = v78;
      a2 = v79;
      if (v61)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v60;
        v43 = v47;
        v45 = v47;
        a1 = v77;
        v44 = v68;
        v46 = v69;
      }

      else
      {
        v45 = v47;
        v20 = v43 == v74;
        a3 = v75;
        v43 = v47;
        a1 = v77;
        v44 = v68;
        v46 = v69;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v60;
          v43 = v47;
          v45 = v47;
        }
      }
    }

    v83 = a2;
    v45 = v66;
LABEL_58:
    v81 = v45;
  }

  else
  {
    sub_22BE67D34(a1, v19 / v18, a4);
    v69 = v18;
    v70 = a4 + v23 * v18;
    v81 = v70;
    v75 = a3;
    while (a4 < v70 && a2 < a3)
    {
      v77 = a1;
      v26 = v76;
      sub_22BE2B984(a2, v76, &qword_27D9073B0, &unk_22C275320);
      v27 = v71;
      sub_22BE2B984(a4, v71, &qword_27D9073B0, &unk_22C275320);
      v28 = v72;
      sub_22BE2B984(v26, v72, &qword_27D9073B0, &unk_22C275320);
      v79 = a2;
      v29 = v80;
      v74 = *(v80 + 48);
      sub_22C270A54();
      v31 = v30;
      v32 = sub_22C270AF4();
      v78 = a4;
      v33 = v32;
      v34 = *(*(v32 - 8) + 8);
      v34(v28, v32);
      v35 = v73;
      sub_22BE2B984(v27, v73, &qword_27D9073B0, &unk_22C275320);
      v36 = *(v29 + 48);
      sub_22C270A54();
      v38 = v37;
      v34(v35, v33);
      sub_22BE33928(v35 + v36, &qword_27D907400, &unk_22C274F90);
      sub_22BE33928(v28 + v74, &qword_27D907400, &unk_22C274F90);
      sub_22BE33928(v27, &qword_27D9073B0, &unk_22C275320);
      sub_22BE33928(v26, &qword_27D9073B0, &unk_22C275320);
      if (v38 >= v31)
      {
        a2 = v79;
        v39 = v69;
        a4 = v78 + v69;
        v40 = v77;
        if (v77 < v78 || v77 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v75;
        }

        else
        {
          a3 = v75;
          if (v77 != v78)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v82 = a4;
      }

      else
      {
        v39 = v69;
        a4 = v78;
        a2 = v79 + v69;
        v40 = v77;
        if (v77 < v79 || v77 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v75;
        }

        else
        {
          a3 = v75;
          if (v77 != v79)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 = v40 + v39;
      v83 = a1;
    }
  }

  sub_22C115CD0(&v83, &v82, &v81);
  return 1;
}

void sub_22BE70138()
{
  v1 = *v0;
  sub_22BE71F38();
  *v0 = v2;
}

void sub_22BE70158()
{
  v1 = *v0;
  sub_22BE1AAF0();
  sub_22BE731D8(v2, v3, v4, v5, v6, v7, v8);
  *v0 = v9;
}

void sub_22BE701EC()
{
  v1 = *v0;
  sub_22BE72244();
  *v0 = v2;
}

void *sub_22BE70264(void *a1, int64_t a2, char a3)
{
  result = sub_22BE72398(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE70C7C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22BE724B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE71064(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22BE726B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22BE71084()
{
  v1 = *v0;
  sub_22BE3D3C8();
  sub_22BE734EC(v2, v3, v4, v5, v6, v7, v8, sub_22BE68194);
  *v0 = v9;
}

void sub_22BE710CC()
{
  v1 = *v0;
  sub_22BE24F88();
  sub_22BE734EC(v2, v3, v4, v5, v6, v7, v8, sub_22BE681AC);
  *v0 = v9;
}

void *sub_22BE7121C(void *a1, int64_t a2, char a3)
{
  result = sub_22BE72908(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22BE7123C(size_t a1, int64_t a2, char a3)
{
  result = sub_22BE72A20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE7125C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22BE72C28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE7127C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22BE72D38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE7129C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22BE72E48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE71300(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22BE72F40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22BE71378()
{
  v1 = *v0;
  sub_22BE2B758();
  sub_22BE734EC(v2, v3, v4, v5, v6, v7, v8, sub_22BE682FC);
  *v0 = v9;
}

uint64_t sub_22BE71A94(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22BE732C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE71BBC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22BE733D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22BE71F38()
{
  sub_22BE23668();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22BE1BD80();
  if (v6 == v7)
  {
LABEL_7:
    sub_22BE187C0(v5);
    if (v2)
    {
      sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
      v8 = sub_22BE2B740();
      sub_22BE2896C(v8);
      sub_22BE2560C(v9 / 16);
      if (v1)
      {
LABEL_9:
        v10 = sub_22BE3C78C();
        sub_22BE67CB0(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_22BE22FB8();
  if (!v6)
  {
    sub_22BE17A08();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22BE7202C()
{
  sub_22BE23668();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22BE1BD80();
  if (v6 == v7)
  {
LABEL_7:
    sub_22BE187C0(v5);
    if (v2)
    {
      sub_22BE5CE4C(&unk_27D9077C0, &qword_22C2752D8);
      v8 = sub_22BE2B740();
      sub_22BE2896C(v8);
      sub_22BE2560C(v9 / 16);
      if (v1)
      {
LABEL_9:
        v10 = sub_22BE3C78C();
        sub_22BE67CB0(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22BE5CE4C(&qword_27D907370, &qword_22C2752E0);
    sub_22BE19618();
    goto LABEL_12;
  }

  sub_22BE22FB8();
  if (!v6)
  {
    sub_22BE17A08();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22BE720F0()
{
  sub_22BE3C358();
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v6 != v7)
    {
      sub_22BE22FB8();
      if (v6)
      {
        goto LABEL_20;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BE1C228(v5);
  if (v2)
  {
    sub_22BE5CE4C(&qword_27D907788, &qword_22C2757D0);
    v8 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
    sub_22BE17A18(v8);
    v10 = *(v9 + 72);
    v11 = sub_22BE18384();
    j__malloc_size(v11);
    if (v10)
    {
      sub_22BE38278();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        sub_22BE1A14C(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  sub_22BE187D0(v14);
  v16 = *(v15 + 80);
  sub_22BE19E14();
  if (v1)
  {
    v18 = sub_22BE1B908(v17);
    sub_22BE67CF0(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BE3AEF8();
  }

  sub_22BE267B8();
}

void sub_22BE72244()
{
  sub_22BE3C358();
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v6 != v7)
    {
      sub_22BE22FB8();
      if (v6)
      {
        goto LABEL_20;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BE1C228(v5);
  if (v2)
  {
    sub_22BE5CE4C(&qword_27D907810, &unk_22C288170);
    v8 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
    sub_22BE17A18(v8);
    v10 = *(v9 + 72);
    v11 = sub_22BE18384();
    j__malloc_size(v11);
    if (v10)
    {
      sub_22BE38278();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        sub_22BE1A14C(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  sub_22BE187D0(v14);
  v16 = *(v15 + 80);
  sub_22BE19E14();
  if (v1)
  {
    v18 = sub_22BE1B908(v17);
    sub_22BE67D34(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BE3AEF8();
  }

  sub_22BE267B8();
}

void *sub_22BE72398(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D907398, &unk_22C275810);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_22BE69A34(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22BE5CE4C(&qword_27D907800, &unk_22C275310);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE724B0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D907628, &qword_22C2756B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_22BE68018((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE7259C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D9077D0, &qword_22C2757F8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_22BE68148((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22BE5CE4C(&qword_27D9077D8, &qword_22C275800);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE726B4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D9077B8, &qword_22C2757F0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_22BE68170((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22BE72834()
{
  sub_22BE23668();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22BE1BD80();
  if (v6 == v7)
  {
LABEL_7:
    sub_22BE187C0(v5);
    if (v2)
    {
      sub_22BE5CE4C(&qword_27D9077A8, &unk_22C2757E0);
      v8 = swift_allocObject();
      sub_22BE2896C(v8);
      sub_22BE2560C(v9 / 40);
      if (v1)
      {
LABEL_9:
        v10 = sub_22BE3C78C();
        sub_22BE1B838(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22BE5CE4C(&qword_27D9077B0, &qword_22C288AC0);
    sub_22BE19618();
    goto LABEL_12;
  }

  sub_22BE22FB8();
  if (!v6)
  {
    sub_22BE17A08();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_22BE72908(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D907318, &unk_22C275260);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_22BE69A34(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22BE5CE4C(&unk_27D907760, &unk_22C28EC00);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_22BE72A20(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v10 = *(sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22BE68254(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_22BE72C28(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D907720, &qword_22C275798);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_22BE68280((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22BE5CE4C(&qword_27D907728, &unk_22C2757A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE72D38(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D907710, &qword_22C275248);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_22BE67CB0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22BE5CE4C(&qword_27D907310, &unk_22C275250);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}