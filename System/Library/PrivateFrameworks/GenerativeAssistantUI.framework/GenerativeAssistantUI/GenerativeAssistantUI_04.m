int *sub_24FEBCE74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v102 = sub_24FEDC884();
  v110 = *(v102 - 8);
  v3 = *(v110 + 64);
  MEMORY[0x28223BE20](v102);
  v121 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v120 = &v92 - v6;
  MEMORY[0x28223BE20](v7);
  v122 = (&v92 - v8);
  v9 = sub_24FEDC854();
  v10 = *(v9 - 8);
  v123 = v9;
  v124 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v111 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24FEDC6F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v119 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A70C8, &qword_24FEE7AC8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v92 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v92 - v23;
  v25 = sub_24FEDC894();
  v107 = *(v25 - 8);
  v26 = *(v107 + 64);
  MEMORY[0x28223BE20](v25);
  v103 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B8, &qword_24FEE53B0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v92 - v30;
  v32 = sub_24FEDC774();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1[2];
  v104 = a1;
  v106 = v25;
  if (v38)
  {
    v117 = v20;
    v118 = v13;
    v39 = v37;
    v40 = v33;
    v41 = v14;
    v42 = v32;
    v44 = a1[7];
    v43 = a1[8];
    __swift_project_boxed_opaque_existential_1(a1 + 4, v44);
    v45 = *(v43 + 24);
    v46 = v44;
    v33 = v40;
    v37 = v39;
    v20 = v117;
    v13 = v118;
    v47 = v43;
    v32 = v42;
    v14 = v41;
    v45(v46, v47);
    (*(v33 + 56))(v31, 0, 1, v32);
    (*(v33 + 32))(v37, v31, v32);
  }

  else
  {
    (*(v33 + 56))(v31, 1, 1, v32, v35);
    sub_24FEDC764();
    if ((*(v33 + 48))(v31, 1, v32) != 1)
    {
      sub_24FE58B7C(v31, &qword_27F3A63B8, &qword_24FEE53B0);
    }
  }

  v48 = v119;
  sub_24FEDC704();
  sub_24FEBC8A8(v20);
  (*(v14 + 8))(v48, v13);
  v49 = sub_24FEDC6C4();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v20, 1, v49) == 1)
  {
    sub_24FE58B7C(v20, &qword_27F3A70C8, &qword_24FEE7AC8);
    (*(v107 + 56))(v24, 1, 1, v106);
LABEL_8:
    sub_24FE58B7C(v24, &qword_27F3A6138, &unk_24FEE4A10);
    LOBYTE(v53) = 0;
    v54 = 1;
    v55 = 1;
    v56 = v105;
    v57 = v104;
LABEL_31:
    _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
    v87 = sub_24FEBDADC(v57);
    v88 = type metadata accessor for DocumentViewModel();
    v89 = *(v88 + 48);
    v90 = *(v88 + 52);
    v91 = swift_allocObject();
    swift_beginAccess();
    v125 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E18, &qword_24FEE4420);
    sub_24FEDCFA4();
    swift_endAccess();
    (*(v33 + 8))(v37, v32);
    result = type metadata accessor for DocumentOutlineView.Content();
    *(v56 + result[5]) = v91;
    *(v56 + result[6]) = v55;
    *(v56 + result[7]) = v54;
    *(v56 + result[8]) = v53 & 1;
    return result;
  }

  sub_24FE8B614();
  sub_24FEDC6D4();
  (*(v50 + 8))(v20, v49);
  v51 = v106;
  v52 = v107;
  if ((*(v107 + 48))(v24, 1, v106) == 1)
  {
    goto LABEL_8;
  }

  (*(v52 + 32))(v103, v24, v51);
  v58 = sub_24FEDC864();
  v59 = v58;
  v60 = *(v58 + 16);
  if (!v60)
  {

    v86 = v51;
    LOBYTE(v53) = 0;
    v100 = 0;
    v101 = 1;
    v56 = v105;
    v57 = v104;
LABEL_30:
    (*(v107 + 8))(v103, v86);
    v54 = v100;
    v55 = v101;
    goto LABEL_31;
  }

  v93 = v37;
  v94 = v33;
  v95 = v32;
  LODWORD(v53) = 0;
  v100 = 0;
  v114 = 0;
  v98 = 0;
  v99 = 0;
  v61 = 0;
  v118 = v58 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
  v116 = (v110 + 88);
  v117 = (v124 + 16);
  v115 = *MEMORY[0x277CC8D38];
  v62 = (v110 + 8);
  v109 = *MEMORY[0x277CC8D08];
  v113 = (v110 + 104);
  v108 = *MEMORY[0x277CC8D18];
  v119 = (v124 + 8);
  v96 = (v110 + 96);
  v110 = v60;
  v97 = v60 - 1;
  v63 = 1;
  v65 = v122;
  v64 = v123;
  v66 = v111;
  v112 = v58;
LABEL_11:
  v67 = v102;
  LODWORD(v111) = v53;
LABEL_12:
  v68 = v61;
  v101 = v63;
  while (1)
  {
    while (1)
    {
      if (v68 >= *(v59 + 16))
      {
        __break(1u);
LABEL_33:
        v101 = v63;
LABEL_28:

        v56 = v105;
        v57 = v104;
        v32 = v95;
        v33 = v94;
        v37 = v93;
        v86 = v106;
        goto LABEL_30;
      }

      v69 = v68 + 1;
      (*(v124 + 16))(v66, v118 + *(v124 + 72) * v68, v64);
      sub_24FEDC834();
      v70 = (*v116)(v65, v67);
      if (v70 == v115)
      {
        break;
      }

      v71 = *v62;
      (*v62)(v65, v67);
      v53 = v66;
      if ((v114 & 1) == 0)
      {
        v72 = v120;
        sub_24FEDC834();
        v73 = *v113;
        v74 = v121;
        (*v113)(v121, v109, v67);
        v75 = MEMORY[0x253058A70](v72, v74);
        v76 = v74;
        v65 = v122;
        v71(v76, v67);
        v71(v72, v67);
        if (v75)
        {
          goto LABEL_27;
        }

        v77 = v120;
        sub_24FEDC834();
        v78 = v121;
        v73(v121, v108, v67);
        v79 = MEMORY[0x253058A70](v77, v78);
        v80 = v78;
        v65 = v122;
        v71(v80, v67);
        v71(v77, v67);
        if (v79)
        {
LABEL_27:
          v83 = v120;
          sub_24FEDC834();
          v84 = v121;
          v73(v121, v109, v67);
          v85 = MEMORY[0x253058A70](v83, v84);
          v71(v84, v67);
          v71(v83, v67);
          v64 = v123;
          (*v119)(v53, v123);
          v61 = v68 + 1;
          v114 = 1;
          v66 = v53;
          LODWORD(v53) = v85;
          v63 = v101;
          v59 = v112;
          if (v97 != v68)
          {
            goto LABEL_11;
          }

          goto LABEL_28;
        }
      }

      v64 = v123;
      (*v119)(v53, v123);
      ++v68;
      v66 = v53;
      LOBYTE(v53) = v111;
      v59 = v112;
      if (v110 == v69)
      {
        goto LABEL_28;
      }
    }

    (*v119)(v66, v64);
    result = (*v96)(v65, v67);
    if (__OFADD__(v99, 1))
    {
      break;
    }

    v100 = v99 + 1;
    if ((v98 & 1) == 0)
    {
      v63 = *v65;
      v61 = v68 + 1;
      v98 = 1;
      ++v99;
      if (v97 != v68)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }

    v63 = &v126 + 4;
    v98 = 1;
    ++v99;
    if (v97 == v68++)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FEBDADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_24FEBE154(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_24FE72D1C(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F00, &qword_24FEE4550);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24FEBE154((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_24FE71ADC(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

double sub_24FEBDC14@<D0>(uint64_t a1@<X8>)
{
  v2 = DocumentOutlineElement.makeView(textWrapOffset:)();
  result = 8.0;
  *a1 = xmmword_24FEE3D80;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4 & 1;
  return result;
}

double sub_24FEBDC58@<D0>(uint64_t a1@<X8>)
{
  v2 = DocumentOutlineElement.makeView(textWrapOffset:)();
  result = 8.0;
  *a1 = xmmword_24FEE3D80;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4 & 1;
  return result;
}

size_t sub_24FEBDC94(size_t a1, int64_t a2, char a3)
{
  result = sub_24FEBE43C(a1, a2, a3, *v3, &qword_27F3A7170, &unk_24FEE7BF0, type metadata accessor for DocumentOutlineView.Content);
  *v3 = result;
  return result;
}

uint64_t sub_24FEBDCD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentOutlineView.Content();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24FEBDD4C()
{
  result = qword_27F3A70E0;
  if (!qword_27F3A70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A70E0);
  }

  return result;
}

uint64_t sub_24FEBDDA0(uint64_t a1)
{
  *(a1 + 8) = sub_24FEBE970(&qword_27F3A70E8, type metadata accessor for DocumentOutlineElement);
  result = sub_24FEBE970(&unk_27F3A70F0, type metadata accessor for DocumentOutlineElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FEBDE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24FEBDF50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDCA64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24FEBE008()
{
  sub_24FEDCA64();
  if (v0 <= 0x3F)
  {
    sub_24FEBE08C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24FEBE08C()
{
  if (!qword_27F3A7110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A70B0, &qword_24FEE7AB0);
    v0 = sub_24FEDE3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A7110);
    }
  }
}

char *sub_24FEBE0F0(char *a1, int64_t a2, char a3)
{
  result = sub_24FEBE320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24FEBE110(size_t a1, int64_t a2, char a3)
{
  result = sub_24FEBE43C(a1, a2, a3, *v3, &qword_27F3A7078, &qword_24FEE7A78, MEMORY[0x277CC8D88]);
  *v3 = result;
  return result;
}

void *sub_24FEBE154(void *a1, int64_t a2, char a3)
{
  result = sub_24FEBE724(a1, a2, a3, *v3, &qword_27F3A7060, &qword_24FEE7A60, &qword_27F3A5DE0, &unk_24FEE7BE0);
  *v3 = result;
  return result;
}

size_t sub_24FEBE194(size_t a1, int64_t a2, char a3)
{
  result = sub_24FEBE43C(a1, a2, a3, *v3, &qword_27F3A7148, &qword_24FEE7BC8, type metadata accessor for DocumentTableView.TableDatum);
  *v3 = result;
  return result;
}

size_t sub_24FEBE1D8(size_t a1, int64_t a2, char a3)
{
  result = sub_24FEBE43C(a1, a2, a3, *v3, &qword_27F3A7158, &qword_24FEE7BD8, type metadata accessor for DocumentTableView.RowHeader);
  *v3 = result;
  return result;
}

size_t sub_24FEBE21C(size_t a1, int64_t a2, char a3)
{
  result = sub_24FEBE43C(a1, a2, a3, *v3, &qword_27F3A6B00, &unk_24FEE6690, MEMORY[0x277CC8BF0]);
  *v3 = result;
  return result;
}

char *sub_24FEBE260(char *a1, int64_t a2, char a3)
{
  result = sub_24FEBE618(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24FEBE280(void *a1, int64_t a2, char a3)
{
  result = sub_24FEBE724(a1, a2, a3, *v3, &qword_27F3A7138, &qword_24FEE7BB8, &qword_27F3A7140, &qword_24FEE7BC0);
  *v3 = result;
  return result;
}

void *sub_24FEBE2C0(void *a1, int64_t a2, char a3)
{
  result = sub_24FEBE724(a1, a2, a3, *v3, &qword_27F3A7128, &qword_24FEE7BA8, &qword_27F3A7130, &qword_24FEE7BB0);
  *v3 = result;
  return result;
}

char *sub_24FEBE300(char *a1, int64_t a2, char a3)
{
  result = sub_24FEBE86C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24FEBE320(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7178, &unk_24FEE7C00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24FEBE43C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

char *sub_24FEBE618(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7150, &qword_24FEE7BD0);
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

void *sub_24FEBE724(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_24FEBE86C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7120, &qword_24FEE7BA0);
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

uint64_t sub_24FEBE970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DocumentOutlineItemView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7180, &qword_24FEE7C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7188, &qword_24FEE7C18);
  sub_24FEBF888();
  sub_24FEBF944();
  return sub_24FEDDD24();
}

uint64_t sub_24FEBEA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DocumentView();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DocumentOutlineItemView();
  v9 = *(a1 + *(v8 + 36));
  v10 = *(a1 + *(v8 + 52));
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for LaTeXMathTracker();
  sub_24FEC0540(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker);

  *(v7 + 2) = sub_24FEDD1B4();
  *(v7 + 3) = v11;
  v12 = *(v4 + 36);
  *&v20 = 0x4040800000000000;
  sub_24FE85C8C();
  sub_24FEDD0B4();
  type metadata accessor for DocumentViewModel();
  sub_24FEC0540(&qword_27F3A5DF0, type metadata accessor for DocumentViewModel);

  *v7 = sub_24FEDD1B4();
  *(v7 + 1) = v13;
  *(v7 + 6) = 0;
  *(v7 + 7) = 0;
  *(v7 + 4) = MEMORY[0x277D84F90];
  v7[40] = v10;
  sub_24FE82880();
  sub_24FEDDF44();
  sub_24FEDD294();
  sub_24FEC0588(v7, a2);
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7180, &qword_24FEE7C10) + 36));
  v15 = v25;
  v14[4] = v24;
  v14[5] = v15;
  v14[6] = v26;
  v16 = v21;
  *v14 = v20;
  v14[1] = v16;
  v17 = v23;
  v14[2] = v22;
  v14[3] = v17;
  return sub_24FEC05EC(v7);
}

uint64_t sub_24FEBED10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A72A8, &qword_24FEE7D30);
  v3 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v5 = &v85 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7210, &qword_24FEE7C60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v85 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A72B0, &qword_24FEE7D38);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v85 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71C0, &qword_24FEE7C28);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v85 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71B0, &qword_24FEE7C20);
  v18 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v20 = &v85 - v19;
  v21 = type metadata accessor for DocumentOutlineItemView();
  v22 = v21;
  if (*(a1 + v21[12]))
  {
    *&v103 = *(a1 + v21[7]);
    *&v103 = sub_24FEDE824();
    *(&v103 + 1) = v23;
    sub_24FEAD080();
    v91 = sub_24FEDD9F4();
    v90 = v24;
    v26 = v25;
    v89 = v27;
    KeyPath = swift_getKeyPath();
    type metadata accessor for MarkdownFont();
    swift_initStaticObject();
    sub_24FE82000(&v97);
    v110 = v97;
    sub_24FE8A8D0(&v110);
    v109 = v99;
    sub_24FE8A8D0(&v109);
    v108 = v100;
    sub_24FE8A8D0(&v108);
    v107 = v101;
    sub_24FE8A8D0(&v107);
    v106 = v102;
    sub_24FE8A8D0(&v106);
    v29 = sub_24FEDD7D4();

    v30 = swift_getKeyPath();
    v31 = v26 & 1;
    LOBYTE(v103) = v26 & 1;
    v95 = 0;
    v32 = sub_24FEDD664();
    v33 = *(a1 + v22[8]);
    sub_24FEDDF54();
    sub_24FEDD0F4();
    *&v96[4] = v103;
    *&v96[20] = v104;
    *&v96[36] = v105;
    result = sub_24FEDD774();
    if (!__OFSUB__(*(a1 + v22[11]), 1))
    {
      v35 = result;
      v36 = v22[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
      sub_24FEDD0C4();
      sub_24FEDD014();
      v37 = *&v96[16];
      *(v5 + 76) = *v96;
      v95 = 0;
      v38 = v90;
      *v5 = v91;
      *(v5 + 1) = v38;
      v5[16] = v31;
      *(v5 + 3) = v89;
      *(v5 + 4) = KeyPath;
      *(v5 + 5) = 1;
      v5[48] = 0;
      *(v5 + 7) = v30;
      *(v5 + 8) = v29;
      *(v5 + 18) = v32;
      *(v5 + 92) = v37;
      *(v5 + 108) = *&v96[32];
      *(v5 + 31) = *&v96[48];
      v5[128] = v35;
      *(v5 + 17) = v39;
      *(v5 + 18) = v40;
      *(v5 + 19) = v41;
      *(v5 + 20) = v42;
      v5[168] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7220, &qword_24FEE7C68);
      sub_24FEBF9D0();
      sub_24FEBFE14();
      return sub_24FEDD5F4();
    }

    __break(1u);
    goto LABEL_10;
  }

  v87 = v10;
  v91 = v14;
  v88 = v13;
  v89 = v20;
  v90 = v6;
  if (*(a1 + v21[11]) == 1)
  {
    sub_24FEDDCB4();
    v43 = sub_24FEDDA04();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71F0, &qword_24FEE7C40) + 36)];
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7200, &qword_24FEE7C48) + 28);
    v52 = *MEMORY[0x277CE1050];
    v53 = sub_24FEDDCF4();
    (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
    *v50 = swift_getKeyPath();
    *v17 = v43;
    *(v17 + 1) = v45;
    v17[16] = v47 & 1;
    *(v17 + 3) = v49;
    LODWORD(v49) = sub_24FEDD664();
    *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71E0, &qword_24FEE7C38) + 36)] = v49;
    type metadata accessor for MarkdownFont();
    swift_initStaticObject();
    sub_24FE82000(&v97);
    v54 = v99;
    v110 = v97;

    sub_24FE8A8D0(&v110);
    v109 = v98;
    sub_24FE8A8D0(&v109);

    v108 = v100;
    sub_24FE8A8D0(&v108);
    v107 = v101;
    sub_24FE8A8D0(&v107);
    v106 = v102;
    sub_24FE8A8D0(&v106);
    v55 = swift_getKeyPath();
    v56 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71D0, &qword_24FEE7C30) + 36)];
    *v56 = v55;
    v56[1] = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    sub_24FEDD0C4();
    sub_24FEDDF34();
    sub_24FEDD0F4();
    v57 = &v17[*(v91 + 36)];
    v58 = v104;
    *v57 = v103;
    *(v57 + 1) = v58;
    *(v57 + 2) = v105;
    v59 = &qword_27F3A71C0;
    v60 = &qword_24FEE7C28;
    sub_24FE58B14(v17, v88, &qword_27F3A71C0, &qword_24FEE7C28);
    swift_storeEnumTagMultiPayload();
    sub_24FEBFA88(&qword_27F3A71B8, &qword_27F3A71C0, &qword_24FEE7C28, sub_24FEBFB0C);
    sub_24FEBFD5C();
    v61 = v89;
    sub_24FEDD5F4();
    v62 = v17;
LABEL_8:
    sub_24FE58B7C(v62, v59, v60);
    sub_24FE58B14(v61, v5, &qword_27F3A71B0, &qword_24FEE7C20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7220, &qword_24FEE7C68);
    sub_24FEBF9D0();
    sub_24FEBFE14();
    sub_24FEDD5F4();
    return sub_24FE58B7C(v61, &qword_27F3A71B0, &qword_24FEE7C20);
  }

  v86 = *(a1 + v21[11]);
  sub_24FEDDCB4();
  v63 = sub_24FEDDA04();
  v65 = v64;
  v67 = v66;
  v85 = v68;
  v69 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71F0, &qword_24FEE7C40) + 36)];
  v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7200, &qword_24FEE7C48) + 28);
  v71 = *MEMORY[0x277CE1050];
  v72 = sub_24FEDDCF4();
  (*(*(v72 - 8) + 104))(v69 + v70, v71, v72);
  *v69 = swift_getKeyPath();
  *v9 = v63;
  *(v9 + 1) = v65;
  v9[16] = v67 & 1;
  *(v9 + 3) = v85;
  LODWORD(v63) = sub_24FEDD664();
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71E0, &qword_24FEE7C38) + 36)] = v63;
  type metadata accessor for MarkdownFont();
  swift_initStaticObject();
  sub_24FE82000(&v97);
  v110 = v97;

  sub_24FE8A8D0(&v110);
  v109 = v98;
  sub_24FE8A8D0(&v109);

  v108 = v100;
  sub_24FE8A8D0(&v108);
  v107 = v101;
  sub_24FE8A8D0(&v107);
  v106 = v102;
  sub_24FE8A8D0(&v106);
  sub_24FEDD824();
  v73 = sub_24FEDD864();

  v74 = swift_getKeyPath();
  v75 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71D0, &qword_24FEE7C30) + 36)];
  *v75 = v74;
  v75[1] = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  sub_24FEDD0C4();
  sub_24FEDDF34();
  sub_24FEDD0F4();
  v76 = &v9[*(v91 + 36)];
  v77 = v104;
  *v76 = v103;
  *(v76 + 1) = v77;
  *(v76 + 2) = v105;
  v78 = sub_24FEDD774();
  v79 = a1 + v22[5];
  result = sub_24FEDD0C4();
  if (!__OFSUB__(v86, 1))
  {
    sub_24FEDD014();
    v80 = &v9[*(v90 + 36)];
    *v80 = v78;
    *(v80 + 1) = v81;
    *(v80 + 2) = v82;
    *(v80 + 3) = v83;
    *(v80 + 4) = v84;
    v80[40] = 0;
    v59 = &qword_27F3A7210;
    v60 = &qword_24FEE7C60;
    sub_24FE58B14(v9, v88, &qword_27F3A7210, &qword_24FEE7C60);
    swift_storeEnumTagMultiPayload();
    sub_24FEBFA88(&qword_27F3A71B8, &qword_27F3A71C0, &qword_24FEE7C28, sub_24FEBFB0C);
    sub_24FEBFD5C();
    v61 = v89;
    sub_24FEDD5F4();
    v62 = v9;
    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_24FEBF888()
{
  result = qword_27F3A7190;
  if (!qword_27F3A7190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7180, &qword_24FEE7C10);
    sub_24FEC0540(&qword_27F3A7198, type metadata accessor for DocumentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7190);
  }

  return result;
}

unint64_t sub_24FEBF944()
{
  result = qword_27F3A71A0;
  if (!qword_27F3A71A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7188, &qword_24FEE7C18);
    sub_24FEBF9D0();
    sub_24FEBFE14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A71A0);
  }

  return result;
}

unint64_t sub_24FEBF9D0()
{
  result = qword_27F3A71A8;
  if (!qword_27F3A71A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A71B0, &qword_24FEE7C20);
    sub_24FEBFA88(&qword_27F3A71B8, &qword_27F3A71C0, &qword_24FEE7C28, sub_24FEBFB0C);
    sub_24FEBFD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A71A8);
  }

  return result;
}

uint64_t sub_24FEBFA88(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24FEBFB3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24FE58928(&qword_27F3A6298, &qword_27F3A62A0, &qword_24FEE4DE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24FEBFBEC()
{
  result = qword_27F3A71D8;
  if (!qword_27F3A71D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A71E0, &qword_24FEE7C38);
    sub_24FEBFCA4();
    sub_24FE58928(&qword_27F3A6698, &qword_27F3A66A0, &unk_24FEE7C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A71D8);
  }

  return result;
}

unint64_t sub_24FEBFCA4()
{
  result = qword_27F3A71E8;
  if (!qword_27F3A71E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A71F0, &qword_24FEE7C40);
    sub_24FE58928(&qword_27F3A71F8, &qword_27F3A7200, &qword_24FEE7C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A71E8);
  }

  return result;
}

unint64_t sub_24FEBFD5C()
{
  result = qword_27F3A7208;
  if (!qword_27F3A7208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7210, &qword_24FEE7C60);
    sub_24FEBFA88(&qword_27F3A71B8, &qword_27F3A71C0, &qword_24FEE7C28, sub_24FEBFB0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7208);
  }

  return result;
}

unint64_t sub_24FEBFE14()
{
  result = qword_27F3A7218;
  if (!qword_27F3A7218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7220, &qword_24FEE7C68);
    sub_24FEBFA88(&qword_27F3A7228, &qword_27F3A7230, &qword_24FEE7C70, sub_24FEBFECC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7218);
  }

  return result;
}

unint64_t sub_24FEBFECC()
{
  result = qword_27F3A7238;
  if (!qword_27F3A7238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7240, &qword_24FEE7C78);
    sub_24FEBFB3C(&qword_27F3A7248, &qword_27F3A7250, &qword_24FEE7C80, sub_24FEBFFB0);
    sub_24FE58928(&qword_27F3A6698, &qword_27F3A66A0, &unk_24FEE7C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7238);
  }

  return result;
}

unint64_t sub_24FEBFFB0()
{
  result = qword_27F3A7258;
  if (!qword_27F3A7258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7260, &qword_24FEE7C88);
    sub_24FE58928(&qword_27F3A7268, &unk_27F3A7270, &qword_24FEE7C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7258);
  }

  return result;
}

uint64_t sub_24FEC0084()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7180, &qword_24FEE7C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7188, &qword_24FEE7C18);
  sub_24FEBF888();
  sub_24FEBF944();
  return sub_24FEDDD24();
}

uint64_t sub_24FEC0154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24FEC0230(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for DocumentOutlineItemView()
{
  result = qword_27F3A7280;
  if (!qword_27F3A7280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24FEC0340()
{
  sub_24FE86B40();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DocumentViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24FEC0474(uint64_t a1)
{
  v2 = sub_24FEDDCF4();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_24FEDD2F4();
}

uint64_t sub_24FEC0540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FEC0588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FEC05EC(uint64_t a1)
{
  v2 = type metadata accessor for DocumentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DocumentOutlineView.OutlineType.hashValue.getter(char a1)
{
  sub_24FEDE904();
  MEMORY[0x25305AB10](a1 & 1);
  return sub_24FEDE924();
}

uint64_t DocumentOutlineView.Content.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentOutlineView.body.getter@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = a2;
  v10 = sub_24FEC0908(a1, a1, a2, a4, a5);
  *a3 = sub_24FEDD504();
  *(a3 + 8) = a4;
  *(a3 + 16) = 0;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A72B8, &qword_24FEE7DD0) + 44);
  sub_24FEC1800(a1);
  v13 = v12;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a1;
  *(v14 + 48) = v5;
  *(v14 + 56) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24FEC1B10;
  *(v15 + 24) = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A72C0, &qword_24FEE7DF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A72C8, &qword_24FEE7E00);
  sub_24FE58928(&qword_27F3A72D0, &qword_27F3A72C0, &qword_24FEE7DF8);
  sub_24FEC1B50();
  return sub_24FEDDE94();
}

uint64_t sub_24FEC0908(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  v42 = a3;
  v43 = a2;
  v8 = type metadata accessor for DocumentOutlineView.Content();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (!v14)
  {
    v18 = MEMORY[0x277D84F98];
LABEL_23:
    v37 = v43;

    sub_24FEC12A8(v18, v37, v42 & 1, a4, a5);
    v39 = v38;

    return v39;
  }

  v15 = *(v10 + 24);
  v44 = *(v10 + 28);
  v16 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v17 = *(v11 + 72);
  v18 = MEMORY[0x277D84F98];
  while (1)
  {
    sub_24FEC2648(v16, v13);
    v19 = *&v13[v44];
    v20 = *&v13[v15];
    sub_24FEC25E8(v13, type metadata accessor for DocumentOutlineView.Content);
    v21 = v18[2];
    if (v21)
    {
      v22 = sub_24FEC11F8(v19);
      if (v23)
      {
        v21 = *(v18[7] + 8 * v22);
      }

      else
      {
        v21 = 0;
      }
    }

    v24 = v21 <= v20 ? v20 : v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v18;
    v26 = sub_24FEC11F8(v19);
    v28 = v18[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      break;
    }

    v32 = v27;
    if (v18[3] < v31)
    {
      sub_24FEC1450(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_24FEC11F8(v19);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_26;
      }

LABEL_17:
      v18 = v45;
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v36 = v26;
    sub_24FEC16B4();
    v26 = v36;
    v18 = v45;
    if (v32)
    {
LABEL_3:
      *(v18[7] + 8 * v26) = v24;
      goto LABEL_4;
    }

LABEL_18:
    v18[(v26 >> 6) + 8] |= 1 << v26;
    *(v18[6] + 8 * v26) = v19;
    *(v18[7] + 8 * v26) = v24;
    v34 = v18[2];
    v30 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v30)
    {
      goto LABEL_25;
    }

    v18[2] = v35;
LABEL_4:
    v16 += v17;
    if (!--v14)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_24FEDE864();
  __break(1u);
  return result;
}

uint64_t sub_24FEC0BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v54 = a5;
  v55 = a6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7320, &qword_24FEE7F80);
  v51 = *(v53 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7328, &unk_24FEE7F88);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v51 - v14;
  v16 = type metadata accessor for DocumentOutlineItemView();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v58 = &v51 - v21;
  v22 = type metadata accessor for DocumentOutlineView.Content();
  v23 = v22[7];
  v24 = *(a2 + v22[6]);
  v25 = *(a2 + v23);
  v26 = 30.0;
  if (*(a3 + 16))
  {
    v27 = sub_24FEC11F8(*(a2 + v23));
    if (v28)
    {
      v26 = *(*(a3 + 56) + 8 * v27);
    }
  }

  v29 = *(a2 + v22[5]);
  v30 = v22[8];
  v59 = a2;
  v31 = *(a2 + v30);
  v57 = a1;
  v56 = (a1 == 0) & a4;
  v60 = 0x402A000000000000;
  sub_24FE85C8C();

  sub_24FEDD0B4();
  v32 = v16[5];
  v60 = 0x4033000000000000;
  sub_24FEDD0B4();
  *&v19[v16[6]] = 0x401C000000000000;
  *&v19[v16[7]] = v24;
  *&v19[v16[8]] = v26;
  *&v19[v16[9]] = v29;
  *&v19[v16[11]] = v25;
  v19[v16[12]] = v31;
  if (v31 == 1)
  {
    v60 = v24;
    sub_24FEDE824();
    v33 = sub_24FEDE264();
  }

  else
  {
    v33 = 1;
  }

  v34 = v58;
  *&v19[v16[10]] = v33;
  v19[v16[13]] = v56;
  sub_24FEC215C(v19, v34, type metadata accessor for DocumentOutlineItemView);
  result = sub_24FEDD754();
  v36 = result;
  v37 = v59;
  if (!v57)
  {
    v40 = 1;
    goto LABEL_13;
  }

  v38 = v57 - 1;
  if (__OFSUB__(v57, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v38 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v38 < *(v54 + 16))
  {
    v39 = v52;
    sub_24FE58B14(v54 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v38, v52, &qword_27F3A7320, &qword_24FEE7F80);
    sub_24FEC215C(v39 + *(v53 + 48), v15, type metadata accessor for DocumentOutlineView.Content);
    v40 = 0;
LABEL_13:
    (*(*(v22 - 1) + 56))(v15, v40, 1, v22);
    sub_24FEC21C4(v37, v15);
    sub_24FE58B7C(v15, &qword_27F3A7328, &unk_24FEE7F88);
    sub_24FEDD014();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = v55;
    sub_24FEC215C(v34, v55, type metadata accessor for DocumentOutlineItemView);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A72C8, &qword_24FEE7E00);
    v50 = v49 + *(result + 36);
    *v50 = v36;
    *(v50 + 8) = v42;
    *(v50 + 16) = v44;
    *(v50 + 24) = v46;
    *(v50 + 32) = v48;
    *(v50 + 40) = 0;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_24FEC1030@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = sub_24FEC0908(v5, v5, v6, *v1, v4);
  *a1 = sub_24FEDD504();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A72B8, &qword_24FEE7DD0) + 44);
  sub_24FEC1800(v5);
  v10 = v9;
  swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v3;
  *(v11 + 32) = v4;
  *(v11 + 40) = v5;
  *(v11 + 48) = v6;
  *(v11 + 56) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_24FEC2C04;
  *(v12 + 24) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A72C0, &qword_24FEE7DF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A72C8, &qword_24FEE7E00);
  sub_24FE58928(&qword_27F3A72D0, &qword_27F3A72C0, &qword_24FEE7DF8);
  sub_24FEC1B50();
  return sub_24FEDDE94();
}

unint64_t sub_24FEC11F8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_24FEDE8F4();

  return sub_24FEC123C(a1, v4);
}

unint64_t sub_24FEC123C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_24FEC12A8(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7340, &qword_24FEE7FF8);
  v11 = sub_24FEDE6B4();
  v12 = v11;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = v11 + 64;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_10:
      v22 = v19 | (v18 << 6);
      v23 = *(*(a1 + 48) + 8 * v22);
      v24 = sub_24FEC2754(*(*(a1 + 56) + 8 * v22));
      *(v17 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(v12[6] + 8 * v22) = v23;
      *(v12[7] + 8 * v22) = v24;
      v25 = v12[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v12[2] = v27;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v20 = v18;
    while (1)
    {
      v18 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        return;
      }

      v21 = *(a1 + 64 + 8 * v18);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24FEC1450(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7338, &qword_24FEE7FF0);
  result = sub_24FEDE6C4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_24FEDE8F4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_24FEC16B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7338, &qword_24FEE7FF0);
  v2 = *v0;
  v3 = sub_24FEDE6B4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_24FEC1800(uint64_t a1)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7320, &qword_24FEE7F80);
  v2 = *(v43 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v43);
  v5 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = *(v2 + 80);
    v40 = v11;
    v41 = (v11 + 32) & ~v11;
    v12 = MEMORY[0x277D84F90] + v41;
    v13 = 0;
    v14 = 0;
    v15 = *(type metadata accessor for DocumentOutlineView.Content() - 8);
    v16 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v42 = *(v15 + 72);
    v17 = v10;
    v38 = v9;
    v39 = v2;
    while (1)
    {
      v19 = *(v43 + 48);
      *v5 = v13;
      sub_24FEC2648(v16, v5 + v19);
      sub_24FEC26AC(v5, v8);
      if (v14)
      {
        v10 = v17;
        v18 = __OFSUB__(v14--, 1);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v20 = v17[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v21 = v8;
        v22 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7330, &qword_24FEE7FE8);
        v24 = *(v2 + 72);
        v25 = v41;
        v10 = swift_allocObject();
        v26 = _swift_stdlib_malloc_size(v10);
        if (!v24)
        {
          goto LABEL_34;
        }

        v27 = v26 - v25;
        if (v26 - v25 == 0x8000000000000000 && v24 == -1)
        {
          goto LABEL_35;
        }

        v29 = v27 / v24;
        v10[2] = v23;
        v10[3] = 2 * (v27 / v24);
        v30 = v10 + v25;
        v31 = v17[3] >> 1;
        v32 = v31 * v24;
        if (v17[2])
        {
          if (v10 < v17 || v30 >= v17 + v41 + v32)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v10 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v12 = &v30[v32];
        v34 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v8 = v21;
        v9 = v38;
        v2 = v39;
        v18 = __OFSUB__(v34, 1);
        v14 = v34 - 1;
        if (v18)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v13;
      sub_24FEC26AC(v8, v12);
      v12 += *(v2 + 72);
      v16 += v42;
      v17 = v10;
      if (v9 == v13)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = 0;
LABEL_29:
  v35 = v10[3];
  if (v35 >= 2)
  {
    v36 = v35 >> 1;
    v18 = __OFSUB__(v36, v14);
    v37 = v36 - v14;
    if (v18)
    {
      goto LABEL_36;
    }

    v10[2] = v37;
  }
}

uint64_t sub_24FEC1B14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_24FEC1B50()
{
  result = qword_27F3A72D8;
  if (!qword_27F3A72D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A72C8, &qword_24FEE7E00);
    sub_24FEC1CAC(&qword_27F3A72E0, type metadata accessor for DocumentOutlineItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A72D8);
  }

  return result;
}

unint64_t sub_24FEC1C10()
{
  result = qword_27F3A72E8;
  if (!qword_27F3A72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A72E8);
  }

  return result;
}

uint64_t sub_24FEC1CAC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24FEC1D24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24FEC1D6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24FEC1DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24FEC1EB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDCA64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for DocumentOutlineView.Content()
{
  result = qword_27F3A72F8;
  if (!qword_27F3A72F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FEC1FB8()
{
  result = sub_24FEDCA64();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DocumentViewModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24FEC20DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  return sub_24FEC0BB0(a1, a2, *(v3 + 16), *(v3 + 48), *(v3 + 56), a3);
}

uint64_t sub_24FEC20F4(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7320, &qword_24FEE7F80);
  return v4(v5, &a1[*(v6 + 48)]);
}

uint64_t sub_24FEC215C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FEC21C4(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = type metadata accessor for DocumentBlockQuoteElement();
  v3 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DocumentCodeBlockElement();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7328, &unk_24FEE7F88);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_24FE58B14(a2, &v24 - v15, &qword_27F3A7328, &unk_24FEE7F88);
  v17 = type metadata accessor for DocumentOutlineView.Content();
  v18 = *(*(v17 - 8) + 48);
  if (v18(v16, 1, v17) == 1)
  {
    sub_24FE58B7C(v16, &qword_27F3A7328, &unk_24FEE7F88);
LABEL_8:
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    return sub_24FE58B7C(&v28, &qword_27F3A5DD8, &unk_24FEE42C0);
  }

  v25 = a2;
  v19 = *&v16[*(v17 + 20)];

  sub_24FEC25E8(v16, type metadata accessor for DocumentOutlineView.Content);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v20 = *(*&v31[0] + 16);
  if (!v20)
  {

    goto LABEL_8;
  }

  sub_24FE72D1C(*&v31[0] + 40 * v20 - 8, &v28);

  if (!*(&v29 + 1))
  {
    return sub_24FE58B7C(&v28, &qword_27F3A5DD8, &unk_24FEE42C0);
  }

  sub_24FE71ADC(&v28, v31);
  sub_24FE71ADC(v31, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
  if (swift_dynamicCast())
  {
    sub_24FEC25E8(v9, type metadata accessor for DocumentCodeBlockElement);
    return __swift_destroy_boxed_opaque_existential_1(&v28);
  }

  else
  {
    if (swift_dynamicCast())
    {
      sub_24FEC25E8(v5, type metadata accessor for DocumentBlockQuoteElement);
    }

    else
    {
      v22 = *(v26 + *(v17 + 28));
      sub_24FE58B14(v25, v13, &qword_27F3A7328, &unk_24FEE7F88);
      if (v18(v13, 1, v17) == 1)
      {
        sub_24FE58B7C(v13, &qword_27F3A7328, &unk_24FEE7F88);
      }

      else
      {
        v23 = *&v13[*(v17 + 28)];
        sub_24FEC25E8(v13, type metadata accessor for DocumentOutlineView.Content);
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(&v28);
  }
}

uint64_t sub_24FEC25E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24FEC2648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentOutlineView.Content();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FEC26AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7320, &qword_24FEE7F80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FEC271C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

double sub_24FEC2754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CD0, &unk_24FEE8000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CD8, "ܿ");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v34 - v7;
  v8 = sub_24FEDD924();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24FEDD4A4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_24FEDD944();
  v37 = *(v13 - 8);
  v38 = v13;
  v14 = *(v37 + 64);
  MEMORY[0x28223BE20](v13);
  v34 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDD934();
  sub_24FEDD494();
  sub_24FEDD484();
  v42[0] = a1;
  sub_24FEDD454();
  sub_24FEDD484();
  sub_24FEDD4C4();
  v16 = sub_24FEDD9D4();
  v18 = v17;
  v20 = v19;
  type metadata accessor for MarkdownFont();
  swift_initStaticObject();
  sub_24FE82000(v42);
  v47 = v42[0];
  sub_24FE8A8D0(&v47);
  v46 = v42[2];
  sub_24FE8A8D0(&v46);
  v45 = v42[3];
  sub_24FE8A8D0(&v45);
  v44 = v42[4];
  sub_24FE8A8D0(&v44);
  v43 = v42[5];
  sub_24FE8A8D0(&v43);
  sub_24FEDD7D4();

  v21 = sub_24FEDD994();
  v23 = v22;
  v25 = v24;

  sub_24FE56B94(v16, v18, v20 & 1);

  v26 = sub_24FEDD8F4();
  (*(*(v26 - 8) + 56))(v35, 1, 1, v26);
  v27 = sub_24FEDD9A4();
  (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
  v28 = v36;
  sub_24FEDD914();
  v29 = v28;
  v30 = v34;
  sub_24FEDD904();
  v32 = v31;
  sub_24FE56B94(v21, v23, v25 & 1);

  (*(v40 + 8))(v29, v41);
  (*(v37 + 8))(v30, v38);
  return v32;
}

uint64_t DocumentElementParagraphParser.parseElement(attributedString:run:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v53 = a2;
  v2 = sub_24FEDC774();
  v52 = *(v2 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24FEDC884();
  v51 = *(v57 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v57);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6140, &qword_24FEE79D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v46 - v14;
  v16 = sub_24FEDC854();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v48 = &v46 - v22;
  sub_24FE8B614();
  sub_24FEDC6D4();
  v23 = sub_24FEDC894();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v11, 1, v23) == 1)
  {
    sub_24FE58B7C(v11, &qword_27F3A6138, &unk_24FEE4A10);
    (*(v17 + 56))(v15, 1, 1, v16);
    v25 = v53;
LABEL_11:
    sub_24FE58B7C(v15, &qword_27F3A6140, &qword_24FEE79D0);
    v38 = type metadata accessor for DocumentParagraphElement();
    return (*(*(v38 - 8) + 56))(v25, 1, 1, v38);
  }

  v46 = v15;
  v47 = v2;
  v26 = sub_24FEDC864();
  result = (*(v24 + 8))(v11, v23);
  v28 = v16;
  v56 = *(v26 + 16);
  if (v56)
  {
    v29 = 0;
    v55 = v17 + 16;
    v30 = (v51 + 88);
    v54 = *MEMORY[0x277CC8D50];
    v31 = (v51 + 8);
    while (v29 < *(v26 + 16))
    {
      (*(v17 + 16))(v20, v26 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v29, v28);
      sub_24FEDC834();
      v32 = v57;
      v33 = (*v30)(v7, v57);
      if (v33 == v54)
      {

        v15 = v46;
        (*(v17 + 32))(v46, v20, v28);
        v34 = 0;
        goto LABEL_10;
      }

      ++v29;
      (*v31)(v7, v32);
      result = (*(v17 + 8))(v20, v28);
      if (v56 == v29)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v34 = 1;
    v15 = v46;
LABEL_10:
    (*(v17 + 56))(v15, v34, 1, v28);
    v35 = (*(v17 + 48))(v15, 1, v28);
    v36 = v52;
    v25 = v53;
    v37 = v47;
    if (v35 == 1)
    {
      goto LABEL_11;
    }

    v39 = v48;
    (*(v17 + 32))(v48, v15, v28);
    v40 = v28;
    v41 = sub_24FEDC844();
    v42 = v49;
    v43 = sub_24FED5384(v41);
    v44 = v50;
    sub_24FEC3228(v42, v43, v50);

    _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
    (*(v17 + 8))(v39, v40);
    v45 = type metadata accessor for DocumentParagraphElement();
    (*(v36 + 32))(v25 + *(v45 + 20), v44, v37);
    return (*(*(v45 - 8) + 56))(v25, 0, 1, v45);
  }

  return result;
}

uint64_t sub_24FEC3228@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a1;
  v61 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6130, &unk_24FEE4A00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v59 - v6;
  v72 = sub_24FEDC5A4();
  v7 = *(v72 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24FEDC8E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v13 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v59 - v14;
  v15 = sub_24FEDC774();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v59 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v60 = &v59 - v20;
  MEMORY[0x28223BE20](v21);
  v62 = &v59 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - v24;
  MEMORY[0x28223BE20](v26);
  v63 = &v59 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v59 - v29;
  v31 = *(a2 + 16);
  v75 = v16;
  if (v31)
  {
    v32 = *(sub_24FEDC6C4() - 8);
    v33 = a2 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v67 = *(v32 + 72);
    v76 = (v16 + 32);
    v77 = (v16 + 8);
    v65 = (v16 + 16);
    v66 = (v7 + 8);
    v34 = MEMORY[0x277D84F90];
    v64 = v25;
    do
    {
      v35 = v68;
      sub_24FEDC6B4();
      sub_24FE58928(&qword_27F3A6168, &qword_27F3A6160, &unk_24FEE4A80);
      sub_24FEDC7A4();
      sub_24FE58B7C(v35, &qword_27F3A6160, &unk_24FEE4A80);
      sub_24FEDC7C4();
      v36 = v71;
      sub_24FEDC574();
      sub_24FEAE034(v73);
      (*v66)(v36, v72);
      v37 = sub_24FEDE224();
      sub_24FEC3978(11051, 0xE200000000000000, v37, v38);
      v40 = v39;

      if (*(v40 + 16))
      {
        v41 = v63;
        sub_24FEC3C48(v30, v40, v63);

        (*v77)(v30, v15);
        (*v76)(v30, v41, v15);
      }

      else
      {
      }

      v42 = v64;
      (*v65)(v64, v30, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_24FEBB2C0(0, v34[2] + 1, 1, v34);
      }

      v45 = v34[2];
      v44 = v34[3];
      if (v45 >= v44 >> 1)
      {
        v34 = sub_24FEBB2C0(v44 > 1, v45 + 1, 1, v34);
      }

      (*(v16 + 8))(v30, v15);
      v34[2] = v45 + 1;
      (*(v16 + 32))(v34 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v45, v42, v15);
      v33 += v67;
      --v31;
    }

    while (v31);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v46 = v62;
  sub_24FEDC764();
  v47 = *(v16 + 16);
  v48 = v60;
  (v47)(v60, v46, v15);
  v49 = v34[2];
  if (v49)
  {
    v50 = v34 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v51 = *(v16 + 72);
    v76 = v47;
    v77 = v51;
    v52 = (v16 + 8);
    v53 = (v16 + 32);
    v73 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74 = v34;
    v54 = v59;
    v55 = v63;
    do
    {
      (v76)(v54, v50, v15);
      sub_24FEDC614();
      v56 = *v52;
      (*v52)(v54, v15);
      v56(v48, v15);
      (*v53)(v48, v55, v15);
      v50 = v77 + v50;
      --v49;
    }

    while (v49);
    v57 = v75;
  }

  else
  {
    v57 = v16;
    v56 = *(v16 + 8);
  }

  v56(v62, v15);
  (*(v57 + 32))(v61, v48, v15);
}

void sub_24FEC3978(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v36 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7380, &unk_24FEE8080);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  v11 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v12 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v12 = 11;
  }

  v34 = v12 | (v11 << 16);
  v35 = 4 * v11;
  v13 = MEMORY[0x277D84F90];
  v14 = *(MEMORY[0x277D84F90] + 16);
  v15 = MEMORY[0x277D84F90];
  v32 = a2;
  v33 = a3;
  while (1)
  {
    v39 = a3;
    v40 = a4;
    v37 = v36;
    v38 = a2;
    v16 = v14 ? *&v15[16 * v14 + 24] : 15;
    if (v35 < v16 >> 14)
    {
      break;
    }

    v17 = sub_24FEDCA84();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    sub_24FEAD080();
    v18 = sub_24FEDE574();
    v20 = v19;
    v22 = v21;
    sub_24FE58B7C(v10, &qword_27F3A7380, &unk_24FEE8080);
    if (v22)
    {

      return;
    }

    v23 = sub_24FEDE294();
    v24 = sub_24FEDE264();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_24FEBB194(0, *(v13 + 2) + 1, 1, v13);
    }

    v26 = *(v13 + 2);
    v25 = *(v13 + 3);
    if (v26 >= v25 >> 1)
    {
      v13 = sub_24FEBB194((v25 > 1), v26 + 1, 1, v13);
    }

    *(v13 + 2) = v26 + 1;
    v27 = &v13[16 * v26];
    *(v27 + 4) = v23;
    *(v27 + 5) = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_24FEBB090(0, *(v15 + 2) + 1, 1, v15);
    }

    a3 = v33;
    v29 = *(v15 + 2);
    v28 = *(v15 + 3);
    v14 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v15 = sub_24FEBB090((v28 > 1), v29 + 1, 1, v15);
    }

    *(v15 + 2) = v14;
    v30 = &v15[16 * v29];
    *(v30 + 4) = v18;
    *(v30 + 5) = v20;
    a2 = v32;
  }

  __break(1u);
}

uint64_t sub_24FEC3C48@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a3;
  v106 = sub_24FEDC774();
  v113 = *(v106 - 8);
  v5 = *(v113 + 64);
  MEMORY[0x28223BE20](v106);
  v101 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v99 - v8;
  MEMORY[0x28223BE20](v9);
  v114 = &v99 - v10;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D20, "а");
  v11 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v110 = &v99 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7358, &qword_24FEE91E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v117 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v116 = &v99 - v17;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D00, &unk_24FEE71B0);
  v18 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v126 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v125 = &v99 - v21;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v22 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v123 = &v99 - v23;
  v24 = sub_24FEDC8E4();
  v141 = *(v24 - 1);
  v25 = *(v141 + 64);
  MEMORY[0x28223BE20](v24);
  v100 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v107 = &v99 - v28;
  MEMORY[0x28223BE20](v29);
  v145 = &v99 - v30;
  MEMORY[0x28223BE20](v31);
  v122 = &v99 - v32;
  MEMORY[0x28223BE20](v33);
  v146 = &v99 - v34;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7360, &qword_24FEE8078);
  v35 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v144 = &v99 - v36;
  v37 = sub_24FEDC714();
  v38 = *(v37 - 1);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v133 = &v99 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = (&v99 - v42);
  MEMORY[0x28223BE20](v44);
  v46 = &v99 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v99 - v48;
  v109 = sub_24FEDC5A4();
  v108 = *(v109 - 8);
  v50 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v52 = &v99 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = a1;
  sub_24FEDC574();
  v53 = v52;
  sub_24FEDC584();
  v55 = *(a2 + 2);
  if (!v55)
  {
    goto LABEL_24;
  }

  v134 = *(a2 + 5);
  v115 = v38;
  v56 = a2;
  v57 = *(v38 + 16);
  v38 += 16;
  a2 = v57;
  v139 = v46;
  (v57)(v46, v49, v37);
  v143 = v56;
  v59 = v56 + 32;
  v58 = *(v56 + 4);
  v137 = v52;
  v138 = v49;
  sub_24FEDC594();
  v52 = sub_24FEC4C08(&qword_27F3A6D30, MEMORY[0x277CC8C20]);
  v53 = v37;
  if ((sub_24FEDE194() & 1) == 0)
  {
    goto LABEL_25;
  }

  v104 = v59;
  v60 = v144;
  v135 = v43;
  v132 = v38;
  (a2)(v144, v43, v37);
  sub_24FE58928(&qword_27F3A7368, &qword_27F3A7360, &qword_24FEE8078);
  v49 = v146;
  sub_24FEDC7A4();
  sub_24FE58B7C(v60, &qword_27F3A7360, &qword_24FEE8078);
  v43 = sub_24FEBB298(0, 1, 1, MEMORY[0x277D84F90]);
  v38 = v43[2];
  v54 = v43[3];
  v53 = v38 + 1;
  if (v38 >= v54 >> 1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v61 = v115;
    v102 = v52;
    v136 = v37;
    v43[2] = v53;
    v53 = v141;
    v62 = *(v141 + 32);
    v128 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    v129 = v62;
    v147 = *(v141 + 72);
    v130 = v141 + 32;
    v131 = a2;
    v62(v43 + v128 + v147 * v38, v49, v24);
    v103 = v55 - 1;
    if (v55 == 1)
    {
      break;
    }

    v49 = (v61 + 8);
    v37 = (v61 + 32);
    v119 = (v53 + 16);
    v118 = (v53 + 8);
    v63 = (v143 + 48);
    v52 = 1;
    --v55;
    v121 = v24;
    v120 = (v61 + 32);
    while (1)
    {
      v54 = *(v63 - 2);
      if (__OFADD__(v54, v134))
      {
        break;
      }

      v142 = v55;
      LODWORD(v143) = v52;
      v146 = v43;
      a2 = v133;
      v38 = v63;
      sub_24FEDC594();
      v24 = *v49;
      v52 = v49;
      v49 = v139;
      v43 = v136;
      (v24)(v139, v136);
      v64 = *v37;
      (*v37)(v49, a2, v43);
      v144 = v38;
      v65 = *v38;
      sub_24FEDC594();
      v55 = v135;
      (v24)(v135, v43);
      v64(v55, a2, v43);
      sub_24FEC4C08(&qword_27F3A6D18, MEMORY[0x277CC8C20]);
      v53 = v43;
      if ((sub_24FEDE184() & 1) == 0)
      {
        goto LABEL_23;
      }

      v66 = v125;
      v67 = v131;
      v131(v125, v49, v43);
      v68 = v127;
      v67(v66 + *(v127 + 48), v55, v43);
      v69 = v126;
      sub_24FE58B14(v66, v126, &qword_27F3A6D00, &unk_24FEE71B0);
      v70 = *(v68 + 48);
      v38 = v123;
      v64(v123, v69, v43);
      (v24)(v69 + v70, v43);
      v71 = v66;
      a2 = v122;
      sub_24FEB0220(v71, v69);
      v64(v38 + *(v124 + 36), (v69 + *(v68 + 48)), v43);
      (v24)(v69, v43);
      sub_24FE58928(&qword_27F3A6168, &qword_27F3A6160, &unk_24FEE4A80);
      sub_24FEDC7A4();
      sub_24FE58B7C(v38, &qword_27F3A6160, &unk_24FEE4A80);
      v49 = v52;
      v72 = v143;
      if (v143)
      {
        v73 = v116;
        sub_24FEDD9B4();
        v74 = sub_24FEDD9C4();
        (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
        v38 = &qword_27F3A7358;
        sub_24FE58B14(v73, v117, &qword_27F3A7358, &qword_24FEE91E0);
        sub_24FEC4C50();
        sub_24FEDC8F4();
        sub_24FE58B7C(v73, &qword_27F3A7358, &qword_24FEE91E0);
      }

      v24 = v121;
      (*v119)(v145, a2, v121);
      v43 = v146;
      v76 = *(v146 + 2);
      v75 = *(v146 + 3);
      v53 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        v43 = sub_24FEBB298(v75 > 1, v76 + 1, 1, v146);
      }

      v77 = v142;
      v52 = v72 ^ 1u;
      (*v118)(a2, v24);
      v43[2] = v53;
      v129(v43 + v128 + v76 * v147, v145, v24);
      v63 = v144 + 16;
      v55 = v77 - 1;
      v37 = v120;
      if (!v55)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v43 = sub_24FEBB298(v54 > 1, v53, 1, v43);
  }

LABEL_13:
  v78 = *&v104[16 * v103];
  if (__OFADD__(v78, v134))
  {
    __break(1u);
  }

  else
  {
    v79 = v133;
    sub_24FEDC594();
    v80 = v115;
    v81 = v115 + 8;
    v52 = *(v115 + 8);
    v82 = v139;
    v49 = v136;
    (v52)(v139, v136);
    v83 = *(v80 + 32);
    v55 = v80 + 32;
    v83(v82, v79, v49);
    v53 = v49;
    if (sub_24FEDE194())
    {
      v142 = v52;
      v143 = v81;
      v84 = v110;
      v131(v110, v82, v49);
      sub_24FE58928(&qword_27F3A7370, &qword_27F3A6D20, "а");
      v52 = v107;
      sub_24FEDC7A4();
      sub_24FE58B7C(v84, &qword_27F3A6D20, "а");
      v55 = v43[2];
      v78 = v43[3];
      v53 = v55 + 1;
      if (v55 < v78 >> 1)
      {
        goto LABEL_16;
      }

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_29:
  v43 = sub_24FEBB298(v78 > 1, v53, 1, v43);
LABEL_16:
  v85 = v106;
  v86 = v113;
  v87 = v105;
  v88 = v135;
  v43[2] = v53;
  v89 = v43 + v128;
  v129(v43 + v128 + v55 * v147, v52, v24);
  v90 = v114;
  sub_24FEDC764();
  (*(v86 + 16))(v87, v90, v85);
  v91 = v43[2];
  if (v91)
  {
    v145 = *(v141 + 16);
    v146 = v43;
    v141 += 16;
    v144 = (v141 - 8);
    v92 = (v86 + 8);
    v93 = (v86 + 32);
    v140 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v94 = v101;
    v95 = v100;
    do
    {
      (v145)(v95, v89, v24);
      sub_24FEC4C08(&unk_27F3A6150, MEMORY[0x277CC8D88]);
      sub_24FEDC624();
      (*v144)(v95, v24);
      v96 = *v92;
      (*v92)(v87, v85);
      (*v93)(v87, v94, v85);
      v89 += v147;
      --v91;
    }

    while (v91);
    v86 = v113;
    v88 = v135;
    v49 = v136;
  }

  else
  {
    v96 = *(v86 + 8);
  }

  v96(v114, v85);
  v97 = v142;
  v142(v88, v49);
  v97(v139, v49);
  v97(v138, v49);
  (*(v108 + 8))(v137, v109);
  (*(v86 + 32))(v112, v87, v85);
}

uint64_t sub_24FEC4C08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24FEC4C50()
{
  result = qword_27F3A7378;
  if (!qword_27F3A7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7378);
  }

  return result;
}

uint64_t DocumentParagraphElement.init(id:text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24FEDCA64();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for DocumentParagraphElement() + 20);
  v8 = sub_24FEDC774();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t type metadata accessor for DocumentParagraphElement()
{
  result = qword_27F3A73A8;
  if (!qword_27F3A73A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentParagraphElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentParagraphElement.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentParagraphElement() + 20);
  v4 = sub_24FEDC774();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DocumentParagraphElement.makeView(textWrapOffset:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *(type metadata accessor for DocumentParagraphElement() + 20);
  v8 = sub_24FEDC774();
  (*(*(v8 - 8) + 16))(a1, v3 + v7, v8);
  v9 = type metadata accessor for DocumentParagraphView();
  v10 = (a1 + v9[5]);
  *v10 = a2;
  v10[1] = a3;
  v11 = a1 + v9[6];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = v9[7];
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DocumentParagraphElement.makeView()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentParagraphElement() + 20);
  v4 = sub_24FEDC774();
  (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
  v5 = type metadata accessor for DocumentParagraphView();
  v6 = (a1 + v5[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1 + v5[6];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = v5[7];
  *(a1 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DocumentParagraphElement.append(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DocumentParagraphElement();
  a1[3] = v2;
  a1[4] = sub_24FEC54D0(&qword_27F3A70D0, type metadata accessor for DocumentParagraphElement);
  __swift_allocate_boxed_opaque_existential_1(a1);
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  v3 = *(v2 + 20);
  return sub_24FEDC614();
}

uint64_t static DocumentParagraphElement.__derived_struct_equals(_:_:)()
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for DocumentParagraphElement() + 20);

  return sub_24FEDC684();
}

uint64_t sub_24FEC5188(uint64_t a1)
{
  result = sub_24FEC54D0(&unk_27F3A7348, type metadata accessor for DocumentParagraphElement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24FEC5234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24FEDC774();
  (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
  v6 = type metadata accessor for DocumentParagraphView();
  v7 = (a2 + v6[5]);
  *v7 = 0;
  v7[1] = 0;
  v8 = a2 + v6[6];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = v6[7];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24FEC5314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *(a1 + 20);
  v9 = sub_24FEDC774();
  (*(*(v9 - 8) + 16))(a2, v4 + v8, v9);
  v10 = type metadata accessor for DocumentParagraphView();
  v11 = (a2 + v10[5]);
  *v11 = a3;
  v11[1] = a4;
  v12 = a2 + v10[6];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v10[7];
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24FEC5404(uint64_t a1)
{
  *(a1 + 8) = sub_24FEC54D0(&qword_27F3A7390, type metadata accessor for DocumentParagraphElement);
  result = sub_24FEC54D0(&unk_27F3A7398, type metadata accessor for DocumentParagraphElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FEC54D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FEC552C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24FEDC774();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24FEC5630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24FEDCA64();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24FEDC774();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24FEC572C(uint64_t a1)
{
  v2 = sub_24FEDC774();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_24FEDD9E4();
}

uint64_t DocumentParagraphView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A73C0, &unk_24FEE81E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  sub_24FEC59D4(v1, &v19);
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6118, &qword_24FEE49F0);
  v11 = sub_24FE8A700();
  sub_24FEDDB24();
  sub_24FE56B94(v7, v8, v9);

  v12 = (v17 + *(type metadata accessor for DocumentParagraphView() + 20));
  v13 = *v12;
  v14 = v12[1];
  v19 = v10;
  v20 = v11;
  swift_getOpaqueTypeConformance2();
  v15 = v18;
  sub_24FEDDB84();
  (*(v3 + 8))(v6, v2);
  LODWORD(v11) = sub_24FEDD634();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A73C8, &qword_24FEE81F0);
  *(v15 + *(result + 36)) = v11;
  return result;
}

uint64_t sub_24FEC59D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v3 = sub_24FEDC774();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6130, &unk_24FEE4A00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v54 - v9;
  v59 = sub_24FEDC5A4();
  v58 = *(v59 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24FEDD054();
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  MEMORY[0x28223BE20](v12);
  v61 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24FEDD3E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DocumentParagraphView();
  v21 = a1 + *(v20 + 24);
  v22 = *v21;
  if (*(v21 + 8) == 1)
  {
    v23 = *v21;
  }

  else
  {

    sub_24FEDE4D4();
    v56 = v5;
    v24 = sub_24FEDD714();
    v55 = v15;
    v25 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = v24;
    v5 = v56;
    sub_24FEDCF14();

    v6 = v25;
    sub_24FEDD3D4();
    swift_getAtKeyPath();
    sub_24FE8A8C4(v22, 0);
    (*(v16 + 8))(v19, v55);
    v23 = v65[0];
  }

  v27 = a1 + *(v20 + 28);
  v28 = v61;
  sub_24FE9A750(v61);
  type metadata accessor for MarkdownFont();
  swift_initStaticObject();
  sub_24FE82000(v65);
  v29 = v65[1];
  v70 = v65[0];
  sub_24FE8A8D0(&v70);
  v69 = v65[2];
  sub_24FE8A8D0(&v69);
  v68 = v65[3];
  sub_24FE8A8D0(&v68);
  v67 = v65[4];
  sub_24FE8A8D0(&v67);
  v66 = v65[5];
  sub_24FE8A8D0(&v66);
  v30 = v57;
  sub_24FEDC574();
  sub_24FEAE034(v60);
  (*(v58 + 8))(v30, v59);
  v31 = sub_24FEDE224();
  v33 = _s16MarkdownDocument18LaTeXMathExtractorO7extract4from15extractingTypesSayAC11TextSegmentOGSS_AC14ExtractionTypeVtFZ_0(v31, v32, 3);

  (*(v4 + 16))(v6, a1, v3);
  v34 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v35 = (v5 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v4 + 32))(v36 + v34, v6, v3);
  v37 = (v36 + v35);
  *v37 = sub_24FEC572C;
  v37[1] = 0;
  sub_24FEDD4B4();
  v53 = 256;
  v38 = sub_24FEDD9D4();
  MEMORY[0x28223BE20](v38);
  *(&v54 - 6) = v23;
  *(&v54 - 5) = v28;
  *(&v54 - 4) = v29;
  *(&v54 - 3) = sub_24FE8A9C4;
  v52 = v36;
  v43 = sub_24FEAFE5C(v40, v41, v39 & 1, v42, sub_24FE8AA8C, (&v54 - 8), v33);
  v45 = v44;
  v47 = v46;
  v49 = v48;

  result = (*(v62 + 8))(v28, v63);
  v51 = v64;
  *v64 = v43;
  v51[1] = v45;
  *(v51 + 16) = v47 & 1;
  v51[3] = v49;
  return result;
}

uint64_t type metadata accessor for DocumentParagraphView()
{
  result = qword_27F3A73D8;
  if (!qword_27F3A73D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FEC603C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A73C0, &unk_24FEE81E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - v6;
  sub_24FEC59D4(v2, &v21);
  v8 = v21;
  v9 = v22;
  v10 = v23;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6118, &qword_24FEE49F0);
  v12 = sub_24FE8A700();
  sub_24FEDDB24();
  sub_24FE56B94(v8, v9, v10);

  v13 = (v18[1] + *(v19 + 20));
  v14 = *v13;
  v15 = v13[1];
  v21 = v11;
  v22 = v12;
  swift_getOpaqueTypeConformance2();
  v16 = v20;
  sub_24FEDDB84();
  (*(v4 + 8))(v7, v3);
  LODWORD(v12) = sub_24FEDD634();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A73C8, &qword_24FEE81F0);
  *(v16 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_24FEC6230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDC774();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24FEC6370(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDC774();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24FEC64A0()
{
  sub_24FEDC774();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_24FE8A2F0();
      if (v2 <= 0x3F)
      {
        sub_24FE8A340();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24FEC6558()
{
  result = qword_27F3A73E8;
  if (!qword_27F3A73E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F3A73C8, &qword_24FEE81F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A73C0, &unk_24FEE81E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6118, &qword_24FEE49F0);
    sub_24FE8A700();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24FEC6664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A73E8);
  }

  return result;
}

unint64_t sub_24FEC6664()
{
  result = qword_27F3A6698;
  if (!qword_27F3A6698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A66A0, &unk_24FEE7C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6698);
  }

  return result;
}

uint64_t sub_24FEC66C8()
{
  v1 = sub_24FEDC774();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t static CapsuleAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *static CapsuleAttribute.name;

  return v0;
}

uint64_t static CapsuleAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static CapsuleAttribute.name = a1;
  *&static CapsuleAttribute.name[8] = a2;
}

unint64_t sub_24FEC6880()
{
  result = qword_27F3A7400;
  if (!qword_27F3A7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7400);
  }

  return result;
}

uint64_t sub_24FEC6934()
{
  swift_beginAccess();
  v0 = *static CapsuleAttribute.name;

  return v0;
}

unint64_t sub_24FEC6998()
{
  result = qword_27F3A7408;
  if (!qword_27F3A7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7408);
  }

  return result;
}

uint64_t DocumentCapsuleElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentCapsuleElement.imageName.getter()
{
  v1 = (v0 + *(type metadata accessor for DocumentCapsuleElement() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for DocumentCapsuleElement()
{
  result = qword_27F3A7438;
  if (!qword_27F3A7438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentCapsuleElement.title.getter()
{
  v1 = (v0 + *(type metadata accessor for DocumentCapsuleElement() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DocumentCapsuleElement.init(id:imageName:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_24FEDCA64();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for DocumentCapsuleElement();
  v14 = (a6 + *(result + 20));
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + *(result + 24));
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t DocumentCapsuleElement.makeView()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentCapsuleElement();
  v4 = *(v3 + 24);
  v5 = (v1 + *(v3 + 20));
  v7 = *v5;
  v6 = v5[1];
  v9 = *(v1 + v4);
  v8 = *(v1 + v4 + 8);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v10 = type metadata accessor for DocumentCapsuleView();
  v11 = v10[5];
  sub_24FEC6E68();

  result = sub_24FEDD0B4();
  v13 = (a1 + v10[6]);
  *v13 = v7;
  v13[1] = v6;
  v14 = (a1 + v10[7]);
  *v14 = v9;
  v14[1] = v8;
  return result;
}

uint64_t sub_24FEC6C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1 + 20));
  v6 = *v4;
  v5 = v4[1];
  v7 = (v2 + *(a1 + 24));
  v9 = *v7;
  v8 = v7[1];
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v10 = type metadata accessor for DocumentCapsuleView();
  v11 = v10[5];
  sub_24FEC6E68();

  result = sub_24FEDD0B4();
  v13 = (a2 + v10[6]);
  *v13 = v6;
  v13[1] = v5;
  v14 = (a2 + v10[7]);
  *v14 = v9;
  v14[1] = v8;
  return result;
}

uint64_t sub_24FEC6D64@<X0>(void *a1@<X8>)
{
  sub_24FEC7300();
  result = sub_24FEDD3F4();
  *a1 = v3;
  return result;
}

uint64_t sub_24FEC6DB4@<X0>(void *a1@<X8>)
{
  sub_24FEC7300();
  result = sub_24FEDD3F4();
  *a1 = v3;
  return result;
}

uint64_t sub_24FEC6E04(uint64_t *a1)
{
  v2 = *a1;
  sub_24FEC7300();

  return sub_24FEDD404();
}

unint64_t sub_24FEC6E68()
{
  result = qword_27F3A7410;
  if (!qword_27F3A7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7410);
  }

  return result;
}

uint64_t _s16MarkdownDocument0B14CapsuleElementV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DocumentCapsuleElement();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_24FEDE844() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  if (v11 == *v13 && v12 == v13[1])
  {
    return 1;
  }

  return sub_24FEDE844();
}

uint64_t sub_24FEC6FCC(uint64_t a1)
{
  *(a1 + 8) = sub_24FEC7098(&qword_27F3A7420, type metadata accessor for DocumentCapsuleElement);
  result = sub_24FEC7098(&unk_27F3A7428, type metadata accessor for DocumentCapsuleElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FEC7098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FEC70F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
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

    return (v10 + 1);
  }
}

uint64_t sub_24FEC71C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDCA64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24FEC7284()
{
  result = sub_24FEDCA64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24FEC7300()
{
  result = qword_27F3A7448;
  if (!qword_27F3A7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7448);
  }

  return result;
}

uint64_t sub_24FEC7354()
{
  v1 = sub_24FEDD3E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_24FEDE4D4();
    v8 = sub_24FEDD714();
    sub_24FEDCF14();

    sub_24FEDD3D4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t EnvironmentValues.labelColor.getter()
{
  sub_24FEC7300();
  sub_24FEDD3F4();
  return v1;
}

uint64_t DocumentCapsuleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7450, &qword_24FEE84C0);
  v2 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v73 = (&v62 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7458, &qword_24FEE84C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v62 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7460, &qword_24FEE84D0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v62 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7468, &qword_24FEE84D8);
  v13 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v69 = &v62 - v16;
  MEMORY[0x28223BE20](v17);
  v70 = &v62 - v18;
  v68 = sub_24FEDD434();
  v96[0] = 0;
  sub_24FEC7B60(v1, &v78);
  v89 = v82;
  v90 = v83;
  v91 = v84;
  v85 = v78;
  v86 = v79;
  v87 = v80;
  v88 = v81;
  v92[0] = v78;
  v92[1] = v79;
  v92[2] = v80;
  v92[3] = v81;
  v92[4] = v82;
  v92[5] = v83;
  v93 = v84;
  sub_24FE58B14(&v85, v76, &qword_27F3A7470, &qword_24FEE84E0);
  sub_24FE58B7C(v92, &qword_27F3A7470, &qword_24FEE84E0);
  *(&v77[3] + 7) = v88;
  *(&v77[4] + 7) = v89;
  *(&v77[5] + 7) = v90;
  *(v77 + 7) = v85;
  *(&v77[1] + 7) = v86;
  *(&v77[6] + 7) = v91;
  *(&v77[2] + 7) = v87;
  v67 = v96[0];
  v64 = sub_24FEDD734();
  sub_24FEDD014();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(v76[0]) = 0;
  v65 = sub_24FEDD7A4();
  sub_24FEDD014();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  LOBYTE(v78) = 0;
  v66 = sub_24FEC7354();
  KeyPath = swift_getKeyPath();
  v35 = [objc_opt_self() quaternarySystemFillColor];
  v36 = sub_24FEDDC94();
  v37 = v7 + *(v4 + 36);
  v38 = *(sub_24FEDD284() + 20);
  v39 = *MEMORY[0x277CE0118];
  v40 = sub_24FEDD4E4();
  (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
  __asm { FMOV            V0.2D, #9.0 }

  *v37 = _Q0;
  *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A68F0, &qword_24FEE6098) + 36)] = 256;
  *v7 = v36;
  v46 = &v12[*(v9 + 44)];
  sub_24FEC80E8();
  sub_24FEDDA54();
  sub_24FE58B7C(v7, &qword_27F3A7458, &qword_24FEE84C8);
  v47 = sub_24FEDDF34();
  v49 = v48;
  v50 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7480, &qword_24FEE8520) + 36)];
  *v50 = v47;
  v50[1] = v49;
  v51 = v77[3];
  *(v12 + 49) = v77[2];
  v52 = v77[0];
  *(v12 + 33) = v77[1];
  *(v12 + 17) = v52;
  *(v12 + 7) = *(&v77[5] + 15);
  v53 = v77[4];
  *(v12 + 97) = v77[5];
  *(v12 + 81) = v53;
  *v12 = v68;
  *(v12 + 1) = 0x4018000000000000;
  v12[16] = v67;
  *(v12 + 65) = v51;
  v12[128] = v64;
  *(v12 + 33) = *(v76 + 3);
  *(v12 + 129) = v76[0];
  *(v12 + 17) = v20;
  *(v12 + 18) = v22;
  *(v12 + 19) = v24;
  *(v12 + 20) = v26;
  v12[168] = 0;
  *(v12 + 169) = *v96;
  *(v12 + 43) = *&v96[3];
  v12[176] = v65;
  *(v12 + 177) = *v95;
  *(v12 + 45) = *&v95[3];
  *(v12 + 23) = v28;
  *(v12 + 24) = v30;
  *(v12 + 25) = v32;
  *(v12 + 26) = v34;
  v12[216] = 0;
  *(v12 + 217) = *v94;
  *(v12 + 55) = *&v94[3];
  v54 = v66;
  *(v12 + 28) = KeyPath;
  *(v12 + 29) = v54;
  sub_24FEDDF44();
  sub_24FEDD294();
  v55 = v69;
  sub_24FE6315C(v12, v69, &qword_27F3A7460, &qword_24FEE84D0);
  v56 = v70;
  v57 = (v55 + *(v71 + 36));
  v58 = v83;
  v57[4] = v82;
  v57[5] = v58;
  v57[6] = v84;
  v59 = v79;
  *v57 = v78;
  v57[1] = v59;
  v60 = v81;
  v57[2] = v80;
  v57[3] = v60;
  sub_24FE6315C(v55, v56, &qword_27F3A7468, &qword_24FEE84D8);
  sub_24FEC81A0(v56, v72);
  sub_24FEC8210();
  *v73 = sub_24FEDDE14();
  swift_storeEnumTagMultiPayload();
  sub_24FEDD5F4();
  return sub_24FEC8550(v56);
}

uint64_t sub_24FEC7B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24FEDDCD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DocumentCapsuleView();
  v10 = (a1 + v9[6]);
  v11 = *v10;
  v12 = v10[1];

  sub_24FEDDCB4();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v13 = sub_24FEDDD04();

  (*(v5 + 8))(v8, v4);
  v14 = v9[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A74E0, qword_24FEE85E0);
  sub_24FEDD0C4();
  sub_24FEDDF34();
  sub_24FEDD0F4();
  LOBYTE(v30) = 1;
  *&v27[3] = *&v27[27];
  *&v27[11] = *&v27[35];
  *&v27[19] = *&v27[43];
  v15 = (a1 + v9[7]);
  v16 = v15[1];
  v30 = *v15;
  v31 = v16;
  sub_24FEAD080();

  v17 = sub_24FEDD9F4();
  v19 = v18;
  v28 = v13;
  *v29 = 1;
  *&v29[2] = *v27;
  *&v29[18] = *&v27[8];
  *&v29[34] = *&v27[16];
  *&v29[48] = *&v27[23];
  LOBYTE(v8) = v20 & 1;
  v26[8] = v20 & 1;
  v21 = *v29;
  v22 = *&v29[32];
  v23 = *&v27[23];
  *(a2 + 32) = *&v29[16];
  *(a2 + 48) = v22;
  *a2 = v13;
  *(a2 + 16) = v21;
  *(a2 + 64) = v23;
  *(a2 + 72) = v17;
  *(a2 + 80) = v18;
  *(a2 + 88) = v20 & 1;
  *(a2 + 96) = v24;
  sub_24FE58B14(&v28, &v30, &qword_27F3A7538, &unk_24FEE8680);
  sub_24FE629DC(v17, v19, v8);

  sub_24FE56B94(v17, v19, v8);

  v30 = v13;
  v31 = 0;
  v32 = 1;
  v33 = *v27;
  v34 = *&v27[8];
  *v35 = *&v27[16];
  *&v35[14] = *&v27[23];
  return sub_24FE58B7C(&v30, &qword_27F3A7538, &unk_24FEE8680);
}

uint64_t View.labelColor(_:)()
{
  swift_getKeyPath();
  sub_24FEDDAD4();
}

uint64_t sub_24FEC7EF8()
{
  result = sub_24FEDDC24();
  qword_27F3B3148 = result;
  return result;
}

uint64_t sub_24FEC7F18@<X0>(void *a1@<X8>)
{
  if (qword_27F3A5B90 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F3B3148;
}

uint64_t sub_24FEC7F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24FEC8A78();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.labelColor.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_24FEC7300();
  sub_24FEDD3F4();
  return sub_24FEC804C;
}

uint64_t sub_24FEC804C(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_24FEDD404();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_24FEDD404();
  }
}

unint64_t sub_24FEC80E8()
{
  result = qword_27F3A7478;
  if (!qword_27F3A7478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7458, &qword_24FEE84C8);
    sub_24FE58928(&qword_27F3A68E8, &qword_27F3A68F0, &qword_24FEE6098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7478);
  }

  return result;
}

uint64_t sub_24FEC81A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7468, &qword_24FEE84D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24FEC8210()
{
  result = qword_27F3A7488;
  if (!qword_27F3A7488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7468, &qword_24FEE84D8);
    sub_24FEC829C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7488);
  }

  return result;
}

unint64_t sub_24FEC829C()
{
  result = qword_27F3A7490;
  if (!qword_27F3A7490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7460, &qword_24FEE84D0);
    sub_24FEC8354();
    sub_24FE58928(&qword_27F3A74D8, &qword_27F3A7480, &qword_24FEE8520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7490);
  }

  return result;
}

unint64_t sub_24FEC8354()
{
  result = qword_27F3A7498;
  if (!qword_27F3A7498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A74A0, &qword_24FEE8528);
    sub_24FEC840C();
    sub_24FE58928(&qword_27F3A6108, &qword_27F3A6110, &qword_24FEE4B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7498);
  }

  return result;
}

unint64_t sub_24FEC840C()
{
  result = qword_27F3A74A8;
  if (!qword_27F3A74A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A74B0, &qword_24FEE8530);
    sub_24FEC8498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A74A8);
  }

  return result;
}

unint64_t sub_24FEC8498()
{
  result = qword_27F3A74B8;
  if (!qword_27F3A74B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A74C0, &qword_24FEE8538);
    sub_24FE58928(&qword_27F3A74C8, &qword_27F3A74D0, &unk_24FEE8540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A74B8);
  }

  return result;
}

uint64_t sub_24FEC8550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7468, &qword_24FEE84D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FEC85F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A74E0, qword_24FEE85E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24FEC86D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A74E0, qword_24FEE85E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for DocumentCapsuleView()
{
  result = qword_27F3A74F0;
  if (!qword_27F3A74F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24FEC87EC()
{
  sub_24FEC8880();
  if (v0 <= 0x3F)
  {
    sub_24FEC88D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24FEC8880()
{
  if (!qword_27F3A7500)
  {
    v0 = sub_24FEDD074();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A7500);
    }
  }
}

void sub_24FEC88D0()
{
  if (!qword_27F3A7508)
  {
    sub_24FEC6E68();
    v0 = sub_24FEDD0D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A7508);
    }
  }
}

unint64_t sub_24FEC8930()
{
  result = qword_27F3A7510;
  if (!qword_27F3A7510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7518, &qword_24FEE8628);
    sub_24FEC8210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7510);
  }

  return result;
}

uint64_t sub_24FEC89BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7520, &qword_24FEE8630);
  sub_24FEDD254();
  sub_24FE58928(&qword_27F3A7528, &qword_27F3A7520, &qword_24FEE8630);
  return swift_getWitnessTable();
}

unint64_t sub_24FEC8A78()
{
  result = qword_27F3A7530;
  if (!qword_27F3A7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7530);
  }

  return result;
}

uint64_t DocumentElementCapsuleParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v35 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6130, &unk_24FEE4A00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v34 = sub_24FEDC5A4();
  v32 = *(v34 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24FEDC8E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = sub_24FEDC774();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEC6880();
  sub_24FEDC6D4();
  v20 = v37;
  if (v37)
  {
    v31 = v36;
    sub_24FEDC6B4();
    sub_24FE8BF90();
    sub_24FEDC7A4();
    sub_24FEC8E64(v14);
    sub_24FEDC7C4();
    sub_24FEDC574();
    sub_24FEAE034(v5);
    (*(v32 + 8))(v8, v34);
    v21 = sub_24FEDE224();
    v23 = v22;
    (*(v16 + 8))(v19, v15);
    v24 = v35;
    _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
    v25 = type metadata accessor for DocumentCapsuleElement();
    v26 = (v24 + *(v25 + 20));
    *v26 = v31;
    v26[1] = v20;
    v27 = (v24 + *(v25 + 24));
    *v27 = v21;
    v27[1] = v23;
    return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  }

  else
  {
    v29 = type metadata accessor for DocumentCapsuleElement();
    return (*(*(v29 - 8) + 56))(v35, 1, 1, v29);
  }
}

uint64_t sub_24FEC8E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FEC8ED8()
{
  result = qword_27F3A7540;
  if (!qword_27F3A7540)
  {
    type metadata accessor for DocumentCapsuleElement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7540);
  }

  return result;
}

void sub_24FEC8F40(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_24FEC8FB8()
{
  v0 = sub_24FEDCF54();
  __swift_allocate_value_buffer(v0, qword_27F3A7550);
  __swift_project_value_buffer(v0, qword_27F3A7550);
  return sub_24FEDCF44();
}

uint64_t sub_24FEC90AC()
{
  v1 = sub_24FEDCA84();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_24FEDE1B4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FEDCFE4();

  if (v7 != 1)
  {
    *(v0 + OBJC_IVAR____TtC16MarkdownDocument4Copy_isCodeBlock);
  }

  sub_24FEDE1A4();
  if (qword_27F3A5BB0 != -1)
  {
    swift_once();
  }

  v5 = qword_27F3B3150;
  sub_24FEDCA74();
  return sub_24FEDE214();
}

id sub_24FEC9370()
{
  v1 = [v0 activityType];
  v2 = qword_27F3A5BA0;
  v3 = v1;
  v4 = v3;
  if (v2 == -1)
  {
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_3:
    v5 = sub_24FEDE1F4();
    v7 = v6;
    if (v5 == sub_24FEDE1F4() && v7 == v8)
    {
    }

    else
    {
      v10 = sub_24FEDE844();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v18 = [objc_opt_self() configurationWithScale_];
    goto LABEL_20;
  }

  swift_once();
  if (v4)
  {
    goto LABEL_3;
  }

LABEL_8:
  if (qword_27F3A5BA8 != -1)
  {
    swift_once();
    if (!v4)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (v4)
  {
LABEL_10:
    v11 = sub_24FEDE1F4();
    v13 = v12;
    if (v11 == sub_24FEDE1F4() && v13 == v14)
    {
    }

    else
    {
      v16 = sub_24FEDE844();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    v18 = [objc_opt_self() configurationWithScale_];
LABEL_20:
    v19 = sub_24FEDE1C4();
    v17 = [objc_opt_self() systemImageNamed:v19 withConfiguration:v18];

    return v17;
  }

  return 0;
}

uint64_t sub_24FEC9880(uint64_t a1)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for ShareSheetMetadata();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v56 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = sub_24FEDCE94();
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  v25 = OBJC_IVAR____TtC16MarkdownDocument8CopyFile_shareSheetMetadata;
  v26 = v2;
  sub_24FE58B14(v2 + OBJC_IVAR____TtC16MarkdownDocument8CopyFile_shareSheetMetadata, v14, &qword_27F3A5F70, &qword_24FEE45C0);
  v29 = *(v4 + 48);
  v27 = v4 + 48;
  v28 = v29;
  v57 = v3;
  if (!v29(v14, 1, v3))
  {
    v50 = v28;
    v51 = v27;
    v30 = v26;
    v31 = v56;
    sub_24FECD3A4(v14, v56);
    sub_24FE58B7C(v14, &qword_27F3A5F70, &qword_24FEE45C0);
    v32 = v55;
    (*(v55 + 16))(v21, v31 + *(v57 + 24), v15);
    sub_24FECD2D8(v31);
    (*(v32 + 32))(v24, v21, v15);
    sub_24FEDCE64();
    sub_24FECD408();
    v33 = sub_24FEDE194();
    v34 = *(v32 + 8);
    v34(v18, v15);
    v35 = v15;
    if (v33)
    {
LABEL_15:
      v34(v24, v35);
      return 0;
    }

    v36 = v53;
    sub_24FE58B14(v30 + v25, v53, &qword_27F3A5F70, &qword_24FEE45C0);
    if (v50(v36, 1, v57))
    {
      result = sub_24FE58B7C(v36, &qword_27F3A5F70, &qword_24FEE45C0);
LABEL_6:
      if (*(v54 + 16))
      {
        sub_24FE72CC0(v54 + 32, v59);
        sub_24FE62F4C(0, &qword_27F3A63D0, 0x277CCAA88);
        if (swift_dynamicCast())
        {
          v38 = v58;
          sub_24FEDCDF4();
          v39 = sub_24FEDE1C4();

          v40 = [v38 hasItemConformingToTypeIdentifier_];

          v34(v24, v35);
          return v40;
        }

        goto LABEL_15;
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v41 = v52;
    sub_24FECD3A4(v36, v52);
    sub_24FE58B7C(v36, &qword_27F3A5F70, &qword_24FEE45C0);
    v42 = *(v57 + 24);
    sub_24FEDCE84();
    v43 = sub_24FEDCE24();
    v34(v18, v35);
    if (v43 & 1) != 0 || (sub_24FEDCE04(), v44 = sub_24FEDCE24(), v34(v18, v35), (v44))
    {
      result = sub_24FECD2D8(v41);
    }

    else
    {
      sub_24FEDCE44();
      v48 = sub_24FEDCE24();
      v34(v18, v35);
      result = sub_24FECD2D8(v41);
      if ((v48 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (*(v54 + 16))
    {
      sub_24FE72CC0(v54 + 32, v59);
      sub_24FE62F4C(0, &qword_27F3A63D0, 0x277CCAA88);
      if (swift_dynamicCast())
      {
        v45 = v58;
        v46 = sub_24FEDE1C4();
        v47 = [v45 hasItemConformingToTypeIdentifier_];

        v34(v24, v35);
        return v47;
      }

      goto LABEL_15;
    }

    goto LABEL_21;
  }

  sub_24FE58B7C(v14, &qword_27F3A5F70, &qword_24FEE45C0);
  return 0;
}

id sub_24FECA030()
{
  v1 = v0;
  v2 = sub_24FEDCE94();
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v2);
  v60 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v55 - v7;
  v9 = type metadata accessor for ShareSheetMetadata();
  v64 = *(v9 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B8, &qword_24FEE63A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v55 - v14;
  v16 = sub_24FEDC9E4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC16MarkdownDocument8CopyFile_fileURL;
  swift_beginAccess();
  v22 = v1 + v21;
  v23 = v1;
  sub_24FE58B14(v22, v15, &qword_27F3A64B8, &qword_24FEE63A0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v24 = &qword_27F3A64B8;
    v25 = &qword_24FEE63A0;
    v26 = v15;
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    sub_24FE58B14(v1 + OBJC_IVAR____TtC16MarkdownDocument8CopyFile_shareSheetMetadata, v8, &qword_27F3A5F70, &qword_24FEE45C0);
    if ((*(v64 + 48))(v8, 1, v9) != 1)
    {
      v32 = v63;
      sub_24FECD274(v8, v63);
      v33 = sub_24FEDC9F4();
      v59 = v20;
      v56 = v34;
      v57 = v33;
      v58 = v17;
      v64 = v16;
      v35 = v32;
      v36 = *(v9 + 24);
      v37 = v60;
      sub_24FEDCE84();
      v38 = sub_24FEDCE24();
      v39 = v62;
      v40 = *(v61 + 8);
      v40(v37, v62);
      if (v38 & 1) != 0 || (sub_24FEDCE04(), v41 = sub_24FEDCE24(), v40(v37, v39), (v41) || (sub_24FEDCE44(), v42 = sub_24FEDCE24(), v40(v37, v39), (v42))
      {
        v43 = v35;
      }

      else
      {
        sub_24FEDCDF4();
        v43 = v35;
      }

      v44 = v57;
      v45 = v56;
      v46 = sub_24FEDCA04();
      v47 = objc_allocWithZone(MEMORY[0x277CCAA88]);
      v48 = sub_24FEDE1C4();

      v49 = [v47 initWithItem:v46 typeIdentifier:v48];

      v50 = *v43;
      v51 = v43[1];
      v52 = sub_24FEDE1C4();
      [v49 setSuggestedName_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A75F8, qword_24FEE87C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24FEE0740;
      *(inited + 56) = sub_24FE62F4C(0, &qword_27F3A63D0, 0x277CCAA88);
      *(inited + 32) = v49;
      v54 = v49;
      sub_24FECC7C0(inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 32));
      [v23 activityDidFinish_];
      sub_24FE62CFC(v44, v45);

      (*(v58 + 8))(v59, v64);
      return sub_24FECD2D8(v43);
    }

    (*(v17 + 8))(v20, v16);
    v24 = &qword_27F3A5F70;
    v25 = &qword_24FEE45C0;
    v26 = v8;
  }

  sub_24FE58B7C(v26, v24, v25);
  if (qword_27F3A5B98 != -1)
  {
    swift_once();
  }

  v27 = sub_24FEDCF54();
  __swift_project_value_buffer(v27, qword_27F3A7550);
  v28 = sub_24FEDCF34();
  v29 = sub_24FEDE4C4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_24FE50000, v28, v29, "Missing file URL or ShareSheet metadata in CopyFile", v30, 2u);
    MEMORY[0x25305B320](v30, -1, -1);
  }

  return [v1 activityDidFinish_];
}

uint64_t type metadata accessor for CopyFile()
{
  result = qword_27F3A75A8;
  if (!qword_27F3A75A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24FECA99C()
{
  sub_24FECAAA0(319, &qword_27F3A75B8, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24FECAAA0(319, &qword_27F3A6568, type metadata accessor for ShareSheetMetadata);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_24FECAAA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24FEDE554();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_24FECAB9C()
{
  v0 = sub_24FEDC9E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24FEDCE94();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FEDCFE4();

  if (v38 != 1)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FEDCFE4();

  v10 = v39;
  if (v39 >> 60 != 15)
  {
    v19 = v38;
    v20 = sub_24FEDCA04();
    sub_24FEDCE34();
    sub_24FEDCDF4();
    (*(v6 + 8))(v9, v5);
    v21 = objc_allocWithZone(MEMORY[0x277CCAA88]);
    v22 = sub_24FEDE1C4();

    v23 = [v21 initWithItem:v20 typeIdentifier:v22];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A75F8, qword_24FEE87C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24FEE0740;
    *(inited + 56) = sub_24FE62F4C(0, &qword_27F3A63D0, 0x277CCAA88);
    *(inited + 32) = v23;
    v25 = v23;
    sub_24FECC7C0(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    [v37 activityDidFinish_];

    return sub_24FE62CE8(v19, v10);
  }

  else
  {
LABEL_5:
    v11 = v37;
    v12 = *&v37[OBJC_IVAR____TtC16MarkdownDocument9CopyImage_imageURL];
    if (v12)
    {
      v13 = *&v37[OBJC_IVAR____TtC16MarkdownDocument9CopyImage_imageURL];
      sub_24FEDC9B4();
      v14 = v12;
      v26 = sub_24FEDC9F4();
      v27 = v4;
      v29 = v28;
      (*(v1 + 8))(v27, v0);
      v30 = sub_24FEDCA04();
      sub_24FEDCE64();
      sub_24FEDCDF4();
      (*(v6 + 8))(v9, v5);
      v31 = objc_allocWithZone(MEMORY[0x277CCAA88]);
      v32 = sub_24FEDE1C4();

      v33 = [v31 initWithItem:v30 typeIdentifier:v32];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A75F8, qword_24FEE87C0);
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_24FEE0740;
      *(v34 + 56) = sub_24FE62F4C(0, &qword_27F3A63D0, 0x277CCAA88);
      *(v34 + 32) = v33;
      v35 = v33;
      sub_24FECC7C0(v34);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v34 + 32));
      [v37 activityDidFinish_];

      return sub_24FE62CFC(v26, v29);
    }

    else
    {
      if (qword_27F3A5B98 != -1)
      {
        swift_once();
      }

      v15 = sub_24FEDCF54();
      __swift_project_value_buffer(v15, qword_27F3A7550);
      v16 = sub_24FEDCF34();
      v17 = sub_24FEDE4C4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_24FE50000, v16, v17, "Missing image URL in CopyImage", v18, 2u);
        MEMORY[0x25305B320](v18, -1, -1);
      }

      return [v11 activityDidFinish_];
    }
  }
}

id sub_24FECB3B4()
{
  sub_24FECCE70();
  if (v0)
  {
    v1 = sub_24FEDE1C4();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_24FECB434(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

void sub_24FECB57C(uint64_t a1, void *a2)
{
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FEDCFE4();

  if ((v9[0] & 1) == 0)
  {
    if (*(a1 + 16))
    {
      sub_24FE72CC0(a1 + 32, v9);
      sub_24FE62F4C(0, &qword_27F3A75E8, 0x277CBEBC0);
      v5 = swift_dynamicCast();
      v6 = v8;
      if (!v5)
      {
        v6 = 0;
      }

      v7 = *(v2 + *a2);
      *(v2 + *a2) = v6;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24FECB6D8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_24FEDE324();
  v7 = a1;
  sub_24FECB57C(v6, a4);
}

id sub_24FECB748()
{
  v1 = v0;
  v2 = sub_24FEDC9E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FEDCFE4();

  if (v21 != 1)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FEDCFE4();

  v7 = v22;
  if (v22 >> 60 != 15)
  {
    v15 = v21;
    sub_24FECD090(v21, v22);
    [v1 activityDidFinish_];
    return sub_24FE62CE8(v15, v7);
  }

  else
  {
LABEL_5:
    v8 = *&v1[OBJC_IVAR____TtC16MarkdownDocument9SaveImage_imageURL];
    if (v8)
    {
      v9 = *&v1[OBJC_IVAR____TtC16MarkdownDocument9SaveImage_imageURL];
      sub_24FEDC9B4();
      v10 = v8;
      v16 = sub_24FEDC9F4();
      v17 = v6;
      v19 = v18;
      (*(v3 + 8))(v17, v2);
      sub_24FECD090(v16, v19);
      [v1 activityDidFinish_];

      return sub_24FE62CFC(v16, v19);
    }

    else
    {
      if (qword_27F3A5B98 != -1)
      {
        swift_once();
      }

      v11 = sub_24FEDCF54();
      __swift_project_value_buffer(v11, qword_27F3A7550);
      v12 = sub_24FEDCF34();
      v13 = sub_24FEDE4C4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_24FE50000, v12, v13, "Missing image URL in SaveImage", v14, 2u);
        MEMORY[0x25305B320](v14, -1, -1);
      }

      return [v1 activityDidFinish_];
    }
  }
}

id sub_24FECBC80(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  *&a1[*a3] = 0;
  v5.receiver = a1;
  v5.super_class = a4();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_24FECBCE4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_24FECBD58()
{
  v0 = [objc_opt_self() creationRequestForAsset];
  v1 = sub_24FEDCA04();
  [v0 addResourceWithType:1 data:v1 options:0];
}

void sub_24FECBDF4(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_27F3A5B98 != -1)
    {
      swift_once();
    }

    v3 = sub_24FEDCF54();
    __swift_project_value_buffer(v3, qword_27F3A7550);
    v4 = a2;
    oslog = sub_24FEDCF34();
    v5 = sub_24FEDE4C4();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v8 = sub_24FEDE8A4();
        v10 = v9;
      }

      else
      {
        v10 = 0xED0000726F727265;
        v8 = 0x206E776F6E6B6E55;
      }

      v11 = sub_24FECC0A4(v8, v10, &v13);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_24FE50000, oslog, v5, "Failed to save image to album: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x25305B320](v7, -1, -1);
      MEMORY[0x25305B320](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24FECBFBC()
{
  result = sub_24FEDE1C4();
  qword_27F3A7568 = result;
  return result;
}

uint64_t sub_24FECBFE8()
{
  result = sub_24FEDE1C4();
  qword_27F3A7570 = result;
  return result;
}

uint64_t sub_24FECC048(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_24FECC0A4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_24FECC0A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24FECC170(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24FE72CC0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24FECC170(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24FECC27C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_24FEDE674();
    a6 = v11;
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

uint64_t sub_24FECC27C(uint64_t a1, unint64_t a2)
{
  v4 = sub_24FECC2C8(a1, a2);
  sub_24FECC3F8(&unk_286285CF0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24FECC2C8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24FECC4E4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24FEDE674();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24FEDE284();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24FECC4E4(v10, 0);
        result = sub_24FEDE614();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24FECC3F8(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_24FECC558(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24FECC4E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A75E0, &qword_24FEE87B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24FECC558(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A75E0, &qword_24FEE87B8);
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

_BYTE **sub_24FECC64C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_24FECC65C()
{
  v1 = sub_24FEDC774();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 14;
  v6 = *(v0 + OBJC_IVAR____TtC16MarkdownDocument4Copy_fullContent);
  if (*(v6 + 16) != 1)
  {
    return 0;
  }

  sub_24FE72CC0(v6 + 32, v10);
  result = swift_dynamicCast();
  if (result)
  {

    return 1;
  }

  else if (*(v6 + 16))
  {
    sub_24FE72CC0(v6 + 32, v10);
    result = swift_dynamicCast();
    if (result)
    {
      v8 = result;
      (*(v2 + 8))(v5, v1);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24FECC7C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B8, &qword_24FEE53B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v34 - v4;
  v6 = sub_24FEDC774();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - v12;
  v14 = MEMORY[0x277D84F90];
  v42 = MEMORY[0x277D84F90];
  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = 0;
  v38 = (v11 + 32);
  v39 = (v11 + 56);
  v36 = (v11 + 8);
  v37 = (v11 + 16);
  v17 = a1 + 32;
  v35 = v6;
  v34[0] = a1 + 32;
  do
  {
    v34[1] = v14;
    v18 = v17 + 32 * v16;
    v19 = v16;
    v20 = v39;
    while (1)
    {
      if (v19 >= v15)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      sub_24FE72CC0(v18, v41);
      v16 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_20;
      }

      sub_24FE72CC0(v41, v40);
      v24 = swift_dynamicCast();
      v25 = *v20;
      if (v24)
      {
        v25(v5, 0, 1, v6);
        (*v38)(v13, v5, v6);
        sub_24FE62F4C(0, &qword_27F3A63D8, 0x277CCA898);
        (*v37)(v9, v13, v6);
        v21 = sub_24FEDE524();
        v22 = [objc_allocWithZone(MEMORY[0x277CCAA88]) initWithObject_];

        (*v36)(v13, v6);
        goto LABEL_5;
      }

      v25(v5, 1, 1, v6);
      sub_24FE58B7C(v5, &qword_27F3A63B8, &qword_24FEE53B0);
      sub_24FE72CC0(v41, v40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v26 = v5;
      v27 = v15;
      v28 = v13;
      v29 = v9;
      v30 = sub_24FEDE1C4();

      v22 = [objc_allocWithZone(MEMORY[0x277CCAA88]) initWithObject_];

      v9 = v29;
      v13 = v28;
      v15 = v27;
      v5 = v26;
      v6 = v35;
LABEL_5:
      v23 = __swift_destroy_boxed_opaque_existential_1(v41);
      v20 = v39;
      if (v22)
      {
        goto LABEL_15;
      }

LABEL_6:
      ++v19;
      v18 += 32;
      if (v16 == v15)
      {
        goto LABEL_18;
      }
    }

    sub_24FE72CC0(v41, v40);
    sub_24FE62F4C(0, &qword_27F3A63D0, 0x277CCAA88);
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v41);
      goto LABEL_6;
    }

    v23 = __swift_destroy_boxed_opaque_existential_1(v41);
LABEL_15:
    MEMORY[0x25305A500](v23);
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v31 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24FEDE344();
    }

    sub_24FEDE374();
    v14 = v42;
    v17 = v34[0];
  }

  while (v16 != v15);
LABEL_18:
  v32 = [objc_opt_self() generalPasteboard];
  sub_24FE62F4C(0, &qword_27F3A63D0, 0x277CCAA88);
  v33 = sub_24FEDE314();

  [v32 setItemProviders:v33 localOnly:0 expirationDate:0];
}

uint64_t sub_24FECCC7C(uint64_t a1)
{
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FEDCFE4();

  if (v5 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24FEDCFE4();

    if (v6 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      sub_24FE62CE8(v5, v6);
      return 1;
    }
  }

  else if (*(a1 + 16))
  {
    sub_24FE72CC0(a1 + 32, &v5);
    sub_24FE62F4C(0, &qword_27F3A63D0, 0x277CCAA88);
    result = swift_dynamicCast();
    if (result)
    {
      sub_24FE62F4C(0, &qword_27F3A75F0, 0x277D755B8);
      v3 = [v4 canLoadObjectOfClass_];

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24FECCE70()
{
  v0 = sub_24FEDCA84();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_24FEDE1B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FEDCFE4();

  sub_24FEDE1A4();
  if (qword_27F3A5BB0 != -1)
  {
    swift_once();
  }

  v4 = qword_27F3B3150;
  sub_24FEDCA74();
  return sub_24FEDE214();
}

void sub_24FECD090(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() sharedPhotoLibrary];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v12 = sub_24FECD254;
  v13 = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_24FE5CE20;
  v11 = &block_descriptor_3;
  v6 = _Block_copy(&v8);
  sub_24FE62C94(a1, a2);

  v12 = sub_24FECBDF4;
  v13 = 0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_24FEC8F40;
  v11 = &block_descriptor_37;
  v7 = _Block_copy(&v8);
  [v4 performChanges:v6 completionHandler:v7];
  _Block_release(v7);
  _Block_release(v6);
}

uint64_t sub_24FECD21C()
{
  sub_24FE62CFC(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24FECD254()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24FECBD58();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24FECD274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareSheetMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FECD2D8(uint64_t a1)
{
  v2 = type metadata accessor for ShareSheetMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FECD334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B8, &qword_24FEE63A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FECD3A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareSheetMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24FECD408()
{
  result = qword_27F3A5FC0;
  if (!qword_27F3A5FC0)
  {
    sub_24FEDCE94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5FC0);
  }

  return result;
}

id sub_24FECD484(int a1, id a2)
{
  [a2 bounds];

  return [a2 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

uint64_t sub_24FECD4E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24FEDCE94();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FECD5A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24FEDCE94();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ShareSheetMetadata()
{
  result = qword_27F3A7608;
  if (!qword_27F3A7608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FECD698()
{
  result = sub_24FEDCE94();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DocumentElementTableParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a1;
  v118 = a2;
  v115 = sub_24FEDC774();
  v114 = *(v115 - 8);
  v2 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v4 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_24FEDC6C4();
  v123 = *(v143 - 8);
  v5 = *(v123 + 64);
  MEMORY[0x28223BE20](v143);
  v120 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v128 = &v112 - v8;
  MEMORY[0x28223BE20](v9);
  v122 = &v112 - v10;
  MEMORY[0x28223BE20](v11);
  v141 = &v112 - v12;
  v13 = sub_24FEDC884();
  v148 = *(v13 - 8);
  v14 = *(v148 + 64);
  MEMORY[0x28223BE20](v13);
  v156 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v155 = &v112 - v17;
  MEMORY[0x28223BE20](v18);
  v154 = &v112 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v137 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v124 = &v112 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v112 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6140, &qword_24FEE79D0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v112 - v30;
  v32 = sub_24FEDC854();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v144 = &v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v145 = &v112 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v112 - v39;
  MEMORY[0x28223BE20](v41);
  v116 = &v112 - v42;
  v140 = sub_24FE8B614();
  sub_24FEDC6D4();
  v43 = sub_24FEDC894();
  v44 = *(v43 - 8);
  v45 = v27;
  v138 = *(v44 + 48);
  v139 = v44 + 48;
  if (v138(v27, 1, v43) == 1)
  {
    sub_24FE58B7C(v27, &qword_27F3A6138, &unk_24FEE4A10);
    (*(v33 + 56))(v31, 1, 1, v32);
    v46 = v118;
LABEL_11:
    sub_24FE58B7C(v31, &qword_27F3A6140, &qword_24FEE79D0);
    v63 = type metadata accessor for DocumentTableElement();
    return (*(*(v63 - 8) + 56))(v46, 1, 1, v63);
  }

  v142 = v31;
  v113 = v4;
  v47 = sub_24FEDC864();
  v49 = *(v44 + 8);
  v48 = v44 + 8;
  v135 = v43;
  v134 = v49;
  v49(v45, v43);
  result = v47;
  v51 = v32;
  v153 = *(v47 + 16);
  if (v153)
  {
    v52 = v40;
    v53 = 0;
    v150 = (v148 + 88);
    v151 = (v33 + 16);
    LODWORD(v149) = *MEMORY[0x277CC8D28];
    v152 = (v148 + 8);
    while (v53 < *(result + 16))
    {
      v54 = result;
      (*(v33 + 16))(v52, result + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v53, v51);
      v55 = v51;
      v56 = v154;
      sub_24FEDC834();
      v57 = (*v150)(v56, v13);
      if (v57 == v149)
      {

        (*v152)(v56, v13);
        v31 = v142;
        (*(v33 + 32))(v142, v52, v55);
        v58 = 0;
        v51 = v55;
        goto LABEL_10;
      }

      ++v53;
      (*(v33 + 8))(v52, v55);
      (*v152)(v56, v13);
      v51 = v55;
      result = v54;
      if (v153 == v53)
      {
        goto LABEL_8;
      }
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_8:

  v58 = 1;
  v31 = v142;
LABEL_10:
  (*(v33 + 56))(v31, v58, 1, v51);
  v59 = (*(v33 + 48))(v31, 1, v51);
  v46 = v118;
  v60 = v51;
  v61 = v117;
  v62 = v124;
  if (v59 == 1)
  {
    goto LABEL_11;
  }

  v131 = v48;
  v64 = *(v33 + 32);
  v154 = v60;
  v64(v116, v31);
  v65 = sub_24FEDC844();
  result = sub_24FED5384(v65);
  v66 = *(result + 16);
  v133 = result;
  v130 = v66;
  if (v66)
  {
    v67 = 0;
    v129 = v123 + 16;
    v153 = v33 + 16;
    LODWORD(v152) = *MEMORY[0x277CC8D20];
    v150 = (v148 + 8);
    v151 = (v148 + 104);
    v149 = v33 + 8;
    v125 = (v123 + 32);
    v119 = (v123 + 8);
    v121 = MEMORY[0x277D84F90];
    v68 = v154;
    v146 = v33;
    v147 = v13;
    while (2)
    {
      if (v67 < *(result + 16))
      {
        v132 = (*(v123 + 80) + 32) & ~*(v123 + 80);
        v71 = *(v123 + 72);
        v127 = result + v132;
        v142 = v71;
        v126 = *(v123 + 16);
        v126(v141, result + v132 + v71 * v67, v143);
        sub_24FEDC6D4();
        v72 = v135;
        result = (v138)(v62, 1, v135);
        if (result == 1)
        {
          goto LABEL_51;
        }

        v136 = v67 + 1;
        v73 = sub_24FEDC864();
        result = v134(v62, v72);
        v74 = 0;
        v148 = *(v73 + 16);
        do
        {
          if (v148 == v74)
          {

            (*v119)(v141, v143);
            v33 = v146;
            v69 = v147;
            v67 = v136;
            goto LABEL_15;
          }

          v75 = v146;
          v76 = v147;
          if (v74 >= *(v73 + 16))
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v77 = v145;
          (*(v146 + 16))(v145, v73 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v74++, v68);
          v78 = v155;
          sub_24FEDC834();
          v79 = v156;
          (*v151)(v156, v152, v76);
          v80 = MEMORY[0x253058A70](v78, v79);
          v81 = *v150;
          (*v150)(v79, v76);
          v81(v78, v76);
          v68 = v154;
          result = (*(v75 + 8))(v77, v154);
        }

        while ((v80 & 1) == 0);

        v82 = *v125;
        (*v125)(v122, v141, v143);
        v83 = v121;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v157 = v83;
        if (isUniquelyReferenced_nonNull_native)
        {
          v85 = v83;
        }

        else
        {
          sub_24FEBE21C(0, *(v83 + 16) + 1, 1);
          v85 = v157;
        }

        v33 = v146;
        v69 = v147;
        v87 = *(v85 + 16);
        v86 = *(v85 + 24);
        v67 = v136;
        if (v87 >= v86 >> 1)
        {
          sub_24FEBE21C(v86 > 1, v87 + 1, 1);
          v85 = v157;
        }

        *(v85 + 16) = v87 + 1;
        v121 = v85;
        v82((v85 + v132 + v87 * v142), v122, v143);
LABEL_15:
        v70 = v137;
        result = v133;
        v62 = v124;
        if (v67 != v130)
        {
          continue;
        }

        v88 = 0;
        v141 = MEMORY[0x277D84F90];
        while (v88 < *(result + 16))
        {
          v126(v128, v127 + v142 * v88, v143);
          sub_24FEDC6D4();
          v89 = v135;
          result = (v138)(v70, 1, v135);
          if (result == 1)
          {
            goto LABEL_52;
          }

          v145 = v88 + 1;
          v90 = sub_24FEDC864();
          result = v134(v70, v89);
          v91 = 0;
          v148 = *(v90 + 16);
          do
          {
            if (v148 == v91)
            {

              (*v119)(v128, v143);
              goto LABEL_30;
            }

            if (v91 >= *(v90 + 16))
            {
              goto LABEL_47;
            }

            v92 = v144;
            (*(v33 + 16))(v144, v90 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v91++, v68);
            v93 = v155;
            sub_24FEDC834();
            v94 = v156;
            (*v151)(v156, v152, v69);
            sub_24FECFFA8(&qword_27F3A7618, MEMORY[0x277CC8D60]);
            v95 = sub_24FEDE194();
            v96 = *v150;
            (*v150)(v94, v69);
            v96(v93, v69);
            v68 = v154;
            result = (*(v33 + 8))(v92, v154);
          }

          while ((v95 & 1) != 0);

          v97 = *v125;
          (*v125)(v120, v128, v143);
          v98 = v141;
          v99 = swift_isUniquelyReferenced_nonNull_native();
          v157 = v98;
          if (v99)
          {
            v100 = v98;
          }

          else
          {
            sub_24FEBE21C(0, *(v98 + 2) + 1, 1);
            v100 = v157;
          }

          v102 = *(v100 + 2);
          v101 = *(v100 + 3);
          if (v102 >= v101 >> 1)
          {
            sub_24FEBE21C(v101 > 1, v102 + 1, 1);
            v100 = v157;
          }

          *(v100 + 2) = v102 + 1;
          v141 = v100;
          v97(&v100[v132 + v102 * v142], v120, v143);
LABEL_30:
          v88 = v145;
          v70 = v137;
          result = v133;
          if (v145 == v130)
          {
            v46 = v118;
            v61 = v117;
            v103 = v121;
            v104 = v141;
            goto LABEL_45;
          }
        }

LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

      break;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v103 = MEMORY[0x277D84F90];
  v104 = MEMORY[0x277D84F90];
LABEL_45:
  MEMORY[0x28223BE20](result);
  *(&v112 - 2) = v61;
  v105 = sub_24FE8B968(sub_24FECFF10, (&v112 - 4), v103);
  v106 = sub_24FECEAE0(v104);

  MEMORY[0x28223BE20](v107);
  *(&v112 - 2) = v61;
  v108 = sub_24FE8BB64(sub_24FECFF30, (&v112 - 4), v106);

  v109 = *(v103 + 16);

  v110 = v113;
  sub_24FECF5B4(v61, v133, v109, v113);

  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  (*(v33 + 8))(v116, v154);
  v111 = type metadata accessor for DocumentTableElement();
  (*(v114 + 32))(v46 + v111[5], v110, v115);
  *(v46 + v111[6]) = v105;
  *(v46 + v111[7]) = v108;
  return (*(*(v111 - 1) + 56))(v46, 0, 1, v111);
}

uint64_t sub_24FECE7D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26[1] = a1;
  v28 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6130, &unk_24FEE4A00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v26[0] = v26 - v4;
  v27 = sub_24FEDC5A4();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v27);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24FEDC8E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - v13;
  v15 = sub_24FEDC774();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDC6B4();
  sub_24FE8BF90();
  sub_24FEDC7A4();
  sub_24FE58B7C(v14, &qword_27F3A6160, &unk_24FEE4A80);
  sub_24FEDC7C4();
  sub_24FEDC574();
  sub_24FEAE034(v26[0]);
  (*(v5 + 8))(v8, v27);
  v20 = sub_24FEDE224();
  v22 = v21;
  (*(v16 + 8))(v19, v15);
  v23 = v28;
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  result = type metadata accessor for DocumentTableView.RowHeader(0);
  v25 = (v23 + *(result + 20));
  *v25 = v20;
  v25[1] = v22;
  return result;
}

uint64_t sub_24FECEAE0(uint64_t a1)
{
  v2 = sub_24FEDC884();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24FEDC854();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v52 - v14;
  v15 = sub_24FEDC6C4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v69 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - v19;
  v55 = *(a1 + 16);
  if (!v55)
  {
    return MEMORY[0x277D84F90];
  }

  v22 = 0;
  v24 = *(v20 + 16);
  v23 = v20 + 16;
  v74 = v24;
  v63 = *(v23 + 64);
  v65 = (v63 + 32) & ~v63;
  v54 = a1 + v65;
  v73 = *(v23 + 56);
  v78 = v8 + 16;
  v52 = v8;
  v76 = (v3 + 88);
  v77 = (v8 + 8);
  v75 = *MEMORY[0x277CC8D40];
  v67 = (v3 + 96);
  v68 = (v3 + 8);
  v59 = (v23 + 16);
  v53 = (v23 - 8);
  v62 = xmmword_24FEE0740;
  v79 = MEMORY[0x277D84F90];
  v60 = v11;
  v66 = v15;
  v61 = v7;
  v71 = &v52 - v19;
  v72 = v23;
  v64 = v6;
  while (1)
  {
    v57 = v22;
    v74(v21, v54 + v73 * v22, v15);
    sub_24FE8B614();
    sub_24FEDC6D4();
    v25 = v58;
    v26 = sub_24FEDC894();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v25, 1, v26) != 1)
    {
      break;
    }

    sub_24FE58B7C(v25, &qword_27F3A6138, &unk_24FEE4A10);
    v28 = MEMORY[0x277D84F90];
    v29 = *(MEMORY[0x277D84F90] + 16);
    if (v29)
    {
      goto LABEL_6;
    }

LABEL_3:

    v22 = v57 + 1;
    v21 = v71;
    (*v53)(v71, v15);
    if (v22 == v55)
    {
      return v79;
    }
  }

  v28 = sub_24FEDC864();
  (*(v27 + 8))(v58, v26);
  v29 = *(v28 + 16);
  if (!v29)
  {
    goto LABEL_3;
  }

LABEL_6:
  v30 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v56 = v28;
  v31 = v28 + v30;
  v32 = *(v52 + 72);
  v70 = *(v52 + 16);
  v33 = v70;
  v70(v11, v31, v7);
  while (1)
  {
    sub_24FEDC834();
    (*v77)(v11, v7);
    v34 = (*v76)(v6, v2);
    if (v34 != v75)
    {
      (*v68)(v6, v2);
      goto LABEL_8;
    }

    result = (*v67)(v6, v2);
    v36 = *v6 - 1;
    if (__OFSUB__(*v6, 1))
    {
      break;
    }

    v37 = v7;
    v38 = v2;
    v39 = v15;
    v40 = v79;
    if (v36 < 0 || v36 >= v79[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6B00, &unk_24FEE6690);
      v47 = v65;
      v48 = swift_allocObject();
      *(v48 + 16) = v62;
      v74((v48 + v47), v71, v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_24FEBB044(0, v40[2] + 1, 1, v40);
      }

      v2 = v38;
      v50 = v40[2];
      v49 = v40[3];
      v79 = v40;
      v7 = v37;
      if (v50 >= v49 >> 1)
      {
        v79 = sub_24FEBB044((v49 > 1), v50 + 1, 1, v79);
      }

      v6 = v64;
      v51 = v79;
      v79[2] = v50 + 1;
      v51[v50 + 4] = v48;
      v15 = v66;
      v33 = v70;
    }

    else
    {
      v74(v69, v71, v39);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24FEBB818(v40);
        v40 = result;
      }

      if (v36 >= v40[2])
      {
        goto LABEL_32;
      }

      v41 = v40 + 4;
      v42 = v40[v36 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40[v36 + 4] = v42;
      v79 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = sub_24FEBB01C(0, *(v42 + 2) + 1, 1, v42);
        v41[v36] = v42;
      }

      v6 = v64;
      v45 = *(v42 + 2);
      v44 = *(v42 + 3);
      if (v45 >= v44 >> 1)
      {
        v42 = sub_24FEBB01C(v44 > 1, v45 + 1, 1, v42);
        v41[v36] = v42;
      }

      v2 = v38;
      v46 = v69;
      v33 = v70;
      *(v42 + 2) = v45 + 1;
      v15 = v66;
      (*v59)(&v42[v65 + v45 * v73], v46, v66);
      v11 = v60;
      v7 = v61;
    }

LABEL_8:
    v31 += v32;
    if (!--v29)
    {
      goto LABEL_3;
    }

    v33(v11, v31, v7);
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24FECF248@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v7[2] = a2;
  v5 = sub_24FE8BD24(sub_24FED0060, v7, v4);
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  result = type metadata accessor for DocumentTableView.TableDatum(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_24FECF2C0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v25[1] = a1;
  v27 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6130, &unk_24FEE4A00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v25[0] = v25 - v4;
  v26 = sub_24FEDC5A4();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v26);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24FEDC8E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = sub_24FEDC774();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDC6B4();
  sub_24FE8BF90();
  sub_24FEDC7A4();
  sub_24FE58B7C(v14, &qword_27F3A6160, &unk_24FEE4A80);
  sub_24FEDC7C4();
  sub_24FEDC574();
  sub_24FEAE034(v25[0]);
  (*(v5 + 8))(v8, v26);
  v20 = sub_24FEDE224();
  v22 = v21;
  result = (*(v16 + 8))(v19, v15);
  v24 = v27;
  *v27 = v20;
  v24[1] = v22;
  return result;
}

uint64_t sub_24FECF5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v84 = a1;
  v65 = a4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D00, &unk_24FEE71B0);
  v5 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v62[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v81 = &v62[-v8];
  v9 = sub_24FEDC714();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D20, "а");
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v62[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6130, &unk_24FEE4A00);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v79 = &v62[-v20];
  v92 = sub_24FEDC5A4();
  v21 = *(v92 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v92);
  v24 = &v62[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_24FEDC8E4();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v83 = &v62[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v62[-v30];
  v78 = sub_24FEDC774();
  v32 = *(v78 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v78);
  v91 = &v62[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = 0;
  v96 = 0xE000000000000000;
  v66 = *(a2 + 16);
  if (v66)
  {
    v35 = sub_24FEDC6C4();
    v88 = 0;
    v37 = *(v35 - 8);
    result = v35 - 8;
    v76 = a2 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v77 = v37;
    v72 = (v10 + 32);
    v70 = (v10 + 8);
    v69 = (v21 + 8);
    v68 = (v32 + 8);
    v67 = v64 - 1;
    v63 = 1;
    v75 = v17;
    v74 = v13;
    v73 = v24;
    v71 = v28;
    do
    {
      v38 = 0;
      v85 = v66 - v88;
      if (v66 >= v88)
      {
        v39 = v66 - v88;
      }

      else
      {
        v39 = 0;
      }

      v86 = v88 ^ 0x7FFFFFFFFFFFFFFFLL;
      v87 = v39;
      while (1)
      {
        if (v87 == v38)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          return result;
        }

        if (v86 == v38)
        {
          goto LABEL_19;
        }

        v90 = v38;
        v40 = v76 + *(v77 + 72) * (v88 + v38);
        sub_24FEDC6B4();
        sub_24FE8BF90();
        sub_24FEDC7A4();
        sub_24FE58B7C(v31, &qword_27F3A6160, &unk_24FEE4A80);
        sub_24FEDC7C4();
        sub_24FEDC574();
        v41 = sub_24FECFFA8(&qword_27F3A6D28, MEMORY[0x277CC8B30]);
        sub_24FEDE454();
        sub_24FECFFA8(&qword_27F3A6D30, MEMORY[0x277CC8C20]);
        result = sub_24FEDE194();
        if ((result & 1) == 0)
        {
          goto LABEL_20;
        }

        sub_24FEDE474();
        sub_24FECFFA8(&qword_27F3A6D18, MEMORY[0x277CC8C20]);
        result = sub_24FEDE184();
        if ((result & 1) == 0)
        {
          goto LABEL_21;
        }

        v89 = v41;
        v42 = *v72;
        v43 = v81;
        (*v72)(v81, v17, v9);
        v44 = v82;
        v42(v43 + *(v82 + 48), v13, v9);
        v45 = v80;
        sub_24FECFFF0(v43, v80);
        v46 = *(v44 + 48);
        v42(v31, v45, v9);
        v47 = v31;
        v48 = *v70;
        (*v70)(&v45[v46], v9);
        v49 = v43;
        v50 = v92;
        v51 = v73;
        sub_24FEB0220(v49, v45);
        v42(v47 + *(v71 + 36), &v45[*(v44 + 48)], v9);
        v48(v45, v9);
        v31 = v47;
        sub_24FEDE494();
        sub_24FE58B7C(v47, &qword_27F3A6160, &unk_24FEE4A80);
        (*v69)(v51, v50);
        v52 = sub_24FEDE224();
        v54 = v53;
        (*v68)(v91, v78);
        v93 = 8316;
        v94 = 0xE200000000000000;
        MEMORY[0x25305A470](v52, v54);

        MEMORY[0x25305A470](32, 0xE100000000000000);

        MEMORY[0x25305A470](v93, v94);

        v55 = v90;
        if (v67 == v90)
        {
          break;
        }

        v38 = v90 + 1;
        v13 = v74;
        v17 = v75;
        if (v85 == v90 + 1)
        {
          goto LABEL_17;
        }
      }

      result = MEMORY[0x25305A470](2684, 0xE200000000000000);
      v88 += v55 + 1;
      v56 = v85 - 1;
      if (v63)
      {
        v93 = sub_24FEDE2B4();
        v94 = v57;

        MEMORY[0x25305A470](2684, 0xE200000000000000);

        MEMORY[0x25305A470](v93, v94);
      }

      v63 = 0;
      v13 = v74;
      v17 = v75;
    }

    while (v56 != v55);
  }

LABEL_17:
  v58 = objc_opt_self();
  v59 = sub_24FEDE1C4();

  v60 = [objc_opt_self() defaultFormatOptions];
  v61 = [v58 reconstituteAttributedStringFromFormattedString:v59 formatOptions:v60 attributes:0];

  return sub_24FEDC7B4();
}

uint64_t sub_24FECFFA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FECFFF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D00, &unk_24FEE71B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DocumentTableElement.init(id:text:headers:tableData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_24FEDCA64();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for DocumentTableElement();
  v12 = v11[5];
  v13 = sub_24FEDC774();
  result = (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  *(a5 + v11[6]) = a3;
  *(a5 + v11[7]) = a4;
  return result;
}

uint64_t type metadata accessor for DocumentTableElement()
{
  result = qword_27F3A7650;
  if (!qword_27F3A7650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentTableElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentTableElement.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentTableElement() + 20);
  v4 = sub_24FEDC774();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DocumentTableElement.rowHeaders.getter()
{
  v1 = *(v0 + *(type metadata accessor for DocumentTableElement() + 24));
}

uint64_t DocumentTableElement.tableData.getter()
{
  v1 = *(v0 + *(type metadata accessor for DocumentTableElement() + 28));
}

__n128 DocumentTableElement.makeView()@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentTableElement();
  v4 = v3[5];
  v5 = sub_24FEDC774();
  (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
  v6 = v3[7];
  v7 = *(v1 + v3[6]);
  v8 = *(v1 + v6);
  v9 = type metadata accessor for DocumentTableView(0);
  *(a1 + v9[5]) = v7;
  *(a1 + v9[6]) = v8;
  v10 = v9[7];
  sub_24FE85C8C();

  sub_24FEDD0B4();
  *(a1 + v9[8]) = 3;
  __asm { FMOV            V0.2D, #20.0 }

  *(a1 + v9[9]) = result;
  *(a1 + v9[10]) = 0x4030000000000000;
  return result;
}

__n128 sub_24FED0400@<Q0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[5];
  v6 = sub_24FEDC774();
  (*(*(v6 - 8) + 16))(a2, v2 + v5, v6);
  v7 = a1[7];
  v8 = *(v2 + a1[6]);
  v9 = *(v2 + v7);
  v10 = type metadata accessor for DocumentTableView(0);
  *(a2 + v10[5]) = v8;
  *(a2 + v10[6]) = v9;
  v11 = v10[7];
  sub_24FE85C8C();

  sub_24FEDD0B4();
  *(a2 + v10[8]) = 3;
  __asm { FMOV            V0.2D, #20.0 }

  *(a2 + v10[9]) = result;
  *(a2 + v10[10]) = 0x4030000000000000;
  return result;
}

uint64_t sub_24FED0558(uint64_t a1)
{
  *(a1 + 8) = sub_24FED0624(&qword_27F3A7638, type metadata accessor for DocumentTableElement);
  result = sub_24FED0624(&unk_27F3A7640, type metadata accessor for DocumentTableElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FED0624(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FED0680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24FEDC774();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24FED07A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24FEDCA64();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24FEDC774();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24FED08A8()
{
  sub_24FEDCA64();
  if (v0 <= 0x3F)
  {
    sub_24FEDC774();
    if (v1 <= 0x3F)
    {
      sub_24FED0994(319, &qword_27F3A7660, type metadata accessor for DocumentTableView.RowHeader);
      if (v2 <= 0x3F)
      {
        sub_24FED0994(319, &qword_27F3A7668, type metadata accessor for DocumentTableView.TableDatum);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24FED0994(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24FEDE3A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t DocumentTableView.RowHeader.init(text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  result = type metadata accessor for DocumentTableView.RowHeader(0);
  v7 = (a3 + *(result + 20));
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t DocumentTableView.TableDatum.init(cellInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  result = type metadata accessor for DocumentTableView.TableDatum(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t DocumentTableView.RowHeader.text.getter()
{
  v1 = (v0 + *(type metadata accessor for DocumentTableView.RowHeader(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t static DocumentTableView.TableDatum.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for DocumentTableView.TableDatum(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_24FEA9CC0(v5, v6);
}

uint64_t DocumentTableView.TableDatum.hash(into:)()
{
  sub_24FEDCA64();
  sub_24FED188C(&qword_27F3A5E30, MEMORY[0x277CC95F0]);
  sub_24FEDE164();
  v1 = *(v0 + *(type metadata accessor for DocumentTableView.TableDatum(0) + 20));
  result = MEMORY[0x25305AB10](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_24FEDE254();

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t DocumentTableView.TableDatum.hashValue.getter()
{
  sub_24FEDE904();
  sub_24FEDCA64();
  sub_24FED188C(&qword_27F3A5E30, MEMORY[0x277CC95F0]);
  sub_24FEDE164();
  v1 = *(v0 + *(type metadata accessor for DocumentTableView.TableDatum(0) + 20));
  MEMORY[0x25305AB10](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_24FEDE254();

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return sub_24FEDE924();
}

uint64_t sub_24FED0D40()
{
  sub_24FEDE904();
  DocumentTableView.TableDatum.hash(into:)();
  return sub_24FEDE924();
}

uint64_t sub_24FED0D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_24FEA9CC0(v7, v8);
}

uint64_t sub_24FED0DFC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_24FED0E84(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
}

uint64_t DocumentTableView.tableData.getter()
{
  v1 = *(v0 + *(type metadata accessor for DocumentTableView(0) + 24));
}

uint64_t DocumentTableView.body.getter@<X0>(char *a1@<X8>)
{
  *a1 = sub_24FEDDF24();
  *(a1 + 1) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7670, &qword_24FEE8930);
  sub_24FED101C(v1, &a1[*(v4 + 44)]);
  v5 = sub_24FEDD734();
  v6 = -*(v1 + *(type metadata accessor for DocumentTableView(0) + 40));
  sub_24FEDD014();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7678, &qword_24FEE8938);
  v16 = &a1[*(result + 36)];
  *v16 = v5;
  *(v16 + 1) = v8;
  *(v16 + 2) = v10;
  *(v16 + 3) = v12;
  *(v16 + 4) = v14;
  v16[40] = 0;
  return result;
}

uint64_t sub_24FED101C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A76F0, &qword_24FEE8A60);
  v68 = *(v71 - 8);
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v71);
  v67 = &v66 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A76F8, &qword_24FEE8A68);
  v5 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v7 = &v66 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7700, &qword_24FEE8A70);
  v8 = *(*(v70 - 1) + 64);
  MEMORY[0x28223BE20](v70);
  v10 = &v66 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7708, &qword_24FEE8A78);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v72 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6680, &qword_24FEE8A80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6688, &unk_24FEE5750);
  v74 = *(v21 - 8);
  v75 = v21;
  v22 = *(v74 + 64);
  MEMORY[0x28223BE20](v21);
  v73 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v66 - v25;
  v27 = type metadata accessor for DocumentTableView(0);
  v28 = (a1 + v27[9]);
  v29 = *v28;
  v30 = v28[1];
  v31 = *(sub_24FEDD284() + 20);
  v32 = *MEMORY[0x277CE0118];
  v33 = sub_24FEDD4E4();
  (*(*(v33 - 8) + 104))(&v20[v31], v32, v33);
  *v20 = v29;
  *(v20 + 1) = v30;
  *&v20[*(v17 + 36)] = sub_24FEDD644();
  sub_24FE9D4EC();
  v34 = v26;
  sub_24FEDDA54();
  sub_24FE58B7C(v20, &qword_27F3A6680, &qword_24FEE8A80);
  if (*(*(a1 + v27[5]) + 16) >= *(a1 + v27[8]))
  {
    v47 = sub_24FEDD724();
    MEMORY[0x28223BE20](v47);
    *(&v66 - 2) = a1;
    sub_24FED34F8();
    v48 = v67;
    sub_24FEDD024();
    v49 = v68;
    v50 = v71;
    (*(v68 + 16))(v7, v48, v71);
    swift_storeEnumTagMultiPayload();
    sub_24FE58928(&qword_27F3A7738, &qword_27F3A76F0, &qword_24FEE8A60);
    sub_24FEDD5F4();
    (*(v49 + 8))(v48, v50);
  }

  else
  {
    v35 = sub_24FEDDF44();
    v36 = *(a1 + v27[10]);
    *v10 = v35;
    *(v10 + 1) = v37;
    *(v10 + 2) = v36;
    v10[24] = 0;
    *(v10 + 4) = v36;
    v10[40] = 0;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7748, &qword_24FEE8AA8);
    sub_24FED1A08(a1, 0, &v10[*(v38 + 44)]);
    v39 = sub_24FEDD874();
    KeyPath = swift_getKeyPath();
    v41 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7720, &qword_24FEE8A88) + 36)];
    *v41 = KeyPath;
    v41[1] = v39;
    LOBYTE(v39) = sub_24FEDD744();
    sub_24FEDD014();
    v42 = &v10[*(v70 + 9)];
    *v42 = v39;
    *(v42 + 1) = v43;
    *(v42 + 2) = v44;
    *(v42 + 3) = v45;
    *(v42 + 4) = v46;
    v42[40] = 0;
    sub_24FE58B14(v10, v7, &qword_27F3A7700, &qword_24FEE8A70);
    swift_storeEnumTagMultiPayload();
    sub_24FED34F8();
    sub_24FE58928(&qword_27F3A7738, &qword_27F3A76F0, &qword_24FEE8A60);
    sub_24FEDD5F4();
    sub_24FE58B7C(v10, &qword_27F3A7700, &qword_24FEE8A70);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66A8, &unk_24FEE5760);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_24FEE0740;
  v52 = sub_24FEDC774();
  *(v51 + 56) = v52;
  *(v51 + 64) = &protocol witness table for AttributedString;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v51 + 32));
  (*(*(v52 - 8) + 16))(boxed_opaque_existential_1, a1, v52);
  v77 = 0;
  sub_24FEDDD34();
  LODWORD(v71) = v78;
  v54 = v79;
  v77 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6370, &qword_24FEE4E80);
  sub_24FEDDD54();
  v56 = v73;
  v55 = v74;
  v57 = *(v74 + 16);
  v58 = v75;
  v57(v73, v34, v75);
  v59 = v72;
  sub_24FE58B14(v16, v72, &qword_27F3A7708, &qword_24FEE8A78);
  v70 = v16;
  v60 = v59;
  v61 = v76;
  v57(v76, v56, v58);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7740, &qword_24FEE8AA0);
  sub_24FE58B14(v60, &v61[*(v62 + 48)], &qword_27F3A7708, &qword_24FEE8A78);
  v63 = &v61[*(v62 + 64)];
  *v63 = 1;
  v63[8] = v71;
  *(v63 + 2) = v54;
  *(v63 + 3) = v51;
  *(v63 + 2) = xmmword_24FEE3D90;

  sub_24FE58B7C(v70, &qword_27F3A7708, &qword_24FEE8A78);
  v64 = *(v55 + 8);
  v64(v34, v58);

  sub_24FE58B7C(v60, &qword_27F3A7708, &qword_24FEE8A78);
  return (v64)(v56, v58);
}

uint64_t sub_24FED188C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FED18F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24FEDDF44();
  v6 = v5;
  v7 = *(a1 + *(type metadata accessor for DocumentTableView(0) + 40));
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
  *(a2 + 40) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7748, &qword_24FEE8AA8);
  sub_24FED1A08(a1, 1, a2 + *(v8 + 44));
  v9 = sub_24FEDD874();
  KeyPath = swift_getKeyPath();
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7720, &qword_24FEE8A88) + 36));
  *v11 = KeyPath;
  v11[1] = v9;
  LOBYTE(v9) = sub_24FEDD744();
  sub_24FEDD014();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7700, &qword_24FEE8A70);
  v21 = a2 + *(result + 36);
  *v21 = v9;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_24FED1A08@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = type metadata accessor for DocumentTableView(0);
  v6 = v5 - 8;
  v47 = *(v5 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7750, &qword_24FEE8AE0);
  v55 = *(v51 - 8);
  v8 = v55[8];
  MEMORY[0x28223BE20](v51);
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7758, &qword_24FEE8AE8);
  v53 = *(v49 - 8);
  v13 = v53[8];
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7760, &qword_24FEE8AF0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v54 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v42 - v23;
  *v24 = 0;
  v24[8] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7768, &qword_24FEE8AF8);
  sub_24FED204C(a1, a2, &v24[*(v25 + 36)]);
  *&v24[*(v19 + 44)] = 256;
  v45 = v24;
  LODWORD(v19) = sub_24FEDD634();
  sub_24FEDDF34();
  sub_24FEDD0F4();
  v56 = v19 | 0x3F00000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7770, &qword_24FEE8B00);
  sub_24FED3670();
  v44 = v17;
  sub_24FEDDA54();
  v56 = *(a1 + *(v6 + 32));
  KeyPath = swift_getKeyPath();
  sub_24FED38F8(a1, &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DocumentTableView);
  v26 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v27 = swift_allocObject();
  sub_24FED37B8(&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A77A0, &qword_24FEE8B38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A77A8, &qword_24FEE8B40);
  sub_24FE58928(&qword_27F3A77B0, &qword_27F3A77A0, &qword_24FEE8B38);
  sub_24FED188C(&qword_27F3A5E30, MEMORY[0x277CC95F0]);
  sub_24FE58928(&qword_27F3A77B8, &qword_27F3A77A8, &qword_24FEE8B40);
  v43 = v12;
  sub_24FEDDE94();
  v28 = v54;
  sub_24FE58B14(v24, v54, &qword_27F3A7760, &qword_24FEE8AF0);
  v29 = v53[2];
  v30 = v48;
  v31 = v49;
  v29(v48, v17, v49);
  v32 = v55[2];
  v33 = v50;
  v34 = v12;
  v35 = v51;
  v32(v50, v34, v51);
  v36 = v28;
  v37 = v52;
  sub_24FE58B14(v36, v52, &qword_27F3A7760, &qword_24FEE8AF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A77C0, &qword_24FEE8B48);
  v29((v37 + *(v38 + 48)), v30, v31);
  v32((v37 + *(v38 + 64)), v33, v35);
  v39 = v55[1];
  v39(v43, v35);
  v40 = v53[1];
  v40(v44, v31);
  sub_24FE58B7C(v45, &qword_27F3A7760, &qword_24FEE8AF0);
  v39(v33, v35);
  v40(v30, v31);
  return sub_24FE58B7C(v54, &qword_27F3A7760, &qword_24FEE8AF0);
}

uint64_t sub_24FED204C@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  LODWORD(v44) = a2;
  v48 = a3;
  v4 = type metadata accessor for DocumentTableView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7810, &qword_24FEE8BB0);
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = v4;
  v49 = *(a1 + *(v4 + 20));
  swift_getKeyPath();
  sub_24FED38F8(a1, &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DocumentTableView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_24FED37B8(&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7818, &qword_24FEE8BD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7820, &qword_24FEE8BE0);
  sub_24FE58928(&qword_27F3A7828, &qword_27F3A7818, &qword_24FEE8BD8);
  sub_24FED188C(&qword_27F3A5E30, MEMORY[0x277CC95F0]);
  v50 = MEMORY[0x277CE0BD8];
  v51 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v16 = v12;
  sub_24FEDDE94();
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (v44)
  {
    v17 = sub_24FEDDC44();
    v24 = *(v13 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    sub_24FEDD0C4();
    sub_24FEDDF34();
    sub_24FEDD0F4();
    v18 = v50;
    v19 = v51;
    v20 = v52;
    v21 = v53;
    v22 = v54;
    v23 = v55;
  }

  v41 = v20;
  v42 = v22;
  v43 = v23;
  v44 = v21;
  v25 = v45;
  v26 = *(v45 + 16);
  v27 = v17;
  v28 = v47;
  v29 = v16;
  v30 = v19;
  v31 = v18;
  v32 = v46;
  v26(v47, v16, v46);
  v33 = v48;
  v26(v48, v28, v32);
  v34 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7830, &unk_24FEE8BE8) + 48)];
  *v34 = v27;
  v34[1] = v31;
  v35 = v41;
  v34[2] = v30;
  v34[3] = v35;
  v37 = v42;
  v36 = v43;
  v34[4] = v44;
  v34[5] = v37;
  v34[6] = v36;
  v38 = *(v25 + 8);
  v38(v29, v32);

  return (v38)(v28, v32);
}

uint64_t sub_24FED24A4(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for DocumentTableView.RowHeader(0) + 20));
  v16 = *v3;
  v17 = v3[1];
  sub_24FEAD080();

  v4 = sub_24FEDD9F4();
  v6 = v5;
  v8 = v7;
  sub_24FEDD804();
  v9 = sub_24FEDD8E4();
  v11 = v10;
  v13 = v12;
  sub_24FE56B94(v4, v6, v8 & 1);

  sub_24FEDD724();
  v14 = *(a2 + *(type metadata accessor for DocumentTableView(0) + 32));
  sub_24FEDDF44();
  sub_24FEDDB94();
  sub_24FE56B94(v9, v11, v13 & 1);
}

uint64_t sub_24FED2600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v53 = a3;
  v5 = type metadata accessor for DocumentTableView.TableDatum(0);
  v45 = *(v5 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A77C8, &qword_24FEE8B50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A77D0, &qword_24FEE8B58);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A77D8, &qword_24FEE8B60);
  v47 = *(v50 - 8);
  v17 = *(v47 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  *v16 = 0;
  v16[8] = 1;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A77E0, &qword_24FEE8B68) + 36);
  v43 = v5;
  v23 = *(v5 + 20);
  v46 = a1;
  v24 = *(a1 + v23);
  v54 = v24;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A77E8, &qword_24FEE8BA0);
  sub_24FE58928(&qword_27F3A77F0, &qword_27F3A77E8, &qword_24FEE8BA0);
  sub_24FEDDE94();
  *&v16[*(v13 + 36)] = 256;
  sub_24FEDD724();
  v25 = type metadata accessor for DocumentTableView(0);
  v26 = *(a2 + *(v25 + 32));
  sub_24FEDDF44();
  sub_24FED3840();
  v48 = v21;
  sub_24FEDDB94();
  result = sub_24FE58B7C(v16, &qword_27F3A77D0, &qword_24FEE8B58);
  v28 = *(a2 + *(v25 + 24));
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = v44;
    sub_24FED38F8(v28 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * (v29 - 1), v44, type metadata accessor for DocumentTableView.TableDatum);
    if (_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) != 0 && (sub_24FEA9CC0(v24, *(v30 + *(v43 + 20))))
    {
      sub_24FED3960(v30);
      v31 = 1;
      v32 = v51;
    }

    else
    {
      sub_24FED3960(v30);
      v32 = v51;
      sub_24FEDDE74();
      v31 = 0;
    }

    v33 = sub_24FEDDE84();
    (*(*(v33 - 8) + 56))(v32, v31, 1, v33);
    v35 = v47;
    v34 = v48;
    v36 = *(v47 + 16);
    v38 = v49;
    v37 = v50;
    v36(v49, v48, v50);
    v39 = v52;
    sub_24FED39BC(v32, v52);
    v40 = v53;
    v36(v53, v38, v37);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7808, &qword_24FEE8BA8);
    sub_24FED39BC(v39, &v40[*(v41 + 48)]);
    sub_24FE58B7C(v32, &qword_27F3A77C8, &qword_24FEE8B50);
    v42 = *(v35 + 8);
    v42(v34, v37);
    sub_24FE58B7C(v39, &qword_27F3A77C8, &qword_24FEE8B50);
    return (v42)(v38, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24FED2B5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  sub_24FEAD080();

  result = sub_24FEDD9F4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_24FED2BC8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = sub_24FEDDF24();
  *(a2 + 1) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7670, &qword_24FEE8930);
  sub_24FED101C(v2, &a2[*(v6 + 44)]);
  v7 = sub_24FEDD734();
  v8 = -*(v2 + *(a1 + 40));
  sub_24FEDD014();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7678, &qword_24FEE8938);
  v18 = &a2[*(result + 36)];
  *v18 = v7;
  *(v18 + 1) = v10;
  *(v18 + 2) = v12;
  *(v18 + 3) = v14;
  *(v18 + 4) = v16;
  v18[40] = 0;
  return result;
}

uint64_t sub_24FED2C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDC774();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24FED2DDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDC774();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24FED2F0C()
{
  sub_24FEDC774();
  if (v0 <= 0x3F)
  {
    sub_24FED0994(319, &qword_27F3A7660, type metadata accessor for DocumentTableView.RowHeader);
    if (v1 <= 0x3F)
    {
      sub_24FED0994(319, &qword_27F3A7668, type metadata accessor for DocumentTableView.TableDatum);
      if (v2 <= 0x3F)
      {
        sub_24FE86B40();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24FED3034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
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

    return (v10 + 1);
  }
}

uint64_t sub_24FED3108(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDCA64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24FED31D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24FED32A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDCA64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24FED3360()
{
  sub_24FEDCA64();
  if (v0 <= 0x3F)
  {
    sub_24FED33E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24FED33E4()
{
  if (!qword_27F3A76C8)
  {
    v0 = sub_24FEDE3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A76C8);
    }
  }
}

unint64_t sub_24FED3438()
{
  result = qword_27F3A76D8;
  if (!qword_27F3A76D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7678, &qword_24FEE8938);
    sub_24FE58928(&qword_27F3A76E0, &qword_27F3A76E8, &qword_24FEE8A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A76D8);
  }

  return result;
}

unint64_t sub_24FED34F8()
{
  result = qword_27F3A7710;
  if (!qword_27F3A7710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7700, &qword_24FEE8A70);
    sub_24FED3584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7710);
  }

  return result;
}

unint64_t sub_24FED3584()
{
  result = qword_27F3A7718;
  if (!qword_27F3A7718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7720, &qword_24FEE8A88);
    sub_24FE58928(&qword_27F3A7728, &qword_27F3A7730, &unk_24FEE8A90);
    sub_24FE58928(&qword_27F3A6298, &qword_27F3A62A0, &qword_24FEE4DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7718);
  }

  return result;
}

unint64_t sub_24FED3670()
{
  result = qword_27F3A7778;
  if (!qword_27F3A7778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7770, &qword_24FEE8B00);
    sub_24FED36FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7778);
  }

  return result;
}

unint64_t sub_24FED36FC()
{
  result = qword_27F3A7780;
  if (!qword_27F3A7780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A7788, &qword_24FEE8B08);
    sub_24FE8C6B0();
    sub_24FE58928(&qword_27F3A7790, &qword_27F3A7798, &qword_24FEE8B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7780);
  }

  return result;
}

uint64_t sub_24FED37B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentTableView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FED3834@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

unint64_t sub_24FED3840()
{
  result = qword_27F3A77F8;
  if (!qword_27F3A77F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A77D0, &qword_24FEE8B58);
    sub_24FE58928(&qword_27F3A7800, &qword_27F3A77E0, &qword_24FEE8B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A77F8);
  }

  return result;
}

uint64_t sub_24FED38F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FED3960(uint64_t a1)
{
  v2 = type metadata accessor for DocumentTableView.TableDatum(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FED39BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A77C8, &qword_24FEE8B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for DocumentTableView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_24FEDC774();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);

  v7 = *(v0 + v3 + v1[8]);

  v8 = v1[9];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FED3B80(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DocumentTableView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t InlineElementTextColorParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-1] - v6;
  sub_24FED3DE4();
  sub_24FEDC6D4();
  if (v14[1])
  {
    v8 = sub_24FEDDC84();
    v9 = sub_24FEDC774();
    (*(*(v9 - 8) + 16))(a2, a1, v9);
    sub_24FEDC6B4();
    v14[4] = v8;

    sub_24FE8BF90();
    v10 = sub_24FEDC794();
    sub_24FEA6440();
    sub_24FEDC8F4();
    v10(v14, 0);

    return sub_24FEC8E64(v7);
  }

  else
  {
    v12 = sub_24FEDC774();
    return (*(*(v12 - 8) + 16))(a2, a1, v12);
  }
}

unint64_t sub_24FED3DE4()
{
  result = qword_27F3A7838;
  if (!qword_27F3A7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7838);
  }

  return result;
}

uint64_t static TextColorAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *static TextColorAttribute.name;

  return v0;
}

uint64_t static TextColorAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static TextColorAttribute.name = a1;
  *&static TextColorAttribute.name[8] = a2;
}

uint64_t sub_24FED3FC8()
{
  swift_beginAccess();
  v0 = *static TextColorAttribute.name;

  return v0;
}

unint64_t sub_24FED402C()
{
  result = qword_27F3A7850;
  if (!qword_27F3A7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7850);
  }

  return result;
}

uint64_t GlossaryLinkHandler.GlossaryLinkHandlerError.hashValue.getter()
{
  sub_24FEDE904();
  MEMORY[0x25305AB10](0);
  return sub_24FEDE924();
}

uint64_t GlossaryLinkHandler.GlossaryLink.init(url:)(uint64_t a1)
{
  result = sub_24FED4280(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t GlossaryLinkHandler.getGlossaryLink(url:)(uint64_t a1)
{
  v3 = sub_24FEDC9E4();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  result = sub_24FED4280(v7);
  if (v1)
  {
    return v10;
  }

  return result;
}

uint64_t sub_24FED4280(uint64_t a1)
{
  v61 = sub_24FEDC4A4();
  v3 = *(v61 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v61);
  v57 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v48 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v48 - v10;
  MEMORY[0x28223BE20](v12);
  v56 = v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6A30, &unk_24FEE63A8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v48 - v16;
  v18 = sub_24FEDC504();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDC4D4();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_24FED4934(v17);
    goto LABEL_27;
  }

  (*(v19 + 32))(v22, v17, v18);
  result = sub_24FEDC4B4();
  v24 = v22;
  if (!result)
  {
    (*(v19 + 8))(v22, v18);
LABEL_27:
    sub_24FED499C();
    swift_allocError();
    swift_willThrow();
    v47 = sub_24FEDC9E4();
    (*(*(v47 - 8) + 8))(a1, v47);
    return v8;
  }

  v25 = result;
  v52 = v24;
  v53 = v19;
  v54 = v18;
  v55 = a1;
  v50 = v8;
  v51 = v1;
  v58 = *(result + 16);
  if (!v58)
  {
LABEL_11:

    (*(v53 + 8))(v52, v54);
    a1 = v55;
    goto LABEL_27;
  }

  v26 = 0;
  v59 = v3 + 16;
  v60 = (v3 + 8);
  while (1)
  {
    if (v26 >= *(v25 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v8 = *(v3 + 72);
    v28 = *(v3 + 16);
    v28(v11, v25 + v27 + v8 * v26, v61);
    if (sub_24FEDC484() == 25705 && v29 == 0xE200000000000000)
    {
      break;
    }

    v30 = sub_24FEDE844();

    if (v30)
    {
      goto LABEL_14;
    }

    ++v26;
    result = (*v60)(v11, v61);
    if (v58 == v26)
    {
      goto LABEL_11;
    }
  }

LABEL_14:
  v31 = v56;
  v32 = v61;
  v49 = *(v3 + 32);
  v49(v56, v11, v61);
  v33 = sub_24FEDC494();
  v35 = v34;
  v56 = *(v3 + 8);
  result = (v56)(v31, v32);
  if (!v35)
  {
    (*(v53 + 8))(v52, v54);

    a1 = v55;
    goto LABEL_27;
  }

  v48[0] = v33;
  v48[1] = v35;
  v36 = 0;
  v37 = 0x746E65746E6F63;
  v38 = v25 + v27;
  while (v36 < *(v25 + 16))
  {
    v28(v57, v38, v61);
    if (sub_24FEDC484() == v37 && v39 == 0xE700000000000000)
    {

LABEL_24:

      v42 = v50;
      v43 = v61;
      v49(v50, v57, v61);
      sub_24FEDC494();
      v45 = v44;
      (*(v53 + 8))(v52, v54);
      (v56)(v42, v43);
      a1 = v55;
      v8 = v48[0];
      if (v45)
      {
        v46 = sub_24FEDC9E4();
        (*(*(v46 - 8) + 8))(a1, v46);
        return v8;
      }

      goto LABEL_27;
    }

    v40 = v37;
    v41 = sub_24FEDE844();

    if (v41)
    {
      goto LABEL_24;
    }

    ++v36;
    result = (v56)(v57, v61);
    v38 += v8;
    v37 = v40;
    if (v58 == v36)
    {

      goto LABEL_11;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_24FED48AC()
{
  result = qword_27F3A7858;
  if (!qword_27F3A7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7858);
  }

  return result;
}

uint64_t sub_24FED4934(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6A30, &unk_24FEE63A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FED499C()
{
  result = qword_27F3A7860;
  if (!qword_27F3A7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7860);
  }

  return result;
}

id sub_24FED4A14()
{
  type metadata accessor for ResourceBundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F3B3150 = result;
  return result;
}

uint64_t _s16MarkdownDocument13AssetLocationO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDC9E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AssetLocation();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7890, &qword_24FEE8F60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  v21 = *(v20 + 56);
  sub_24FED4E04(a1, &v27 - v18);
  sub_24FED4E04(a2, &v19[v21]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24FED4E04(v19, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 32))(v8, &v19[v21], v4);
      v22 = sub_24FEDC994();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
LABEL_9:
      sub_24FED4ED0(v19);
      return v22 & 1;
    }

    (*(v5 + 8))(v12, v4);
  }

  else
  {
    sub_24FED4E04(v19, v15);
    v24 = *v15;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v25 = *&v19[v21];
      sub_24FE62F4C(0, &qword_27F3A7898, 0x277D82BB8);
      v22 = sub_24FEDE544();

      goto LABEL_9;
    }
  }

  sub_24FED4E68(v19);
  v22 = 0;
  return v22 & 1;
}

uint64_t type metadata accessor for AssetLocation()
{
  result = qword_27F3A7870;
  if (!qword_27F3A7870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FED4D80()
{
  result = sub_24FE62F4C(319, &unk_27F3A7880, 0x277CCA8D8);
  if (v1 <= 0x3F)
  {
    result = sub_24FEDC9E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24FED4E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FED4E68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7890, &qword_24FEE8F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FED4ED0(uint64_t a1)
{
  v2 = type metadata accessor for AssetLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AttributeScopes.MarkdownDocumentAttributes.swiftUI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDC564();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24FED4FFC()
{
  sub_24FED5340(&qword_27F3A78C8);

  return sub_24FEDC544();
}

uint64_t sub_24FED5064()
{
  sub_24FED5340(&qword_27F3A78C8);

  return sub_24FEDC544();
}

uint64_t type metadata accessor for AttributeScopes.MarkdownDocumentAttributes()
{
  result = qword_27F3A78B8;
  if (!qword_27F3A78B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FED5198(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDC564();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24FED5218(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDC564();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24FED5288()
{
  result = sub_24FEDC564();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24FED5340(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttributeScopes.MarkdownDocumentAttributes();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24FED5384(uint64_t a1)
{
  v88 = a1;
  v1 = sub_24FEDC854();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v78 = &v60 - v8;
  v87 = sub_24FEDC894();
  v72 = *(v87 - 8);
  v9 = *(v72 + 64);
  MEMORY[0x28223BE20](v87 - 8);
  v75 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A70C8, &qword_24FEE7AC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v74 = &v60 - v13;
  v84 = sub_24FEDC6E4();
  v79 = *(v84 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_24FEDC6C4();
  v16 = *(v86 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v86);
  v61 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v85 = &v60 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A78D0, qword_24FEE9060);
  v22 = *(v21 - 8);
  v80 = v21 - 8;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v25 = &v60 - v24;
  v26 = sub_24FEDC6F4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v60 - v32;
  sub_24FEDC704();
  v63 = v27;
  v34 = *(v27 + 16);
  v62 = v33;
  v34(v30, v33, v26);
  v35 = MEMORY[0x277CC8C08];
  sub_24FED5D60(&qword_27F3A78D8, MEMORY[0x277CC8C08]);
  v81 = v25;
  v82 = v26;
  sub_24FEDE2C4();
  v80 = *(v80 + 44);
  v36 = sub_24FED5D60(&qword_27F3A7160, v35);
  v79 += 8;
  v76 = (v72 + 48);
  v77 = (v16 + 16);
  v70 = (v72 + 32);
  v69 = v2 + 16;
  v68 = v2 + 8;
  v67 = (v72 + 8);
  v65 = (v16 + 32);
  v72 = v16 + 56;
  v71 = (v16 + 8);
  v64 = MEMORY[0x277D84F90];
  v60 = v16;
  v66 = (v16 + 48);
  v73 = v36;
LABEL_2:
  v37 = v81;
  for (i = v82; ; i = v82)
  {
    v40 = v83;
    sub_24FEDE474();
    sub_24FED5D60(&qword_27F3A7168, MEMORY[0x277CC8BF8]);
    v41 = v84;
    v42 = sub_24FEDE194();
    (*v79)(v40, v41);
    if (v42)
    {
      break;
    }

    v43 = sub_24FEDE4A4();
    v45 = v85;
    v44 = v86;
    (*v77)(v85);
    v43(v89, 0);
    sub_24FEDE484();
    sub_24FE8B614();
    v46 = v78;
    sub_24FEDC6D4();
    v47 = v87;
    if ((*v76)(v46, 1, v87) != 1)
    {
      (*v70)(v75, v46, v47);
      result = sub_24FEDC864();
      v49 = result;
      v50 = 0;
      v51 = *(result + 16);
      while (v51 != v50)
      {
        if (v50 >= *(v49 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v2 + 16))(v5, v49 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v50++, v1);
        v52 = sub_24FEDC844();
        result = (*(v2 + 8))(v5, v1);
        if (v52 == v88)
        {
          (*v67)(v75, v87);

          v39 = v74;
          v53 = v86;
          (*v65)(v74, v85, v86);
          v54 = 0;
          goto LABEL_13;
        }
      }

      (*v67)(v75, v87);

      v53 = v86;
      (*v71)(v85, v86);
      v54 = 1;
      v39 = v74;
LABEL_13:
      (*v72)(v39, v54, 1, v53);
      if ((*v66)(v39, 1, v53) == 1)
      {
        goto LABEL_4;
      }

      v55 = *v65;
      (*v65)(v61, v39, v53);
      v56 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_24FEBB01C(0, v56[2] + 1, 1, v56);
      }

      v58 = v56[2];
      v57 = v56[3];
      if (v58 >= v57 >> 1)
      {
        v56 = sub_24FEBB01C(v57 > 1, v58 + 1, 1, v56);
      }

      v56[2] = v58 + 1;
      v59 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v64 = v56;
      v55(v56 + v59 + *(v60 + 72) * v58, v61, v53);
      goto LABEL_2;
    }

    (*v71)(v45, v44);
    sub_24FE58B7C(v46, &qword_27F3A6138, &unk_24FEE4A10);
    v39 = v74;
    (*v72)(v74, 1, 1, v44);
LABEL_4:
    sub_24FE58B7C(v39, &qword_27F3A70C8, &qword_24FEE7AC8);
    v37 = v81;
  }

  sub_24FE58B7C(v37, &qword_27F3A78D0, qword_24FEE9060);
  (*(v63 + 8))(v62, i);
  return v64;
}

uint64_t sub_24FED5D60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MarkdownParser.init(documentElementParsers:includeDefaultDocumentElementParsers:inlineParsers:includeDefaultInlineParsers:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C38, "Lr");
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24FEE3D40;
  v9 = sub_24FE80C7C();
  *(v8 + 32) = &type metadata for DocumentElementCapsuleParser;
  *(v8 + 40) = v9;
  v10 = sub_24FE80CD0();
  *(v8 + 48) = &type metadata for DocumentElementListImageParser;
  *(v8 + 56) = v10;
  v11 = sub_24FE80D24();
  *(v8 + 64) = &type metadata for DocumentElementOutlineParser;
  *(v8 + 72) = v11;
  v12 = sub_24FE80D78();
  *(v8 + 80) = &type metadata for DocumentElementHeadingParser;
  *(v8 + 88) = v12;
  v13 = sub_24FE80DCC();
  *(v8 + 96) = &type metadata for DocumentElementEmbeddedVideoParser;
  *(v8 + 104) = v13;
  v14 = sub_24FE80E20();
  *(v8 + 112) = &type metadata for DocumentElementBreakParser;
  *(v8 + 120) = v14;
  v15 = sub_24FE80E74();
  *(v8 + 128) = &type metadata for DocumentElementTableParser;
  *(v8 + 136) = v15;
  v16 = sub_24FE80EC8();
  *(v8 + 144) = &type metadata for DocumentElementBlockQuoteParser;
  *(v8 + 152) = v16;
  v17 = sub_24FE80F1C();
  *(v8 + 160) = &type metadata for DocumentElementCodeBlockParser;
  *(v8 + 168) = v17;
  v18 = sub_24FE80F70();
  *(v8 + 176) = &type metadata for DocumentElementParagraphParser;
  *(v8 + 184) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C90, &qword_24FEE3E80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24FEE0830;
  *(v19 + 32) = &type metadata for InlineElementGlossaryLinkParser;
  *(v19 + 40) = &protocol witness table for InlineElementGlossaryLinkParser;
  *(v19 + 48) = &type metadata for InlineElementTextColorParser;
  *(v19 + 56) = &protocol witness table for InlineElementTextColorParser;
  if (a2)
  {

    sub_24FEDA17C(a1, sub_24FEBB60C);
    a1 = v8;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FEE0740;
  *(inited + 32) = &type metadata for DocumentElementParagraphParser;
  *(inited + 40) = v18;
  sub_24FEDA17C(inited, sub_24FEBB60C);
  if (a4)
  {

    sub_24FEDA17C(a3, sub_24FEBB5F8);
  }

  return a1;
}

uint64_t sub_24FED5FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v6 = sub_24FEDC6F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24FEDC774();
  (*(*(v11 - 8) + 16))(a3, a1, v11);
  v12 = *(a2 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v28 = v7;
    v29 = a3;
    v30 = v6;
    v34 = MEMORY[0x277D84F90];
    sub_24FEBE280(0, v12, 0);
    v13 = v34;
    v14 = (a2 + 32);
    do
    {
      v31 = *v14;
      v15 = *(&v31 + 1);
      v16 = *(*(&v31 + 1) + 16);
      v33 = v31;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
      v18 = v31;
      v19 = v16(v31, v15);
      v34 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_24FEBE280((v20 > 1), v21 + 1, 1);
      }

      v22 = *(*(v18 - 8) + 64);
      MEMORY[0x28223BE20](v19);
      v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v24, boxed_opaque_existential_1, v18);
      sub_24FEDA9CC(v21, v24, &v34, v18, v15, sub_24FE731F4);
      __swift_destroy_boxed_opaque_existential_1(v32);
      v13 = v34;
      ++v14;
      --v12;
    }

    while (v12);
    a3 = v29;
    v6 = v30;
    v7 = v28;
  }

  sub_24FEDC704();
  sub_24FEDAFEC(v10, v13, a3);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_24FED62B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7358, &qword_24FEE91E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v85 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B8, &qword_24FEE63A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = &v79 - v10;
  v83 = sub_24FEDC774();
  v11 = *(v83 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v81 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v92 = &v79 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7908, &qword_24FEE91E8);
  v19 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v79 - v20;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v21 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v23 = &v79 - v22;
  v89 = sub_24FEDC5F4();
  v104 = *(v89 - 8);
  v24 = *(v104 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_24FEDC6E4();
  v100 = *(v103 - 8);
  v26 = *(v100 + 64);
  MEMORY[0x28223BE20](v103);
  v102 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_24FEDC6C4();
  v28 = *(v93 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v93);
  v32 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v99 = &v79 - v33;
  v34 = sub_24FEDC6F4();
  v106 = v34;
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v79 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A78D0, qword_24FEE9060);
  v40 = v39 - 8;
  v41 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v79 - v42;
  v44 = *(v11 + 16);
  v96 = (v11 + 16);
  v44(a2, v105, v83);
  v105 = a2;
  sub_24FEDC704();
  (*(v35 + 16))(v43, v38, v34);
  v45 = *(v40 + 44);
  v46 = sub_24FEDBC94(&qword_27F3A7160, MEMORY[0x277CC8C08]);
  v101 = v45;
  sub_24FEDE454();
  v47 = v38;
  v48 = v93;
  (*(v35 + 8))(v47, v34);
  v100 += 8;
  v98 = (v28 + 16);
  v97 = (v28 + 32);
  v87 = (v104 + 8);
  v80 = v96 - 1;
  v96 = (v28 + 8);
  v104 = v46;
  while (1)
  {
    v58 = v102;
    sub_24FEDE474();
    sub_24FEDBC94(&qword_27F3A7168, MEMORY[0x277CC8BF8]);
    v59 = v103;
    v60 = sub_24FEDE194();
    (*v100)(v58, v59);
    if (v60)
    {
      return sub_24FE58B7C(v43, &qword_27F3A78D0, qword_24FEE9060);
    }

    v61 = sub_24FEDE4A4();
    v62 = v99;
    (*v98)(v99);
    v61(&v109, 0);
    sub_24FEDE484();
    (*v97)(v32, v62, v48);
    sub_24FEA6FA4();
    sub_24FEDC6D4();
    if ((v110 & 1) == 0 && v109 == 64)
    {
      v63 = v88;
      sub_24FEDC5C4();
      sub_24FEDC6B4();
      v64 = v90;
      sub_24FEDC604();
      sub_24FE58B7C(v23, &qword_27F3A6160, &unk_24FEE4A80);
      (*v87)(v63, v89);
      v65 = *(v91 + 36);
      v66 = *(v91 + 40);
      sub_24FEDBC94(&qword_27F3A7910, MEMORY[0x277CC8B68]);
      v67 = sub_24FEDE464();
      sub_24FE58B7C(v64, &qword_27F3A7908, &qword_24FEE91E8);
      if (v67 == 1)
      {
        v86 = sub_24FE8B614();
        sub_24FEDC6D4();
        sub_24FEDC6B4();
        v49 = v82;
        sub_24FEDC5B4();
        sub_24FE8BF90();
        sub_24FEDBC94(&qword_27F3A6D10, MEMORY[0x277CC8C40]);
        v50 = v83;
        sub_24FEDC5E4();
        (*v80)(v49, v50);
        sub_24FE58B7C(v23, &qword_27F3A6160, &unk_24FEE4A80);
        sub_24FEDC6B4();
        v51 = sub_24FEDC794();
        v107 = 128;
        v108 = 0;
        sub_24FEDC8F4();
        v51(&v109, 0);
        sub_24FE58B7C(v23, &qword_27F3A6160, &unk_24FEE4A80);
        sub_24FEDC6B4();
        v48 = v93;
        v52 = sub_24FEDC794();
        v53 = v23;
        v54 = v92;
        sub_24FE58B14(v92, v81, &qword_27F3A6138, &unk_24FEE4A10);
        sub_24FEDC8F4();
        v52(&v109, 0);
        sub_24FE58B7C(v53, &qword_27F3A6160, &unk_24FEE4A80);
        v55 = v54;
        v23 = v53;
        v56 = &qword_27F3A6138;
        v57 = &unk_24FEE4A10;
LABEL_3:
        sub_24FE58B7C(v55, v56, v57);
        goto LABEL_4;
      }
    }

    sub_24FEA63EC();
    v68 = v94;
    sub_24FEDC6D4();
    v69 = sub_24FEDC9E4();
    v70 = (*(*(v69 - 8) + 48))(v68, 1, v69);
    sub_24FE58B7C(v68, &qword_27F3A64B8, &qword_24FEE63A0);
    if (v70 != 1)
    {
      sub_24FEDC6B4();
      v73 = sub_24FEDDC74();
      sub_24FE8BF90();
      v74 = sub_24FEDC794();
      v107 = v73;
      sub_24FEA6440();
      sub_24FEDC8F4();
      v74(&v109, 0);
      sub_24FE58B7C(v23, &qword_27F3A6160, &unk_24FEE4A80);
      sub_24FEDC6B4();
      v75 = v84;
      sub_24FEDD9B4();
      v76 = sub_24FEDD9C4();
      (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
      v77 = sub_24FEDC794();
      sub_24FE58B14(v75, v85, &qword_27F3A7358, &qword_24FEE91E0);
      sub_24FEC4C50();
      v48 = v93;
      sub_24FEDC8F4();
      sub_24FE58B7C(v75, &qword_27F3A7358, &qword_24FEE91E0);
      v77(&v109, 0);
      goto LABEL_14;
    }

    sub_24FEDC6D4();
    if ((v110 & 1) == 0 && v109 == 4)
    {
      sub_24FEDC6B4();
      type metadata accessor for MarkdownFont();
      swift_initStaticObject();
      sub_24FE82000(v111);
      v71 = v111[3];
      v116 = v111[0];

      sub_24FE8A8D0(&v116);
      v115 = v111[1];
      sub_24FE8A8D0(&v115);
      v114 = v111[2];
      sub_24FE8A8D0(&v114);

      v113 = v111[4];
      sub_24FE8A8D0(&v113);
      v112 = v111[5];
      sub_24FE8A8D0(&v112);
      sub_24FE8BF90();
      v72 = sub_24FEDC794();
      v107 = v71;
      sub_24FEA7000();
      sub_24FEDC8F4();
      v72(&v109, 0);
LABEL_14:
      v55 = v23;
      v56 = &qword_27F3A6160;
      v57 = &unk_24FEE4A80;
      goto LABEL_3;
    }

LABEL_4:
    (*v96)(v32, v48);
  }
}

uint64_t MarkdownParser.makeDocumentViewModel(attributedString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MarkdownParser.makeDocumentElements(attributedString:)(a1, a2, a3, a4, a5);
  v5 = type metadata accessor for DocumentViewModel();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E18, &qword_24FEE4420);
  sub_24FEDCFA4();
  swift_endAccess();
  return v8;
}

void *MarkdownParser.makeDocumentElements(attributedString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v44 = a5;
  v43 = sub_24FEDC6F4();
  v7 = *(v43 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v43);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24FEDC774();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  (*(v11 + 16))(&v38 - v16, a1, v10);
  v18 = v44;
  sub_24FED62B4(v17, v15);
  v40 = v11;
  v19 = *(v11 + 40);
  v19(v17, v15, v10);
  sub_24FED5FE4(v17, v18, v15);
  v42 = v10;
  v19(v17, v15, v10);
  v48 = MEMORY[0x277D84FA0];
  v20 = *(a2 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v39 = v7;
    v47 = MEMORY[0x277D84F90];
    sub_24FEBE2C0(0, v20, 0);
    v21 = v47;
    v22 = (a2 + 32);
    do
    {
      v44 = *v22;
      v23 = *(&v44 + 1);
      v24 = *(*(&v44 + 1) + 32);
      v46 = v44;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
      v26 = v44;
      v27 = v24(v44, v23);
      v47 = v21;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_24FEBE2C0((v28 > 1), v29 + 1, 1);
      }

      v30 = *(*(v26 - 8) + 64);
      MEMORY[0x28223BE20](v27);
      v32 = &v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v32, boxed_opaque_existential_1, v26);
      sub_24FEDA9CC(v29, v32, &v47, v26, v23, sub_24FE731F4);
      __swift_destroy_boxed_opaque_existential_1(v45);
      v21 = v47;
      ++v22;
      --v20;
    }

    while (v20);
    v34 = v43;
    v7 = v39;
  }

  else
  {
    v34 = v43;
  }

  v35 = v41;
  sub_24FEDC704();
  v36 = sub_24FEDAAE8(v35, &v48, v21, v17);

  (*(v7 + 8))(v35, v34);

  (*(v40 + 8))(v17, v42);
  return v36;
}

uint64_t MarkdownParser.makeDocumentViewModel(from:)()
{
  v0 = type metadata accessor for DocumentViewModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E18, &qword_24FEE4420);
  sub_24FEDCFA4();
  swift_endAccess();
  return v3;
}

uint64_t MarkdownParser.makeDocumentElement(imageData:isFirst:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for DocumentDataImageElement();
  a4[3] = v8;
  a4[4] = sub_24FEDBC94(&qword_27F3A78E0, type metadata accessor for DocumentDataImageElement);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  v10 = (boxed_opaque_existential_1 + v8[5]);
  *v10 = a1;
  v10[1] = a2;
  *(boxed_opaque_existential_1 + v8[6]) = 0;
  *(boxed_opaque_existential_1 + v8[7]) = a3;

  return sub_24FE62C94(a1, a2);
}

uint64_t sub_24FED7798@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24FEDC7E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F68, &qword_24FEE5350);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A78F0, &qword_24FEE91C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FEE0740;
  v12 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v13 = v12;
  sub_24FEDB5A8(inited);
  swift_setDeallocating();
  sub_24FEDBC38(inited + 32);
  sub_24FEDC964();

  sub_24FEDC7D4();
  (*(v3 + 8))(v6, v2);
  v14 = sub_24FEDCE94();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_24FE58B7C(v10, &qword_27F3A5F68, &qword_24FEE5350);
    sub_24FEDCE94();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  else
  {
    (*(v15 + 32))(a1, v10, v14);
    return (*(v15 + 56))(a1, 0, 1, v14);
  }
}

uint64_t MarkdownParser.makeFileDocumentElement(url:fileName:mimeType:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v41 = a4;
  v42 = a3;
  v39 = a5;
  v40 = a2;
  v35 = sub_24FEDCE94();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v35);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24FEDC9E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24FEDCA64();
  v15 = *(v36 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v36);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F68, &qword_24FEE5350);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v35 - v24;
  sub_24FED7798(&v35 - v24);
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  v26 = *(v11 + 16);
  v37 = v14;
  v38 = v10;
  v26(v14, a1, v10);
  v27 = v35;
  sub_24FE58B14(v25, v23, &qword_27F3A5F68, &qword_24FEE5350);
  v28 = *(v6 + 48);
  if (v28(v23, 1, v27) == 1)
  {
    sub_24FEDCE54();
    sub_24FE58B7C(v25, &qword_27F3A5F68, &qword_24FEE5350);
    if (v28(v23, 1, v27) != 1)
    {
      sub_24FE58B7C(v23, &qword_27F3A5F68, &qword_24FEE5350);
    }
  }

  else
  {
    sub_24FE58B7C(v25, &qword_27F3A5F68, &qword_24FEE5350);
    (*(v6 + 32))(v9, v23, v27);
  }

  v29 = type metadata accessor for DocumentFileElement();
  v30 = v39;
  v39[3] = v29;
  v30[4] = sub_24FEDBC94(&qword_27F3A78E8, type metadata accessor for DocumentFileElement);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(v15 + 32))(boxed_opaque_existential_1, v18, v36);
  (*(v11 + 32))(boxed_opaque_existential_1 + v29[5], v37, v38);
  v32 = (boxed_opaque_existential_1 + v29[6]);
  v33 = v42;
  *v32 = v40;
  v32[1] = v33;
  (*(v6 + 32))(boxed_opaque_existential_1 + v29[7], v9, v27);
  *(boxed_opaque_existential_1 + v29[8]) = v41;
}

uint64_t sub_24FED7EA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v66 = a4;
  v63 = a3;
  v67 = sub_24FEDC774();
  v62 = *(v67 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_24FEDC854();
  v74 = *(v70 - 1);
  v11 = v74[8];
  MEMORY[0x28223BE20](v70);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v53 - v16;
  v18 = sub_24FEDC894();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE8B614();
  v65 = a1;
  sub_24FEDC6D4();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    result = sub_24FE58B7C(v17, &qword_27F3A6138, &unk_24FEE4A10);
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0;
    return result;
  }

  v58 = a5;
  v59 = v5;
  v56 = v19;
  v57 = v18;
  (*(v19 + 32))(v22, v17, v18);
  v24 = sub_24FEDC864();
  v25 = *(v24 + 16);
  v55 = a2;
  v60 = v22;
  if (v25)
  {
    *&v71 = MEMORY[0x277D84F90];
    sub_24FEBE300(0, v25, 0);
    v26 = v71;
    v27 = v74[2];
    v28 = *(v74 + 80);
    v61 = v24;
    v29 = v24 + ((v28 + 32) & ~v28);
    v68 = v74[9];
    v69 = v27;
    v74 += 2;
    v30 = v74 - 1;
    do
    {
      v31 = v70;
      v69(v13, v29, v70);
      v32 = sub_24FEDC844();
      (*v30)(v13, v31);
      *&v71 = v26;
      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_24FEBE300((v33 > 1), v34 + 1, 1);
        v26 = v71;
      }

      *(v26 + 16) = v34 + 1;
      *(v26 + 8 * v34 + 32) = v32;
      v29 += v68;
      --v25;
    }

    while (v25);

    a2 = v55;
    v22 = v60;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  v35 = sub_24FEDAA74(v26);

  v36 = *a2;

  v37 = sub_24FED8678(v35, v36);

  if ((v37 & 1) == 0)
  {
    sub_24FED8598(v35);
    result = (*(v56 + 8))(v22, v57);
    goto LABEL_17;
  }

  v54 = v35;
  v38 = *(v63 + 16);
  if (!v38)
  {
LABEL_15:
    (*(v56 + 8))(v60, v57);

LABEL_17:
    v51 = v58;
    *(v58 + 32) = 0;
    *v51 = 0u;
    v51[1] = 0u;
    return result;
  }

  v39 = (v63 + 32);
  v40 = v62 + 16;
  v62 += 8;
  v63 = v40;
  while (1)
  {
    v68 = v38;
    v42 = v39[3];
    v41 = v39[4];
    __swift_project_boxed_opaque_existential_1(v39, v42);
    v43 = v64;
    (*v63)(v64, v66, v67);
    v69 = v41;
    v70 = *(v41 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v45 = sub_24FEDE554();
    v74 = &v53;
    v46 = *(v45 - 8);
    v47 = *(v46 + 64);
    MEMORY[0x28223BE20](v45);
    v49 = &v53 - v48;
    v61 = v42;
    (v70)(v43, v65, v42, v69);
    (*v62)(v43, v67);
    v50 = *(AssociatedTypeWitness - 8);
    if ((*(v50 + 48))(v49, 1, AssociatedTypeWitness) != 1)
    {
      break;
    }

    (*(v46 + 8))(v49, v45);
    AssociatedConformanceWitness = 0;
    v71 = 0u;
    v72 = 0u;
    sub_24FE58B7C(&v71, &qword_27F3A5DD8, &unk_24FEE42C0);
    v39 += 5;
    v38 = v68 - 1;
    if (v68 == 1)
    {
      goto LABEL_15;
    }
  }

  *(&v72 + 1) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v71);
  (*(v50 + 32))(boxed_opaque_existential_1, v49, AssociatedTypeWitness);
  sub_24FE71ADC(&v71, v58);
  sub_24FED8598(v54);
  return (*(v56 + 8))(v60, v57);
}

uint64_t sub_24FED8598(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_24FEDA278(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_24FED8678(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
      v15 = *(v6 + 40);
      result = sub_24FEDE8F4();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      if ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (*(*(v6 + 48) + 8 * v17) != v14)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t static MarkdownParser.getAttributes<A>(keyPath:attributedString:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = sub_24FEDC6F4();
  v18 = *(v6 - 8);
  v7 = *(v18 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDC704();
  v10 = *(v5 + *MEMORY[0x277D84DE8] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_24FEDE354();
  if (sub_24FEDE384())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = sub_24FEDB79C(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {

    v15 = swift_getAssociatedConformanceWitness();
    v14 = MEMORY[0x277D84FA0];
  }

  v19 = v14;
  MEMORY[0x28223BE20](v15);
  *(&v17 - 2) = a3;
  *(&v17 - 1) = a1;
  sub_24FEDE444();
  sub_24FEDBC94(&qword_27F3A78D8, MEMORY[0x277CC8C08]);
  sub_24FEDE2D4();
  (*(v18 + 8))(v9, v6);
  return v20;
}

uint64_t sub_24FED8A70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v32 = a1;
  v33 = a4;
  v31 = *(*a3 + *MEMORY[0x277D84DE8] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_24FEDE554();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = sub_24FEDC814();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v27 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v28 = &v26 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v26 - v21;
  sub_24FEDC6A4();
  sub_24FEDC7F4();
  (*(v10 + 8))(v13, v9);
  if ((*(v14 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v29 + 8))(v8, v30);
  }

  (*(v14 + 32))(v22, v8, AssociatedTypeWitness);
  (*(v14 + 16))(v27, v22, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_24FEDE444();
  v24 = v28;
  sub_24FEDE434();
  v25 = *(v14 + 8);
  v25(v24, AssociatedTypeWitness);
  return (v25)(v22, AssociatedTypeWitness);
}

char *static MarkdownParser.getAttributes<A>(keyPath:markdown:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a2;
  v36 = a3;
  v33 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B8, &qword_24FEE63A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v30 - v6;
  v7 = sub_24FEDC644();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24FEDC654();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24FEDC674();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24FEDC774();
  v31 = *(v21 - 8);
  v32 = v21;
  v22 = *(v31 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v13 + 104))(v16, *MEMORY[0x277CC8BB0], v12);
  (*(v8 + 104))(v11, *MEMORY[0x277CC8B98], v7);
  sub_24FE62C94(v35, v36);
  sub_24FEDC664();
  v25 = sub_24FEDC9E4();
  (*(*(v25 - 8) + 56))(v37, 1, 1, v25);
  type metadata accessor for AttributeScopes.MarkdownDocumentAttributes();
  sub_24FEDBC94(&qword_27F3A78C8, type metadata accessor for AttributeScopes.MarkdownDocumentAttributes);
  v26 = v38;
  sub_24FEDC754();
  if (!v26)
  {
    v28 = v31;
    v27 = v32;
    v20 = static MarkdownParser.getAttributes<A>(keyPath:attributedString:)(v33, v24, v34);
    (*(v28 + 8))(v24, v27);
  }

  return v20;
}

uint64_t MarkdownParser.attributedStringSafeForLaTeX(markdown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34[4] = a5;
  v34[5] = a6;
  v34[2] = a3;
  v34[3] = a4;
  v44 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B8, &qword_24FEE63A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v43 = v34 - v11;
  v12 = sub_24FEDC644();
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12);
  v39 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24FEDC654();
  v35 = *(v37 - 8);
  v15 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24FEDC674();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v38 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B8, &qword_24FEE53B0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v42 = v34 - v22;

  v23 = 4;
  v34[1] = a2;
  v34[0] = a1;
  v24 = &unk_286285D40;
  do
  {
    v25 = *(v24 - 1);
    v26 = *v24;
    v49 = a1;
    v50 = a2;
    v47 = v25;
    v48 = v26;
    v45 = 92;
    v46 = 0xE100000000000000;

    MEMORY[0x25305A470](v25, v26);
    sub_24FEAD080();
    a1 = sub_24FEDE564();
    v28 = v27;

    a2 = v28;
    v24 += 2;
    --v23;
  }

  while (v23);
  swift_arrayDestroy();
  (*(v35 + 104))(v36, *MEMORY[0x277CC8BB0], v37);
  (*(v40 + 104))(v39, *MEMORY[0x277CC8BA0], v41);
  sub_24FEDC664();
  v29 = sub_24FEDC9E4();
  (*(*(v29 - 8) + 56))(v43, 1, 1, v29);
  v30 = v42;
  sub_24FEDC734();
  v31 = sub_24FEDC774();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v30, 0, 1, v31);
  return (*(v32 + 32))(v44, v30, v31);
}

uint64_t sub_24FED9734(uint64_t a1)
{
  v26 = a1;
  v1 = sub_24FEDC634();
  v28 = *(v1 - 8);
  v29 = v1;
  v2 = *(v28 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24FEDC884();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v27 = sub_24FEDC814();
  v17 = *(v27 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v27);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_24FEDC5B4();
  sub_24FEDC804();
  (*(v6 + 104))(v9, *MEMORY[0x277CC8D50], v5);
  v21 = sub_24FEDC894();
  v22 = *(*(v21 - 8) + 56);
  v22(v14, 1, 1, v21);
  sub_24FEDC8A4();
  v22(v16, 0, 1, v21);
  sub_24FE58B14(v16, v14, &qword_27F3A6138, &unk_24FEE4A10);
  sub_24FE8B614();
  sub_24FEDC824();
  sub_24FE58B7C(v16, &qword_27F3A6138, &unk_24FEE4A10);
  v24 = v28;
  v23 = v29;
  (*(v28 + 104))(v4, *MEMORY[0x277CC8B80], v29);
  sub_24FEDC5D4();
  (*(v24 + 8))(v4, v23);
  return (*(v17 + 8))(v20, v27);
}

uint64_t MarkdownParser.attributedStringSafeForLaTeX<A>(markdown:including:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v50 = a8;
  v38[6] = a7;
  v38[5] = a6;
  v38[4] = a5;
  v38[3] = a4;
  v51 = a9;
  v48 = a10;
  v49 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B8, &qword_24FEE63A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v46 = v38 - v14;
  v15 = sub_24FEDC644();
  v44 = *(v15 - 8);
  v45 = v15;
  v16 = *(v44 + 64);
  MEMORY[0x28223BE20](v15);
  v43 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24FEDC654();
  v39 = *(v18 - 8);
  v40 = v18;
  v19 = *(v39 + 64);
  MEMORY[0x28223BE20](v18);
  v41 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24FEDC674();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v42 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B8, &qword_24FEE53B0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v47 = v38 - v26;

  v27 = 4;
  v38[2] = a2;
  v38[1] = a1;
  v28 = &unk_286285DA0;
  do
  {
    v29 = *(v28 - 1);
    v30 = *v28;
    v56 = a1;
    v57 = a2;
    v54 = v29;
    v55 = v30;
    v52 = 92;
    v53 = 0xE100000000000000;

    MEMORY[0x25305A470](v29, v30);
    sub_24FEAD080();
    a1 = sub_24FEDE564();
    v32 = v31;

    a2 = v32;
    v28 += 2;
    --v27;
  }

  while (v27);
  swift_arrayDestroy();
  (*(v39 + 104))(v41, *MEMORY[0x277CC8BB0], v40);
  (*(v44 + 104))(v43, *MEMORY[0x277CC8BA0], v45);

  sub_24FEDC664();
  v33 = sub_24FEDC9E4();
  (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
  v34 = v47;
  sub_24FEDC744();
  v35 = sub_24FEDC774();
  v36 = *(v35 - 8);
  (*(v36 + 56))(v34, 0, 1, v35);
  return (*(v36 + 32))(v51, v34, v35);
}

void *sub_24FEDA074(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24FEBAFF8(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24FEDA17C(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v9 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v9 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + 16 * v9 + 32), (v7 + 32), 16 * v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v10 = *(v4 + 16);
  v11 = __OFADD__(v10, v3);
  v12 = v10 + v3;
  if (!v11)
  {
    *(v4 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24FEDA278(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_24FEDE8F4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_24FEDA57C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24FEDA358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7900, &qword_24FEE91D8);
  result = sub_24FEDE5E4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_24FEDE8F4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24FEDA57C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24FEDA358(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_24FEDA69C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24FEDA7DC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_24FEDE8F4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24FEDE854();
  __break(1u);
  return result;
}

void *sub_24FEDA69C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7900, &qword_24FEE91D8);
  v2 = *v0;
  v3 = sub_24FEDE5D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_24FEDA7DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7900, &qword_24FEE91D8);
  result = sub_24FEDE5E4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_24FEDE8F4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_24FEDA9CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v14[3] = a4;
  v14[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v12 = *a3;
  *(v12 + 16) = a1 + 1;
  return a6(v14, v12 + 40 * a1 + 32);
}

uint64_t sub_24FEDAA74(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25305A620](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_24FEDA278(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void *sub_24FEDAAE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v47 = sub_24FEDC6E4();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v47);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24FEDC6C4();
  v9 = *(v38 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24FEDC6F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A78D0, qword_24FEE9060);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  (*(v13 + 16))(v16, a1, v12);
  v22 = MEMORY[0x277CC8C08];
  sub_24FEDBC94(&qword_27F3A78D8, MEMORY[0x277CC8C08]);
  sub_24FEDE2C4();
  v23 = *(v18 + 44);
  sub_24FEDBC94(&qword_27F3A7160, v22);
  v42 = (v6 + 8);
  v35 = (v9 + 8);
  v36 = (v9 + 16);
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    v25 = v43;
    sub_24FEDE474();
    sub_24FEDBC94(&qword_27F3A7168, MEMORY[0x277CC8BF8]);
    v26 = v47;
    v27 = sub_24FEDE194();
    (*v42)(v25, v26);
    if (v27)
    {
      sub_24FE58B7C(v21, &qword_27F3A78D0, qword_24FEE9060);
      return v24;
    }

    v28 = sub_24FEDE4A4();
    v29 = v37;
    v30 = v38;
    (*v36)(v37);
    v28(v46, 0);
    sub_24FEDE484();
    sub_24FED7EA8(v29, v39, v40, v41, &v44);
    if (v4)
    {
      break;
    }

    (*v35)(v29, v30);
    if (v45)
    {
      sub_24FE71ADC(&v44, v46);
      sub_24FE71ADC(v46, &v44);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_24FEBAFF8(0, v24[2] + 1, 1, v24);
      }

      v32 = v24[2];
      v31 = v24[3];
      if (v32 >= v31 >> 1)
      {
        v24 = sub_24FEBAFF8((v31 > 1), v32 + 1, 1, v24);
      }

      v24[2] = v32 + 1;
      sub_24FE71ADC(&v44, &v24[5 * v32 + 4]);
    }

    else
    {
      sub_24FE58B7C(&v44, &qword_27F3A5DD8, &unk_24FEE42C0);
    }
  }

  (*v35)(v29, v30);
  sub_24FE58B7C(v21, &qword_27F3A78D0, qword_24FEE9060);

  return v24;
}

uint64_t sub_24FEDAFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v52 = a2;
  v45 = sub_24FEDC774();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v45);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v58 = &v40[-v9];
  v51 = sub_24FEDC6E4();
  v56 = *(v51 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = sub_24FEDC6C4();
  v41 = *(v53 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v53);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_24FEDC6F4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A78D0, qword_24FEE9060);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v40[-v23];
  (*(v16 + 16))(v19, a1, v15);
  v25 = MEMORY[0x277CC8C08];
  sub_24FEDBC94(&qword_27F3A78D8, MEMORY[0x277CC8C08]);
  v49 = v15;
  sub_24FEDE2C4();
  v48 = *(v21 + 44);
  v26 = v14;
  v27 = sub_24FEDBC94(&qword_27F3A7160, v25);
  v47 = (v56 + 8);
  v43 = (v41 + 16);
  v42 = v52 + 32;
  v55 = (v4 + 8);
  v56 = v4 + 16;
  v54 = (v4 + 40);
  v41 += 8;
  v46 = v24;
  v44 = v27;
  v62 = v14;
  while (1)
  {
    v28 = v50;
    sub_24FEDE474();
    sub_24FEDBC94(&qword_27F3A7168, MEMORY[0x277CC8BF8]);
    v29 = v51;
    v30 = sub_24FEDE194();
    (*v47)(v28, v29);
    if (v30)
    {
      break;
    }

    v31 = sub_24FEDE4A4();
    (*v43)(v26);
    v31(v59, 0);
    sub_24FEDE484();
    v32 = v45;
    v33 = *(v52 + 16);
    for (i = v42; v33; --v33)
    {
      sub_24FE72D1C(i, v59);
      v36 = v60;
      v35 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v37 = v57;
      (*v56)(v8, v57, v32);
      v38 = v58;
      (*(v35 + 8))(v8, v62, v36, v35);
      (*v55)(v8, v32);
      (*v54)(v37, v38, v32);
      __swift_destroy_boxed_opaque_existential_1(v59);
      i += 40;
    }

    v26 = v62;
    (*v41)(v62, v53);
    v24 = v46;
  }

  return sub_24FE58B7C(v24, &qword_27F3A78D0, qword_24FEE9060);
}

uint64_t sub_24FEDB5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A78F8, &qword_24FEE91D0);
    v3 = sub_24FEDE5F4();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_24FEDE1F4();
      sub_24FEDE904();
      v29 = v7;
      sub_24FEDE254();
      v9 = sub_24FEDE924();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_24FEDE1F4();
        v20 = v19;
        if (v18 == sub_24FEDE1F4() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_24FEDE844();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24FEDB79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v41 - v11;
  v42 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  if (sub_24FEDE384())
  {
    sub_24FEDE604();
    v16 = sub_24FEDE5F4();
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v46 = sub_24FEDE384();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_24FEDE364();
    sub_24FEDE334();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_24FEDE644();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_24FEDE154();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v9, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_24FEDE194();
        v35 = *v50;
        (*v50)(v9, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24FEDBB74@<X0>(uint64_t *a1@<X8>)
{
  result = type metadata accessor for AttributeScopes.MarkdownDocumentAttributes();
  *a1 = result;
  return result;
}

uint64_t sub_24FEDBBA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24FEDBBE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24FEDBC38(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FEDBC94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MarkdownParserErrors.hashValue.getter(unsigned __int8 a1)
{
  sub_24FEDE904();
  MEMORY[0x25305AB10](a1);
  return sub_24FEDE924();
}

unint64_t sub_24FEDBD60()
{
  result = qword_27F3A7918;
  if (!qword_27F3A7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7918);
  }

  return result;
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_27F3B30C0 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_27F3B30B4 > a2)
  {
    return 1;
  }

  if (dword_27F3B30B4 < a2)
  {
    return 0;
  }

  return dword_27F3B30B8 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27F3B30C8 == -1)
  {
    if (qword_27F3B30D0)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27F3B30D0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27F3B30C0 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27F3B30B4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27F3B30B4 >= a3)
      {
        result = dword_27F3B30B8 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27F3B30D0;
  if (qword_27F3B30D0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27F3B30D0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x25305ACE0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27F3B30B4, &dword_27F3B30B8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}