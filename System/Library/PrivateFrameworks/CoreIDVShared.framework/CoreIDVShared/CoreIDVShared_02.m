uint64_t sub_2259E3FEC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void (*a8)(void), unint64_t *a9, void (*a10)(uint64_t))
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0x206F742061746144, 0xEE00203A6E676953);
  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259CB764();
  v12 = sub_225CCE384();
  v14 = v13;

  MEMORY[0x22AA6CE70](v12, v14);

  MEMORY[0x22AA6CE70](0x747365676964202CLL, 0xEA0000000000203ALL);
  a8(0);
  sub_2259E4764(a9, a10);
  v15 = sub_225CCE154();
  v17 = sub_2259D732C(v15, v16);

  v18 = sub_2259D8490(v17);
  v20 = v19;

  sub_225B34448(v18, v20);
  v21 = sub_225CCE384();
  v23 = v22;
  sub_2259BEF00(v18, v20);

  MEMORY[0x22AA6CE70](v21, v23);

  MEMORY[0x22AA6CE70](0x63696C627570202CLL, 0xEE00203A79656B20);
  sub_225B34448(a4, a5);
  v24 = sub_225CCE384();
  v26 = v25;

  MEMORY[0x22AA6CE70](v24, v26);

  MEMORY[0x22AA6CE70](0x74616E676973202CLL, 0xED0000203A657275);
  sub_225B34448(a6, a7);
  v27 = sub_225CCE384();
  v29 = v28;

  MEMORY[0x22AA6CE70](v27, v29);

  return 0;
}

uint64_t sub_2259E42DC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  sub_225CCF204();

  strcpy(v22, "Data to Sign: ");
  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259CB764();
  v11 = sub_225CCE384();
  v13 = v12;

  MEMORY[0x22AA6CE70](v11, v13);

  MEMORY[0x22AA6CE70](0x63696C627570202CLL, 0xEE00203A79656B20);
  sub_225B34448(a3, a4);
  v14 = sub_225CCE384();
  v16 = v15;

  MEMORY[0x22AA6CE70](v14, v16);

  MEMORY[0x22AA6CE70](0x74616E676973202CLL, 0xED0000203A657275);
  sub_225B34448(a5, a6);
  v17 = sub_225CCE384();
  v19 = v18;

  MEMORY[0x22AA6CE70](v17, v19);

  return v22[0];
}

unint64_t sub_2259E44EC()
{
  result = qword_27D73AE50;
  if (!qword_27D73AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AE50);
  }

  return result;
}

unint64_t sub_2259E4540()
{
  result = qword_281059A90;
  if (!qword_281059A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281059A90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for COSESignatureValidator(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB62 && *(a1 + 8))
  {
    return (*a1 + 64354);
  }

  v3 = *a1;
  v4 = v3 >= 0x49F;
  v5 = v3 - 1183;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for COSESignatureValidator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB61)
  {
    *result = a2 - 64354;
    if (a3 >= 0xFB62)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB62)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1182;
    }
  }

  return result;
}

uint64_t sub_2259E4764(unint64_t *a1, void (*a2)(uint64_t))
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

CoreIDVShared::CredentialKeyType_optional __swiftcall CredentialKeyType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CredentialKeyType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 7366003;
  v4 = 0x6C616E7265747865;
  if (v1 != 4)
  {
    v4 = 0x6E6961686379656BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x732D79636167656CLL;
  if (v1 != 1)
  {
    v5 = 7562611;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2259E48DC()
{
  sub_225CCE5B4();
}

void sub_2259E49E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64696C61766E69;
  v5 = 0xE300000000000000;
  v6 = 7366003;
  v7 = 0xEB0000000065732DLL;
  v8 = 0x6C616E7265747865;
  if (v2 != 4)
  {
    v8 = 0x6E6961686379656BLL;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000065;
  v10 = 0x732D79636167656CLL;
  if (v2 != 1)
  {
    v10 = 7562611;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

CoreIDVShared::CredentialKeyUsage_optional __swiftcall CredentialKeyUsage.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CredentialKeyUsage.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 7041136;
  if (v1 != 5)
  {
    v3 = 7628656;
  }

  v4 = 0x72616B6564;
  if (v1 != 3)
  {
    v4 = 7041904;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 7041899;
  if (v1 != 1)
  {
    v5 = 7038308;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2259E4BBC()
{
  result = qword_27D73AE80;
  if (!qword_27D73AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AE80);
  }

  return result;
}

unint64_t sub_2259E4C20()
{
  result = qword_27D73AE88;
  if (!qword_27D73AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AE88);
  }

  return result;
}

uint64_t sub_2259E4C80()
{
  sub_225CCE5B4();
}

void sub_2259E4D84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64696C61766E69;
  v5 = 7041136;
  v6 = 0xE300000000000000;
  if (v2 != 5)
  {
    v5 = 7628656;
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x72616B6564;
  if (v2 != 3)
  {
    v8 = 7041904;
    v7 = 0xE300000000000000;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 7041899;
  if (v2 != 1)
  {
    v9 = 7038308;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for CredentialKeyType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CredentialKeyType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CredentialKeyUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CredentialKeyUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2259E50F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_225CCEC74();
  if (!v22)
  {
    return sub_225CCE864();
  }

  v44 = v22;
  v48 = sub_225CCF3D4();
  v35 = sub_225CCF3E4();
  sub_225CCF384();
  result = sub_225CCEC64();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_225CCECA4();
      v26 = v15;
      v27 = v15;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_225CCF3C4();
      result = sub_225CCEC94();
      ++v24;
      v15 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SecCertificateRef.rawECPublicKeyData()()
{
  v1 = SecCertificateCopyKey(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = SecKeyRef.publicKeyData.getter();
  v5 = v3;
  v6 = v4;
  if (v4 >> 60 == 15)
  {

    return v5;
  }

  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      goto LABEL_16;
    }
  }

  else if (v7)
  {
    if (v3 == v3 >> 32)
    {
LABEL_16:

      sub_2259B97A8(v5, v6);
      return 0;
    }
  }

  else if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

  result = sub_225CCCF64();
  if (result != 4)
  {
    sub_2259B97A8(v5, v6);

    return 0;
  }

  if (v7 == 2)
  {
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    v9 = BYTE6(v6);
    goto LABEL_24;
  }

  if (v7 != 1)
  {
    goto LABEL_23;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = HIDWORD(v5) - v5;
LABEL_24:
  if (v9 >= 1)
  {
    v12 = sub_225CCCFD4();
    sub_2259B97A8(v5, v6);

    return v12;
  }

LABEL_27:
  __break(1u);
  return result;
}

CoreIDVShared::PublicKeyAlgorithm_optional __swiftcall SecCertificateRef.publicKeyAlgorithm()()
{
  v2 = v0;
  v85 = sub_225CCD954();
  v3 = *(v85 - 8);
  v5 = MEMORY[0x28223BE20](v85, v4);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v82 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v82 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v82 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v82 - v21;
  v23 = SecCertificateCopyKey(v1);
  if (!v23)
  {
    goto LABEL_27;
  }

  v24 = v23;
  v25 = SecKeyCopyAttributes(v23);
  if (!v25)
  {
    goto LABEL_15;
  }

  v26 = v25;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_15;
  }

  v88[0] = 0;
  sub_225CCE2C4();

  v27 = v88[0];
  if (!v88[0])
  {
LABEL_15:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v43 = off_28105B918;
    v44 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v45 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v45));
    v46 = v85;
    (*(v3 + 16))(v7, &v43[v44], v85);
    os_unfair_lock_unlock(&v43[v45]);
    v47 = sub_225CCD934();
    v48 = sub_225CCED14();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2259A7000, v47, v48, "key attributes are unavailable", v49, 2u);
      MEMORY[0x22AA6F950](v49, -1, -1);
    }

    LOBYTE(v23) = (*(v3 + 8))(v7, v46);
    goto LABEL_27;
  }

  v28 = sub_225CCE474();
  if (!*(v27 + 16))
  {

    goto LABEL_22;
  }

  v84 = v2;
  v30 = sub_2259F1DA8(v28, v29, MEMORY[0x277D83758], sub_2259F217C);
  v32 = v31;

  if ((v32 & 1) == 0 || (sub_2259CB810(*(v27 + 56) + 32 * v30, v88), (swift_dynamicCast() & 1) == 0))
  {

    v2 = v84;
LABEL_22:
    v50 = v85;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v51 = off_28105B918;
    v52 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v53 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v53));
    (*(v3 + 16))(v11, &v51[v52], v50);
    os_unfair_lock_unlock(&v51[v53]);
    v54 = sub_225CCD934();
    v55 = sub_225CCED14();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2259A7000, v54, v55, "key type is not available", v56, 2u);
      MEMORY[0x22AA6F950](v56, -1, -1);
    }

    LOBYTE(v23) = (*(v3 + 8))(v11, v50);
    goto LABEL_27;
  }

  v33 = v86;
  v34 = v87;
  v35 = sub_225CCE474();
  if (!*(v27 + 16))
  {

    goto LABEL_30;
  }

  v83 = v33;
  v37 = sub_2259F1DA8(v35, v36, MEMORY[0x277D83758], sub_2259F217C);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
LABEL_30:

    v2 = v84;
LABEL_31:
    v58 = v85;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v59 = off_28105B918;
    v60 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v61 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v61));
    (*(v3 + 16))(v15, &v59[v60], v58);
    os_unfair_lock_unlock(&v59[v61]);
    v62 = sub_225CCD934();
    v63 = sub_225CCED14();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2259A7000, v62, v63, "key size in bits is unavailable", v64, 2u);
      MEMORY[0x22AA6F950](v64, -1, -1);
    }

    LOBYTE(v23) = (*(v3 + 8))(v15, v58);
    goto LABEL_27;
  }

  sub_2259CB810(*(v27 + 56) + 32 * v37, v88);
  v40 = swift_dynamicCast();
  v2 = v84;
  if ((v40 & 1) == 0)
  {

    goto LABEL_31;
  }

  v41 = v86;
  if (v83 == sub_225CCE474() && v34 == v42)
  {
  }

  else
  {
    v65 = sub_225CCF934();

    if ((v65 & 1) == 0)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v66 = off_28105B918;
      v67 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v68 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v68));
      v69 = v85;
      (*(v3 + 16))(v19, &v66[v67], v85);
      os_unfair_lock_unlock(&v66[v68]);

      v70 = sub_225CCD934();
      v71 = sub_225CCED14();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v88[0] = v73;
        *v72 = 136315138;
        v74 = sub_2259BE198(v83, v34, v88);

        *(v72 + 4) = v74;
        _os_log_impl(&dword_2259A7000, v70, v71, "unknown public key type: %s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x22AA6F950](v73, -1, -1);
        MEMORY[0x22AA6F950](v72, -1, -1);

        LOBYTE(v23) = (*(v3 + 8))(v19, v85);
      }

      else
      {

        LOBYTE(v23) = (*(v3 + 8))(v19, v69);
      }

      goto LABEL_27;
    }
  }

  switch(v41)
  {
    case 521:

      v57 = 2;
      goto LABEL_28;
    case 384:

      v57 = 1;
      goto LABEL_28;
    case 256:

      v57 = 0;
      goto LABEL_28;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v75 = off_28105B918;
  v76 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v77 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v77));
  (*(v3 + 16))(v22, &v75[v76], v85);
  os_unfair_lock_unlock(&v75[v77]);

  v78 = sub_225CCD934();
  v79 = sub_225CCED14();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 134217984;
    *(v80 + 4) = v41;
    _os_log_impl(&dword_2259A7000, v78, v79, "Unknown Ec key size %ld", v80, 0xCu);
    MEMORY[0x22AA6F950](v80, -1, -1);
  }

  LOBYTE(v23) = (*(v3 + 8))(v22, v85);
LABEL_27:
  v57 = 5;
LABEL_28:
  *v2 = v57;
  return v23;
}

SecCertificateRef decodeCertificate(fromDER:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v24 - v2;
  v4 = *MEMORY[0x277CBECE8];
  v5 = sub_225CCCF74();
  v6 = SecCertificateCreateWithData(v4, v5);

  if (!v6)
  {
    v24 = 0x8000000225D16530;
    v25 = 0x8000000225D16500;
    v7 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v9 = v8;
    v10 = sub_225CCE954();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v3, 1, 1, v10);
    LODWORD(v10) = (*(v11 + 48))(v3, 1, v10);
    sub_2259CB640(v3, &unk_27D73B050);
    if (v10)
    {
      v12 = 155;
    }

    else
    {
      v12 = 23;
    }

    v13 = MEMORY[0x277D84F90];
    v14 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v14;
    sub_225B2C4A0(v7, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v26);

    v16 = v26;
    v17 = sub_225B29AA0(0, 1, 1, v13);
    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_225B29AA0((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[56 * v19];
    *(v20 + 4) = 0xD00000000000002ALL;
    *(v20 + 5) = 0x8000000225D164D0;
    v21 = v25;
    *(v20 + 6) = 0xD000000000000021;
    *(v20 + 7) = v21;
    v22 = v24;
    *(v20 + 8) = 0xD00000000000001BLL;
    *(v20 + 9) = v22;
    *(v20 + 10) = 209;
    *v9 = v12;
    *(v9 + 8) = v17;
    *(v9 + 16) = 0xD00000000000002ALL;
    *(v9 + 24) = 0x8000000225D164D0;
    *(v9 + 32) = v16;
    *(v9 + 40) = 0;
    swift_willThrow();
  }

  return v6;
}

uint64_t DIPSecureData.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v3);
  mlock(BytePtr, Length);

  return v2;
}

uint64_t DIPSecureData.init(_:)(void *a1)
{
  *(v1 + 16) = a1;
  v2 = a1;
  BytePtr = CFDataGetBytePtr(v2);
  Length = CFDataGetLength(v2);
  mlock(BytePtr, Length);

  return v1;
}

uint64_t DIPSecureData.deinit()
{
  v1 = *(v0 + 16);
  BytePtr = CFDataGetBytePtr(v1);
  Length = CFDataGetLength(v1);
  memset_s(BytePtr, Length, 0, Length);
  munlock(BytePtr, Length);

  return v0;
}

uint64_t DIPSecureData.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  BytePtr = CFDataGetBytePtr(v1);
  Length = CFDataGetLength(v1);
  memset_s(BytePtr, Length, 0, Length);
  munlock(BytePtr, Length);

  return swift_deallocClassInstance();
}

const UInt8 *sub_2259E65B4()
{
  result = CFDataGetBytePtr(*(v0 + 16));
  if (!result)
  {
    __break(1u);
  }

  return result;
}

__SecKey *SecKeyRef.publicKeyData.getter()
{
  v1 = v0;
  error[1] = *MEMORY[0x277D85DE8];
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  error[0] = 0;
  result = SecKeyCopyPublicKey(v1);
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = SecKeyCopyExternalRepresentation(result, error);
  if (!v9)
  {
    v11 = 0;
    v13 = 0xF000000000000000;
    v14 = error[0];
    if (error[0])
    {
      goto LABEL_4;
    }

LABEL_9:

    return v11;
  }

  v10 = v9;
  v11 = sub_225CCCFA4();
  v13 = v12;

  v14 = error[0];
  if (!error[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  v20 = 0;
  v15 = errorFromCFError(_:_:_:)(v14, 0xD00000000000001DLL, 0x8000000225D16550, &v20);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v16 = off_28105B918;
  v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v18));
  (*(v3 + 16))(v6, &v16[v17], v2);
  os_unfair_lock_unlock(&v16[v18]);
  DIPLogError(_:message:log:)(v15, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v15);

  sub_2259B97A8(v11, v13);
  (*(v3 + 8))(v6, v2);
  return 0;
}

__SecKey *SecKeyRef.publicKeyIdentifier.getter()
{
  v0 = sub_225CCE264();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_225CCE254();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = SecKeyRef.publicKeyData.getter();
  if (v11 >> 60 != 15)
  {
    v12 = result;
    v13 = v11;
    sub_2259F4764(&qword_27D73ABF8, MEMORY[0x277CC5598]);
    sub_225CCDB94();
    sub_2259CB710(v12, v13);
    v19[0] = v5;
    sub_2259D7024(v12, v13);
    sub_2259B97A8(v12, v13);
    sub_225CCDB84();
    (*(v1 + 8))(v4, v0);
    sub_2259F4764(&qword_27D73AC00, MEMORY[0x277CC5578]);
    v14 = v19[0];
    v15 = sub_225CCE154();
    v17 = sub_2259D732C(v15, v16);

    v18 = sub_2259D8490(v17);

    sub_2259B97A8(v12, v13);
    (*(v6 + 8))(v9, v14);
    return v18;
  }

  return result;
}

uint64_t SecKeyRef.KeyClass.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_225CCE474() == a1 && v6 == a2)
  {
    v9 = 1;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_225CCF934();

  if (v8)
  {
    v9 = 1;
LABEL_9:

    goto LABEL_10;
  }

  if (sub_225CCE474() == a1 && v11 == a2)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v13 = sub_225CCF934();

  if (v13)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

LABEL_10:
  *a3 = v9;
  return result;
}

uint64_t sub_2259E6C30()
{
  sub_225CCFBD4();
  sub_225CCE474();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_2259E6CAC()
{
  sub_225CCE474();
  sub_225CCE5B4();
}

uint64_t sub_2259E6D1C()
{
  sub_225CCFBD4();
  sub_225CCE474();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_2259E6DA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_225CCE474();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SecKeyRef static SecKeyRef.makeECKey(from:keyClass:)(uint64_t a1, unint64_t a2)
{
  v59 = a2;
  error[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v51 - v4;
  error[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  v7 = *MEMORY[0x277CDC028];
  *(inited + 32) = *MEMORY[0x277CDC028];
  v8 = *MEMORY[0x277CDC030];
  v9 = *MEMORY[0x277CDBFE0];
  *(inited + 40) = *MEMORY[0x277CDC030];
  *(inited + 48) = v9;
  sub_225CCE474();
  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = sub_225CCE444();

  *(inited + 56) = v13;
  sub_225B2C904(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE98);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2259F4764(&qword_27D73A9C8, type metadata accessor for CFString);
  v14 = sub_225CCE2B4();

  v15 = sub_225CCCF74();
  v16 = SecKeyCreateWithData(v15, v14, error);

  if (v16)
  {

    return v16;
  }

  v17 = error[0];
  if (error[0])
  {
    type metadata accessor for CFError(0);
    sub_2259F4764(&qword_281059B10, type metadata accessor for CFError);
    v18 = swift_allocError();
    *v19 = v17;
  }

  else
  {
    v18 = 0;
  }

  v20 = " certificate from DER data";
  v57 = "or when loading sec key";
  v21 = v18;
  v22 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v58 = swift_allocError();
  v24 = v23;
  if (!v18)
  {
    v29 = sub_225CCE954();
    (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
    goto LABEL_14;
  }

  v52 = " certificate from DER data";
  v59 = v22;
  swift_getErrorValue();
  v25 = v61;
  v26 = v18;
  sub_225B21FAC(v25, &v62);

  v27 = v63;
  if (!v63)
  {
    v62 = v18;
    v30 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v31 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_225CD30F0;
      *(v32 + 32) = 20;
      v33 = [v31 code];
      v34 = MEMORY[0x277D83BF8];
      *(v32 + 64) = MEMORY[0x277D83B88];
      *(v32 + 72) = v34;
      *(v32 + 40) = v33;
      v28 = sub_225B2C374(v32);
      swift_setDeallocating();
      sub_2259CB640(v32 + 32, &qword_27D73B060);

      v35 = v18;
      v55 = 0;
      v54 = 0;
      v27 = MEMORY[0x277D84F90];
      v56 = 261;
      v53 = v18;
      goto LABEL_12;
    }

    v62 = v18;
    v36 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    v29 = sub_225CCE954();
    v37 = swift_dynamicCast();
    (*(*(v29 - 8) + 56))(v5, v37 ^ 1u, 1, v29);
    v22 = v59;
    v20 = v52;
LABEL_14:
    sub_225CCE954();
    v38 = (*(*(v29 - 8) + 48))(v5, 1, v29);
    sub_2259CB640(v5, &unk_27D73B050);
    if (v38)
    {
      v39 = 261;
    }

    else
    {
      v39 = 23;
    }

    v56 = v39;
    v27 = MEMORY[0x277D84F90];
    v28 = sub_225B2C374(MEMORY[0x277D84F90]);
    v40 = v18;
    v55 = 0x8000000225D16570;
    v54 = 0xD000000000000027;
    v53 = v18;
    goto LABEL_18;
  }

  v56 = v62;
  v54 = v64;
  v55 = v65;
  v28 = v66;
  v53 = v67;
LABEL_12:
  v22 = v59;
  v20 = v52;
LABEL_18:
  v59 = 0x8000000225D16570;
  v41 = v20 | 0x8000000000000000;
  v57 |= 0x8000000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v28;
  sub_225B2C4A0(v22, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v62);

  v43 = v62;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_225B29AA0(0, *(v27 + 2) + 1, 1, v27);
  }

  v45 = *(v27 + 2);
  v44 = *(v27 + 3);
  if (v45 >= v44 >> 1)
  {
    v27 = sub_225B29AA0((v44 > 1), v45 + 1, 1, v27);
  }

  *(v27 + 2) = v45 + 1;
  v46 = &v27[56 * v45];
  v47 = v59;
  *(v46 + 4) = 0xD000000000000027;
  *(v46 + 5) = v47;
  *(v46 + 6) = 0xD000000000000021;
  *(v46 + 7) = v41;
  v48 = v57;
  *(v46 + 8) = 0xD000000000000019;
  *(v46 + 9) = v48;
  *(v46 + 10) = 126;
  *v24 = v56;
  v49 = v54;
  *(v24 + 8) = v27;
  *(v24 + 16) = v49;
  *(v24 + 24) = v55;
  *(v24 + 32) = v43;
  *(v24 + 40) = v53;
  swift_willThrow();

  return 0;
}

char *SecKeyRef.sign(data:algorithm:)(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v4 = v3;
  error[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v80 - v12;
  v14 = sub_225CCDF54();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  error[0] = 0;
  if (!SecKeyIsAlgorithmSupported(v4, kSecKeyOperationTypeSign, a3))
  {
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0x687469726F676C61, 0xEA0000000000206DLL);
    v88 = a3;
    type metadata accessor for SecKeyAlgorithm(0);
    sub_225CCF434();
    MEMORY[0x22AA6CE70](0xD00000000000001FLL, 0x8000000225D16650);
    v35 = v90;
    v18 = v91;
    v86 = 0x8000000225D16500;
    v85 = 0x8000000225D16630;
    v36 = MEMORY[0x277D84F90];
    v37 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v39 = v38;
    v40 = sub_225CCE954();
    v41 = *(v40 - 8);
    (*(v41 + 56))(v13, 1, 1, v40);
    LODWORD(v40) = (*(v41 + 48))(v13, 1, v40);
    sub_2259CB640(v13, &unk_27D73B050);
    if (v40)
    {
      v42 = 250;
    }

    else
    {
      v42 = 23;
    }

    v43 = sub_225B2C374(v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v43;
    sub_225B2C4A0(v37, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v90);

    v45 = v90;
    v46 = sub_225B29AA0(0, 1, 1, v36);
    v48 = *(v46 + 2);
    v47 = *(v46 + 3);
    if (v48 >= v47 >> 1)
    {
      v46 = sub_225B29AA0((v47 > 1), v48 + 1, 1, v46);
    }

    *(v46 + 2) = v48 + 1;
    v49 = &v46[56 * v48];
    *(v49 + 4) = v35;
    *(v49 + 5) = v18;
    v50 = v86;
    *(v49 + 6) = 0xD000000000000021;
    *(v49 + 7) = v50;
    v51 = v85;
    *(v49 + 8) = 0xD000000000000015;
    *(v49 + 9) = v51;
    *(v49 + 10) = 136;
    *v39 = v42;
    *(v39 + 8) = v46;
    *(v39 + 16) = v35;
    *(v39 + 24) = v18;
    *(v39 + 32) = v45;
    *(v39 + 40) = 0;
    goto LABEL_13;
  }

  v86 = v10;
  v19 = v87;
  v20 = sub_225CCCF74();
  Signature = SecKeyCreateSignature(v4, a3, v20, error);

  if (!Signature)
  {
    LOWORD(v90) = 252;
    errorFromCFError(_:_:_:)(error[0], 0xD000000000000021, 0x8000000225D165C0, &v90);
LABEL_13:
    swift_willThrow();
    return v18;
  }

  v22 = Signature;
  v23 = sub_225CCCFA4();
  v25 = v24;

  v90 = v23;
  v91 = v25;
  sub_2259DB42C();
  v26 = v19;
  sub_225CCDF24();
  v27 = v19;
  if (!v19)
  {
    v52 = sub_225CCDF34();
    v54 = v53;
    (*(v15 + 8))(v18, v14);
    v55 = v54 >> 62;
    if ((v54 >> 62) > 1)
    {
      if (v55 != 2)
      {
LABEL_34:
        v18 = sub_225CCCFD4();
        sub_2259BEF00(v52, v54);

        return v18;
      }

      v62 = *(v52 + 16);
      v63 = *(v52 + 24);
    }

    else
    {
      if (!v55)
      {
        goto LABEL_34;
      }

      v62 = v52;
      v63 = v52 >> 32;
    }

    if (v63 < v62)
    {
      __break(1u);
    }

    goto LABEL_34;
  }

  v87 = v22;
  v84 = " certificate from DER data";
  v83 = " DER format to raw (r,s) format";
  v28 = v19;
  v29 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v85 = swift_allocError();
  v31 = v30;
  swift_getErrorValue();
  v32 = v89;
  v33 = v19;
  sub_225B21FAC(v32, &v90);

  v18 = v91;
  if (v91)
  {
    v86 = v90;
    v82 = v92;
    v81 = v93;
    v34 = v94;
    v80 = v95;
  }

  else
  {
    v90 = v19;
    v56 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v57 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v59 = [(__CFString *)v57 code];
      v60 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v60;
      *(inited + 40) = v59;
      v34 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v61 = v26;
      v82 = 0;
      v81 = 0;
      v18 = MEMORY[0x277D84F90];
      v86 = 262;
    }

    else
    {
      v90 = v19;
      v64 = v19;
      v65 = sub_225CCE954();
      v66 = v86;
      v67 = swift_dynamicCast();
      v68 = *(v65 - 8);
      (*(v68 + 56))(v66, v67 ^ 1u, 1, v65);
      LODWORD(v68) = (*(v68 + 48))(v66, 1, v65);
      sub_2259CB640(v66, &unk_27D73B050);
      if (v68)
      {
        v69 = 262;
      }

      else
      {
        v69 = 23;
      }

      v86 = v69;
      v18 = MEMORY[0x277D84F90];
      v34 = sub_225B2C374(MEMORY[0x277D84F90]);
      v70 = v26;
      v82 = 0xD00000000000003FLL;
      v81 = 0x8000000225D165F0;
    }

    v80 = v26;
  }

  v71 = v84 | 0x8000000000000000;
  v72 = v83 | 0x8000000000000000;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v90 = v34;
  sub_225B2C4A0(v29, sub_225B2AC40, 0, v73, &v90);

  v74 = v90;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_225B29AA0(0, *(v18 + 2) + 1, 1, v18);
  }

  v76 = *(v18 + 2);
  v75 = *(v18 + 3);
  if (v76 >= v75 >> 1)
  {
    v18 = sub_225B29AA0((v75 > 1), v76 + 1, 1, v18);
  }

  *(v18 + 2) = v76 + 1;
  v77 = &v18[56 * v76];
  *(v77 + 4) = 0xD00000000000003FLL;
  *(v77 + 5) = 0x8000000225D165F0;
  *(v77 + 6) = 0xD000000000000021;
  *(v77 + 7) = v71;
  *(v77 + 8) = 0xD000000000000015;
  *(v77 + 9) = v72;
  *(v77 + 10) = 146;
  *v31 = v86;
  v78 = v82;
  *(v31 + 8) = v18;
  *(v31 + 16) = v78;
  *(v31 + 24) = v81;
  *(v31 + 32) = v74;
  *(v31 + 40) = v80;
  swift_willThrow();

  return v18;
}

void SecKeyRef.signSHA256Digest(_:algorithm:)(uint64_t a1, unint64_t a2, const __CFString *a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v148 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v145 - v13;
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v15)
    {
      if ((a2 & 0xFF000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    if (a1 == a1 >> 32)
    {
LABEL_16:
      v150 = 0x8000000225D16500;
      v149 = 0x8000000225D166A0;
      v26 = MEMORY[0x277D84F90];
      v27 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v28 = swift_allocError();
      v30 = v29;
      v31 = sub_225CCE954();
      v32 = *(v31 - 8);
      (*(v32 + 56))(v14, 1, 1, v31);
      LODWORD(v31) = (*(v32 + 48))(v14, 1, v31);
      sub_2259CB640(v14, &unk_27D73B050);
      if (v31)
      {
        v33 = 108;
      }

      else
      {
        v33 = 23;
      }

      v34 = sub_225B2C374(v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v153 = v34;
      sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v153);

      v36 = v153;
      v37 = sub_225B29AA0(0, 1, 1, v26);
      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_225B29AA0((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[56 * v39];
      *(v40 + 4) = 0xD000000000000013;
      *(v40 + 5) = 0x8000000225D16750;
      *(v40 + 6) = 0xD000000000000021;
      *(v40 + 7) = v150;
      *(v40 + 8) = 0xD00000000000001ELL;
      *(v40 + 9) = v149;
      *(v40 + 10) = 154;
      *v30 = v33;
      *(v30 + 8) = v37;
      *(v30 + 16) = 0xD000000000000013;
      *(v30 + 24) = 0x8000000225D16750;
      *(v30 + 32) = v36;
      *(v30 + 40) = 0;
      v41 = v28;
      goto LABEL_39;
    }
  }

LABEL_7:
  v16 = SecKeyCopyAttributes(v3);
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = v16;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_23;
  }

  v153 = 0;
  sub_225CCE2C4();

  v18 = v153;
  if (!v153)
  {
LABEL_23:
    v42 = 0x8000000225D16670;
    v150 = 0x8000000225D16500;
    v149 = 0x8000000225D166A0;
    v43 = MEMORY[0x277D84F90];
    v44 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v147 = swift_allocError();
    v46 = v45;
    v47 = sub_225CCE954();
    v48 = *(v47 - 8);
    (*(v48 + 56))(v14, 1, 1, v47);
    LODWORD(v47) = (*(v48 + 48))(v14, 1, v47);
    sub_2259CB640(v14, &unk_27D73B050);
    if (v47)
    {
      v49 = 258;
    }

    else
    {
      v49 = 23;
    }

    v50 = sub_225B2C374(v43);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v50;
    sub_225B2C4A0(v44, sub_225B2AC40, 0, v51, &v153);

    v52 = v153;
    v53 = sub_225B29AA0(0, 1, 1, v43);
    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_225B29AA0((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[56 * v55];
    v57 = 0xD000000000000026;
    *(v56 + 4) = 0xD000000000000026;
    *(v56 + 5) = 0x8000000225D16670;
    *(v56 + 6) = 0xD000000000000021;
    *(v56 + 7) = v150;
    *(v56 + 8) = 0xD00000000000001ELL;
    *(v56 + 9) = v149;
    v58 = 157;
    goto LABEL_37;
  }

  v146 = v4;
  v19 = sub_225CCE474();
  if (!*(v18 + 16))
  {

    goto LABEL_30;
  }

  v150 = v3;
  v21 = sub_2259F1DA8(v19, v20, MEMORY[0x277D83758], sub_2259F217C);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_30:

    goto LABEL_31;
  }

  sub_2259CB810(*(v18 + 56) + 32 * v21, &v153);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    v42 = 0x8000000225D166C0;
    v150 = 0x8000000225D16500;
    v149 = 0x8000000225D166A0;
    v59 = MEMORY[0x277D84F90];
    v60 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v147 = swift_allocError();
    v46 = v61;
    v62 = sub_225CCE954();
    v63 = *(v62 - 8);
    (*(v63 + 56))(v14, 1, 1, v62);
    LODWORD(v62) = (*(v63 + 48))(v14, 1, v62);
    sub_2259CB640(v14, &unk_27D73B050);
    if (v62)
    {
      v49 = 258;
    }

    else
    {
      v49 = 23;
    }

    v64 = sub_225B2C374(v59);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v64;
    sub_225B2C4A0(v60, sub_225B2AC40, 0, v65, &v153);

    v52 = v153;
    v53 = sub_225B29AA0(0, 1, 1, v59);
    v67 = *(v53 + 2);
    v66 = *(v53 + 3);
    if (v67 >= v66 >> 1)
    {
      v53 = sub_225B29AA0((v66 > 1), v67 + 1, 1, v53);
    }

    *(v53 + 2) = v67 + 1;
    v56 = &v53[56 * v67];
    v57 = 0xD000000000000024;
    *(v56 + 4) = 0xD000000000000024;
    *(v56 + 5) = 0x8000000225D166C0;
    v68 = v150;
    *(v56 + 6) = 0xD000000000000021;
    *(v56 + 7) = v68;
    v69 = v149;
    *(v56 + 8) = 0xD00000000000001ELL;
    *(v56 + 9) = v69;
    v58 = 160;
LABEL_37:
    *(v56 + 10) = v58;
    *v46 = v49;
    *(v46 + 8) = v53;
    *(v46 + 16) = v57;
    *(v46 + 24) = v42;
    *(v46 + 32) = v52;
    *(v46 + 40) = 0;
LABEL_38:
    v41 = v147;
LABEL_39:
    swift_willThrow();
    v146 = 0;
    goto LABEL_40;
  }

  v24 = v152;
  v147 = v151;
  v149 = sub_225CCE444();
  type metadata accessor for CFString(0);
  sub_2259F4764(&qword_27D73AEA0, type metadata accessor for CFString);
  v25 = v149;
  if (sub_225CCD4F4())
  {

    goto LABEL_58;
  }

  v145 = v24;
  if (!*MEMORY[0x277CDC048])
  {

    goto LABEL_74;
  }

  v103 = v25;
  v104 = *MEMORY[0x277CDC048];
  v105 = sub_225CCD4F4();

  if ((v105 & 1) == 0)
  {
LABEL_74:
    v153 = 0;
    v154 = 0xE000000000000000;
    sub_225CCF204();

    v153 = 0x657079742079656BLL;
    v154 = 0xE900000000000020;
    MEMORY[0x22AA6CE70](v147, v145);

    MEMORY[0x22AA6CE70](0xD00000000000001DLL, 0x8000000225D166F0);
    v113 = v153;
    v112 = v154;
    v150 = 0x8000000225D16500;
    v149 = 0x8000000225D166A0;
    v114 = MEMORY[0x277D84F90];
    v115 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v147 = swift_allocError();
    v117 = v116;
    v118 = sub_225CCE954();
    v119 = *(v118 - 8);
    (*(v119 + 56))(v14, 1, 1, v118);
    LODWORD(v118) = (*(v119 + 48))(v14, 1, v118);
    sub_2259CB640(v14, &unk_27D73B050);
    if (v118)
    {
      v120 = 250;
    }

    else
    {
      v120 = 23;
    }

    v121 = sub_225B2C374(v114);
    v122 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v121;
    sub_225B2C4A0(v115, sub_225B2AC40, 0, v122, &v153);

    v123 = v153;
    v124 = sub_225B29AA0(0, 1, 1, v114);
    v126 = *(v124 + 2);
    v125 = *(v124 + 3);
    if (v126 >= v125 >> 1)
    {
      v124 = sub_225B29AA0((v125 > 1), v126 + 1, 1, v124);
    }

    *(v124 + 2) = v126 + 1;
    v127 = &v124[56 * v126];
    *(v127 + 4) = v113;
    *(v127 + 5) = v112;
    v128 = v150;
    *(v127 + 6) = 0xD000000000000021;
    *(v127 + 7) = v128;
    v129 = v149;
    *(v127 + 8) = 0xD00000000000001ELL;
    *(v127 + 9) = v129;
    v130 = 171;
    goto LABEL_90;
  }

LABEL_58:
  v106 = v146;
  if (v15 == 2)
  {
    v109 = *(a1 + 16);
    v108 = *(a1 + 24);
    v110 = __OFSUB__(v108, v109);
    v107 = v108 - v109;
    if (!v110)
    {
      goto LABEL_66;
    }

    __break(1u);
LABEL_65:
    v107 = BYTE6(a2);
    goto LABEL_66;
  }

  if (v15 != 1)
  {
    goto LABEL_65;
  }

  LODWORD(v107) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    goto LABEL_92;
  }

  v107 = v107;
LABEL_66:
  if (v107 != 32)
  {
    v153 = 0;
    v154 = 0xE000000000000000;
    sub_225CCF204();

    v153 = 0xD000000000000012;
    v154 = 0x8000000225D16710;
    if (v15 == 2)
    {
      v132 = *(a1 + 16);
      v131 = *(a1 + 24);
      v110 = __OFSUB__(v131, v132);
      v111 = v131 - v132;
      if (!v110)
      {
        goto LABEL_84;
      }

      __break(1u);
    }

    else if (v15 == 1)
    {
      LODWORD(v111) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v111 = v111;
LABEL_84:
        v151 = v111;
        v133 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v133);

        MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D16730);
        v113 = v153;
        v112 = v154;
        v150 = 0x8000000225D16500;
        v149 = 0x8000000225D166A0;
        v134 = MEMORY[0x277D84F90];
        v135 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v147 = swift_allocError();
        v117 = v136;
        v137 = sub_225CCE954();
        v138 = *(v137 - 8);
        (*(v138 + 56))(v14, 1, 1, v137);
        LODWORD(v137) = (*(v138 + 48))(v14, 1, v137);
        sub_2259CB640(v14, &unk_27D73B050);
        if (v137)
        {
          v120 = 250;
        }

        else
        {
          v120 = 23;
        }

        v139 = sub_225B2C374(v134);
        v140 = swift_isUniquelyReferenced_nonNull_native();
        v153 = v139;
        sub_225B2C4A0(v135, sub_225B2AC40, 0, v140, &v153);

        v123 = v153;
        v124 = sub_225B29AA0(0, 1, 1, v134);
        v142 = *(v124 + 2);
        v141 = *(v124 + 3);
        if (v142 >= v141 >> 1)
        {
          v124 = sub_225B29AA0((v141 > 1), v142 + 1, 1, v124);
        }

        *(v124 + 2) = v142 + 1;
        v127 = &v124[56 * v142];
        *(v127 + 4) = v113;
        *(v127 + 5) = v112;
        v143 = v150;
        *(v127 + 6) = 0xD000000000000021;
        *(v127 + 7) = v143;
        v144 = v149;
        *(v127 + 8) = 0xD00000000000001ELL;
        *(v127 + 9) = v144;
        v130 = 168;
LABEL_90:
        *(v127 + 10) = v130;
        *v117 = v120;
        *(v117 + 8) = v124;
        *(v117 + 16) = v113;
        *(v117 + 24) = v112;
        *(v117 + 32) = v123;
        *(v117 + 40) = 0;
        goto LABEL_38;
      }

LABEL_92:
      __break(1u);
      return;
    }

    v111 = BYTE6(a2);
    goto LABEL_84;
  }

  SecKeyRef.sign(data:algorithm:)(a1, a2, a3);
  v41 = v106;
  if (!v106)
  {
    return;
  }

  v146 = 0;
  v150 = 0x8000000225D16500;
  v149 = 0x8000000225D166A0;
LABEL_40:
  v70 = v41;
  v71 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v72 = swift_allocError();
  v74 = v73;
  swift_getErrorValue();
  v75 = v159;
  v76 = v41;
  sub_225B21FAC(v75, &v153);

  v77 = v154;
  v147 = v72;
  if (v154)
  {
    v148 = v153;
    v79 = v155;
    v78 = v156;
    v80 = v157;
    v81 = v158;
  }

  else
  {
    v153 = v41;
    v82 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v83 = v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v85 = [v83 code];
      v86 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v86;
      *(inited + 40) = v85;
      v80 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v87 = v41;
      v148 = 0;
      v79 = 0;
      v78 = 0;
      v77 = MEMORY[0x277D84F90];
    }

    else
    {
      v153 = v41;
      v88 = v41;
      v89 = sub_225CCE954();
      v90 = v148;
      v91 = swift_dynamicCast();
      v92 = *(v89 - 8);
      (*(v92 + 56))(v90, v91 ^ 1u, 1, v89);
      LODWORD(v89) = (*(v92 + 48))(v90, 1, v89);
      sub_2259CB640(v90, &unk_27D73B050);
      if (v89)
      {
        v93 = 0;
      }

      else
      {
        v93 = 23;
      }

      v148 = v93;
      v77 = MEMORY[0x277D84F90];
      v80 = sub_225B2C374(MEMORY[0x277D84F90]);
      v94 = v41;
      v79 = 0;
      v78 = 0;
    }

    v81 = v41;
  }

  v95 = swift_isUniquelyReferenced_nonNull_native();
  v153 = v80;
  sub_225B2C4A0(v71, sub_225B2AC40, 0, v95, &v153);

  v96 = v153;
  v97 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v77 = sub_225B29AA0(0, *(v77 + 2) + 1, 1, v77);
  }

  v99 = *(v77 + 2);
  v98 = *(v77 + 3);
  if (v99 >= v98 >> 1)
  {
    v77 = sub_225B29AA0((v98 > 1), v99 + 1, 1, v77);
  }

  *(v77 + 2) = v99 + 1;
  v100 = &v77[56 * v99];
  *(v100 + 4) = 0;
  *(v100 + 5) = 0;
  v101 = v150;
  *(v100 + 6) = 0xD000000000000021;
  *(v100 + 7) = v101;
  v102 = v149;
  *(v100 + 8) = 0xD00000000000001ELL;
  *(v100 + 9) = v102;
  *(v100 + 10) = 174;
  *v74 = v148;
  *(v74 + 8) = v77;
  *(v74 + 16) = v79;
  *(v74 + 24) = v78;
  *(v74 + 32) = v96;
  *(v74 + 40) = v81;
  swift_willThrow();
}

uint64_t SecCertificateRef.base64EncodedString.getter()
{
  v1 = SecCertificateCopyData(v0);
  v2 = sub_225CCCFA4();
  v4 = v3;

  v5 = sub_225CCCF84();
  sub_2259BEF00(v2, v4);
  return v5;
}

uint64_t sub_2259E9330@<X0>(SecCertificateRef *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = SecCertificateCopyData(*a1);
  v4 = sub_225CCCFA4();
  v6 = v5;

  v7 = sub_225CCCF84();
  v9 = v8;
  result = sub_2259BEF00(v4, v6);
  *a2 = v7;
  a2[1] = v9;
  return result;
}

uint64_t sub_2259E93CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *), uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v8 = sub_225CCE8B4();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_2259E50F8(a4, KeyPath, v8, a5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  return v11;
}

uint64_t SecCertificateRef.derRepresentation.getter()
{
  v1 = SecCertificateCopyData(v0);
  v2 = sub_225CCCFA4();

  return v2;
}

SecCertificateRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> decodeCertificate(fromBase64DER:)(Swift::String fromBase64DER)
{
  object = fromBase64DER._object;
  countAndFlagsBits = fromBase64DER._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v43 - v5;
  v51[0] = countAndFlagsBits;
  v51[1] = object;
  v49 = 10;
  v50 = 0xE100000000000000;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_2259D8654();
  sub_225CCF064();
  v7 = sub_225CCCF04();
  v9 = v8;

  if (v9 >> 60 == 15)
  {
    v46 = 0x8000000225D16500;
    v10 = MEMORY[0x277D84F90];
    v11 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v13 = v12;
    v14 = sub_225CCE954();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v6, 1, 1, v14);
    LODWORD(v14) = (*(v15 + 48))(v6, 1, v14);
    sub_2259CB640(v6, &unk_27D73B050);
    if (v14)
    {
      v16 = 122;
    }

    else
    {
      v16 = 23;
    }

    v17 = sub_225B2C374(v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = v17;
    sub_225B2C4A0(v11, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v51);

    v19 = v51[0];
    v20 = sub_225B29AA0(0, 1, 1, v10);
    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_225B29AA0((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[56 * v22];
    *(v23 + 4) = 0xD000000000000022;
    *(v23 + 5) = 0x8000000225D16770;
    v24 = v46;
    *(v23 + 6) = 0xD000000000000021;
    *(v23 + 7) = v24;
    *(v23 + 8) = 0xD000000000000021;
    *(v23 + 9) = 0x8000000225D167A0;
    *(v23 + 10) = 198;
    *v13 = v16;
    *(v13 + 8) = v20;
    *(v13 + 16) = 0xD000000000000022;
    *(v13 + 24) = 0x8000000225D16770;
    *(v13 + 32) = v19;
    *(v13 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    v25 = *MEMORY[0x277CBECE8];
    v26 = sub_225CCCF74();
    v11 = SecCertificateCreateWithData(v25, v26);

    if (v11)
    {
      sub_2259B97A8(v7, v9);
    }

    else
    {
      v45 = 0x8000000225D16500;
      v46 = 0x8000000225D164D0;
      v44 = 0x8000000225D167A0;
      v27 = MEMORY[0x277D84F90];
      v28 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v11 = v29;
      v30 = sub_225CCE954();
      v31 = *(v30 - 8);
      (*(v31 + 56))(v6, 1, 1, v30);
      LODWORD(v30) = (*(v31 + 48))(v6, 1, v30);
      sub_2259CB640(v6, &unk_27D73B050);
      if (v30)
      {
        v32 = 155;
      }

      else
      {
        v32 = 23;
      }

      v33 = sub_225B2C374(v27);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v51[0] = v33;
      sub_225B2C4A0(v28, sub_225B2AC40, 0, v34, v51);

      v35 = v51[0];
      v36 = sub_225B29AA0(0, 1, 1, v27);
      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[56 * v38];
      v41 = v45;
      v40 = v46;
      *(v39 + 4) = 0xD00000000000002ALL;
      *(v39 + 5) = v40;
      *(v39 + 6) = 0xD000000000000021;
      *(v39 + 7) = v41;
      *(v39 + 8) = 0xD000000000000021;
      *(v39 + 9) = v44;
      *(v39 + 10) = 201;
      *v11 = v32;
      *(v11 + 1) = v36;
      *(v11 + 2) = 0xD00000000000002ALL;
      *(v11 + 3) = v40;
      *(v11 + 4) = v35;
      *(v11 + 5) = 0;
      swift_willThrow();
      sub_2259B97A8(v7, v9);
    }
  }

  return v11;
}

uint64_t decodeCertificateChain(fromBase64DER:)(void *a1)
{
  v1 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v2 = a1[2];
  if (v2)
  {
    v5 = a1[4];
    v4 = a1[5];

    v6._countAndFlagsBits = v5;
    v6._object = v4;
    v7 = decodeCertificate(fromBase64DER:)(v6);
    if (v8)
    {
LABEL_3:
    }

    else
    {
      v10 = v7;
      v11 = (a1 + 7);
      while (1)
      {

        v12 = v10;
        MEMORY[0x22AA6D020]();
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_225CCE844();
        }

        sub_225CCE884();

        v1 = v17;
        if (!--v2)
        {
          break;
        }

        v14 = *(v11 - 1);
        v13 = *v11;

        v15._countAndFlagsBits = v14;
        v15._object = v13;
        v10 = decodeCertificate(fromBase64DER:)(v15);
        v11 += 2;
        if (v16)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return v1;
}

uint64_t decodeCertificateChain(fromDER:)(void *a1)
{
  v2 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v3 = a1[2];
  if (v3)
  {
    v5 = a1[4];
    v6 = a1[5];
    sub_2259CB710(v5, v6);
    v7 = decodeCertificate(fromDER:)();
    if (v1)
    {
      sub_2259BEF00(v5, v6);
    }

    else
    {
      for (i = a1 + 7; ; i += 2)
      {
        v10 = v7;
        MEMORY[0x22AA6D020]();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_225CCE844();
        }

        sub_225CCE884();
        sub_2259BEF00(v5, v6);

        v2 = v11;
        if (!--v3)
        {
          break;
        }

        v5 = *(i - 1);
        v6 = *i;
        sub_2259CB710(v5, *i);
        v7 = decodeCertificate(fromDER:)();
      }
    }
  }

  return v2;
}

uint64_t sub_2259E9CCC()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2259E9DC4;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 6, 0, 0, 0xD000000000000017, 0x8000000225D167D0, sub_2259F4800, v2, v4);
}

uint64_t sub_2259E9DC4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2259E9EFC;
  }

  else
  {

    v2 = sub_2259E9EE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2259E9EFC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2259E9F64(uint64_t a1, void *a2)
{
  v40 = a2;
  v41 = a1;
  v2 = sub_225CCDA34();
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v44 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08);
  v6 = *(v39 - 8);
  v38 = *(v6 + 64);
  MEMORY[0x28223BE20](v39, v7);
  v37 = v35 - v8;
  v36 = sub_225CCEDA4();
  v9 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCED84();
  MEMORY[0x28223BE20](v13, v14);
  v15 = sub_225CCDA64();
  v42 = *(v15 - 8);
  v43 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2259D8718(0, &qword_28105BFA8);
  v35[1] = "Unable to deserialize ACL";
  v35[2] = v19;
  sub_225CCDA54();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2259F4764(&qword_28105BFB0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF10);
  sub_2259F6F50(&qword_28105BFC8, &qword_27D73AF10);
  sub_225CCF0E4();
  (*(v9 + 104))(v12, *MEMORY[0x277D85260], v36);
  v20 = v18;
  v21 = sub_225CCEDD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF18);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  v24 = v40;
  v23 = v41;
  *(v22 + 16) = v40;
  v25 = v37;
  v26 = v39;
  (*(v6 + 16))(v37, v23, v39);
  v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  *(v28 + 24) = v21;
  (*(v6 + 32))(v28 + v27, v25, v26);
  aBlock[4] = sub_2259F6EC8;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225A1A000;
  aBlock[3] = &block_descriptor;
  v29 = _Block_copy(aBlock);
  v30 = v24;

  v31 = v21;
  sub_225CCDA54();
  v47 = MEMORY[0x277D84F90];
  sub_2259F4764(&qword_28105BFD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B170);
  sub_2259F6F50(&qword_28105BFD0, &unk_27D73B170);
  v33 = v44;
  v32 = v45;
  sub_225CCF0E4();
  MEMORY[0x22AA6D600](0, v20, v33, v29);
  _Block_release(v29);

  (*(v46 + 8))(v33, v32);
  (*(v42 + 8))(v20, v43);
}

void sub_2259EA518(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v41 - v13;
  os_unfair_lock_lock((a1 + 24));
  v15 = *(a1 + 16);
  os_unfair_lock_unlock((a1 + 24));
  (*(v11 + 16))(v14, a3, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  v47 = sub_2259F6FA4;
  v48 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_2259EAADC;
  v46 = &block_descriptor_27;
  v18 = _Block_copy(&aBlock);

  v19 = SecTrustEvaluateAsyncWithError(v15, a2, v18);
  _Block_release(v18);

  if (v19)
  {
    v41[0] = a3;
    aBlock = 0;
    v44 = 0xE000000000000000;
    sub_225CCF204();

    aBlock = 0xD000000000000027;
    v44 = 0x8000000225D16AE0;
    v42 = v19;
    v20 = MEMORY[0x277D849A8];
    v21 = MEMORY[0x277D84A08];
    v22 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v22);

    v24 = aBlock;
    v23 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v26 = inited + 32;
    *(inited + 64) = v20;
    *(inited + 72) = v21;
    *(inited + 40) = v19;
    v27 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v26, &qword_27D73B060);
    v28 = sub_225CCE954();
    v29 = *(v28 - 8);
    (*(v29 + 56))(v9, 1, 1, v28);
    LODWORD(v28) = (*(v29 + 48))(v9, 1, v28);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v28)
    {
      v30 = 155;
    }

    else
    {
      v30 = 23;
    }

    v31 = MEMORY[0x277D84F90];
    v32 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v32;
    sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &aBlock);

    v34 = aBlock;
    v35 = sub_225B29AA0(0, 1, 1, v31);
    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    v38 = &v35[56 * v37];
    *(v38 + 4) = v24;
    *(v38 + 5) = v23;
    *(v38 + 6) = 0xD000000000000021;
    *(v38 + 7) = 0x8000000225D16500;
    *(v38 + 8) = 0xD000000000000017;
    *(v38 + 9) = 0x8000000225D167D0;
    *(v38 + 10) = 256;
    sub_2259CB5EC();
    v39 = swift_allocError();
    *v40 = v30;
    *(v40 + 8) = v35;
    *(v40 + 16) = v24;
    *(v40 + 24) = v23;
    *(v40 + 32) = v34;
    *(v40 + 40) = 0;
    aBlock = v39;
    sub_225CCE924();
  }
}

uint64_t sub_2259EA9F8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    type metadata accessor for CFError(0);
    sub_2259F4764(&qword_281059B10, type metadata accessor for CFError);
    swift_allocError();
    *v4 = a3;
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08);
    return sub_225CCE924();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08);
    return sub_225CCE934();
  }
}

void sub_2259EAADC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

uint64_t PublicKeyAlgorithm.description.getter()
{
  v1 = *v0;
  v2 = 0x363532505F4345;
  v3 = 0x313235505F4345;
  v4 = 0x39313535325F4445;
  if (v1 != 3)
  {
    v4 = 0x3834345F4445;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x343833505F4345;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

CoreIDVShared::PublicKeyAlgorithm_optional __swiftcall PublicKeyAlgorithm.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2259EAC70()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_2259EAD50()
{
  sub_225CCE5B4();
}

uint64_t sub_2259EAE1C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_2259EAF04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x363532505F4345;
  v5 = 0xE700000000000000;
  v6 = 0x313235505F4345;
  v7 = 0xE800000000000000;
  v8 = 0x39313535325F4445;
  if (v2 != 3)
  {
    v8 = 0x3834345F4445;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x343833505F4345;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2259EAFA0()
{
  v1 = *v0;
  v2 = 0x363532505F4345;
  v3 = 0x313235505F4345;
  v4 = 0x39313535325F4445;
  if (v1 != 3)
  {
    v4 = 0x3834345F4445;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x343833505F4345;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t static SecCertificateRef.appleExternalRoots.getter()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v24 - v7;
  v9 = SecCertificateCopyAppleExternalRoots();
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v25 = 0;
      type metadata accessor for SecCertificate(0);
      sub_225CCE804();

      result = v25;
      if (v25)
      {
        return result;
      }
    }

    else
    {
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v18 = off_28105B918;
    v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v20));
    (*(v1 + 16))(v8, &v18[v19], v0);
    os_unfair_lock_unlock(&v18[v20]);
    v21 = sub_225CCD934();
    v22 = sub_225CCED14();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2259A7000, v21, v22, "SecCertificate error casting hardcoded external roots from Security framework", v23, 2u);
      MEMORY[0x22AA6F950](v23, -1, -1);
    }

    (*(v1 + 8))(v8, v0);
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v12 = off_28105B918;
    v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v14));
    (*(v1 + 16))(v5, &v12[v13], v0);
    os_unfair_lock_unlock(&v12[v14]);
    v15 = sub_225CCD934();
    v16 = sub_225CCED14();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2259A7000, v15, v16, "SecCertificate could not get hardcoded external roots from Security framework", v17, 2u);
      MEMORY[0x22AA6F950](v17, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
  }

  return MEMORY[0x277D84F90];
}

void static SecCertificateRef.make(with:in:)(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v88 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v89 = &v87 - v11;
  v12 = sub_225CCCEA4();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v87 - v19;
  if (a3)
  {
    v21 = a3;
  }

  else
  {
    if (qword_28105B8B8 != -1)
    {
      swift_once();
    }

    v21 = qword_28105E338;
  }

  v22 = a3;
  v23 = a2;
  v24 = sub_225CCE444();
  v25 = sub_225CCE444();
  v93 = v21;
  v26 = [v21 URLForResource:v24 withExtension:v25];

  v91 = v23;
  v90 = a1;
  if (v26)
  {
    sub_225CCCE34();

    (*(v13 + 32))(v20, v17, v12);
    v27 = v92;
    v28 = sub_225CCCEC4();
    if (!v27)
    {
      v66 = v28;
      v67 = v29;
      v68 = sub_225CCCF74();
      v69 = SecCertificateCreateWithPEM();

      v70 = v93;
      if (v69)
      {
        v71 = v69;
        sub_2259BEF00(v66, v67);

        (*(v13 + 8))(v20, v12);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    (*(v13 + 8))(v20, v12);

    v89 = 0;
    v92 = 0x8000000225D16500;
    v30 = v27;
  }

  else
  {
    v95 = 0;
    v96 = 0xE000000000000000;
    sub_225CCF204();

    v95 = 0xD00000000000001BLL;
    v96 = 0x8000000225D167F0;
    MEMORY[0x22AA6CE70](a1, v23);
    MEMORY[0x22AA6CE70](1835364398, 0xE400000000000000);
    v32 = v95;
    v31 = v96;
    v33 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v30 = swift_allocError();
    v35 = v34;
    v36 = sub_225CCE954();
    v37 = *(v36 - 8);
    v38 = v89;
    (*(v37 + 56))(v89, 1, 1, v36);
    LODWORD(v36) = (*(v37 + 48))(v38, 1, v36);
    sub_2259CB640(v38, &unk_27D73B050);
    if (v36)
    {
      v39 = 273;
    }

    else
    {
      v39 = 23;
    }

    v40 = MEMORY[0x277D84F90];
    v41 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v41;
    sub_225B2C4A0(v33, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v95);

    v43 = v95;
    v44 = sub_225B29AA0(0, 1, 1, v40);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_225B29AA0((v45 > 1), v46 + 1, 1, v44);
    }

    *(v44 + 2) = v46 + 1;
    v47 = &v44[56 * v46];
    *(v47 + 4) = v32;
    *(v47 + 5) = v31;
    *(v47 + 6) = 0xD000000000000021;
    *(v47 + 7) = 0x8000000225D16500;
    v92 = 0x8000000225D16500;
    strcpy(v47 + 64, "make(with:in:)");
    v47[79] = -18;
    *(v47 + 10) = 305;
    *v35 = v39;
    *(v35 + 8) = v44;
    *(v35 + 16) = v32;
    *(v35 + 24) = v31;
    *(v35 + 32) = v43;
    *(v35 + 40) = 0;
    swift_willThrow();

    v89 = 0;
  }

  v95 = 0;
  v96 = 0xE000000000000000;
  sub_225CCF204();

  v95 = 0xD00000000000002BLL;
  v96 = 0x8000000225D16810;
  MEMORY[0x22AA6CE70](v90, v91);
  MEMORY[0x22AA6CE70](1835364398, 0xE400000000000000);
  v48 = v95;
  v49 = v96;
  v50 = v30;
  v51 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v93 = swift_allocError();
  v53 = v52;
  swift_getErrorValue();
  v54 = v101;
  v55 = v30;
  sub_225B21FAC(v54, &v95);

  v56 = v96;
  v91 = v48;
  v90 = v49;
  if (v96)
  {
    v88 = v95;
    v48 = v97;
    v57 = v98;
    v58 = v99;
    v59 = v100;
  }

  else
  {
    v95 = v30;
    v60 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v61 = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v63 = [v61 code];
      v64 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v64;
      *(inited + 40) = v63;
      v58 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v65 = v30;
      v57 = 0;
      v48 = 0;
      v56 = MEMORY[0x277D84F90];
      v88 = 273;
      v59 = v30;
    }

    else
    {
      v95 = v30;
      v72 = v30;
      v73 = sub_225CCE954();
      v74 = v51;
      v75 = v88;
      v76 = swift_dynamicCast();
      v77 = *(v73 - 8);
      (*(v77 + 56))(v75, v76 ^ 1u, 1, v73);
      LODWORD(v77) = (*(v77 + 48))(v75, 1, v73);
      v78 = v75;
      v51 = v74;
      sub_2259CB640(v78, &unk_27D73B050);
      if (v77)
      {
        v79 = 273;
      }

      else
      {
        v79 = 23;
      }

      v88 = v79;

      v56 = MEMORY[0x277D84F90];
      v58 = sub_225B2C374(MEMORY[0x277D84F90]);
      v80 = v30;
      v59 = v30;
      v57 = v49;
    }
  }

  v81 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v58;
  sub_225B2C4A0(v51, sub_225B2AC40, 0, v81, &v95);

  v82 = v95;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = sub_225B29AA0(0, *(v56 + 2) + 1, 1, v56);
  }

  v84 = *(v56 + 2);
  v83 = *(v56 + 3);
  if (v84 >= v83 >> 1)
  {
    v56 = sub_225B29AA0((v83 > 1), v84 + 1, 1, v56);
  }

  *(v56 + 2) = v84 + 1;
  v85 = &v56[56 * v84];
  v86 = v90;
  *(v85 + 4) = v91;
  *(v85 + 5) = v86;
  *(v85 + 6) = 0xD000000000000021;
  *(v85 + 7) = v92;
  strcpy(v85 + 64, "make(with:in:)");
  v85[79] = -18;
  *(v85 + 10) = 311;
  *v53 = v88;
  *(v53 + 8) = v56;
  *(v53 + 16) = v48;
  *(v53 + 24) = v57;
  *(v53 + 32) = v82;
  *(v53 + 40) = v59;
  swift_willThrow();
}

SecCertificateRef static SecCertificateRef.make(with:)()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = sub_225CCCF74();
  v2 = SecCertificateCreateWithData(v0, v1);

  return v2;
}

Swift::String_optional __swiftcall SecCertificateRef.commonName()()
{
  v1 = v0;
  commonName[1] = *MEMORY[0x277D85DE8];
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  commonName[0] = 0;
  v7 = SecCertificateCopyCommonName(v1, commonName);
  if (v7)
  {
    v8 = SecCopyErrorMessageString(v7, 0);
    if (v8)
    {
      v9 = v8;
      v10 = sub_225CCE474();
      v12 = v11;
    }

    else
    {
      v12 = 0xE500000000000000;
      v10 = 0x3E6C696E3CLL;
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v16 = off_28105B918;
    v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v18));
    (*(v3 + 16))(v6, &v16[v17], v2);
    os_unfair_lock_unlock(&v16[v18]);

    v19 = sub_225CCD934();
    v20 = sub_225CCED14();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136446210;
      v23 = sub_2259BE198(v10, v12, &v28);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_2259A7000, v19, v20, "error during SecCertificateCopyCommonName, error: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AA6F950](v22, -1, -1);
      MEMORY[0x22AA6F950](v21, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    goto LABEL_13;
  }

  if (!commonName[0])
  {
LABEL_13:
    v13 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v13 = sub_225CCE474();
  v15 = v14;
LABEL_14:

  v24 = v13;
  v25 = v15;
  result.value._object = v25;
  result.value._countAndFlagsBits = v24;
  return result;
}

Swift::String_optional __swiftcall SecCertificateRef.organization()()
{
  v0 = sub_2259EC150(MEMORY[0x277CDBDC0]);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall SecCertificateRef.organizationalUnit()()
{
  v0 = sub_2259EC150(MEMORY[0x277CDBDC8]);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_2259EC150(uint64_t (*a1)(uint64_t))
{
  result = a1(v1);
  if (result)
  {
    v3 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_225CCE804();
    }

    return 0;
  }

  return result;
}

Swift::String_optional __swiftcall SecCertificateRef.uid()()
{

  v0 = sub_2259EC330();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t SecCertificateRef.stateOrProvinceName.getter()
{

  return sub_2259EC330();
}

uint64_t SecCertificateRef.countryName.getter()
{

  return sub_2259EC330();
}

uint64_t sub_2259EC330()
{
  v0 = SecCertificateCopySubjectAttributeValue();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_225CCE474();

  return v2;
}

uint64_t SecCertificateRef.issuerSHA1()()
{
  v0 = SecCertificateCopyIssuerSHA1Digest();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_225CCCFA4();

  return v2;
}

SecKeyRef SecCertificateRef.publicKeySHA256()()
{
  v1 = sub_225CCE164();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCDBA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = SecCertificateCopyKey(v0);
  if (result)
  {
    v12 = result;
    v13 = SecKeyRef.publicKeyData.getter();
    v15 = v14;
    if (v14 >> 60 == 15)
    {

      return v13;
    }

    else
    {
      sub_2259F4764(&qword_27D73AE10, MEMORY[0x277CC5540]);
      v22 = v6;
      sub_225CCDB94();
      sub_2259CB710(v13, v15);
      v23 = v7;
      sub_2259DB138(v13, v15);
      sub_2259B97A8(v13, v15);
      sub_225CCDB84();
      (*(v2 + 8))(v5, v1);
      sub_2259F4764(&qword_27D73AE58, MEMORY[0x277CC5290]);
      v16 = v22;
      v17 = sub_225CCE154();
      v19 = sub_2259D732C(v17, v18);

      v20 = sub_2259D8490(v19);

      sub_2259B97A8(v13, v15);
      (*(v23 + 8))(v10, v16);
      return v20;
    }
  }

  return result;
}

uint64_t SecCertificateRef.extendedKeyUsage.getter()
{
  v0 = SecCertificateCopyExtendedKeyUsage();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_225CCE804();
    }
  }

  return v1;
}

void SecCertificateRef.logotype.getter(uint64_t a1@<X8>)
{
  v3 = sub_225CCD954();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCD564();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = sub_225CCD6B4();
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCE444();
  v13 = SecCertificateCopyExtensionValue();

  if (v13)
  {
    v28 = v3;
    v29 = a1;
    v14 = sub_225CCCFA4();
    v16 = v15;

    sub_2259CB710(v14, v16);
    sub_2259F4494(v14, v16);
    sub_225CCD744();
    sub_225CCD764();
    if (v1)
    {

      sub_2259CB710(v14, v16);
      sub_2259F4494(v14, v16);
      sub_2259F4808();
      sub_225CCD734();
      sub_2259BEF00(v14, v16);
      v17 = v33;
      v18 = v29;
      *v29 = v32;
      *(v18 + 2) = v17;
    }

    else
    {
      (*(v30 + 8))(v11, v8);
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v19 = off_28105B918;
      v20 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v21 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v21));
      v22 = v31;
      v23 = v28;
      (*(v31 + 16))(v34, &v19[v20], v28);
      os_unfair_lock_unlock(&v19[v21]);
      v24 = sub_225CCD934();
      v25 = sub_225CCED04();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_2259A7000, v24, v25, "Received ASN1Null for Logotype OID, returning nil", v26, 2u);
        MEMORY[0x22AA6F950](v26, -1, -1);

        sub_2259BEF00(v14, v16);
      }

      else
      {
        sub_2259BEF00(v14, v16);
      }

      v27 = v29;
      (*(v22 + 8))(v34, v23);
      *v27 = xmmword_225CD48A0;
      *(v27 + 2) = 0;
    }
  }

  else
  {
    *a1 = xmmword_225CD48A0;
    *(a1 + 16) = 0;
  }
}

uint64_t SecCertificateRef.externalDataHash.getter()
{
  v48 = sub_225CCD5B4();
  v1 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v2);
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_225CCD954();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCD564();
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v13 = sub_225CCD6B4();
  v43 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_225CCE444();
  v18 = SecCertificateCopyExtensionValue();

  if (!v18)
  {
    return 0;
  }

  v41 = v1;
  v42 = v11;
  v19 = sub_225CCCFA4();
  v21 = v20;

  sub_2259CB710(v19, v21);
  sub_2259F4494(v19, v21);
  sub_225CCD744();
  sub_225CCD764();
  if (v0)
  {

    sub_2259CB710(v19, v21);
    sub_2259F4494(v19, v21);
    v22 = v48;
    sub_225CCD744();
    v23 = v47;
    sub_225CCD764();
    v33 = sub_225CCD5A4();
    sub_2259D2AD0(v33, v34, v35, v36);
    v38 = v37;
    sub_2259BEF00(v19, v21);
    (*(v41 + 8))(v23, v22);
    return v38;
  }

  else
  {
    (*(v43 + 8))(v16, v13);
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v24 = off_28105B918;
    v25 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v26 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v26));
    v28 = v44;
    v27 = v45;
    v29 = v46;
    (*(v45 + 16))(v44, &v24[v25], v46);
    os_unfair_lock_unlock(&v24[v26]);
    v30 = sub_225CCD934();
    v31 = sub_225CCED04();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2259A7000, v30, v31, "Received ASN1Null for external data hash, returning nil", v32, 2u);
      MEMORY[0x22AA6F950](v32, -1, -1);

      sub_2259BEF00(v19, v21);
    }

    else
    {
      sub_2259BEF00(v19, v21);
    }

    (*(v27 + 8))(v28, v29);
    return 0;
  }
}

uint64_t SecCertificateRef.privacyPolicyURL.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = sub_225CCD704();
  v45 = *(v51 - 8);
  v3 = MEMORY[0x28223BE20](v51, v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v50 = &v42 - v7;
  v8 = sub_225CCD954();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCD564();
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  MEMORY[0x28223BE20](v13, v14);
  v15 = sub_225CCD6B4();
  v46 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_225CCE444();
  v20 = SecCertificateCopyExtensionValue();

  if (v20)
  {
    v43 = v5;
    v44 = a1;
    v21 = sub_225CCCFA4();
    v23 = v22;

    sub_2259CB710(v21, v23);
    sub_2259F4494(v21, v23);
    sub_225CCD744();
    v24 = v52;
    sub_225CCD764();
    if (v24)
    {

      sub_2259CB710(v21, v23);
      sub_2259F4494(v21, v23);
      v25 = v51;
      sub_225CCD744();
      v26 = v50;
      sub_225CCD764();
      v37 = v45;
      v38 = v43;
      (*(v45 + 16))(v43, v26, v25);
      MEMORY[0x22AA6CDC0](v38);
      sub_225CCCE84();

      sub_2259BEF00(v21, v23);
      return (*(v37 + 8))(v26, v25);
    }

    else
    {
      (*(v46 + 8))(v18, v15);
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v28 = off_28105B918;
      v29 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v30 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v30));
      v32 = v47;
      v31 = v48;
      v33 = v49;
      (*(v48 + 16))(v47, &v28[v29], v49);
      os_unfair_lock_unlock(&v28[v30]);
      v34 = sub_225CCD934();
      v35 = sub_225CCED04();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_2259A7000, v34, v35, "Received ASN1Null for privacy policy URL, returning nil", v36, 2u);
        MEMORY[0x22AA6F950](v36, -1, -1);

        sub_2259BEF00(v21, v23);
      }

      else
      {
        sub_2259BEF00(v21, v23);
      }

      v40 = v44;
      (*(v31 + 8))(v32, v33);
      v41 = sub_225CCCEA4();
      return (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
    }
  }

  else
  {
    v27 = sub_225CCCEA4();
    return (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
  }
}

void SecCertificateRef.merchantCategoryCode.getter()
{
  v38 = sub_2259D8490(&unk_2838FB330);
  v39 = v1;
  v2 = v0;
  v3 = sub_2259F4908(&v38, v2);
  v5 = v4;

  if (!v5)
  {
    sub_2259BEF00(v38, v39);
    return;
  }

  v6 = HIBYTE(v5) & 0xF;
  v7 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    sub_2259BEF00(v38, v39);

    return;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    sub_2259F3F08(v3, v5, 10);
    v34 = v38;
    v35 = v39;
    goto LABEL_65;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v36[0] = v3;
    v36[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    if (v3 == 43)
    {
      if (v6)
      {
        if (--v6)
        {
          v23 = 0;
          v24 = v36 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v6)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      goto LABEL_72;
    }

    if (v3 != 45)
    {
      if (v6)
      {
        v30 = 0;
        v31 = v36;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v6)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v6)
    {
      if (--v6)
      {
        v15 = 0;
        v16 = v36 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v6)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }
  }

  else
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v9 = sub_225CCF354();
    }

    v10 = *v9;
    if (v10 == 43)
    {
      if (v7 >= 1)
      {
        v6 = v7 - 1;
        if (v7 != 1)
        {
          v19 = 0;
          if (v9)
          {
            v20 = v9 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_63;
              }

              v22 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_63;
              }

              v19 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_63;
              }

              ++v20;
              if (!--v6)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_71;
    }

    if (v10 != 45)
    {
      if (v7)
      {
        v27 = 0;
        if (v9)
        {
          while (1)
          {
            v28 = *v9 - 48;
            if (v28 > 9)
            {
              goto LABEL_63;
            }

            v29 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              goto LABEL_63;
            }

            v27 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_63;
            }

            ++v9;
            if (!--v7)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      LOBYTE(v6) = 1;
      goto LABEL_64;
    }

    if (v7 >= 1)
    {
      v6 = v7 - 1;
      if (v7 != 1)
      {
        v11 = 0;
        if (v9)
        {
          v12 = v9 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_63;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_63;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_63;
            }

            ++v12;
            if (!--v6)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v6) = 0;
LABEL_64:
        v37 = v6;
        v34 = v38;
        v35 = v39;
LABEL_65:
        sub_2259BEF00(v34, v35);

        return;
      }

      goto LABEL_63;
    }

    __break(1u);
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t sub_2259EDAD0(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_225CCF354();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_2259F3F08(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t SecCertificateRef.pseudonym.getter()
{
  v5 = sub_2259D8490(&unk_2838FB358);
  v6 = v1;
  v2 = v0;
  v3 = sub_2259F4908(&v5, v2);

  sub_2259BEF00(v5, v6);
  return v3;
}

void sub_2259EDE40(uint64_t *a1@<X8>)
{
  v2 = SecCertificateCopySubjectAttributeValue();
  if (v2)
  {
    v3 = v2;
    v4 = sub_225CCE474();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
}

void sub_2259EDEF4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCE444();
  v12 = SecCertificateCopyExtensionValue();

  if (v12)
  {
    v34 = a1;
    v13 = sub_225CCCFA4();
    v15 = v14;

    sub_2259CB710(v13, v15);
    sub_2259F4494(v13, v15);
    sub_2259F6E74();
    sub_225CCD734();
    if (v3)
    {
      v32 = v13;
      v33 = v15;
      v16 = v8;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v17 = off_28105B918;
      v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v19));
      v20 = v36;
      (*(v16 + 16))(v36, &v17[v18], v7);
      os_unfair_lock_unlock(&v17[v19]);

      v21 = v3;
      v22 = sub_225CCD934();
      v23 = sub_225CCED14();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31 = v7;
        v27 = v26;
        *&v35 = v26;
        *v24 = 136315394;
        *(v24 + 4) = sub_2259BE198(v34, a2, &v35);
        *(v24 + 12) = 2112;
        v28 = v3;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 14) = v29;
        *v25 = v29;
        _os_log_impl(&dword_2259A7000, v22, v23, "Failed to decode allowable elements for OID=%s: %@", v24, 0x16u);
        sub_2259CB640(v25, &unk_27D73FC90);
        MEMORY[0x22AA6F950](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x22AA6F950](v27, -1, -1);
        MEMORY[0x22AA6F950](v24, -1, -1);

        (*(v16 + 8))(v20, v31);
      }

      else
      {

        (*(v16 + 8))(v20, v7);
      }

      v30 = v32;
      swift_willThrow();
      sub_2259BEF00(v30, v33);
    }

    else
    {
      sub_2259BEF00(v13, v15);
      *a3 = v35;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

void SecCertificateRef.localizedRelyingPartyNames.getter(void *a1@<X8>)
{
  v2 = sub_225CCD954();
  v36 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v35 = &v33 - v7;
  v8 = sub_225CCD564();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = sub_225CCD6B4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCE444();
  v16 = SecCertificateCopyExtensionValue();

  if (v16)
  {
    v33 = a1;
    v34 = v2;
    v17 = sub_225CCCFA4();
    v19 = v18;

    sub_2259CB710(v17, v19);
    sub_2259F4494(v17, v19);
    sub_225CCD744();
    v20 = v38;
    sub_225CCD764();
    if (v20)
    {

      sub_2259CB710(v17, v19);
      sub_2259F4494(v17, v19);
      sub_2259F4D04();
      sub_225CCD734();
      sub_2259BEF00(v17, v19);
      *v33 = v39;
    }

    else
    {
      v38 = 0;
      v21 = v19;
      (*(v11 + 8))(v14, v10);
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v22 = off_28105B918;
      v23 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v24 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v24));
      v26 = v35;
      v25 = v36;
      v27 = v34;
      (*(v36 + 16))(v35, &v22[v23], v34);
      os_unfair_lock_unlock(&v22[v24]);
      v28 = sub_225CCD934();
      v29 = sub_225CCED04();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v33;
      if (v30)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2259A7000, v28, v29, "Received ASN1Null for LocalizedRelyingPartyNames OID, returning nil", v32, 2u);
        MEMORY[0x22AA6F950](v32, -1, -1);

        sub_2259BEF00(v17, v21);
      }

      else
      {
        sub_2259BEF00(v17, v21);
      }

      (*(v25 + 8))(v26, v27);
      *v31 = 0;
    }
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t SecCertificateRef.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  SecCertificateNotValidAfter();
  if (v2 == 0.0)
  {
    v3 = 1;
  }

  else
  {
    sub_225CCCFF4();
    v3 = 0;
  }

  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t SecCertificateRef.validityPeriod.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_225CCD1E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCD284();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCD0B4();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v25 - v17;
  SecCertificateNotValidBefore();
  SecCertificateNotValidAfter();
  sub_225CCCFF4();
  sub_225CCCFF4();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9830], v1);
  sub_225CCD1F4();
  (*(v2 + 8))(v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8);
  v19 = sub_225CCD264();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_225CD30F0;
  (*(v20 + 104))(v22 + v21, *MEMORY[0x277CC9968], v19);
  sub_2259F4D58(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  sub_225CCD214();

  (*(v26 + 8))(v9, v27);
  v23 = *(v11 + 8);
  v23(v15, v10);
  return (v23)(v18, v10);
}

uint64_t SecCertificateRef.serialNumber.getter()
{
  v1 = SecCertificateCopySerialNumberData(v0, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_225CCCFA4();

  return v3;
}

uint64_t sub_2259EEE38(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_225CCCFA4();

  return v4;
}

BOOL SecCertificateRef.hasBrandAssetsIdentifier.getter()
{
  v0 = sub_225CCE444();
  v1 = SecCertificateCopyExtensionValue();

  if (v1)
  {
    v2 = sub_225CCCFA4();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xF000000000000000;
  }

  sub_2259B97A8(v2, v4);
  return v4 >> 60 != 15;
}

uint64_t SecCertificateRef.brandAssetsIdentifier.getter()
{
  v56 = sub_225CCD574();
  v52 = *(v56 - 8);
  v2 = MEMORY[0x28223BE20](v56, v1);
  v51 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2, v4);
  v55 = &v47 - v5;
  v6 = sub_225CCD954();
  v57 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v47 - v12;
  v14 = sub_225CCD564();
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v54 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v19 = sub_225CCD6B4();
  v53 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_225CCE444();
  v24 = SecCertificateCopyExtensionValue();

  if (v24)
  {
    v48 = v13;
    v49 = v10;
    v50 = v6;
    v25 = sub_225CCCFA4();
    v27 = v26;

    sub_2259CB710(v25, v27);
    sub_2259F4494(v25, v27);
    sub_225CCD744();
    sub_225CCD764();
    if (v0)
    {

      sub_2259CB710(v25, v27);
      sub_2259F4494(v25, v27);
      v28 = v56;
      sub_225CCD744();
      v29 = v55;
      v30 = v28;
      sub_225CCD764();
      v43 = v51;
      v44 = v52;
      (*(v52 + 16))(v51, v29, v30);
      v45 = MEMORY[0x22AA6CDB0](v43);
      sub_2259BEF00(v25, v27);
      (*(v44 + 8))(v29, v30);
      return v45;
    }

    v31 = v25;
    v32 = v27;
    (*(v53 + 8))(v22, v19);
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v33 = off_28105B918;
    v34 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v35 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v35));
    v36 = v57;
    v37 = &v33[v34];
    v38 = v48;
    v39 = v50;
    (*(v57 + 16))(v48, v37, v50);
    os_unfair_lock_unlock(&v33[v35]);
    v40 = sub_225CCD934();
    v41 = sub_225CCED04();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2259A7000, v40, v41, "Received ASN1Null for brandAssetsIdentifier OID, returning nil", v42, 2u);
      MEMORY[0x22AA6F950](v42, -1, -1);

      sub_2259BEF00(v31, v32);
    }

    else
    {
      sub_2259BEF00(v31, v32);
    }

    (*(v36 + 8))(v38, v39);
  }

  return 0;
}

uint64_t PublicKeyAlgorithm.algorithmIdentifier.getter()
{
  v1 = -7;
  v2 = -35;
  if (*v0 != 1)
  {
    v2 = -36;
  }

  if (*v0)
  {
    v1 = v2;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

id static SecAccessControlRef.fromConstraintsData(_:)()
{
  v124 = *MEMORY[0x277D85DE8];
  v114 = sub_225CCD954();
  v0 = *(v114 - 8);
  v2 = MEMORY[0x28223BE20](v114, v1);
  v4 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v106 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v106 - v14;
  v123 = 0;
  v16 = SecAccessControlCreate();
  v17 = v123;
  v113 = v16;
  if (v16)
  {
    if (!v123)
    {
      v18 = v16;
      v19 = v16;
      v20 = sub_225CCCF74();
      v21 = [objc_opt_self() recordFromData_];

      if (v21)
      {
        v22 = [v21 propertyList];

        if (v22)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

            SecAccessControlSetConstraints();
            swift_unknownObjectRelease();
            return v18;
          }

          swift_unknownObjectRelease();
        }
      }

      v114 = 0x8000000225D16500;
      v112 = 0x8000000225D16920;
      v91 = MEMORY[0x277D84F90];
      v92 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v94 = v93;
      v95 = sub_225CCE954();
      v96 = *(v95 - 8);
      (*(v96 + 56))(v15, 1, 1, v95);
      LODWORD(v95) = (*(v96 + 48))(v15, 1, v95);
      sub_2259CB640(v15, &unk_27D73B050);
      if (v95)
      {
        v97 = 271;
      }

      else
      {
        v97 = 23;
      }

      v98 = sub_225B2C374(v91);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v98;
      sub_225B2C4A0(v92, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v117);

      v100 = v117;
      v101 = sub_225B29AA0(0, 1, 1, v91);
      v103 = *(v101 + 2);
      v102 = *(v101 + 3);
      if (v103 >= v102 >> 1)
      {
        v101 = sub_225B29AA0((v102 > 1), v103 + 1, 1, v101);
      }

      *(v101 + 2) = v103 + 1;
      v104 = &v101[56 * v103];
      *(v104 + 4) = 0xD00000000000002ELL;
      *(v104 + 5) = 0x8000000225D16970;
      *(v104 + 6) = 0xD000000000000021;
      *(v104 + 7) = v114;
      *(v104 + 8) = 0xD000000000000017;
      *(v104 + 9) = v112;
      *(v104 + 10) = 775;
      *v94 = v97;
      *(v94 + 8) = v101;
      *(v94 + 16) = 0xD00000000000002ELL;
      *(v94 + 24) = 0x8000000225D16970;
      *(v94 + 32) = v100;
      *(v94 + 40) = 0;
      swift_willThrow();

      return v113;
    }
  }

  else if (!v123)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v52 = off_28105B918;
    v53 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v54 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v54));
    v55 = v0;
    v56 = *(v0 + 16);
    v57 = v114;
    v56(v4, &v52[v53], v114);
    os_unfair_lock_unlock(&v52[v54]);
    v58 = sub_225CCD934();
    v59 = sub_225CCED04();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2259A7000, v58, v59, "Unable to create empty ACL.", v60, 2u);
      MEMORY[0x22AA6F950](v60, -1, -1);
    }

    (*(v55 + 8))(v4, v57);
    v114 = 0x8000000225D16500;
    v61 = MEMORY[0x277D84F90];
    v62 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v64 = v63;
    v65 = sub_225CCE954();
    v66 = *(v65 - 8);
    (*(v66 + 56))(v15, 1, 1, v65);
    LODWORD(v65) = (*(v66 + 48))(v15, 1, v65);
    sub_2259CB640(v15, &unk_27D73B050);
    if (v65)
    {
      v67 = 272;
    }

    else
    {
      v67 = 23;
    }

    v68 = sub_225B2C374(v61);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v117 = v68;
    sub_225B2C4A0(v62, sub_225B2AC40, 0, v69, &v117);

    v70 = v117;
    v71 = sub_225B29AA0(0, 1, 1, v61);
    v73 = *(v71 + 2);
    v72 = *(v71 + 3);
    if (v73 >= v72 >> 1)
    {
      v71 = sub_225B29AA0((v72 > 1), v73 + 1, 1, v71);
    }

    *(v71 + 2) = v73 + 1;
    v74 = &v71[56 * v73];
    *(v74 + 4) = 0xD00000000000002FLL;
    *(v74 + 5) = 0x8000000225D16940;
    *(v74 + 6) = 0xD000000000000021;
    *(v74 + 7) = v114;
    *(v74 + 8) = 0xD000000000000017;
    *(v74 + 9) = 0x8000000225D16920;
    *(v74 + 10) = 762;
    *v64 = v67;
    *(v64 + 8) = v71;
    *(v64 + 16) = 0xD00000000000002FLL;
    *(v64 + 24) = 0x8000000225D16940;
    *(v64 + 32) = v70;
    *(v64 + 40) = 0;
    swift_willThrow();
    return v113;
  }

  v109 = v12;
  type metadata accessor for CFError(0);
  sub_2259F4764(&qword_281059B10, type metadata accessor for CFError);
  v23 = swift_allocError();
  *v24 = v17;
  v25 = v23;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v26 = off_28105B918;
  v27 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v28 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v28));
  (*(v0 + 16))(v7, &v26[v27], v114);
  os_unfair_lock_unlock(&v26[v28]);
  v29 = v23;
  v30 = sub_225CCD934();
  v31 = sub_225CCED04();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v117 = v33;
    *v32 = 136315138;
    swift_getErrorValue();
    v34 = sub_225CCFB24();
    v36 = sub_2259BE198(v34, v35, &v117);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_2259A7000, v30, v31, "Unable to create empty ACL due to error: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA6F950](v33, -1, -1);
    MEMORY[0x22AA6F950](v32, -1, -1);
  }

  (*(v0 + 8))(v7, v114);
  v111 = " certificate from DER data";
  v110 = "Unable to create empty ACL";
  v37 = v23;
  v38 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v114 = swift_allocError();
  v40 = v39;
  swift_getErrorValue();
  v41 = v116;
  v42 = v23;
  sub_225B21FAC(v41, &v117);

  v43 = v118;
  v112 = 0x8000000225D16900;
  if (v118)
  {
    v109 = v117;
    v108 = v119;
    v107 = v120;
    v44 = v121;
    v45 = v122;
  }

  else
  {
    v117 = v23;
    v46 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v47 = v115;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v49 = [v47 code];
      v50 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v50;
      *(inited + 40) = v49;
      v44 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v51 = v23;
      v108 = 0;
      v107 = 0;
      v43 = MEMORY[0x277D84F90];
      v109 = 272;
    }

    else
    {
      v117 = v23;
      v75 = v23;
      v76 = sub_225CCE954();
      v77 = v109;
      v78 = swift_dynamicCast();
      v79 = *(v76 - 8);
      (*(v79 + 56))(v77, v78 ^ 1u, 1, v76);
      LODWORD(v79) = (*(v79 + 48))(v77, 1, v76);
      sub_2259CB640(v77, &unk_27D73B050);
      if (v79)
      {
        v80 = 272;
      }

      else
      {
        v80 = 23;
      }

      v109 = v80;
      v43 = MEMORY[0x277D84F90];
      v44 = sub_225B2C374(MEMORY[0x277D84F90]);
      v81 = v23;
      v108 = 0xD00000000000001ALL;
      v107 = 0x8000000225D16900;
    }

    v45 = v23;
  }

  v82 = v111 | 0x8000000000000000;
  v83 = v110 | 0x8000000000000000;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v117 = v44;
  sub_225B2C4A0(v38, sub_225B2AC40, 0, v84, &v117);

  v85 = v117;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_225B29AA0(0, *(v43 + 2) + 1, 1, v43);
  }

  v87 = *(v43 + 2);
  v86 = *(v43 + 3);
  if (v87 >= v86 >> 1)
  {
    v43 = sub_225B29AA0((v86 > 1), v87 + 1, 1, v43);
  }

  *(v43 + 2) = v87 + 1;
  v88 = &v43[56 * v87];
  v89 = v112;
  *(v88 + 4) = 0xD00000000000001ALL;
  *(v88 + 5) = v89;
  *(v88 + 6) = 0xD000000000000021;
  *(v88 + 7) = v82;
  *(v88 + 8) = 0xD000000000000017;
  *(v88 + 9) = v83;
  *(v88 + 10) = 768;
  *v40 = v109;
  v90 = v108;
  *(v40 + 8) = v43;
  *(v40 + 16) = v90;
  *(v40 + 24) = v107;
  *(v40 + 32) = v85;
  *(v40 + 40) = v45;
  swift_willThrow();

  v18 = v113;
  return v18;
}

uint64_t SecAccessControlRef.data.getter()
{
  result = SecAccessControlCopyData();
  if (result)
  {
    v1 = result;
    v2 = sub_225CCCFA4();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *SecAccessControlRef.constraintsData.getter()
{
  result = SecAccessControlGetConstraints();
  if (result)
  {
    v1 = result;
    v2 = [objc_allocWithZone(MEMORY[0x277CC55F8]) initWithPropertyList_];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 data];

      v5 = sub_225CCCFA4();
    }

    else
    {

      return 0;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SecAccessControlRef.constraintsDescription.getter()
{
  result = SecAccessControlGetConstraints();
  if (result)
  {
    v1 = result;
    sub_2259D8718(0, &qword_281059A68);
    sub_2259F5C28();
    v2 = v1;
    sub_225CCE2D4();

    v3 = sub_225CCE2E4();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2259F0754()
{
  result = SecAccessControlGetConstraints();
  if (result)
  {
    v1 = result;
    sub_2259D8718(0, &qword_281059A68);
    sub_2259F5C28();
    v2 = v1;
    v3 = sub_225CCE2D4();

    sub_2259D8718(0, &qword_281059A60);
    v4 = sub_225CCEF94();
    v5 = v4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_225CCF4F4();

      if (!v6)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!*(v3 + 16) || (sub_2259F1B5C(v4), (v7 & 1) == 0))
      {

        goto LABEL_15;
      }

      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8 && (v9 = v8, v10 = sub_225CCEF94(), v11 = [v9 objectForKeyedSubscript_], v10, v11))
    {
      sub_225CCF0A4();
      swift_unknownObjectRelease();
      sub_2259B9624(v15, v16);
      sub_2259CB810(v16, v15);
      if (swift_dynamicCast())
      {
        v12 = sub_225CCE444();
        v13 = sub_225CCEF64();

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(v16);
        return v13 & 1;
      }

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_15:
    v13 = 0;
    return v13 & 1;
  }

  __break(1u);
  return result;
}

uint64_t SecAccessControlRef.isBiometricAuth.getter()
{
  Constraints = SecAccessControlGetConstraints();
  if (Constraints)
  {
    v1 = Constraints;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v1 = v1;
      sub_225CCE2C4();
    }
  }

  return 0;
}

uint64_t SecAccessControlRef.hasCBTNConstraint.getter()
{
  result = SecAccessControlGetConstraints();
  if (result)
  {
    v1 = result;
    sub_2259D8718(0, &qword_281059A68);
    sub_2259F5C28();
    v2 = v1;
    v3 = sub_225CCE2D4();

    sub_2259D8718(0, &qword_281059A60);
    v4 = sub_225CCEF94();
    v5 = v4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_225CCF4F4();

      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      if (!*(v3 + 16) || (sub_2259F1B5C(v4), (v7 & 1) == 0))
      {

        return 0;
      }

      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = sub_225CCEF94();
      v11 = [v9 objectForKeyedSubscript_];

      if (v11)
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
        swift_unknownObjectRelease();
        sub_2259CB640(v16, &qword_27D73DD90);
        return 0;
      }

      sub_2259D8718(0, &qword_281059A70);
      if (swift_dynamicCast())
      {
        v12 = [v13 BOOLValue];
        swift_unknownObjectRelease();

        return v12;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t SecAccessControlRef.osgnParentKey.getter()
{
  result = SecAccessControlGetConstraints();
  if (result)
  {
    v1 = result;
    sub_2259D8718(0, &qword_281059A68);
    sub_2259F5C28();
    v2 = v1;
    v3 = sub_225CCE2D4();

    sub_2259D8718(0, &qword_281059A60);
    v4 = sub_225CCEF94();
    v5 = v4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_225CCF4F4();

      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      if (!*(v3 + 16) || (sub_2259F1B5C(v4), (v7 & 1) == 0))
      {

        return 0;
      }

      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = sub_225CCEF94();
      v11 = [v9 objectForKeyedSubscript_];

      if (v11)
      {
        sub_225CCF0A4();
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0u;
        v16 = 0u;
      }

      v17[0] = v15;
      v17[1] = v16;
      if (!*(&v16 + 1))
      {
        swift_unknownObjectRelease();
        sub_2259CB640(v17, &qword_27D73DD90);
        return 0;
      }

      sub_2259D8718(0, &qword_27D73DD80);
      if (swift_dynamicCast())
      {
        v12 = v14;
        v13 = sub_225CCCFA4();
        swift_unknownObjectRelease();

        return v13;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  __break(1u);
  return result;
}

BOOL SecAccessControlRef.isOSGNChild.getter()
{
  v0 = SecAccessControlRef.osgnParentKey.getter();
  v2 = v1 >> 60;
  if (v1 >> 60 != 15)
  {
    sub_2259B97A8(v0, v1);
  }

  return v2 < 0xF;
}

uint64_t SecTrustRef.certificateChain.getter()
{
  v1 = SecTrustCopyCertificateChain(v0);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SecCertificate(0);
      sub_225CCE804();
    }
  }

  return v2;
}

SecCertificateRef_optional __swiftcall SecTrustRef.getLeafCertificate()()
{
  result.value = SecTrustCopyCertificateChain(v0);
  if (result.value)
  {
    value = result.value;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SecCertificate(0);
      sub_225CCE804();
    }

    return 0;
  }

  return result;
}

SecTrustRef static SecTrustRef.newFromUnverifiedCertificate(_:)(const void *a1)
{
  trust[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v34 - v4;
  trust[0] = 0;
  v6 = SecTrustCreateWithCertificates(a1, 0, trust);
  v7 = trust[0];
  if (v6 || !trust[0])
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000034, 0x8000000225D169B0);
    v8 = SecCopyErrorMessageString(v6, 0);
    if (v8)
    {
      v9 = v8;
      v10 = sub_225CCE474();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v40 = v10;
    v41 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E130);
    sub_225CCF434();

    v13 = v39;
    v37 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v15 = inited + 32;
    v16 = MEMORY[0x277D849A8];
    *(inited + 16) = xmmword_225CD30F0;
    v17 = MEMORY[0x277D84A08];
    *(inited + 64) = v16;
    *(inited + 72) = v17;
    *(inited + 40) = v6;
    v18 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v15, &qword_27D73B060);
    v35 = 0x8000000225D169F0;
    v36 = 0x8000000225D16500;
    sub_2259CB5EC();
    swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v5, 1, 1, v21);
    LODWORD(v21) = (*(v22 + 48))(v5, 1, v21);
    sub_2259CB640(v5, &unk_27D73B050);
    if (v21)
    {
      v23 = 155;
    }

    else
    {
      v23 = 23;
    }

    v24 = MEMORY[0x277D84F90];
    v25 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v25;
    sub_225B2C4A0(v18, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v38);

    v27 = v38;
    v28 = sub_225B29AA0(0, 1, 1, v24);
    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_225B29AA0((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v31 = &v28[56 * v30];
    v32 = v37;
    *(v31 + 4) = v37;
    *(v31 + 5) = v13;
    *(v31 + 6) = 0xD000000000000021;
    *(v31 + 7) = v36;
    *(v31 + 8) = 0xD000000000000020;
    *(v31 + 9) = v35;
    *(v31 + 10) = 929;
    *v20 = v23;
    *(v20 + 8) = v28;
    *(v20 + 16) = v32;
    *(v20 + 24) = v13;
    *(v20 + 32) = v27;
    *(v20 + 40) = 0;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_2259F17E8()
{
  v1 = *v0;
  v6 = sub_2259D8490(&unk_2838FBDE8);
  v7 = v2;
  v3 = v1;
  v4 = sub_2259F4908(&v6, v3);

  sub_2259BEF00(v6, v7);
  return v4;
}

unint64_t sub_2259F193C(uint64_t a1)
{
  sub_225CCFBD4();
  DIPError.PropertyKey.rawValue.getter();
  sub_225CCE5B4();

  v2 = sub_225CCFC24();

  return sub_2259F2234(a1, v2);
}

unint64_t sub_2259F19CC(char a1)
{
  sub_225CCFBD4();
  DIPError.PropertyKey.rawValue.getter();
  sub_225CCE5B4();

  v2 = sub_225CCFC24();

  return sub_2259F2354(a1, v2);
}

unint64_t sub_2259F1AA8(uint64_t a1)
{
  sub_225CCFBD4();
  type metadata accessor for CFString(0);
  sub_2259F4764(&qword_27D73AEA0, type metadata accessor for CFString);
  sub_225CCD504();
  v2 = sub_225CCFC24();

  return sub_2259F2B8C(a1, v2);
}

unint64_t sub_2259F1BAC(unsigned __int8 a1)
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](a1);
  v2 = sub_225CCFC24();

  return sub_2259F2D64(a1, v2);
}

unint64_t sub_2259F1C18(uint64_t a1)
{
  v2 = sub_225CCF174();

  return sub_2259F2DD4(a1, v2);
}

unint64_t sub_2259F1C5C(uint64_t a1)
{
  sub_225CCF454();
  v2 = sub_225CCE344();

  return sub_2259F2E9C(a1, v2);
}

unint64_t sub_2259F1D10(char a1)
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](a1 & 1);
  v2 = sub_225CCFC24();

  return sub_2259F3034(a1 & 1, v2);
}

uint64_t sub_2259F1DA8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_225CCFBD4();
  a3(v10, a1, a2);
  v7 = sub_225CCFC24();

  return a4(a1, a2, v7);
}

unint64_t sub_2259F1E8C(char a1)
{
  sub_225CCFBD4();
  sub_225B7B604(a1);
  sub_225CCE5B4();

  v2 = sub_225CCFC24();

  return sub_2259F3510(a1, v2);
}

unint64_t sub_2259F1F14(uint64_t a1, uint64_t a2)
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](a1);
  MEMORY[0x22AA6E420](a2);
  v4 = sub_225CCFC24();

  return sub_2259F3B38(a1, a2, v4);
}

unint64_t sub_2259F1F94(uint64_t a1)
{
  sub_225CCE474();
  sub_225CCFBD4();
  sub_225CCE5B4();
  v2 = sub_225CCFC24();

  return sub_2259F3BB0(a1, v2);
}

unint64_t sub_2259F2024(uint64_t *a1)
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  sub_225CCD124();
  sub_2259F4764(&qword_27D73FDF0, MEMORY[0x277CC95F0]);
  sub_225CCE354();
  v2 = sub_225CCFC24();

  return sub_2259F3CB4(a1, v2);
}

unint64_t sub_2259F20F0(uint64_t a1, uint64_t a2, char a3)
{
  sub_225CCFBD4();
  IQACode.hash(into:)();
  v6 = sub_225CCFC24();

  return sub_2259F3E34(a1, a2, a3, v6);
}

unint64_t sub_2259F217C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_225CCF934())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2259F2234(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = DIPError.PropertyKey.rawValue.getter();
      v9 = v8;
      if (v7 == DIPError.PropertyKey.rawValue.getter() && v9 == v10)
      {
        break;
      }

      v12 = sub_225CCF934();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_2259F2354(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00004449776F6CLL;
      v8 = 0x666B726F576F6E69;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x69766F72506F6E69;
          v7 = 0xED00004449726564;
          break;
        case 2:
          v8 = 0x6C666B726F577073;
          v7 = 0xEC0000004449776FLL;
          break;
        case 3:
          v8 = 0x6469766F72507073;
          v7 = 0xEC00000044497265;
          break;
        case 4:
          v8 = 0x7475626972747461;
          v7 = 0xEB00000000444965;
          break;
        case 5:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C380;
          break;
        case 6:
          v8 = 0x5255726576726573;
          v7 = 0xE90000000000004CLL;
          break;
        case 7:
          v8 = 0xD000000000000010;
          v7 = 0x8000000225D0C3A0;
          break;
        case 8:
          v8 = 0xD000000000000013;
          v7 = 0x8000000225D0C3C0;
          break;
        case 9:
          v8 = 0x4974736575716572;
          v7 = 0xE900000000000044;
          break;
        case 0xA:
          v8 = 0x61737265766E6F63;
          v7 = 0xEE0044496E6F6974;
          break;
        case 0xB:
          v8 = 0xD000000000000010;
          v7 = 0x8000000225D0C3F0;
          break;
        case 0xC:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C410;
          break;
        case 0xD:
          v8 = 0xD000000000000013;
          v7 = 0x8000000225D0C430;
          break;
        case 0xE:
          v8 = 0x63655264756F6C63;
          v7 = 0xEF656E6F5A64726FLL;
          break;
        case 0xF:
          v8 = 0x6552656369766564;
          v7 = 0xEC0000006E6F6967;
          break;
        case 0x10:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C470;
          break;
        case 0x11:
          v8 = 0x6761735574726563;
          v7 = 0xE900000000000065;
          break;
        case 0x12:
          v8 = 0x6573616261746164;
          v7 = 0xEE006E6D756C6F43;
          break;
        case 0x13:
          v8 = 0x74737973656C6966;
          v7 = 0xEE00687461506D65;
          break;
        case 0x14:
          v8 = 0x69796C7265646E75;
          v7 = 0xEF6F6E727245676ELL;
          break;
        case 0x15:
          v8 = 0x636E456567616D69;
          v7 = 0xED0000676E69646FLL;
          break;
        case 0x16:
          v7 = 0xE400000000000000;
          v8 = 1701273968;
          break;
        case 0x17:
          v8 = 0x636E75614C6F6E69;
          v7 = 0xED00007265695468;
          break;
        case 0x18:
          v7 = 0xE800000000000000;
          v8 = 0x746E756F43797274;
          break;
        case 0x19:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C4F0;
          break;
        case 0x1A:
          v8 = 0xD000000000000016;
          v7 = 0x8000000225D0C510;
          break;
        default:
          break;
      }

      v9 = 0x666B726F576F6E69;
      v10 = 0xED00004449776F6CLL;
      switch(a1)
      {
        case 1:
          v11 = 0x69766F72506F6E69;
          v12 = 0x4449726564;
          goto LABEL_63;
        case 2:
          v10 = 0xEC0000004449776FLL;
          if (v8 != 0x6C666B726F577073)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 3:
          v13 = 0x6469766F72507073;
          v14 = 1145664101;
          goto LABEL_52;
        case 4:
          v10 = 0xEB00000000444965;
          if (v8 != 0x7475626972747461)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 5:
          v10 = 0x8000000225D0C380;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 6:
          v10 = 0xE90000000000004CLL;
          if (v8 != 0x5255726576726573)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 7:
          v10 = 0x8000000225D0C3A0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 8:
          v10 = 0x8000000225D0C3C0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 9:
          v10 = 0xE900000000000044;
          if (v8 != 0x4974736575716572)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 10:
          v15 = 0x61737265766E6F63;
          v16 = 0x44496E6F6974;
          goto LABEL_76;
        case 11:
          v10 = 0x8000000225D0C3F0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 12:
          v10 = 0x8000000225D0C410;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 13:
          v10 = 0x8000000225D0C430;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 14:
          v10 = 0xEF656E6F5A64726FLL;
          if (v8 != 0x63655264756F6C63)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 15:
          v13 = 0x6552656369766564;
          v14 = 1852795239;
LABEL_52:
          v10 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v13)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 16:
          v10 = 0x8000000225D0C470;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 17:
          v10 = 0xE900000000000065;
          if (v8 != 0x6761735574726563)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 18:
          v15 = 0x6573616261746164;
          v16 = 0x6E6D756C6F43;
          goto LABEL_76;
        case 19:
          v15 = 0x74737973656C6966;
          v16 = 0x687461506D65;
LABEL_76:
          v10 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v15)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 20:
          v10 = 0xEF6F6E727245676ELL;
          if (v8 != 0x69796C7265646E75)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 21:
          v11 = 0x636E456567616D69;
          v12 = 0x676E69646FLL;
LABEL_63:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v8 != v11)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 22:
          v10 = 0xE400000000000000;
          if (v8 != 1701273968)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 23:
          v9 = 0x636E75614C6F6E69;
          v10 = 0xED00007265695468;
          goto LABEL_79;
        case 24:
          v10 = 0xE800000000000000;
          if (v8 != 0x746E756F43797274)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 25:
          v10 = 0x8000000225D0C4F0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 26:
          v10 = 0x8000000225D0C510;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        default:
LABEL_79:
          if (v8 != v9)
          {
            goto LABEL_81;
          }

LABEL_80:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_81:
          v17 = sub_225CCF934();

          if (v17)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2259F2B8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_2259F4764(&qword_27D73AEA0, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_225CCD4F4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2259F2C98(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_2259D8718(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_225CCEF64();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2259F2D64(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2259F2DD4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2259F6078(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AA6D9C0](v9, a1);
      sub_2259F60D4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2259F2E9C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_225CCF454();
  MEMORY[0x28223BE20]();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_225CCE3C4();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2259F3034(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2259F30A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45[3] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
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
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_2259CB710(v17, v16);
          sub_225ABC240(v45, v9, v8, &v44);
          sub_2259BEF00(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_2259CB710(v17, v16);
        v31 = sub_225CCCA44();
        if (v31)
        {
          v33 = sub_225CCCA74();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_2259CB710(v17, v16);
        v31 = sub_225CCCA44();
        if (v31)
        {
          v32 = sub_225CCCA74();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        sub_225CCCA64();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_225ABC240(v34, a1, a2, v45);
        sub_2259BEF00(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_2259CB710(v17, v16);
      sub_225ABC240(v45, v9, v8, &v44);
      sub_2259BEF00(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_2259F34A4(uint64_t a1, uint64_t a2)
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

unint64_t sub_2259F3510(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA00000000007373;
      v8 = 0x656E697272756C62;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x426563616C70616CLL;
          v7 = 0xEB0000000072756CLL;
          break;
        case 2:
          v7 = 0xE800000000000000;
          v8 = 0x657275736F707865;
          break;
        case 3:
          v8 = 0x7473694464726163;
          v9 = 0x6E6F6974726FLL;
          goto LABEL_25;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x8000000225D0C6A0;
          break;
        case 5:
          v8 = 0xD000000000000011;
          v7 = 0x8000000225D0C6C0;
          break;
        case 6:
          v8 = 0x6374695064616568;
          v7 = 0xE900000000000068;
          break;
        case 7:
          v7 = 0xE800000000000000;
          v8 = 0x6C6C6F5264616568;
          break;
        case 8:
          v7 = 0xE700000000000000;
          v8 = 0x77615964616568;
          break;
        case 9:
          v8 = 0x666E6F4365636166;
          v9 = 0x65636E656469;
          goto LABEL_25;
        case 0xA:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C700;
          break;
        case 0xB:
          v8 = 0xD000000000000011;
          v7 = 0x8000000225D0C720;
          break;
        case 0xC:
          v8 = 0xD000000000000014;
          v7 = 0x8000000225D0C740;
          break;
        case 0xD:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C760;
          break;
        case 0xE:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C780;
          break;
        case 0xF:
          v8 = 0xD000000000000014;
          v7 = 0x8000000225D0C7A0;
          break;
        case 0x10:
          v8 = 0x5465727574706163;
          v7 = 0xEB00000000656D69;
          break;
        case 0x11:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C7D0;
          break;
        case 0x12:
          v8 = 0xD000000000000010;
          v7 = 0x8000000225D0C7F0;
          break;
        case 0x13:
          v8 = 0x6556746567726174;
          v9 = 0x736563697472;
LABEL_25:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 0x14:
          v8 = 0xD000000000000010;
          v7 = 0x8000000225D0C810;
          break;
        case 0x15:
          v8 = 0x746E656D75636F64;
          v7 = 0xEC00000077656B53;
          break;
        default:
          break;
      }

      v10 = 0x656E697272756C62;
      v11 = 0xEA00000000007373;
      switch(a1)
      {
        case 1:
          v12 = 0x426563616C70616CLL;
          v13 = 7501164;
          goto LABEL_29;
        case 2:
          v11 = 0xE800000000000000;
          if (v8 != 0x657275736F707865)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 3:
          v14 = 0x7473694464726163;
          v15 = 0x6E6F6974726FLL;
          goto LABEL_70;
        case 4:
          v11 = 0x8000000225D0C6A0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 5:
          v11 = 0x8000000225D0C6C0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 6:
          v11 = 0xE900000000000068;
          if (v8 != 0x6374695064616568)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 7:
          v11 = 0xE800000000000000;
          if (v8 != 0x6C6C6F5264616568)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 8:
          v11 = 0xE700000000000000;
          v10 = 0x77615964616568;
          goto LABEL_64;
        case 9:
          v14 = 0x666E6F4365636166;
          v15 = 0x65636E656469;
          goto LABEL_70;
        case 10:
          v11 = 0x8000000225D0C700;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 11:
          v11 = 0x8000000225D0C720;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 12:
          v11 = 0x8000000225D0C740;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 13:
          v11 = 0x8000000225D0C760;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 14:
          v11 = 0x8000000225D0C780;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 15:
          v11 = 0x8000000225D0C7A0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 16:
          v12 = 0x5465727574706163;
          v13 = 6647145;
LABEL_29:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v12)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 17:
          v11 = 0x8000000225D0C7D0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 18:
          v11 = 0x8000000225D0C7F0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 19:
          v14 = 0x6556746567726174;
          v15 = 0x736563697472;
LABEL_70:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v14)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 20:
          v11 = 0x8000000225D0C810;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 21:
          v11 = 0xEC00000077656B53;
          if (v8 != 0x746E656D75636F64)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        default:
LABEL_64:
          if (v8 != v10)
          {
            goto LABEL_66;
          }

LABEL_65:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_66:
          v16 = sub_225CCF934();

          if (v16)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2259F3B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2259F3BB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_225CCE474();
      v8 = v7;
      if (v6 == sub_225CCE474() && v8 == v9)
      {
        break;
      }

      v11 = sub_225CCF934();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2259F3CB4(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  MEMORY[0x28223BE20](v5, v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a1;
    v14 = a1[1];
    v15 = *(v7 + 72);
    while (1)
    {
      sub_2259F6158(*(v2 + 48) + v15 * v11, v9);
      v16 = *v9 == v13 && v9[1] == v14;
      if (v16 || (sub_225CCF934()) && (sub_225CCD0E4())
      {
        break;
      }

      sub_2259F61BC(v9);
      v11 = (v11 + 1) & v12;
      if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return v11;
      }
    }

    sub_2259F61BC(v9);
  }

  return v11;
}

unint64_t sub_2259F3E34(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v15[0] = a1;
  v15[1] = a2;
  v16 = a3;
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *(v8 + 8);
      v12 = *v8;
      v13 = v9;
      v14 = *(v8 + 16);
      sub_2259F6128(v12, v9, v14);
      v10 = _s13CoreIDVShared7IQACodeO2eeoiySbAC_ACtFZ_0(&v12, v15);
      sub_2259F6140(v12, v13, v14);
      if (v10)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unsigned __int8 *sub_2259F3F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_225CCE6F4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_225C158C0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_225CCF354();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2259F4494(uint64_t a1, unint64_t a2)
{
  v4 = sub_225CCCFE4();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_2259BEF00(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_225C0060C(v11, 0);
      v15 = sub_225CCCEF4();
      sub_2259BEF00(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_2259F4610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF28);
    v3 = sub_225CCF1D4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 2 * v4);
      sub_225CCFBD4();
      v11 = qword_225CD4B98[v10];
      MEMORY[0x22AA6E420](v11);
      result = sub_225CCFC24();
      v13 = -1 << *(v3 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      v16 = *(v5 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        while (qword_225CD4B98[*(*(v3 + 48) + 2 * v14)] != v11)
        {
          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 2 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2259F4764(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2259F47AC(id *a1)
{
  v1 = *a1;
  swift_getAtKeyPath();
}

unint64_t sub_2259F4808()
{
  result = qword_27D73AEA8;
  if (!qword_27D73AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AEA8);
  }

  return result;
}

void sub_2259F485C(uint64_t a1, uint64_t a2)
{
  if (sub_225CCCA44())
  {
    if (__OFSUB__(a1, sub_225CCCA74()))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      sub_225CCCA64();
      sub_2259EDE40(&v4);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2259F4908(uint64_t *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = a2;
      sub_2259BEF00(v5, v4);
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      HIBYTE(v21) = BYTE3(v4);
      LOBYTE(v22) = BYTE4(v4);
      HIBYTE(v22) = BYTE5(v4);
      v23 = BYTE6(v4);
      sub_2259EDE40(&v24);
      if (v2)
      {
        v4 = v5;
      }

      else
      {
        v4 = v24;
      }

      *a1 = v5;
      a1[1] = v21 | ((v22 | (v23 << 16)) << 32);
      return v4;
    }

    v13 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v14 = a2;
    sub_2259CB710(v5, v4);
    sub_2259BEF00(v5, v4);
    *a1 = xmmword_225CD4150;
    sub_2259BEF00(0, 0xC000000000000000);
    v15 = v5 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v15 < v5)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (sub_225CCCA44() && __OFSUB__(v5, sub_225CCCA74()))
      {
LABEL_27:
        __break(1u);
      }

      sub_225CCCA94();
      swift_allocObject();
      v16 = sub_225CCCA24();

      v13 = v16;
    }

    if (v15 >= v5)
    {
      v17 = v14;

      sub_2259F485C(v5, v5 >> 32);
      v4 = v18;

      v19 = v13 | 0x4000000000000000;
      if (v2)
      {
        *a1 = v5;
        a1[1] = v19;
      }

      else
      {
        *a1 = v5;
        a1[1] = v19;
      }

      return v4;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v6 == 2)
  {
    v8 = a2;
    sub_2259CB710(v5, v4);
    sub_2259BEF00(v5, v4);
    v24 = v5;
    v25 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_225CD4150;
    sub_2259BEF00(0, 0xC000000000000000);
    sub_225CCCEB4();
    v9 = v25;
    v4 = *(v24 + 16);
    v10 = *(v24 + 24);
    v11 = v8;
    sub_2259F485C(v4, v10);
    if (!v2)
    {
      v4 = v12;
    }

    *a1 = v24;
    a1[1] = v9 | 0x8000000000000000;
  }

  else
  {
    sub_2259EDE40(&v24);
    if (!v2)
    {
      return v24;
    }
  }

  return v4;
}

unint64_t sub_2259F4D04()
{
  result = qword_27D73AEB0;
  if (!qword_27D73AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AEB0);
  }

  return result;
}

uint64_t sub_2259F4D58(uint64_t a1)
{
  v2 = sub_225CCD264();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEE8);
    v11 = sub_225CCF1D4();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_2259F4764(&qword_27D73AEF0, MEMORY[0x277CC99D0]);
      v18 = sub_225CCE344();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_2259F4764(&qword_27D73AEF8, MEMORY[0x277CC99D0]);
          v25 = sub_225CCE3C4();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

id sub_2259F5078()
{
  v106 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v2 = MEMORY[0x28223BE20](v0 - 8, v1);
  v4 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2, v5);
  v92 = &v90 - v6;
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v90 - v14;
  v105 = 0;
  v16 = sub_225CCCF74();
  v17 = SecAccessControlCreateFromData();

  v18 = v105;
  if (v17)
  {
    if (!v105)
    {
      return v17;
    }

    goto LABEL_5;
  }

  if (v105)
  {
LABEL_5:
    type metadata accessor for CFError(0);
    sub_2259F4764(&qword_281059B10, type metadata accessor for CFError);
    v19 = swift_allocError();
    *v20 = v18;
    v21 = v19;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v22 = off_28105B918;
    v23 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v24 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v24));
    (*(v8 + 16))(v15, &v22[v23], v7);
    os_unfair_lock_unlock(&v22[v24]);
    v25 = v19;
    v26 = sub_225CCD934();
    v27 = v7;
    v28 = sub_225CCED04();

    v29 = os_log_type_enabled(v26, v28);
    v96 = v17;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v95 = v27;
      v32 = v31;
      v99 = v31;
      *v30 = 136315138;
      swift_getErrorValue();
      v33 = sub_225CCFB24();
      v35 = sub_2259BE198(v33, v34, &v99);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_2259A7000, v26, v28, "Unable to deserialize ACL due to error: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AA6F950](v32, -1, -1);
      MEMORY[0x22AA6F950](v30, -1, -1);

      (*(v8 + 8))(v15, v95);
    }

    else
    {

      (*(v8 + 8))(v15, v27);
    }

    v36 = 0x8000000225D16A50;
    v93 = " certificate from DER data";
    v37 = v19;
    v38 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v95 = swift_allocError();
    v40 = v39;
    swift_getErrorValue();
    v41 = v98;
    v42 = v19;
    sub_225B21FAC(v41, &v99);

    v43 = v100;
    v94 = 0x8000000225D16A50;
    if (v100)
    {
      v92 = v99;
      v36 = v102;
      v91 = v101;
      v44 = v103;
      v45 = v104;
    }

    else
    {
      v99 = v19;
      v46 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259D8718(0, &qword_281059A90);
      if (swift_dynamicCast())
      {
        v47 = v97;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v49 = [v47 code];
        v50 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v50;
        *(inited + 40) = v49;
        v44 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v51 = v19;
        v91 = 0;
        v36 = 0;
        v43 = MEMORY[0x277D84F90];
        v52 = 270;
        v53 = &v106;
      }

      else
      {
        v99 = v19;
        v74 = v19;
        v75 = sub_225CCE954();
        v76 = v92;
        v77 = swift_dynamicCast();
        v78 = *(v75 - 8);
        (*(v78 + 56))(v76, v77 ^ 1u, 1, v75);
        LODWORD(v78) = (*(v78 + 48))(v76, 1, v75);
        sub_2259CB640(v76, &unk_27D73B050);
        if (v78)
        {
          v79 = 270;
        }

        else
        {
          v79 = 23;
        }

        v92 = v79;
        v43 = MEMORY[0x277D84F90];
        v44 = sub_225B2C374(MEMORY[0x277D84F90]);
        v80 = v19;
        v52 = 0xD000000000000019;
        v53 = &v105;
      }

      *(v53 - 32) = v52;
      v45 = v19;
    }

    v81 = v93 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = v44;
    sub_225B2C4A0(v38, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v99);

    v83 = v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_225B29AA0(0, *(v43 + 2) + 1, 1, v43);
    }

    v85 = *(v43 + 2);
    v84 = *(v43 + 3);
    if (v85 >= v84 >> 1)
    {
      v43 = sub_225B29AA0((v84 > 1), v85 + 1, 1, v43);
    }

    *(v43 + 2) = v85 + 1;
    v86 = &v43[56 * v85];
    v87 = v94;
    *(v86 + 4) = 0xD000000000000019;
    *(v86 + 5) = v87;
    *(v86 + 6) = 0xD000000000000021;
    *(v86 + 7) = v81;
    strcpy(v86 + 64, "fromData(_:)");
    v86[77] = 0;
    *(v86 + 39) = -5120;
    *(v86 + 10) = 747;
    *v40 = v92;
    v88 = v91;
    *(v40 + 8) = v43;
    *(v40 + 16) = v88;
    *(v40 + 24) = v36;
    *(v40 + 32) = v83;
    *(v40 + 40) = v45;
    swift_willThrow();

    v17 = v96;
    return v17;
  }

  v96 = 0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v54 = off_28105B918;
  v55 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v56 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v56));
  (*(v8 + 16))(v12, &v54[v55], v7);
  os_unfair_lock_unlock(&v54[v56]);
  v57 = sub_225CCD934();
  v58 = sub_225CCED04();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_2259A7000, v57, v58, "Unable to deserialize ACL.", v59, 2u);
    MEMORY[0x22AA6F950](v59, -1, -1);
  }

  (*(v8 + 8))(v12, v7);
  v60 = MEMORY[0x277D84F90];
  v61 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v63 = v62;
  v64 = sub_225CCE954();
  v65 = *(v64 - 8);
  (*(v65 + 56))(v4, 1, 1, v64);
  LODWORD(v64) = (*(v65 + 48))(v4, 1, v64);
  sub_2259CB640(v4, &unk_27D73B050);
  if (v64)
  {
    v66 = 270;
  }

  else
  {
    v66 = 23;
  }

  v67 = sub_225B2C374(v60);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v99 = v67;
  sub_225B2C4A0(v61, sub_225B2AC40, 0, v68, &v99);

  v69 = v99;
  v70 = sub_225B29AA0(0, 1, 1, v60);
  v72 = *(v70 + 2);
  v71 = *(v70 + 3);
  if (v72 >= v71 >> 1)
  {
    v70 = sub_225B29AA0((v71 > 1), v72 + 1, 1, v70);
  }

  *(v70 + 2) = v72 + 1;
  v73 = &v70[56 * v72];
  *(v73 + 4) = 0xD00000000000002FLL;
  *(v73 + 5) = 0x8000000225D16940;
  *(v73 + 6) = 0xD000000000000021;
  *(v73 + 7) = 0x8000000225D16500;
  strcpy(v73 + 64, "fromData(_:)");
  v73[77] = 0;
  *(v73 + 39) = -5120;
  *(v73 + 10) = 741;
  *v63 = v66;
  *(v63 + 8) = v70;
  *(v63 + 16) = 0xD00000000000002FLL;
  *(v63 + 24) = 0x8000000225D16940;
  *(v63 + 32) = v69;
  *(v63 + 40) = 0;
  swift_willThrow();
  return v96;
}

unint64_t sub_2259F5C28()
{
  result = qword_27D73AEC0;
  if (!qword_27D73AEC0)
  {
    sub_2259D8718(255, &qword_281059A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AEC0);
  }

  return result;
}

unint64_t sub_2259F5C94()
{
  result = qword_27D73AEC8;
  if (!qword_27D73AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AEC8);
  }

  return result;
}

unint64_t sub_2259F5CEC()
{
  result = qword_27D73AED0;
  if (!qword_27D73AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AED0);
  }

  return result;
}

uint64_t _s8KeyClassOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8KeyClassOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PublicKeyAlgorithm(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PublicKeyAlgorithm(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2259F6128(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2259F6140(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2259F6158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2259F61BC(uint64_t a1)
{
  v2 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2259F6218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF20);
    v3 = sub_225CCF1D4();
    v4 = 0;
    v5 = v3 + 56;
    v28 = a1 + 32;
    v27 = v1;
    while (1)
    {
      v6 = *(v28 + v4);
      sub_225CCFBD4();
      DIPError.PropertyKey.rawValue.getter();
      sub_225CCE5B4();

      result = sub_225CCFC24();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xED00004449776F6CLL;
          v14 = 0x666B726F576F6E69;
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v14 = 0x69766F72506F6E69;
              v13 = 0xED00004449726564;
              break;
            case 2:
              v13 = 0xEC0000004449776FLL;
              v14 = 0x6C666B726F577073;
              break;
            case 3:
              v14 = 0x6469766F72507073;
              v13 = 0xEC00000044497265;
              break;
            case 4:
              v14 = 0x7475626972747461;
              v13 = 0xEB00000000444965;
              break;
            case 5:
              v14 = 0xD000000000000012;
              v13 = 0x8000000225D0C380;
              break;
            case 6:
              v13 = 0xE90000000000004CLL;
              v14 = 0x5255726576726573;
              break;
            case 7:
              v14 = 0xD000000000000010;
              v13 = 0x8000000225D0C3A0;
              break;
            case 8:
              v14 = 0xD000000000000013;
              v13 = 0x8000000225D0C3C0;
              break;
            case 9:
              v14 = 0x4974736575716572;
              v13 = 0xE900000000000044;
              break;
            case 0xA:
              v14 = 0x61737265766E6F63;
              v13 = 0xEE0044496E6F6974;
              break;
            case 0xB:
              v14 = 0xD000000000000010;
              v13 = 0x8000000225D0C3F0;
              break;
            case 0xC:
              v14 = 0xD000000000000012;
              v13 = 0x8000000225D0C410;
              break;
            case 0xD:
              v14 = 0xD000000000000013;
              v13 = 0x8000000225D0C430;
              break;
            case 0xE:
              v14 = 0x63655264756F6C63;
              v13 = 0xEF656E6F5A64726FLL;
              break;
            case 0xF:
              v14 = 0x6552656369766564;
              v13 = 0xEC0000006E6F6967;
              break;
            case 0x10:
              v14 = 0xD000000000000012;
              v13 = 0x8000000225D0C470;
              break;
            case 0x11:
              v13 = 0xE900000000000065;
              v14 = 0x6761735574726563;
              break;
            case 0x12:
              v14 = 0x6573616261746164;
              v13 = 0xEE006E6D756C6F43;
              break;
            case 0x13:
              v14 = 0x74737973656C6966;
              v13 = 0xEE00687461506D65;
              break;
            case 0x14:
              v14 = 0x69796C7265646E75;
              v13 = 0xEF6F6E727245676ELL;
              break;
            case 0x15:
              v14 = 0x636E456567616D69;
              v13 = 0xED0000676E69646FLL;
              break;
            case 0x16:
              v13 = 0xE400000000000000;
              v14 = 1701273968;
              break;
            case 0x17:
              v14 = 0x636E75614C6F6E69;
              v13 = 0xED00007265695468;
              break;
            case 0x18:
              v13 = 0xE800000000000000;
              v14 = 0x746E756F43797274;
              break;
            case 0x19:
              v14 = 0xD000000000000012;
              v13 = 0x8000000225D0C4F0;
              break;
            case 0x1A:
              v14 = 0xD000000000000016;
              v13 = 0x8000000225D0C510;
              break;
            default:
              break;
          }

          v15 = 0x666B726F576F6E69;
          v16 = 0xED00004449776F6CLL;
          switch(v6)
          {
            case 1:
              v17 = 0x69766F72506F6E69;
              v18 = 0x4449726564;
              goto LABEL_66;
            case 2:
              v16 = 0xEC0000004449776FLL;
              if (v14 != 0x6C666B726F577073)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 3:
              v19 = 0x6469766F72507073;
              v20 = 1145664101;
              goto LABEL_55;
            case 4:
              v16 = 0xEB00000000444965;
              if (v14 != 0x7475626972747461)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 5:
              v16 = 0x8000000225D0C380;
              if (v14 != 0xD000000000000012)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 6:
              v16 = 0xE90000000000004CLL;
              if (v14 != 0x5255726576726573)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 7:
              v16 = 0x8000000225D0C3A0;
              if (v14 != 0xD000000000000010)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 8:
              v16 = 0x8000000225D0C3C0;
              if (v14 != 0xD000000000000013)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 9:
              v16 = 0xE900000000000044;
              if (v14 != 0x4974736575716572)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 10:
              v21 = 0x61737265766E6F63;
              v22 = 0x44496E6F6974;
              goto LABEL_79;
            case 11:
              v16 = 0x8000000225D0C3F0;
              if (v14 != 0xD000000000000010)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 12:
              v16 = 0x8000000225D0C410;
              if (v14 != 0xD000000000000012)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 13:
              v16 = 0x8000000225D0C430;
              if (v14 != 0xD000000000000013)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 14:
              v16 = 0xEF656E6F5A64726FLL;
              if (v14 != 0x63655264756F6C63)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 15:
              v19 = 0x6552656369766564;
              v20 = 1852795239;
LABEL_55:
              v16 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v14 != v19)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 16:
              v16 = 0x8000000225D0C470;
              if (v14 != 0xD000000000000012)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 17:
              v16 = 0xE900000000000065;
              if (v14 != 0x6761735574726563)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 18:
              v21 = 0x6573616261746164;
              v22 = 0x6E6D756C6F43;
              goto LABEL_79;
            case 19:
              v21 = 0x74737973656C6966;
              v22 = 0x687461506D65;
LABEL_79:
              v16 = v22 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v14 != v21)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 20:
              v16 = 0xEF6F6E727245676ELL;
              if (v14 != 0x69796C7265646E75)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 21:
              v17 = 0x636E456567616D69;
              v18 = 0x676E69646FLL;
LABEL_66:
              v16 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              if (v14 != v17)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 22:
              v16 = 0xE400000000000000;
              if (v14 != 1701273968)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 23:
              v15 = 0x636E75614C6F6E69;
              v16 = 0xED00007265695468;
              goto LABEL_82;
            case 24:
              v16 = 0xE800000000000000;
              if (v14 != 0x746E756F43797274)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 25:
              v16 = 0x8000000225D0C4F0;
              if (v14 != 0xD000000000000012)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 26:
              v16 = 0x8000000225D0C510;
              if (v14 != 0xD000000000000016)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            default:
LABEL_82:
              if (v14 != v15)
              {
                goto LABEL_84;
              }

LABEL_83:
              if (v13 == v16)
              {

                goto LABEL_4;
              }

LABEL_84:
              v23 = sub_225CCF934();

              if (v23)
              {
                goto LABEL_4;
              }

              v9 = (v9 + 1) & v8;
              v10 = v9 >> 6;
              v11 = *(v5 + 8 * (v9 >> 6));
              v12 = 1 << v9;
              if ((v11 & (1 << v9)) == 0)
              {
                goto LABEL_89;
              }

              break;
          }
        }
      }

LABEL_89:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      if (++v4 == v27)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2259F6B18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEE0);
    v3 = sub_225CCF1D4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_225CCFBD4();

      sub_225CCE5B4();
      result = sub_225CCFC24();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_225CCF934();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2259F6C80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AED8);
    v3 = sub_225CCF1D4();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_225CCE474();
      sub_225CCFBD4();
      v27 = v7;
      sub_225CCE5B4();
      v8 = sub_225CCFC24();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_225CCE474();
        v18 = v17;
        if (v16 == sub_225CCE474() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_225CCF934();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2259F6E74()
{
  result = qword_27D73AF00;
  if (!qword_27D73AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AF00);
  }

  return result;
}

void sub_2259F6EC8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_2259EA518(v2, v3, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2259F6F50(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_2259F6FA4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08);

  return sub_2259EA9F8(a1, a2, a3);
}

CoreIDVShared::JWSAlgorithm_optional __swiftcall JWSAlgorithm.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t JWSAlgorithm.rawValue.getter()
{
  v1 = 0x7469573635325345;
  if (*v0 != 1)
  {
    v1 = 0x453635325345;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x3635325345;
  }
}

uint64_t sub_2259F7100(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7469573635325345;
  v4 = 0xEC0000004D415568;
  if (v2 != 1)
  {
    v3 = 0x453635325345;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x3635325345;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x7469573635325345;
  v8 = 0xEC0000004D415568;
  if (*a2 != 1)
  {
    v7 = 0x453635325345;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x3635325345;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}