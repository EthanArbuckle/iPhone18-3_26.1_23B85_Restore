uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19D88, &qword_21CD8CD00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF5278();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v34) = 0;
  v12 = sub_21CD84054();
  v28 = v13;
  LOBYTE(v29) = 1;
  sub_21CCF5378();
  sub_21CD840C4();
  v25 = v34;
  v26 = v36;
  v27 = v35;
  v24 = v37;
  v43 = v38;
  v44 = 2;
  v14 = sub_21CD84054();
  v16 = v15;
  v17 = v14;
  (*(v6 + 8))(v10, v5);
  v18 = v28;
  *&v29 = v12;
  *(&v29 + 1) = v28;
  v19 = v25;
  *&v30 = v25;
  *(&v30 + 1) = v27;
  v20 = v24;
  *&v31 = v26;
  *(&v31 + 1) = v24;
  LOBYTE(v32) = v43;
  *(&v32 + 1) = v17;
  v33 = v16;
  *(a2 + 64) = v16;
  v21 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v21;
  v22 = v30;
  *a2 = v29;
  *(a2 + 16) = v22;
  sub_21CCF1690(&v29, &v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v34 = v12;
  v35 = v18;
  v36 = v19;
  v37 = v27;
  v38 = v26;
  v39 = v20;
  v40 = v43;
  v41 = v17;
  v42 = v16;
  return sub_21CCF1C20(&v34);
}

uint64_t sub_21CCF36E0(uint64_t a1)
{
  v2 = sub_21CCF54C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF371C(uint64_t a1)
{
  v2 = sub_21CCF54C8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21CCF3758()
{
  v1 = 0x746163696C707061;
  if (*v0 != 1)
  {
    v1 = 6448503;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_21CCF37B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CCF6B2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CCF37E0(uint64_t a1)
{
  v2 = sub_21CCF53CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF381C(uint64_t a1)
{
  v2 = sub_21CCF53CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCF3858(uint64_t a1)
{
  v2 = sub_21CCF5570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF3894(uint64_t a1)
{
  v2 = sub_21CCF5570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCF38D0(uint64_t a1)
{
  v2 = sub_21CCF5420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF390C(uint64_t a1)
{
  v2 = sub_21CCF5420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19D98, &qword_21CD8CD08);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v37 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19DA0, &qword_21CD8CD10);
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19DA8, &qword_21CD8CD18);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19DB0, &qword_21CD8CD20);
  v42 = *(v17 - 8);
  v43 = v17;
  v18 = *(v42 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v32 - v20;
  v22 = v1[1];
  v40 = *v1;
  v41 = v22;
  v23 = v1[2];
  v32 = v1[3];
  v33 = v23;
  v24 = *(v1 + 32);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF53CC();
  sub_21CD842B4();
  if (v24)
  {
    if (v24 == 1)
    {
      LOBYTE(v44) = 1;
      sub_21CCF54C8();
      v26 = v43;
      sub_21CD840E4();
      v44 = v40;
      v45 = v41;
      sub_21CCF551C();
      v27 = v36;
      sub_21CD84164();
      v28 = *(v35 + 8);
      v29 = v11;
    }

    else
    {
      LOBYTE(v44) = 2;
      sub_21CCF5420();
      v30 = v37;
      v26 = v43;
      sub_21CD840E4();
      v44 = v40;
      v45 = v41;
      v46 = v33;
      v47 = v32;
      sub_21CCF5474();
      v27 = v39;
      sub_21CD84164();
      v28 = *(v38 + 8);
      v29 = v30;
    }

    v28(v29, v27);
  }

  else
  {
    LOBYTE(v44) = 0;
    sub_21CCF5570();
    v26 = v43;
    sub_21CD840E4();
    sub_21CCF55C4();
    sub_21CD84164();
    (*(v34 + 8))(v16, v12);
  }

  return (*(v42 + 8))(v21, v26);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19DF0, &qword_21CD8CD28);
  v52 = *(v48 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v48, v4);
  v53 = &v46[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19DF8, &qword_21CD8CD30);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v46[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E00, &qword_21CD8CD38);
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v46[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E08, &unk_21CD8CD40);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v46[-v21];
  v23 = a1[3];
  v24 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v23);
  sub_21CCF53CC();
  v25 = v55;
  sub_21CD842A4();
  if (!v25)
  {
    v55 = v18;
    v27 = v53;
    v26 = v54;
    v28 = sub_21CD840D4();
    v29 = (2 * *(v28 + 16)) | 1;
    v60 = v28;
    v61 = v28 + 32;
    v62 = 0;
    v63 = v29;
    v30 = sub_21CCD18D4();
    if (v30 == 3 || v62 != v63 >> 1)
    {
      v34 = sub_21CD83FA4();
      swift_allocError();
      v35 = v22;
      v37 = v36;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
      *v37 = &type metadata for IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType;
      sub_21CD84044();
      sub_21CD83F94();
      (*(*(v34 - 8) + 104))(v37, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v55 + 8))(v35, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = v30;
      if (v30)
      {
        if (v30 == 1)
        {
          LOBYTE(v56) = 1;
          sub_21CCF54C8();
          v31 = v11;
          sub_21CD84034();
          v32 = v55;
          sub_21CCF566C();
          v33 = v50;
          sub_21CD840C4();
          (*(v51 + 8))(v31, v33);
          (*(v32 + 8))(v22, v17);
          swift_unknownObjectRelease();
          v42 = 0;
          v43 = 0;
          v44 = v56;
          v45 = v57;
        }

        else
        {
          LOBYTE(v56) = 2;
          sub_21CCF5420();
          sub_21CD84034();
          v40 = v55;
          sub_21CCF5618();
          v41 = v48;
          sub_21CD840C4();
          (*(v52 + 8))(v27, v41);
          (*(v40 + 8))(v22, v17);
          swift_unknownObjectRelease();
          v44 = v56;
          v45 = v57;
          v42 = v58;
          v43 = v59;
        }
      }

      else
      {
        LOBYTE(v56) = 0;
        sub_21CCF5570();
        sub_21CD84034();
        sub_21CCF56C0();
        sub_21CD840C4();
        (*(v49 + 8))(v16, v12);
        (*(v55 + 8))(v22, v17);
        swift_unknownObjectRelease();
        v44 = 0;
        v45 = 0;
        v42 = 0;
        v43 = 0;
      }

      *v26 = v44;
      *(v26 + 8) = v45;
      *(v26 + 16) = v42;
      *(v26 + 24) = v43;
      *(v26 + 32) = v47;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v64);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.ApplicationConfiguration.applicationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21CCF449C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000021CD9F240 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_21CD841A4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21CCF4530(uint64_t a1)
{
  v2 = sub_21CCF5714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF456C(uint64_t a1)
{
  v2 = sub_21CCF5714();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.ApplicationConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E28, &qword_21CD8CD50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF5714();
  sub_21CD842B4();
  sub_21CD84134();
  return (*(v4 + 8))(v8, v3);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.ApplicationConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E38, &qword_21CD8CD58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF5714();
  sub_21CD842A4();
  if (!v2)
  {
    v12 = sub_21CD84094();
    v14 = v13;
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CCF4870(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E28, &qword_21CD8CD50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF5714();
  sub_21CD842B4();
  sub_21CD84134();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_21CCF49AC(uint64_t a1)
{
  v2 = sub_21CCF5768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF49E8(uint64_t a1)
{
  v2 = sub_21CCF5768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.FirstPartyServiceConfiguration.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E40, &qword_21CD8CD60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF5768();
  sub_21CD842B4();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_21CCF4B88(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E40, &qword_21CD8CD60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF5768();
  sub_21CD842B4();
  return (*(v3 + 8))(v7, v2);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.WebConfiguration.brandIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.WebConfiguration.displayOrigin.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_21CCF4CFC()
{
  if (*v0)
  {
    result = 0x4F79616C70736964;
  }

  else
  {
    result = 0x656449646E617262;
  }

  *v0;
  return result;
}

uint64_t sub_21CCF4D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656449646E617262 && a2 == 0xEF7265696669746ELL;
  if (v6 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4F79616C70736964 && a2 == 0xED00006E69676972)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CCF4E3C(uint64_t a1)
{
  v2 = sub_21CCF57BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF4E78(uint64_t a1)
{
  v2 = sub_21CCF57BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.WebConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E50, &qword_21CD8CD68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF57BC();
  sub_21CD842B4();
  v17 = 0;
  v13 = v15[3];
  sub_21CD840F4();
  if (!v13)
  {
    v16 = 1;
    sub_21CD84134();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.WebConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E60, &qword_21CD8CD70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF57BC();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = 0;
  v12 = sub_21CD84054();
  v14 = v13;
  v20 = v12;
  v21 = 1;
  v15 = sub_21CD84094();
  v17 = v16;
  (*(v6 + 8))(v10, v5);
  *a2 = v20;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v17;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_21CCF5278()
{
  result = qword_27CE19D78;
  if (!qword_27CE19D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19D78);
  }

  return result;
}

unint64_t sub_21CCF52CC()
{
  result = qword_27CE19D80;
  if (!qword_27CE19D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19D80);
  }

  return result;
}

uint64_t sub_21CCF5320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 1)
  {
    if (a5 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_21CCF5378()
{
  result = qword_27CE19D90;
  if (!qword_27CE19D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19D90);
  }

  return result;
}

unint64_t sub_21CCF53CC()
{
  result = qword_27CE19DB8;
  if (!qword_27CE19DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19DB8);
  }

  return result;
}

unint64_t sub_21CCF5420()
{
  result = qword_27CE19DC0;
  if (!qword_27CE19DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19DC0);
  }

  return result;
}

unint64_t sub_21CCF5474()
{
  result = qword_27CE19DC8;
  if (!qword_27CE19DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19DC8);
  }

  return result;
}

unint64_t sub_21CCF54C8()
{
  result = qword_27CE19DD0;
  if (!qword_27CE19DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19DD0);
  }

  return result;
}

unint64_t sub_21CCF551C()
{
  result = qword_27CE19DD8;
  if (!qword_27CE19DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19DD8);
  }

  return result;
}

unint64_t sub_21CCF5570()
{
  result = qword_27CE19DE0;
  if (!qword_27CE19DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19DE0);
  }

  return result;
}

unint64_t sub_21CCF55C4()
{
  result = qword_27CE19DE8;
  if (!qword_27CE19DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19DE8);
  }

  return result;
}

unint64_t sub_21CCF5618()
{
  result = qword_27CE19E10;
  if (!qword_27CE19E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E10);
  }

  return result;
}

unint64_t sub_21CCF566C()
{
  result = qword_27CE19E18;
  if (!qword_27CE19E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E18);
  }

  return result;
}

unint64_t sub_21CCF56C0()
{
  result = qword_27CE19E20;
  if (!qword_27CE19E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E20);
  }

  return result;
}

unint64_t sub_21CCF5714()
{
  result = qword_27CE19E30;
  if (!qword_27CE19E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E30);
  }

  return result;
}

unint64_t sub_21CCF5768()
{
  result = qword_27CE19E48;
  if (!qword_27CE19E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E48);
  }

  return result;
}

unint64_t sub_21CCF57BC()
{
  result = qword_27CE19E58;
  if (!qword_27CE19E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E58);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_21CCF5838(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_21CCF5880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21CCF5910(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_21CCF5958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21CCF59E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21CCF5A40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CCF5AC8(uint64_t a1, unsigned int a2)
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

uint64_t sub_21CCF5B10(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21CCF5B7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21CCF5BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CCF5C20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21CCF5C68(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for IdentityDocumentPresentmentConfiguration.Credential.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityDocumentPresentmentConfiguration.Credential.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21CCF5E9C()
{
  result = qword_27CE19E68;
  if (!qword_27CE19E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E68);
  }

  return result;
}

unint64_t sub_21CCF5EF4()
{
  result = qword_27CE19E70;
  if (!qword_27CE19E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E70);
  }

  return result;
}

unint64_t sub_21CCF5F4C()
{
  result = qword_27CE19E78;
  if (!qword_27CE19E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E78);
  }

  return result;
}

unint64_t sub_21CCF5FA4()
{
  result = qword_27CE19E80;
  if (!qword_27CE19E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E80);
  }

  return result;
}

unint64_t sub_21CCF5FFC()
{
  result = qword_27CE19E88;
  if (!qword_27CE19E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E88);
  }

  return result;
}

unint64_t sub_21CCF6054()
{
  result = qword_27CE19E90;
  if (!qword_27CE19E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E90);
  }

  return result;
}

unint64_t sub_21CCF60AC()
{
  result = qword_27CE19E98;
  if (!qword_27CE19E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E98);
  }

  return result;
}

unint64_t sub_21CCF6104()
{
  result = qword_27CE19EA0;
  if (!qword_27CE19EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EA0);
  }

  return result;
}

unint64_t sub_21CCF615C()
{
  result = qword_27CE19EA8;
  if (!qword_27CE19EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EA8);
  }

  return result;
}

unint64_t sub_21CCF61B4()
{
  result = qword_27CE19EB0;
  if (!qword_27CE19EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EB0);
  }

  return result;
}

unint64_t sub_21CCF620C()
{
  result = qword_27CE19EB8;
  if (!qword_27CE19EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EB8);
  }

  return result;
}

unint64_t sub_21CCF6264()
{
  result = qword_27CE19EC0;
  if (!qword_27CE19EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EC0);
  }

  return result;
}

unint64_t sub_21CCF62BC()
{
  result = qword_27CE19EC8;
  if (!qword_27CE19EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EC8);
  }

  return result;
}

unint64_t sub_21CCF6314()
{
  result = qword_27CE19ED0;
  if (!qword_27CE19ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19ED0);
  }

  return result;
}

unint64_t sub_21CCF636C()
{
  result = qword_27CE19ED8;
  if (!qword_27CE19ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19ED8);
  }

  return result;
}

unint64_t sub_21CCF63C4()
{
  result = qword_27CE19EE0;
  if (!qword_27CE19EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EE0);
  }

  return result;
}

unint64_t sub_21CCF641C()
{
  result = qword_27CE19EE8;
  if (!qword_27CE19EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EE8);
  }

  return result;
}

unint64_t sub_21CCF6474()
{
  result = qword_27CE19EF0;
  if (!qword_27CE19EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EF0);
  }

  return result;
}

unint64_t sub_21CCF64CC()
{
  result = qword_27CE19EF8;
  if (!qword_27CE19EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EF8);
  }

  return result;
}

unint64_t sub_21CCF6524()
{
  result = qword_27CE19F00;
  if (!qword_27CE19F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F00);
  }

  return result;
}

unint64_t sub_21CCF657C()
{
  result = qword_27CE19F08;
  if (!qword_27CE19F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F08);
  }

  return result;
}

unint64_t sub_21CCF65D4()
{
  result = qword_27CE19F10;
  if (!qword_27CE19F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F10);
  }

  return result;
}

unint64_t sub_21CCF662C()
{
  result = qword_27CE19F18;
  if (!qword_27CE19F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F18);
  }

  return result;
}

unint64_t sub_21CCF6684()
{
  result = qword_27CE19F20;
  if (!qword_27CE19F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F20);
  }

  return result;
}

unint64_t sub_21CCF66DC()
{
  result = qword_27CE19F28;
  if (!qword_27CE19F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F28);
  }

  return result;
}

unint64_t sub_21CCF6734()
{
  result = qword_27CE19F30;
  if (!qword_27CE19F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F30);
  }

  return result;
}

unint64_t sub_21CCF678C()
{
  result = qword_27CE19F38;
  if (!qword_27CE19F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F38);
  }

  return result;
}

unint64_t sub_21CCF67E4()
{
  result = qword_27CE19F40;
  if (!qword_27CE19F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F40);
  }

  return result;
}

unint64_t sub_21CCF683C()
{
  result = qword_27CE19F48;
  if (!qword_27CE19F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F48);
  }

  return result;
}

uint64_t sub_21CCF6890(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000021CD9F180 == a2;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021CD9F1A0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CD9F1C0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65644973736170 && a2 == 0xEE00726569666974)
  {

    return 3;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21CCF6A04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9F1E0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9F200 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21CCF6B2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000021CD9F220 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6448503 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_21CD841A4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21CCF6C80(uint64_t a1)
{
  v2 = sub_21CCF7338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF6CBC(uint64_t a1)
{
  v2 = sub_21CCF7338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCF6CF8()
{
  v1 = 6448503;
  if (*v0 != 1)
  {
    v1 = 0x726564616572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_21CCF6D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CCF7D60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CCF6D68(uint64_t a1)
{
  v2 = sub_21CCF723C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF6DA4(uint64_t a1)
{
  v2 = sub_21CCF723C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCF6DE0(uint64_t a1)
{
  v2 = sub_21CCF7290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF6E1C(uint64_t a1)
{
  v2 = sub_21CCF7290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCF6E58(uint64_t a1)
{
  v2 = sub_21CCF72E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF6E94(uint64_t a1)
{
  v2 = sub_21CCF72E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentPresentmentSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19F50, &qword_21CD8DD40);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v33 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19F58, &qword_21CD8DD48);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v30 = &v27 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19F60, &qword_21CD8DD50);
  v28 = *(v11 - 8);
  v29 = v11;
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19F68, &qword_21CD8DD58);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v27 - v20;
  v22 = *v1;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF723C();
  sub_21CD842B4();
  if (v22)
  {
    if (v22 == 1)
    {
      v37 = 1;
      sub_21CCF72E4();
      v15 = v30;
      sub_21CD840E4();
      v25 = v31;
      v24 = v32;
    }

    else
    {
      v38 = 2;
      sub_21CCF7290();
      v15 = v33;
      sub_21CD840E4();
      v25 = v34;
      v24 = v35;
    }
  }

  else
  {
    v36 = 0;
    sub_21CCF7338();
    sub_21CD840E4();
    v25 = v28;
    v24 = v29;
  }

  (*(v25 + 8))(v15, v24);
  return (*(v17 + 8))(v21, v16);
}

unint64_t sub_21CCF723C()
{
  result = qword_27CE19F70;
  if (!qword_27CE19F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F70);
  }

  return result;
}

unint64_t sub_21CCF7290()
{
  result = qword_27CE19F78;
  if (!qword_27CE19F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F78);
  }

  return result;
}

unint64_t sub_21CCF72E4()
{
  result = qword_27CE19F80;
  if (!qword_27CE19F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F80);
  }

  return result;
}

unint64_t sub_21CCF7338()
{
  result = qword_27CE19F88;
  if (!qword_27CE19F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F88);
  }

  return result;
}

uint64_t IdentityDocumentPresentmentSource.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

uint64_t IdentityDocumentPresentmentSource.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19F90, &qword_21CD8DD60);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v45 = &v39 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19F98, &qword_21CD8DD68);
  v41 = *(v44 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v44, v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19FA0, &qword_21CD8DD70);
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19FA8, &unk_21CD8DD78);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v39 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v22);
  sub_21CCF723C();
  v24 = v47;
  sub_21CD842A4();
  if (!v24)
  {
    v39 = v11;
    v47 = v17;
    v26 = v45;
    v25 = v46;
    v27 = v21;
    v28 = sub_21CD840D4();
    v29 = (2 * *(v28 + 16)) | 1;
    v49 = v28;
    v50 = v28 + 32;
    v51 = 0;
    v52 = v29;
    v30 = sub_21CCD18D4();
    if (v30 == 3 || v51 != v52 >> 1)
    {
      v32 = sub_21CD83FA4();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
      *v34 = &type metadata for IdentityDocumentPresentmentSource;
      sub_21CD84044();
      sub_21CD83F94();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v47 + 8))(v27, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = v30;
      if (v30)
      {
        if (v30 == 1)
        {
          v54 = 1;
          sub_21CCF72E4();
          sub_21CD84034();
          v31 = v47;
          (*(v41 + 8))(v10, v44);
          (*(v31 + 8))(v21, v16);
        }

        else
        {
          v54 = 2;
          sub_21CCF7290();
          v37 = v26;
          sub_21CD84034();
          v38 = v47;
          (*(v42 + 8))(v37, v43);
          (*(v38 + 8))(v21, v16);
        }
      }

      else
      {
        v54 = 0;
        sub_21CCF7338();
        sub_21CD84034();
        (*(v40 + 8))(v15, v39);
        (*(v47 + 8))(v21, v16);
      }

      swift_unknownObjectRelease();
      *v25 = v53;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v48);
}

unint64_t sub_21CCF79A4()
{
  result = qword_27CE19FB0;
  if (!qword_27CE19FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FB0);
  }

  return result;
}

unint64_t sub_21CCF7A4C()
{
  result = qword_27CE19FB8;
  if (!qword_27CE19FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FB8);
  }

  return result;
}

unint64_t sub_21CCF7AA4()
{
  result = qword_27CE19FC0;
  if (!qword_27CE19FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FC0);
  }

  return result;
}

unint64_t sub_21CCF7AFC()
{
  result = qword_27CE19FC8;
  if (!qword_27CE19FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FC8);
  }

  return result;
}

unint64_t sub_21CCF7B54()
{
  result = qword_27CE19FD0;
  if (!qword_27CE19FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FD0);
  }

  return result;
}

unint64_t sub_21CCF7BAC()
{
  result = qword_27CE19FD8;
  if (!qword_27CE19FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FD8);
  }

  return result;
}

unint64_t sub_21CCF7C04()
{
  result = qword_27CE19FE0;
  if (!qword_27CE19FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FE0);
  }

  return result;
}

unint64_t sub_21CCF7C5C()
{
  result = qword_27CE19FE8;
  if (!qword_27CE19FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FE8);
  }

  return result;
}

unint64_t sub_21CCF7CB4()
{
  result = qword_27CE19FF0;
  if (!qword_27CE19FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FF0);
  }

  return result;
}

unint64_t sub_21CCF7D0C()
{
  result = qword_27CE19FF8;
  if (!qword_27CE19FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FF8);
  }

  return result;
}

uint64_t sub_21CCF7D60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v3 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6448503 && a2 == 0xE300000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564616572 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t IdentityDocumentRelyingParty.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IdentityDocumentRelyingParty.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *IdentityDocumentRelyingParty.logo.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t IdentityDocumentRelyingParty.init(name:logo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21CCF7F90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21CCF7FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id IdentityProofingSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityProofingSession.init()()
{
  v1 = [objc_opt_self() interfaceWithProtocol_];
  memset(v26, 0, sizeof(v26));
  v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v3 = sub_21CD83B04();
  v4 = [v2 initWithMachServiceName:v3 options:4096];

  sub_21CCB3200(v26, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A000, &unk_21CD8E200);
  v5 = swift_allocObject();
  [v4 setRemoteObjectInterface_];
  v23 = sub_21CCF8418;
  v24 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_21CCB3270;
  v22 = &block_descriptor_2;
  v6 = _Block_copy(&aBlock);

  [v4 setInvalidationHandler_];
  _Block_release(v6);
  v23 = sub_21CCF8424;
  v24 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_21CCB3270;
  v22 = &block_descriptor_3_1;
  v7 = _Block_copy(&aBlock);

  [v4 setInterruptionHandler_];
  _Block_release(v7);
  [v4 setExportedInterface_];
  sub_21CCB3200(v25, &aBlock);
  v8 = v22;
  if (v22)
  {
    v9 = __swift_project_boxed_opaque_existential_0(&aBlock, v22);
    v10 = *(v8 - 1);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9, v9);
    v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_21CD84194();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    v14 = 0;
  }

  [v4 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v4;
  v5[2] = v15;
  v5[3] = sub_21CCC6574;
  v5[4] = 0;
  [v4 activate];

  sub_21CCC947C(v25);
  sub_21CCC947C(v26);
  *&v0[OBJC_IVAR____TtC7CoreIDV23IdentityProofingSession_connection] = v5;
  v16 = type metadata accessor for IdentityProofingSession();
  v18.receiver = v0;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_21CCF8454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21CCF847C, 0, 0);
}

uint64_t sub_21CCF847C()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[7] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "IdentityProofingSession cancelProofing", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  v10 = *(v6 + OBJC_IVAR____TtC7CoreIDV23IdentityProofingSession_connection);
  v11 = swift_allocObject();
  v0[8] = v11;
  v11[2] = v9;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v5;

  v12 = swift_task_alloc();
  v0[9] = v12;
  v12[2] = v10;
  v12[3] = &unk_21CD8E220;
  v12[4] = v11;
  v13 = swift_task_alloc();
  v0[10] = v13;
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v10;
  v14 = *(MEMORY[0x277D85A10] + 4);
  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = sub_21CCF86AC;
  v16 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v15, &unk_21CD8E228, v12, sub_21CCF9440, v13, 0, 0, v16);
}

uint64_t sub_21CCF86AC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_21CCF88B8;
  }

  else
  {
    v6 = v2[9];
    v5 = v2[10];
    v7 = v2[8];

    v4 = sub_21CCF87E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CCF87E4()
{
  v1 = *(v0 + 56);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "IdentityProofingSession cancelProofing returned successfully", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21CCF88B8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_21CCF8930(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a3;
  v6[19] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v6[22] = v8;
  v9 = *(v8 - 8);
  v6[23] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a2;
  v6[24] = v11;
  v6[25] = v12;

  return MEMORY[0x2822009F8](sub_21CCF8A08, 0, 0);
}

uint64_t sub_21CCF8A08()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[24];
  v15 = v0[25];
  v6 = v0 + 22;
  v5 = v0[22];
  v4 = v6[1];
  v8 = v1[20];
  v7 = v1[21];
  v9 = v1[18];
  v10 = v1[19];
  v11 = sub_21CD83B04();
  v1[26] = v11;
  v12 = sub_21CD83B04();
  v1[27] = v12;
  v1[2] = v1;
  v1[3] = sub_21CCF8BE4;
  swift_continuation_init();
  v1[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_27;
  [v15 cancelProofingWithState:v11 country:v12 completionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CCF8BE4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_21CCF8D68;
  }

  else
  {
    v3 = sub_21CCF8CF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CCF8CF4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CCF8D68()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[24];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[28];

  return v5();
}

uint64_t sub_21CCF8F84(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_21CD83B24();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_21CD83B24();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_21CCF9080;

  return sub_21CCF8454(v6, v8, v9, v11);
}

uint64_t sub_21CCF9080()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 24);
  if (v2)
  {
    v11 = sub_21CD83634();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v12 = *(v9 + 8);

  return v12();
}

id IdentityProofingSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21CCF92C4(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_21CCC498C;

  return sub_21CCF8930(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_21CCF938C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC01B8;

  return sub_21CCB3600(a1, v4, v5, v6);
}

uint64_t dispatch thunk of IdentityProofingSession.cancelProofing(state:country:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_21CCC498C;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_21CCF95B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21CCC01B8;

  return sub_21CCF8F84(v2, v3, v5, v4);
}

uint64_t sub_21CCF9674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21CCC498C;

  return sub_21CD01E18(a1, v4, v5, v7);
}

id static DIIdentityProofingXPCInterface.interface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

id IdentityProvisioningSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityProvisioningSession.init()()
{
  v1 = v0;
  v2 = [objc_opt_self() interfaceWithProtocol_];
  memset(v45, 0, sizeof(v45));
  v3 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v4 = sub_21CD83B04();
  v5 = [v3 initWithMachServiceName:v4 options:4096];

  sub_21CCB3200(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A010, &unk_21CD8E2D0);
  v6 = swift_allocObject();
  [v5 setRemoteObjectInterface_];
  v42 = sub_21CCF9F44;
  v43 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_21CCB3270;
  v41 = &block_descriptor_3;
  v7 = _Block_copy(&aBlock);

  [v5 setInvalidationHandler_];
  _Block_release(v7);
  v42 = sub_21CCF9F50;
  v43 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_21CCB3270;
  v41 = &block_descriptor_3_2;
  v8 = _Block_copy(&aBlock);

  [v5 setInterruptionHandler_];
  _Block_release(v8);
  [v5 setExportedInterface_];
  sub_21CCB3200(v44, &aBlock);
  v9 = v41;
  if (v41)
  {
    v10 = __swift_project_boxed_opaque_existential_0(&aBlock, v41);
    v11 = *(v9 - 1);
    v12 = *(v11 + 64);
    MEMORY[0x28223BE20](v10, v10);
    v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = sub_21CD84194();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    v15 = 0;
  }

  [v5 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = v5;
  v6[2] = v16;
  v6[3] = sub_21CCC6574;
  v6[4] = 0;
  [v5 activate];

  sub_21CCC947C(v44);
  sub_21CCC947C(v45);
  v17 = OBJC_IVAR____TtC7CoreIDV27IdentityProvisioningSession_connection;
  *&v1[OBJC_IVAR____TtC7CoreIDV27IdentityProvisioningSession_connection] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A020, &qword_21CD8E2E0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21CD8E2C0;
  v19 = sub_21CCB17E8(0, &qword_27CE1A028, 0x277CBEA60);
  *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A030, &qword_21CD8E2E8);
  *(v18 + 32) = v19;
  v20 = sub_21CCB17E8(0, &qword_27CE190E0, 0x277CCACA8);
  *(v18 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A038, &qword_21CD8E2F0);
  *(v18 + 64) = v20;
  v21 = sub_21CCB17E8(0, &qword_27CE1A550, 0x277CBEA90);
  *(v18 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A040, &qword_21CD8E2F8);
  *(v18 + 96) = v21;
  v22 = sub_21CCB17E8(0, &qword_27CE19000, off_278320670);
  *(v18 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A048, &qword_21CD8E300);
  *(v18 + 128) = v22;
  v23 = sub_21CCB17E8(0, &qword_27CE1A050, off_278320678);
  *(v18 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A058, &qword_21CD8E308);
  *(v18 + 160) = v23;
  v24 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v25 = sub_21CD83C74();

  v26 = [v24 initWithArray_];

  aBlock = 0;
  sub_21CD83DF4();

  if (aBlock)
  {
    v27 = *(*&v1[v17] + 16);

    os_unfair_lock_lock((v27 + 24));
    v28 = *(v27 + 16);
    os_unfair_lock_unlock((v27 + 24));

    v29 = [v28 remoteObjectInterface];

    if (v29)
    {
      v30 = sub_21CD83DE4();

      [v29 setClasses:v30 forSelector:sel_generateIdentityProvisioningAttestationsWithCredentialIdentifier_pairingID_completionHandler_ argumentIndex:0 ofReply:1];
    }

    else
    {
    }
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v31 = sub_21CD839F4();
    __swift_project_value_buffer(v31, qword_280F78E40);
    v32 = sub_21CD839D4();
    v33 = sub_21CD83E24();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_21CC90000, v32, v33, "Failed to initialize IdentityProvisioning interface classes", v34, 2u);
      MEMORY[0x21CF18580](v34, -1, -1);
    }
  }

  v35 = type metadata accessor for IdentityProvisioningSession();
  v37.receiver = v1;
  v37.super_class = v35;
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t sub_21CCF9F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_21CCF9FA8, 0, 0);
}

uint64_t sub_21CCF9FA8()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[8] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "DIIdentityProvisioningAttestationsManager generateIdentityProvisioningAttestations", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  v10 = *(v6 + OBJC_IVAR____TtC7CoreIDV27IdentityProvisioningSession_connection);
  v11 = swift_allocObject();
  v0[9] = v11;
  v11[2] = v9;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v5;

  v12 = swift_task_alloc();
  v0[10] = v12;
  v12[2] = v10;
  v12[3] = &unk_21CD8E320;
  v12[4] = v11;
  v13 = swift_task_alloc();
  v0[11] = v13;
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v10;
  v14 = *(MEMORY[0x277D85A10] + 4);
  v15 = swift_task_alloc();
  v0[12] = v15;
  v16 = sub_21CCB17E8(0, &qword_27CE19000, off_278320670);
  *v15 = v0;
  v15[1] = sub_21CCFA1F0;

  return MEMORY[0x282200830](v0 + 2, &unk_21CD8E330, v12, sub_21CCFB194, v13, 0, 0, v16);
}

uint64_t sub_21CCFA1F0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_21CCFA408;
  }

  else
  {
    v6 = v2[10];
    v5 = v2[11];
    v7 = v2[9];

    v2[14] = v2[2];
    v4 = sub_21CCFA330;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CCFA330()
{
  v1 = v0[8];
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "DIIdentityProvisioningAttestationsManager generateIdentityProvisioningAttestations returned successfully", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = v0[1];
  v6 = v0[14];

  return v5(v6);
}

uint64_t sub_21CCFA408()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_21CCFA480(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[19] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19008, &unk_21CD8E3A0);
  v6[24] = v8;
  v9 = *(v8 - 8);
  v6[25] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a2;
  v6[26] = v11;
  v6[27] = v12;

  return MEMORY[0x2822009F8](sub_21CCFA55C, 0, 0);
}

uint64_t sub_21CCFA55C()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v14 = sub_21CD83B04();
  v0[28] = v14;
  if (v1)
  {
    v4 = v0[22];
    v5 = v0[23];
    v6 = sub_21CD83B04();
  }

  else
  {
    v6 = 0;
  }

  v0[29] = v6;
  v7 = v0[26];
  v12 = v6;
  v13 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21CCFA754;
  swift_continuation_init();
  v0[17] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_21CCB17E8(0, &qword_27CE19000, off_278320670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v8 + 32))(boxed_opaque_existential_0, v7, v9);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CCFA96C;
  v0[13] = &block_descriptor_29;
  [v13 generateIdentityProvisioningAttestationsWithCredentialIdentifier:v14 pairingID:v12 completionHandler:v0 + 10];
  (*(v8 + 8))(boxed_opaque_existential_0, v9);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CCFA754()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_21CCFA8E0;
  }

  else
  {
    v3 = sub_21CCFA864;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CCFA864()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  **(v0 + 152) = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21CCFA8E0()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[26];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[30];

  return v5();
}

void sub_21CCFA96C(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19008, &unk_21CD8E3A0);
    sub_21CD83CF4();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19008, &unk_21CD8E3A0);
    sub_21CD83D04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21CCFABAC(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = sub_21CD83B24();
  v9 = v8;
  v4[4] = v8;
  if (a2)
  {
    a2 = sub_21CD83B24();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v4[5] = v11;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_21CCFACB8;

  return sub_21CCF9F80(v7, v9, a2, v11);
}

uint64_t sub_21CCFACB8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 40);
  v11 = *(v5 + 24);

  if (v3)
  {
    v12 = sub_21CD83634();

    (v11)[2](v11, 0, v12);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](v11, a1, 0);
    _Block_release(v11);
  }

  v13 = *(v9 + 8);

  return v13();
}

id IdentityProvisioningSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProvisioningSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21CCFAF0C(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_21CCC498C;

  return sub_21CCFA480(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_21CCFAFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCFAFF8, 0, 0);
}

uint64_t sub_21CCFAFF8()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCC9AAC;
  v5 = v0[4];
  v4 = v0[5];

  return sub_21CCB522C(v5, v4);
}

uint64_t sub_21CCFB0CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC01B8;

  return sub_21CCFAFD4(a1, v4, v5, v6);
}

uint64_t dispatch thunk of IdentityProvisioningSession.generateIdentityProvisioningAttestations(credentialIdentifier:pairingID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_21CCFB308;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_21CCFB308(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_21CCFB404()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21CCC01B8;

  return sub_21CCFABAC(v2, v3, v5, v4);
}

id static DIIdentityProvisioningXPCInterface.interface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

uint64_t sub_21CCFB5A8(uint64_t result, uint64_t a2)
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
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
LABEL_14:
    v13 = 16 * (v9 | (v4 << 6));
    v14 = (*(v3 + 48) + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(v3 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];

    if (!v15)
    {
      return 1;
    }

    v31 = v10;
    v20 = sub_21CCA996C(v16, v15);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      goto LABEL_31;
    }

    v23 = (*(v2 + 56) + 16 * v20);
    v24 = *v23;
    v25 = v23[1];

    result = sub_21CCCBEC0(v24, v18);
    if ((result & 1) == 0 || (v26 = *(v25 + 16), v26 != *(v19 + 16)))
    {
LABEL_30:

LABEL_31:

      return 0;
    }

    if (v26)
    {
      v27 = v25 == v19;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      v28 = 0;
      while (v26)
      {
        result = *(v25 + v28 + 32);
        if (result != *(v19 + v28 + 32) || *(v25 + v28 + 40) != *(v19 + v28 + 40))
        {
          result = sub_21CD841A4();
          if ((result & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v28 += 16;
        if (!--v26)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_36;
    }

LABEL_6:

    v2 = a2;
    v7 = v31;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_21CCFB7DC(uint64_t result, uint64_t a2)
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
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_10:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      while (2)
      {
        v13 = 16 * (v10 | (v4 << 6));
        v14 = *(v3 + 48) + v13;
        v15 = *(v3 + 56) + v13;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = sub_21CCAAE2C(*v14, *(v14 + 8));
        if ((v19 & 1) == 0)
        {
          return 0;
        }

        v20 = *(v2 + 56) + 16 * v18;
        v21 = *v20;
        if (*(v20 + 8) == 1)
        {
          if (v21)
          {
            v22 = 0x65726F745379616DLL;
          }

          else
          {
            v22 = 0x53746F4E6C6C6977;
          }

          if (v21)
          {
            v23 = 0xE800000000000000;
          }

          else
          {
            v23 = 0xEC00000065726F74;
          }

          if (!v17)
          {
LABEL_24:
            sub_21CD83F74();

            v24 = sub_21CD84174();
            MEMORY[0x21CF175E0](v24);

            MEMORY[0x21CF175E0](41, 0xE100000000000000);
            v25 = 0x800000021CD9E7E0;
            if (v22 != 0xD000000000000010)
            {
              goto LABEL_7;
            }

LABEL_34:
            if (v23 == v25)
            {

              v2 = a2;
              if (!v7)
              {
                goto LABEL_10;
              }
            }

            else
            {
LABEL_7:
              v9 = sub_21CD841A4();

              v2 = a2;
              if ((v9 & 1) == 0)
              {
                return 0;
              }

              if (!v7)
              {
                goto LABEL_10;
              }
            }

LABEL_9:
            v10 = __clz(__rbit64(v7));
            v7 &= v7 - 1;
            continue;
          }
        }

        else
        {
          sub_21CD83F74();

          v26 = sub_21CD84174();
          MEMORY[0x21CF175E0](v26);

          MEMORY[0x21CF175E0](41, 0xE100000000000000);
          v22 = 0xD000000000000010;
          v23 = 0x800000021CD9E7E0;
          if (!v17)
          {
            goto LABEL_24;
          }
        }

        break;
      }

      if (v16)
      {
        v27 = 0x65726F745379616DLL;
      }

      else
      {
        v27 = 0x53746F4E6C6C6977;
      }

      if (v16)
      {
        v25 = 0xE800000000000000;
      }

      else
      {
        v25 = 0xEC00000065726F74;
      }

      if (v22 != v27)
      {
        goto LABEL_7;
      }

      goto LABEL_34;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21CCFBAF4(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_21CCAAEC8(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21CCFBBFC(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_21CCAAF0C(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CCFBD44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000021CD9F3D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_21CD841A4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21CCFBDD8(uint64_t a1)
{
  v2 = sub_21CCFBFFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCFBE14(uint64_t a1)
{
  v2 = sub_21CCFBFFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentProviderQueryAllApplicationsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A060, &qword_21CD8E3F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFBFFC();

  sub_21CD842B4();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A070, &qword_21CD8E3F8);
  sub_21CCFC37C(&qword_27CE1A078, sub_21CCFC050);
  sub_21CD84164();

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_21CCFBFFC()
{
  result = qword_27CE1A068;
  if (!qword_27CE1A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A068);
  }

  return result;
}

unint64_t sub_21CCFC050()
{
  result = qword_27CE1A080;
  if (!qword_27CE1A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A080);
  }

  return result;
}

uint64_t MobileDocumentProviderQueryAllApplicationsResponse.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCD4BF4(v3, v1);
  return sub_21CD84294();
}

uint64_t MobileDocumentProviderQueryAllApplicationsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A088, &qword_21CD8E400);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFBFFC();
  sub_21CD842A4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A070, &qword_21CD8E3F8);
    sub_21CCFC37C(&qword_27CE1A090, sub_21CCFC400);
    sub_21CD840C4();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CCFC2DC()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCD4BF4(v3, v1);
  return sub_21CD84294();
}

uint64_t sub_21CCFC32C()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCD4BF4(v3, v1);
  return sub_21CD84294();
}

uint64_t sub_21CCFC37C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1A070, &qword_21CD8E3F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CCFC400()
{
  result = qword_27CE1A098;
  if (!qword_27CE1A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A098);
  }

  return result;
}

unint64_t sub_21CCFC458()
{
  result = qword_27CE1A0A0;
  if (!qword_27CE1A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A0A0);
  }

  return result;
}

unint64_t sub_21CCFC4D0()
{
  result = qword_27CE1A0A8;
  if (!qword_27CE1A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A0A8);
  }

  return result;
}

unint64_t sub_21CCFC528()
{
  result = qword_27CE1A0B0;
  if (!qword_27CE1A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A0B0);
  }

  return result;
}

unint64_t sub_21CCFC580()
{
  result = qword_27CE1A0B8;
  if (!qword_27CE1A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A0B8);
  }

  return result;
}

uint64_t sub_21CCFC614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6172747369676572 && a2 == 0xED0000736E6F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CCFC6A4(uint64_t a1)
{
  v2 = sub_21CCFC8C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCFC6E0(uint64_t a1)
{
  v2 = sub_21CCFC8C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentProviderQueryRegistrationsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A0C0, &qword_21CD8E640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFC8C8();

  sub_21CD842B4();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A0D0, &qword_21CD8E648);
  sub_21CCFCBF4(&qword_27CE1A0D8, &qword_27CE1A0E0);
  sub_21CD84164();

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_21CCFC8C8()
{
  result = qword_27CE1A0C8;
  if (!qword_27CE1A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A0C8);
  }

  return result;
}

uint64_t MobileDocumentProviderQueryRegistrationsResponse.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCF730(v3, v1);
  return sub_21CD84294();
}

uint64_t MobileDocumentProviderQueryRegistrationsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A0E8, &qword_21CD8E650);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFC8C8();
  sub_21CD842A4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A0D0, &qword_21CD8E648);
    sub_21CCFCBF4(&qword_27CE1A0F0, &qword_27CE1A0F8);
    sub_21CD840C4();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CCFCB54()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCF730(v3, v1);
  return sub_21CD84294();
}

uint64_t sub_21CCFCBA4()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCF730(v3, v1);
  return sub_21CD84294();
}

uint64_t sub_21CCFCBF4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1A0D0, &qword_21CD8E648);
    sub_21CCFCC7C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CCFCC7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MobileDocumentRegistration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CCFCCC4()
{
  result = qword_27CE1A100;
  if (!qword_27CE1A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A100);
  }

  return result;
}

unint64_t sub_21CCFCD3C()
{
  result = qword_27CE1A108;
  if (!qword_27CE1A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A108);
  }

  return result;
}

unint64_t sub_21CCFCD94()
{
  result = qword_27CE1A110;
  if (!qword_27CE1A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A110);
  }

  return result;
}

unint64_t sub_21CCFCDEC()
{
  result = qword_27CE1A118;
  if (!qword_27CE1A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A118);
  }

  return result;
}

uint64_t sub_21CCFCE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentRegistration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CCFCF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6172747369676572 && a2 == 0xEC0000006E6F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CCFCF90(uint64_t a1)
{
  v2 = sub_21CCFDCDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCFCFCC(uint64_t a1)
{
  v2 = sub_21CCFDCDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentProviderRegistrationRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A120, &unk_21CD8E890);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFDCDC();
  sub_21CD842B4();
  type metadata accessor for MobileDocumentRegistration();
  sub_21CCFDE2C(&qword_27CE1A0E0, type metadata accessor for MobileDocumentRegistration);
  sub_21CD84164();
  return (*(v3 + 8))(v7, v2);
}

uint64_t MobileDocumentProviderRegistrationRequest.hash(into:)()
{
  v1 = v0;
  v2 = sub_21CD83744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v25 - v11;
  v13 = *v0;
  v14 = v0[1];
  sub_21CD83B74();
  v15 = v0[2];
  MEMORY[0x21CF17CC0](*(v15 + 16));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      sub_21CCB18D4(v18, *v17);
      sub_21CD83704();
      sub_21CCB1880(v18, v19);
      v17 += 2;
      --v16;
    }

    while (v16);
  }

  v20 = type metadata accessor for MobileDocumentRegistration();
  sub_21CCB1A4C(v1 + *(v20 + 24), v12);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    sub_21CD84284();
    sub_21CCFDE2C(&qword_27CE19360, MEMORY[0x277CC9578]);
    sub_21CD83A64();
    (*(v3 + 8))(v7, v2);
  }

  v21 = (v1 + *(v20 + 28));
  v22 = *v21;
  v23 = v21[1];
  return sub_21CD83B74();
}

uint64_t MobileDocumentProviderRegistrationRequest.hashValue.getter()
{
  v1 = v0;
  v2 = sub_21CD83744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v25 - v11;
  sub_21CD84264();
  v13 = *v0;
  v14 = v0[1];
  sub_21CD83B74();
  v15 = v0[2];
  MEMORY[0x21CF17CC0](*(v15 + 16));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      sub_21CCB18D4(v18, *v17);
      sub_21CD83704();
      sub_21CCB1880(v18, v19);
      v17 += 2;
      --v16;
    }

    while (v16);
  }

  v20 = type metadata accessor for MobileDocumentRegistration();
  sub_21CCB1A4C(v1 + *(v20 + 24), v12);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    sub_21CD84284();
    sub_21CCFDE2C(&qword_27CE19360, MEMORY[0x277CC9578]);
    sub_21CD83A64();
    (*(v3 + 8))(v7, v2);
  }

  v21 = (v1 + *(v20 + 28));
  v22 = *v21;
  v23 = v21[1];
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentProviderRegistrationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for MobileDocumentRegistration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v24 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A130, &qword_21CD8E8A0);
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for MobileDocumentProviderRegistrationRequest();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFDCDC();
  sub_21CD842A4();
  if (!v2)
  {
    v19 = v22;
    sub_21CCFDE2C(&qword_27CE1A0F8, type metadata accessor for MobileDocumentRegistration);
    v20 = v24;
    sub_21CD840C4();
    (*(v23 + 8))(v12, v8);
    sub_21CCFDD7C(v20, v17, type metadata accessor for MobileDocumentRegistration);
    sub_21CCFDD7C(v17, v19, type metadata accessor for MobileDocumentProviderRegistrationRequest);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CCFD8E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A120, &unk_21CD8E890);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFDCDC();
  sub_21CD842B4();
  type metadata accessor for MobileDocumentRegistration();
  sub_21CCFDE2C(&qword_27CE1A0E0, type metadata accessor for MobileDocumentRegistration);
  sub_21CD84164();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_21CCFDA60()
{
  v1 = v0;
  v2 = sub_21CD83744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v25 - v11;
  sub_21CD84264();
  v13 = *v0;
  v14 = v0[1];
  sub_21CD83B74();
  v15 = v0[2];
  MEMORY[0x21CF17CC0](*(v15 + 16));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      sub_21CCB18D4(v18, *v17);
      sub_21CD83704();
      sub_21CCB1880(v18, v19);
      v17 += 2;
      --v16;
    }

    while (v16);
  }

  v20 = type metadata accessor for MobileDocumentRegistration();
  sub_21CCB1A4C(v1 + *(v20 + 24), v12);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    sub_21CD84284();
    sub_21CCFDE2C(&qword_27CE19360, MEMORY[0x277CC9578]);
    sub_21CD83A64();
    (*(v3 + 8))(v7, v2);
  }

  v21 = (v1 + *(v20 + 28));
  v22 = *v21;
  v23 = v21[1];
  sub_21CD83B74();
  return sub_21CD84294();
}

unint64_t sub_21CCFDCDC()
{
  result = qword_27CE1A128;
  if (!qword_27CE1A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A128);
  }

  return result;
}

uint64_t type metadata accessor for MobileDocumentProviderRegistrationRequest()
{
  result = qword_27CE1A140;
  if (!qword_27CE1A140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CCFDD7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CCFDE2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CCFDE9C()
{
  result = type metadata accessor for MobileDocumentRegistration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21CCFDF1C()
{
  result = qword_27CE1A150;
  if (!qword_27CE1A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A150);
  }

  return result;
}

unint64_t sub_21CCFDF74()
{
  result = qword_27CE1A158;
  if (!qword_27CE1A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A158);
  }

  return result;
}

unint64_t sub_21CCFDFCC()
{
  result = qword_27CE1A160;
  if (!qword_27CE1A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A160);
  }

  return result;
}

uint64_t MobileDocumentProviderUnregisterRequest.documentIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static MobileDocumentProviderUnregisterRequest.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CD841A4();
  }
}

uint64_t sub_21CCFE0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000021CD9F3F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_21CD841A4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21CCFE138(uint64_t a1)
{
  v2 = sub_21CCFE2EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCFE174(uint64_t a1)
{
  v2 = sub_21CCFE2EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentProviderUnregisterRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A168, &qword_21CD8EAB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFE2EC();
  sub_21CD842B4();
  sub_21CD84134();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_21CCFE2EC()
{
  result = qword_27CE1A170;
  if (!qword_27CE1A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A170);
  }

  return result;
}

uint64_t MobileDocumentProviderUnregisterRequest.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_21CD83B74();
}

uint64_t MobileDocumentProviderUnregisterRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CD84264();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentProviderUnregisterRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A178, &qword_21CD8EAB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFE2EC();
  sub_21CD842A4();
  if (!v2)
  {
    v12 = sub_21CD84094();
    v14 = v13;
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CCFE520(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A168, &qword_21CD8EAB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFE2EC();
  sub_21CD842B4();
  sub_21CD84134();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_21CCFE65C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CD84264();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t sub_21CCFE6A8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_21CD83B74();
}

uint64_t sub_21CCFE6B0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CD84264();
  sub_21CD83B74();
  return sub_21CD84294();
}

unint64_t sub_21CCFE6FC()
{
  result = qword_27CE1A180;
  if (!qword_27CE1A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A180);
  }

  return result;
}

uint64_t sub_21CCFE750(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CD841A4();
  }
}

unint64_t sub_21CCFE7A4()
{
  result = qword_27CE1A188;
  if (!qword_27CE1A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A188);
  }

  return result;
}

unint64_t sub_21CCFE7FC()
{
  result = qword_27CE1A190;
  if (!qword_27CE1A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A190);
  }

  return result;
}

unint64_t sub_21CCFE854()
{
  result = qword_27CE1A198;
  if (!qword_27CE1A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A198);
  }

  return result;
}

uint64_t MobileDocumentRegistration.documentType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDocumentRegistration.invalidationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MobileDocumentRegistration() + 24);

  return sub_21CCB1A4C(v3, a1);
}

uint64_t type metadata accessor for MobileDocumentRegistration()
{
  result = qword_27CE1A1F8;
  if (!qword_27CE1A1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDocumentRegistration.documentIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MobileDocumentRegistration() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MobileDocumentRegistration.init(documentType:authorityKeyIdentifiers:documentIdentifier:invalidationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  v11 = type metadata accessor for MobileDocumentRegistration();
  v12 = (a7 + *(v11 + 28));
  *v12 = a4;
  v12[1] = a5;
  v13 = a7 + *(v11 + 24);

  return sub_21CCFEA1C(a6, v13);
}

uint64_t sub_21CCFEA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CCFEA90()
{
  v1 = 0x746E656D75636F64;
  v2 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_21CCFEB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD001F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CCFEB40(uint64_t a1)
{
  v2 = sub_21CCFFD5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCFEB7C(uint64_t a1)
{
  v2 = sub_21CCFFD5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentRegistration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A1A0, &qword_21CD8ECE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFFD5C();
  sub_21CD842B4();
  v12 = *v3;
  v13 = v3[1];
  v22 = 0;
  sub_21CD84134();
  if (!v2)
  {
    v21 = v3[2];
    v20[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A1B0, &qword_21CD8ECF0);
    sub_21CCFFE04(&qword_27CE1A1B8, sub_21CCFFDB0);
    sub_21CD84164();
    v14 = type metadata accessor for MobileDocumentRegistration();
    v15 = *(v14 + 24);
    v20[14] = 2;
    sub_21CD83744();
    sub_21CD00364(&qword_27CE1A1C8, MEMORY[0x277CC9578]);
    sub_21CD84124();
    v16 = (v3 + *(v14 + 28));
    v17 = *v16;
    v18 = v16[1];
    v20[13] = 3;
    sub_21CD84134();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t MobileDocumentRegistration.hash(into:)()
{
  v1 = v0;
  v2 = sub_21CD83744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v25 - v11;
  v13 = *v0;
  v14 = v0[1];
  sub_21CD83B74();
  v15 = v0[2];
  MEMORY[0x21CF17CC0](*(v15 + 16));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      sub_21CCB18D4(v18, *v17);
      sub_21CD83704();
      sub_21CCB1880(v18, v19);
      v17 += 2;
      --v16;
    }

    while (v16);
  }

  v20 = type metadata accessor for MobileDocumentRegistration();
  sub_21CCB1A4C(v1 + *(v20 + 24), v12);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    sub_21CD84284();
    sub_21CD00364(&qword_27CE19360, MEMORY[0x277CC9578]);
    sub_21CD83A64();
    (*(v3 + 8))(v7, v2);
  }

  v21 = (v1 + *(v20 + 28));
  v22 = *v21;
  v23 = v21[1];
  return sub_21CD83B74();
}

uint64_t MobileDocumentRegistration.hashValue.getter()
{
  v1 = v0;
  v2 = sub_21CD83744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v25 - v11;
  sub_21CD84264();
  v13 = *v0;
  v14 = v0[1];
  sub_21CD83B74();
  v15 = v0[2];
  MEMORY[0x21CF17CC0](*(v15 + 16));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      sub_21CCB18D4(v18, *v17);
      sub_21CD83704();
      sub_21CCB1880(v18, v19);
      v17 += 2;
      --v16;
    }

    while (v16);
  }

  v20 = type metadata accessor for MobileDocumentRegistration();
  sub_21CCB1A4C(v1 + *(v20 + 24), v12);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    sub_21CD84284();
    sub_21CD00364(&qword_27CE19360, MEMORY[0x277CC9578]);
    sub_21CD83A64();
    (*(v3 + 8))(v7, v2);
  }

  v21 = (v1 + *(v20 + 28));
  v22 = *v21;
  v23 = v21[1];
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentRegistration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A1D0, &qword_21CD8ECF8);
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for MobileDocumentRegistration();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = (&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFFD5C();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = a1;
  v36 = v8;
  v21 = v38;
  v22 = v39;
  v44 = 0;
  *v18 = sub_21CD84094();
  v18[1] = v23;
  v35 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A1B0, &qword_21CD8ECF0);
  v43 = 1;
  sub_21CCFFE04(&qword_27CE1A1D8, sub_21CCFFE7C);
  sub_21CD840C4();
  v18[2] = v40;
  sub_21CD83744();
  v42 = 2;
  sub_21CD00364(&qword_27CE1A1E8, MEMORY[0x277CC9578]);
  v34 = v18;
  v24 = v36;
  sub_21CD84084();
  sub_21CCFEA1C(v24, v34 + *(v14 + 24));
  v41 = 3;
  v25 = sub_21CD84094();
  v36 = v26;
  v27 = v25;
  (*(v21 + 8))(v13, v22);
  v28 = v34;
  v29 = (v34 + *(v14 + 28));
  v31 = v36;
  v30 = v37;
  *v29 = v27;
  v29[1] = v31;
  sub_21CCFCE4C(v28, v30);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return sub_21CCFFED0(v28);
}

uint64_t sub_21CCFF76C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_21CD83744();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v27 - v14;
  sub_21CD84264();
  v16 = *v2;
  v17 = v2[1];
  sub_21CD83B74();
  v18 = v2[2];
  MEMORY[0x21CF17CC0](*(v18 + 16));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      sub_21CCB18D4(v21, *v20);
      sub_21CD83704();
      sub_21CCB1880(v21, v22);
      v20 += 2;
      --v19;
    }

    while (v19);
  }

  sub_21CCB1A4C(v4 + *(a2 + 24), v15);
  if ((*(v6 + 48))(v15, 1, v5) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v6 + 32))(v10, v15, v5);
    sub_21CD84284();
    sub_21CD00364(&qword_27CE19360, MEMORY[0x277CC9578]);
    sub_21CD83A64();
    (*(v6 + 8))(v10, v5);
  }

  v23 = (v4 + *(a2 + 28));
  v24 = *v23;
  v25 = v23[1];
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t _s7CoreIDV41MobileDocumentProviderRegistrationRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_21CD83744();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19368, &qword_21CD8EF10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v31 - v18;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21CD841A4() & 1) == 0 || (sub_21CCCC4F8(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v32 = type metadata accessor for MobileDocumentRegistration();
  v20 = *(v32 + 24);
  v21 = *(v15 + 48);
  sub_21CCB1A4C(a1 + v20, v19);
  sub_21CCB1A4C(a2 + v20, &v19[v21]);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_21CCB1A4C(v19, v14);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v19[v21], v4);
      sub_21CD00364(&qword_27CE19370, MEMORY[0x277CC9578]);
      v25 = sub_21CD83A84();
      v26 = *(v5 + 8);
      v26(v9, v4);
      v26(v14, v4);
      sub_21CCB1928(v19, &qword_27CE18EC8, &unk_21CD885C0);
      if (v25)
      {
        goto LABEL_14;
      }

LABEL_11:
      v23 = 0;
      return v23 & 1;
    }

    (*(v5 + 8))(v14, v4);
LABEL_10:
    sub_21CCB1928(v19, &qword_27CE19368, &qword_21CD8EF10);
    goto LABEL_11;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_21CCB1928(v19, &qword_27CE18EC8, &unk_21CD885C0);
LABEL_14:
  v27 = *(v32 + 28);
  v28 = *(a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  if (v28 == *v30 && v29 == v30[1])
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_21CD841A4();
  }

  return v23 & 1;
}

unint64_t sub_21CCFFD5C()
{
  result = qword_27CE1A1A8;
  if (!qword_27CE1A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A1A8);
  }

  return result;
}

unint64_t sub_21CCFFDB0()
{
  result = qword_27CE1A1C0;
  if (!qword_27CE1A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A1C0);
  }

  return result;
}

uint64_t sub_21CCFFE04(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1A1B0, &qword_21CD8ECF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CCFFE7C()
{
  result = qword_27CE1A1E0;
  if (!qword_27CE1A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A1E0);
  }

  return result;
}

uint64_t sub_21CCFFED0(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentRegistration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21CCFFF9C()
{
  sub_21CD00030();
  if (v0 <= 0x3F)
  {
    sub_21CD00080();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CD00030()
{
  if (!qword_27CE1A208)
  {
    v0 = sub_21CD83CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE1A208);
    }
  }
}

void sub_21CD00080()
{
  if (!qword_27CE1A210)
  {
    sub_21CD83744();
    v0 = sub_21CD83EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE1A210);
    }
  }
}

unint64_t sub_21CD000EC()
{
  result = qword_27CE1A218;
  if (!qword_27CE1A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A218);
  }

  return result;
}

unint64_t sub_21CD00144()
{
  result = qword_27CE1A220;
  if (!qword_27CE1A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A220);
  }

  return result;
}

unint64_t sub_21CD0019C()
{
  result = qword_27CE1A228;
  if (!qword_27CE1A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A228);
  }

  return result;
}

uint64_t sub_21CD001F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656D75636F64 && a2 == 0xEC00000065707954;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000021CD9F410 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9F430 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021CD9F3F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21CD00364(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_21CD003AC()
{
  v1 = v0;
  v2 = OBJC_IVAR___DIIdentitySettingsProvider_walletSettingsAnalyticsReporter;
  type metadata accessor for WalletSettingsAnalyticsReporter();
  swift_allocObject();
  *&v0[v2] = WalletSettingsAnalyticsReporter.init()();
  type metadata accessor for SynchronousExtensionPointManager();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A258, &unk_21CD8EF80);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = MEMORY[0x277D84F98];
  v3[3] = 0x800000021CD9F5A0;
  v3[4] = v4;
  v3[2] = 0xD000000000000039;
  *&v1[OBJC_IVAR___DIIdentitySettingsProvider_extensionPointManager] = v3;
  type metadata accessor for FirstPartyDocumentProviderPreferencesManager();
  swift_allocObject();
  *&v1[OBJC_IVAR___DIIdentitySettingsProvider_firstPartyDocumentProviderPreferencesManager] = sub_21CD063F8(0);
  v6.receiver = v1;
  v6.super_class = DIIdentitySettingsProvider;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_21CD004E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21CD00508, 0, 0);
}

uint64_t sub_21CD00508()
{
  v1 = v0[2] == 0xD000000000000012 && 0x800000021CD9F540 == v0[3];
  if (v1 || (sub_21CD841A4() & 1) != 0)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    v0[5] = *(v0[4] + OBJC_IVAR___DIIdentitySettingsProvider_extensionPointManager);
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_21CD0063C;
    v7 = v0[2];
    v6 = v0[3];

    return sub_21CD1A270(v7, v6);
  }
}

uint64_t sub_21CD0063C()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CD00738, 0, 0);
}

uint64_t sub_21CD00738()
{
  v1 = v0[5];
  sub_21CD1AE90(v0[2], v0[3]);
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_21CD00990(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_21CD83B24();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_21CD00A64;

  return sub_21CD004E4(v5, v7);
}

uint64_t sub_21CD00A64(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  if (v3)
  {
    if (v8)
    {
      v11 = *(v5 + 24);
      v12 = sub_21CD83634();

      (v11)[2](v11, 0, v12);
      _Block_release(v11);
    }

    else
    {
    }
  }

  else if (v8)
  {
    v13 = *(v5 + 24);
    (v13)[2](v13, a1, 0);

    _Block_release(v13);
  }

  else
  {
  }

  v14 = *(v10 + 8);

  return v14();
}

uint64_t sub_21CD00C40(uint64_t a1, unint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000021CD9F540 == a2 || (sub_21CD841A4() & 1) != 0)
  {
    v5 = *(v2 + OBJC_IVAR___DIIdentitySettingsProvider_firstPartyDocumentProviderPreferencesManager);
    PartyDocumentProviderPreferences = FirstPartyDocumentProviderPreferencesManager.isFirstPartyExtensionEnabled.getter();
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR___DIIdentitySettingsProvider_extensionPointManager);
    sub_21CD1B420(a1, a2);
  }

  return PartyDocumentProviderPreferences & 1;
}

uint64_t sub_21CD00E98(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v23 - v11;
  if (a1 == 0xD000000000000012 && 0x800000021CD9F540 == a2 || (sub_21CD841A4() & 1) != 0)
  {
    v13 = *&v3[OBJC_IVAR___DIIdentitySettingsProvider_firstPartyDocumentProviderPreferencesManager];
    v14 = a3 & 1;
    FirstPartyDocumentProviderPreferencesManager.setFirstPartyExtensionEnablement(to:)(v14);
    v15 = sub_21CD83D74();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = v4;
    *(v16 + 40) = v14;
    v17 = v4;
    v18 = &unk_21CD8EF30;
  }

  else
  {
    v19 = *&v3[OBJC_IVAR___DIIdentitySettingsProvider_extensionPointManager];
    sub_21CD1B980(a1, a2, a3 & 1);
    v20 = sub_21CD83D74();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = v4;
    *(v16 + 40) = a1;
    *(v16 + 48) = a2;
    *(v16 + 56) = a3 & 1;
    v21 = v4;

    v18 = &unk_21CD8EF20;
  }

  sub_21CD5C550(0, 0, v12, v18, v16);
}

uint64_t sub_21CD0120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 35) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_21CD01230, 0, 0);
}

uint64_t sub_21CD01230()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___DIIdentitySettingsProvider_walletSettingsAnalyticsReporter);
  *(v0 + 32) = (*(v0 + 35) & 1) == 0;
  *(v0 + 33) = 1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_21CCC0B40;

  return WalletSettingsAnalyticsReporter.sendWalletSettingsToggled(eventType:referralSource:issuerType:)((v0 + 32), (v0 + 33), (v0 + 34));
}

uint64_t sub_21CD01300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 83) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  return MEMORY[0x2822009F8](sub_21CD01328, 0, 0);
}

uint64_t sub_21CD01328()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___DIIdentitySettingsProvider_extensionPointManager);
  sub_21CD1C1EC(*(v0 + 24), *(v0 + 32));
  *(v0 + 40) = v2;
  v4 = v3;
  v5 = v2;
  type metadata accessor for MobileDocumentProviderRegistrationSession();
  v6 = swift_allocObject();
  *(v0 + 48) = sub_21CD024B0(v6);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_21CD01608;
  v8 = *(v0 + 83);

  return sub_21CD0BD10(v8, v4, v5);
}

uint64_t sub_21CD01608()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {

    v7 = sub_21CD01934;
  }

  else
  {

    v7 = sub_21CD0176C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21CD0176C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___DIIdentitySettingsProvider_walletSettingsAnalyticsReporter);
  *(v0 + 80) = (*(v0 + 83) & 1) == 0;
  *(v0 + 81) = 257;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_21CD01840;

  return WalletSettingsAnalyticsReporter.sendWalletSettingsToggled(eventType:referralSource:issuerType:)((v0 + 80), (v0 + 81), (v0 + 82));
}

uint64_t sub_21CD01840()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21CD01934()
{
  v17 = v0;
  v1 = v0[8];
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = sub_21CD839F4();
  __swift_project_value_buffer(v3, qword_280F78E40);

  v4 = v1;
  v5 = sub_21CD839D4();
  v6 = sub_21CD83E34();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_21CCC02FC(v8, v7, &v16);
    *(v9 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_21CC90000, v5, v6, "DIIdentitySettingsProvider failed notify enablement state updated for %s: %@", v9, 0x16u);
    sub_21CCB1928(v10, &qword_27CE18F68, &unk_21CD88800);
    MEMORY[0x21CF18580](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x21CF18580](v11, -1, -1);
    MEMORY[0x21CF18580](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

unint64_t type metadata accessor for DIIdentitySettingsProvider()
{
  result = qword_27CE1A248;
  if (!qword_27CE1A248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE1A248);
  }

  return result;
}

uint64_t sub_21CD01C58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21CCC498C;

  return sub_21CD01300(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_21CD01D30(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_21CCC498C;

  return v7();
}

uint64_t sub_21CD01E18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_21CCC01B8;

  return v8();
}

uint64_t sub_21CD01F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v26 - v12;
  sub_21CCD1750(a3, v26 - v12, &unk_27CE19190, &qword_21CD8E260);
  v14 = sub_21CD83D74();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21CCB1928(v13, &unk_27CE19190, &qword_21CD8E260);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21CD83D64();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_21CD83CD4();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_21CD83B54() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);

    return v24;
  }

LABEL_8:
  sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_21CD021FC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CD022F4;

  return v7(a1);
}

uint64_t sub_21CD022F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21CD023EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21CCC498C;

  return sub_21CD0120C(a1, v4, v5, v6, v7);
}

uint64_t sub_21CD024B0(uint64_t a1)
{
  v32 = &type metadata for MobileDocumentProviderRegistrationValidator;
  v33 = &protocol witness table for MobileDocumentProviderRegistrationValidator;
  swift_defaultActor_initialize();
  v2 = [objc_opt_self() interfaceWithProtocol_];
  v3 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v4 = sub_21CD83B04();
  v5 = [v3 initWithMachServiceName:v4 options:{4096, 0, 0}];

  sub_21CCD1750(&aBlock, v30, &qword_27CE19160, &unk_21CD88740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A250, &qword_21CD8EF38);
  v6 = swift_allocObject();
  [v5 setRemoteObjectInterface_];
  [v5 setInvalidationHandler_];
  v7 = &_swift_FORCE_LOAD___swiftOSLog___CoreIDV;
  [v5 setInterruptionHandler_];
  [v5 setExportedInterface_];
  sub_21CCD1750(v30, v28, &qword_27CE19160, &unk_21CD88740);
  v8 = v29;
  if (v29)
  {
    v9 = __swift_project_boxed_opaque_existential_0(v28, v29);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9, v9);
    v13 = &aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_21CD84194();
    (*(v10 + 8))(v13, v8);
    v7 = &_swift_FORCE_LOAD___swiftOSLog___CoreIDV;
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v14 = 0;
  }

  [v5 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v5;
  v6[2] = v15;
  v6[3] = sub_21CD088FC;
  v6[4] = 0;
  [v5 activate];

  sub_21CCB1928(v30, &qword_27CE19160, &unk_21CD88740);
  sub_21CCB1928(&aBlock, &qword_27CE19160, &unk_21CD88740);
  *(a1 + 112) = v6;

  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);
  v26 = sub_21CD08974;
  v27 = 0;
  aBlock = MEMORY[0x277D85DD0];
  aBlock_8 = 1107296256;
  v24 = sub_21CCB3270;
  v25 = &block_descriptor_4;
  v17 = _Block_copy(&aBlock);

  [v16 v7[385]];
  _Block_release(v17);
  os_unfair_lock_unlock((v15 + 24));

  v18 = *(*(a1 + 112) + 16);

  os_unfair_lock_lock((v18 + 24));
  v19 = *(v18 + 16);
  v26 = sub_21CD08980;
  v27 = 0;
  aBlock = MEMORY[0x277D85DD0];
  aBlock_8 = 1107296256;
  v24 = sub_21CCB3270;
  v25 = &block_descriptor_12;
  v20 = _Block_copy(&aBlock);

  [v19 setInvalidationHandler_];
  _Block_release(v20);
  os_unfair_lock_unlock((v18 + 24));

  sub_21CD02954(&v31, a1 + 120);
  return a1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21CD02954(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21CD0296C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21CCC498C;

  return sub_21CD00990(v2, v3, v4);
}

uint64_t sub_21CD02A20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CCC498C;

  return sub_21CD021FC(a1, v5);
}

uint64_t sub_21CD02AD8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CCC01B8;

  return sub_21CD021FC(a1, v5);
}

uint64_t ExtensionIdentity.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ExtensionIdentity.applicationExtensionRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExtensionIdentity() + 20);

  return sub_21CD02C58(v3, a1);
}

uint64_t type metadata accessor for ExtensionIdentity()
{
  result = qword_280F78070;
  if (!qword_280F78070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CD02C58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ExtensionIdentity.init(bundleIdentifier:applicationExtensionRecord:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for ExtensionIdentity();
  result = sub_21CD02D44(a3, a5 + *(v8 + 20));
  *(a5 + *(v8 + 24)) = a4;
  return result;
}

uint64_t sub_21CD02D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ExtensionPointManager.__allocating_init(extensionPointIdentifier:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ExtensionPointManager.init(extensionPointIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ExtensionPointManager.queryExtensionPoint()()
{
  v1[19] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v3 = type metadata accessor for ExtensionIdentity();
  v1[21] = v3;
  v4 = *(v3 - 8);
  v1[22] = v4;
  v5 = *(v4 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A268, &qword_21CD8EFA0);
  v1[25] = v6;
  v7 = *(v6 - 8);
  v1[26] = v7;
  v8 = *(v7 + 64) + 15;
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD02F6C, 0, 0);
}

uint64_t sub_21CD02F6C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v8 = v1[19];
  v16 = objc_opt_self();
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  v11 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v12 = sub_21CD83B04();
  v13 = [v11 initWithExtensionPointIdentifier_];
  v1[28] = v13;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_21CD03178;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A270, &qword_21CD8EFA8);
  sub_21CD83CE4();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD03544;
  v1[13] = &block_descriptor_5;
  [v16 executeQuery:v13 completionHandler:v3];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD03178()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CD03258, 0, 0);
}

uint64_t sub_21CD03258()
{
  v1 = *(v0 + 144);

  result = v1;
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v27)
  {
    v4 = result;
    v38 = MEMORY[0x277D84F90];
    result = sub_21CCEA7AC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v4;
    v36 = v4;
    v37 = v4 & 0xC000000000000001;
    v33 = v4 & 0xFFFFFFFFFFFFFF8;
    v34 = *(v0 + 184);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v9 = v38;
    v35 = i;
    while (1)
    {
      if (v37)
      {
        v10 = MEMORY[0x21CF179D0](v5);
        goto LABEL_10;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v5 >= *(v33 + 16))
      {
        goto LABEL_18;
      }

      v10 = *(v6 + 8 * v5 + 32);
LABEL_10:
      v11 = v10;
      v12 = *(v0 + 184);
      v13 = [v10 bundleIdentifier];
      v14 = sub_21CD83B24();
      v16 = v15;

      *v12 = v14;
      *(v34 + 8) = v16;
      v17 = [v11 applicationExtensionRecord];
      if (v17)
      {
        BundleRecord.init(_:)(v17, *(v0 + 160));
        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      v20 = *(v0 + 184);
      v19 = *(v0 + 192);
      v21 = *(v0 + 160);
      v22 = type metadata accessor for BundleRecord();
      (*(*(v22 - 8) + 56))(v21, v18, 1, v22);
      sub_21CD02D44(v21, v20 + *(v8 + 20));
      v23 = [v11 enabled];

      *(v20 + *(v8 + 24)) = v23;
      sub_21CD05830(v20, v19);
      v25 = *(v38 + 16);
      v24 = *(v38 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21CCEA7AC(v24 > 1, v25 + 1, 1);
      }

      v26 = *(v0 + 192);
      ++v5;
      *(v38 + 16) = v25 + 1;
      result = sub_21CD05830(v26, v38 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25);
      v6 = v36;
      if (v35 == v5)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v27 = result;
    i = sub_21CD83FE4();
  }

  v9 = MEMORY[0x277D84F90];
LABEL_21:
  v28 = *(v0 + 216);
  v30 = *(v0 + 184);
  v29 = *(v0 + 192);
  v31 = *(v0 + 160);

  v32 = *(v0 + 8);

  return v32(v9);
}

uint64_t sub_21CD03544(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_21CD05894();
  sub_21CD83C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A268, &qword_21CD8EFA0);
  return sub_21CD83D04();
}

uint64_t ExtensionPointManager.queryForAppExtension(applicationIdentifer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_21CD839B4();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[11] = v7;
  *v7 = v3;
  v7[1] = sub_21CD03708;
  v8 = *MEMORY[0x277D85DE8];

  return sub_21CD03E44();
}

uint64_t sub_21CD03708(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 96) = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21CD03834, 0, 0);
}

uint64_t sub_21CD03834()
{
  v71 = v0;
  v70[1] = *MEMORY[0x277D85DE8];
  v1 = v0[12];
  v68 = *(v1 + 16);
  if (v68)
  {
    v2 = 0;
    v3 = v0[7];
    v65 = (v3 + 32);
    v66 = v3;
    v69 = (v3 + 8);
    v4 = MEMORY[0x277D84F90];
    v67 = v0[12];
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
      }

      v5 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v6 = *(v66 + 72);
      v7 = *(v66 + 16);
      v7(v0[10], v0[12] + v5 + v6 * v2, v0[6]);
      sub_21CD83954();
      v8 = objc_allocWithZone(MEMORY[0x277CC1E50]);
      v9 = sub_21CD83B04();

      v0[2] = 0;
      v10 = [v8 initWithBundleIdentifier:v9 error:v0 + 2];

      v11 = v0[2];
      if (v10)
      {
        v12 = v11;
        v13 = [v10 containingBundleRecord];

        if (v13)
        {
          v14 = [v13 applicationIdentifier];

          if (v14)
          {
            v15 = v4;
            v17 = v0[4];
            v16 = v0[5];
            v18 = sub_21CD83B24();
            v20 = v19;

            if (v18 == v17 && v20 == v16)
            {

              v4 = v15;
LABEL_18:
              v42 = *v65;
              (*v65)(v0[8], v0[10], v0[6]);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21CCEA768(0, *(v4 + 16) + 1, 1);
              }

              v44 = *(v4 + 16);
              v43 = *(v4 + 24);
              v1 = v67;
              if (v44 >= v43 >> 1)
              {
                sub_21CCEA768(v43 > 1, v44 + 1, 1);
              }

              v45 = v0[8];
              v46 = v0[6];
              *(v4 + 16) = v44 + 1;
              v42(v4 + v5 + v44 * v6, v45, v46);
              goto LABEL_5;
            }

            v39 = v0[4];
            v40 = v0[5];
            v41 = sub_21CD841A4();

            v4 = v15;
            if (v41)
            {
              goto LABEL_18;
            }
          }
        }
      }

      else
      {
        v21 = v11;
        v22 = sub_21CD83644();

        swift_willThrow();
        if (qword_280F77E40 != -1)
        {
          swift_once();
        }

        v24 = v0[9];
        v23 = v0[10];
        v25 = v0[6];
        v26 = sub_21CD839F4();
        __swift_project_value_buffer(v26, qword_280F78E40);
        v7(v24, v23, v25);
        v27 = sub_21CD839D4();
        v28 = sub_21CD83E24();
        v29 = os_log_type_enabled(v27, v28);
        v30 = v0[9];
        v31 = v0[6];
        if (v29)
        {
          v64 = v4;
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v70[0] = v33;
          *v32 = 136315138;
          v34 = sub_21CD83954();
          v63 = v22;
          v36 = v35;
          (*v69)(v30, v31);
          v37 = sub_21CCC02FC(v34, v36, v70);

          *(v32 + 4) = v37;
          _os_log_impl(&dword_21CC90000, v27, v28, "LSApplicationExtensionRecord could not be initialized for bundle identifier %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x21CF18580](v33, -1, -1);
          v38 = v32;
          v4 = v64;
          MEMORY[0x21CF18580](v38, -1, -1);
        }

        else
        {

          (*v69)(v30, v31);
        }
      }

      (*v69)(v0[10], v0[6]);
      v1 = v67;
LABEL_5:
      if (v68 == ++v2)
      {
        v47 = v0[12];
        goto LABEL_25;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_25:
  v48 = 0xD00000000000001DLL;

  v49 = *(v4 + 16);
  if (v49)
  {
    if (v49 == 1)
    {
      v50 = v0[9];
      v51 = v0[10];
      v52 = v0[8];
      (*(v0[7] + 16))(v0[3], v4 + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)), v0[6]);

      v53 = v0[1];
      v54 = *MEMORY[0x277D85DE8];
      goto LABEL_31;
    }

    v55 = "";
    v56 = 11;
  }

  else
  {
    v55 = "Found multiple app extensions";
    v48 = 0xD000000000000039;
    v56 = 10;
  }

  v58 = v0[9];
  v57 = v0[10];
  v59 = v0[8];

  sub_21CCB14E0();
  swift_allocError();
  *v60 = v56;
  *(v60 + 8) = v48;
  *(v60 + 16) = v55 | 0x8000000000000000;
  *(v60 + 24) = 0;
  swift_willThrow();

  v53 = v0[1];
  v61 = *MEMORY[0x277D85DE8];
LABEL_31:

  return v53();
}

uint64_t sub_21CD03E44()
{
  v1[2] = v0;
  v2 = sub_21CD83944();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_21CD83924();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD03F60, 0, 0);
}

uint64_t sub_21CD03F60()
{
  v1 = v0[5];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A278, &unk_21CD91B70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21CD884B0;
  v4 = *(v2 + 24);
  *(v3 + 32) = *(v2 + 16);
  *(v3 + 40) = v4;

  sub_21CD839A4();

  v5 = v0[8];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  sub_21CD83934();
  (*(v7 + 8))(v6, v8);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_21CD0420C;
  v10 = v0[8];

  return sub_21CD1C9C4(0, 0);
}

uint64_t sub_21CD0420C(uint64_t a1)
{
  v3 = *(*v2 + 72);
  v5 = *v2;
  *(*v2 + 80) = a1;

  if (!v1)
  {

    return MEMORY[0x2822009F8](sub_21CD04320, 0, 0);
  }

  return result;
}

uint64_t sub_21CD04320()
{
  v1 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  if (v1)
  {
    v2 = v0[10];
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v3 = sub_21CD839F4();
    __swift_project_value_buffer(v3, qword_280F78E40);
    v4 = sub_21CD839D4();
    v5 = sub_21CD83E24();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CC90000, v4, v5, "ExtensionPointManager appExtensionIdentities stream closed without returning a result", v6, 2u);
      MEMORY[0x21CF18580](v6, -1, -1);
    }

    v2 = MEMORY[0x277D84F90];
  }

  v7 = v0[8];
  v8 = v0[5];

  v9 = v0[1];

  return v9(v2);
}

uint64_t ExtensionPointManager.isEnabled(for:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v5 = sub_21CD839B4();
  v2[4] = v5;
  v6 = *(v5 - 8);
  v2[5] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v2[6] = v8;
  v9 = swift_task_alloc();
  v2[7] = v9;
  *v9 = v2;
  v9[1] = sub_21CD0458C;

  return ExtensionPointManager.queryForAppExtension(applicationIdentifer:)(v8, a1, a2);
}

uint64_t sub_21CD0458C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_21CD04738;
  }

  else
  {
    v3 = sub_21CD046A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD046A0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_21CD83994();
  (*(v2 + 8))(v1, v3);
  v5 = v0[6];

  v6 = v0[1];

  return v6(v4 & 1);
}

uint64_t sub_21CD04738()
{
  v15 = v0;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_280F78E40);

  v3 = sub_21CD839D4();
  v4 = sub_21CD83E34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v8 = v0[2];
    v7 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21CCC02FC(v8, v7, &v14);
    _os_log_impl(&dword_21CC90000, v3, v4, "ExtensionPointManager could not get enablement status of extension %s; no matching extension found. default false", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x21CF18580](v10, -1, -1);
    MEMORY[0x21CF18580](v9, -1, -1);
  }

  v11 = v0[6];

  v12 = v0[1];

  return v12(0);
}

uint64_t ExtensionPointManager.isUnelected(for:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v5 = sub_21CD839B4();
  v2[4] = v5;
  v6 = *(v5 - 8);
  v2[5] = v6;
  v7 = *(v6 + 64) + 15;
  v2[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v2[7] = v8;
  v9 = swift_task_alloc();
  v2[8] = v9;
  *v9 = v2;
  v9[1] = sub_21CD049F0;

  return ExtensionPointManager.queryForAppExtension(applicationIdentifer:)(v8, a1, a2);
}

uint64_t sub_21CD049F0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_21CD04BF0;
  }

  else
  {
    v3 = sub_21CD04B04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD04B04()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_21CD05894();
  (*(v4 + 16))(v2, v1, v3);
  v5 = sub_21CD83E74();
  v6 = [v5 unelected];

  (*(v4 + 8))(v1, v3);
  v8 = v0[6];
  v7 = v0[7];

  v9 = v0[1];

  return v9(v6);
}

uint64_t sub_21CD04BF0()
{
  v16 = v0;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_280F78E40);

  v3 = sub_21CD839D4();
  v4 = sub_21CD83E34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v8 = v0[2];
    v7 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21CCC02FC(v8, v7, &v15);
    _os_log_impl(&dword_21CC90000, v3, v4, "ExtensionPointManager could not get unelection status of extension %s; no matching extension found. default false", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x21CF18580](v10, -1, -1);
    MEMORY[0x21CF18580](v9, -1, -1);
  }

  v12 = v0[6];
  v11 = v0[7];

  v13 = v0[1];

  return v13(0);
}

uint64_t ExtensionPointManager.setEnablement(for:to:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 72) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v6 = sub_21CD839B4();
  *(v3 + 32) = v6;
  v7 = *(v6 - 8);
  *(v3 + 40) = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  *(v3 + 48) = v9;
  v10 = swift_task_alloc();
  *(v3 + 56) = v10;
  *v10 = v3;
  v10[1] = sub_21CD04EA8;

  return ExtensionPointManager.queryForAppExtension(applicationIdentifer:)(v9, a1, a2);
}

uint64_t sub_21CD04EA8()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_21CD051B4;
  }

  else
  {
    v3 = sub_21CD04FBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD04FBC()
{
  v15 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  if (*(v0 + 72) != 1)
  {
    sub_21CD83984();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_9:
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    goto LABEL_10;
  }

  sub_21CD83974();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_3:
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 24);
  v4 = sub_21CD839F4();
  __swift_project_value_buffer(v4, qword_280F78E40);

  v5 = sub_21CD839D4();
  v6 = sub_21CD83E34();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21CCC02FC(v8, v7, &v14);
    _os_log_impl(&dword_21CC90000, v5, v6, "ExtensionPointManager could not set enablement status of extension %s; no matching extension found.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x21CF18580](v10, -1, -1);
    MEMORY[0x21CF18580](v9, -1, -1);
  }

LABEL_10:
  v11 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21CD051B4()
{
  v14 = v0;
  v1 = v0[8];
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = sub_21CD839F4();
  __swift_project_value_buffer(v3, qword_280F78E40);

  v4 = sub_21CD839D4();
  v5 = sub_21CD83E34();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21CCC02FC(v7, v6, &v13);
    _os_log_impl(&dword_21CC90000, v4, v5, "ExtensionPointManager could not set enablement status of extension %s; no matching extension found.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x21CF18580](v9, -1, -1);
    MEMORY[0x21CF18580](v8, -1, -1);
  }

  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t ExtensionPointManager.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ExtensionPointManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_21CD053A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = result;
  return result;
}

uint64_t sub_21CD053F0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21CD05480;

  return ExtensionPointManager.queryExtensionPoint()();
}

uint64_t sub_21CD05480(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_21CD0557C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21CCC01B8;

  return ExtensionPointManager.queryForAppExtension(applicationIdentifer:)(a1, a2, a3);
}

uint64_t sub_21CD05630(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21CCC498C;

  return ExtensionPointManager.setEnablement(for:to:)(a1, a2, a3);
}

uint64_t sub_21CD056E0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CD060AC;

  return ExtensionPointManager.isEnabled(for:)(a1, a2);
}

uint64_t sub_21CD05788(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CD05480;

  return ExtensionPointManager.isUnelected(for:)(a1, a2);
}

uint64_t sub_21CD05830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionIdentity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CD05894()
{
  result = qword_280F77E18;
  if (!qword_280F77E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F77E18);
  }

  return result;
}

uint64_t dispatch thunk of ExtensionPointManaging.queryExtensionPoint()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CD05480;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ExtensionPointManaging.queryForAppExtension(applicationIdentifer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_21CCC01B8;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ExtensionPointManaging.setEnablement(for:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_21CCC498C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ExtensionPointManaging.isEnabled(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_21CD060AC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ExtensionPointManaging.isUnelected(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_21CD05480;

  return v13(a1, a2, a3, a4);
}

void sub_21CD05F18()
{
  sub_21CD05F9C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21CD05F9C()
{
  if (!qword_280F780D8[0])
  {
    type metadata accessor for BundleRecord();
    v0 = sub_21CD83EA4();
    if (!v1)
    {
      atomic_store(v0, qword_280F780D8);
    }
  }
}

uint64_t sub_21CD06044(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F68, &unk_21CD88800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FirstPartyDocumentProviderPreferencesManager.__allocating_init(userDefaults:)(void *a1)
{
  swift_allocObject();
  v2 = sub_21CD063F8(a1);

  return v2;
}

id FirstPartyDocumentProviderPreferencesManager.isFirstPartyExtensionEnabled.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_21CD83B04();
  v3 = [v1 BOOLForKey_];

  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v4 = sub_21CD839F4();
  __swift_project_value_buffer(v4, qword_280F78E40);
  v5 = sub_21CD839D4();
  v6 = sub_21CD83E24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_21CC90000, v5, v6, "FirstPartyDocumentProviderPreferencesManager isFirstPartyExtensionEnabled returning user default value: %{BOOL}d", v7, 8u);
    MEMORY[0x21CF18580](v7, -1, -1);
  }

  return v3;
}

Swift::Void __swiftcall FirstPartyDocumentProviderPreferencesManager.setFirstPartyExtensionEnablement(to:)(Swift::Bool to)
{
  v2 = v1;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v4 = sub_21CD839F4();
  __swift_project_value_buffer(v4, qword_280F78E40);
  v5 = sub_21CD839D4();
  v6 = sub_21CD83E24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = to;
    _os_log_impl(&dword_21CC90000, v5, v6, "FirstPartyDocumentProviderPreferencesManager setting firstPartyExtension to %{BOOL}d", v7, 8u);
    MEMORY[0x21CF18580](v7, -1, -1);
  }

  v8 = *(v2 + 16);
  v9 = sub_21CD83B04();
  [v8 setBool:to forKey:v9];
}

uint64_t FirstPartyDocumentProviderPreferencesManager.init(userDefaults:)(void *a1)
{
  v2 = sub_21CD063F8(a1);

  return v2;
}

uint64_t FirstPartyDocumentProviderPreferencesManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CD063F8(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = qword_280F77E40;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_21CD839F4();
    __swift_project_value_buffer(v5, qword_280F78E40);
    v6 = sub_21CD839D4();
    v7 = sub_21CD83E24();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21CC90000, v6, v7, "FirstPartyDocumentProviderPreferencesManager initializing with overrided user defaults", v8, 2u);
      MEMORY[0x21CF18580](v8, -1, -1);
    }

    goto LABEL_25;
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_21CD83B24();
    v13 = v12;

    if (v11 == 0xD00000000000001ALL && 0x800000021CD9F750 == v13)
    {
      goto LABEL_19;
    }

    v15 = sub_21CD841A4();

    if (v15)
    {
LABEL_20:
      if (qword_280F77E40 != -1)
      {
        swift_once();
      }

      v22 = sub_21CD839F4();
      __swift_project_value_buffer(v22, qword_280F78E40);
      v23 = sub_21CD839D4();
      v24 = sub_21CD83E24();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_21CC90000, v23, v24, "FirstPartyDocumentProviderPreferencesManager initializing with standard user defaults", v25, 2u);
        MEMORY[0x21CF18580](v25, -1, -1);
      }

      v4 = [objc_opt_self() standardUserDefaults];
      goto LABEL_25;
    }
  }

  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v16 = sub_21CD839F4();
  __swift_project_value_buffer(v16, qword_280F78E40);
  v17 = sub_21CD839D4();
  v18 = sub_21CD83E24();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_21CC90000, v17, v18, "FirstPartyDocumentProviderPreferencesManager initializing with coreidvd user defaults", v19, 2u);
    MEMORY[0x21CF18580](v19, -1, -1);
  }

  v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v21 = sub_21CD83B04();
  v4 = [v20 initWithSuiteName_];

  if (!v4)
  {
    __break(1u);
LABEL_19:

    goto LABEL_20;
  }

LABEL_25:
  *(v2 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18ED0, &unk_21CD8F110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CD884B0;
  *(inited + 32) = 0xD000000000000040;
  *(inited + 40) = 0x800000021CD9F6B0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v27 = v4;
  sub_21CD7D1E4(inited);
  swift_setDeallocating();
  sub_21CD068A0(inited + 32);
  v28 = sub_21CD83A14();

  [v27 registerDefaults_];

  return v2;
}

uint64_t sub_21CD068A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EE0, &qword_21CD885D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CoreIDV::MobileDocumentProviderRegisteredApplication __swiftcall MobileDocumentProviderRegisteredApplication.init(registrations:sceneIdentifiers:)(Swift::OpaquePointer registrations, Swift::OpaquePointer sceneIdentifiers)
{
  v2->_rawValue = registrations._rawValue;
  v2[1]._rawValue = sceneIdentifiers._rawValue;
  result.sceneIdentifiers = sceneIdentifiers;
  result.registrations = registrations;
  return result;
}

uint64_t static MobileDocumentProviderRegisteredApplication.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_21CCCBEC0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_21CCCC468(v2, v3);
}

unint64_t sub_21CD0697C()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6172747369676572;
  }

  *v0;
  return result;
}

uint64_t sub_21CD069C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6172747369676572 && a2 == 0xED0000736E6F6974;
  if (v6 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9F770 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CD06AB4(uint64_t a1)
{
  v2 = sub_21CD06D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD06AF0(uint64_t a1)
{
  v2 = sub_21CD06D60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentProviderRegisteredApplication.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A280, &unk_21CD8F120);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - v8;
  v10 = *v1;
  v13 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD06D60();

  sub_21CD842B4();
  v15 = v10;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A0D0, &qword_21CD8E648);
  sub_21CCFCBF4(&qword_27CE1A0D8, &qword_27CE1A0E0);
  sub_21CD84164();

  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
    sub_21CD07280(&qword_27CE1A298);
    sub_21CD84164();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_21CD06D60()
{
  result = qword_27CE1A288;
  if (!qword_27CE1A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A288);
  }

  return result;
}

uint64_t MobileDocumentProviderRegisteredApplication.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  sub_21CCCF730(a1, *v1);
  result = MEMORY[0x21CF17CC0](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = (v2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_21CD83B74();

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t MobileDocumentProviderRegisteredApplication.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CD84264();
  sub_21CCCF730(v8, v1);
  MEMORY[0x21CF17CC0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_21CD83B74();

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentProviderRegisteredApplication.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A2A0, &qword_21CD8F138);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD06D60();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A0D0, &qword_21CD8E648);
  v16 = 0;
  sub_21CCFCBF4(&qword_27CE1A0F0, &qword_27CE1A0F8);
  sub_21CD840C4();
  v12 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
  v16 = 1;
  sub_21CD07280(&qword_27CE1A2A8);
  sub_21CD840C4();
  (*(v6 + 8))(v10, v5);
  v13 = v17;
  *a2 = v12;
  a2[1] = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD07190()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CD84264();
  sub_21CCCF730(v8, v1);
  MEMORY[0x21CF17CC0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_21CD83B74();

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return sub_21CD84294();
}

uint64_t sub_21CD07224(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_21CCCBEC0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_21CCCC468(v2, v3);
}

uint64_t sub_21CD07280(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1A290, &qword_21CD8F130);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CD072F0()
{
  result = qword_27CE1A2B0;
  if (!qword_27CE1A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A2B0);
  }

  return result;
}

uint64_t sub_21CD07344(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21CD0738C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21CD073EC()
{
  result = qword_27CE1A2B8;
  if (!qword_27CE1A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A2B8);
  }

  return result;
}

unint64_t sub_21CD07444()
{
  result = qword_27CE1A2C0;
  if (!qword_27CE1A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A2C0);
  }

  return result;
}

unint64_t sub_21CD0749C()
{
  result = qword_27CE1A2C8;
  if (!qword_27CE1A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A2C8);
  }

  return result;
}

uint64_t MobileDocumentProviderRegistrationEntitlementChecker.init(applicationBundleRecord:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for BundleRecord() + 52));
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  v6 = sub_21CD83B04();
  sub_21CD07724();
  v7 = [v5 objectForKey:v6 ofClass:swift_getObjCClassFromMetadata()];

  if (v7)
  {
    sub_21CD83EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  os_unfair_lock_unlock((v4 + 24));
  sub_21CD07770(a1);
  if (*(&v11 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
    result = swift_dynamicCast();
    v9 = v10;
    if (!result)
    {
      v9 = 0;
    }
  }

  else
  {
    result = sub_21CCC947C(v12);
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

unint64_t sub_21CD07724()
{
  result = qword_27CE1A2D0;
  if (!qword_27CE1A2D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE1A2D0);
  }

  return result;
}

uint64_t sub_21CD07770(uint64_t a1)
{
  v2 = type metadata accessor for BundleRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CoreIDV::MobileDocumentProviderRegistrationEntitlementChecker __swiftcall MobileDocumentProviderRegistrationEntitlementChecker.init()()
{
  v1 = v0;
  sub_21CD07870(&v6);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
    v2 = swift_dynamicCast();
    v4 = v5;
    if (!v2)
    {
      v4 = 0;
    }
  }

  else
  {
    v2 = sub_21CCC947C(&v6);
    v4 = 0;
  }

  *v1 = v4;
  result.entitledDocumentTypes.value._rawValue = v2;
  result.entitledDocumentTypes.is_nil = v3;
  return result;
}

void sub_21CD07870(_OWORD *a1@<X8>)
{
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CD83B04();
    v5 = SecTaskCopyValueForEntitlement(v3, v4, 0);

    if (v5)
    {
      ObjectType = swift_getObjectType();
      *&v7 = v5;
      sub_21CCB2190(&v7, &v9);
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v6 = v10;
    *a1 = v9;
    a1[1] = v6;
  }

  else
  {
    *a1 = 0u;
    a1[1] = 0u;
  }
}

uint64_t static MobileDocumentProviderRegistrationEntitlementChecker.checkEntitlement(connection:)(void *a1)
{
  if (!a1)
  {
    sub_21CD07870(&v7);
    if (*(&v8 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
      if (swift_dynamicCast())
      {
        goto LABEL_10;
      }

      return 0;
    }

LABEL_11:
    sub_21CCC947C(&v7);
    return 0;
  }

  v1 = a1;
  v2 = sub_21CD83B04();
  v3 = [v1 valueForEntitlement_];

  if (v3)
  {
    sub_21CD83EE4();

    swift_unknownObjectRelease();
  }

  else
  {

    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
  if (swift_dynamicCast())
  {
LABEL_10:

    return 1;
  }

  return 0;
}

uint64_t static MobileDocumentProviderRegistrationEntitlementChecker.checkSettingsEntitlement(connection:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = sub_21CD83B04();
    v3 = [v1 valueForEntitlement_];

    if (v3)
    {
      sub_21CD83EE4();

      swift_unknownObjectRelease();
    }

    else
    {

      v6 = 0u;
      v7 = 0u;
    }

    v8 = v6;
    v9 = v7;
    if (*(&v7 + 1))
    {
      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
      sub_21CCC947C(&v8);
    }
  }

  sub_21CD07870(&v8);
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_21CCC947C(&v8);
  }

  return 0;
}

uint64_t static MobileDocumentProviderRegistrationEntitlementChecker.checkPrivilegedTestingRegistrationEntitlement(connection:)(void *a1)
{
  if (!a1)
  {
    sub_21CD07870(&v8);
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v6;
      }

      return 0;
    }

    goto LABEL_11;
  }

  v1 = a1;
  v2 = sub_21CD83B04();
  v3 = [v1 valueForEntitlement_];

  if (v3)
  {
    sub_21CD83EE4();

    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
LABEL_11:
    sub_21CCC947C(&v8);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  return 0;
}

Swift::Bool __swiftcall MobileDocumentProviderRegistrationEntitlementChecker.checkEntitled(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  if (*v1 && (v16 = a1, MEMORY[0x28223BE20](a1._countAndFlagsBits, a1._object), v15[2] = &v16, , (sub_21CD07F90(sub_21CD08094, v15, v4) & 1) != 0))
  {

    return 1;
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v6 = sub_21CD839F4();
    __swift_project_value_buffer(v6, qword_280F78E40);

    v7 = sub_21CD839D4();
    v8 = sub_21CD83E24();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16._countAndFlagsBits = v10;
      *v9 = 136315394;
      if (!v4)
      {
        v4 = MEMORY[0x277D84F90];
      }

      v11 = MEMORY[0x21CF176E0](v4, MEMORY[0x277D837D0]);
      v13 = v12;

      v14 = sub_21CCC02FC(v11, v13, &v16._countAndFlagsBits);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_21CCC02FC(countAndFlagsBits, object, &v16._countAndFlagsBits);
      _os_log_impl(&dword_21CC90000, v7, v8, "MobileDocumentProviderRegistrationEntitlementChecker calling application is entitled for document types %s but not entitled for document type in request: %s.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF18580](v10, -1, -1);
      MEMORY[0x21CF18580](v9, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_21CD07F90(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_21CD0803C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CD841A4() & 1;
  }
}

uint64_t sub_21CD08094(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CD841A4() & 1;
  }
}

uint64_t sub_21CD0813C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21CD08198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t MobileDocumentProviderRegistrationSession.__allocating_init(registrationValidator:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_21CD0D978(v8, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t sub_21CD08318(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21CCC498C;

  return sub_21CD0C588(a1, 0, 0, &unk_21CD8F488, 0);
}

uint64_t sub_21CD083D0(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A2F0, &unk_21CD8F680);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD0849C, 0, 0);
}

uint64_t sub_21CD0849C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v9 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_21CD08644;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  type metadata accessor for XPCMobileDocumentProviderStatusResponse();
  sub_21CD83CE4();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD087B0;
  v1[13] = &block_descriptor_108;
  [v9 authorizationStatusWithCompletionHandler_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CD08644()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CD08724, 0, 0);
}

uint64_t sub_21CD08724()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v2[OBJC_IVAR____TtC7CoreIDV39XPCMobileDocumentProviderStatusResponse_value];

  *v3 = v4;

  v5 = v0[1];

  return v5();
}

uint64_t sub_21CD087B0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A2F0, &unk_21CD8F680);
  return sub_21CD83D04();
}

uint64_t MobileDocumentProviderRegistrationSession.init(registrationValidator:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_21CD0D978(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t sub_21CD088FC(void *a1)
{
  sub_21CD0DE48();
  v2 = swift_allocError();
  v4 = v3;
  *v3 = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = a1;
  v5 = a1;

  v6 = *(v4 + 24);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;

  return v2;
}

uint64_t sub_21CD0898C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for MobileDocumentProviderRegistrationRequest() - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD08A50, v1, 0);
}

uint64_t sub_21CD08A50()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[18];
  v4 = v1[19];
  __swift_project_boxed_opaque_existential_0(v1 + 15, v3);
  (*(v4 + 8))(v2, 0, 1, v3, v4);
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];
  v8 = *v7;
  v9 = v7[1];
  sub_21CD0DE9C(v7, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v0[7] = v11;
  sub_21CD0DF00(v5, v11 + v10);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_21CD08C48;
  v13 = v0[3];

  return sub_21CD0CC4C(v12, v8, v9, &unk_21CD8F4A8, v11);
}

uint64_t sub_21CD08C48()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_21CD08DD4;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 24);

    v5 = sub_21CD08D70;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_21CD08D70()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CD08DD4()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21CD08E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();
  v7 = *(*(type metadata accessor for MobileDocumentProviderRegistrationRequest() - 8) + 64) + 15;
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD08F38, 0, 0);
}

uint64_t sub_21CD08F38()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0[24];
  v5 = v0[25];
  v8 = v0 + 22;
  v6 = v0[22];
  v7 = v8[1];
  v14 = v1[20];
  sub_21CD0DE9C(v1[21], v5);
  v9 = type metadata accessor for XPCMobileDocumentProviderRegistrationRequest();
  v10 = objc_allocWithZone(v9);
  sub_21CD0DE9C(v5, v10 + OBJC_IVAR____TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest_value);
  v1[18] = v10;
  v1[19] = v9;
  v11 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[26] = v11;
  sub_21CD0EEFC(v5);
  v1[2] = v1;
  v1[3] = sub_21CD09150;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v7 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_95;
  [v14 registerWithRequest:v11 applicationIdentifierOverride:0 completionHandler:v3];
  (*(v7 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD09150()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_21CD092D8;
  }

  else
  {
    v3 = sub_21CD09260;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD09260()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CD092D8()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[27];

  return v5();
}

uint64_t sub_21CD09364(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_21CD0938C, v1, 0);
}

uint64_t sub_21CD0938C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_21CD09474;
  v5 = v0[2];

  return sub_21CD0CC4C(v4, 0, 0, &unk_21CD8F4C8, v3);
}

uint64_t sub_21CD09474()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_21CD0959C;
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 16);

    v5 = sub_21CD0F488;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_21CD0959C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_21CD09600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[20] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD096D0, 0, 0);
}

uint64_t sub_21CD096D0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v8 = v1[21];
  v7 = v1[22];
  v15 = v1[20];
  v9 = type metadata accessor for XPCMobileDocumentProviderUnregisterRequest();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest_value];
  *v11 = v8;
  *(v11 + 1) = v7;
  v1[18] = v10;
  v1[19] = v9;

  v12 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[26] = v12;
  v1[2] = v1;
  v1[3] = sub_21CD098E4;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_80;
  [v15 unregisterWithRequest:v12 applicationIdentifierOverride:0 completionHandler:v3];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD098E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_21CD09A60;
  }

  else
  {
    v3 = sub_21CD099F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD099F4()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CD09A60()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[27];

  return v4();
}

uint64_t sub_21CD09ADC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21CCC01B8;

  return sub_21CD0D1B4(a1, 0, 0, &unk_21CD8F4D8, 0);
}

uint64_t sub_21CD09B94(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A2E8, &qword_21CD8F648);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD09C60, 0, 0);
}

uint64_t sub_21CD09C60()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v11 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_21CD09E24;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  type metadata accessor for XPCMobileDocumentProviderQueryRegistrationsResponse();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD0A03C;
  v1[13] = &block_descriptor_76;
  [v11 registrationsWithApplicationIdentifierOverride:0 completionHandler:v4];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CD09E24()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_21CD09FC8;
  }

  else
  {
    v3 = sub_21CD09F34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD09F34()
{
  v1 = v0[23];
  v3 = v0[18];
  v2 = v0[19];
  v4 = *&v3[OBJC_IVAR____TtC7CoreIDV51XPCMobileDocumentProviderQueryRegistrationsResponse_value];

  *v2 = v4;

  v5 = v0[1];

  return v5();
}

uint64_t sub_21CD09FC8()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t sub_21CD0A050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(type metadata accessor for MobileDocumentProviderRegistrationRequest() - 8);
  v4[6] = v5;
  v4[7] = *(v5 + 64);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD0A118, v3, 0);
}

uint64_t sub_21CD0A118()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1[18];
  v4 = v1[19];
  __swift_project_boxed_opaque_existential_0(v1 + 15, v3);
  (*(v4 + 8))(v2, 0, 1, v3, v4);
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];
  v0[9] = *(v0[5] + 112);
  sub_21CD0DE9C(v10, v5);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[10] = v13;
  sub_21CD0DF00(v5, v13 + v11);
  v14 = (v13 + v12);
  *v14 = v9;
  v14[1] = v8;

  return MEMORY[0x2822009F8](sub_21CD0A2F8, 0, 0);
}

uint64_t sub_21CD0A2F8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_task_alloc();
  v0[11] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD8F4F8;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_21CD0A418;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v6, &unk_21CD8F500, v3, sub_21CD0E2D4, v4, 0, 0, v7);
}

uint64_t sub_21CD0A418()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v11 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_21CD0A5C0;
    v5 = 0;
  }

  else
  {
    v7 = v2[11];
    v6 = v2[12];
    v8 = v2[10];
    v9 = v2[5];

    v4 = sub_21CD0A55C;
    v5 = v9;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_21CD0A55C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CD0A5C0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[5];

  return MEMORY[0x2822009F8](sub_21CD0A648, v4, 0);
}

uint64_t sub_21CD0A648()
{
  v1 = v0[14];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CD0A6AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[20] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v5[23] = v7;
  v8 = *(v7 - 8);
  v5[24] = v8;
  v9 = *(v8 + 64) + 15;
  v5[25] = swift_task_alloc();
  v10 = *(*(type metadata accessor for MobileDocumentProviderRegistrationRequest() - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a2;
  v5[26] = v11;
  v5[27] = v12;

  return MEMORY[0x2822009F8](sub_21CD0A7B0, 0, 0);
}

uint64_t sub_21CD0A7B0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[26];
  v15 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[23];
  v8 = v1[21];
  v7 = v1[22];
  sub_21CD0DE9C(v1[20], v3);
  v9 = type metadata accessor for XPCMobileDocumentProviderRegistrationRequest();
  v10 = objc_allocWithZone(v9);
  sub_21CD0DE9C(v3, v10 + OBJC_IVAR____TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest_value);
  v1[18] = v10;
  v1[19] = v9;
  v11 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[28] = v11;
  sub_21CD0EEFC(v3);
  v12 = sub_21CD83B04();
  v1[29] = v12;
  v1[2] = v1;
  v1[3] = sub_21CD0A9E0;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_63_0;
  [v15 registerWithRequest:v11 applicationIdentifierOverride:v12 completionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD0A9E0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_21CD0AB74;
  }

  else
  {
    v3 = sub_21CD0AAF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD0AAF0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21CD0AB74()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[26];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[30];

  return v6();
}

uint64_t sub_21CD0AC08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v6 = a1[1];
  v4[4] = v3;
  v4[5] = v5;
  v4[6] = v6;
  return MEMORY[0x2822009F8](sub_21CD0AC34, v3, 0);
}

uint64_t sub_21CD0AC34()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v0[7] = *(v0[4] + 112);
  v5 = swift_allocObject();
  v0[8] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  return MEMORY[0x2822009F8](sub_21CD0ACE4, 0, 0);
}

uint64_t sub_21CD0ACE4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = swift_task_alloc();
  v0[9] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD8F518;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_21CD0AE04;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v6, &unk_21CD8F520, v3, sub_21CD0F494, v4, 0, 0, v7);
}

uint64_t sub_21CD0AE04()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v11 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_21CD0AF60;
    v5 = 0;
  }

  else
  {
    v7 = v2[9];
    v6 = v2[10];
    v8 = v2[8];
    v9 = v2[4];

    v4 = sub_21CD0AF48;
    v5 = v9;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_21CD0AF60()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[4];

  return MEMORY[0x2822009F8](sub_21CD0AFE8, v4, 0);
}

uint64_t sub_21CD0B000(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v6[24] = v8;
  v9 = *(v8 - 8);
  v6[25] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a2;
  v6[26] = v11;
  v6[27] = v12;

  return MEMORY[0x2822009F8](sub_21CD0B0D8, 0, 0);
}

uint64_t sub_21CD0B0D8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[26];
  v18 = v0[27];
  v6 = v0 + 24;
  v5 = v0[24];
  v4 = v6[1];
  v8 = v1[22];
  v7 = v1[23];
  v9 = v1[20];
  v10 = v1[21];
  v11 = type metadata accessor for XPCMobileDocumentProviderUnregisterRequest();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest_value];
  *v13 = v9;
  *(v13 + 1) = v10;
  v1[18] = v12;
  v1[19] = v11;

  v14 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[28] = v14;
  v15 = sub_21CD83B04();
  v1[29] = v15;
  v1[2] = v1;
  v1[3] = sub_21CD0B2FC;
  swift_continuation_init();
  v1[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_59;
  [v18 unregisterWithRequest:v14 applicationIdentifierOverride:v15 completionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD0B2FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_21CCFA8E0;
  }

  else
  {
    v3 = sub_21CD0B40C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD0B40C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CD0B480(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_21CD0B4A0, v1, 0);
}

uint64_t sub_21CD0B4C8()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v2[2] = v1;
  v2[3] = &unk_21CD8F530;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A10] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_21CD0B5EC;
  v6 = v0[2];

  return MEMORY[0x282200830](v6, &unk_21CD8F538, v2, sub_21CD0E45C, v3, 0, 0, &type metadata for MobileDocumentProviderQueryAllApplicationsResponse);
}

uint64_t sub_21CD0B5EC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD0B734, 0, 0);
  }

  else
  {
    v5 = v3[5];
    v4 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_21CD0B734()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_21CD0B7A0(uint64_t a1, uint64_t *a2)
{
  v2[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A2E0, &qword_21CD8F628);
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a2;
  v2[22] = v7;
  v2[23] = v8;

  return MEMORY[0x2822009F8](sub_21CD0B874, 0, 0);
}

uint64_t sub_21CD0B874()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[22];
  v12 = v0[23];
  v9 = v0 + 20;
  v7 = v0[20];
  v8 = v9[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_21CD0BA30;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  type metadata accessor for XPCMobileDocumentProviderQueryAllApplicationsResponse();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v8 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD0BC4C;
  v1[13] = &block_descriptor_55;
  [v12 allApplicationsWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CD0BA30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_21CD0BBD4;
  }

  else
  {
    v3 = sub_21CD0BB40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD0BB40()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = *&v3[OBJC_IVAR____TtC7CoreIDV53XPCMobileDocumentProviderQueryAllApplicationsResponse_value];

  *v2 = v4;

  v5 = v0[1];

  return v5();
}

uint64_t sub_21CD0BBD4()
{
  v1 = v0[24];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

void sub_21CD0BC60(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_21CD83CF4();
  }

  else if (a2)
  {
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_21CD83D04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21CD0BD10(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  return MEMORY[0x2822009F8](sub_21CD0BD38, v3, 0);
}

uint64_t sub_21CD0BD38()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(v0 + 88);
  *(v0 + 40) = *(*(v0 + 32) + 112);
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;

  return MEMORY[0x2822009F8](sub_21CD0BDE0, 0, 0);
}

uint64_t sub_21CD0BDE0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[7] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD8F550;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_21CD0BF00;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v6, &unk_21CD8F558, v3, sub_21CD0F494, v4, 0, 0, v7);
}

uint64_t sub_21CD0BF00()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v11 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_21CD0C044;
    v5 = 0;
  }

  else
  {
    v7 = v2[7];
    v6 = v2[8];
    v8 = v2[6];
    v9 = v2[4];

    v4 = sub_21CD0F488;
    v5 = v9;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_21CD0C044()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[4];

  return MEMORY[0x2822009F8](sub_21CD0C0CC, v4, 0);
}

uint64_t sub_21CD0C0E4(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  *(v5 + 208) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  *(v5 + 160) = v7;
  v8 = *(v7 - 8);
  *(v5 + 168) = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v5 + 176) = v10;
  *(v5 + 184) = v11;

  return MEMORY[0x2822009F8](sub_21CD0C1BC, 0, 0);
}

uint64_t sub_21CD0C1BC()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0[22];
  v14 = v0[23];
  v7 = v0 + 20;
  v6 = v0[20];
  v5 = v7[1];
  v8 = v1[18];
  v9 = v1[19];
  v13 = *(v1 + 208);
  v10 = sub_21CD83B04();
  v1[24] = v10;
  v1[2] = v1;
  v1[3] = sub_21CD0C38C;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_6;
  [v14 notifyEnablementUpdateTo:v13 for:v10 completionHandler:v3];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD0C38C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_21CD0C50C;
  }

  else
  {
    v3 = sub_21CD0C49C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD0C49C()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CD0C50C()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

uint64_t sub_21CD0C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x2822009F8](sub_21CD0C5B0, v5, 0);
}

uint64_t sub_21CD0C5B0()
{
  v31 = v0;
  v1 = 0xD00000000000004FLL;
  sub_21CD07870((v0 + 16));
  if (!*(v0 + 40))
  {
    sub_21CCC947C(v0 + 16);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v8 = sub_21CD839F4();
    __swift_project_value_buffer(v8, qword_280F78E40);
    v9 = sub_21CD839D4();
    v10 = sub_21CD83E24();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21CC90000, v9, v10, "MobileDocumentProviderRegistrationSession pre-flight check failed: missing base entitlement", v11, 2u);
      MEMORY[0x21CF18580](v11, -1, -1);
    }

    v12 = "stration request is invalid.";
    v1 = 0xD000000000000028;
    goto LABEL_14;
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 80);

  if (!v2)
  {
    goto LABEL_19;
  }

  v4 = *(v0 + 112);
  sub_21CD07870((v0 + 48));
  if (*(v0 + 72))
  {
    v5 = swift_dynamicCast();
    v6 = *(v0 + 88);
    v7 = v5 ? *(v0 + 88) : 0;
  }

  else
  {
    sub_21CCC947C(v0 + 48);
    v7 = 0;
  }

  v19._countAndFlagsBits = *(v0 + 104);
  v30 = v7;
  v19._object = v4;
  v20 = MobileDocumentProviderRegistrationEntitlementChecker.checkEntitled(for:)(v19);

  if (v20)
  {
LABEL_19:
    v21 = *(v0 + 128);
    v22 = *(v0 + 120);
    *(v0 + 144) = *(*(v0 + 136) + 112);
    v23 = swift_allocObject();
    *(v0 + 152) = v23;
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;

    return MEMORY[0x2822009F8](sub_21CD0C9C8, 0, 0);
  }

  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v24 = sub_21CD839F4();
  __swift_project_value_buffer(v24, qword_280F78E40);

  v25 = sub_21CD839D4();
  v26 = sub_21CD83E24();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 104);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_21CCC02FC(v27, v4, &v30);
    _os_log_impl(&dword_21CC90000, v25, v26, "MobileDocumentProviderRegistrationSession pre-flight check failed: not entitled for document type %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x21CF18580](v29, -1, -1);
    MEMORY[0x21CF18580](v28, -1, -1);
  }

  v12 = "ication is not entitled.";
LABEL_14:
  v13 = v12 | 0x8000000000000000;
  sub_21CD0DE48();
  swift_allocError();
  v15 = v14;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *v14 = 3;
  *(v14 + 8) = 0;

  v16 = *(v15 + 24);
  *(v15 + 16) = v1;
  *(v15 + 24) = v13;

  swift_willThrow();
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_21CD0C9C8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD8F670;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_21CD0CAEC;
  v7 = v0[12];

  return MEMORY[0x282200830](v7, &unk_21CD8F678, v3, sub_21CD0F428, v4, 0, 0, &type metadata for MobileDocumentProviderRegistrationSession.Status);
}

uint64_t sub_21CD0CAEC()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD0F490, 0, 0);
  }

  else
  {
    v5 = v3[20];
    v4 = v3[21];
    v6 = v3[19];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_21CD0CC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x2822009F8](sub_21CD0CC74, v5, 0);
}