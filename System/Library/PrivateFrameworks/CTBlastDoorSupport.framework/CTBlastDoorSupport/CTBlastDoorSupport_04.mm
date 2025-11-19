uint64_t sub_2426945B4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v7 = *(a1 + 16);
  if (v7)
  {
    v29 = a6;
    v39 = MEMORY[0x277D84F90];
    sub_242684C4C(0, v7, 0);
    v9 = v39;
    v10 = a2(0);
    v11 = v10;
    v12 = *(v10 - 1);
    v13 = *(v12 + 16);
    v32 = v12 + 16;
    v33 = v13;
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v28 = a1;
    v15 = a1 + v14;
    v16 = *(v12 + 64);
    v30 = *(v12 + 72);
    v31 = v16;
    v17 = (v12 + 8);
    do
    {
      MEMORY[0x28223BE20](v10);
      v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      v33(v19, v15, v11);
      sub_24269A4A4(v34, v35);
      sub_2426ABAD0();
      v10 = (*v17)(v19, v11);
      v21 = v37;
      v20 = v38;
      v39 = v9;
      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        v10 = sub_242684C4C((v22 > 1), v23 + 1, 1);
        v9 = v39;
      }

      *(v9 + 16) = v23 + 1;
      v24 = v9 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
      v15 += v30;
      --v7;
    }

    while (v7);

    v25 = v29;
  }

  else
  {

    v25 = a6;
    v9 = MEMORY[0x277D84F90];
  }

  return sub_242683E04(v9, v25);
}

uint64_t sub_242694790@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  result = sub_2426AA7A0();
  if (result)
  {
    v2 = result;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v25 = *(v2 + 16);
  if (v25)
  {
    v3 = 0;
    v4 = MEMORY[0x277CF2620];
    while (v3 < *(v2 + 16))
    {
      v5 = sub_2426AA630();
      v6 = *(v5 - 8);
      v7 = v2;
      v8 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3;
      v9 = sub_2426AAB20();
      v26 = &v21;
      v23 = *(v9 - 8);
      v24 = v9;
      v10 = MEMORY[0x28223BE20](v9);
      v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x28223BE20](v10);
      v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v14, v8, v5);
      v15 = (*(v6 + 88))(v14, v5);
      if (v4 && v15 == *v4)
      {

        (*(v6 + 96))(v14, v5);
        v17 = v23;
        v16 = v24;
        (*(v23 + 32))(v12, v14, v24);
        v18 = v22;
        sub_2426AAB10();
        (*(v17 + 8))(v12, v16);
        v19 = sub_2426AA390();
        return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
      }

      ++v3;
      result = (*(v6 + 8))(v14, v5);
      v2 = v7;
      if (v25 == v3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    v20 = sub_2426AA390();
    return (*(*(v20 - 8) + 56))(v22, 1, 1, v20);
  }

  return result;
}

uint64_t sub_242694AC4@<X0>(uint64_t a1@<X8>)
{
  result = sub_2426AA7A0();
  if (result)
  {
    v3 = result;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x277CF2618];
    while (v5 < *(v3 + 16))
    {
      v7 = sub_2426AA630();
      v8 = *(v7 - 8);
      MEMORY[0x28223BE20](v7);
      v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v10);
      v11 = (*(v8 + 88))(v10, v7);
      if (v6 && v11 == *v6)
      {

        (*(v8 + 96))(v10, v7);
        v12 = sub_2426AAB00();
        v13 = *(v12 - 8);
        (*(v13 + 32))(a1, v10, v12);
        return (*(v13 + 56))(a1, 0, 1, v12);
      }

      ++v5;
      result = (*(v8 + 8))(v10, v7);
      if (v4 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    v14 = sub_2426AAB00();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  return result;
}

_BYTE *std::optional<ctb::ProvisioningConfiguration::AccessControl>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[48] = 0;
  return result;
}

_BYTE *std::optional<ctb::ProvisioningConfiguration::IMS3GPP>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[528] = 0;
  return result;
}

_BYTE *std::optional<ctb::ProvisioningConfiguration::Services>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[56] = 0;
  return result;
}

_BYTE *std::optional<ctb::ProvisioningConfiguration::Messaging>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[448] = 0;
  return result;
}

_BYTE *sub_242694D6C(_BYTE *result)
{
  *result = 0;
  result[40] = 0;
  return result;
}

void **sub_242694D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = sub_2426A9870();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2426AA920();
  v7 = *(v6 + 16);
  if (v7)
  {
    v37 = a1;
    v38 = a2;
    v48.n128_u64[0] = MEMORY[0x277D84F90];
    sub_242684DD8(0, v7, 0);
    v8 = v48.n128_u64[0];
    v9 = sub_2426AA1F0();
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = *(v11 + 16);
    v11 += 16;
    v44 = v12;
    v13 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v36[1] = v6;
    v14 = v6 + v13;
    v15 = *(v11 + 48);
    v41 = *(v11 + 56);
    v42 = v15;
    v43 = v11;
    v39 = (v11 - 8);
    v40 = (v4 + 8);
    do
    {
      v47 = v36;
      v16 = v42;
      MEMORY[0x28223BE20](v9);
      v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = v44;
      v19 = (v44)(v17, v14, v10);
      MEMORY[0x28223BE20](v19);
      v18(v17, v17, v10);
      v20 = v45;
      sub_2426AA1E0();
      v21 = sub_2426A9850();
      v22 = v8;
      v24 = v23;
      (*v40)(v20, v46);
      sub_24268D30C(v21, v24, &v50);
      v25 = sub_2426AA1D0();
      sub_2426945B4(v25, MEMORY[0x282214A28], &qword_27ECB5FB0, MEMORY[0x282214A28], MEMORY[0x282214A38], v51);
      LOBYTE(v21) = sub_2426AA1C0();
      v26 = *v39;
      (*v39)(v17, v10);
      v26(v17, v10);
      v8 = v22;
      v52 = v21 & 1;
      v48.n128_u64[0] = v22;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_242684DD8((v27 > 1), v28 + 1, 1);
        v8 = v48.n128_u64[0];
      }

      *(v8 + 16) = v28 + 1;
      ctb::ProvisioningConfiguration::AccessControl::Server::Server(v8 + 56 * v28 + 32, &v50);
      ctb::ProvisioningConfiguration::AccessControl::Server::~Server(&v50.__r_.__value_.__l.__data_);
      v14 += v41;
      --v7;
    }

    while (v7);

    a1 = v37;
    a2 = v38;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v29 = sub_2426AA2A0();
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA910();
  sub_242699244(v31, a2);
  v48 = 0uLL;
  v49 = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v48);
  v32 = *(v8 + 16);
  if (v32)
  {
    v33 = (v8 + 32);
    do
    {
      ctb::ProvisioningConfiguration::AccessControl::Server::Server(&v50, v33);
      std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::push_back[abi:ne200100](&v48, &v50);
      ctb::ProvisioningConfiguration::AccessControl::Server::~Server(&v50.__r_.__value_.__l.__data_);
      v33 = (v33 + 56);
      --v32;
    }

    while (v32);
  }

  v34 = sub_2426AA930();
  (*(*(v34 - 8) + 8))(a1, v34);

  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100]((a2 + 24), &v48);
  return std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::~vector[abi:ne200100](&v48);
}

void sub_2426951BC(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v332 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5CE0);
  MEMORY[0x28223BE20](v3 - 8);
  v328 = &v323 - v4;
  v5 = sub_2426AA130();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v323 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA350();
  v9 = sub_2426AA120();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  sub_24268D30C(v9, v11, &v362);
  v12 = sub_2426AA340();
  if (v13)
  {
    v14 = v12;
    v15 = v13;

    sub_24268D30C(v14, v15, v361);
    ctb::bridging::makeOptional(v361, v359);
    std::string::~string(v361);

    v360 = 0;
    std::optional<std::string>::optional[abi:ne200100](v361, v359);
    std::optional<std::string>::~optional(v359);
  }

  else
  {
    memset(v359, 0, sizeof(v359));
    v360 = 1;
    memset(v361, 0, sizeof(v361));
    std::optional<std::string>::optional[abi:ne200100](v361);
    if (v360 != 1)
    {
      sub_2426642B8(v359, &qword_27ECB5B08);
    }
  }

  v16 = sub_2426AACA0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v323 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA330();
  v20 = sub_2426AAC90();
  (*(v17 + 8))(v19, v16);
  sub_242683E04(v20, v358);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5FB8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = sub_2426AA2B0();
  MEMORY[0x28223BE20](v24);
  v25 = &v323 - v23;
  sub_242664250(&v323 - v23, &v323 - v23, &qword_27ECB5FB8);
  v26 = sub_2426AAA70();
  v27 = *(v26 - 8);
  v28 = (v27[6])(&v323 - v23, 1, v26);
  v333 = a1;
  if (v28 == 1)
  {
    sub_2426642B8(&v323 - v23, &qword_27ECB5FB8);
    memset(v359, 0, 24);
    v359[24] = 1;
  }

  else
  {
    v331 = &v323 - v23;
    MEMORY[0x28223BE20](v28);
    v30 = &v323 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v27[4])(v30, v25, v26);
    v31 = sub_2426AAA60();
    v32 = *(v31 + 16);
    if (v32)
    {
      v324 = v30;
      v325 = &v323;
      v326 = v27;
      v327 = v26;
      v329 = &v323;
      v330 = &v323;
      *v359 = MEMORY[0x277D84F90];
      v33 = v31;
      sub_242684C4C(0, v32, 0);
      v34 = *v359;
      v35 = sub_2426A9E10();
      v338 = v35;
      v36 = *(v35 - 8);
      v37 = *(v36 + 16);
      v336 = v36 + 16;
      v337 = v37;
      v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v323 = v33;
      v39 = v33 + v38;
      v40 = *(v36 + 64);
      v334 = *(v36 + 72);
      v335 = v40;
      v41 = (v36 + 8);
      do
      {
        MEMORY[0x28223BE20](v35);
        v43 = &v323 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
        v44 = v338;
        (v337)(v43, v39, v338);
        v45 = sub_2426A9E00();
        v47 = v46;
        v35 = (*v41)(v43, v44);
        *v359 = v34;
        v49 = *(v34 + 16);
        v48 = *(v34 + 24);
        if (v49 >= v48 >> 1)
        {
          v35 = sub_242684C4C((v48 > 1), v49 + 1, 1);
          v34 = *v359;
        }

        *(v34 + 16) = v49 + 1;
        v50 = v34 + 16 * v49;
        *(v50 + 32) = v45;
        *(v50 + 40) = v47;
        v39 += v334;
        --v32;
      }

      while (v32);

      v27 = v326;
      v26 = v327;
      v30 = v324;
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    sub_242683E04(v34, v359);
    (v27[1])(v30, v26);
    sub_2426642B8(v331, &qword_27ECB5FB8);
    v359[24] = 0;
    a1 = v333;
  }

  if (v359[24])
  {
    memset(v357, 0, sizeof(v357));
    std::set<std::string>::set[abi:ne200100](v357);
    if (v359[24] != 1)
    {
      sub_2426642B8(v359, &qword_27ECB5FA8);
    }
  }

  else
  {
    std::set<std::string>::set[abi:ne200100](v357, v359);
    std::set<std::string>::~set[abi:ne200100](v359);
  }

  v51 = sub_2426AA320();
  sub_24268D30C(v51, v52, v359);
  v53 = sub_2426AA310();
  sub_24268D30C(v53, v54, &v356);
  v331 = sub_2426AA380();
  v330 = sub_2426AA370();
  v329 = sub_2426AA360();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5FC0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v58 = &v323 - v57;
  sub_2426AA2F0();
  v59 = sub_2426AA620();
  v60 = *(v59 - 8);
  v337 = *(v60 + 48);
  v338 = (v60 + 48);
  v61 = (v337)(v58, 1, v59);
  v335 = v56;
  if (v61 == 1)
  {
    sub_2426642B8(v58, &qword_27ECB5FC0);
    v62 = 0xE000000000000000;
    v63 = 0;
  }

  else
  {
    v64 = sub_2426AA410();
    v65 = *(v64 - 8);
    MEMORY[0x28223BE20](v64);
    v67 = &v323 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA610();
    (*(v60 + 8))(v58, v59);
    v68 = v328;
    sub_2426AA3C0();
    v69 = v67;
    v70 = v68;
    (*(v65 + 8))(v69, v64);
    v71 = sub_2426A9870();
    v72 = *(v71 - 8);
    if ((*(v72 + 48))(v70, 1, v71) == 1)
    {
      sub_2426642B8(v70, &qword_27ECB5CE0);
      v63 = 0;
      v62 = 0xE000000000000000;
    }

    else
    {
      v73 = sub_2426A9850();
      v75 = v74;
      (*(v72 + 8))(v70, v71);
      v63 = v73;
      v62 = v75;
    }

    a1 = v333;
    v56 = v335;
  }

  v76 = sub_24268D30C(v63, v62, &v355);
  MEMORY[0x28223BE20](v76);
  v77 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA2F0();
  v78 = (v337)(v77, 1, v59);
  v336 = v59;
  if (v78 == 1)
  {
    sub_2426642B8(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27ECB5FC0);
    v79 = 0;
    v80 = 0xE000000000000000;
  }

  else
  {
    v81 = sub_2426AA410();
    v328 = &v323;
    v82 = v81;
    v327 = &v323;
    v83 = *(v81 - 8);
    MEMORY[0x28223BE20](v81);
    v85 = &v323 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA610();
    (*(v60 + 8))(v77, v59);
    v86 = sub_2426AA3E0();
    v87 = *(v86 - 8);
    MEMORY[0x28223BE20](v86);
    v89 = &v323 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA3F0();
    v90 = v85;
    a1 = v333;
    (*(v83 + 8))(v90, v82);
    v56 = v335;
    v91 = sub_2426AA3D0();
    v93 = v92;
    (*(v87 + 8))(v89, v86);
    v80 = v93;
    v79 = v91;
    v59 = v336;
  }

  v94 = sub_24268D30C(v79, v80, &v354);
  MEMORY[0x28223BE20](v94);
  v95 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA2F0();
  v96 = (v337)(v95, 1, v59);
  v334 = v60;
  if (v96 == 1)
  {
    sub_2426642B8(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27ECB5FC0);
  }

  else
  {
    v97 = sub_2426AA410();
    v328 = &v323;
    v98 = v60;
    v99 = v59;
    v100 = *(v97 - 8);
    MEMORY[0x28223BE20](v97);
    v102 = &v323 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA610();
    v103 = v98;
    v56 = v335;
    (*(v103 + 8))(v95, v99);
    v104 = sub_2426AA400();
    v106 = v105;
    (*(v100 + 8))(v102, v97);
    if (v106)
    {
      v107 = v106;
      v108 = v104;
      goto LABEL_33;
    }
  }

  v108 = 0;
  v107 = 0xE000000000000000;
LABEL_33:
  v109 = sub_24268D30C(v108, v107, &v353);
  MEMORY[0x28223BE20](v109);
  sub_2426AA2F0();
  v110 = v336;
  if ((v337)(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v336) == 1)
  {
    sub_2426642B8(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27ECB5FC0);
  }

  else
  {
    v111 = sub_2426AA410();
    v112 = *(v111 - 8);
    MEMORY[0x28223BE20](v111);
    v114 = &v323 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA610();
    (*(v334 + 8))(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), v110);
    v115 = sub_2426AA3A0();
    v117 = v116;
    (*(v112 + 8))(v114, v111);
    v56 = v335;
    if (v117)
    {
      v118 = v117;
      v119 = v115;
      goto LABEL_38;
    }
  }

  v119 = 0;
  v118 = 0xE000000000000000;
LABEL_38:
  v120 = sub_24268D30C(v119, v118, &v352);
  MEMORY[0x28223BE20](v120);
  v121 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA2F0();
  v122 = v336;
  v123 = (v337)(v121, 1, v336);
  v124 = v334;
  if (v123 == 1)
  {
    sub_2426642B8(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27ECB5FC0);
    v125 = 0;
    v126 = 0xE000000000000000;
  }

  else
  {
    v127 = sub_2426AA410();
    v328 = &v323;
    v128 = *(v127 - 8);
    MEMORY[0x28223BE20](v127);
    v130 = &v323 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA610();
    (*(v124 + 8))(v121, v122);
    v131 = sub_2426AAC80();
    v327 = &v323;
    v132 = *(v131 - 8);
    MEMORY[0x28223BE20](v131);
    v134 = &v323 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA3B0();
    (*(v128 + 8))(v130, v127);
    v135 = sub_2426AAB60();
    v136 = *(v135 - 8);
    MEMORY[0x28223BE20](v135);
    v138 = &v323 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AAC00();
    v139 = v134;
    a1 = v333;
    (*(v132 + 8))(v139, v131);
    v140 = sub_2426AAB50();
    v142 = v141;
    (*(v136 + 8))(v138, v135);
    v126 = v142;
    v125 = v140;
    v56 = v335;
    v122 = v336;
  }

  v143 = sub_24268D30C(v125, v126, &v351);
  MEMORY[0x28223BE20](v143);
  v144 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA2F0();
  if ((v337)(v144, 1, v122) == 1)
  {
    sub_2426642B8(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27ECB5FC0);
    v145 = 0;
    v146 = 0xE000000000000000;
  }

  else
  {
    v147 = sub_2426AA410();
    v328 = &v323;
    v148 = *(v147 - 8);
    MEMORY[0x28223BE20](v147);
    v150 = &v323 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA610();
    (*(v334 + 8))(v144, v122);
    v151 = sub_2426AAC80();
    v327 = &v323;
    v152 = *(v151 - 8);
    MEMORY[0x28223BE20](v151);
    v154 = &v323 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA3B0();
    (*(v148 + 8))(v150, v147);
    v155 = sub_2426AABA0();
    v156 = *(v155 - 8);
    MEMORY[0x28223BE20](v155);
    v158 = &v323 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AAC50();
    v159 = v154;
    a1 = v333;
    (*(v152 + 8))(v159, v151);
    v160 = sub_2426AAB90();
    v162 = v161;
    (*(v156 + 8))(v158, v155);
    v146 = v162;
    v145 = v160;
    v56 = v335;
    v122 = v336;
  }

  v163 = sub_24268D30C(v145, v146, &v350);
  MEMORY[0x28223BE20](v163);
  v164 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA2F0();
  if ((v337)(v164, 1, v122) == 1)
  {
    sub_2426642B8(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27ECB5FC0);
    v165 = 0;
    v166 = 0xE000000000000000;
  }

  else
  {
    v167 = sub_2426AA410();
    v328 = &v323;
    v168 = *(v167 - 8);
    MEMORY[0x28223BE20](v167);
    v170 = &v323 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA610();
    (*(v334 + 8))(v164, v122);
    v171 = sub_2426AAC80();
    v327 = &v323;
    v172 = *(v171 - 8);
    MEMORY[0x28223BE20](v171);
    v174 = &v323 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA3B0();
    (*(v168 + 8))(v170, v167);
    v175 = sub_2426AABC0();
    v176 = *(v175 - 8);
    MEMORY[0x28223BE20](v175);
    v178 = &v323 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AAC60();
    v179 = v174;
    a1 = v333;
    (*(v172 + 8))(v179, v171);
    v180 = sub_2426AAB30();
    v182 = v181;
    (*(v176 + 8))(v178, v175);
    v166 = v182;
    v165 = v180;
    v56 = v335;
    v122 = v336;
  }

  v183 = sub_24268D30C(v165, v166, &v349);
  MEMORY[0x28223BE20](v183);
  v184 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA2F0();
  if ((v337)(v184, 1, v122) == 1)
  {
    sub_2426642B8(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27ECB5FC0);
    v185 = 0;
    v186 = 0xE000000000000000;
  }

  else
  {
    v187 = sub_2426AA410();
    v328 = &v323;
    v188 = *(v187 - 8);
    MEMORY[0x28223BE20](v187);
    v190 = &v323 - ((v189 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA610();
    (*(v334 + 8))(v184, v122);
    v191 = sub_2426AAC80();
    v327 = &v323;
    v192 = *(v191 - 8);
    MEMORY[0x28223BE20](v191);
    v194 = &v323 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA3B0();
    (*(v188 + 8))(v190, v187);
    v195 = sub_2426AAB60();
    v196 = *(v195 - 8);
    MEMORY[0x28223BE20](v195);
    v198 = &v323 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AAC40();
    v199 = v194;
    a1 = v333;
    (*(v192 + 8))(v199, v191);
    v200 = sub_2426AAB50();
    v202 = v201;
    (*(v196 + 8))(v198, v195);
    v186 = v202;
    v185 = v200;
    v56 = v335;
    v122 = v336;
  }

  v203 = sub_24268D30C(v185, v186, &v348);
  MEMORY[0x28223BE20](v203);
  v204 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA2F0();
  if ((v337)(v204, 1, v122) == 1)
  {
    sub_2426642B8(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27ECB5FC0);
    v205 = 0;
    v206 = 0xE000000000000000;
  }

  else
  {
    v207 = sub_2426AA410();
    v328 = &v323;
    v208 = *(v207 - 8);
    MEMORY[0x28223BE20](v207);
    v210 = &v323 - ((v209 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA610();
    (*(v334 + 8))(v204, v122);
    v211 = sub_2426AAC80();
    v327 = &v323;
    v212 = *(v211 - 8);
    MEMORY[0x28223BE20](v211);
    v214 = &v323 - ((v213 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA3B0();
    (*(v208 + 8))(v210, v207);
    v215 = sub_2426AABA0();
    v216 = *(v215 - 8);
    MEMORY[0x28223BE20](v215);
    v218 = &v323 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AAC10();
    v219 = v214;
    a1 = v333;
    (*(v212 + 8))(v219, v211);
    v220 = sub_2426AAB90();
    v222 = v221;
    (*(v216 + 8))(v218, v215);
    v206 = v222;
    v205 = v220;
    v56 = v335;
    v122 = v336;
  }

  v223 = sub_24268D30C(v205, v206, &v347);
  MEMORY[0x28223BE20](v223);
  v224 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA2F0();
  if ((v337)(v224, 1, v122) == 1)
  {
    sub_2426642B8(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27ECB5FC0);
    v225 = 0;
    v226 = 0xE000000000000000;
    v227 = v334;
  }

  else
  {
    v228 = sub_2426AA410();
    v328 = &v323;
    v229 = v228;
    v327 = &v323;
    v230 = *(v228 - 8);
    MEMORY[0x28223BE20](v228);
    v232 = &v323 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA610();
    v227 = v334;
    (*(v334 + 8))(v224, v122);
    v233 = sub_2426AAC80();
    v326 = &v323;
    v234 = *(v233 - 8);
    MEMORY[0x28223BE20](v233);
    v236 = &v323 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA3B0();
    (*(v230 + 8))(v232, v229);
    v237 = sub_2426AABC0();
    v238 = *(v237 - 8);
    MEMORY[0x28223BE20](v237);
    v240 = &v323 - ((v239 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AAC30();
    v241 = v236;
    a1 = v333;
    (*(v234 + 8))(v241, v233);
    v242 = sub_2426AAB30();
    v244 = v243;
    (*(v238 + 8))(v240, v237);
    v226 = v244;
    v225 = v242;
    v56 = v335;
    v122 = v336;
  }

  v245 = sub_24268D30C(v225, v226, &v346);
  MEMORY[0x28223BE20](v245);
  v246 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA2F0();
  if ((v337)(v246, 1, v122) == 1)
  {
    sub_2426642B8(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27ECB5FC0);
    v247 = 0;
    v248 = 0xE000000000000000;
  }

  else
  {
    v249 = sub_2426AA410();
    v328 = &v323;
    v250 = v249;
    v327 = &v323;
    v251 = *(v249 - 8);
    MEMORY[0x28223BE20](v249);
    v253 = &v323 - ((v252 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA610();
    (*(v227 + 8))(v246, v122);
    v254 = sub_2426AAC80();
    v326 = &v323;
    v255 = *(v254 - 8);
    MEMORY[0x28223BE20](v254);
    v257 = &v323 - ((v256 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA3B0();
    (*(v251 + 8))(v253, v250);
    v258 = sub_2426AAB80();
    v259 = *(v258 - 8);
    MEMORY[0x28223BE20](v258);
    v261 = &v323 - ((v260 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AAC20();
    v262 = v257;
    a1 = v333;
    (*(v255 + 8))(v262, v254);
    v263 = sub_2426AAB50();
    v265 = v264;
    (*(v259 + 8))(v261, v258);
    v248 = v265;
    v247 = v263;
    v56 = v335;
    v122 = v336;
  }

  v266 = sub_24268D30C(v247, v248, &v345);
  MEMORY[0x28223BE20](v266);
  v267 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA2F0();
  if ((v337)(v267, 1, v122) == 1)
  {
    sub_2426642B8(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27ECB5FC0);
    v268 = 0;
    v269 = 0xE000000000000000;
  }

  else
  {
    v270 = sub_2426AA410();
    v328 = &v323;
    v271 = v270;
    v327 = &v323;
    v272 = *(v270 - 8);
    MEMORY[0x28223BE20](v270);
    v274 = &v323 - ((v273 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA610();
    (*(v227 + 8))(v267, v122);
    v275 = sub_2426AAC80();
    v326 = &v323;
    v276 = *(v275 - 8);
    MEMORY[0x28223BE20](v275);
    v278 = &v323 - ((v277 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA3B0();
    (*(v272 + 8))(v274, v271);
    v279 = sub_2426AABE0();
    v280 = *(v279 - 8);
    MEMORY[0x28223BE20](v279);
    v282 = &v323 - ((v281 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AAC70();
    v283 = v278;
    a1 = v333;
    (*(v276 + 8))(v283, v275);
    v284 = sub_2426AAB90();
    v286 = v285;
    (*(v280 + 8))(v282, v279);
    v269 = v286;
    v268 = v284;
    v56 = v335;
    v122 = v336;
  }

  v287 = sub_24268D30C(v268, v269, &v344);
  MEMORY[0x28223BE20](v287);
  sub_2426AA2F0();
  if ((v337)(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v122) == 1)
  {
    sub_2426642B8(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27ECB5FC0);
    v288 = 0;
    v289 = 0xE000000000000000;
  }

  else
  {
    v290 = sub_2426AA410();
    v338 = &v323;
    v291 = *(v290 - 8);
    MEMORY[0x28223BE20](v290);
    v293 = &v323 - ((v292 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA610();
    (*(v227 + 8))(&v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), v122);
    v294 = sub_2426AAC80();
    v337 = &v323;
    v295 = *(v294 - 8);
    MEMORY[0x28223BE20](v294);
    v297 = &v323 - ((v296 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA3B0();
    (*(v291 + 8))(v293, v290);
    v298 = sub_2426AAB40();
    v299 = *(v298 - 8);
    MEMORY[0x28223BE20](v298);
    v301 = &v323 - ((v300 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AABF0();
    (*(v295 + 8))(v297, v294);
    v302 = sub_2426AAB30();
    v304 = v303;
    (*(v299 + 8))(v301, v298);
    v289 = v304;
    v288 = v302;
    a1 = v333;
  }

  sub_24268D30C(v288, v289, &v343);
  v305 = sub_2426AA2E0();
  if (v306)
  {
    v341 = 0;
    v342 = 0;
    std::optional<unsigned long>::optional[abi:ne200100](&v341);
    v307 = v341;
    v308 = v342;
  }

  else
  {
    ctb::bridging::makeOptional(v305);
    v307 = v309;
    v308 = v310 & 1;
    v341 = v309;
    LOBYTE(v342) = v310 & 1;
  }

  v311 = sub_2426AA2C0();
  if (v312)
  {
    v339 = 0;
    v340 = 0;
    std::optional<unsigned long>::optional[abi:ne200100](&v339);
    v313 = v339;
    v314 = v340;
  }

  else
  {
    ctb::bridging::makeOptional(v311);
    v313 = v315;
    v314 = v316 & 1;
    v339 = v315;
    LOBYTE(v340) = v316 & 1;
  }

  v317 = a1;
  v318 = sub_2426AA300();
  v319 = sub_2426AA2D0();
  v320 = sub_2426AA390();
  (*(*(v320 - 8) + 8))(v317, v320);
  v321 = v332;
  std::string::basic_string[abi:ne200100](v332, &v362);
  std::string::~string(&v362);
  std::optional<std::string>::optional[abi:ne200100](&v321[1].n128_i8[8], v361);
  std::optional<std::string>::~optional(v361);
  std::set<std::string>::set[abi:ne200100](&v321[3].n128_u64[1], v358);
  std::set<std::string>::~set[abi:ne200100](v358);
  std::set<std::string>::set[abi:ne200100](v321[5].n128_u64, v357);
  std::set<std::string>::~set[abi:ne200100](v357);
  std::string::basic_string[abi:ne200100]((v321 + 104), v359);
  std::string::~string(v359);
  std::string::basic_string[abi:ne200100](v321 + 8, &v356);
  std::string::~string(&v356);
  v322 = v330;
  v321[9].n128_u64[1] = v331;
  v321[10].n128_u64[0] = v322;
  v321[10].n128_u64[1] = v329;
  std::string::basic_string[abi:ne200100](v321 + 11, &v355);
  std::string::~string(&v355);
  std::string::basic_string[abi:ne200100]((v321 + 200), &v354);
  std::string::~string(&v354);
  std::string::basic_string[abi:ne200100](v321 + 14, &v353);
  std::string::~string(&v353);
  std::string::basic_string[abi:ne200100]((v321 + 248), &v352);
  std::string::~string(&v352);
  std::string::basic_string[abi:ne200100](v321 + 17, &v351);
  std::string::~string(&v351);
  std::string::basic_string[abi:ne200100]((v321 + 296), &v350);
  std::string::~string(&v350);
  std::string::basic_string[abi:ne200100](v321 + 20, &v349);
  std::string::~string(&v349);
  std::string::basic_string[abi:ne200100]((v321 + 344), &v348);
  std::string::~string(&v348);
  std::string::basic_string[abi:ne200100](v321 + 23, &v347);
  std::string::~string(&v347);
  std::string::basic_string[abi:ne200100]((v321 + 392), &v346);
  std::string::~string(&v346);
  std::string::basic_string[abi:ne200100](v321 + 26, &v345);
  std::string::~string(&v345);
  std::string::basic_string[abi:ne200100]((v321 + 440), &v344);
  std::string::~string(&v344);
  std::string::basic_string[abi:ne200100](v321 + 29, &v343);
  std::string::~string(&v343);
  v321[30].n128_u64[1] = v307;
  v321[31].n128_u8[0] = v308;
  v321[31].n128_u64[1] = v313;
  v321[32].n128_u8[0] = v314;
  v321[32].n128_u8[8] = v318 & 1;
  v321[32].n128_u8[9] = v319 & 1;
}

uint64_t sub_242697B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5FC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v62 - v6;
  sub_2426AA450();
  v8 = sub_2426AA7E0();
  v9 = *(v8 - 8);
  v10 = v9[6];
  v11 = v10(v7, 1, v8);
  v68 = a1;
  v66 = v9;
  if (v11 == 1)
  {
    result = sub_2426642B8(v7, &qword_27ECB5FC8);
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v65 = v10;
    v15 = sub_2426AAAC0();
    v64 = &v62;
    v16 = *(v15 - 8);
    MEMORY[0x28223BE20](v15);
    v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA7D0();
    v19 = v9[1];
    v67 = v8;
    v19(v7, v8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5FD0);
    v63 = &v62;
    v21 = *(*(v20 - 8) + 64);
    MEMORY[0x28223BE20](v20 - 8);
    v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_2426AAA90();
    v23 = (*(v16 + 8))(v18, v15);
    MEMORY[0x28223BE20](v23);
    sub_242664250(&v62 - v22, &v62 - v22, &qword_27ECB5FD0);
    v24 = sub_2426AAAB0();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 48))(&v62 - v22, 1, v24);
    if (v26 == 1)
    {
      result = sub_2426642B8(&v62 - v22, &qword_27ECB5FD0);
      v14 = 1;
      v13 = 0;
    }

    else
    {
      MEMORY[0x28223BE20](v26);
      v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 32))(v28, &v62 - v22, v24);
      v29 = sub_2426AA490();
      v30 = v24;
      v13 = v29;
      (*(v25 + 8))(v28, v30);
      result = sub_2426642B8(&v62 - v22, &qword_27ECB5FD0);
      if (v13 < 0xFFFFFFFF80000000)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v13 > 0x7FFFFFFF)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v14 = 0;
    }

    v8 = v67;
    a1 = v68;
    v10 = v65;
  }

  v67 = &v62;
  MEMORY[0x28223BE20](result);
  v31 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA450();
  if (v10(v31, 1, v8) == 1)
  {
    sub_2426642B8(&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27ECB5FC8);
    LODWORD(v32) = 0;
    v33 = 1;
  }

  else
  {
    LODWORD(v65) = v14;
    v64 = v13;
    v34 = sub_2426AAAC0();
    v63 = &v62;
    v35 = *(v34 - 8);
    MEMORY[0x28223BE20](v34);
    v37 = &v62 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AA7D0();
    (v66[1])(v31, v8);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5FD0);
    v66 = &v62;
    v39 = *(*(v38 - 8) + 64);
    MEMORY[0x28223BE20](v38 - 8);
    v32 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
    v40 = &v62 - v32;
    sub_2426AAA80();
    v41 = (*(v35 + 8))(v37, v34);
    MEMORY[0x28223BE20](v41);
    sub_242664250(&v62 - v32, &v62 - v32, &qword_27ECB5FD0);
    v42 = sub_2426AAAB0();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 48))(&v62 - v32, 1, v42);
    if (v44 == 1)
    {
      sub_2426642B8(&v62 - v32, &qword_27ECB5FD0);
      v33 = 1;
      LODWORD(v13) = v64;
      LODWORD(v32) = 0;
      a1 = v68;
      LOBYTE(v14) = v65;
    }

    else
    {
      MEMORY[0x28223BE20](v44);
      v46 = &v62 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 32))(v46, &v62 - v32, v42);
      v32 = sub_2426AA490();
      (*(v43 + 8))(v46, v42);
      result = sub_2426642B8(v40, &qword_27ECB5FD0);
      if (v32 < 0xFFFFFFFF80000000)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      LOBYTE(v14) = v65;
      if (v32 > 0x7FFFFFFF)
      {
LABEL_31:
        __break(1u);
        return result;
      }

      LODWORD(v13) = v64;
      v33 = 0;
      a1 = v68;
    }
  }

  if (v14)
  {
    v71 = 0;
    std::optional<ctb::ProvisioningConfiguration::Services::DataOffBehavior>::optional[abi:ne200100](&v71);
    v66 = BYTE4(v71);
    v67 = v71;
    if (v33)
    {
LABEL_18:
      v70 = 0;
      std::optional<ctb::ProvisioningConfiguration::Services::DataOffBehavior>::optional[abi:ne200100](&v70);
      v47 = v70;
      LOBYTE(v48) = BYTE4(v70);
      goto LABEL_21;
    }
  }

  else
  {
    Optional = ctb::bridging::makeOptional(v13);
    LODWORD(v71) = Optional;
    BYTE4(v71) = BYTE4(Optional);
    v66 = HIDWORD(Optional);
    v67 = Optional;
    if (v33)
    {
      goto LABEL_18;
    }
  }

  v50 = ctb::bridging::makeOptional(v32);
  v47 = v50;
  v48 = HIDWORD(v50);
  LODWORD(v70) = v50;
  BYTE4(v70) = BYTE4(v50);
LABEL_21:
  LODWORD(v65) = sub_2426AA470();
  LODWORD(v64) = sub_2426AA480();
  v51 = sub_2426AA4A0();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v62 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA4B0();
  v55 = sub_2426AA490();
  result = (*(v52 + 8))(v54, v51);
  if (v55 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v55 > 0x7FFFFFFF)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v56 = sub_2426AA4D0();
  v57 = sub_2426AA460();
  v58 = sub_2426AA4E0();
  v59 = sub_2426AA4C0();
  if (!v59)
  {
    v59 = MEMORY[0x277D84F90];
  }

  sub_2426945B4(v59, MEMORY[0x282214B50], &qword_27ECB5FD8, MEMORY[0x282214B50], MEMORY[0x282214B60], v69);
  v60 = sub_2426AA4F0();
  (*(*(v60 - 8) + 8))(a1, v60);
  v61 = v66;
  *a2 = v67;
  *(a2 + 4) = v61;
  *(a2 + 8) = v47;
  *(a2 + 12) = v48;
  *(a2 + 16) = v65 & 1;
  *(a2 + 17) = v64 & 1;
  *(a2 + 20) = v55;
  *(a2 + 24) = v56 & 1;
  *(a2 + 25) = v57 & 1;
  *(a2 + 26) = v58 & 1;
  std::set<std::string>::set[abi:ne200100]((a2 + 32), v69);
  return std::set<std::string>::~set[abi:ne200100](v69);
}

uint64_t sub_24269853C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_2426A9870();
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v71 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2426AA5E0();
  v5 = sub_2426AA5B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA5C0();
  v75 = sub_2426AA5A0();
  (*(v6 + 8))(v8, v5);
  v74 = sub_2426AA5D0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5FE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2426AA590();
  MEMORY[0x28223BE20](v12);
  sub_242664250(v11, v11, &qword_27ECB5FE0);
  v13 = sub_2426AA280();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v11, 1, v13);
  if (v15 == 1)
  {
    sub_2426642B8(v11, &qword_27ECB5FE0);
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    LOBYTE(v90) = 1;
    memset(v95, 0, 96);
    std::optional<ctb::ProvisioningConfiguration::Messaging::Chatbot>::optional[abi:ne200100](v95);
    if (v90 != 1)
    {
      sub_2426642B8(&v84, &qword_27ECB5FE8);
    }
  }

  else
  {
    v70 = v68;
    v16 = *(v14 + 64);
    MEMORY[0x28223BE20](v15);
    v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    v18 = (*(v14 + 32))(v68 - v17, v11, v13);
    MEMORY[0x28223BE20](v18);
    (*(v14 + 16))(v68 - v17, v68 - v17, v13);
    sub_242699380(v68 - v17, v94);
    ctb::bridging::makeOptional(v94, &v84);
    ctb::chatbot::TelephoneInformation::~TelephoneInformation(v94);
    (*(v14 + 8))(v68 - v17, v13);
    sub_2426642B8(v11, &qword_27ECB5FE0);
    LOBYTE(v90) = 0;
    v19 = std::optional<ctb::ProvisioningConfiguration::Messaging::Chatbot>::optional[abi:ne200100](v95, &v84);
    std::optional<ctb::ProvisioningConfiguration::Messaging::Chatbot>::~optional(&v84, v19);
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5FF0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2426AA560();
  MEMORY[0x28223BE20](v23);
  sub_242664250(v22, v22, &qword_27ECB5FF0);
  v24 = sub_2426AA900();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 48))(v22, 1, v24);
  v78 = a1;
  if (v26 == 1)
  {
    sub_2426642B8(v22, &qword_27ECB5FF0);
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 1;
  }

  else
  {
    v69 = v68;
    v70 = v68;
    v27 = *(v25 + 64);
    MEMORY[0x28223BE20](v26);
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
    v29 = (*(v25 + 32))(v68 - v28, v22, v24);
    MEMORY[0x28223BE20](v29);
    (*(v25 + 16))(v68 - v28, v68 - v28, v24);
    sub_2426997A0(v68 - v28, v94);
    ctb::bridging::makeOptional(v94, &v84);
    ctb::ProvisioningConfiguration::Messaging::FileTransfer::~FileTransfer(v94);
    (*(v25 + 8))(v68 - v28, v24);
    sub_2426642B8(v22, &qword_27ECB5FF0);
    v93 = 0;
    a1 = v78;
  }

  if (v93)
  {
    memset(v94, 0, sizeof(v94));
    std::optional<ctb::ProvisioningConfiguration::Messaging::FileTransfer>::optional[abi:ne200100](v94);
    if (v93 != 1)
    {
      sub_2426642B8(&v84, &qword_27ECB5FF8);
    }
  }

  else
  {
    v30 = std::optional<ctb::ProvisioningConfiguration::Messaging::FileTransfer>::optional[abi:ne200100](v94, &v84);
    std::optional<ctb::ProvisioningConfiguration::Messaging::FileTransfer>::~optional(&v84, v30);
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB6000);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2426AA580();
  MEMORY[0x28223BE20](v34);
  sub_242664250(v33, v33, &qword_27ECB6000);
  v35 = sub_2426AA110();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 48))(v33, 1, v35);
  if (v37 == 1)
  {
    sub_2426642B8(v33, &qword_27ECB6000);
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    *&v90 = 0;
    BYTE8(v90) = 1;
  }

  else
  {
    v69 = v68;
    v70 = v68;
    v38 = *(v36 + 64);
    MEMORY[0x28223BE20](v37);
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
    v40 = (*(v36 + 32))(v68 - v39, v33, v35);
    MEMORY[0x28223BE20](v40);
    (*(v36 + 16))(v68 - v39, v68 - v39, v35);
    sub_242699B10(v68 - v39, v82);
    ctb::bridging::makeOptional(v82, &v84);
    ctb::ProvisioningConfiguration::Messaging::Chat::~Chat(v82);
    (*(v36 + 8))(v68 - v39, v35);
    sub_2426642B8(v33, &qword_27ECB6000);
    BYTE8(v90) = 0;
    a1 = v78;
  }

  if (BYTE8(v90))
  {
    v83 = 0;
    memset(v82, 0, sizeof(v82));
    std::optional<ctb::chatbot::CommunicationAddress>::optional[abi:ne200100](v82);
    if (BYTE8(v90) != 1)
    {
      sub_2426642B8(&v84, &qword_27ECB6008);
    }
  }

  else
  {
    std::optional<ctb::ProvisioningConfiguration::Messaging::Chat>::optional[abi:ne200100](v82, &v84);
    std::optional<ctb::ProvisioningConfiguration::Messaging::Chat>::~optional(&v84);
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB6010);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = v68 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2426AA570();
  MEMORY[0x28223BE20](v44);
  sub_242664250(v43, v43, &qword_27ECB6010);
  v45 = sub_2426AA970();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 48))(v43, 1, v45);
  if (v47 == 1)
  {
    sub_2426642B8(v43, &qword_27ECB6010);
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    LOBYTE(v87) = 1;
  }

  else
  {
    v69 = v68;
    v70 = v68;
    v68[1] = v68;
    v48 = *(v46 + 64);
    MEMORY[0x28223BE20](v47);
    v49 = v68 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = (*(v46 + 32))(v49, v43, v45);
    MEMORY[0x28223BE20](v50);
    (*(v46 + 16))(v49, v49, v45);
    v51 = v71;
    sub_2426AA940();
    v52 = sub_2426A9850();
    v54 = v53;
    (*(v72 + 8))(v51, v73);
    sub_24268D30C(v52, v54, &v84);
    v55 = sub_2426AA950();
    if (v56)
    {
      v57 = 0;
    }

    else
    {
      v57 = v55;
    }

    v58 = sub_2426AA960();
    v59 = *(v46 + 8);
    v59(v49, v45);
    std::string::basic_string[abi:ne200100](&v79, &v84);
    std::string::~string(&v84);
    *(&v80 + 1) = v57;
    *&v81 = v58;
    ctb::bridging::makeOptional(&v79, &v84);
    ctb::SIPConferenceInfo::SubjectExt::~SubjectExt(&v79);
    v59(v49, v45);
    sub_2426642B8(v43, &qword_27ECB6010);
    LOBYTE(v87) = 0;
    a1 = v78;
  }

  if (v87)
  {
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    sub_242694D6C(&v79);
    if (v87 != 1)
    {
      sub_2426642B8(&v84, &qword_27ECB6018);
    }
  }

  else
  {
    std::optional<ctb::ProvisioningConfiguration::Messaging::StandaloneMsg>::optional[abi:ne200100](&v79, &v84);
    std::optional<ctb::ProvisioningConfiguration::Messaging::StandaloneMsg>::~optional(&v84);
  }

  v60 = sub_2426AA5F0();
  v61 = v77;
  sub_2426835F0(v60, v62, v77 + 416);
  v63 = sub_2426AA600();
  (*(*(v63 - 8) + 8))(a1, v63);
  *v61 = v76 & 1;
  v64 = v74;
  *(v61 + 8) = v75;
  *(v61 + 16) = v64;
  v65 = std::optional<ctb::ProvisioningConfiguration::Messaging::Chatbot>::optional[abi:ne200100](v61 + 24, v95);
  std::optional<ctb::ProvisioningConfiguration::Messaging::Chatbot>::~optional(v95, v65);
  v66 = std::optional<ctb::ProvisioningConfiguration::Messaging::FileTransfer>::optional[abi:ne200100](v61 + 120, v94);
  std::optional<ctb::ProvisioningConfiguration::Messaging::FileTransfer>::~optional(v94, v66);
  std::optional<ctb::ProvisioningConfiguration::Messaging::Chat>::optional[abi:ne200100](v61 + 264, v82);
  std::optional<ctb::ProvisioningConfiguration::Messaging::Chat>::~optional(v82);
  std::optional<ctb::ProvisioningConfiguration::Messaging::StandaloneMsg>::optional[abi:ne200100](v61 + 368, &v79);
  return std::optional<ctb::ProvisioningConfiguration::Messaging::StandaloneMsg>::~optional(&v79);
}

uint64_t sub_242699244@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2426AA290();
  if (v4)
  {
    sub_2426945B4(v4, MEMORY[0x282214A28], &qword_27ECB5FB0, MEMORY[0x282214A28], MEMORY[0x282214A38], v8);
    v9 = 0;
    v5 = sub_2426AA2A0();
    (*(*(v5 - 8) + 8))(a1, v5);
    std::set<std::string>::set[abi:ne200100](v10, v8);
    std::set<std::string>::~set[abi:ne200100](v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v9 = 1;
    memset(v10, 0, sizeof(v10));
    std::set<std::string>::set[abi:ne200100](v10);
    v6 = sub_2426AA2A0();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  std::set<std::string>::set[abi:ne200100](a2, v10);
  return std::set<std::string>::~set[abi:ne200100](v10);
}

void sub_242699380(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5CE0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  sub_2426AA260();
  v13 = sub_2426A9870();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(v12, 1, v13);
  v43 = v14;
  if (v16 == 1)
  {
    sub_2426642B8(v12, &qword_27ECB5CE0);
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v19 = sub_2426A9850();
    v20 = v14;
    v21 = a1;
    v22 = a2;
    v24 = v23;
    (*(v20 + 8))(v12, v13);
    v18 = v24;
    a2 = v22;
    a1 = v21;
    v17 = v19;
  }

  sub_24268D30C(v17, v18, &v46);
  sub_2426AA240();
  if (v15(v10, 1, v13) == 1)
  {
    sub_2426642B8(v10, &qword_27ECB5CE0);
    v25 = 0;
    v26 = 0xE000000000000000;
    v27 = v43;
  }

  else
  {
    v28 = sub_2426A9850();
    v30 = v29;
    v27 = v43;
    (*(v43 + 8))(v10, v13);
    v26 = v30;
    v25 = v28;
  }

  sub_24268D30C(v25, v26, &v45);
  sub_2426AA250();
  if (v15(v7, 1, v13) == 1)
  {
    sub_2426642B8(v7, &qword_27ECB5CE0);
    v31 = 0;
    v32 = 0xE000000000000000;
  }

  else
  {
    v33 = sub_2426A9850();
    v35 = v34;
    (*(v27 + 8))(v7, v13);
    v32 = v35;
    v31 = v33;
  }

  sub_24268D30C(v31, v32, &v44);
  v36 = sub_2426AA210();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v43 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AA220();
  v40 = sub_2426AA200();
  (*(v37 + 8))(v39, v36);
  LOBYTE(v36) = sub_2426AA230();
  v41 = sub_2426AA270();
  v42 = sub_2426AA280();
  (*(*(v42 - 8) + 8))(a1, v42);
  std::string::basic_string[abi:ne200100](a2, &v46);
  std::string::~string(&v46);
  std::string::basic_string[abi:ne200100]((a2 + 24), &v45);
  std::string::~string(&v45);
  std::string::basic_string[abi:ne200100]((a2 + 48), &v44);
  std::string::~string(&v44);
  *(a2 + 72) = v40;
  *(a2 + 80) = v36 & 1;
  *(a2 + 81) = v41 & 1;
}

void sub_2426997A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5CE0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = sub_2426AA870();
  v11 = MEMORY[0x245D14890]();
  if (v12)
  {
    v46 = 0;
    v47 = 0;
    std::optional<unsigned long>::optional[abi:ne200100](&v46);
    v41 = v46;
    v40 = v47;
  }

  else
  {
    ctb::bridging::makeOptional(v11);
    v45.__r_.__value_.__s.__data_[0] = v13 & 1;
    v41 = v14;
    v46 = v14;
    v40 = v13 & 1;
    LOBYTE(v47) = v13 & 1;
  }

  sub_2426AA8A0();
  v15 = sub_2426A9870();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v9, 1, v15) == 1)
  {
    sub_2426642B8(v9, &qword_27ECB5CE0);
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  else
  {
    v20 = sub_2426A9850();
    v39 = v7;
    v21 = v10;
    v23 = v22;
    (*(v16 + 8))(v9, v15);
    v19 = v23;
    v10 = v21;
    v7 = v39;
    v18 = v20;
  }

  sub_24268D30C(v18, v19, &v45);
  sub_2426AA8C0();
  if (v17(v7, 1, v15) == 1)
  {
    sub_2426642B8(v7, &qword_27ECB5CE0);
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  else
  {
    v26 = sub_2426A9850();
    v28 = v27;
    (*(v16 + 8))(v7, v15);
    v25 = v28;
    v24 = v26;
  }

  sub_24268D30C(v24, v25, &v44);
  v29 = sub_2426AA8B0();
  if (!v30)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  sub_24268D30C(v29, v30, &v43);
  v31 = sub_2426AA8E0();
  if (!v32)
  {
    v31 = 0;
    v32 = 0xE000000000000000;
  }

  sub_24268D30C(v31, v32, &v42);
  v33 = sub_2426AA890();
  v34 = sub_2426AA880();
  v35 = sub_2426AA8D0();
  v36 = sub_2426AA900();
  (*(*(v36 - 8) + 8))(a1, v36);
  v37 = v41;
  *a2 = v10;
  *(a2 + 8) = v37;
  *(a2 + 16) = v40;
  std::string::basic_string[abi:ne200100]((a2 + 24), &v45);
  std::string::~string(&v45);
  std::string::basic_string[abi:ne200100]((a2 + 48), &v44);
  std::string::~string(&v44);
  std::string::basic_string[abi:ne200100]((a2 + 72), &v43);
  std::string::~string(&v43);
  std::string::basic_string[abi:ne200100]((a2 + 96), &v42);
  std::string::~string(&v42);
  *(a2 + 120) = v33 & 1;
  *(a2 + 121) = v34 & 1;
  *(a2 + 128) = v35;
}

void sub_242699B10(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5CE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v28 = sub_2426AA0C0();
  v27 = v7;
  v8 = sub_2426AA100();
  v9 = sub_2426AA0B0();
  v10 = MEMORY[0x245D14070]();
  LODWORD(v12) = v11;
  v30 = sub_2426AA090();
  v29 = sub_2426AA0A0();
  sub_2426AA0F0();
  v13 = sub_2426A9870();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {
    sub_2426642B8(v6, &qword_27ECB5CE0);
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v17 = sub_2426A9850();
    v26 = v12;
    v12 = v10;
    v18 = v9;
    v19 = v8;
    v21 = v20;
    (*(v14 + 8))(v6, v13);
    v16 = v21;
    v8 = v19;
    v9 = v18;
    v10 = v12;
    LOBYTE(v12) = v26;
    v15 = v17;
  }

  if (v12)
  {
    v10 = 0;
  }

  if (v27)
  {
    v22 = 0;
  }

  else
  {
    v22 = v28;
  }

  sub_24268D30C(v15, v16, &v31);
  v23 = sub_2426AA0E0();
  sub_2426835F0(v23, v24, a2 + 64);
  v25 = sub_2426AA110();
  (*(*(v25 - 8) + 8))(a1, v25);
  *a2 = v22;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v30 & 1;
  *(a2 + 33) = v29 & 1;
  std::string::basic_string[abi:ne200100]((a2 + 40), &v31);
  std::string::~string(&v31);
}

uint64_t sub_242699D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB6020);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  sub_2426AA800();
  v7 = sub_2426AA820();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2426642B8(v6, &qword_27ECB6020);
    v9 = 0;
  }

  else
  {
    v9 = sub_2426AA810();
    (*(v8 + 8))(v6, v7);
  }

  v10 = sub_2426AA840();
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v13 = sub_2426AA830();
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v16 = sub_2426AA7F0();
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  v19 = sub_2426AA850();
  v20 = sub_2426AA860();
  result = (*(*(v20 - 8) + 8))(a1, v20);
  *a2 = v9;
  *(a2 + 8) = v12;
  *(a2 + 16) = v15;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19 & 1;
  return result;
}

uint64_t ctb::bridging::makeOptional@<X0>(uint64_t this@<X0>, Vers a2@<0:X1, 8:X2>, uint64_t a3@<X8>)
{
  *a3 = this;
  *(a3 + 8) = a2.var0;
  *(a3 + 16) = 1;
  return this;
}

void ctb::ProvisioningConfiguration::Token::~Token(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t sub_24269A4A4(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *std::optional<ctb::ProvisioningConfiguration::Messaging::Chatbot>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[88] = 0;
  return result;
}

_BYTE *std::optional<ctb::ProvisioningConfiguration::Messaging::FileTransfer>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[136] = 0;
  return result;
}

__n128 std::__optional_destruct_base<ctb::ProvisioningConfiguration::AccessControl,false>::__optional_destruct_base[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = (a2 + 8);
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = a1 + 8;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = v4;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = 1;
  return result;
}

__n128 FileInfo.init(fileType:fileDisposition:fileSize:fileName:contentType:url:untilDate:cryptoMaterial:)@<Q0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a1;
  v17 = *a2;
  *(a9 + 1) = 2;
  v18 = type metadata accessor for FileInfo();
  v19 = a9 + v18[11];
  *v19 = xmmword_2426B48C0;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 64) = 0;
  *a9 = v16;
  *(a9 + 1) = v17;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  v20 = v18[9];
  v21 = sub_2426A9870();
  (*(*(v21 - 8) + 32))(a9 + v20, a8, v21);
  v22 = v18[10];
  v23 = sub_2426A9940();
  (*(*(v23 - 8) + 32))(a9 + v22, a10, v23);
  v24 = *(v19 + 48);
  v30[2] = *(v19 + 32);
  v30[3] = v24;
  v31 = *(v19 + 64);
  v25 = *(v19 + 16);
  v30[0] = *v19;
  v30[1] = v25;
  sub_24269A890(v30);
  v26 = *(a11 + 48);
  *(v19 + 32) = *(a11 + 32);
  *(v19 + 48) = v26;
  *(v19 + 64) = *(a11 + 64);
  result = *(a11 + 16);
  *v19 = *a11;
  *(v19 + 16) = result;
  return result;
}

uint64_t type metadata accessor for FileInfo()
{
  result = qword_27ECB60A0;
  if (!qword_27ECB60A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24269A890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FileInfo.FileType.rawValue.getter()
{
  if (*v0)
  {
    return 0x69616E626D756874;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t sub_24269A93C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69616E626D756874;
  }

  else
  {
    v3 = 1701603686;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE90000000000006CLL;
  }

  if (*a2)
  {
    v5 = 0x69616E626D756874;
  }

  else
  {
    v5 = 1701603686;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006CLL;
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
    v8 = sub_2426ABD50();
  }

  return v8 & 1;
}

uint64_t sub_24269A9E0()
{
  sub_2426ABDB0();
  sub_2426ABA50();

  return sub_2426ABDD0();
}

uint64_t sub_24269AA60()
{
  sub_2426ABA50();
}

uint64_t sub_24269AACC()
{
  sub_2426ABDB0();
  sub_2426ABA50();

  return sub_2426ABDD0();
}

void sub_24269AB54(uint64_t *a1@<X8>)
{
  v2 = 1701603686;
  if (*v1)
  {
    v2 = 0x69616E626D756874;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24269AC4C@<X0>(char *a1@<X8>)
{
  v2 = sub_2426ABC60();

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

uint64_t FileInfo.FileDisposition.rawValue.getter()
{
  if (*v0)
  {
    return 0x656D686361747461;
  }

  else
  {
    return 0x7265646E6572;
  }
}

uint64_t sub_24269ACE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656D686361747461;
  }

  else
  {
    v3 = 0x7265646E6572;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA0000000000746ELL;
  }

  if (*a2)
  {
    v5 = 0x656D686361747461;
  }

  else
  {
    v5 = 0x7265646E6572;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000746ELL;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2426ABD50();
  }

  return v8 & 1;
}

uint64_t sub_24269AD90()
{
  sub_2426ABDB0();
  sub_2426ABA50();

  return sub_2426ABDD0();
}

uint64_t sub_24269AE14()
{
  sub_2426ABA50();
}

uint64_t sub_24269AE84()
{
  sub_2426ABDB0();
  sub_2426ABA50();

  return sub_2426ABDD0();
}

uint64_t sub_24269AF10@<X0>(char *a1@<X8>)
{
  v2 = sub_2426ABC60();

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

void sub_24269AF6C(uint64_t *a1@<X8>)
{
  v2 = 0x7265646E6572;
  if (*v1)
  {
    v2 = 0x656D686361747461;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FileInfo.fileName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FileInfo.fileName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FileInfo.contentType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FileInfo.contentType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t FileInfo.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FileInfo() + 36);
  v4 = sub_2426A9870();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FileInfo.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FileInfo() + 36);
  v4 = sub_2426A9870();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FileInfo.untilDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FileInfo() + 40);
  v4 = sub_2426A9940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FileInfo.untilDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FileInfo() + 40);
  v4 = sub_2426A9940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FileInfo.cryptoMaterial.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FileInfo() + 44);
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
  return sub_24269B4F4(v10, v9);
}

uint64_t sub_24269B4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 FileInfo.cryptoMaterial.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FileInfo() + 44);
  v4 = *(v3 + 48);
  v8[2] = *(v3 + 32);
  v8[3] = v4;
  v9 = *(v3 + 64);
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  sub_24269A890(v8);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

uint64_t sub_24269B61C()
{
  v1 = *v0;
  v2 = 0x65707954656C6966;
  v3 = 0x7461446C69746E75;
  if (v1 != 6)
  {
    v3 = 0x614D6F7470797263;
  }

  v4 = 0x54746E65746E6F63;
  if (v1 != 4)
  {
    v4 = 7107189;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x657A6953656C6966;
  if (v1 != 2)
  {
    v5 = 0x656D614E656C6966;
  }

  if (*v0)
  {
    v2 = 0x70736944656C6966;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24269B734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24269CDFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24269B768(uint64_t a1)
{
  v2 = sub_24269BBC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24269B7A4(uint64_t a1)
{
  v2 = sub_24269BBC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB6028);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24269BBC0();
  sub_2426ABDF0();
  LOBYTE(v23[0]) = *v3;
  LOBYTE(v18) = 0;
  sub_24269BC14();
  sub_2426ABD10();
  if (!v2)
  {
    LOBYTE(v23[0]) = v3[1];
    LOBYTE(v18) = 1;
    sub_24269BC68();
    sub_2426ABCE0();
    LOBYTE(v23[0]) = 2;
    sub_2426ABD00();
    LOBYTE(v23[0]) = 3;
    sub_2426ABCD0();
    LOBYTE(v23[0]) = 4;
    sub_2426ABCF0();
    v9 = type metadata accessor for FileInfo();
    LOBYTE(v23[0]) = 5;
    sub_2426A9870();
    sub_24269C56C(&qword_27ECB6048, MEMORY[0x277CC9260]);
    sub_2426ABD10();
    v28 = 6;
    sub_2426A9940();
    sub_24269C56C(&qword_27ECB6050, MEMORY[0x277CC9578]);
    sub_2426ABD10();
    v10 = &v3[*(v9 + 44)];
    v11 = *(v10 + 1);
    v12 = *(v10 + 3);
    v24 = *(v10 + 2);
    v25 = v12;
    v13 = *(v10 + 1);
    v23[0] = *v10;
    v23[1] = v13;
    v14 = *(v10 + 3);
    v20 = v24;
    v21 = v14;
    v26 = *(v10 + 16);
    v22 = *(v10 + 16);
    v18 = v23[0];
    v19 = v11;
    v27 = 7;
    sub_24269B4F4(v23, v16);
    sub_24269BCBC();
    sub_2426ABCE0();
    v16[2] = v20;
    v16[3] = v21;
    v17 = v22;
    v16[1] = v19;
    v16[0] = v18;
    sub_24269A890(v16);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24269BBC0()
{
  result = qword_27ECB6030;
  if (!qword_27ECB6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB6030);
  }

  return result;
}

unint64_t sub_24269BC14()
{
  result = qword_27ECB6038;
  if (!qword_27ECB6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB6038);
  }

  return result;
}

unint64_t sub_24269BC68()
{
  result = qword_27ECB6040;
  if (!qword_27ECB6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB6040);
  }

  return result;
}

unint64_t sub_24269BCBC()
{
  result = qword_27ECB6058;
  if (!qword_27ECB6058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB6058);
  }

  return result;
}

uint64_t FileInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v44 = sub_2426A9940();
  v38 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2426A9870();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB6060);
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v35 - v7;
  v9 = type metadata accessor for FileInfo();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = 2;
  v43 = v10;
  v13 = v12;
  v14 = &v12[*(v10 + 44)];
  *v14 = xmmword_2426B48C0;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 3) = 0u;
  *(v14 + 16) = 0;
  v15 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24269BBC0();
  v16 = v8;
  v17 = v41;
  sub_2426ABDE0();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(v42);

    v20 = *(v14 + 3);
    v54 = *(v14 + 2);
    v55 = v20;
    v56 = *(v14 + 16);
    v21 = *(v14 + 1);
    v52 = *v14;
    v53 = v21;
    return sub_24269A890(&v52);
  }

  else
  {
    v18 = v6;
    v41 = v4;
    LOBYTE(v50[0]) = 0;
    sub_24269C4C4();
    v19 = v36;
    sub_2426ABCB0();
    v22 = v13;
    *v13 = v52;
    LOBYTE(v50[0]) = 1;
    sub_24269C518();
    sub_2426ABC80();
    v13[1] = v52;
    LOBYTE(v52) = 2;
    *(v13 + 1) = sub_2426ABCA0();
    LOBYTE(v52) = 3;
    *(v13 + 2) = sub_2426ABC70();
    *(v13 + 3) = v23;
    LOBYTE(v52) = 4;
    *(v13 + 4) = sub_2426ABC90();
    *(v13 + 5) = v24;
    LOBYTE(v52) = 5;
    sub_24269C56C(&qword_27ECB6078, MEMORY[0x277CC9260]);
    v25 = v18;
    v26 = v40;
    sub_2426ABCB0();
    v27 = v43;
    (*(v39 + 32))(v22 + *(v43 + 36), v25, v26);
    LOBYTE(v52) = 6;
    sub_24269C56C(&qword_27ECB6080, MEMORY[0x277CC9578]);
    v28 = v41;
    v29 = v44;
    sub_2426ABCB0();
    (*(v38 + 32))(v22 + *(v27 + 40), v28, v29);
    v57 = 7;
    sub_24269C5B4();
    sub_2426ABC80();
    (*(v37 + 8))(v16, v19);
    v47 = v54;
    v48 = v55;
    v49 = v56;
    v46 = v53;
    v45 = v52;
    v30 = *(v14 + 3);
    v50[2] = *(v14 + 2);
    v50[3] = v30;
    v51 = *(v14 + 16);
    v31 = *(v14 + 1);
    v50[0] = *v14;
    v50[1] = v31;
    sub_24269A890(v50);
    v32 = v48;
    *(v14 + 2) = v47;
    *(v14 + 3) = v32;
    *(v14 + 16) = v49;
    v33 = v46;
    *v14 = v45;
    *(v14 + 1) = v33;
    sub_24269C608(v22, v35);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_24269C66C(v22);
  }
}

unint64_t sub_24269C4C4()
{
  result = qword_27ECB6068;
  if (!qword_27ECB6068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB6068);
  }

  return result;
}

unint64_t sub_24269C518()
{
  result = qword_27ECB6070;
  if (!qword_27ECB6070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB6070);
  }

  return result;
}

uint64_t sub_24269C56C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24269C5B4()
{
  result = qword_27ECB6088;
  if (!qword_27ECB6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB6088);
  }

  return result;
}

uint64_t sub_24269C608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24269C66C(uint64_t a1)
{
  v2 = type metadata accessor for FileInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24269C6CC()
{
  result = qword_27ECB6090;
  if (!qword_27ECB6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB6090);
  }

  return result;
}

unint64_t sub_24269C724()
{
  result = qword_27ECB6098;
  if (!qword_27ECB6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB6098);
  }

  return result;
}

uint64_t sub_24269C7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2426A9870();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_2426A9940();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24269C8F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = sub_2426A9870();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2426A9940();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24269CA18()
{
  sub_24269CB30(319, &qword_27ECB60B0);
  if (v0 <= 0x3F)
  {
    sub_24269CB30(319, &qword_27ECB60B8);
    if (v1 <= 0x3F)
    {
      sub_2426A9870();
      if (v2 <= 0x3F)
      {
        sub_2426A9940();
        if (v3 <= 0x3F)
        {
          sub_24269CB30(319, &qword_27ECB60C0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24269CB30(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2426ABB80();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FileInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FileInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24269CCF8()
{
  result = qword_27ECB60C8;
  if (!qword_27ECB60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB60C8);
  }

  return result;
}

unint64_t sub_24269CD50()
{
  result = qword_27ECB60D0;
  if (!qword_27ECB60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB60D0);
  }

  return result;
}

unint64_t sub_24269CDA8()
{
  result = qword_27ECB60D8;
  if (!qword_27ECB60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB60D8);
  }

  return result;
}

uint64_t sub_24269CDFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_2426ABD50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70736944656C6966 && a2 == 0xEF6E6F697469736FLL || (sub_2426ABD50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000 || (sub_2426ABD50() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000 || (sub_2426ABD50() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_2426ABD50() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_2426ABD50() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461446C69746E75 && a2 == 0xE900000000000065 || (sub_2426ABD50() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x614D6F7470797263 && a2 == 0xEE006C6169726574)
  {

    return 7;
  }

  else
  {
    v6 = sub_2426ABD50();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_24269D0AC()
{
  result = qword_27ECB60E0;
  if (!qword_27ECB60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB60E0);
  }

  return result;
}

unint64_t sub_24269D100()
{
  result = qword_27ECB60E8;
  if (!qword_27ECB60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB60E8);
  }

  return result;
}

uint64_t CxxConvertibleToCollection.forEach(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v22 = &v21 - ((*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v32 = &v21 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v32;
  v10 = v32;
  (*(a4 + 32))(a3, a4);
  (*(a4 + 40))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 8);
  v36 = v9;
  v31 = v12;
  if (sub_2426AB9F0())
  {
    v13 = *(v8 + 8);
    v13(v36, v7);
    return (v13)(v10, v7);
  }

  else
  {
    v14 = *(AssociatedConformanceWitness + 24);
    v26 = (v30 + 16);
    v27 = v14;
    v28 = AssociatedConformanceWitness + 24;
    v29 = (v30 + 8);
    v30 = v8 + 8;
    v24 = (v8 + 32);
    v25 = AssociatedConformanceWitness + 32;
    v16 = v22;
    v15 = AssociatedTypeWitness;
    while (1)
    {
      v17 = v27(v35, v7, AssociatedConformanceWitness);
      (*v26)(v16);
      v17(v35, 0);
      v33(v16);
      if (v4)
      {
        break;
      }

      (*v29)(v16, v15);
      v18 = v32;
      (*(AssociatedConformanceWitness + 32))(v7, AssociatedConformanceWitness);
      v13 = *v30;
      (*v30)(v10, v7);
      (*v24)(v10, v18, v7);
      if (sub_2426AB9F0())
      {
        v13(v36, v7);
        return (v13)(v10, v7);
      }
    }

    (*v29)(v16, v15);
    v20 = *v30;
    (*v30)(v36, v7);
    return (v20)(v10, v7);
  }
}

uint64_t CxxConvertibleToCollection<>.forEach(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v25 = a2;
  v26 = a5;
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v8 = &v19 - ((*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v19 - ((*(*(sub_2426ABB80() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v11 = &v19 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_getAssociatedTypeWitness();
  v21 = *(v12 - 8);
  v13 = &v19 - ((*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v11, v27, a3);
  sub_2426ABAC0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v13;
  v15 = v20;
  v27 = v12;
  v23 = AssociatedConformanceWitness;
  sub_2426ABB90();
  v22 = *(v15 + 48);
  if (v22(v9, 1, AssociatedTypeWitness) != 1)
  {
    v16 = *(v15 + 32);
    v17 = (v15 + 8);
    while (1)
    {
      v16(v8, v9, AssociatedTypeWitness);
      v24(v8);
      if (v5)
      {
        break;
      }

      (*v17)(v8, AssociatedTypeWitness);
      sub_2426ABB90();
      if (v22(v9, 1, AssociatedTypeWitness) == 1)
      {
        return (*(v21 + 8))(v26, v27);
      }
    }

    (*v17)(v8, AssociatedTypeWitness);
  }

  return (*(v21 + 8))(v26, v27);
}

uint64_t sub_24269D8B8(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(&v4 - ((*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0), a1, AssociatedTypeWitness);
  return sub_2426ABB50();
}

uint64_t sub_24269D9FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t, uint64_t)@<X5>, void (*a6)(char *)@<X6>, uint64_t a7@<X8>)
{
  a5(a1, a3);
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a7;
  return CxxConvertibleToCollection.forEach(_:)(a6, v14, a2, a4);
}

uint64_t sub_24269DA8C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = v6 - ((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  sub_2426ABBF0();
  return (*(v3 + 8))(v4, AssociatedTypeWitness);
}

uint64_t CxxDictionary.init<>(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = &v45 - ((*(*(sub_2426ABB80() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(AssociatedTypeWitness - 8);
  v52 = &v45 - ((*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v49 = *(v9 - 8);
  v66 = &v45 - ((*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v9;
  v51 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = sub_2426ABB80();
  v69 = *(v64 - 8);
  v11 = &v45 - ((*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v11;
  v12 = *(a3 + 88);
  v56 = a4;
  v57 = a2;
  v58 = a3;
  result = v12(a2, a3);
  v14 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = sub_2426ABC30();
    v46 = 0;
    v15 = 0;
    v16 = 0;
    v14 = result | 0x8000000000000000;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v18 = *(a1 + 64);
    v46 = a1 + 64;
    v15 = ~v17;
    v19 = -v17;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v16 = v20 & v18;
  }

  v21 = 0;
  v68 = (v49 + 32);
  v22 = (v50 + 32);
  v61 = TupleTypeMetadata2 - 8;
  v45 = v15;
  v23 = (v15 + 64) >> 6;
  v48 = v49 + 16;
  v47 = v50 + 16;
  v60 = (v69 + 32);
  v53 = v11;
  v54 = (v50 + 56);
  v65 = v14;
  v24 = v51;
  v25 = v66;
  v26 = v67;
  while (1)
  {
    v62 = v16;
    v59 = v21;
    if ((v14 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_2426ABC40())
    {
      sub_2426ABD30();
      swift_unknownObjectRelease();
      v36 = v21;
      v35 = v52;
      sub_2426ABD30();
      swift_unknownObjectRelease();
      v28 = v36;
      v69 = v16;
      goto LABEL_20;
    }

    v38 = 1;
    v44 = v16;
    v30 = v21;
    v69 = v44;
    v11 = v53;
LABEL_21:
    v39 = *(TupleTypeMetadata2 - 8);
    (*(v39 + 56))(v11, v38, 1, TupleTypeMetadata2);
    v40 = v63;
    (*v60)(v63, v11, v64);
    if ((*(v39 + 48))(v40, 1, TupleTypeMetadata2) == 1)
    {
      return sub_24269E224();
    }

    v41 = *(TupleTypeMetadata2 + 48);
    v26 = v67;
    v25 = v66;
    (*v68)(v66, v40, v67);
    v42 = &v40[v41];
    v43 = v55;
    (*v22)(v55, v42, v24);
    (*v54)(v43, 0, 1, v24);
    result = CxxDictionary.subscript.setter(v43, v25, v57, v58);
    v21 = v30;
    v16 = v69;
    v14 = v65;
  }

  v27 = v16;
  v28 = v21;
  if (v16)
  {
LABEL_17:
    v69 = (v27 - 1) & v27;
    v32 = __clz(__rbit64(v27)) | (v28 << 6);
    v33 = v14;
    (*(v49 + 16))(v25, *(v14 + 48) + *(v49 + 72) * v32, v26);
    v34 = *(v33 + 56);
    v24 = v51;
    v35 = v52;
    (*(v50 + 16))(v52, v34 + *(v50 + 72) * v32, v51);
LABEL_20:
    v37 = *(TupleTypeMetadata2 + 48);
    v11 = v53;
    (*v68)(v53);
    (*v22)(&v11[v37], v35, v24);
    v38 = 0;
    v30 = v28;
    goto LABEL_21;
  }

  if (v23 <= v21 + 1)
  {
    v29 = v21 + 1;
  }

  else
  {
    v29 = v23;
  }

  v30 = v29 - 1;
  v31 = v21;
  while (1)
  {
    v28 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v69 = 0;
      v38 = 1;
      goto LABEL_21;
    }

    v27 = *(v46 + 8 * v28);
    ++v31;
    if (v27)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t CxxDictionary.subscript.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 1);
  v38 = &v31 - ((*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_getAssociatedTypeWitness();
  v35 = *(v7 - 8);
  v36 = v7;
  v34 = &v31 - ((*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = swift_getAssociatedTypeWitness();
  v33 = *(v41 - 8);
  v32 = &v31 - ((*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v40 = *(v8 - 8);
  v9 = &v31 - ((*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 + 8);
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v42 = &v31 - ((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v42;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    v14 = sub_2426ABB80();
    (*(*(v14 - 8) + 8))(a1, v14);
    v15 = v38;
    v16 = v43;
    (*(a4 + 120))(v43, a3, a4);
    v17 = swift_getAssociatedTypeWitness();
    (*(*(v17 - 8) + 8))(v16, v17);
    return (*(v37 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v19 = *(v12 + 32);
    v38 = v10;
    AssociatedTypeWitness = v19;
    v19(v13, a1, v11);
    (*(a4 + 104))(v43, a3, a4);
    (*(a4 + 152))(a3, a4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = sub_2426AB9F0();
    v40 = *(v40 + 8);
    (v40)(v9, v8);
    if (v21)
    {
      (v40)(v9, v8);
      v22 = v42;
      AssociatedTypeWitness(v42, v13, v11);
      v23 = v41;
      v24 = swift_getAssociatedConformanceWitness();
      v25 = v32;
      (*(v24 + 24))(v43, v22, v23, v24);
      v26 = v34;
      (*(a4 + 112))(v25, a3, a4);
      (*(v35 + 8))(v26, v36);
      return (*(v33 + 8))(v25, v23);
    }

    else
    {
      v27 = swift_getAssociatedTypeWitness();
      (*(*(v27 - 8) + 8))(v43, v27);
      AssociatedTypeWitness(v42, v13, v11);
      v28 = (*(AssociatedConformanceWitness + 24))(v44, v8, AssociatedConformanceWitness);
      v29 = v41;
      v30 = swift_getAssociatedConformanceWitness();
      (*(v30 + 64))(v42, v29, v30);
      v28(v44, 0);
      return (v40)(v9, v8);
    }
  }
}

uint64_t CxxDictionary.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = &v24 - ((*(*(sub_2426ABB80() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v32 = &v24 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v25 = *(v12 + 64);
  v13 = &v24 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 88);
  v34 = a4;
  v35 = a2;
  v36 = a3;
  v14(a2, a3);
  if (sub_2426ABB20())
  {
    v15 = 0;
    v16 = *(TupleTypeMetadata2 + 48);
    v29 = AssociatedTypeWitness;
    v30 = (v12 + 16);
    v27 = (v10 + 32);
    v28 = v16;
    v26 = AssociatedTypeWitness - 8;
    v17 = v31;
    while (1)
    {
      v18 = sub_2426ABB10();
      sub_2426ABB00();
      if (v18)
      {
        (*(v12 + 16))(v13, a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v15, TupleTypeMetadata2);
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_2426ABC10();
        if (v25 != 8)
        {
          __break(1u);
          return result;
        }

        v37 = result;
        (*v30)(v13, &v37, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_10:
          __break(1u);
        }
      }

      v20 = v32;
      (*v27)(v32, v13, v33);
      v21 = v29;
      v22 = *(v29 - 8);
      (*(v22 + 32))(v17, &v13[v28], v29);
      (*(v22 + 56))(v17, 0, 1, v21);
      CxxDictionary.subscript.setter(v17, v20, v35, v36);
      ++v15;
      if (v19 == sub_2426ABB20())
      {
      }
    }
  }
}

uint64_t CxxDictionary.init<A>(grouping:by:)@<X0>(void (**a1)(char *, void *)@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v81 = a7;
  v74 = a2;
  v75 = a6;
  v73 = a3;
  v80 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = &v48 - ((*(*(sub_2426ABB80() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = AssociatedTypeWitness;
  v64 = *(AssociatedTypeWitness - 8);
  v57 = &v48 - ((*(v64 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = swift_getAssociatedTypeWitness();
  v65 = *(v59 - 1);
  v71 = &v48 - ((*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v71;
  v84 = a4;
  v11 = a5;
  v70 = swift_getAssociatedTypeWitness();
  v53 = *(v70 - 8);
  v56 = &v48 - ((*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v56;
  v13 = swift_getAssociatedTypeWitness();
  v79 = *(v13 - 8);
  v83 = &v48 - ((*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = &v48 - ((*(*(sub_2426ABB80() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v49 = *(v14 - 8);
  v15 = &v48 - ((*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 88))(v84, v11);
  sub_2426ABAC0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = v15;
  v77 = v14;
  v17 = v78;
  v69 = AssociatedConformanceWitness;
  sub_2426ABB90();
  v18 = v79;
  v19 = *(v79 + 48);
  v68 = v79 + 48;
  v67 = v19;
  if (v19(v17, 1, v13) == 1)
  {
    return (*(v49 + 8))(v76, v77);
  }

  v66 = *(v18 + 32);
  v62 = v11 + 104;
  v61 = v11 + 152;
  v80 = (v65 + 8);
  v55 = (v53 + 8);
  v60 = v75 + 64;
  v79 = v18 + 32;
  v65 = v18 + 8;
  v54 = v75 + 56;
  v53 += 32;
  v52 = (v64 + 32);
  v51 = (v64 + 56);
  v21 = v59;
  v64 = v12;
  v63 = v13;
  v50 = v10;
  while (1)
  {
    v31 = v83;
    v66(v83, v17, v13);
    v32 = v87;
    v74(v31);
    v87 = v32;
    if (v32)
    {
      break;
    }

    v33 = v84;
    (*(v11 + 104))(v12, v84, v11);
    v34 = v10;
    v35 = v71;
    (*(v11 + 152))(v33, v11);
    v36 = v12;
    v37 = swift_getAssociatedConformanceWitness();
    v38 = v34;
    v39 = sub_2426AB9F0();
    v82 = *v80;
    v82(v35, v21);
    if (v39)
    {
      v82(v34, v21);
      v22 = v75;
      v23 = v57;
      v24 = v72;
      (*(v75 + 56))(v72, v75);
      v25 = v83;
      (*(v22 + 64))(v83, v24, v22);
      v26 = v63;
      (*v65)(v25, v63);
      v27 = v56;
      v28 = v36;
      v13 = v26;
      (*v53)(v56, v28, v70);
      v29 = v58;
      (*v52)(v58, v23, v24);
      (*v51)(v29, 0, 1, v24);
      CxxDictionary.subscript.setter(v29, v27, v84, v11);
      v10 = v38;
    }

    else
    {
      (*v55)(v36, v70);
      v59 = (*(v37 + 24))(v86, v21, v37);
      swift_getAssociatedTypeWitness();
      v40 = swift_getAssociatedConformanceWitness();
      v41 = v11;
      v42 = *(v40 + 72);
      v43 = swift_checkMetadataState();
      v44 = v75;
      v45 = v42(v85, v43, v40);
      v11 = v41;
      v46 = v45;
      v47 = v83;
      (*(v44 + 64))(v83, v72, v44);
      v13 = v63;
      (*v65)(v47, v63);
      v46(v85, 0);
      (v59)(v86, 0);
      v10 = v50;
      v82(v50, v21);
    }

    v17 = v78;
    sub_2426ABB90();
    v30 = v67(v17, 1, v13);
    v12 = v64;
    if (v30 == 1)
    {
      return (*(v49 + 8))(v76, v77);
    }
  }

  (*v65)(v83, v13);
  (*(v49 + 8))(v76, v77);
  return (*(*(v84 - 8) + 8))(v81, v84);
}

uint64_t CxxDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v23 = &v22 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = &v22 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 96))(a1, a2, a3);
  (*(a3 + 144))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_2426AB9F0();
  v13 = *(v9 + 8);
  v13(v10, v8);
  if (v12)
  {
    v13(v10, v8);
    v14 = 1;
    v15 = v25;
  }

  else
  {
    v16 = (*(AssociatedConformanceWitness + 24))(v26, v8, AssociatedConformanceWitness);
    v17 = v23;
    v18 = AssociatedTypeWitness;
    (*(v7 + 16))(v23);
    v16(v26, 0);
    v13(v10, v8);
    v19 = swift_getAssociatedConformanceWitness();
    v15 = v25;
    (*(v19 + 56))(v18, v19);
    (*(v7 + 8))(v17, v18);
    v14 = 0;
  }

  v20 = swift_getAssociatedTypeWitness();
  return (*(*(v20 - 8) + 56))(v15, v14, 1, v20);
}

uint64_t sub_24269F9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v8 = sub_2426ABB80();
  v9 = *(v8 - 8);
  v10 = &v14 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = &v14 - ((*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(AssociatedTypeWitness - 8) + 16))(v12, a3, AssociatedTypeWitness);
  (*(v9 + 16))(v10, a1, v8);
  return CxxDictionary.subscript.setter(v10, v12, v6, v7);
}

void (*CxxDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x58uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  swift_getAssociatedTypeWitness();
  v12 = sub_2426ABB80();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  v15 = v9;
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v16 = malloc(v14);
  }

  v17 = v16;
  v11[6] = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[7] = AssociatedTypeWitness;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = v19;
  v11[8] = v19;
  v21 = *(v19 + 64);
  if (v15)
  {
    v11[9] = swift_coroFrameAlloc();
    v22 = swift_coroFrameAlloc();
  }

  else
  {
    v11[9] = malloc(*(v19 + 64));
    v22 = malloc(v21);
  }

  v11[10] = v22;
  (*(v20 + 16))();
  CxxDictionary.subscript.getter(a2, a3, a4, v17);
  return sub_24269FD80;
}

uint64_t CxxDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[1] = a3;
  v23 = a2;
  v26 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v24 = v22 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = v22 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 96))(a1, a4, a5);
  (*(a5 + 144))(a4, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_2426AB9F0();
  v15 = *(v11 + 8);
  v15(v12, v10);
  if (v14)
  {
    v16 = (v15)(v12, v10);
    return v23(v16);
  }

  else
  {
    v18 = (*(AssociatedConformanceWitness + 24))(v27, v10, AssociatedConformanceWitness);
    v19 = v24;
    v20 = AssociatedTypeWitness;
    (*(v9 + 16))(v24);
    v18(v27, 0);
    v15(v12, v10);
    v21 = swift_getAssociatedConformanceWitness();
    (*(v21 + 56))(v20, v21);
    return (*(v9 + 8))(v19, v20);
  }
}

void (*CxxDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x58uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[1] = a6;
  v12[2] = v6;
  *v12 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v13[4] = v15;
  v16 = *(v15 + 64);
  v17 = v11;
  if (v11)
  {
    v13[5] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v13[5] = malloc(*(v15 + 64));
    v18 = malloc(v16);
  }

  v19 = v18;
  v13[6] = v18;
  v20 = swift_getAssociatedTypeWitness();
  v13[7] = v20;
  v21 = *(v20 - 8);
  v22 = v21;
  v13[8] = v21;
  v23 = *(v21 + 64);
  if (v17)
  {
    v13[9] = swift_coroFrameAlloc();
    v24 = swift_coroFrameAlloc();
  }

  else
  {
    v13[9] = malloc(*(v21 + 64));
    v24 = malloc(v23);
  }

  v13[10] = v24;
  (*(v22 + 16))();
  CxxDictionary.subscript.getter(a2, a3, a4, a5, a6, v19);
  return sub_2426A02B0;
}

void sub_2426A02C8(uint64_t **a1, char a2, void (*a3)(void *, void *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[9];
  v6 = (*a1)[10];
  if (a2)
  {
    v7 = v4[8];
    v9 = v4[5];
    v8 = v4[6];
    v10 = v4[3];
    v11 = v4[4];
    v14 = v4[7];
    v13 = v4[1];
    v12 = *v4;
    (*(v11 + 16))(v9, v8, v10);
    (*(v7 + 32))(v5, v6, v14);
    a3(v9, v5, v12, v13);
    (*(v11 + 8))(v8, v10);
  }

  else
  {
    v9 = v4[5];
    v8 = v4[6];
    a3(v8, v6, *v4, v4[1]);
  }

  free(v6);
  free(v5);
  free(v8);
  free(v9);

  free(v4);
}

uint64_t CxxDictionary.filter(_:)@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v54 = a1;
  v55 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v36 = &v33 - ((*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = swift_getAssociatedTypeWitness();
  v57 = *(v53 - 8);
  v52 = &v33 - ((v57[8] + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = swift_getAssociatedTypeWitness();
  v46 = *(v51 - 8);
  v50 = &v33 - ((*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v43 = *(v8 - 8);
  v9 = &v33 - ((*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v39 = *(v10 - 8);
  v49 = &v33 - ((*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v49;
  v12 = v49;
  v13 = a4[11];
  v38 = a5;
  v14 = a4;
  v13(a3, a4);
  a4[17](a3, a4);
  a4[18](a3, a4);
  v59 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 8);
  v56 = v11;
  v48 = v16;
  if (sub_2426AB9F0())
  {
    v17 = *(v39 + 8);
    v17(v56, v10);
  }

  else
  {
    v18 = v14;
    v19 = v33;
    v42 = *(AssociatedConformanceWitness + 24);
    v41 = (v43 + 16);
    v44 = (v57 + 1);
    v45 = (v46 + 8);
    v46 = v43 + 8;
    v57 = v18;
    v35 = v18 + 14;
    v34 = (v47 + 8);
    v43 = AssociatedConformanceWitness + 24;
    v40 = AssociatedConformanceWitness + 32;
    v47 = v39 + 8;
    v39 += 32;
    for (i = v42(v58, v10, AssociatedConformanceWitness); ; i = v42(v58, v10, AssociatedConformanceWitness))
    {
      v22 = i;
      (*v41)(v9);
      v22(v58, 0);
      v23 = swift_getAssociatedConformanceWitness();
      v24 = v50;
      (*(v23 + 32))(v8, v23);
      v25 = *(v23 + 56);
      v26 = v23;
      v27 = v52;
      v25(v8, v26);
      v28 = v54(v24, v27);
      if (v19)
      {
        (*v44)(v27, v53);
        (*v45)(v24, v51);
        (*v46)(v9, v8);
        v31 = *v47;
        (*v47)(v56, v10);
        v31(v12, v10);
        return (*(*(v59 - 8) + 8))(v38);
      }

      v29 = v28;
      (*v44)(v27, v53);
      (*v45)(v24, v51);
      if (v29)
      {
        v30 = v36;
        v57[14](v9, v59);
        (*v34)(v30, AssociatedTypeWitness);
      }

      (*v46)(v9, v8);
      v21 = v49;
      (*(AssociatedConformanceWitness + 32))(v10, AssociatedConformanceWitness);
      v17 = *v47;
      (*v47)(v12, v10);
      (*v39)(v12, v21, v10);
      if (sub_2426AB9F0())
      {
        break;
      }
    }

    v17(v56, v10);
  }

  return (v17)(v12, v10);
}

uint64_t CxxDictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  v9 = &v27 - ((*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = &v27 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12;
  (*(a3 + 104))(a1, a2, a3);
  v14 = *(a3 + 152);
  v31 = v4;
  v14(a2, a3);
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = sub_2426AB9F0();
  v17 = *(v11 + 8);
  v17(v12, v10);
  if (v16)
  {
    v18 = 1;
  }

  else
  {
    v28 = (*(v15 + 24))(v33, v10, v15);
    v19 = v29;
    v20 = v9;
    v21 = v9;
    v22 = v30;
    (*(v29 + 16))(v21);
    v28(v33, 0);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(v22, AssociatedConformanceWitness);
    (*(v19 + 8))(v20, v22);
    (*(a3 + 128))(v12, a2, a3);
    v17(v12, v10);
    v18 = 0;
  }

  v24 = v32;
  v17(v13, v10);
  v25 = swift_getAssociatedTypeWitness();
  return (*(*(v25 - 8) + 56))(v24, v18, 1, v25);
}

uint64_t CxxDictionary.merge<A>(_:uniquingKeysWith:)(void (**a1)(char *, uint64_t), void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a3;
  v66 = a2;
  v87 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = *(AssociatedTypeWitness - 8);
  v64 = &v54 - ((*(v86 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = swift_getAssociatedTypeWitness();
  v85 = *(v80 - 8);
  v63 = &v54 - ((*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = swift_getAssociatedTypeWitness();
  v69 = *(v78 - 8);
  v79 = &v54 - ((*(v69 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v79;
  v93 = a6;
  v9 = swift_getAssociatedTypeWitness();
  v68 = *(v9 - 8);
  v62 = &v54 - ((*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v62;
  v77 = v62;
  v92 = v62;
  v90 = a4;
  v10 = swift_getAssociatedTypeWitness();
  v88 = *(v10 - 8);
  v60 = &v54 - ((*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v60;
  v91 = v10;
  v89 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = &v54 - ((*(*(sub_2426ABB80() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_getAssociatedTypeWitness();
  v54 = *(v13 - 8);
  v14 = &v54 - ((*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426ABAC0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v83 = v14;
  v84 = v13;
  v16 = v12;
  v76 = AssociatedConformanceWitness;
  sub_2426ABB90();
  v17 = TupleTypeMetadata2;
  v18 = *(TupleTypeMetadata2 - 8);
  v75 = *(v18 + 48);
  v74 = v18 + 48;
  if (v75(v12, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v54 + 8))(v83, v84);
  }

  v20 = *(v88 + 32);
  v21 = (v68 + 32);
  v73 = v93 + 104;
  v72 = v93 + 152;
  v87 = (v69 + 8);
  v88 += 32;
  v58 = (v88 - 24);
  v59 = (v68 + 8);
  v57 = v93 + 112;
  v56 = (v86 + 8);
  v55 = (v85 + 8);
  v95 = v8;
  v22 = v91;
  v23 = v92;
  v24 = v81;
  v69 = v20;
  v68 += 32;
  v71 = TupleTypeMetadata2;
  v70 = v16;
  while (1)
  {
    v34 = *(v17 + 48);
    (v20)(v24, v16, v22);
    v86 = *v21;
    (v86)(v23, &v16[v34], v89);
    v35 = v93;
    v36 = v90;
    (*(v93 + 104))(v24, v90, v93);
    v37 = v79;
    (*(v35 + 152))(v36, v35);
    v38 = v78;
    v39 = v24;
    v85 = swift_getAssociatedConformanceWitness();
    v40 = *(v85 + 8);
    LOBYTE(v34) = sub_2426AB9F0();
    v41 = v38;
    v42 = *v87;
    (*v87)(v37, v41);
    if ((v34 & 1) == 0)
    {
      break;
    }

    v42(v95, v41);
    v25 = v60;
    (v20)(v60, v39, v91);
    v26 = v62;
    (v86)(v62, v92, v89);
    v27 = v93;
    v28 = v90;
    v29 = v80;
    v30 = swift_getAssociatedConformanceWitness();
    v31 = v63;
    (*(v30 + 24))(v25, v26, v29, v30);
    v32 = v64;
    (*(v27 + 112))(v31, v28, v27);
    (*v56)(v32, AssociatedTypeWitness);
    (*v55)(v31, v29);
LABEL_5:
    v16 = v70;
    sub_2426ABB90();
    v17 = v71;
    v33 = v75(v16, 1, v71);
    v22 = v91;
    v23 = v92;
    v24 = v81;
    v20 = v69;
    v21 = v68;
    if (v33 == 1)
    {
      return (*(v54 + 8))(v83, v84);
    }
  }

  v86 = v42;
  v43 = v89;
  (*v58)(v39, v91);
  v44 = (*(v40 + 24))(v94, v41, v40);
  v45 = v80;
  v46 = swift_getAssociatedConformanceWitness();
  v47 = v61;
  (*(v46 + 56))(v45, v46);
  v44(v94, 0);
  v48 = v92;
  v49 = v82;
  v66(v47, v92);
  if (!v49)
  {
    v82 = 0;
    v50 = *v59;
    (*v59)(v47, v43);
    v50(v48, v43);
    v51 = v95;
    v52 = (*(v85 + 24))(v94, v41);
    (*(v46 + 64))(v77, v45, v46);
    v52(v94, 0);
    (v86)(v51, v41);
    goto LABEL_5;
  }

  v53 = *v59;
  (*v59)(v47, v43);
  (v86)(v95, v41);
  v53(v48, v43);
  return (*(v54 + 8))(v83, v84);
}

uint64_t CxxDictionary.merge<>(_:uniquingKeysWith:)(unint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a3;
  v88 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v86 = &v76 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = swift_getAssociatedTypeWitness();
  v9 = *(v103 - 8);
  v85 = &v76 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v120 = *(v10 - 8);
  v102 = &v76 - ((*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v102;
  v11 = swift_getAssociatedTypeWitness();
  v93 = *(v11 - 8);
  v84 = &v76 - ((*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v84;
  v121 = v84;
  v117 = v84;
  v100 = a4;
  v127 = swift_getAssociatedTypeWitness();
  v92 = *(v127 - 8);
  v101 = &v76 - ((*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v101;
  v123 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = sub_2426ABB80();
  v108 = result;
  v15 = *(result - 8);
  v107 = &v76 - ((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v107;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = sub_2426ABC30();
    v77 = 0;
    v16 = 0;
    v17 = 0;
    a1 = result | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v19 = *(a1 + 64);
    v77 = a1 + 64;
    v16 = ~v18;
    v20 = -v18;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v17 = v21 & v19;
  }

  v22 = 0;
  v124 = (v92 + 32);
  v116 = (v93 + 32);
  v109 = TupleTypeMetadata2;
  v105 = TupleTypeMetadata2 - 8;
  v76 = v16;
  v23 = (v16 + 64) >> 6;
  v91 = v92 + 16;
  v90 = v93 + 16;
  v104 = (v15 + 32);
  v97 = a5 + 104;
  v96 = a5 + 152;
  v98 = (v120 + 8);
  v81 = (v92 + 8);
  v82 = (v93 + 8);
  v80 = a5 + 112;
  v79 = (v8 + 8);
  v78 = (v9 + 8);
  v94 = v23;
  v118 = a1;
  v122 = a5;
  v95 = v12;
  v99 = v10;
  while (1)
  {
    v111 = v22;
    v112 = v17;
    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    v34 = sub_2426ABC40();
    v30 = v123;
    v31 = v117;
    if (v34)
    {
      v35 = v12;
      v36 = v127;
      sub_2426ABD30();
      swift_unknownObjectRelease();
      sub_2426ABD30();
      swift_unknownObjectRelease();
      v33 = v111;
      v120 = v112;
LABEL_23:
      v42 = v109;
      v43 = *(v109 + 48);
      v44 = v107;
      (*v124)(v107, v35, v36);
      v45 = v31;
      v46 = v116;
      (*v116)(&v44[v43], v45, v30);
      v47 = 0;
      v119 = v33;
      goto LABEL_27;
    }

    v47 = 1;
    v119 = v111;
    v120 = v112;
LABEL_26:
    v42 = v109;
    v44 = v107;
    v46 = v116;
LABEL_27:
    v48 = *(v42 - 8);
    (*(v48 + 56))(v44, v47, 1, v42);
    v49 = v106;
    (*v104)(v106, v44, v108);
    if ((*(v48 + 48))(v49, 1, v42) == 1)
    {
      return sub_24269E224();
    }

    v50 = *(v42 + 48);
    v51 = v101;
    v115 = *v124;
    v115(v101, v49, v127);
    v114 = *v46;
    v114(v121, &v49[v50], v30);
    v52 = v122;
    v53 = v100;
    (*(v122 + 104))(v51, v100, v122);
    v54 = v102;
    (*(v52 + 152))(v53, v52);
    v55 = v99;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v56 = *(AssociatedConformanceWitness + 8);
    v57 = sub_2426AB9F0();
    v58 = v55;
    v59 = v55;
    v60 = *v98;
    (*v98)(v54, v59);
    if (v57)
    {
      v60(v125, v58);
      v12 = v95;
      v115(v95, v51, v127);
      v24 = v117;
      v114(v117, v121, v123);
      v25 = v122;
      v26 = v103;
      v27 = swift_getAssociatedConformanceWitness();
      v28 = v85;
      (*(v27 + 24))(v12, v24, v26, v27);
      v29 = v86;
      (*(v25 + 112))(v28, v53, v25);
      (*v79)(v29, AssociatedTypeWitness);
      result = (*v78)(v28, v26);
      v22 = v119;
      v17 = v120;
      a1 = v118;
    }

    else
    {
      v115 = v60;
      (*v81)(v51, v127);
      v61 = (*(v56 + 24))(v126, v58, v56);
      v62 = v103;
      v63 = swift_getAssociatedConformanceWitness();
      v64 = v84;
      (*(v63 + 56))(v62, v63);
      v61(v126, 0);
      v65 = v83;
      v66 = v121;
      v67 = v110;
      v88(v64, v121);
      v110 = v67;
      if (v67)
      {
        sub_24269E224();
        v74 = *v82;
        v75 = v123;
        (*v82)(v64, v123);
        (v115)(v125, v58);
        return (v74)(v66, v75);
      }

      v68 = *v82;
      v69 = v64;
      v70 = v66;
      v71 = v123;
      (*v82)(v69, v123);
      v68(v70, v71);
      v72 = v125;
      v73 = (*(AssociatedConformanceWitness + 24))(v126, v58);
      (*(v63 + 64))(v65, v62, v63);
      v73(v126, 0);
      result = (v115)(v72, v58);
      v22 = v119;
      v17 = v120;
      a1 = v118;
      v12 = v95;
    }

    v23 = v94;
  }

  v30 = v123;
  v31 = v117;
  if (v17)
  {
    v32 = v17;
    v33 = v22;
LABEL_22:
    v120 = (v32 - 1) & v32;
    v40 = __clz(__rbit64(v32)) | (v33 << 6);
    v41 = a1;
    v36 = v127;
    (*(v92 + 16))(v12, *(a1 + 48) + *(v92 + 72) * v40, v127);
    v35 = v12;
    (*(v93 + 16))(v31, *(v41 + 56) + *(v93 + 72) * v40, v30);
    goto LABEL_23;
  }

  if (v23 <= v22 + 1)
  {
    v37 = v22 + 1;
  }

  else
  {
    v37 = v23;
  }

  v38 = v37 - 1;
  v39 = v22;
  while (1)
  {
    v33 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v33 >= v23)
    {
      v119 = v38;
      v120 = 0;
      v47 = 1;
      goto LABEL_26;
    }

    v32 = *(v77 + 8 * v33);
    ++v39;
    if (v32)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t CxxDictionary.merging<A>(_:uniquingKeysWith:)@<X0>(void (**a1)(char *, uint64_t)@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  CxxDictionary.merge<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6);
  v11 = *(a4 - 8);
  if (v8)
  {
    return (*(v11 + 8))(v7, a4);
  }

  else
  {
    return (*(v11 + 32))(a7, v7, a4);
  }
}

uint64_t CxxDictionary.merging<>(_:uniquingKeysWith:)@<X0>(unint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  CxxDictionary.merge<>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5);
  v10 = *(a4 - 8);
  if (v7)
  {
    return (*(v10 + 8))(v6, a4);
  }

  else
  {
    return (*(v10 + 32))(a6, v6, a4);
  }
}

uint64_t CxxDictionary.merging(_:uniquingKeysWith:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_2426A78C0(a1, a2, a3, a4, a5);
  v11 = *(a4 - 8);
  v12 = *(v11 + 8);
  v12(a1, a4);
  if (v7)
  {
    return (v12)(v6, a4);
  }

  else
  {
    return (*(v11 + 32))(a6, v6, a4);
  }
}

uint64_t CxxOptional.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a2 + 32))())
  {
    (*(a2 + 40))(a1, a2);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 56);

  return v8(a3, v6, 1, AssociatedTypeWitness);
}

uint64_t Optional.init<A>(fromCxx:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((*(a4 + 32))(a3, a4))
  {
    (*(a4 + 40))(a3, a4);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  (*(*(a3 - 8) + 8))(a1, a3);
  v11 = *(*(a2 - 8) + 56);

  return v11(a5, v10, 1, a2);
}

uint64_t CxxSet.init<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a1;
  v32 = a5;
  v38 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v33 = &v28 - ((*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v39 = *(v9 - 8);
  v10 = &v28 - ((*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v28 - ((*(*(sub_2426ABB80() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = &v28 - ((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v29 = *(v14 - 8);
  v15 = &v28 - ((*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 + 48);
  v35 = a6;
  v36 = a4;
  v16(v38, a4);
  (*(v12 + 16))(v13, v37, a3);
  sub_2426ABAC0();
  v17 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = v15;
  v32 = AssociatedConformanceWitness;
  sub_2426ABB90();
  v19 = v39;
  v20 = *(v39 + 48);
  if (v20(v11, 1, v9) != 1)
  {
    v21 = *(v19 + 32);
    v30 = v36 + 56;
    v31 = v21;
    v22 = (v28 + 8);
    v39 = v19 + 32;
    v23 = (v19 + 8);
    do
    {
      v31(v10, v11, v9);
      v24 = v17;
      v25 = v33;
      (*(v36 + 56))(v10, v38);
      v26 = v25;
      v17 = v24;
      (*v22)(v26, AssociatedTypeWitness);
      (*v23)(v10, v9);
      sub_2426ABB90();
    }

    while (v20(v11, 1, v9) != 1);
  }

  return (*(v29 + 8))(v37, v17);
}

uint64_t CxxSet.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v14 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 64))(a1, a2, a3);
  swift_getAssociatedConformanceWitness();
  LOBYTE(a3) = sub_2426ABBD0();
  v9 = sub_2426ABBC0();
  if ((a3 & 1) == 0)
  {
    if (v9 > 63)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = sub_2426ABBB0();
    (*(v7 + 8))(v8, AssociatedTypeWitness);
    v10 = v12 > 0;
    return v10 & 1;
  }

  if (v9 < 65)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[1] = 0;
  sub_24265AAC0();
  sub_2426ABBA0();
  v10 = sub_2426AB9E0();
  v11 = *(v7 + 8);
  v11(v8, AssociatedTypeWitness);
  v11(v8, AssociatedTypeWitness);
  return v10 & 1;
}

uint64_t CxxUniqueSet.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v8 = &v21 - ((*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a4 + 8);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = &v21 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 56))(a2, a3, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v10, AssociatedConformanceWitness);
  (*(AssociatedConformanceWitness + 56))(v23, v10, AssociatedConformanceWitness);
  (*(v11 + 8))(v12, v10);
  v14 = LOBYTE(v23[0]);
  v15 = swift_getAssociatedConformanceWitness();
  v16 = (*(v15 + 24))(v23, AssociatedTypeWitness, v15);
  v18 = v17;
  v19 = swift_getAssociatedTypeWitness();
  (*(*(v19 - 8) + 16))(v22, v18, v19);
  v16(v23, 0);
  (*(v21 + 8))(v8, AssociatedTypeWitness);
  return v14;
}

uint64_t CxxUniqueSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = AssociatedTypeWitness;
  v22 = &v20 - ((*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = &v20 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 56))(a1, a2, a3);
  (*(a3 + 72))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a1) = sub_2426AB9F0();
  v12 = *(v9 + 8);
  v12(v10, v8);
  if (a1)
  {
    v12(v10, v8);
    v13 = swift_getAssociatedTypeWitness();
    return (*(*(v13 - 8) + 56))(v25, 1, 1, v13);
  }

  else
  {
    v15 = (*(AssociatedConformanceWitness + 24))(v26, v8, AssociatedConformanceWitness);
    v20 = v16;
    v21 = v15;
    v17 = swift_getAssociatedTypeWitness();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v25, v20, v17);
    v21(v26, 0);
    v19 = v22;
    (*(a3 + 64))(v10, a2, a3);
    (*(v23 + 8))(v19, v24);
    v12(v10, v8);
    return (*(v18 + 56))(v25, 0, 1, v17);
  }
}

uint64_t CxxRandomAccessCollection.count.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 8) + 8);
  v30 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v27 = *(*(v31 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = &v25 - ((*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_checkMetadataState();
  v5 = *(v4 - 8);
  v6 = &v25 - ((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_checkMetadataState();
  v29 = *(v7 - 8);
  v28 = &v25 - ((*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v28;
  v9 = v30;
  (*(v2 + 40))(v30, v2);
  (*(v2 + 32))(v9, v2);
  (*(AssociatedConformanceWitness + 32))(v6, v6, v4, AssociatedConformanceWitness);
  v10 = *(v5 + 8);
  v10(v6, v4);
  v11 = v4;
  v12 = v29;
  v10(v6, v11);
  if ((sub_2426ABBD0() & 1) != 0 && sub_2426ABBC0() > 64)
  {
    v32 = 0x8000000000000000;
    if (sub_2426ABBD0())
    {
      if (sub_2426ABBC0() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v13 = sub_2426ABBD0();
    v14 = sub_2426ABBC0();
    if (v13)
    {
      if (v14 > 64)
      {
LABEL_8:
        sub_24265AAC0();
        v15 = v28;
        sub_2426ABBA0();
        v16 = sub_2426AB9E0();
        result = (*(v12 + 8))(v15, v7);
        if ((v16 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      sub_2426ABD60();
      v18 = v28;
      sub_2426ABD40();
      v19 = sub_2426AB9E0();
      result = (*(v12 + 8))(v18, v7);
      if (v19)
      {
        goto LABEL_25;
      }

LABEL_13:
      sub_2426ABBB0();
      goto LABEL_14;
    }

    if (v14 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (sub_2426ABBC0() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = sub_2426ABBD0();
    v21 = sub_2426ABBC0();
    if ((v20 & 1) == 0)
    {
      break;
    }

    if (v21 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_24265AAC0();
    v22 = v28;
    sub_2426ABBA0();
    v23 = sub_2426AB9E0();
    (*(v12 + 8))(v22, v7);
    if (v23)
    {
      __break(1u);
LABEL_19:
      if (sub_2426ABBC0() == 64 && (sub_2426ABBD0() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v21 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_2426ABBB0();
LABEL_24:
  v24 = sub_2426ABBB0();
  (*(v12 + 8))(v8, v7);
  return v24;
}

uint64_t CxxRandomAccessCollection._getRawIterator(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a1;
  v6 = *(*(a3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v21 = &v18 - ((*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v20 = &v18 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v20;
  (*(v6 + 32))(a2, v6);
  v25 = v24;
  swift_getAssociatedConformanceWitness();
  v18 = sub_24265AAC0();
  sub_2426ABBE0();
  (*(AssociatedConformanceWitness + 40))(a4, v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  v23 = *(v10 + 8);
  v24 = v10 + 8;
  v23(v11, v9);
  v12 = v21;
  v13 = v20;
  (*(v6 + 40))(v19, v6);
  (*(AssociatedConformanceWitness + 32))(v12, a4, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v22 + 8))(v12, AssociatedTypeWitness);
  LOBYTE(AssociatedConformanceWitness) = sub_2426ABBD0();
  result = sub_2426ABBC0();
  if ((AssociatedConformanceWitness & 1) == 0)
  {
    goto LABEL_5;
  }

  if (result <= 64)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v25 = 0;
    sub_2426ABBA0();
    v15 = sub_2426AB9E0();
    v16 = v23;
    v23(v11, v9);
    result = v16(v13, v9);
    if (v15)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (result > 63)
      {
        break;
      }

LABEL_6:
      v17 = sub_2426ABBB0();
      result = (v23)(v13, v9);
      if (v17 > 0)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t (*CxxRandomAccessCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x80uLL);
  }

  v10 = v9;
  *a1 = v9;
  v11 = *(*(a4 + 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v13 = *(v35 + 64);
  if (v8)
  {
    v32 = swift_coroFrameAlloc();
    v10[7] = v32;
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v32 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
    v10[7] = v32;
    v14 = malloc(v13);
  }

  v33 = v14;
  v10[8] = v14;
  v15 = swift_checkMetadataState();
  v10[9] = v15;
  v16 = *(*(v15 - 8) + 64);
  v31 = *(v15 - 8);
  if (v8)
  {
    v29 = swift_coroFrameAlloc();
    v10[10] = v29;
    v17 = swift_coroFrameAlloc();
    v10[11] = v17;
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v29 = malloc(*(*(v15 - 8) + 64));
    v10[10] = v29;
    v17 = malloc(v16);
    v10[11] = v17;
    v18 = malloc(v16);
  }

  v26 = v18;
  v10[12] = v18;
  (*(v11 + 32))(a3, v11);
  v10[4] = a2;
  v27 = a3;
  v19 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  sub_24265AAC0();
  sub_2426ABBE0();
  (*(v19 + 40))(v17, v33, v15, v19);
  v30 = *(v35 + 8);
  v30(v33, AssociatedTypeWitness);
  (*(v11 + 40))(v27, v11);
  v28 = v17;
  (*(v19 + 32))(v29, v17, v15, v19);
  v20 = *(v31 + 8);
  v10[13] = v20;
  v10[14] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v29, v15);
  v21 = sub_2426ABBD0();
  v22 = sub_2426ABBC0();
  if (v21)
  {
    if (v22 > 64)
    {
      v10[6] = 0;
      goto LABEL_17;
    }
  }

  else if (v22 >= 64)
  {
    v10[5] = 0;
LABEL_17:
    sub_2426ABBA0();
    v25 = sub_2426AB9E0();
    v30(v33, AssociatedTypeWitness);
    result = (v30)(v32, AssociatedTypeWitness);
    if ((v25 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    (*(v31 + 32))(v26, v28, v15);
    v10[15] = (*(*(AssociatedConformanceWitness + 8) + 24))(v10, v15);
    return sub_2426A452C;
  }

  v23 = sub_2426ABBB0();
  result = (v30)(v32, AssociatedTypeWitness);
  if (v23 > 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t CxxRandomAccessCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v39 = a4;
  v5 = *(*(a3 + 8) + 8);
  swift_getAssociatedTypeWitness();
  v44 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v41 = &v34 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v41;
  v10 = swift_checkMetadataState();
  v40 = *(v10 - 8);
  v38 = &v34 - ((*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v38;
  v12 = v38;
  (*(v5 + 32))(&v34, a2, v5);
  v46[0] = v43;
  swift_getAssociatedConformanceWitness();
  v34 = sub_24265AAC0();
  sub_2426ABBE0();
  (*(AssociatedConformanceWitness + 40))(v12, v9, v10, AssociatedConformanceWitness);
  v13 = *(v8 + 8);
  v35 = v9;
  v42 = v13;
  v43 = v8 + 8;
  v13(v9, AssociatedTypeWitness);
  v14 = *(v5 + 40);
  v45 = v5;
  v15 = v5;
  v16 = v40;
  v14(v44, v15);
  v17 = *(AssociatedConformanceWitness + 32);
  v37 = v12;
  v18 = v12;
  v19 = AssociatedConformanceWitness;
  v20 = v41;
  v17(v11, v18, v10, v19);
  v36 = *(v16 + 8);
  v36(v11, v10);
  LOBYTE(v11) = sub_2426ABBD0();
  v21 = sub_2426ABBC0();
  v23 = __OFSUB__(v21, 64);
  v22 = v21 - 64 < 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v21 <= 64)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v46[0] = 0;
    v24 = v35;
    sub_2426ABBA0();
    v25 = sub_2426AB9E0();
    v26 = v42;
    v42(v24, AssociatedTypeWitness);
    v26(v20, AssociatedTypeWitness);
    if (v25)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v22 == v23)
      {
        break;
      }

LABEL_7:
      v27 = sub_2426ABBB0();
      v42(v20, AssociatedTypeWitness);
      v23 = 0;
      v22 = v27 < 0;
      if (v27 > 0)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v28 = v38;
  (*(v16 + 32))(v38, v37, v10);
  v29 = (*(*(v19 + 8) + 24))(v46, v10);
  v31 = v30;
  v32 = swift_getAssociatedTypeWitness();
  (*(*(v32 - 8) + 16))(v39, v31, v32);
  v29(v46, 0);
  return (v36)(v28, v10);
}

uint64_t CxxMutableRandomAccessCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v39 = a4;
  v5 = *(*(*(a3 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v44 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v41 = &v34 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v41;
  v10 = swift_checkMetadataState();
  v40 = *(v10 - 8);
  v38 = &v34 - ((*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v38;
  v12 = v38;
  (*(v5 + 32))(&v34, a2, v5);
  v46[0] = v43;
  swift_getAssociatedConformanceWitness();
  v34 = sub_24265AAC0();
  sub_2426ABBE0();
  (*(AssociatedConformanceWitness + 40))(v12, v9, v10, AssociatedConformanceWitness);
  v13 = *(v8 + 8);
  v35 = v9;
  v42 = v13;
  v43 = v8 + 8;
  v13(v9, AssociatedTypeWitness);
  v14 = *(v5 + 40);
  v45 = v5;
  v15 = v5;
  v16 = v40;
  v14(v44, v15);
  v17 = *(AssociatedConformanceWitness + 32);
  v37 = v12;
  v18 = v12;
  v19 = AssociatedConformanceWitness;
  v20 = v41;
  v17(v11, v18, v10, v19);
  v36 = *(v16 + 8);
  v36(v11, v10);
  LOBYTE(v11) = sub_2426ABBD0();
  v21 = sub_2426ABBC0();
  v23 = __OFSUB__(v21, 64);
  v22 = v21 - 64 < 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v21 <= 64)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v46[0] = 0;
    v24 = v35;
    sub_2426ABBA0();
    v25 = sub_2426AB9E0();
    v26 = v42;
    v42(v24, AssociatedTypeWitness);
    v26(v20, AssociatedTypeWitness);
    if (v25)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v22 == v23)
      {
        break;
      }

LABEL_7:
      v27 = sub_2426ABBB0();
      v42(v20, AssociatedTypeWitness);
      v23 = 0;
      v22 = v27 < 0;
      if (v27 > 0)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v28 = v38;
  (*(v16 + 32))(v38, v37, v10);
  v29 = (*(*(v19 + 8) + 24))(v46, v10);
  v31 = v30;
  v32 = swift_getAssociatedTypeWitness();
  (*(*(v32 - 8) + 16))(v39, v31, v32);
  v29(v46, 0);
  return (v36)(v28, v10);
}

uint64_t sub_2426A4E58@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = CxxMutableRandomAccessCollection.subscript.read(v9, *a1, *(a1 + a2 - 16), *(a1 + a2 - 8));
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v6, AssociatedTypeWitness);
  return (v4)(v9, 0);
}

uint64_t (*CxxMutableRandomAccessCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x80uLL);
  }

  v10 = v9;
  *a1 = v9;
  v11 = *(*(*(a4 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v13 = *(v35 + 64);
  if (v8)
  {
    v32 = swift_coroFrameAlloc();
    v10[7] = v32;
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v32 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
    v10[7] = v32;
    v14 = malloc(v13);
  }

  v33 = v14;
  v10[8] = v14;
  v15 = swift_checkMetadataState();
  v10[9] = v15;
  v16 = *(*(v15 - 8) + 64);
  v31 = *(v15 - 8);
  if (v8)
  {
    v29 = swift_coroFrameAlloc();
    v10[10] = v29;
    v17 = swift_coroFrameAlloc();
    v10[11] = v17;
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v29 = malloc(*(*(v15 - 8) + 64));
    v10[10] = v29;
    v17 = malloc(v16);
    v10[11] = v17;
    v18 = malloc(v16);
  }

  v26 = v18;
  v10[12] = v18;
  (*(v11 + 32))(a3, v11);
  v10[4] = a2;
  v27 = a3;
  v19 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  sub_24265AAC0();
  sub_2426ABBE0();
  (*(v19 + 40))(v17, v33, v15, v19);
  v30 = *(v35 + 8);
  v30(v33, AssociatedTypeWitness);
  (*(v11 + 40))(v27, v11);
  v28 = v17;
  (*(v19 + 32))(v29, v17, v15, v19);
  v20 = *(v31 + 8);
  v10[13] = v20;
  v10[14] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v29, v15);
  v21 = sub_2426ABBD0();
  v22 = sub_2426ABBC0();
  if (v21)
  {
    if (v22 > 64)
    {
      v10[6] = 0;
      goto LABEL_17;
    }
  }

  else if (v22 >= 64)
  {
    v10[5] = 0;
LABEL_17:
    sub_2426ABBA0();
    v25 = sub_2426AB9E0();
    v30(v33, AssociatedTypeWitness);
    result = (v30)(v32, AssociatedTypeWitness);
    if ((v25 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    (*(v31 + 32))(v26, v28, v15);
    v10[15] = (*(*(AssociatedConformanceWitness + 8) + 24))(v10, v15);
    return sub_2426A978C;
  }

  v23 = sub_2426ABBB0();
  result = (v30)(v32, AssociatedTypeWitness);
  if (v23 > 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_2426A541C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 96);
  v3 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v7 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v8 = *(*a1 + 56);
  (*(*a1 + 120))(*a1, 0);
  v3(v2, v6);
  free(v2);
  free(v4);
  free(v5);
  free(v7);
  free(v8);

  free(v1);
}

uint64_t sub_2426A54CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = CxxMutableRandomAccessCollection.subscript.modify(v10, *a3, *(a3 + a4 - 16), *(a3 + a4 - 8));
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(v7, a1, AssociatedTypeWitness);
  return (v5)(v10, 0);
}

void (*CxxMutableRandomAccessCollection.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x80uLL);
  }

  v9 = v8;
  *a1 = v8;
  swift_getAssociatedTypeWitness();
  v29 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v11 = *(v34 + 64);
  if (v7)
  {
    v30 = swift_coroFrameAlloc();
    v9[7] = v30;
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v30 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
    v9[7] = v30;
    v12 = malloc(v11);
  }

  v31 = v12;
  v9[8] = v12;
  v13 = swift_checkMetadataState();
  v9[9] = v13;
  v32 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  if (v7)
  {
    v26 = swift_coroFrameAlloc();
    v9[10] = v26;
    v25 = swift_coroFrameAlloc();
    v9[11] = v25;
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v26 = malloc(*(v14 + 64));
    v9[10] = v26;
    v25 = malloc(v15);
    v9[11] = v25;
    v16 = malloc(v15);
  }

  v17 = v16;
  v9[12] = v16;
  (*(v29 + 40))(a3, v29);
  v9[4] = a2;
  swift_getAssociatedConformanceWitness();
  sub_24265AAC0();
  sub_2426ABBE0();
  (*(v10 + 40))(v17, v31, v32, v10);
  v28 = *(v34 + 8);
  v28(v31, AssociatedTypeWitness);
  (*(v29 + 48))(a3, v29);
  (*(v14 + 16))(v26, v17, v32);
  (*(v10 + 32))(v25, v26, v32, v10);
  v18 = *(v14 + 8);
  v9[13] = v18;
  v9[14] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v26, v32);
  v18(v25, v32);
  v19 = sub_2426ABBD0();
  v20 = sub_2426ABBC0();
  if (v19)
  {
    if (v20 > 64)
    {
      v9[6] = 0;
      goto LABEL_17;
    }
  }

  else if (v20 > 63)
  {
    v9[5] = 0;
LABEL_17:
    sub_2426ABBA0();
    v23 = sub_2426AB9E0();
    v28(v31, AssociatedTypeWitness);
    result = (v28)(v30, AssociatedTypeWitness);
    if ((v23 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_15:
    v9[15] = (*(*(AssociatedConformanceWitness + 8) + 24))(v9, v32);
    return sub_2426A5ABC;
  }

  v21 = sub_2426ABBB0();
  result = (v28)(v30, AssociatedTypeWitness);
  if (v21 > 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_2426A5ABC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 96);
  v3 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v7 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v8 = *(*a1 + 56);
  (*(*a1 + 120))(*a1, 0);
  v3(v2, v6);
  free(v2);
  free(v4);
  free(v5);
  free(v7);
  free(v8);

  free(v1);
}

uint64_t CxxMutableRandomAccessCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v34 = a2;
  v31 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v33 = v28 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v33;
  v9 = swift_checkMetadataState();
  v32 = *(v9 - 8);
  v10 = v28 - ((*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 40))(v36, a4);
  v37[0] = v34;
  swift_getAssociatedConformanceWitness();
  v28[1] = sub_24265AAC0();
  sub_2426ABBE0();
  (*(v5 + 40))(v10, v8, v9, v5);
  v11 = *(v7 + 8);
  v29 = v8;
  v34 = v7 + 8;
  v11(v8, AssociatedTypeWitness);
  v12 = v32;
  (*(a4 + 48))(v36, a4);
  v13 = *(v5 + 32);
  v35 = v10;
  v14 = v33;
  v13(v10, v10, v9, v5);
  v15 = *(v12 + 8);
  v15(v10, v9);
  LOBYTE(v10) = sub_2426ABBD0();
  v16 = sub_2426ABBC0();
  v18 = __OFSUB__(v16, 64);
  v17 = v16 - 64 < 0;
  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v16 <= 64)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v37[0] = 0;
    v19 = v29;
    sub_2426ABBA0();
    v20 = sub_2426AB9E0();
    v11(v19, AssociatedTypeWitness);
    v11(v14, AssociatedTypeWitness);
    if (v20)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v17 == v18)
      {
        break;
      }

LABEL_7:
      v21 = sub_2426ABBB0();
      v11(v14, AssociatedTypeWitness);
      v18 = 0;
      v17 = v21 < 0;
      if (v21 > 0)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v22 = v35;
  v23 = (*(*(AssociatedConformanceWitness + 8) + 24))(v37, v9);
  v25 = v24;
  v26 = swift_getAssociatedTypeWitness();
  (*(*(v26 - 8) + 40))(v25, v31, v26);
  v23(v37, 0);
  return (v15)(v22, v9);
}

uint64_t CxxSequenceBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 16))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t CxxSequenceBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CxxIterator.rawIterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t CxxIterator.rawIterator.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 40);

  return v6(v2 + v4, a1, AssociatedTypeWitness);
}

uint64_t CxxIterator.endIterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t CxxIterator.init(sequence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for CxxSequenceBox();
  *a4 = CxxSequenceBox.__allocating_init(_:)(a1);
  v8 = *(a3 + 24);
  type metadata accessor for CxxIterator();

  v8(a2, a3);
  (*(a3 + 32))(a2, a3);
}

uint64_t CxxIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v7 = &v17 - ((*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 36);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (sub_2426AB9F0())
  {
    v10 = swift_getAssociatedTypeWitness();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }

  else
  {
    v17 = (*(AssociatedConformanceWitness + 24))(v19, AssociatedTypeWitness, AssociatedConformanceWitness);
    v14 = v13;
    v15 = swift_getAssociatedTypeWitness();
    v16 = *(v15 - 8);
    (*(v16 + 16))(a2, v14, v15);
    v17(v19, 0);
    (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v18 + 40))(v3 + v8, v7, AssociatedTypeWitness);
    return (*(v16 + 56))(a2, 0, 1, v15);
  }
}

uint64_t CxxVector.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a1;
  v25 = a5;
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v10 = &v23 - ((*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v23 - ((*(*(sub_2426ABB80() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = &v23 - ((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v24 = *(v14 - 8);
  v15 = &v23 - ((*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 + 56);
  v26 = a6;
  v27 = a4;
  v16(v30, a4);
  (*(v12 + 16))(v13, v29, a3);
  sub_2426ABAC0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = v15;
  v29 = v14;
  v25 = AssociatedConformanceWitness;
  sub_2426ABB90();
  v18 = v23;
  v19 = *(v23 + 48);
  if (v19(v11, 1, AssociatedTypeWitness) != 1)
  {
    v20 = *(v18 + 32);
    v21 = (v18 + 8);
    do
    {
      v20(v10, v11, AssociatedTypeWitness);
      (*(v27 + 64))(v10, v30);
      (*v21)(v10, AssociatedTypeWitness);
      sub_2426ABB90();
    }

    while (v19(v11, 1, AssociatedTypeWitness) != 1);
  }

  return (*(v24 + 8))(v28, v29);
}

uint64_t sub_2426A6AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = a1;
  swift_getAssociatedTypeWitness();
  v9 = sub_2426ABB30();
  WitnessTable = swift_getWitnessTable();
  a6(&v12, a2, v9, a3, WitnessTable);
}

uint64_t _s3Cxx13unsafeBitCast_2toq_xn_q_mtRi_zRi0_zr0_lF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 16))(a4, a1, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t Optional<A>.pointee.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = &v18[-((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v12 = &v18[-((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v9, v4, a1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v8 + 8))(v9, a1);
    result = sub_2426ABC50();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v12, v9, v10);
    v13 = (*(a2 + 24))(v18, v10, a2);
    v15 = v14;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 16))(a3, v15, AssociatedTypeWitness);
    v13(v18, 0);
    return (*(v11 + 8))(v12, v10);
  }

  return result;
}

uint64_t Optional<A>.successor()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = &v14 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v12 = &v14 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v9, v4, a1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v8 + 8))(v9, a1);
    result = sub_2426ABC50();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v12, v9, v10);
    (*(a2 + 32))(v10, a2);
    (*(v11 + 8))(v12, v10);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  return result;
}

void (*sub_2426A712C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2426A71FC(v6, a2, *(a3 - 8));
  return sub_2426A71B4;
}

void sub_2426A71B4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_2426A71FC(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  Optional<A>.pointee.getter(a2, a3, v8);
  return sub_2426A72E8;
}

void sub_2426A72E8(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_2426A733C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v8 = *(v5 - 8);
  (*(v8 + 8))(v4, v5);
  v6 = *(v8 + 32);

  return v6(v4, a1, v5);
}

void *sub_2426A7424@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *(*(*(a3 + 16) - 8) + 72);
  if (v4)
  {
    v5 = *result - *a2;
    if (v5 != 0x8000000000000000 || v4 != -1)
    {
      *a4 = v5 / v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2426A749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v29 = AssociatedTypeWitness;
  v27 = &v25 - ((*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v26 = *(v9 - 8);
  v25 = &v25 - ((*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = &v25 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 + 104);
  v31 = a2;
  v13(a2, a3, a4);
  v14 = *(a4 + 152);
  v30 = v4;
  v14(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = sub_2426AB9F0();
  v17 = *(v11 + 8);
  v17(v12, v10);
  if (v16)
  {
    v17(v12, v10);
    v18 = swift_getAssociatedConformanceWitness();
    v19 = v25;
    (*(v18 + 24))(v31, v32, v9, v18);
    v20 = v27;
    (*(a4 + 112))(v19, a3, a4);
    (*(v28 + 8))(v20, v29);
    return (*(v26 + 8))(v19, v9);
  }

  else
  {
    v22 = swift_getAssociatedTypeWitness();
    (*(*(v22 - 8) + 8))(v31, v22);
    v23 = (*(AssociatedConformanceWitness + 24))(v33, v10, AssociatedConformanceWitness);
    v24 = swift_getAssociatedConformanceWitness();
    (*(v24 + 64))(v32, v9, v24);
    v23(v33, 0);
    return (v17)(v12, v10);
  }
}

uint64_t sub_2426A78C0(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a3;
  v83 = a2;
  v98 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v118 = *(AssociatedTypeWitness - 8);
  v81 = &v69 - ((*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = swift_getAssociatedTypeWitness();
  v114 = *(v80 - 8);
  v79 = &v69 - ((*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v79;
  v77 = v79;
  v76 = v79;
  v94 = swift_getAssociatedTypeWitness();
  v113 = *(v94 - 8);
  v112 = &v69 - ((*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = swift_getAssociatedTypeWitness();
  v7 = *(v93 - 8);
  v75 = &v69 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v75;
  v73 = v75;
  v8 = v75;
  v105 = swift_getAssociatedTypeWitness();
  v109 = *(v105 - 8);
  v92 = &v69 - ((*(v109 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v92;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = &v69 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11;
  (*(a5 + 136))(a4, a5);
  v96 = *(a5 + 144);
  v110 = (v7 + 16);
  v115 = (v7 + 8);
  v13 = (v10 + 8);
  v90 = a5 + 104;
  v89 = (v113 + 8);
  v88 = a5 + 152;
  v102 = (v109 + 8);
  v72 = (v114 + 8);
  v97 = a5 + 144;
  v71 = a5 + 112;
  v70 = (v118 + 8);
  v85 = (v10 + 32);
  v14 = a5;
  v116 = a4;
  v101 = v8;
  v87 = a5;
  v111 = v9;
  v103 = v11;
  v91 = v13;
  v86 = v11;
  v96(a4, a5);
  while (1)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = sub_2426AB9F0();
    v30 = v11;
    v31 = v29;
    v32 = *v13;
    (*v13)(v30, v9);
    if (v31)
    {
      return v32(v12, v9);
    }

    v109 = v32;
    v33 = *(AssociatedConformanceWitness + 24);
    v113 = AssociatedConformanceWitness + 24;
    v106 = v33;
    v34 = v33(v117, v9, AssociatedConformanceWitness);
    v35 = v8;
    v36 = v8;
    v37 = v93;
    v107 = *v110;
    v107(v35);
    v34(v117, 0);
    v38 = v116;
    v39 = swift_getAssociatedConformanceWitness();
    v40 = *(v39 + 32);
    v41 = v112;
    v108 = v39;
    v100 = (v39 + 32);
    v99 = v40;
    (v40)(v37);
    v114 = *v115;
    (v114)(v36, v37);
    v42 = v104;
    (*(v14 + 104))(v41, v38, v14);
    (*v89)(v41, v94);
    v43 = *(v14 + 152);
    v118 = AssociatedConformanceWitness;
    v44 = v92;
    v43(v38, v14);
    v45 = v105;
    v46 = v42;
    v47 = swift_getAssociatedConformanceWitness();
    v48 = *(v47 + 8);
    LOBYTE(v36) = sub_2426AB9F0();
    v49 = *v102;
    (*v102)(v44, v45);
    if (v36)
    {
      v49(v46, v45);
      v12 = v103;
      v15 = v111;
      v16 = v106;
      v17 = v106(v117, v111, v118);
      v18 = v74;
      v19 = v107;
      v107(v74);
      v17(v117, 0);
      v20 = v108;
      v99(v37, v108);
      (v114)(v18, v37);
      v21 = v16(v117, v15, v118);
      v22 = v75;
      v19(v75);
      v21(v117, 0);
      v23 = v79;
      (*(v20 + 56))(v37, v20);
      v24 = v114;
      (v114)(v22, v37);
      v25 = v101;
      (*(v20 + 24))(v112, v23, v37, v20);
      v26 = v81;
      v27 = v87;
      (*(v87 + 112))(v25, v116);
      (*v70)(v26, AssociatedTypeWitness);
      v24(v25, v37);
      v14 = v27;
      v9 = v111;
      goto LABEL_3;
    }

    v100 = v49;
    v50 = (*(v48 + 24))(v117, v45, v48);
    v51 = v108;
    v52 = *(v108 + 56);
    v53 = v77;
    v52(v37, v108);
    v50(v117, 0);
    v54 = v106(v117, v111, v118);
    v55 = v73;
    v107(v73);
    v54(v117, 0);
    v56 = v78;
    v52(v37, v51);
    (v114)(v55, v37);
    v57 = v76;
    v58 = v95;
    v83(v53, v56);
    if (v58)
    {
      break;
    }

    v95 = 0;
    v59 = *v72;
    v60 = v80;
    (*v72)(v56, v80);
    v59(v53, v60);
    v61 = v47;
    v62 = *(v47 + 24);
    v63 = v104;
    v64 = v105;
    v65 = v62(v117, v105, v61);
    (*(v51 + 64))(v57, v37, v51);
    v65(v117, 0);
    v100(v63, v64);
    v14 = v87;
    v9 = v111;
    v12 = v103;
LABEL_3:
    v11 = v86;
    (*(v118 + 32))(v9);
    v13 = v91;
    v109(v12, v9);
    (*v85)(v12, v11, v9);
    v8 = v101;
    v96(v116, v14);
  }

  v67 = *v72;
  v68 = v80;
  (*v72)(v56, v80);
  v67(v53, v68);
  v100(v104, v105);
  return v109(v103, v111);
}

uint64_t sub_2426A85D0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2426A860C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2426A8648(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2426A869C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2426A86D8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2426A8714(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

__n128 sub_2426A8780(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2426A8A1C()
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

uint64_t sub_2426A8AE4()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_2426A8B98(void *a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v7 + v6;
  v9 = ((((-9 - v6) | v6) - (v7 + v6)) | v6) - v7;
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && v9 >= 0xFFFFFFFFFFFFFFE7)
  {
    v13 = AssociatedTypeWitness;
    *a1 = *a2;
    v14 = (a2 + v6 + 8) & ~v6;
    v15 = *(v5 + 16);

    v15((a1 + v6 + 8) & ~v6, v14, v13);
    v15((v8 + ((a1 + v6 + 8) & ~v6)) & ~v6, (v8 + v14) & ~v6, v13);
  }

  else
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t sub_2426A8CFC(uint64_t a1)
{

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v8 = v3 + 8;
  v9 = *(v3 + 8);
  v4 = *(v3 + 80);
  v5 = (a1 + v4 + 8) & ~v4;
  v9(v5, AssociatedTypeWitness);
  v6 = (*(v8 + 56) + v4 + v5) & ~v4;

  return (v9)(v6, AssociatedTypeWitness);
}

void *sub_2426A8DD4(void *a1, void *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 16);
  v7 = v5 + 16;
  v8 = *(v5 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;

  v6(v9, v10, AssociatedTypeWitness);
  v6((*(v7 + 48) + v8 + v9) & ~v8, (*(v7 + 48) + v8 + v10) & ~v8, AssociatedTypeWitness);
  return a1;
}

void *sub_2426A8EBC(void *a1, void *a2)
{
  *a1 = *a2;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 24);
  v7 = v5 + 24;
  v8 = *(v5 + 80);
  v9 = (a2 + v8 + 8) & ~v8;
  v6((a1 + v8 + 8) & ~v8, v9, AssociatedTypeWitness);
  v6((*(v7 + 40) + v8 + ((a1 + v8 + 8) & ~v8)) & ~v8, (*(v7 + 40) + v8 + v9) & ~v8, AssociatedTypeWitness);
  return a1;
}

void *sub_2426A8FB0(void *a1, void *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 32);
  v7 = v5 + 32;
  v8 = *(v5 + 80);
  v9 = (a2 + v8 + 8) & ~v8;
  v6((a1 + v8 + 8) & ~v8, v9, AssociatedTypeWitness);
  v6((*(v7 + 32) + v8 + ((a1 + v8 + 8) & ~v8)) & ~v8, (*(v7 + 32) + v8 + v9) & ~v8, AssociatedTypeWitness);
  return a1;
}

void *sub_2426A9090(void *a1, void *a2)
{
  *a1 = *a2;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 40);
  v7 = v5 + 40;
  v8 = *(v5 + 80);
  v9 = (a2 + v8 + 8) & ~v8;
  v6((a1 + v8 + 8) & ~v8, v9, AssociatedTypeWitness);
  v6((*(v7 + 24) + v8 + ((a1 + v8 + 8) & ~v8)) & ~v8, (*(v7 + 24) + v8 + v9) & ~v8, AssociatedTypeWitness);
  return a1;
}

uint64_t sub_2426A917C(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = ((v9 + v8 + ((v8 + 8) & ~v8)) & ~v8) + v9;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v7 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v6 & 0x80000000) != 0)
      {
        v17 = *(v5 + 48);

        return v17((a1 + v8 + 8) & ~v8);
      }

      else
      {
        v16 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v16) = -1;
        }

        return (v16 + 1);
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_2426A9360(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((*(v6 + 64) + v8 + ((v8 + 8) & ~v8)) & ~v8) + *(v6 + 64);
  if (a3 <= v9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
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
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = ~v9 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_47:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v11)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v18 = *(v6 + 56);

    v18(&a1[v8 + 8] & ~v8, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v17 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v17 = (a2 - 1);
    }

    *a1 = v17;
  }
}

void std::__optional_copy_base<ctb::MLSFileTransfer,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](void **a1)
{
  if (*(a1 + 23) < 0)
  {
    OUTLINED_FUNCTION_0(a1);
  }
}

void std::__optional_copy_base<ctb::SIPConferenceInfo::ReferredInfo,false>::__optional_copy_base[abi:ne200100](void **a1)
{
  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    OUTLINED_FUNCTION_0(a1);
  }
}

void std::__optional_copy_base<ctb::ProvisioningConfiguration::Token,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__optional_copy_base<ctb::CPMGroupManagement,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}