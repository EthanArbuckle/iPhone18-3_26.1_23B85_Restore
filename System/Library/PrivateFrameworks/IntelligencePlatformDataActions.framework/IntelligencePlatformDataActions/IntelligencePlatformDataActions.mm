uint64_t Address.thoroughfare.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_254FBF6B0();
}

uint64_t Address.streetName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_254FBF6B0();
}

uint64_t Address.locality.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_254FBF6B0();
}

uint64_t Address.city.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_254FBF6B0();
}

uint64_t Address.administrativeArea.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return sub_254FBF6B0();
}

uint64_t Address.country.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return sub_254FBF6B0();
}

uint64_t Address.postalCode.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return sub_254FBF6B0();
}

uint64_t Address.isoCountryCode.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return sub_254FBF6B0();
}

uint64_t sub_254FBED08(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 128))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254FBED5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_254FBEE04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254FBEE24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_254FBEE70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_254FBF2F4();
  *a1 = result;
  return result;
}

uint64_t sub_254FBEE98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_254FF1F24();

  *a2 = v5;
  return result;
}

uint64_t sub_254FBEEE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_254FBEF0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_254FBEF10(uint64_t a1)
{
  v2 = sub_254FBF010(&qword_27F76C7F0);
  v3 = sub_254FBF010(&qword_27F76C7F8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_254FBF010(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BMUseCaseIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254FBF06C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_254FBF0AC();
}

uint64_t sub_254FBF0AC()
{
  v0 = sub_254FF1F54();
  v2 = v1;
  if (v0 == sub_254FF1F54() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_254FF2364();
  }

  return v5 & 1;
}

uint64_t sub_254FBF130()
{
  sub_254FF1F54();
  sub_254FF1FC4();
}

uint64_t sub_254FBF184()
{
  sub_254FF1F54();
  sub_254FF2404();
  sub_254FF1FC4();
  v0 = sub_254FF2434();

  return v0;
}

uint64_t sub_254FBF1FC(uint64_t a1, id *a2)
{
  result = sub_254FF1F34();
  *a2 = 0;
  return result;
}

uint64_t sub_254FBF274(uint64_t a1, id *a2)
{
  v3 = sub_254FF1F44();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_254FBF2F4()
{
  sub_254FF1F54();
  v0 = sub_254FF1F24();

  return v0;
}

uint64_t sub_254FBF32C()
{
  v0 = sub_254FF1F54();
  v1 = MEMORY[0x259C31700](v0);

  return v1;
}

uint64_t sub_254FBF370(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254FBF390(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

__n128 sub_254FBF3CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_254FBF3E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254FBF400(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_254FBF448(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 200))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254FBF49C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_254FBF53C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254FBF55C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_254FBF5E8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_254FBF5FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254FBF61C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

void sub_254FBF65C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void static AppUsageAction.listApplications(queryService:)(uint64_t *a1)
{
  v3 = sub_254FF1EB4();
  v4 = sub_254FC583C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_254FC590C();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v73 - v13;
  v15 = sub_254FC0048(&qword_27F76C838, &unk_254FF30E0);
  v16 = sub_254FC583C(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v96 = (&v73 - v21);
  v22 = sub_254FF1454();
  v23 = sub_254FC5824(v22, &v96);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_254FC5888();
  sub_254FC5974(v28);
  if (*a1)
  {
    v29 = *a1;
  }

  else
  {
    if (qword_27F76C790 != -1)
    {
      sub_254FC5850();
      swift_once();
    }

    v29 = qword_27F76C9A0;
  }

  os_unfair_lock_lock((v29 + 24));
  sub_254FC80C0((v29 + 16), &v87);
  if (v1)
  {
    os_unfair_lock_unlock((v29 + 24));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock((v29 + 24));
  sub_254FC59F0();
  if (!v91)
  {
    sub_254FC538C(&v90, &qword_27F76C840, &qword_254FF4810);
LABEL_15:
    sub_254FF1D14();
    v43 = sub_254FF1EA4();
    v44 = sub_254FF2174();
    if (os_log_type_enabled(v43, v44))
    {
      sub_254FC5B38();
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_254FBD000, v43, v44, "AppUsageAction cannot be executed: SQL executor is nil", v45, 2u);
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    (*(v6 + 8))(v11, v3);
    sub_254FC389C();
    sub_254FC5A48();
    swift_allocError();
    *v46 = 0;
    swift_willThrow();

    return;
  }

  sub_254FC38F0(&v90, &v93);
  os_unfair_lock_lock((v29 + 24));
  sub_254FC83D0((v29 + 16), &v84);
  os_unfair_lock_unlock((v29 + 24));
  v87 = v84;
  v88 = v85;
  v89 = v86;
  if (!*(&v85 + 1))
  {
    sub_254FC538C(&v87, &qword_27F76C850, &qword_254FF30F0);
    sub_254FC49C4(&v93);
    goto LABEL_15;
  }

  v77 = v18;
  v78 = v15;
  sub_254FC38F0(&v87, &v90);
  v30 = v92;
  sub_254FC3908(&v90, v91);
  sub_254FC5AF4(v30);
  v31 = sub_254FC5DE0();
  v32(v31);
  v75 = v25;
  v33 = v94;
  v34 = v95;
  sub_254FC3908(&v93, v94);
  v35 = *(v34 + 8);
  v76 = "lthcare";
  v35(&v84, 0xD000000000000065, 0x8000000254FF4F20, v33, v34);
  if (*(&v85 + 1))
  {
    sub_254FC38F0(&v84, &v87);
    v75 += 4;
    v76 = MEMORY[0x277D84F90];
    while (1)
    {
      while (1)
      {
        v47 = *(&v88 + 1);
        v48 = v89;
        sub_254FC4A10(&v87, *(&v88 + 1));
        sub_254FC5AF4(v48);
        v50 = v49(v47, v48);
        if (!v50)
        {
          sub_254FC01A0(v76);

          sub_254FC49C4(&v87);
          sub_254FC49C4(&v90);
          sub_254FC49C4(&v93);
          return;
        }

        v81 = 0xD000000000000010;
        v82 = 0x8000000254FF4F90;
        sub_254FC5EA8();
        if (*(v50 + 16))
        {
          v51 = sub_254FC4AC4(&v84);
          if (v52)
          {
            break;
          }
        }

LABEL_28:

        sub_254FC4B08(&v84);
      }

      sub_254FC4B5C(*(v50 + 56) + 32 * v51, v83);
      sub_254FC4B08(&v84);
      if (swift_dynamicCast())
      {
        v81 = 1701667182;
        v82 = 0xE400000000000000;
        sub_254FC5EA8();
        if (!*(v50 + 16) || (v53 = sub_254FC4AC4(&v84), (v54 & 1) == 0))
        {

          goto LABEL_28;
        }

        sub_254FC4B5C(*(v50 + 56) + 32 * v53, v83);
        sub_254FC4B08(&v84);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_27;
        }

        v74 = v81;
        v55 = v82;
        v56 = v79;
        sub_254FF1464();
        v57 = *(v78 + 48);
        v58 = v96;
        *v96 = v74;
        v58[1] = v55;
        (*v75)(v58 + v57, v56, v80);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v66 = sub_254FC58E4(isUniquelyReferenced_nonNull_native, v60, v61, v76);
          v76 = sub_254FC394C(v66, v67, v68, v69);
        }

        v63 = *(v76 + 16);
        v62 = *(v76 + 24);
        if (v63 >= v62 >> 1)
        {
          v70 = sub_254FC589C(v62);
          v76 = sub_254FC394C(v70, v71, v72, v76);
        }

        *(v76 + 16) = v63 + 1;
        sub_254FC58F8(&v95);
        v65 = *(v64 + 72);
        sub_254FC57C8();
      }

      else
      {
LABEL_27:
      }
    }
  }

  sub_254FC538C(&v84, &qword_27F76C858, &qword_254FF30F8);
  sub_254FF1D14();
  v36 = sub_254FF1EA4();
  v37 = sub_254FF2174();
  v38 = sub_254FC5D04();
  if (os_log_type_enabled(v38, v39))
  {
    sub_254FC5E5C();
    v40 = swift_slowAlloc();
    sub_254FC5E50();
    v41 = swift_slowAlloc();
    *&v87 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_254FC4454(0xD000000000000065, v76 | 0x8000000000000000, &v87);
    _os_log_impl(&dword_254FBD000, v36, v37, "Query (%s) cannot be executed!", v40, 0xCu);
    sub_254FC49C4(v41);
    sub_254FC592C();
    MEMORY[0x259C32150]();
    sub_254FC592C();
    MEMORY[0x259C32150]();
  }

  (*(v6 + 8))(v14, v3);
  sub_254FC389C();
  sub_254FC5A48();
  swift_allocError();
  *v42 = 2;
  swift_willThrow();

  sub_254FC49C4(&v90);
  sub_254FC49C4(&v93);
}

double sub_254FBFF80@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_254FC4A60(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_254FC4B5C(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_254FBFFE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_254FC4AC4(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_254FC4B5C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_254FC0048(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_254FC0090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_254FC4A60();
    if (v5)
    {
      v6 = (*(a3 + 56) + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
    }
  }

  return sub_254FBF6B0();
}

uint64_t sub_254FC00E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (sub_254FC4A60(), (v4 & 1) != 0))
  {
    v5 = *(a1 + 56);
    v6 = type metadata accessor for SportsAction.CacheEntry();
    sub_254FC5864(v6);
    v8 = *(v7 + 72);
    sub_254FC56BC();
    v9 = a2;
    v10 = 0;
    v11 = v6;
  }

  else
  {
    v11 = type metadata accessor for SportsAction.CacheEntry();
    v9 = a2;
    v10 = 1;
  }

  return sub_254FC4BB8(v9, v10, 1, v11);
}

uint64_t sub_254FC01A0(uint64_t a1)
{
  v16 = sub_254FC0048(&qword_27F76C838, &unk_254FF30E0);
  v2 = *(v16 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v4 = sub_254FC0048(&qword_27F76C900, &qword_254FF3900);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v17 = MEMORY[0x277D84F90];
    sub_254FC4D98(0, v7, 0);
    v8 = v17;
    v9 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_254FC5770();
      swift_dynamicCast();
      v12 = *(v17 + 16);
      v11 = *(v17 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_254FC4D98(v11 > 1, v12 + 1, 1);
      }

      *(v17 + 16) = v12 + 1;
      v13 = v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v14 = *(v5 + 72);
      sub_254FC57C8();
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void static AppUsageAction.listUserDevices(queryService:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_254FF1EB4();
  v5 = sub_254FC583C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    if (qword_27F76C790 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_4;
  }

  v12 = *a1;
  while (1)
  {

    os_unfair_lock_lock((v12 + 24));
    sub_254FC80C0((v12 + 16), &v49);
    if (v2)
    {
LABEL_38:
      os_unfair_lock_unlock((v12 + 24));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v12 + 24));
    v52 = v49;
    v53 = v50;
    v54 = v51;
    v13 = *(&v50 + 1);
    sub_254FC538C(&v52, &qword_27F76C840, &qword_254FF4810);
    if (!v13)
    {
      break;
    }

    os_unfair_lock_lock((v12 + 24));
    sub_254FC83D0((v12 + 16), &v46);
    os_unfair_lock_unlock((v12 + 24));
    v49 = v46;
    v50 = v47;
    v51 = v48;
    if (!*(&v47 + 1))
    {
      sub_254FC538C(&v49, &qword_27F76C850, &qword_254FF30F0);
      break;
    }

    sub_254FC38F0(&v49, &v52);
    v14 = *(&v53 + 1);
    v15 = v54;
    sub_254FC3908(&v52, *(&v53 + 1));
    sub_254FC5AF4(v15);
    v16(v14, v15);
    v4 = 0;
    v17 = v54;
    sub_254FC3908(&v52, *(&v53 + 1));
    v18 = *(v17 + 16);
    v19 = sub_254FC5E04();
    v21 = v20(v19);
    v26 = v21;
    v27 = *(v21 + 64);
    v45 = v21 + 64;
    v28 = 1 << *(v21 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v11 = v29 & v27;
    v44 = (v28 + 63) >> 6;

    v31 = 0;
    v2 = MEMORY[0x277D84F90];
    v55 = v30;
    while (v11)
    {
LABEL_21:
      v33 = *(*(v26 + 56) + ((v31 << 9) | (8 * __clz(__rbit64(v11)))));
      v34 = *(v33 + 16);
      v7 = *(v2 + 16);
      if (__OFADD__(v7, v34))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v7 + v34 > *(v2 + 24) >> 1)
      {
        sub_254FC3A44();
        v2 = v35;
      }

      v11 &= v11 - 1;
      if (*(v33 + 16))
      {
        v7 = *(v2 + 16);
        v36 = (*(v2 + 24) >> 1) - v7;
        v37 = *(type metadata accessor for Device(0) - 8);
        if (v36 < v34)
        {
          goto LABEL_36;
        }

        v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v39 = *(v37 + 72);
        swift_arrayInitWithCopy();

        v26 = v55;
        if (v34)
        {
          v40 = *(v2 + 16);
          v41 = __OFADD__(v40, v34);
          v42 = v40 + v34;
          if (v41)
          {
            goto LABEL_37;
          }

          *(v2 + 16) = v42;
        }
      }

      else
      {

        v26 = v55;
        if (v34)
        {
          __break(1u);
LABEL_32:

          sub_254FC49C4(&v52);
          return;
        }
      }
    }

    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v44)
      {
        goto LABEL_32;
      }

      v11 = *(v45 + 8 * v32);
      ++v31;
      if (v11)
      {
        v31 = v32;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_34:
    sub_254FC5850();
    swift_once();
LABEL_4:
    v12 = qword_27F76C9A0;
  }

  sub_254FF1D14();
  v22 = sub_254FF1EA4();
  v23 = sub_254FF2174();
  if (os_log_type_enabled(v22, v23))
  {
    sub_254FC5B38();
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_254FBD000, v22, v23, "AppUsageAction cannot be executed: SQL executor is nil", v24, 2u);
    sub_254FC592C();
    MEMORY[0x259C32150]();
  }

  (*(v7 + 8))(v11, v4);
  sub_254FC389C();
  sub_254FC5A48();
  swift_allocError();
  *v25 = 0;
  swift_willThrow();
}

void static AppUsageAction.listPeople(queryService:)(uint64_t *a1)
{
  v267 = *MEMORY[0x277D85DE8];
  v3 = sub_254FF1EB4();
  v4 = sub_254FC5824(v3, &v272);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_254FC590C();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v214 - v13;
  v15 = type metadata accessor for DeviceUser(0);
  v16 = sub_254FC583C(v15);
  v238 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_254FC590C();
  v244[1] = v20 - v21;
  MEMORY[0x28223BE20](v22);
  sub_254FC5974(v214 - v23);
  v24 = sub_254FC0048(&qword_27F76C860, &qword_254FF3100);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  sub_254FC5974(v214 - v26);
  v27 = sub_254FC0048(&qword_27F76C868, &qword_254FF3108);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  sub_254FC58C0(v214 - v29);
  v30 = sub_254FF13D4();
  v31 = sub_254FC5824(v30, &v259);
  v250 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_254FC5888();
  sub_254FC58C0(v35);
  v36 = sub_254FF1444();
  v37 = sub_254FC5824(v36, &v263);
  v249 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_254FC5888();
  sub_254FC58C0(v41);
  v42 = sub_254FF1424();
  v43 = sub_254FC5824(v42, &v267);
  v248 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  sub_254FC5888();
  sub_254FC58C0(v47);
  v48 = sub_254FF1434();
  v49 = sub_254FC5824(v48, v266);
  v251 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  sub_254FC590C();
  v55 = v53 - v54;
  MEMORY[0x28223BE20](v56);
  sub_254FC58C0(v214 - v57);
  v58 = sub_254FF1F94();
  v59 = sub_254FC5824(v58, &v261 + 8);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  sub_254FC5888();
  sub_254FC58C0(v64);
  v65 = sub_254FF1394();
  v66 = sub_254FC5824(v65, v269);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  sub_254FC590C();
  v241 = v71 - v72;
  MEMORY[0x28223BE20](v73);
  sub_254FC5974(v214 - v74);
  v75 = *a1;
  v244[2] = v55;
  if (v75)
  {
    v76 = v75;
  }

  else
  {
    if (qword_27F76C790 != -1)
    {
      sub_254FC5850();
      swift_once();
    }

    v76 = qword_27F76C9A0;
  }

  os_unfair_lock_lock((v76 + 24));
  sub_254FC80C0((v76 + 16), &v258);
  if (v1)
  {
    goto LABEL_123;
  }

  os_unfair_lock_unlock((v76 + 24));
  sub_254FC59F0();
  if (!v262)
  {
    sub_254FC538C(&v261, &qword_27F76C840, &qword_254FF4810);
LABEL_16:
    sub_254FF1D14();
    v87 = sub_254FF1EA4();
    v88 = sub_254FF2174();
    if (os_log_type_enabled(v87, v88))
    {
      sub_254FC5B38();
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_254FBD000, v87, v88, "AppUsageAction cannot be executed: SQL executor is nil", v89, 2u);
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    (*(v6 + 8))(v11, v252);
    sub_254FC389C();
    sub_254FC5A48();
    swift_allocError();
    *v90 = 0;
    swift_willThrow();

    goto LABEL_19;
  }

  sub_254FC38F0(&v261, &v264);
  os_unfair_lock_lock((v76 + 24));
  sub_254FC83D0((v76 + 16), &v258);
  os_unfair_lock_unlock((v76 + 24));
  sub_254FC59F0();
  v77 = v262;
  sub_254FC538C(&v261, &qword_27F76C850, &qword_254FF30F0);
  if (!v77)
  {
    sub_254FC49C4(&v264);
    goto LABEL_16;
  }

  v232 = v15;
  v233 = v76;
  v79 = v266[0];
  v78 = v266[1];
  sub_254FC3908(&v264, v266[0]);
  (*(v78 + 8))(&v258, 0xD00000000000022FLL, 0x8000000254FF4FB0, v79, v78);
  if (!*(&v259 + 1))
  {
    sub_254FC538C(&v258, &qword_27F76C858, &qword_254FF30F8);
    sub_254FF1D14();
    v80 = sub_254FF1EA4();
    v81 = sub_254FF2174();
    v82 = sub_254FC5D04();
    if (os_log_type_enabled(v82, v83))
    {
      sub_254FC5E5C();
      v84 = swift_slowAlloc();
      sub_254FC5E50();
      v85 = swift_slowAlloc();
      *&v261 = v85;
      *v84 = 136315138;
      *(v84 + 4) = sub_254FC4454(0xD00000000000022FLL, 0x8000000254FF4FB0, &v261);
      _os_log_impl(&dword_254FBD000, v80, v81, "Query (%s) cannot be executed!", v84, 0xCu);
      sub_254FC49C4(v85);
      sub_254FC592C();
      MEMORY[0x259C32150]();
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    (*(v6 + 8))(v14, v252);
    sub_254FC389C();
    sub_254FC5A48();
    swift_allocError();
    *v86 = 2;
    swift_willThrow();
    sub_254FC5DA4();
    goto LABEL_13;
  }

  sub_254FC38F0(&v258, &v261);
  sub_254FC5A3C();
  v231 = v92;
  v229 = (v61 + 8);
  v222 = *MEMORY[0x277CB9CD0];
  v228 = v68 + 104;
  v248 += 104;
  v223 = *MEMORY[0x277CB9CC8];
  v230 = v251 + 32;
  v227 = v68 + 16;
  v226 = v250 + 104;
  LODWORD(v250) = *MEMORY[0x277CB9D48];
  v225 = (v249 + 16);
  v249 += 8;
  v93 = (v68 + 8);
  v94 = MEMORY[0x277D837D0];
  v224 = *MEMORY[0x277CB9CF8];
  v252 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v95 = v262;
        v96 = v263;
        sub_254FC4A10(&v261, v262);
        sub_254FC5AF4(v96);
        v76 = v97(v95, v96);
        if (!v76)
        {
          sub_254FC5DA4();
          sub_254FC49C4(&v261);
          sub_254FC49C4(&v264);
          sub_254FC5CB0();
          goto LABEL_19;
        }

        v254 = 0x696669746E656469;
        v255 = 0xEA00000000007265;
        sub_254FF21F4();
        if (*(v76 + 16))
        {
          v98 = sub_254FC5F20();
          if (v99)
          {
            sub_254FC5BB4(v98);
            sub_254FC4B08(&v258);
            sub_254FC5A80();
            if ((sub_254FC5ACC() & 1) == 0)
            {
              goto LABEL_45;
            }

            sub_254FC5CC8(0x656D614E6C6C7566);
            sub_254FC5874(0xE800000000000000);
            sub_254FF21F4();
            if (*(v76 + 16))
            {
              v100 = sub_254FC5F20();
              if (v101)
              {
                break;
              }
            }
          }
        }

LABEL_40:

        sub_254FC4B08(&v258);
      }

      sub_254FC5BB4(v100);
      sub_254FC4B08(&v258);
      sub_254FC5A80();
      if ((sub_254FC5ACC() & 1) == 0)
      {
        goto LABEL_45;
      }

      v221 = v254;
      v102 = v255;
      sub_254FC5CC8(0x44495344746C61);
      sub_254FC5874(0xE700000000000000);
      sub_254FF21F4();
      if (!*(v76 + 16))
      {
        goto LABEL_41;
      }

      v103 = sub_254FC5F20();
      if ((v104 & 1) == 0)
      {
        goto LABEL_41;
      }

      sub_254FC5BB4(v103);
      sub_254FC4B08(&v258);
      sub_254FC5A80();
      if (sub_254FC5ACC())
      {
        break;
      }

LABEL_44:

LABEL_45:
    }

    v219 = v254;
    v220 = v255;
    sub_254FC5CC8(0xD000000000000011);
    sub_254FC5874(v231);
    sub_254FF21F4();
    if (!*(v76 + 16) || (v105 = sub_254FC5F20(), (v106 & 1) == 0))
    {

      sub_254FC5C74();
LABEL_41:

      goto LABEL_40;
    }

    sub_254FC5BB4(v105);
    sub_254FC4B08(&v258);
    sub_254FC5A80();
    if ((sub_254FC5ACC() & 1) == 0)
    {
      sub_254FC5C74();

      goto LABEL_44;
    }

    v217 = v102;
    v216 = v93;
    v107 = v239;
    sub_254FF1F84();
    sub_254FC5C3C();
    v108 = sub_254FF1F64();
    v110 = v109;

    v111 = *v229;
    (*v229)(v107, v240);
    v112 = v94;
    if (v110 >> 60 != 15)
    {
      v113 = v111;
      v114 = objc_opt_self();
      v115 = v108;
      v116 = v114;
      v218 = v115;
      v117 = sub_254FF1534();
      *&v258 = 0;
      v118 = [v116 JSONObjectWithData:v117 options:0 error:&v258];

      if (!v118)
      {
        v208 = v258;
        sub_254FC5C74();

        sub_254FC5CB0();

        sub_254FF14F4();

        swift_willThrow();
        sub_254FC5D34();
        sub_254FC5DA4();
LABEL_115:
        sub_254FC49C4(&v261);
LABEL_13:
        sub_254FC49C4(&v264);
LABEL_19:
        v91 = *MEMORY[0x277D85DE8];
        return;
      }

      v119 = v258;
      sub_254FF21B4();
      swift_unknownObjectRelease();
      sub_254FC0048(&qword_27F76C880, &qword_254FF3120);
      sub_254FC5C2C();
      if (swift_dynamicCast())
      {
        if (*(v256[0] + 16))
        {
          v121 = *(v256[0] + 32);
          v120 = *(v256[0] + 40);

          sub_254FC5D34();
          v122 = v246;
          *v246 = v121;
          v122[1] = v120;
          sub_254FC5AE8(&v255);
          v123();
          v111 = v113;
          v112 = MEMORY[0x277D837D0];
          goto LABEL_49;
        }
      }

      sub_254FC5D34();
      v111 = v113;
      v112 = MEMORY[0x277D837D0];
    }

    v124 = v246;
    v120 = v220;
    *v246 = v219;
    v124[1] = v120;
    sub_254FC5AE8(&v255);
    v125();

LABEL_49:
    v253 = MEMORY[0x277D84F90];
    sub_254FC5CC8(0x6D754E656E6F6870);
    sub_254FC5874(0xEC00000073726562);
    sub_254FF21F4();
    sub_254FC5D50();
    sub_254FC4B08(&v258);
    if (!v257)
    {
      sub_254FC538C(v256, &qword_27F76C870, &qword_254FF3110);
      goto LABEL_67;
    }

    sub_254FC5A80();
    if (swift_dynamicCast())
    {
      sub_254FC5B0C();
      sub_254FC5C3C();
      v126 = sub_254FF1F64();
      sub_254FC5E68(v126);
      v127 = sub_254FC5B44();
      (v111)(v127);
      if (v120 >> 60 != 15)
      {
        break;
      }
    }

LABEL_67:
    sub_254FC5CC8(0x6464416C69616D65);
    sub_254FC5874(0xEE00736573736572);
    sub_254FF21F4();
    sub_254FC5D50();
    sub_254FC4B08(&v258);
    if (!v257)
    {
      sub_254FC538C(v256, &qword_27F76C870, &qword_254FF3110);
      goto LABEL_85;
    }

    sub_254FC5A80();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_85;
    }

    sub_254FC5B0C();
    sub_254FC5C3C();
    v143 = sub_254FF1F64();
    sub_254FC5E68(v143);
    v144 = sub_254FC5B44();
    (v111)(v144);
    if (v120 >> 60 == 15)
    {
      goto LABEL_85;
    }

    v145 = v120;
    objc_opt_self();
    sub_254FC5A30();
    v146 = sub_254FF1534();
    *&v258 = 0;
    v147 = sub_254FC5E88(v146, sel_JSONObjectWithData_options_error_);

    if (!v147)
    {
      v212 = v258;
      sub_254FC5CB0();

      sub_254FC5C74();

      sub_254FF14F4();

      swift_willThrow();
      v210 = sub_254FC5A30();
      v211 = v145;
LABEL_120:
      sub_254FC4BE0(v210, v211);
      sub_254FC5DA4();
      sub_254FC5AE8(v245);
      v213(v246, v247);
      goto LABEL_115;
    }

    v148 = v258;
    sub_254FF21B4();
    swift_unknownObjectRelease();
    sub_254FC0048(&qword_27F76C878, &qword_254FF3118);
    sub_254FC5C2C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v179 = sub_254FC5A30();
      sub_254FC4BE0(v179, v145);
      goto LABEL_85;
    }

    sub_254FC5B60(v244);
    v215 = MEMORY[0x277D84F90];
    while (v218 != v112)
    {
      if (v112 >= v147[2])
      {
        goto LABEL_122;
      }

      if (*(v147[v112 + 4] + 16))
      {
        v149 = v147[v112 + 4];

        v150 = sub_254FC4A60();
        if ((v151 & 1) == 0)
        {

          goto LABEL_78;
        }

        sub_254FC5B88(v150);

        sub_254FC5CBC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_254FC5E1C();
          sub_254FC58E4(v155, v156, v157, v158);
          sub_254FC3D0C();
          sub_254FC5E10(v159);
        }

        sub_254FC5B7C();
        v154 = *(v152 + 16);
        v153 = *(v152 + 24);
        if (v154 >= v153 >> 1)
        {
          sub_254FC5A04(v153);
          sub_254FC5E1C();
          sub_254FC3D0C();
          sub_254FC5E10(v160);
        }

        sub_254FC5980();
      }

      else
      {
LABEL_78:
        ++v112;
      }
    }

    sub_254FC5B7C();
    v218 = *(v191 + 16);
    if (v218)
    {
      sub_254FC5C4C(MEMORY[0x277D84F90]);
      sub_254FC5BD0();
      sub_254FC5B7C();
      do
      {
        v192 = sub_254FC5938();
        v193(v192);

        sub_254FC5CEC(v265);
        sub_254FF1414();
        sub_254FC5E3C();
        if (v184)
        {
          v200 = sub_254FC5A04(v194);
          sub_254FC5EC8(v200);
          v195 = v147;
          v147 = v258;
        }

        v147[2] = v195;
        sub_254FC58F8(&v271);
        sub_254FC5E28(v196);
        sub_254FC5C80();
        v197();
        sub_254FC5CD4();
        *(v199 - 256) = v198;
      }

      while (!v189);
      sub_254FC5CBC();
    }

    else
    {
      sub_254FC5CBC();

      v147 = MEMORY[0x277D84F90];
    }

    sub_254FC5264(v147);
    v203 = sub_254FC58D0();
    sub_254FC4BE0(v203, v204);
LABEL_85:
    strcpy(v256, "isCurrentUser");
    HIWORD(v256[1]) = -4864;
    sub_254FF21F4();
    sub_254FC5D50();

    sub_254FC4B08(&v258);
    if (v257)
    {
      sub_254FC5A80();
      v161 = swift_dynamicCast();
      v162 = v217;
      if (v161)
      {
        LODWORD(v218) = v254;
      }

      else
      {
        LODWORD(v218) = 0;
      }
    }

    else
    {
      sub_254FC538C(v256, &qword_27F76C870, &qword_254FF3110);
      LODWORD(v218) = 0;
      v162 = v217;
    }

    sub_254FC5AE8(&v254);
    v163(v241, v246, v247);
    v164 = v234;
    *v234 = v221;
    v164[1] = v162;
    sub_254FC5AE8(&v253);
    v165(v164, v224, v235);
    sub_254FC2110(v253, v236);
    v166 = sub_254FF1474();
    sub_254FC4BB8(v237, 1, 1, v166);
    v167 = v242;
    sub_254FF13A4();
    v168 = v244[0];
    (*v225)(v244[0] + *(v232 + 20), v167, v243);
    v169 = v220;
    *v168 = v219;
    v168[1] = v169;
    sub_254FC56BC();
    v170 = v252;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v170 = sub_254FC3B20(0, *(v170 + 16) + 1, 1, v170);
    }

    v93 = v216;
    v172 = *(v170 + 16);
    v171 = *(v170 + 24);
    if (v172 >= v171 >> 1)
    {
      v205 = sub_254FC589C(v171);
      v170 = sub_254FC3B20(v205, v206, v207, v170);
    }

    sub_254FC5490(v244[0], type metadata accessor for DeviceUser);
    sub_254FC5AE8(&v270);
    v173(v242, v243);
    (*v93)(v246, v247);
    *(v170 + 16) = v172 + 1;
    sub_254FC58F8(v260);
    v252 = v170;
    v176 = v170 + v174 + *(v175 + 72) * v172;
    sub_254FC54E8();
  }

  objc_opt_self();
  sub_254FC5A30();
  v214[1] = v128;
  v129 = sub_254FF1534();
  *&v258 = 0;
  v120 = sub_254FC5E88(v129, sel_JSONObjectWithData_options_error_);

  if (!v120)
  {
    v209 = v258;
    sub_254FC5CB0();

    sub_254FC5C74();

    sub_254FF14F4();

    swift_willThrow();
    v210 = sub_254FC58D0();
    goto LABEL_120;
  }

  v130 = v258;
  sub_254FF21B4();
  swift_unknownObjectRelease();
  sub_254FC0048(&qword_27F76C878, &qword_254FF3118);
  sub_254FC5C2C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v177 = sub_254FC58D0();
    sub_254FC4BE0(v177, v178);
    goto LABEL_67;
  }

  sub_254FC5B60(&v243);
  v215 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v218 == v112)
    {

      v218 = *(v215 + 16);
      if (v218)
      {
        sub_254FC5C4C(MEMORY[0x277D84F90]);
        sub_254FC5BD0();
        do
        {
          v180 = sub_254FC5938();
          v181(v180);

          sub_254FC5CEC(v268);
          sub_254FF1404();
          sub_254FC5E3C();
          if (v184)
          {
            v190 = sub_254FC5A04(v182);
            sub_254FC5EC8(v190);
            v183 = v120;
            v120 = v258;
          }

          *(v120 + 16) = v183;
          sub_254FC58F8(&v271);
          sub_254FC5E28(v185);
          sub_254FC5C80();
          v186();
          sub_254FC5CD4();
          *(v188 - 256) = v187;
        }

        while (!v189);
        sub_254FC5CBC();
      }

      else
      {

        v120 = MEMORY[0x277D84F90];
      }

      sub_254FC5264(v120);
      v201 = sub_254FC58D0();
      sub_254FC4BE0(v201, v202);
      v112 = v94;
      v111 = v214[0];
      goto LABEL_67;
    }

    if (v112 >= *(v120 + 16))
    {
      break;
    }

    if (!*(*(v120 + 8 * v112 + 32) + 16))
    {
      goto LABEL_60;
    }

    v131 = *(v120 + 8 * v112 + 32);

    v132 = sub_254FC4A60();
    if (v133)
    {
      sub_254FC5B88(v132);

      sub_254FC5CBC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254FC5E1C();
        sub_254FC58E4(v137, v138, v139, v140);
        sub_254FC3D0C();
        sub_254FC5E10(v141);
      }

      sub_254FC5B7C();
      v136 = *(v134 + 16);
      v135 = *(v134 + 24);
      if (v136 >= v135 >> 1)
      {
        sub_254FC5A04(v135);
        sub_254FC5E1C();
        sub_254FC3D0C();
        sub_254FC5E10(v142);
      }

      sub_254FC5980();
    }

    else
    {

LABEL_60:
      ++v112;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  os_unfair_lock_unlock((v76 + 24));
  __break(1u);
}

uint64_t sub_254FC2110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_254FF1434();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_254FC4BB8(a2, v7, 1, v6);
}

uint64_t static AppUsageAction.computeAppUsage(queryService:user:deviceId:activityType:startTime:endTime:localDataOnly:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 832) = a8;
  *(v8 + 624) = a7;
  *(v8 + 616) = a6;
  *(v8 + 608) = a4;
  *(v8 + 600) = a3;
  *(v8 + 592) = a2;
  v11 = type metadata accessor for AppUsageResult(0);
  *(v8 + 632) = v11;
  sub_254FC58B0(v11);
  *(v8 + 640) = v12;
  v14 = *(v13 + 64);
  *(v8 + 648) = sub_254FC5DBC();
  *(v8 + 656) = swift_task_alloc();
  v15 = sub_254FF13D4();
  *(v8 + 664) = v15;
  sub_254FC58B0(v15);
  *(v8 + 672) = v16;
  v18 = *(v17 + 64) + 15;
  *(v8 + 680) = swift_task_alloc();
  v19 = sub_254FF1EB4();
  *(v8 + 688) = v19;
  sub_254FC58B0(v19);
  *(v8 + 696) = v20;
  v22 = *(v21 + 64);
  *(v8 + 704) = sub_254FC5DBC();
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  v23 = sub_254FF1394();
  *(v8 + 744) = v23;
  sub_254FC58B0(v23);
  *(v8 + 752) = v24;
  v26 = *(v25 + 64);
  *(v8 + 760) = sub_254FC5DBC();
  *(v8 + 768) = swift_task_alloc();
  v27 = *(*(sub_254FC0048(&qword_27F76C888, &unk_254FF3130) - 8) + 64);
  *(v8 + 776) = sub_254FC5DBC();
  *(v8 + 784) = swift_task_alloc();
  v28 = sub_254FF1444();
  *(v8 + 792) = v28;
  sub_254FC58B0(v28);
  *(v8 + 800) = v29;
  v31 = *(v30 + 64);
  *(v8 + 808) = sub_254FC5DBC();
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = *a1;
  *(v8 + 833) = *a5;

  return MEMORY[0x2822009F8](sub_254FC2464, 0, 0);
}

uint64_t sub_254FC2464()
{
  v260 = v0;
  if (*(v0 + 824))
  {
    v1 = *(v0 + 824);
  }

  else
  {
    if (qword_27F76C790 != -1)
    {
      sub_254FC5850();
      swift_once();
    }

    v1 = qword_27F76C9A0;
  }

  os_unfair_lock_lock((v1 + 24));
  sub_254FC80C0((v1 + 16), &v256);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v257;
  *(v0 + 56) = v256;
  *(v0 + 72) = v2;
  *(v0 + 88) = v258;
  if (!*(v0 + 80))
  {
    sub_254FC538C(v0 + 56, &qword_27F76C840, &qword_254FF4810);
LABEL_10:
    v7 = *(v0 + 704);
    sub_254FF1D14();
    v8 = sub_254FF1EA4();
    sub_254FF2174();
    v9 = sub_254FC5D04();
    if (os_log_type_enabled(v9, v10))
    {
      sub_254FC5B38();
      *swift_slowAlloc() = 0;
      sub_254FC5AAC(&dword_254FBD000, v11, v12, "AppUsageAction cannot be executed: SQL executor is nil");
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    v13 = *(v0 + 704);
    v14 = *(v0 + 696);
    v15 = *(v0 + 688);

    v16 = *(v14 + 8);
    v17 = sub_254FC5B00();
    v18(v17);
    sub_254FC389C();
    sub_254FC5A48();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

LABEL_13:
    v20 = *(v0 + 816);
    v21 = *(v0 + 808);
    v22 = *(v0 + 784);
    v23 = *(v0 + 776);
    v24 = *(v0 + 768);
    v25 = *(v0 + 760);
    v26 = *(v0 + 736);
    v27 = *(v0 + 728);
    v28 = *(v0 + 720);
    v29 = *(v0 + 712);
    v243 = *(v0 + 704);
    v246 = *(v0 + 680);
    v248 = *(v0 + 656);
    v251 = *(v0 + 648);

    v30 = *(v0 + 8);
    sub_254FC5A60();

    __asm { BRAA            X1, X16 }
  }

  sub_254FC38F0((v0 + 56), v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_254FC83D0((v1 + 16), &v256);
  os_unfair_lock_unlock((v1 + 24));
  v3 = v257;
  *(v0 + 136) = v256;
  *(v0 + 152) = v3;
  *(v0 + 168) = v258;
  if (!*(v0 + 160))
  {
    sub_254FC538C(v0 + 136, &qword_27F76C850, &qword_254FF30F0);
    sub_254FC49C4((v0 + 16));
    goto LABEL_10;
  }

  sub_254FC38F0((v0 + 136), v0 + 96);
  v4 = *(v0 + 128);
  sub_254FC3908((v0 + 96), *(v0 + 120));
  sub_254FC5AF4(v4);
  v5 = sub_254FC5E04();
  v6(v5);
  v33 = 0xD000000000000013;
  v252 = v0;
  if (*(v0 + 832) == 1)
  {
    sub_254FC5A3C();
    *&v259 = 0xD000000000000099;
    *(&v259 + 1) = v34;
LABEL_39:
    v112 = *(v0 + 616);
    *&v256 = 0;
    *(&v256 + 1) = 0xE000000000000000;
    sub_254FF2254();
    v113 = *(&v256 + 1);
    *(v0 + 472) = v256;
    *(v0 + 480) = v113;
    MEMORY[0x259C316D0](v33 - 2, 0x8000000254FF5410);
    sub_254FF1574();
    sub_254FF2134();
    MEMORY[0x259C316D0](32, 0xE100000000000000);
    v114 = *(v0 + 472);
    v115 = *(v0 + 480);
    sub_254FC3D0C();
    v117 = v116;
    v119 = *(v116 + 16);
    v118 = *(v116 + 24);
    if (v119 >= v118 >> 1)
    {
      sub_254FC589C(v118);
      sub_254FC3D0C();
      v117 = v230;
    }

    v0 = v252;
    v120 = *(v252 + 624);
    *(v117 + 16) = v119 + 1;
    v121 = v117 + 16 * v119;
    *(v121 + 32) = v114;
    *(v121 + 40) = v115;
    *&v256 = 0;
    *(&v256 + 1) = 0xE000000000000000;
    sub_254FF2254();
    v122 = *(&v256 + 1);
    *(v252 + 488) = v256;
    *(v252 + 496) = v122;
    MEMORY[0x259C316D0](0x54646E652E415320, 0xEF203D3C20656D69);
    sub_254FF1574();
    sub_254FF2134();
    MEMORY[0x259C316D0](32, 0xE100000000000000);
    v123 = *(v252 + 488);
    v124 = *(v252 + 496);
    v126 = *(v117 + 16);
    v125 = *(v117 + 24);
    if (v126 >= v125 >> 1)
    {
      sub_254FC589C(v125);
      sub_254FC3D0C();
      v117 = v231;
    }

    v127 = *(v252 + 608);
    *(v117 + 16) = v126 + 1;
    v128 = v117 + 16 * v126;
    *(v128 + 32) = v123;
    *(v128 + 40) = v124;
    *&v256 = 0x20444E4120;
    *(&v256 + 1) = 0xE500000000000000;
    *(v252 + 568) = v117;
    sub_254FC0048(&qword_27F76C880, &qword_254FF3120);
    sub_254FC53E4();
    sub_254FF1F04();

    v129 = sub_254FC5E04();
    MEMORY[0x259C316D0](v129);

    sub_254FC5D6C();

    if (v127)
    {
      v130 = *(v252 + 608);
      v131 = *(v252 + 600);
      sub_254FC591C();
      sub_254FF2254();

      sub_254FC5A3C();
      *&v256 = v33 + 1;
      *(&v256 + 1) = v132;
      MEMORY[0x259C316D0](v131, v130);
      MEMORY[0x259C316D0](8231, 0xE200000000000000);
      sub_254FC5D6C();
    }

    if (*(v252 + 833))
    {
      if (*(v252 + 833) == 1)
      {
        v133 = " AND SA.isApplication = 1 ";
      }

      else
      {
        v133 = " AND SA.isApplication = 0 ";
      }

      MEMORY[0x259C316D0](v33 + 7, (v133 - 32) | 0x8000000000000000);
    }

    MEMORY[0x259C316D0](v33 + 81, 0x8000000254FF5450);
    v134 = *(v252 + 40);
    v135 = *(v252 + 48);
    sub_254FC3908((v252 + 16), v134);
    v136 = *(&v259 + 1);
    v137 = v259;
    (*(v135 + 16))(v259, *(&v259 + 1), MEMORY[0x277D84F90], v134, v135);
    if (*(v252 + 240))
    {
      v239 = *(v252 + 640);
      v241 = *(v252 + 656);
      v244 = *(v252 + 632);

      sub_254FC38F0((v252 + 216), v252 + 176);
      sub_254FC5A3C();
      v254 = v151;
      v247 = MEMORY[0x277D84F90];
      v249 = v33 - 3;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v153 = *(v0 + 200);
            v152 = *(v0 + 208);
            sub_254FC4A10(v0 + 176, v153);
            sub_254FC5AF4(v152);
            v155 = v154(v153, v152);
            if (!v155)
            {
              v189 = *(v252 + 816);
              v190 = *(v252 + 808);
              v191 = *(v252 + 784);
              v192 = *(v252 + 776);
              v193 = *(v252 + 768);
              v194 = *(v252 + 760);
              v195 = *(v252 + 736);
              v196 = *(v252 + 728);
              v238 = *(v252 + 720);
              v240 = *(v252 + 712);
              v242 = *(v252 + 704);
              v245 = *(v252 + 680);
              v250 = *(v252 + 656);
              v255 = *(v252 + 648);

              sub_254FC49C4((v252 + 176));
              sub_254FC49C4((v252 + 96));
              sub_254FC49C4((v252 + 16));

              v197 = *(v252 + 8);
              sub_254FC5A60();

              __asm { BRAA            X2, X16 }
            }

            v0 = v252;
            strcpy((v252 + 504), "totalDuration");
            *(v252 + 518) = -4864;
            sub_254FF21F4();
            if (*(v155 + 16))
            {
              v156 = sub_254FC4AC4(v252 + 256);
              if (v157)
              {
                break;
              }
            }

            sub_254FC4B08(v252 + 256);
          }

          sub_254FC4B5C(*(v155 + 56) + 32 * v156, v252 + 376);
          sub_254FC4B08(v252 + 256);
          if (swift_dynamicCast())
          {
            break;
          }

LABEL_70:
        }

        v158 = *(v252 + 576);
        *(v252 + 520) = v249;
        *(v252 + 528) = v254;
        sub_254FF21F4();
        if (*(v155 + 16) && (v159 = sub_254FC4AC4(v252 + 296), (v160 & 1) != 0))
        {
          sub_254FC4B5C(*(v155 + 56) + 32 * v159, v252 + 408);
          sub_254FC4B08(v252 + 296);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_70;
          }

          v161 = *(v252 + 536);
          v162 = *(v252 + 544);
          strcpy((v252 + 552), "isApplication");
          *(v252 + 566) = -4864;
          sub_254FF21F4();
          if (*(v155 + 16) && (v163 = sub_254FC4AC4(v252 + 336), (v164 & 1) != 0))
          {
            sub_254FC4B5C(*(v155 + 56) + 32 * v163, v252 + 440);
            sub_254FC4B08(v252 + 336);

            if (swift_dynamicCast())
            {
              v165 = *(v252 + 656);
              v236 = *(v252 + 624);
              v237 = *(v252 + 648);
              v234 = *(v252 + 616);
              v166 = *(v252 + 584);
              v167 = sub_254FF23E4();
              v235 = sub_254FF20E4();

              v233 = v244[6];
              v168 = sub_254FF1614();
              sub_254FC5864(v168);
              v170 = *(v169 + 16);
              v170(&v165[v233], v234, v168);
              v170(&v165[v244[7]], v236, v168);
              *v165 = v161;
              *(v241 + 8) = v162;
              *(v241 + 16) = v235 & 1;
              *&v165[v244[8]] = v158;
              sub_254FC56BC();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v182 = sub_254FC58E4(isUniquelyReferenced_nonNull_native, v172, v173, v247);
                v247 = sub_254FC3DC0(v182, v183, v184, v185);
              }

              v175 = *(v247 + 16);
              v174 = *(v247 + 24);
              if (v175 >= v174 >> 1)
              {
                v186 = sub_254FC589C(v174);
                v247 = sub_254FC3DC0(v186, v187, v188, v247);
              }

              v0 = v252;
              v176 = *(v252 + 648);
              sub_254FC5490(*(v252 + 656), type metadata accessor for AppUsageResult);
              *(v247 + 16) = v175 + 1;
              v177 = *(v239 + 80);
              sub_254FC5A54();
              v181 = v179 + v178 + *(v180 + 72) * v175;
              sub_254FC54E8();
            }

            else
            {

              v0 = v252;
            }
          }

          else
          {

            sub_254FC4B08(v252 + 336);
          }
        }

        else
        {

          sub_254FC4B08(v252 + 296);
        }
      }
    }

    v138 = *(v252 + 712);
    sub_254FC538C(v252 + 216, &qword_27F76C858, &qword_254FF30F8);
    sub_254FF1D14();

    v139 = sub_254FF1EA4();
    v140 = sub_254FF2174();

    v141 = os_log_type_enabled(v139, v140);
    v142 = *(v252 + 712);
    v143 = *(v252 + 696);
    v144 = *(v252 + 688);
    if (v141)
    {
      sub_254FC5E5C();
      v253 = v142;
      v145 = swift_slowAlloc();
      sub_254FC5E50();
      v146 = swift_slowAlloc();
      *&v256 = v146;
      *v145 = 136315138;
      v147 = sub_254FC4454(v137, v136, &v256);

      *(v145 + 4) = v147;
      sub_254FC5EE8(&dword_254FBD000, v148, v149, "Query (%s) cannot be executed!");
      sub_254FC49C4(v146);
      sub_254FC592C();
      MEMORY[0x259C32150]();
      v0 = v252;
      sub_254FC592C();
      MEMORY[0x259C32150]();

      (*(v143 + 8))(v253, v144);
    }

    else
    {

      (*(v143 + 8))(v142, v144);
    }

    sub_254FC389C();
    sub_254FC5A48();
    swift_allocError();
    *v150 = 2;
    swift_willThrow();

    goto LABEL_55;
  }

  v35 = *(v0 + 792);
  v36 = *(v0 + 784);
  v37 = *(v0 + 592);
  sub_254FC5770();
  v38 = sub_254FC5364(v36, 1, v35);
  v39 = MEMORY[0x277CB9CC8];
  if (v38 == 1)
  {
    sub_254FC538C(*(v0 + 784), &qword_27F76C888, &unk_254FF3130);
  }

  else
  {
    v40 = *(v0 + 768);
    v41 = *(v0 + 752);
    v42 = *(v0 + 744);
    (*(*(v0 + 800) + 32))(*(v0 + 816), *(v0 + 784), *(v0 + 792));
    sub_254FF13B4();
    v43 = *(v41 + 88);
    v44 = sub_254FC5B00();
    if (v45(v44) == *v39)
    {
      v46 = *(v0 + 768);
      v47 = *(v0 + 736);
      (*(*(v0 + 752) + 96))(v46, *(v0 + 744));
      v49 = *v46;
      v48 = v46[1];
      sub_254FF1D14();

      v50 = sub_254FF1EA4();
      v51 = sub_254FF2154();

      v52 = os_log_type_enabled(v50, v51);
      v53 = *(v0 + 736);
      v54 = *(v0 + 696);
      v55 = *(v0 + 688);
      if (v52)
      {
        sub_254FC5E5C();
        v56 = v49;
        v57 = swift_slowAlloc();
        sub_254FC5E50();
        v58 = swift_slowAlloc();
        *&v256 = v58;
        *v57 = 136315138;
        *(v57 + 4) = sub_254FC4454(v56, v48, &v256);
        sub_254FC5EE8(&dword_254FBD000, v59, v60, "AppUsageAction: using alternative DSID %s for person filtering");
        sub_254FC49C4(v58);
        v33 = 0xD000000000000013;
        sub_254FC592C();
        MEMORY[0x259C32150]();
        v49 = v56;
        v0 = v252;
        sub_254FC592C();
        MEMORY[0x259C32150]();
      }

      v61 = *(v54 + 8);
      v62 = sub_254FC5DE0();
      v63(v62);
      v64 = *(v0 + 816);
      v65 = *(v0 + 800);
      v66 = *(v0 + 792);
      sub_254FC591C();
      sub_254FF2254();
      MEMORY[0x259C316D0](0xD0000000000000B2, 0x8000000254FF5560);
      MEMORY[0x259C316D0](v49, v48);

      MEMORY[0x259C316D0](10021, 0xE200000000000000);
      v67 = v256;
      v68 = *(v65 + 8);
      v69 = sub_254FC5DE0();
      v70(v69);
      v259 = v67;
      goto LABEL_39;
    }

    v71 = *(v0 + 768);
    v72 = *(v0 + 752);
    v73 = *(v0 + 744);
    (*(*(v0 + 800) + 8))(*(v0 + 816), *(v0 + 792));
    (*(v72 + 8))(v71, v73);
  }

  v74 = *(v0 + 728);
  sub_254FF1D14();
  v75 = sub_254FF1EA4();
  sub_254FF2154();
  v76 = sub_254FC5D04();
  if (os_log_type_enabled(v76, v77))
  {
    sub_254FC5B38();
    *swift_slowAlloc() = 0;
    sub_254FC5AAC(&dword_254FBD000, v78, v79, "AppUsageAction: no DSID for person, use megadome KG for filtering");
    sub_254FC592C();
    MEMORY[0x259C32150]();
  }

  v80 = *(v0 + 792);
  v81 = *(v0 + 776);
  v82 = *(v0 + 728);
  v83 = *(v0 + 696);
  v84 = *(v0 + 688);
  v85 = *(v0 + 592);

  v86 = *(v83 + 8);
  v87 = sub_254FC5DE0();
  (v86)(v87);
  sub_254FC5A3C();
  *&v259 = 0xD0000000000001E3;
  *(&v259 + 1) = v88;
  sub_254FC5770();
  if (sub_254FC5364(v81, 1, v80) == 1)
  {
    sub_254FC538C(*(v0 + 776), &qword_27F76C888, &unk_254FF3130);
LABEL_32:
    v33 = 0xD000000000000013;
    MEMORY[0x259C316D0](0xD000000000000015, 0x8000000254FF53F0);
    goto LABEL_39;
  }

  v33 = v86;
  (*(*(v0 + 800) + 32))(*(v0 + 808), *(v0 + 776), *(v0 + 792));
  if (sub_254FF13E4())
  {
    (*(*(v0 + 800) + 8))(*(v0 + 808), *(v0 + 792));
    goto LABEL_32;
  }

  v89 = *(v0 + 760);
  v90 = *(v0 + 752);
  v91 = *(v0 + 744);
  v92 = *(v0 + 808);
  sub_254FF13B4();
  v93 = *(v90 + 88);
  v94 = sub_254FC5B00();
  v96 = v95(v94);
  if (v96 == *MEMORY[0x277CB9CD0])
  {
    v97 = sub_254FC5C98();
    v98(v97);
    v99 = *v92;
    v100 = v92[1];
    sub_254FC591C();
    sub_254FF2254();

    sub_254FC59DC();
    *&v256 = v33 + 9;
LABEL_37:
    *(&v256 + 1) = v101;
    v106 = sub_254FC5B00();
    MEMORY[0x259C316D0](v106);

    v107 = 10021;
    v108 = 0xE200000000000000;
LABEL_38:
    MEMORY[0x259C316D0](v107, v108);
    sub_254FC5D6C();
    v109 = *(v0 + 808);
    v110 = *(v0 + 800);
    v111 = *(v0 + 792);

    (*(v110 + 8))(v109, v111);
    goto LABEL_39;
  }

  if (v96 == *MEMORY[0x277CB9CC8])
  {
    v102 = sub_254FC5C98();
    v103(v102);
    v104 = *v92;
    v105 = v92[1];
    sub_254FC591C();
    sub_254FF2254();

    sub_254FC59DC();
    *&v256 = v33;
    goto LABEL_37;
  }

  if (v96 == *MEMORY[0x277CB9CD8])
  {
    v200 = *(v0 + 808);
    v201 = *(v0 + 680);
    v202 = *(v0 + 672);
    v203 = *(v0 + 664);
    sub_254FF13F4();
    v204 = *(v202 + 88);
    v205 = sub_254FC5B00();
    if (v206(v205) != *MEMORY[0x277CB9CF8])
    {
      v214 = *(v0 + 720);
      (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));
      sub_254FF1D14();
      v215 = sub_254FF1EA4();
      sub_254FF2174();
      v216 = sub_254FC5D04();
      if (os_log_type_enabled(v216, v217))
      {
        sub_254FC5B38();
        *swift_slowAlloc() = 0;
        sub_254FC5AAC(&dword_254FBD000, v218, v219, "AppUsageAction does not have valid person parameter");
        sub_254FC592C();
        MEMORY[0x259C32150]();
      }

      v220 = *(v0 + 808);
      v221 = *(v0 + 800);
      v222 = *(v0 + 792);
      v223 = *(v0 + 720);
      v224 = *(v0 + 696);
      v225 = *(v0 + 688);

      (v33)(v223, v225);
      sub_254FC389C();
      sub_254FC5A48();
      swift_allocError();
      *v226 = 1;
      swift_willThrow();

      v227 = *(v221 + 8);
      v228 = sub_254FC5E04();
      v229(v228);
LABEL_55:
      sub_254FC49C4((v0 + 96));
      sub_254FC49C4((v0 + 16));
      goto LABEL_13;
    }

    v207 = *(v0 + 680);
    (*(*(v0 + 672) + 96))(v207, *(v0 + 664));
    v208 = *v207;
    v209 = v207[1];
    sub_254FC591C();
    sub_254FF2254();

    sub_254FC59DC();
    *&v256 = v33;
    *(&v256 + 1) = v210;
    v211 = sub_254FC5B00();
    MEMORY[0x259C316D0](v211);

    v107 = 2107173;
    v108 = 0xE300000000000000;
    goto LABEL_38;
  }

  v212 = *(v0 + 744);
  sub_254FC5A60();

  return MEMORY[0x2821FDEB8]();
}

unint64_t sub_254FC389C()
{
  result = qword_27F76C848;
  if (!qword_27F76C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76C848);
  }

  return result;
}

uint64_t sub_254FC38F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_254FC3908(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

size_t sub_254FC394C(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_254FC41E4(v8, v7);
  v10 = *(sub_254FC0048(&qword_27F76C838, &unk_254FF30E0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_254FD15B4(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void sub_254FC3A44()
{
  sub_254FC5C1C();
  if (v3)
  {
    sub_254FC5C0C();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_254FC5BFC();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_254FC4360(*(v0 + 16), v4, &qword_27F76C8F0, &qword_254FF3198, type metadata accessor for Device);
  v7 = *(*(type metadata accessor for Device(0) - 8) + 80);
  sub_254FC5A54();
  if (v1)
  {
    v9 = sub_254FC5BEC(v8);
    sub_254FD15C8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254FC5A8C();
  }
}

size_t sub_254FC3B20(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_254FC4360(v9, a2, &qword_27F76C8E8, &qword_254FF3190, type metadata accessor for DeviceUser);
  v11 = *(type metadata accessor for DeviceUser(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_254FD15E0(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_254FC3C30()
{
  sub_254FC5C1C();
  if (v3)
  {
    sub_254FC5C0C();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_254FC5BFC();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_254FC4360(*(v0 + 16), v4, &qword_27F76C8E0, &qword_254FF4820, MEMORY[0x277CB9DA8]);
  v7 = *(*(sub_254FF1434() - 8) + 80);
  sub_254FC5A54();
  if (v1)
  {
    v9 = sub_254FC5BEC(v8);
    sub_254FD15F8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254FC5A8C();
  }
}

void sub_254FC3D0C()
{
  sub_254FC5DF8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_254FC59CC();
  if (v6 == v7)
  {
LABEL_7:
    sub_254FC59BC(v5);
    if (v2)
    {
      sub_254FC0048(&qword_27F76C8C0, &qword_254FF37B0);
      v8 = sub_254FC5F08();
      sub_254FC5F38(v8);
      sub_254FC5A20(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_254FC5A10();
        sub_254FD1610(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_254FC5D88();
    goto LABEL_12;
  }

  sub_254FC5DEC();
  if (!v6)
  {
    sub_254FC59AC();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_254FC3DC0(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_254FC4360(v9, a2, &qword_27F76C8D8, &unk_254FF3180, type metadata accessor for AppUsageResult);
  v11 = *(type metadata accessor for AppUsageResult(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_254FD1630(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_254FC3ED0()
{
  sub_254FC5DF8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_254FC59CC();
  if (v6 == v7)
  {
LABEL_7:
    sub_254FC59BC(v5);
    if (v2)
    {
      sub_254FC0048(&qword_27F76C8C8, &qword_254FF3170);
      v8 = sub_254FC5F08();
      sub_254FC5F38(v8);
      sub_254FC5A20(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_254FC5A10();
        sub_254FD1648(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_254FC0048(&qword_27F76C8D0, &qword_254FF3178);
    sub_254FC5D88();
    goto LABEL_12;
  }

  sub_254FC5DEC();
  if (!v6)
  {
    sub_254FC59AC();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_254FC3F94()
{
  sub_254FC5C1C();
  if (v3)
  {
    sub_254FC5C0C();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_254FC5BFC();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_254FC4360(*(v0 + 16), v4, &qword_27F76C8A8, &unk_254FF3160, type metadata accessor for SportsEvent);
  v7 = *(*(type metadata accessor for SportsEvent() - 8) + 80);
  sub_254FC5A54();
  if (v1)
  {
    v9 = sub_254FC5BEC(v8);
    sub_254FD1764(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254FC5A8C();
  }
}

void sub_254FC4070()
{
  sub_254FC5DF8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_254FC59CC();
  if (v6 == v7)
  {
LABEL_7:
    sub_254FC59BC(v5);
    if (v2)
    {
      sub_254FC0048(&qword_27F76C8A0, &qword_254FF47C0);
      v8 = swift_allocObject();
      sub_254FC5F38(v8);
      sub_254FC5A20(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_254FC5A10();
        sub_254FD1838(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_254FC5D88();
    goto LABEL_12;
  }

  sub_254FC5DEC();
  if (!v6)
  {
    sub_254FC59AC();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_254FC412C()
{
  sub_254FC5DF8();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_254FC59CC();
  if (v7 == v8)
  {
LABEL_7:
    sub_254FC59BC(v6);
    if (v3)
    {
      sub_254FC0048(&qword_27F76C898, &unk_254FF3150);
      v9 = sub_254FC5F08();
      sub_254FC5F38(v9);
      sub_254FC5A20(v10);
      if (v1)
      {
LABEL_9:
        v11 = sub_254FC5A10();
        sub_254FD1610(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  sub_254FC5DEC();
  if (!v7)
  {
    sub_254FC59AC();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_254FC41E4(uint64_t a1, uint64_t a2)
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

  sub_254FC0048(&qword_27F76C8F8, &unk_254FF31A0);
  v4 = *(sub_254FC0048(&qword_27F76C838, &unk_254FF30E0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_254FC42EC(uint64_t a1, uint64_t a2)
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

  sub_254FC0048(&qword_27F76C8C0, &qword_254FF37B0);
  v4 = sub_254FC5F08();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

size_t sub_254FC4360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_254FC0048(a3, a4);
  v8 = a5(0);
  sub_254FC58B0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_254FC4454(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_254FC4518(v11, 0, 0, 1, a1, a2);
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
    sub_254FC4B5C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_254FC49C4(v11);
  return v7;
}

unint64_t sub_254FC4518(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_254FC4618(a5, a6);
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
    result = sub_254FF2284();
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

uint64_t sub_254FC4618(uint64_t a1, unint64_t a2)
{
  v4 = sub_254FC4664(a1, a2);
  sub_254FC477C(&unk_2867307E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_254FC4664(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_254FF1FF4())
  {
    result = sub_254FC4860(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_254FF2234();
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
          result = sub_254FF2284();
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

uint64_t sub_254FC477C(uint64_t result)
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

    result = sub_254FC48D0(result, v8, 1, v3);
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

void *sub_254FC4860(uint64_t a1, uint64_t a2)
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

  sub_254FC0048(&qword_27F76C908, &unk_254FF31B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_254FC48D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_254FC0048(&qword_27F76C908, &unk_254FF31B0);
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

uint64_t sub_254FC49C4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_254FC4A10(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_254FC4A60()
{
  sub_254FC5D10();
  sub_254FF1FC4();
  v2 = sub_254FF2434();

  return sub_254FC4E18(v1, v0, v2);
}

unint64_t sub_254FC4AC4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_254FF21D4();

  return sub_254FC4ECC(a1, v5);
}

uint64_t sub_254FC4B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_254FC4BE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254FC4BF4(a1, a2);
  }

  return a1;
}

uint64_t sub_254FC4BF4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_254FC4C4C()
{
  sub_254FC5D10();
  sub_254FF2424();
  if (v0)
  {
    sub_254FF1FC4();
  }

  v2 = sub_254FF2434();

  return sub_254FC4F90(v1, v0, v2);
}

unint64_t sub_254FC4CCC(unsigned int a1)
{
  v3 = MEMORY[0x259C31AF0](*(v1 + 40), a1, 4);

  return sub_254FC505C(a1, v3);
}

unint64_t sub_254FC4D14(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_254FF1CD4();
  sub_254FC5678(&qword_27F76C8B0);
  v5 = sub_254FF1EF4();

  return sub_254FC50BC(a1, v5);
}

unint64_t sub_254FC4E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_254FF2364() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_254FC4ECC(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_254FC5714(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x259C318E0](v8, a1);
    sub_254FC4B08(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_254FC4F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_254FF2364() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_254FC505C(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_254FC50BC(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_254FF1CD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_254FC5678(&qword_27F76C8B8);
    v10 = sub_254FF1F14();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_254FC5264(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_254FD9A08(result);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_254FF1434();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_254FC538C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_254FC0048(a2, a3);
  sub_254FC5864(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_254FC53E4()
{
  result = qword_27F76C890;
  if (!qword_27F76C890)
  {
    sub_254FC5448(&qword_27F76C880, &qword_254FF3120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76C890);
  }

  return result;
}

uint64_t sub_254FC5448(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_254FC5490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_254FC5864(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_254FC54E8()
{
  sub_254FC5DD4();
  v2 = v1(0);
  sub_254FC5864(v2);
  v4 = *(v3 + 32);
  v5 = sub_254FBF6B0();
  v6(v5);
  return v0;
}

uint64_t getEnumTagSinglePayload for AppUsageAction(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AppUsageAction(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x254FC5630);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254FC5678(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_254FF1CD4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254FC56BC()
{
  sub_254FC5DD4();
  v2 = v1(0);
  sub_254FC5864(v2);
  v4 = *(v3 + 16);
  v5 = sub_254FBF6B0();
  v6(v5);
  return v0;
}

uint64_t sub_254FC5770()
{
  sub_254FC5DD4();
  v3 = sub_254FC0048(v1, v2);
  sub_254FC5864(v3);
  v5 = *(v4 + 16);
  v6 = sub_254FBF6B0();
  v7(v6);
  return v0;
}

uint64_t sub_254FC57C8()
{
  sub_254FC5DD4();
  v3 = sub_254FC0048(v1, v2);
  sub_254FC5864(v3);
  v5 = *(v4 + 32);
  v6 = sub_254FBF6B0();
  v7(v6);
  return v0;
}

uint64_t sub_254FC5824@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_254FC58D0()
{
  result = *(v0 - 632);
  v2 = *(v0 - 648);
  return result;
}

uint64_t sub_254FC5938()
{
  v2 = *v0;
  *(v1 - 600) = *(v0 - 1);
  result = *(v1 - 360);
  v4 = *(v1 - 304);
  v5 = *(v1 - 352);
  v6 = *(v1 - 320);
  v7 = *(v1 - 624);
  return result;
}

void sub_254FC5980()
{
  v3 = *(v2 - 640);
  *(v3 + 16) = v1;
  v4 = v3 + 16 * v0;
  v5 = *(v2 - 600);
  *(v4 + 32) = *(v2 - 624);
  *(v4 + 40) = v5;
}

void sub_254FC59BC(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

__n128 sub_254FC59F0()
{
  result = *(v0 - 208);
  *(v0 - 176) = *(v0 - 224);
  *(v0 - 160) = result;
  *(v0 - 144) = *(v0 - 192);
  return result;
}

uint64_t sub_254FC5A8C()
{

  return swift_arrayInitWithCopy();
}

void sub_254FC5AAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_254FC5ACC()
{

  return swift_dynamicCast();
}

uint64_t sub_254FC5B0C()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 264);
  v4 = *(v0 - 432);

  return sub_254FF1F84();
}

uint64_t sub_254FC5B44()
{
  result = v0;
  v3 = *(v1 - 424);
  v4 = *(v1 - 512);
  return result;
}

uint64_t sub_254FC5B88(uint64_t a1)
{
  v4 = (*(v1 + 56) + 16 * a1);
  v5 = v4[1];
  *(v2 - 624) = *v4;
  *(v2 - 600) = v5;
}

uint64_t sub_254FC5BB4(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_254FC4B5C(v4, v2 - 256);
}

void sub_254FC5C4C(uint64_t a1@<X8>)
{
  *(v1 - 224) = a1;
  v3 = *(v1 - 592);

  sub_254FC4DB8(0, v3, 0);
}

void sub_254FC5C80()
{
  v2 = *(v0 - 256);
  v3 = *(v1 - 368);
  v4 = *(v1 - 504);
}

uint64_t sub_254FC5C98()
{
  v1 = v0[93];
  v2 = *(v0[94] + 96);
  return v0[95];
}

uint64_t sub_254FC5D10()
{
  v2 = *(v0 + 40);

  return sub_254FF2404();
}

uint64_t sub_254FC5D34()
{
  v3 = *(v1 - 592);

  return sub_254FC4BE0(v3, v0);
}

double sub_254FC5D50()
{

  return sub_254FBFFE4(v1 - 224, v0, (v1 - 256));
}

void sub_254FC5D6C()
{

  JUMPOUT(0x259C316D0);
}

uint64_t sub_254FC5D88()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_254FC5DA4()
{
  v2 = *(v0 - 480);
}

uint64_t sub_254FC5DBC()
{

  return swift_task_alloc();
}

uint64_t sub_254FC5E28@<X0>(uint64_t a1@<X8>)
{
  result = v2 + a1 + *(v1 + 72) * v3;
  v5 = *(v1 + 32);
  return result;
}

void sub_254FC5E3C()
{
  *(v1 - 224) = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
}

uint64_t sub_254FC5E68(uint64_t a1)
{
  *(v1 - 632) = a1;
}

id sub_254FC5E88(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_254FC5EA8()
{

  return sub_254FF21F4();
}

void sub_254FC5EC8(char a1)
{

  sub_254FC4DB8(a1, v1, 1);
}

void sub_254FC5EE8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_254FC5F08()
{

  return swift_allocObject();
}

unint64_t sub_254FC5F20()
{

  return sub_254FC4AC4(v0 - 224);
}

uint64_t AppUsageResult.startTime.getter()
{
  v0 = sub_254FC77BC();
  v1 = *(type metadata accessor for AppUsageResult(v0) + 24);
  v2 = sub_254FF1614();
  sub_254FC5864(v2);
  v4 = *(v3 + 16);
  v5 = sub_254FC7770();

  return v6(v5);
}

uint64_t AppUsageResult.endTime.getter()
{
  v0 = sub_254FC77BC();
  v1 = *(type metadata accessor for AppUsageResult(v0) + 28);
  v2 = sub_254FF1614();
  sub_254FC5864(v2);
  v4 = *(v3 + 16);
  v5 = sub_254FC7770();

  return v6(v5);
}

uint64_t static AppUsageResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_254FC7754(a1, a2);
  v6 = v6 && v4 == v5;
  if (v6 || (sub_254FF2364()) && (v7 = type metadata accessor for AppUsageResult(0), sub_254FC77D4(v7[6]), (sub_254FF15E4()) && (sub_254FC77D4(v7[7]), (sub_254FF15E4()) && *(v3 + v7[8]) == *(v2 + v7[8]))
  {
    v8 = *(v3 + 16) ^ *(v2 + 16) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t AppDisplayInfo.artworkData.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_254FBF6B0();
  sub_254FC6138(v3, v4);
  return sub_254FBF6B0();
}

uint64_t sub_254FC6138(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254FC614C(a1, a2);
  }

  return a1;
}

uint64_t sub_254FC614C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t AppDisplayInfo.artworkURL.getter()
{
  v2 = sub_254FC77BC();
  v3 = v1 + *(type metadata accessor for AppDisplayInfo(v2) + 24);

  return sub_254FC6204(v3, v0);
}

uint64_t sub_254FC6204(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppDisplayInfo.init(displayName:artworkData:artworkURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for AppDisplayInfo(0) + 24);

  return sub_254FC62C4(a5, v7);
}

uint64_t sub_254FC62C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static AppDisplayInfo.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_254FF1524();
  v5 = sub_254FC583C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_254FC7780();
  v12 = v11 - v10;
  v13 = *(*(sub_254FC0048(&qword_27F76C910, &qword_254FF31C0) - 8) + 64);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v17 = sub_254FC0048(&qword_27F76C918, &qword_254FF31C8);
  sub_254FC5864(v17);
  v19 = *(v18 + 64);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - v21;
  v23 = *a1 == *a2 && a1[1] == a2[1];
  if (!v23 && (sub_254FF2364() & 1) == 0)
  {
    return 0;
  }

  v45 = v12;
  v46 = v16;
  v25 = a1[2];
  v24 = a1[3];
  v26 = a2[2];
  v27 = a2[3];
  if (v24 >> 60 == 15)
  {
    if (v27 >> 60 == 15)
    {
      v44 = v7;
      v28 = sub_254FC76F8();
      sub_254FC4BE0(v28, v29);
      goto LABEL_12;
    }

LABEL_10:
    v30 = sub_254FC76F8();
    sub_254FC4BE0(v30, v31);
    sub_254FC4BE0(v26, v27);
    return 0;
  }

  if (v27 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v44 = v7;
  v32 = sub_254FC76F8();
  v33 = MEMORY[0x259C30C40](v32);
  sub_254FC4BE0(v26, v27);
  sub_254FC4BE0(v25, v24);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v34 = *(type metadata accessor for AppDisplayInfo(0) + 24);
  v35 = *(v17 + 48);
  sub_254FC6204(a1 + v34, v22);
  sub_254FC6204(a2 + v34, &v22[v35]);
  sub_254FC77E0(v22);
  if (!v23)
  {
    v36 = v46;
    sub_254FC6204(v22, v46);
    sub_254FC77E0(&v22[v35]);
    if (!v37)
    {
      v39 = v44;
      v40 = v45;
      (*(v44 + 32))(v45, &v22[v35], v4);
      sub_254FC6F50(&qword_27F76C920, MEMORY[0x277CC9260]);
      v41 = sub_254FF1F14();
      v42 = *(v39 + 8);
      v42(v40, v4);
      v42(v36, v4);
      sub_254FC538C(v22, &qword_27F76C910, &qword_254FF31C0);
      return (v41 & 1) != 0;
    }

    (*(v44 + 8))(v36, v4);
LABEL_20:
    sub_254FC538C(v22, &qword_27F76C918, &qword_254FF31C8);
    return 0;
  }

  sub_254FC77E0(&v22[v35]);
  if (!v23)
  {
    goto LABEL_20;
  }

  sub_254FC538C(v22, &qword_27F76C910, &qword_254FF31C0);
  return 1;
}

uint64_t DeviceUser.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_254FBF6B0();
}

uint64_t DeviceUser.intentPerson.getter()
{
  v0 = sub_254FC77BC();
  v1 = *(type metadata accessor for DeviceUser(v0) + 20);
  v2 = sub_254FF1444();
  sub_254FC5864(v2);
  v4 = *(v3 + 16);
  v5 = sub_254FC7770();

  return v6(v5);
}

uint64_t DeviceUser.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_254FF1FC4();
}

uint64_t static DeviceUser.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_254FC7754(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_254FF2364() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for DeviceUser(0);
  sub_254FC77D4(*(v5 + 20));

  return sub_254FF13C4();
}

uint64_t DeviceUser.hashValue.getter()
{
  sub_254FF2404();
  v1 = *v0;
  v2 = v0[1];
  sub_254FF1FC4();
  return sub_254FF2434();
}

uint64_t sub_254FC67D8@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceUser.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FC6808()
{
  sub_254FF2404();
  v1 = *v0;
  v2 = v0[1];
  sub_254FF1FC4();
  return sub_254FF2434();
}

uint64_t Device.id.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_254FBF6B0();
}

uint64_t Device.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_254FBF6B0();
}

uint64_t Device.user.getter@<X0>(uint64_t a1@<X8>)
{
  sub_254FC77A0();

  return sub_254FC6E34(v1 + v3, a1);
}

uint64_t Device.init(thisDeviceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*(sub_254FC0048(&qword_27F76C860, &qword_254FF3100) - 8) + 64);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = *(*(sub_254FC0048(&qword_27F76C868, &qword_254FF3108) - 8) + 64);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_254FF13D4();
  v15 = sub_254FC583C(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_254FC7780();
  v22 = (v21 - v20);
  v23 = sub_254FF1394();
  v24 = sub_254FC583C(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_254FC7780();
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0x7665442073696854;
  *(a3 + 32) = 0xEB00000000656369;
  *a3 = 1;
  (*(v29 + 104))(v28 - v27, *MEMORY[0x277CB9CD8]);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  (*(v17 + 104))(v22, *MEMORY[0x277CB9CF8], v14);
  v30 = sub_254FF1434();
  sub_254FC4BB8(v13, 1, 1, v30);
  v31 = sub_254FF1474();
  sub_254FC4BB8(v9, 1, 1, v31);
  sub_254FC77A0();
  v33 = (a3 + v32);
  v34 = v33 + *(type metadata accessor for DeviceUser(0) + 20);
  result = sub_254FF13A4();
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  return result;
}

uint64_t Device.init(id:name:user:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 8) = a1;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  sub_254FC77A0();
  result = sub_254FC6E98(a5, a6 + v8);
  *a6 = 0;
  return result;
}

BOOL static Device.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a1[1] == a2[1] && a1[2] == a2[2];
  result = 0;
  if (v5 || (sub_254FF2364() & 1) != 0)
  {
    v6 = a1[3] == a2[3] && a1[4] == a2[4];
    if (v6 || (sub_254FF2364() & 1) != 0)
    {
      sub_254FC77A0();
      v8 = (a1 + v7);
      v9 = (a2 + v7);
      v10 = *v8 == *v9 && v8[1] == v9[1];
      if (v10 || (sub_254FF2364() & 1) != 0)
      {
        v11 = type metadata accessor for DeviceUser(0);
        sub_254FC77D4(*(v11 + 20));
        if (sub_254FF13C4())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t Device.hash(into:)()
{
  v1 = *v0;
  sub_254FF2424();
  v2 = v0[1];
  v3 = v0[2];
  sub_254FF1FC4();
  v4 = v0[3];
  v5 = v0[4];
  sub_254FF1FC4();
  sub_254FC77A0();
  v7 = (v0 + v6);
  v8 = *v7;
  v9 = v7[1];

  return sub_254FF1FC4();
}

uint64_t Device.hashValue.getter()
{
  sub_254FF2404();
  Device.hash(into:)();
  return sub_254FF2434();
}

uint64_t sub_254FC6D4C@<X0>(uint64_t *a1@<X8>)
{
  result = Device.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FC6D7C()
{
  sub_254FF2404();
  Device.hash(into:)();
  return sub_254FF2434();
}

uint64_t sub_254FC6DFC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254FC6E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceUser(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254FC6E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceUser(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254FC6F50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254FC6FF4()
{
  sub_254FC7738();
  if (v2)
  {
    return sub_254FC76D0(*(v0 + 8));
  }

  sub_254FC7790();
  sub_254FF1614();
  v4 = sub_254FC7748(*(v1 + 24));

  return sub_254FC5364(v4, v5, v6);
}

void sub_254FC7070()
{
  sub_254FC76E4();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_254FF1614();
    v5 = sub_254FC7728(*(v4 + 24));

    sub_254FC4BB8(v5, v6, v7, v8);
  }
}

uint64_t sub_254FC70DC()
{
  result = sub_254FF1614();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254FC7184()
{
  sub_254FC7738();
  if (v2)
  {
    return sub_254FC76D0(*(v0 + 8));
  }

  v4 = v1;
  sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
  v5 = sub_254FC7748(*(v4 + 24));

  return sub_254FC5364(v5, v6, v7);
}

void sub_254FC7214()
{
  sub_254FC76E4();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
    v5 = sub_254FC7728(*(v4 + 24));

    sub_254FC4BB8(v5, v6, v7, v8);
  }
}

void sub_254FC728C()
{
  sub_254FC7320();
  if (v0 <= 0x3F)
  {
    sub_254FC7370();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254FC7320()
{
  if (!qword_27F76C958)
  {
    v0 = sub_254FF21A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F76C958);
    }
  }
}

void sub_254FC7370()
{
  if (!qword_27F76C960)
  {
    sub_254FF1524();
    v0 = sub_254FF21A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F76C960);
    }
  }
}

uint64_t sub_254FC73DC()
{
  sub_254FC7738();
  if (v2)
  {
    return sub_254FC76D0(*(v0 + 8));
  }

  sub_254FC7790();
  sub_254FF1444();
  v4 = sub_254FC7748(*(v1 + 20));

  return sub_254FC5364(v4, v5, v6);
}

void sub_254FC7458()
{
  sub_254FC76E4();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_254FF1444();
    v5 = sub_254FC7728(*(v4 + 20));

    sub_254FC4BB8(v5, v6, v7, v8);
  }
}

uint64_t sub_254FC74C4()
{
  result = sub_254FF1444();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254FC7554()
{
  sub_254FC7738();
  if (v2)
  {
    return sub_254FC76D0(*(v0 + 16));
  }

  v4 = sub_254FC7790();
  type metadata accessor for DeviceUser(v4);
  v5 = sub_254FC7748(*(v1 + 28));

  return sub_254FC5364(v5, v6, v7);
}

void sub_254FC75D0()
{
  sub_254FC76E4();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for DeviceUser(0);
    v5 = sub_254FC7728(*(v4 + 28));

    sub_254FC4BB8(v5, v6, v7, v8);
  }
}

uint64_t sub_254FC763C()
{
  result = type metadata accessor for DeviceUser(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254FC76D0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_254FC76F8()
{
  sub_254FC6138(v2, v1);
  sub_254FC6138(v0, v3);
  return v2;
}

uint64_t sub_254FC7754(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t sub_254FC77A0()
{
  result = type metadata accessor for Device(0);
  v1 = *(result + 28);
  return result;
}

IntelligencePlatformDataActions::AppUsageType_optional __swiftcall AppUsageType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254FF2324();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppUsageType.rawValue.getter()
{
  v1 = 7368801;
  if (*v0 != 1)
  {
    v1 = 0x65746973626577;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7105633;
  }
}

unint64_t sub_254FC78B8()
{
  result = qword_27F76C988;
  if (!qword_27F76C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76C988);
  }

  return result;
}

uint64_t sub_254FC7930@<X0>(uint64_t *a1@<X8>)
{
  result = AppUsageType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppUsageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppUsageType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x254FC7B68);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254FC7BB0()
{
  result = qword_27F76C990;
  if (!qword_27F76C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76C990);
  }

  return result;
}

uint64_t DataActionError.hashValue.getter()
{
  v1 = *v0;
  sub_254FF2404();
  MEMORY[0x259C31B10](v1);
  return sub_254FF2434();
}

uint64_t sub_254FC7C98()
{
  v1 = *v0;
  sub_254FF2404();
  MEMORY[0x259C31B10](v1);
  return sub_254FF2434();
}

uint64_t DataActionError.localizedStringResource.getter()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = "ctivity AS SA\n    WHERE 1";
  if (v2 == 4)
  {
    v3 = "The action failed to run.";
  }

  else
  {
    v1 = 0xD000000000000019;
  }

  v4 = v2 == 3;
  if (v2 == 3)
  {
    v5 = "Invalid time range.";
  }

  else
  {
    v5 = v3;
  }

  if (v4)
  {
    v6 = 0xD000000000000027;
  }

  else
  {
    v6 = v1;
  }

  return MEMORY[0x28211CB40](v6, v5 | 0x8000000000000000);
}

unint64_t sub_254FC7D48()
{
  result = qword_27F76C998;
  if (!qword_27F76C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76C998);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataActionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DataActionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x254FC7EF4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254FC7F5C()
{
  type metadata accessor for DataActionsQueryService.GuardedData();
  v0 = swift_allocObject();
  sub_254FC9040(v0);
  sub_254FC0048(&qword_27F76C9A8, &unk_254FF3630);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_27F76C9A0 = result;
  return result;
}

uint64_t static DataActionsQueryService.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F76C790 != -1)
  {
    swift_once();
  }

  *a1 = qword_27F76C9A0;
}

uint64_t sub_254FC802C()
{
  sub_254FC8740(v0 + 16, &qword_27F76C840, &qword_254FF4810);
  sub_254FC8740(v0 + 56, &qword_27F76C9B0, &unk_254FF3640);
  sub_254FC8740(v0 + 96, &qword_27F76C850, &qword_254FF30F0);
  return v0;
}

uint64_t sub_254FC808C()
{
  sub_254FC802C();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_254FC80C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_254FC8F74(v3 + 16, &v14, &qword_27F76C840, &qword_254FF4810);
  if (v15)
  {
    return sub_254FC38F0(&v14, a2);
  }

  sub_254FC8740(&v14, &qword_27F76C840, &qword_254FF4810);
  if (qword_27F76C7A8 != -1)
  {
    swift_once();
  }

  v5 = qword_27F76EC98;
  v15 = type metadata accessor for IPSQLQuerySource();
  v16 = &protocol witness table for IPSQLQuerySource;
  *&v14 = v5;
  sub_254FC9068();

  sub_254FC905C();
  sub_254FC8FC0(v6, v7, v8, v9);
  swift_endAccess();
  sub_254FC905C();
  return sub_254FC8F74(v10, v11, v12, v13);
}

void sub_254FC8214(void (*a1)(os_unfair_lock_s *))
{
  v3 = *v1;
  os_unfair_lock_lock(v3 + 6);
  a1(v3 + 4);

  os_unfair_lock_unlock(v3 + 6);
}

uint64_t sub_254FC827C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_254FC8F74(v3 + 56, &v13, &qword_27F76C9B0, &unk_254FF3640);
  if (v14)
  {
    return sub_254FC38F0(&v13, a2);
  }

  sub_254FC8740(&v13, &qword_27F76C9B0, &unk_254FF3640);
  if (qword_27F76C7B0 != -1)
  {
    swift_once();
  }

  v14 = &type metadata for LiveGlobalKnowledgeQuerySource;
  v15 = &protocol witness table for LiveGlobalKnowledgeQuerySource;
  *&v13 = swift_allocObject();
  sub_254FC8F18(qword_27F76ECA0, v13 + 16);
  sub_254FC9068();
  sub_254FC905C();
  sub_254FC8FC0(v5, v6, v7, v8);
  swift_endAccess();
  sub_254FC905C();
  return sub_254FC8F74(v9, v10, v11, v12);
}

uint64_t sub_254FC83D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_254FC8F74(v3 + 96, &v12, &qword_27F76C850, &qword_254FF30F0);
  if (v13)
  {
    sub_254FC38F0(&v12, &v14);
    return sub_254FC38F0(&v14, a2);
  }

  else
  {
    sub_254FC8740(&v12, &qword_27F76C850, &qword_254FF30F0);
    v5 = type metadata accessor for DeviceActivityHelpers();
    v6 = [objc_allocWithZone(v5) init];
    v15 = v5;
    v16 = &protocol witness table for DeviceActivityHelpers;
    *&v14 = v6;
    sub_254FC9068();
    v7 = v6;
    sub_254FC905C();
    sub_254FC8FC0(v8, v9, v10, v11);
    result = swift_endAccess();
    a2[3] = v5;
    a2[4] = &protocol witness table for DeviceActivityHelpers;
    *a2 = v7;
  }

  return result;
}

uint64_t DataActionsQueryService.init(sqlService:liveGlobalKnowledgeQueryService:deviceActivitysource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for DataActionsQueryService.GuardedData();
  v8 = swift_allocObject();
  sub_254FC9040(v8);
  sub_254FC0048(&qword_27F76C9A8, &unk_254FF3630);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;

  os_unfair_lock_lock((v9 + 24));
  sub_254FC8720((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));

  *a4 = v9;
  sub_254FC8740(a3, &qword_27F76C850, &qword_254FF30F0);
  sub_254FC8740(a2, &qword_27F76C9B0, &unk_254FF3640);
  return sub_254FC8740(a1, &qword_27F76C840, &qword_254FF4810);
}

uint64_t sub_254FC862C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  swift_beginAccess();
  sub_254FC8E94(a2, v7 + 16, &qword_27F76C840, &qword_254FF4810);
  swift_endAccess();
  swift_beginAccess();
  sub_254FC8E94(a3, v7 + 56, &qword_27F76C9B0, &unk_254FF3640);
  swift_endAccess();
  swift_beginAccess();
  sub_254FC8E94(a4, v7 + 96, &qword_27F76C850, &qword_254FF30F0);
  return swift_endAccess();
}

uint64_t sub_254FC8740(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_254FC0048(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *initializeBufferWithCopyOfBuffer for DataActionsQueryService(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for DataActionsQueryService(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for DataActionsQueryService(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for DataActionsQueryService(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DataActionsQueryService(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of DeviceActivitySource.fetchSegments(startDate:endDate:userId:deviceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 40);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_254FC8B74;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_254FC8B74(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of DeviceActivitySource.fetchAppInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_254FC8D98;

  return v11(a1, a2, a3);
}

uint64_t sub_254FC8D98(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_254FC8E94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_254FC9020(a1, a2, a3, a4);
  sub_254FC900C(v6);
  (*(v7 + 24))(v4, v5);
  return v4;
}

uint64_t sub_254FC8EE0()
{
  sub_254FC49C4((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_254FC8F74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_254FC9020(a1, a2, a3, a4);
  sub_254FC900C(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_254FC8FC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_254FC9020(a1, a2, a3, a4);
  sub_254FC900C(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t sub_254FC9020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_254FC0048(a3, a4);
}

double sub_254FC9040(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

uint64_t sub_254FC9068()
{

  return swift_beginAccess();
}

uint64_t sub_254FC9084@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_254FD36D8();
  v4 = sub_254FC0048(v2, v3);
  v5 = sub_254FD32E4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_254FC590C();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24[-v12];
  swift_beginAccess();
  sub_254FD36B4();
  sub_254FC5770();
  v14 = sub_254FF1BD4();
  if (sub_254FC5364(v13, 1, v14) == 1)
  {
    sub_254FC538C(v13, &qword_27F76CAB0, &qword_254FF38C0);
    sub_254FF1BC4();
    sub_254FD319C(v14);
    (*(v15 + 16))(v10, a1, v14);
    sub_254FD3864();
    sub_254FC4BB8(v16, v17, v18, v19);
    swift_beginAccess();
    sub_254FD2F5C();
    return swift_endAccess();
  }

  else
  {
    sub_254FD319C(v14);
    v22 = *(v21 + 32);
    sub_254FD36B4();
    return v23();
  }
}

uint64_t sub_254FC9244@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_254FD36D8();
  v4 = sub_254FC0048(v2, v3);
  v5 = sub_254FD32E4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_254FC590C();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24[-v12];
  swift_beginAccess();
  sub_254FD36B4();
  sub_254FC5770();
  v14 = sub_254FF1B14();
  if (sub_254FC5364(v13, 1, v14) == 1)
  {
    sub_254FC538C(v13, &qword_27F76CAB8, &qword_254FF38C8);
    sub_254FF1B04();
    sub_254FF1AC4();
    sub_254FD319C(v14);
    (*(v15 + 16))(v10, a1, v14);
    sub_254FD3864();
    sub_254FC4BB8(v16, v17, v18, v19);
    swift_beginAccess();
    sub_254FD2F5C();
    return swift_endAccess();
  }

  else
  {
    sub_254FD319C(v14);
    v22 = *(v21 + 32);
    sub_254FD36B4();
    return v23();
  }
}

id sub_254FC940C()
{
  v1 = OBJC_IVAR____TtC31IntelligencePlatformDataActions21DeviceActivityHelpers____lazy_storage___appInfoCache;
  v2 = *(v0 + OBJC_IVAR____TtC31IntelligencePlatformDataActions21DeviceActivityHelpers____lazy_storage___appInfoCache);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC31IntelligencePlatformDataActions21DeviceActivityHelpers____lazy_storage___appInfoCache);
  }

  else
  {
    v4 = sub_254FC946C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_254FC946C()
{
  v0 = [objc_opt_self() sharedCache];
  v1 = [objc_allocWithZone(MEMORY[0x277D4B898]) init];
  v2 = [v1 persistentContainer];

  [v0 setPersistentContainer_];
  return v0;
}

uint64_t sub_254FC9508()
{
  v1 = v0;
  v306 = sub_254FF1BD4();
  v2 = sub_254FC583C(v306);
  v297 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_254FC5888();
  sub_254FC58C0(v6);
  v333 = sub_254FF1EB4();
  v7 = sub_254FC583C(v333);
  v321 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_254FC590C();
  sub_254FD355C();
  MEMORY[0x28223BE20](v11);
  v330 = &v261 - v12;
  v13 = sub_254FD31A8();
  v319 = type metadata accessor for Device(v13);
  v14 = sub_254FC583C(v319);
  v320 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_254FC590C();
  sub_254FD355C();
  MEMORY[0x28223BE20](v18);
  v327 = &v261 - v19;
  v20 = sub_254FC0048(&qword_27F76C860, &qword_254FF3100);
  v21 = sub_254FD32E4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_254FC58C0(&v261 - v24);
  v317 = sub_254FF1424();
  v25 = sub_254FC583C(v317);
  v308 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_254FC5888();
  v316 = v29;
  v30 = sub_254FC0048(&qword_27F76C868, &qword_254FF3108);
  v31 = sub_254FD32E4(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_254FC58C0(&v261 - v34);
  v314 = sub_254FF13D4();
  v35 = sub_254FC583C(v314);
  v304 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_254FC5888();
  sub_254FC58C0(v39);
  v312 = sub_254FF1394();
  v40 = sub_254FC583C(v312);
  v303 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_254FC5888();
  v45 = sub_254FC58C0(v44);
  v310 = type metadata accessor for DeviceUser(v45);
  v46 = sub_254FC5864(v310);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_254FC5888();
  v309 = v49;
  v50 = sub_254FC0048(&qword_27F76C9B8, &qword_254FF3740);
  v51 = sub_254FD32E4(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_254FC58C0(&v261 - v54);
  v332 = sub_254FF14D4();
  v55 = sub_254FC583C(v332);
  v302 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  sub_254FC5888();
  v328 = v59;
  sub_254FD31A8();
  v329 = sub_254FF1A44();
  v60 = sub_254FC583C(v329);
  v300 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  sub_254FC590C();
  sub_254FD355C();
  MEMORY[0x28223BE20](v64);
  sub_254FC58C0(&v261 - v65);
  v335 = sub_254FF19C4();
  v66 = sub_254FC583C(v335);
  v305 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  sub_254FC5888();
  v331 = v70;
  sub_254FD31A8();
  v334 = sub_254FF1A74();
  v71 = sub_254FC583C(v334);
  v299 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  sub_254FC5888();
  *&v339 = v75;
  sub_254FD31A8();
  v76 = sub_254FF1A94();
  v337 = sub_254FC583C(v76);
  v338 = v77;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v337);
  sub_254FC5888();
  v336 = v80;
  sub_254FD31A8();
  v301 = sub_254FF1B54();
  v81 = sub_254FC583C(v301);
  v307 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  sub_254FC7780();
  v87 = v86 - v85;
  v88 = sub_254FF1BA4();
  v89 = sub_254FC583C(v88);
  v298 = v90;
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v89);
  sub_254FC7780();
  v95 = v94 - v93;
  v96 = sub_254FF1B14();
  v97 = sub_254FC583C(v96);
  v326 = v98;
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v97);
  sub_254FC590C();
  v103 = v101 - v102;
  MEMORY[0x28223BE20](v104);
  v106 = &v261 - v105;
  v107 = sub_254FC0048(&qword_27F76C9C0, &qword_254FF3748);
  v108 = sub_254FF1EE4();
  sub_254FCF824();
  if (!v0)
  {
    v289 = v107;
    v292 = v103;
    v109 = v326;
    v294 = v96;
    v291 = v87;
    v293 = v95;
    v290 = v88;
    v322 = v108;
    sub_254FC9244(v106);
    v287 = sub_254FF1AD4();
    v111 = v109 + 8;
    v110 = *(v109 + 8);
    v110(v106, v294);
    sub_254FCAF24();
    v114 = v112;
    if (v112)
    {
      v270 = v110;
      v326 = v111;
      v115 = sub_254FD37C0();
      v116 = 1 << *(v115 + 32);
      v117 = -1;
      if (v116 < 64)
      {
        v117 = ~(-1 << v116);
      }

      v118 = v117 & *(v115 + 64);
      v272 = *MEMORY[0x277CC5840];
      sub_254FD38B0(&v337);
      v271 = v119;
      v307 = v338 + 16;
      v306 = v338 + 8;
      sub_254FD38BC(&v335);
      v305 = v120;
      v286 = v302 + 32;
      v285 = *MEMORY[0x277CB9CC8];
      sub_254FD38B0(&v333);
      v284 = v121;
      v283 = v122 + 16;
      v282 = *MEMORY[0x277CB9D08];
      sub_254FD38B0(&v334);
      v281 = v123;
      v280 = *MEMORY[0x277CB9D48];
      sub_254FD38B0(&v338);
      v279 = v124;
      v278 = v125 + 8;
      sub_254FD38BC(&v329);
      v303 = v126;
      sub_254FD38BC(&v341);
      v300 = v127;
      sub_254FD38BC(&v328);
      v269 = v135;
      v136 = v330;
      v137 = v331;
      v138 = v325;
      v106 = v337;
LABEL_8:
      v139 = v291;
      do
      {
        if (v134)
        {
          goto LABEL_14;
        }

        do
        {
          v140 = v133 + 1;
          if (__OFADD__(v133, 1))
          {
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            result = sub_254FF2384();
            __break(1u);
            return result;
          }

          if (v140 >= v129)
          {

            sub_254FD37CC();
            v106 = sub_254FCAC48(v114, v238, v239);
            goto LABEL_3;
          }

          v134 = *(v132 + 8 * v140);
          ++v133;
        }

        while (!v134);
        v133 = v140;
LABEL_14:
        v141 = __clz(__rbit64(v134));
        v134 &= v134 - 1;
        v142 = v141 | (v133 << 6);
        v143 = *(*(v128 + 56) + 8 * v142);
        v144 = *(v143 + 16);
      }

      while (!v144);
      v262 = v134;
      v263 = v133;
      v297 = v130;
      v264 = v129;
      v265 = v132;
      v266 = v144;
      v145 = (*(v128 + 48) + 16 * v142);
      v147 = *v145;
      v146 = v145[1];
      v267 = v143 + 32;
      v275 = v131;
      v298 = v147;
      v276 = v114;
      v149 = v131 == v147 && v114 == v146;
      v277 = v149;
      v150 = v146;
      v151 = v143;

      v268 = v151;

      v152 = 0;
      while (1)
      {
        if (v152 >= *(v268 + 16))
        {
          goto LABEL_71;
        }

        v274 = v152;
        v153 = (v267 + 16 * v152);
        v154 = v153[1];
        v289 = *v153;

        sub_254FF1484();
        sub_254FC5AE8(&v303);
        v155(v139, v272, v301);

        v288 = v154;
        sub_254FF1B84();
        sub_254FC9244(v292);
        v156 = sub_254FF1AE4();
        if (v1)
        {
          break;
        }

        v157 = v156;
        v273 = 0;
        v158 = sub_254FD3334();
        v159(v158);
        v308 = *(v157 + 16);
        if (v308)
        {
          v160 = 0;
          sub_254FD318C(v338);
          v304 = v157 + v161;
          v162 = v336;
          v302 = v157;
          while (1)
          {
            if (v160 >= *(v157 + 16))
            {
              __break(1u);
              goto LABEL_68;
            }

            v163 = v338;
            (*(v338 + 16))(v162, v304 + *(v338 + 72) * v160, v106);
            sub_254FF1A84();
            v164 = *(v163 + 8);
            v165 = sub_254FD31FC();
            v166(v165);
            sub_254FF1A64();
            v167 = sub_254FF19B4();
            v169 = v168;
            sub_254FC5AE8(&v335);
            v170(v137, v335);
            if (!v169)
            {
              goto LABEL_33;
            }

            v299 = v167;
            v321 = v169;
            sub_254FF1A54();
            v171 = sub_254FF1A34();
            v173 = v172;
            v174 = *v297;
            v175 = v329;
            (*v297)(v138, v329);
            if (!v173)
            {
              break;
            }

            v296 = v171;
            v176 = v323;
            sub_254FF1A54();
            v177 = v324;
            sub_254FF1A14();
            v174(v176, v175);
            v178 = v332;
            if (sub_254FC5364(v177, 1, v332) == 1)
            {

              sub_254FC538C(v177, &qword_27F76C9B8, &qword_254FF3740);
              v136 = v330;
              v138 = v325;
LABEL_32:
              v137 = v331;
LABEL_33:
              sub_254FF1D14();
              v179 = sub_254FF1EA4();
              v180 = sub_254FF2174();
              if (os_log_type_enabled(v179, v180))
              {
                sub_254FC5B38();
                v181 = swift_slowAlloc();
                *v181 = 0;
                _os_log_impl(&dword_254FBD000, v179, v180, "DeviceActivityHelpers: No user information provided, skipping", v181, 2u);
                sub_254FC592C();
                MEMORY[0x259C32150]();
              }

              sub_254FC5AE8(&v330);
              v182(v136, v333);
              v183 = v334;
              v184 = v339;
              goto LABEL_36;
            }

            sub_254FC5AE8(v318);
            v186(v328, v177, v178);
            v187 = v314;
            v188 = v312;
            v189 = v298;
            if (v277 || (v190 = sub_254FF2364(), v191 = 0, (v190 & 1) != 0))
            {
              v191 = 1;
            }

            v295 = v191;
            v192 = v311;
            *v311 = v189;
            v192[1] = v150;
            sub_254FC5AE8(&v316);
            v193(v192, v285, v188);
            sub_254FC5AE8(&v315);
            v194 = v313;
            v195(v313, v328, v332);
            sub_254FC5AE8(&v313);
            v196(v194, v282, v187);
            sub_254FC5AE8(&v311);
            v197(v316, v280, v317);
            swift_bridgeObjectRetain_n();
            v198 = v315;
            sub_254FF1414();
            v199 = sub_254FF1434();
            sub_254FC4BB8(v198, 0, 1, v199);
            sub_254FF1474();
            sub_254FD3690();
            sub_254FC4BB8(v200, v201, v202, v203);
            v204 = v309 + *(v310 + 20);
            v205 = v309;
            v206 = MEMORY[0x277D84F90];
            sub_254FF13A4();
            *v205 = v189;
            v205[1] = v150;
            v207 = *(v319 + 28);
            v208 = v327;
            sub_254FD1924();
            v209 = v288;
            *(v208 + 8) = v289;
            *(v208 + 16) = v209;
            v210 = v321;
            *(v208 + 24) = v299;
            *(v208 + 32) = v210;
            *v208 = 0;
            sub_254FD37CC();
            v211 = *(v194 + 16);

            if (v211)
            {
              v212 = sub_254FC4A60();
              if (v213)
              {
                v214 = *(*(v194 + 56) + 8 * v212);
              }

              else
              {
                v214 = v206;
              }
            }

            else
            {
              v214 = v206;
            }

            sub_254FD1924();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v233 = *(v214 + 16);
              sub_254FD3864();
              sub_254FC3A44();
              v214 = v234;
            }

            v215 = *(v214 + 16);
            if (v215 >= *(v214 + 24) >> 1)
            {
              sub_254FD3864();
              sub_254FC3A44();
              v214 = v235;
            }

            *(v214 + 16) = v215 + 1;
            v216 = v214 + ((*(v320 + 80) + 32) & ~*(v320 + 80)) + *(v320 + 72) * v215;
            sub_254FD1C08();
            sub_254FD37CC();
            swift_isUniquelyReferenced_nonNull_native();
            v340 = v215;
            v217 = sub_254FC4A60();
            if (__OFADD__(*(v215 + 16), (v218 & 1) == 0))
            {
              goto LABEL_69;
            }

            v219 = v217;
            v220 = v218;
            sub_254FC0048(&qword_27F76C9E0, &qword_254FF3768);
            if (sub_254FF22A4())
            {
              v221 = sub_254FC4A60();
              v137 = v331;
              v223 = v332;
              v224 = v328;
              if ((v220 & 1) != (v222 & 1))
              {
                goto LABEL_72;
              }

              v219 = v221;
            }

            else
            {
              v137 = v331;
              v223 = v332;
              v224 = v328;
            }

            v225 = v340;
            v322 = v340;
            if (v220)
            {
              v226 = v340[7];
              v227 = *(v226 + 8 * v219);
              *(v226 + 8 * v219) = v214;
            }

            else
            {
              v340[(v219 >> 6) + 8] |= 1 << v219;
              v228 = (v225[6] + 16 * v219);
              *v228 = v298;
              v228[1] = v150;
              *(v225[7] + 8 * v219) = v214;
              v229 = v225[2];
              v230 = __OFADD__(v229, 1);
              v231 = v229 + 1;
              if (v230)
              {
                goto LABEL_70;
              }

              v225[2] = v231;
            }

            v136 = v330;
            v183 = v334;
            v184 = v339;
            sub_254FD1A58(v327, type metadata accessor for Device);
            sub_254FD1A58(v205, type metadata accessor for DeviceUser);
            sub_254FC5AE8(&v310);
            v232(v224, v223);
            v138 = v325;
LABEL_36:
            v157 = v302;
            ++v160;
            sub_254FC5AE8(&v333);
            v185(v184, v183);
            v162 = v336;
            v106 = v337;
            if (v308 == v160)
            {
              goto LABEL_60;
            }
          }

          v136 = v330;
          goto LABEL_32;
        }

LABEL_60:
        v152 = v274 + 1;

        sub_254FC5AE8(&v301);
        v236 = sub_254FD3824();
        v237(v236);
        v1 = v273;
        v139 = v291;
        if (v152 == v266)
        {

          v128 = sub_254FD37C0();
          v114 = v276;
          v131 = v275;
          v132 = v265;
          v129 = v264;
          v130 = v297;
          v133 = v263;
          v134 = v262;
          goto LABEL_8;
        }
      }

      sub_254FD37C0();

      v257 = sub_254FD3334();
      v258(v257);
      sub_254FC5AE8(&v301);
      v259 = sub_254FD3824();
      v260(v259);
    }

    else
    {
      sub_254FD37C0();

      sub_254FF1D14();
      v240 = sub_254FF1EA4();
      v241 = sub_254FF2174();
      v242 = os_log_type_enabled(v240, v241);
      v243 = v321;
      if (v242)
      {
        sub_254FC5B38();
        v244 = swift_slowAlloc();
        *v244 = 0;
        _os_log_impl(&dword_254FBD000, v240, v241, "DeviceActivityHelpers: Local user identifier not found. Returning default device", v244, 2u);
        sub_254FC592C();
        MEMORY[0x259C32150]();
      }

      v245 = *(v243 + 8);
      v246 = sub_254FD34DC();
      v247(v246);
      sub_254FC0048(&qword_27F76C9C8, &unk_254FF3750);
      inited = swift_initStackObject();
      v339 = xmmword_254FF3720;
      *(inited + 16) = xmmword_254FF3720;
      *(inited + 32) = 0;
      *(inited + 40) = 0;
      sub_254FC0048(&qword_27F76C8F0, &qword_254FF3198);
      v249 = *(v320 + 72);
      v250 = (*(v320 + 80) + 32) & ~*(v320 + 80);
      v251 = swift_allocObject();
      *(v251 + 16) = v339;
      v252 = v296;
      sub_254FC9084(v296);
      v253 = sub_254FF1BB4();
      v255 = v254;
      v256 = v253;
      v297[1](v252, v306);
      Device.init(thisDeviceIdentifier:)(v256, v255, v251 + v250);
      *(inited + 48) = v251;
      sub_254FC0048(&qword_27F76C9D0, &qword_254FF3760);
      sub_254FD1858();
      sub_254FBF6B0();
      v106 = sub_254FF1EE4();
      sub_254FD37CC();
    }
  }

LABEL_3:

  return v106;
}

unint64_t sub_254FCAC48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    sub_254FC0048(a2, a3);
    v4 = sub_254FF2304();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = sub_254FC0048(&qword_27F76C9D0, &qword_254FF3760);
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  if (v5 == MEMORY[0x277D837D0])
  {
    v17 = (v7 + 63) >> 6;

    v18 = 0;
    while (v9)
    {
      v19 = v18;
LABEL_21:
      v20 = __clz(__rbit64(v9)) | (v19 << 6);
      v21 = (*(a1 + 48) + 16 * v20);
      v22 = *(*(a1 + 56) + 8 * v20);
      v9 &= v9 - 1;
      v34 = *v21;
      v36 = v21[1];

      swift_dynamicCast();
      result = sub_254FC4C4C();
      v23 = result;
      if (v24)
      {
        v25 = (v4[6] + 16 * result);
        v26 = v25[1];
        *v25 = v37;
        v25[1] = v38;

        v27 = v4[7];
        v28 = *(v27 + 8 * v23);
        *(v27 + 8 * v23) = v22;

        v18 = v19;
      }

      else
      {
        if (v4[2] >= v4[3])
        {
          goto LABEL_29;
        }

        *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v29 = (v4[6] + 16 * result);
        *v29 = v37;
        v29[1] = v38;
        *(v4[7] + 8 * result) = v22;
        v30 = v4[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_30;
        }

        v4[2] = v32;
        v18 = v19;
      }
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
LABEL_26:

        return v4;
      }

      v9 = *(v6 + 8 * v19);
      ++v18;
      if (v9)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v10 = (v7 + 63) >> 6;

    v12 = 0;
    if (!v9)
    {
      goto LABEL_9;
    }

    do
    {
      v13 = v12;
LABEL_13:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v16 = *(*(a1 + 56) + 8 * v14);
      v9 &= v9 - 1;
      v33 = *v15;
      v35 = v15[1];

      swift_dynamicCast();
      result = sub_254FD197C(v37, v38, v16, v4);
    }

    while (v9);
LABEL_9:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_26;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_254FCAF24()
{
  v2 = sub_254FF1A44();
  v3 = sub_254FC583C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_254FC7780();
  v10 = v9 - v8;
  v11 = sub_254FF1B14();
  v12 = sub_254FC583C(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_254FC7780();
  v19 = v18 - v17;
  sub_254FCF824();
  if (!v1)
  {
    sub_254FC9244(v19);
    sub_254FF1AF4();
    (*(v14 + 8))(v19, v11);
    v0 = sub_254FF1A24();
    (*(v5 + 8))(v10, v2);
  }

  return v0;
}

uint64_t sub_254FCB09C()
{
  v2 = sub_254FF1BD4();
  v3 = sub_254FC583C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_254FC7780();
  v10 = v9 - v8;
  sub_254FCF824();
  if (!v1)
  {
    sub_254FC9084(v10);
    v0 = sub_254FF1BB4();
    v12 = *(v5 + 8);
    v13 = sub_254FD33E4();
    v14(v13);
  }

  return v0;
}

uint64_t sub_254FCB1A0()
{
  sub_254FD3208();
  v1[70] = v0;
  v1[69] = v2;
  v1[68] = v3;
  v1[67] = v4;
  v1[66] = v5;
  v1[65] = v6;
  v1[64] = v7;
  v8 = sub_254FF1924();
  v1[71] = v8;
  sub_254FC58B0(v8);
  v1[72] = v9;
  v11 = *(v10 + 64);
  v1[73] = sub_254FD3480();
  v12 = sub_254FF1994();
  v1[74] = v12;
  sub_254FC58B0(v12);
  v1[75] = v13;
  v15 = *(v14 + 64);
  v1[76] = sub_254FD3480();
  v16 = sub_254FF1964();
  v1[77] = v16;
  sub_254FC58B0(v16);
  v1[78] = v17;
  v19 = *(v18 + 64);
  v1[79] = sub_254FD3480();
  v20 = sub_254FF1A44();
  v1[80] = v20;
  sub_254FC58B0(v20);
  v1[81] = v21;
  v23 = *(v22 + 64);
  v1[82] = sub_254FD3480();
  v24 = sub_254FF19C4();
  v1[83] = v24;
  sub_254FC58B0(v24);
  v1[84] = v25;
  v27 = *(v26 + 64);
  v1[85] = sub_254FD3480();
  v28 = sub_254FF19F4();
  v1[86] = v28;
  sub_254FC58B0(v28);
  v1[87] = v29;
  v31 = *(v30 + 64);
  v1[88] = sub_254FD3594();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v32 = sub_254FC0048(&qword_27F76C9E8, &qword_254FF3778);
  sub_254FD32E4(v32);
  v34 = *(v33 + 64);
  v1[91] = sub_254FD3480();
  v35 = sub_254FC0048(&qword_27F76C9F0, &qword_254FF3780);
  v1[92] = v35;
  sub_254FC58B0(v35);
  v1[93] = v36;
  v38 = *(v37 + 64);
  v1[94] = sub_254FD3594();
  v1[95] = swift_task_alloc();
  v39 = sub_254FF1A74();
  v1[96] = v39;
  sub_254FC58B0(v39);
  v1[97] = v40;
  v42 = *(v41 + 64);
  v1[98] = sub_254FD3480();
  v43 = sub_254FF1A94();
  v1[99] = v43;
  sub_254FC58B0(v43);
  v1[100] = v44;
  v46 = *(v45 + 64);
  v1[101] = sub_254FD3480();
  v47 = sub_254FC0048(&qword_27F76C9F8, &qword_254FF3788);
  sub_254FD32E4(v47);
  v49 = *(v48 + 64);
  v1[102] = sub_254FD3480();
  v50 = sub_254FF1B54();
  v1[103] = v50;
  sub_254FC58B0(v50);
  v1[104] = v51;
  v53 = *(v52 + 64);
  v1[105] = sub_254FD3480();
  v54 = sub_254FF1BA4();
  v1[106] = v54;
  sub_254FC58B0(v54);
  v1[107] = v55;
  v57 = *(v56 + 64);
  v1[108] = sub_254FD3480();
  v58 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  sub_254FD32E4(v58);
  v60 = *(v59 + 64);
  v1[109] = sub_254FD3594();
  v1[110] = swift_task_alloc();
  v61 = sub_254FF1614();
  v1[111] = v61;
  sub_254FC58B0(v61);
  v1[112] = v62;
  v64 = *(v63 + 64);
  v1[113] = sub_254FD3594();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v65 = sub_254FF14C4();
  v1[117] = v65;
  sub_254FC58B0(v65);
  v1[118] = v66;
  v68 = *(v67 + 64);
  v1[119] = sub_254FD3594();
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v69 = sub_254FF1BD4();
  v1[122] = v69;
  sub_254FC58B0(v69);
  v1[123] = v70;
  v72 = *(v71 + 64);
  v1[124] = sub_254FD3480();
  v73 = sub_254FF1B14();
  v1[125] = v73;
  sub_254FC58B0(v73);
  v1[126] = v74;
  v76 = *(v75 + 64);
  v1[127] = sub_254FD3594();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v77 = sub_254FF1EB4();
  v1[130] = v77;
  sub_254FC58B0(v77);
  v1[131] = v78;
  v80 = *(v79 + 64);
  v1[132] = sub_254FD3594();
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();
  sub_254FD3804();

  return MEMORY[0x2822009F8](v81, v82, v83);
}

uint64_t sub_254FCB800()
{
  v354 = v1;
  v5 = v1;
  v1[63] = MEMORY[0x277D84F90];
  sub_254FCF824();
  v6 = v1[70];
  v7 = sub_254FCB09C();
  v17 = v1[69];
  if (!v8)
  {
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (!v17)
  {

    goto LABEL_16;
  }

  v18 = v7 == v1[68] && v8 == v17;
  if (!v18)
  {
    v0 = sub_254FF2364();

    if (v0)
    {
      goto LABEL_21;
    }

LABEL_16:
    v19 = v1[70];
    sub_254FC9244(v1[128]);
    v20 = sub_254FF1AD4();
    v21 = v1[128];
    v22 = v1[126];
    v25 = *(v22 + 8);
    v24 = v22 + 8;
    inited = v25;
    (v25)(v21, v5[125]);
    v314 = v25;
    v315 = v24;
    sub_254FCAC48(v20, &qword_27F76CAD8, &qword_254FF38E0);
    sub_254FD37A8();
    if (!v2[2])
    {
      v79 = v5[133];

      sub_254FF1D14();
      v80 = sub_254FF1EA4();
      v81 = sub_254FF2154();
      if (sub_254FD36FC(v81))
      {
        sub_254FC5B38();
        *swift_slowAlloc() = 0;
        sub_254FD39BC(&dword_254FBD000, v82, v83, "DeviceActivityHelpers: No devices found for current user. Assuming local device as default.");
        sub_254FC592C();
        MEMORY[0x259C32150]();
      }

      sub_254FD3718();
      v84 = *(v3 + 8);
      v3 += 8;
      v84(inited, v2);
      sub_254FC0048(&qword_27F76CA58, &qword_254FF37A8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_254FF3720;
      *(inited + 32) = 0;
      *(inited + 40) = 0;
      sub_254FC0048(&qword_27F76C8C0, &qword_254FF37B0);
      v85 = swift_allocObject();
      sub_254FD399C(v85);
      sub_254FF1BB4();
      v86 = sub_254FD35C4();
      (*(v276 + 8))(v86);
      v2[4] = v24;
      v2[5] = v80;
      *(inited + 48) = v2;
      v20 = sub_254FC0048(&qword_27F76C9D0, &qword_254FF3760);
      sub_254FC0048(&qword_27F76C880, &qword_254FF3120);
      sub_254FD1858();
      sub_254FBF6B0();
      v2 = sub_254FF1EE4();
    }

    if (v5[67] && (v26 = v5[66], v20 = v2, v27 = sub_254FC4C4C(), (v28 & 1) != 0))
    {
      inited = v27;
      swift_isUniquelyReferenced_nonNull_native();
      v353[0] = v2;
      v29 = v2[3];
      sub_254FC0048(&qword_27F76CA50, &unk_254FF3798);
      sub_254FD397C();
      v30 = *(*(v353[0] + 48) + 16 * inited + 8);

      v20 = *(*(v353[0] + 56) + 8 * inited);
      sub_254FC0048(&qword_27F76C9D0, &qword_254FF3760);
      sub_254FC0048(&qword_27F76C880, &qword_254FF3120);
      sub_254FD1858();
      v316 = v353[0];
      sub_254FF22C4();
    }

    else
    {
      v316 = v2;
    }

    v350 = v5[69];
    v352 = v5;
    if (v350)
    {
      v20 = v316 + 64;
      v47 = *(v316 + 64);
      v48 = *(v316 + 32);
      sub_254FD310C();
      v51 = v50 & v49;
      inited = (63 - v52) >> 6;

      v54 = 0;
      v55 = 0;
      v348 = inited;
      if (v51)
      {
        goto LABEL_33;
      }

      do
      {
LABEL_29:
        v56 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_142;
        }

        if (v56 >= inited)
        {

          goto LABEL_69;
        }

        v51 = *(v20 + 8 * v56);
        ++v55;
      }

      while (!v51);
      v55 = v56;
      while (1)
      {
LABEL_33:
        v57 = v5[68];
        v349 = v55;
        v58 = *(*(v53 + 56) + ((v55 << 9) | (8 * __clz(__rbit64(v51)))));
        swift_bridgeObjectRetain_n();

        v60 = sub_254FD1AD4(v59, v57, v350);
        if (v61)
        {
          v62 = *(v58 + 16);
        }

        else
        {
          v62 = v60;
          v63 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_148;
          }

          v347 = v51;
          for (i = 16 * v60; ; i += 16)
          {
            v65 = *(v58 + 16);
            if (v63 == v65)
            {
              break;
            }

            if (v63 >= v65)
            {
              goto LABEL_140;
            }

            sub_254FD369C();
            v67 = v18 && v66 == v4;
            if (v67 || (sub_254FD37D8(), (sub_254FF2364() & 1) != 0))
            {
              if (v63 != v62)
              {
                if (v62 >= v65)
                {
                  goto LABEL_143;
                }

                sub_254FD395C();

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_254FD1BDC(v58);
                  v58 = v72;
                }

                v68 = v58 + 16 * v62;
                v69 = *(v68 + 40);
                *(v68 + 32) = v3;
                *(v68 + 40) = v4;

                if (v63 >= *(v58 + 16))
                {
                  goto LABEL_144;
                }

                v70 = v58 + i;
                v71 = *(v58 + i + 56);
                *(v70 + 48) = v5;
                *(v70 + 56) = v65;

                v5 = v352;
              }

              ++v62;
            }

            ++v63;
          }

          v51 = v347;
        }

        v73 = *(v58 + 16);
        v3 = v73 - v62;
        if (v73 < v62)
        {
          break;
        }

        if (v62 < 0)
        {
          goto LABEL_146;
        }

        if (__OFADD__(v73, v62 - v73))
        {
          goto LABEL_147;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0 && v62 <= *(v58 + 24) >> 1)
        {
          v74 = v51;
        }

        else
        {
          v74 = v51;
          sub_254FD393C();
          v58 = v75;
        }

        v4 = (v58 + 32 + 16 * v62);
        sub_254FD34DC();
        swift_arrayDestroy();
        if (v73 != v62)
        {
          sub_254FD373C();
          v76 = *(v58 + 16);
          v77 = __OFADD__(v76, v62 - v73);
          v78 = v76 - v3;
          if (v77)
          {
            goto LABEL_149;
          }

          *(v58 + 16) = v78;
        }

        v51 = (v74 - 1) & v74;

        v53 = v316;
        inited = v348;
        v20 = v316 + 64;
        v55 = v349;
        if (!v51)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

LABEL_69:
    sub_254FD391C();
    sub_254FD33E4();
    sub_254FC5770();
    sub_254FD3214();
    v351 = 0;
    if (v18)
    {
      v87 = v5[110];
    }

    else
    {
      v88 = sub_254FD3364();
      v4(v88);
      sub_254FD33E4();
      sub_254FC5770();
      sub_254FD3214();
      if (!v89)
      {
        sub_254FD3618();
        v92 = sub_254FD31B4();
        v4(v92);
        v93 = sub_254FD3600();
        v4(v93);
        v94 = sub_254FD35F4();
        v4(v94);
        sub_254FD38FC();
        v95 = *(inited + 8);
        v96 = sub_254FD34D0();
        (v95)(v96);
        sub_254FD3538();
        v95();
        v97 = sub_254FD3678();
        v98(v97);
        v99 = *(v20 + 32);
        v100 = sub_254FD36D8();
        v101(v100);
LABEL_76:
        v102 = v316;
        sub_254FD3264();
        if (v112 != v77)
        {
          v104 = ~v108;
        }

        v113 = v104 & v103;
        v54 = v5[100];
        v114 = (63 - v105) >> 6;
        v115 = (v106 + 16);
        v116 = v5[104] + 104;
        v117 = v5[93];
        v118 = v54 + 2;
        v119 = v54 + 1;
        v120 = v5[87];
        v121 = (v117 + 16);
        v322 = v120 + 32;
        v122 = v120 + 16;
        v325 = (v120 + 8);
        v321 = (v107 + 8);
        v320 = (v5[84] + 8);
        v123 = v5[78];
        v319 = v5[81] + 8;
        v330 = v123 + 16;
        v346 = (v5[112] + 8);
        v328 = v5[75];
        v327 = v5[72];
        v337 = v123;
        v329 = v123 + 8;
        v323 = (v106 + 8);
        *&v111 = 136315138;
        v317 = v111;
        v124 = *MEMORY[0x277CC5838];
        v125 = (v117 + 8);
        v126 = v5[97] + 8;
        v127 = v5[107] + 8;
        do
        {
LABEL_80:
          if (!v113)
          {
            do
            {
              v128 = v109 + 1;
              if (__OFADD__(v109, 1))
              {
                goto LABEL_141;
              }

              if (v128 >= v114)
              {
                v270 = v5[134];
                sub_254FD3174();
                v271 = v54[127];
                v272 = v54[121];
                v331 = v54[124];
                v333 = v54[120];
                v273 = v54[117];
                v335 = v54[119];
                v338 = v54[116];
                v341 = v54[115];
                v343 = v54[114];
                sub_254FD2FC8();
                (*v323)(v272);

                sub_254FD3394();
                sub_254FD344C();

                __asm { BRAA            X2, X16 }
              }

              v113 = *(v110 + 8 * v128);
              ++v109;
            }

            while (!v113);
            v109 = v128;
          }

          v129 = __clz(__rbit64(v113));
          v113 &= v113 - 1;
          v130 = v129 | (v109 << 6);
          v131 = *(*(v102 + 56) + 8 * v130);
        }

        while (!*(v131 + 2));
        v293 = v109;
        v294 = *(v131 + 2);
        v305 = v126;
        v306 = v125;
        HIDWORD(v300) = v124;
        v318 = v122;
        v309 = v121;
        v310 = v119;
        v311 = v118;
        v290 = v113;
        v291 = v114;
        v292 = v110;
        v132 = (*(v102 + 48) + 16 * v130);
        v297 = *v132;
        v299 = v131 + 32;
        v301 = v116;
        v302 = v132[1];

        v133 = 0;
        v312 = v54;
        v295 = v115;
        v296 = v127;
        v303 = v131;
        while (v133 < *(v131 + 2))
        {
          v134 = v5[121];
          v135 = v5[117];
          v136 = v5[108];
          sub_254FD3498();
          v139 = *v137;
          v138 = *(v137 + 8);
          v140 = (*v115)(v131);
          v148 = sub_254FD35AC(v140, v141, v142, v143, v144, v145, v146, v147, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301);
          v149(v148);
          sub_254FF1B74();
          sub_254FD3690();
          sub_254FC4BB8(v150, v151, v152, v153);

          sub_254FF1B94();
          if (v302)
          {
            v154 = v5[108];

            sub_254FF1B44();
            sub_254FD33E4();
            sub_254FF1B64();
          }

          else
          {
          }

          sub_254FD38DC();
          v155 = 0;
          v156 = sub_254FF1AE4();
          v157 = v5[127];
          v158 = v5[125];
          v326 = 0;
          v131 = v303;
          v159 = v156;
          v160 = sub_254FD31FC();
          v314(v160);
          v307 = *(v159 + 16);
          if (v307)
          {
            v161 = 0;
            sub_254FD318C(v312);
            v308 = v159 + v170;
            v304 = v159;
            while (v161 < *(v159 + 16))
            {
              sub_254FD3238(v162, v163, v164, v165, v166, v167, v168, v169, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312);
              v171 = sub_254FD37F0();
              v172(v171);
              v313 = v161 + 1;
              sub_254FF1A84();
              sub_254FF1A04();
              (*(v159 + 8))(v157, v155);
              v173 = *v309;
              v174 = sub_254FD34DC();
              v175(v174);
              while (1)
              {
                sub_254FD3760();
                if (sub_254FC5364(v158, 1, v155) == 1)
                {
                  break;
                }

                sub_254FD36C0();
                v176 = sub_254FD3838();
                v177(v176);
                sub_254FF1D14();
                v178 = sub_254FD3888();
                v131(v178);
                v155 = sub_254FF1EA4();
                v179 = sub_254FF2154();
                v180 = os_log_type_enabled(v155, v179);
                v158 = v5[132];
                v181 = v5[130];
                v182 = v5[89];
                if (v180)
                {
                  v183 = sub_254FD356C();
                  v184 = swift_slowAlloc();
                  v192 = sub_254FD33C4(v184, v185, v186, v187, v188, v189, v190, v191, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
                  v131(v192);
                  v193 = sub_254FF1FA4();
                  v194 = v158;
                  v196 = v195;
                  sub_254FD387C(v325);
                  sub_254FD3538();
                  v324 = v197;
                  v197();
                  v198 = sub_254FC4454(v193, v196, v353);

                  *(v183 + 4) = v198;
                  _os_log_impl(&dword_254FBD000, v155, v179, "DeviceActivityHelpers: Refreshed segments: %s", v183, 0xCu);
                  v158 = v349;
                  sub_254FC49C4(v349);
                  sub_254FC592C();
                  MEMORY[0x259C32150]();
                  sub_254FC592C();
                  MEMORY[0x259C32150]();

                  (*v321)(v194, v351);
                }

                else
                {
                  v199 = v5[86];

                  v200 = sub_254FD387C(v325);
                  v324 = v201;
                  (v201)(v200, v199);
                  v202 = sub_254FD3838();
                  v203(v202, v181);
                }

                sub_254FD32A8();
                v349 = sub_254FF19A4();
                v351 = v204;
                v139 = *v320;
                v205 = sub_254FD37E4();
                v139(v205);
                sub_254FF1A64();
                sub_254FF19B4();
                v131 = v206;
                v207 = sub_254FD37E4();
                v139(v207);
                sub_254FD3A84();
                sub_254FF1A24();
                v209 = v208;
                v54 = v319;
                v210 = sub_254FD3844();
                (v158)(v210);
                sub_254FD3A84();
                sub_254FF1A34();
                v212 = v211;
                v213 = sub_254FC5B00();
                (v158)(v213);
                sub_254FF19D4();
                v157 = sub_254FF19E4();
                v340 = *(v157 + 16);
                if (v340)
                {
                  sub_254FD318C(v337);
                  sub_254FD351C();
                  while (v222 < *(v157 + 16))
                  {
                    sub_254FD3810(v214, v215, v216, v217, v218, v219, v220, v221, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, *(&v317 + 1), v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v332, v334, v337);
                    v345 = v223;
                    v224 = sub_254FD3660();
                    v225(v224);
                    sub_254FF1944();
                    if (v226)
                    {
                      v344 = sub_254FF1F24();
                    }

                    else
                    {
                      v344 = 0;
                    }

                    v227 = v5[79];
                    v228 = sub_254FF1934();
                    if (*(v228 + 16))
                    {
                      sub_254FD3050(v228);
                      do
                      {
                        v229 = sub_254FD3648();
                        v230(v229);
                        v231 = [objc_allocWithZone(type metadata accessor for ActivitySegment()) init];
                        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
                        sub_254FD33A0();
                        sub_254FD34E8();
                        sub_254FD39DC();
                        sub_254FD33A0();
                        sub_254FD34E8();
                        if (v131)
                        {

                          sub_254FD39F4();
                          sub_254FD3358();

                          sub_254FD33A0();
                          sub_254FD34E8();
                        }

                        if (v209)
                        {

                          sub_254FD3A0C();
                          sub_254FD3A3C();
                          sub_254FD33A0();
                          sub_254FD34E8();
                        }

                        if (v212)
                        {

                          sub_254FD3A24();
                          sub_254FD3A54();
                          sub_254FD33A0();
                          sub_254FD34E8();
                        }

                        sub_254FD32FC();
                        sub_254FF15A4();
                        v232 = sub_254FD35DC();
                        v212(v232);
                        v209 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime;
                        sub_254FD33A0();
                        v233 = *&v231[v209];
                        *&v231[v209] = v131;

                        v5 = v352;
                        sub_254FF1494();
                        sub_254FF15A4();
                        v234 = sub_254FD3358();
                        (v212)(v234, v139);
                        v235 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime;
                        sub_254FD33A0();
                        v236 = *&v231[v235];
                        *&v231[v235] = v131;

                        sub_254FF1984();
                        sub_254FF1F24();
                        sub_254FD37A8();
                        sub_254FD33A0();
                        sub_254FD3A6C();
                        sub_254FF1974();
                        sub_254FF2124();
                        v155 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration;
                        sub_254FD33A0();
                        sub_254FD34E8();
                        MEMORY[0x259C31750]();
                        sub_254FD3128();
                        if (v238)
                        {
                          sub_254FD3150(v237);
                        }

                        v239 = v352[76];
                        v131 = v352[74];
                        sub_254FD34B4();
                        v240 = v352[63];
                        v241 = sub_254FD3298();
                        v242(v241);
                        sub_254FD3084();
                        v139 = v351;
                        v212 = v347;
                      }

                      while (!v18);
                    }

                    v243 = v5[79];
                    v244 = sub_254FF1954();
                    if (*(v244 + 16))
                    {
                      sub_254FD3050(v244);
                      do
                      {
                        v245 = sub_254FD3500();
                        v246(v245);
                        v247 = [objc_allocWithZone(type metadata accessor for ActivitySegment()) init];
                        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
                        sub_254FD33A0();
                        sub_254FD3468();
                        sub_254FD39DC();
                        sub_254FD33A0();
                        sub_254FD3468();
                        if (v131)
                        {

                          sub_254FD39F4();
                          sub_254FD3358();

                          sub_254FD33A0();
                          sub_254FD3468();
                        }

                        if (v209)
                        {

                          sub_254FD3A0C();
                          sub_254FD3A3C();
                          sub_254FD33A0();
                          sub_254FD3468();
                        }

                        if (v212)
                        {

                          sub_254FD3A24();
                          sub_254FD3A54();
                          sub_254FD33A0();
                          sub_254FD3468();
                        }

                        sub_254FD341C();
                        v248 = sub_254FF15A4();
                        v209 = v346;
                        v249 = *v346;
                        v250 = sub_254FD34D0();
                        (v249)(v250);
                        v251 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime;
                        sub_254FD33A0();
                        v252 = *&v247[v251];
                        *&v247[v251] = v248;

                        sub_254FF1494();
                        sub_254FF15A4();
                        sub_254FD3358();
                        sub_254FD3538();
                        v249();
                        sub_254FD33A0();
                        sub_254FD3468();
                        sub_254FF1914();
                        sub_254FF1F24();
                        sub_254FD37A8();
                        sub_254FD33A0();
                        sub_254FD3A6C();
                        sub_254FF1904();
                        sub_254FF2124();
                        sub_254FD33A0();
                        sub_254FD3468();
                        MEMORY[0x259C31750]();
                        sub_254FD3128();
                        if (v238)
                        {
                          sub_254FD3150(v253);
                        }

                        v254 = v5[73];
                        v131 = v5[71];
                        sub_254FD34B4();
                        v255 = v5[63];
                        v256 = sub_254FD3298();
                        v257(v256);
                        sub_254FD3084();
                        v139 = v351;
                        v212 = v347;
                      }

                      while (!v18);
                    }

                    v54 = (v345 + 1);
                    v258 = v5[79];
                    v158 = v5[77];

                    v259 = sub_254FD30FC();
                    v214 = v260(v259);
                    v222 = v345 + 1;
                    v157 = v334;
                    if (v345 + 1 == v340)
                    {
                      goto LABEL_130;
                    }
                  }

                  __break(1u);
LABEL_140:
                  __break(1u);
LABEL_141:
                  __break(1u);
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
                  v277 = v5[121];
                  v278 = v5[117];
                  v279 = v5[108];
                  v280 = v5[106];

                  v281 = sub_254FD31FC();
                  v314(v281);
                  v282 = *v296;
                  v283 = sub_254FD37D8();
                  v284(v283);
                  v285 = *v323;
                  v286 = sub_254FC5B00();
                  v287(v286);

                  v9 = v5[134];
                  sub_254FD3174();
                  v10 = v54[127];
                  v11 = v54[124];
                  v12 = v54[121];
                  v13 = v54[120];
                  v14 = v54[119];
                  v336 = v54[116];
                  v339 = v54[115];
                  v342 = v54[114];
                  sub_254FD2FC8();

                  sub_254FD3410();
                  sub_254FD344C();

                  __asm { BRAA            X1, X16 }
                }

LABEL_130:

                sub_254FD3784();

                v261 = sub_254FD30FC();
                v262(v261);
                v263 = sub_254FC5B00();
                (v324)(v263);
              }

              v264 = sub_254FD36E4();
              v131 = v306;
              v265 = *v306;
              (*v306)(v264, v139);
              v266 = sub_254FC5B00();
              v265(v266);
              v267 = sub_254FD30FC();
              v162 = v268(v267);
              v161 = v313;
              v159 = v304;
              if (v313 == v307)
              {

                v54 = v312;
                v131 = v303;
                goto LABEL_134;
              }
            }

            goto LABEL_150;
          }

          v54 = v312;
LABEL_134:
          v269 = sub_254FD38C8();
          v127 = v296;
          (*v296)(v269);
          v133 = v157;
          v351 = 0;
          v115 = v295;
          v102 = v316;
          if (v157 == v294)
          {

            v351 = 0;
            v110 = v292;
            v109 = v293;
            v113 = v290;
            v114 = v291;
            v116 = v301;
            v119 = v310;
            v118 = v311;
            v121 = v309;
            v122 = v318;
            v124 = HIDWORD(v300);
            v126 = v305;
            v125 = v306;
            goto LABEL_80;
          }
        }

LABEL_151:
        __break(1u);
        return MEMORY[0x2821162D0]();
      }

      v90 = sub_254FD3630();
      v91(v90);
      v87 = v20;
    }

    sub_254FC538C(v87, &qword_27F76CA00, &qword_254FF3790);
    goto LABEL_76;
  }

LABEL_21:
  v31 = v1[134];
  sub_254FF1D14();
  v32 = sub_254FF1EA4();
  v33 = sub_254FF2154();
  if (sub_254FD36FC(v33))
  {
    sub_254FC5B38();
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_254FBD000, v32, v0, "DeviceActivityHelpers: Refreshing local activity as local device is queried.", v34, 2u);
    sub_254FC592C();
    MEMORY[0x259C32150]();
  }

  v35 = v1[134];
  v36 = v1[131];
  v37 = v1[130];
  v38 = v1[129];
  v39 = v1[70];

  v40 = *(v36 + 8);
  v41 = sub_254FD3858();
  v42(v41);
  sub_254FC9244(v38);
  v43 = *(MEMORY[0x277CC5798] + 4);
  v44 = swift_task_alloc();
  v1[135] = v44;
  *v44 = v1;
  v44[1] = sub_254FCCFA0;
  v45 = v1[129];
  sub_254FD344C();

  return MEMORY[0x2821162D0]();
}

uint64_t sub_254FCCFA0()
{
  sub_254FD3870();
  v2 = *v1;
  v3 = *(*v1 + 1080);
  v4 = *v1;
  *(*v1 + 1088) = v0;

  (*(v2[126] + 8))(v2[129], v2[125]);
  sub_254FD3804();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_254FCD100()
{
  v339 = v0;
  v4 = v0;
  v5 = v0[136];
  v6 = v0[70];
  sub_254FC9244(v0[128]);
  v7 = sub_254FF1AD4();
  v8 = v0[128];
  v9 = v0[126];
  v12 = *(v9 + 8);
  v11 = (v9 + 8);
  inited = v12;
  v12(v8, v4[125]);
  if (v5)
  {
    goto LABEL_2;
  }

  v297 = inited;
  v298 = v11;
  v21 = sub_254FCAC48(v7, &qword_27F76CAD8, &qword_254FF38E0);

  if (!*(v21 + 16))
  {
    v59 = v4[133];

    sub_254FF1D14();
    v60 = sub_254FF1EA4();
    v61 = sub_254FF2154();
    if (sub_254FD36FC(v61))
    {
      sub_254FC5B38();
      *swift_slowAlloc() = 0;
      sub_254FD39BC(&dword_254FBD000, v62, v63, "DeviceActivityHelpers: No devices found for current user. Assuming local device as default.");
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    sub_254FD3718();
    v64 = *(v2 + 1);
    v2 = (v2 + 8);
    v64(inited, v1);
    sub_254FC0048(&qword_27F76CA58, &qword_254FF37A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_254FF3720;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    sub_254FC0048(&qword_27F76C8C0, &qword_254FF37B0);
    v65 = swift_allocObject();
    sub_254FD399C(v65);
    sub_254FF1BB4();
    v66 = sub_254FD35C4();
    (*(v260 + 8))(v66);
    *(v1 + 32) = v11;
    *(v1 + 40) = v60;
    *(inited + 48) = v1;
    v7 = sub_254FC0048(&qword_27F76C9D0, &qword_254FF3760);
    sub_254FC0048(&qword_27F76C880, &qword_254FF3120);
    sub_254FD1858();
    sub_254FBF6B0();
    v21 = sub_254FF1EE4();
  }

  if (v4[67])
  {
    v22 = v4[66];
    v7 = v21;
    v23 = sub_254FC4C4C();
    if (v24)
    {
      inited = v23;
      swift_isUniquelyReferenced_nonNull_native();
      v338[0] = v21;
      v25 = *(v21 + 24);
      sub_254FC0048(&qword_27F76CA50, &unk_254FF3798);
      sub_254FD397C();
      v26 = *(*(v21 + 48) + 16 * inited + 8);

      v7 = *(*(v21 + 56) + 8 * inited);
      sub_254FC0048(&qword_27F76C9D0, &qword_254FF3760);
      sub_254FC0048(&qword_27F76C880, &qword_254FF3120);
      sub_254FD1858();
      sub_254FF22C4();
    }
  }

  v335 = v4[69];
  v337 = v4;
  if (!v335)
  {
    v336 = 0;
LABEL_50:
    sub_254FD391C();
    sub_254FD33E4();
    sub_254FC5770();
    sub_254FD3214();
    if (v53)
    {
      v67 = v4[110];
    }

    else
    {
      v68 = sub_254FD3364();
      v3(v68);
      sub_254FD33E4();
      sub_254FC5770();
      sub_254FD3214();
      if (!v69)
      {
        sub_254FD3618();
        v72 = sub_254FD31B4();
        v3(v72);
        v73 = sub_254FD3600();
        v3(v73);
        v74 = sub_254FD35F4();
        v3(v74);
        sub_254FD38FC();
        v75 = *(inited + 8);
        v76 = sub_254FD34D0();
        (v75)(v76);
        sub_254FD3538();
        v75();
        v77 = sub_254FD3678();
        v78(v77);
        v79 = *(v7 + 32);
        v80 = sub_254FD36D8();
        v81(v80);
LABEL_57:
        sub_254FD3264();
        if (v91 != v47)
        {
          v83 = ~v87;
        }

        v92 = v83 & v82;
        v93 = v4[100];
        v94 = (63 - v84) >> 6;
        v95 = (v85 + 16);
        v96 = v4[104] + 104;
        v97 = v4[93];
        v98 = v93 + 16;
        v99 = v93 + 8;
        v100 = v4[87];
        v101 = (v97 + 16);
        v306 = v100 + 32;
        v102 = v100 + 16;
        v309 = (v100 + 8);
        v303 = (v86 + 8);
        v305 = (v4[84] + 8);
        v103 = v4[78];
        v304 = v4[81] + 8;
        v313 = v103 + 16;
        v329 = (v4[112] + 8);
        v311 = v4[75];
        v310 = v4[72];
        v320 = v103;
        v312 = v103 + 8;
        v307 = (v85 + 8);
        *&v90 = 136315138;
        v300 = v90;
        v104 = *MEMORY[0x277CC5838];
        v105 = (v97 + 8);
        v106 = v4[97] + 8;
        v107 = v4[107] + 8;
        do
        {
LABEL_61:
          if (!v92)
          {
            do
            {
              v108 = v88 + 1;
              if (__OFADD__(v88, 1))
              {
                goto LABEL_122;
              }

              if (v108 >= v94)
              {
                v249 = v4[134];
                v250 = v4[133];
                v251 = v4[132];
                v252 = v4[129];
                v253 = v4;
                v254 = v4[128];
                v255 = v253[127];
                v256 = v253[121];
                v314 = v253[124];
                v316 = v253[120];
                v257 = v253[117];
                v318 = v253[119];
                v321 = v253[116];
                v324 = v253[115];
                v326 = v253[114];
                sub_254FD2FC8();
                (*v307)(v256);

                sub_254FD3394();
                sub_254FD344C();

                __asm { BRAA            X2, X16 }
              }

              v92 = *(v89 + 8 * v108);
              ++v88;
            }

            while (!v92);
            v88 = v108;
          }

          v109 = __clz(__rbit64(v92));
          v92 &= v92 - 1;
          v110 = v109 | (v88 << 6);
          v111 = *(*(v21 + 56) + 8 * v110);
        }

        while (!*(v111 + 16));
        v275 = v88;
        v276 = *(v111 + 16);
        v287 = v106;
        v288 = v105;
        HIDWORD(v283) = v104;
        v302 = v102;
        v291 = v101;
        v292 = v99;
        v293 = v98;
        v272 = v92;
        v273 = v94;
        v284 = v96;
        v274 = v89;
        v112 = (*(v21 + 48) + 16 * v110);
        v2 = v112[1];
        v280 = *v112;
        v282 = v111 + 32;

        v113 = 0;
        v294 = v21;
        v295 = v93;
        v277 = v95;
        v278 = v111;
        v279 = v107;
        v285 = v2;
        while (v113 < *(v111 + 16))
        {
          v114 = v4[121];
          v115 = v4[117];
          v116 = v4[108];
          sub_254FD3498();
          v118 = *(v117 + 8);
          v334 = *v117;
          v119 = (*v95)(v2);
          v127 = sub_254FD35AC(v119, v120, v121, v122, v123, v124, v125, v126, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
          v128(v127);
          sub_254FF1B74();
          sub_254FD3690();
          sub_254FC4BB8(v129, v130, v131, v132);

          sub_254FF1B94();
          v2 = v285;
          if (v285)
          {
            v133 = v4[108];

            sub_254FF1B44();
            sub_254FF1B64();
          }

          else
          {
          }

          sub_254FD38DC();
          v134 = v336;
          v135 = sub_254FF1AE4();
          v136 = v4[127];
          v137 = v4[125];
          v299 = v336;
          v138 = v135;
          v139 = sub_254FD31FC();
          v297(v139);
          v289 = *(v138 + 16);
          if (v289)
          {
            v140 = 0;
            sub_254FD318C(v295);
            v290 = v138 + v149;
            v286 = v138;
            while (v140 < *(v138 + 16))
            {
              sub_254FD3238(v141, v142, v143, v144, v145, v146, v147, v148, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295);
              v150 = sub_254FD37F0();
              v151(v150);
              v296 = v140 + 1;
              sub_254FF1A84();
              sub_254FF1A04();
              (*(v138 + 8))(v136, v134);
              v152 = *v291;
              v153 = sub_254FD34DC();
              v154(v153);
              while (1)
              {
                sub_254FD3760();
                if (sub_254FC5364(v137, 1, v134) == 1)
                {
                  break;
                }

                sub_254FD36C0();
                v155 = sub_254FD3838();
                v156(v155);
                sub_254FF1D14();
                v157 = sub_254FD3888();
                v2(v157);
                v134 = sub_254FF1EA4();
                v158 = sub_254FF2154();
                v159 = os_log_type_enabled(v134, v158);
                v137 = v4[132];
                v160 = v4[130];
                v161 = v4[89];
                if (v159)
                {
                  v162 = sub_254FD356C();
                  v163 = swift_slowAlloc();
                  v171 = sub_254FD33C4(v163, v164, v165, v166, v167, v168, v169, v170, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                  v2(v171);
                  v172 = sub_254FF1FA4();
                  v173 = v137;
                  v175 = v174;
                  sub_254FD387C(v309);
                  sub_254FD3538();
                  v308 = v176;
                  v176();
                  v177 = sub_254FC4454(v172, v175, v338);

                  *(v162 + 4) = v177;
                  _os_log_impl(&dword_254FBD000, v134, v158, "DeviceActivityHelpers: Refreshed segments: %s", v162, 0xCu);
                  v137 = v334;
                  sub_254FC49C4(v334);
                  sub_254FC592C();
                  MEMORY[0x259C32150]();
                  sub_254FC592C();
                  MEMORY[0x259C32150]();

                  (*v303)(v173, v336);
                }

                else
                {
                  v178 = v4[86];

                  v179 = sub_254FD387C(v309);
                  v308 = v180;
                  (v180)(v179, v178);
                  v181 = sub_254FD3838();
                  v182(v181, v160);
                }

                sub_254FD32A8();
                v334 = sub_254FF19A4();
                v336 = v183;
                v116 = *v305;
                v184 = sub_254FD37E4();
                (v116)(v184);
                sub_254FF1A64();
                sub_254FF19B4();
                v2 = v185;
                v186 = sub_254FD37E4();
                (v116)(v186);
                sub_254FD3A84();
                sub_254FF1A24();
                v188 = v187;
                v189 = sub_254FD3844();
                (v137)(v189);
                sub_254FD3A84();
                sub_254FF1A34();
                v191 = v190;
                v192 = sub_254FC5B00();
                (v137)(v192);
                sub_254FF19D4();
                v136 = sub_254FF19E4();
                v323 = *(v136 + 16);
                if (v323)
                {
                  sub_254FD318C(v320);
                  sub_254FD351C();
                  while (v201 < *(v136 + 16))
                  {
                    sub_254FD3810(v193, v194, v195, v196, v197, v198, v199, v200, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, *(&v300 + 1), v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v315, v317, v320);
                    v327 = v202;
                    v203 = sub_254FD3660();
                    v204(v203);
                    sub_254FF1944();
                    if (v205)
                    {
                      v328 = sub_254FF1F24();
                    }

                    else
                    {
                      v328 = 0;
                    }

                    v206 = v4[79];
                    v207 = sub_254FF1934();
                    if (*(v207 + 16))
                    {
                      sub_254FD3050(v207);
                      do
                      {
                        v208 = sub_254FD3648();
                        v209(v208);
                        v210 = [objc_allocWithZone(type metadata accessor for ActivitySegment()) init];
                        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
                        sub_254FD33A0();
                        sub_254FD34E8();
                        sub_254FD39DC();
                        sub_254FD33A0();
                        sub_254FD34E8();
                        if (v2)
                        {

                          sub_254FD39F4();
                          sub_254FD3358();

                          sub_254FD33A0();
                          sub_254FD34E8();
                        }

                        if (v188)
                        {

                          sub_254FD3A0C();
                          sub_254FD3A3C();
                          sub_254FD33A0();
                          sub_254FD34E8();
                        }

                        if (v191)
                        {

                          sub_254FD3A24();
                          sub_254FD3A54();
                          sub_254FD33A0();
                          sub_254FD34E8();
                        }

                        sub_254FD32FC();
                        sub_254FF15A4();
                        v211 = sub_254FD35DC();
                        v191(v211);
                        v188 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime;
                        sub_254FD33A0();
                        v212 = *&v210[v188];
                        *&v210[v188] = v2;

                        v4 = v337;
                        sub_254FF1494();
                        sub_254FF15A4();
                        v213 = sub_254FD3358();
                        (v191)(v213, v116);
                        v214 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime;
                        sub_254FD33A0();
                        v215 = *&v210[v214];
                        *&v210[v214] = v2;

                        sub_254FF1984();
                        sub_254FF1F24();
                        sub_254FD37A8();
                        sub_254FD33A0();
                        sub_254FD3A6C();
                        sub_254FF1974();
                        sub_254FF2124();
                        v134 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration;
                        sub_254FD33A0();
                        sub_254FD34E8();
                        MEMORY[0x259C31750]();
                        sub_254FD3128();
                        if (v217)
                        {
                          sub_254FD3150(v216);
                        }

                        v218 = v337[76];
                        v2 = v337[74];
                        sub_254FD34B4();
                        v219 = v337[63];
                        v220 = sub_254FD3298();
                        v221(v220);
                        sub_254FD3084();
                        v116 = v336;
                        v191 = v330;
                      }

                      while (!v53);
                    }

                    v222 = v4[79];
                    v223 = sub_254FF1954();
                    if (*(v223 + 16))
                    {
                      sub_254FD3050(v223);
                      do
                      {
                        v224 = sub_254FD3500();
                        v225(v224);
                        v226 = [objc_allocWithZone(type metadata accessor for ActivitySegment()) init];
                        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
                        sub_254FD33A0();
                        sub_254FD3468();
                        sub_254FD39DC();
                        sub_254FD33A0();
                        sub_254FD3468();
                        if (v2)
                        {

                          sub_254FD39F4();
                          sub_254FD3358();

                          sub_254FD33A0();
                          sub_254FD3468();
                        }

                        if (v188)
                        {

                          sub_254FD3A0C();
                          sub_254FD3A3C();
                          sub_254FD33A0();
                          sub_254FD3468();
                        }

                        if (v191)
                        {

                          sub_254FD3A24();
                          sub_254FD3A54();
                          sub_254FD33A0();
                          sub_254FD3468();
                        }

                        sub_254FD341C();
                        v227 = sub_254FF15A4();
                        v188 = v329;
                        v228 = *v329;
                        v229 = sub_254FD34D0();
                        (v228)(v229);
                        v230 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime;
                        sub_254FD33A0();
                        v231 = *&v226[v230];
                        *&v226[v230] = v227;

                        sub_254FF1494();
                        sub_254FF15A4();
                        sub_254FD3358();
                        sub_254FD3538();
                        v228();
                        sub_254FD33A0();
                        sub_254FD3468();
                        sub_254FF1914();
                        sub_254FF1F24();
                        sub_254FD37A8();
                        sub_254FD33A0();
                        sub_254FD3A6C();
                        sub_254FF1904();
                        sub_254FF2124();
                        sub_254FD33A0();
                        sub_254FD3468();
                        MEMORY[0x259C31750]();
                        sub_254FD3128();
                        if (v217)
                        {
                          sub_254FD3150(v232);
                        }

                        v233 = v4[73];
                        v2 = v4[71];
                        sub_254FD34B4();
                        v234 = v4[63];
                        v235 = sub_254FD3298();
                        v236(v235);
                        sub_254FD3084();
                        v116 = v336;
                        v191 = v330;
                      }

                      while (!v53);
                    }

                    v237 = v4[79];
                    v137 = v4[77];

                    v238 = sub_254FD30FC();
                    v193 = v239(v238);
                    v201 = v327 + 1;
                    v136 = v317;
                    if (v327 + 1 == v323)
                    {
                      goto LABEL_111;
                    }
                  }

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
                  v261 = v4[121];
                  v262 = v4[117];
                  v11 = v2;
                  v263 = v4[108];
                  v264 = v4[106];

                  v265 = sub_254FD31FC();
                  v297(v265);
                  v266 = *v279;
                  v267 = sub_254FD37D8();
                  v268(v267);
                  v269 = *v307;
                  v270 = sub_254FC5B00();
                  v271(v270);

LABEL_2:
                  v13 = v4[134];
                  sub_254FD3174();
                  v14 = *(v11 + 127);
                  v15 = *(v11 + 124);
                  v16 = *(v11 + 121);
                  v17 = *(v11 + 120);
                  v18 = *(v11 + 119);
                  v319 = *(v11 + 116);
                  v322 = *(v11 + 115);
                  v325 = *(v11 + 114);
                  sub_254FD2FC8();

                  sub_254FD3410();
                  sub_254FD344C();

                  __asm { BRAA            X1, X16 }
                }

LABEL_111:

                sub_254FD3784();

                v240 = sub_254FD30FC();
                v241(v240);
                v242 = sub_254FC5B00();
                (v308)(v242);
              }

              v243 = sub_254FD36E4();
              v2 = v288;
              v244 = *v288;
              (*v288)(v243, v116);
              v245 = sub_254FC5B00();
              v244(v245);
              v246 = sub_254FD30FC();
              v141 = v247(v246);
              v140 = v296;
              v138 = v286;
              if (v296 == v289)
              {

                v93 = v295;
                v2 = v285;
                goto LABEL_115;
              }
            }

            goto LABEL_131;
          }

          v93 = v295;
LABEL_115:
          v248 = sub_254FD38C8();
          v107 = v279;
          (*v279)(v248);
          v113 = v136;
          v336 = 0;
          v95 = v277;
          v21 = v294;
          v111 = v278;
          if (v136 == v276)
          {

            v336 = 0;
            v89 = v274;
            v88 = v275;
            v92 = v272;
            v94 = v273;
            v96 = v284;
            v99 = v292;
            v98 = v293;
            v101 = v291;
            v102 = v302;
            v104 = HIDWORD(v283);
            v106 = v287;
            v105 = v288;
            goto LABEL_61;
          }
        }

        goto LABEL_132;
      }

      v70 = sub_254FD3630();
      v71(v70);
      v67 = v7;
    }

    sub_254FC538C(v67, &qword_27F76CA00, &qword_254FF3790);
    goto LABEL_57;
  }

  v28 = v21 + 64;
  v27 = *(v21 + 64);
  v29 = *(v21 + 32);
  sub_254FD310C();
  v32 = v31 & v30;
  inited = (63 - v33) >> 6;

  v7 = 0;
  v34 = 0;
  v330 = inited;
  v331 = v21 + 64;
  if (v32)
  {
    goto LABEL_15;
  }

  do
  {
LABEL_11:
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_123;
    }

    if (v35 >= inited)
    {
      v336 = v7;

      goto LABEL_50;
    }

    v32 = *(v28 + 8 * v35);
    ++v34;
  }

  while (!v32);
  v34 = v35;
  while (1)
  {
LABEL_15:
    v36 = v4[68];
    v332 = v32;
    v333 = v34;
    v37 = v21;
    v38 = *(*(v21 + 56) + ((v34 << 9) | (8 * __clz(__rbit64(v32)))));
    swift_bridgeObjectRetain_n();

    v40 = v7;
    v41 = sub_254FD1AD4(v39, v36, v335);
    if (v42)
    {
      v43 = *(v38 + 16);
    }

    else
    {
      v43 = v41;
      v49 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_129;
      }

      for (i = 16 * v41; ; i += 16)
      {
        v51 = *(v38 + 16);
        if (v49 == v51)
        {
          break;
        }

        if (v49 >= v51)
        {
          goto LABEL_121;
        }

        sub_254FD369C();
        v53 = v53 && v52 == v3;
        if (v53 || (sub_254FD37D8(), (sub_254FF2364() & 1) != 0))
        {
          if (v49 != v43)
          {
            if (v43 >= v51)
            {
              goto LABEL_124;
            }

            sub_254FD395C();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_254FD1BDC(v38);
              v38 = v58;
            }

            v54 = v38 + 16 * v43;
            v55 = *(v54 + 40);
            *(v54 + 32) = v2;
            *(v54 + 40) = v3;

            if (v49 >= *(v38 + 16))
            {
              goto LABEL_125;
            }

            v56 = v38 + i;
            v57 = *(v38 + i + 56);
            *(v56 + 48) = v4;
            *(v56 + 56) = v51;

            v4 = v337;
          }

          ++v43;
        }

        ++v49;
      }
    }

    v44 = *(v38 + 16);
    v2 = (v44 - v43);
    if (v44 < v43)
    {
      break;
    }

    if (v43 < 0)
    {
      goto LABEL_127;
    }

    if (__OFADD__(v44, v43 - v44))
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v43 > *(v38 + 24) >> 1)
    {
      sub_254FD393C();
      v38 = v45;
    }

    v3 = (v38 + 32 + 16 * v43);
    sub_254FD34DC();
    swift_arrayDestroy();
    if (v44 != v43)
    {
      sub_254FD373C();
      v46 = *(v38 + 16);
      v47 = __OFADD__(v46, v43 - v44);
      v48 = v46 - v2;
      if (v47)
      {
        goto LABEL_130;
      }

      *(v38 + 16) = v48;
    }

    v32 = (v332 - 1) & v332;

    v7 = v40;
    v21 = v37;
    inited = v330;
    v28 = v331;
    v34 = v333;
    if (!v32)
    {
      goto LABEL_11;
    }
  }

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
}

uint64_t sub_254FCE738()
{
  v35 = v0[136];
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[129];
  v5 = v0[128];
  v6 = v0[127];
  v7 = v0[124];
  v8 = v0[121];
  v9 = v0[120];
  v10 = v0[119];
  v13 = v0[116];
  v14 = v0[115];
  v15 = v0[114];
  v16 = v0[113];
  v17 = v0[110];
  v18 = v0[109];
  v19 = v0[108];
  v20 = v0[105];
  v21 = v0[102];
  v22 = v0[101];
  v23 = v0[98];
  v24 = v0[95];
  v25 = v0[94];
  v26 = v0[91];
  v27 = v0[90];
  v28 = v0[89];
  v29 = v0[88];
  v30 = v0[85];
  v31 = v0[82];
  v32 = v0[79];
  v33 = v0[76];
  v34 = v0[73];

  sub_254FD3410();

  return v11();
}

id ActivitySegment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_254FCEA4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, void *a6)
{
  v6[2] = a6;
  v11 = sub_254FF1614();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v6[3] = v14;
  v15 = *(*(sub_254FC0048(&qword_27F76CA00, &qword_254FF3790) - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v6[4] = v16;
  v17 = swift_task_alloc();
  v6[5] = v17;
  v6[6] = _Block_copy(a5);
  if (a1)
  {
    sub_254FF15F4();
    (*(v12 + 32))(v17, v14, v11);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = 1;
  sub_254FC4BB8(v17, v18, 1, v11);
  if (a2)
  {
    sub_254FF15F4();
    (*(v12 + 32))(v16, v14, v11);
    v19 = 0;
  }

  sub_254FC4BB8(v16, v19, 1, v11);
  if (a3)
  {
    sub_254FF1F54();
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v6[7] = v21;
  v22 = a4;
  a6;
  if (a4)
  {
    sub_254FF1F54();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v6[8] = v24;
  v25 = swift_task_alloc();
  v6[9] = v25;
  *v25 = v6;
  v25[1] = sub_254FCECD8;

  return sub_254FCB1A0();
}

uint64_t sub_254FCECD8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_254FD3074();
  *v5 = v4;
  v6 = v3[9];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[8];
  v10 = v3[7];
  v11 = v3[5];
  v12 = v3[4];

  v13 = sub_254FD36D8();
  sub_254FC538C(v13, v14, &qword_254FF3790);
  sub_254FC538C(v11, &qword_27F76CA00, &qword_254FF3790);
  if (v2)
  {
    v15 = sub_254FF14E4();

    v16 = v15;
  }

  else
  {
    type metadata accessor for ActivitySegment();
    v17 = sub_254FF2064();

    v16 = v17;
  }

  v19 = v4[5];
  v18 = v4[6];
  v22 = v4 + 3;
  v20 = v4[3];
  v21 = v22[1];
  v23 = v18[2];
  v24 = sub_254FD3858();
  v25(v24);

  _Block_release(v18);

  v26 = v8[1];

  return v26();
}

uint64_t sub_254FCEF0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76CAA8, &qword_254FF3880);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_254FF2114();
  sub_254FC4BB8(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_254FF3890;
  v10[5] = v9;
  sub_254FD10E8(0, 0, v7, &unk_254FF38A0, v10);
}

uint64_t sub_254FCF01C()
{
  sub_254FD3208();
  v1[19] = v2;
  v1[20] = v0;
  v3 = sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
  sub_254FD32E4(v3);
  v5 = *(v4 + 64);
  v1[21] = sub_254FD3480();
  v6 = type metadata accessor for AppDisplayInfo(0);
  v1[22] = v6;
  sub_254FC58B0(v6);
  v1[23] = v7;
  v9 = *(v8 + 64);
  v1[24] = sub_254FD3594();
  v1[25] = swift_task_alloc();
  sub_254FD3804();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_254FCF0FC()
{
  v1 = v0[22];
  sub_254FF1EE4();
  sub_254FCF824();
  v3 = v0[19];
  v2 = v0[20];

  v4 = sub_254FC940C();
  v0[26] = v4;
  v5 = sub_254FF2144();
  v0[27] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_254FCF2EC;
  v6 = swift_continuation_init();
  v0[17] = sub_254FC0048(&qword_27F76CA60, &qword_254FF37C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_254FCF798;
  v0[13] = &unk_286731480;
  v0[14] = v6;
  [v4 fetchAppInfoForBundleIdentifiers:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_254FCF2EC()
{
  sub_254FD3208();
  v7 = *v0;
  v1 = *v0;
  sub_254FD3074();
  *v2 = v1;
  sub_254FD3804();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_254FCF3BC()
{
  v1 = *(v0 + 216);
  v70 = *(v0 + 200);
  v2 = *(v0 + 176);
  v67 = *(v0 + 184);
  v3 = *(v0 + 144);

  v69 = v2;
  v4 = sub_254FF1EE4();
  v6 = v3 + 64;
  v5 = *(v3 + 64);
  v7 = *(v3 + 32);
  sub_254FD310C();
  v10 = v9 & v8;
  v12 = (63 - v11) >> 6;
  v71 = v3;

  v14 = 0;
  v65 = v12;
  v66 = v3 + 64;
  v68 = v0;
  if (v10)
  {
    while (1)
    {
      v15 = v14;
LABEL_6:
      v16 = __clz(__rbit64(v10)) | (v15 << 6);
      v17 = (*(v71 + 48) + 16 * v16);
      v18 = v17[1];
      v74 = *v17;
      v19 = *(*(v71 + 56) + 8 * v16);
      swift_bridgeObjectRetain_n();
      v20 = v19;
      v21 = [v20 displayName];
      v22 = sub_254FF1F54();
      v73 = v23;

      v24 = sub_254FD1B78(v20);
      v26 = v25;
      v72 = v20;
      v27 = [v20 artworkURL];
      v75 = v18;
      if (v27)
      {
        v28 = v27;
        v29 = *(v0 + 168);
        sub_254FF1514();

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = *(v0 + 192);
      v32 = *(v0 + 200);
      v33 = *(v0 + 168);
      v34 = sub_254FF1524();
      sub_254FC4BB8(v33, v30, 1, v34);
      *v32 = v22;
      v70[1] = v73;
      v70[2] = v24;
      v70[3] = v26;
      sub_254FC62C4(v33, v32 + *(v69 + 24));
      sub_254FD31E4();
      sub_254FD35F4();
      sub_254FD1C08();
      swift_isUniquelyReferenced_nonNull_native();
      sub_254FD35F4();
      result = sub_254FC4A60();
      if (__OFADD__(*(v4 + 16), (v35 & 1) == 0))
      {
        break;
      }

      v36 = result;
      v37 = v35;
      sub_254FC0048(&qword_27F76CA68, &qword_254FF37D0);
      v38 = sub_254FF22A4();
      if (v38)
      {
        sub_254FD35F4();
        v38 = sub_254FC4A60();
        v0 = v68;
        if ((v37 & 1) != (v39 & 1))
        {

          return sub_254FF2384();
        }

        v36 = v38;
      }

      else
      {
        v0 = v68;
      }

      v10 &= v10 - 1;
      v46 = *(v0 + 192);
      if (v37)
      {

        sub_254FD389C(v47, v48, v49, v50, v51, v52, v53, v54, v64, v65, v66, v67);
        sub_254FD1C60(v46, v55);
      }

      else
      {
        *(v4 + 8 * (v36 >> 6) + 64) |= 1 << v36;
        v56 = (*(v4 + 48) + 16 * v36);
        *v56 = v74;
        v56[1] = v75;
        sub_254FD389C(v38, v39, v40, v41, v42, v43, v44, v45, v64, v65, v66, v67);
        sub_254FD31E4();
        sub_254FD1C08();

        v57 = *(v4 + 16);
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_28;
        }

        *(v4 + 16) = v59;
      }

      v14 = v15;
      v12 = v65;
      v6 = v66;
      if (!v10)
      {
        goto LABEL_3;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_3:
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v15 >= v12)
      {
        break;
      }

      v10 = *(v6 + 8 * v15);
      ++v14;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v61 = *(v0 + 192);
    v60 = *(v0 + 200);
    v62 = *(v0 + 168);

    sub_254FD3394();

    return v63(v4);
  }

  return result;
}

uint64_t sub_254FCF798(uint64_t a1)
{
  v1 = *sub_254FC3908((a1 + 32), *(a1 + 56));
  sub_254FD2F18();
  v2 = sub_254FF1EC4();

  return sub_254FCF804(v1, v2);
}

uint64_t sub_254FCF824()
{
  v0 = sub_254FF1EB4();
  v1 = sub_254FC583C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_254FC7780();
  v8 = v7 - v6;
  sub_254FF1B34();
  result = MEMORY[0x259C31220]();
  if ((result & 1) == 0)
  {
    sub_254FF1D14();
    v10 = sub_254FF1EA4();
    v11 = sub_254FF2174();
    if (os_log_type_enabled(v10, v11))
    {
      sub_254FC5B38();
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_254FBD000, v10, v11, "DeviceActivityHelpers: Failed to authorize DeviceActivity framework. Query is returning empty results", v12, 2u);
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    (*(v3 + 8))(v8, v0);
    sub_254FC389C();
    swift_allocError();
    *v13 = 3;
    return swift_willThrow();
  }

  return result;
}

id DeviceActivityHelpers.init()()
{
  sub_254FF1BD4();
  sub_254FD3690();
  sub_254FC4BB8(v1, v2, v3, v4);
  sub_254FF1B14();
  sub_254FD3690();
  sub_254FC4BB8(v5, v6, v7, v8);
  *&v0[OBJC_IVAR____TtC31IntelligencePlatformDataActions21DeviceActivityHelpers____lazy_storage___appInfoCache] = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for DeviceActivityHelpers();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_254FCFB58()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254FCFC30;

  return sub_254FCB1A0();
}

uint64_t sub_254FCFC30()
{
  sub_254FD3208();
  v3 = v2;
  sub_254FD3388();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_254FD3074();
  *v7 = v6;

  sub_254FD3394();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_254FCFD1C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254FCFDB4;

  return sub_254FCF01C();
}

uint64_t sub_254FCFDB4()
{
  sub_254FD3208();
  v2 = v1;
  sub_254FD3388();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_254FD3074();
  *v6 = v5;

  sub_254FD3394();

  return v7(v2);
}

void *sub_254FCFED0()
{
  v1 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceId;
  sub_254FD30DC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_254FCFFA8(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_254FCFF68();
}

void *sub_254FD0058()
{
  v1 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceName;
  sub_254FD30DC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_254FD0130(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_254FD00F0();
}

void *sub_254FD01E4()
{
  v1 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_altDSID;
  sub_254FD30DC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_254FD02BC(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_254FD027C();
}

void *sub_254FD036C()
{
  v1 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_icloudEmail;
  sub_254FD30DC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_254FD0444(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_254FD0404();
}

void *sub_254FD04F4()
{
  v1 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime;
  sub_254FD30DC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_254FD05CC(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_254FD058C();
}

void *sub_254FD067C()
{
  v1 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime;
  sub_254FD30DC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_254FD0754(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_254FD0714();
}

void *sub_254FD0804()
{
  v1 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration;
  sub_254FD30DC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_254FD08DC(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_254FD089C();
}

void *sub_254FD098C()
{
  v1 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_bundleIdentifier;
  sub_254FD30DC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_254FD0A64(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_254FD0A24();
}

void *sub_254FD0B14()
{
  v1 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_isApplication;
  sub_254FD30DC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_254FD0BEC(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_254FD0BAC();
}

id ActivitySegment.init()()
{
  *&v0[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceId] = 0;
  *&v0[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceName] = 0;
  *&v0[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_altDSID] = 0;
  *&v0[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_icloudEmail] = 0;
  *&v0[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime] = 0;
  *&v0[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime] = 0;
  *&v0[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration] = 0;
  *&v0[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_bundleIdentifier] = 0;
  *&v0[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_isApplication] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySegment();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_254FD0D44(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_254FD0E38(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_254FD2FBC;

  return v7();
}

uint64_t sub_254FD0F20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_254FD1008;

  return v8();
}

uint64_t sub_254FD1008()
{
  sub_254FD3208();
  sub_254FD3388();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_254FD3074();
  *v4 = v3;

  sub_254FD3410();

  return v5();
}

uint64_t sub_254FD10E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_254FC0048(&qword_27F76CAA8, &qword_254FF3880);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_254FC5770();
  v13 = sub_254FF2114();
  if (sub_254FC5364(v12, 1, v13) == 1)
  {
    sub_254FC538C(v12, &qword_27F76CAA8, &qword_254FF3880);
  }

  else
  {
    sub_254FF2104();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_254FF20F4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_254FF1FB4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_254FC538C(a3, &qword_27F76CAA8, &qword_254FF3880);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254FC538C(a3, &qword_27F76CAA8, &qword_254FF3880);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_254FD13C4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_254FD14BC;

  return v7(a1);
}

uint64_t sub_254FD14BC()
{
  sub_254FD3208();
  sub_254FD3388();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_254FD3074();
  *v4 = v3;

  sub_254FD3410();

  return v5();
}

char *sub_254FD1610(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_254FD3040(a3, result);
  }

  return result;
}

char *sub_254FD1648(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_254FD3040(a3, result);
  }

  return result;
}

uint64_t sub_254FD167C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_254FC5DD4();
  if (v11 < v10 || (v12 = sub_254FC0048(a4, a5), result = sub_254FC5864(v12), v6 + *(v14 + 72) * v5 <= a3))
  {
    sub_254FC0048(a4, a5);
    sub_254FD313C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v6)
  {
    sub_254FD313C();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_254FD177C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_254FC5DD4();
  if (v9 < v8 || (v10 = (a4)(0), result = sub_254FC5864(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    sub_254FD313C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_254FD313C();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_254FD1838(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_254FD3040(a3, result);
  }

  return result;
}