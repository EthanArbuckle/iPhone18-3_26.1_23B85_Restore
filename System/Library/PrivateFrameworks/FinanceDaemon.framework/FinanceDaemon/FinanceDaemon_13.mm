void sub_226BF7C3C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F58, &unk_226D77078);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v10 = [a2 changedObjectID];
  v11 = type metadata accessor for AccountMatchMappingModel.Change();
  v12 = *(a1 + *(v11 + 24));
  v13 = sub_226D6EC3C();

  if (v13)
  {
    sub_226BF7348(a2, v9);
    v14 = *(*(v11 - 8) + 48);
    if (v14(v9, 1, v11) == 1)
    {
      sub_226BFB5F4(a1, a3, type metadata accessor for AccountMatchMappingModel.Change);
      if (v14(v9, 1, v11) != 1)
      {
        sub_226AC47B0(v9, &qword_27D7A7F58, &unk_226D77078);
      }
    }

    else
    {
      sub_226BFB704(v9, a3, type metadata accessor for AccountMatchMappingModel.Change);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226BF7DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v6 = type metadata accessor for AccountMatchMappingModel.Change();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v64 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6CBBC();
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = *(v69 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = &v62 - v13;
  v75 = sub_226D6CBCC();
  v73 = *(v75 - 8);
  v14 = *(v73 + 64);
  v15 = MEMORY[0x28223BE20](v75);
  v71 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A0, &unk_226D7C550);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F50, &unk_226D77068);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v62 - v25;
  sub_226BFB584(a1, &v62 - v25);
  v27 = sub_226D6B9BC();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(v26, 2, v27))
  {
    (*(v28 + 32))(a3, v26, v27);
    return (*(v28 + 56))(a3, 0, 1, v27);
  }

  v65 = v28;
  v66 = v27;
  v72 = a3;
  sub_226AC47B0(v26, &qword_27D7A7F50, &unk_226D77068);
  v29 = *(a1 + *(v6 + 20));
  v63 = a1;
  if (v29 == 1)
  {
    sub_226D68E6C();
    v30 = *(a1 + *(v6 + 24));
    v31 = sub_226D68E4C();
    v32 = v75;
    if (!v3)
    {
      v33 = v31;
      sub_226D68E1C();

      (*(v65 + 56))(v22, 0, 1, v66);
      return sub_226B9DC00(v22, v72);
    }
  }

  else
  {
    sub_226D6A43C();
    v35 = *(a1 + *(v6 + 24));
    v36 = sub_226D6A40C();
    v32 = v75;
    if (!v3)
    {
      v52 = v36;
      sub_226D6A3EC();

      return sub_226B9DC00(v22, v72);
    }
  }

  v78 = v3;
  v37 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  v38 = swift_dynamicCast();
  v39 = v73;
  if (v38)
  {
    v75 = v6;
    v40 = v71;
    (*(v73 + 32))(v71, v18, v32);
    sub_226BFB6BC(&qword_27D7A6DD8, 255, MEMORY[0x277CC8620]);
    v41 = v67;
    sub_226D6D02C();
    v42 = v68;
    sub_226D6CBAC();
    sub_226BFB6BC(&qword_27D7A6DE0, 255, MEMORY[0x277CC8608]);
    v43 = v70;
    sub_226D6E53C();
    sub_226D6E53C();
    v44 = *(v69 + 8);
    v44(v42, v43);
    v44(v41, v43);
    if (v77 == v76)
    {

      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v45 = sub_226D6E07C();
      __swift_project_value_buffer(v45, qword_28105F628);
      v46 = v64;
      sub_226BFB5F4(v63, v64, type metadata accessor for AccountMatchMappingModel.Change);
      v47 = sub_226D6E05C();
      v48 = sub_226D6E9CC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = *(v46 + *(v75 + 24));
        sub_226BFB65C(v46, type metadata accessor for AccountMatchMappingModel.Change);
        *(v49 + 4) = v51;
        *v50 = v51;
        v40 = v71;
        _os_log_impl(&dword_226AB4000, v47, v48, "Object %@ does not exist. Ignoring.", v49, 0xCu);
        sub_226AC47B0(v50, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v50, -1, -1);
        MEMORY[0x22AA8BEE0](v49, -1, -1);
      }

      else
      {

        sub_226BFB65C(v46, type metadata accessor for AccountMatchMappingModel.Change);
      }

      (*(v73 + 8))(v40, v32);
      v61 = v78;
      goto LABEL_23;
    }

    (*(v39 + 8))(v40, v32);
  }

  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v53 = sub_226D6E07C();
  __swift_project_value_buffer(v53, qword_28105F628);
  v54 = v3;
  v55 = sub_226D6E05C();
  v56 = sub_226D6E9CC();

  if (!os_log_type_enabled(v55, v56))
  {

    v61 = v3;
LABEL_23:

    return (*(v65 + 56))(v72, 1, 1, v66);
  }

  v57 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  *v57 = 138412290;
  v59 = v3;
  v60 = _swift_stdlib_bridgeErrorToNSError();
  *(v57 + 4) = v60;
  *v58 = v60;
  _os_log_impl(&dword_226AB4000, v55, v56, "Error fetching identifier: %@", v57, 0xCu);
  sub_226AC47B0(v58, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v58, -1, -1);
  MEMORY[0x22AA8BEE0](v57, -1, -1);

  return (*(v65 + 56))(v72, 1, 1, v66);
}

void sub_226BF8678(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (**a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v53 = a3;
  v52 = a2;
  v6 = _s8MetadataV15CloudItemStatusOMa_1(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s8MetadataV9CloudItemVMa_1(0);
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F50, &unk_226D77068);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v46 - v16;
  v18 = type metadata accessor for AccountMatchMappingModel.Change();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v55;
  sub_226BF8CB8(a1, v53, a4);
  if (!v23)
  {
    v24 = v19;
    v54 = v10;
    v46[1] = 0;
    v25 = *(v52 + 16);
    if (v25)
    {
      v26 = a4;
      v27 = v18;
      v28 = v52 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
      v52 = v51 + 56;
      v53 = (v51 + 48);
      v55 = *(v24 + 72);
      v48 = v9;
      v49 = v26;
      v50 = v13;
      v47 = v18;
      do
      {
        sub_226BFB5F4(v28, v22, type metadata accessor for AccountMatchMappingModel.Change);
        sub_226BFB584(v22, v17);
        v29 = sub_226D6B9BC();
        if ((*(*(v29 - 8) + 48))(v17, 2, v29))
        {
          sub_226BFB65C(v22, type metadata accessor for AccountMatchMappingModel.Change);
          sub_226AC47B0(v17, &qword_27D7A7F50, &unk_226D77068);
        }

        else
        {
          sub_226AC47B0(v17, &qword_27D7A7F50, &unk_226D77068);
          if (v22[*(v27 + 20)])
          {
            sub_226BFB65C(v22, type metadata accessor for AccountMatchMappingModel.Change);
            v30 = *(_s8MetadataVMa_1(0) + 28);
            sub_226BFB65C(v26 + v30, _s8MetadataV15LocalItemStatusOMa_1);
            v31 = _s8MetadataV9LocalItemVMa_1(0);
            (*(*(v31 - 8) + 56))(v26 + v30, 1, 2, v31);
          }

          else
          {
            v32 = *(_s8MetadataVMa_1(0) + 24);
            sub_226BFB5F4(v26 + v32, v9, _s8MetadataV15CloudItemStatusOMa_1);
            v33 = v54;
            if ((*v53)(v9, 2, v54))
            {
              sub_226BFB65C(v22, type metadata accessor for AccountMatchMappingModel.Change);
              sub_226BFB65C(v9, _s8MetadataV15CloudItemStatusOMa_1);
            }

            else
            {
              v34 = v27;
              v35 = v50;
              sub_226BFB704(v9, v50, _s8MetadataV9CloudItemVMa_1);
              v36 = *(v35 + *(v33 + 20));
              v37 = *&v22[*(v34 + 24)];
              sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
              v38 = v36;
              v39 = v37;
              LOBYTE(v34) = sub_226D6EC3C();

              if ((v34 & 1) == 0)
              {
                if (qword_28105F620 != -1)
                {
                  swift_once();
                }

                v40 = sub_226D6E07C();
                __swift_project_value_buffer(v40, qword_28105F628);
                v41 = sub_226D6E05C();
                v42 = sub_226D6E9AC();
                v43 = os_log_type_enabled(v41, v42);
                v44 = v50;
                v27 = v47;
                if (v43)
                {
                  v45 = swift_slowAlloc();
                  *v45 = 0;
                  _os_log_impl(&dword_226AB4000, v41, v42, "Deleted duplicate cloud consent. Ignoring change.", v45, 2u);
                  MEMORY[0x22AA8BEE0](v45, -1, -1);
                }

                sub_226BFB65C(v44, _s8MetadataV9CloudItemVMa_1);
                sub_226BFB65C(v22, type metadata accessor for AccountMatchMappingModel.Change);
                v9 = v48;
                v26 = v49;
                goto LABEL_5;
              }

              sub_226BFB65C(v35, _s8MetadataV9CloudItemVMa_1);
              sub_226BFB65C(v22, type metadata accessor for AccountMatchMappingModel.Change);
              v9 = v48;
              v26 = v49;
              v33 = v54;
              v27 = v47;
            }

            sub_226BFB65C(v26 + v32, _s8MetadataV15CloudItemStatusOMa_1);
            (*v52)(v26 + v32, 1, 2, v33);
          }
        }

LABEL_5:
        v28 += v55;
        --v25;
      }

      while (v25);
    }
  }
}

void sub_226BF8CB8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v6 = _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  v70 = *(v6 - 8);
  v7 = *(v70 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v63 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  v16 = _s8MetadataV15CloudItemStatusOMa_1(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v71 = &v63 - v21;
  v22 = _s8MetadataV15LocalItemStatusOMa_1(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v72 = (&v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226D68E6C();
  v25 = sub_226D68E2C();
  if (!v3)
  {
    v73 = v6;
    v26 = v70;
    v64 = v15;
    v65 = v20;
    v66 = v25;
    v67 = a2;
    v69 = 0;
    if (v25)
    {
      v27 = v25;
      v28 = [v27 objectID];
      v29 = [v27 lastUpdatedAt];
      v30 = v72;
      v31 = a1;
      v32 = v29;
      v33 = _s8MetadataV9LocalItemVMa_1(0);
      v34 = v30 + *(v33 + 20);
      sub_226D6D45C();

      a1 = v31;
      *v30 = v28;
      (*(*(v33 - 8) + 56))(v30, 0, 2, v33);
    }

    else
    {
      v35 = _s8MetadataV9LocalItemVMa_1(0);
      (*(*(v35 - 8) + 56))(v72, 2, 2, v35);
    }

    v36 = v64;
    v37 = v65;
    v38 = v69;
    sub_226BF9510(a1, v67);
    if (v38)
    {
      sub_226BFB65C(v72, _s8MetadataV15LocalItemStatusOMa_1);

      return;
    }

    v69 = 0;
    v70 = a1;
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v42 = v39;
      sub_226BFB5F4(v39 + v41, v36, _s8MetadataV9CloudItemV6ObjectVMa_1);
      sub_226B3871C(v42, v42 + v41, 1, (2 * v40) | 1);
      v44 = v43;

      sub_226BFB5F4(v36, v13, _s8MetadataV9CloudItemV6ObjectVMa_1);
      v65 = v44;
      v45 = *(v44 + 2);
      if (v45)
      {
        v46 = *(v73 + 24);
        v47 = &v65[v41];
        v48 = *(v26 + 72);
        do
        {
          sub_226BFB5F4(v47, v10, _s8MetadataV9CloudItemV6ObjectVMa_1);
          v49 = *(v73 + 24);
          if (sub_226D6D3FC())
          {
            sub_226BFB65C(v13, _s8MetadataV9CloudItemV6ObjectVMa_1);
            sub_226BFB704(v10, v13, _s8MetadataV9CloudItemV6ObjectVMa_1);
          }

          else
          {
            sub_226BFB65C(v10, _s8MetadataV9CloudItemV6ObjectVMa_1);
          }

          v47 += v48;
          --v45;
        }

        while (v45);
      }

      v50 = v13;
      v51 = v71;
      sub_226BFB704(v50, v71, _s8MetadataV9CloudItemV6ObjectVMa_1);
      v52 = _s8MetadataV9CloudItemVMa_1(0);
      sub_226BFB704(v36, v51 + *(v52 + 20), _s8MetadataV9CloudItemV6ObjectVMa_1);
      *(v51 + *(v52 + 24)) = v65;
      (*(*(v52 - 8) + 56))(v51, 0, 2, v52);
    }

    else
    {

      v52 = _s8MetadataV9CloudItemVMa_1(0);
      (*(*(v52 - 8) + 56))(v71, 2, 2, v52);
    }

    _s8MetadataV9CloudItemVMa_1(0);
    (*(*(v52 - 8) + 56))(v37, 2, 2, v52);
    v53 = sub_226C1C084(v71, v37);
    sub_226BFB65C(v37, _s8MetadataV15CloudItemStatusOMa_1);
    v54 = v68;
    v55 = v70;
    if (v53)
    {
      v56 = sub_226D6B97C();
      v57 = v69;
      v59 = sub_226BF9BE0(v56, v58);
      v69 = v57;
      if (v57)
      {

        sub_226BFB65C(v71, _s8MetadataV15CloudItemStatusOMa_1);
        sub_226BFB65C(v72, _s8MetadataV15LocalItemStatusOMa_1);
        return;
      }

      v60 = v59;
    }

    else
    {
      v60 = 1;
    }

    v61 = sub_226D6B9BC();
    (*(*(v61 - 8) + 16))(v54, v55, v61);
    v62 = _s8MetadataVMa_1(0);
    sub_226BFB704(v71, v54 + v62[6], _s8MetadataV15CloudItemStatusOMa_1);
    sub_226BFB704(v72, v54 + v62[7], _s8MetadataV15LocalItemStatusOMa_1);
    *(v54 + v62[5]) = v60 & 1;
  }
}

uint64_t sub_226BF94B8(uint64_t a1, uint64_t a2)
{
  result = sub_226BFB6BC(&qword_27D7A7F48, a2, type metadata accessor for AccountMatchMappingModel);
  *(a1 + 8) = result;
  return result;
}

void sub_226BF9510(uint64_t a1, unint64_t a2)
{
  v73 = a2;
  v68 = sub_226D6D52C();
  v72 = *(v68 - 8);
  v3 = *(v72 + 8);
  v4 = MEMORY[0x28223BE20](v68);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = v55 - v7;
  v71 = sub_226D6D4AC();
  v58 = *(v71 - 8);
  v8 = *(v58 + 64);
  v9 = MEMORY[0x28223BE20](v71);
  v70 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = v55 - v11;
  v12 = _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  v66 = *(v12 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6A43C();
  v16 = sub_226D6A3FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_226D71F40;
  *(v17 + 32) = sub_226D6A3CC();
  *(v17 + 40) = MEMORY[0x22AA86480](a1);
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v18 = sub_226D6E5CC();

  v19 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v16 setPredicate_];
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_226D71F20;
  v21 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v22 = sub_226D6E36C();
  v23 = [v21 initWithKey:v22 ascending:0];

  *(v20 + 32) = v23;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v24 = sub_226D6E5CC();

  [v16 setSortDescriptors_];

  v25 = v74;
  v26 = sub_226D6EBBC();
  v27 = v25;
  if (v25)
  {
  }

  else
  {
    v28 = v72;
    v62 = v15;
    v63 = v12;
    v29 = v26;
    if (v26 >> 62)
    {
      goto LABEL_22;
    }

    v30 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v58;
    if (v30)
    {
      while (1)
      {
        v55[1] = v27;
        v56 = v16;
        v75 = MEMORY[0x277D84F90];
        sub_226AE22FC(0, v30 & ~(v30 >> 63), 0);
        if (v30 < 0)
        {
          break;
        }

        v32 = 0;
        v74 = v75;
        v33 = v29;
        v64 = v29;
        v65 = v29 & 0xC000000000000001;
        v57 = v29 & 0xFFFFFFFFFFFFFF8;
        v27 = (v31 + 32);
        v59 = (v28 + 4);
        v60 = v30;
        v29 = v70;
        v16 = v71;
        v61 = v6;
        while (1)
        {
          v34 = (v32 + 1);
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v65)
          {
            v35 = MEMORY[0x22AA8AFD0](v32);
          }

          else
          {
            if (v32 >= *(v57 + 16))
            {
              goto LABEL_21;
            }

            v35 = *(v33 + 8 * v32 + 32);
          }

          v36 = v35;
          v37 = [v35 lastUpdatedAt];
          if (!v37)
          {
            goto LABEL_19;
          }

          v38 = v37;
          v73 = v32;
          sub_226D6D45C();

          v39 = *v27;
          v40 = v69;
          (*v27)(v69, v29, v16);
          v41 = [v36 id];
          if (!v41)
          {
            (*(v58 + 8))(v40, v16);
LABEL_19:
            sub_226B3E244();
            swift_allocError();
            *v54 = 2;
            swift_willThrow();

            return;
          }

          v42 = v41;
          v72 = v34;
          sub_226D6D4FC();

          v43 = *v59;
          v44 = v67;
          v45 = v6;
          v46 = v68;
          (*v59)(v67, v45, v68);
          v28 = [v36 objectID];

          v47 = v63;
          v48 = v44;
          v49 = v62;
          v43(&v62[*(v63 + 20)], v48, v46);
          v16 = v71;
          v39(&v49[*(v47 + 24)], v40, v71);
          *v49 = v28;
          v50 = v74;
          v75 = v74;
          v52 = *(v74 + 16);
          v51 = *(v74 + 24);
          if (v52 >= v51 >> 1)
          {
            v28 = v27;
            sub_226AE22FC(v51 > 1, v52 + 1, 1);
            v50 = v75;
          }

          *(v50 + 16) = v52 + 1;
          v53 = (*(v66 + 80) + 32) & ~*(v66 + 80);
          v74 = v50;
          sub_226BFB704(v49, v50 + v53 + *(v66 + 72) * v52, _s8MetadataV9CloudItemV6ObjectVMa_1);
          v32 = v73 + 1;
          v6 = v61;
          v29 = v70;
          v33 = v64;
          if (v72 == v60)
          {

            return;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v30 = sub_226D6EDFC();
        v31 = v58;
        if (!v30)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_23:
    }
  }
}

uint64_t sub_226BF9BE0(uint64_t a1, unint64_t a2)
{
  v5 = sub_226D6B5EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B58C();
  v10 = sub_226D6B5CC();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) != 0 && (MEMORY[0x22AA83210](a1, a2) & 1) == 0)
  {
    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v14 = sub_226D6E07C();
    __swift_project_value_buffer(v14, qword_28105F628);
    v15 = sub_226D6E05C();
    v16 = sub_226D6E9CC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_226AB4000, v15, v16, "Force consent syncing override enabled, returning true.", v17, 2u);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
    }

    v11 = 1;
  }

  else
  {
    v11 = sub_226D6842C();
    v12 = sub_226D683EC();
    if (!v2)
    {
      if (v12)
      {
        v13 = v12;
        v11 = [v12 consentSyncingEnabled];
      }

      else
      {
        if (qword_28105F620 != -1)
        {
          swift_once();
        }

        v18 = sub_226D6E07C();
        __swift_project_value_buffer(v18, qword_28105F628);

        v19 = sub_226D6E05C();
        v20 = sub_226D6E9DC();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v25 = v22;
          *v21 = 136315138;
          *(v21 + 4) = sub_226AC4530(a1, a2, &v25);
          _os_log_impl(&dword_226AB4000, v19, v20, "Institution for institutionID: %s missing, unable to determine if syncing is enabled. Returning default (false).", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v22);
          MEMORY[0x22AA8BEE0](v22, -1, -1);
          MEMORY[0x22AA8BEE0](v21, -1, -1);
        }

        v11 = 0;
      }
    }
  }

  return v11 & 1;
}

uint64_t sub_226BF9F24(uint64_t *a1)
{
  v2 = _s8MetadataV9LocalItemVMa_1(0);
  v3 = *(v2 - 8);
  v151 = v2;
  v152 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v140 = (&v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v139 = (&v134 - v7);
  v8 = _s8MetadataV15LocalItemStatusOMa_1(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v138 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v150 = (&v134 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v142 = &v134 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v134 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v134 - v19;
  v21 = _s8MetadataV15CloudItemStatusOMa_1(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v147 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v143 = (&v134 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v137 = &v134 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v134 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v134 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v134 - v35;
  v37 = _s8MetadataV9CloudItemVMa_1(0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v144 = &v134 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v141 = (&v134 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = (&v134 - v45);
  MEMORY[0x28223BE20](v44);
  v48 = (&v134 - v47);
  v49 = _s8MetadataVMa_1(0);
  if (*(a1 + *(v49 + 20)) != 1)
  {
    v58 = sub_226D6B97C();
    v60 = v59;
    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v61 = sub_226D6E07C();
    __swift_project_value_buffer(v61, qword_28105F628);

    v62 = sub_226D6E05C();
    v63 = sub_226D6E9EC();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v154 = v65;
      *v64 = 136315138;
      v66 = sub_226AC4530(v58, v60, &v154);

      *(v64 + 4) = v66;
      _os_log_impl(&dword_226AB4000, v62, v63, "Syncing is disabled for institutionID: %s, no operations needed.", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x22AA8BEE0](v65, -1, -1);
      MEMORY[0x22AA8BEE0](v64, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84F90];
  }

  v154 = MEMORY[0x277D84F90];
  v149 = v49;
  v146 = *(v49 + 24);
  sub_226BFB5F4(a1 + v146, v36, _s8MetadataV15CloudItemStatusOMa_1);
  v50 = *(v38 + 48);
  v136 = v38 + 48;
  v148 = v50;
  if (v50(v36, 2, v37))
  {
    v51 = _s8MetadataV15CloudItemStatusOMa_1;
    v52 = v36;
    goto LABEL_4;
  }

  sub_226BFB704(v36, v48, _s8MetadataV9CloudItemVMa_1);
  v68 = (v48 + *(v37 + 20));
  v69 = *(_s8MetadataV9CloudItemV6ObjectVMa_1(0) + 24);
  v53 = v37;
  if (sub_226D6D40C())
  {
    v70 = *(v149 + 28);
    (*(v152 + 56))(v20, 1, 2, v151);
    LOBYTE(v70) = sub_226C1C468(a1 + v70, v20);
    sub_226BFB65C(v20, _s8MetadataV15LocalItemStatusOMa_1);
    if ((v70 & 1) == 0)
    {
      v79 = *v68;
      v80 = *v48;
      v135 = v79;
      v81 = v80;
      v82 = sub_226BBB76C(0, 1, 1, MEMORY[0x277D84F90]);
      v84 = *(v82 + 2);
      v83 = *(v82 + 3);
      v145 = v82;
      if (v84 >= v83 >> 1)
      {
        v145 = sub_226BBB76C((v83 > 1), v84 + 1, 1, v145);
      }

      sub_226BFB65C(v48, _s8MetadataV9CloudItemVMa_1);
      v85 = v145;
      *(v145 + 2) = v84 + 1;
      v86 = &v85[24 * v84];
      *(v86 + 4) = v135;
      *(v86 + 5) = v81;
      v86[48] = 2;
      v154 = v85;
      goto LABEL_5;
    }

    v51 = _s8MetadataV9CloudItemVMa_1;
    v52 = v48;
LABEL_4:
    sub_226BFB65C(v52, v51);
    v145 = MEMORY[0x277D84F90];
LABEL_5:
    v53 = v37;
    goto LABEL_6;
  }

  sub_226BFB65C(v48, _s8MetadataV9CloudItemVMa_1);
  v145 = MEMORY[0x277D84F90];
LABEL_6:
  sub_226BFB5F4(a1 + v146, v34, _s8MetadataV15CloudItemStatusOMa_1);
  v54 = v148;
  v55 = v148(v34, 2, v53);
  v56 = v152;
  if (v55)
  {
    sub_226BFB65C(v34, _s8MetadataV15CloudItemStatusOMa_1);
    v57 = v151;
  }

  else
  {
    sub_226BFB704(v34, v46, _s8MetadataV9CloudItemVMa_1);
    sub_226BFB5F4(a1 + *(v149 + 28), v18, _s8MetadataV15LocalItemStatusOMa_1);
    v57 = v151;
    if (!(*(v56 + 48))(v18, 2, v151))
    {
      v71 = v18;
      v72 = v139;
      sub_226BFB704(v71, v139, _s8MetadataV9LocalItemVMa_1);
      v73 = *(v57 + 20);
      v74 = *(_s8MetadataV9CloudItemV6ObjectVMa_1(0) + 24);
      v75 = v53;
      if (sub_226D6D3FC())
      {
        v76 = *v72;
        v77 = *(v46 + v53[5]);
        v78 = v76;
        LOBYTE(v57) = 3;
      }

      else
      {
        v76 = 0;
        LOBYTE(v57) = 0;
        v77 = *v46;
        v78 = *v46;
      }

      v53 = v77;
      v87 = v78;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_27;
      }

      goto LABEL_80;
    }

    sub_226BFB65C(v46, _s8MetadataV9CloudItemVMa_1);
    sub_226BFB65C(v18, _s8MetadataV15LocalItemStatusOMa_1);
  }

  while (1)
  {
    v92 = v146;
    sub_226BFB5F4(a1 + v146, v31, _s8MetadataV15CloudItemStatusOMa_1);
    v93 = v54(v31, 2, v53);
    v46 = v150;
    if (!v93)
    {
      v94 = _s8MetadataV15CloudItemStatusOMa_1;
      goto LABEL_34;
    }

    v31 = v142;
    sub_226BFB5F4(a1 + *(v149 + 28), v142, _s8MetadataV15LocalItemStatusOMa_1);
    if ((*(v56 + 48))(v31, 2, v57))
    {
      v94 = _s8MetadataV15LocalItemStatusOMa_1;
LABEL_34:
      sub_226BFB65C(v31, v94);
      goto LABEL_47;
    }

    v95 = v31;
    v96 = v140;
    sub_226BFB704(v95, v140, _s8MetadataV9LocalItemVMa_1);
    v97 = v137;
    sub_226BFB5F4(a1 + v92, v137, _s8MetadataV15CloudItemStatusOMa_1);
    v98 = v54(v97, 2, v53);
    sub_226BFB65C(v97, _s8MetadataV15CloudItemStatusOMa_1);
    v99 = *v96;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v98 == 1)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v145 = sub_226BBB76C(0, *(v145 + 2) + 1, 1, v145);
      }

      v102 = *(v145 + 2);
      v101 = *(v145 + 3);
      if (v102 >= v101 >> 1)
      {
        v145 = sub_226BBB76C((v101 > 1), v102 + 1, 1, v145);
      }

      sub_226BFB65C(v140, _s8MetadataV9LocalItemVMa_1);
      v103 = v145;
      *(v145 + 2) = v102 + 1;
      v104 = &v103[24 * v102];
      *(v104 + 4) = v99;
      *(v104 + 5) = 0;
      v105 = 4;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v145 = sub_226BBB76C(0, *(v145 + 2) + 1, 1, v145);
      }

      v107 = *(v145 + 2);
      v106 = *(v145 + 3);
      if (v107 >= v106 >> 1)
      {
        v145 = sub_226BBB76C((v106 > 1), v107 + 1, 1, v145);
      }

      sub_226BFB65C(v140, _s8MetadataV9LocalItemVMa_1);
      v103 = v145;
      *(v145 + 2) = v107 + 1;
      v104 = &v103[24 * v107];
      *(v104 + 4) = v99;
      *(v104 + 5) = 0;
      v105 = 1;
    }

    v104[48] = v105;
    v154 = v103;
    v56 = v152;
    v46 = v150;
LABEL_47:
    v108 = *(v149 + 28);
    sub_226BFB5F4(a1 + v108, v46, _s8MetadataV15LocalItemStatusOMa_1);
    v110 = *(v56 + 48);
    v56 += 48;
    v109 = v110;
    if (v110(v46, 2, v57))
    {
      v46 = v143;
      sub_226BFB5F4(a1 + v92, v143, _s8MetadataV15CloudItemStatusOMa_1);
      v111 = v54(v46, 2, v53);
      v75 = v147;
      if (v111)
      {
        sub_226BFB65C(v46, _s8MetadataV15CloudItemStatusOMa_1);
      }

      else
      {
        v112 = v46;
        v46 = v141;
        sub_226BFB704(v112, v141, _s8MetadataV9CloudItemVMa_1);
        v113 = a1 + v108;
        v114 = v138;
        sub_226BFB5F4(v113, v138, _s8MetadataV15LocalItemStatusOMa_1);
        v115 = v109(v114, 2, v57);
        sub_226BFB65C(v114, _s8MetadataV15LocalItemStatusOMa_1);
        v116 = *(v46 + v53[5]);
        v117 = swift_isUniquelyReferenced_nonNull_native();
        if (v115 == 1)
        {
          if ((v117 & 1) == 0)
          {
            v145 = sub_226BBB76C(0, *(v145 + 2) + 1, 1, v145);
          }

          v56 = *(v145 + 2);
          v118 = *(v145 + 3);
          if (v56 >= v118 >> 1)
          {
            v145 = sub_226BBB76C((v118 > 1), v56 + 1, 1, v145);
          }

          sub_226BFB65C(v141, _s8MetadataV9CloudItemVMa_1);
          v119 = v145;
          *(v145 + 2) = v56 + 1;
          v120 = &v119[24 * v56];
          *(v120 + 4) = v116;
          *(v120 + 5) = 0;
          v120[48] = 5;
          v154 = v119;
        }

        else
        {
          if ((v117 & 1) == 0)
          {
            v145 = sub_226BBB76C(0, *(v145 + 2) + 1, 1, v145);
          }

          v56 = *(v145 + 2);
          v121 = *(v145 + 3);
          if (v56 >= v121 >> 1)
          {
            v145 = sub_226BBB76C((v121 > 1), v56 + 1, 1, v145);
          }

          sub_226BFB65C(v141, _s8MetadataV9CloudItemVMa_1);
          v122 = v145;
          *(v145 + 2) = v56 + 1;
          v123 = &v122[24 * v56];
          *(v123 + 4) = v116;
          *(v123 + 5) = 0;
          v123[48] = 0;
          v154 = v122;
        }
      }
    }

    else
    {
      sub_226BFB65C(v46, _s8MetadataV15LocalItemStatusOMa_1);
      v75 = v147;
    }

    sub_226BFB5F4(a1 + v92, v75, _s8MetadataV15CloudItemStatusOMa_1);
    if (v148(v75, 2, v53))
    {
      v124 = _s8MetadataV15CloudItemStatusOMa_1;
      v125 = v75;
      goto LABEL_78;
    }

    sub_226BFB704(v75, v144, _s8MetadataV9CloudItemVMa_1);
    v126 = sub_226C1A854();
    v31 = v126;
    if (v126 >> 62)
    {
      v76 = sub_226D6EDFC();
      if (!v76)
      {
LABEL_76:

        v128 = MEMORY[0x277D84F90];
        goto LABEL_77;
      }
    }

    else
    {
      v76 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v76)
      {
        goto LABEL_76;
      }
    }

    v153 = MEMORY[0x277D84F90];
    a1 = &v153;
    sub_226AE226C(0, v76 & ~(v76 >> 63), 0);
    if ((v76 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_80:
    v145 = sub_226BBB76C(0, *(v145 + 2) + 1, 1, v145);
LABEL_27:
    v89 = *(v145 + 2);
    v88 = *(v145 + 3);
    if (v89 >= v88 >> 1)
    {
      v145 = sub_226BBB76C((v88 > 1), v89 + 1, 1, v145);
    }

    sub_226BFB4CC(v53, v76, v57);
    sub_226BFB65C(v139, _s8MetadataV9LocalItemVMa_1);
    sub_226BFB65C(v46, _s8MetadataV9CloudItemVMa_1);
    v90 = v145;
    *(v145 + 2) = v89 + 1;
    v91 = &v90[24 * v89];
    *(v91 + 4) = v53;
    *(v91 + 5) = v76;
    v91[48] = v57;
    v154 = v90;
    v53 = v75;
    v57 = v151;
    v54 = v148;
  }

  v127 = 0;
  v128 = v153;
  do
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v129 = MEMORY[0x22AA8AFD0](v127, v31);
    }

    else
    {
      v129 = *(v31 + 8 * v127 + 32);
    }

    v153 = v128;
    v131 = *(v128 + 16);
    v130 = *(v128 + 24);
    if (v131 >= v130 >> 1)
    {
      v133 = v129;
      sub_226AE226C((v130 > 1), v131 + 1, 1);
      v129 = v133;
      v128 = v153;
    }

    ++v127;
    *(v128 + 16) = v131 + 1;
    v132 = v128 + 24 * v131;
    *(v132 + 32) = v129;
    *(v132 + 40) = 0;
    *(v132 + 48) = 5;
  }

  while (v76 != v127);

LABEL_77:
  sub_226CEDF68(v128);
  v124 = _s8MetadataV9CloudItemVMa_1;
  v125 = v144;
LABEL_78:
  sub_226BFB65C(v125, v124);
  return v154;
}

uint64_t sub_226BFAF78(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_226D6BC6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = sub_226D6BD1C();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_226D6BD0C();
  (*(v6 + 104))(v10, **(&unk_2785C8A38 + a4), v5);
  (*(v6 + 32))(v12, v10, v5);
  sub_226D6BC7C();

  return (*(v6 + 8))(v12, v5);
}

void sub_226BFB0EC(void *a1, void *a2, unsigned __int8 a3, void *a4)
{
  v5 = v4;
  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v9 = sub_226D6E07C();
  __swift_project_value_buffer(v9, qword_28105F628);
  sub_226BFB460(a1, a2, a3);
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9EC();
  sub_226BFB4CC(a1, a2, a3);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    v14 = sub_226D3FC38(a1, a2, a3);
    v16 = a1;
    v17 = a3;
    v18 = a2;
    v19 = sub_226AC4530(v14, v15, &v31);

    *(v12 + 4) = v19;
    a2 = v18;
    a3 = v17;
    a1 = v16;
    _os_log_impl(&dword_226AB4000, v10, v11, "Performing %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v20 = v13;
    v5 = v4;
    MEMORY[0x22AA8BEE0](v20, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      sub_226D406DC(a1, a2, a4);
      if (!v5)
      {
        return;
      }
    }

    else if (a3 == 4)
    {
      sub_226D40918(a1, a4);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      sub_226D40BBC(a1, a4);
      if (!v5)
      {
        return;
      }
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      sub_226D403A4(a1, a4);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      sub_226D404B8(a1, a2, a4);
      if (!v5)
      {
        return;
      }
    }
  }

  else
  {
    sub_226D4009C(a1, a4);
    if (!v5)
    {
      return;
    }
  }

  v21 = v5;
  v22 = sub_226D6E05C();
  v23 = sub_226D6E9DC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = a2;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v5;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_226AB4000, v22, v23, "Error performing operation: %@.", v25, 0xCu);
    sub_226AC47B0(v26, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v26, -1, -1);
    v29 = v25;
    a2 = v24;
    MEMORY[0x22AA8BEE0](v29, -1, -1);
  }

  sub_226BFAF78(v5, a1, a2, a3);
  swift_willThrow();
}

id sub_226BFB460(id result, void *a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
    if (((1 << a3) & 0x33) != 0)
    {
    }

    else
    {
      v4 = result;
      result = a2;
    }

    return result;
  }

  return result;
}

void sub_226BFB4CC(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
    if (((1 << a3) & 0x33) != 0)
    {
    }

    else
    {

      a1 = a2;
    }
  }
}

uint64_t type metadata accessor for AccountMatchMappingModel.Change()
{
  result = qword_27D7A7F60;
  if (!qword_27D7A7F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BFB584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F50, &unk_226D77068);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BFB5F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BFB65C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226BFB6BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_226BFB704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_226BFB794()
{
  sub_226BFB830();
  if (v0 <= 0x3F)
  {
    sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226BFB830()
{
  if (!qword_27D7A7F70)
  {
    sub_226D6B9BC();
    sub_226BFB6BC(&qword_27D7A6790, 255, MEMORY[0x277CC8058]);
    v0 = type metadata accessor for StoreMappingChangeType();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A7F70);
    }
  }
}

void sub_226BFB8C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [a1 changedObjectID];
  v6 = [v5 entity];

  v7 = [v6 name];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = sub_226D6E39C();
  v10 = v9;

  v11 = v8 == 0x726564724FLL && v10 == 0xE500000000000000;
  if (v11 || (sub_226D6F21C() & 1) != 0 || (v8 == 0x64724F64756F6C43 ? (v12 = v10 == 0xEA00000000007265) : (v12 = 0), v12))
  {
  }

  else
  {
    v13 = sub_226D6F21C();

    if ((v13 & 1) == 0)
    {
LABEL_12:
      v14 = 1;
      goto LABEL_16;
    }
  }

  sub_226BFBA68(a1, a2);
  if (v2)
  {
    return;
  }

  v14 = 0;
LABEL_16:
  v15 = type metadata accessor for OrderMappingModel.Change();
  (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

void sub_226BFBA68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 changedObjectID];
  v5 = type metadata accessor for OrderMappingModel.Change();
  *(a2 + *(v5 + 24)) = v4;
  v6 = [v4 entityName];
  v7 = sub_226D6E39C();
  v9 = v8;

  v10 = v7 == 0x726564724FLL && v9 == 0xE500000000000000;
  if (v10 || (sub_226D6F21C() & 1) != 0)
  {

    v11 = 1;
  }

  else if (v7 == 0x64724F64756F6C43 && v9 == 0xEA00000000007265)
  {

    v11 = 0;
  }

  else
  {
    v24 = sub_226D6F21C();

    v11 = 0;
    if ((v24 & 1) == 0)
    {
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v25 = sub_226D6E07C();
      __swift_project_value_buffer(v25, qword_28105F628);
      v26 = sub_226D6E05C();
      v27 = sub_226D6E9CC();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_35;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Change was not for a cloud or local order";
      goto LABEL_34;
    }
  }

  *(a2 + *(v5 + 20)) = v11;
  v12 = [a1 changeType];
  if (!v12)
  {

    v14 = sub_226D6B49C();
    (*(*(v14 - 8) + 56))(a2, 1, 2, v14);
    return;
  }

  if (v12 == 1)
  {

    v13 = sub_226D6B49C();
    (*(*(v13 - 8) + 56))(a2, 2, 2, v13);
    return;
  }

  if (v12 == 2)
  {
    v15 = [a1 tombstone];
    if (v15)
    {
      v16 = v15;
      v17 = sub_226D6E2BC();

      sub_226D6EE8C();
      if (*(v17 + 16))
      {
        v18 = sub_226C2FE4C(v32);
        if (v19)
        {
          sub_226AC4708(*(v17 + 56) + 32 * v18, v33);
          sub_226AE5030(v32);
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_37:

            goto LABEL_30;
          }

          sub_226D6EE8C();
          if (*(v17 + 16))
          {
            v20 = sub_226C2FE4C(v32);
            if (v21)
            {
              sub_226AC4708(*(v17 + 56) + 32 * v20, v33);
              sub_226AE5030(v32);

              if (swift_dynamicCast())
              {
                sub_226D6B45C();

                v22 = sub_226D6B49C();
                (*(*(v22 - 8) + 56))(a2, 0, 2, v22);
                return;
              }

              goto LABEL_37;
            }
          }
        }
      }

      sub_226AE5030(v32);
    }

LABEL_30:
    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v30 = sub_226D6E07C();
    __swift_project_value_buffer(v30, qword_28105F628);
    v26 = sub_226D6E05C();
    v27 = sub_226D6E9CC();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_35;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Received delete change but no tombstone";
LABEL_34:
    _os_log_impl(&dword_226AB4000, v26, v27, v29, v28, 2u);
    MEMORY[0x22AA8BEE0](v28, -1, -1);
LABEL_35:

    sub_226B3E244();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();

    return;
  }

  sub_226D6F0AC();
  __break(1u);
}

uint64_t sub_226BFC010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v85 = a2;
  v84 = a3;
  v82 = type metadata accessor for OrderMappingModel.Change();
  v4 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6CBBC();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v76 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v73 - v10;
  v80 = sub_226D6CBCC();
  v83 = *(v80 - 8);
  v11 = *(v83 + 64);
  v12 = MEMORY[0x28223BE20](v80);
  v81 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v79 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F98, &qword_226D77100);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v73 - v17;
  v19 = sub_226D6B49C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v73 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v73 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v73 - v31;
  sub_226AC40E8(a1, v18, &qword_27D7A7F98, &qword_226D77100);
  if (!(*(v20 + 48))(v18, 2, v19))
  {
    v41 = *(v20 + 32);
    v41(v32, v18, v19);
    v42 = v84;
    v41(v84, v32, v19);
    v43 = 0;
    v40 = v20;
    return (*(v40 + 56))(v42, v43, 1, v19);
  }

  v33 = sub_226AC47B0(v18, &qword_27D7A7F98, &qword_226D77100);
  v34 = *(a1 + *(v82 + 20));
  MEMORY[0x28223BE20](v33);
  v73 = a1;
  v35 = v85;
  *(&v73 - 2) = a1;
  *(&v73 - 1) = v35;
  if (v36 == 1)
  {
    v37 = v86;
    sub_226D6EB8C();
    v38 = v83;
    if (v37)
    {
      v39 = v37;
      v40 = v20;
      goto LABEL_8;
    }

    v24 = v27;
LABEL_15:
    v40 = v20;
    v63 = *(v20 + 32);
    v63(v30, v24, v19);
    v42 = v84;
    v63(v84, v30, v19);
    v43 = 0;
    return (*(v40 + 56))(v42, v43, 1, v19);
  }

  v44 = v86;
  sub_226D6EB8C();
  if (!v44)
  {
    goto LABEL_15;
  }

  v39 = v44;
  v40 = v20;
  v38 = v83;
LABEL_8:
  v89 = v39;
  v45 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  v46 = v79;
  v47 = v80;
  v48 = swift_dynamicCast();
  v49 = v81;
  if (v48)
  {
    v85 = v19;
    v86 = 0;
    (*(v38 + 32))(v81, v46, v47);
    sub_226C0060C(&qword_27D7A6DD8, 255, MEMORY[0x277CC8620]);
    v50 = v75;
    sub_226D6D02C();
    v51 = v76;
    sub_226D6CBAC();
    sub_226C0060C(&qword_27D7A6DE0, 255, MEMORY[0x277CC8608]);
    v52 = v78;
    sub_226D6E53C();
    sub_226D6E53C();
    v53 = *(v77 + 8);
    v53(v51, v52);
    v53(v50, v52);
    if (v88 == v87)
    {

      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v54 = sub_226D6E07C();
      __swift_project_value_buffer(v54, qword_28105F628);
      v55 = v74;
      sub_226BFFCB8(v73, v74, type metadata accessor for OrderMappingModel.Change);
      v56 = sub_226D6E05C();
      v57 = sub_226D6E9CC();
      v58 = os_log_type_enabled(v56, v57);
      v19 = v85;
      if (v58)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        v61 = *(v55 + *(v82 + 24));
        sub_226BFFD20(v55, type metadata accessor for OrderMappingModel.Change);
        *(v59 + 4) = v61;
        *v60 = v61;
        _os_log_impl(&dword_226AB4000, v56, v57, "Object %@ does not exist. Ignoring.", v59, 0xCu);
        sub_226AC47B0(v60, &qword_27D7A5FB0, &qword_226D70870);
        v62 = v60;
        v47 = v80;
        MEMORY[0x22AA8BEE0](v62, -1, -1);
        MEMORY[0x22AA8BEE0](v59, -1, -1);
      }

      else
      {

        sub_226BFFD20(v55, type metadata accessor for OrderMappingModel.Change);
      }

      v42 = v84;
      (*(v83 + 8))(v81, v47);

      v43 = 1;
      return (*(v40 + 56))(v42, v43, 1, v19);
    }

    (*(v83 + 8))(v49, v47);
    v19 = v85;
  }

  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v64 = sub_226D6E07C();
  __swift_project_value_buffer(v64, qword_28105F628);
  v65 = v39;
  v66 = sub_226D6E05C();
  v67 = sub_226D6E9CC();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138412290;
    v70 = v39;
    v71 = _swift_stdlib_bridgeErrorToNSError();
    *(v68 + 4) = v71;
    *v69 = v71;
    _os_log_impl(&dword_226AB4000, v66, v67, "Error fetching identifier: %@", v68, 0xCu);
    sub_226AC47B0(v69, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v69, -1, -1);
    MEMORY[0x22AA8BEE0](v68, -1, -1);
  }

  else
  {
  }

  v43 = 1;
  v42 = v84;
  return (*(v40 + 56))(v42, v43, 1, v19);
}

void sub_226BFC974(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void, uint64_t), void (*a5)(void))
{
  a3(0);
  v10 = type metadata accessor for OrderMappingModel.Change();
  v11 = a4(*(a1 + *(v10 + 24)), a2);
  if (!v5)
  {
    v12 = v11;
    a5();
  }
}

uint64_t sub_226BFCA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v52 = a2;
  v6 = _s8MetadataV15CloudItemStatusOMa_2(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s8MetadataV9CloudItemVMa_2(0);
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F98, &qword_226D77100);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v48 - v16;
  v18 = type metadata accessor for OrderMappingModel.Change();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v56;
  result = sub_226BFD074(a1, v54, a4);
  if (!v23)
  {
    v25 = v51;
    v53 = v9;
    v54 = v10;
    v48 = 0;
    v26 = *(v52 + 16);
    if (v26)
    {
      v27 = v18;
      v28 = v52 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v51 += 56;
      v52 = v25 + 48;
      v56 = *(v19 + 72);
      v55 = a4;
      v49 = v27;
      v50 = v13;
      do
      {
        sub_226BFFCB8(v28, v22, type metadata accessor for OrderMappingModel.Change);
        sub_226AC40E8(v22, v17, &qword_27D7A7F98, &qword_226D77100);
        v29 = sub_226D6B49C();
        if ((*(*(v29 - 8) + 48))(v17, 2, v29))
        {
          sub_226BFFD20(v22, type metadata accessor for OrderMappingModel.Change);
          result = sub_226AC47B0(v17, &qword_27D7A7F98, &qword_226D77100);
        }

        else
        {
          sub_226AC47B0(v17, &qword_27D7A7F98, &qword_226D77100);
          if (v22[*(v27 + 20)])
          {
            sub_226BFFD20(v22, type metadata accessor for OrderMappingModel.Change);
            v30 = *(_s8MetadataVMa_2(0) + 24);
            sub_226BFFD20(v55 + v30, _s8MetadataV15LocalItemStatusOMa_2);
            v31 = _s8MetadataV9LocalItemVMa_2(0);
            a4 = v55;
            result = (*(*(v31 - 8) + 56))(v55 + v30, 1, 2, v31);
          }

          else
          {
            v32 = *(_s8MetadataVMa_2(0) + 20);
            v33 = v53;
            sub_226BFFCB8(a4 + v32, v53, _s8MetadataV15CloudItemStatusOMa_2);
            v34 = v54;
            if ((*v52)(v33, 2, v54))
            {
              sub_226BFFD20(v22, type metadata accessor for OrderMappingModel.Change);
              sub_226BFFD20(v33, _s8MetadataV15CloudItemStatusOMa_2);
            }

            else
            {
              v35 = v27;
              v36 = v50;
              sub_226BFFDCC(v33, v50, _s8MetadataV9CloudItemVMa_2);
              v37 = v36 + *(v34 + 20);
              v38 = *(v37 + *(_s8MetadataV9CloudItemV6ObjectVMa_2(0) + 24));
              v39 = *&v22[*(v35 + 24)];
              sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
              v40 = v38;
              v41 = v39;
              LOBYTE(v37) = sub_226D6EC3C();

              if ((v37 & 1) == 0)
              {
                if (qword_28105F620 != -1)
                {
                  swift_once();
                }

                v42 = sub_226D6E07C();
                __swift_project_value_buffer(v42, qword_28105F628);
                v43 = sub_226D6E05C();
                v44 = sub_226D6E9AC();
                v45 = os_log_type_enabled(v43, v44);
                v27 = v49;
                v46 = v50;
                if (v45)
                {
                  v47 = swift_slowAlloc();
                  *v47 = 0;
                  _os_log_impl(&dword_226AB4000, v43, v44, "Deleted duplicate cloud order. Ignoring change.", v47, 2u);
                  MEMORY[0x22AA8BEE0](v47, -1, -1);
                }

                sub_226BFFD20(v46, _s8MetadataV9CloudItemVMa_2);
                result = sub_226BFFD20(v22, type metadata accessor for OrderMappingModel.Change);
                a4 = v55;
                goto LABEL_5;
              }

              sub_226BFFD20(v36, _s8MetadataV9CloudItemVMa_2);
              sub_226BFFD20(v22, type metadata accessor for OrderMappingModel.Change);
              v34 = v54;
              a4 = v55;
              v27 = v49;
            }

            sub_226BFFD20(a4 + v32, _s8MetadataV15CloudItemStatusOMa_2);
            result = (*v51)(a4 + v32, 1, 2, v34);
          }
        }

LABEL_5:
        v28 += v56;
        --v26;
      }

      while (v26);
    }
  }

  return result;
}

uint64_t sub_226BFD074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = _s8MetadataV9CloudItemVMa_2(0);
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v19 = _s8MetadataV15CloudItemStatusOMa_2(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _s8MetadataV15LocalItemStatusOMa_2(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  v56 = a2;
  v27 = v54;
  result = sub_226D6EB8C();
  if (!v27)
  {
    v47 = v22;
    v48 = v26;
    v54 = v18;
    MEMORY[0x28223BE20](result);
    *(&v45 - 4) = v53;
    *(&v45 - 3) = a1;
    *(&v45 - 2) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7FA0, &qword_226D77108);
    sub_226D6EB8C();
    v46 = a1;
    v53 = 0;
    v29 = v57;
    v30 = *(v57 + 16);
    v31 = v48;
    if (v30)
    {
      v32 = v49;
      v33 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v34 = v54;
      sub_226BFFCB8(v57 + v33, v54, _s8MetadataV9CloudItemV6ObjectVMa_2);
      sub_226B386F4(v29, v29 + v33, 1, (2 * v30) | 1);
      v36 = v35;

      sub_226BFFCB8(v34, v16, _s8MetadataV9CloudItemV6ObjectVMa_2);
      v45 = v36;
      v37 = *(v36 + 16);
      v39 = v51;
      v38 = v52;
      if (v37)
      {
        v40 = v45 + v33;
        v41 = *(v32 + 72);
        do
        {
          sub_226BFFCB8(v40, v13, _s8MetadataV9CloudItemV6ObjectVMa_2);
          if (sub_226D6D3FC())
          {
            sub_226BFFD20(v16, _s8MetadataV9CloudItemV6ObjectVMa_2);
            sub_226BFFDCC(v13, v16, _s8MetadataV9CloudItemV6ObjectVMa_2);
          }

          else
          {
            sub_226BFFD20(v13, _s8MetadataV9CloudItemV6ObjectVMa_2);
          }

          v40 += v41;
          --v37;
        }

        while (v37);
      }

      sub_226BFFDCC(v16, v8, _s8MetadataV9CloudItemV6ObjectVMa_2);
      sub_226BFFDCC(v54, &v8[*(v39 + 20)], _s8MetadataV9CloudItemV6ObjectVMa_2);
      *&v8[*(v39 + 24)] = v45;
      v42 = v47;
      sub_226BFFDCC(v8, v47, _s8MetadataV9CloudItemVMa_2);
      (*(v50 + 56))(v42, 0, 2, v39);
      v31 = v48;
    }

    else
    {

      v42 = v47;
      (*(v50 + 56))(v47, 2, 2, v51);
      v38 = v52;
    }

    v43 = sub_226D6B49C();
    (*(*(v43 - 8) + 16))(v38, v46, v43);
    v44 = _s8MetadataVMa_2(0);
    sub_226BFFDCC(v42, v38 + *(v44 + 20), _s8MetadataV15CloudItemStatusOMa_2);
    return sub_226BFFDCC(v31, v38 + *(v44 + 24), _s8MetadataV15LocalItemStatusOMa_2);
  }

  return result;
}

void *sub_226BFD5F0@<X0>(char *a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_226D6D4AC();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D68F4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6751C();
  result = sub_226D6745C();
  if (!v1)
  {
    v16 = v32;
    v30 = 0;
    if (result)
    {
      v17 = result;
      v29 = [result objectID];
      sub_226D6749C();
      sub_226D68F2C();
      (*(v11 + 8))(v14, v10);
      v18 = [v17 isMarkedAsComplete];
      v19 = v17;
      v20 = [v17 isMarkedAsCompleteModificationDate];
      if (v20)
      {
        v21 = v5;
        v22 = v20;
        sub_226D6D45C();

        v23 = 0;
        v24 = v16;
      }

      else
      {
        v23 = 1;
        v24 = v16;
        v21 = v5;
      }

      v26 = v31;
      (*(v31 + 56))(v21, v23, 1, v6);
      *v24 = v29;
      v27 = _s8MetadataV9LocalItemVMa_2(0);
      (*(v26 + 32))(&v24[v27[5]], v9, v6);
      v24[v27[6]] = v18;
      sub_226B72784(v21, &v24[v27[7]]);
      return (*(*(v27 - 1) + 56))(v24, 0, 2, v27);
    }

    else
    {
      v25 = _s8MetadataV9LocalItemVMa_2(0);
      return (*(*(v25 - 8) + 56))(v16, 2, 2, v25);
    }
  }

  return result;
}

uint64_t sub_226BFD944()
{
  v1 = _s9OperationOMa_0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226BFFCB8(v0, v4, _s9OperationOMa_0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_226BFFD20(v4, _s9OperationOMa_0);
        return 3;
      }

      else
      {
        sub_226BFFD20(v4, _s9OperationOMa_0);
        return 4;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_226BFFD20(v4, _s9OperationOMa_0);
      return 2;
    }

    else
    {
      sub_226BFFD20(v4, _s9OperationOMa_0);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_226BFFD20(v4, _s9OperationOMa_0);
      return 5;
    }

    else
    {
      sub_226BFFD20(v4, _s9OperationOMa_0);
      return 6;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    sub_226BFFD20(v4, _s9OperationOMa_0);
    return 7;
  }

  else if (EnumCaseMultiPayload == 7)
  {

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8);
    sub_226AC47B0(v4 + *(v6 + 64), &qword_27D7A8BE0, &unk_226D718F0);
    return 8;
  }

  else
  {

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8);
    sub_226AC47B0(v4 + *(v8 + 64), &qword_27D7A8BE0, &unk_226D718F0);
    return 9;
  }
}

void sub_226BFDBD4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v6 = [a2 changedObjectID];
  v7 = *(a1 + *(type metadata accessor for OrderMappingModel.Change() + 24));
  LOBYTE(a1) = sub_226D6EC3C();

  if (a1)
  {
    sub_226BFBA68(a2, a3);
  }

  else
  {
    __break(1u);
  }
}

id sub_226BFDCC4(uint64_t a1, void *a2)
{
  sub_226C02404(a2);
  if (!v2)
  {
    return [a2 refreshAllObjects];
  }

  type metadata accessor for OrdersAutoBugCaptureReporter();
  inited = swift_initStackObject();
  v5 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(inited + 16) = v5;
  v6 = sub_226BFD944();
  v7 = sub_226BFFB08();
  sub_226BA2504(v6, v7);

  return swift_willThrow();
}

uint64_t sub_226BFDDFC(uint64_t a1, uint64_t a2)
{
  result = sub_226C0060C(&qword_27D7A7F80, a2, type metadata accessor for OrderMappingModel);
  *(a1 + 8) = result;
  return result;
}

char *sub_226BFDE54(uint64_t a1)
{
  v253 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v2 = *(*(v253 - 1) + 64);
  MEMORY[0x28223BE20](v253);
  v238 = &v226 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsMarkedAsCompleteEntryVMa = _s8MetadataV23IsMarkedAsCompleteEntryVMa(0);
  v4 = *(*(IsMarkedAsCompleteEntryVMa - 8) + 64);
  v5 = MEMORY[0x28223BE20](IsMarkedAsCompleteEntryVMa);
  v248 = &v226 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v236 = &v226 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v235 = &v226 - v10;
  MEMORY[0x28223BE20](v9);
  v250 = &v226 - v11;
  v241 = sub_226D67C7C();
  v240 = *(v241 - 8);
  v12 = *(v240 + 64);
  MEMORY[0x28223BE20](v241);
  v239 = &v226 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F90, &qword_226D770F8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v231 = &v226 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v232 = (&v226 - v18);
  v267 = _s8MetadataV9LocalItemVMa_2(0);
  v265 = *(v267 - 8);
  v19 = *(v265 + 64);
  v20 = MEMORY[0x28223BE20](v267);
  v252 = (&v226 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v251 = (&v226 - v22);
  v257 = _s9OperationOMa_0();
  v23 = *(v257 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v257);
  v27 = (&v226 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v25);
  v234 = (&v226 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v247 = (&v226 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v244 = (&v226 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v243 = (&v226 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v237 = (&v226 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v233 = (&v226 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v230 = &v226 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v229 = &v226 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v226 - v44;
  v46 = _s8MetadataV15LocalItemStatusOMa_2(0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v245 = &v226 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v262 = &v226 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v260 = &v226 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v258 = &v226 - v55;
  MEMORY[0x28223BE20](v54);
  v57 = &v226 - v56;
  v58 = _s8MetadataV15CloudItemStatusOMa_2(0);
  v59 = *(*(v58 - 8) + 64);
  v60 = MEMORY[0x28223BE20](v58 - 8);
  v261 = &v226 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v60);
  v254 = &v226 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v242 = &v226 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v259 = &v226 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v70 = &v226 - v69;
  MEMORY[0x28223BE20](v68);
  v72 = &v226 - v71;
  v73 = _s8MetadataV9CloudItemVMa_2(0);
  v74 = *(v73 - 8);
  v75 = *(v74 + 64);
  v76 = MEMORY[0x28223BE20](v73);
  v256 = &v226 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x28223BE20](v76);
  v246 = &v226 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v255 = &v226 - v81;
  MEMORY[0x28223BE20](v80);
  v83 = &v226 - v82;
  v272 = MEMORY[0x277D84F90];
  v264 = _s8MetadataVMa_2(0);
  v270 = *(v264 + 20);
  sub_226BFFCB8(a1 + v270, v72, _s8MetadataV15CloudItemStatusOMa_2);
  v84 = *(v74 + 48);
  v263 = v74 + 48;
  v269 = v84;
  if (v84(v72, 2, v73))
  {
    v85 = v73;
    v86 = _s8MetadataV15CloudItemStatusOMa_2;
    v87 = v72;
LABEL_7:
    sub_226BFFD20(v87, v86);
    v266 = MEMORY[0x277D84F90];
    v92 = v265;
    v93 = v262;
    v91 = v258;
    goto LABEL_8;
  }

  v228 = v45;
  sub_226BFFDCC(v72, v83, _s8MetadataV9CloudItemVMa_2);
  v85 = v73;
  v88 = &v83[*(v73 + 20)];
  if ((sub_226D6D40C() & 1) == 0)
  {
    v86 = _s8MetadataV9CloudItemVMa_2;
    v87 = v83;
    goto LABEL_7;
  }

  v89 = *(v264 + 24);
  (*(v265 + 56))(v57, 1, 2, v267);
  v227 = a1;
  v90 = sub_226D35AE4(a1 + v89, v57);
  sub_226BFFD20(v57, _s8MetadataV15LocalItemStatusOMa_2);
  v91 = v258;
  if (v90)
  {
    sub_226BFFD20(v83, _s8MetadataV9CloudItemVMa_2);
    v266 = MEMORY[0x277D84F90];
    a1 = v227;
    v92 = v265;
    v93 = v262;
  }

  else
  {
    v149 = v253[6];
    v150 = *&v88[v149];
    v151 = *&v83[v149];
    v152 = v228;
    *v228 = v150;
    v152[1] = v151;
    swift_storeEnumTagMultiPayload();
    v153 = v150;
    v154 = v151;
    v155 = sub_226BBB744(0, 1, 1, MEMORY[0x277D84F90]);
    v157 = v155[2];
    v156 = v155[3];
    v266 = v155;
    v93 = v262;
    if (v157 >= v156 >> 1)
    {
      v266 = sub_226BBB744(v156 > 1, v157 + 1, 1, v266);
    }

    v92 = v265;
    sub_226BFFD20(v83, _s8MetadataV9CloudItemVMa_2);
    v158 = v266;
    v266[2] = v157 + 1;
    sub_226BFFDCC(v228, v158 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v157, _s9OperationOMa_0);
    v272 = v158;
    a1 = v227;
  }

LABEL_8:
  sub_226BFFCB8(a1 + v270, v70, _s8MetadataV15CloudItemStatusOMa_2);
  v94 = v269(v70, 2, v85);
  v95 = v264;
  v268 = v85;
  if (v94)
  {
    v96 = _s8MetadataV15CloudItemStatusOMa_2;
    v97 = v70;
LABEL_12:
    sub_226BFFD20(v97, v96);
    goto LABEL_13;
  }

  v98 = v255;
  sub_226BFFDCC(v70, v255, _s8MetadataV9CloudItemVMa_2);
  sub_226BFFCB8(a1 + *(v95 + 24), v91, _s8MetadataV15LocalItemStatusOMa_2);
  v99 = v267;
  if ((*(v92 + 48))(v91, 2, v267))
  {
    sub_226BFFD20(v98, _s8MetadataV9CloudItemVMa_2);
    v96 = _s8MetadataV15LocalItemStatusOMa_2;
    v97 = v91;
    goto LABEL_12;
  }

  v113 = v251;
  sub_226BFFDCC(v91, v251, _s8MetadataV9LocalItemVMa_2);
  v114 = *(v99 + 20);
  sub_226D6D4AC();
  sub_226C0060C(&qword_27D7A6C38, 255, MEMORY[0x277CC9578]);
  if (sub_226D6E35C())
  {
    v115 = IsMarkedAsCompleteEntryVMa;
  }

  else
  {
    if (sub_226D6D3FC())
    {
      v159 = *(v98 + *(v268 + 20) + v253[6]);
      v160 = *v113;
      v161 = v232;
      *v232 = v159;
      *(v161 + 8) = v160;
      v162 = v257;
      swift_storeEnumTagMultiPayload();
      (*(v23 + 56))(v161, 0, 1, v162);
      v163 = v159;
      v164 = v160;
      v115 = IsMarkedAsCompleteEntryVMa;
      v165 = v231;
    }

    else
    {
      v170 = v239;
      sub_226D67C5C();
      v171 = v253;
      v172 = *(v98 + v253[9]);
      v173 = v98;
      v174 = sub_226D67C6C();
      (*(v240 + 8))(v170, v241);
      v175 = v172 <= v174;
      v161 = v232;
      v165 = v231;
      if (v175)
      {
        v176 = *v251;
        v177 = *(v173 + v171[6]);
        *v232 = *v251;
        *(v161 + 8) = v177;
        v162 = v257;
        swift_storeEnumTagMultiPayload();
        (*(v23 + 56))(v161, 0, 1, v162);
        v178 = v176;
        v179 = v177;
      }

      else
      {
        v162 = v257;
        (*(v23 + 56))(v232, 1, 1, v257);
      }

      v115 = IsMarkedAsCompleteEntryVMa;
    }

    sub_226AC40E8(v161, v165, &qword_27D7A7F90, &qword_226D770F8);
    if ((*(v23 + 48))(v165, 1, v162) == 1)
    {
      sub_226AC47B0(v161, &qword_27D7A7F90, &qword_226D770F8);
      sub_226AC47B0(v165, &qword_27D7A7F90, &qword_226D770F8);
    }

    else
    {
      v180 = v229;
      sub_226BFFDCC(v165, v229, _s9OperationOMa_0);
      v181 = v230;
      sub_226BFFCB8(v180, v230, _s9OperationOMa_0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v266 = sub_226BBB744(0, v266[2] + 1, 1, v266);
      }

      v183 = v266[2];
      v182 = v266[3];
      if (v183 >= v182 >> 1)
      {
        v266 = sub_226BBB744(v182 > 1, v183 + 1, 1, v266);
      }

      sub_226BFFD20(v180, _s9OperationOMa_0);
      sub_226AC47B0(v161, &qword_27D7A7F90, &qword_226D770F8);
      v184 = v266;
      v266[2] = v183 + 1;
      sub_226BFFDCC(v181, v184 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v183, _s9OperationOMa_0);
      v272 = v184;
    }
  }

  v185 = *(v267 + 28);
  v186 = v251;
  v187 = *(v251 + *(v267 + 24));
  v188 = v235;
  sub_226AC40E8(v251 + v185, &v235[*(v115 + 20)], &qword_27D7A8BE0, &unk_226D718F0);
  *v188 = v187;
  v189 = v236;
  sub_226D330D4(v236);
  v190 = sub_226D365C4(v189, v188);
  v191 = (v190 & 1) == 0;
  if (v190)
  {
    v192 = v189;
  }

  else
  {
    v192 = v188;
  }

  if (v191)
  {
    v193 = v189;
  }

  else
  {
    v193 = v188;
  }

  v194 = v186;
  sub_226BFFD20(v192, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
  v195 = v193;
  v196 = v250;
  sub_226BFFDCC(v195, v250, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
  v197 = v186 + v185;
  v198 = v248;
  sub_226AC40E8(v197, &v248[*(v115 + 20)], &qword_27D7A8BE0, &unk_226D718F0);
  *v198 = v187;
  v199 = sub_226D365C4(v198, v196);
  sub_226BFFD20(v198, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
  if (v199)
  {
    v200 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8) + 64);
    v201 = *v194;
    v202 = v233;
    *v233 = *v194;
    *(v202 + 8) = *v196;
    sub_226AC40E8(&v196[*(v115 + 20)], v202 + v200, &qword_27D7A8BE0, &unk_226D718F0);
    swift_storeEnumTagMultiPayload();
    v203 = v201;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v205 = v268;
    v206 = v238;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v266 = sub_226BBB744(0, v266[2] + 1, 1, v266);
    }

    v208 = v266[2];
    v207 = v266[3];
    if (v208 >= v207 >> 1)
    {
      v266 = sub_226BBB744(v207 > 1, v208 + 1, 1, v266);
    }

    v209 = v266;
    v266[2] = v208 + 1;
    sub_226BFFDCC(v202, v209 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v208, _s9OperationOMa_0);
    v272 = v209;
  }

  else
  {
    v205 = v268;
    v206 = v238;
  }

  v210 = v255;
  sub_226BFFCB8(v255 + *(v205 + 20), v206, _s8MetadataV9CloudItemV6ObjectVMa_2);
  v211 = v253;
  v212 = *(v206 + v253[7]);
  v213 = IsMarkedAsCompleteEntryVMa;
  v214 = v248;
  sub_226AC40E8(v206 + v253[8], &v248[*(IsMarkedAsCompleteEntryVMa + 20)], &qword_27D7A8BE0, &unk_226D718F0);
  *v214 = v212;
  v215 = v250;
  v216 = sub_226D365C4(v214, v250);
  sub_226BFFD20(v214, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
  if ((v216 & 1) == 0)
  {
    sub_226BFFD20(v206, _s8MetadataV9CloudItemV6ObjectVMa_2);
    sub_226BFFD20(v215, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
    sub_226BFFD20(v251, _s8MetadataV9LocalItemVMa_2);
    sub_226BFFD20(v210, _s8MetadataV9CloudItemVMa_2);
    v95 = v264;
    v92 = v265;
    v100 = v260;
    v93 = v262;
    goto LABEL_14;
  }

  v217 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8) + 64);
  v218 = v215;
  v219 = *(v206 + v211[6]);
  v220 = v237;
  *v237 = v219;
  *(v220 + 8) = *v218;
  sub_226AC40E8(&v218[*(v213 + 20)], v220 + v217, &qword_27D7A8BE0, &unk_226D718F0);
  swift_storeEnumTagMultiPayload();
  v221 = v219;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v266 = sub_226BBB744(0, v266[2] + 1, 1, v266);
  }

  v92 = v265;
  v223 = v266[2];
  v222 = v266[3];
  if (v223 >= v222 >> 1)
  {
    v266 = sub_226BBB744(v222 > 1, v223 + 1, 1, v266);
  }

  v93 = v262;
  sub_226BFFD20(v206, _s8MetadataV9CloudItemV6ObjectVMa_2);
  sub_226BFFD20(v250, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
  sub_226BFFD20(v251, _s8MetadataV9LocalItemVMa_2);
  sub_226BFFD20(v255, _s8MetadataV9CloudItemVMa_2);
  v224 = v266;
  v266[2] = v223 + 1;
  sub_226BFFDCC(v237, v224 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v223, _s9OperationOMa_0);
  v272 = v224;
  v95 = v264;
LABEL_13:
  v100 = v260;
LABEL_14:
  v101 = v259;
  sub_226BFFCB8(a1 + v270, v259, _s8MetadataV15CloudItemStatusOMa_2);
  if (!v269(v101, 2, v268))
  {
    sub_226BFFD20(v101, _s8MetadataV15CloudItemStatusOMa_2);
    goto LABEL_31;
  }

  sub_226BFFCB8(a1 + *(v95 + 24), v100, _s8MetadataV15LocalItemStatusOMa_2);
  v102 = v267;
  if (!(*(v92 + 48))(v100, 2, v267))
  {
    v103 = v252;
    sub_226BFFDCC(v100, v252, _s8MetadataV9LocalItemVMa_2);
    v104 = v242;
    sub_226BFFCB8(a1 + v270, v242, _s8MetadataV15CloudItemStatusOMa_2);
    v105 = v269(v104, 2, v268);
    sub_226BFFD20(v104, _s8MetadataV15CloudItemStatusOMa_2);
    v106 = *v103;
    if (v105 == 1)
    {
      *v243 = v106;
      swift_storeEnumTagMultiPayload();
      v107 = v106;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_20;
      }

      goto LABEL_105;
    }

    *v244 = v106;
    swift_storeEnumTagMultiPayload();
    v116 = v106;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v266 = sub_226BBB744(0, v266[2] + 1, 1, v266);
    }

    v92 = v265;
    v118 = v266[2];
    v117 = v266[3];
    if (v118 >= v117 >> 1)
    {
      v266 = sub_226BBB744(v117 > 1, v118 + 1, 1, v266);
    }

    sub_226BFFD20(v252, _s8MetadataV9LocalItemVMa_2);
    v110 = v266;
    v266[2] = v118 + 1;
    v111 = v110 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v118;
    v112 = &v274;
    goto LABEL_30;
  }

  sub_226BFFD20(v100, _s8MetadataV15LocalItemStatusOMa_2);
  while (1)
  {
    v119 = *(v95 + 24);
    sub_226BFFCB8(a1 + v119, v93, _s8MetadataV15LocalItemStatusOMa_2);
    v120 = *(v92 + 48);
    v121 = v120(v93, 2, v102);
    v122 = v268;
    if (!v121)
    {
      v123 = _s8MetadataV15LocalItemStatusOMa_2;
      goto LABEL_36;
    }

    v93 = v254;
    sub_226BFFCB8(a1 + v270, v254, _s8MetadataV15CloudItemStatusOMa_2);
    if (v269(v93, 2, v122))
    {
      v123 = _s8MetadataV15CloudItemStatusOMa_2;
LABEL_36:
      sub_226BFFD20(v93, v123);
      v124 = v261;
      goto LABEL_37;
    }

    v135 = v246;
    sub_226BFFDCC(v93, v246, _s8MetadataV9CloudItemVMa_2);
    v93 = v245;
    sub_226BFFCB8(a1 + v119, v245, _s8MetadataV15LocalItemStatusOMa_2);
    v136 = v120(v93, 2, v102);
    sub_226BFFD20(v93, _s8MetadataV15LocalItemStatusOMa_2);
    if (v136 == 1)
    {
      v137 = *(v135 + *(v268 + 20) + v253[6]);
      *v247 = v137;
      swift_storeEnumTagMultiPayload();
      v138 = v137;
      v139 = v135;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v266 = sub_226BBB744(0, v266[2] + 1, 1, v266);
      }

      v124 = v261;
      v141 = v266[2];
      v140 = v266[3];
      v122 = v268;
      if (v141 >= v140 >> 1)
      {
        v266 = sub_226BBB744(v140 > 1, v141 + 1, 1, v266);
      }

      sub_226BFFD20(v139, _s8MetadataV9CloudItemVMa_2);
      v93 = v266;
      v266[2] = v141 + 1;
      v142 = &v93[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v141];
      v143 = &v275;
    }

    else
    {
      v144 = v239;
      sub_226D67C5C();
      v145 = v253;
      v146 = *(v135 + v253[9]);
      v147 = sub_226D67C6C();
      (*(v240 + 8))(v144, v241);
      v148 = v135;
      if (v146 > v147)
      {
        sub_226BFFD20(v135, _s8MetadataV9CloudItemVMa_2);
        v124 = v261;
        v122 = v268;
        goto LABEL_37;
      }

      v122 = v268;
      v166 = *(v148 + *(v268 + 20) + v145[6]);
      *v234 = v166;
      swift_storeEnumTagMultiPayload();
      v167 = v166;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v266 = sub_226BBB744(0, v266[2] + 1, 1, v266);
      }

      v169 = v266[2];
      v168 = v266[3];
      v124 = v261;
      if (v169 >= v168 >> 1)
      {
        v266 = sub_226BBB744(v168 > 1, v169 + 1, 1, v266);
      }

      sub_226BFFD20(v148, _s8MetadataV9CloudItemVMa_2);
      v93 = v266;
      v266[2] = v169 + 1;
      v142 = &v93[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v169];
      v143 = &v266;
    }

    sub_226BFFDCC(*(v143 - 32), v142, _s9OperationOMa_0);
    v272 = v93;
LABEL_37:
    sub_226BFFCB8(a1 + v270, v124, _s8MetadataV15CloudItemStatusOMa_2);
    if (v269(v124, 2, v122))
    {
      v125 = _s8MetadataV15CloudItemStatusOMa_2;
      v126 = v124;
      goto LABEL_103;
    }

    sub_226BFFDCC(v124, v256, _s8MetadataV9CloudItemVMa_2);
    v127 = sub_226D334E0();
    v128 = v127;
    if (v127 >> 62)
    {
      v129 = sub_226D6EDFC();
      if (!v129)
      {
LABEL_101:

        v131 = MEMORY[0x277D84F90];
        goto LABEL_102;
      }
    }

    else
    {
      v129 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v129)
      {
        goto LABEL_101;
      }
    }

    v271 = MEMORY[0x277D84F90];
    sub_226AE2228(0, v129 & ~(v129 >> 63), 0);
    if ((v129 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_105:
    v266 = sub_226BBB744(0, v266[2] + 1, 1, v266);
LABEL_20:
    v92 = v265;
    v109 = v266[2];
    v108 = v266[3];
    if (v109 >= v108 >> 1)
    {
      v266 = sub_226BBB744(v108 > 1, v109 + 1, 1, v266);
    }

    sub_226BFFD20(v252, _s8MetadataV9LocalItemVMa_2);
    v110 = v266;
    v266[2] = v109 + 1;
    v111 = v110 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v109;
    v112 = &v273;
LABEL_30:
    sub_226BFFDCC(*(v112 - 32), v111, _s9OperationOMa_0);
    v272 = v110;
    v95 = v264;
LABEL_31:
    v102 = v267;
  }

  v130 = 0;
  v131 = v271;
  do
  {
    if ((v128 & 0xC000000000000001) != 0)
    {
      v132 = MEMORY[0x22AA8AFD0](v130, v128);
    }

    else
    {
      v132 = *(v128 + 8 * v130 + 32);
    }

    *v27 = v132;
    swift_storeEnumTagMultiPayload();
    v271 = v131;
    v134 = *(v131 + 16);
    v133 = *(v131 + 24);
    if (v134 >= v133 >> 1)
    {
      sub_226AE2228(v133 > 1, v134 + 1, 1);
      v131 = v271;
    }

    ++v130;
    *(v131 + 16) = v134 + 1;
    sub_226BFFDCC(v27, v131 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v134, _s9OperationOMa_0);
  }

  while (v129 != v130);

LABEL_102:
  sub_226CEDF3C(v131);
  v125 = _s8MetadataV9CloudItemVMa_2;
  v126 = v256;
LABEL_103:
  sub_226BFFD20(v126, v125);
  return v272;
}

unint64_t sub_226BFFB08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6660, &qword_226D74320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D71840;
  *(inited + 32) = 0x6D6F44726F727265;
  *(inited + 40) = 0xEB000000006E6961;
  v1 = sub_226D6D03C();
  v2 = [v1 domain];

  v3 = sub_226D6E39C();
  v5 = v4;

  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 64) = 0x646F43726F727265;
  *(inited + 72) = 0xE900000000000065;
  v6 = sub_226D6D03C();
  [v6 code];

  *(inited + 80) = sub_226D6F1CC();
  *(inited + 88) = v7;
  v8 = sub_226B224FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6668, &qword_226D71880);
  swift_arrayDestroy();
  return v8;
}

uint64_t type metadata accessor for OrderMappingModel.Change()
{
  result = qword_27D7A7FA8;
  if (!qword_27D7A7FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BFFCB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BFFD20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_226BFFD80@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_226BFD5F0(a1);
}

size_t sub_226BFFD9C@<X0>(size_t *a1@<X8>)
{
  result = sub_226BFFE34(*(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_226BFFDCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

size_t sub_226BFFE34(uint64_t a1, void *a2)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - v5;
  v62 = sub_226D6D52C();
  v64 = *(v62 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  v67 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_226D6D4AC();
  v56 = *(v61 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v61);
  v63 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v60 = *(v11 - 8);
  v12 = *(v60 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D681CC();
  v15 = sub_226D6816C();
  v16 = MEMORY[0x22AA84200](a1);
  [v15 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_226D76640;
  v18 = MEMORY[0x277D837D0];
  *(v17 + 32) = 25705;
  *(v17 + 40) = 0xE200000000000000;
  *(v17 + 56) = v18;
  *(v17 + 64) = 0xD000000000000013;
  *(v17 + 72) = 0x8000000226D81C60;
  *(v17 + 88) = v18;
  *(v17 + 96) = 0x656449726564726FLL;
  *(v17 + 104) = 0xEF7265696669746ELL;
  *(v17 + 120) = v18;
  strcpy((v17 + 128), "schemaVersion");
  *(v17 + 142) = -4864;
  *(v17 + 152) = v18;
  *(v17 + 160) = 0x4464657461647075;
  *(v17 + 168) = 0xEB00000000657461;
  *(v17 + 184) = v18;
  *(v17 + 192) = 0xD000000000000012;
  *(v17 + 200) = 0x8000000226D83150;
  *(v17 + 248) = v18;
  *(v17 + 216) = v18;
  *(v17 + 224) = 0xD000000000000022;
  *(v17 + 232) = 0x8000000226D83170;
  v19 = sub_226D6E5CC();

  [v15 setPropertiesToFetch_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_226D71F20;
  v21 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v22 = sub_226D6E36C();
  v23 = [v21 initWithKey:v22 ascending:0];

  *(v20 + 32) = v23;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v24 = sub_226D6E5CC();

  [v15 setSortDescriptors_];

  v25 = v66;
  v26 = sub_226D6EBBC();
  if (v25)
  {

    return v23;
  }

  v27 = v64;
  v58 = v11;
  v59 = v14;
  v28 = v26;
  if (v26 >> 62)
  {
    v29 = sub_226D6EDFC();
  }

  else
  {
    v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v29)
  {

    return MEMORY[0x277D84F90];
  }

  v50 = 0;
  v51 = v15;
  v68 = MEMORY[0x277D84F90];
  result = sub_226AE27F0(0, v29 & ~(v29 >> 63), 0);
  v57 = v29;
  if ((v29 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v32 = v28;
    v33 = v28 & 0xC000000000000001;
    v23 = v68;
    v54 = (v56 + 56);
    v55 = v33;
    v52 = (v27 + 32);
    v53 = (v56 + 32);
    v56 = v32;
    v34 = v58;
    do
    {
      v66 = v23;
      if (v55)
      {
        v35 = MEMORY[0x22AA8AFD0](v31);
      }

      else
      {
        v35 = *(v32 + 8 * v31 + 32);
      }

      v36 = v35;
      v65 = [v35 objectID];
      v37 = [v36 updatedDate];
      sub_226D6D45C();

      v38 = [v36 id];
      sub_226D6D4FC();

      LODWORD(v64) = [v36 isMarkedAsComplete];
      v39 = [v36 isMarkedAsCompleteModificationDate];
      if (v39)
      {
        v40 = v39;
        sub_226D6D45C();

        v41 = 0;
      }

      else
      {
        v41 = 1;
      }

      v42 = v6;
      v43 = *v54;
      v44 = v61;
      (*v54)(v42, v41, 1, v61);
      v45 = [v36 schemaVersion];

      v46 = v34[8];
      v47 = v59;
      v43(&v59[v46], 1, 1, v44);
      *(v47 + v34[6]) = v65;
      (*v53)(v47, v63, v44);
      (*v52)(v47 + v34[5], v67, v62);
      *(v47 + v34[7]) = v64;
      sub_226B3E298(v42, v47 + v46);
      *(v47 + v34[9]) = v45;
      v23 = v66;
      v68 = v66;
      v49 = v66[2];
      v48 = v66[3];
      v6 = v42;
      if (v49 >= v48 >> 1)
      {
        sub_226AE27F0(v48 > 1, v49 + 1, 1);
        v47 = v59;
        v23 = v68;
      }

      ++v31;
      v23[2] = v49 + 1;
      sub_226BFFDCC(v47, v23 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v49, _s8MetadataV9CloudItemV6ObjectVMa_2);
      v32 = v56;
    }

    while (v57 != v31);

    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_226C0060C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_226C006D4()
{
  sub_226C00770();
  if (v0 <= 0x3F)
  {
    sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226C00770()
{
  if (!qword_27D7A7FB8)
  {
    sub_226D6B49C();
    sub_226C0060C(&qword_27D7A7F78, 255, MEMORY[0x277CC7F28]);
    v0 = type metadata accessor for StoreMappingChangeType();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A7FB8);
    }
  }
}

uint64_t sub_226C00808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D6EB9C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C008CC, 0, 0);
}

uint64_t sub_226C008CC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v8 = *(*(v7 + 8) + 8);
  sub_226D6BAAC();
  v9 = sub_226D676AC();
  v0[9] = v9;

  v10 = swift_allocObject();
  v0[10] = v10;
  v10[2] = v6;
  v10[3] = v5;
  v10[4] = v9;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v4);
  v11 = *(MEMORY[0x277CBE118] + 4);

  v9;
  v12 = swift_task_alloc();
  v0[11] = v12;
  v13 = sub_226D6B9BC();
  *v12 = v0;
  v12[1] = sub_226C00A4C;
  v14 = v0[8];
  v15 = v0[2];

  return MEMORY[0x28210EE50](v15, v14, sub_226C00F24, v10, v13);
}

uint64_t sub_226C00A4C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_226C00C4C;
  }

  else
  {
    v7 = sub_226C00BE0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226C00BE0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226C00C4C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 96);

  return v2();
}

void sub_226C00CB8(uint64_t a1, unint64_t a2)
{
  sub_226D69F0C();
  v5 = sub_226D69D8C();
  if (v2)
  {
  }

  else
  {
    v15 = v5;
    if (v5)
    {
      sub_226D69D5C();

      return;
    }
  }

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_27D7A7D10);

  v7 = sub_226D6E05C();
  v8 = sub_226D6E9EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_226AC4530(a1, a2, &v16);
    _os_log_impl(&dword_226AB4000, v7, v8, "No connected account found for primaryAccountIdentifier: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  v11 = sub_226D6A0DC();
  sub_226BD7738();
  swift_allocError();
  v13 = v12;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000034, 0x8000000226D831D0);
  MEMORY[0x22AA8A510](a1, a2);
  v14 = v17;
  *v13 = v16;
  v13[1] = v14;
  (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277CC7AC0], v11);
  swift_willThrow();
}

unint64_t sub_226C00F44()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D71840;
  strcpy((inited + 32), "institutionID");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_226D6E36C();
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_226D6E85C();
  v5 = sub_226B224E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_226C01048(uint64_t a1, int a2)
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

uint64_t sub_226C01090(uint64_t result, int a2, int a3)
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

void sub_226C01160(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_226C011C8(uint64_t a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = sub_226C01454(a1);
  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 sharedScheduler];
  v20 = v2;
  v7 = sub_226D6E36C();
  v8 = [v6 taskRequestForIdentifier_];

  if (!v8)
  {

    sub_226C016A8(a1);
LABEL_8:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;

    sub_226D6D42C();
    [v10 setScheduleAfter_];
    v11 = [v5 sharedScheduler];
    v21[0] = 0;
    v12 = [v11 updateTaskRequest:v10 error:v21];

    if (v12)
    {
      v13 = v21[0];
    }

    else
    {
      v14 = v21[0];
      sub_226D6D04C();

      swift_willThrow();
    }

    goto LABEL_8;
  }

  sub_226D6EEFC();
  MEMORY[0x22AA8A510](v20, v4);
  MEMORY[0x22AA8A510](0xD00000000000002FLL, 0x8000000226D83360);
  v16 = [v8 description];
  v17 = sub_226D6E39C();
  v19 = v18;

  MEMORY[0x22AA8A510](v17, v19);

  sub_226D6F0AC();
  __break(1u);
}

uint64_t sub_226C01454(uint64_t a1)
{
  v2 = v1;
  v4 = 0xD00000000000002DLL;
  v5 = *v2;
  v6 = sub_226D66F5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277CC6688])
  {
    return 0xD000000000000030;
  }

  if (v11 == *MEMORY[0x277CC6678])
  {
    return v4;
  }

  if (v11 == *MEMORY[0x277CC6670])
  {
    return 0xD00000000000002CLL;
  }

  if (v11 == *MEMORY[0x277CC6680])
  {
    return v4;
  }

  v13[2] = 0;
  v13[3] = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000019, 0x8000000226D83270);
  v13[1] = v2;
  sub_226D6EFBC();
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

void sub_226C016A8(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = sub_226C01454(a1);
  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 sharedScheduler];
  v7 = sub_226D6E36C();
  v8 = [v6 taskRequestForIdentifier_];

  if (v8)
  {

    if (qword_28105F680 != -1)
    {
      swift_once();
    }

    v9 = sub_226D6E07C();
    __swift_project_value_buffer(v9, qword_28105F688);

    v10 = sub_226D6E05C();
    v11 = sub_226D6E9EC();

    if (!os_log_type_enabled(v10, v11))
    {

      v19 = *MEMORY[0x277D85DE8];
      return;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315138;
    v14 = sub_226AC4530(v2, v4, v22);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_226AB4000, v10, v11, "Background task %s already submitted, skipping", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  else
  {

    v15 = sub_226C01984(a1);
    sub_226D6D42C();
    [v15 setScheduleAfter_];
    v16 = [v5 sharedScheduler];
    v22[0] = 0;
    v17 = [v16 submitTaskRequest:v15 error:v22];

    if (v17)
    {
      v18 = v22[0];
    }

    else
    {
      v20 = v22[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226C01984(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_226D66F5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C01454(a1);
  v10 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v11 = sub_226D6E36C();

  v12 = [v10 initWithIdentifier_];

  v13 = v12;
  [v13 setPriority_];
  (*(v6 + 16))(v9, a1, v5);
  v14 = (*(v6 + 88))(v9, v5);
  if (v14 != *MEMORY[0x277CC6688] && v14 != *MEMORY[0x277CC6678])
  {
    if (v14 != *MEMORY[0x277CC6670] && v14 != *MEMORY[0x277CC6680])
    {
      v18[2] = 0;
      v18[3] = 0xE000000000000000;
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](0xD000000000000019, 0x8000000226D83270);
      v18[1] = v2;
      sub_226D6EFBC();
      result = sub_226D6F0AC();
      __break(1u);
      return result;
    }

    [v13 setRequiresExternalPower_];
  }

  return v13;
}

void sub_226C01C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedScheduler];
  v7 = sub_226C01454(a1);
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v11 = sub_226D6E36C();
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = v9;
  v12[4] = &unk_226D77220;
  v12[5] = v10;
  v14[4] = sub_226B173EC;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_226C01160;
  v14[3] = &block_descriptor_16_0;
  v13 = _Block_copy(v14);

  [v6 registerForTaskWithIdentifier:v11 usingQueue:0 launchHandler:v13];
  _Block_release(v13);
}

uint64_t sub_226C01D94(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return v5();
}

void sub_226C01E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedScheduler];
  v7 = sub_226C01454(a1);
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v11 = sub_226D6E36C();
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = v9;
  v12[4] = &unk_226D77210;
  v12[5] = v10;
  v14[4] = sub_226C02260;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_226C01160;
  v14[3] = &block_descriptor_12;
  v13 = _Block_copy(v14);

  [v6 registerForTaskWithIdentifier:v11 usingQueue:0 launchHandler:v13];
  _Block_release(v13);
}

uint64_t sub_226C01FFC(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226AD827C;

  return v9(a1, a2);
}

uint64_t sub_226C021B0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_226AD827C;

  return sub_226C01FFC(a1, a2, v7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226C02284()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226AD827C;

  return sub_226C01D94(v2);
}

double sub_226C02324@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_226D6E36C();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    sub_226AE59B4(0, &qword_281062C88, 0x277CBEBD0);
    v5 = sub_226D6B5EC();
    v6 = MEMORY[0x277CC7F68];
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_226D6B5FC();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_226C02404(void *a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v36 - v9;
  v11 = _s9OperationOMa_0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226C05158(v1, v14, _s9OperationOMa_0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = *v14;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_226C0300C(*v14, a1);
      }

      else
      {
        sub_226C03120(*v14, a1);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_226C029F4(*v14, a1);
    }

    else
    {
      sub_226C028F8(*v14, a1);
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v19 = v14[1];
    if (EnumCaseMultiPayload == 4)
    {
      sub_226C03DE8(*v14, v14[1], a1);
    }

    else
    {
      sub_226C04024(*v14, v14[1], a1);
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v19 = v14[1];
    sub_226C04B10(*v14, v19, a1);
LABEL_24:

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v17 = *(v14 + 8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8);
    sub_226B72784(v14 + *(v18 + 64), v10);
    sub_226C04D34(v16, v17, v10, a1);
    v8 = v10;
  }

  else
  {
    v20 = *(v14 + 8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8);
    sub_226B72784(v14 + *(v21 + 64), v8);
    sub_226D681CC();
    v22 = sub_226D6817C();
    if (!v2)
    {
      v23 = v22;
      sub_226D6819C();
      v36[0] = 0;
      if ([a1 save_])
      {
        v24 = qword_28105F620;
        v25 = v36[0];
        if (v24 != -1)
        {
          swift_once();
        }

        v26 = sub_226D6E07C();
        __swift_project_value_buffer(v26, qword_28105F628);
        v27 = v23;
        v28 = sub_226D6E05C();
        v29 = sub_226D6E9AC();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412290;
          v32 = [v27 objectID];
          *(v30 + 4) = v32;
          *v31 = v32;
          _os_log_impl(&dword_226AB4000, v28, v29, "Updated isMarkedAsComplete for cloud order: %@", v30, 0xCu);
          sub_226AC47B0(v31, &qword_27D7A5FB0, &qword_226D70870);
          MEMORY[0x22AA8BEE0](v31, -1, -1);
          MEMORY[0x22AA8BEE0](v30, -1, -1);
          v33 = v28;
        }

        else
        {
          v33 = v27;
          v27 = v28;
        }
      }

      else
      {
        v34 = v36[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }
  }

  sub_226AC47B0(v8, &qword_27D7A8BE0, &unk_226D718F0);

LABEL_29:
  v35 = *MEMORY[0x277D85DE8];
}

uint64_t _s9OperationOMa_0()
{
  result = qword_27D7A7FC0;
  if (!qword_27D7A7FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226C028F8(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_226D681CC();
  v4 = sub_226D6817C();
  if (!v2)
  {
    v5 = v4;
    [a2 deleteObject_];
    v9[0] = 0;
    if ([a2 save_])
    {
      v6 = v9[0];
    }

    else
    {
      v7 = v9[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226C029F4(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v49 = sub_226D6B49C();
  v52 = *(v49 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6D4AC();
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ManagedOrderDeleter.DeleteResult();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D67F1C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6751C();
  v18 = v53;
  result = sub_226D674AC();
  if (!v18)
  {
    v45 = v6;
    v46 = v5;
    v47 = v12;
    v48 = a2;
    v53 = 0;
    v20 = result;
    sub_226D67E6C();
    sub_226D67F0C();
    (*(v14 + 8))(v17, v13);
    v21 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v22 = sub_226D6E36C();

    v23 = [v21 initWithBundleIdentifier_];

    v58[3] = sub_226AE59B4(0, &qword_28105F428, 0x277CE2028);
    v58[4] = MEMORY[0x277CC85E8];
    v58[0] = v23;
    memset(v59, 0, sizeof(v59));
    memset(v60, 0, sizeof(v60));
    v55 = &type metadata for WidgetRefresher;
    v56 = sub_226B31FA8();
    sub_226AFD680(v54, v59, &qword_27D7A6910, &unk_226D721C0);
    v24 = type metadata accessor for WalletMessageUpdater();
    v25 = swift_allocObject();
    v55 = v24;
    v56 = sub_226C06354(&qword_281062070, type metadata accessor for WalletMessageUpdater);
    v54[0] = v25;
    sub_226AFD680(v54, &v59[40], &qword_27D7A6E50, &unk_226D73598);
    v55 = &type metadata for ClassicOrderBiomeStream;
    v56 = &off_283A6D820;
    sub_226C02324(&v57);
    sub_226AFD680(v54, v60, &qword_27D7A6FA0, &qword_226D79780);
    v26 = v50;
    sub_226D6D46C();
    v27 = [v20 orderRegistration];
    if (v27)
    {
      v28 = v27;
      v29 = sub_226D6D3EC();
      [v28 setCancellationDate_];
    }

    v30 = v46;
    sub_226D6740C();
    v31 = v48;
    [v48 deleteObject_];
    v32 = v53;
    v33 = sub_226B5AC68(v20, v31);
    v34 = v20;
    v35 = v47;
    v36 = v49;
    v37 = v45;
    if (v32)
    {

      (*(v52 + 8))(v30, v36);
      (*(v51 + 8))(v26, v37);
    }

    else
    {
      v38 = v33;
      v53 = v34;
      (*(v51 + 8))(v26, v45);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F98, &unk_226D73B60);
      v40 = v30;
      v41 = *(v39 + 48);
      (*(v52 + 32))(v35, v40, v36);
      *(v35 + v41) = v38 & 1;
      v54[0] = 0;
      if (([v31 save_] & 1) == 0)
      {
        v44 = v54[0];
        sub_226D6D04C();

        swift_willThrow();
        sub_226C062F4(v35, type metadata accessor for ManagedOrderDeleter.DeleteResult);
        result = sub_226B42BE0(v58);
        goto LABEL_9;
      }

      v42 = v54[0];
      sub_226B5AF60(v35);

      sub_226C062F4(v35, type metadata accessor for ManagedOrderDeleter.DeleteResult);
    }

    result = sub_226B42BE0(v58);
  }

LABEL_9:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_226C0300C(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D6751C();
  v4 = sub_226D674AC();
  if (!v2)
  {
    v5 = v4;
    sub_226D681CC();
    v6 = v5;
    v7 = a2;

    v11[0] = 0;
    if ([v7 save_])
    {
      v8 = v11[0];
    }

    else
    {
      v9 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_226C03120(uint64_t a1, void *a2)
{
  v131 = *MEMORY[0x277D85DE8];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  v3 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v106 = (&v93 - v4);
  v5 = type metadata accessor for OrderNotificationCenter.Continuation();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v93 - v10;
  v12 = sub_226D6D1AC();
  v109 = *(v12 - 8);
  v13 = *(v109 + 64);
  MEMORY[0x28223BE20](v12);
  v108 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
  v16 = *(*(updated - 8) + 64);
  v17 = MEMORY[0x28223BE20](updated);
  v19 = (&v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v93 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v93 - v23;
  sub_226D681CC();
  v25 = v110;
  v26 = sub_226D6817C();
  if (!v25)
  {
    v102 = v12;
    v98 = v22;
    v99 = updated;
    v95 = v19;
    v96 = v11;
    v104 = a2;
    v100 = v24;
    v27 = v26;
    v110 = 0;
    v28 = sub_226B31FA8();
    v29 = type metadata accessor for WalletMessageUpdater();
    v30 = swift_allocObject();
    v31 = sub_226D69BFC();
    v103 = MEMORY[0x22AA85C90]();
    *(&v128 + 1) = &type metadata for ClassicOrderBiomeStream;
    *&v129[0] = &off_283A6D820;
    sub_226C02324(v129 + 8);
    v32 = sub_226D6B5EC();
    v33 = MEMORY[0x277CC7F68];
    v125 = v32;
    v126 = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(&v124);
    sub_226D6B58C();
    v122 = v32;
    v123 = v33;
    __swift_allocate_boxed_opaque_existential_1(&v121);
    sub_226D6B5AC();
    v34 = sub_226D6827C();
    v101 = v34;
    v119 = v29;
    v120 = sub_226C06354(&qword_281062070, type metadata accessor for WalletMessageUpdater);
    *&v118 = v30;
    type metadata accessor for ManagedOrderImporter();
    inited = swift_initStackObject();
    *(inited + 312) = 0xD000000000000018;
    *(inited + 320) = 0x8000000226D81BA0;
    sub_226AC484C(&v124, inited + 232);
    sub_226AC484C(&v121, inited + 272);
    v36 = MEMORY[0x277CC7238];
    *(inited + 16) = v34;
    *(inited + 24) = v36;
    *(inited + 72) = v129[4];
    *(inited + 88) = v130;
    *(inited + 96) = &type metadata for WidgetRefresher;
    *(inited + 104) = v28;
    sub_226AC484C(&v118, inited + 112);
    *(inited + 40) = v129[3];
    v37 = v127;
    *(inited + 168) = v128;
    v38 = v129[1];
    *(inited + 184) = v129[0];
    *(inited + 32) = v103;
    v39 = MEMORY[0x277CC79A8];
    *(inited + 200) = v38;
    *(inited + 216) = v129[2];
    *(inited + 56) = v31;
    *(inited + 64) = v39;
    *(inited + 152) = v37;
    v40 = [v27 orderData];
    v41 = sub_226D6D21C();
    v43 = v42;

    v103 = v27;
    v97 = sub_226D6818C();
    sub_226D6727C();
    v44 = [objc_opt_self() defaultManager];
    v45 = [v44 temporaryDirectory];

    v46 = v108;
    sub_226D6D14C();

    *(&v112 + 1) = sub_226D6920C();
    *&v113 = MEMORY[0x277CC77F0];
    __swift_allocate_boxed_opaque_existential_1(&v111);
    sub_226D691FC();
    v47 = v110;
    v48 = sub_226D6724C();
    if (v47)
    {
      sub_226B11B98(v41, v43);
      (*(v109 + 8))(v46, v102);
      __swift_destroy_boxed_opaque_existential_0Tm(&v111);
      v52 = v104;
      v110 = 0;
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v53 = sub_226D6E07C();
      __swift_project_value_buffer(v53, qword_28105F628);
      v54 = v47;
      v55 = sub_226D6E05C();
      v56 = sub_226D6E9DC();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138412290;
        v59 = v47;
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v57 + 4) = v60;
        *v58 = v60;
        _os_log_impl(&dword_226AB4000, v55, v56, "Unable to insert local order: %@", v57, 0xCu);
        sub_226AC47B0(v58, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v58, -1, -1);
        MEMORY[0x22AA8BEE0](v57, -1, -1);
      }

      [v52 reset];
    }

    else
    {
      v49 = v48;
      (*(v109 + 8))(v46, v102);
      v50 = __swift_destroy_boxed_opaque_existential_0Tm(&v111);
      v110 = &v93;
      MEMORY[0x28223BE20](v50);
      *(&v93 - 6) = inited;
      *(&v93 - 5) = v49;
      *(&v93 - 4) = v41;
      *(&v93 - 3) = v43;
      *(&v93 - 16) = v97 & 1;
      *(&v93 - 15) = 1;
      *(&v93 - 13) = 0;
      *(&v93 - 1) = v104;
      v51 = v98;
      sub_226D6721C();

      sub_226B11B98(v41, v43);
      v62 = v100;
      sub_226C051C0(v51, v100, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      v63 = v62;
      v64 = v95;
      sub_226C05158(v63, v95, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v66 = *v64;
      if (EnumCaseMultiPayload < 2)
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
        sub_226AC47B0(v64 + *(v67 + 48), &qword_27D7A7798, &unk_226D75570);
      }

      v117 = 0;
      memset(v116, 0, sizeof(v116));
      v68 = v103;
      [v103 isMarkedAsComplete];
      v69 = [v68 isMarkedAsCompleteModificationDate];
      v70 = v104;
      v71 = v96;
      v94 = inited + 32;
      if (v69)
      {
        v72 = v69;
        sub_226D6D45C();

        v73 = 0;
      }

      else
      {
        v73 = 1;
      }

      v74 = sub_226D6D4AC();
      (*(*(v74 - 8) + 56))(v71, v73, 1, v74);
      sub_226D674BC();
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      sub_226B42C34(v66, v70);
      v110 = 0;
      sub_226AFD62C(&v111);
      sub_226AC47B0(v71, &qword_27D7A8BE0, &unk_226D718F0);
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v75 = sub_226D6E07C();
      __swift_project_value_buffer(v75, qword_28105F628);
      v76 = v66;
      v77 = sub_226D6E05C();
      v78 = sub_226D6E9AC();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 138412290;
        v81 = [v76 objectID];
        *(v79 + 4) = v81;
        *v80 = v81;
        _os_log_impl(&dword_226AB4000, v77, v78, "Inserted local order: %@", v79, 0xCu);
        sub_226AC47B0(v80, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v80, -1, -1);
        MEMORY[0x22AA8BEE0](v79, -1, -1);
      }

      sub_226AC47B0(v116, &qword_27D7A6910, &unk_226D721C0);
      *&v111 = 0;
      if ([v70 save_])
      {
        v82 = qword_281061980;
        v83 = v111;
        v84 = v82 == -1;
        v85 = v100;
        if (!v84)
        {
          swift_once();
        }

        v86 = v105;
        v87 = __swift_project_value_buffer(v105, qword_281064538);
        v88 = v106;
        sub_226AE532C(v87, v106);
        sub_226C05158(v87 + *(v86 + 48), v88 + *(v86 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
        v89 = v88 + *(v86 + 48);
        v90 = v107;
        sub_226C051C0(v89, v107, type metadata accessor for OrderNotificationCenter.Continuation);
        __swift_destroy_boxed_opaque_existential_0Tm(v88);
        sub_226BE7E54(v85, v90);

        sub_226C062F4(v90, type metadata accessor for OrderNotificationCenter.Continuation);
        sub_226C062F4(v100, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      }

      else
      {
        v91 = v111;
        sub_226D6D04C();

        swift_willThrow();
        swift_setDeallocating();
        sub_226AC47B0(v94, &qword_27D7A7790, &unk_226D79770);
        sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
        sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));
        v92 = *(inited + 320);

        sub_226C062F4(v100, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      }
    }
  }

  v61 = *MEMORY[0x277D85DE8];
}

void sub_226C03DE8(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D681CC();
  v5 = sub_226D6817C();
  if (!v3)
  {
    v6 = v5;
    sub_226D6751C();
    v8 = sub_226D674AC();
    sub_226D681AC();
    v11[0] = 0;
    if ([a3 save_])
    {
      v9 = v11[0];
    }

    else
    {
      v10 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_226C04024(uint64_t a1, void *a2, void *a3)
{
  v95 = a2;
  v111 = *MEMORY[0x277D85DE8];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  v4 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v93 = (&v83 - v5);
  v6 = type metadata accessor for OrderNotificationCenter.Continuation();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6D1AC();
  v94 = *(v10 - 8);
  v11 = v94[8];
  MEMORY[0x28223BE20](v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
  v15 = *(*(updated - 8) + 64);
  v16 = MEMORY[0x28223BE20](updated);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v83 - v19;
  sub_226D6751C();
  v21 = a3;
  v22 = v96;
  v23 = sub_226D674AC();
  if (!v22)
  {
    v89 = v13;
    v90 = v10;
    v87 = updated;
    v88 = v18;
    v85 = v9;
    v86 = v20;
    v91 = v23;
    sub_226D681CC();
    v24 = sub_226D6817C();
    v96 = 0;
    v25 = a3;
    v26 = v24;
    v84 = sub_226B31FA8();
    v27 = type metadata accessor for WalletMessageUpdater();
    v83 = swift_allocObject();
    v28 = sub_226D69BFC();
    v95 = MEMORY[0x22AA85C90]();
    *(&v108 + 1) = &type metadata for ClassicOrderBiomeStream;
    *&v109[0] = &off_283A6D820;
    sub_226C02324(v109 + 8);
    v29 = sub_226D6B5EC();
    v30 = MEMORY[0x277CC7F68];
    v105 = v29;
    v106 = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(&v104);
    sub_226D6B58C();
    v102 = v29;
    v103 = v30;
    __swift_allocate_boxed_opaque_existential_1(&v101);
    sub_226D6B5AC();
    v31 = sub_226D6827C();
    v99 = v27;
    v100 = sub_226C06354(&qword_281062070, type metadata accessor for WalletMessageUpdater);
    *&v98 = v83;
    type metadata accessor for ManagedOrderImporter();
    inited = swift_initStackObject();
    *(inited + 312) = 0xD000000000000018;
    *(inited + 320) = 0x8000000226D81BA0;
    sub_226AC484C(&v104, inited + 232);
    sub_226AC484C(&v101, inited + 272);
    v33 = MEMORY[0x277CC7238];
    *(inited + 16) = v31;
    *(inited + 24) = v33;
    *(inited + 72) = v109[4];
    *(inited + 88) = v110;
    *(inited + 96) = &type metadata for WidgetRefresher;
    *(inited + 104) = v84;
    sub_226AC484C(&v98, inited + 112);
    v34 = v109[2];
    *(inited + 40) = v109[3];
    v35 = v107;
    *(inited + 168) = v108;
    v36 = v109[1];
    *(inited + 184) = v109[0];
    *(inited + 200) = v36;
    *(inited + 32) = v95;
    v37 = MEMORY[0x277CC79A8];
    *(inited + 216) = v34;
    *(inited + 56) = v28;
    *(inited + 64) = v37;
    *(inited + 152) = v35;
    v38 = [v26 orderData];
    v39 = sub_226D6D21C();
    v41 = v40;

    v95 = v26;
    v42 = v41;
    LODWORD(v83) = sub_226D6818C();
    v84 = sub_226D6727C();
    v43 = [objc_opt_self() defaultManager];
    v44 = [v43 temporaryDirectory];

    v45 = v89;
    sub_226D6D14C();

    v97[3] = sub_226D6920C();
    v97[4] = MEMORY[0x277CC77F0];
    __swift_allocate_boxed_opaque_existential_1(v97);
    sub_226D691FC();
    v46 = v96;
    v47 = sub_226D6724C();
    if (v46)
    {
      sub_226B11B98(v39, v42);
      (v94[1])(v45, v90);
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v55 = sub_226D6E07C();
      __swift_project_value_buffer(v55, qword_28105F628);
      v56 = v46;
      v57 = sub_226D6E05C();
      v58 = sub_226D6E9DC();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        v61 = v46;
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v59 + 4) = v62;
        *v60 = v62;
        _os_log_impl(&dword_226AB4000, v57, v58, "Unable to update order: %@", v59, 0xCu);
        sub_226AC47B0(v60, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v60, -1, -1);
        MEMORY[0x22AA8BEE0](v59, -1, -1);
      }

      [v25 reset];
    }

    else
    {
      v48 = v47;
      (v94[1])(v45, v90);
      v49 = __swift_destroy_boxed_opaque_existential_0Tm(v97);
      v94 = &v83;
      MEMORY[0x28223BE20](v49);
      v50 = v91;
      *(&v83 - 8) = inited;
      *(&v83 - 7) = v50;
      *(&v83 - 6) = v48;
      *(&v83 - 5) = v39;
      v51 = v21;
      v52 = v39;
      v53 = v42;
      *(&v83 - 4) = v42;
      *(&v83 - 24) = v83 & 1;
      *(&v83 - 23) = 1;
      *(&v83 - 21) = 0;
      *(&v83 - 2) = v21;
      v54 = v88;
      sub_226D6721C();
      v96 = 0;

      sub_226B11B98(v52, v53);
      v64 = v86;
      sub_226C051C0(v54, v86, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      v97[0] = 0;
      if ([v51 save_])
      {
        v65 = qword_281061980;
        v66 = v97[0];
        if (v65 != -1)
        {
          swift_once();
        }

        v67 = v92;
        v68 = __swift_project_value_buffer(v92, qword_281064538);
        v69 = v93;
        sub_226AE532C(v68, v93);
        sub_226C05158(v68 + *(v67 + 48), v69 + *(v67 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
        v70 = v69 + *(v67 + 48);
        v71 = v85;
        sub_226C051C0(v70, v85, type metadata accessor for OrderNotificationCenter.Continuation);
        __swift_destroy_boxed_opaque_existential_0Tm(v69);
        v72 = v64;
        sub_226BE7E54(v64, v71);
        sub_226C062F4(v71, type metadata accessor for OrderNotificationCenter.Continuation);
        if (qword_28105F620 != -1)
        {
          swift_once();
        }

        v73 = sub_226D6E07C();
        __swift_project_value_buffer(v73, qword_28105F628);
        v74 = v91;
        v75 = sub_226D6E05C();
        v76 = sub_226D6E9AC();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *v77 = 138412290;
          v79 = [v74 objectID];
          *(v77 + 4) = v79;
          *v78 = v79;
          _os_log_impl(&dword_226AB4000, v75, v76, "Updated order: %@ with cloud order", v77, 0xCu);
          sub_226AC47B0(v78, &qword_27D7A5FB0, &qword_226D70870);
          MEMORY[0x22AA8BEE0](v78, -1, -1);
          MEMORY[0x22AA8BEE0](v77, -1, -1);
          v80 = v74;
        }

        else
        {
          v80 = v75;
          v75 = v74;
        }

        sub_226C062F4(v72, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      }

      else
      {
        v81 = v97[0];
        sub_226D6D04C();

        swift_willThrow();
        swift_setDeallocating();
        sub_226AC47B0(inited + 32, &qword_27D7A7790, &unk_226D79770);
        sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
        sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));
        v82 = *(inited + 320);

        sub_226C062F4(v64, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      }
    }
  }

  v63 = *MEMORY[0x277D85DE8];
}

void sub_226C04B10(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D681CC();
  v5 = sub_226D6817C();
  if (!v3)
  {
    v6 = v5;
    v8 = sub_226D6817C();
    sub_226D681BC();
    v11[0] = 0;
    if ([a3 save_])
    {
      v9 = v11[0];
    }

    else
    {
      v10 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_226C04D34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = sub_226D6714C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6751C();
  v11 = sub_226D674AC();
  if (!v4)
  {
    v12 = v11;
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_226D674BC();
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    sub_226B42C34(v12, a4);
    sub_226AFD62C(&v26);
    *&v26 = 0;
    v13 = [a4 save_];
    v14 = v26;
    if (v13)
    {
      sub_226AC40E8(v31, &v26, &qword_27D7A6910, &unk_226D721C0);
      if (*(&v27 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
        (*(v7 + 104))(v10, *MEMORY[0x277CC6B48], v6);
        v15 = v14;
        sub_226D680BC();
        (*(v7 + 8))(v10, v6);
        __swift_destroy_boxed_opaque_existential_0Tm(&v26);
      }

      else
      {
        v17 = v14;
        sub_226AC47B0(&v26, &qword_27D7A6910, &unk_226D721C0);
      }

      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v18 = sub_226D6E07C();
      __swift_project_value_buffer(v18, qword_28105F628);
      v19 = v12;
      v20 = sub_226D6E05C();
      v21 = sub_226D6E9AC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = [v19 objectID];
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&dword_226AB4000, v20, v21, "Updated isMarkedAsComplete for local order: %@", v22, 0xCu);
        sub_226AC47B0(v23, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v23, -1, -1);
        MEMORY[0x22AA8BEE0](v22, -1, -1);
      }

      sub_226AC47B0(v31, &qword_27D7A6910, &unk_226D721C0);
    }

    else
    {
      v16 = v26;
      sub_226D6D04C();

      swift_willThrow();
      sub_226AC47B0(v31, &qword_27D7A6910, &unk_226D721C0);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226C05158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C051C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_226C05228@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v1 + 59))
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 58))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 57))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_226BBEF5C(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v5 | *(v1 + 56) | v4 | v3, *(v1 + 64), a1);
}

void sub_226C05290()
{
  sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
  if (v0 <= 0x3F)
  {
    sub_226B76634(319, &qword_27D7A7FD0);
    if (v1 <= 0x3F)
    {
      sub_226B76634(319, &qword_27D7A7FD8);
      if (v2 <= 0x3F)
      {
        sub_226B7668C(319, &qword_27D7A7FE0);
        if (v3 <= 0x3F)
        {
          sub_226B7668C(319, &qword_27D7A7FE8);
          if (v4 <= 0x3F)
          {
            sub_226B7668C(319, &qword_27D7A7FF0);
            if (v5 <= 0x3F)
            {
              sub_226C053B8();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_226C053B8()
{
  if (!qword_27D7A7FF8)
  {
    sub_226AE59B4(255, &qword_27D7A6370, 0x277CBE448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8BE0, &unk_226D718F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D7A7FF8);
    }
  }
}

uint64_t sub_226C05450(uint64_t a1, uint64_t a2)
{
  v141 = a1;
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  v131 = v3;
  v132 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v127 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v7 = *(*(v130 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v130);
  v129 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v128 = &v124 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v126 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v136 = &v124 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v134 = &v124 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v125 = &v124 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v135 = &v124 - v22;
  MEMORY[0x28223BE20](v21);
  v133 = &v124 - v23;
  v24 = _s9OperationOMa_0();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v140 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v139 = &v124 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v138 = &v124 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v137 = &v124 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = (&v124 - v35);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = (&v124 - v38);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = (&v124 - v41);
  v43 = MEMORY[0x28223BE20](v40);
  v45 = (&v124 - v44);
  MEMORY[0x28223BE20](v43);
  v47 = (&v124 - v46);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8000, &unk_226D77260);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v52 = &v124 - v51;
  v53 = (&v124 + *(v50 + 56) - v51);
  sub_226C05158(v141, &v124 - v51, _s9OperationOMa_0);
  v54 = a2;
  v55 = v53;
  sub_226C05158(v54, v53, _s9OperationOMa_0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v57 = v53;
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v58 = v52;
          v59 = v139;
          sub_226C05158(v52, v139, _s9OperationOMa_0);
          v60 = *v59;
          v61 = *(v59 + 8);
          v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8) + 64);
          if (swift_getEnumCaseMultiPayload() == 7)
          {
            v63 = *v55;
            v64 = *(v55 + 8);
            v65 = v59 + v62;
            v66 = v60;
            v67 = v133;
            sub_226B72784(v65, v133);
            v68 = v57 + v62;
            v69 = v135;
            sub_226B72784(v68, v135);
            sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
            v70 = sub_226D6EC3C();

            if ((v70 & 1) == 0 || v61 != v64)
            {
              sub_226AC47B0(v69, &qword_27D7A8BE0, &unk_226D718F0);
              v71 = v67;
              v72 = &qword_27D7A8BE0;
              v73 = &unk_226D718F0;
LABEL_9:
              sub_226AC47B0(v71, v72, v73);
LABEL_10:
              sub_226C062F4(v58, _s9OperationOMa_0);
LABEL_41:
              v80 = 0;
              return v80 & 1;
            }

            v103 = *(v130 + 48);
            v104 = v128;
            sub_226AC40E8(v67, v128, &qword_27D7A8BE0, &unk_226D718F0);
            sub_226AC40E8(v69, v104 + v103, &qword_27D7A8BE0, &unk_226D718F0);
            v105 = v131;
            v106 = *(v132 + 48);
            if (v106(v104, 1, v131) == 1)
            {
              sub_226AC47B0(v69, &qword_27D7A8BE0, &unk_226D718F0);
              sub_226AC47B0(v67, &qword_27D7A8BE0, &unk_226D718F0);
              if (v106(v104 + v103, 1, v105) == 1)
              {
                sub_226AC47B0(v104, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_56:
                v118 = v58;
LABEL_59:
                sub_226C062F4(v118, _s9OperationOMa_0);
                v80 = 1;
                return v80 & 1;
              }
            }

            else
            {
              v111 = v125;
              sub_226AC40E8(v104, v125, &qword_27D7A8BE0, &unk_226D718F0);
              if (v106(v104 + v103, 1, v105) != 1)
              {
                v113 = v132;
                v114 = v104 + v103;
                v115 = v127;
                (*(v132 + 32))(v127, v114, v105);
                sub_226C06354(&qword_27D7A6C38, MEMORY[0x277CC9578]);
                v116 = sub_226D6E35C();
                v117 = *(v113 + 8);
                v117(v115, v105);
                sub_226AC47B0(v135, &qword_27D7A8BE0, &unk_226D718F0);
                sub_226AC47B0(v67, &qword_27D7A8BE0, &unk_226D718F0);
                v117(v111, v105);
                sub_226AC47B0(v104, &qword_27D7A8BE0, &unk_226D718F0);
                if ((v116 & 1) == 0)
                {
                  goto LABEL_10;
                }

                goto LABEL_56;
              }

              sub_226AC47B0(v135, &qword_27D7A8BE0, &unk_226D718F0);
              sub_226AC47B0(v67, &qword_27D7A8BE0, &unk_226D718F0);
              (*(v132 + 8))(v111, v105);
            }

            v72 = &qword_27D7A6C30;
            v73 = &unk_226D74330;
            v71 = v104;
            goto LABEL_9;
          }

          sub_226AC47B0(v59 + v62, &qword_27D7A8BE0, &unk_226D718F0);
          v52 = v58;
LABEL_40:

          sub_226AC47B0(v52, &qword_27D7A8000, &unk_226D77260);
          goto LABEL_41;
        }

        v76 = v52;
        v87 = v140;
        sub_226C05158(v52, v140, _s9OperationOMa_0);
        v60 = *v87;
        v88 = *(v87 + 8);
        v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8) + 64);
        if (swift_getEnumCaseMultiPayload() != 8)
        {
          sub_226AC47B0(v87 + v89, &qword_27D7A8BE0, &unk_226D718F0);
          v52 = v76;
          goto LABEL_40;
        }

        v90 = *v55;
        v91 = *(v55 + 8);
        v92 = v87 + v89;
        v93 = v60;
        v94 = v134;
        sub_226B72784(v92, v134);
        v95 = v57 + v89;
        v96 = v136;
        sub_226B72784(v95, v136);
        sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
        v97 = sub_226D6EC3C();

        if ((v97 & 1) == 0 || v88 != v91)
        {
          sub_226AC47B0(v96, &qword_27D7A8BE0, &unk_226D718F0);
          v98 = v94;
          v99 = &qword_27D7A8BE0;
          v100 = &unk_226D718F0;
LABEL_33:
          sub_226AC47B0(v98, v99, v100);
          goto LABEL_34;
        }

        v107 = v129;
        v108 = *(v130 + 48);
        sub_226AC40E8(v94, v129, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC40E8(v96, v107 + v108, &qword_27D7A8BE0, &unk_226D718F0);
        v109 = v131;
        v110 = *(v132 + 48);
        if (v110(v107, 1, v131) == 1)
        {
          sub_226AC47B0(v96, &qword_27D7A8BE0, &unk_226D718F0);
          sub_226AC47B0(v94, &qword_27D7A8BE0, &unk_226D718F0);
          if (v110(v107 + v108, 1, v109) == 1)
          {
            sub_226AC47B0(v107, &qword_27D7A8BE0, &unk_226D718F0);
            goto LABEL_58;
          }
        }

        else
        {
          v112 = v126;
          sub_226AC40E8(v107, v126, &qword_27D7A8BE0, &unk_226D718F0);
          if (v110(v107 + v108, 1, v109) != 1)
          {
            v119 = v132;
            v120 = v107 + v108;
            v121 = v127;
            (*(v132 + 32))(v127, v120, v109);
            sub_226C06354(&qword_27D7A6C38, MEMORY[0x277CC9578]);
            v122 = sub_226D6E35C();
            v123 = *(v119 + 8);
            v123(v121, v109);
            sub_226AC47B0(v136, &qword_27D7A8BE0, &unk_226D718F0);
            sub_226AC47B0(v94, &qword_27D7A8BE0, &unk_226D718F0);
            v123(v112, v109);
            sub_226AC47B0(v107, &qword_27D7A8BE0, &unk_226D718F0);
            if ((v122 & 1) == 0)
            {
              goto LABEL_34;
            }

LABEL_58:
            v118 = v76;
            goto LABEL_59;
          }

          sub_226AC47B0(v136, &qword_27D7A8BE0, &unk_226D718F0);
          sub_226AC47B0(v94, &qword_27D7A8BE0, &unk_226D718F0);
          (*(v132 + 8))(v112, v109);
        }

        v99 = &qword_27D7A6C30;
        v100 = &unk_226D74330;
        v98 = v107;
        goto LABEL_33;
      }

      v81 = v138;
      sub_226C05158(v52, v138, _s9OperationOMa_0);
      v82 = *v81;
      v60 = *(v81 + 8);
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        goto LABEL_40;
      }

      v76 = v52;
      v83 = *v53;
      v77 = v57[1];
      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      v84 = sub_226D6EC3C();

      if ((v84 & 1) == 0)
      {
LABEL_24:

LABEL_34:
        sub_226C062F4(v76, _s9OperationOMa_0);
        goto LABEL_41;
      }

      goto LABEL_21;
    }

    v74 = v53;
    if (EnumCaseMultiPayload == 4)
    {
      sub_226C05158(v52, v36, _s9OperationOMa_0);
      v75 = *v36;
      v60 = v36[1];
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v101 = v137;
      sub_226C05158(v52, v137, _s9OperationOMa_0);
      v75 = *v101;
      v60 = *(v101 + 8);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
LABEL_20:
        v76 = v52;
        v78 = *v55;
        v77 = v74[1];
        sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
        v79 = sub_226D6EC3C();

        if ((v79 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_21:
        v80 = sub_226D6EC3C();

        sub_226C062F4(v76, _s9OperationOMa_0);
        return v80 & 1;
      }
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_226C05158(v52, v42, _s9OperationOMa_0);
      v60 = *v42;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_40;
      }
    }

    else
    {
      sub_226C05158(v52, v39, _s9OperationOMa_0);
      v60 = *v39;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_40;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_226C05158(v52, v45, _s9OperationOMa_0);
    v60 = *v45;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_40;
    }
  }

  else
  {
    sub_226C05158(v52, v47, _s9OperationOMa_0);
    v60 = *v47;
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_40;
    }
  }

  v85 = *v53;
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v86 = v52;
  v80 = sub_226D6EC3C();

  sub_226C062F4(v86, _s9OperationOMa_0);
  return v80 & 1;
}

uint64_t sub_226C062F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226C06354(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226C0639C@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8010, &unk_226D78490);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  *a1 = 5;
  v27 = type metadata accessor for OfflineLabDefaultLogicProvider();
  v10 = *(v27 + 20);
  v11 = sub_226D6D6DC();
  v12 = *(v11 - 8);
  v25 = *(v12 + 56);
  v26 = v12 + 56;
  v23 = v11;
  v25(v9, 1, 1, v11);
  v13 = sub_226D6D71C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v5, 1, 1, v13);
  v24 = v16;
  v17 = v15;
  sub_226D6CE8C();
  v18 = v27;
  v22 = *(v27 + 24);
  v19 = v25;
  v25(v9, 1, 1, v11);
  v17(v5, 1, 1, v13);
  sub_226D6CE8C();
  v20 = *(v18 + 28);
  v19(v9, 1, 1, v23);
  v17(v5, 1, 1, v13);
  return sub_226D6CE8C();
}

uint64_t type metadata accessor for OfflineLabDefaultLogicProvider()
{
  result = qword_27D7A8018;
  if (!qword_27D7A8018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226C067D0()
{
  result = sub_226D6CEAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_226C06854(void *a1)
{
  v3 = sub_226C06A1C(a1);
  if (v1)
  {
    sub_226C077F8();
    swift_allocError();
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v5 = sub_226D6E07C();
    __swift_project_value_buffer(v5, qword_28105F668);
    v6 = sub_226D6E05C();
    v7 = sub_226D6E9EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226AB4000, v6, v7, "Account passed core criteria. Now checking to see if account passes transaction history length test", v8, 2u);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
    }

    if (sub_226C0784C(a1))
    {
      v9 = sub_226D6E05C();
      v10 = sub_226D6E9EC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_226AB4000, v9, v10, "End of filtering logic. This account will be included in the upload.", v11, 2u);
        MEMORY[0x22AA8BEE0](v11, -1, -1);
      }

      v4 = 1;
    }

    else
    {
LABEL_12:
      v4 = 0;
    }
  }

  return v4 & 1;
}

uint64_t sub_226C06A1C(void *a1)
{
  v2 = sub_226D6D61C();
  v110 = *(v2 - 8);
  v111 = v2;
  v3 = *(v110 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6D6DC();
  v112 = *(v6 - 8);
  v113 = v6;
  v7 = *(v112 + 64);
  MEMORY[0x28223BE20](v6);
  v114 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6D4AC();
  v10 = *(v9 - 8);
  isa = v10[8].isa;
  v12 = MEMORY[0x28223BE20](v9);
  v107 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v108 = &v97 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v109 = &v97 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v97 - v19;
  MEMORY[0x28223BE20](v18);
  v116 = &v97 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v97 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v97 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v97 - v33;
  v35 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = *v35;
  v36 = v35[1];
  v118 = v34;
  sub_226CA061C(v37, v34);
  v38 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v39 = v38[1];
  sub_226CA0610(*v38, v32);
  v115 = v10;
  v40 = v10[6].isa;
  if (v40(v32, 1, v9) == 1 && v40(v118, 1, v9) == 1)
  {
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v41 = sub_226D6E07C();
    __swift_project_value_buffer(v41, qword_28105F668);
    v42 = sub_226D6E05C();
    v43 = sub_226D6E9EC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_226AB4000, v42, v43, "This account has never been processed. Returning true from passesCoreCriteria() and proceeding to the next group of filtering logic.", v44, 2u);
      MEMORY[0x22AA8BEE0](v44, -1, -1);
    }

    LOBYTE(v42) = 1;
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v45 = off_283A6FFD8();
  if (v46)
  {
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v47 = sub_226D6E07C();
    __swift_project_value_buffer(v47, qword_28105F668);
    v42 = sub_226D6E05C();
    v48 = sub_226D6E9CC();
    if (!os_log_type_enabled(v42, v48))
    {
      goto LABEL_14;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "Expected non-nil failedAttemptCount";
  }

  else
  {
    if (v45)
    {
      LOBYTE(v42) = sub_226C08BC0(v45, v118);
      sub_226AC47B0(v32, &qword_27D7A8BE0, &unk_226D718F0);
      goto LABEL_18;
    }

    sub_226AF265C(v32, v29);
    if (v40(v29, 1, v9) != 1)
    {
      v53 = v115;
      v103 = v115[4].isa;
      v104 = v115 + 4;
      (v103)(v116, v29, v9);
      if (qword_28105F660 != -1)
      {
        swift_once();
      }

      v54 = sub_226D6E07C();
      v55 = __swift_project_value_buffer(v54, qword_28105F668);
      v100 = v53[2].isa;
      v101 = v53 + 2;
      v100(v20, v116, v9);
      v105 = v55;
      v56 = sub_226D6E05C();
      v102 = sub_226D6E9EC();
      if (os_log_type_enabled(v56, v102))
      {
        v57 = swift_slowAlloc();
        v98 = v57;
        v99 = swift_slowAlloc();
        v119 = v99;
        *v57 = 136315138;
        sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578]);
        v58 = sub_226D6F1CC();
        v97 = v56;
        v60 = v59;
        v106 = v115[1].isa;
        (v106)(v20, v9);
        v61 = sub_226AC4530(v58, v60, &v119);

        v62 = v98;
        *(v98 + 1) = v61;
        v63 = v97;
        v64 = v62;
        _os_log_impl(&dword_226AB4000, v97, v102, "Checking if last successful send date: %s was more than two years ago.", v62, 0xCu);
        v65 = v99;
        __swift_destroy_boxed_opaque_existential_0Tm(v99);
        MEMORY[0x22AA8BEE0](v65, -1, -1);
        MEMORY[0x22AA8BEE0](v64, -1, -1);
      }

      else
      {

        v106 = v115[1].isa;
        (v106)(v20, v9);
      }

      v67 = v110;
      v66 = v111;
      (*(v110 + 104))(v5, *MEMORY[0x277CC9830], v111);
      sub_226D6D62C();
      (*(v67 + 8))(v5, v66);
      v68 = type metadata accessor for OfflineLabDefaultLogicProvider();
      v69 = v116;
      v70 = v117 + *(v68 + 24);
      sub_226D6D67C();
      if (v40(v26, 1, v9) == 1)
      {
        sub_226AC47B0(v26, &qword_27D7A8BE0, &unk_226D718F0);
        v42 = sub_226D6E05C();
        v71 = sub_226D6E9CC();
        if (os_log_type_enabled(v42, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_226AB4000, v42, v71, "Expecrted non-nil sendAgainAfter date", v72, 2u);
          MEMORY[0x22AA8BEE0](v72, -1, -1);
        }

        sub_226C077F8();
        swift_willThrowTypedImpl();
        (*(v112 + 8))(v114, v113);
        (v106)(v69, v9);
      }

      else
      {
        v73 = v109;
        (v103)(v109, v26, v9);
        v74 = v108;
        sub_226D6D46C();
        v75 = sub_226D6D40C();
        (v106)(v74, v9);
        if (v75)
        {
          v76 = v107;
          v100(v107, v73, v9);
          v77 = sub_226D6E05C();
          v78 = sub_226D6E9EC();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            v119 = v117;
            *v79 = 136315394;
            v115 = v77;
            v80 = v108;
            sub_226D6D46C();
            sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578]);
            v81 = sub_226D6F1CC();
            v83 = v82;
            LODWORD(v111) = v78;
            v84 = v106;
            (v106)(v80, v9);
            v85 = sub_226AC4530(v81, v83, &v119);

            *(v79 + 4) = v85;
            *(v79 + 12) = 2080;
            v86 = v107;
            v87 = sub_226D6F1CC();
            v89 = v88;
            v84(v86, v9);
            v90 = sub_226AC4530(v87, v89, &v119);

            *(v79 + 14) = v90;
            v91 = v115;
            _os_log_impl(&dword_226AB4000, v115, v111, "%s is after %s. Returning true", v79, 0x16u);
            v92 = v117;
            swift_arrayDestroy();
            MEMORY[0x22AA8BEE0](v92, -1, -1);
            MEMORY[0x22AA8BEE0](v79, -1, -1);

            v84(v109, v9);
            (*(v112 + 8))(v114, v113);
            v84(v116, v9);
          }

          else
          {

            v96 = v106;
            (v106)(v76, v9);
            v96(v73, v9);
            (*(v112 + 8))(v114, v113);
            v96(v116, v9);
          }

          LOBYTE(v42) = 1;
        }

        else
        {
          v93 = sub_226D6E05C();
          v94 = sub_226D6E9EC();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            *v95 = 0;
            _os_log_impl(&dword_226AB4000, v93, v94, "Account did not meet the default logic criteria for processing", v95, 2u);
            MEMORY[0x22AA8BEE0](v95, -1, -1);
          }

          v42 = v106;
          (v106)(v73, v9);
          (*(v112 + 8))(v114, v113);
          (v42)(v69, v9);
          LOBYTE(v42) = 0;
        }
      }

      goto LABEL_15;
    }

    sub_226AC47B0(v29, &qword_27D7A8BE0, &unk_226D718F0);
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v52 = sub_226D6E07C();
    __swift_project_value_buffer(v52, qword_28105F668);
    v42 = sub_226D6E05C();
    v48 = sub_226D6E9CC();
    if (!os_log_type_enabled(v42, v48))
    {
      goto LABEL_14;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "Expected non-nil lastSuccessDate";
  }

  _os_log_impl(&dword_226AB4000, v42, v48, v50, v49, 2u);
  MEMORY[0x22AA8BEE0](v49, -1, -1);
LABEL_14:

  sub_226C077F8();
  swift_willThrowTypedImpl();
LABEL_15:
  sub_226AC47B0(v32, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_18:
  sub_226AC47B0(v118, &qword_27D7A8BE0, &unk_226D718F0);
  return v42 & 1;
}

unint64_t sub_226C077F8()
{
  result = qword_27D7A8028;
  if (!qword_27D7A8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8028);
  }

  return result;
}

uint64_t sub_226C0784C(void *a1)
{
  v193 = a1;
  v190 = type metadata accessor for OfflineLabDefaultLogicProvider();
  v1 = *(*(v190 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v190);
  v182 = &v164 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v183 = &v164 - v4;
  v5 = sub_226D6D6DC();
  v187 = *(v5 - 8);
  v188 = v5;
  isa = v187[8].isa;
  MEMORY[0x28223BE20](v5);
  v185 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v186 = &v164 - v10;
  v195 = sub_226D6D4AC();
  v191 = *(v195 - 8);
  v11 = *(v191 + 64);
  v12 = MEMORY[0x28223BE20](v195);
  v184 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v181 = &v164 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v164 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = &v164 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v164 - v23;
  v196 = sub_226D6CD7C();
  v192 = *(v196 - 8);
  v25 = *(v192 + 64);
  v26 = MEMORY[0x28223BE20](v196);
  v28 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v164 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v164 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v164 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v164 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v164 - v41;
  v43 = __swift_project_boxed_opaque_existential_1(v193, v193[3]);
  v44 = v194;
  sub_226CA07D0(*v43, v43[1], v24);
  if (!v44)
  {
    v176 = v40;
    v178 = v37;
    v180 = v42;
    v171 = v34;
    v172 = v28;
    v175 = v31;
    v193 = v18;
    v194 = 0;
    v179 = v20;
    v46 = v192;
    if ((*(v192 + 48))(v24, 1, v196) == 1)
    {
      sub_226AC47B0(v24, &qword_27D7A6558, &qword_226D7CCE0);
      if (qword_28105F660 != -1)
      {
        swift_once();
      }

      v47 = sub_226D6E07C();
      __swift_project_value_buffer(v47, qword_28105F668);
      v48 = sub_226D6E05C();
      v49 = sub_226D6E9CC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_226AB4000, v48, v49, "Obtained nil transaction history date interval. This account fails the transaction history length test", v50, 2u);
        MEMORY[0x22AA8BEE0](v50, -1, -1);
      }

      goto LABEL_8;
    }

    v52 = v180;
    (*(v46 + 32))(v180, v24, v196);
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v53 = sub_226D6E07C();
    v54 = __swift_project_value_buffer(v53, qword_28105F668);
    v55 = *(v46 + 16);
    v56 = v176;
    v57 = v196;
    v55(v176, v52, v196);
    v58 = v178;
    v174 = v46 + 16;
    v173 = v55;
    v55(v178, v52, v57);
    v177 = v54;
    v59 = sub_226D6E05C();
    v60 = sub_226D6E9EC();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v191;
    if (v61)
    {
      v63 = swift_slowAlloc();
      v167 = v63;
      v170 = swift_slowAlloc();
      v197 = v170;
      *v63 = 136315394;
      v168 = v60;
      v64 = v179;
      v169 = v59;
      sub_226D6CD4C();
      v166 = sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578]);
      v65 = v56;
      v66 = v195;
      v67 = sub_226D6F1CC();
      v69 = v68;
      v165 = *(v62 + 8);
      v165(v64, v66);
      v70 = v196;
      v71 = *(v46 + 8);
      v71(v65, v196);
      v72 = sub_226AC4530(v67, v69, &v197);

      v73 = v167;
      *(v167 + 1) = v72;
      *(v73 + 6) = 2080;
      sub_226D6CD2C();
      v74 = sub_226D6F1CC();
      v76 = v75;
      v165(v64, v195);
      v178 = v71;
      v71(v58, v70);
      v62 = v191;
      v52 = v180;
      v77 = sub_226AC4530(v74, v76, &v197);

      *(v73 + 14) = v77;
      v78 = v169;
      _os_log_impl(&dword_226AB4000, v169, v168, "Obtained transaction history date interval: %s to %s", v73, 0x16u);
      v79 = v170;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v79, -1, -1);
      MEMORY[0x22AA8BEE0](v73, -1, -1);
    }

    else
    {

      v80 = *(v46 + 8);
      v81 = v196;
      v80(v58, v196);
      v178 = v80;
      v80(v56, v81);
      v64 = v179;
    }

    v82 = v193;
    v83 = v185;
    sub_226D6D6AC();
    v84 = *(v190 + 28);
    sub_226D6CD4C();
    v85 = v189;
    v86 = v186;
    sub_226D6D67C();
    v87 = v52;
    v88 = v195;
    v176 = *(v62 + 8);
    v185 = (v62 + 8);
    v176(v64, v195);
    (v187[1].isa)(v83, v188);
    if ((*(v62 + 48))(v86, 1, v88) == 1)
    {
      v89 = v64;
      sub_226AC47B0(v86, &qword_27D7A8BE0, &unk_226D718F0);
      v90 = v182;
      sub_226C09A10(v85, v182);
      v91 = v172;
      v173(v172, v87, v196);
      v92 = sub_226D6E05C();
      v93 = sub_226D6E9CC();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        v197 = v193;
        *v94 = 136315394;
        v95 = *(v190 + 28);
        sub_226D6CEAC();
        sub_226C09AD0(&qword_27D7A8030, MEMORY[0x277CC8990]);
        v96 = sub_226D6F1CC();
        v98 = v97;
        sub_226C09A74(v90);
        v99 = sub_226AC4530(v96, v98, &v197);

        *(v94 + 4) = v99;
        *(v94 + 12) = 2080;
        sub_226D6CD4C();
        sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578]);
        v100 = v195;
        v101 = sub_226D6F1CC();
        v103 = v102;
        v176(v89, v100);
        v104 = v91;
        v105 = v196;
        v106 = v178;
        v178(v104, v196);
        v107 = sub_226AC4530(v101, v103, &v197);

        *(v94 + 14) = v107;
        _os_log_impl(&dword_226AB4000, v92, v93, "Unable to compute cutoff date by adding %s to %s. This account fails the transaction history length test", v94, 0x16u);
        v108 = v193;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v108, -1, -1);
        MEMORY[0x22AA8BEE0](v94, -1, -1);

        v106(v180, v105);
      }

      else
      {

        v139 = v196;
        v140 = v178;
        v178(v91, v196);
        sub_226C09A74(v90);
        v140(v87, v139);
      }

LABEL_8:
      v45 = 0;
      return v45 & 1;
    }

    v109 = v82;
    v110 = v195;
    (*(v62 + 32))(v82, v86, v195);
    v111 = *(v62 + 16);
    v112 = v181;
    v191 = v62 + 16;
    (v111)(v181, v82, v110);
    v113 = v171;
    v173(v171, v87, v196);
    v114 = v183;
    sub_226C09A10(v85, v183);
    v115 = sub_226D6E05C();
    v116 = sub_226D6E9EC();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v197 = v188;
      *v117 = 136315650;
      sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578]);
      v187 = v115;
      v118 = v195;
      v119 = sub_226D6F1CC();
      v121 = v120;
      LODWORD(v186) = v116;
      v122 = v176;
      v189 = v111;
      v176(v112, v118);
      v123 = sub_226AC4530(v119, v121, &v197);

      *(v117 + 4) = v123;
      *(v117 + 12) = 2080;
      v124 = v179;
      sub_226D6CD4C();
      v125 = sub_226D6F1CC();
      v127 = v126;
      v122(v124, v118);
      v111 = v189;
      v178(v113, v196);
      v128 = sub_226AC4530(v125, v127, &v197);

      *(v117 + 14) = v128;
      *(v117 + 22) = 2080;
      v129 = *(v190 + 28);
      sub_226D6CEAC();
      sub_226C09AD0(&qword_27D7A8030, MEMORY[0x277CC8990]);
      v130 = v183;
      v131 = sub_226D6F1CC();
      v133 = v132;
      sub_226C09A74(v130);
      v134 = sub_226AC4530(v131, v133, &v197);
      v109 = v193;

      *(v117 + 24) = v134;
      v135 = v187;
      _os_log_impl(&dword_226AB4000, v187, v186, "Using threshold date: %s computed as: (%s + %s)", v117, 0x20u);
      v136 = v188;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v136, -1, -1);
      MEMORY[0x22AA8BEE0](v117, -1, -1);

      v137 = v184;
      v138 = v175;
    }

    else
    {

      sub_226C09A74(v114);
      v178(v113, v196);
      v176(v112, v195);
      v137 = v184;
      v138 = v175;
      v124 = v179;
    }

    v173(v138, v180, v196);
    (v111)(v137, v109, v195);
    v141 = sub_226D6E05C();
    v142 = sub_226D6E9EC();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v197 = v191;
      *v143 = 136315394;
      LODWORD(v190) = v142;
      sub_226D6CD2C();
      sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578]);
      v144 = v195;
      v145 = sub_226D6F1CC();
      v189 = v141;
      v147 = v146;
      v148 = v176;
      v176(v124, v144);
      v178(v138, v196);
      v149 = sub_226AC4530(v145, v147, &v197);

      *(v143 + 4) = v149;
      *(v143 + 12) = 2080;
      v150 = v184;
      v151 = sub_226D6F1CC();
      v153 = v152;
      v148(v150, v144);
      v154 = sub_226AC4530(v151, v153, &v197);
      v109 = v193;
      v124 = v179;

      *(v143 + 14) = v154;
      v155 = v189;
      _os_log_impl(&dword_226AB4000, v189, v190, "Testing: Is %s >= %s ?", v143, 0x16u);
      v156 = v191;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v156, -1, -1);
      MEMORY[0x22AA8BEE0](v143, -1, -1);
    }

    else
    {

      v148 = v176;
      v176(v137, v195);
      v178(v138, v196);
    }

    sub_226D6CD2C();
    sub_226C09AD0(&qword_27D7A66D8, MEMORY[0x277CC9578]);
    v157 = v195;
    v158 = sub_226D6E33C();
    v148(v124, v157);
    v159 = sub_226D6E05C();
    v160 = sub_226D6E9EC();
    v161 = os_log_type_enabled(v159, v160);
    if ((v158 & 1) == 0)
    {
      if (v161)
      {
        v163 = swift_slowAlloc();
        *v163 = 0;
        _os_log_impl(&dword_226AB4000, v159, v160, "Account failed transaction history length test.", v163, 2u);
        MEMORY[0x22AA8BEE0](v163, -1, -1);
      }

      v148(v109, v195);
      v178(v180, v196);
      goto LABEL_8;
    }

    if (v161)
    {
      v162 = swift_slowAlloc();
      *v162 = 0;
      _os_log_impl(&dword_226AB4000, v159, v160, "Account passed transaction history length test.", v162, 2u);
      MEMORY[0x22AA8BEE0](v162, -1, -1);
    }

    v148(v109, v195);
    v178(v180, v196);
    v45 = 1;
  }

  return v45 & 1;
}

uint64_t sub_226C08BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D61C();
  v141 = *(v4 - 8);
  v142 = v4;
  v5 = v141[8];
  MEMORY[0x28223BE20](v4);
  v140 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D6DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v143 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for OfflineLabDefaultLogicProvider();
  v11 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v13 = (&v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v126 - v19;
  v21 = sub_226D6D4AC();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x28223BE20](v21);
  v25 = MEMORY[0x28223BE20](v24);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v126 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = MEMORY[0x28223BE20](&v126 - v29);
  v31 = MEMORY[0x28223BE20](v30);
  v145 = &v126 - v35;
  if (a1 < 1)
  {
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v41 = sub_226D6E07C();
    __swift_project_value_buffer(v41, qword_28105F668);
    v37 = sub_226D6E05C();
    v38 = sub_226D6E9CC();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_12;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Expected failedAttemptCount > 0";
    goto LABEL_11;
  }

  v133 = v33;
  v134 = v31;
  v136 = v28;
  v132 = v34;
  v138 = v32;
  sub_226AF265C(a2, v20);
  v137 = v22[6];
  if (v137(v20, 1, v21) == 1)
  {
    sub_226AC47B0(v20, &qword_27D7A8BE0, &unk_226D718F0);
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v36 = sub_226D6E07C();
    __swift_project_value_buffer(v36, qword_28105F668);
    v37 = sub_226D6E05C();
    v38 = sub_226D6E9CC();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_12;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Expected non-nil lastFailedAttemptDate";
LABEL_11:
    _os_log_impl(&dword_226AB4000, v37, v38, v40, v39, 2u);
    MEMORY[0x22AA8BEE0](v39, -1, -1);
LABEL_12:

    sub_226C077F8();
    swift_willThrowTypedImpl();
    return v42 & 1;
  }

  v131 = v22;
  v128 = v22[4];
  v129 = v22 + 4;
  v128(v145, v20, v21);
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v43 = sub_226D6E07C();
  v44 = __swift_project_value_buffer(v43, qword_28105F668);
  sub_226C09A10(v144, v13);
  v135 = v44;
  v45 = sub_226D6E05C();
  v46 = sub_226D6E9EC();
  v47 = os_log_type_enabled(v45, v46);
  v130 = v18;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v127 = v21;
    v49 = v48;
    *v48 = 134218240;
    *(v48 + 4) = a1;
    *(v48 + 12) = 2048;
    v50 = a1;
    v51 = v8;
    v52 = v7;
    v53 = *v13;
    sub_226C09A74(v13);
    *(v49 + 14) = v53;
    v7 = v52;
    v8 = v51;
    a1 = v50;
    _os_log_impl(&dword_226AB4000, v45, v46, "Checking if failed attempt count: %ld is less than or equal to maximumFailedAttemptsBeforeThrottle: %ld", v49, 0x16u);
    v54 = v49;
    v21 = v127;
    MEMORY[0x22AA8BEE0](v54, -1, -1);
  }

  else
  {
    sub_226C09A74(v13);
  }

  v55 = v144;
  if (*v144 >= a1)
  {
    v66 = sub_226D6E05C();
    v67 = sub_226D6E9EC();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_226AB4000, v66, v67, "Below threshold. Returning true", v68, 2u);
      MEMORY[0x22AA8BEE0](v68, -1, -1);
    }

    (v131[1])(v145, v21);
    goto LABEL_26;
  }

  v57 = v140;
  v56 = v141;
  v58 = v142;
  (v141[13])(v140, *MEMORY[0x277CC9830], v142);
  sub_226D6D62C();
  (v56[1])(v57, v58);
  v59 = v55 + *(v139 + 20);
  v60 = v130;
  sub_226D6D67C();
  if (v137(v60, 1, v21) != 1)
  {
    v144 = v8;
    v128(v138, v60, v21);
    v70 = v131;
    v71 = v131 + 2;
    v72 = v131[2];
    v73 = v134;
    v72(v134, v145, v21);
    v74 = sub_226D6E05C();
    v75 = sub_226D6E9EC();
    v76 = os_log_type_enabled(v74, v75);
    v126 = v7;
    if (v76)
    {
      v77 = swift_slowAlloc();
      v140 = v77;
      v141 = swift_slowAlloc();
      v146 = v141;
      *v77 = 136315138;
      sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578]);
      LODWORD(v139) = v75;
      v78 = sub_226D6F1CC();
      v142 = v71;
      v79 = v21;
      v81 = v80;
      v82 = v72;
      v83 = v70[1];
      v84 = (v70 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v83)(v73, v79);
      v85 = v83;
      v72 = v82;
      v86 = sub_226AC4530(v78, v81, &v146);
      v21 = v79;

      v87 = v140;
      *(v140 + 4) = v86;
      v88 = v84;
      v89 = v87;
      _os_log_impl(&dword_226AB4000, v74, v139, "This account is throttled. Will process if two months have passed since the last failure date: %s", v87, 0xCu);
      v90 = v141;
      __swift_destroy_boxed_opaque_existential_0Tm(v141);
      MEMORY[0x22AA8BEE0](v90, -1, -1);
      MEMORY[0x22AA8BEE0](v89, -1, -1);
    }

    else
    {

      v91 = v70[1];
      v88 = (v70 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v91)(v73, v21);
      v85 = v91;
    }

    v92 = v136;
    sub_226D6D46C();
    v93 = v138;
    v94 = sub_226D6D40C();
    v142 = v88;
    (v85)(v92, v21);
    if ((v94 & 1) == 0)
    {
      v141 = v85;
      v113 = v132;
      v72(v132, v93, v21);
      v114 = sub_226D6E05C();
      v115 = sub_226D6E9EC();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v146 = v117;
        *v116 = 136315138;
        sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578]);
        v118 = sub_226D6F1CC();
        v119 = v21;
        v121 = v120;
        v122 = v113;
        v123 = v141;
        (v141)(v122, v119);
        v124 = sub_226AC4530(v118, v121, &v146);

        *(v116 + 4) = v124;
        _os_log_impl(&dword_226AB4000, v114, v115, "This account is throttled and not enough time has passed to retry. Not processing until after %s", v116, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v117);
        MEMORY[0x22AA8BEE0](v117, -1, -1);
        MEMORY[0x22AA8BEE0](v116, -1, -1);

        (v123)(v138, v119);
        (*(v144 + 8))(v143, v126);
        (v123)(v145, v119);
      }

      else
      {

        v125 = v141;
        (v141)(v113, v21);
        (v125)(v93, v21);
        (*(v144 + 8))(v143, v126);
        (v125)(v145, v21);
      }

      v42 = 0;
      return v42 & 1;
    }

    v95 = v133;
    v72(v133, v93, v21);
    v96 = sub_226D6E05C();
    v97 = sub_226D6E9EC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v139 = v98;
      v141 = swift_slowAlloc();
      v146 = v141;
      *v98 = 136315394;
      v99 = v136;
      sub_226D6D46C();
      sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578]);
      v100 = v21;
      v101 = sub_226D6F1CC();
      v103 = v102;
      LODWORD(v140) = v97;
      (v85)(v99, v21);
      v104 = sub_226AC4530(v101, v103, &v146);

      v105 = v139;
      *(v139 + 4) = v104;
      *(v105 + 12) = 2080;
      v106 = sub_226D6F1CC();
      v108 = v107;
      (v85)(v95, v100);
      v109 = sub_226AC4530(v106, v108, &v146);

      *(v105 + 14) = v109;
      _os_log_impl(&dword_226AB4000, v96, v140, "%s is after %s. This account is throttled and should be retried now. Returning true", v105, 0x16u);
      v110 = v141;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v110, -1, -1);
      MEMORY[0x22AA8BEE0](v105, -1, -1);

      (v85)(v138, v100);
      (*(v144 + 8))(v143, v126);
      v111 = v145;
      v112 = v100;
    }

    else
    {

      (v85)(v95, v21);
      (v85)(v93, v21);
      (*(v144 + 8))(v143, v126);
      v111 = v145;
      v112 = v21;
    }

    (v85)(v111, v112);
LABEL_26:
    v42 = 1;
    return v42 & 1;
  }

  sub_226AC47B0(v60, &qword_27D7A8BE0, &unk_226D718F0);
  v61 = sub_226D6E05C();
  v62 = sub_226D6E9CC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = v7;
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_226AB4000, v61, v62, "Expected non-nil attemptAgainAfter date", v64, 2u);
    v65 = v64;
    v7 = v63;
    MEMORY[0x22AA8BEE0](v65, -1, -1);
  }

  sub_226C077F8();
  swift_willThrowTypedImpl();
  (*(v8 + 8))(v143, v7);
  (v131[1])(v145, v21);
  return v42 & 1;
}

uint64_t sub_226C09A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineLabDefaultLogicProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C09A74(uint64_t a1)
{
  v2 = type metadata accessor for OfflineLabDefaultLogicProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226C09AD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_226C09B2C()
{
  result = qword_27D7A8038;
  if (!qword_27D7A8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8038);
  }

  return result;
}

void sub_226C09B90(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a1;
  v38 = a2;
  v42 = sub_226D6B9BC();
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v42);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - v6;
  v7 = sub_226D680EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_226D69F0C();
  v12 = sub_226D69DDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_226D71840;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 32) = 0x49746E756F636361;
  *(v13 + 40) = 0xE900000000000064;
  *(v13 + 88) = v14;
  *(v13 + 56) = v14;
  strcpy((v13 + 64), "institutionId");
  *(v13 + 78) = -4864;
  v15 = sub_226D6E5CC();

  [v12 setPropertiesToFetch_];

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_226D70840;
  (*(v8 + 104))(v11, *MEMORY[0x277CC7158], v7);
  v17 = sub_226D680DC();
  (*(v8 + 8))(v11, v7);
  v18 = MEMORY[0x277D849A0];
  *(v16 + 56) = MEMORY[0x277D84958];
  *(v16 + 64) = v18;
  *(v16 + 32) = v17;
  v19 = sub_226D6E91C();
  [v12 setPredicate_];

  v20 = v41;
  v21 = sub_226D6EBBC();
  if (v20)
  {

    return;
  }

  v22 = v37;
  v23 = v38;
  v24 = v36;
  v41 = v21;
  if (!(v21 >> 62))
  {
    v25 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_5;
    }

LABEL_18:

    *v23 = MEMORY[0x277D84F90];
    return;
  }

  v25 = sub_226D6EDFC();
  if (!v25)
  {
    goto LABEL_18;
  }

LABEL_5:
  v43 = MEMORY[0x277D84F90];
  sub_226AE2090(0, v25 & ~(v25 >> 63), 0);
  if (v25 < 0)
  {
    __break(1u);
  }

  else
  {
    v35 = 0;
    v39 = v12;
    v26 = v43;
    if ((v41 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v25; ++i)
      {
        MEMORY[0x22AA8AFD0](i, v41);
        sub_226D69D5C();
        swift_unknownObjectRelease();
        v43 = v26;
        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_226AE2090(v28 > 1, v29 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v29 + 1;
        (*(v2 + 32))(v26 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v29, v24, v42);
      }
    }

    else
    {
      v40 = v2 + 32;
      v30 = 32;
      v31 = v41;
      do
      {
        v32 = *(v31 + v30);
        sub_226D69D5C();

        v43 = v26;
        v34 = *(v26 + 16);
        v33 = *(v26 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_226AE2090(v33 > 1, v34 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v34 + 1;
        (*(v2 + 32))(v26 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v34, v22, v42);
        v30 += 8;
        --v25;
      }

      while (v25);
    }

    *v38 = v26;
  }
}

uint64_t sub_226C0A0D8(uint64_t a1, void *a2)
{
  v3 = v2;
  v62[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v14 = sub_226D6B6FC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v57 = sub_226D6B6EC();
  v18 = *(a1 + 16);
  if (v18)
  {
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v61 = v20;
    v56 = (v19 - 8);
    v21 = a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v53 = *(v19 + 56);
    *&v17 = 136315138;
    v49 = v17;
    v22 = v11;
    v50 = v13;
    v54 = v19;
    v55 = a2;
    v48 = v11;
    while (1)
    {
      v59 = v21;
      v24 = v61(v13);
      v60 = MEMORY[0x22AA8B6A0](v24);
      v25 = [objc_opt_self() currentQueryGenerationToken];
      v62[0] = 0;
      v26 = [a2 setQueryGenerationFromToken:v25 error:v62];

      v27 = v62[0];
      if (!v26)
      {
        break;
      }

      v28 = v62[0];
      sub_226D6B6DC();
      if (v3)
      {
        goto LABEL_14;
      }

      v62[0] = 0;
      v29 = [a2 save_];
      v27 = v62[0];
      if ((v29 & 1) == 0)
      {
        break;
      }

      v58 = v18;
      v30 = v62[0];
      [a2 reset];
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v31 = sub_226D6E07C();
      __swift_project_value_buffer(v31, qword_28105F710);
      (v61)(v22, v13, v6);
      v32 = v22;
      v33 = sub_226D6E05C();
      v34 = sub_226D6E9EC();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v56;
      if (v35)
      {
        v37 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v62[0] = v51;
        *v37 = v49;
        sub_226C0B634();
        v38 = v32;
        v39 = sub_226D6F1CC();
        v52 = 0;
        v41 = v40;
        v23 = *v36;
        v23(v38, v6);
        v42 = sub_226AC4530(v39, v41, v62);
        v3 = v52;

        *(v37 + 4) = v42;
        _os_log_impl(&dword_226AB4000, v33, v34, "Successfully populated isVisible transactions for: %s.", v37, 0xCu);
        v43 = v51;
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        v13 = v50;
        MEMORY[0x22AA8BEE0](v43, -1, -1);
        MEMORY[0x22AA8BEE0](v37, -1, -1);

        v22 = v48;
      }

      else
      {

        v23 = *v36;
        v23(v32, v6);
        v22 = v32;
      }

      objc_autoreleasePoolPop(v60);
      v23(v13, v6);
      v21 = v59 + v53;
      v18 = v58 - 1;
      a2 = v55;
      if (v58 == 1)
      {
        goto LABEL_12;
      }
    }

    v45 = v27;
    sub_226D6D04C();

    swift_willThrow();
LABEL_14:
    objc_autoreleasePoolPop(v60);

    result = (*v56)(v13, v6);
  }

  else
  {
LABEL_12:
  }

  v46 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_226C0A558(id a1)
{
  v2 = v1;
  v59[6] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() currentQueryGenerationToken];
  v59[0] = 0;
  v5 = [a1 setQueryGenerationFromToken:v4 error:v59];

  v6 = v59[0];
  if (!v5)
  {
    v14 = v59[0];
    sub_226D6D04C();

    swift_willThrow();
    goto LABEL_7;
  }

  sub_226D6AC0C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = v6;
  v9 = [ObjCClassFromMetadata entityName];
  if (!v9)
  {
    sub_226D6E39C();
    v9 = sub_226D6E36C();
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v11 = sub_226D6E91C();
  [v10 setPredicate_];

  [v10 setResultType_];
  v12 = sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v13 = sub_226D6EBBC();
  if (v1)
  {

    goto LABEL_7;
  }

  v16 = v13;
  v17 = v13 >> 62;
  v46 = v10;
  if (v13 >> 62)
  {
    goto LABEL_68;
  }

  v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v58 = v2;
  if (v18 < 1)
  {
    goto LABEL_58;
  }

  v19 = 0;
  v51 = v16 & 0xC000000000000001;
  v52 = v16 & 0xFFFFFFFFFFFFFF8;
  v47 = (v16 & 0xFFFFFFFFFFFFFF8) + 32;
  v48 = v18;
  v20 = 100;
  v56 = v12;
  v49 = v17;
  v50 = v16;
  v57 = a1;
  while (1)
  {
    v54 = v20;
    if (v18 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v18;
    }

    a1 = (v19 + 100);
    v2 = __OFADD__(v19, 100);
    v22 = MEMORY[0x22AA8B6A0]();
    if (v2)
    {
      goto LABEL_63;
    }

    if (v18 >= a1)
    {
      v2 = v19 + 100;
    }

    else
    {
      v2 = v18;
    }

    if (v2 < v19)
    {
      goto LABEL_64;
    }

    v23 = v22;
    v53 = v19 + 100;
    if (v17)
    {
      if (sub_226D6EDFC() < v19)
      {
        goto LABEL_65;
      }

      v24 = sub_226D6EDFC();
    }

    else
    {
      v24 = *(v52 + 16);
      if (v24 < v19)
      {
        goto LABEL_65;
      }
    }

    if (v24 < v2)
    {
      goto LABEL_66;
    }

    if (!v51 || v19 == v2)
    {

      v55 = v23;
      if (!v17)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v19 >= v2)
      {
        goto LABEL_67;
      }

      v25 = v19;
      do
      {
        v26 = v25 + 1;
        sub_226D6EF0C();
        v25 = v26;
      }

      while (v21 != v26);
      v55 = v23;
      if (!v17)
      {
LABEL_35:
        v27 = (2 * v2) | 1;
        v28 = v47;
        goto LABEL_38;
      }
    }

    sub_226D6F0CC();
    v28 = v29;
    v19 = v30;
    v27 = v31;
LABEL_38:
    sub_226AE4BCC(v28, v19, v27);
    v33 = v32;
    swift_unknownObjectRelease();
    if ((v33 & 0xC000000000000001) != 0)
    {
      sub_226D6EDBC();
      sub_226AE59FC();
      sub_226D6E8DC();
      v33 = v59[1];
      v2 = v59[2];
      v34 = v59[3];
      v12 = v59[4];
      a1 = v59[5];
    }

    else
    {
      v12 = 0;
      v35 = -1 << *(v33 + 32);
      v2 = v33 + 56;
      v34 = ~v35;
      v36 = -v35;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      a1 = (v37 & *(v33 + 56));
    }

    v16 = (v34 + 64) >> 6;
    if ((v33 & 0x8000000000000000) != 0)
    {
LABEL_51:
      if (!sub_226D6EE2C())
      {
        goto LABEL_56;
      }

      swift_dynamicCast();
      v41 = v59[0];
      v17 = v12;
      v40 = a1;
      if (!v59[0])
      {
        goto LABEL_56;
      }

      goto LABEL_53;
    }

    while (1)
    {
      v38 = v12;
      v39 = a1;
      v17 = v12;
      if (!a1)
      {
        while (1)
        {
          v17 = (v38 + 1);
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v17 >= v16)
          {
            goto LABEL_56;
          }

          v39 = *(v2 + 8 * v17);
          ++v38;
          if (v39)
          {
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        v18 = sub_226D6EDFC();
        goto LABEL_10;
      }

LABEL_49:
      v40 = (v39 - 1) & v39;
      v41 = *(*(v33 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v39)))));
      if (!v41)
      {
        break;
      }

LABEL_53:
      v42 = sub_226D6AB0C();
      if (v58)
      {

        sub_226AD3C20();

        goto LABEL_60;
      }

      v43 = v42;
      [v42 setIsVisible_];

      v12 = v17;
      a1 = v40;
      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_56:
    sub_226AD3C20();
    v59[0] = 0;
    if (([v57 save_] & 1) == 0)
    {
      break;
    }

    v44 = v59[0];
    [v57 reset];
    objc_autoreleasePoolPop(v55);
    v20 = v54 + 100;
    v19 = v53;
    v18 = v48;
    v17 = v49;
    v16 = v50;
    v12 = v56;
    if (v53 >= v48)
    {
LABEL_58:

      goto LABEL_7;
    }
  }

  v45 = v59[0];

  sub_226D6D04C();

  swift_willThrow();
LABEL_60:
  objc_autoreleasePoolPop(v55);

LABEL_7:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_226C0AB5C(uint64_t a1, uint64_t a2, void *a3)
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226AB4000, v6, v7, "Cleaning up empty currency transactions", v8, 2u);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v9 = [objc_opt_self() currentQueryGenerationToken];
  v37[0] = 0;
  v10 = [a3 setQueryGenerationFromToken:v9 error:v37];

  v11 = v37[0];
  if (v10)
  {
    sub_226D6AC0C();
    v12 = v11;
    v13 = sub_226D6AAFC();
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v14 = sub_226D6E91C();
    [v13 setPredicate_];

    v15 = sub_226D6EBBC();
    if (v3)
    {
LABEL_33:

      goto LABEL_34;
    }

    v16 = v15;
    v17 = v15 >> 62;
    if (v15 >> 62)
    {
      if (sub_226D6EDFC() >= 1)
      {
        v35 = v17;
        v36 = v13;
        v23 = sub_226D6EDFC();
        if (v23)
        {
          v18 = v23;
          if (v23 >= 1)
          {
LABEL_9:
            v35 = v17;
            v36 = v13;
            for (i = 0; i != v18; ++i)
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v20 = MEMORY[0x22AA8AFD0](i, v16);
              }

              else
              {
                v20 = *(v16 + 8 * i + 32);
              }

              v21 = v20;
              [a3 deleteObject_];
            }

            goto LABEL_19;
          }

          __break(1u);
        }

LABEL_19:

        v24 = sub_226D6E05C();
        v25 = sub_226D6E9EC();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 134217984;
          v13 = v36;
          if (v35)
          {
            v27 = sub_226D6EDFC();
          }

          else
          {
            v27 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v26 + 4) = v27;

          _os_log_impl(&dword_226AB4000, v24, v25, "Deleted %ld empty currency transactions", v26, 0xCu);
          MEMORY[0x22AA8BEE0](v26, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v13 = v36;
        }

        v37[0] = 0;
        if (![a3 save_])
        {
          v33 = v37[0];
          sub_226D6D04C();

          swift_willThrow();
          goto LABEL_33;
        }

        v32 = v37[0];
        v28 = sub_226D6E05C();
        v29 = sub_226D6E9EC();
        if (!os_log_type_enabled(v28, v29))
        {
          goto LABEL_31;
        }

        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "Successfully cleaned up empty currency transactions";
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_9;
      }
    }

    v28 = sub_226D6E05C();
    v29 = sub_226D6E9EC();
    if (!os_log_type_enabled(v28, v29))
    {
LABEL_31:

      goto LABEL_33;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "No empty currency transactions, returning";
LABEL_30:
    _os_log_impl(&dword_226AB4000, v28, v29, v31, v30, 2u);
    MEMORY[0x22AA8BEE0](v30, -1, -1);
    goto LABEL_31;
  }

  v22 = v37[0];
  sub_226D6D04C();

  swift_willThrow();
LABEL_34:
  sub_226C0B68C();
  v34 = *MEMORY[0x277D85DE8];
}

void sub_226C0B038(uint64_t *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_226C0B1A0(a1);
}

void sub_226C0B058()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v0 = sub_226D6E07C();
  __swift_project_value_buffer(v0, qword_28105F710);
  oslog = sub_226D6E05C();
  v1 = sub_226D6E9EC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_226AC4530(0xD00000000000004BLL, 0x8000000226D773A0, &v5);
    _os_log_impl(&dword_226AB4000, oslog, v1, "Completed %s task", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    MEMORY[0x22AA8BEE0](v3, -1, -1);
    MEMORY[0x22AA8BEE0](v2, -1, -1);
  }
}

void sub_226C0B1A0(uint64_t *a1)
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F710);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_226AC4530(0xD00000000000004BLL, 0x8000000226D773A0, &v17);
    _os_log_impl(&dword_226AB4000, v4, v5, "Starting %s task", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v8 = *a1;
  v9 = sub_226D676AC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_226D6EB7C();
  if (v1)
  {
  }

  else
  {
    MEMORY[0x28223BE20](v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E88, &unk_226D73770);
    v11 = sub_226D6EB8C();
    MEMORY[0x28223BE20](v11);
    sub_226D6EB7C();

    MEMORY[0x28223BE20](v12);
    sub_226D6EB7C();
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9EC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_226AC4530(0xD00000000000004BLL, 0x8000000226D773A0, &v17);
      _os_log_impl(&dword_226AB4000, v13, v14, "Successfully completed %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }
  }

  sub_226C0B058();
}

uint64_t sub_226C0B5F4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_226C0A0D8(*(v0 + 16), *(v0 + 24));
}

unint64_t sub_226C0B634()
{
  result = qword_27D7A6E40;
  if (!qword_27D7A6E40)
  {
    sub_226D6B9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6E40);
  }

  return result;
}

void sub_226C0B68C()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v0 = sub_226D6E07C();
  __swift_project_value_buffer(v0, qword_28105F710);
  oslog = sub_226D6E05C();
  v1 = sub_226D6E9EC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_226AB4000, oslog, v1, "Finished cleaning up empty currency transactions", v2, 2u);
    MEMORY[0x22AA8BEE0](v2, -1, -1);
  }
}

uint64_t sub_226C0B798(uint64_t a1)
{
  v2 = sub_226D6D1AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D67F1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() ephemeralSessionConfiguration];
  sub_226D67E6C();
  sub_226D67F0C();
  v13 = sub_226D6E36C();

  [v12 set:v13 sourceApplicationBundleIdentifier:?];

  (*(v3 + 16))(v6, a1, v2);
  sub_226D6827C();
  v14 = sub_226D699AC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_226D6999C();
  (*(v8 + 8))(v11, v7);
  return v17;
}

uint64_t sub_226C0B9A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_226C0B9EC()
{
  v1 = v0;
  v2 = *(v0 + 112);
  v3 = sub_226D676AC();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_226C19610;
  *(v5 + 24) = v4;
  v9[4] = sub_226B2A194;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_226CAD254;
  v9[3] = &block_descriptor_105;
  v6 = _Block_copy(v9);
  v7 = v3;

  [v7 performBlockAndWait_];

  _Block_release(v6);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void *sub_226C0BB5C()
{
  v1 = sub_226D6E07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 328))
  {
    v6 = *(v0 + 328);
  }

  else
  {
    sub_226AE532C(v0 + 120, v22);
    v7 = *(v0 + 112);
    v8 = sub_226D6704C();
    type metadata accessor for OrderWebServicePendingTaskSource();
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = MEMORY[0x277CC6A68];
    v10 = qword_28105F5B8;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v1, qword_28105F5C0);
    (*(v2 + 16))(v5, v11, v1);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C10, &qword_226D775A8);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v6 = swift_allocObject();
    swift_defaultActor_initialize();
    v15 = v6 + *(*v6 + 152);
    *v15 = sub_226B239BC(MEMORY[0x277D84F90]);
    *(v15 + 8) = xmmword_226D77480;
    *(v6 + *(*v6 + 160)) = 0;
    *(v6 + *(*v6 + 168)) = 0;
    *(v6 + *(*v6 + 176)) = 0;
    sub_226AE532C(v22, (v6 + 14));
    v6[19] = v9;
    v20 = type metadata accessor for OrderWebServiceCoordinator();
    v21 = &off_28183CAD0;
    *&v19 = v0;

    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    sub_226AC484C(&v19, (v6 + 20));
    v6[25] = &type metadata for WalletInfo;
    v6[26] = &protocol witness table for WalletInfo;
    (*(v2 + 32))(v6 + *(*v6 + 136), v5, v1);
    v16 = v6 + *(*v6 + 144);
    *v16 = 0;
    *(v16 + 1) = 0xD000000000000018;
    *(v16 + 2) = 0x8000000226D836E0;
    *(v16 + 3) = 0xD000000000000027;
    *(v16 + 4) = 0x8000000226D83700;
    v16[40] = 1;
    v17 = *(v0 + 328);
    *(v0 + 328) = v6;
  }

  return v6;
}

uint64_t *sub_226C0BE78()
{
  if (v0[42])
  {
    v1 = v0[42];

    sub_226D6E80C();
  }

  v2 = v0[14];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 25);
  v3 = v0[30];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 31);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 36);
  v4 = v0[41];

  v5 = v0[42];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_226C0BF20()
{
  sub_226C0BE78();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226C0BF70()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C0C00C, v0, 0);
}

uint64_t sub_226C0C00C()
{
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F5C0);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Starting order web service coordinator", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = sub_226C0BB5C();
  *(v0 + 32) = v6;

  return MEMORY[0x2822009F8](sub_226C0C134, v6, 0);
}

uint64_t sub_226C0C134()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_226CAD8A4();
  v4 = sub_226D6E79C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_226AC4194(&qword_281061838, &unk_27D7A8C10, &qword_226D775A8);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;

  sub_226B60364(0, 0, v2, &unk_226D775B0, v6);

  return MEMORY[0x2822009F8](sub_226C0C278, v3, 0);
}

uint64_t sub_226C0C278()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 248), *(*(v0 + 16) + 272));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_226C0C338;
  v3 = *(v0 + 16);

  return sub_226C15BF0(v3, v1);
}

uint64_t sub_226C0C338()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226C0C448, v2, 0);
}

uint64_t sub_226C0C448()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 248), *(*(v0 + 16) + 272));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_226C0C4E8;

  return sub_226D0A5C4();
}

uint64_t sub_226C0C4E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 56) = v4;
  *v4 = v3;
  v4[1] = sub_226C0C628;
  v5 = *(v1 + 16);

  return sub_226C0C7A0();
}

uint64_t sub_226C0C628()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226C0C738, v2, 0);
}

uint64_t sub_226C0C738()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_226C0DC58();

  v3 = v0[1];

  return v3();
}

uint64_t sub_226C0C7C0()
{
  v24 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  v0[4] = v1;
  __swift_project_value_buffer(v1, qword_28105F5C0);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Retrieving enabled topics (order types)", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = *(v5 + 112);
  v7 = sub_226D676AC();
  *(swift_task_alloc() + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  sub_226D6EB8C();

  v8 = v0[2];
  v0[5] = v8;

  v9 = sub_226D6E05C();
  v10 = sub_226D6E9EC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = MEMORY[0x22AA8A6A0](v8, MEMORY[0x277D837D0]);
    v15 = sub_226AC4530(v13, v14, &v23);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_226AB4000, v9, v10, "Requesting tokens for enabled topics (order types): %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  v16 = *(v8 + 16);
  v0[6] = v16;
  if (v16)
  {
    v17 = v0[3];
    v0[7] = 0;
    v18 = v0[5];
    v0[8] = *(v18 + 32);
    v0[9] = *(v18 + 40);
    v19 = __swift_project_boxed_opaque_existential_1((v17 + 248), *(v17 + 272));
    v20 = *v19;
    v0[10] = *v19;

    return MEMORY[0x2822009F8](sub_226C0CBC8, v20, 0);
  }

  else
  {

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_226C0CBC8()
{
  v24 = v0;
  v1 = v0[9];
  v2 = *(v0[10] + 112);
  if (v2)
  {
    v3 = v0[8];
    v4 = objc_allocWithZone(MEMORY[0x277CEEA00]);
    v5 = v2;
    v6 = sub_226D6E36C();
    v7 = sub_226D6E36C();
    v8 = [v4 initWithTopic:v6 identifier:v7];

    if (qword_28105F640 != -1)
    {
      swift_once();
    }

    v9 = v0[9];
    __swift_project_value_buffer(v0[4], qword_28105F648);

    v10 = sub_226D6E05C();
    v11 = sub_226D6E9EC();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[8];
      v12 = v0[9];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_226AC4530(v13, v12, &v23);
      _os_log_impl(&dword_226AB4000, v10, v11, "Requesting token for topic %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
      MEMORY[0x22AA8BEE0](v14, -1, -1);
    }

    v16 = v0[9];
    v17 = v0[3];
    [v5 requestTokenForInfo_];

    v18 = sub_226C0CE24;
    v19 = v17;
  }

  else
  {
    v20 = v0[3];
    v21 = v0[9];

    v18 = sub_226C19898;
    v19 = v20;
  }

  return MEMORY[0x2822009F8](v18, v19, 0);
}

uint64_t sub_226C0CE24()
{
  v1 = v0[7] + 1;
  if (v1 == v0[6])
  {
    v2 = v0[5];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[7] = v1;
    v5 = v0[3];
    v6 = v0[5] + 16 * v1;
    v0[8] = *(v6 + 32);
    v0[9] = *(v6 + 40);
    v7 = __swift_project_boxed_opaque_existential_1((v5 + 248), *(v5 + 272));
    v8 = *v7;
    v0[10] = *v7;

    return MEMORY[0x2822009F8](sub_226C0CBC8, v8, 0);
  }
}

uint64_t sub_226C0CF38()
{
  v1 = *(v0 + 16);
  v2 = sub_226C0BB5C();
  *(v0 + 24) = v2;

  return MEMORY[0x2822009F8](sub_226C0CFA4, v2, 0);
}

uint64_t sub_226C0CFA4()
{
  v1 = v0[3];
  if (*(v1 + *(*v1 + 144) + 40) == 1 && (v2 = v1[25], ((*(v1[26] + 16))() & 1) != 0))
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_226C0D0E4;
    v4 = v0[3];

    return sub_226CAE190();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_226C0D1F4;
    v7 = v0[3];

    return sub_226CAFB00();
  }
}

uint64_t sub_226C0D0E4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_226C0D1F4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_226C0D304(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  sub_226D6A47C();
  v3 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D71F40;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D71F40;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  *(v5 + 32) = sub_226D6E91C();
  *(v5 + 40) = sub_226D6E91C();
  v6 = sub_226D6E5CC();

  v7 = objc_opt_self();
  v8 = [v7 orPredicateWithSubpredicates_];

  *(v4 + 32) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_226D70840;
  v10 = sub_226D6D3EC();
  *(v9 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
  *(v9 + 64) = sub_226C19454();
  *(v9 + 32) = v10;
  *(v4 + 40) = sub_226D6E91C();
  v11 = sub_226D6E5CC();

  v12 = [v7 andPredicateWithSubpredicates_];

  [v3 setPredicate:v12];
  v13 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v27[0] = 0;
  v14 = [a2 executeRequest:v13 error:v27];
  if (v14)
  {
    v15 = v14;
    v16 = v27[0];

LABEL_8:
    v3 = v15;
    goto LABEL_9;
  }

  v17 = v27[0];
  v18 = sub_226D6D04C();

  swift_willThrow();
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v19 = sub_226D6E07C();
  __swift_project_value_buffer(v19, qword_28105F5C0);
  v20 = v18;
  v15 = sub_226D6E05C();
  v21 = sub_226D6E9CC();

  if (!os_log_type_enabled(v15, v21))
  {

    goto LABEL_8;
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  *v22 = 138412290;
  v24 = v18;
  v25 = _swift_stdlib_bridgeErrorToNSError();
  *(v22 + 4) = v25;
  *v23 = v25;
  _os_log_impl(&dword_226AB4000, v15, v21, "Failed to prune order registrations with error: %@", v22, 0xCu);
  sub_226AC47B0(v23, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v23, -1, -1);
  MEMORY[0x22AA8BEE0](v22, -1, -1);

LABEL_9:
  v26 = *MEMORY[0x277D85DE8];
}

void sub_226C0D75C(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  sub_226D6B7BC();
  v3 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D70840;
  v5 = sub_226D6D3EC();
  *(v4 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
  *(v4 + 64) = sub_226C19454();
  *(v4 + 32) = v5;
  v6 = sub_226D6E91C();
  [v3 setPredicate:v6];

  v7 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v21[0] = 0;
  v8 = [a2 executeRequest:v7 error:v21];
  if (v8)
  {
    v9 = v8;
    v10 = v21[0];

LABEL_8:
    v3 = v9;
    goto LABEL_9;
  }

  v11 = v21[0];
  v12 = sub_226D6D04C();

  swift_willThrow();
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v13 = sub_226D6E07C();
  __swift_project_value_buffer(v13, qword_28105F5C0);
  v14 = v12;
  v9 = sub_226D6E05C();
  v15 = sub_226D6E9CC();

  if (!os_log_type_enabled(v9, v15))
  {

    goto LABEL_8;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  *v16 = 138412290;
  v18 = v12;
  v19 = _swift_stdlib_bridgeErrorToNSError();
  *(v16 + 4) = v19;
  *v17 = v19;
  _os_log_impl(&dword_226AB4000, v9, v15, "Failed to prune order web service log entries with error: %@", v16, 0xCu);
  sub_226AC47B0(v17, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v17, -1, -1);
  MEMORY[0x22AA8BEE0](v16, -1, -1);

LABEL_9:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_226C0DA70(void *a1, uint64_t (*a2)(id, uint64_t), void (*a3)(uint64_t, uint64_t))
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = a1;
  v6 = a1;
  v8 = a2(v6, v7);
  if (!v3)
  {
    a3(v8, v9);

    v13[0] = 0;
    if ([v6 save_])
    {
      v10 = v13[0];
    }

    else
    {
      v11 = v13[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_226C0DB6C(void *a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  ManagedOrderDashboardItemUpdater.updateShowsAsActive(context:now:)(a1, a2, v11);
  if (!v3)
  {
    v6 = v11[0];
    v7 = BYTE1(v11[0]);
    if (LOBYTE(v11[0]) == 1)
    {
      v11[0] = 0;
      if (![a1 save_])
      {
        v9 = v11[0];
        sub_226D6D04C();

        swift_willThrow();
        goto LABEL_7;
      }

      v8 = v11[0];
    }

    *a3 = v6;
    a3[1] = v7;
  }

LABEL_7:
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226C0DC58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F5C0);
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9EC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226AB4000, v7, v8, "Starting to observe persistent store remote change notifications", v9, 2u);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  if (*(v1 + 336))
  {
    v10 = *(v1 + 336);

    sub_226D6E80C();
  }

  v11 = sub_226D6E79C();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v14 = sub_226B60364(0, 0, v5, &unk_226D77580, v13);
  v15 = *(v1 + 336);
  *(v1 + 336) = v14;
}

uint64_t sub_226C0DE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = sub_226D6B70C();
  v4[26] = v6;
  v7 = *(v6 - 8);
  v4[27] = v7;
  v8 = *(v7 + 64) + 15;
  v4[28] = swift_task_alloc();
  v9 = sub_226D6CD9C();
  v4[29] = v9;
  v10 = *(v9 - 8);
  v4[30] = v10;
  v11 = *(v10 + 64) + 15;
  v4[31] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67B8, &unk_226D71D80) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v13 = sub_226D6EAEC();
  v4[33] = v13;
  v14 = *(v13 - 8);
  v4[34] = v14;
  v15 = *(v14 + 64) + 15;
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C0E070, 0, 0);
}

uint64_t sub_226C0E070()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  *(v0 + 288) = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x277CBE260];
  *(v0 + 296) = sub_226D6EAFC();

  sub_226D6EADC();
  swift_beginAccess();
  *(v0 + 304) = *MEMORY[0x277CBE300];
  *(v0 + 328) = *MEMORY[0x277CC7FF0];
  v4 = sub_226C190C0(&qword_28105F440, MEMORY[0x277CC9D68]);
  v5 = *(MEMORY[0x277D856D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 312) = v6;
  *v6 = v0;
  v6[1] = sub_226C0E1DC;
  v7 = *(v0 + 280);
  v8 = *(v0 + 256);
  v9 = *(v0 + 264);

  return MEMORY[0x282200308](v8, v9, v4);
}

uint64_t sub_226C0E1DC()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_226C0EB50;
  }

  else
  {
    v3 = sub_226C0E2F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C0E30C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 288);
    v5 = *(v0 + 296);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

LABEL_15:
    v39 = *(v0 + 280);
    v40 = *(v0 + 248);
    v41 = *(v0 + 256);
    v42 = *(v0 + 224);
    v44 = *(v0 + 192);
    v43 = *(v0 + 200);

    v45 = *(v0 + 8);

    return v45();
  }

  v6 = *(v0 + 184);
  (*(v3 + 32))(*(v0 + 248), v1, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v32 = *(v0 + 296);
    v34 = *(v0 + 272);
    v33 = *(v0 + 280);
    v35 = *(v0 + 264);
    v37 = *(v0 + 240);
    v36 = *(v0 + 248);
    v38 = *(v0 + 232);

    (*(v37 + 8))(v36, v38);
    (*(v34 + 8))(v33, v35);
    goto LABEL_15;
  }

  v8 = Strong;
  v9 = *(v0 + 248);
  v10 = sub_226D6CD8C();
  if (!v10)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_21;
  }

  v11 = v10;
  v12 = *(v0 + 304);
  *(v0 + 144) = sub_226D6E39C();
  *(v0 + 152) = v13;
  sub_226D6EE8C();
  if (!*(v11 + 16) || (v14 = sub_226C2FE4C(v0 + 16), (v15 & 1) == 0))
  {

    sub_226AE5030(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_19;
  }

  sub_226AC4708(*(v11 + 56) + 32 * v14, v0 + 56);
  sub_226AE5030(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_19:
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

LABEL_21:
    sub_226AC47B0(v0 + 56, &unk_27D7A8BB0, &unk_226D74340);
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
    v16 = *(v0 + 328);
    v17 = *(v0 + 216);
    v18 = *(v0 + 224);
    v19 = *(v0 + 208);
    v20 = *(v0 + 168);
    v74 = *(v0 + 160);
    v21 = *(v8 + 112);
    v22 = sub_226D6769C();
    v23 = [v22 persistentStoreCoordinator];

    v24 = [v23 persistentStores];
    sub_226AE59B4(0, &unk_28105F480, 0x277CBE4D0);
    sub_226D6E5EC();

    (*(v17 + 104))(v18, v16, v19);
    v25 = sub_226D6E5AC();

    (*(v17 + 8))(v18, v19);
    if (v25)
    {
      v26 = [v25 identifier];
      if (v26)
      {
        v27 = v26;
        v28 = sub_226D6E39C();
        v30 = v29;

        v31 = v23;
        if (v74 == v28 && v20 == v30)
        {

LABEL_30:
          if (qword_28105F5B8 != -1)
          {
            swift_once();
          }

          v54 = sub_226D6E07C();
          __swift_project_value_buffer(v54, qword_28105F5C0);
          v55 = sub_226D6E05C();
          v56 = sub_226D6E9EC();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&dword_226AB4000, v55, v56, "Received remote change notification for local persistent store", v57, 2u);
            MEMORY[0x22AA8BEE0](v57, -1, -1);
          }

          v58 = *(v0 + 192);
          v59 = *(v0 + 200);

          v60 = sub_226D6E79C();
          v61 = *(v60 - 8);
          (*(v61 + 56))(v59, 1, 1, v60);
          v62 = swift_allocObject();
          swift_weakInit();
          v63 = swift_allocObject();
          v63[2] = 0;
          v63[3] = 0;
          v63[4] = v62;
          sub_226AC40E8(v59, v58, &unk_27D7A8BA0, &qword_226D734E0);
          LODWORD(v59) = (*(v61 + 48))(v58, 1, v60);

          v64 = *(v0 + 192);
          if (v59 == 1)
          {
            sub_226AC47B0(*(v0 + 192), &unk_27D7A8BA0, &qword_226D734E0);
          }

          else
          {
            sub_226D6E78C();
            (*(v61 + 8))(v64, v60);
          }

          v69 = v63[2];
          v68 = v63[3];
          swift_unknownObjectRetain();

          if (v69)
          {
            swift_getObjectType();
            v70 = sub_226D6E6CC();
            v72 = v71;
            swift_unknownObjectRelease();
          }

          else
          {
            v70 = 0;
            v72 = 0;
          }

          sub_226AC47B0(*(v0 + 200), &unk_27D7A8BA0, &qword_226D734E0);
          v73 = swift_allocObject();
          *(v73 + 16) = &unk_226D77598;
          *(v73 + 24) = v63;
          if (v72 | v70)
          {
            *(v0 + 88) = 0;
            *(v0 + 96) = 0;
            *(v0 + 104) = v70;
            *(v0 + 112) = v72;
          }

          v66 = *(v0 + 240);
          v65 = *(v0 + 248);
          v67 = *(v0 + 232);
          swift_task_create();

          goto LABEL_44;
        }

        v53 = sub_226D6F21C();

        if (v53)
        {
          goto LABEL_30;
        }
      }

      else
      {

        v31 = v23;
      }

      v66 = *(v0 + 240);
      v65 = *(v0 + 248);
      v67 = *(v0 + 232);

LABEL_44:

      (*(v66 + 8))(v65, v67);
      goto LABEL_22;
    }

    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  }

  else
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  }

LABEL_22:
  v47 = sub_226C190C0(&qword_28105F440, MEMORY[0x277CC9D68]);
  v48 = *(MEMORY[0x277D856D0] + 4);
  v49 = swift_task_alloc();
  *(v0 + 312) = v49;
  *v49 = v0;
  v49[1] = sub_226C0E1DC;
  v50 = *(v0 + 280);
  v51 = *(v0 + 256);
  v52 = *(v0 + 264);

  return MEMORY[0x282200308](v51, v52, v47);
}

uint64_t sub_226C0EB50()
{
  *(v0 + 176) = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_226C0EBFC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_226C0ECB4, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_226C0ECB4()
{
  v1 = *(v0 + 48);
  v2 = sub_226C0BB5C();
  *(v0 + 56) = v2;

  return MEMORY[0x2822009F8](sub_226C0ED20, v2, 0);
}

uint64_t sub_226C0ED20()
{
  v1 = v0[7];
  if (*(v1 + *(*v1 + 144) + 40) == 1 && (v2 = v1[25], ((*(v1[26] + 16))() & 1) != 0))
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_226C0EE60;
    v4 = v0[7];

    return sub_226CAE190();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_226C0EFD8;
    v7 = v0[7];

    return sub_226CAFB00();
  }
}

uint64_t sub_226C0EE60()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226C0EF78, 0, 0);
}

uint64_t sub_226C0EF78()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226C0EFD8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226C0EF78, 0, 0);
}

uint64_t sub_226C0F0F0()
{
  v1[8] = v0;
  v2 = sub_226D67A2C();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C0F1B0, v0, 0);
}

uint64_t sub_226C0F1B0()
{
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  v0[12] = __swift_project_value_buffer(v1, qword_28105F5C0);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Pruning deleted extracted order emails", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];

  v9 = *(v8 + 112);
  v10 = objc_allocWithZone(MEMORY[0x277D06D78]);

  v11 = [v10 init];
  v0[5] = &type metadata for FoundInMailItemDocumentFinderDefaultIndex;
  v0[6] = &off_283A72E98;
  v0[2] = v11;
  v0[7] = v9;
  (*(v6 + 104))(v5, *MEMORY[0x277CC6EB8], v7);
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_226C0F3A0;
  v13 = v0[11];

  return (sub_226C1527C)(v13, 0);
}

uint64_t sub_226C0F3A0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_226C0F53C;
    v5 = 0;
  }

  else
  {
    v6 = v2[8];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v4 = sub_226C0F4D4;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_226C0F4D4()
{
  sub_226C17BCC(v0 + 16);
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226C0F53C()
{
  v1 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  return MEMORY[0x2822009F8](sub_226C0F5B4, v1, 0);
}

uint64_t sub_226C0F5B4()
{
  v1 = v0[14];
  v2 = v0[12];
  sub_226C17BCC((v0 + 2));
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to prune deleted extracted order emails with error: %@", v8, 0xCu);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_226C0F724()
{
  v1 = sub_226D6E18C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226D6E1BC();
  v6 = *(v14 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281060348 != -1)
  {
    swift_once();
  }

  v13[1] = qword_281064528;
  v10 = *(v0 + 112);
  aBlock[4] = sub_226C17B38;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226C0B9A8;
  aBlock[3] = &block_descriptor_13;
  v11 = _Block_copy(aBlock);

  sub_226D6E19C();
  v15 = MEMORY[0x277D84F90];
  sub_226C190C0(&qword_28105F588, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7000, &unk_226D73DE0);
  sub_226AC4194(&qword_28105F528, &qword_27D7A7000, &unk_226D73DE0);
  sub_226D6ED5C();
  MEMORY[0x22AA8AB20](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v14);
}

uint64_t sub_226C0FA10()
{
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v0 = sub_226D6E07C();
  __swift_project_value_buffer(v0, qword_28105F5C0);
  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226AB4000, v1, v2, "Reprocessing extracted order cascade set as part of maintenance task", v3, 2u);
    MEMORY[0x22AA8BEE0](v3, -1, -1);
  }

  sub_226BAFC9C(v4);
}

uint64_t sub_226C0FB10@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  sub_226AE532C(v3 + 160, (a1 + 1));
  sub_226AE532C(v3 + 200, (a1 + 6));
  v5 = *(v3 + 240);
  sub_226AE532C(v3 + 248, (a1 + 12));
  sub_226AE532C(v3 + 288, (a1 + 17));
  *a1 = v4;
  a1[11] = v5;
}

void sub_226C0FB98(void *a1@<X8>)
{
  sub_226D67FDC();
  v3 = sub_226D67FAC();
  [v3 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D70840;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x8000000226D81C60;
  v5 = sub_226D6E5CC();

  [v3 setPropertiesToFetch_];

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v6 = MEMORY[0x277D84F90];
  v7 = sub_226D6E91C();
  [v3 setPredicate_];

  v8 = sub_226D6EBBC();
  if (v1)
  {

    return;
  }

  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_18:

    v11 = MEMORY[0x277D84F90];
LABEL_19:
    *a1 = v11;
    return;
  }

  v10 = sub_226D6EDFC();
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_5:
  sub_226AE1D68(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v29 = v3;
    v30 = a1;
    v11 = v6;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        MEMORY[0x22AA8AFD0](v12, v9);
        v13 = [swift_unknownObjectRetain() orderTypeIdentifier];
        v14 = sub_226D6E39C();
        v16 = v15;
        swift_unknownObjectRelease_n();

        v18 = *(v11 + 16);
        v17 = *(v11 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_226AE1D68((v17 > 1), v18 + 1, 1);
        }

        ++v12;
        *(v11 + 16) = v18 + 1;
        v19 = v11 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
      }

      while (v10 != v12);
    }

    else
    {
      v20 = 32;
      do
      {
        v21 = *(v9 + v20);
        v22 = [v21 orderTypeIdentifier];
        v23 = sub_226D6E39C();
        v25 = v24;

        v27 = *(v11 + 16);
        v26 = *(v11 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_226AE1D68((v26 > 1), v27 + 1, 1);
        }

        *(v11 + 16) = v27 + 1;
        v28 = v11 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        v20 += 8;
        --v10;
      }

      while (v10);
    }

    a1 = v30;
    goto LABEL_19;
  }

  __break(1u);
}

void sub_226C0FEE8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v58 = a5;
  v59[1] = *MEMORY[0x277D85DE8];
  v10 = sub_226D6D52C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67FDC();
  v15 = sub_226D67FBC();
  if (!v5)
  {
    v52 = a3;
    v16 = v58;
    v55 = a1;
    v56 = v11;
    v54 = a4;
    v57 = 0;
    if (v15)
    {
      v53 = v15;
      v17 = [v15 pushToken];
      if (v17)
      {
        v18 = v17;
        v19 = sub_226D6D21C();
        v21 = v20;

        v22 = v56;
        v23 = v16;
        v24 = v10;
        if (v21 >> 60 != 15)
        {
          v25 = v14;
          v51 = v24;
          if (v16 >> 60 != 15)
          {
            v26 = v54;
            sub_226B11B44(v54, v16);
            sub_226B3FA64(v19, v21);
            v27 = sub_226C16250(v19, v21, v26, v16);
            sub_226B3FAEC(v19, v21);
            sub_226B3FAEC(v26, v16);
            v22 = v56;
            sub_226B3FAEC(v19, v21);
            if ((v27 & 1) == 0)
            {
              goto LABEL_23;
            }

LABEL_16:
            if (qword_28105F5B8 != -1)
            {
              swift_once();
            }

            v36 = sub_226D6E07C();
            __swift_project_value_buffer(v36, qword_28105F5C0);
            v37 = a2;

            v38 = sub_226D6E05C();
            v39 = sub_226D6E9AC();

            v40 = os_log_type_enabled(v38, v39);
            v41 = v55;
            if (v40)
            {
              v42 = swift_slowAlloc();
              v43 = swift_slowAlloc();
              v59[0] = v43;
              *v42 = 136315138;
              *(v42 + 4) = sub_226AC4530(v41, v37, v59);
              _os_log_impl(&dword_226AB4000, v38, v39, "Token for order type %s didn't change, ignoring", v42, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v43);
              MEMORY[0x22AA8BEE0](v43, -1, -1);
              MEMORY[0x22AA8BEE0](v42, -1, -1);
            }

LABEL_25:
            goto LABEL_26;
          }

          goto LABEL_22;
        }
      }

      else
      {
        v19 = 0;
        v21 = 0xF000000000000000;
        v22 = v56;
        v23 = v16;
        v24 = v10;
      }

      v25 = v14;
      if (v23 >> 60 == 15)
      {
        sub_226B11B44(v54, v23);
        sub_226B3FAEC(v19, v21);
        goto LABEL_16;
      }

      v51 = v24;
LABEL_22:
      v44 = v54;
      sub_226B11B44(v54, v23);
      sub_226B3FAEC(v19, v21);
      sub_226B3FAEC(v44, v23);
LABEL_23:
      sub_226D6D51C();
      sub_226D6D4CC();
      (*(v22 + 8))(v25, v51);
      v45 = sub_226D6E36C();

      v46 = v53;
      [v53 setDeviceLibraryIdentifier_];

      v47 = sub_226D6D1FC();
      [v46 setPushToken_];

      [v46 setRequestTokenAttemptCount_];
      [v46 setLastRequestTokenAttemptDate_];
      v59[0] = 0;
      if (![v52 save_])
      {
        v50 = v59[0];
        sub_226D6D04C();

        swift_willThrow();
        goto LABEL_26;
      }

      v48 = v59[0];
      goto LABEL_25;
    }

    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v28 = sub_226D6E07C();
    __swift_project_value_buffer(v28, qword_28105F5C0);
    v29 = a2;

    v30 = sub_226D6E05C();
    v31 = sub_226D6E9AC();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v55;
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v59[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_226AC4530(v33, v29, v59);
      _os_log_impl(&dword_226AB4000, v30, v31, "Order type %s doesn't exist", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x22AA8BEE0](v35, -1, -1);
      MEMORY[0x22AA8BEE0](v34, -1, -1);
    }
  }

LABEL_26:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_226C10490(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v8 = sub_226D6E07C();
  __swift_project_value_buffer(v8, qword_28105F5C0);

  v9 = sub_226D6E05C();
  v10 = sub_226D6E9EC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_226AC4530(a3, a4, &v15);
    _os_log_impl(&dword_226AB4000, v9, v10, "Received token for order type %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  v13 = *(v5 + 112);
  v14 = sub_226D676AC();
  MEMORY[0x28223BE20](v14);
  sub_226D6EB7C();
}

void sub_226C107B0()
{
  v2 = v0;
  v3 = v0[14];
  v4 = sub_226D676AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8040, &qword_226D77568);
  sub_226D6EB7C();
  if (v1 || (v5 = v13) == 0)
  {
  }

  else
  {
    v6 = v12;
    v8 = v14;
    v7 = v15;
    v9 = v16;
    v11 = v2[40];
    __swift_project_boxed_opaque_existential_1(v2 + 36, v2[39]);
    v15 = &type metadata for OrderWebServiceCoordinator.TokenBucketEmptyEvent;
    v16 = sub_226C15B9C();
    v10 = swift_allocObject();
    v12 = v10;
    v10[2] = v6;
    v10[3] = v5;
    v10[4] = v8;
    v10[5] = v7;
    v10[6] = v9;
    sub_226D69AFC();

    __swift_destroy_boxed_opaque_existential_0Tm(&v12);
  }
}

void sub_226C108F4(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v50 = a4;
  v54 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for TokenBucket.State();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  sub_226D67FDC();
  v19 = sub_226D67FBC();
  if (v4)
  {
    goto LABEL_15;
  }

  v20 = v19;
  v46 = v18;
  v47 = v16;
  v21 = v50;
  v48 = 0;
  v49 = a1;
  if (v19)
  {
    v22 = v12;
    v23 = [v19 updateSequenceNumber];
    if (__OFADD__(v23, 1))
    {
      __break(1u);
    }

    else
    {
      [v20 setUpdateSequenceNumber_];
      v21 = [v20 updateTokenCount];
      v24 = [v20 updateTokenRefillDate];
      v25 = a3;
      v26 = v11;
      if (v24)
      {
        v27 = v24;
        sub_226D6D45C();

        v28 = sub_226D6D4AC();
        (*(*(v28 - 8) + 56))(v26, 0, 1, v28);
      }

      else
      {
        v28 = sub_226D6D4AC();
        (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
      }

      v37 = v47;
      v38 = *(v22 + 20);
      sub_226D6D4AC();
      v39 = v46;
      (*(*(v28 - 8) + 56))(v46 + v38, 1, 1, v28);
      if ((v21 & 0x80000000) == 0)
      {
        *v39 = v21;
        sub_226AFD680(v26, v39 + v38, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226C19664(v39, v37, type metadata accessor for TokenBucket.State);

        sub_226C17808(v49, a2, v37, v52);
        v51 = 0;
        v40 = [v25 save_];
        v41 = v50;
        if (v40)
        {
          v42 = v51;
          sub_226C196CC(v39, type metadata accessor for TokenBucket.State);

          v43 = v52[1];
          *v41 = v52[0];
          *(v41 + 1) = v43;
          v41[4] = v53;
        }

        else
        {
          v44 = v51;
          sub_226AC47B0(v52, &qword_27D7A8040, &qword_226D77568);
          sub_226D6D04C();

          swift_willThrow();
          sub_226C196CC(v39, type metadata accessor for TokenBucket.State);
        }

        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_28105F5B8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v29 = sub_226D6E07C();
  __swift_project_value_buffer(v29, qword_28105F5C0);
  v30 = a2;

  v31 = sub_226D6E05C();
  v32 = sub_226D6E9AC();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v49;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v51 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_226AC4530(v34, v30, &v51);
    _os_log_impl(&dword_226AB4000, v31, v32, "Order type %s doesn't exist", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x22AA8BEE0](v36, -1, -1);
    MEMORY[0x22AA8BEE0](v35, -1, -1);
  }

  v21[4] = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
LABEL_15:
  v45 = *MEMORY[0x277D85DE8];
}

void sub_226C10DE8(uint64_t a1, unint64_t a2)
{
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);

  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(a1, a2, &v9);
    _os_log_impl(&dword_226AB4000, v5, v6, "Received message for order type %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  sub_226C107B0();
}

uint64_t sub_226C110EC()
{
  v1 = *(v0[3] + 112);
  v2 = sub_226D676AC();
  *(swift_task_alloc() + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  sub_226D6EB8C();

  v4 = v0[1];
  v3 = v0[2];

  return v4(v3);
}

unint64_t sub_226C11218()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D71840;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000226D81C60;
  *(inited + 48) = sub_226D6E36C();
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x8000000226D837C0;
  *(inited + 72) = sub_226D6E85C();
  v5 = sub_226B224E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
  swift_arrayDestroy();
  return v5;
}

void sub_226C1131C(void *a1, void *a2)
{
  v105 = *MEMORY[0x277D85DE8];
  v98 = sub_226D6904C();
  v80 = *(v98 - 8);
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for OrderWebServiceCoordinator.ActiveOrderEvent();
  v7 = *(*(active - 1) + 64);
  MEMORY[0x28223BE20](active);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_226D6D4AC();
  v10 = *(v79 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77B8, &qword_226D75588);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v77 = &v70 - v15;
  v100 = sub_226D6A58C();
  v16 = *(v100 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v100);
  v99 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6751C();
  v19 = sub_226D6748C();
  v20 = [objc_opt_self() currentQueryGenerationToken];
  *&v102 = 0;
  v21 = [a1 setQueryGenerationFromToken:v20 error:&v102];

  v22 = v102;
  if (!v21)
  {
    v60 = v102;
    v29 = sub_226D6D04C();

    swift_willThrow();
    if (qword_28105F5D8 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  v90 = v16;
  v93 = v10;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v23 = v22;
  v24 = MEMORY[0x277D84F90];
  v25 = sub_226D6E91C();
  [v19 setPredicate_];

  [v19 setReturnsObjectsAsFaults_];
  v26 = sub_226D6EBBC();
  v83 = v26;
  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v99;
    v28 = v100;
    if (v27)
    {
      goto LABEL_4;
    }

LABEL_31:

    goto LABEL_32;
  }

  v27 = sub_226D6EDFC();
  v29 = v99;
  v28 = v100;
  if (!v27)
  {
    goto LABEL_31;
  }

LABEL_4:
  v30 = 0;
  v84 = v83 & 0xC000000000000001;
  v75 = v83 & 0xFFFFFFFFFFFFFF8;
  v74 = v83 + 32;
  v96 = 0x8000000226D837A0;
  v95 = (v90 + 16);
  v94 = (v80 + 56);
  v91 = (v80 + 8);
  v92 = v80 + 16;
  v71 = (v93 + 32);
  v81 = (v90 + 8);
  v70 = xmmword_226D70840;
  v73 = a2;
  v72 = v19;
  v82 = v27;
  while (1)
  {
    if (v84)
    {
      v31 = MEMORY[0x22AA8AFD0](v30, v83);
    }

    else
    {
      if (v30 >= *(v75 + 16))
      {
        goto LABEL_28;
      }

      v31 = *(v74 + 8 * v30);
    }

    v32 = v31;
    v33 = __OFADD__(v30, 1);
    v34 = v30 + 1;
    if (v33)
    {
      break;
    }

    v90 = v34;
    v35 = [v31 ecommerceOrderContent];
    if (v35)
    {
      v36 = v35;
      v37 = v32;
      v88 = v36;
      v89 = v37;
      sub_226D6A51C();
      v38 = a2[39];
      v86 = a2[40];
      v87 = v38;
      v85 = __swift_project_boxed_opaque_existential_1(a2 + 36, v38);
      v39 = *(sub_226D6A4BC() + 16);

      if (v39)
      {
        v40 = sub_226D6A4BC();
        v41 = *(v40 + 16);
        if (v41)
        {
          v101 = v24;
          v42 = v40;
          sub_226AE26A0(0, v41, 0);
          v43 = v101;
          v44 = (*(v80 + 80) + 32) & ~*(v80 + 80);
          v76 = v42;
          v45 = v42 + v44;
          v93 = *(v80 + 72);
          v46 = *(v80 + 16);
          do
          {
            v48 = v97;
            v47 = v98;
            v46(v97, v45, v98);
            (*v95)(&v9[active[5]], v99, v100);
            v49 = active[6];
            v46(&v9[v49], v48, v47);
            (*v94)(&v9[v49], 0, 1, v47);
            v50 = &v9[active[7]];
            sub_226D6D46C();
            *v9 = 0xD00000000000001ELL;
            *(v9 + 1) = v96;
            (*v91)(v48, v47);
            v101 = v43;
            v52 = *(v43 + 16);
            v51 = *(v43 + 24);
            if (v52 >= v51 >> 1)
            {
              sub_226AE26A0((v51 > 1), v52 + 1, 1);
              v43 = v101;
            }

            v103 = active;
            v104 = sub_226C190C0(&qword_27D7A8058, type metadata accessor for OrderWebServiceCoordinator.ActiveOrderEvent);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v102);
            sub_226C19664(v9, boxed_opaque_existential_1, type metadata accessor for OrderWebServiceCoordinator.ActiveOrderEvent);
            *(v43 + 16) = v52 + 1;
            sub_226AC484C(&v102, v43 + 40 * v52 + 32);
            sub_226C196CC(v9, type metadata accessor for OrderWebServiceCoordinator.ActiveOrderEvent);
            v45 += v93;
            --v41;
          }

          while (v41);

          a2 = v73;
          v19 = v72;
          v29 = v99;
          v28 = v100;
          v24 = MEMORY[0x277D84F90];
        }

        else
        {
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A61C0, &qword_226D775E0);
        v54 = swift_allocObject();
        *(v54 + 16) = v70;
        v55 = v77;
        (*v94)(v77, 1, 1, v98);
        v56 = v78;
        sub_226D6D46C();
        *(v54 + 56) = active;
        *(v54 + 64) = sub_226C190C0(&qword_27D7A8058, type metadata accessor for OrderWebServiceCoordinator.ActiveOrderEvent);
        v57 = __swift_allocate_boxed_opaque_existential_1((v54 + 32));
        *v57 = 0xD00000000000001ELL;
        v58 = v95;
        v57[1] = v96;
        (*v58)(v57 + active[5], v29, v28);
        v59 = v55;
        v24 = MEMORY[0x277D84F90];
        sub_226AFD80C(v59, v57 + active[6], &qword_27D7A77B8, &qword_226D75588);
        (*v71)(v57 + active[7], v56, v79);
      }

      sub_226D69AEC();

      (*v81)(v29, v28);
      v27 = v82;
    }

    else
    {
    }

    v30 = v90;
    if (v90 == v27)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  swift_once();
LABEL_24:
  v61 = sub_226D6E07C();
  __swift_project_value_buffer(v61, qword_28105F5E0);
  v62 = v29;
  v63 = sub_226D6E05C();
  v64 = sub_226D6E9CC();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v65 = 138412290;
    v67 = v29;
    v68 = _swift_stdlib_bridgeErrorToNSError();
    *(v65 + 4) = v68;
    *v66 = v68;
    _os_log_impl(&dword_226AB4000, v63, v64, "Unable to count orders: %@", v65, 0xCu);
    sub_226AC47B0(v66, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v66, -1, -1);
    MEMORY[0x22AA8BEE0](v65, -1, -1);
  }

  else
  {
  }

LABEL_32:
  v69 = *MEMORY[0x277D85DE8];
}