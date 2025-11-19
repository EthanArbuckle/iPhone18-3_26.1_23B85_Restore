uint64_t URLAssetConfiguration.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A0E481C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for URLAssetConfiguration.Format(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t URLAssetConfiguration.Recipe.hash(into:)(uint64_t a1)
{
  sub_219FAB2D0(a1);
  v3 = *(v1 + *(type metadata accessor for URLAssetConfiguration.Recipe(0) + 20));

  return sub_219F7CB6C(a1, v3);
}

uint64_t URLAssetConfiguration.Recipe.hashValue.getter()
{
  sub_21A0E6DAC();
  sub_219FAB2D0(v3);
  v1 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  sub_219F7CB6C(v3, *(v0 + *(v1 + 20)));
  return sub_21A0E6DFC();
}

uint64_t sub_219FA4F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21A0E481C();
  sub_219FABFBC(&qword_27CCD99B8, MEMORY[0x277CC9260]);
  if ((sub_21A0E61CC() & 1) == 0)
  {
    return 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0);
  v7 = *(v6 + 28);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  v10 = sub_219FAAA00(v8, v9);

  if ((v10 & 1) == 0 || (sub_219F76D10(*(a1 + *(v6 + 32)), *(a2 + *(v6 + 32))) & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 20);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_21A0795D4(v12, v13);
}

uint64_t sub_219FA50A8(uint64_t a1)
{
  sub_21A0E6DAC();
  sub_219FAB2D0(v4);
  sub_219F7CB6C(v4, *(v1 + *(a1 + 20)));
  return sub_21A0E6DFC();
}

uint64_t sub_219FA50FC(uint64_t a1, uint64_t a2)
{
  sub_219FAB2D0(a1);
  v5 = *(v2 + *(a2 + 20));

  return sub_219F7CB6C(a1, v5);
}

uint64_t sub_219FA5148(uint64_t a1, uint64_t a2)
{
  sub_21A0E6DAC();
  sub_219FAB2D0(v5);
  sub_219F7CB6C(v5, *(v2 + *(a2 + 20)));
  return sub_21A0E6DFC();
}

uint64_t URLAssetConfiguration.Recipe.values(matching:)(unsigned __int8 *a1)
{
  v3 = sub_21A0E481C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 1);
  v39 = MEMORY[0x277D84F90];
  LOBYTE(v40) = v8;
  BYTE1(v40) = v9;
  v41 = v10;
  sub_219F8AE64(&v39);
  v11 = v39;
  KeyPath = swift_getKeyPath();
  v13 = *(v11 + 16);
  if (v13)
  {
    v31 = v9;
    v32 = v8;
    v33 = v10;
    v34 = v1;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v16 = *(v14 + 64);
    v30 = v11;
    v17 = v11 + ((v16 + 32) & ~v16);
    v37 = *(v14 + 56);
    v38 = v15;
    v18 = (v14 - 8);
    v19 = v14;
    v20 = MEMORY[0x277D84F90];
    v35 = KeyPath;
    v36 = v19;
    v15(v7, v17, v3);
    while (1)
    {
      swift_getAtKeyPath();
      (*v18)(v7, v3);
      v22 = v40;
      if (v40)
      {
        v23 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_219FA15AC(0, *(v20 + 2) + 1, 1, v20);
        }

        v25 = *(v20 + 2);
        v24 = *(v20 + 3);
        if (v25 >= v24 >> 1)
        {
          v20 = sub_219FA15AC((v24 > 1), v25 + 1, 1, v20);
        }

        *(v20 + 2) = v25 + 1;
        v21 = &v20[16 * v25];
        *(v21 + 4) = v23;
        *(v21 + 5) = v22;
      }

      v17 += v37;
      if (!--v13)
      {
        break;
      }

      v38(v7, v17, v3);
    }

    v10 = v33;
    v1 = v34;
    LOBYTE(v9) = v31;
    LOBYTE(v8) = v32;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v26, v27);
  *(&v30 - 4) = v1;
  *(&v30 - 24) = v8;
  *(&v30 - 23) = v9;
  *(&v30 - 2) = v10;
  v28 = sub_219FA5FBC(MEMORY[0x277D84F90], sub_219FAC06C, (&v30 - 6), v20);

  return v28;
}

uint64_t sub_219FA5454(uint64_t a1, uint64_t *a2, uint64_t a3, __int16 a4, void (**a5)(char *, char *, uint64_t))
{
  v43 = a5;
  v40 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v38 - v10;
  v12 = sub_21A0E481C();
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v45 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v15 = a2[1];
  v17 = sub_219FA5878(v16, v15);
  v18 = MEMORY[0x277D84F90];
  v19 = sub_21A07B280(MEMORY[0x277D84F90]);
  v47 = a3;
  v48 = a4 & 0x101;
  v20 = v44;
  v49 = v43;
  v21 = sub_219FA5FBC(v19, sub_219FACE40, v46, v17);

  v50 = v18;
  sub_219FA459C(&v50, v18, v21);

  v24 = v50;
  v25 = v50[2];
  v41 = v12;
  if (v25)
  {
    MEMORY[0x28223BE20](v22, v23);
    *(&v38 - 4) = a3;
    *(&v38 - 3) = v16;
    *(&v38 - 2) = v15;
    v26 = MEMORY[0x277D84F90];
    v27 = sub_219FA5EFC(MEMORY[0x277D84F90], sub_219FACEAC, (&v38 - 6), v24);

    v44 = *(v27 + 16);
    if (!v44)
    {
LABEL_15:

      return sub_21A03F870(v26);
    }

    v39 = v20;
    v12 = v41;
  }

  else
  {
    v39 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA678);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21A0EE0A0;
    *(v29 + 32) = v16;
    *(v29 + 40) = v15;
    v27 = v29;

    v44 = 1;
  }

  v30 = 0;
  v31 = (v42 + 48);
  v43 = (v42 + 32);
  v32 = v27 + 40;
  v26 = MEMORY[0x277D84F90];
  while (v30 < *(v27 + 16))
  {

    sub_21A0E47CC();

    if ((*v31)(v11, 1, v12) == 1)
    {
      result = sub_219F6409C(v11, &unk_27CCDA158);
    }

    else
    {
      v33 = v27;
      v34 = *v43;
      (*v43)(v45, v11, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_219FA1948(0, v26[2] + 1, 1, v26);
      }

      v36 = v26[2];
      v35 = v26[3];
      if (v36 >= v35 >> 1)
      {
        v26 = sub_219FA1948(v35 > 1, v36 + 1, 1, v26);
      }

      v26[2] = v36 + 1;
      v37 = v26 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v36;
      v12 = v41;
      result = (v34)(v37, v45, v41);
      v27 = v33;
    }

    ++v30;
    v32 += 16;
    if (v44 == v30)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219FA5878(uint64_t a1, uint64_t a2)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA868);
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v5);
  v36 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA870);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v30 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA878);
  sub_21A0E50FC();
  v38 = a1;
  v39 = a2;
  sub_219FACDEC();
  sub_219F3E490(&qword_27CCDA888, &qword_27CCDA870);
  v12 = sub_21A0E616C();
  v13 = *(v12 + 16);
  if (v13)
  {
    v31 = v11;
    v32 = v8;
    v33 = v7;
    v44 = MEMORY[0x277D84F90];
    sub_219FBE5A4(0, v13, 0);
    v14 = v44;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v17 = *(v15 + 64);
    v30 = v12;
    v18 = v12 + ((v17 + 32) & ~v17);
    v34 = *(v15 + 56);
    v35 = v16;
    v19 = (v15 - 8);
    do
    {
      v21 = v36;
      v20 = v37;
      v22 = v15;
      v35(v36, v18, v37);
      sub_21A0E511C();

      v23 = MEMORY[0x21CED1930](v40, v41, v42, v43);
      v25 = v24;

      (*v19)(v21, v20);
      v44 = v14;
      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_219FBE5A4((v26 > 1), v27 + 1, 1);
        v14 = v44;
      }

      *(v14 + 16) = v27 + 1;
      v28 = v14 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v18 += v34;
      --v13;
      v15 = v22;
    }

    while (v13);
    (*(v32 + 8))(v31, v33);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    return MEMORY[0x277D84F90];
  }

  return v14;
}

uint64_t sub_219FA5BEC(void *a1, uint64_t *a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  v6 = v5;
  v12 = *a2;
  v11 = a2[1];
  result = type metadata accessor for URLAssetConfiguration.Recipe(0);
  v14 = *(a3 + *(result + 20));
  if (*(v14 + 16))
  {
    result = sub_219F477B4(v12, v11);
    if (v15)
    {
      v16 = *(v14 + 56) + 40 * result;
      v17 = *(v16 + 32);
      v18 = *(v16 + 16);
      v34 = *v16;
      v35 = v18;
      v36 = v17;
      v32 = a4 & 0x101;
      v33 = a5;
      result = sub_219FA5DD4(&v32);
      v19 = result;
      v20 = 0;
      v21 = *(result + 16);
      v22 = MEMORY[0x277D84F90];
LABEL_4:
      v23 = 16 * v20 + 40;
      while (1)
      {
        if (v21 == v20)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v34 = *a1;
          sub_219F7C2B0(v22, v12, v11, isUniquelyReferenced_nonNull_native);

          *a1 = v34;
          return result;
        }

        if (v20 >= *(v19 + 16))
        {
          break;
        }

        ++v20;
        v24 = v23 + 16;
        v25 = *(v19 + v23);
        v23 += 16;
        if (v25)
        {
          v31 = *(v19 + v24 - 24);

          result = swift_isUniquelyReferenced_nonNull_native();
          v37 = v6;
          if ((result & 1) == 0)
          {
            result = sub_219FA15AC(0, *(v22 + 16) + 1, 1, v22);
            v22 = result;
          }

          v27 = *(v22 + 16);
          v26 = *(v22 + 24);
          v28 = v27 + 1;
          if (v27 >= v26 >> 1)
          {
            result = sub_219FA15AC((v26 > 1), v27 + 1, 1, v22);
            v28 = v27 + 1;
            v22 = result;
          }

          *(v22 + 16) = v28;
          v29 = v22 + 16 * v27;
          *(v29 + 32) = v31;
          *(v29 + 40) = v25;
          v6 = v37;
          goto LABEL_4;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_219FA5DD4(char *a1)
{
  v2 = *(a1 + 1);
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      v7 = *v1;

      return sub_219FA6E48(v7);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA660);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_21A0EE0A0;
      v15 = v3;
      v16 = v4;
      v17 = v5;
      v18 = v6;
      v19 = 2;
      v14 = v2;
      v12 = sub_219FA6F60(&v14, v3);
      result = v11;
      *(v11 + 32) = v12;
      *(v11 + 40) = v13;
    }
  }

  else
  {
    v9 = a1[1];
    v10 = *a1;
    v15 = MEMORY[0x277D84F90];
    LOBYTE(v16) = v10;
    BYTE1(v16) = v9;
    v17 = v2;
    sub_219F8AFF8(&v15, v3, v4, v5, v6);
    return v15;
  }

  return result;
}

uint64_t sub_219FA5EFC(uint64_t result, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v9 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v8 = *i;

      a2(&v9, &v8);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v9;
      }
    }
  }

  return result;
}

uint64_t sub_219FA5FBC(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      a2(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t sub_219FA6064(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *a2;
  v9 = *a2 + 64;
  v10 = 1 << *(*a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(*a2 + 64);
  v13 = (v10 + 63) >> 6;

  v26 = v8;

  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v6 = a5;
      v15 = v14;
LABEL_9:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = (*(v26 + 48) + ((v15 << 10) | (16 * v16)));
      v18 = *v17;
      v19 = v17[1];

      MEMORY[0x21CED1980](v18, v19);
      MEMORY[0x21CED1980](64, 0xE100000000000000);
      sub_219F3F130();
      a4 = sub_21A0E675C();
      v5 = v20;

      a5 = v5;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v6 = a5;
      v14 = v15;
      goto LABEL_9;
    }
  }

  v6 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_12;
  }

LABEL_16:
  result = sub_219FA15AC(0, v5[2] + 1, 1, v5);
  v5 = result;
LABEL_12:
  v23 = v5[2];
  v22 = v5[3];
  if (v23 >= v22 >> 1)
  {
    result = sub_219FA15AC((v22 > 1), v23 + 1, 1, v5);
    v5 = result;
  }

  v5[2] = v23 + 1;
  v24 = &v5[2 * v23];
  v24[4] = a4;
  v24[5] = a5;
  *v6 = v5;
  return result;
}

uint64_t URLAssetConfiguration.Recipe.value(matching:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v67 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9F98);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v59 - v11;
  v13 = sub_21A0E481C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v59 - v20;
  v22 = a1[1];
  v77 = *a1;
  v78 = v22;
  v79 = *(a1 + 4);
  v23 = *(v14 + 2);
  v69 = v3;
  (v23)(v18, v3, v13);
  *&v12[*(v9 + 40)] = MEMORY[0x277D84F90];
  *(v12 + 4) = v79;
  v24 = v78;
  *v12 = v77;
  *(v12 + 1) = v24;
  v25 = &v12[*(v9 + 36)];
  (v23)(v25, v18, v13);
  sub_219F63900(&v77, &v75);
  if (qword_27CCD9198 != -1)
  {
LABEL_21:
    swift_once();
  }

  v26 = qword_27CCDBDB0;
  v64 = v14;
  v27 = *(v14 + 1);

  v60 = v27;
  v27(v18, v13);
  *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9FA0) + 28)) = v26;
  v28 = v69;
  sub_219F8B0E8(v12);
  (v23)(v21, v25, v13);
  sub_219F6409C(v12, &qword_27CCD9F98);
  v75 = sub_21A0E472C();
  v76 = v29;
  v68 = sub_219F3F130();
  v30 = sub_21A0E676C();
  v12 = v31;

  v65 = v13;
  v63 = v21;
  v61 = v14 + 8;
  if (v12)
  {
    v32 = v30;
  }

  else
  {
    v32 = sub_21A0E472C();
    v12 = v33;
  }

  v70 = v32;
  v25 = sub_219FA5878(v32, v12);
  v34 = sub_21A07B384(MEMORY[0x277D84F90]);
  v36 = MEMORY[0x28223BE20](v34, v35);
  v57 = v28;
  v58 = &v77;
  v37 = sub_219FA5FBC(v36, sub_219FAC098, v56, v25);

  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v13 = v40 & *(v37 + 64);
  v21 = ((v39 + 63) >> 6);

  v69 = v37;

  v18 = 0;
  v62 = v12;
  v14 = v12;
  if (v13)
  {
    while (1)
    {
      v41 = v18;
LABEL_13:
      v42 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v43 = (v41 << 10) | (16 * v42);
      v44 = (*(v69 + 48) + v43);
      v45 = *v44;
      v25 = v44[1];
      v46 = (*(v69 + 56) + v43);
      v12 = *v46;
      v23 = v46[1];
      v75 = 4203301;
      v76 = 0xE300000000000000;

      MEMORY[0x21CED1980](v45, v25);
      MEMORY[0x21CED1980](64, 0xE100000000000000);
      v47 = v75;
      v48 = v76;
      v75 = v70;
      v76 = v14;
      v73 = v47;
      v74 = v48;
      v71 = v12;
      v72 = v23;
      v57 = v68;
      v58 = v68;
      v56[1] = v68;
      v56[0] = MEMORY[0x277D837D0];
      v70 = sub_21A0E675C();
      v50 = v49;

      v14 = v50;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v41 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v41 >= v21)
    {
      break;
    }

    v13 = *(v38 + 8 * v41);
    ++v18;
    if (v13)
    {
      v18 = v41;
      goto LABEL_13;
    }
  }

  v51 = v67;
  sub_21A0E47CC();

  v52 = v64;
  v53 = v64[6];
  v54 = v65;
  if ((v53)(v51, 1, v65) == 1)
  {
    v52[4](v66, v63, v54);
    result = (v53)(v51, 1, v54);
    if (result != 1)
    {
      return sub_219F6409C(v51, &unk_27CCDA158);
    }
  }

  else
  {
    v60(v63, v54);
    return (v52[4])(v66, v51, v54);
  }

  return result;
}

uint64_t sub_219FA6904(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = a2[1];
  result = type metadata accessor for URLAssetConfiguration.Recipe(0);
  v9 = *(a3 + *(result + 20));
  if (*(v9 + 16))
  {
    result = sub_219F477B4(v6, v7);
    if (v10)
    {
      v11 = *(v9 + 56) + 40 * result;
      v12 = *v11;
      v13 = *(v11 + 8);
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v16 = *(v11 + 32);
      v23 = v12;
      v24 = v13;
      v25 = v15;
      v26 = v14;
      v27 = v16;
      v17 = *(a4 + 16);
      v21[0] = *a4;
      v21[1] = v17;
      v22 = *(a4 + 32);
      sub_219F7DCDC(v12, v13, v15, v14, v16);
      v18 = sub_219FA6A38(v21, v6, v7);
      v20 = v19;
      sub_219F7DD3C(v12, v13, v15, v14, v16);

      return sub_219F7AB40(v18, v20, v6, v7);
    }
  }

  return result;
}

uint64_t sub_219FA6A38(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v27 = *a1;
  v28 = v4;
  v29 = *(a1 + 4);
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  if (*(v3 + 32))
  {
    if (*(v3 + 32) != 1)
    {
      *&v22 = *v3;
      *(&v22 + 1) = v6;
      *&v23 = v7;
      *(&v23 + 1) = v8;
      LOBYTE(v24) = 2;
      *&v17 = *(&v28 + 1);
      return sub_219FA6F60(&v17, v5);
    }

    v9 = sub_219FA707C(a2, a3, v29);
    if (v10)
    {
      v11 = v9;
      *&v22 = v9;
      *(&v22 + 1) = v10;
      MEMORY[0x28223BE20](v9, v10);
      v16[2] = &v22;
      if (sub_219FAA8A8(sub_219FACD94, v16, v5))
      {
        return v11;
      }
    }

    if (*(v5 + 16))
    {
      v11 = *(v5 + 32);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = a1[1];
    v17 = *a1;
    v18 = v12;
    v13 = *(a1 + 4);
    v21 = MEMORY[0x277D84F90];
    *&v19 = v13;
    sub_219F63900(&v27, &v22);
    v14 = qword_27CCD9198;

    if (v14 != -1)
    {
      swift_once();
    }

    *(&v19 + 1) = v5;
    *&v20 = v6;
    *(&v20 + 1) = qword_27CCDBDB0;

    sub_219F8A9B0(&v17, v5, v6, v7, v8);
    v11 = *(&v19 + 1);
    v24 = v19;
    v25 = v20;
    v26 = v21;
    v22 = v17;
    v23 = v18;

    sub_219F6409C(&v22, &qword_27CCDA860);
  }

  return v11;
}

uint64_t sub_219FA6C60(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*(v2 + 32))
  {
    if (*(v2 + 32) == 1)
    {
      MEMORY[0x21CED2490](1);
      result = MEMORY[0x21CED2490](*(v4 + 16));
      v6 = *(v4 + 16);
      if (v6)
      {
        v7 = v4 + 40;
        do
        {

          sub_21A0E626C();

          v7 += 16;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      MEMORY[0x21CED2490](2);
      result = MEMORY[0x21CED2490](*(v4 + 16));
      v11 = *(v4 + 16);
      if (v11)
      {
        v12 = (v4 + 32);
        do
        {
          v13 = *v12++;
          result = MEMORY[0x21CED2490](v13);
          --v11;
        }

        while (v11);
      }
    }
  }

  else
  {
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[1];
    MEMORY[0x21CED2490](0);
    sub_21A0E6DCC();
    if (v10)
    {
      sub_21A0E626C();
    }

    sub_219F91544(a1, v9);

    return sub_219F6FF34(a1, v8);
  }

  return result;
}

uint64_t sub_219FA6DA0()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_21A0E6DAC();
  sub_219FA6C60(v4);
  return sub_21A0E6DFC();
}

uint64_t sub_219FA6DF8()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_21A0E6DAC();
  sub_219FA6C60(v4);
  return sub_21A0E6DFC();
}

uint64_t sub_219FA6E48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_219FBE77C(0, v1, 0);
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9648);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_219FBE77C((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_219FA6F60(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *result;
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  while (v4 != v2)
  {
    v6 = v5[v2++];
    if (v6 == v3)
    {
LABEL_21:
      v13 = sub_21A0E6BFC();
      MEMORY[0x21CED1980](v13);

      MEMORY[0x21CED1980](120, 0xE100000000000000);
      return 64;
    }
  }

  if (v4)
  {
    v7 = *v5;
    while (1)
    {
      v9 = *v5++;
      v8 = v9;
      v10 = v3 - v9;
      if (__OFSUB__(v3, v9))
      {
        break;
      }

      if (v10 < 0)
      {
        v12 = __OFSUB__(0, v10);
        v10 = -v10;
        if (v12)
        {
          goto LABEL_24;
        }

        v11 = v3 - v7;
        if (__OFSUB__(v3, v7))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v11 = v3 - v7;
        if (__OFSUB__(v3, v7))
        {
          goto LABEL_23;
        }
      }

      if (v11 < 0)
      {
        v12 = __OFSUB__(0, v11);
        v11 = -v11;
        if (v12)
        {
          __break(1u);
          goto LABEL_21;
        }
      }

      if (v10 < v11)
      {
        v7 = v8;
      }

      if (!--v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219FA707C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_219F477B4(a1, a2), (v5 & 1) != 0))
  {
    sub_219F7DB44(*(a3 + 56) + 40 * v4, v7);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C8);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219FA7184@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_219FA71DC(uint64_t a1)
{
  v2 = sub_219FAC0B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FA7218(uint64_t a1)
{
  v2 = sub_219FAC0B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t URLAssetConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_21A0E481C();
  v29 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v4);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v33, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA6A8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA6B0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v28 - v16;
  v18 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v30 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_219FAC0B4();
  sub_21A0E6E7C();
  if (v2)
  {

    (*(v14 + 56))(v12, 1, 1, v13);
    sub_219F6409C(v12, &qword_27CCDA6A8);
  }

  else
  {
    (*(v14 + 56))(v12, 0, 1, v13);
    (*(v14 + 32))(v17, v12, v13);
    v25 = *(sub_21A0E6AFC() + 16);

    if (v25)
    {
      sub_219FABFBC(&qword_27CCDA6C8, type metadata accessor for URLAssetConfiguration.Recipe);
      sub_21A0E6ADC();
      (*(v14 + 8))(v17, v13);
      v22 = v36;
      v26 = v30;
      sub_219FAC004(v8, v30, type metadata accessor for URLAssetConfiguration.Recipe);
      type metadata accessor for URLAssetConfiguration.Format(0);
      swift_storeEnumTagMultiPayload();
      goto LABEL_7;
    }

    (*(v14 + 8))(v17, v13);
  }

  v22 = v36;
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_21A0E6E6C();
  v23 = v34;
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  sub_219FABFBC(&qword_27CCDA6C0, MEMORY[0x277CC9260]);
  v24 = v32;
  sub_21A0E6C8C();
  v26 = v30;
  (*(v29 + 32))(v30, v23, v24);
  type metadata accessor for URLAssetConfiguration.Format(0);
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v35);
LABEL_7:
  sub_219FAC004(v26, v31, type metadata accessor for URLAssetConfiguration);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t URLAssetConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA6D0);
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v22 - v6;
  v22 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v22, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21A0E481C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219FAC288(v2, v19, type metadata accessor for URLAssetConfiguration.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_219FAC004(v19, v10, type metadata accessor for URLAssetConfiguration.Recipe);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219FAC0B4();
    sub_21A0E6EAC();
    sub_219FABFBC(&qword_27CCDA6D8, type metadata accessor for URLAssetConfiguration.Recipe);
    v20 = v24;
    sub_21A0E6BBC();
    (*(v23 + 8))(v7, v20);
    return sub_219FACFB0(v10, type metadata accessor for URLAssetConfiguration.Recipe);
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21A0E6E9C();
    __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    sub_219FABFBC(&qword_27CCDA6E0, MEMORY[0x277CC9260]);
    sub_21A0E6CBC();
    (*(v12 + 8))(v15, v11);
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }
}

uint64_t sub_219FA7B68(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x736E656B6F74;
  }

  else
  {
    v2 = 0x74616D726F66;
  }

  if (*a2)
  {
    v3 = 0x736E656B6F74;
  }

  else
  {
    v3 = 0x74616D726F66;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_21A0E6C5C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_219FA7BE8()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219FA7C58()
{
  sub_21A0E626C();
}

uint64_t sub_219FA7CAC()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

void sub_219FA7D24(uint64_t *a1@<X8>)
{
  v2 = 0x74616D726F66;
  if (*v1)
  {
    v2 = 0x736E656B6F74;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_219FA7D54()
{
  if (*v0)
  {
    return 0x736E656B6F74;
  }

  else
  {
    return 0x74616D726F66;
  }
}

uint64_t sub_219FA7D8C(uint64_t a1)
{
  v2 = sub_219FAC108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FA7DC8(uint64_t a1)
{
  v2 = sub_219FAC108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t URLAssetConfiguration.Recipe.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA6E8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v62 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v56 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA6F0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v61 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA6F8);
  v59 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA700);
  v60 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v48 - v18;
  v20 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_219FAC108();
  v25 = v63;
  sub_21A0E6E7C();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v53 = v15;
  v54 = v12;
  v27 = v61;
  v26 = v62;
  v52 = v20;
  v63 = v23;
  v28 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA1C8);
  v68 = 0;
  sub_219FAC15C();
  sub_21A0E6ADC();
  v49 = 0;
  v50 = v19;
  sub_21A0860C0(v66, v67, v26);
  v29 = (*(v57 + 48))(v26, 1, v58);
  v51 = v16;
  if (v29 == 1)
  {
    sub_219F6409C(v26, &qword_27CCDA6E8);
    v30 = 1;
  }

  else
  {
    v31 = v26;
    v32 = v56;
    sub_219F4D494(v31, v56, &qword_27CCD99C0);
    sub_219F4D494(v32, v27, &qword_27CCD99C0);
    v30 = 0;
  }

  v33 = v63;
  v34 = v54;
  v35 = v59;
  (*(v59 + 56))(v27, v30, 1, v54);

  v36 = v28;
  if ((*(v35 + 48))(v27, 1, v34) == 1)
  {
    sub_219F6409C(v27, &qword_27CCDA6F0);
    sub_219FAC1E0();
    swift_allocError();
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 3;
    swift_willThrow();
    (*(v28 + 8))(v50, v51);
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v39 = v27;
  v40 = v53;
  sub_219F4D494(v39, v53, &qword_27CCDA6F8);
  v41 = v33;
  sub_219F45500(v40, v33, &qword_27CCDA6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA718);
  v68 = 1;
  sub_219FAC3D8(&qword_27CCDA720, sub_219FAC234);
  v43 = v50;
  v42 = v51;
  v44 = v49;
  sub_21A0E6A8C();
  if (v44)
  {
    sub_219F6409C(v40, &qword_27CCDA6F8);
    (*(v36 + 8))(v43, v42);
    __swift_destroy_boxed_opaque_existential_1(v64);
    return sub_219F6409C(v41, &qword_27CCDA6F8);
  }

  else
  {
    v45 = v65;
    v46 = v52;
    if (!v65)
    {
      v45 = sub_21A07B498(MEMORY[0x277D84F90]);
    }

    v47 = v55;
    *(v41 + *(v46 + 20)) = v45;
    sub_219FA8510();
    sub_219F6409C(v53, &qword_27CCDA6F8);
    (*(v36 + 8))(v43, v42);
    sub_219FAC288(v41, v47, type metadata accessor for URLAssetConfiguration.Recipe);
    __swift_destroy_boxed_opaque_existential_1(v64);
    return sub_219FACFB0(v41, type metadata accessor for URLAssetConfiguration.Recipe);
  }
}

uint64_t sub_219FA8510()
{
  v43 = sub_21A0E481C();
  v1 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v2);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x277D84F90];
  v36 = v0;
  sub_219F8B25C(&v41);
  v5 = v41;
  KeyPath = swift_getKeyPath();
  v7 = v5[2];
  if (v7)
  {
    v9 = *(v1 + 16);
    v8 = v1 + 16;
    v10 = *(v8 + 64);
    v35[1] = v5;
    v11 = v5 + ((v10 + 32) & ~v10);
    v39 = *(v8 + 56);
    v40 = v9;
    v12 = (v8 - 8);
    v13 = MEMORY[0x277D84F90];
    v37 = KeyPath;
    v38 = v8;
    do
    {
      v15 = v43;
      v40(v4, v11, v43);
      swift_getAtKeyPath();
      (*v12)(v4, v15);
      v16 = v42;
      if (v42)
      {
        v17 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_219FA15AC(0, *(v13 + 2) + 1, 1, v13);
        }

        v19 = *(v13 + 2);
        v18 = *(v13 + 3);
        if (v19 >= v18 >> 1)
        {
          v13 = sub_219FA15AC((v18 > 1), v19 + 1, 1, v13);
        }

        *(v13 + 2) = v19 + 1;
        v14 = &v13[16 * v19];
        *(v14 + 4) = v17;
        *(v14 + 5) = v16;
      }

      v11 += v39;
      --v7;
    }

    while (v7);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v40 = *(v13 + 2);
  if (!v40)
  {
  }

  v21 = 0;
  v43 = (v13 + 32);
  while (v21 < *(v13 + 2))
  {
    v22 = (v43 + 16 * v21);
    v24 = *v22;
    v23 = v22[1];

    v25 = sub_219FA5878(v24, v23);

    v26 = *(v25 + 16);
    if (v26)
    {
      result = type metadata accessor for URLAssetConfiguration.Recipe(0);
      v27 = 0;
      v28 = *(v36 + *(result + 20));
      v29 = (v25 + 40);
      while (v27 < *(v25 + 16))
      {
        v31 = *(v29 - 1);
        v30 = *v29;
        v32 = *(v28 + 16);

        if (!v32 || (sub_219F477B4(v31, v30), (v33 & 1) == 0))
        {

          sub_219FAC1E0();
          swift_allocError();
          *v34 = v31;
          *(v34 + 8) = v30;
          *(v34 + 16) = 0;
          return swift_willThrow();
        }

        ++v27;

        v29 += 2;
        if (v26 == v27)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      break;
    }

LABEL_14:
    ++v21;

    if (v21 == v40)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t URLAssetConfiguration.Recipe.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA730);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FAC108();
  sub_21A0E6EAC();
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA6F8);
  sub_219FAC2F0();
  sub_21A0E6BBC();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for URLAssetConfiguration.Recipe(0) + 20));
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA718);
    sub_219FAC3D8(&qword_27CCDA740, sub_219FAC45C);
    sub_21A0E6BBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_219FA8A94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x636146656C616373;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = 0x800000021A109480;
  }

  else
  {
    v4 = 0xEB00000000726F74;
  }

  if (*a2)
  {
    v5 = 0x636146656C616373;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = 0xEB00000000726F74;
  }

  else
  {
    v6 = 0x800000021A109480;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21A0E6C5C();
  }

  return v8 & 1;
}

uint64_t sub_219FA8B48()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219FA8BD8()
{
  sub_21A0E626C();
}

uint64_t sub_219FA8C54()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219FA8CEC@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_219FA8D48(unint64_t *a1@<X8>)
{
  v2 = 0x800000021A109480;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x636146656C616373;
    v2 = 0xEB00000000726F74;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_219FA8D94()
{
  if (*v0)
  {
    return 0x636146656C616373;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_219FA8DE8@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_219FA8E48(uint64_t a1)
{
  v2 = sub_219FACA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FA8E84(uint64_t a1)
{
  v2 = sub_219FACA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219FA8ED0()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_219FA8F40()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_219FA8FC0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_219FA9018(uint64_t a1)
{
  v2 = sub_219FACC14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FA9054(uint64_t a1)
{
  v2 = sub_219FACC14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219FA9090@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA7B8);
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v38 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA7C0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA7C8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_21A0E6E4C();
  v17 = *(v16 + 16);
  if (v17)
  {
    sub_219F3FDF4(v16 + 40 * v17 - 8, v36);

    __swift_project_boxed_opaque_existential_1(v36, v37);
    v30 = sub_21A0E6EFC();
    *&v34 = v18;
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {

    v30 = 0;
    *&v34 = 0xE000000000000000;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FACA48();
  sub_21A0E6E7C();
  if (v2)
  {

    (*(v12 + 56))(v10, 1, 1, v11);
    sub_219F6409C(v10, &qword_27CCDA7C0);
  }

  else
  {
    (*(v12 + 56))(v10, 0, 1, v11);
    (*(v12 + 32))(v15, v10, v11);
    LOBYTE(v36[0]) = 1;
    if (sub_21A0E6B0C())
    {
      LOBYTE(v36[0]) = 1;
      sub_219FACC14();
      v19 = v38;
      sub_21A0E6A1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA808);
      sub_219FACC68();
      v24 = v32;
      sub_21A0E6ADC();
      v20 = v36[0];
      if (!*(v36[0] + 16))
      {

        sub_219FAC1E0();
        swift_allocError();
        v28 = v34;
        *v29 = v30;
        *(v29 + 8) = v28;
        *(v29 + 16) = 1;
        swift_willThrow();
        (*(v31 + 8))(v19, v24);
        (*(v12 + 8))(v15, v11);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      (*(v31 + 8))(v19, v24);
      (*(v12 + 8))(v15, v11);
      v21 = 0uLL;
      v22 = 2;
      goto LABEL_11;
    }

    (*(v12 + 8))(v15, v11);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E6E6C();
  __swift_project_boxed_opaque_existential_1(v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9650);
  sub_219FACB38(&qword_27CCDA7D8, &qword_27CCD9650);
  sub_21A0E6C8C();
  v20 = v35;
  if (!*(v35 + 16))
  {

    sub_219FAC1E0();
    swift_allocError();
    v25 = v34;
    *v26 = v30;
    *(v26 + 8) = v25;
    *(v26 + 16) = 2;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v36);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_destroy_boxed_opaque_existential_1(v36);
  v21 = 0uLL;
  v22 = 1;
LABEL_11:
  v23 = v33;
  *v33 = v20;
  v23[1] = 0;
  *(v23 + 1) = v21;
  *(v23 + 32) = v22;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219FA9748(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA818);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v11[-v7];
  if (!*(v1 + 32))
  {
    return sub_219FA98CC(a1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  }

  if (*(v1 + 32) == 1)
  {
    return sub_21A0E644C();
  }

  v10 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FACA48();
  sub_21A0E6EAC();
  v11[15] = 0;
  sub_21A0E6B8C();
  return (*(v4 + 8))(v8, v10);
}

uint64_t sub_219FA98CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA820);
  MEMORY[0x28223BE20](v11, v12);
  v15 = &v18 - v14;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a4;
  v21[8] = a5;
  if (*(a5 + 16))
  {
    v20 = v13;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA828);
    v19 = v5;
    sub_219F3E490(&qword_27CCDA830, &qword_27CCDA828);
    sub_21A0E6EAC();
    LOBYTE(v21[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9648);
    sub_219FACB98();
    v16 = v19;
    sub_21A0E6BBC();
    if (!v16)
    {
      v21[0] = a5;
      v22 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA838);
      sub_219FACCE4();
      sub_21A0E6BBC();
    }

    return (*(v20 + 8))(v15, v11);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21A0E6E9C();
    __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9648);
    sub_219FACB98();
    sub_21A0E6CBC();
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }
}

uint64_t URLAssetConfiguration.values(matching:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_21A0E481C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *a1;
  v18 = *(a1 + 1);
  v19 = *(a1 + 8);
  sub_219FAC288(v2, v16, type metadata accessor for URLAssetConfiguration.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_219FAC004(v16, v7, type metadata accessor for URLAssetConfiguration.Recipe);
    v24[0] = v17;
    v24[1] = v18;
    v25 = v19;
    v20 = URLAssetConfiguration.Recipe.values(matching:)(v24);
    sub_219FACFB0(v7, type metadata accessor for URLAssetConfiguration.Recipe);
  }

  else
  {
    v21 = *(v9 + 32);
    v21(v12, v16, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA640);
    v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21A0EE0A0;
    v21((v20 + v22), v12, v8);
  }

  return v20;
}

uint64_t URLAssetConfiguration.value(matching:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219FAC288(v3, v13, type metadata accessor for URLAssetConfiguration.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_219FAC004(v13, v9, type metadata accessor for URLAssetConfiguration.Recipe);
    URLAssetConfiguration.Recipe.value(matching:)(a1, a2);
    return sub_219FACFB0(v9, type metadata accessor for URLAssetConfiguration.Recipe);
  }

  else
  {
    v15 = sub_21A0E481C();
    return (*(*(v15 - 8) + 32))(a2, v13, v15);
  }
}

uint64_t sub_219FA9F90@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219FAC288(v3, v13, type metadata accessor for URLAssetConfiguration.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_219FAC004(v13, v9, type metadata accessor for URLAssetConfiguration.Recipe);
    URLAssetConfiguration.Recipe.value(matching:)(a1, a2);
    return sub_219FACFB0(v9, type metadata accessor for URLAssetConfiguration.Recipe);
  }

  else
  {
    v15 = sub_21A0E481C();
    return (*(*(v15 - 8) + 32))(a2, v13, v15);
  }
}

uint64_t URLAssetConfiguration.customMirror.getter()
{
  v1 = v0;
  v2 = sub_21A0E6E2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v16 - v9;
  v11 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v11, v12);
  sub_219FAC288(v1, v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for URLAssetConfiguration);
  v16[1] = MEMORY[0x277D84F90];
  v14 = sub_21A0E6E1C();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219F3E490(&qword_27CCDA760, &qword_27CCDA758);
  return sub_21A0E6E3C();
}

uint64_t sub_219FAA36C()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = v15 - v9;
  MEMORY[0x28223BE20](v8, v11);
  sub_219FAC288(v0, v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for URLAssetConfiguration);
  v15[1] = MEMORY[0x277D84F90];
  v13 = sub_21A0E6E1C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219F3E490(&qword_27CCDA760, &qword_27CCDA758);
  return sub_21A0E6E3C();
}

uint64_t URLAssetConfiguration.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21 - v8;
  v10 = sub_21A0E481C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219FAC288(v1, v18, type metadata accessor for URLAssetConfiguration.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_219FAC004(v18, v9, type metadata accessor for URLAssetConfiguration.Recipe);
    sub_219FAC288(v9, v6, type metadata accessor for URLAssetConfiguration.Recipe);
    v19 = sub_21A0E622C();
    sub_219FACFB0(v9, type metadata accessor for URLAssetConfiguration.Recipe);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v19 = sub_21A0E46BC();
    (*(v11 + 8))(v14, v10);
  }

  return v19;
}

uint64_t _s22NewsLiveActivitiesCore21URLAssetConfigurationV6FormatO9hashValueSivg_0()
{
  sub_21A0E6DAC();
  URLAssetConfiguration.Format.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_219FAA86C()
{
  sub_21A0E6DAC();
  URLAssetConfiguration.Format.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_219FAA8A8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_219FAA954(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = a1(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_219FAAA00(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v49 = result + 56;
  v50 = result;
  v48 = v9;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v51 = v4;
    v15 = *(v3 + 48) + 16 * (v11 | (v4 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    sub_21A0E6DAC();
    v52 = v12;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        MEMORY[0x21CED2490](2);
        sub_21A0E6DCC();
        goto LABEL_25;
      }

      MEMORY[0x21CED2490](3);
      v18 = v16;
      goto LABEL_24;
    }

    if (v17)
    {
      MEMORY[0x21CED2490](1);
      switch(v16)
      {
        case 4u:
          v18 = 0;
          break;
        case 5u:
          v18 = 1;
          break;
        case 6u:
          v18 = 3;
          break;
        default:
          MEMORY[0x21CED2490](2);
          goto LABEL_16;
      }

LABEL_24:
      MEMORY[0x21CED2490](v18);
      goto LABEL_25;
    }

    MEMORY[0x21CED2490](0);
LABEL_16:
    sub_21A0E626C();

LABEL_25:
    result = sub_21A0E6DFC();
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }

    v21 = ~v19;
    v22 = v16;
    v53 = v16 - 4;
    if (v16)
    {
      v23 = 1802658148;
    }

    else
    {
      v23 = 0x746867696CLL;
    }

    if (v16)
    {
      v24 = 0xE400000000000000;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    v54 = v16;
    while (1)
    {
      v25 = *(v2 + 48) + 16 * v20;
      v26 = *v25;
      v27 = *(v25 + 8);
      if (v27 <= 1)
      {
        break;
      }

      if (v27 == 2)
      {
        if (v17 == 2 && ((v26 ^ v16) & 1) == 0)
        {
          goto LABEL_95;
        }
      }

      else if (v17 == 3 && v26 == v16)
      {
        goto LABEL_95;
      }

LABEL_34:
      v20 = (v20 + 1) & v21;
      if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return 0;
      }
    }

    if (v27)
    {
      if (v17 != 1)
      {
        goto LABEL_34;
      }

      switch(v26)
      {
        case 4u:
          if (v22 == 4)
          {
            goto LABEL_95;
          }

          goto LABEL_34;
        case 5u:
          if (v22 == 5)
          {
            goto LABEL_95;
          }

          goto LABEL_34;
        case 6u:
          if (v22 == 6)
          {
            goto LABEL_95;
          }

          goto LABEL_34;
      }

      if (v53 < 3)
      {
        goto LABEL_34;
      }

      if (v26 > 1u)
      {
        if (v26 == 2)
        {
          v37 = 0xD000000000000015;
          v38 = 0x800000021A1096B0;
          if (v22 <= 1)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v37 = 0x6174537472616D73;
          v38 = 0xEA00000000006B63;
          if (v22 <= 1)
          {
            goto LABEL_80;
          }
        }
      }

      else
      {
        v37 = 0xD000000000000014;
        if (!v26)
        {
          v38 = 0x800000021A109670;
          if (v22 > 1)
          {
            goto LABEL_70;
          }

LABEL_80:
          if (v22)
          {
            v40 = 0x800000021A109690;
            if (v37 != 0xD000000000000014)
            {
              goto LABEL_89;
            }
          }

          else
          {
            v40 = 0x800000021A109670;
            if (v37 != 0xD000000000000014)
            {
              goto LABEL_89;
            }
          }

          goto LABEL_88;
        }

        v38 = 0x800000021A109690;
        if (v22 <= 1)
        {
          goto LABEL_80;
        }
      }

LABEL_70:
      if (v22 == 2)
      {
        v39 = 0xD000000000000015;
      }

      else
      {
        v39 = 0x6174537472616D73;
      }

      if (v22 == 2)
      {
        v40 = 0x800000021A1096B0;
      }

      else
      {
        v40 = 0xEA00000000006B63;
      }

      if (v37 != v39)
      {
LABEL_89:
        v47 = v24;
        v41 = v22;
        v42 = v2;
        v43 = v10;
        v44 = v23;
        v45 = v21;
        v46 = sub_21A0E6C5C();

        v21 = v45;
        v23 = v44;
        v10 = v43;
        v2 = v42;
        v22 = v41;
        v16 = v54;
        v24 = v47;
        if (v46)
        {
          goto LABEL_95;
        }

        goto LABEL_34;
      }

LABEL_88:
      if (v38 == v40)
      {
        goto LABEL_94;
      }

      goto LABEL_89;
    }

    if (v17)
    {
      goto LABEL_34;
    }

    if (v26)
    {
      v28 = 1802658148;
    }

    else
    {
      v28 = 0x746867696CLL;
    }

    if (v26)
    {
      v29 = 0xE400000000000000;
    }

    else
    {
      v29 = 0xE500000000000000;
    }

    if (v28 != v23 || v29 != v24)
    {
      v31 = v22;
      v32 = v2;
      v33 = v10;
      v34 = v23;
      v35 = v21;
      v36 = sub_21A0E6C5C();

      v21 = v35;
      v23 = v34;
      v10 = v33;
      v2 = v32;
      v22 = v31;
      v16 = v54;
      if (v36)
      {
        goto LABEL_95;
      }

      goto LABEL_34;
    }

LABEL_94:

LABEL_95:
    v5 = v49;
    v3 = v50;
    v9 = v48;
    v4 = v51;
    v8 = v52;
  }

  while (v52);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219FAAFB4(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_21A0E6DAC();

    sub_21A0E626C();
    v16 = sub_21A0E6DFC();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_21A0E6C5C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219FAB16C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - v6;
  ActivityAsset.hash(into:)(a1);
  sub_219F91544(a1, *(v1 + *(v3 + 28)));
  v8 = *(v1 + *(v3 + 32));
  result = MEMORY[0x21CED2490](*(v8 + 16));
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_219F45500(v11, v7, &qword_27CCD98C8);
      v13 = sub_219F73104();
      sub_219FC5A20(a1, v3, v13);
      result = sub_219F6409C(v7, &qword_27CCD98C8);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_219FAB2D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - v6;
  sub_21A0E481C();
  sub_219FABFBC(&qword_27CCD99F8, MEMORY[0x277CC9260]);
  sub_21A0E615C();
  sub_219F91544(a1, *(v1 + *(v3 + 28)));
  v8 = *(v1 + *(v3 + 32));
  result = MEMORY[0x21CED2490](*(v8 + 16));
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_219F45500(v11, v7, &qword_27CCD99C0);
      v13 = sub_219FACEFC();
      sub_219FC5B70(a1, v3, v13);
      result = sub_219F6409C(v7, &qword_27CCD99C0);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

void *sub_219FAB47C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _s22NewsLiveActivitiesCore21URLAssetConfigurationV6RecipeV5ErrorO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        v14 = *a1;
        if (v3 != v6 || v2 != v5)
        {
          v10 = sub_21A0E6C5C();
          sub_219FACECC(v6, v5, 2u);
          sub_219FACECC(v3, v2, 2u);
          sub_219FACEE4(v3, v2, 2u);
          v11 = v6;
          v12 = v5;
          v13 = 2;
          goto LABEL_22;
        }

        sub_219FACECC(v14, v2, 2u);
        sub_219FACECC(v3, v2, 2u);
        sub_219FACEE4(v3, v2, 2u);
        v20 = v3;
        v21 = v2;
        v22 = 2;
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    if (v7 != 3 || (v5 | v6) != 0)
    {
      goto LABEL_27;
    }

    sub_219FACEE4(*a1, v2, 3u);
    v20 = 0;
    v21 = 0;
    v22 = 3;
  }

  else
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        v8 = *a1;
        if (v3 != v6 || v2 != v5)
        {
          v10 = sub_21A0E6C5C();
          sub_219FACECC(v6, v5, 0);
          sub_219FACECC(v3, v2, 0);
          sub_219FACEE4(v3, v2, 0);
          v11 = v6;
          v12 = v5;
          v13 = 0;
LABEL_22:
          sub_219FACEE4(v11, v12, v13);
          return v10 & 1;
        }

        sub_219FACECC(v8, v2, 0);
        sub_219FACECC(v3, v2, 0);
        sub_219FACEE4(v3, v2, 0);
        v20 = v3;
        v21 = v2;
        v22 = 0;
        goto LABEL_32;
      }

LABEL_27:
      sub_219FACECC(*a2, *(a2 + 8), v7);
      sub_219FACECC(v3, v2, v4);
      sub_219FACEE4(v3, v2, v4);
      sub_219FACEE4(v6, v5, v7);
      return 0;
    }

    if (v7 != 1)
    {
      goto LABEL_27;
    }

    v16 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v10 = sub_21A0E6C5C();
      sub_219FACECC(v6, v5, 1u);
      sub_219FACECC(v3, v2, 1u);
      sub_219FACEE4(v3, v2, 1u);
      v11 = v6;
      v12 = v5;
      v13 = 1;
      goto LABEL_22;
    }

    sub_219FACECC(v16, v2, 1u);
    sub_219FACECC(v3, v2, 1u);
    sub_219FACEE4(v3, v2, 1u);
    v20 = v3;
    v21 = v2;
    v22 = 1;
  }

LABEL_32:
  sub_219FACEE4(v20, v21, v22);
  return 1;
}

BOOL sub_219FAB7D8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v37[0] = v3;
  v37[1] = v4;
  v37[2] = v6;
  v37[3] = v5;
  v38 = v7;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v42 = v11;
  v43 = v12;
  if (v7)
  {
    if (v7 == 1)
    {
      if (v12 == 1)
      {
        v13 = v8;
        v14 = v9;
        v15 = v11;
        v16 = v10;
        v17 = sub_219F76AE4(v3, v8);
        sub_219F7DCDC(v13, v14, v16, v15, 1u);
        sub_219F7DCDC(v3, v4, v6, v5, 1u);
        sub_219F6409C(v37, &qword_27CCDA858);
        return v17 & 1;
      }
    }

    else if (v12 == 2)
    {
      v25 = *(v3 + 16);
      if (v25 == *(v8 + 16))
      {
        if (!v25 || v3 == v8)
        {
LABEL_19:
          sub_219F7DCDC(v8, v9, v10, v11, 2u);
          sub_219F7DCDC(v3, v4, v6, v5, 2u);
          sub_219F6409C(v37, &qword_27CCDA858);
          return 1;
        }

        v26 = (v3 + 32);
        v27 = (v8 + 32);
        while (*v26 == *v27)
        {
          ++v26;
          ++v27;
          if (!--v25)
          {
            goto LABEL_19;
          }
        }
      }

      sub_219F7DCDC(v8, v9, v10, v11, 2u);
      v28 = v3;
      v29 = v4;
      v30 = v6;
      v31 = v5;
      v32 = 2;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v12)
  {
LABEL_20:
    sub_219F7DCDC(v8, v9, v10, v11, v12);
    v28 = v3;
    v29 = v4;
    v30 = v6;
    v31 = v5;
    v32 = v7;
LABEL_21:
    sub_219F7DCDC(v28, v29, v30, v31, v32);
LABEL_22:
    sub_219F6409C(v37, &qword_27CCDA858);
    return 0;
  }

  if (!v4)
  {
    if (!v9)
    {
      goto LABEL_28;
    }

    v4 = 0;
LABEL_27:
    sub_219F7DCDC(v8, v9, v10, v11, 0);
    v28 = v3;
    v29 = v4;
    v30 = v6;
    v31 = v5;
    v32 = 0;
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  if (v3 != v8 || v4 != v9)
  {
    v19 = v8;
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = sub_21A0E6C5C();
    v9 = v20;
    v10 = v21;
    v11 = v22;
    v24 = v23;
    v8 = v19;
    if ((v24 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v33 = v10;
  v34 = v11;
  sub_219F7DCDC(v8, v9, v10, v11, 0);
  sub_219F7DCDC(v3, v4, v6, v5, 0);

  v35 = sub_219FAAA00(v6, v33);

  if ((v35 & 1) == 0)
  {
    goto LABEL_22;
  }

  v36 = sub_219F76B74(v5, v34);
  sub_219F6409C(v37, &qword_27CCDA858);
  return (v36 & 1) != 0;
}

uint64_t _s22NewsLiveActivitiesCore21URLAssetConfigurationV6FormatO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v35 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v35, v3);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A0E481C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLAssetConfiguration.Format(0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99A8);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = &v34 - v21;
  v23 = *(v20 + 56);
  sub_219FAC288(a1, &v34 - v21, type metadata accessor for URLAssetConfiguration.Format);
  sub_219FAC288(v37, &v22[v23], type metadata accessor for URLAssetConfiguration.Format);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_219FAC288(v22, v17, type metadata accessor for URLAssetConfiguration.Format);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v9, &v22[v23], v5);
      v31 = sub_21A0E478C();
      v32 = *(v6 + 8);
      v32(v9, v5);
      v32(v17, v5);
      sub_219FACFB0(v22, type metadata accessor for URLAssetConfiguration.Format);
      return v31 & 1;
    }

    (*(v6 + 8))(v17, v5);
    goto LABEL_11;
  }

  sub_219FAC288(v22, v14, type metadata accessor for URLAssetConfiguration.Format);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_219FACFB0(v14, type metadata accessor for URLAssetConfiguration.Recipe);
LABEL_11:
    sub_219F6409C(v22, &qword_27CCD99A8);
LABEL_14:
    v31 = 0;
    return v31 & 1;
  }

  v24 = &v22[v23];
  v25 = v36;
  sub_219FAC004(v24, v36, type metadata accessor for URLAssetConfiguration.Recipe);
  sub_219FABFBC(&qword_27CCD99B8, MEMORY[0x277CC9260]);
  if ((sub_21A0E61CC() & 1) == 0 || (v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0), v27 = *(v26 + 28), v28 = *&v14[v27], v29 = *(v25 + v27), , , v30 = sub_219FAAA00(v28, v29), , , (v30 & 1) == 0) || (sub_219F76D10(*&v14[*(v26 + 32)], *(v25 + *(v26 + 32))) & 1) == 0 || (sub_21A0795D4(*&v14[*(v35 + 20)], *(v25 + *(v35 + 20))) & 1) == 0)
  {
    sub_219FACFB0(v25, type metadata accessor for URLAssetConfiguration.Recipe);
    sub_219FACFB0(v14, type metadata accessor for URLAssetConfiguration.Recipe);
    sub_219FACFB0(v22, type metadata accessor for URLAssetConfiguration.Format);
    goto LABEL_14;
  }

  sub_219FACFB0(v25, type metadata accessor for URLAssetConfiguration.Recipe);
  sub_219FACFB0(v14, type metadata accessor for URLAssetConfiguration.Recipe);
  sub_219FACFB0(v22, type metadata accessor for URLAssetConfiguration.Format);
  v31 = 1;
  return v31 & 1;
}

uint64_t sub_219FABFBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219FAC004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_219FAC0B4()
{
  result = qword_27CCDA6B8;
  if (!qword_27CCDA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA6B8);
  }

  return result;
}

unint64_t sub_219FAC108()
{
  result = qword_27CCDA708;
  if (!qword_27CCDA708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA708);
  }

  return result;
}

unint64_t sub_219FAC15C()
{
  result = qword_27CCDA1D0;
  if (!qword_27CCDA1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA1D0);
  }

  return result;
}

unint64_t sub_219FAC1E0()
{
  result = qword_27CCDA710;
  if (!qword_27CCDA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA710);
  }

  return result;
}

unint64_t sub_219FAC234()
{
  result = qword_27CCDA728;
  if (!qword_27CCDA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA728);
  }

  return result;
}

uint64_t sub_219FAC288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_219FAC2F0()
{
  result = qword_27CCDA738;
  if (!qword_27CCDA738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA6F8);
    v1 = MEMORY[0x277CC9260];
    sub_219FABFBC(&qword_27CCDA6C0, MEMORY[0x277CC9260]);
    sub_219FABFBC(&qword_27CCDA6E0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA738);
  }

  return result;
}

uint64_t sub_219FAC3D8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA718);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219FAC45C()
{
  result = qword_27CCDA748;
  if (!qword_27CCDA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA748);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore21URLAssetConfigurationV6RecipeV5ErrorO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_219FAC658(uint64_t a1, unsigned int a2)
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

uint64_t sub_219FAC6A0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_219FAC6E4(uint64_t result, unsigned int a2)
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

uint64_t sub_219FAC718(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_219FAC760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_219FAC7E4()
{
  result = qword_27CCDA780;
  if (!qword_27CCDA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA780);
  }

  return result;
}

unint64_t sub_219FAC83C()
{
  result = qword_27CCDA788;
  if (!qword_27CCDA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA788);
  }

  return result;
}

unint64_t sub_219FAC894()
{
  result = qword_27CCDA790;
  if (!qword_27CCDA790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA790);
  }

  return result;
}

unint64_t sub_219FAC8EC()
{
  result = qword_27CCDA798;
  if (!qword_27CCDA798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA798);
  }

  return result;
}

unint64_t sub_219FAC944()
{
  result = qword_27CCDA7A0;
  if (!qword_27CCDA7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA7A0);
  }

  return result;
}

unint64_t sub_219FAC99C()
{
  result = qword_27CCDA7A8;
  if (!qword_27CCDA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA7A8);
  }

  return result;
}

unint64_t sub_219FAC9F4()
{
  result = qword_27CCDA7B0;
  if (!qword_27CCDA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA7B0);
  }

  return result;
}

unint64_t sub_219FACA48()
{
  result = qword_27CCDA7D0;
  if (!qword_27CCDA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA7D0);
  }

  return result;
}

uint64_t sub_219FACA9C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_219FACB38(&qword_27CCDA7F0, &qword_27CCD9648);
    sub_219FACB98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219FACB38(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219FACB98()
{
  result = qword_27CCDA7F8;
  if (!qword_27CCDA7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA7F8);
  }

  return result;
}

unint64_t sub_219FACC14()
{
  result = qword_27CCDA800;
  if (!qword_27CCDA800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA800);
  }

  return result;
}

unint64_t sub_219FACC68()
{
  result = qword_27CCDA810;
  if (!qword_27CCDA810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA810);
  }

  return result;
}

unint64_t sub_219FACCE4()
{
  result = qword_27CCDA840;
  if (!qword_27CCDA840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA838);
    sub_219FACA9C(&qword_27CCDA848, &qword_27CCDA850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA840);
  }

  return result;
}

uint64_t sub_219FACD94(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21A0E6C5C() & 1;
  }
}

unint64_t sub_219FACDEC()
{
  result = qword_27CCDA880;
  if (!qword_27CCDA880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA880);
  }

  return result;
}

uint64_t sub_219FACE6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, void, void))
{
  if (*(v3 + 25))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return a3(a1, a2, *(v3 + 16), v4 | *(v3 + 24), *(v3 + 32));
}

uint64_t sub_219FACECC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_219FACEE4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_219FACEFC()
{
  result = qword_27CCDA898;
  if (!qword_27CCDA898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD99C0);
    sub_219FABFBC(&qword_27CCD99F8, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA898);
  }

  return result;
}

uint64_t sub_219FACFB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219FAD034()
{
  result = qword_27CCDA8A0;
  if (!qword_27CCDA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA8A0);
  }

  return result;
}

unint64_t sub_219FAD08C()
{
  result = qword_27CCDA8A8;
  if (!qword_27CCDA8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA8A8);
  }

  return result;
}

unint64_t sub_219FAD0E4()
{
  result = qword_27CCDA8B0;
  if (!qword_27CCDA8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA8B0);
  }

  return result;
}

unint64_t sub_219FAD13C()
{
  result = qword_27CCDA8B8;
  if (!qword_27CCDA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA8B8);
  }

  return result;
}

unint64_t sub_219FAD194()
{
  result = qword_27CCDA8C0;
  if (!qword_27CCDA8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA8C0);
  }

  return result;
}

unint64_t sub_219FAD1EC()
{
  result = qword_27CCDA8C8[0];
  if (!qword_27CCDA8C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CCDA8C8);
  }

  return result;
}

uint64_t sub_219FAD254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t sub_219FAD32C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_219FAD39C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_219FAD4DC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_219FAD894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v8 = v23 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9788);
  v9 = sub_21A0E53AC();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v23 - v16;
  (*(v2 + 104))(v3, v2);
  v24 = 2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_219FB2818();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  v19 = sub_219FAE7F0();
  v23[1] = AssociatedConformanceWitness;
  v23[2] = v19;
  WitnessTable = swift_getWitnessTable();
  sub_21A099F68(v14, v9, WitnessTable);
  v21 = *(v10 + 8);
  v21(v14, v9);
  sub_21A099F68(v17, v9, WitnessTable);
  return (v21)(v17, v9);
}

uint64_t sub_219FADB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v8 = v23 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9788);
  v9 = sub_21A0E53AC();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v23 - v16;
  (*(v2 + 112))(v3, v2);
  v24 = 2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_219FB2818();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  v19 = sub_219FAE7F0();
  v23[1] = AssociatedConformanceWitness;
  v23[2] = v19;
  WitnessTable = swift_getWitnessTable();
  sub_21A099F68(v14, v9, WitnessTable);
  v21 = *(v10 + 8);
  v21(v14, v9);
  sub_21A099F68(v17, v9, WitnessTable);
  return (v21)(v17, v9);
}

uint64_t sub_219FADDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v8 = v23 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9788);
  v9 = sub_21A0E53AC();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v23 - v16;
  (*(v2 + 120))(v3, v2);
  v24 = 2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_219FB2818();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  v19 = sub_219FAE7F0();
  v23[1] = AssociatedConformanceWitness;
  v23[2] = v19;
  WitnessTable = swift_getWitnessTable();
  sub_21A099F68(v14, v9, WitnessTable);
  v21 = *(v10 + 8);
  v21(v14, v9);
  sub_21A099F68(v17, v9, WitnessTable);
  return (v21)(v17, v9);
}

uint64_t sub_219FAE02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v8 = v23 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9788);
  v9 = sub_21A0E53AC();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v23 - v16;
  (*(v2 + 128))(v3, v2);
  v24 = 0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_219FB2818();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  v19 = sub_219FAE7F0();
  v23[1] = AssociatedConformanceWitness;
  v23[2] = v19;
  WitnessTable = swift_getWitnessTable();
  sub_21A099F68(v14, v9, WitnessTable);
  v21 = *(v10 + 8);
  v21(v14, v9);
  sub_21A099F68(v17, v9, WitnessTable);
  return (v21)(v17, v9);
}

uint64_t sub_219FAE2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v8 = v23 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9788);
  v9 = sub_21A0E53AC();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v23 - v16;
  (*(v2 + 136))(v3, v2);
  v24 = 0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_219FB2818();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  v19 = sub_219FAE7F0();
  v23[1] = AssociatedConformanceWitness;
  v23[2] = v19;
  WitnessTable = swift_getWitnessTable();
  sub_21A099F68(v14, v9, WitnessTable);
  v21 = *(v10 + 8);
  v21(v14, v9);
  sub_21A099F68(v17, v9, WitnessTable);
  return (v21)(v17, v9);
}

uint64_t sub_219FAE534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v8 = v23 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9788);
  v9 = sub_21A0E53AC();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v23 - v16;
  (*(v2 + 144))(v3, v2);
  v24 = 1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_219FB2818();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  v19 = sub_219FAE7F0();
  v23[1] = AssociatedConformanceWitness;
  v23[2] = v19;
  WitnessTable = swift_getWitnessTable();
  sub_21A099F68(v14, v9, WitnessTable);
  v21 = *(v10 + 8);
  v21(v14, v9);
  sub_21A099F68(v17, v9, WitnessTable);
  return (v21)(v17, v9);
}

unint64_t sub_219FAE7F0()
{
  result = qword_27CCD9780;
  if (!qword_27CCD9780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9780);
  }

  return result;
}

uint64_t get_witness_table_22NewsLiveActivitiesCore0A20DynamicIslandContentRzl7SwiftUI08ModifiedG0Vy7MinimalQzAC30_EnvironmentKeyWritingModifierVyAA9PlacementOGGAC4ViewHPxAaBHD1_AgcNHA6__AlC0qO0HPyHCHCTm()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9788);
  sub_21A0E53AC();
  swift_getAssociatedConformanceWitness();
  sub_219FAE7F0();
  return swift_getWitnessTable();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_219FAE93C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 33))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_219FAE990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t NewsLiveActivityWidgetBundle.body.getter()
{
  v0 = sub_219FAEA40();

  return MEMORY[0x28212E3E0](v0, &type metadata for NewsLiveActivityWidget, v0);
}

unint64_t sub_219FAEA40()
{
  result = qword_280C880F0;
  if (!qword_280C880F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C880F0);
  }

  return result;
}

uint64_t sub_219FAEA94()
{
  v0 = sub_219FAEA40();

  return MEMORY[0x28212E3E0](v0, &type metadata for NewsLiveActivityWidget, v0);
}

uint64_t NewsLiveActivityWidget.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA950);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v12 - v3;
  type metadata accessor for NewsLiveActivityAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA958);
  sub_219FAF414(qword_280C89F60, type metadata accessor for NewsLiveActivityAttributes);
  v5 = type metadata accessor for NewsLiveActivityFamilyView();
  v6 = sub_219FAF414(&qword_280C87DD0, type metadata accessor for NewsLiveActivityFamilyView);
  v12[0] = v5;
  v12[1] = v6;
  swift_getOpaqueTypeConformance2();
  sub_21A0E603C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA960);
  v7 = sub_21A0E5FDC();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21A0EE0A0;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x277CE3CB0], v7);
  sub_219FAF45C();
  sub_21A0E56AC();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_219FAED9C(uint64_t a1)
{
  v2 = type metadata accessor for NewsLiveActivityAttributes(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for NewsLiveActivityFamilyView();
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA968);
  (*(*(v16 - 8) + 16))(v14 + v15, a1, v16);
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA970);
  swift_storeEnumTagMultiPayload();
  sub_21A0E600C();
  NewsLiveActivityAttributes.destinationURLWithAttribution.getter(v9);
  sub_219FAF8A4(v5, type metadata accessor for NewsLiveActivityAttributes);
  v17 = sub_21A0E481C();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  sub_219FAF414(&qword_280C87DD0, type metadata accessor for NewsLiveActivityFamilyView);
  sub_21A0E5A1C();
  sub_219F8EC8C(v9);
  return sub_219FAF8A4(v14, type metadata accessor for NewsLiveActivityFamilyView);
}

uint64_t sub_219FAF020@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v30 - v3;
  v5 = type metadata accessor for NewsLiveActivityAttributes(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_21A0E5FCC();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v30 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NewsDynamicIsland();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA968);
  sub_21A0E600C();
  sub_21A0E601C();
  sub_21A096B80(v34);
  sub_219FAF8A4(v15, type metadata accessor for NewsDynamicIsland);
  v16 = v35;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v17 = type metadata accessor for AttributeRecordingNewsDynamicIslandContent();
  v36[3] = v17;
  WitnessTable = swift_getWitnessTable();
  v36[4] = WitnessTable;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  sub_219FAD254(v16, boxed_opaque_existential_1);
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_21A0E600C();
  v21 = *v8;
  v20 = v8[1];

  v22 = sub_219FAF8A4(v8, type metadata accessor for NewsLiveActivityAttributes);
  v34[0] = v21;
  v34[1] = v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v30 - v24;
  (*(v26 + 16))(&v30 - v24, boxed_opaque_existential_1, v17);
  v27 = v30;
  sub_21A095E98(v34, v25, v17, WitnessTable, v30);
  sub_21A0E600C();
  NewsLiveActivityAttributes.destinationURLWithAttribution.getter(v4);
  sub_219FAF8A4(v8, type metadata accessor for NewsLiveActivityAttributes);
  v28 = sub_21A0E481C();
  (*(*(v28 - 8) + 56))(v4, 0, 1, v28);
  sub_21A0E5FBC();
  sub_219F8EC8C(v4);
  (*(v31 + 8))(v27, v32);
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_219FAF414(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219FAF45C()
{
  result = qword_280C87948;
  if (!qword_280C87948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C87948);
  }

  return result;
}

uint64_t sub_219FAF4F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA950);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v12 - v3;
  type metadata accessor for NewsLiveActivityAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA958);
  sub_219FAF414(qword_280C89F60, type metadata accessor for NewsLiveActivityAttributes);
  v5 = type metadata accessor for NewsLiveActivityFamilyView();
  v6 = sub_219FAF414(&qword_280C87DD0, type metadata accessor for NewsLiveActivityFamilyView);
  v12[0] = v5;
  v12[1] = v6;
  swift_getOpaqueTypeConformance2();
  sub_21A0E603C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA960);
  v7 = sub_21A0E5FDC();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21A0EE0A0;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x277CE3CB0], v7);
  sub_219FAF45C();
  sub_21A0E56AC();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_219FAF7DC(uint64_t a1)
{
  v2 = sub_21A0E5FDC();
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21A0E54FC();
}

uint64_t sub_219FAF8A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219FAF904()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_219FAF93C()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    sub_21A0E686C();

    v4 = 0xD00000000000001DLL;
  }

  else
  {
    sub_21A0E686C();

    v4 = 0xD000000000000019;
  }

  MEMORY[0x21CED1980](v1, v2);
  return v4;
}

uint64_t sub_219FAF9FC(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v3[2] = v2;
  v3[3] = v5;
  v3[4] = v4;

  return MEMORY[0x2822009F8](sub_219FAFA70, 0, 0);
}

uint64_t sub_219FAFA70()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  *(v0 + 56) = 0;
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  *(v4 + 40) = *(v0 + 56);

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_219FAFBA4;
  v6 = *(v0 + 24);

  return (sub_219FB03C4)(v6, v1, 0, &unk_21A0EEF60, v4);
}

uint64_t sub_219FAFBA4()
{

  return MEMORY[0x2822009F8](sub_219FAFCBC, 0, 0);
}

uint64_t sub_219FAFCBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FAFD1C(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v3[2] = v2;
  v3[3] = v5;
  v3[4] = v4;

  return MEMORY[0x2822009F8](sub_219FAFD90, 0, 0);
}

uint64_t sub_219FAFD90()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  *(v0 + 56) = 1;
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  *(v4 + 40) = *(v0 + 56);

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_219FAFEC8;
  v6 = *(v0 + 24);

  return (sub_219FB03C4)(v6, v1, 1, &unk_21A0EEF40, v4);
}

uint64_t sub_219FAFEC8()
{

  return MEMORY[0x2822009F8](sub_219FB11EC, 0, 0);
}

uint64_t sub_219FAFFE0(uint64_t a1, uint64_t *a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_219F4996C;

  return sub_219FAF9FC(v4, a2);
}

uint64_t sub_219FB0074(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = v5;
  return MEMORY[0x2822009F8](sub_219FB009C, 0, 0);
}

uint64_t sub_219FB009C()
{
  __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_219FB0158;
  v3 = v0[3];
  v2 = v0[4];

  return sub_219FB0BEC(v3, v2);
}

uint64_t sub_219FB0158()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_219FB024C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = v5;
  return MEMORY[0x2822009F8](sub_219FB0274, 0, 0);
}

uint64_t sub_219FB0274()
{
  __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_219FB11E8;
  v3 = v0[3];
  v2 = v0[4];

  return sub_219FB0BEC(v3, v2);
}

uint64_t sub_219FB0330(uint64_t a1, uint64_t *a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_219F49B18;

  return sub_219FAFD1C(v4, a2);
}

uint64_t sub_219FB03C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 136) = a5;
  *(v6 + 144) = v5;
  *(v6 + 120) = a2;
  *(v6 + 128) = a4;
  *(v6 + 105) = a3;
  *(v6 + 112) = a1;
  *(v6 + 88) = a1;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3 & 1;
  return MEMORY[0x2822009F8](sub_219FB03FC, v5, 0);
}

uint64_t sub_219FB03FC()
{
  v20 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = *MEMORY[0x277D767B0];
  v0[19] = *MEMORY[0x277D767B0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA978);
  v4 = swift_allocObject();
  v0[20] = v4;
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  v0[21] = v5;
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v1;
  v6 = qword_27CCD90E0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_21A0E516C();
  v0[22] = __swift_project_value_buffer(v7, qword_27CCFE5D0);
  sub_219F79C1C();
  sub_219F79C1C();
  v8 = sub_21A0E514C();
  v9 = sub_21A0E66BC();
  sub_219F79CD8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = sub_219FAF93C();
    v14 = v13;
    sub_219F79CD8();
    v15 = sub_219F50144(v12, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_219F39000, v8, v9, "Requesting additional background time. Task=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x21CED2D30](v11, -1, -1);
    MEMORY[0x21CED2D30](v10, -1, -1);
  }

  else
  {

    sub_219F79CD8();
  }

  v0[23] = objc_opt_self();
  sub_21A0E64FC();
  v0[24] = sub_21A0E64EC();
  v17 = sub_21A0E647C();

  return MEMORY[0x2822009F8](sub_219FB06B8, v17, v16);
}

uint64_t sub_219FB06B8()
{
  v1 = v0[23];
  v2 = v0[18];

  v0[25] = [v1 sharedApplication];

  return MEMORY[0x2822009F8](sub_219FB0740, v2, 0);
}

uint64_t sub_219FB0740()
{
  v32 = v0;
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[19];
  sub_219FAF93C();
  v4 = sub_21A0E61DC();

  v0[6] = sub_219FB1138;
  v0[7] = v2;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_219F47FC0;
  v0[5] = &block_descriptor;
  v5 = _Block_copy(v0 + 2);

  v6 = [v1 beginBackgroundTaskWithName:v4 expirationHandler:v5];
  _Block_release(v5);

  if (v6 == v3)
  {
    sub_219F79C1C();
    sub_219F79C1C();
    v7 = sub_21A0E514C();
    v8 = sub_21A0E66BC();
    sub_219F79CD8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 136315138;
      v11 = sub_219FAF93C();
      v13 = v12;
      sub_219F79CD8();
      v14 = sub_219F50144(v11, v13, &v31);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_219F39000, v7, v8, "Additional background time request denied. Task=%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x21CED2D30](v10, -1, -1);
      MEMORY[0x21CED2D30](v9, -1, -1);
    }

    else
    {

      sub_219F79CD8();
    }
  }

  else
  {
    v15 = v0[20];
    os_unfair_lock_lock((v15 + 24));
    *(v15 + 16) = v6;
    os_unfair_lock_unlock((v15 + 24));
    v16 = v0[11];
    v17 = v0[12];
    sub_219F79C1C();
    sub_219F79C1C();
    v18 = sub_21A0E514C();
    v19 = sub_21A0E66BC();
    sub_219F79CD8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315394;
      v22 = sub_219FAF93C();
      v24 = v23;
      sub_219F79CD8();
      v25 = sub_219F50144(v22, v24, &v31);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v6;
      _os_log_impl(&dword_219F39000, v18, v19, "Requested additional background time. Task=%s, ID=%ld", v20, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CED2D30](v21, -1, -1);
      MEMORY[0x21CED2D30](v20, -1, -1);

      v16 = v0[11];
      v17 = v0[12];
    }

    else
    {

      sub_219F79CD8();
    }

    v26 = v0[18];
    v0[8] = v16;
    v0[9] = v17;
    sub_219F79C1C();
    sub_219F4DBDC();
    sub_21A0E681C();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v26 + 112);
    *(v26 + 112) = 0x8000000000000000;
    sub_219F7C42C(v6, (v0 + 2), isUniquelyReferenced_nonNull_native);
    sub_219F7DAF0((v0 + 2));
    *(v26 + 112) = v30;
    swift_endAccess();
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_219FB0BEC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_219FB0C10, v2, 0);
}

uint64_t sub_219FB0C10()
{
  v0[7] = v0[10];
  v1 = v0[12];
  v0[8] = v0[11];
  v0[13] = sub_219F4DBDC();

  sub_21A0E681C();
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {

    v3 = sub_219F9FDD8((v0 + 2));
    if (v4)
    {
      v0[14] = *(*(v2 + 56) + 8 * v3);
      sub_219F7DAF0((v0 + 2));

      v0[15] = objc_opt_self();
      sub_21A0E64FC();
      v0[16] = sub_21A0E64EC();
      v6 = sub_21A0E647C();

      return MEMORY[0x2822009F8](sub_219FB0DA0, v6, v5);
    }
  }

  sub_219F7DAF0((v0 + 2));
  v7 = v0[1];

  return v7();
}

uint64_t sub_219FB0DA0()
{
  v1 = v0[15];
  v2 = v0[12];

  v0[17] = [v1 sharedApplication];

  return MEMORY[0x2822009F8](sub_219FB0E28, v2, 0);
}

uint64_t sub_219FB0E28()
{
  v12 = v0;
  v1 = v0[17];
  [v1 endBackgroundTask_];

  if (qword_27CCD90E0 != -1)
  {
    swift_once();
  }

  v2 = sub_21A0E516C();
  __swift_project_value_buffer(v2, qword_27CCFE5D0);
  v3 = sub_21A0E514C();
  v4 = sub_21A0E66BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_219F39000, v3, v4, "Ended Background Task. ID=%ld", v6, 0xCu);
    MEMORY[0x21CED2D30](v6, -1, -1);
  }

  v8 = v0[10];
  v7 = v0[11];

  v0[2] = v8;
  v0[3] = v7;

  sub_21A0E681C();
  swift_beginAccess();
  sub_219F7AC48(0, 1, v11);
  swift_endAccess();
  v9 = v0[1];

  return v9();
}

uint64_t sub_219FB0FDC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F49B18;

  return sub_219FB0BEC(v3, v4);
}

uint64_t sub_219FB1094()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_219F49B18;

  return sub_219FB0FDC(v0 + 16, (v0 + 24));
}

uint64_t sub_219FB1144()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_219F4996C;

  return sub_219FB0FDC(v0 + 16, (v0 + 24));
}

uint64_t type metadata accessor for ActivityFlexibleWatchUpdateGraphicView()
{
  result = qword_27CCDA980;
  if (!qword_27CCDA980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219FB1264()
{
  type metadata accessor for ActivityFlexibleUpdate.Graphic(319);
  if (v0 <= 0x3F)
  {
    sub_219FB12E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_219FB12E8()
{
  if (!qword_27CCDA990)
  {
    v0 = sub_21A0E674C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCDA990);
    }
  }
}

uint64_t sub_219FB1354@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v78 - v4;
  v6 = type metadata accessor for ActivityAssetView(0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v79 = &v78 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v78 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA470);
  MEMORY[0x28223BE20](v80, v17);
  v19 = &v78 - v18;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA9B8);
  MEMORY[0x28223BE20](v78, v20);
  v22 = &v78 - v21;
  sub_219F45500(v1, v5, &qword_27CCD98D0);
  updated = type metadata accessor for ActivityFlexibleWatchUpdateGraphicView();
  memcpy(v114, (v1 + *(updated + 20)), 0x2C0uLL);
  if (sub_219FB2448(v114) == 1)
  {
    sub_219FB2474(v113);
  }

  else
  {
    sub_219F45500(v114, v113, &qword_27CCDA9B0);
    memcpy(v113, v114, sizeof(v113));
  }

  *v10 = swift_getKeyPath();
  *(v10 + 24) = 0u;
  v10[40] = 0;
  *(v10 + 8) = 0u;
  v24 = &v10[v6[6]];
  v25 = v107;
  sub_219F5EC1C(v107);
  v26 = v107[9];
  *(v24 + 8) = v107[8];
  *(v24 + 9) = v26;
  *(v24 + 10) = v107[10];
  v27 = v107[5];
  *(v24 + 4) = v107[4];
  *(v24 + 5) = v27;
  v28 = v107[7];
  *(v24 + 6) = v107[6];
  *(v24 + 7) = v28;
  v29 = v107[1];
  *v24 = v107[0];
  *(v24 + 1) = v29;
  v30 = v107[3];
  *(v24 + 2) = v107[2];
  *(v24 + 3) = v30;
  v31 = &v10[v6[7]];
  sub_219F5EC1C(v108);
  v32 = v108[9];
  *(v31 + 8) = v108[8];
  *(v31 + 9) = v32;
  *(v31 + 10) = v108[10];
  v33 = v108[5];
  *(v31 + 4) = v108[4];
  *(v31 + 5) = v33;
  v34 = v108[7];
  *(v31 + 6) = v108[6];
  *(v31 + 7) = v34;
  v35 = v108[1];
  *v31 = v108[0];
  *(v31 + 1) = v35;
  v36 = v108[3];
  *(v31 + 2) = v108[2];
  *(v31 + 3) = v36;
  v10[v6[8]] = 0;
  sub_219F4D494(v5, &v10[v6[5]], &qword_27CCD98D0);
  memcpy(v109, v113, sizeof(v109));
  if (sub_219FB24B0(v109) != 1)
  {
    v25 = v109;
    sub_219F45500(v109, v95, &qword_27CCDA4A8);
  }

  v37 = v25[9];
  v104 = v25[8];
  v105 = v37;
  v106 = v25[10];
  v38 = v25[5];
  v100 = v25[4];
  v101 = v38;
  v39 = v25[7];
  v102 = v25[6];
  v103 = v39;
  v40 = v25[1];
  v96 = *v25;
  v97 = v40;
  v41 = v25[3];
  v98 = v25[2];
  v99 = v41;
  v42 = *(v24 + 9);
  v94[8] = *(v24 + 8);
  v94[9] = v42;
  v94[10] = *(v24 + 10);
  v43 = *(v24 + 5);
  v94[4] = *(v24 + 4);
  v94[5] = v43;
  v44 = *(v24 + 7);
  v94[6] = *(v24 + 6);
  v94[7] = v44;
  v45 = *(v24 + 1);
  v94[0] = *v24;
  v94[1] = v45;
  v46 = *(v24 + 3);
  v94[2] = *(v24 + 2);
  v94[3] = v46;
  sub_219F6409C(v94, &qword_27CCDA4A8);
  v47 = v105;
  *(v24 + 8) = v104;
  *(v24 + 9) = v47;
  *(v24 + 10) = v106;
  v48 = v101;
  *(v24 + 4) = v100;
  *(v24 + 5) = v48;
  v49 = v103;
  *(v24 + 6) = v102;
  *(v24 + 7) = v49;
  v50 = v97;
  *v24 = v96;
  *(v24 + 1) = v50;
  v51 = v99;
  *(v24 + 2) = v98;
  *(v24 + 3) = v51;
  memcpy(v95, v113, sizeof(v95));
  if (sub_219FB24B0(v95) == 1)
  {
    v52 = v108;
  }

  else
  {
    v52 = &v95[176];
    sub_219F45500(&v95[176], &v83, &qword_27CCD9B40);
    sub_219F6409C(v113, &qword_27CCDA9B0);
  }

  v53 = v52[9];
  v91 = v52[8];
  v92 = v53;
  v93 = v52[10];
  v54 = v52[5];
  v87 = v52[4];
  v88 = v54;
  v55 = v52[7];
  v89 = v52[6];
  v90 = v55;
  v56 = v52[1];
  v83 = *v52;
  v84 = v56;
  v57 = v52[3];
  v85 = v52[2];
  v86 = v57;
  v58 = *(v31 + 9);
  v82[8] = *(v31 + 8);
  v82[9] = v58;
  v82[10] = *(v31 + 10);
  v59 = *(v31 + 5);
  v82[4] = *(v31 + 4);
  v82[5] = v59;
  v60 = *(v31 + 7);
  v82[6] = *(v31 + 6);
  v82[7] = v60;
  v61 = *(v31 + 1);
  v82[0] = *v31;
  v82[1] = v61;
  v62 = *(v31 + 3);
  v82[2] = *(v31 + 2);
  v82[3] = v62;
  sub_219F6409C(v82, &qword_27CCD9B40);
  v63 = v92;
  *(v31 + 8) = v91;
  *(v31 + 9) = v63;
  *(v31 + 10) = v93;
  v64 = v88;
  *(v31 + 4) = v87;
  *(v31 + 5) = v64;
  v65 = v90;
  *(v31 + 6) = v89;
  *(v31 + 7) = v65;
  v66 = v84;
  *v31 = v83;
  *(v31 + 1) = v66;
  v67 = v86;
  *(v31 + 2) = v85;
  *(v31 + 3) = v67;
  v68 = v79;
  sub_219FB24D4(v10, v79);
  sub_219FB24D4(v68, v16);
  v16[v6[8]] = 1;
  sub_21A0E5E3C();
  sub_21A0E52AC();
  sub_219FB24D4(v16, v19);
  v69 = &v19[*(v80 + 36)];
  v70 = v111;
  *v69 = v110;
  *(v69 + 1) = v70;
  *(v69 + 2) = v112;
  v71 = &v22[*(v78 + 36)];
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD95C0) + 28);
  v73 = *MEMORY[0x277CE1048];
  v74 = sub_21A0E5CEC();
  (*(*(v74 - 8) + 104))(v71 + v72, v73, v74);
  *v71 = swift_getKeyPath();
  sub_219F4D494(v19, v22, &qword_27CCDA470);
  v75 = v81;
  sub_219F4D494(v22, v81, &qword_27CCDA9B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA9C0);
  v77 = v75 + *(result + 36);
  *v77 = 0x3FF0000000000000;
  *(v77 + 8) = 0;
  return result;
}

uint64_t sub_219FB1A50@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9FC8);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v113 = &v102 - v3;
  v109 = type metadata accessor for ActivityAssetView(0);
  v5 = MEMORY[0x28223BE20](v109, v4);
  v105 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v106 = &v102 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v108 = &v102 - v11;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA470);
  MEMORY[0x28223BE20](v107, v12);
  v112 = &v102 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA9A8);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v111 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v110 = &v102 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v102 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v26 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v102 - v32;
  v34 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  sub_219F45500(v115 + *(v34 + 24), v24, &qword_27CCD98D8);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_219F6409C(v24, &qword_27CCD98D8);
    return (*(v15 + 56))(v114, 1, 1, v14);
  }

  else
  {
    v103 = v14;
    v36 = v114;
    sub_219F4D494(v24, v33, &qword_27CCD98D0);
    v104 = v33;
    sub_219F45500(v33, v30, &qword_27CCD98D0);
    updated = type metadata accessor for ActivityFlexibleWatchUpdateGraphicView();
    memcpy(v145, (v115 + *(updated + 20)), sizeof(v145));
    if (sub_219FB2448(v145) == 1)
    {
      sub_219FB2474(v144);
    }

    else
    {
      sub_219F45500(&v145[352], v144, &qword_27CCDA9B0);
      memcpy(v144, &v145[352], sizeof(v144));
    }

    v38 = v15;
    v39 = v109;
    v40 = v105;
    *v40 = swift_getKeyPath();
    *(v40 + 24) = 0u;
    v40[40] = 0;
    *(v40 + 8) = 0u;
    v41 = &v40[v39[6]];
    v42 = v141;
    sub_219F5EC1C(v141);
    v43 = v141[9];
    *(v41 + 8) = v141[8];
    *(v41 + 9) = v43;
    *(v41 + 10) = v141[10];
    v44 = v141[5];
    *(v41 + 4) = v141[4];
    *(v41 + 5) = v44;
    v45 = v141[7];
    *(v41 + 6) = v141[6];
    *(v41 + 7) = v45;
    v46 = v141[1];
    *v41 = v141[0];
    *(v41 + 1) = v46;
    v47 = v141[3];
    *(v41 + 2) = v141[2];
    *(v41 + 3) = v47;
    v48 = &v40[v39[7]];
    sub_219F5EC1C(v142);
    v49 = v142[9];
    *(v48 + 8) = v142[8];
    *(v48 + 9) = v49;
    *(v48 + 10) = v142[10];
    v50 = v142[5];
    *(v48 + 4) = v142[4];
    *(v48 + 5) = v50;
    v51 = v142[7];
    *(v48 + 6) = v142[6];
    *(v48 + 7) = v51;
    v52 = v142[1];
    *v48 = v142[0];
    *(v48 + 1) = v52;
    v53 = v142[3];
    *(v48 + 2) = v142[2];
    *(v48 + 3) = v53;
    v40[v39[8]] = 0;
    sub_219F4D494(v30, &v40[v39[5]], &qword_27CCD98D0);
    memcpy(v143, v144, sizeof(v143));
    if (sub_219FB24B0(v143) != 1)
    {
      v42 = v143;
      sub_219F45500(v143, v129, &qword_27CCDA4A8);
    }

    v54 = v42[9];
    v138 = v42[8];
    v139 = v54;
    v140 = v42[10];
    v55 = v42[5];
    v134 = v42[4];
    v135 = v55;
    v56 = v42[6];
    v137 = v42[7];
    v136 = v56;
    v57 = v42[1];
    v130 = *v42;
    v131 = v57;
    v58 = v42[2];
    v133 = v42[3];
    v132 = v58;
    v59 = *(v41 + 9);
    v128[8] = *(v41 + 8);
    v128[9] = v59;
    v128[10] = *(v41 + 10);
    v60 = *(v41 + 5);
    v128[4] = *(v41 + 4);
    v128[5] = v60;
    v61 = *(v41 + 7);
    v128[6] = *(v41 + 6);
    v128[7] = v61;
    v62 = *(v41 + 1);
    v128[0] = *v41;
    v128[1] = v62;
    v63 = *(v41 + 3);
    v128[2] = *(v41 + 2);
    v128[3] = v63;
    sub_219F6409C(v128, &qword_27CCDA4A8);
    v64 = v139;
    *(v41 + 8) = v138;
    *(v41 + 9) = v64;
    *(v41 + 10) = v140;
    v65 = v135;
    *(v41 + 4) = v134;
    *(v41 + 5) = v65;
    v66 = v137;
    *(v41 + 6) = v136;
    *(v41 + 7) = v66;
    v67 = v131;
    *v41 = v130;
    *(v41 + 1) = v67;
    v68 = v133;
    *(v41 + 2) = v132;
    *(v41 + 3) = v68;
    memcpy(v129, v144, sizeof(v129));
    if (sub_219FB24B0(v129) == 1)
    {
      v69 = v142;
    }

    else
    {
      v69 = &v129[176];
      sub_219F45500(&v129[176], &v117, &qword_27CCD9B40);
      sub_219F6409C(v144, &qword_27CCDA9B0);
    }

    v70 = v103;
    v71 = v69[9];
    v125 = v69[8];
    v126 = v71;
    v127 = v69[10];
    v72 = v69[5];
    v121 = v69[4];
    v122 = v72;
    v73 = v69[7];
    v123 = v69[6];
    v124 = v73;
    v74 = v69[1];
    v117 = *v69;
    v118 = v74;
    v75 = v69[3];
    v119 = v69[2];
    v120 = v75;
    v76 = *(v48 + 9);
    v116[8] = *(v48 + 8);
    v116[9] = v76;
    v116[10] = *(v48 + 10);
    v77 = *(v48 + 5);
    v116[4] = *(v48 + 4);
    v116[5] = v77;
    v78 = *(v48 + 7);
    v116[6] = *(v48 + 6);
    v116[7] = v78;
    v79 = *(v48 + 1);
    v116[0] = *v48;
    v116[1] = v79;
    v80 = *(v48 + 3);
    v116[2] = *(v48 + 2);
    v116[3] = v80;
    sub_219F6409C(v116, &qword_27CCD9B40);
    v81 = v126;
    *(v48 + 8) = v125;
    *(v48 + 9) = v81;
    *(v48 + 10) = v127;
    v82 = v122;
    *(v48 + 4) = v121;
    *(v48 + 5) = v82;
    v83 = v124;
    *(v48 + 6) = v123;
    *(v48 + 7) = v83;
    v84 = v118;
    *v48 = v117;
    *(v48 + 1) = v84;
    v85 = v120;
    *(v48 + 2) = v119;
    *(v48 + 3) = v85;
    v86 = v40;
    v87 = v106;
    sub_219FB24D4(v86, v106);
    v88 = v87;
    v89 = v108;
    sub_219FB24D4(v88, v108);
    *(v89 + v39[8]) = 1;
    sub_21A0E5E3C();
    sub_21A0E52AC();
    v90 = v112;
    sub_219FB24D4(v89, v112);
    v91 = (v90 + *(v107 + 36));
    v92 = v147;
    *v91 = v146;
    v91[1] = v92;
    v91[2] = v148;
    v93 = sub_21A0E57FC();
    v94 = v113;
    (*(*(v93 - 8) + 56))(v113, 1, 1, v93);
    v95 = sub_21A0E589C();
    sub_219F6409C(v94, &qword_27CCD9FC8);
    sub_219F6409C(v104, &qword_27CCD98D0);
    KeyPath = swift_getKeyPath();
    v97 = v90;
    v98 = v111;
    sub_219F4D494(v97, v111, &qword_27CCDA470);
    v99 = (v98 + *(v70 + 36));
    *v99 = KeyPath;
    v99[1] = v95;
    v100 = v98;
    v101 = v110;
    sub_219F4D494(v100, v110, &qword_27CCDA9A8);
    sub_219F4D494(v101, v36, &qword_27CCDA9A8);
    return (*(v38 + 56))(v36, 0, 1, v70);
  }
}

uint64_t sub_219FB23CC@<X0>(uint64_t a1@<X8>)
{
  sub_219FB1354(a1);
  v2 = sub_21A0E5E2C();
  v4 = v3;
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA998) + 36);
  sub_219FB1A50(v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA9A0);
  v7 = (v5 + *(result + 36));
  *v7 = v2;
  v7[1] = v4;
  return result;
}

uint64_t sub_219FB2448(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3 - 1;
  if (v2 <= 0)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

double sub_219FB2474(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  return result;
}

uint64_t sub_219FB24B0(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219FB24D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityAssetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_219FB2538()
{
  result = qword_27CCDA9C8;
  if (!qword_27CCDA9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA998);
    sub_219FB25F0();
    sub_219F3E490(&qword_27CCDA9F8, &qword_27CCDA9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA9C8);
  }

  return result;
}

unint64_t sub_219FB25F0()
{
  result = qword_27CCDA9D0;
  if (!qword_27CCDA9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA9C0);
    sub_219FB267C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA9D0);
  }

  return result;
}

unint64_t sub_219FB267C()
{
  result = qword_27CCDA9D8;
  if (!qword_27CCDA9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA9B8);
    sub_219FB2734();
    sub_219F3E490(&qword_27CCDA9F0, &qword_27CCD95C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA9D8);
  }

  return result;
}

unint64_t sub_219FB2734()
{
  result = qword_27CCDA9E0;
  if (!qword_27CCDA9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA470);
    sub_219FB27C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA9E0);
  }

  return result;
}

unint64_t sub_219FB27C0()
{
  result = qword_27CCDA9E8;
  if (!qword_27CCDA9E8)
  {
    type metadata accessor for ActivityAssetView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA9E8);
  }

  return result;
}

uint64_t sub_219FB2818()
{
  swift_getKeyPath();
  sub_21A0E5A8C();
}

uint64_t sub_219FB288C()
{
  sub_219F9AE04();

  return sub_21A0E555C();
}

uint64_t sub_219FB28E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219FB2948();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_219FB2948()
{
  result = qword_27CCDAA00;
  if (!qword_27CCDAA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAA00);
  }

  return result;
}

uint64_t type metadata accessor for ActivitySymbolView()
{
  result = qword_27CCDAA10;
  if (!qword_27CCDAA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219FB2A10()
{
  sub_219FB2AA4();
  if (v0 <= 0x3F)
  {
    sub_219FB2AF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_219FB2AA4()
{
  if (!qword_280C88968)
  {
    v0 = sub_21A0E674C();
    if (!v1)
    {
      atomic_store(v0, &qword_280C88968);
    }
  }
}

void sub_219FB2AF4()
{
  if (!qword_27CCDAA20)
  {
    sub_21A0E5CEC();
    v0 = sub_21A0E525C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCDAA20);
    }
  }
}

uint64_t sub_219FB2B68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A0E554C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9B38);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v20 - v10;
  if (*(v1 + 18) > 1u)
  {
    if (*(v1 + 18) != 2)
    {
      v17 = type metadata accessor for ActivitySymbolView();
      sub_219F45500(v1 + *(v17 + 24), v11, &qword_27CCD9B38);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v18 = sub_21A0E5CEC();
        return (*(*(v18 - 8) + 32))(a1, v11, v18);
      }

      else
      {
        sub_21A0E66AC();
        v19 = sub_21A0E575C();
        sub_21A0E512C();

        sub_21A0E553C();
        swift_getAtKeyPath();

        return (*(v4 + 8))(v7, v3);
      }
    }

    v12 = MEMORY[0x277CE1048];
  }

  else if (*(v1 + 18))
  {
    v12 = MEMORY[0x277CE1058];
  }

  else
  {
    v12 = MEMORY[0x277CE1050];
  }

  v13 = *v12;
  v14 = sub_21A0E5CEC();
  v15 = *(*(v14 - 8) + 104);

  return v15(a1, v13, v14);
}

uint64_t sub_219FB2E08()
{
  v1 = *(v0 + 17);
  if (v1 > 4)
  {
    if (*(v0 + 17) <= 6u)
    {
      if (v1 != 5)
      {
        return sub_21A0E588C();
      }
    }

    else
    {
      if (v1 == 7)
      {
        return sub_21A0E582C();
      }

      if (v1 == 8)
      {
        return sub_21A0E580C();
      }
    }

    return sub_21A0E587C();
  }

  if (*(v0 + 17) <= 1u)
  {
    if (*(v0 + 17))
    {
      return sub_21A0E581C();
    }

    else
    {
      return sub_21A0E583C();
    }
  }

  else if (v1 == 2)
  {
    return sub_21A0E584C();
  }

  else if (v1 == 3)
  {
    return sub_21A0E585C();
  }

  else
  {
    return sub_21A0E586C();
  }
}

uint64_t sub_219FB2E74@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAA28);
  MEMORY[0x28223BE20](v3, v4);
  v6 = (&v27 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAA30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAA38);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v27 - v14;
  v16 = *(v1 + 16);

  if (v16)
  {
    v17 = sub_21A0E5CDC();
  }

  else
  {
    v17 = sub_21A0E5CBC();
  }

  v18 = v17;
  v19 = (v6 + *(v3 + 36));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD95C0);
  sub_219FB2B68(v19 + *(v20 + 28));
  *v19 = swift_getKeyPath();
  *v6 = v18;
  sub_219FB2E08();
  v21 = sub_219FB3AEC();
  sub_21A0E5A5C();
  sub_219F6409C(v6, &qword_27CCDAA28);
  v29 = v3;
  v30 = v21;
  swift_getOpaqueTypeConformance2();
  sub_21A0E5AEC();
  (*(v8 + 8))(v11, v7);
  v22 = sub_21A0E5E3C();
  v23 = v28;
  *v28 = v22;
  v23[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAA48);
  sub_219FB3134(v2, v15, v23 + *(v25 + 44));
  return sub_219F6409C(v15, &qword_27CCDAA38);
}

uint64_t sub_219FB3134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAA50);
  MEMORY[0x28223BE20](v83, v6);
  v8 = &v69 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAA58);
  v10 = MEMORY[0x28223BE20](v84, v9);
  *&v80 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v69 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAA60);
  v16 = MEMORY[0x28223BE20](v82, v15);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v69 - v20;
  v22 = *(a1 + 136);
  v23 = *(a1 + 168);
  *&v133[48] = *(a1 + 152);
  *&v133[64] = v23;
  *&v133[80] = *(a1 + 184);
  v24 = *(a1 + 72);
  v25 = *(a1 + 104);
  v132[4] = *(a1 + 88);
  *v133 = v25;
  v26 = *(a1 + 120);
  *&v133[32] = v22;
  *&v133[16] = v26;
  v27 = *(a1 + 40);
  v132[0] = *(a1 + 24);
  v132[1] = v27;
  v28 = *(a1 + 56);
  v132[3] = v24;
  v132[2] = v28;
  v29 = v132;
  if (sub_219F5EBE4(v132) != 1)
  {
    v116 = *&v133[40];
    v117 = *&v133[56];
    v30 = *&v133[80];
    v118 = *&v133[72];
    v114 = *&v133[8];
    v115 = *&v133[24];
    if (*&v133[80])
    {
      *&v77 = *&v133[88];
      v31 = *(a1 + 136);
      v32 = *(a1 + 168);
      v129 = *(a1 + 152);
      v130 = v32;
      v131 = *(a1 + 184);
      v33 = *(a1 + 72);
      v34 = *(a1 + 104);
      v125 = *(a1 + 88);
      v126 = v34;
      v127 = *(a1 + 120);
      v128 = v31;
      v35 = *(a1 + 40);
      v121 = *(a1 + 24);
      v122 = v35;
      v123 = *(a1 + 56);
      v124 = v33;
      v36 = sub_219F5EBE4(&v121);
      v75 = v8;
      v76 = a3;
      *&v78 = v14;
      v74 = v30;
      if (v36 == 1)
      {
        v113 = 0;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v108 = 0u;
      }

      else
      {
        v73 = *(&v125 + 1);
        if (*(&v125 + 1))
        {
          a1 = *(&v121 + 1);
          v45 = v121;
          v3 = *(&v122 + 1);
          v30 = v122;
          v29 = *(&v123 + 1);
          v18 = v123;
          v8 = *(&v124 + 1);
          v46 = v124;
          *&v79 = v125 | (BYTE4(v125) << 32);
          v106 = *(&v125 + 5);
          v107 = BYTE7(v125);
          v47 = v126;
          sub_219F45500(&v133[8], &v93, &qword_27CCD9F78);
          sub_219F45500(&v121, &v93, &qword_27CCD9F78);
          v48 = v79;
          v49 = v47;
          v50 = v73;
LABEL_20:
          v69 = v49;
          v70 = v45;
          *&v79 = v48;
          v71 = v46;
          v72 = a1;
          *&v86 = v45;
          *(&v86 + 1) = a1;
          *&v87 = v30;
          *(&v87 + 1) = v3;
          v73 = v18;
          *&v88 = v18;
          *(&v88 + 1) = v29;
          *&v89 = v46;
          *(&v89 + 1) = v8;
          LODWORD(v90) = v48;
          v57 = HIDWORD(v48);
          BYTE4(v90) = BYTE4(v48);
          *(&v90 + 5) = v106;
          BYTE7(v90) = v107;
          *(&v90 + 1) = v50;
          *&v91[0] = v49;
          *(v91 + 8) = v114;
          *(&v91[3] + 8) = v117;
          *(&v91[2] + 8) = v116;
          *(&v91[1] + 8) = v115;
          v58 = v74;
          *(&v91[4] + 1) = v118;
          *&v92 = v74;
          v59 = v77;
          *(&v92 + 1) = v77;
          v60 = v80;
          sub_219F45500(v81, v80, &qword_27CCDAA38);
          v61 = (v60 + *(v84 + 36));
          v62 = v91[4];
          v61[8] = v91[3];
          v61[9] = v62;
          v61[10] = v92;
          v63 = v91[0];
          v61[4] = v90;
          v61[5] = v63;
          v64 = v91[2];
          v61[6] = v91[1];
          v61[7] = v64;
          v65 = v87;
          *v61 = v86;
          v61[1] = v65;
          v66 = v89;
          v61[2] = v88;
          v61[3] = v66;
          *&v93 = v70;
          *(&v93 + 1) = v72;
          *&v94 = v30;
          *(&v94 + 1) = v3;
          *&v95 = v73;
          *(&v95 + 1) = v29;
          *&v96 = v71;
          *(&v96 + 1) = v8;
          BYTE4(v97) = v57;
          LODWORD(v97) = v79;
          *(&v97 + 5) = v106;
          BYTE7(v97) = v107;
          *(&v97 + 1) = v50;
          v98 = v69;
          v99 = v114;
          v102 = v117;
          v101 = v116;
          v100 = v115;
          v103 = v118;
          v104 = v58;
          v105 = v59;
          sub_219F45500(&v133[8], v85, &qword_27CCD9F78);
          sub_219F45500(&v86, v85, &qword_27CCDAA80);
          sub_219F6409C(&v93, &qword_27CCDAA80);
          v67 = v78;
          sub_219F4D494(v80, v78, &qword_27CCDAA58);
          sub_219F45500(v67, v75, &qword_27CCDAA58);
          swift_storeEnumTagMultiPayload();
          sub_219FB3BA4();
          sub_219FB3D7C();
          sub_21A0E56BC();
          sub_219F6409C(&v133[8], &qword_27CCD9F78);
          v55 = v67;
          v56 = &qword_27CCDAA58;
          return sub_219F6409C(v55, v56);
        }

        v110 = v123;
        v111 = v124;
        v112 = v125;
        v113 = v126;
        v108 = v121;
        v109 = v122;
      }

      v95 = *&v133[40];
      v96 = *&v133[56];
      v97 = *&v133[72];
      v98 = *&v133[88];
      v93 = *&v133[8];
      v94 = *&v133[24];
      sub_219F45500(&v93, &v86, &qword_27CCDA4D8);
      if (qword_27CCD9198 != -1)
      {
        swift_once();
      }

      v50 = qword_27CCDBDB0;

      sub_219F6409C(&v108, &qword_27CCD9F78);
      v46 = 0;
      v48 = 0x8000000000;
      v49 = MEMORY[0x277D84F90];
      v45 = 4;
      goto LABEL_20;
    }
  }

  v37 = *(a1 + 136);
  v38 = *(a1 + 168);
  v129 = *(a1 + 152);
  v130 = v38;
  v131 = *(a1 + 184);
  v39 = *(a1 + 72);
  v40 = *(a1 + 104);
  v125 = *(a1 + 88);
  v126 = v40;
  v127 = *(a1 + 120);
  v128 = v37;
  v41 = *(a1 + 40);
  v121 = *(a1 + 24);
  v122 = v41;
  v123 = *(a1 + 56);
  v124 = v39;
  if (sub_219F5EBE4(&v121) == 1)
  {
    v98 = 0;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
LABEL_12:
    if (qword_27CCD9198 != -1)
    {
      swift_once();
    }

    v42 = qword_27CCDBDB0;

    sub_219F6409C(&v93, &qword_27CCD9F78);
    *&v51 = 4;
    v79 = v51;
    v80 = 0u;
    v44 = MEMORY[0x277D84F90];
    v43 = 0x8000000000;
    goto LABEL_15;
  }

  v42 = *(&v125 + 1);
  if (!*(&v125 + 1))
  {
    v95 = v123;
    v96 = v124;
    v97 = v125;
    v98 = v126;
    v93 = v121;
    v94 = v122;
    goto LABEL_12;
  }

  v43 = v125 | (BYTE4(v125) << 32);
  v119 = *(&v125 + 5);
  v120 = BYTE7(v125);
  v44 = v126;
  v80 = v124;
  v95 = v123;
  v96 = v124;
  v97 = v125;
  v98 = v126;
  v78 = v123;
  v79 = v121;
  v77 = v122;
  v93 = v121;
  v94 = v122;
  sub_219F45500(&v93, &v86, &qword_27CCDA4D8);
LABEL_15:
  sub_219F45500(v81, v18, &qword_27CCDAA38);
  v52 = &v18[*(v82 + 36)];
  v53 = v77;
  v54 = v80;
  *v52 = v79;
  *(v52 + 1) = v53;
  *(v52 + 2) = v78;
  *(v52 + 3) = v54;
  v52[68] = BYTE4(v43);
  *(v52 + 16) = v43;
  *(v52 + 69) = v119;
  v52[71] = v120;
  *(v52 + 9) = v42;
  *(v52 + 10) = v44;
  sub_219F4D494(v18, v21, &qword_27CCDAA60);
  sub_219F45500(v21, v8, &qword_27CCDAA60);
  swift_storeEnumTagMultiPayload();
  sub_219FB3BA4();
  sub_219FB3D7C();
  sub_21A0E56BC();
  v55 = v21;
  v56 = &qword_27CCDAA60;
  return sub_219F6409C(v55, v56);
}

uint64_t sub_219FB3A24(uint64_t a1)
{
  v2 = sub_21A0E5CEC();
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21A0E540C();
}

unint64_t sub_219FB3AEC()
{
  result = qword_27CCDAA40;
  if (!qword_27CCDAA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDAA28);
    sub_219F3E490(&qword_27CCDA9F0, &qword_27CCD95C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAA40);
  }

  return result;
}

unint64_t sub_219FB3BA4()
{
  result = qword_27CCDAA68;
  if (!qword_27CCDAA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDAA58);
    sub_219FB3C5C();
    sub_219F3E490(&qword_27CCDAA78, &qword_27CCDAA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAA68);
  }

  return result;
}

unint64_t sub_219FB3C5C()
{
  result = qword_27CCDAA70;
  if (!qword_27CCDAA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDAA38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDAA28);
    sub_219FB3AEC();
    swift_getOpaqueTypeConformance2();
    sub_219FB3D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAA70);
  }

  return result;
}

unint64_t sub_219FB3D24()
{
  result = qword_27CCD9668;
  if (!qword_27CCD9668)
  {
    sub_21A0E574C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9668);
  }

  return result;
}

unint64_t sub_219FB3D7C()
{
  result = qword_27CCDAA88;
  if (!qword_27CCDAA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDAA60);
    sub_219FB3C5C();
    sub_219F3E490(&qword_27CCDAA90, &qword_27CCDAA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAA88);
  }

  return result;
}

uint64_t sub_219FB3E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v48 = &v42 - v11;
  v12 = type metadata accessor for ActivityHeaderViewModel();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v42 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ActivityHeaderData();
  v15 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PrimaryElectionContentState();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PrimaryElectionStaticAttributes();
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PrimaryElectionWatchContentView();
  v44 = *(v28 - 8);
  v45 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219FB4C58(a1, v31, type metadata accessor for PrimaryElectionTheme);
  v32 = *(a1 + *(v24 + 28));
  if (*(a2 + 25))
  {
    v33 = 0;
    v34 = 1;
  }

  else
  {
    v33 = *a2;
    if (*(a2 + 8))
    {
      v33 = 0;
    }

    if ((*(a2 + 24) & 1) == 0)
    {
      v32 = *(a2 + 16);
    }

    v34 = *(a2 + 8) & 1;
  }

  v50[0] = v33;
  v50[1] = v34;
  v50[2] = v32;
  v51 = 0;
  PrimaryElectionTheme.apply(properties:data:)(v50, a2 + *(v19 + 20));
  sub_219FB4C58(a1, v27, type metadata accessor for PrimaryElectionStaticAttributes);
  sub_219FB4C58(a2, v22, type metadata accessor for PrimaryElectionContentState);
  sub_21A011428(v27, v22, v50);
  v35 = v45;
  *&v31[*(v45 + 20)] = v50[0];
  v36 = type metadata accessor for PrimaryElectionTheme();
  sub_219FB4C58(&v31[*(v36 + 28)], v18, type metadata accessor for ActivityHeaderData);

  *(v18 + 10) = 0;
  *(v18 + 11) = 0;
  sub_219FB4C58(v18, v8, type metadata accessor for ActivityHeaderData);
  (*(v15 + 56))(v8, 0, 1, v43);
  v37 = v48;
  ActivityHeaderViewModel.init(from:)(v8, v48);
  sub_219FB4CC0(a2, type metadata accessor for PrimaryElectionContentState);
  sub_219FB4CC0(a1, type metadata accessor for PrimaryElectionStaticAttributes);
  if ((*(v46 + 48))(v37, 1, v47) == 1)
  {
    sub_219FB4AD8(v37);
    sub_219FB4CC0(v18, type metadata accessor for ActivityHeaderData);
    sub_219FB4CC0(v31, type metadata accessor for PrimaryElectionTheme);

    return (*(v44 + 56))(v49, 1, 1, v35);
  }

  else
  {
    v39 = v37;
    v40 = v42;
    sub_219FB4B40(v39, v42);
    sub_219FB4B40(v40, &v31[*(v35 + 24)]);
    sub_219FB4CC0(v18, type metadata accessor for ActivityHeaderData);
    v41 = v49;
    sub_219FB4C58(v31, v49, type metadata accessor for PrimaryElectionWatchContentView);
    (*(v44 + 56))(v41, 0, 1, v35);
    return sub_219FB4CC0(v31, type metadata accessor for PrimaryElectionWatchContentView);
  }
}

uint64_t sub_219FB43E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAC0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v57 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAC8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAD0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAD8);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17, v19);
  v57 = &v57 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAE0);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21, v23);
  v58 = &v57 - v24;
  *v6 = sub_21A0E567C();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAE8);
  sub_219FB4890(v2, &v6[*(v25 + 44)]);
  sub_21A0E5E4C();
  sub_21A0E53BC();
  sub_219F4D494(v6, v11, &qword_27CCDAAC0);
  v26 = &v11[*(v8 + 44)];
  v27 = v68;
  *(v26 + 4) = v67;
  *(v26 + 5) = v27;
  *(v26 + 6) = v69;
  v28 = v64;
  *v26 = v63;
  *(v26 + 1) = v28;
  v29 = v66;
  *(v26 + 2) = v65;
  *(v26 + 3) = v29;
  LOBYTE(v8) = sub_21A0E57BC();
  sub_21A0E51EC();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_219F4D494(v11, v16, &qword_27CCDAAC8);
  v38 = &v16[*(v13 + 44)];
  *v38 = v8;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = *(v2 + 104);
  v40 = *(v2 + 136);
  v61[3] = *(v2 + 120);
  v61[4] = v40;
  v62 = *(v2 + 152);
  v41 = *(v2 + 88);
  v61[0] = *(v2 + 72);
  v61[1] = v41;
  v61[2] = v39;
  v42 = v57;
  v43 = &v57[*(v18 + 44)];
  v44 = *(v2 + 88);
  *v43 = *(v2 + 72);
  *(v43 + 1) = v44;
  *(v43 + 10) = *(v2 + 152);
  v45 = *(v2 + 136);
  v46 = *(v2 + 104);
  *(v43 + 3) = *(v2 + 120);
  *(v43 + 4) = v45;
  *(v43 + 2) = v46;
  v47 = type metadata accessor for NewsWatchContentViewModifier();
  v48 = *(v47 + 20);
  *&v43[v48] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAF0);
  swift_storeEnumTagMultiPayload();
  v49 = &v43[*(v47 + 24)];
  *v49 = swift_getKeyPath();
  *(v49 + 8) = 0u;
  *(v49 + 24) = 0u;
  v49[40] = 0;
  sub_219F4D494(v16, v42, &qword_27CCDAAD0);
  v50 = *(v22 + 44);
  v51 = v58;
  v52 = &v58[v50];
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAF8) + 28);
  v54 = *MEMORY[0x277CDF3D0];
  v55 = sub_21A0E524C();
  (*(*(v55 - 8) + 104))(v52 + v53, v54, v55);
  *v52 = swift_getKeyPath();
  sub_219F4D494(v42, v51, &qword_27CCDAAD8);
  sub_219F4D494(v51, v59, &qword_27CCDAAE0);
  return sub_219FB4BE8(v61, &v60);
}

uint64_t sub_219FB4890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ActivityHeaderWatchView();
  v5 = (v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22[-v11];
  v13 = type metadata accessor for PrimaryElectionWatchContentView();
  sub_219FB4C58(a1 + *(v13 + 24), &v12[v5[7]], type metadata accessor for ActivityHeaderViewModel);
  sub_219F65C20(v22);
  sub_219F5EC1C(v23);
  *v12 = swift_getKeyPath();
  *(v12 + 24) = 0u;
  v12[40] = 0;
  *(v12 + 8) = 0u;
  memcpy(&v12[v5[8]], v22, 0x320uLL);
  v14 = &v12[v5[9]];
  v15 = v23[1];
  *v14 = v23[0];
  v14[1] = v15;
  v16 = v23[5];
  v14[4] = v23[4];
  v14[5] = v16;
  v17 = v23[3];
  v14[2] = v23[2];
  v14[3] = v17;
  v18 = v23[10];
  v14[9] = v23[9];
  v14[10] = v18;
  v19 = v23[8];
  v14[7] = v23[7];
  v14[8] = v19;
  v14[6] = v23[6];
  v20 = *(a1 + *(v13 + 20));
  sub_219FB4C58(v12, v9, type metadata accessor for ActivityHeaderWatchView);
  sub_219FB4C58(v9, a2, type metadata accessor for ActivityHeaderWatchView);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAB08) + 48)) = v20;
  swift_bridgeObjectRetain_n();
  sub_219FB4CC0(v12, type metadata accessor for ActivityHeaderWatchView);

  return sub_219FB4CC0(v9, type metadata accessor for ActivityHeaderWatchView);
}

uint64_t type metadata accessor for PrimaryElectionWatchContentView()
{
  result = qword_27CCDAAB0;
  if (!qword_27CCDAAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219FB4AD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219FB4B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityHeaderViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219FB4BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219FB4C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219FB4CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219FB4D20()
{
  result = qword_27CCDAB10;
  if (!qword_27CCDAB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDAAE0);
    sub_219FB4DD8();
    sub_219F3E490(&qword_27CCDAB40, &qword_27CCDAAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAB10);
  }

  return result;
}

unint64_t sub_219FB4DD8()
{
  result = qword_27CCDAB18;
  if (!qword_27CCDAB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDAAD8);
    sub_219FB4E64();
    sub_219FB4FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAB18);
  }

  return result;
}

unint64_t sub_219FB4E64()
{
  result = qword_27CCDAB20;
  if (!qword_27CCDAB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDAAD0);
    sub_219FB4EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAB20);
  }

  return result;
}

unint64_t sub_219FB4EF0()
{
  result = qword_27CCDAB28;
  if (!qword_27CCDAB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDAAC8);
    sub_219F3E490(&qword_27CCDAB30, &qword_27CCDAAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAB28);
  }

  return result;
}

unint64_t sub_219FB4FA8()
{
  result = qword_27CCDAB38;
  if (!qword_27CCDAB38)
  {
    type metadata accessor for NewsWatchContentViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAB38);
  }

  return result;
}

double PoliticalPartyTheme.thumbnail.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v17 = v1[2];
  v18[0] = v3;
  *(v18 + 13) = *(v1 + 61);
  v4 = v1[1];
  v15 = *v1;
  v16 = v4;
  sub_219F72F28(&v15, v25);
  static RGBA.parse(hexadecimalString:)(0x3130303030303023, 0xE900000000000041, v25);
  v5 = v25[0];
  static RGBA.parse(hexadecimalString:)(0x3146464646464623, 0xE900000000000041, v25);
  v6 = v25[0];
  LOBYTE(v25[0]) = 1;
  LOBYTE(v23[0]) = 1;
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v7 = qword_27CCDBDB0;
  v21 = v17;
  *v22 = v18[0];
  *&v22[13] = *(v18 + 13);
  v19 = v15;
  v20 = v16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  swift_bridgeObjectRetain_n();
  sub_219FB60E4(v23);
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 68) = 1;
  *(a1 + 64) = 0;
  v8 = MEMORY[0x277D84F90];
  *(a1 + 72) = v7;
  *(a1 + 80) = v8;
  v9 = *(a1 + 136);
  v25[2] = *(a1 + 120);
  v25[3] = v9;
  v25[4] = *(a1 + 152);
  v26 = *(a1 + 168);
  v10 = *(a1 + 104);
  v25[0] = *(a1 + 88);
  v25[1] = v10;
  sub_219FB60E4(v25);
  v11 = v19;
  *(a1 + 104) = v20;
  result = *&v21;
  v13 = *v22;
  *(a1 + 120) = v21;
  *(a1 + 136) = v13;
  v14 = *&v22[16];
  *(a1 + 88) = v11;
  *(a1 + 152) = v14;
  *(a1 + 160) = v7;
  *(a1 + 168) = v8;
  return result;
}

double PoliticalPartyTheme.thumbnailSymbol.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v19 = v1[2];
  v20[0] = v3;
  *(v20 + 13) = *(v1 + 61);
  v4 = v1[1];
  v17 = *v1;
  v18 = v4;
  sub_219F72F28(&v17, v31);
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v5 = qword_27CCDBDB0;
  v23 = v19;
  *v24 = v20[0];
  *&v24[13] = *(v20 + 13);
  v21 = v17;
  v22 = v18;
  v27 = v19;
  *v28 = v20[0];
  *&v28[13] = *(v20 + 13);
  v25 = v17;
  v26 = v18;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_219F72F28(&v17, v31);
  swift_bridgeObjectRetain_n();
  sub_219FB60E4(v29);
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  v6 = *v24;
  *(a1 + 32) = v23;
  *(a1 + 48) = v6;
  v7 = *&v24[16];
  v8 = v22;
  *a1 = v21;
  *(a1 + 16) = v8;
  *(a1 + 64) = v7;
  *(a1 + 72) = v5;
  v9 = MEMORY[0x277D84F90];
  *(a1 + 80) = MEMORY[0x277D84F90];
  v32 = 0;
  v10 = *(a1 + 152);
  v11 = *(a1 + 120);
  v31[3] = *(a1 + 136);
  v31[4] = v10;
  v12 = *(a1 + 88);
  v31[1] = *(a1 + 104);
  v31[2] = v11;
  v31[0] = v12;
  sub_219FB60E4(v31);
  v13 = v25;
  *(a1 + 104) = v26;
  result = *&v27;
  v15 = *v28;
  *(a1 + 120) = v27;
  *(a1 + 136) = v15;
  v16 = *&v28[16];
  *(a1 + 88) = v13;
  *(a1 + 152) = v16;
  *(a1 + 160) = v5;
  *(a1 + 168) = v9;
  return result;
}

uint64_t PoliticalPartyTheme.primaryFill.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10[0] = v2;
  *(v10 + 13) = *(v1 + 61);
  v3 = *(v10 + 13);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 61) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_219F72F28(v8, v7);
}

__n128 PoliticalPartyTheme.primaryFill.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v8[0] = v3;
  *(v8 + 13) = *(v1 + 61);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_219F72F84(v7);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 61) = *(a1 + 61);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t PoliticalPartyTheme.code.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  a1[1] = v2;
}

uint64_t PoliticalPartyTheme.code.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return result;
}

double sub_219FB548C()
{
  if (qword_27CCD9190 != -1)
  {
    swift_once();
  }

  xmmword_27CCFE620 = xmmword_27CCDB790;
  *algn_27CCFE630 = unk_27CCDB7A0;
  result = *&xmmword_27CCDB7B0;
  xmmword_27CCFE640 = xmmword_27CCDB7B0;
  unk_27CCFE650 = *&qword_27CCDB7C0;
  LODWORD(xmmword_27CCFE660) = dword_27CCDB7D0;
  BYTE4(xmmword_27CCFE660) = ((dword_27CCDB7D0 | (byte_27CCDB7D4 << 32)) & 0xFFFFFFC1FFFFFFFFLL) >> 32;
  *(&xmmword_27CCFE660 + 1) = 5263175;
  qword_27CCFE670 = 0xE300000000000000;
  return result;
}

double sub_219FB5520()
{
  if (qword_27CCD9188 != -1)
  {
    swift_once();
  }

  xmmword_27CCFE680 = xmmword_27CCDB748;
  *algn_27CCFE690 = unk_27CCDB758;
  result = *&xmmword_27CCDB768;
  xmmword_27CCFE6A0 = xmmword_27CCDB768;
  unk_27CCFE6B0 = *&qword_27CCDB778;
  LODWORD(xmmword_27CCFE6C0) = dword_27CCDB788;
  BYTE4(xmmword_27CCFE6C0) = ((dword_27CCDB788 | (byte_27CCDB78C << 32)) & 0xFFFFFFC1FFFFFFFFLL) >> 32;
  *(&xmmword_27CCFE6C0 + 1) = 7169348;
  qword_27CCFE6D0 = 0xE300000000000000;
  return result;
}

uint64_t sub_219FB55B8()
{
  if (*v0)
  {
    return 1701080931;
  }

  else
  {
    return 0x467972616D697270;
  }
}

uint64_t sub_219FB55F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x467972616D697270 && a2 == 0xEB000000006C6C69;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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

uint64_t sub_219FB56D4(uint64_t a1)
{
  v2 = sub_219FB62A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FB5710(uint64_t a1)
{
  v2 = sub_219FB62A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PoliticalPartyTheme.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAB48);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v12 - v6;
  v8 = v1[3];
  v27 = v1[2];
  v28[0] = v8;
  *(v28 + 13) = *(v1 + 61);
  v9 = v1[1];
  v25 = *v1;
  v26 = v9;
  v10 = *(v1 + 10);
  v13 = *(v1 + 9);
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F72F28(&v25, &v21);
  sub_219FB62A8();
  sub_21A0E6EAC();
  v23 = v27;
  v24[0] = v28[0];
  *(v24 + 13) = *(v28 + 13);
  v21 = v25;
  v22 = v26;
  v20 = 0;
  sub_219FA35D8();
  sub_21A0E6BBC();
  v18[2] = v23;
  *v19 = v24[0];
  *&v19[13] = *(v24 + 13);
  v18[0] = v21;
  v18[1] = v22;
  sub_219F72F84(v18);
  if (!v2)
  {
    v16 = v13;
    v17 = v14;
    v15 = 1;
    sub_219FB62FC();

    sub_21A0E6BBC();
  }

  return (*(v29 + 8))(v7, v4);
}

uint64_t PoliticalPartyTheme.hash(into:)(uint64_t a1)
{
  ActivityFill.hash(into:)(a1);

  return sub_21A0E626C();
}

uint64_t PoliticalPartyTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityFill.hash(into:)(v1);
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t PoliticalPartyTheme.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAB60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FB62A8();
  sub_21A0E6E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v5;
  v10 = v37;
  v28 = 0;
  sub_219FA3584();
  sub_21A0E6ADC();
  v35 = v31;
  *v36 = *v32;
  *&v36[13] = *&v32[13];
  v33 = v29;
  v34 = v30;
  v25 = 1;
  sub_219FB6350();
  sub_21A0E6ADC();
  (*(v9 + 8))(v8, v4);
  v11 = v26;
  v12 = v27;
  v14 = v35;
  v13 = *v36;
  v18[2] = v35;
  v18[3] = *v36;
  v16 = v33;
  v15 = v34;
  v18[0] = v33;
  v18[1] = v34;
  *&v19 = *&v36[16];
  *(&v19 + 1) = v26;
  v20 = v27;
  *(v10 + 80) = v27;
  *(v10 + 32) = v14;
  *(v10 + 48) = v13;
  *v10 = v16;
  *(v10 + 16) = v15;
  *(v10 + 64) = v19;
  sub_219FB63A4(v18, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v21[2] = v35;
  v21[3] = *v36;
  v21[0] = v33;
  v21[1] = v34;
  v22 = *&v36[16];
  v23 = v11;
  v24 = v12;
  return sub_219FB63DC(v21);
}

uint64_t sub_219FB5D14()
{
  sub_21A0E6DAC();
  ActivityFill.hash(into:)(v1);
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_219FB5D8C(uint64_t a1)
{
  ActivityFill.hash(into:)(a1);

  return sub_21A0E626C();
}

uint64_t sub_219FB5DFC()
{
  sub_21A0E6DAC();
  ActivityFill.hash(into:)(v1);
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t PoliticalPartyCode.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PoliticalPartyCode.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *sub_219FB5F5C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_219FB5F68()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_219FB5FBC()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_219FB60B4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21A0E6C5C();
  }
}

uint64_t sub_219FB60E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9F78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s22NewsLiveActivitiesCore19PoliticalPartyThemeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27[0] = v3;
  v4 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v29 = *(a2 + 32);
  v30[0] = v6;
  v7 = *(a2 + 16);
  v28[0] = *a2;
  v28[1] = v7;
  v8 = *(a1 + 48);
  v23 = v26;
  v24[0] = v8;
  v21 = v25[0];
  v22 = v2;
  v9 = *(a2 + 48);
  v19 = v29;
  v20[0] = v9;
  *(v27 + 13) = *(a1 + 61);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  *(v30 + 13) = *(a2 + 61);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  *(v24 + 13) = *(a1 + 61);
  *(v20 + 13) = *(a2 + 61);
  v17 = v28[0];
  v18 = v5;
  sub_219F72F28(v25, v33);
  sub_219F72F28(v28, v33);
  v14 = static ActivityFill.== infix(_:_:)(&v21, &v17);
  v31[2] = v19;
  v32[0] = v20[0];
  *(v32 + 13) = *(v20 + 13);
  v31[0] = v17;
  v31[1] = v18;
  sub_219F72F84(v31);
  v33[2] = v23;
  v34[0] = v24[0];
  *(v34 + 13) = *(v24 + 13);
  v33[0] = v21;
  v33[1] = v22;
  sub_219F72F84(v33);
  if (v14)
  {
    if (v10 == v12 && v11 == v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_21A0E6C5C();
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t sub_219FB62A8()
{
  result = qword_27CCDAB50;
  if (!qword_27CCDAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAB50);
  }

  return result;
}

unint64_t sub_219FB62FC()
{
  result = qword_27CCDAB58;
  if (!qword_27CCDAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAB58);
  }

  return result;
}

unint64_t sub_219FB6350()
{
  result = qword_27CCDAB68;
  if (!qword_27CCDAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAB68);
  }

  return result;
}

unint64_t sub_219FB6410()
{
  result = qword_27CCDAB70;
  if (!qword_27CCDAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAB70);
  }

  return result;
}

unint64_t sub_219FB6468()
{
  result = qword_27CCDAB78;
  if (!qword_27CCDAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAB78);
  }

  return result;
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

uint64_t sub_219FB64E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219FB6528(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

unint64_t sub_219FB65B0()
{
  result = qword_27CCDAB80;
  if (!qword_27CCDAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAB80);
  }

  return result;
}

unint64_t sub_219FB6608()
{
  result = qword_27CCDAB88;
  if (!qword_27CCDAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAB88);
  }

  return result;
}

unint64_t sub_219FB6660()
{
  result = qword_27CCDAB90;
  if (!qword_27CCDAB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAB90);
  }

  return result;
}

unint64_t sub_219FB66B4()
{
  result = qword_27CCDAB98;
  if (!qword_27CCDAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAB98);
  }

  return result;
}

uint64_t NationalElectionContentState.update.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NationalElectionContentState(0) + 20);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_219F45500(v10, v9, &qword_27CCDABA0);
}

__n128 NationalElectionContentState.update.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NationalElectionContentState(0) + 20);
  v4 = *(v3 + 48);
  v8[2] = *(v3 + 32);
  v8[3] = v4;
  v9 = *(v3 + 64);
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  sub_219F6409C(v8, &qword_27CCDABA0);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

__n128 NationalElectionContentState.init(data:update:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for NationalElectionContentState(0) + 20);
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 64) = -1;
  sub_219FC0C60(a1, a3, type metadata accessor for NationalElectionData);
  v7 = *(v6 + 48);
  v11[2] = *(v6 + 32);
  v11[3] = v7;
  v12 = *(v6 + 64);
  v8 = *(v6 + 16);
  v11[0] = *v6;
  v11[1] = v8;
  sub_219F6409C(v11, &qword_27CCDABA0);
  v9 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v9;
  *(v6 + 64) = *(a2 + 64);
  result = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = result;
  return result;
}

uint64_t sub_219FB6990(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657461647075;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x657461647075;
  }

  else
  {
    v5 = 1635017060;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21A0E6C5C();
  }

  return v8 & 1;
}

uint64_t sub_219FB6A2C()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219FB6AA4()
{
  sub_21A0E626C();
}

uint64_t sub_219FB6B08()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219FB6B7C@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_219FB6BDC(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (*v1)
  {
    v2 = 0x657461647075;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_219FB6C10()
{
  if (*v0)
  {
    return 0x657461647075;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_219FB6C40@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_219FB6CA4(uint64_t a1)
{
  v2 = sub_219FB72BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FB6CE0(uint64_t a1)
{
  v2 = sub_219FB72BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NationalElectionContentState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = type metadata accessor for NationalElectionData(0);
  MEMORY[0x28223BE20](v35, v3);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDABA8);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDABB0);
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for NationalElectionContentState(0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v17[*(v15 + 28)];
  *(v18 + 2) = 0u;
  *(v18 + 3) = 0u;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[64] = -1;
  v19 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_219FB72BC();
  v20 = v39;
  sub_21A0E6E7C();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
    v24 = *(v18 + 3);
    v50 = *(v18 + 2);
    v51 = v24;
    v52 = v18[64];
    v25 = *(v18 + 1);
    v48 = *v18;
    v49 = v25;
    return sub_219F6409C(&v48, &qword_27CCDABA0);
  }

  else
  {
    v21 = v38;
    v39 = v17;
    LOBYTE(v48) = 0;
    sub_219FB7310();
    sub_21A0E6A1C();
    v33 = v12;
    LOBYTE(v48) = 0;
    sub_219FB77F0(&qword_27CCDABC8, type metadata accessor for NationalElectionData);
    v22 = v36;
    sub_21A0E6ADC();
    v23 = v21;
    v26 = v39;
    sub_219FC0C60(v22, v39, type metadata accessor for NationalElectionData);
    v53 = 1;
    sub_219FB7364();
    v27 = v33;
    sub_21A0E6A8C();
    (*(v37 + 8))(v8, v5);
    (*(v23 + 8))(v27, v9);
    v43 = v50;
    v44 = v51;
    v45 = v52;
    v42 = v49;
    v41 = v48;
    v28 = *(v18 + 3);
    v46[2] = *(v18 + 2);
    v46[3] = v28;
    v47 = v18[64];
    v29 = *(v18 + 1);
    v46[0] = *v18;
    v46[1] = v29;
    sub_219F6409C(v46, &qword_27CCDABA0);
    v30 = v44;
    *(v18 + 2) = v43;
    *(v18 + 3) = v30;
    v18[64] = v45;
    v31 = v42;
    *v18 = v41;
    *(v18 + 1) = v31;
    sub_219FB73B8(v26, v34, type metadata accessor for NationalElectionContentState);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return sub_219FB7420(v26, type metadata accessor for NationalElectionContentState);
  }
}

unint64_t sub_219FB72BC()
{
  result = qword_27CCDABB8;
  if (!qword_27CCDABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDABB8);
  }

  return result;
}

unint64_t sub_219FB7310()
{
  result = qword_27CCDABC0;
  if (!qword_27CCDABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDABC0);
  }

  return result;
}

unint64_t sub_219FB7364()
{
  result = qword_27CCDABD0;
  if (!qword_27CCDABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDABD0);
  }

  return result;
}

uint64_t sub_219FB73B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219FB7420(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NationalElectionContentState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDABD8);
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDABE0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FB72BC();
  sub_21A0E6EAC();
  LOBYTE(v30[0]) = 0;
  sub_219FB7310();
  sub_21A0E6B2C();
  v35 = 0;
  type metadata accessor for NationalElectionData(0);
  sub_219FB77F0(&qword_27CCDABE8, type metadata accessor for NationalElectionData);
  v13 = v21;
  sub_21A0E6BBC();
  if (v13)
  {
    (*(v22 + 8))(v7, v4);
  }

  else
  {
    v14 = v2 + *(type metadata accessor for NationalElectionContentState(0) + 20);
    v15 = *(v14 + 16);
    v16 = *(v14 + 48);
    v31 = *(v14 + 32);
    v32 = v16;
    v17 = *(v14 + 16);
    v30[0] = *v14;
    v30[1] = v17;
    v18 = *(v14 + 48);
    v27 = v31;
    v28 = v18;
    v33 = *(v14 + 64);
    v29 = *(v14 + 64);
    v25 = v30[0];
    v26 = v15;
    v34 = 1;
    sub_219F45500(v30, v23, &qword_27CCDABA0);
    sub_219FB7838();
    sub_21A0E6B6C();
    v19 = (v22 + 8);
    v23[2] = v27;
    v23[3] = v28;
    v24 = v29;
    v23[1] = v26;
    v23[0] = v25;
    sub_219F6409C(v23, &qword_27CCDABA0);
    (*v19)(v7, v4);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_219FB77F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219FB7838()
{
  result = qword_27CCDABF0;
  if (!qword_27CCDABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDABF0);
  }

  return result;
}

uint64_t NationalElectionContentState.hash(into:)(uint64_t a1)
{
  v3 = sub_21A0E495C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v30 - v17;
  sub_219F6ACFC(a1, *v1);
  v19 = *(type metadata accessor for PrimaryEntities(0) + 20);
  v33 = v1;
  sub_219F45500(v1 + v19, v18, &qword_27CCD97F0);
  v31 = *(v4 + 48);
  if (v31(v18, 1, v3) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v4 + 32))(v7, v18, v3);
    sub_21A0E6DCC();
    sub_219FB77F0(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v4 + 8))(v7, v3);
  }

  v20 = type metadata accessor for NationalElectionData(0);
  v21 = (v33 + *(v20 + 20));
  sub_219F6AB84(a1, *v21);
  v22 = type metadata accessor for SecondaryEntities(0);
  sub_219F45500(v21 + *(v22 + 20), v15, &qword_27CCD97F0);
  v23 = v31;
  if (v31(v15, 1, v3) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    sub_21A0E6DCC();
    sub_219FB77F0(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v4 + 8))(v7, v3);
  }

  v24 = (v33 + *(v20 + 24));
  sub_219F6AB84(a1, *v24);
  v25 = v24 + *(v22 + 20);
  v26 = v32;
  sub_219F45500(v25, v32, &qword_27CCD97F0);
  if (v23(v26, 1, v3) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v4 + 32))(v7, v26, v3);
    sub_21A0E6DCC();
    sub_219FB77F0(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v4 + 8))(v7, v3);
  }

  v27 = v33 + *(type metadata accessor for NationalElectionContentState(0) + 20);
  v28 = v27[64];
  if (v28 == 255)
  {
    return sub_21A0E6DCC();
  }

  v33 = *(v27 + 6);
  sub_21A0E6DCC();
  if (v28)
  {
    MEMORY[0x21CED2490](1);
    sub_21A0E626C();
    sub_21A0E626C();
  }

  else
  {
    MEMORY[0x21CED2490](0);
  }

  sub_21A0E626C();
  return sub_21A0E626C();
}

uint64_t NationalElectionData.init(primaryEntities:leadingSecondaryEntities:trailingSecondaryEntities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_219FC0C60(a1, a4, type metadata accessor for PrimaryEntities);
  v7 = type metadata accessor for NationalElectionData(0);
  sub_219FC0C60(a2, a4 + *(v7 + 20), type metadata accessor for SecondaryEntities);
  return sub_219FC0C60(a3, a4 + *(v7 + 24), type metadata accessor for SecondaryEntities);
}

uint64_t static NationalElectionData.random(candidatesFrom:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for ElectionEntityTheme();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v85 = (&v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6, v8);
  v86 = (&v74 - v10);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v74 - v12);
  v80 = type metadata accessor for SecondaryEntities(0);
  v15 = MEMORY[0x28223BE20](v80, v14);
  v74 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v81 = (&v74 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v74 - v21;
  v79 = type metadata accessor for PrimaryEntities(0);
  MEMORY[0x28223BE20](v79, v23);
  v82 = (&v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *a1;
  v26 = *(*a1 + 16);
  v27 = MEMORY[0x277D84F90];
  v87 = v4;
  v77 = a1;
  v78 = v22;
  if (v26)
  {
    v89 = MEMORY[0x277D84F90];
    result = sub_219FBE6E0(0, v26, 0);
    v29 = 0;
    v27 = v89;
    v83 = (v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
    v84 = v26;
    v30 = v25;
    while (v29 < *(v25 + 16))
    {
      sub_219FB73B8(v83 + *(v4 + 72) * v29, v13, type metadata accessor for ElectionEntityTheme);
      v32 = *v13;
      v31 = v13[1];
      v88 = 0;

      MEMORY[0x21CED2D50](&v88, 8);
      v33 = v88;
      if (269 * v88 <= 0x38)
      {
        do
        {
          v88 = 0;
          MEMORY[0x21CED2D50](&v88, 8);
          v33 = v88;
        }

        while (269 * v88 < 0x39);
      }

      v34 = (v33 * 0x10DuLL) >> 64;
      result = sub_219FB7420(v13, type metadata accessor for ElectionEntityTheme);
      v89 = v27;
      v36 = *(v27 + 16);
      v35 = *(v27 + 24);
      if (v36 >= v35 >> 1)
      {
        result = sub_219FBE6E0((v35 > 1), v36 + 1, 1);
        v27 = v89;
      }

      ++v29;
      *(v27 + 16) = v36 + 1;
      v37 = v27 + 32 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v31;
      *(v37 + 48) = v34;
      *(v37 + 56) = 3;
      v4 = v87;
      v25 = v30;
      if (v29 == v84)
      {
        a1 = v77;
        v22 = v78;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_10:
  sub_21A0E493C();
  v38 = sub_21A0E495C();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v41 = v39 + 56;
  v40(v22, 0, 1, v38);
  v42 = *(v79 + 20);
  v43 = v82;
  v83 = v40;
  v79 = v41;
  v40(v82 + v42, 1, 1, v38);
  *v43 = v27;
  sub_219F68E2C(v22, v43 + v42);
  v44 = a1[4];
  v45 = *(v44 + 16);
  v46 = MEMORY[0x277D84F90];
  v76 = v38;
  if (v45)
  {
    v89 = MEMORY[0x277D84F90];
    result = sub_219FBE6A8(0, v45, 0);
    v47 = 0;
    v46 = v89;
    v84 = v44 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v47 < *(v44 + 16))
    {
      v48 = v86;
      sub_219FB73B8(v84 + *(v4 + 72) * v47, v86, type metadata accessor for ElectionEntityTheme);
      v50 = *v48;
      v49 = v48[1];
      v88 = 0;

      while (1)
      {
        MEMORY[0x21CED2D50](&v88, 8);
        if (((50 * v88) & 0xFFFFFFFFFFFFFFF0) != 0)
        {
          break;
        }

        v88 = 0;
      }

      v51 = (v88 * 0x32uLL) >> 64;
      result = sub_219FB7420(v86, type metadata accessor for ElectionEntityTheme);
      v89 = v46;
      v53 = *(v46 + 16);
      v52 = *(v46 + 24);
      if (v53 >= v52 >> 1)
      {
        result = sub_219FBE6A8((v52 > 1), v53 + 1, 1);
        v46 = v89;
      }

      ++v47;
      *(v46 + 16) = v53 + 1;
      v54 = v46 + 40 * v53;
      *(v54 + 32) = v50;
      *(v54 + 40) = v49;
      *(v54 + 48) = v51;
      *(v54 + 56) = 0;
      *(v54 + 64) = 769;
      v4 = v87;
      if (v47 == v45)
      {
        a1 = v77;
        v22 = v78;
        v38 = v76;
        goto LABEL_20;
      }
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_20:
  sub_21A0E493C();
  v55 = v83;
  v83(v22, 0, 1, v38);
  v56 = v81;
  v57 = *(v80 + 20);
  v55(v81 + v57, 1, 1, v38);
  *v56 = v46;
  sub_219F68E2C(v22, v56 + v57);
  v58 = a1[8];
  v59 = *(v58 + 16);
  v60 = MEMORY[0x277D84F90];
  if (!v59)
  {
LABEL_30:
    sub_21A0E493C();
    v69 = v83;
    v83(v22, 0, 1, v38);
    v70 = *(v80 + 20);
    v71 = v74;
    v69(&v74[v70], 1, 1, v38);
    *v71 = v60;
    sub_219F68E2C(v22, v71 + v70);
    v72 = v75;
    sub_219FC0C60(v82, v75, type metadata accessor for PrimaryEntities);
    v73 = type metadata accessor for NationalElectionData(0);
    sub_219FC0C60(v81, v72 + *(v73 + 20), type metadata accessor for SecondaryEntities);
    return sub_219FC0C60(v71, v72 + *(v73 + 24), type metadata accessor for SecondaryEntities);
  }

  v89 = MEMORY[0x277D84F90];
  result = sub_219FBE6A8(0, v59, 0);
  v61 = 0;
  v60 = v89;
  v86 = (v58 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
  while (v61 < *(v58 + 16))
  {
    v62 = v85;
    sub_219FB73B8(v86 + *(v4 + 72) * v61, v85, type metadata accessor for ElectionEntityTheme);
    v64 = *v62;
    v63 = v62[1];
    v88 = 0;

    while (1)
    {
      MEMORY[0x21CED2D50](&v88, 8);
      if (((217 * v88) & 0xFFFFFFFFFFFFFFF0) != 0)
      {
        break;
      }

      v88 = 0;
    }

    v65 = (v88 * 0xD9uLL) >> 64;
    result = sub_219FB7420(v85, type metadata accessor for ElectionEntityTheme);
    v89 = v60;
    v67 = *(v60 + 16);
    v66 = *(v60 + 24);
    if (v67 >= v66 >> 1)
    {
      result = sub_219FBE6A8((v66 > 1), v67 + 1, 1);
      v60 = v89;
    }

    ++v61;
    *(v60 + 16) = v67 + 1;
    v68 = v60 + 40 * v67;
    *(v68 + 32) = v64;
    *(v68 + 40) = v63;
    *(v68 + 48) = v65;
    *(v68 + 56) = 0;
    *(v68 + 64) = 769;
    v4 = v87;
    if (v61 == v59)
    {
      v22 = v78;
      v38 = v76;
      goto LABEL_30;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_219FB891C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
{
  v7 = *(a3(0) + 20);
  v8 = sub_21A0E495C();
  (*(*(v8 - 8) + 56))(&a4[v7], 1, 1, v8);
  *a4 = a1;

  return sub_219F68E2C(a2, &a4[v7]);
}

uint64_t sub_219FB8A40()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x457972616D697270;
  }
}

uint64_t sub_219FB8AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219FC2340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219FB8AD4(uint64_t a1)
{
  v2 = sub_219FC0CC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FB8B10(uint64_t a1)
{
  v2 = sub_219FC0CC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NationalElectionData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDABF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FC0CC8();
  sub_21A0E6EAC();
  v12 = 0;
  type metadata accessor for PrimaryEntities(0);
  sub_219FB77F0(&qword_27CCDAC08, type metadata accessor for PrimaryEntities);
  sub_21A0E6BBC();
  if (!v1)
  {
    type metadata accessor for NationalElectionData(0);
    v11 = 1;
    type metadata accessor for SecondaryEntities(0);
    sub_219FB77F0(&qword_27CCDAC10, type metadata accessor for SecondaryEntities);
    sub_21A0E6BBC();
    v10 = 2;
    sub_21A0E6BBC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t NationalElectionData.hash(into:)(uint64_t a1)
{
  v3 = sub_21A0E495C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v30 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v28 - v17;
  sub_219F6ACFC(a1, *v1);
  v19 = *(type metadata accessor for PrimaryEntities(0) + 20);
  v31 = v1;
  sub_219F45500(v1 + v19, v18, &qword_27CCD97F0);
  v29 = *(v4 + 48);
  if (v29(v18, 1, v3) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v4 + 32))(v7, v18, v3);
    sub_21A0E6DCC();
    sub_219FB77F0(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v4 + 8))(v7, v3);
  }

  v20 = type metadata accessor for NationalElectionData(0);
  v21 = (v31 + *(v20 + 20));
  sub_219F6AB84(a1, *v21);
  v22 = type metadata accessor for SecondaryEntities(0);
  sub_219F45500(v21 + *(v22 + 20), v15, &qword_27CCD97F0);
  v23 = v29;
  if (v29(v15, 1, v3) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    sub_21A0E6DCC();
    sub_219FB77F0(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v4 + 8))(v7, v3);
  }

  v24 = (v31 + *(v20 + 24));
  sub_219F6AB84(a1, *v24);
  v25 = v24 + *(v22 + 20);
  v26 = v30;
  sub_219F45500(v25, v30, &qword_27CCD97F0);
  if (v23(v26, 1, v3) == 1)
  {
    return sub_21A0E6DCC();
  }

  (*(v4 + 32))(v7, v26, v3);
  sub_21A0E6DCC();
  sub_219FB77F0(&qword_27CCD9828, MEMORY[0x277CC9578]);
  sub_21A0E615C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_219FB9208(void (*a1)(_BYTE *))
{
  sub_21A0E6DAC();
  a1(v3);
  return sub_21A0E6DFC();
}

uint64_t NationalElectionData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = type metadata accessor for SecondaryEntities(0);
  v4 = MEMORY[0x28223BE20](v34, v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for PrimaryEntities(0);
  MEMORY[0x28223BE20](v10, v11);
  v35 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAC18);
  v33 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for NationalElectionData(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_219FC0CC8();
  v36 = v15;
  v21 = v38;
  sub_21A0E6E7C();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v38 = v16;
  v22 = v33;
  v23 = v19;
  v31 = v6;
  v42 = 0;
  sub_219FB77F0(&qword_27CCDAC20, type metadata accessor for PrimaryEntities);
  v24 = v35;
  sub_21A0E6ADC();
  v35 = v23;
  sub_219FC0C60(v24, v23, type metadata accessor for PrimaryEntities);
  v41 = 1;
  sub_219FB77F0(&qword_27CCDAC28, type metadata accessor for SecondaryEntities);
  v25 = v9;
  sub_21A0E6ADC();
  v26 = v38;
  v27 = v35;
  sub_219FC0C60(v25, &v35[*(v38 + 20)], type metadata accessor for SecondaryEntities);
  v40 = 2;
  v28 = v31;
  sub_21A0E6ADC();
  (*(v22 + 8))(v36, v37);
  sub_219FC0C60(v28, v27 + *(v26 + 24), type metadata accessor for SecondaryEntities);
  sub_219FB73B8(v27, v32, type metadata accessor for NationalElectionData);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_219FB7420(v27, type metadata accessor for NationalElectionData);
}

uint64_t sub_219FB971C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_21A0E6DAC();
  a3(v5);
  return sub_21A0E6DFC();
}

uint64_t sub_219FB9780(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_21A0E6DAC();
  a4(v6);
  return sub_21A0E6DFC();
}

BOOL sub_219FB97F4(void *a1, void *a2, uint64_t a3)
{
  if (!static PrimaryEntities.== infix(_:_:)(a1, a2) || !static SecondaryEntities.== infix(_:_:)((a1 + *(a3 + 20)), (a2 + *(a3 + 20))))
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return static SecondaryEntities.== infix(_:_:)((a1 + v6), (a2 + v6));
}

uint64_t sub_219FB9870@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_21A0E495C();
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v41 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v5 = *(v35 - 8);
  v7 = MEMORY[0x28223BE20](v35, v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v33 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAED0);
  v13 = *(v5 + 72);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v34 = swift_allocObject();
  v15 = v34 + v14;
  v16 = type metadata accessor for PrimaryEntities(0);
  sub_219F45500(v1 + *(v16 + 20), v15, &qword_27CCD97F0);
  v17 = type metadata accessor for NationalElectionData(0);
  v18 = v1 + *(v17 + 20);
  v19 = type metadata accessor for SecondaryEntities(0);
  v20 = v18 + *(v19 + 20);
  v40 = v13;
  sub_219F45500(v20, v15 + v13, &qword_27CCD97F0);
  sub_219F45500(v1 + *(v17 + 24) + *(v19 + 20), v15 + 2 * v13, &qword_27CCD97F0);
  v21 = (v38 + 48);
  v39 = (v38 + 32);
  v22 = &unk_21A0E97E0;
  v23 = MEMORY[0x277D84F90];
  v24 = 3;
  v33[1] = v15;
  v25 = v15;
  v37 = v2;
  do
  {
    sub_219F45500(v25, v12, &qword_27CCD97F0);
    sub_219FC26CC(v12, v9);
    if ((*v21)(v9, 1, v2) == 1)
    {
      sub_219F6409C(v9, &qword_27CCD97F0);
    }

    else
    {
      v26 = v12;
      v27 = v22;
      v28 = *v39;
      (*v39)(v41, v9, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_219FA1E0C(0, v23[2] + 1, 1, v23);
      }

      v30 = v23[2];
      v29 = v23[3];
      if (v30 >= v29 >> 1)
      {
        v23 = sub_219FA1E0C(v29 > 1, v30 + 1, 1, v23);
      }

      v23[2] = v30 + 1;
      v31 = v23 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30;
      v2 = v37;
      v28(v31, v41, v37);
      v22 = v27;
      v12 = v26;
    }

    v25 += v40;
    --v24;
  }

  while (v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_219FB9C68(v23, v36);
}

uint64_t sub_219FB9C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A0E495C();
  v6 = MEMORY[0x28223BE20](*(v4 - 8), v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v24 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v10 + 16);
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v27 = v10;
    v25 = a2;
    v26 = v14;
    v14(&v24 - v11, v15, v4);
    result = v27;
    if (v13 == 1)
    {
LABEL_3:
      v17 = v25;
      (*(result + 32))(v25, v12, v4);
      return (*(v27 + 56))(v17, 0, 1, v4);
    }

    else
    {
      v19 = (v27 + 32);
      v20 = 1;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v26(v8, v15 + *(result + 72) * v20, v4);
        sub_219FB77F0(&qword_27CCDAED8, MEMORY[0x277CC9578]);
        v22 = sub_21A0E619C();
        v23 = *(v27 + 8);
        if (v22)
        {
          v23(v12, v4);
          (*v19)(v12, v8, v4);
        }

        else
        {
          v23(v8, v4);
        }

        ++v20;
        result = v27;
        if (v21 == v13)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v18 = *(v10 + 56);

    return v18(a2, 1, 1, v4);
  }

  return result;
}

uint64_t PrimaryEntities.entities.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_219FBA034(uint64_t a1)
{
  v2 = sub_219FC0D1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FBA070(uint64_t a1)
{
  v2 = sub_219FC0D1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrimaryEntities.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAC30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FC0D1C();
  sub_21A0E6EAC();
  v12 = *v3;
  v11[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAC40);
  sub_219FC0DC4(&qword_27CCDAC48, sub_219FC0D70);
  sub_21A0E6BBC();
  if (!v2)
  {
    type metadata accessor for PrimaryEntities(0);
    v11[6] = 1;
    sub_21A0E495C();
    sub_219FB77F0(&qword_27CCD9808, MEMORY[0x277CC9578]);
    sub_21A0E6B6C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PrimaryEntities.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAC58);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for PrimaryEntities(0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 28);
  v18 = sub_21A0E495C();
  v19 = *(*(v18 - 8) + 56);
  v26 = v17;
  v19(&v16[v17], 1, 1, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FC0D1C();
  sub_21A0E6E7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_219F6409C(&v16[v26], &qword_27CCD97F0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAC40);
    v28 = 0;
    sub_219FC0DC4(&qword_27CCDAC60, sub_219FC0E3C);
    v20 = v25;
    sub_21A0E6ADC();
    v22 = v29;
    *v16 = v29;
    v27 = 1;
    sub_219FB77F0(&qword_27CCD9838, MEMORY[0x277CC9578]);
    sub_21A0E6A8C();
    (*(v24 + 8))(v11, v20);
    sub_219F68E2C(v7, &v16[v26]);
    sub_219FB73B8(v16, v23, type metadata accessor for PrimaryEntities);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_219FB7420(v16, type metadata accessor for PrimaryEntities);
  }
}

uint64_t PrimaryEntity.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrimaryEntity.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_219FBA85C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x61726F7463656C65;
  v4 = 0xEE00746E756F436CLL;
  if (v2 != 1)
  {
    v3 = 0x746C75736572;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0x61726F7463656C65;
  v8 = 0xEE00746E756F436CLL;
  if (*a2 != 1)
  {
    v7 = 0x746C75736572;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21A0E6C5C();
  }

  return v11 & 1;
}

uint64_t sub_219FBA968()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219FBAA08()
{
  sub_21A0E626C();
}

uint64_t sub_219FBAA94()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219FBAB30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219FC246C();
  *a1 = result;
  return result;
}

void sub_219FBAB60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xEE00746E756F436CLL;
  v5 = 0x61726F7463656C65;
  if (v2 != 1)
  {
    v5 = 0x746C75736572;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_219FBABBC()
{
  v1 = 0x61726F7463656C65;
  if (*v0 != 1)
  {
    v1 = 0x746C75736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_219FBAC14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219FC246C();
  *a1 = result;
  return result;
}

uint64_t sub_219FBAC3C(uint64_t a1)
{
  v2 = sub_219FC0E90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FBAC78(uint64_t a1)
{
  v2 = sub_219FC0E90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrimaryEntity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAC70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v11[0] = *(v1 + 16);
  v12 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FC0E90();
  sub_21A0E6EAC();
  v16 = 0;
  v8 = v11[1];
  sub_21A0E6B7C();
  if (!v8)
  {
    v10 = v12;
    v15 = 1;
    sub_21A0E6BAC();
    v14 = v10;
    v13 = 2;
    sub_219F7267C();
    sub_21A0E6B6C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PrimaryEntity.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21A0E626C();
  MEMORY[0x21CED2490](v1);
  if (v2 == 4)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  sub_21A0E626C();
}

uint64_t PrimaryEntity.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21A0E6DAC();
  sub_21A0E626C();
  MEMORY[0x21CED2490](v1);
  sub_21A0E6DCC();
  if (v2 != 4)
  {
    sub_21A0E626C();
  }

  return sub_21A0E6DFC();
}

uint64_t PrimaryEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAC80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FC0E90();
  sub_21A0E6E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v10 = sub_21A0E6A9C();
  v12 = v11;
  v13 = v10;
  v20 = 1;
  v17 = sub_21A0E6ACC();
  v18 = 2;
  sub_219F726D0();
  sub_21A0E6A8C();
  (*(v6 + 8))(v9, v5);
  v15 = v19;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219FBB2FC()
{
  sub_21A0E6DAC();
  PrimaryEntity.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_219FBB35C()
{
  sub_21A0E6DAC();
  PrimaryEntity.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_219FBB438(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 20);

  return sub_219F68E2C(a1, v4);
}

uint64_t sub_219FBB4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365697469746E65 && a2 == 0xE800000000000000;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021A109390 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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

uint64_t sub_219FBB5AC(uint64_t a1)
{
  v2 = sub_219FC0EE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FBB5E8(uint64_t a1)
{
  v2 = sub_219FC0EE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecondaryEntities.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAC88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FC0EE4();
  sub_21A0E6EAC();
  v12 = *v3;
  v11[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAC98);
  sub_219FC0F38(&qword_27CCDACA0, sub_219FC0FB0);
  sub_21A0E6BBC();
  if (!v2)
  {
    type metadata accessor for SecondaryEntities(0);
    v11[6] = 1;
    sub_21A0E495C();
    sub_219FB77F0(&qword_27CCD9808, MEMORY[0x277CC9578]);
    sub_21A0E6B6C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_219FBB864(uint64_t a1, void (*a2)(uint64_t, void), uint64_t (*a3)(void))
{
  v7 = sub_21A0E495C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v18 - v14;
  a2(a1, *v3);
  v16 = a3(0);
  sub_219F45500(v3 + *(v16 + 20), v15, &qword_27CCD97F0);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    return sub_21A0E6DCC();
  }

  (*(v8 + 32))(v11, v15, v7);
  sub_21A0E6DCC();
  sub_219FB77F0(&qword_27CCD9828, MEMORY[0x277CC9578]);
  sub_21A0E615C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_219FBBAA0(void (*a1)(_BYTE *, void), uint64_t (*a2)(void))
{
  v5 = sub_21A0E495C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v17[-v12 - 8];
  sub_21A0E6DAC();
  a1(v17, *v2);
  v14 = a2(0);
  sub_219F45500(v2 + *(v14 + 20), v13, &qword_27CCD97F0);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_21A0E6DCC();
    sub_219FB77F0(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v6 + 8))(v9, v5);
  }

  return sub_21A0E6DFC();
}

uint64_t SecondaryEntities.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDACB0);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for SecondaryEntities(0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 28);
  v18 = sub_21A0E495C();
  v19 = *(*(v18 - 8) + 56);
  v26 = v17;
  v19(&v16[v17], 1, 1, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FC0EE4();
  sub_21A0E6E7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_219F6409C(&v16[v26], &qword_27CCD97F0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAC98);
    v28 = 0;
    sub_219FC0F38(&qword_27CCDACB8, sub_219FC1004);
    v20 = v25;
    sub_21A0E6ADC();
    v22 = v29;
    *v16 = v29;
    v27 = 1;
    sub_219FB77F0(&qword_27CCD9838, MEMORY[0x277CC9578]);
    sub_21A0E6A8C();
    (*(v24 + 8))(v11, v20);
    sub_219F68E2C(v7, &v16[v26]);
    sub_219FB73B8(v16, v23, type metadata accessor for SecondaryEntities);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_219FB7420(v16, type metadata accessor for SecondaryEntities);
  }
}

uint64_t sub_219FBC08C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void))
{
  v8 = sub_21A0E495C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v18 - v15;
  a4(a1, *v4);
  sub_219F45500(v4 + *(a2 + 20), v16, &qword_27CCD97F0);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    return sub_21A0E6DCC();
  }

  (*(v9 + 32))(v12, v16, v8);
  sub_21A0E6DCC();
  sub_219FB77F0(&qword_27CCD9828, MEMORY[0x277CC9578]);
  sub_21A0E615C();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_219FBC2A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void))
{
  v7 = sub_21A0E495C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v18[-v14 - 8];
  sub_21A0E6DAC();
  a4(v18, *v4);
  sub_219F45500(v4 + *(a2 + 20), v15, &qword_27CCD97F0);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    sub_21A0E6DCC();
    sub_219FB77F0(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v8 + 8))(v11, v7);
  }

  return sub_21A0E6DFC();
}

uint64_t SecondaryEntity.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SecondaryEntity.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SecondaryEntity.notUpCount.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_219FBC670()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219FBC734()
{
  sub_21A0E626C();
}

uint64_t sub_219FBC7E4()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219FBC8A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219FC24B8();
  *a1 = result;
  return result;
}

void sub_219FBC8D4(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEA0000000000746ELL;
  v5 = 0x756F437055746F6ELL;
  if (*v1 != 2)
  {
    v5 = 0x746C75736572;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x61726F7463656C65;
    v2 = 0xEE00746E756F436CLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_219FBC954()
{
  v1 = 25705;
  v2 = 0x756F437055746F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x746C75736572;
  }

  if (*v0)
  {
    v1 = 0x61726F7463656C65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219FBC9D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219FC24B8();
  *a1 = result;
  return result;
}

uint64_t sub_219FBC9F8(uint64_t a1)
{
  v2 = sub_219FC1058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FBCA34(uint64_t a1)
{
  v2 = sub_219FC1058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecondaryEntity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDACC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v12 - v6;
  v8 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = v8;
  LODWORD(v8) = *(v1 + 32);
  v12[0] = *(v1 + 33);
  v12[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FC1058();
  sub_21A0E6EAC();
  v20 = 0;
  v9 = v15;
  sub_21A0E6B7C();
  if (!v9)
  {
    v10 = v12[0];
    v19 = 1;
    sub_21A0E6BAC();
    v18 = 2;
    sub_21A0E6B5C();
    v17 = v10;
    v16 = 3;
    sub_219F7267C();
    sub_21A0E6B6C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SecondaryEntity.hash(into:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  sub_21A0E626C();
  MEMORY[0x21CED2490](v2);
  if (v3 != 1)
  {
    sub_21A0E6DCC();
    MEMORY[0x21CED2490](v1);
    if (v4 != 4)
    {
      goto LABEL_3;
    }

    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  if (v4 == 4)
  {
    return sub_21A0E6DCC();
  }

LABEL_3:
  sub_21A0E6DCC();
  sub_21A0E626C();
}

uint64_t SecondaryEntity.hashValue.getter()
{
  sub_21A0E6DAC();
  SecondaryEntity.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t SecondaryEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDACD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FC1058();
  sub_21A0E6E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v10 = sub_21A0E6A9C();
  v12 = v11;
  v13 = v10;
  v26 = 1;
  v22 = sub_21A0E6ACC();
  v25 = 2;
  v14 = sub_21A0E6A7C();
  v21 = v15;
  v20 = v14;
  v23 = 3;
  sub_219F726D0();
  sub_21A0E6A8C();
  (*(v6 + 8))(v9, v5);
  v17 = v24;
  *a2 = v13;
  *(a2 + 8) = v12;
  v18 = v20;
  *(a2 + 16) = v22;
  *(a2 + 24) = v18;
  *(a2 + 32) = v21 & 1;
  *(a2 + 33) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219FBD098()
{
  sub_21A0E6DAC();
  SecondaryEntity.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_219FBD100()
{
  sub_21A0E6DAC();
  SecondaryEntity.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_219FBD198()
{
  if (*v0)
  {
    return 0x6E6F697463656C65;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_219FBD1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697463656C65 && a2 == 0xEC0000006F726548)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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

uint64_t sub_219FBD2B4(uint64_t a1)
{
  v2 = sub_219FC10AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FBD2F0(uint64_t a1)
{
  v2 = sub_219FC10AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219FBD32C()
{
  v1 = 0x656C746974;
  v2 = 0x7470697263736564;
  if (*v0 != 2)
  {
    v2 = 0x797469746E65;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219FBD3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219FC2504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219FBD3D0(uint64_t a1)
{
  v2 = sub_219FC1100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FBD40C(uint64_t a1)
{
  v2 = sub_219FC1100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219FBD448()
{
  if (*v0)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_219FBD488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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