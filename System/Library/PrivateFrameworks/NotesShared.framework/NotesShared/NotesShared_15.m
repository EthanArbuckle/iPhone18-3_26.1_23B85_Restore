unint64_t MessageChunking.UnsafeAppendingAccumulator.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_214FA5B00(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t MessageChunking.UnsafeAppendingAccumulator.process<A>(incoming:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v5 = v4;
  v9 = sub_2150A3A00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MessageChunking.Message();
  MEMORY[0x28223BE20](v13);
  v15 = (&v46 - v14);
  (*(v16 + 16))(&v46 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43718);
    v47 = *(v15 + v17[12]);
    v18 = (v15 + v17[20]);
    v20 = *v18;
    v19 = v18[1];
    v51 = *(v15 + v17[16]);
    *&v52 = v20;
    *(&v52 + 1) = v19;
    (*(v10 + 32))(v12, v15, v9);
    v21 = *v5;
    v22 = *(*v5 + 16);
    v49 = v12;
    v50 = v9;
    v48 = v10;
    if (v22 && (v23 = sub_214FB198C(v12), (v24 & 1) != 0))
    {
      v25 = (*(v21 + 56) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      sub_214FCA120(*v25, v27);
    }

    else
    {
      v26 = 0;
      v27 = 0xC000000000000000;
    }

    v33 = a3;
    v58 = v26;
    v59 = v27;
    v56 = MEMORY[0x277CC9318];
    v57 = MEMORY[0x277CC9300];
    v34 = v52;
    v55 = v52;
    v35 = __swift_project_boxed_opaque_existential_1(&v55, MEMORY[0x277CC9318]);
    v37 = *v35;
    v36 = v35[1];
    sub_214FCA120(v26, v27);
    sub_214FCA120(v34, *(&v34 + 1));
    sub_214FEE8FC(v37, v36);
    sub_214F7EDE4(v26, v27);
    result = __swift_destroy_boxed_opaque_existential_0(&v55);
    if (__OFSUB__(v51, 1))
    {
      __break(1u);
    }

    else
    {
      v38 = v58;
      v39 = v59;
      if (v47 == v51 - 1)
      {
        v40 = v49;
        sub_214FE8B94(v49, &v55);
        sub_214FE1228(v55, *(&v55 + 1));
        *&v55 = *v5;
        v41 = sub_2150A57E0();
        v60 = v33;

        WitnessTable = swift_getWitnessTable();
        sub_214FE7EC0(v38, v39, v41, WitnessTable, v53);
        sub_214F7EDE4(v38, v39);
        sub_214F7EDE4(v52, *(&v52 + 1));

        return (*(v48 + 8))(v40, v50);
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v55 = *v5;
        *v5 = 0x8000000000000000;
        v44 = v38;
        v45 = v49;
        sub_214FEC6A4(v44, v39, v49, isUniquelyReferenced_nonNull_native);
        sub_214F7EDE4(v52, *(&v52 + 1));
        *v5 = v55;
        (*(v48 + 8))(v45, v50);
        return (*(*(a2 - 8) + 56))(v53, 1, 1, a2);
      }
    }
  }

  else
  {
    v29 = *v15;
    v28 = v15[1];
    *&v55 = *v5;
    v30 = sub_2150A57E0();
    v54 = a3;

    v31 = swift_getWitnessTable();
    sub_214FE7EC0(v29, v28, v30, v31, v53);

    return sub_214F7EDE4(v29, v28);
  }

  return result;
}

uint64_t sub_214FE7EC0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[1] = a4;
  v21 = a5;
  v8 = sub_2150A57E0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[2] = a1;
  v20[3] = a2;
  sub_214FCA120(a1, a2);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (v16)
  {
    v17(v12, 0, 1, a3);
    v18 = *(v13 + 32);
    v18(v15, v12, a3);
    return (v18)(v21, v15, a3);
  }

  else
  {
    v17(v12, 1, 1, a3);
    (*(v9 + 8))(v12, v8);
    sub_2150A3500();
    swift_allocObject();
    sub_2150A34F0();
    sub_2150A34E0();
  }
}

uint64_t MessageChunking.Message.description.getter(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v2, a1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v4 = *v10;
    v8 = v10[1];
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    sub_2150A5B20();

    strcpy(v39, ".complete(t=");
    BYTE5(v39[1]) = 0;
    HIWORD(v39[1]) = -5120;
    v38 = *(a1 + 16);
    swift_getMetatypeMetadata();
    v26 = sub_2150A4B30();
    v21 = v27;
    MEMORY[0x2160617E0](v26);

    result = MEMORY[0x2160617E0](0x654C61746164202CLL, 0xEA00000000003D6ELL);
    v28 = v8 >> 62;
    if ((v8 >> 62) <= 1)
    {
      if (!v28)
      {
        v24 = BYTE6(v8);
LABEL_19:
        v38 = v24;
        v34 = sub_2150A6100();
        MEMORY[0x2160617E0](v34);

        MEMORY[0x2160617E0](41, 0xE100000000000000);
        sub_214F7EDE4(v4, v8);
        return v39[0];
      }

      goto LABEL_17;
    }

    v24 = 0;
    if (v28 != 2)
    {
      goto LABEL_19;
    }

    v30 = *(v4 + 16);
    v29 = *(v4 + 24);
    v31 = __OFSUB__(v29, v30);
    v24 = v29 - v30;
    if (!v31)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    if (v24 != 2)
    {
      v25 = 0;
      goto LABEL_23;
    }

    v33 = *(v21 + 16);
    v32 = *(v21 + 24);
    v31 = __OFSUB__(v32, v33);
    v25 = v32 - v33;
    if (!v31)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_17:
    LODWORD(v24) = HIDWORD(v4) - v4;
    if (!__OFSUB__(HIDWORD(v4), v4))
    {
      v24 = v24;
      goto LABEL_19;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43718);
  v13 = *(v10 + v12[12]);
  v14 = *(v10 + v12[16]);
  v15 = (v10 + v12[20]);
  v17 = *v15;
  v16 = v15[1];
  (*(v5 + 32))(v8, v10, v4);
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v39, ".partial(t=");
  HIDWORD(v39[1]) = -352321536;
  v38 = *(a1 + 16);
  swift_getMetatypeMetadata();
  v18 = sub_2150A4B30();
  MEMORY[0x2160617E0](v18);

  MEMORY[0x2160617E0](0x3D6469202CLL, 0xE500000000000000);
  sub_214FEF250(&qword_280C24850, MEMORY[0x277CC95F0]);
  v19 = sub_2150A6100();
  MEMORY[0x2160617E0](v19);

  result = MEMORY[0x2160617E0](0x3D716573202CLL, 0xE600000000000000);
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v21 = v17;
  v38 = v13 + 1;
  v22 = sub_2150A6100();
  MEMORY[0x2160617E0](v22);

  MEMORY[0x2160617E0](47, 0xE100000000000000);
  v38 = v14;
  v23 = sub_2150A6100();
  MEMORY[0x2160617E0](v23);

  result = MEMORY[0x2160617E0](0x4C6B6E756863202CLL, 0xEB000000003D6E65);
  v24 = v16 >> 62;
  a1 = v16;
  if ((v16 >> 62) > 1)
  {
    goto LABEL_13;
  }

  if (!v24)
  {
    v25 = BYTE6(v16);
LABEL_23:
    v38 = v25;
    v36 = sub_2150A6100();
    MEMORY[0x2160617E0](v36);

    MEMORY[0x2160617E0](41, 0xE100000000000000);
    sub_214F7EDE4(v21, a1);
    v35 = v39[0];
    (*(v5 + 8))(v8, v4);
    return v35;
  }

  LODWORD(v25) = HIDWORD(v17) - v17;
  if (!__OFSUB__(HIDWORD(v17), v17))
  {
    v25 = v25;
    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_214FE8650@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2150A3250();
    if (v10)
    {
      v11 = sub_2150A3270();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2150A3260();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2150A3250();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2150A3270();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2150A3260();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_214FE8880(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_214FEEAC8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_214F7EDE4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_214FE8650(v13, a3, a4, &v12);
  v10 = v4;
  sub_214F7EDE4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_214FE8A10(uint64_t a1)
{
  v2 = v1;
  v3 = sub_214FB18DC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_214FECEE8();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_214F40DE8(v5, v7);
  *v2 = v7;
  return v8;
}

double sub_214FE8AA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_214FB1B98(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_214FEDD50();
      v9 = v15;
    }

    v10 = *(v9 + 48);
    v11 = sub_2150A3750();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56) + 40 * v7;
    v13 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = *(v12 + 32);
    sub_214F412F4(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = -1;
  }

  return result;
}

double sub_214FE8B94@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_214FB198C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_214FEE26C();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_2150A3A00();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    *a2 = *(*(v9 + 56) + 16 * v7);
    sub_214F41954(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_2150C7210;
  }

  return result;
}

uint64_t sub_214FE8C70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43970);
  v35 = a2;
  result = sub_2150A5E90();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2150A64B0();
      sub_2150A4BB0();
      result = sub_2150A64E0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_214FE8F14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EC0);
  result = sub_2150A5E90();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_2150A5770();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_214FE9184(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DC8);
  v37 = a2;
  result = sub_2150A5E90();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_2150A64B0();
      sub_2150A4BB0();
      result = sub_2150A64E0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_214FE9444(uint64_t a1, int a2)
{
  v3 = v2;
  v41 = sub_2150A3E80();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43958);
  v39 = a2;
  result = sub_2150A5E90();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_2150A64B0();
      MEMORY[0x216063080](v24);
      result = sub_2150A64E0();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_214FE97A8(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v31 = a2;
  result = sub_2150A5E90();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      sub_2150A64B0();
      MEMORY[0x216063080](v21);
      result = sub_2150A64E0();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_214FE9A30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43940);
  v34 = a2;
  result = sub_2150A5E90();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2150A64B0();
      sub_2150A4BB0();
      result = sub_2150A64E0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_214FE9CD8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_2150A3A00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43160);
  v44 = a2;
  result = sub_2150A5E90();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_214FEF250(&qword_280C241B0, MEMORY[0x277CC95F0]);
      result = sub_2150A49A0();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_214FEA0C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA42768);
  v37 = a2;
  result = sub_2150A5E90();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v39 = *v24;
      v40 = *v22;
      v26 = v24[3];
      v38 = v24[2];
      if ((v37 & 1) == 0)
      {
      }

      sub_2150A64B0();
      sub_2150A4BB0();
      result = sub_2150A64E0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v39;
      v17[1] = v25;
      v17[2] = v38;
      v17[3] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_214FEA394(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v59 = sub_2150A3A00();
  v5 = *(v59 - 8);
  v6 = MEMORY[0x28223BE20](v59);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v51 - v8;
  v9 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F58);
  v66 = sub_2150A5E90();
  if (*(v15 + 16))
  {
    v61 = v12;
    v51 = v2;
    v16 = 0;
    v17 = *(v15 + 64);
    v53 = (v15 + 64);
    v18 = 1 << *(v15 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v17;
    v52 = (v18 + 63) >> 6;
    v55 = (v5 + 32);
    v54 = (v5 + 8);
    v21 = v66 + 64;
    v57 = v4;
    v56 = v15;
    v60 = v14;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v24 | (v16 << 6);
      v29 = *(v62 + 72);
      v30 = *(v15 + 48) + v29 * v28;
      if (v4)
      {
        sub_214FEF300(v30, v14, type metadata accessor for NoteEditActivityEvent.Parents);
        v65 = *(*(v15 + 56) + 8 * v28);
      }

      else
      {
        sub_214FEF298(v30, v14, type metadata accessor for NoteEditActivityEvent.Parents);
        v65 = *(*(v15 + 56) + 8 * v28);
      }

      sub_2150A64B0();
      v31 = v14;
      v32 = v61;
      sub_214FEF298(v31, v61, type metadata accessor for NoteEditActivityEvent.Parents);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v34 = *v32;
      if (EnumCaseMultiPayload == 1)
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B0);
        v36 = *(v35 + 64);
        v4 = *v55;
        v37 = v59;
        (*v55)(v64, v32 + *(v35 + 48), v59);
        v38 = v32 + v36;
        v39 = v58;
        v4(v58, v38, v37);
        MEMORY[0x216063080](1);
        sub_2150A5790();
        sub_214FEF250(&qword_280C241B0, MEMORY[0x277CC95F0]);
        v40 = v64;
        sub_2150A49B0();
        LOBYTE(v4) = v57;
        sub_2150A49B0();

        v41 = *v54;
        (*v54)(v39, v37);
        v42 = v37;
        v15 = v56;
        v41(v40, v42);
      }

      else
      {
        MEMORY[0x216063080](0);
        sub_2150A5790();
      }

      result = sub_2150A64E0();
      v43 = -1 << *(v66 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      v14 = v60;
      if (((-1 << v44) & ~*(v21 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v21 + 8 * v45);
          if (v49 != -1)
          {
            v22 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v44) & ~*(v21 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = v66;
      sub_214FEF300(v14, *(v66 + 48) + v29 * v22, type metadata accessor for NoteEditActivityEvent.Parents);
      *(*(v23 + 56) + 8 * v22) = v65;
      ++*(v23 + 16);
    }

    v25 = v16;
    result = v53;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v16 >= v52)
      {
        break;
      }

      v27 = v53[v16];
      ++v25;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v51;
      goto LABEL_37;
    }

    v50 = 1 << *(v15 + 32);
    v3 = v51;
    if (v50 >= 64)
    {
      bzero(v53, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v53 = -1 << v50;
    }

    *(v15 + 16) = 0;
  }

LABEL_37:
  *v3 = v66;
  return result;
}

uint64_t sub_214FEA9A0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EE8);
  v46 = a2;
  result = sub_2150A5E90();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v50 = v5;
    v42 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v43 = (v6 + 16);
    v44 = v6;
    v47 = (v6 + 32);
    v18 = result + 64;
    v45 = v9;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v26 = v23 | (v12 << 6);
      v27 = *(v9 + 48);
      v48 = *(v6 + 72);
      v28 = v27 + v48 * v26;
      v29 = 40 * v26;
      if (v46)
      {
        (*v47)(v49, v28, v50);
        v30 = *(v9 + 56) + v29;
        v31 = *(v30 + 32);
        v32 = *(v30 + 16);
        v51 = *v30;
        v52 = v32;
        v53 = v31;
      }

      else
      {
        (*v43)(v49, v28, v50);
        sub_214F43C14(*(v9 + 56) + v29, &v51, &qword_27CA436C0);
      }

      sub_214FEF250(&qword_280C241C8, MEMORY[0x277CC9260]);
      result = sub_2150A49A0();
      v33 = -1 << *(v11 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v6 = v44;
        v9 = v45;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v6 = v44;
      v9 = v45;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v47)(*(v11 + 48) + v48 * v19, v49, v50);
      v20 = *(v11 + 56) + 40 * v19;
      v21 = v51;
      v22 = v52;
      *(v20 + 32) = v53;
      *v20 = v21;
      *(v20 + 16) = v22;
      ++*(v11 + 16);
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v16 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_214FEADA4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EF8);
  v39 = a2;
  result = sub_2150A5E90();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_214FEF250(&qword_280C241C8, MEMORY[0x277CC9260]);
      result = sub_2150A49A0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_214FEB180(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_2150A3A00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42ED0);
  v43 = a2;
  result = sub_2150A5E90();
  v10 = result;
  if (*(v8 + 16))
  {
    v48 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v2;
    v40 = (v6 + 16);
    v41 = v8;
    v42 = v6;
    v45 = (v6 + 32);
    v17 = result + 64;
    v18 = v44;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v42 + 72) * v25;
      v46 = *(v42 + 72);
      v47 = v22;
      if (v43)
      {
        (*v45)(v18, v26, v48);
        v27 = (*(v8 + 56) + 16 * v25);
        v29 = *v27;
        v28 = v27[1];
      }

      else
      {
        (*v40)(v18, v26, v48);
        v30 = (*(v8 + 56) + 16 * v25);
        v29 = *v30;
        v28 = v30[1];
        sub_214FCA120(*v30, v28);
      }

      sub_214FEF250(&qword_280C241B0, MEMORY[0x277CC95F0]);
      result = sub_2150A49A0();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v18 = v44;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v18 = v44;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v10 + 48) + v46 * v19, v18, v48);
      v20 = (*(v10 + 56) + 16 * v19);
      *v20 = v29;
      v20[1] = v28;
      ++*(v10 + 16);
      v8 = v41;
      v15 = v47;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_214FEB568(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42F10);
  v33 = a2;
  result = sub_2150A5E90();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_214D72488(v24, v34);
      }

      else
      {
        sub_214F50074(v24, v34);
      }

      sub_2150A64B0();
      sub_2150A4BB0();
      result = sub_2150A64E0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_214D72488(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_214FEB820(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for PersistedActivityEvent();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B80);
  v40 = a2;
  result = sub_2150A5E90();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_214FEF300(v28, v41, type metadata accessor for PersistedActivityEvent);
      }

      else
      {
        sub_214FEF298(v28, v41, type metadata accessor for PersistedActivityEvent);
      }

      sub_2150A64B0();
      sub_2150A4BB0();
      result = sub_2150A64E0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_214FEF300(v41, *(v9 + 56) + v27 * v17, type metadata accessor for PersistedActivityEvent);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

id sub_214FEBB98(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_214FB18DC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_214FE8F14(v13, a3 & 1);
      v8 = sub_214FB18DC(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_214FEF0BC();
        result = sub_2150A63E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_214FECEE8();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

uint64_t sub_214FEBD18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_214FB1920(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_214FED1C4();
      goto LABEL_7;
    }

    sub_214FE9444(v13, a3 & 1);
    v24 = sub_214FB1920(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for CloudSessionPhase(0);
    result = sub_2150A63E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_2150A3E80();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_214FEC9D0(v10, a2, a1, v16);
}

unint64_t sub_214FEBE94(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v10 = *v4;
  result = sub_214FB1920(a2);
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_214FE97A8(v16, a3 & 1, a4);
      result = sub_214FB1920(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        type metadata accessor for CloudSessionPhase(0);
        result = sub_2150A63E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_214FED42C(a4);
      result = v19;
    }
  }

  v21 = *v6;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a2;
    *(v21[7] + 8 * result) = a1;
    v22 = v21[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v15)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

uint64_t sub_214FEC004(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_214F30094(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_214FE9A30(v16, a4 & 1);
      v11 = sub_214F30094(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2150A63E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_214FED578();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_214FEC180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_214F30094(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_214FE9184(v18, a5 & 1);
      v13 = sub_214F30094(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_2150A63E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_214FED04C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_214FEC308(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2150A3750();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_214FB1B98(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_214FEDD50();
      goto LABEL_7;
    }

    sub_214FEA9A0(v17, a3 & 1);
    v23 = sub_214FB1B98(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_214FECACC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2150A63E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 40 * v14;

  return sub_214FEF1E0(a1, v21);
}

uint64_t sub_214FEC4D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2150A3750();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_214FB1B98(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_214FEDFEC();
      goto LABEL_7;
    }

    sub_214FEADA4(v17, a3 & 1);
    v22 = sub_214FB1B98(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_214FECB98(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2150A63E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_214FEC6A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v30 = a1;
  v9 = sub_2150A3A00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_214FB198C(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_214FEE26C();
      goto LABEL_9;
    }

    sub_214FEB180(v18, a4 & 1);
    v21 = sub_214FB198C(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_2150A63E0();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v30;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    v26 = *v25;
    v27 = v25[1];
    *v25 = v30;
    v25[1] = a2;

    return sub_214F7EDE4(v26, v27);
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_214FECC50(v15, v12, v23, a2, v24);
  }
}

_OWORD *sub_214FEC880(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_214F30094(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_214FEE4F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_214FEB568(v16, a4 & 1);
    v11 = sub_214F30094(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2150A63E0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_214D72488(a1, v22);
  }

  else
  {
    sub_214FECD10(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_214FEC9D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_2150A3E80();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_214FECA7C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_214FECACC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2150A3750();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 40 * a1;
  *(v11 + 32) = *(a3 + 32);
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
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

uint64_t sub_214FECB98(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2150A3750();
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

uint64_t sub_214FECC50(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_2150A3A00();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_214FECD10(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_214D72488(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_214FECD7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43970);
  v2 = *v0;
  v3 = sub_2150A5E80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_214FECEE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EC0);
  v2 = *v0;
  v3 = sub_2150A5E80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_214FED04C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DC8);
  v2 = *v0;
  v3 = sub_2150A5E80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_214FED1C4()
{
  v1 = v0;
  v29 = sub_2150A3E80();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43958);
  v3 = *v0;
  v4 = sub_2150A5E80();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_214FED42C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_2150A5E80();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_214FED578()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43940);
  v2 = *v0;
  v3 = sub_2150A5E80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_214FED6E8()
{
  v1 = v0;
  v35 = sub_2150A3A00();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43160);
  v3 = *v0;
  v4 = sub_2150A5E80();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_214FED974()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA42768);
  v2 = *v0;
  v3 = sub_2150A5E80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v26 = v22[2];
        v25 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v20;
        v27[1] = v21;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v26;
        v28[3] = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_214FEDB08()
{
  v1 = v0;
  v2 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F58);
  v4 = *v0;
  v5 = sub_2150A5E80();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_214FEF298(*(v4 + 48) + v21, v27, type metadata accessor for NoteEditActivityEvent.Parents);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        sub_214FEF300(v20, *(v29 + 48) + v21, type metadata accessor for NoteEditActivityEvent.Parents);
        *(*(v23 + 56) + 8 * v19) = v22;
        result = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_214FEDD50()
{
  v1 = v0;
  v2 = sub_2150A3750();
  v3 = *(v2 - 8);
  v34 = v2;
  v35 = v3;
  MEMORY[0x28223BE20](v2);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EE8);
  v5 = *v0;
  v6 = sub_2150A5E80();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v35 + 32;
    v32 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v37 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v22 = v34;
        v21 = v35;
        v23 = *(v35 + 72) * v20;
        v24 = v33;
        (*(v35 + 16))(v33, *(v5 + 48) + v23, v34);
        v20 *= 40;
        sub_214F43C14(*(v5 + 56) + v20, v38, &qword_27CA436C0);
        v25 = v36;
        result = (*(v21 + 32))(*(v36 + 48) + v23, v24, v22);
        v26 = *(v25 + 56) + v20;
        v27 = v38[0];
        v28 = v38[1];
        *(v26 + 32) = v39;
        *v26 = v27;
        *(v26 + 16) = v28;
        v15 = v37;
      }

      while (v37);
    }

    v18 = v11;
    v7 = v36;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v37 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_214FEDFEC()
{
  v1 = v0;
  v33 = sub_2150A3750();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EF8);
  v3 = *v0;
  v4 = sub_2150A5E80();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_214FEE26C()
{
  v1 = v0;
  v2 = sub_2150A3A00();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42ED0);
  v5 = *v0;
  v6 = sub_2150A5E80();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 16 * v20;
        v27 = (v25 + 16 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = (*(v30 + 56) + v26);
        v5 = v36;
        *v31 = v28;
        v31[1] = v29;
        result = sub_214FCA120(v28, v29);
        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_214FEE4F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42F10);
  v2 = *v0;
  v3 = sub_2150A5E80();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_214F50074(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_214D72488(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_214FEE69C()
{
  v1 = v0;
  v2 = type metadata accessor for PersistedActivityEvent();
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B80);
  v4 = *v0;
  v5 = sub_2150A5E80();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_214FEF298(v21 + v27, v32, type metadata accessor for PersistedActivityEvent);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_214FEF300(v26, *(v28 + 56) + v27, type metadata accessor for PersistedActivityEvent);

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_214FEE8FC(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_2150A3780();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_214FEEA34(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_214FEEA34(v3, v4);
  }

  return sub_2150A3780();
}

uint64_t sub_214FEEA34(uint64_t a1, uint64_t a2)
{
  result = sub_2150A3250();
  if (!result || (result = sub_2150A3270(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2150A3260();
      return sub_2150A3780();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_214FEEAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2150A3250();
  v11 = result;
  if (result)
  {
    result = sub_2150A3270();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2150A3260();
  sub_214FE8650(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_214FEEB80(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_214FCA120(a3, a4);
          return sub_214FE8880(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_214FEED30()
{
  result = qword_27CA43720;
  if (!qword_27CA43720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43720);
  }

  return result;
}

unint64_t sub_214FEED84()
{
  result = qword_27CA43728[0];
  if (!qword_27CA43728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA43728);
  }

  return result;
}

void sub_214FEEDE8()
{
  sub_214FEEE5C();
  if (v0 <= 0x3F)
  {
    sub_214FEEE8C(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_214FEEE5C()
{
  result = qword_27CA437B0;
  if (!qword_27CA437B0)
  {
    result = MEMORY[0x277CC9318];
    atomic_store(MEMORY[0x277CC9318], &qword_27CA437B0);
  }

  return result;
}

void sub_214FEEE8C(uint64_t a1)
{
  if (!qword_27CA437B8[0])
  {
    MEMORY[0x28223BE20](a1);
    sub_2150A3A00();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, qword_27CA437B8);
    }
  }
}

unint64_t sub_214FEF0BC()
{
  result = qword_280C24528;
  if (!qword_280C24528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C24528);
  }

  return result;
}

uint64_t sub_214FEF108(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214FEF170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FEF1E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FEF250(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214FEF298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214FEF300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void static DispatchTimeInterval.timeInterval(_:)(void *a1@<X8>, double a2@<D0>)
{
  v3 = a2 * 1000000000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *a1 = v3;
  v4 = *MEMORY[0x277D85168];
  v5 = sub_2150A43F0();
  v6 = *(*(v5 - 8) + 104);

  v6(a1, v4, v5);
}

uint64_t Command.run()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_214FEF4A4, 0, 0);
}

uint64_t sub_214FEF4A4()
{
  v1 = v0[2];
  v2 = *(v0[4] + 32);
  v1[3] = swift_getAssociatedTypeWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v8 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_214FEF5EC;
  v5 = v0[4];
  v6 = v0[3];

  return v8(boxed_opaque_existential_1, v6, v5);
}

uint64_t sub_214FEF5EC()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214FEF720, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214FEF720()
{
  __swift_deallocate_boxed_opaque_existential_0(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Commands.commandNames.getter(uint64_t a1, uint64_t a2)
{
  v9[5] = (*(a2 + 16))();
  v9[2] = a1;
  v9[3] = a2;
  v4 = sub_2150A4FD0();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_214F86288(sub_214FEF864, v9, v4, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  return v7;
}

uint64_t sub_214FEF864@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(*(v1 + 24) + 8) + 32))(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static Commands<>.allCommands.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_2150A5B40();
  swift_getAssociatedConformanceWitness();
  return sub_2150A4FE0();
}

uint64_t Commands<>.name.getter()
{
  sub_2150A4DF0();
  v0 = sub_2150A4D30();
  v2 = sub_214FBDA8C(v0, v1);

  return v2;
}

uint64_t dispatch thunk of AnyCommand.run()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214F53FB0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of Command.run()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214F557A8;

  return v9(a1, a2, a3);
}

void __swiftcall ICQueryType.filterSelection(managedObjectContext:accountObjectID:)(ICFilterSelection *__return_ptr retstr, NSManagedObjectContext managedObjectContext, NSManagedObjectID accountObjectID)
{
  isa = accountObjectID.super.isa;
  v101 = managedObjectContext.super.isa;
  v98 = type metadata accessor for ICQueryType.DateRange(0);
  v4 = MEMORY[0x28223BE20](v98);
  v95 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v94 = &v94 - v6;
  v7 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v97 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v96 = &v94 - v10;
  v12 = MEMORY[0x277D84F90];
  v106 = *v3;
  v11 = v106;
  v107 = MEMORY[0x277D84F90];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
  inited = swift_initStackObject();
  v104 = xmmword_2150C25D0;
  *(inited + 16) = xmmword_2150C25D0;
  *(inited + 32) = v11;

  sub_214FF2398(inited, &v107);
  swift_setDeallocating();
  sub_214FF323C(inited + 32);
  v16 = v107;
  v107 = v12;
  v17 = *(v16 + 2);
  v99 = v16;
  if (v17)
  {
    v103 = v13;
    v18 = (v16 + 32);
    v102 = MEMORY[0x277D84F90];
    while (1)
    {
      v22 = *v18++;
      v21 = v22;
      if (v22 <= 4)
      {
        if (v21 <= 1)
        {
          if (!v21)
          {
            v106 = v11;
            v15.value.super.isa = v101;
            ICQueryType.tagSelection(managedObjectContext:)(0, v15);
            v49 = v48;
            if (![v48 isNonEmpty])
            {

              goto LABEL_8;
            }

            v19 = v49;
            goto LABEL_4;
          }

          if (v21 == 1)
          {
            v105 = v11;
            v35 = swift_initStackObject();
            *(v35 + 16) = v104;
            *(v35 + 32) = v11;

            sub_214FF10B0(1, v35, &v106);
            swift_setDeallocating();
            sub_214FF323C(v35 + 32);
            v36 = v106;
            if ((~v106 & 0xF000000000000007) != 0)
            {
              if (((v106 >> 59) & 0x1E | (v106 >> 2) & 1) == 9)
              {
                v37 = swift_projectBox();
                v38 = v96;
                sub_214FF3290(v37, v96, type metadata accessor for ICQueryType.RelativeDateRange);
                sub_214F94748(v36);
                v39 = *v38;
                v40 = v39 != 5;
                v41 = 7;
                if (v39 == 5)
                {
                  v41 = 5;
                }

                v42 = 3;
                if (v39 != 3)
                {
                  v42 = 4;
                }

                if (*v38 <= 4u)
                {
                  v40 = 0;
                  v41 = v42;
                }

                v43 = 2;
                if (v39 == 1)
                {
                  v43 = 1;
                }

                if (!*v38)
                {
                  v43 = *v38;
                }

                v44 = *v38 > 2u && v40;
                if (*v38 <= 2u)
                {
                  v45 = v43;
                }

                else
                {
                  v45 = v41;
                }

                v46 = [objc_allocWithZone(ICDateCreatedFilterTypeSelection) initWithSelectionType_];
                if (!v44)
                {
                  goto LABEL_136;
                }

                if ((v38[16] & 1) == 0)
                {
                  goto LABEL_81;
                }

                goto LABEL_49;
              }

              sub_214F94748(v106);
            }

            v105 = v11;
            v72 = swift_initStackObject();
            *(v72 + 16) = v104;
            *(v72 + 32) = v11;

            sub_214FF10B0(1, v72, &v106);
            swift_setDeallocating();
            sub_214FF323C(v72 + 32);
            v73 = v106;
            if ((~v106 & 0xF000000000000007) != 0)
            {
              if (((v106 >> 59) & 0x1E | (v106 >> 2) & 1) != 8)
              {
                goto LABEL_122;
              }

              v74 = swift_projectBox();
              v75 = v94;
              sub_214FF3290(v74, v94, type metadata accessor for ICQueryType.DateRange);
              sub_214F94748(v73);
              v76 = ICDateCreatedFilterTypeSelection;
              goto LABEL_119;
            }
          }
        }

        else
        {
          if (v21 != 2)
          {
            if (v21 == 3)
            {
              v106 = v11;
              v30 = 3;
            }

            else
            {
              if (v21 != 4)
              {
                goto LABEL_8;
              }

              v106 = v11;
              v30 = 4;
            }

            v15.value.super.isa = ICQueryType.participantsSelection(filterType:managedObjectContext:accountObjectID:)(v30, v101, isa);
            if (!v15.value.super.isa)
            {
              goto LABEL_8;
            }

            v19 = v15.value.super.isa;
            goto LABEL_4;
          }

          v105 = v11;
          v54 = swift_initStackObject();
          *(v54 + 16) = v104;
          *(v54 + 32) = v11;

          sub_214FF10B0(2, v54, &v106);
          swift_setDeallocating();
          sub_214FF323C(v54 + 32);
          v55 = v106;
          if ((~v106 & 0xF000000000000007) != 0)
          {
            if (((v106 >> 59) & 0x1E | (v106 >> 2) & 1) == 0xF)
            {
              v56 = swift_projectBox();
              v38 = v97;
              sub_214FF3290(v56, v97, type metadata accessor for ICQueryType.RelativeDateRange);
              sub_214F94748(v55);
              v57 = *v38;
              v58 = v57 != 5;
              v59 = 7;
              if (v57 == 5)
              {
                v59 = 5;
              }

              v60 = 3;
              if (v57 != 3)
              {
                v60 = 4;
              }

              if (*v38 <= 4u)
              {
                v58 = 0;
                v59 = v60;
              }

              v61 = 2;
              if (v57 == 1)
              {
                v61 = 1;
              }

              if (!*v38)
              {
                v61 = *v38;
              }

              v62 = *v38 > 2u && v58;
              if (*v38 <= 2u)
              {
                v63 = v61;
              }

              else
              {
                v63 = v59;
              }

              v46 = [objc_allocWithZone(ICDateEditedFilterTypeSelection) initWithSelectionType_];
              if (!v62)
              {
                goto LABEL_136;
              }

              if ((v38[16] & 1) == 0)
              {
LABEL_81:
                v47 = sub_2150A5350();
LABEL_82:
                [v46 setRelativeRangeAmount_];

                v64 = v38[1];
                if (v64 > 2)
                {
                  if (v64 == 3)
                  {
                    v66 = 4;
                    goto LABEL_135;
                  }

                  if (v64 == 4)
                  {
                    v66 = 5;
                    goto LABEL_135;
                  }
                }

                else
                {
                  v65 = 3;
                  if (v64 == 1)
                  {
                    v65 = 2;
                  }

                  if (v38[1])
                  {
                    v66 = v65;
                  }

                  else
                  {
                    v66 = 1;
                  }

LABEL_135:
                  [v46 setRelativeRangeSelectionType_];
                }

LABEL_136:
                v90 = v46;
                MEMORY[0x216061A60]();
                if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_2150A4F10();
                }

                sub_2150A4F70();

                sub_214FF32F8(v38, type metadata accessor for ICQueryType.RelativeDateRange);
                goto LABEL_139;
              }

LABEL_49:
              v47 = 0;
              goto LABEL_82;
            }

            sub_214F94748(v106);
          }

          v105 = v11;
          v80 = swift_initStackObject();
          *(v80 + 16) = v104;
          *(v80 + 32) = v11;

          sub_214FF10B0(2, v80, &v106);
          swift_setDeallocating();
          sub_214FF323C(v80 + 32);
          v73 = v106;
          if ((~v106 & 0xF000000000000007) != 0)
          {
            if (((v106 >> 59) & 0x1E | (v106 >> 2) & 1) != 0xE)
            {
LABEL_122:
              v15.value.super.isa = v73;
LABEL_123:
              sub_214F94748(v15.value.super.isa);
              goto LABEL_8;
            }

            v81 = swift_projectBox();
            v75 = v95;
            sub_214FF3290(v81, v95, type metadata accessor for ICQueryType.DateRange);
            sub_214F94748(v73);
            v76 = ICDateEditedFilterTypeSelection;
LABEL_119:
            v82 = [objc_allocWithZone(v76) initWithSelectionType_];
            v83 = sub_2150A38F0();
            v84 = sub_2150A38F0();
            [v82 setSpecificDateRangeFrom:v83 to:v84];

            v85 = v82;
            MEMORY[0x216061A60]();
            if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2150A4F10();
            }

            sub_2150A4F70();

            sub_214FF32F8(v75, type metadata accessor for ICQueryType.DateRange);
LABEL_7:
            v102 = v107;
          }
        }
      }

      else
      {
        if (v21 > 7)
        {
          switch(v21)
          {
            case 8:
              v105 = v11;
              v70 = swift_initStackObject();
              *(v70 + 16) = v104;
              *(v70 + 32) = v11;

              sub_214FF10B0(8, v70, &v106);
              swift_setDeallocating();
              sub_214FF323C(v70 + 32);
              v15.value.super.isa = v106;
              if ((~v106 & 0xF000000000000007) == 0)
              {
                goto LABEL_8;
              }

              if (((v106 >> 59) & 0x1E | (v106 >> 2) & 1) != 0x14)
              {
                goto LABEL_123;
              }

              v71 = *((v106 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
              sub_214F94748(v106);
              v33 = ~v71;
              v34 = ICQuickNotesFilterTypeSelection;
              break;
            case 9:
              v105 = v11;
              v52 = swift_initStackObject();
              *(v52 + 16) = v104;
              *(v52 + 32) = v11;

              sub_214FF10B0(9, v52, &v106);
              swift_setDeallocating();
              sub_214FF323C(v52 + 32);
              v15.value.super.isa = v106;
              if ((~v106 & 0xF000000000000007) == 0)
              {
                goto LABEL_8;
              }

              if (((v106 >> 59) & 0x1E | (v106 >> 2) & 1) != 0x11)
              {
                goto LABEL_123;
              }

              v53 = *((v106 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
              sub_214F94748(v106);
              v33 = ~v53;
              v34 = ICPinnedNotesFilterTypeSelection;
              break;
            case 10:
              v105 = v11;
              v31 = swift_initStackObject();
              *(v31 + 16) = v104;
              *(v31 + 32) = v11;

              sub_214FF10B0(10, v31, &v106);
              swift_setDeallocating();
              sub_214FF323C(v31 + 32);
              v15.value.super.isa = v106;
              if ((~v106 & 0xF000000000000007) == 0)
              {
                goto LABEL_8;
              }

              if (((v106 >> 59) & 0x1E | (v106 >> 2) & 1) != 0x10)
              {
                goto LABEL_123;
              }

              v32 = *((v106 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
              sub_214F94748(v106);
              v33 = ~v32;
              v34 = ICLockedNotesFilterTypeSelection;
              break;
            default:
              goto LABEL_8;
          }

          [objc_allocWithZone(v34) initWithInclusionType_];
          goto LABEL_101;
        }

        if (v21 == 5)
        {
          v105 = v11;
          v67 = swift_initStackObject();
          *(v67 + 16) = v104;
          *(v67 + 32) = v11;

          sub_214FF10B0(5, v67, &v106);
          swift_setDeallocating();
          sub_214FF323C(v67 + 32);
          if ((~v106 & 0xF000000000000007) != 0)
          {
            if (((v106 >> 59) & 0x1E | (v106 >> 2) & 1) == 5)
            {
              v68 = *((v106 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
              sub_214F94748(v106);
              if (v68)
              {
                v69 = 0;
              }

              else
              {
                v69 = 3;
              }

              [objc_allocWithZone(ICChecklistsFilterTypeSelection) initWithSelectionType_];
LABEL_94:
              MEMORY[0x216061A60]();
              if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_2150A4F10();
              }

              sub_2150A4F70();
LABEL_139:
              v102 = v107;
              goto LABEL_8;
            }

            sub_214F94748(v106);
          }

          v105 = v11;
          v86 = swift_initStackObject();
          *(v86 + 16) = v104;
          *(v86 + 32) = v11;

          sub_214FF10B0(5, v86, &v106);
          swift_setDeallocating();
          sub_214FF323C(v86 + 32);
          if ((~v106 & 0xF000000000000007) != 0 && (v87 = (v106 >> 59) & 0x1E | (v106 >> 2) & 1, sub_214F94748(v106), v87 == 6))
          {
            [objc_allocWithZone(ICChecklistsFilterTypeSelection) initWithSelectionType_];
          }

          else
          {
            v105 = v11;
            v88 = swift_initStackObject();
            *(v88 + 16) = v104;
            *(v88 + 32) = v11;

            sub_214FF10B0(5, v88, &v106);
            swift_setDeallocating();
            sub_214FF323C(v88 + 32);
            if ((~v106 & 0xF000000000000007) == 0)
            {
              goto LABEL_8;
            }

            v89 = (v106 >> 59) & 0x1E | (v106 >> 2) & 1;
            sub_214F94748(v106);
            if (v89 != 7)
            {
              goto LABEL_8;
            }

            [objc_allocWithZone(ICChecklistsFilterTypeSelection) initWithSelectionType_];
          }

LABEL_101:
          MEMORY[0x216061A60]();
          if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2150A4F10();
          }

          sub_2150A4F70();
          goto LABEL_7;
        }

        if (v21 != 6)
        {
          if (v21 != 7)
          {
            goto LABEL_8;
          }

          v106 = v11;
          v23 = swift_initStackObject();
          *(v23 + 16) = v104;
          *(v23 + 32) = v11;

          v24 = sub_214FF16C0(v23, 0);
          v26 = v25;
          swift_setDeallocating();
          sub_214FF323C(v23 + 32);
          if (!v26)
          {
            goto LABEL_8;
          }

          v27 = objc_allocWithZone(ICFoldersFilterTypeSelection);

          v28 = sub_2150A4EB0();

          v29 = [v27 initWithManagedObjectContext:v101 inclusionType:v24 folderIdentifiers:v28];

          v19 = v29;
LABEL_4:
          v20 = v19;
          MEMORY[0x216061A60]();
          if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2150A4F10();
          }

          sub_2150A4F70();

          goto LABEL_7;
        }

        v105 = v11;
        v50 = swift_initStackObject();
        *(v50 + 16) = v104;
        *(v50 + 32) = v11;

        sub_214FF10B0(6, v50, &v106);
        swift_setDeallocating();
        sub_214FF323C(v50 + 32);
        if ((~v106 & 0xF000000000000007) != 0)
        {
          if (((v106 >> 59) & 0x1E | (v106 >> 2) & 1) == 4)
          {
            v51 = *((v106 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            sub_214F94748(v106);
            [objc_allocWithZone(ICAttachmentsFilterTypeSelection) initWithAttachmentSection_];
            goto LABEL_94;
          }

          sub_214F94748(v106);
        }

        v105 = v11;
        v77 = swift_initStackObject();
        *(v77 + 16) = v104;
        *(v77 + 32) = v11;

        sub_214FF10B0(6, v77, &v106);
        swift_setDeallocating();
        sub_214FF323C(v77 + 32);
        v15.value.super.isa = v106;
        if ((~v106 & 0xF000000000000007) != 0)
        {
          if (((v106 >> 59) & 0x1E | (v106 >> 2) & 1) != 3)
          {
            goto LABEL_123;
          }

          v78 = *((v106 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_214F94748(v106);
          if (v78)
          {
            v79 = 1;
          }

          else
          {
            v79 = 9;
          }

          [objc_allocWithZone(ICAttachmentsFilterTypeSelection) initWithSelectionType_];
          goto LABEL_101;
        }
      }

LABEL_8:
      if (!--v17)
      {
        goto LABEL_141;
      }
    }
  }

  v102 = v12;
LABEL_141:

  v106 = v11;
  v91 = sub_214FF18A8();
  v92 = objc_allocWithZone(ICFilterSelection);
  sub_214D55670(0, &qword_27CA43978);
  v93 = sub_2150A4EB0();

  [v92 initWithFilterTypeSelections:v93 joinOperator:v91];
}

void __swiftcall ICQueryType.tagSelection(managedObjectContext:)(ICTagSelection *__return_ptr retstr, NSManagedObjectContext_optional managedObjectContext)
{
  isa = managedObjectContext.value.super.isa;
  v4 = *v2;
  v5 = [objc_allocWithZone(ICTagSelection) initWithManagedObjectContext_];
  if (isa)
  {
    v24 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    *(inited + 32) = v4;

    v7 = isa;
    sub_214FF19EC(inited, v25);
    swift_setDeallocating();
    sub_214FF323C(inited + 32);
    v8 = v25[0];
    if ((~v25[0] & 0xF000000000000007) != 0)
    {
      [v5 setMode_];
      v24 = v8;
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_2150C25D0;
      *(v9 + 32) = v8;

      sub_214FF19EC(v9, v25);
      swift_setDeallocating();
      sub_214FF323C(v9 + 32);
      if ((~v25[0] & 0xF000000000000007) != 0)
      {
        v10 = v25[1];
        sub_214F94748(v25[0]);
      }

      else
      {
        v10 = 1;
      }

      v11 = [v5 setTagOperator_];
      v25[0] = v8;
      v24 = sub_214FF1DD4(v11);
      v12 = v7;

      v14 = sub_214FF3358(v13, v12, &v24);

      sub_214F84524(v14);

      v15 = v24;
      sub_214D55670(0, &qword_27CA44A80);
      sub_214FC7854();
      v16 = sub_2150A52D0();
      [v5 setIncludedObjectIDs_];

      sub_214F8448C(v15);

      v17 = sub_2150A52D0();

      [v5 setUnresolvedIncludedTagIdentifiers_];

      v25[0] = v8;
      v24 = sub_214FF1FB4();
      v18 = v12;

      v20 = sub_214FF3358(v19, v18, &v24);

      sub_214F84524(v20);

      v21 = v24;
      v22 = sub_2150A52D0();
      [v5 setExcludedObjectIDs_];

      sub_214F8448C(v21);

      v23 = sub_2150A52D0();

      [v5 setUnresolvedExcludedTagIdentifiers_];

      sub_214F94748(v8);
    }

    else
    {
    }
  }
}

uint64_t sub_214FF10B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result;
    v6 = (a2 + 32);
    while (2)
    {
      v8 = *v6++;
      v7 = v8;
      switch((v8 >> 59) & 0x1E | (v8 >> 2) & 1)
      {
        case 0uLL:
          goto LABEL_21;
        case 1uLL:
          v11 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2150C25D0;
          *(inited + 32) = v11;

          sub_214FF10B0(&v15, v5, inited);
          swift_setDeallocating();
          sub_214FF323C(inited + 32);
          v13 = v15;
          v14 = ~v15 & 0xF000000000000007;

          if (!v14)
          {
            goto LABEL_4;
          }

          *a3 = v13;
          return result;
        case 2uLL:
          v7 &= 0xFFFFFFFFFFFFFFBuLL;
LABEL_21:
          v9 = *(v7 + 16);

          sub_214FF10B0(&v15, v5, v9);

          v10 = v15;
          if ((~v15 & 0xF000000000000007) != 0)
          {
            goto LABEL_30;
          }

          goto LABEL_4;
        case 3uLL:
        case 4uLL:
          if (v5 == 6)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 5uLL:
        case 6uLL:
        case 7uLL:
          if (v5 == 5)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 8uLL:
        case 9uLL:
          if (v5 == 1)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 0xBuLL:
          if (v5 == 7)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 0xCuLL:
        case 0xDuLL:
          if (v5 != 4)
          {
            goto LABEL_4;
          }

          goto LABEL_28;
        case 0xEuLL:
        case 0xFuLL:
          if (v5 == 2)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 0x10uLL:
          if (v5 == 10)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 0x11uLL:
          if (v5 == 9)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 0x12uLL:
        case 0x13uLL:
          if (v5 == 3)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 0x14uLL:
          if (v5 != 8)
          {
            goto LABEL_4;
          }

LABEL_28:
          *a3 = v7;

        default:
LABEL_4:
          if (--v4)
          {
            continue;
          }

          goto LABEL_29;
      }
    }
  }

LABEL_29:
  v10 = 0xF000000000000007;
LABEL_30:
  *a3 = v10;
  return result;
}

id ICQueryType.participantsSelection(filterType:managedObjectContext:accountObjectID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  if (a1 == 3)
  {
    v6 = off_278192F58;
LABEL_5:
    v7 = [objc_allocWithZone(*v6) initWithManagedObjectContext:a2 accountObjectID:a3];
    v31[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    *(inited + 32) = v5;

    v9 = sub_214FF21E0(inited, a1);
    v11 = v10;
    swift_setDeallocating();
    sub_214FF323C(inited + 32);
    if (v11)
    {
      if (v11[2] != 1 || v9 != 1)
      {
        goto LABEL_34;
      }

      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
        goto LABEL_34;
      }

      v14 = v13;
      v16 = v11[4];
      v15 = v11[5];

      v17 = v7;
      v18 = [v14 currentUserID];
      if (v18)
      {
        v19 = v18;
        v20 = sub_2150A4AD0();
        v22 = v21;

        if (v15)
        {
          if (v22)
          {
            if (v16 == v20 && v22 == v15)
            {

LABEL_38:

              [v14 setSelectionType_];

              return v7;
            }

            v30 = sub_2150A6270();

            if (v30)
            {
              goto LABEL_38;
            }

            goto LABEL_33;
          }
        }

        else if (!v22)
        {
          goto LABEL_38;
        }
      }

      else if (!v15)
      {
        goto LABEL_38;
      }

LABEL_33:

LABEL_34:
      [v7 setSelectionType_];
      [v7 setJoinOperator_];
      sub_214F8448C(v11);

      v28 = sub_2150A52D0();

      [v7 setParticipantUserIDs_];

      goto LABEL_35;
    }

    if (a1 == 4)
    {
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_2150C25D0;
      *(v23 + 32) = v5;

      sub_214FF10B0(4, v23, v31);
      swift_setDeallocating();
      sub_214FF323C(v23 + 32);
      v24 = v31[0];
      if ((~v31[0] & 0xF000000000000007) != 0)
      {
        if (((v31[0] >> 59) & 0x1E | (LODWORD(v31[0]) >> 2) & 1) == 0xC)
        {
LABEL_22:
          v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_214F94748(v24);
          if (v25)
          {
            v26 = 1;
          }

          else
          {
            v26 = 3;
          }

          [v7 setSelectionType_];
          goto LABEL_35;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_2150C25D0;
      *(v27 + 32) = v5;

      sub_214FF10B0(3, v27, v31);
      swift_setDeallocating();
      sub_214FF323C(v27 + 32);
      v24 = v31[0];
      if ((~v31[0] & 0xF000000000000007) != 0)
      {
        if (((v31[0] >> 59) & 0x1E | (LODWORD(v31[0]) >> 2) & 1) == 0x12)
        {
          goto LABEL_22;
        }

LABEL_28:
        sub_214F94748(v24);
      }
    }

LABEL_35:

    return v7;
  }

  if (a1 == 4)
  {
    v6 = off_278192DD0;
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_214FF16C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = (a1 + 32);
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    v7 = (v6 >> 59) & 0x1E | (v6 >> 2) & 1;
    if (v7)
    {
      break;
    }

    v10 = sub_214FF16C0(v13, a2);
    v15 = v14;

    if (v15)
    {
      return v10;
    }

LABEL_4:
    if (!--v2)
    {
      return 0;
    }
  }

  if (v7 == 1)
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    *(inited + 32) = v8;

    v10 = sub_214FF16C0(inited, 1);
    v12 = v11;
    swift_setDeallocating();
    sub_214FF323C(inited + 32);

    if (v12)
    {
      return v10;
    }

    goto LABEL_4;
  }

  if (v7 != 2)
  {
    goto LABEL_4;
  }

  v17 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

  if (*(sub_214FF2D64(v18) + 16) != *(v17 + 16))
  {

    a2 = sub_214FF16C0(v17, a2);
  }

  return a2;
}

uint64_t sub_214FF18A8()
{
  if ((*v0 >> 59) & 0x1E | (*v0 >> 2) & 1)
  {
    return 0;
  }

  v2 = *(*v0 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0xF000000000000007;
  do
  {
    while (1)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = *(v2 + 32 + 8 * v5);
      v8 = (v7 >> 59) & 0x1E | (v7 >> 2) & 1;
      result = v7;
      if (!v8 || v8 == 2)
      {

        result = sub_214F94748(v6);
        v6 = v7;
        break;
      }

      if (v8 != 10)
      {
        break;
      }

      v4 = 1;
      if (v3 - 1 == v5++)
      {

        goto LABEL_15;
      }
    }

    ++v5;
  }

  while (v3 != v5);

  if ((v4 & 1) == 0)
  {
    sub_214F94748(v6);
    return 0;
  }

LABEL_15:
  if ((~v6 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  sub_214F94748(v6);
  return ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 2;
}

uint64_t sub_214FF19EC@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(result + 16);
  if (!v2)
  {
    v16 = 0;
    v5 = 0xF000000000000007;
    goto LABEL_32;
  }

  v17 = a2;
  v3 = (result + 32);
  while (1)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = (v6 >> 59) & 0x1E | (v6 >> 2) & 1;
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v10 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        if (!*(v10 + 16))
        {
          goto LABEL_12;
        }

        v11 = *(v10 + 32);
        v4 = (v11 >> 59) & 0x1E;
        if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) == 1)
        {
          v4 = (*((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10) >> 59) & 0x1ELL;
        }

        if (v4 == 22)
        {

          v16 = 2;
          goto LABEL_31;
        }

        sub_214FF19EC(&v18, v10);

        v5 = v18;
        if ((~v18 & 0xF000000000000007) != 0)
        {
          goto LABEL_27;
        }

        goto LABEL_11;
      }

      if ((v7 - 22) < 2)
      {

        v16 = 1;
        goto LABEL_31;
      }

      goto LABEL_12;
    }

    if (!v7)
    {
      break;
    }

    if (v7 == 1)
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2150C25D0;
      *(inited + 32) = v8;

      sub_214FF19EC(&v18, inited);
      swift_setDeallocating();
      sub_214FF323C(inited + 32);
      v5 = v18;
      if ((~v18 & 0xF000000000000007) != 0)
      {
LABEL_27:
        v16 = v19;

        goto LABEL_31;
      }

LABEL_11:
    }

LABEL_12:
    if (!--v2)
    {
      v16 = 0;
      v5 = 0xF000000000000007;
      goto LABEL_31;
    }
  }

  v12 = *(v5 + 16);
  if (!*(v12 + 16))
  {
    goto LABEL_12;
  }

  v13 = *(v12 + 32);
  v14 = (v13 >> 59) & 0x1E;
  if (((v13 >> 59) & 0x1E | (v13 >> 2) & 1) == 1)
  {
    v14 = (*((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10) >> 59) & 0x1ELL;
  }

  if (v14 == 22)
  {

    v16 = 1;
    goto LABEL_31;
  }

  sub_214FF19EC(&v18, v12);

  v15 = v18;
  if ((~v18 & 0xF000000000000007) == 0)
  {
    goto LABEL_11;
  }

  v16 = v19;

  v5 = v15;
LABEL_31:
  a2 = v17;
LABEL_32:
  *a2 = v5;
  a2[1] = v16;
  return result;
}

uint64_t sub_214FF1CF4()
{
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  *(inited + 32) = v4;

  sub_214FF3090(inited, &v5);
  swift_setDeallocating();
  sub_214FF323C(inited + 32);
  if ((~v5 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) != 0x17)
  {
    sub_214F94748(v5);
    return 0;
  }

  v2 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  sub_214F94748(v5);
  if (v2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_214FF1DD4(uint64_t a1)
{
  v22 = *v1;
  v25 = v22;
  result = sub_214FF2E7C(a1);
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = result + 40;
    v21 = *(result + 16);
    v18 = v4 - 1;
    v7 = MEMORY[0x277D84F90];
    v19 = result + 40;
    do
    {
      v20 = v7;
      v8 = (v6 + 16 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v11 = *(v8 - 1);
        v10 = *v8;
        v5 = v9 + 1;
        v23[2] = v22;

        v12 = sub_214FF1FB4();
        v23[0] = v11;
        v23[1] = v10;
        MEMORY[0x28223BE20](v12);
        v17[2] = v23;
        v13 = sub_215068408(sub_214FF353C, v17, v12);

        if ((v13 & 1) == 0)
        {
          break;
        }

        v8 += 2;
        ++v9;
        if (v21 == v5)
        {
          v7 = v20;
          goto LABEL_15;
        }
      }

      v7 = v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      v24 = v7;
      if ((result & 1) == 0)
      {
        result = sub_214F86A20(0, *(v7 + 16) + 1, 1);
        v7 = v24;
      }

      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_214F86A20((v14 > 1), v15 + 1, 1);
        v7 = v24;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v10;
      v6 = v19;
    }

    while (v18 != v9);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_15:

  return v7;
}

uint64_t sub_214FF1FB4()
{
  v1 = *v0;
  v2 = (*v0 >> 59) & 0x1E | (*v0 >> 2) & 1;
  if (v2)
  {
    if (v2 == 1)
    {
      v16 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (((v16 >> 59) & 0x1E | (v16 >> 2) & 1) == 0x16)
      {
        v17 = v16 & 0xFFFFFFFFFFFFFFBLL;
        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_2150C25D0;
        *(v7 + 32) = v19;
        *(v7 + 40) = v18;
      }

      else
      {
        return (sub_214FF1FB4)();
      }
    }

    else
    {
      if (v2 == 2)
      {
        v1 &= 0xFFFFFFFFFFFFFFBuLL;
        goto LABEL_5;
      }

      return MEMORY[0x277D84F90];
    }

    return v7;
  }

LABEL_5:
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  if (!v4)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_27:

    return v7;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v6 < *(v3 + 16))
  {
    result = sub_214FF1FB4(result);
    v8 = *(result + 16);
    v9 = *(v7 + 16);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      goto LABEL_31;
    }

    v11 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= *(v7 + 24) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v12 = v9 + v8;
      }

      else
      {
        v12 = v9;
      }

      result = sub_21505F4D0(result, v12, 1, v7);
      v7 = result;
      if (*(v11 + 16))
      {
LABEL_19:
        if ((*(v7 + 24) >> 1) - *(v7 + 16) < v8)
        {
          goto LABEL_33;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v13 = *(v7 + 16);
          v14 = __OFADD__(v13, v8);
          v15 = v13 + v8;
          if (v14)
          {
            goto LABEL_34;
          }

          *(v7 + 16) = v15;
        }

        goto LABEL_8;
      }
    }

    if (v8)
    {
      goto LABEL_32;
    }

LABEL_8:
    if (v4 == ++v6)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_214FF21E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = (v6 >> 59) & 0x1E | (v6 >> 2) & 1;
      if (v7 == 2)
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        if (*(sub_214FF2C0C(v14, a2) + 16) == *(v13 + 16))
        {

          return 2;
        }

        v10 = sub_214FF21E0(v13, a2);
        v16 = v15;

        if (v16)
        {
          return v10;
        }
      }

      else if (!v7)
      {
        v8 = *(v5 + 16);

        if (*(sub_214FF2C0C(v9, a2) + 16) == *(v8 + 16))
        {

          return 1;
        }

        v10 = sub_214FF21E0(v8, a2);
        v12 = v11;

        if (v12)
        {
          return v10;
        }
      }

      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_214FF2398(uint64_t result, char **a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    v5 = result + 32;
    do
    {
      v8 = *(v5 + 8 * v4);
      switch((v8 >> 59) & 0x1E | (v8 >> 2) & 1)
      {
        case 0uLL:
          goto LABEL_75;
        case 1uLL:
          v57 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2150C25D0;
          *(inited + 32) = v57;

          sub_214FF2398(inited, a2);
          swift_setDeallocating();
          sub_214FF323C(inited + 32);

          goto LABEL_6;
        case 2uLL:
          v8 &= 0xFFFFFFFFFFFFFFBuLL;
LABEL_75:
          v56 = *(v8 + 16);

          sub_214FF2398(v56, a2);

          goto LABEL_6;
        case 3uLL:
        case 4uLL:
          v9 = *a2;
          v26 = *(*a2 + 2);
          v27 = v26;
          v28 = 32;
          while (v27)
          {
            v29 = *&v9[v28];
            v28 += 8;
            --v27;
            if (v29 == 6)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v26 + 1, 1, v9);
          }

          v47 = *(v9 + 2);
          v46 = *(v9 + 3);
          if (v47 >= v46 >> 1)
          {
            v9 = sub_215060370((v46 > 1), v47 + 1, 1, v9);
          }

          *(v9 + 2) = v47 + 1;
          v6 = &v9[8 * v47];
          v7 = 6;
          goto LABEL_4;
        case 5uLL:
        case 6uLL:
        case 7uLL:
          v9 = *a2;
          v10 = *(*a2 + 2);
          v11 = v10;
          v12 = 32;
          while (v11)
          {
            v13 = *&v9[v12];
            v12 += 8;
            --v11;
            if (v13 == 5)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v10 + 1, 1, v9);
          }

          v39 = *(v9 + 2);
          v38 = *(v9 + 3);
          if (v39 >= v38 >> 1)
          {
            v9 = sub_215060370((v38 > 1), v39 + 1, 1, v9);
          }

          *(v9 + 2) = v39 + 1;
          v6 = &v9[8 * v39];
          v7 = 5;
          goto LABEL_4;
        case 8uLL:
        case 9uLL:
          v9 = *a2;
          v22 = *(*a2 + 2);
          v23 = v22;
          v24 = 32;
          while (v23)
          {
            v25 = *&v9[v24];
            v24 += 8;
            --v23;
            if (v25 == 1)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v22 + 1, 1, v9);
          }

          v45 = *(v9 + 2);
          v44 = *(v9 + 3);
          if (v45 >= v44 >> 1)
          {
            v9 = sub_215060370((v44 > 1), v45 + 1, 1, v9);
          }

          *(v9 + 2) = v45 + 1;
          v6 = &v9[8 * v45];
          v7 = 1;
          goto LABEL_4;
        case 0xBuLL:
          v9 = *a2;
          v63 = *(*a2 + 2);
          v64 = v63;
          v65 = 32;
          while (v64)
          {
            v66 = *&v9[v65];
            v65 += 8;
            --v64;
            if (v66 == 7)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v63 + 1, 1, v9);
          }

          v78 = *(v9 + 2);
          v77 = *(v9 + 3);
          if (v78 >= v77 >> 1)
          {
            v9 = sub_215060370((v77 > 1), v78 + 1, 1, v9);
          }

          *(v9 + 2) = v78 + 1;
          v73 = &v9[8 * v78];
          v74 = 7;
          goto LABEL_109;
        case 0xCuLL:
        case 0xDuLL:
          v9 = *a2;
          v14 = *(*a2 + 2);
          v15 = v14;
          v16 = 32;
          while (v15)
          {
            v17 = *&v9[v16];
            v16 += 8;
            --v15;
            if (v17 == 4)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v14 + 1, 1, v9);
          }

          v41 = *(v9 + 2);
          v40 = *(v9 + 3);
          if (v41 >= v40 >> 1)
          {
            v9 = sub_215060370((v40 > 1), v41 + 1, 1, v9);
          }

          *(v9 + 2) = v41 + 1;
          v6 = &v9[8 * v41];
          v7 = 4;
          goto LABEL_4;
        case 0xEuLL:
        case 0xFuLL:
          v9 = *a2;
          v34 = *(*a2 + 2);
          v35 = v34;
          v36 = 32;
          while (v35)
          {
            v37 = *&v9[v36];
            v36 += 8;
            --v35;
            if (v37 == 2)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v34 + 1, 1, v9);
          }

          v51 = *(v9 + 2);
          v50 = *(v9 + 3);
          if (v51 >= v50 >> 1)
          {
            v9 = sub_215060370((v50 > 1), v51 + 1, 1, v9);
          }

          *(v9 + 2) = v51 + 1;
          v6 = &v9[8 * v51];
          v7 = 2;
          goto LABEL_4;
        case 0x10uLL:
          v9 = *a2;
          v59 = *(*a2 + 2);
          v60 = v59;
          v61 = 32;
          while (v60)
          {
            v62 = *&v9[v61];
            v61 += 8;
            --v60;
            if (v62 == 10)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v59 + 1, 1, v9);
          }

          v76 = *(v9 + 2);
          v75 = *(v9 + 3);
          if (v76 >= v75 >> 1)
          {
            v9 = sub_215060370((v75 > 1), v76 + 1, 1, v9);
          }

          *(v9 + 2) = v76 + 1;
          v73 = &v9[8 * v76];
          v74 = 10;
          goto LABEL_109;
        case 0x11uLL:
          v9 = *a2;
          v52 = *(*a2 + 2);
          v53 = v52;
          v54 = 32;
          while (v53)
          {
            v55 = *&v9[v54];
            v54 += 8;
            --v53;
            if (v55 == 9)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v52 + 1, 1, v9);
          }

          v72 = *(v9 + 2);
          v71 = *(v9 + 3);
          if (v72 >= v71 >> 1)
          {
            v9 = sub_215060370((v71 > 1), v72 + 1, 1, v9);
          }

          *(v9 + 2) = v72 + 1;
          v73 = &v9[8 * v72];
          v74 = 9;
          goto LABEL_109;
        case 0x12uLL:
        case 0x13uLL:
          v9 = *a2;
          v18 = *(*a2 + 2);
          v19 = v18;
          v20 = 32;
          while (v19)
          {
            v21 = *&v9[v20];
            v20 += 8;
            --v19;
            if (v21 == 3)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v18 + 1, 1, v9);
          }

          v43 = *(v9 + 2);
          v42 = *(v9 + 3);
          if (v43 >= v42 >> 1)
          {
            v9 = sub_215060370((v42 > 1), v43 + 1, 1, v9);
          }

          *(v9 + 2) = v43 + 1;
          v6 = &v9[8 * v43];
          v7 = 3;
LABEL_4:
          *(v6 + 4) = v7;
          goto LABEL_5;
        case 0x14uLL:
          v9 = *a2;
          v67 = *(*a2 + 2);
          v68 = v67;
          v69 = 32;
          while (v68)
          {
            v70 = *&v9[v69];
            v69 += 8;
            --v68;
            if (v70 == 8)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v67 + 1, 1, v9);
          }

          v80 = *(v9 + 2);
          v79 = *(v9 + 3);
          if (v80 >= v79 >> 1)
          {
            v9 = sub_215060370((v79 > 1), v80 + 1, 1, v9);
          }

          *(v9 + 2) = v80 + 1;
          v73 = &v9[8 * v80];
          v74 = 8;
LABEL_109:
          *(v73 + 4) = v74;

          goto LABEL_5;
        case 0x16uLL:
        case 0x17uLL:
          v9 = *a2;
          v30 = *(*a2 + 2);
          v31 = v30;
          v32 = 32;
          break;
        default:
          goto LABEL_6;
      }

      while (v31)
      {
        v33 = *&v9[v32];
        v32 += 8;
        --v31;
        if (!v33)
        {
          goto LABEL_6;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_215060370(0, v30 + 1, 1, v9);
      }

      v49 = *(v9 + 2);
      v48 = *(v9 + 3);
      if (v49 >= v48 >> 1)
      {
        v9 = sub_215060370((v48 > 1), v49 + 1, 1, v9);
      }

      *(v9 + 2) = v49 + 1;
      *&v9[8 * v49 + 32] = 0;
LABEL_5:
      *a2 = v9;
LABEL_6:
      ++v4;
    }

    while (v4 != v2);
  }

  return result;
}

uint64_t sub_214FF2C0C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      for (i = v4; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_20;
        }

        v8 = *(v5 + 8 * i);
        if (a2 != 3)
        {
          break;
        }

        if (((v8 >> 59) & 0x1E | (v8 >> 2) & 1) == 0x13)
        {
          goto LABEL_11;
        }

LABEL_5:
        if (v4 == v2)
        {
          return v6;
        }
      }

      if (a2 != 4 || ((v8 >> 59) & 0x1E | (v8 >> 2) & 1) != 0xD)
      {
        goto LABEL_5;
      }

LABEL_11:
      v10 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v9 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21505F4D0(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_21505F4D0((v11 > 1), v12 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      if (v4 == v2)
      {
        return v6;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_214FF2D64(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v6 = *(v3 + 8 * v1++);
    if (((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 0xB)
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v7 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21505F4D0(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        result = sub_21505F4D0((v9 > 1), v10 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v1 = v5;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_214FF2E7C(uint64_t a1)
{
  v2 = *v1;
  v3 = (*v1 >> 59) & 0x1E | (*v1 >> 2) & 1;
  v4 = MEMORY[0x277D84F90];
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 22)
      {
        v5 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_2150C25D0;
        *(v4 + 32) = v7;
        *(v4 + 40) = v6;
      }

      return v4;
    }

    v2 &= 0xFFFFFFFFFFFFFFBuLL;
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      return sub_214FF2E7C(a1);
    }

    return v4;
  }

  v8 = *(v2 + 16);
  v9 = *(v8 + 16);

  if (!v9)
  {
LABEL_27:

    return v4;
  }

  v11 = 0;
  while (v11 < *(v8 + 16))
  {
    result = sub_214FF2E7C(result);
    v12 = *(result + 16);
    v13 = *(v4 + 16);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_30;
    }

    v15 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v14 <= *(v4 + 24) >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      result = sub_21505F4D0(result, v16, 1, v4);
      v4 = result;
      if (*(v15 + 16))
      {
LABEL_23:
        if ((*(v4 + 24) >> 1) - *(v4 + 16) < v12)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v17 = *(v4 + 16);
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_33;
          }

          *(v4 + 16) = v19;
        }

        goto LABEL_12;
      }
    }

    if (v12)
    {
      goto LABEL_31;
    }

LABEL_12:
    if (v9 == ++v11)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_214FF3090@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = (result + 32);
  do
  {
    while (1)
    {
      if (!v2)
      {
        *a2 = 0xF000000000000007;
        return result;
      }

      v5 = *v3++;
      v4 = v5;
      v6 = (v5 >> 59) & 0x1E | (v5 >> 2) & 1;
      --v2;
      if (v6 > 1)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_15;
      }

      if (v6 == 1)
      {
        v7 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2150C25D0;
        *(inited + 32) = v7;

        sub_214FF3090(inited);
        swift_setDeallocating();
        sub_214FF323C(inited + 32);
      }
    }

    if (v6 == 2)
    {
      v4 &= 0xFFFFFFFFFFFFFFBuLL;
LABEL_15:
      v9 = *(v4 + 16);

      sub_214FF3090(v9);
    }
  }

  while (v6 != 23);
  *a2 = v4;
}

uint64_t sub_214FF3290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214FF32F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214FF3358(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v4 = *(result + 16);
  if (v4)
  {
    v6 = 0;
    v7 = result + 40;
    v20 = result + 40;
    do
    {
      v21 = v3;
      v8 = (v7 + 16 * v6);
      for (i = v6; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return result;
        }

        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_24;
        }

        v11 = *(v8 - 1);
        v10 = *v8;
        v12 = objc_opt_self();

        v13 = sub_2150A4A90();
        v14 = [v12 hashtagObjectIDWithStandardizedContent:v13 context:a2];

        if (v14)
        {
          break;
        }

        v8 += 2;
        if (v6 == v4)
        {
          return v21;
        }
      }

      v15 = *(*a3 + 16);
      if (v15)
      {
        v16 = 0;
        v17 = (*a3 + 40);
        while (1)
        {
          v18 = *(v17 - 1) == v11 && *v17 == v10;
          if (v18 || (sub_2150A6270() & 1) != 0)
          {
            break;
          }

          ++v16;
          v17 += 2;
          if (v15 == v16)
          {
            goto LABEL_19;
          }
        }

        sub_215037FA8(v16);
      }

LABEL_19:

      MEMORY[0x216061A60](v19);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2150A4F10();
      }

      result = sub_2150A4F70();
      v3 = v23;
      v7 = v20;
    }

    while (v6 != v4);
  }

  return v3;
}

uint64_t sub_214FF3578(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_214FF35E8@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_214FF3648(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

id ICQuery.__allocating_init(entity:type:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR___ICQueryObjC_type] = *a2;
  v6.receiver = v4;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

id ICQuery.init(entity:type:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR___ICQueryObjC_type] = *a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ICQuery();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_214FF39E4()
{
  sub_2150A5B20();
  v7 = 0;
  v8 = 0xE000000000000000;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ICQuery();
  v1 = objc_msgSendSuper2(&v6, sel_debugDescription);
  v2 = sub_2150A4AD0();
  v4 = v3;

  MEMORY[0x2160617E0](v2, v4);

  MEMORY[0x2160617E0](0x797469746E65203ALL, 0xEB00000000203D20);
  sub_2150A5DB0();
  MEMORY[0x2160617E0](0x203A65707974202CLL, 0xEA0000000000203DLL);
  swift_beginAccess();
  sub_2150A5DB0();
  return v7;
}

uint64_t sub_214FF3B2C(uint64_t a1)
{
  sub_214FA9E9C(a1, v10);
  if (!v11)
  {
    sub_214F302D4(v10, &qword_27CA42178);
    goto LABEL_5;
  }

  type metadata accessor for ICQuery();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  v2 = v8;
  v3 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  v9 = *&v8[v3];
  v4 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  v7 = *(v1 + v4);

  v5 = static ICQueryType.== infix(_:_:)(&v9, &v7);

  return v5 & 1;
}

id ICQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_214FF3D5C()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x797469746E65;
  }
}

uint64_t sub_214FF3D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v6 || (sub_2150A6270() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2150A6270();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_214FF3E64(uint64_t a1)
{
  v2 = sub_214FF6EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214FF3EA0(uint64_t a1)
{
  v2 = sub_214FF6EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

id ICQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICQuery();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214FF3F10(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43988);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FF6EE8();
  sub_2150A65B0();
  v13 = 0;
  sub_214FF6F3C();
  sub_2150A60A0();
  if (!v2)
  {
    v9 = OBJC_IVAR___ICQueryObjC_type;
    swift_beginAccess();
    v12 = *(v3 + v9);
    v11[15] = 1;
    sub_214F93278();

    sub_2150A60A0();
  }

  return (*(v6 + 8))(v8, v5);
}

void *ICQuery.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA439A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FF6EE8();
  sub_2150A6590();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for ICQuery();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15) = 0;
    sub_214FF6F90();
    sub_2150A5FC0();
    v14 = 1;
    sub_214F931AC();
    sub_2150A5FC0();
    *&v3[OBJC_IVAR___ICQueryObjC_type] = v15;
    v11 = type metadata accessor for ICQuery();
    v13.receiver = v3;
    v13.super_class = v11;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

void *sub_214FF432C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ICQuery());
  result = ICQuery.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id static ICQuery.makeQueryForNotesMatching(_:)(void *a1)
{
  v2 = v1;
  v3 = [a1 filterTypeSelections];
  sub_214FF6FE4();
  v4 = sub_2150A4ED0();

  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v24 = i;
    v25 = v2;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x216062780](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v28 = v8;
      sub_214FF4658(&v28, v2, &v27);

      v11 = v27;
      if ((~v27 & 0xF000000000000007) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2150600E0(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_2150600E0((v12 > 1), v13 + 1, 1, v7);
        }

        *(v7 + 2) = v13 + 1;
        *&v7[8 * v13 + 32] = v11;
        i = v24;
        v2 = v25;
      }

      else
      {
        sub_214F94748(v27);
      }

      ++v6;
      if (v10 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_21:

  v14 = [a1 joinOperator];
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  if (v14)
  {
    v16 = v15 | 0x1000000000000000;
  }

  else
  {
    v16 = v15;
  }

  v17 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2150C29C0;
  v19 = swift_allocObject();
  *(v19 + 16) = [a1 includeRecentlyDeleted];
  *(v18 + 32) = v19 | 0x5000000000000000;
  *(v18 + 40) = v16;
  *(v17 + 16) = v18;
  v20 = type metadata accessor for ICQuery();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR___ICQueryObjC_type] = v17;
  v26.receiver = v21;
  v26.super_class = v20;
  return objc_msgSendSuper2(&v26, sel_init);
}

void sub_214FF4658(id *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v392 = a2;
  v395 = a3;
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  v387 = v4;
  v388 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v380 = &v373 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v379 = &v373 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v382 = &v373 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v393 = &v373 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v381 = &v373 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v383 = &v373 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v391 = &v373 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v386 = &v373 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v390 = &v373 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v385 = &v373 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v394 = &v373 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v384 = &v373 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v373 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C68);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v35 = &v373 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v373 - v36;
  v38 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  v389 = *(v38 - 8);
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v373 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &v373 - v42;
  v44 = *a1;
  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (!v45)
  {
    v377 = v37;
    v378 = v43;
    v375 = v41;
    v376 = v35;
    v374 = v31;
    v51 = v390;
    v52 = v391;
    v53 = v393;
    v54 = v394;
    objc_opt_self();
    v55 = swift_dynamicCastObjCClass();
    if (v55)
    {
      v56 = v55;
      v393 = v44;
      v57 = [v56 selectionType];
      if (v57 <= 5)
      {
        v58 = v389;
        v59 = v378;
        if (v57 < 6)
        {
LABEL_9:

          v60 = v377;
          sub_214FF6784(v56, v377);
          if ((*(v58 + 48))(v60, 1, v38) == 1)
          {

LABEL_16:
            sub_214F302D4(v60, &qword_27CA42C68);
            goto LABEL_68;
          }

          sub_214FF7E68(v60, v59);
          v76 = swift_allocBox();
          sub_214FF7ECC(v59, v77);
          v78 = v76 | 0x4000000000000004;
          v79 = type metadata accessor for ICQuery();
          v80 = objc_allocWithZone(v79);
          *&v80[OBJC_IVAR___ICQueryObjC_type] = v78;
          v396.receiver = v80;
          v396.super_class = v79;
          v48 = objc_msgSendSuper2(&v396, sel_init);

          v81 = v59;
LABEL_35:
          sub_214FF7F30(v81);
          goto LABEL_43;
        }

        goto LABEL_49;
      }

      if (v57 <= 7)
      {
        v58 = v389;
        v59 = v378;
        if (v57 != 6)
        {
          goto LABEL_9;
        }

        v112 = [v56 primaryDate];
        if (v112)
        {
          v113 = v112;
          sub_2150A3930();

          v114 = [v56 secondaryDate];
          if (v114)
          {
            v115 = v385;
            sub_2150A3930();

            v116 = type metadata accessor for ICQueryType.DateRange(0);
            v117 = swift_allocBox();
            v119 = v118;
            v120 = v388;
            v121 = *(v388 + 16);
            v122 = v118;
            v123 = v54;
            v124 = v387;
            v121(v122, v123, v387);
            v121(v119 + *(v116 + 20), v115, v124);
            v125 = type metadata accessor for ICQuery();
            v126 = objc_allocWithZone(v125);
            *&v126[OBJC_IVAR___ICQueryObjC_type] = v117 | 0x4000000000000000;
            v398.receiver = v126;
            v398.super_class = v125;
            v48 = objc_msgSendSuper2(&v398, sel_init);

            v127 = *(v120 + 8);
            v127(v115, v124);
            v127(v394, v124);
            goto LABEL_43;
          }

          (*(v388 + 8))(v54, v387);
          goto LABEL_67;
        }
      }

      else
      {
        v66 = v388;
        if (v57 != 8)
        {
          if (v57 == 9)
          {
            v128 = [v56 primaryDate];

            v129 = v386;
            if (v128)
            {
              v130 = v51;
              sub_2150A3930();

              v131 = type metadata accessor for ICQueryType.DateRange(0);
              v132 = swift_allocBox();
              v134 = v133;
              sub_2150A37F0();
              v135 = v387;
              (*(v66 + 16))(v134 + *(v131 + 20), v130, v387);
              (*(v66 + 32))(v134, v129, v135);
              v136 = type metadata accessor for ICQuery();
              v137 = objc_allocWithZone(v136);
              *&v137[OBJC_IVAR___ICQueryObjC_type] = v132 | 0x4000000000000000;
              v399.receiver = v137;
              v399.super_class = v136;
              v48 = objc_msgSendSuper2(&v399, sel_init);

              (*(v66 + 8))(v130, v135);
              goto LABEL_43;
            }

            goto LABEL_67;
          }

          v67 = v386;
          if (v57 == 10)
          {
            v68 = [v56 primaryDate];

            if (v68)
            {
              sub_2150A3930();

              v69 = type metadata accessor for ICQueryType.DateRange(0);
              v70 = swift_allocBox();
              v72 = v71;
              sub_2150A3860();
              v73 = v387;
              (*(v66 + 16))(v72, v52, v387);
              (*(v66 + 32))(v72 + *(v69 + 20), v67, v73);
              v74 = type metadata accessor for ICQuery();
              v75 = objc_allocWithZone(v74);
              *&v75[OBJC_IVAR___ICQueryObjC_type] = v70 | 0x4000000000000000;
              v400.receiver = v75;
              v400.super_class = v74;
              v48 = objc_msgSendSuper2(&v400, sel_init);

              (*(v66 + 8))(v52, v73);
              goto LABEL_43;
            }

LABEL_67:

            goto LABEL_68;
          }

LABEL_49:

          goto LABEL_50;
        }

        v138 = [v56 primaryDate];
        if (v138)
        {
          v139 = v374;
          v140 = v138;
          sub_2150A3930();

          v141 = [v56 secondaryDate];
          if (v141)
          {
            v142 = v384;
            sub_2150A3930();

            v143 = type metadata accessor for ICQueryType.DateRange(0);
            v144 = swift_allocBox();
            v146 = v145;
            v147 = *(v66 + 16);
            v148 = v145;
            v149 = v139;
            v150 = v387;
            v147(v148, v149, v387);
            v147(v146 + *(v143 + 20), v142, v150);
            v151 = type metadata accessor for ICQuery();
            v152 = objc_allocWithZone(v151);
            *&v152[OBJC_IVAR___ICQueryObjC_type] = v144 | 0x4000000000000000;
            v397.receiver = v152;
            v397.super_class = v151;
            v48 = objc_msgSendSuper2(&v397, sel_init);

            v153 = *(v66 + 8);
            v153(v142, v150);
            v153(v374, v150);
            v49 = OBJC_IVAR___ICQueryObjC_type;
            goto LABEL_3;
          }

          (*(v66 + 8))(v139, v387);
          goto LABEL_67;
        }
      }

      v155 = v393;

      goto LABEL_68;
    }

    objc_opt_self();
    v61 = swift_dynamicCastObjCClass();
    if (v61)
    {
      v62 = v61;
      v63 = v44;
      v64 = [v62 selectionType];
      if (v64 <= 5)
      {
        v65 = v389;
        if (v64 >= 6)
        {
          goto LABEL_49;
        }

LABEL_14:

        v60 = v376;
        sub_214FF6784(v62, v376);
        if ((*(v65 + 48))(v60, 1, v38) == 1)
        {

          goto LABEL_16;
        }

        v101 = v375;
        sub_214FF7E68(v60, v375);
        v102 = swift_allocBox();
        sub_214FF7ECC(v101, v103);
        v104 = v102 | 0x7000000000000004;
        v105 = type metadata accessor for ICQuery();
        v106 = objc_allocWithZone(v105);
        *&v106[OBJC_IVAR___ICQueryObjC_type] = v104;
        v401.receiver = v106;
        v401.super_class = v105;
        v48 = objc_msgSendSuper2(&v401, sel_init);

        v81 = v101;
        goto LABEL_35;
      }

      if (v64 <= 7)
      {
        v154 = v388;
        if (v64 != 6)
        {
          v65 = v389;
          goto LABEL_14;
        }

        v161 = [v62 primaryDate];
        if (v161)
        {
          v162 = v161;
          sub_2150A3930();

          v163 = [v62 secondaryDate];
          if (!v163)
          {
            (*(v154 + 8))(v53, v387);

            goto LABEL_68;
          }

          sub_2150A3930();

          v164 = type metadata accessor for ICQueryType.DateRange(0);
          v165 = swift_allocBox();
          v167 = v166;
          v394 = v63;
          v168 = *(v154 + 16);
          v169 = v166;
          v170 = v53;
          v171 = v387;
          v168(v169, v170, v387);
          v172 = v382;
          v168(v167 + *(v164 + 20), v382, v171);
          v173 = type metadata accessor for ICQuery();
          v174 = objc_allocWithZone(v173);
          *&v174[OBJC_IVAR___ICQueryObjC_type] = v165 | 0x7000000000000000;
          v403.receiver = v174;
          v403.super_class = v173;
          v48 = objc_msgSendSuper2(&v403, sel_init);

          v175 = *(v154 + 8);
          v175(v172, v171);
          v175(v393, v171);
LABEL_43:
          v49 = OBJC_IVAR___ICQueryObjC_type;
          goto LABEL_3;
        }
      }

      else
      {
        v90 = v387;
        v89 = v388;
        if (v64 != 8)
        {
          if (v64 == 9)
          {
            v176 = [v62 primaryDate];

            v177 = v386;
            if (v176)
            {
              v178 = v379;
              sub_2150A3930();

              v179 = type metadata accessor for ICQueryType.DateRange(0);
              v180 = swift_allocBox();
              v182 = v181;
              sub_2150A37F0();
              (*(v89 + 16))(v182 + *(v179 + 20), v178, v90);
              (*(v89 + 32))(v182, v177, v90);
              v183 = type metadata accessor for ICQuery();
              v184 = objc_allocWithZone(v183);
              *&v184[OBJC_IVAR___ICQueryObjC_type] = v180 | 0x7000000000000000;
              v404.receiver = v184;
              v404.super_class = v183;
              v48 = objc_msgSendSuper2(&v404, sel_init);

              (*(v89 + 8))(v178, v90);
              goto LABEL_43;
            }
          }

          else
          {
            v91 = v386;
            if (v64 != 10)
            {
              goto LABEL_49;
            }

            v92 = [v62 primaryDate];

            if (v92)
            {
              v93 = v380;
              sub_2150A3930();

              v94 = type metadata accessor for ICQueryType.DateRange(0);
              v95 = swift_allocBox();
              v97 = v96;
              sub_2150A3860();
              v98 = v387;
              (*(v89 + 16))(v97, v93, v387);
              (*(v89 + 32))(v97 + *(v94 + 20), v91, v98);
              v99 = type metadata accessor for ICQuery();
              v100 = objc_allocWithZone(v99);
              *&v100[OBJC_IVAR___ICQueryObjC_type] = v95 | 0x7000000000000000;
              v405.receiver = v100;
              v405.super_class = v99;
              v48 = objc_msgSendSuper2(&v405, sel_init);

              (*(v89 + 8))(v93, v98);
              goto LABEL_43;
            }
          }

LABEL_64:

          goto LABEL_68;
        }

        v185 = [v62 primaryDate];
        if (v185)
        {
          v186 = v383;
          v187 = v185;
          sub_2150A3930();

          v188 = [v62 secondaryDate];
          if (v188)
          {
            sub_2150A3930();

            v189 = type metadata accessor for ICQueryType.DateRange(0);
            v190 = swift_allocBox();
            v191 = v186;
            v193 = v192;
            v194 = *(v89 + 16);
            v194(v192, v191, v90);
            v195 = v193 + *(v189 + 20);
            v196 = v381;
            v194(v195, v381, v90);
            v197 = type metadata accessor for ICQuery();
            v198 = objc_allocWithZone(v197);
            *&v198[OBJC_IVAR___ICQueryObjC_type] = v190 | 0x7000000000000000;
            v402.receiver = v198;
            v402.super_class = v197;
            v48 = objc_msgSendSuper2(&v402, sel_init);

            v199 = *(v89 + 8);
            v199(v196, v90);
            v199(v383, v90);
            v49 = OBJC_IVAR___ICQueryObjC_type;
            goto LABEL_3;
          }

          (*(v89 + 8))(v186, v90);

LABEL_68:
          v50 = 0xF000000000000007;
          goto LABEL_5;
        }
      }

      goto LABEL_64;
    }

    objc_opt_self();
    v82 = swift_dynamicCastObjCClass();
    if (v82)
    {
      v83 = v82;
      v84 = swift_allocObject();
      v85 = v44;
      *(v84 + 16) = [v83 inclusionType] == 0;
      v86 = type metadata accessor for ICQuery();
      v87 = objc_allocWithZone(v86);
      *&v87[OBJC_IVAR___ICQueryObjC_type] = v84 | 0x8000000000000004;
      v406.receiver = v87;
      v406.super_class = v86;
      v88 = objc_msgSendSuper2(&v406, sel_init);
LABEL_54:
      v48 = v88;

      v49 = OBJC_IVAR___ICQueryObjC_type;
      goto LABEL_3;
    }

    objc_opt_self();
    v107 = swift_dynamicCastObjCClass();
    if (v107)
    {
      v108 = v107;
      v109 = swift_allocObject();
      v85 = v44;
      *(v109 + 16) = [v108 inclusionType] == 0;
      v110 = type metadata accessor for ICQuery();
      v111 = objc_allocWithZone(v110);
      *&v111[OBJC_IVAR___ICQueryObjC_type] = v109 | 0x8000000000000000;
      v407.receiver = v111;
      v407.super_class = v110;
      v88 = objc_msgSendSuper2(&v407, sel_init);
      goto LABEL_54;
    }

    objc_opt_self();
    v156 = swift_dynamicCastObjCClass();
    if (v156)
    {
      v157 = v156;
      v158 = swift_allocObject();
      v85 = v44;
      *(v158 + 16) = [v157 inclusionType] == 0;
      v159 = type metadata accessor for ICQuery();
      v160 = objc_allocWithZone(v159);
      *&v160[OBJC_IVAR___ICQueryObjC_type] = v158 | 0xA000000000000000;
      v408.receiver = v160;
      v408.super_class = v159;
      v88 = objc_msgSendSuper2(&v408, sel_init);
      goto LABEL_54;
    }

    objc_opt_self();
    v200 = swift_dynamicCastObjCClass();
    if (v200)
    {
      v201 = v200;
      v202 = v44;
      v203 = [v201 selectionType];
      if (v203 > 1)
      {
        if (v203 == 2)
        {
          v246 = swift_allocObject();
          *(v246 + 16) = 1;
          v247 = v246 | 0x3000000000000004;
          v248 = type metadata accessor for ICQuery();
          v249 = objc_allocWithZone(v248);
          *&v249[OBJC_IVAR___ICQueryObjC_type] = v247;
          v411.receiver = v249;
          v411.super_class = v248;
          v208 = objc_msgSendSuper2(&v411, sel_init);
        }

        else
        {
          if (v203 != 3)
          {
            goto LABEL_50;
          }

          v217 = swift_allocObject();
          *(v217 + 16) = 0;
          v218 = v217 | 0x2000000000000004;
          v219 = type metadata accessor for ICQuery();
          v220 = objc_allocWithZone(v219);
          *&v220[OBJC_IVAR___ICQueryObjC_type] = v218;
          v412.receiver = v220;
          v412.super_class = v219;
          v208 = objc_msgSendSuper2(&v412, sel_init);
        }
      }

      else if (v203)
      {
        if (v203 != 1)
        {
          goto LABEL_50;
        }

        v204 = swift_allocObject();
        *(v204 + 16) = 1;
        v205 = v204 | 0x3000000000000000;
        v206 = type metadata accessor for ICQuery();
        v207 = objc_allocWithZone(v206);
        *&v207[OBJC_IVAR___ICQueryObjC_type] = v205;
        v410.receiver = v207;
        v410.super_class = v206;
        v208 = objc_msgSendSuper2(&v410, sel_init);
      }

      else
      {
        v242 = swift_allocObject();
        *(v242 + 16) = 1;
        v243 = v242 | 0x2000000000000004;
        v244 = type metadata accessor for ICQuery();
        v245 = objc_allocWithZone(v244);
        *&v245[OBJC_IVAR___ICQueryObjC_type] = v243;
        v409.receiver = v245;
        v409.super_class = v244;
        v208 = objc_msgSendSuper2(&v409, sel_init);
      }

LABEL_96:
      v48 = v208;

      v49 = OBJC_IVAR___ICQueryObjC_type;
      goto LABEL_3;
    }

    objc_opt_self();
    v209 = swift_dynamicCastObjCClass();
    if (v209)
    {
      v210 = v209;
      v202 = v44;
      v211 = [v210 selectionType];
      if (v211 <= 4)
      {
        if (v211 > 2)
        {
          if (v211 == 3)
          {
            v277 = swift_allocObject();
            *(v277 + 16) = 7;
            v278 = v277 | 0x2000000000000000;
            v279 = type metadata accessor for ICQuery();
            v280 = objc_allocWithZone(v279);
            *&v280[OBJC_IVAR___ICQueryObjC_type] = v278;
            v416.receiver = v280;
            v416.super_class = v279;
            v208 = objc_msgSendSuper2(&v416, sel_init);
          }

          else
          {
            v254 = swift_allocObject();
            *(v254 + 16) = 2;
            v255 = v254 | 0x2000000000000000;
            v256 = type metadata accessor for ICQuery();
            v257 = objc_allocWithZone(v256);
            *&v257[OBJC_IVAR___ICQueryObjC_type] = v255;
            v417.receiver = v257;
            v417.super_class = v256;
            v208 = objc_msgSendSuper2(&v417, sel_init);
          }

          goto LABEL_96;
        }

        if (v211 != 1)
        {
          if (v211 != 2)
          {
            goto LABEL_50;
          }

          v250 = swift_allocObject();
          *(v250 + 16) = 1;
          v251 = v250 | 0x2000000000000000;
          v252 = type metadata accessor for ICQuery();
          v253 = objc_allocWithZone(v252);
          *&v253[OBJC_IVAR___ICQueryObjC_type] = v251;
          v415.receiver = v253;
          v415.super_class = v252;
          v208 = objc_msgSendSuper2(&v415, sel_init);
          goto LABEL_96;
        }

        v272 = swift_allocObject();
        *(v272 + 16) = 1;
        v273 = v272 | 0x1000000000000004;
        v274 = type metadata accessor for ICQuery();
        v275 = objc_allocWithZone(v274);
        *&v275[OBJC_IVAR___ICQueryObjC_type] = v273;
        v413.receiver = v275;
        v413.super_class = v274;
        v216 = objc_msgSendSuper2(&v413, sel_init);
      }

      else
      {
        if (v211 <= 6)
        {
          if (v211 == 5)
          {
            v285 = swift_allocObject();
            *(v285 + 16) = 3;
            v286 = v285 | 0x2000000000000000;
            v287 = type metadata accessor for ICQuery();
            v288 = objc_allocWithZone(v287);
            *&v288[OBJC_IVAR___ICQueryObjC_type] = v286;
            v418.receiver = v288;
            v418.super_class = v287;
            v208 = objc_msgSendSuper2(&v418, sel_init);
          }

          else
          {
            v268 = swift_allocObject();
            *(v268 + 16) = 4;
            v269 = v268 | 0x2000000000000000;
            v270 = type metadata accessor for ICQuery();
            v271 = objc_allocWithZone(v270);
            *&v271[OBJC_IVAR___ICQueryObjC_type] = v269;
            v419.receiver = v271;
            v419.super_class = v270;
            v208 = objc_msgSendSuper2(&v419, sel_init);
          }

          goto LABEL_96;
        }

        if (v211 == 7)
        {
          v281 = swift_allocObject();
          *(v281 + 16) = 5;
          v282 = v281 | 0x2000000000000000;
          v283 = type metadata accessor for ICQuery();
          v284 = objc_allocWithZone(v283);
          *&v284[OBJC_IVAR___ICQueryObjC_type] = v282;
          v420.receiver = v284;
          v420.super_class = v283;
          v208 = objc_msgSendSuper2(&v420, sel_init);
          goto LABEL_96;
        }

        if (v211 == 8)
        {
          v289 = swift_allocObject();
          *(v289 + 16) = 6;
          v290 = v289 | 0x2000000000000000;
          v291 = type metadata accessor for ICQuery();
          v292 = objc_allocWithZone(v291);
          *&v292[OBJC_IVAR___ICQueryObjC_type] = v290;
          v421.receiver = v292;
          v421.super_class = v291;
          v208 = objc_msgSendSuper2(&v421, sel_init);
          goto LABEL_96;
        }

        if (v211 != 9)
        {
          goto LABEL_50;
        }

        v212 = swift_allocObject();
        *(v212 + 16) = 0;
        v213 = v212 | 0x1000000000000004;
        v214 = type metadata accessor for ICQuery();
        v215 = objc_allocWithZone(v214);
        *&v215[OBJC_IVAR___ICQueryObjC_type] = v213;
        v414.receiver = v215;
        v414.super_class = v214;
        v216 = objc_msgSendSuper2(&v414, sel_init);
      }

      v48 = v216;

      v276 = OBJC_IVAR___ICQueryObjC_type;
      swift_beginAccess();
      v50 = *&v48[v276];
      goto LABEL_4;
    }

    objc_opt_self();
    v221 = swift_dynamicCastObjCClass();
    if (v221)
    {
      v222 = v221;
      v44 = v44;
      v223 = [v222 folderIdentifiers];
      v224 = sub_2150A4ED0();

      v225 = *(v224 + 16);

      if (v225)
      {
        v393 = v222;
        v394 = v44;
        v226 = [v222 folderIdentifiers];
        v227 = sub_2150A4ED0();

        v228 = *(v227 + 16);
        if (v228)
        {
          v429 = MEMORY[0x277D84F90];
          sub_214F86F8C(0, v228, 0);
          v229 = v429;
          v392 = v227;
          v230 = (v227 + 40);
          do
          {
            v232 = *(v230 - 1);
            v231 = *v230;
            v233 = swift_allocObject();
            *(v233 + 16) = v232;
            *(v233 + 24) = v231;
            v234 = v233 | 0x5000000000000004;
            v235 = type metadata accessor for ICQuery();
            v236 = objc_allocWithZone(v235);
            *&v236[OBJC_IVAR___ICQueryObjC_type] = v234;
            v422.receiver = v236;
            v422.super_class = v235;

            v237 = objc_msgSendSuper2(&v422, sel_init);
            v238 = OBJC_IVAR___ICQueryObjC_type;
            swift_beginAccess();
            v239 = *&v237[v238];

            v429 = v229;
            v241 = *(v229 + 16);
            v240 = *(v229 + 24);
            if (v241 >= v240 >> 1)
            {
              sub_214F86F8C((v240 > 1), v241 + 1, 1);
              v229 = v429;
            }

            *(v229 + 16) = v241 + 1;
            *(v229 + 8 * v241 + 32) = v239;
            v230 += 2;
            --v228;
          }

          while (v228);
        }

        else
        {

          v229 = MEMORY[0x277D84F90];
        }

        v293 = swift_allocObject();
        *(v293 + 16) = v229;
        v50 = v293 | 0x1000000000000000;
        v294 = [v393 inclusionType];

        if (v294 == 1)
        {
          v295 = swift_allocObject();
          *(v295 + 16) = v50;
          v50 = v295 | 4;
        }

        goto LABEL_5;
      }

      goto LABEL_50;
    }

    objc_opt_self();
    v258 = swift_dynamicCastObjCClass();
    if (v258)
    {
      v259 = v258;
      v260 = v44;
      v392 = v259;
      v393 = v260;
      v261 = [v259 selectionType];
      if (v261 == 3)
      {
        v262 = v393;

        v322 = swift_allocObject();
        *(v322 + 16) = 0;
        v323 = v322 | 0x9000000000000000;
        v324 = type metadata accessor for ICQuery();
        v325 = objc_allocWithZone(v324);
        *&v325[OBJC_IVAR___ICQueryObjC_type] = v323;
        v426.receiver = v325;
        v426.super_class = v324;
        v267 = objc_msgSendSuper2(&v426, sel_init);
        goto LABEL_142;
      }

      if (v261 != 2)
      {
        if (v261 != 1)
        {
          goto LABEL_49;
        }

        v262 = v393;

        v263 = swift_allocObject();
        *(v263 + 16) = 1;
        v264 = v263 | 0x9000000000000000;
        v265 = type metadata accessor for ICQuery();
        v266 = objc_allocWithZone(v265);
        *&v266[OBJC_IVAR___ICQueryObjC_type] = v264;
        v423.receiver = v266;
        v423.super_class = v265;
        v267 = objc_msgSendSuper2(&v423, sel_init);
        goto LABEL_142;
      }

      if ([v392 joinOperator] - 1 > 1)
      {
        goto LABEL_49;
      }

      v301 = [v392 participantUserIDs];
      v302 = sub_2150A52E0();

      v303 = 1 << *(v302 + 32);
      v304 = -1;
      if (v303 < 64)
      {
        v304 = ~(-1 << v303);
      }

      v305 = v304 & *(v302 + 56);
      v306 = (v303 + 63) >> 6;
      v391 = v302;

      v307 = 0;
      v394 = MEMORY[0x277D84F90];
      if (v305)
      {
        goto LABEL_132;
      }

      while (1)
      {
        v308 = v307 + 1;
        if (__OFADD__(v307, 1))
        {
          __break(1u);
          goto LABEL_169;
        }

        if (v308 >= v306)
        {
          break;
        }

        v305 = *(v302 + 56 + 8 * v308);
        ++v307;
        if (v305)
        {
          v307 = v308;
          do
          {
LABEL_132:
            v309 = (*(v391 + 6) + ((v307 << 10) | (16 * __clz(__rbit64(v305)))));
            v310 = *v309;
            v311 = v309[1];
            v312 = swift_allocObject();
            *(v312 + 16) = v310;
            *(v312 + 24) = v311;
            v313 = v312 | 0x9000000000000004;
            v314 = type metadata accessor for ICQuery();
            v315 = objc_allocWithZone(v314);
            *&v315[OBJC_IVAR___ICQueryObjC_type] = v313;
            v425.receiver = v315;
            v425.super_class = v314;

            v316 = objc_msgSendSuper2(&v425, sel_init);
            v317 = OBJC_IVAR___ICQueryObjC_type;
            swift_beginAccess();
            v318 = *&v316[v317];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v394 = sub_2150600E0(0, *(v394 + 2) + 1, 1, v394);
            }

            v320 = *(v394 + 2);
            v319 = *(v394 + 3);
            if (v320 >= v319 >> 1)
            {
              v394 = sub_2150600E0((v319 > 1), v320 + 1, 1, v394);
            }

            v305 &= v305 - 1;
            v321 = v394;
            *(v394 + 2) = v320 + 1;
            *&v321[8 * v320 + 32] = v318;
          }

          while (v305);
        }
      }

      v330 = [v392 joinOperator];
      v331 = v393;

      v332 = swift_allocObject();
      *(v332 + 16) = v394;
      if (v330 == 1)
      {
        v333 = v332;
      }

      else
      {
        v333 = v332 | 0x1000000000000000;
      }

      v334 = type metadata accessor for ICQuery();
      v335 = objc_allocWithZone(v334);
      *&v335[OBJC_IVAR___ICQueryObjC_type] = v333;
      v424.receiver = v335;
      v424.super_class = v334;
      v336 = objc_msgSendSuper2(&v424, sel_init);
    }

    else
    {
      objc_opt_self();
      v394 = swift_dynamicCastObjCClass();
      if (!v394)
      {
        goto LABEL_68;
      }

      v393 = v44;
      v296 = [v394 selectionType];
      if (v296 <= 1)
      {
        if (!v296)
        {

          v337 = [v394 currentUserID];
          if (v337)
          {
            v338 = v337;
            v339 = sub_2150A4AD0();
            v341 = v340;

            v342 = swift_allocObject();
            *(v342 + 16) = v339;
            *(v342 + 24) = v341;
            v343 = v342 | 0x6000000000000004;
            v344 = type metadata accessor for ICQuery();
            v345 = objc_allocWithZone(v344);
            *&v345[OBJC_IVAR___ICQueryObjC_type] = v343;
            v427.receiver = v345;
            v427.super_class = v344;
            v48 = objc_msgSendSuper2(&v427, sel_init);

            goto LABEL_43;
          }

LABEL_50:

          goto LABEL_68;
        }

        if (v296 != 1)
        {
          goto LABEL_49;
        }

        v262 = v393;

        v297 = swift_allocObject();
        *(v297 + 16) = 1;
        v298 = v297 | 0x6000000000000000;
        v299 = type metadata accessor for ICQuery();
        v300 = objc_allocWithZone(v299);
        *&v300[OBJC_IVAR___ICQueryObjC_type] = v298;
        v428.receiver = v300;
        v428.super_class = v299;
        v267 = objc_msgSendSuper2(&v428, sel_init);
LABEL_142:
        v48 = v267;

        goto LABEL_43;
      }

      if (v296 != 2)
      {
        if (v296 != 3)
        {
          goto LABEL_49;
        }

        v262 = v393;

        v326 = swift_allocObject();
        *(v326 + 16) = 0;
        v327 = v326 | 0x6000000000000000;
        v328 = type metadata accessor for ICQuery();
        v329 = objc_allocWithZone(v328);
        *&v329[OBJC_IVAR___ICQueryObjC_type] = v327;
        v432.receiver = v329;
        v432.super_class = v328;
        v267 = objc_msgSendSuper2(&v432, sel_init);
        goto LABEL_142;
      }

      if ([v394 joinOperator] - 1 > 1)
      {
        goto LABEL_49;
      }

      v346 = [v394 participantUserIDs];
      v347 = sub_2150A52E0();

      v348 = 1 << *(v347 + 32);
      v349 = -1;
      if (v348 < 64)
      {
        v349 = ~(-1 << v348);
      }

      v350 = v349 & *(v347 + 56);
      v351 = (v348 + 63) >> 6;
      v391 = v347;

      v352 = 0;
      v392 = MEMORY[0x277D84F90];
      if (v350)
      {
        goto LABEL_157;
      }

      while (1)
      {
        v353 = v352 + 1;
        if (__OFADD__(v352, 1))
        {
LABEL_169:
          __break(1u);
          return;
        }

        if (v353 >= v351)
        {
          break;
        }

        v350 = *(v347 + 56 + 8 * v353);
        ++v352;
        if (v350)
        {
          v352 = v353;
          do
          {
LABEL_157:
            v354 = (*(v391 + 6) + ((v352 << 10) | (16 * __clz(__rbit64(v350)))));
            v355 = *v354;
            v356 = v354[1];
            v357 = swift_allocObject();
            *(v357 + 16) = v355;
            *(v357 + 24) = v356;
            v358 = v357 | 0x6000000000000004;
            v359 = type metadata accessor for ICQuery();
            v360 = objc_allocWithZone(v359);
            *&v360[OBJC_IVAR___ICQueryObjC_type] = v358;
            v431.receiver = v360;
            v431.super_class = v359;

            v361 = objc_msgSendSuper2(&v431, sel_init);
            v362 = OBJC_IVAR___ICQueryObjC_type;
            swift_beginAccess();
            v363 = *&v361[v362];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v392 = sub_2150600E0(0, *(v392 + 2) + 1, 1, v392);
            }

            v365 = *(v392 + 2);
            v364 = *(v392 + 3);
            if (v365 >= v364 >> 1)
            {
              v392 = sub_2150600E0((v364 > 1), v365 + 1, 1, v392);
            }

            v350 &= v350 - 1;
            v366 = v392;
            *(v392 + 2) = v365 + 1;
            *&v366[8 * v365 + 32] = v363;
          }

          while (v350);
        }
      }

      v367 = [v394 joinOperator];
      v331 = v393;

      v368 = swift_allocObject();
      *(v368 + 16) = v392;
      if (v367 == 1)
      {
        v369 = v368;
      }

      else
      {
        v369 = v368 | 0x1000000000000000;
      }

      v370 = type metadata accessor for ICQuery();
      v371 = objc_allocWithZone(v370);
      *&v371[OBJC_IVAR___ICQueryObjC_type] = v369;
      v430.receiver = v371;
      v430.super_class = v370;
      v336 = objc_msgSendSuper2(&v430, sel_init);
    }

    v48 = v336;

    v372 = OBJC_IVAR___ICQueryObjC_type;
    swift_beginAccess();
    v50 = *&v48[v372];
    goto LABEL_4;
  }

  v46 = v45;
  v47 = v44;
  v48 = _s11NotesShared7ICQueryC012makeQueryForA8MatchingyACSo14ICTagSelectionCFZ_0(v46);

  v49 = OBJC_IVAR___ICQueryObjC_type;
LABEL_3:
  swift_beginAccess();
  v50 = *&v48[v49];
LABEL_4:

LABEL_5:
  *v395 = v50;
}

uint64_t sub_214FF6784@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 selectionType];
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = 1;
      }

      else
      {
        if (v4 != 2)
        {
LABEL_14:
          v8 = type metadata accessor for ICQueryType.RelativeDateRange(0);
          v9 = *(*(v8 - 8) + 56);
          v10 = v8;
          v11 = a2;
          v12 = 1;
          goto LABEL_20;
        }

        v5 = 2;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (v4 <= 4)
    {
      if (v4 == 3)
      {
        v5 = 3;
      }

      else
      {
        v5 = 4;
      }

      goto LABEL_19;
    }

    if (v4 != 5)
    {
      if (v4 == 7 && [a1 relativeRangeSelectionType] - 1 < 5)
      {
        v6 = [a1 relativeRangeAmount];
        if (v6)
        {
          v7 = v6;
          sub_2150A5360();
        }
      }

      goto LABEL_14;
    }

    v5 = 5;
  }

LABEL_19:
  v13 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  v14 = *(v13 + 28);
  v15 = sub_2150A3960();
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  *a2 = v5;
  *(a2 + 1) = 5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v9 = *(*(v13 - 8) + 56);
  v11 = a2;
  v12 = 0;
  v10 = v13;
LABEL_20:

  return v9(v11, v12, 1, v10);
}

id static ICQuery.makeQueryForNonDeletedNotes()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = v0 | 0x5000000000000000;
  v2 = type metadata accessor for ICQuery();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___ICQueryObjC_type] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ICQuery.replacing(tagIdentifier:withNewTagIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  v15 = *(v4 + v9);

  sub_214F8E480(a1, a2, a3, a4, &v16);

  v10 = v16;
  v11 = type metadata accessor for ICQuery();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR___ICQueryObjC_type] = v10;
  v14.receiver = v12;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, sel_init);
}

id ICQuery.removing(tagIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  v11 = *(v2 + v5);

  sub_214F8E848(a1, a2, &v12);

  result = 0;
  v7 = v12;
  if ((~v12 & 0xF000000000000007) != 0)
  {
    v8 = type metadata accessor for ICQuery();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR___ICQueryObjC_type] = v7;
    v10.receiver = v9;
    v10.super_class = v8;
    return objc_msgSendSuper2(&v10, sel_init);
  }

  return result;
}

unint64_t sub_214FF6EE8()
{
  result = qword_27CA43990;
  if (!qword_27CA43990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43990);
  }

  return result;
}

unint64_t sub_214FF6F3C()
{
  result = qword_27CA43998;
  if (!qword_27CA43998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43998);
  }

  return result;
}

unint64_t sub_214FF6F90()
{
  result = qword_27CA439A8;
  if (!qword_27CA439A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439A8);
  }

  return result;
}

unint64_t sub_214FF6FE4()
{
  result = qword_27CA43978;
  if (!qword_27CA43978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA43978);
  }

  return result;
}

id sub_214FF7030(char a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = v4 | 0xB000000000000004;
  if ((a2 & 1) == 0)
  {
    v6 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2150C29C0;
    *(v7 + 32) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v7 + 40) = v8 | 0x5000000000000000;
    *(v6 + 16) = v7;
    v5 = v6;
  }

  v9 = type metadata accessor for ICQuery();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___ICQueryObjC_type] = v5;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}

char *_s11NotesShared7ICQueryC012makeQueryForA8MatchingyACSo14ICTagSelectionCFZ_0(void *a1)
{
  v1 = a1;
  v2 = [a1 mode];
  if (v2)
  {
    if (v2 == 2)
    {
      v3 = [v1 allowsRecentlyDeleted];
      v4 = 0;
    }

    else
    {
      if (v2 != 1)
      {
        result = sub_2150A5E10();
        __break(1u);
        return result;
      }

      v3 = [v1 allowsRecentlyDeleted];
      v4 = 1;
    }

    return sub_214FF7030(v4, v3);
  }

  else
  {
    v5 = [v1 includedTagIdentifiers];
    v6 = sub_2150A4ED0();

    v7 = *(v6 + 16);
    v8 = MEMORY[0x277D84F90];
    v9 = &qword_27CA43000;
    v10 = &selRef_hidesCallNotesInCustomFolders;
    v62 = v1;
    if (v7)
    {
      v67 = MEMORY[0x277D84F90];
      sub_214F86F8C(0, v7, 0);
      v11 = v67;
      v12 = (v6 + 40);
      do
      {
        v14 = *(v12 - 1);
        v13 = *v12;
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        *(v15 + 24) = v13;
        v16 = v15 | 0xB000000000000000;
        v17 = type metadata accessor for ICQuery();
        v18 = objc_allocWithZone(v17);
        *&v18[OBJC_IVAR___ICQueryObjC_type] = v16;
        v69.receiver = v18;
        v69.super_class = v17;

        v19 = objc_msgSendSuper2(&v69, sel_init);
        v20 = OBJC_IVAR___ICQueryObjC_type;
        swift_beginAccess();
        v21 = *&v19[v20];

        v67 = v11;
        v23 = *(v11 + 16);
        v22 = *(v11 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_214F86F8C((v22 > 1), v23 + 1, 1);
          v11 = v67;
        }

        *(v11 + 16) = v23 + 1;
        *(v11 + 8 * v23 + 32) = v21;
        v12 += 2;
        --v7;
      }

      while (v7);

      v10 = &selRef_hidesCallNotesInCustomFolders;
      v1 = v62;
      v8 = MEMORY[0x277D84F90];
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    v70 = v11;
    v25 = [v1 excludedTagIdentifiers];
    v26 = sub_2150A4ED0();

    v27 = *(v26 + 16);
    if (v27)
    {
      v64 = v8;
      sub_214F86F8C(0, v27, 0);
      v28 = (v26 + 40);
      do
      {
        v30 = *(v28 - 1);
        v29 = *v28;
        v31 = swift_allocObject();
        v32 = swift_allocObject();
        *(v32 + 16) = v30;
        *(v32 + 24) = v29;
        v33 = v32 | 0xB000000000000000;
        v34 = type metadata accessor for ICQuery();
        v35 = objc_allocWithZone(v34);
        *&v35[v9[304]] = v33;
        v68.receiver = v35;
        v68.super_class = v34;
        v36 = v9;
        v37 = v10;
        v38 = v10[291];
        swift_bridgeObjectRetain_n();
        v39 = objc_msgSendSuper2(&v68, v38);
        v40 = v36[304];
        swift_beginAccess();
        v41 = *&v39[v40];

        v10 = v37;
        v9 = v36;
        *(v31 + 16) = v41;
        v42 = objc_allocWithZone(v34);
        *&v42[v36[304]] = v31 | 4;
        v66.receiver = v42;
        v66.super_class = v34;
        v43 = objc_msgSendSuper2(&v66, v10 + 2936);

        v44 = v36[304];
        swift_beginAccess();
        v45 = *&v43[v44];

        v64 = v8;
        v47 = *(v8 + 16);
        v46 = *(v8 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_214F86F8C((v46 > 1), v47 + 1, 1);
          v8 = v64;
        }

        *(v8 + 16) = v47 + 1;
        *(v8 + 8 * v47 + 32) = v45;
        v28 += 2;
        --v27;
      }

      while (v27);

      v1 = v62;
    }

    else
    {
    }

    sub_215068E70(v8);
    v48 = [v1 tagOperator];
    v49 = swift_allocObject();
    *(v49 + 16) = v70;
    if (v48 == 1)
    {
      v50 = v49;
    }

    else
    {
      v50 = v49 | 0x1000000000000000;
    }

    v51 = type metadata accessor for ICQuery();
    v52 = objc_allocWithZone(v51);
    *&v52[v9[304]] = v50;
    v65.receiver = v52;
    v65.super_class = v51;
    v53 = v10[291];

    v54 = objc_msgSendSuper2(&v65, v53);
    if ([v1 allowsRecentlyDeleted])
    {
    }

    else
    {
      v55 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_2150C29C0;
      v57 = swift_allocObject();
      *(v57 + 16) = 0;
      *(v56 + 32) = v57 | 0x5000000000000000;
      v58 = v9[304];
      swift_beginAccess();
      *(v56 + 40) = *&v54[v58];
      *(v55 + 16) = v56;
      v59 = objc_allocWithZone(v51);
      *&v59[v9[304]] = v55;
      v63.receiver = v59;
      v63.super_class = v51;
      v60 = v10[291];

      v61 = objc_msgSendSuper2(&v63, v60);

      return v61;
    }

    return v54;
  }
}

id _s11NotesShared7ICQueryC031makeQueryForRecentlyDeletedMathA0ACyFZ_0()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2150C29C0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2150A4AD0();
  *(v2 + 24) = v3;
  *(v1 + 32) = v2 | 0xA000000000000004;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2150A4AD0();
  *(v4 + 24) = v5;
  *(v1 + 40) = v4 | 0xA000000000000004;
  *(v0 + 16) = v1;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2150C29C0;
  *(v7 + 32) = v0 | 0x1000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  *(v7 + 40) = v8 | 0x5000000000000000;
  *(v6 + 16) = v7;
  v9 = type metadata accessor for ICQuery();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___ICQueryObjC_type] = v6;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}

id _s11NotesShared7ICQueryC018makeQueryForPinnedA0_21allowsRecentlyDeletedACSb_SbtFZ_0(char a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = v4 | 0x8000000000000004;
  if ((a2 & 1) == 0)
  {
    v6 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2150C29C0;
    *(v7 + 32) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v7 + 40) = v8 | 0x5000000000000000;
    *(v6 + 16) = v7;
    v5 = v6;
  }

  v9 = type metadata accessor for ICQuery();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___ICQueryObjC_type] = v5;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}