uint64_t sub_225A936EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProofingDisplayMessageAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A93770(uint64_t result)
{
  if (result)
  {
    v1 = result;

    v2 = v1;
  }

  return result;
}

unint64_t sub_225A937D0()
{
  result = qword_27D73BDE0;
  if (!qword_27D73BDE0)
  {
    sub_225CCCD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BDE0);
  }

  return result;
}

void sub_225A93850()
{
  sub_225A93934();
  if (v0 <= 0x3F)
  {
    sub_225A93CA4(319, &qword_281059B50, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_225A93C50(319, &qword_27D73B318, MEMORY[0x277CC9260]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_225A93934()
{
  result = qword_281059AD0;
  if (!qword_281059AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281059AD0);
  }

  return result;
}

uint64_t sub_225A93980(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_225A939C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_225A93A4C()
{
  sub_225A93934();
  if (v0 <= 0x3F)
  {
    sub_225A93CA4(319, &qword_281059B50, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_225A93C50(319, &qword_28105B788, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_225A93CA4(319, &qword_28105B790, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_225A93CA4(319, &qword_27D73BDF8, &type metadata for ProofingDisplayMessage, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_225A93CA4(319, &unk_281059B40, &type metadata for ProofingSession.UploadAsset, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_225A93C50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_225CCEFC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_225A93CA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void ProofingSession.UploadAsset.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 objectID];
  v5 = [a1 assetFileURL];
  if (v5)
  {
    v6 = v5;
    v7 = sub_225CCE474();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 assetType];
  if (v10)
  {
    v11 = v10;
    v12 = sub_225CCE474();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = [a1 recordUUID];
  if (v15)
  {
    v16 = v15;
    v17 = sub_225CCE474();
    v19 = v18;
  }

  else
  {

    v17 = 0;
    v19 = 0;
  }

  *a2 = v4;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v12;
  a2[4] = v14;
  a2[5] = v17;
  a2[6] = v19;
}

uint64_t ProofingSession.UploadAsset.assetFileURL.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ProofingSession.UploadAsset.assetType.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ProofingSession.UploadAsset.recordUUID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

__n128 VICALDocument.version.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t VICALDocument.vicalProvider.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t VICALDocument.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VICALDocument(0) + 24);
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VICALDocument.nextUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VICALDocument(0) + 32);

  return sub_225A94014(v3, a1);
}

uint64_t sub_225A94014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VICALDocument.certificateInfos.getter()
{
  type metadata accessor for VICALDocument(0);
}

uint64_t sub_225A940B8()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x7373496C61636976;
  v4 = 0x616470557478656ELL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F72506C61636976;
  if (v1 != 1)
  {
    v5 = 1702125924;
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

uint64_t sub_225A9418C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A974F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A941C0(uint64_t a1)
{
  v2 = sub_225A94584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A941FC(uint64_t a1)
{
  v2 = sub_225A94584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VICALDocument.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A94584();
  sub_225CCFCE4();
  v12 = *v3;
  v13 = 0;
  sub_225A945D8();
  sub_225CCF7E4();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_225CCF784();
    v11 = type metadata accessor for VICALDocument(0);
    LOBYTE(v12) = 2;
    sub_225CCD0B4();
    sub_225A9462C(&qword_27D73BE18, MEMORY[0x277CC9578]);
    sub_225CCF7E4();
    LOBYTE(v12) = 3;
    sub_225CCF764();
    LOBYTE(v12) = 4;
    sub_225CCF774();
    *&v12 = *(v3 + *(v11 + 36));
    v13 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE20);
    sub_225A94D6C(&qword_27D73BE28, &qword_27D73BE30);
    sub_225CCF7E4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_225A94584()
{
  result = qword_27D73BE08;
  if (!qword_27D73BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BE08);
  }

  return result;
}

unint64_t sub_225A945D8()
{
  result = qword_27D73BE10;
  if (!qword_27D73BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BE10);
  }

  return result;
}

uint64_t sub_225A9462C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t VICALDocument.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v33 = v30 - v5;
  v6 = sub_225CCD0B4();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE38);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v10);
  v12 = v30 - v11;
  v13 = type metadata accessor for VICALDocument(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_225A94584();
  v18 = v37;
  sub_225CCFCA4();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(v38);
  }

  v37 = v9;
  v19 = v34;
  v20 = v35;
  v40 = 0;
  sub_225A94CA8();
  sub_225CCF6E4();
  *v16 = v39;
  LOBYTE(v39) = 1;
  *(v16 + 2) = sub_225CCF684();
  *(v16 + 3) = v21;
  LOBYTE(v39) = 2;
  v22 = sub_225A9462C(&qword_27D73BE48, MEMORY[0x277CC9578]);
  v31 = v16;
  v23 = v22;
  v24 = v37;
  sub_225CCF6E4();
  v30[1] = v23;
  v25 = v31;
  (*(v20 + 32))(&v31[v13[6]], v24, v6);
  LOBYTE(v39) = 3;
  v26 = sub_225CCF664();
  v27 = v25 + v13[7];
  *v27 = v26;
  *(v27 + 8) = v28 & 1;
  LOBYTE(v39) = 4;
  sub_225CCF674();
  sub_225A94CFC(v33, v25 + v13[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE20);
  v40 = 5;
  sub_225A94D6C(&qword_27D73BE50, &qword_27D73BE58);
  sub_225CCF6E4();
  (*(v19 + 8))(v12, v36);
  *(v25 + v13[9]) = v39;
  sub_225A96A2C(v25, v32, type metadata accessor for VICALDocument);
  __swift_destroy_boxed_opaque_existential_0(v38);
  return sub_225A96A94(v25, type metadata accessor for VICALDocument);
}

uint64_t sub_225A94C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_225A94CA8()
{
  result = qword_27D73BE40;
  if (!qword_27D73BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BE40);
  }

  return result;
}

uint64_t sub_225A94CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A94D6C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73BE20);
    sub_225A9462C(a2, type metadata accessor for VICALCertificateInfo);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t VICALCertificateInfo.certificate.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t VICALCertificateInfo.serialNumber.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  return sub_2259CB710(v2, v3);
}

uint64_t VICALCertificateInfo.subjectKeyIdentifier.getter()
{
  v1 = *(v0 + 40);
  sub_2259CB710(v1, *(v0 + 48));
  return v1;
}

uint64_t VICALCertificateInfo.issuingAuthority.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t VICALCertificateInfo.issuingCountry.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t VICALCertificateInfo.stateOrProvinceName.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t VICALCertificateInfo.issuer.getter()
{
  v1 = *(v0 + 120);
  sub_2259CB6FC(v1, *(v0 + 128));
  return v1;
}

uint64_t VICALCertificateInfo.subject.getter()
{
  v1 = *(v0 + 136);
  sub_2259CB6FC(v1, *(v0 + 144));
  return v1;
}

uint64_t VICALCertificateInfo.notBefore.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VICALCertificateInfo(0) + 56);

  return sub_225A94014(v3, a1);
}

uint64_t VICALCertificateInfo.notAfter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VICALCertificateInfo(0) + 60);

  return sub_225A94014(v3, a1);
}

uint64_t VICALCertificateInfo.extensions.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for VICALCertificateInfo(0) + 64));
  *a1 = v3;

  return sub_225A95088(v3);
}

uint64_t sub_225A95088(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_225A950BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000225D1B3E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_225CCF934();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_225A95150(uint64_t a1)
{
  v2 = sub_225A9536C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A9518C(uint64_t a1)
{
  v2 = sub_225A9536C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VICALCertificateInfo.Extensions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A9536C();

  sub_225CCFCE4();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE70);
  sub_225A955C4(&qword_27D73BE78, sub_225A953C0);
  sub_225CCF774();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_225A9536C()
{
  result = qword_27D73BE68;
  if (!qword_27D73BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BE68);
  }

  return result;
}

unint64_t sub_225A953C0()
{
  result = qword_27D73BE80;
  if (!qword_27D73BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BE80);
  }

  return result;
}

uint64_t VICALCertificateInfo.Extensions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A9536C();
  sub_225CCFCA4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE70);
    sub_225A955C4(&qword_27D73BE90, sub_225A9563C);
    sub_225CCF674();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225A955C4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73BE70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225A9563C()
{
  result = qword_27D73BE98;
  if (!qword_27D73BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BE98);
  }

  return result;
}

unint64_t sub_225A95690(char a1)
{
  result = 0x6369666974726563;
  switch(a1)
  {
    case 1:
      result = 0x754E6C6169726573;
      break;
    case 2:
      result = 6908787;
      break;
    case 3:
      result = 0x65707954636F64;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x43676E6975737369;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x726575737369;
      break;
    case 9:
      result = 0x7463656A627573;
      break;
    case 10:
      result = 0x726F666542746F6ELL;
      break;
    case 11:
      result = 0x7265746641746F6ELL;
      break;
    case 12:
      result = 0x6F69736E65747865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_225A95848(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_225A95690(*a1);
  v5 = v4;
  if (v3 == sub_225A95690(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225A958D0()
{
  v1 = *v0;
  sub_225CCFBD4();
  sub_225A95690(v1);
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A95934()
{
  sub_225A95690(*v0);
  sub_225CCE5B4();
}

uint64_t sub_225A95988()
{
  v1 = *v0;
  sub_225CCFBD4();
  sub_225A95690(v1);
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A959E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225A97714();
  *a1 = result;
  return result;
}

unint64_t sub_225A95A18@<X0>(unint64_t *a1@<X8>)
{
  result = sub_225A95690(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_225A95A60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225A97714();
  *a1 = result;
  return result;
}

uint64_t sub_225A95A94(uint64_t a1)
{
  v2 = sub_225A95FF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A95AD0(uint64_t a1)
{
  v2 = sub_225A95FF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VICALCertificateInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BEA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A95FF8();
  sub_225CCFCE4();
  v10 = v3[1];
  v19 = *v3;
  v20 = v10;
  v22 = 0;
  sub_2259CB710(v19, v10);
  sub_2259D9454();
  sub_225CCF7E4();
  sub_2259BEF00(v19, v20);
  if (!v2)
  {
    v11 = v3[3];
    v12 = v3[4];
    v19 = v3[2];
    v20 = v11;
    v21 = v12;
    v22 = 1;
    sub_2259CB710(v11, v12);
    sub_225A953C0();
    sub_225CCF7E4();
    sub_2259BEF00(v20, v21);
    v14 = v3[6];
    v19 = v3[5];
    v20 = v14;
    v22 = 2;
    sub_2259CB710(v19, v14);
    sub_225CCF7E4();
    sub_2259BEF00(v19, v20);
    v19 = v3[7];
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    sub_225A325B0(&qword_281059B28);
    sub_225CCF7E4();
    v19 = v3[8];
    v22 = 4;
    sub_225CCF774();
    LOBYTE(v19) = 5;
    sub_225CCF734();
    LOBYTE(v19) = 6;
    sub_225CCF734();
    LOBYTE(v19) = 7;
    sub_225CCF734();
    v15 = v3[16];
    v19 = v3[15];
    v20 = v15;
    v22 = 8;
    sub_2259CB6FC(v19, v15);
    sub_225CCF774();
    sub_2259B97A8(v19, v20);
    v16 = v3[18];
    v19 = v3[17];
    v20 = v16;
    v22 = 9;
    sub_2259CB6FC(v19, v16);
    sub_225CCF774();
    sub_2259B97A8(v19, v20);
    v17 = type metadata accessor for VICALCertificateInfo(0);
    LOBYTE(v19) = 10;
    sub_225CCD0B4();
    sub_225A9462C(&qword_27D73BE18, MEMORY[0x277CC9578]);
    sub_225CCF774();
    LOBYTE(v19) = 11;
    sub_225CCF774();
    v19 = *(v3 + *(v17 + 64));
    v22 = 12;
    sub_225A95088(v19);
    sub_225A9604C();
    sub_225CCF774();
    sub_225A960A0(v19);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_225A95FF8()
{
  result = qword_27D73BEA8;
  if (!qword_27D73BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BEA8);
  }

  return result;
}

unint64_t sub_225A9604C()
{
  result = qword_27D73BEB0;
  if (!qword_27D73BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BEB0);
  }

  return result;
}

uint64_t sub_225A960A0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t VICALCertificateInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v32 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BEB8);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v12);
  v14 = v32 - v13;
  v15 = type metadata accessor for VICALCertificateInfo(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_225A95FF8();
  v38 = v14;
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v40);
  }

  v33 = v8;
  v34 = v11;
  v20 = v37;
  v35 = v18;
  v43 = 0;
  sub_2259D94A8();
  sub_225CCF6E4();
  v21 = v35;
  *v35 = v41;
  v43 = 1;
  sub_225A9563C();
  sub_225CCF6E4();
  v22 = v42;
  *(v21 + 1) = v41;
  *(v21 + 4) = v22;
  v43 = 2;
  v32[1] = 0;
  sub_225CCF6E4();
  *(v21 + 40) = v41;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  v43 = 3;
  sub_225A325B0(&qword_281059B18);
  v32[0] = v23;
  sub_225CCF6E4();
  *(v21 + 7) = v41;
  v43 = 4;
  sub_225CCF674();
  *(v21 + 8) = v41;
  LOBYTE(v41) = 5;
  *(v21 + 9) = sub_225CCF624();
  *(v21 + 10) = v24;
  LOBYTE(v41) = 6;
  *(v21 + 11) = sub_225CCF624();
  *(v21 + 12) = v25;
  LOBYTE(v41) = 7;
  v26 = sub_225CCF624();
  v27 = v35;
  *(v35 + 13) = v26;
  *(v27 + 14) = v28;
  v43 = 8;
  sub_225CCF674();
  *(v35 + 120) = v41;
  v43 = 9;
  sub_225CCF674();
  *(v35 + 136) = v41;
  sub_225CCD0B4();
  LOBYTE(v41) = 10;
  sub_225A9462C(&qword_27D73BE48, MEMORY[0x277CC9578]);
  sub_225CCF674();
  sub_225A94CFC(v34, &v35[v15[14]]);
  LOBYTE(v41) = 11;
  sub_225CCF674();
  sub_225A94CFC(v33, &v35[v15[15]]);
  v43 = 12;
  sub_225A969D8();
  sub_225CCF674();
  (*(v20 + 8))(v38, v39);
  v30 = v35;
  v29 = v36;
  *&v35[v15[16]] = v41;
  sub_225A96A2C(v30, v29, type metadata accessor for VICALCertificateInfo);
  __swift_destroy_boxed_opaque_existential_0(v40);
  return sub_225A96A94(v30, type metadata accessor for VICALCertificateInfo);
}

unint64_t sub_225A969D8()
{
  result = qword_27D73BEC0;
  if (!qword_27D73BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BEC0);
  }

  return result;
}

uint64_t sub_225A96A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A96A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_225A96B4C()
{
  sub_225CCD0B4();
  if (v0 <= 0x3F)
  {
    sub_225A96F58(319, &qword_27D73BED8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_225A96C9C(319, &qword_28105B788, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_225A96C9C(319, &qword_27D73BEE0, type metadata accessor for VICALCertificateInfo, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_225A96C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_225A96D28()
{
  sub_225A96F58(319, &qword_27D73BEF8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_225A96EF4();
    if (v1 <= 0x3F)
    {
      sub_225A96F58(319, &qword_281059B50, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_225A96F58(319, &qword_28105B790, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_225A96C9C(319, &qword_28105B788, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_225A96F58(319, &qword_27D73BF08, &type metadata for VICALCertificateInfo.Extensions, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_225A96EF4()
{
  if (!qword_27D73BF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73DCB0);
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73BF00);
    }
  }
}

void sub_225A96F58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_225A96FB4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_225A97010(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for VICALCertificateInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VICALCertificateInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_225A971E4()
{
  result = qword_27D73BF10;
  if (!qword_27D73BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF10);
  }

  return result;
}

unint64_t sub_225A9723C()
{
  result = qword_27D73BF18;
  if (!qword_27D73BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF18);
  }

  return result;
}

unint64_t sub_225A97294()
{
  result = qword_27D73BF20;
  if (!qword_27D73BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF20);
  }

  return result;
}

unint64_t sub_225A972EC()
{
  result = qword_27D73BF28;
  if (!qword_27D73BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF28);
  }

  return result;
}

unint64_t sub_225A97344()
{
  result = qword_27D73BF30;
  if (!qword_27D73BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF30);
  }

  return result;
}

unint64_t sub_225A9739C()
{
  result = qword_27D73BF38;
  if (!qword_27D73BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF38);
  }

  return result;
}

unint64_t sub_225A973F4()
{
  result = qword_27D73BF40;
  if (!qword_27D73BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF40);
  }

  return result;
}

unint64_t sub_225A9744C()
{
  result = qword_27D73BF48;
  if (!qword_27D73BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF48);
  }

  return result;
}

unint64_t sub_225A974A4()
{
  result = qword_27D73BF50;
  if (!qword_27D73BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF50);
  }

  return result;
}

uint64_t sub_225A974F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F72506C61636976 && a2 == 0xED00007265646976 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7373496C61636976 && a2 == 0xED00004449726575 || (sub_225CCF934() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616470557478656ELL && a2 == 0xEA00000000006574 || (sub_225CCF934() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225D1B3C0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_225A97714()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(uint64_t a1)
{
  v28 = sub_225CCCD84();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_225CCD1C4();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v25 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v25 - v19;
  v30 = a1;
  sub_225CCD164();
  v25 = sub_225A84D38();
  sub_225CCCBB4();
  v31 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCC0);
  sub_2259D8B24(&qword_27D73BCC8, &qword_27D73BCC0);
  sub_225CCCD64();
  MEMORY[0x22AA6B410](v4, v8);
  (*(v26 + 8))(v4, v28);
  v21 = *(v9 + 8);
  v21(v13, v8);
  sub_225CCD134();
  MEMORY[0x22AA6B400](v7, v8);
  (*(v27 + 8))(v7, v29);
  v21(v17, v8);
  sub_2259D8B24(&qword_27D73BCD0, &qword_27D73BCA0);
  sub_225CCF084();
  v21(v20, v8);
  v22 = v31;
  v23 = v32;
  v31 = 0x7265766F5F656761;
  v32 = 0xE90000000000005FLL;
  MEMORY[0x22AA6CE70](v22, v23);

  return v31;
}

uint64_t sub_225A97B38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BF60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_225CDD730;
  *(v0 + 32) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(0);
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(1);
  *(v0 + 64) = v2;
  *(v0 + 72) = 1;
  *(v0 + 80) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(2);
  *(v0 + 88) = v3;
  *(v0 + 96) = 2;
  *(v0 + 104) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(3);
  *(v0 + 112) = v4;
  *(v0 + 120) = 3;
  *(v0 + 128) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(4);
  *(v0 + 136) = v5;
  *(v0 + 144) = 4;
  *(v0 + 152) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(5);
  *(v0 + 160) = v6;
  *(v0 + 168) = 5;
  *(v0 + 176) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(6);
  *(v0 + 184) = v7;
  *(v0 + 192) = 6;
  *(v0 + 200) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(7);
  *(v0 + 208) = v8;
  *(v0 + 216) = 7;
  *(v0 + 224) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(8);
  *(v0 + 232) = v9;
  *(v0 + 240) = 8;
  *(v0 + 248) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(9);
  *(v0 + 256) = v10;
  *(v0 + 264) = 9;
  *(v0 + 272) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(10);
  *(v0 + 280) = v11;
  *(v0 + 288) = 10;
  *(v0 + 296) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(11);
  *(v0 + 304) = v12;
  *(v0 + 312) = 11;
  *(v0 + 320) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(12);
  *(v0 + 328) = v13;
  *(v0 + 336) = 12;
  *(v0 + 344) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(13);
  *(v0 + 352) = v14;
  *(v0 + 360) = 13;
  *(v0 + 368) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(14);
  *(v0 + 376) = v15;
  *(v0 + 384) = 14;
  *(v0 + 392) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(15);
  *(v0 + 400) = v16;
  *(v0 + 408) = 15;
  *(v0 + 416) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(16);
  *(v0 + 424) = v17;
  *(v0 + 432) = 16;
  *(v0 + 440) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(17);
  *(v0 + 448) = v18;
  *(v0 + 456) = 17;
  *(v0 + 464) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(18);
  *(v0 + 472) = v19;
  *(v0 + 480) = 18;
  *(v0 + 488) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(19);
  *(v0 + 496) = v20;
  *(v0 + 504) = 19;
  *(v0 + 512) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(20);
  *(v0 + 520) = v21;
  *(v0 + 528) = 20;
  *(v0 + 536) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(21);
  *(v0 + 544) = v22;
  *(v0 + 552) = 21;
  *(v0 + 560) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(22);
  *(v0 + 568) = v23;
  *(v0 + 576) = 22;
  *(v0 + 584) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(23);
  *(v0 + 592) = v24;
  *(v0 + 600) = 23;
  *(v0 + 608) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(24);
  *(v0 + 616) = v25;
  *(v0 + 624) = 24;
  *(v0 + 632) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(25);
  *(v0 + 640) = v26;
  *(v0 + 648) = 25;
  *(v0 + 656) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(26);
  *(v0 + 664) = v27;
  *(v0 + 672) = 26;
  *(v0 + 680) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(27);
  *(v0 + 688) = v28;
  *(v0 + 696) = 27;
  *(v0 + 704) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(28);
  *(v0 + 712) = v29;
  *(v0 + 720) = 28;
  *(v0 + 728) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(29);
  *(v0 + 736) = v30;
  *(v0 + 744) = 29;
  *(v0 + 752) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(30);
  *(v0 + 760) = v31;
  *(v0 + 768) = 30;
  *(v0 + 776) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(31);
  *(v0 + 784) = v32;
  *(v0 + 792) = 31;
  *(v0 + 800) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(32);
  *(v0 + 808) = v33;
  *(v0 + 816) = 32;
  *(v0 + 824) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(33);
  *(v0 + 832) = v34;
  *(v0 + 840) = 33;
  *(v0 + 848) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(34);
  *(v0 + 856) = v35;
  *(v0 + 864) = 34;
  *(v0 + 872) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(35);
  *(v0 + 880) = v36;
  *(v0 + 888) = 35;
  *(v0 + 896) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(36);
  *(v0 + 904) = v37;
  *(v0 + 912) = 36;
  *(v0 + 920) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(37);
  *(v0 + 928) = v38;
  *(v0 + 936) = 37;
  *(v0 + 944) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(38);
  *(v0 + 952) = v39;
  *(v0 + 960) = 38;
  *(v0 + 968) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(39);
  *(v0 + 976) = v40;
  *(v0 + 984) = 39;
  *(v0 + 992) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(40);
  *(v0 + 1000) = v41;
  *(v0 + 1008) = 40;
  *(v0 + 1016) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(41);
  *(v0 + 1024) = v42;
  *(v0 + 1032) = 41;
  *(v0 + 1040) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(42);
  *(v0 + 1048) = v43;
  *(v0 + 1056) = 42;
  *(v0 + 1064) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(43);
  *(v0 + 1072) = v44;
  *(v0 + 1080) = 43;
  *(v0 + 1088) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(44);
  *(v0 + 1096) = v45;
  *(v0 + 1104) = 44;
  *(v0 + 1112) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(45);
  *(v0 + 1120) = v46;
  *(v0 + 1128) = 45;
  *(v0 + 1136) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(46);
  *(v0 + 1144) = v47;
  *(v0 + 1152) = 46;
  *(v0 + 1160) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(47);
  *(v0 + 1168) = v48;
  *(v0 + 1176) = 47;
  *(v0 + 1184) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(48);
  *(v0 + 1192) = v49;
  *(v0 + 1200) = 48;
  *(v0 + 1208) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(49);
  *(v0 + 1216) = v50;
  *(v0 + 1224) = 49;
  *(v0 + 1232) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(50);
  *(v0 + 1240) = v51;
  *(v0 + 1248) = 50;
  *(v0 + 1256) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(51);
  *(v0 + 1264) = v52;
  *(v0 + 1272) = 51;
  *(v0 + 1280) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(52);
  *(v0 + 1288) = v53;
  *(v0 + 1296) = 52;
  *(v0 + 1304) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(53);
  *(v0 + 1312) = v54;
  *(v0 + 1320) = 53;
  *(v0 + 1328) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(54);
  *(v0 + 1336) = v55;
  *(v0 + 1344) = 54;
  *(v0 + 1352) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(55);
  *(v0 + 1360) = v56;
  *(v0 + 1368) = 55;
  *(v0 + 1376) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(56);
  *(v0 + 1384) = v57;
  *(v0 + 1392) = 56;
  *(v0 + 1400) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(57);
  *(v0 + 1408) = v58;
  *(v0 + 1416) = 57;
  *(v0 + 1424) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(58);
  *(v0 + 1432) = v59;
  *(v0 + 1440) = 58;
  *(v0 + 1448) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(59);
  *(v0 + 1456) = v60;
  *(v0 + 1464) = 59;
  *(v0 + 1472) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(60);
  *(v0 + 1480) = v61;
  *(v0 + 1488) = 60;
  *(v0 + 1496) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(61);
  *(v0 + 1504) = v62;
  *(v0 + 1512) = 61;
  *(v0 + 1520) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(62);
  *(v0 + 1528) = v63;
  *(v0 + 1536) = 62;
  *(v0 + 1544) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(63);
  *(v0 + 1552) = v64;
  *(v0 + 1560) = 63;
  *(v0 + 1568) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(64);
  *(v0 + 1576) = v65;
  *(v0 + 1584) = 64;
  *(v0 + 1592) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(65);
  *(v0 + 1600) = v66;
  *(v0 + 1608) = 65;
  *(v0 + 1616) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(66);
  *(v0 + 1624) = v67;
  *(v0 + 1632) = 66;
  *(v0 + 1640) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(67);
  *(v0 + 1648) = v68;
  *(v0 + 1656) = 67;
  *(v0 + 1664) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(68);
  *(v0 + 1672) = v69;
  *(v0 + 1680) = 68;
  *(v0 + 1688) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(69);
  *(v0 + 1696) = v70;
  *(v0 + 1704) = 69;
  *(v0 + 1712) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(70);
  *(v0 + 1720) = v71;
  *(v0 + 1728) = 70;
  *(v0 + 1736) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(71);
  *(v0 + 1744) = v72;
  *(v0 + 1752) = 71;
  *(v0 + 1760) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(72);
  *(v0 + 1768) = v73;
  *(v0 + 1776) = 72;
  *(v0 + 1784) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(73);
  *(v0 + 1792) = v74;
  *(v0 + 1800) = 73;
  *(v0 + 1808) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(74);
  *(v0 + 1816) = v75;
  *(v0 + 1824) = 74;
  *(v0 + 1832) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(75);
  *(v0 + 1840) = v76;
  *(v0 + 1848) = 75;
  *(v0 + 1856) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(76);
  *(v0 + 1864) = v77;
  *(v0 + 1872) = 76;
  *(v0 + 1880) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(77);
  *(v0 + 1888) = v78;
  *(v0 + 1896) = 77;
  *(v0 + 1904) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(78);
  *(v0 + 1912) = v79;
  *(v0 + 1920) = 78;
  *(v0 + 1928) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(79);
  *(v0 + 1936) = v80;
  *(v0 + 1944) = 79;
  *(v0 + 1952) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(80);
  *(v0 + 1960) = v81;
  *(v0 + 1968) = 80;
  *(v0 + 1976) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(81);
  *(v0 + 1984) = v82;
  *(v0 + 1992) = 81;
  *(v0 + 2000) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(82);
  *(v0 + 2008) = v83;
  *(v0 + 2016) = 82;
  *(v0 + 2024) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(83);
  *(v0 + 2032) = v84;
  *(v0 + 2040) = 83;
  *(v0 + 2048) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(84);
  *(v0 + 2056) = v85;
  *(v0 + 2064) = 84;
  *(v0 + 2072) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(85);
  *(v0 + 2080) = v86;
  *(v0 + 2088) = 85;
  *(v0 + 2096) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(86);
  *(v0 + 2104) = v87;
  *(v0 + 2112) = 86;
  *(v0 + 2120) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(87);
  *(v0 + 2128) = v88;
  *(v0 + 2136) = 87;
  *(v0 + 2144) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(88);
  *(v0 + 2152) = v89;
  *(v0 + 2160) = 88;
  *(v0 + 2168) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(89);
  *(v0 + 2176) = v90;
  *(v0 + 2184) = 89;
  *(v0 + 2192) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(90);
  *(v0 + 2200) = v91;
  *(v0 + 2208) = 90;
  *(v0 + 2216) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(91);
  *(v0 + 2224) = v92;
  *(v0 + 2232) = 91;
  *(v0 + 2240) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(92);
  *(v0 + 2248) = v93;
  *(v0 + 2256) = 92;
  *(v0 + 2264) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(93);
  *(v0 + 2272) = v94;
  *(v0 + 2280) = 93;
  *(v0 + 2288) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(94);
  *(v0 + 2296) = v95;
  *(v0 + 2304) = 94;
  *(v0 + 2312) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(95);
  *(v0 + 2320) = v96;
  *(v0 + 2328) = 95;
  *(v0 + 2336) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(96);
  *(v0 + 2344) = v97;
  *(v0 + 2352) = 96;
  *(v0 + 2360) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(97);
  *(v0 + 2368) = v98;
  *(v0 + 2376) = 97;
  *(v0 + 2384) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(98);
  *(v0 + 2392) = v99;
  *(v0 + 2400) = 98;
  *(v0 + 2408) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(99);
  *(v0 + 2416) = v100;
  *(v0 + 2424) = 99;
  *(v0 + 2432) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(100);
  *(v0 + 2440) = v101;
  *(v0 + 2448) = 100;
  *(v0 + 2456) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(101);
  *(v0 + 2464) = v102;
  *(v0 + 2472) = 101;
  *(v0 + 2480) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(102);
  *(v0 + 2488) = v103;
  *(v0 + 2496) = 102;
  *(v0 + 2504) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(103);
  *(v0 + 2512) = v104;
  *(v0 + 2520) = 103;
  *(v0 + 2528) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(104);
  *(v0 + 2536) = v105;
  *(v0 + 2544) = 104;
  *(v0 + 2552) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(105);
  *(v0 + 2560) = v106;
  *(v0 + 2568) = 105;
  *(v0 + 2576) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(106);
  *(v0 + 2584) = v107;
  *(v0 + 2592) = 106;
  *(v0 + 2600) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(107);
  *(v0 + 2608) = v108;
  *(v0 + 2616) = 107;
  *(v0 + 2624) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(108);
  *(v0 + 2632) = v109;
  *(v0 + 2640) = 108;
  *(v0 + 2648) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(109);
  *(v0 + 2656) = v110;
  *(v0 + 2664) = 109;
  *(v0 + 2672) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(110);
  *(v0 + 2680) = v111;
  *(v0 + 2688) = 110;
  *(v0 + 2696) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(111);
  *(v0 + 2704) = v112;
  *(v0 + 2712) = 111;
  *(v0 + 2720) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(112);
  *(v0 + 2728) = v113;
  *(v0 + 2736) = 112;
  *(v0 + 2744) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(113);
  *(v0 + 2752) = v114;
  *(v0 + 2760) = 113;
  *(v0 + 2768) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(114);
  *(v0 + 2776) = v115;
  *(v0 + 2784) = 114;
  *(v0 + 2792) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(115);
  *(v0 + 2800) = v116;
  *(v0 + 2808) = 115;
  *(v0 + 2816) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(116);
  *(v0 + 2824) = v117;
  *(v0 + 2832) = 116;
  *(v0 + 2840) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(117);
  *(v0 + 2848) = v118;
  *(v0 + 2856) = 117;
  *(v0 + 2864) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(118);
  *(v0 + 2872) = v119;
  *(v0 + 2880) = 118;
  *(v0 + 2888) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(119);
  *(v0 + 2896) = v120;
  *(v0 + 2904) = 119;
  *(v0 + 2912) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(120);
  *(v0 + 2920) = v121;
  *(v0 + 2928) = 120;
  *(v0 + 2936) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(121);
  *(v0 + 2944) = v122;
  *(v0 + 2952) = 121;
  *(v0 + 2960) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(122);
  *(v0 + 2968) = v123;
  *(v0 + 2976) = 122;
  *(v0 + 2984) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(123);
  *(v0 + 2992) = v124;
  *(v0 + 3000) = 123;
  *(v0 + 3008) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(124);
  *(v0 + 3016) = v125;
  *(v0 + 3024) = 124;
  *(v0 + 3032) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(125);
  *(v0 + 3040) = v126;
  *(v0 + 3048) = 125;
  v127 = sub_225B2DC84(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BF68);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27D73BF58 = v127;
  return result;
}

unint64_t ISO18013KnownNamespaces.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x2E6F73692E67726FLL;
  v3 = 0xD000000000000012;
  if (v1 != 3)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000011;
  if (*v0)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t ISO23220_1_ElementIdentifier.rawValue.getter()
{
  result = 0x795F6E695F656761;
  switch(*v0)
  {
    case 1:
      v2 = 0x5F6874726962;
      goto LABEL_16;
    case 2:
      result = 7890291;
      break;
    case 3:
    case 0x10:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x747269625F656761;
      break;
    case 8:
      result = 0x616C706874726962;
      break;
    case 9:
      result = 0x5F74615F656D616ELL;
      break;
    case 0xA:
      result = 0x7469617274726F70;
      break;
    case 0xB:
    case 0x13:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0x746E656D75636F64;
      break;
    case 0xD:
      v2 = 0x5F6575737369;
LABEL_16:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6164000000000000;
      break;
    case 0xE:
      result = 0x645F797269707865;
      break;
    case 0xF:
      result = 0xD000000000000019;
      break;
    case 0x11:
      result = 0x5F676E6975737369;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x14:
    case 0x15:
      result = 0xD000000000000014;
      break;
    case 0x16:
      result = 0xD000000000000010;
      break;
    case 0x17:
      result = 0x6C616E6F6974616ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t ISO23220_1_Japan_ElementIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x63696E755F786573;
  v3 = 0xD000000000000019;
  if (v1 != 5)
  {
    v3 = 0x7469617274726F70;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000016;
  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t ISO18013_5_1_ElementIdentifier.rawValue.getter()
{
  result = 0x616E5F6E65766967;
  switch(*v0)
  {
    case 1:
      return 0x6E5F796C696D6166;
    case 2:
      v2 = 0x5F6874726962;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6164000000000000;
    case 3:
      v2 = 0x5F6575737369;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6164000000000000;
    case 4:
      return 0x645F797269707865;
    case 5:
      return 0x5F676E6975737369;
    case 6:
      return 0xD000000000000011;
    case 7:
      return 0x746E656D75636F64;
    case 8:
      return 0x7469617274726F70;
    case 9:
      return 0xD000000000000012;
    case 0xA:
      return 0xD000000000000016;
    case 0xB:
    case 0x13:
      return 0xD000000000000015;
    case 0xC:
      return 7890291;
    case 0xD:
      return 0x746867696568;
    case 0xE:
      return 0x746867696577;
    case 0xF:
      return 0x6F6C6F635F657965;
    case 0x10:
      return 0x6C6F635F72696168;
    case 0x11:
      return 0x6C705F6874726962;
    case 0x12:
    case 0x1B:
      return 0xD000000000000010;
    case 0x14:
      return 0x795F6E695F656761;
    case 0x15:
      return 0x747269625F656761;
    case 0x16:
      return 0xD000000000000014;
    case 0x17:
      return 0x6C616E6F6974616ELL;
    case 0x18:
    case 0x19:
      return 0x746E656469736572;
    case 0x1A:
      return 0xD000000000000014;
    case 0x1C:
      v3 = 10;
      goto LABEL_29;
    case 0x1D:
      v3 = 9;
LABEL_29:
      result = v3 | 0xD000000000000014;
      break;
    case 0x1E:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t ISO18013_5_1_DrivingPrivilegeIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x61645F6575737369;
  v3 = 1852270963;
  if (v1 != 5)
  {
    v3 = 0x65756C6176;
  }

  v4 = 0x7365646F63;
  if (v1 != 3)
  {
    v4 = 1701080931;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x645F797269707865;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

unint64_t ISO18013_AAMVA_ElementIdentifier.rawValue.getter()
{
  result = 0x6675735F656D616ELL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x6F645F6E6167726FLL;
      break;
    case 3:
      result = 0x6E617265746576;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
    case 0x10:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x696D61665F616B61;
      break;
    case 7:
    case 0x15:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x657669675F616B61;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
      result = 0x666675735F616B61;
      break;
    case 0xB:
      result = 0x725F746867696577;
      break;
    case 0xC:
      result = 0x6874655F65636172;
      break;
    case 0xD:
      result = 7890291;
      break;
    case 0xE:
      result = 0x616E5F7473726966;
      break;
    case 0xF:
      result = 0x6E5F656C6464696DLL;
      break;
    case 0x11:
      result = 0xD000000000000017;
      break;
    case 0x12:
      result = 0x646572635F4C4445;
      break;
    case 0x13:
      result = 0x706D6F635F534844;
      break;
    case 0x14:
      result = 0x746E656469736572;
      break;
    case 0x16:
      result = 0xD000000000000022;
      break;
    case 0x17:
      result = 0x69646E695F4C4443;
      break;
    case 0x18:
      result = 0xD000000000000011;
      break;
    case 0x19:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0xD00000000000001BLL;
    if (v1 != 3)
    {
      v7 = 0xD000000000000022;
    }

    if (v1 == 2)
    {
      v7 = 0xD00000000000001DLL;
    }

    v8 = 0xD000000000000016;
    if (*v0)
    {
      v8 = 0xD00000000000001DLL;
    }

    if (*v0 <= 1u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x61645F6575737369;
    v3 = 0xD000000000000028;
    v4 = 0xD000000000000021;
    if (v1 == 9)
    {
      v5 = 0xD000000000000021;
    }

    else
    {
      v5 = 0xD000000000000028;
    }

    if (v1 != 8)
    {
      v3 = v5;
    }

    if (v1 == 6)
    {
      v4 = 0x645F797269707865;
    }

    if (v1 != 5)
    {
      v2 = v4;
    }

    if (*v0 <= 7u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t ISO23220_PhotoID_1_ElementIdentifier.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x695F6E6F73726570;
    v7 = 0x74735F6874726962;
    if (v1 != 2)
    {
      v7 = 0x69635F6874726962;
    }

    if (*v0)
    {
      v6 = 0x6F635F6874726962;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    v3 = 0x746E656469736572;
    if (v1 == 7)
    {
      v3 = 0xD000000000000016;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000015;
    if (v1 != 4)
    {
      v4 = 0x746E656469736572;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

CoreIDVShared::ISO18013KnownDocTypes_optional __swiftcall ISO18013KnownDocTypes.init(rawValue:)(Swift::String rawValue)
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

unint64_t ISO18013KnownDocTypes.rawValue.getter()
{
  v1 = 0xD000000000000017;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_225A996B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "org.iso.18013.5.1.mDL";
  v4 = 0xD000000000000017;
  if (v2 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (v2 == 1)
  {
    v6 = "org.iso.18013.5.1.mDL";
  }

  else
  {
    v6 = "org.iso.23220.1.jp.mnc";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "efore";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v3 = "org.iso.23220.1.jp.mnc";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "efore";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A99784()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A9981C()
{
  sub_225CCE5B4();
}

uint64_t sub_225A998A0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225A99940(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = "org.iso.18013.5.1.mDL";
  v4 = 0xD000000000000017;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v3 = "org.iso.23220.1.jp.mnc";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "efore";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

CoreIDVShared::ISO18013KnownNamespaces_optional __swiftcall ISO18013KnownNamespaces.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_225A99AC0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A99BB8()
{
  sub_225CCE5B4();
}

uint64_t sub_225A99C9C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225A99D9C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF312E3032323332;
  v4 = 0x2E6F73692E67726FLL;
  v5 = 0x8000000225D0ACF0;
  v6 = 0xD000000000000012;
  if (v2 != 3)
  {
    v6 = 0xD000000000000017;
    v5 = 0x8000000225D0AC80;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x8000000225D0ACA0;
  v8 = 0xD000000000000011;
  if (*v1)
  {
    v8 = 0xD000000000000017;
    v7 = 0x8000000225D0ACC0;
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v7;
  }

  *a1 = v9;
  a1[1] = v3;
}

CoreIDVShared::ISO18013_5_1_ElementIdentifier_optional __swiftcall ISO18013_5_1_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCFA64();

  v5 = 0;
  v6 = 13;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
LABEL_25:
      v6 = v5;
      break;
    case 13:
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
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    default:
      v6 = 31;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_225A9A04C@<X0>(unint64_t *a1@<X8>)
{
  result = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreIDVShared::ISO18013_5_1_DrivingPrivilegeIdentifier_optional __swiftcall ISO18013_5_1_DrivingPrivilegeIdentifier.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_225A9A100()
{
  sub_225CCE5B4();
}

void sub_225A9A218(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006574;
  v4 = 0x61645F6575737369;
  v5 = 0xE400000000000000;
  v6 = 1852270963;
  v7 = 0xE500000000000000;
  if (v2 != 5)
  {
    v6 = 0x65756C6176;
    v5 = 0xE500000000000000;
  }

  v8 = 0x7365646F63;
  if (v2 != 3)
  {
    v8 = 1701080931;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x645F797269707865;
    v3 = 0xEB00000000657461;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x8000000225D0AF50;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

CoreIDVShared::ISO18013_AAMVA_ElementIdentifier_optional __swiftcall ISO18013_AAMVA_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
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

unint64_t sub_225A9A4CC@<X0>(unint64_t *a1@<X8>)
{
  result = ISO18013_AAMVA_ElementIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreIDVShared::ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier_optional __swiftcall ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_225A9A5B0@<X0>(uint64_t *a1@<X8>)
{
  result = ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_225A9A5DC(uint64_t a1, uint64_t a2)
{
  if (qword_27D739F30 != -1)
  {
    v4 = a1;
    v5 = a2;
    swift_once();
    a1 = v4;
    a2 = v5;
  }

  if (*(off_27D73BF58 + 2))
  {
    sub_2259F18D4(a1, a2);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_225A9A660(uint64_t a1, uint64_t a2)
{
  if (qword_27D739F30 != -1)
  {
    v6 = a1;
    v7 = a2;
    swift_once();
    a1 = v6;
    a2 = v7;
  }

  v2 = off_27D73BF58;
  if (*(off_27D73BF58 + 2) && (v3 = sub_2259F18D4(a1, a2), (v4 & 1) != 0))
  {
    return *(v2[7] + 8 * v3);
  }

  else
  {
    return 0;
  }
}

CoreIDVShared::ISO23220_1_ElementIdentifier_optional __swiftcall ISO23220_1_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCFA64();

  v5 = 0;
  v6 = 6;
  switch(v3)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
LABEL_18:
      v6 = v5;
      break;
    case 6:
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
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
    default:
      v6 = 24;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_225A9A864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A9A924(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_225CCFBD4();
  a3(v4);
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A9A9AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  sub_225CCE5B4();
}

uint64_t sub_225A9AA2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_225CCFBD4();
  a4(v5);
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A9AAA4@<X0>(uint64_t *a1@<X8>)
{
  result = ISO23220_1_ElementIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreIDVShared::ISO23220_1_Japan_ElementIdentifier_optional __swiftcall ISO23220_1_Japan_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_225A9AB68()
{
  sub_225CCE5B4();
}

void sub_225A9AC9C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000065646FLL;
  v4 = 0x63696E755F786573;
  v5 = 0x8000000225D0B4D0;
  v6 = 0xD000000000000019;
  if (v2 != 5)
  {
    v6 = 0x7469617274726F70;
    v5 = 0xE800000000000000;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000018;
    v3 = 0x8000000225D0B410;
  }

  if (*v1 > 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x8000000225D0B470;
  v8 = 0xD000000000000016;
  v9 = 0xD000000000000011;
  v10 = 0x8000000225D0B490;
  if (v2 != 1)
  {
    v9 = 0xD000000000000012;
    v10 = 0x8000000225D0B4B0;
  }

  if (*v1)
  {
    v8 = v9;
    v7 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v8;
  }

  else
  {
    v14 = v4;
  }

  if (v12 ^ v13 | v11)
  {
    v3 = v7;
  }

  *a1 = v14;
  a1[1] = v3;
}

CoreIDVShared::ISO23220_PhotoID_1_ElementIdentifier_optional __swiftcall ISO23220_PhotoID_1_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_225A9AE34(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_225CCFBD4();
  a3(v7, v5);
  return sub_225CCFC24();
}

uint64_t sub_225A9AEA4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_225CCFBD4();
  a4(v8, v6);
  return sub_225CCFC24();
}

unint64_t sub_225A9AEFC@<X0>(unint64_t *a1@<X8>)
{
  result = ISO23220_PhotoID_1_ElementIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_225A9AF38()
{
  result = qword_27D73BF70;
  if (!qword_27D73BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF70);
  }

  return result;
}

unint64_t sub_225A9AFC0()
{
  result = qword_27D73BF88;
  if (!qword_27D73BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF88);
  }

  return result;
}

unint64_t sub_225A9B018()
{
  result = qword_27D73BF90;
  if (!qword_27D73BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF90);
  }

  return result;
}

unint64_t sub_225A9B06C()
{
  result = qword_27D73BF98;
  if (!qword_27D73BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF98);
  }

  return result;
}

unint64_t sub_225A9B0EC()
{
  result = qword_27D73BFA0;
  if (!qword_27D73BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFA0);
  }

  return result;
}

unint64_t sub_225A9B140()
{
  result = qword_27D73BFA8;
  if (!qword_27D73BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFA8);
  }

  return result;
}

unint64_t sub_225A9B1C8()
{
  result = qword_27D73BFC0;
  if (!qword_27D73BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFC0);
  }

  return result;
}

unint64_t sub_225A9B220()
{
  result = qword_27D73BFC8;
  if (!qword_27D73BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFC8);
  }

  return result;
}

unint64_t sub_225A9B2A0()
{
  result = qword_27D73BFD0;
  if (!qword_27D73BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFD0);
  }

  return result;
}

unint64_t sub_225A9B2F4()
{
  result = qword_27D73BFD8;
  if (!qword_27D73BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFD8);
  }

  return result;
}

unint64_t sub_225A9B37C()
{
  result = qword_27D73BFF0;
  if (!qword_27D73BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFF0);
  }

  return result;
}

unint64_t sub_225A9B3D4()
{
  result = qword_27D73BFF8;
  if (!qword_27D73BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFF8);
  }

  return result;
}

unint64_t sub_225A9B454()
{
  result = qword_27D73C000;
  if (!qword_27D73C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C000);
  }

  return result;
}

unint64_t sub_225A9B4A8()
{
  result = qword_27D73C008;
  if (!qword_27D73C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C008);
  }

  return result;
}

unint64_t sub_225A9B530()
{
  result = qword_27D73C020;
  if (!qword_27D73C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C020);
  }

  return result;
}

unint64_t sub_225A9B5B0()
{
  result = qword_27D73C028;
  if (!qword_27D73C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C028);
  }

  return result;
}

unint64_t sub_225A9B604()
{
  result = qword_27D73C030;
  if (!qword_27D73C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C030);
  }

  return result;
}

unint64_t sub_225A9B68C()
{
  result = qword_27D73C048;
  if (!qword_27D73C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C048);
  }

  return result;
}

uint64_t sub_225A9B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_225A9B748()
{
  result = qword_27D73C050;
  if (!qword_27D73C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C050);
  }

  return result;
}

unint64_t sub_225A9B79C()
{
  result = qword_27D73C058;
  if (!qword_27D73C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C058);
  }

  return result;
}

uint64_t sub_225A9B820(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for ISO18013_5_1_ElementIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO18013_5_1_ElementIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DIPError.PropertyKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPError.PropertyKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ISO23220_1_ElementIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO23220_1_ElementIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ISO23220_PhotoID_1_ElementIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO23220_PhotoID_1_ElementIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_225A9BE18()
{
  result = qword_27D73C070;
  if (!qword_27D73C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C070);
  }

  return result;
}

uint64_t ISO18013DeviceAuthentication.docType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISO18013DeviceAuthentication() + 20));

  return v1;
}

uint64_t type metadata accessor for ISO18013DeviceAuthentication()
{
  result = qword_27D73C098;
  if (!qword_27D73C098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ISO18013DeviceAuthentication.deviceNamespaceBytes.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ISO18013DeviceAuthentication() + 24));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  sub_2259CB710(v4, v5);
}

__n128 ISO18013DeviceAuthentication.init(sessionTranscript:docType:deviceNamespaceBytes:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v14 = *a4;
  v8 = a4[1].n128_u64[0];
  v9 = a4[1].n128_u64[1];
  sub_225A9C018(a1, a5);
  v10 = type metadata accessor for ISO18013DeviceAuthentication();
  v11 = (a5 + *(v10 + 20));
  *v11 = a2;
  v11[1] = a3;
  v12 = (a5 + *(v10 + 24));
  result = v14;
  *v12 = v14;
  v12[1].n128_u64[0] = v8;
  v12[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_225A9C018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013SessionTranscript(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ISO18013DeviceAuthentication.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for ISO18013SessionTranscript(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ISO18013DeviceAuthentication();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v11;
  v23 = v7;
  __swift_mutable_project_boxed_opaque_existential_0(v27, v28);
  sub_225CCF874();

  __swift_mutable_project_boxed_opaque_existential_0(v27, v28);
  sub_225A9CAD4(&qword_27D73C078, type metadata accessor for ISO18013SessionTranscript);
  v12 = v23;
  sub_225CCF884();
  v13 = v12;
  v14 = v22;
  sub_225A9C018(v13, v22);
  __swift_mutable_project_boxed_opaque_existential_0(v27, v28);
  v15 = sub_225CCF874();
  v16 = (v14 + *(v8 + 20));
  *v16 = v15;
  v16[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C080);
  __swift_mutable_project_boxed_opaque_existential_0(v27, v28);
  sub_225A9C6B0(&qword_27D73C088);
  sub_225CCF884();
  v18 = v25;
  v19 = v26;
  v20 = v14 + *(v8 + 24);
  *v20 = v24;
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  __swift_destroy_boxed_opaque_existential_0(v27);
  sub_225A9C3BC(v14, v29, type metadata accessor for ISO18013DeviceAuthentication);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225A9C424(v14, type metadata accessor for ISO18013DeviceAuthentication);
}

uint64_t sub_225A9C3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A9C424(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ISO18013DeviceAuthentication.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v8, v9);
  sub_225CCF8B4();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v8, v9);
    type metadata accessor for ISO18013SessionTranscript(0);
    sub_225A9CAD4(&qword_27D73B048, type metadata accessor for ISO18013SessionTranscript);
    sub_225CCF8C4();
    v3 = type metadata accessor for ISO18013DeviceAuthentication();
    __swift_mutable_project_boxed_opaque_existential_0(v8, v9);
    sub_225CCF8B4();
    v4 = v1 + *(v3 + 24);
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    __swift_mutable_project_boxed_opaque_existential_0(v8, v9);
    sub_2259CB710(v5, v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C080);
    sub_225A9C6B0(&qword_27D73C090);
    sub_225CCF8C4();
    sub_2259BEF00(v5, v6);
  }

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_225A9C6B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C080);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_225A9C758()
{
  type metadata accessor for ISO18013SessionTranscript(319);
  if (v0 <= 0x3F)
  {
    sub_225A9C7E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_225A9C7E4()
{
  if (!qword_27D73C0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C0B0);
    sub_225A9C994(&qword_27D73C0B8, sub_225A9C8D8);
    sub_225A9C994(&qword_27D73C0D8, sub_225A9CA18);
    v0 = type metadata accessor for CBOREncodedCBOR();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73C0A8);
    }
  }
}

unint64_t sub_225A9C8D8()
{
  result = qword_27D73C0C0;
  if (!qword_27D73C0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C0C8);
    sub_225A9CAD4(&qword_27D73C0D0, type metadata accessor for AnyCodable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C0C0);
  }

  return result;
}

uint64_t sub_225A9C994(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C0B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225A9CA18()
{
  result = qword_27D73C0E0;
  if (!qword_27D73C0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C0C8);
    sub_225A9CAD4(&qword_27D73C0E8, type metadata accessor for AnyCodable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C0E0);
  }

  return result;
}

uint64_t sub_225A9CAD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225A9CB40()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CDE778[v1]);
  return sub_225CCFC24();
}

uint64_t sub_225A9CBC8()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CDE778[v1]);
  return sub_225CCFC24();
}

_BYTE *sub_225A9CC14@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result >= 7uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010303030300uLL >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_225A9CC5C()
{
  v1 = 0x6E496E696769726FLL;
  if (*v0 != 1)
  {
    v1 = 0x696C696261706163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_225A9CCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A9E08C(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_225A9CD08@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x2010303030300uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_225A9CD34(uint64_t a1)
{
  v2 = sub_225A9D0EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A9CD70(uint64_t a1)
{
  v2 = sub_225A9D0EC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 ISO18013DeviceEngagement.version.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 ISO18013DeviceEngagement.version.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t ISO18013DeviceEngagement.originInfos.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void ISO18013DeviceEngagement.capabilities.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *(a1 + 2) = *(v1 + 26);
  *a1 = v2;
}

__int16 *ISO18013DeviceEngagement.capabilities.setter(__int16 *result)
{
  v2 = *result;
  *(v1 + 26) = *(result + 2);
  *(v1 + 24) = v2;
  return result;
}

__n128 ISO18013DeviceEngagement.init(version:originInfos:capabilities:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 2);
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a2;
  a4[1].n128_u8[10] = v5;
  a4[1].n128_u16[4] = v4;
  return result;
}

uint64_t ISO18013DeviceEngagement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C0F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v16 = v1[2];
  v20 = *(v1 + 26);
  v15 = *(v1 + 12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A9D0EC();
  sub_225CCFCE4();
  v18 = v9;
  v19 = v8;
  v21 = 0;
  sub_225A945D8();
  v10 = v17;
  sub_225CCF7E4();
  if (!v10)
  {
    v11 = v15;
    v12 = v20;
    v18 = v16;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C100);
    sub_225A9D420(&qword_27D73C108, &qword_27D73C0E8);
    sub_225CCF774();
    BYTE2(v18) = (v11 | (v12 << 16)) >> 16;
    LOWORD(v18) = v11;
    v21 = 2;
    sub_225A9D140();
    sub_225CCF774();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_225A9D0EC()
{
  result = qword_27D73C0F8;
  if (!qword_27D73C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C0F8);
  }

  return result;
}

unint64_t sub_225A9D140()
{
  result = qword_27D73C110;
  if (!qword_27D73C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C110);
  }

  return result;
}

uint64_t ISO18013DeviceEngagement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C118);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A9D0EC();
  sub_225CCFCA4();
  if (!v2)
  {
    v21 = 0;
    sub_225A94CA8();
    sub_225CCF6E4();
    v11 = v19;
    v10 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C100);
    v21 = 1;
    sub_225A9D420(&qword_27D73C120, &qword_27D73C0D0);
    sub_225CCF674();
    v18 = v10;
    v13 = v19;
    v21 = 2;
    sub_225A9D4EC();
    sub_225CCF674();
    (*(v6 + 8))(v9, v5);
    v14 = v19;
    v15 = BYTE2(v19);
    v16 = v18;
    *a2 = v11;
    *(a2 + 8) = v16;
    *(a2 + 16) = v13;
    *(a2 + 26) = v15;
    *(a2 + 24) = v14;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225A9D420(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C100);
    sub_225A9D4A8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225A9D4A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyCodable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225A9D4EC()
{
  result = qword_27D73C128;
  if (!qword_27D73C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C128);
  }

  return result;
}

uint64_t sub_225A9D570()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1 + 2);
  return sub_225CCFC24();
}

uint64_t sub_225A9D5E8()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1 + 2);
  return sub_225CCFC24();
}

_BYTE *sub_225A9D62C@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result >= 5uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x201000303uLL >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

unint64_t sub_225A9D668()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000027;
  }
}

uint64_t sub_225A9D6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A9E1AC(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_225A9D6F8@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x201000303uLL >> (8 * result);
  if (result >= 5)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_225A9D720(uint64_t a1)
{
  v2 = sub_225A9D9F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A9D75C(uint64_t a1)
{
  v2 = sub_225A9D9F4();

  return MEMORY[0x2821FE720](a1, v2);
}

CoreIDVShared::ISO18013DeviceEngagement::Capabilities __swiftcall ISO18013DeviceEngagement.Capabilities.init(isHandoverSessionEstablishmentSupported:isReaderAuthAllSupported:isExtendedRequestSupported:)(Swift::Bool_optional isHandoverSessionEstablishmentSupported, Swift::Bool_optional isReaderAuthAllSupported, Swift::Bool_optional isExtendedRequestSupported)
{
  v3->value = isHandoverSessionEstablishmentSupported.value;
  v3[1].value = isReaderAuthAllSupported.value;
  v3[2].value = isExtendedRequestSupported.value;
  result.isHandoverSessionEstablishmentSupported = isHandoverSessionEstablishmentSupported;
  return result;
}

uint64_t ISO18013DeviceEngagement.Capabilities.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C130);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - v7;
  v10[6] = *(v1 + 1);
  v10[3] = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A9D9F4();
  sub_225CCFCE4();
  v13 = 0;
  sub_225CCF744();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = 1;
  sub_225CCF744();
  v11 = 2;
  sub_225CCF744();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_225A9D9F4()
{
  result = qword_27D73C138;
  if (!qword_27D73C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C138);
  }

  return result;
}

uint64_t ISO18013DeviceEngagement.Capabilities.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C140);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A9D9F4();
  sub_225CCFCA4();
  if (!v2)
  {
    v17 = 0;
    v10 = sub_225CCF634();
    v16 = 1;
    v14 = sub_225CCF634();
    v15 = 2;
    v12 = sub_225CCF634();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    a2[1] = v14;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_225A9DC58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 27))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_225A9DCB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ISO18013DeviceEngagement.Capabilities(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO18013DeviceEngagement.Capabilities(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_225A9DE80()
{
  result = qword_27D73C148;
  if (!qword_27D73C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C148);
  }

  return result;
}

unint64_t sub_225A9DED8()
{
  result = qword_27D73C150;
  if (!qword_27D73C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C150);
  }

  return result;
}

unint64_t sub_225A9DF30()
{
  result = qword_27D73C158;
  if (!qword_27D73C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C158);
  }

  return result;
}

unint64_t sub_225A9DF88()
{
  result = qword_27D73C160;
  if (!qword_27D73C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C160);
  }

  return result;
}

unint64_t sub_225A9DFE0()
{
  result = qword_27D73C168;
  if (!qword_27D73C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C168);
  }

  return result;
}

unint64_t sub_225A9E038()
{
  result = qword_27D73C170;
  if (!qword_27D73C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C170);
  }

  return result;
}

uint64_t sub_225A9E08C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E496E696769726FLL && a2 == 0xEB00000000736F66 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

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

uint64_t sub_225A9E1AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000027 && 0x8000000225D1B420 == a2;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000225D1B450 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000225D1B470 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

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

char *computeISO18013Digest(algorithm:data:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v69 = sub_225CCE184();
  v64 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v7);
  v68 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCDBC4();
  v10 = *(v9 - 8);
  v65 = v9;
  v66 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v61 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_225CCE174();
  v60 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v13);
  v59 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_225CCDBB4();
  v63 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v15);
  v62 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_225CCE164();
  v56 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_225CCDBA4();
  v58 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  sub_225CCD424();
  swift_allocObject();
  sub_225CCD414();
  v70 = a2;
  v71 = a3;
  sub_2259D9454();
  v26 = sub_225CCD3E4();
  v28 = v27;

  v72 = v3;
  if (!v3)
  {
    v55 = v24;
    v30 = v67;
    v29 = v68;
    v31 = v69;
    if (v25)
    {
      if (v25 == 1)
      {
        sub_225A9F1B0(&qword_27D73AE60, MEMORY[0x277CC5550]);
        v32 = v59;
        v33 = v30;
        sub_225CCDB94();
        sub_2259CB710(v26, v28);
        sub_225A9EC88(v26, v28, v32);
        v34 = v26;
        sub_2259BEF00(v26, v28);
        v35 = v62;
        sub_225CCDB84();
        (*(v60 + 8))(v32, v33);
        sub_225A9F1B0(&qword_27D73AE68, MEMORY[0x277CC52C8]);
        v36 = v57;
        v37 = sub_225CCE154();
        v39 = sub_2259D732C(v37, v38);

        v20 = sub_2259D8490(v39);

        sub_2259BEF00(v34, v28);
        (*(v63 + 8))(v35, v36);
      }

      else
      {
        sub_225A9F1B0(&qword_27D73AE70, MEMORY[0x277CC5560]);
        sub_225CCDB94();
        sub_2259CB710(v26, v28);
        sub_225A9EEAC(v26, v28, v29);
        sub_2259BEF00(v26, v28);
        v48 = v61;
        sub_225CCDB84();
        (*(v64 + 8))(v29, v31);
        sub_225A9F1B0(&qword_27D73AE78, MEMORY[0x277CC52E8]);
        v49 = v65;
        v50 = sub_225CCE154();
        v52 = sub_2259D732C(v50, v51);

        v20 = sub_2259D8490(v52);

        sub_2259BEF00(v26, v28);
        (*(v66 + 8))(v48, v49);
      }
    }

    else
    {
      sub_225A9F1B0(&qword_27D73AE10, MEMORY[0x277CC5540]);
      sub_225CCDB94();
      v40 = v26;
      v41 = v26;
      v42 = v28;
      sub_2259CB710(v41, v28);
      sub_2259DB138(v40, v28);
      sub_2259BEF00(v40, v28);
      v43 = v55;
      sub_225CCDB84();
      (*(v56 + 8))(v20, v17);
      sub_225A9F1B0(&qword_27D73AE58, MEMORY[0x277CC5290]);
      v44 = v21;
      v45 = sub_225CCE154();
      v47 = sub_2259D732C(v45, v46);

      v20 = sub_2259D8490(v47);

      sub_2259BEF00(v40, v42);
      (*(v58 + 8))(v43, v44);
    }
  }

  return v20;
}

CoreIDVShared::ISO18013DigestAlgorithm_optional __swiftcall ISO18013DigestAlgorithm.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_225A9EB04(char *a1, char *a2)
{
  if (*&aSha256_2[8 * *a1] == *&aSha256_2[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_225CCF934();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_225A9EB6C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A9EBC8()
{
  sub_225CCE5B4();
}

uint64_t sub_225A9EC08()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A9EC88(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_225CCE174();
      sub_225A9F1B0(&qword_27D73AE60, MEMORY[0x277CC5550]);
      return sub_225CCDB74();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_225A9F0D0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5550], &qword_27D73AE60, MEMORY[0x277CC5550]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_225A9F0D0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5550], &qword_27D73AE60, MEMORY[0x277CC5550]);
  }

  sub_225CCE174();
  sub_225A9F1B0(&qword_27D73AE60, MEMORY[0x277CC5550]);
  return sub_225CCDB74();
}

uint64_t sub_225A9EEAC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_225CCE184();
      sub_225A9F1B0(&qword_27D73AE70, MEMORY[0x277CC5560]);
      return sub_225CCDB74();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_225A9F0D0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_27D73AE70, MEMORY[0x277CC5560]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_225A9F0D0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_27D73AE70, MEMORY[0x277CC5560]);
  }

  sub_225CCE184();
  sub_225A9F1B0(&qword_27D73AE70, MEMORY[0x277CC5560]);
  return sub_225CCDB74();
}

uint64_t sub_225A9F0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_225CCCA44();
  if (!result || (result = sub_225CCCA74(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_225CCCA64();
      a5(0);
      sub_225A9F1B0(a6, a7);
      return sub_225CCDB74();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_225A9F1B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_225A9F1FC()
{
  result = qword_27D73C178;
  if (!qword_27D73C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C178);
  }

  return result;
}

uint64_t ISO18013ReaderRequest.ItemsRequest.alternativeElements.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) >= 2uLL)
  {

    v3 = *(v2 + 16);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v2 = MEMORY[0x277D84F90];
  v3 = *(MEMORY[0x277D84F90] + 16);
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = v2 + 64;
  v6 = MEMORY[0x277D84F90];
  v55 = v2 + 64;
  v57 = v2;
  do
  {
    v7 = (v5 + 40 * v4);
    v8 = v4;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        result = sub_225CCFAC4();
        __break(1u);
        return result;
      }

      if (!*(v1 + 16))
      {
        goto LABEL_7;
      }

      v10 = *(v7 - 4);
      v9 = *(v7 - 3);
      v12 = *(v7 - 2);
      v11 = *(v7 - 1);
      v13 = *v7;

      v14 = sub_2259F18D4(v10, v9);
      if (v15)
      {
        if (*(*(*(v1 + 56) + 8 * v14) + 16))
        {
          break;
        }
      }

LABEL_6:

      v2 = v57;
LABEL_7:
      ++v8;
      v7 += 5;
      if (v3 == v8)
      {
        goto LABEL_23;
      }
    }

    sub_2259F18D4(v12, v11);
    if ((v16 & 1) == 0)
    {

      goto LABEL_6;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2259D53DC(0, *(v6 + 16) + 1, 1);
    }

    v17 = v12;
    v19 = *(v6 + 16);
    v18 = *(v6 + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      sub_2259D53DC((v18 > 1), v19 + 1, 1);
      v20 = v19 + 1;
      v17 = v12;
    }

    v4 = v8 + 1;
    *(v6 + 16) = v20;
    v21 = (v6 + 40 * v19);
    v21[4] = v10;
    v21[5] = v9;
    v21[6] = v17;
    v21[7] = v11;
    v21[8] = v13;
    v5 = v55;
    v2 = v57;
  }

  while (v3 - 1 != v8);
LABEL_23:

  v22 = sub_225B2DD80(MEMORY[0x277D84F90]);
  v51 = *(v6 + 16);
  if (v51)
  {
    v23 = 0;
    v50 = v6 + 32;
    v52 = v6;
    do
    {
      if (v23 >= *(v6 + 16))
      {
        goto LABEL_53;
      }

      v24 = (v50 + 40 * v23);
      v25 = v24[1];
      v58 = *v24;
      v26 = v24[3];
      v54 = v24[2];
      v27 = v24[4];
      ++v23;
      v28 = *(v27 + 16);
      swift_bridgeObjectRetain_n();
      v56 = v26;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v29 = 0;
      v30 = MEMORY[0x277D84F90];
      while (v28 != v29)
      {
        if (v29 >= *(v27 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v31 = *(v27 + 8 * v29++ + 32);
        if (*(v31 + 16))
        {
          v53 = v25;

          v32 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2259D53FC(0, *(v30 + 16) + 1, 1);
          }

          v34 = *(v30 + 16);
          v33 = *(v30 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_2259D53FC((v33 > 1), v34 + 1, 1);
          }

          *(v30 + 16) = v34 + 1;
          *(v30 + 8 * v34 + 32) = v31;
          v23 = v32;
          v25 = v53;
        }
      }

      if (!*(v30 + 16))
      {

        v30 = 0;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = sub_2259F18D4(v58, v25);
      v38 = v22[2];
      v39 = (v36 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        goto LABEL_54;
      }

      v41 = v36;
      if (v22[3] >= v40)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v36)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_225A44BBC();
          if (v41)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        sub_225A419D4(v40, isUniquelyReferenced_nonNull_native);
        v42 = sub_2259F18D4(v58, v25);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_56;
        }

        v37 = v42;
        if (v41)
        {
LABEL_25:

          goto LABEL_26;
        }
      }

      v44 = sub_225B2DD94(MEMORY[0x277D84F90]);
      v22[(v37 >> 6) + 8] |= 1 << v37;
      v45 = (v22[6] + 16 * v37);
      *v45 = v58;
      v45[1] = v25;
      *(v22[7] + 8 * v37) = v44;
      v46 = v22[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_55;
      }

      v22[2] = v48;
LABEL_26:
      sub_225A054B4(v30, v54, v56);

      v6 = v52;
    }

    while (v23 != v51);
  }

  return v22;
}

_OWORD *sub_225A9F748(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2259B9624(a4, (a5[7] + 32 * a1));
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

unint64_t sub_225A9F7B4(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_225A9F7FC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_225CCF454();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_2259B9624(a3, (a4[7] + 32 * a1));
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

uint64_t sub_225A9F8BC(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_2259A9C20(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_225A9F928(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (result >> 6) + 64) |= 1 << result;
  v4 = (*(a4 + 48) + 16 * result);
  *v4 = a2;
  v4[1] = a3;
  v5 = *(a4 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v7;
  }

  return result;
}

unint64_t sub_225A9F968(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

_OWORD *sub_225A9F9B8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2259B9624(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_225A9FA20(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_225A9FA68(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

uint64_t sub_225A9FAB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  sub_225A9FBA0(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8);
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

uint64_t sub_225A9FBA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ISO18013IssuerSignedItem.init(digestID:random:elementIdentifier:elementValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  v8 = a7 + *(type metadata accessor for ISO18013IssuerSignedItem() + 28);

  return sub_225A9FCA8(a6, v8);
}

uint64_t type metadata accessor for ISO18013IssuerSignedItem()
{
  result = qword_27D73C1B8;
  if (!qword_27D73C1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_225A9FCA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCodable();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ISO18013IssuerSignedItem.random.getter()
{
  v1 = *(v0 + 8);
  sub_2259CB710(v1, *(v0 + 16));
  return v1;
}

uint64_t ISO18013IssuerSignedItem.elementIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_225A9FDD0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A9FE9C()
{
  sub_225CCE5B4();
}

uint64_t sub_225A9FF54()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AA001C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AA1588();
  *a1 = result;
  return result;
}

void sub_225AA004C(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x4449747365676964;
  v4 = 0x8000000225D0B590;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x56746E656D656C65;
    v4 = 0xEC00000065756C61;
  }

  if (*v1)
  {
    v3 = 0x6D6F646E6172;
    v2 = 0xE600000000000000;
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

unint64_t sub_225AA00D4()
{
  v1 = 0x4449747365676964;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x56746E656D656C65;
  }

  if (*v0)
  {
    v1 = 0x6D6F646E6172;
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

uint64_t sub_225AA0158@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AA1588();
  *a1 = result;
  return result;
}

uint64_t sub_225AA0180(uint64_t a1)
{
  v2 = sub_225AA0A78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AA01BC(uint64_t a1)
{
  v2 = sub_225AA0A78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225AA0204()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AA0258()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AA02A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AA15D4();
  *a1 = result;
  return result;
}

uint64_t sub_225AA02D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AA15D4();
  *a1 = result;
  return result;
}

uint64_t sub_225AA0300(uint64_t a1)
{
  v2 = sub_225AA0960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AA033C(uint64_t a1)
{
  v2 = sub_225AA0960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013IssuerSignedItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C180);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v28 - v6;
  v33 = type metadata accessor for AnyCodable();
  v9 = MEMORY[0x28223BE20](v33, v8);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v32 = &v28 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C188);
  v35 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v28 - v15;
  v29 = type metadata accessor for ISO18013IssuerSignedItem();
  MEMORY[0x28223BE20](v29, v17);
  v34 = (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Decoder.codingKeyFormat.getter(&v40);
  v19 = v40;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v19 & 1) == 0)
  {
    sub_225AA0A78();
    sub_225CCFCA4();
    if (!v2)
    {
      LOBYTE(v38) = 0;
      v23 = sub_225CCF6D4();
      v22 = v34;
      *v34 = v23;
      v39 = 1;
      sub_2259D94A8();
      sub_225CCF6E4();
      *(v22 + 8) = v38;
      LOBYTE(v38) = 2;
      *(v22 + 24) = sub_225CCF684();
      *(v22 + 32) = v27;
      LOBYTE(v38) = 3;
      sub_225AA1254(&qword_27D73C0D0, type metadata accessor for AnyCodable);
      v26 = v32;
      sub_225CCF6E4();
      (*(v35 + 8))(v16, v13);
      goto LABEL_7;
    }

    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_225AA0960();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v38) = 0;
  v20 = v37;
  v21 = sub_225CCF6D4();
  v22 = v34;
  *v34 = v21;
  v39 = 1;
  sub_2259D94A8();
  sub_225CCF6E4();
  *(v22 + 8) = v38;
  LOBYTE(v38) = 2;
  *(v22 + 24) = sub_225CCF684();
  *(v22 + 32) = v25;
  LOBYTE(v38) = 3;
  sub_225AA1254(&qword_27D73C0D0, type metadata accessor for AnyCodable);
  v26 = v31;
  sub_225CCF6E4();
  (*(v36 + 8))(v7, v20);
LABEL_7:
  sub_225A9FCA8(v26, v22 + *(v29 + 28));
  sub_225AA09B4(v22, v30, type metadata accessor for ISO18013IssuerSignedItem);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225AA0A1C(v22);
}

unint64_t sub_225AA0960()
{
  result = qword_27D73C190;
  if (!qword_27D73C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C190);
  }

  return result;
}

uint64_t sub_225AA09B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225AA0A1C(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013IssuerSignedItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_225AA0A78()
{
  result = qword_27D73C198;
  if (!qword_27D73C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C198);
  }

  return result;
}

uint64_t ISO18013IssuerSignedItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C1A0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C1A8);
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Encoder.codingKeyFormat.getter(&v25);
  v11 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v11)
  {
    sub_225AA0960();
    sub_225CCFCE4();
    LOBYTE(v22) = 0;
    v13 = v20;
    v12 = v21;
    sub_225CCF7D4();
    if (!v12)
    {
      v14 = *(v1 + 16);
      v22 = *(v1 + 8);
      v23 = v14;
      v24 = 1;
      sub_2259CB710(v22, v14);
      sub_2259D9454();
      sub_225CCF7E4();
      sub_2259BEF00(v22, v23);
      LOBYTE(v22) = 2;
      sub_225CCF784();
      type metadata accessor for ISO18013IssuerSignedItem();
      LOBYTE(v22) = 3;
      type metadata accessor for AnyCodable();
      sub_225AA1254(&qword_27D73C0E8, type metadata accessor for AnyCodable);
      sub_225CCF7E4();
    }

    return (*(v19 + 8))(v6, v13);
  }

  else
  {
    sub_225AA0A78();
    sub_225CCFCE4();
    LOBYTE(v22) = 0;
    v16 = v21;
    sub_225CCF7D4();
    if (!v16)
    {
      v17 = *(v1 + 16);
      v22 = *(v1 + 8);
      v23 = v17;
      v24 = 1;
      sub_2259CB710(v22, v17);
      sub_2259D9454();
      sub_225CCF7E4();
      sub_2259BEF00(v22, v23);
      LOBYTE(v22) = 2;
      sub_225CCF784();
      type metadata accessor for ISO18013IssuerSignedItem();
      LOBYTE(v22) = 3;
      type metadata accessor for AnyCodable();
      sub_225AA1254(&qword_27D73C0E8, type metadata accessor for AnyCodable);
      sub_225CCF7E4();
    }

    return (*(v18 + 8))(v10, v7);
  }
}

uint64_t ISO18013IssuerSignedItem.hash(into:)(uint64_t a1)
{
  MEMORY[0x22AA6E420](*v1);
  sub_225CCCFB4();
  sub_225CCE5B4();
  type metadata accessor for ISO18013IssuerSignedItem();
  return AnyCodable.hash(into:)(a1);
}

uint64_t ISO18013IssuerSignedItem.hashValue.getter()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](*v0);
  sub_225CCCFB4();
  sub_225CCE5B4();
  type metadata accessor for ISO18013IssuerSignedItem();
  AnyCodable.hash(into:)(v2);
  return sub_225CCFC24();
}

uint64_t sub_225AA1014()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](*v0);
  sub_225CCCFB4();
  sub_225CCE5B4();
  AnyCodable.hash(into:)(v2);
  return sub_225CCFC24();
}

uint64_t sub_225AA1090(uint64_t a1)
{
  MEMORY[0x22AA6E420](*v1);
  sub_225CCCFB4();
  sub_225CCE5B4();
  return AnyCodable.hash(into:)(a1);
}

uint64_t sub_225AA10F4()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](*v0);
  sub_225CCCFB4();
  sub_225CCE5B4();
  AnyCodable.hash(into:)(v2);
  return sub_225CCFC24();
}

uint64_t _s13CoreIDVShared24ISO18013IssuerSignedItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || (sub_2259D8228(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v4 && (sub_225CCF934() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for ISO18013IssuerSignedItem() + 28);

  return _s13CoreIDVShared10AnyCodableO2eeoiySbAC_ACtFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_225AA1254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225AA12C4()
{
  result = type metadata accessor for AnyCodable();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_225AA137C()
{
  result = qword_27D73C1C8;
  if (!qword_27D73C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C1C8);
  }

  return result;
}

unint64_t sub_225AA13D4()
{
  result = qword_27D73C1D0;
  if (!qword_27D73C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C1D0);
  }

  return result;
}

unint64_t sub_225AA142C()
{
  result = qword_27D73C1D8;
  if (!qword_27D73C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C1D8);
  }

  return result;
}

unint64_t sub_225AA1484()
{
  result = qword_27D73C1E0;
  if (!qword_27D73C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C1E0);
  }

  return result;
}

unint64_t sub_225AA14DC()
{
  result = qword_27D73C1E8;
  if (!qword_27D73C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C1E8);
  }

  return result;
}

unint64_t sub_225AA1534()
{
  result = qword_27D73C1F0;
  if (!qword_27D73C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C1F0);
  }

  return result;
}

uint64_t sub_225AA1588()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225AA15D4()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t ISO18013JumboPackage.version.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ISO18013JumboPackage.init(version:packages:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void ISO18013JumboPackage.init(version:packages:)(uint64_t a1@<X0>, id a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v56 - v12;
  sub_225CCD424();
  swift_allocObject();
  v14 = sub_225CCD414();
  v15 = *(a3 + 16);
  if (v15)
  {
    v58 = a1;
    v59 = a4;
    v60 = a2;
    v57 = v13;
    v71 = MEMORY[0x277D84F90];
    sub_2259D543C(0, v15, 0);
    v16 = 0;
    v17 = v71;
    v18 = a3 + 40;
    v62 = v14;
    v61 = v15;
    while (v16 < *(a3 + 16))
    {
      v63 = v17;
      v19 = *v18;
      v20 = *(v18 + 24);
      v21 = *(v18 + 32);
      v66 = *(v18 - 8);
      v67 = v19;
      v68 = *(v18 + 8);
      v69 = v20;
      v70 = v21;
      v22 = v68;
      sub_2259CB710(v19, v68);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C1F8);
      sub_225AA286C();
      v23 = sub_225CCD3F4();
      v64 = v5;
      if (v5)
      {

        sub_2259BEF00(v19, v22);

        a2 = v64;
        v29 = v64;
        v30 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v31 = swift_allocError();
        a4 = v32;
        swift_getErrorValue();
        v33 = v65;
        v34 = a2;
        sub_225B21FAC(v33, &v66);

        v17 = v67;
        v63 = v31;
        if (v67)
        {
          v62 = v66;
          v60 = *(&v68 + 1);
          v61 = v68;
          v35 = v69;
          a2 = v70;
        }

        else
        {
          v66 = a2;
          v36 = a2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
          sub_2259D8718(0, &qword_281059A90);
          if (swift_dynamicCast())
          {
            v37 = v71;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_225CD30F0;
            *(inited + 32) = 20;
            v39 = [v37 code];
            v40 = MEMORY[0x277D83BF8];
            *(inited + 64) = MEMORY[0x277D83B88];
            *(inited + 72) = v40;
            *(inited + 40) = v39;
            v35 = sub_225B2C374(inited);
            swift_setDeallocating();
            a2 = v64;
            sub_2259CB640(inited + 32, &qword_27D73B060);

            v41 = a2;
            v61 = 0;
            v62 = 0;
            v60 = 0;
            v17 = MEMORY[0x277D84F90];
          }

          else
          {
            v66 = a2;
            v42 = a2;
            v43 = sub_225CCE954();
            v44 = v57;
            v45 = swift_dynamicCast();
            v46 = *(v43 - 8);
            (*(v46 + 56))(v44, v45 ^ 1u, 1, v43);
            v47 = (*(v46 + 48))(v44, 1, v43);
            sub_2259CB640(v44, &unk_27D73B050);
            if (v47)
            {
              v48 = 0;
            }

            else
            {
              v48 = 23;
            }

            v62 = v48;
            v17 = MEMORY[0x277D84F90];
            v35 = sub_225B2C374(MEMORY[0x277D84F90]);
            v49 = a2;
            v61 = 0;
            v60 = 0;
          }
        }

        v15 = 0x8000000225D1B490;
        v18 = 0x8000000225D1B4C0;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v35;
        sub_225B2C4A0(v30, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v66);

        v5 = v66;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_20:
          v52 = *(v17 + 2);
          v51 = *(v17 + 3);
          if (v52 >= v51 >> 1)
          {
            v17 = sub_225B29AA0((v51 > 1), v52 + 1, 1, v17);
          }

          v53 = v64;

          *(v17 + 2) = v52 + 1;
          v54 = &v17[56 * v52];
          *(v54 + 4) = 0;
          *(v54 + 5) = 0;
          *(v54 + 6) = 0xD000000000000028;
          *(v54 + 7) = v15;
          *(v54 + 8) = 0xD000000000000017;
          *(v54 + 9) = v18;
          *(v54 + 10) = 32;
          *a4 = v62;
          v55 = v61;
          *(a4 + 8) = v17;
          *(a4 + 16) = v55;
          *(a4 + 24) = v60;
          *(a4 + 32) = v5;
          *(a4 + 40) = a2;
          swift_willThrow();

          return;
        }

LABEL_24:
        v17 = sub_225B29AA0(0, *(v17 + 2) + 1, 1, v17);
        goto LABEL_20;
      }

      v25 = v23;
      v26 = v24;
      sub_2259BEF00(v19, v22);

      v17 = v63;
      v71 = v63;
      a4 = *(v63 + 16);
      v27 = *(v63 + 24);
      a2 = (a4 + 1);
      if (a4 >= v27 >> 1)
      {
        sub_2259D543C((v27 > 1), a4 + 1, 1);
        v17 = v71;
      }

      ++v16;
      *(v17 + 2) = a2;
      v28 = &v17[16 * a4];
      *(v28 + 4) = v25;
      *(v28 + 5) = v26;
      v18 += 48;
      v15 = v61;
      v5 = v64;
      if (v61 == v16)
      {

        a2 = v60;
        a4 = v59;
        a1 = v58;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_12:
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v17;
}

uint64_t sub_225AA1D60()
{
  if (*v0)
  {
    return 0x736567616B636170;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_225AA1D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736567616B636170 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225AA1E78(uint64_t a1)
{
  v2 = sub_225AA28D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AA1EB4(uint64_t a1)
{
  v2 = sub_225AA28D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013JumboPackage.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C208);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v40 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AA28D0();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v46 = v7;
  v14 = v9;
  LOBYTE(v48) = 0;
  v16 = sub_225CCF684();
  v17 = v15;
  v18 = v16 == 0x2E312D6F626D754ALL && v15 == 0xE900000000000030;
  if (v18 || (sub_225CCF934() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C218);
    v50 = 1;
    sub_225AA2924();
    sub_225CCF6E4();
    v45 = 0;
    (*(v14 + 8))(v12, v8);
    v19 = v47;
    v20 = v48;
    *v47 = v16;
    v19[1] = v17;
    v19[2] = v20;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v44 = a1;
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000001FLL, 0x8000000225D1B4E0);
    v47 = v17;
    MEMORY[0x22AA6CE70](v16, v17);
    MEMORY[0x22AA6CE70](0x74276E73656F6420, 0xEF20686374616D20);
    MEMORY[0x22AA6CE70](0x2E312D6F626D754ALL, 0xE900000000000030);
    MEMORY[0x22AA6CE70](0xD000000000000015, 0x8000000225D1B500);
    v21 = v49;
    v42 = 0x8000000225D1B490;
    v43 = v48;
    v41 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v45 = swift_allocError();
    v23 = v22;
    v24 = sub_225CCE954();
    v25 = *(v24 - 8);
    v26 = v46;
    (*(v25 + 56))(v46, 1, 1, v24);
    v27 = (*(v25 + 48))(v26, 1, v24);
    v28 = v21;
    LODWORD(v24) = v27;
    sub_2259CB640(v26, &unk_27D73B050);
    if (v24)
    {
      v29 = 410;
    }

    else
    {
      v29 = 23;
    }

    LODWORD(v46) = v29;

    v30 = MEMORY[0x277D84F90];
    v31 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v31;
    sub_225B2C4A0(v41, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v48);

    v33 = v48;
    v34 = sub_225B29AA0(0, 1, 1, v30);
    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_225B29AA0((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v37 = &v34[56 * v36];
    v38 = v43;
    *(v37 + 4) = v43;
    *(v37 + 5) = v28;
    v39 = v42;
    *(v37 + 6) = 0xD000000000000028;
    *(v37 + 7) = v39;
    *(v37 + 8) = 0x6F72662874696E69;
    *(v37 + 9) = 0xEB00000000293A6DLL;
    *(v37 + 10) = 48;
    *v23 = v46;
    *(v23 + 8) = v34;
    *(v23 + 16) = v38;
    *(v23 + 24) = v28;
    *(v23 + 32) = v33;
    *(v23 + 40) = 0;
    swift_willThrow();
    (*(v14 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_0(v44);
  }
}

uint64_t ISO18013JumboPackage.encode(to:)(void *a1)
{
  v3 = sub_225CCD454();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v38 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C228);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v34 - v9;
  v11 = *(v1 + 16);
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_225AA28D0();
  sub_225CCFCE4();
  v44 = 0;
  v16 = v41;
  result = sub_225CCF784();
  if (v16)
  {
    return (*(v7 + 8))(v10, v15);
  }

  v34[1] = 0;
  v35 = v10;
  v36 = v7;
  v37 = v15;
  v18 = 0;
  v41 = MEMORY[0x277D84F90];
  v42 = MEMORY[0x277D84F90];
  v19 = *(v11 + 16);
  v20 = v11 + 40;
  v34[0] = v11 + 40;
LABEL_4:
  v21 = (v20 + 16 * v18);
  while (1)
  {
    if (v19 == v18)
    {
      sub_2259D8718(0, &qword_27D73AC58);
      v27 = sub_225CCE7F4();

      v28 = [objc_opt_self() cborWithArray_];

      v29 = v38;
      sub_225CCD434();
      v43 = 1;
      sub_225AA29A8();
      v30 = v37;
      v31 = v40;
      v32 = v35;
      sub_225CCF7E4();
      v33 = v36;
      (*(v39 + 8))(v29, v31);
      return (*(v33 + 8))(v32, v30);
    }

    if (v18 >= *(v11 + 16))
    {
      break;
    }

    ++v18;
    v22 = v21 + 2;
    v24 = *(v21 - 1);
    v23 = *v21;
    sub_2259CB710(v24, *v21);
    v25 = sub_225CCCF74();
    v26 = [objc_opt_self() cborWithEncodedTag24Data_];

    result = sub_2259BEF00(v24, v23);
    v21 = v22;
    if (v26)
    {
      MEMORY[0x22AA6D020](result);
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_225CCE844();
      }

      result = sub_225CCE884();
      v41 = v42;
      v20 = v34[0];
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_225AA286C()
{
  result = qword_27D73C200;
  if (!qword_27D73C200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C200);
  }

  return result;
}

unint64_t sub_225AA28D0()
{
  result = qword_27D73C210;
  if (!qword_27D73C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C210);
  }

  return result;
}

unint64_t sub_225AA2924()
{
  result = qword_27D73C220;
  if (!qword_27D73C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C218);
    sub_2259D94A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C220);
  }

  return result;
}

unint64_t sub_225AA29A8()
{
  result = qword_27D73C230;
  if (!qword_27D73C230)
  {
    sub_225CCD454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C230);
  }

  return result;
}

unint64_t sub_225AA2A24()
{
  result = qword_27D73C238;
  if (!qword_27D73C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C238);
  }

  return result;
}

unint64_t sub_225AA2A7C()
{
  result = qword_27D73C240;
  if (!qword_27D73C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C240);
  }

  return result;
}

unint64_t sub_225AA2AD4()
{
  result = qword_27D73C248;
  if (!qword_27D73C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C248);
  }

  return result;
}

void sub_225AA2B28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), unint64_t *a7, void (*a8)(uint64_t))
{
  v182 = a8;
  v180 = a7;
  v188 = a6;
  v179 = a4;
  v183 = a3;
  v190 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v184 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v187 = &v168 - v15;
  v186 = a5(0);
  v17 = MEMORY[0x28223BE20](v186, v16);
  v19 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v168 - v21;
  v23 = sub_225CCD954();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v178 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v168 - v29;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v31 = off_28105B918;
  v32 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v33 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v33));
  v34 = *(v24 + 16);
  v175 = v32;
  v174 = v24 + 16;
  v173 = v34;
  v34(v30, &v31[v32], v23);
  v177 = v31;
  v176 = v33;
  os_unfair_lock_unlock(&v31[v33]);
  v35 = v188;
  sub_225AA8304(a2, v22, v188);
  v36 = sub_225CCD934();
  v37 = sub_225CCED04();
  v38 = os_log_type_enabled(v36, v37);
  v185 = v24;
  v181 = a2;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v192 = v40;
    *v39 = 136315138;
    sub_225AA8304(v22, v19, v35);
    v41 = sub_225CCE504();
    v42 = v35;
    v43 = v23;
    v45 = v44;
    sub_225AA825C(v22, v42);
    v46 = sub_2259BE198(v41, v45, &v192);
    v23 = v43;

    *(v39 + 4) = v46;
    _os_log_impl(&dword_2259A7000, v36, v37, "Verifying reader signature with authentication structure %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x22AA6F950](v40, -1, -1);
    MEMORY[0x22AA6F950](v39, -1, -1);

    v47 = *(v185 + 8);
    v47(v30, v43);
  }

  else
  {

    sub_225AA825C(v22, v35);
    v47 = *(v24 + 8);
    v47(v30, v23);
  }

  v48 = sub_225CCD334();
  v50 = v49;
  v51 = sub_225CCD344();
  if (!v51)
  {
    goto LABEL_11;
  }

  if (!v51[2])
  {

LABEL_11:
    v188 = v48;
    v186 = v50;
    v190 = 0x8000000225D15E40;
    v57 = MEMORY[0x277D84F90];
    v58 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v59 = swift_allocError();
    v61 = v60;
    v62 = sub_225CCE954();
    v63 = *(v62 - 8);
    v64 = v187;
    (*(v63 + 56))(v187, 1, 1, v62);
    LODWORD(v62) = (*(v63 + 48))(v64, 1, v62);
    sub_2259CB640(v64, &unk_27D73B050);
    if (v62)
    {
      v65 = 437;
    }

    else
    {
      v65 = 23;
    }

    v66 = sub_225B2C374(v57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v192 = v66;
    sub_225B2C4A0(v58, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v192);

    v68 = v192;
    v69 = sub_225B29AA0(0, 1, 1, v57);
    v71 = *(v69 + 2);
    v70 = *(v69 + 3);
    if (v71 >= v70 >> 1)
    {
      v69 = sub_225B29AA0((v70 > 1), v71 + 1, 1, v69);
    }

    *(v69 + 2) = v71 + 1;
    v72 = &v69[56 * v71];
    *(v72 + 4) = 0xD000000000000031;
    *(v72 + 5) = 0x8000000225D15EF0;
    v73 = v190;
    *(v72 + 6) = 0xD00000000000002ALL;
    *(v72 + 7) = v73;
    *(v72 + 8) = 0xD000000000000036;
    *(v72 + 9) = 0x8000000225D15F30;
    *(v72 + 10) = 122;
    *v61 = v65;
    *(v61 + 8) = v69;
    *(v61 + 16) = 0xD000000000000031;
    *(v61 + 24) = 0x8000000225D15EF0;
    *(v61 + 32) = v68;
    *(v61 + 40) = 0;
    v56 = v59;
    swift_willThrow();
    sub_2259BEF00(v188, v186);
    v188 = 0;
    goto LABEL_17;
  }

  v172 = v23;
  v52 = v51[4];
  v53 = v51[5];
  sub_2259CB710(v52, v53);

  sub_2259CB710(v52, v53);
  v54 = v189;
  v55 = decodeCertificate(fromDER:)();
  if (v54)
  {
    sub_2259BEF00(v48, v50);
    sub_2259BEF00(v52, v53);
    sub_2259BEF00(v52, v53);
    v188 = 0;
    v56 = v54;
  }

  else
  {
    v104 = v55;
    v188 = v48;
    sub_2259BEF00(v52, v53);
    sub_2259BEF00(v52, v53);
    v105 = SecCertificateRef.rawECPublicKeyData()();
    if (v106 >> 60 == 15)
    {
      v189 = v104;
      v186 = v50;
      v185 = 0x8000000225D15E40;
      v183 = 0x8000000225D15F30;
      v107 = MEMORY[0x277D84F90];
      v108 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v190 = swift_allocError();
      v110 = v109;
      v111 = sub_225CCE954();
      v112 = *(v111 - 8);
      v113 = v187;
      (*(v112 + 56))(v187, 1, 1, v111);
      LODWORD(v111) = (*(v112 + 48))(v113, 1, v111);
      sub_2259CB640(v113, &unk_27D73B050);
      if (v111)
      {
        v114 = 438;
      }

      else
      {
        v114 = 23;
      }

      v115 = sub_225B2C374(v107);
      v116 = swift_isUniquelyReferenced_nonNull_native();
      v192 = v115;
      sub_225B2C4A0(v108, sub_225B2AC40, 0, v116, &v192);

      v117 = v192;
      v118 = sub_225B29AA0(0, 1, 1, v107);
      v120 = *(v118 + 2);
      v119 = *(v118 + 3);
      if (v120 >= v119 >> 1)
      {
        v118 = sub_225B29AA0((v119 > 1), v120 + 1, 1, v118);
      }

      v121 = v188;
      *(v118 + 2) = v120 + 1;
      v122 = &v118[56 * v120];
      *(v122 + 4) = 0xD000000000000022;
      *(v122 + 5) = 0x8000000225D15F90;
      v123 = v185;
      *(v122 + 6) = 0xD00000000000002ALL;
      *(v122 + 7) = v123;
      v124 = v183;
      *(v122 + 8) = 0xD000000000000036;
      *(v122 + 9) = v124;
      *(v122 + 10) = 125;
      *v110 = v114;
      *(v110 + 8) = v118;
      *(v110 + 16) = 0xD000000000000022;
      *(v110 + 24) = 0x8000000225D15F90;
      *(v110 + 32) = v117;
      *(v110 + 40) = 0;
      v56 = v190;
      swift_willThrow();
    }

    else
    {
      v171 = v105;
      v170 = v106;
      SecCertificateRef.publicKeyAlgorithm()();
      v125 = v192;
      if (v192 != 5)
      {
        sub_225AA82BC(v180, v182);
        v143 = sub_225CCD3F4();
        v145 = v144;
        v169 = v125;
        v192 = v143;
        v193 = v144;
        v146 = v143;
        sub_2259CB710(v143, v144);
        sub_2259CB710(v146, v145);
        sub_2259D9454();
        v147 = sub_225CCD3E4();
        v149 = v148;
        v189 = v104;
        v186 = v50;
        v150 = v147;
        sub_2259BEF00(v192, v193);
        sub_2259CB710(v150, v149);
        v183 = v150;
        sub_2259BEF00(v150, v149);
        v182 = v146;
        sub_2259BEF00(v146, v145);
        v187 = v149;
        v151 = sub_225CCD304();
        sub_225CCD424();
        swift_allocObject();
        sub_225CCD414();
        v190 = v145;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 1;
        *(inited + 40) = v151;
        v153 = sub_225B2C828(inited);
        swift_setDeallocating();
        v192 = v153;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30);
        sub_2259DB480();
        v154 = sub_225CCD3F4();
        v156 = v155;
        v181 = v151;

        v192 = v154;
        v193 = v156;
        v194 = xmmword_225CD4150;
        v195 = v183;
        v196 = v187;
        sub_2259CB710(v183, v187);
        sub_2259E44EC();
        v157 = sub_225CCD3F4();
        v168 = v154;
        v180 = v156;
        v192 = v179;
        LOBYTE(v191) = v169;
        v158 = v181;
        v179 = v157;
        v181 = v159;
        sub_2259DBE5C(v188, v186, v171, v170, &v191, v158, v157, v159);

        sub_2259BEF00(v179, v181);
        sub_2259BEF00(v168, v180);
        sub_2259BEF00(0, 0xC000000000000000);
        v160 = v183;
        v161 = v187;
        sub_2259BEF00(v183, v187);
        v162 = v177;
        v163 = v176;
        os_unfair_lock_lock(&v177[v176]);
        v164 = v178;
        v173(v178, &v162[v175], v172);
        os_unfair_lock_unlock(&v162[v163]);
        v165 = sub_225CCD934();
        v166 = sub_225CCED04();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          *v167 = 0;
          _os_log_impl(&dword_2259A7000, v165, v166, "COSESignatureValidator reader auth successfully validated", v167, 2u);
          MEMORY[0x22AA6F950](v167, -1, -1);
          sub_2259BEF00(v188, v186);
          sub_2259B97A8(v171, v170);

          sub_2259BEF00(v160, v161);
          sub_2259BEF00(v182, v190);
        }

        else
        {
          sub_2259BEF00(v188, v186);
          sub_2259BEF00(v182, v190);
          sub_2259B97A8(v171, v170);

          sub_2259BEF00(v160, v161);
        }

        v47(v164, v172);
        return;
      }

      v189 = v104;
      v186 = v50;
      v185 = 0x8000000225D15E40;
      v183 = 0x8000000225D15F30;
      v126 = MEMORY[0x277D84F90];
      v127 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v190 = swift_allocError();
      v129 = v128;
      v130 = sub_225CCE954();
      v131 = *(v130 - 8);
      v132 = v187;
      (*(v131 + 56))(v187, 1, 1, v130);
      LODWORD(v130) = (*(v131 + 48))(v132, 1, v130);
      sub_2259CB640(v132, &unk_27D73B050);
      if (v130)
      {
        v133 = 438;
      }

      else
      {
        v133 = 23;
      }

      v134 = sub_225B2C374(v126);
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v192 = v134;
      sub_225B2C4A0(v127, sub_225B2AC40, 0, v135, &v192);

      v136 = v192;
      v137 = sub_225B29AA0(0, 1, 1, v126);
      v139 = *(v137 + 2);
      v138 = *(v137 + 3);
      if (v139 >= v138 >> 1)
      {
        v137 = sub_225B29AA0((v138 > 1), v139 + 1, 1, v137);
      }

      v121 = v188;
      *(v137 + 2) = v139 + 1;
      v140 = &v137[56 * v139];
      *(v140 + 4) = 0xD000000000000025;
      *(v140 + 5) = 0x8000000225D15FC0;
      v141 = v185;
      *(v140 + 6) = 0xD00000000000002ALL;
      *(v140 + 7) = v141;
      v142 = v183;
      *(v140 + 8) = 0xD000000000000036;
      *(v140 + 9) = v142;
      *(v140 + 10) = 128;
      *v129 = v133;
      *(v129 + 8) = v137;
      *(v129 + 16) = 0xD000000000000025;
      *(v129 + 24) = 0x8000000225D15FC0;
      *(v129 + 32) = v136;
      *(v129 + 40) = 0;
      v56 = v190;
      swift_willThrow();
      sub_2259B97A8(v171, v170);
    }

    sub_2259BEF00(v121, v186);
    v188 = 0;
  }

LABEL_17:
  v74 = v56;
  v75 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v190 = swift_allocError();
  v77 = v76;
  swift_getErrorValue();
  v78 = v197;
  v79 = v56;
  sub_225B21FAC(v78, &v192);

  v80 = v193;
  v189 = 0x8000000225D15F70;
  if (v193)
  {
    v81 = v56;
    v187 = v192;
    v185 = *(&v194 + 1);
    v186 = v194;
    v82 = v195;
    v56 = v196;
  }

  else
  {
    v192 = v56;
    v83 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v84 = v191;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      v85 = swift_initStackObject();
      *(v85 + 16) = xmmword_225CD30F0;
      *(v85 + 32) = 20;
      v86 = [v84 code];
      v87 = MEMORY[0x277D83BF8];
      *(v85 + 64) = MEMORY[0x277D83B88];
      *(v85 + 72) = v87;
      *(v85 + 40) = v86;
      v82 = sub_225B2C374(v85);
      swift_setDeallocating();
      sub_2259CB640(v85 + 32, &qword_27D73B060);

      v88 = v56;
      v187 = 0;
      v186 = 0;
      v185 = 0;
      v80 = MEMORY[0x277D84F90];
      v81 = v56;
    }

    else
    {
      v192 = v56;
      v89 = v56;
      v90 = sub_225CCE954();
      v91 = v56;
      v92 = v184;
      v93 = swift_dynamicCast();
      v94 = *(v90 - 8);
      (*(v94 + 56))(v92, v93 ^ 1u, 1, v90);
      LODWORD(v94) = (*(v94 + 48))(v92, 1, v90);
      sub_2259CB640(v92, &unk_27D73B050);
      if (v94)
      {
        v95 = 0;
      }

      else
      {
        v95 = 23;
      }

      v187 = v95;
      v80 = MEMORY[0x277D84F90];
      v82 = sub_225B2C374(MEMORY[0x277D84F90]);
      v96 = v91;
      v186 = 0xD00000000000001CLL;
      v185 = 0x8000000225D15F70;
      v81 = v91;
      v56 = v91;
    }
  }

  v97 = swift_isUniquelyReferenced_nonNull_native();
  v192 = v82;
  sub_225B2C4A0(v75, sub_225B2AC40, 0, v97, &v192);

  v98 = v192;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v80 = sub_225B29AA0(0, *(v80 + 2) + 1, 1, v80);
  }

  v100 = *(v80 + 2);
  v99 = *(v80 + 3);
  if (v100 >= v99 >> 1)
  {
    v80 = sub_225B29AA0((v99 > 1), v100 + 1, 1, v80);
  }

  *(v80 + 2) = v100 + 1;
  v101 = &v80[56 * v100];
  v102 = v189;
  *(v101 + 4) = 0xD00000000000001CLL;
  *(v101 + 5) = v102;
  *(v101 + 6) = 0xD00000000000002ALL;
  *(v101 + 7) = 0x8000000225D15E40;
  *(v101 + 8) = 0xD000000000000036;
  *(v101 + 9) = 0x8000000225D15F30;
  *(v101 + 10) = 144;
  *v77 = v187;
  v103 = v186;
  *(v77 + 8) = v80;
  *(v77 + 16) = v103;
  *(v77 + 24) = v185;
  *(v77 + 32) = v98;
  *(v77 + 40) = v56;
  swift_willThrow();
}

void *sub_225AA4250(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = 0;
  result = MEMORY[0x277D84F90];
  do
  {
    v23 = result;
    for (i = v9; ; ++i)
    {
      if (i >= v5)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v12 = a4(0);
      v14 = *(v12 - 8);
      result = (v12 - 8);
      v13 = v14;
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      result = a1(&v24, a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * i);
      if (v4)
      {

        return v23;
      }

      v15 = v24;
      if (v24)
      {
        break;
      }

      if (v9 == v5)
      {
        return v23;
      }
    }

    v16 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_225B2A398(0, v23[2] + 1, 1, v23);
    }

    v17 = v16;
    v18 = v16[2];
    v19 = v17;
    v20 = v17[3];
    v21 = v18 + 1;
    if (v18 >= v20 >> 1)
    {
      v22 = sub_225B2A398((v20 > 1), v18 + 1, 1, v19);
      v21 = v18 + 1;
      v19 = v22;
    }

    v19[2] = v21;
    result = v19;
    v19[v18 + 4] = v15;
  }

  while (v9 != v5);
  return result;
}

uint64_t static ISO18013MobileDocumentWebPresentmentRequestAuthenticator.authenticateAndParseCertificateChains(parsedRequest:origin:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v49 - v6;
  v8 = type metadata accessor for ISO18013SessionTranscript(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = URL.serializedOrigin.getter();
  if (v12)
  {
    v14 = v12;
    v15 = (a1 + *(type metadata accessor for ISO18013RequestForwardingRequest() + 20));
    v16 = *v15;
    v17 = v15[1];

    ISO18013DCAPIHandover.init(encryptionInfoString:origin:)(v16, v17, v13, v14, v73);
    if (!v2)
    {
      *v11 = *v73;
      v18 = swift_storeEnumTagMultiPayload();
      v19 = *(a1 + 96);
      v70 = *(a1 + 80);
      v71 = v19;
      v72 = *(a1 + 112);
      v20 = *(a1 + 32);
      v66 = *(a1 + 16);
      v67 = v20;
      v21 = *(a1 + 64);
      v68 = *(a1 + 48);
      v69 = v21;
      v22 = v67;
      MEMORY[0x28223BE20](v18, v23);
      *(&v49 - 2) = v11;
      sub_225AA802C(&v66, v60);
      v39 = sub_225AA4250(sub_225AA8010, (&v49 - 4), v22, type metadata accessor for ISO18013ReaderRequest.DocRequest);
      sub_225AA8088(&v66);
      v40 = *(a1 + 64);
      v41 = *(a1 + 96);
      v63 = *(a1 + 80);
      v64 = v41;
      v42 = *(a1 + 32);
      v60[0] = *(a1 + 16);
      v60[1] = v42;
      v43 = *(a1 + 64);
      v45 = *(a1 + 16);
      v44 = *(a1 + 32);
      v61 = *(a1 + 48);
      v62 = v43;
      v56 = v40;
      v57 = v63;
      v58 = *(a1 + 96);
      v53 = v45;
      v65 = *(a1 + 112);
      v59 = *(a1 + 112);
      v54 = v44;
      v55 = v61;
      sub_225AA802C(v60, v51);
      v46 = sub_225AA497C(&v53, v11);
      v51[4] = v57;
      v51[5] = v58;
      v52 = v59;
      v51[0] = v53;
      v51[1] = v54;
      v51[2] = v55;
      v51[3] = v56;
      v47 = v46;
      sub_225AA8088(v51);
      v50 = v39;
      sub_225A84858(v47);
      v48 = v50;
      v50 = MEMORY[0x277D84FA0];
      v13 = sub_225AA80DC(v48);

      sub_225AA825C(v11, type metadata accessor for ISO18013SessionTranscript);
    }
  }

  else
  {
    v74 = 0x8000000225D1B520;
    v49 = 0x8000000225D1B570;
    v24 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v26 = v25;
    v27 = sub_225CCE954();
    v28 = *(v27 - 8);
    (*(v28 + 56))(v7, 1, 1, v27);
    LODWORD(v27) = (*(v28 + 48))(v7, 1, v27);
    sub_2259CB640(v7, &unk_27D73B050);
    if (v27)
    {
      v29 = 1077;
    }

    else
    {
      v29 = 23;
    }

    v30 = MEMORY[0x277D84F90];
    v31 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v66 = v31;
    sub_225B2C4A0(v24, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v66);

    v33 = v66;
    v34 = sub_225B29AA0(0, 1, 1, v30);
    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_225B29AA0((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v37 = &v34[56 * v36];
    *(v37 + 4) = v13;
    *(v37 + 40) = xmmword_225CDEE30;
    *(v37 + 7) = v74;
    *(v37 + 8) = 0xD00000000000003CLL;
    *(v37 + 9) = v49;
    *(v37 + 10) = 23;
    *v26 = v29;
    *(v26 + 8) = v34;
    *(v26 + 16) = v13;
    *(v26 + 24) = 0;
    *(v26 + 32) = v33;
    *(v26 + 40) = 0;
    swift_willThrow();
  }

  return v13;
}

char *sub_225AA497C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_225CCD954();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v67 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ISO18013SessionTranscript(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ISO18013ReaderAuthenticationAll();
  MEMORY[0x28223BE20](v70, v18);
  v73 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  v21 = *(a1 + 40);
  v22 = *(a1 + 72);
  v86 = *(a1 + 56);
  v87 = v22;
  v23 = *(a1 + 88);
  v24 = *(a1 + 96);
  v71 = v17;
  v72 = v24;
  v88 = v23;
  v84 = *(a1 + 24);
  v85 = v21;
  sub_225AA8304(a2, v17, type metadata accessor for ISO18013SessionTranscript);
  v25 = *(v20 + 16);
  if (v25)
  {
    v66 = v2;
    sub_225A0DE54(&v84, &v75, &qword_27D73C250);
    v83 = MEMORY[0x277D84F90];
    sub_2259D545C(0, v25, 0);
    v26 = v83;
    v27 = v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v89 = *(v10 + 72);
    do
    {
      sub_225AA8304(v27, v13, type metadata accessor for ISO18013ReaderRequest.DocRequest);
      v28 = *(v13 + 4);
      v29 = *(v13 + 6);
      v80 = *(v13 + 5);
      v81 = v29;
      v30 = *(v13 + 1);
      v75 = *v13;
      v31 = *(v13 + 2);
      v32 = *(v13 + 3);
      v76 = v30;
      v77 = v31;
      v82 = *(v13 + 14);
      v78 = v32;
      v79 = v28;
      sub_225A0DE54(&v75, &v74, &qword_27D73AD30);
      sub_225AA825C(v13, type metadata accessor for ISO18013ReaderRequest.DocRequest);
      v83 = v26;
      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_2259D545C((v33 > 1), v34 + 1, 1);
        v26 = v83;
      }

      *(v26 + 16) = v34 + 1;
      v35 = v26 + 120 * v34;
      v36 = v75;
      v37 = v76;
      v38 = v78;
      *(v35 + 64) = v77;
      *(v35 + 80) = v38;
      *(v35 + 32) = v36;
      *(v35 + 48) = v37;
      v39 = v79;
      v40 = v80;
      v41 = v81;
      *(v35 + 144) = v82;
      *(v35 + 112) = v40;
      *(v35 + 128) = v41;
      *(v35 + 96) = v39;
      v27 += v89;
      --v25;
    }

    while (v25);
    v3 = v66;
  }

  else
  {
    sub_225A0DE54(&v84, &v75, &qword_27D73C250);
    v26 = MEMORY[0x277D84F90];
  }

  v43 = v70;
  v42 = v71;
  v44 = v73;
  v45 = &v73[*(v70 + 24)];
  *v45 = 0;
  *(v45 + 1) = 0;
  *(v45 + 2) = 0;
  *(v45 + 3) = 1;
  *(v45 + 2) = 0u;
  *(v45 + 3) = 0u;
  *(v45 + 8) = 0;
  sub_225A9C018(v42, v44);
  *(v44 + *(v43 + 20)) = v26;
  v46 = *(v45 + 2);
  v47 = *(v45 + 3);
  v48 = *v45;
  v76 = *(v45 + 1);
  v77 = v46;
  v78 = v47;
  *&v79 = *(v45 + 8);
  v75 = v48;
  v49 = sub_2259CB640(&v75, &qword_27D73C250);
  v51 = v87;
  *(v45 + 2) = v86;
  *(v45 + 3) = v51;
  *(v45 + 8) = v88;
  v52 = v85;
  *v45 = v84;
  *(v45 + 1) = v52;
  if (v72)
  {
    MEMORY[0x28223BE20](v49, v50);
    *(&v65 - 2) = v44;
    v54 = sub_225AA4250(sub_225AA8240, (&v65 - 4), v53, MEMORY[0x277CF3948]);
    if (!v3)
    {
      v45 = v54;
    }
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v55 = off_28105B918;
    v56 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v57 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v57));
    v59 = v67;
    v58 = v68;
    v60 = v69;
    (*(v68 + 16))(v67, &v55[v56], v69);
    os_unfair_lock_unlock(&v55[v57]);
    v61 = sub_225CCD934();
    v62 = sub_225CCED34();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_2259A7000, v61, v62, "ReaderAuthAll is nil, skipping certificate chain parsing for reader auth all", v63, 2u);
      MEMORY[0x22AA6F950](v63, -1, -1);
    }

    (*(v58 + 8))(v59, v60);
    v45 = MEMORY[0x277D84F90];
    v44 = v73;
  }

  sub_225AA825C(v44, type metadata accessor for ISO18013ReaderAuthenticationAll);
  return v45;
}

void sub_225AA4FA0(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v120 - v9;
  v129 = sub_225CCD954();
  v130 = *(v129 - 8);
  v12 = MEMORY[0x28223BE20](v129, v11);
  v128 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v120 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v120 - v19;
  v21 = sub_225CCD344();
  if (v21)
  {
    v22 = v21;
    v127 = v10;
    sub_225AA5E24(a1, a2, type metadata accessor for ISO18013ReaderAuthenticationAll, &qword_27D73C258, type metadata accessor for ISO18013ReaderAuthenticationAll, &protocol conformance descriptor for ISO18013ReaderAuthenticationAll, type metadata accessor for ISO18013ReaderAuthenticationAll);
    v23 = v3;
    v24 = MEMORY[0x277D841D0];
    if (v3)
    {
      v25 = v129;
      v26 = v130;
    }

    else
    {
      v26 = v130;
      if (qword_28105B910 != -1)
      {
        v119 = MEMORY[0x277D841D0];
        swift_once();
        v24 = v119;
      }

      v34 = off_28105B918;
      v35 = *(*off_28105B918 + *v24 + 16);
      v36 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v36));
      v25 = v129;
      (*(v26 + 16))(v17, &v34[v35], v129);
      os_unfair_lock_unlock(&v34[v36]);

      v37 = sub_225CCD934();
      v38 = sub_225CCED34();

      if (os_log_type_enabled(v37, v38))
      {
        LODWORD(v126) = v38;
        v39 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v132 = v124;
        v125 = v39;
        *v39 = 136446210;
        v40 = v22[2];
        v41 = MEMORY[0x277D84F90];
        if (v40)
        {
          v123 = v37;
          v121 = a3;
          v122 = 0;
          v131 = MEMORY[0x277D84F90];
          sub_2259D52A4(0, v40, 0);
          v41 = v131;
          v42 = v22 + 5;
          do
          {
            v43 = *(v42 - 1);
            v44 = *v42;
            sub_2259CB710(v43, *v42);
            v45 = sub_225CCCF84();
            v47 = v46;
            sub_2259BEF00(v43, v44);
            v131 = v41;
            v49 = v41[2];
            v48 = v41[3];
            if (v49 >= v48 >> 1)
            {
              sub_2259D52A4((v48 > 1), v49 + 1, 1);
              v41 = v131;
            }

            v42 += 2;
            v41[2] = v49 + 1;
            v50 = &v41[2 * v49];
            v50[4] = v45;
            v50[5] = v47;
            --v40;
          }

          while (v40);
          v23 = v122;
          a3 = v121;
          v26 = v130;
          v37 = v123;
        }

        v51 = MEMORY[0x22AA6D060](v41, MEMORY[0x277D837D0]);
        v53 = v52;

        v54 = sub_2259BE198(v51, v53, &v132);

        v55 = v125;
        *(v125 + 1) = v54;
        _os_log_impl(&dword_2259A7000, v37, v126, "Successfully validated Reader Auth All with X509 chain %{public}s", v55, 0xCu);
        v56 = v124;
        __swift_destroy_boxed_opaque_existential_0(v124);
        MEMORY[0x22AA6F950](v56, -1, -1);
        MEMORY[0x22AA6F950](v55, -1, -1);

        v25 = v129;
        (*(v26 + 8))(v17, v129);
      }

      else
      {

        (*(v26 + 8))(v17, v25);
      }

      v57 = decodeCertificateChain(fromDER:)(v22);
      if (!v23)
      {
        v103 = v57;

        *a3 = v103;
        return;
      }

      v24 = MEMORY[0x277D841D0];
    }

    if (qword_28105B910 != -1)
    {
      v118 = v24;
      swift_once();
      v24 = v118;
    }

    v58 = off_28105B918;
    v59 = *(*off_28105B918 + *v24 + 16);
    v60 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v60));
    v61 = &v58[v59];
    v62 = v128;
    (*(v26 + 16))(v128, v61, v25);
    os_unfair_lock_unlock(&v58[v60]);

    v63 = v23;
    v64 = sub_225CCD934();
    v65 = sub_225CCED14();

    if (os_log_type_enabled(v64, v65))
    {
      LODWORD(v125) = v65;
      v126 = v64;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v132 = v124;
      *v66 = 138412546;
      v68 = v23;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 4) = v69;
      v123 = v67;
      v67->isa = v69;
      *(v66 + 12) = 2082;
      v70 = v22[2];
      if (v70)
      {
        v121 = a3;
        v122 = v23;
        v131 = MEMORY[0x277D84F90];
        sub_2259D52A4(0, v70, 0);
        v71 = v131;
        v72 = v22 + 5;
        do
        {
          v74 = *(v72 - 1);
          v73 = *v72;
          sub_2259CB710(v74, *v72);
          v75 = sub_225CCCF84();
          v77 = v76;
          sub_2259BEF00(v74, v73);
          v131 = v71;
          v79 = v71[2];
          v78 = v71[3];
          if (v79 >= v78 >> 1)
          {
            sub_2259D52A4((v78 > 1), v79 + 1, 1);
            v71 = v131;
          }

          v72 += 2;
          v71[2] = v79 + 1;
          v80 = &v71[2 * v79];
          v80[4] = v75;
          v80[5] = v77;
          --v70;
        }

        while (v70);

        v23 = v122;
        a3 = v121;
        v26 = v130;
        v62 = v128;
      }

      else
      {

        v71 = MEMORY[0x277D84F90];
      }

      v81 = MEMORY[0x22AA6D060](v71, MEMORY[0x277D837D0]);
      v83 = v82;

      v84 = sub_2259BE198(v81, v83, &v132);

      *(v66 + 14) = v84;
      v85 = v126;
      _os_log_impl(&dword_2259A7000, v126, v125, "IdentityDocumentWebPresentmentRawRequestValidator encountered error %@ while validating certificate for certificate chain: %{public}s", v66, 0x16u);
      v86 = v123;
      sub_2259CB640(v123, &unk_27D73FC90);
      MEMORY[0x22AA6F950](v86, -1, -1);
      v87 = v124;
      __swift_destroy_boxed_opaque_existential_0(v124);
      MEMORY[0x22AA6F950](v87, -1, -1);
      MEMORY[0x22AA6F950](v66, -1, -1);

      (*(v26 + 8))(v62, v129);
    }

    else
    {

      (*(v26 + 8))(v62, v25);
    }

    swift_getErrorValue();
    Error.dipErrorCode.getter(v140, &v132);
    if (v132 == 444 || (swift_getErrorValue(), Error.dipErrorCode.getter(v139, &v132), v132 == 443))
    {
      v88 = v23;
      v89 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v91 = v90;
      swift_getErrorValue();
      v92 = v138;
      v93 = v23;
      sub_225B21FAC(v92, &v132);

      v94 = v133;
      v130 = "hains(parsedRequest:origin:)";
      if (v133)
      {
        v95 = v23;
        v129 = v132;
        v128 = v134;
        v127 = v135;
        v96 = v136;
        v126 = v137;
      }

      else
      {
        v132 = v23;
        v97 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v98 = v131;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v100 = [v98 code];
          v101 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v101;
          *(inited + 40) = v100;
          v96 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v102 = v23;
          v128 = 0;
          v129 = 0;
          v127 = 0;
          v94 = MEMORY[0x277D84F90];
        }

        else
        {
          v132 = v23;
          v104 = v23;
          v105 = sub_225CCE954();
          v106 = v127;
          v107 = swift_dynamicCast();
          v108 = *(v105 - 8);
          (*(v108 + 56))(v106, v107 ^ 1u, 1, v105);
          LODWORD(v105) = (*(v108 + 48))(v106, 1, v105);
          sub_2259CB640(v106, &unk_27D73B050);
          if (v105)
          {
            v109 = 0;
          }

          else
          {
            v109 = 23;
          }

          v129 = v109;
          v94 = MEMORY[0x277D84F90];
          v96 = sub_225B2C374(MEMORY[0x277D84F90]);
          v110 = v23;
          v128 = 0;
          v127 = 0;
        }

        v95 = v23;
        v126 = v23;
      }

      v111 = v130 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v132 = v96;
      sub_225B2C4A0(v89, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v132);

      v113 = v132;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_225B29AA0(0, *(v94 + 2) + 1, 1, v94);
      }

      v115 = *(v94 + 2);
      v114 = *(v94 + 3);
      if (v115 >= v114 >> 1)
      {
        v94 = sub_225B29AA0((v114 > 1), v115 + 1, 1, v94);
      }

      *(v94 + 2) = v115 + 1;
      v116 = &v94[56 * v115];
      *(v116 + 4) = 0;
      *(v116 + 5) = 0;
      *(v116 + 6) = 0xD00000000000004CLL;
      *(v116 + 7) = 0x8000000225D1B520;
      *(v116 + 8) = 0xD00000000000003FLL;
      *(v116 + 9) = v111;
      *(v116 + 10) = 66;
      *v91 = v129;
      v117 = v128;
      *(v91 + 8) = v94;
      *(v91 + 16) = v117;
      *(v91 + 24) = v127;
      *(v91 + 32) = v113;
      *(v91 + 40) = v126;
      swift_willThrow();
    }

    else
    {

      *a3 = 0;
    }
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v27 = off_28105B918;
    v28 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v29 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v29));
    v30 = v129;
    (*(v130 + 16))(v20, &v27[v28], v129);
    os_unfair_lock_unlock(&v27[v29]);
    v31 = sub_225CCD934();
    v32 = sub_225CCED34();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2259A7000, v31, v32, "Skipping reader auth all structure because it does not have an x509 chain attached.", v33, 2u);
      MEMORY[0x22AA6F950](v33, -1, -1);
    }

    (*(v130 + 8))(v20, v30);
    *a3 = 0;
  }
}

void sub_225AA5E24(unint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(void))
{
  v137 = a7;
  v141 = a3;
  v136 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v134 = &v121 - v13;
  v144 = sub_225CCD954();
  v143 = *(v144 - 8);
  v15 = MEMORY[0x28223BE20](v144, v14);
  v135 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v142 = &v121 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v138 = &v121 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v139 = (&v121 - v24);
  v25 = sub_225CCF454();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD424();
  swift_allocObject();
  v30 = sub_225CCD414();
  if (qword_27D739F68 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v25, qword_27D73D108);
  (*(v26 + 16))(v29, v31, v25);
  v148 = &type metadata for ISO18013PresentmentType;
  LOBYTE(v145) = 2;
  v32 = sub_225CCD404();
  sub_225A0528C(&v145, v29);
  v32(&v152, 0);
  v141(0);
  sub_225AA82BC(a4, a5);
  v141 = v30;
  v33 = v140;
  v34 = sub_225CCD3F4();
  v36 = MEMORY[0x277D841D0];
  if (v33)
  {
    v140 = 0;
    v37 = v143;

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v63 = off_28105B918;
    v64 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v65 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v65));
    v66 = *(v37 + 16);
    v141 = v64;
    v67 = v144;
    v139 = v66;
    (v66)(v142, v64 + v63, v144);
    os_unfair_lock_unlock(&v63[v65]);
    v68 = v33;
    v69 = sub_225CCD934();
    v70 = sub_225CCED14();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138543362;
      v73 = v33;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v71 + 4) = v74;
      *v72 = v74;
      _os_log_impl(&dword_2259A7000, v69, v70, "IdentityDocumentWebPresentmentRawRequestValidator encountered error while authenticating a ReaderAuthAll %{public}@", v71, 0xCu);
      sub_2259CB640(v72, &unk_27D73FC90);
      MEMORY[0x22AA6F950](v72, -1, -1);
      v75 = v71;
      v67 = v144;
      MEMORY[0x22AA6F950](v75, -1, -1);
    }

    v76 = *(v37 + 8);
    v143 = v37 + 8;
    v76(v142, v67);
    v77 = [objc_opt_self() standardUserDefaults];
    if (qword_28105B9F0 != -1)
    {
      swift_once();
    }

    if (byte_28105B9F8 == 1)
    {
      v78 = sub_225CCE444();
      v79 = [v77 BOOLForKey_];

      if (v79)
      {
        os_unfair_lock_lock(&v63[v65]);
        v80 = v135;
        v81 = v144;
        (v139)(v135, v141 + v63, v144);
        v82 = &v63[v65];
        v83 = v80;
        os_unfair_lock_unlock(v82);
        v84 = sub_225CCD934();
        v85 = sub_225CCED34();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_2259A7000, v84, v85, "IdentityDocumentWebPresentmentRawRequestValidator treating error as non-fatal due to user defaults setting", v86, 2u);
          MEMORY[0x22AA6F950](v86, -1, -1);
        }

        else
        {
        }

        v76(v83, v81);
        return;
      }
    }

    else
    {
    }

    v143 = "viceRequest:sessionTranscript:)";
    v87 = v33;
    v88 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v144 = swift_allocError();
    v90 = v89;
    swift_getErrorValue();
    v91 = v151;
    v92 = v33;
    sub_225B21FAC(v91, &v145);

    v93 = v146;
    if (v146)
    {
      v142 = v145;
      v141 = v147;
      v139 = v148;
      v95 = v149;
      v94 = v150;
    }

    else
    {
      v145 = v33;
      v96 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v97 = v152;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v99 = [v97 code];
        v100 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v100;
        *(inited + 40) = v99;
        v95 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v101 = v33;
        v142 = 0;
        v141 = 0;
        v139 = 0;
        v93 = MEMORY[0x277D84F90];
      }

      else
      {
        v145 = v33;
        v107 = v33;
        v108 = sub_225CCE954();
        v109 = v134;
        v110 = swift_dynamicCast();
        v111 = *(v108 - 8);
        (*(v111 + 56))(v109, v110 ^ 1u, 1, v108);
        LODWORD(v111) = (*(v111 + 48))(v109, 1, v108);
        sub_2259CB640(v109, &unk_27D73B050);
        if (v111)
        {
          v112 = 0;
        }

        else
        {
          v112 = 23;
        }

        v142 = v112;
        v93 = MEMORY[0x277D84F90];
        v95 = sub_225B2C374(MEMORY[0x277D84F90]);
        v113 = v33;
        v141 = 0;
        v139 = 0;
      }

      v94 = v33;
    }

    v114 = v143 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v145 = v95;
    sub_225B2C4A0(v88, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v145);

    v116 = v145;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v93 = sub_225B29AA0(0, *(v93 + 2) + 1, 1, v93);
    }

    v118 = *(v93 + 2);
    v117 = *(v93 + 3);
    if (v118 >= v117 >> 1)
    {
      v93 = sub_225B29AA0((v117 > 1), v118 + 1, 1, v93);
    }

    *(v93 + 2) = v118 + 1;
    v119 = &v93[56 * v118];
    *(v119 + 4) = 0;
    *(v119 + 5) = 0;
    *(v119 + 6) = 0xD00000000000004CLL;
    *(v119 + 7) = 0x8000000225D1B520;
    *(v119 + 8) = 0xD000000000000034;
    *(v119 + 9) = v114;
    *(v119 + 10) = 137;
    *v90 = v142;
    v120 = v141;
    *(v90 + 8) = v93;
    *(v90 + 16) = v120;
    *(v90 + 24) = v139;
    *(v90 + 32) = v116;
    *(v90 + 40) = v94;
    swift_willThrow();
  }

  else
  {
    v38 = v35;
    v130 = a6;
    v131 = a4;
    v140 = v34;
    v39 = v143;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v133 = a2;
    v40 = off_28105B918;
    v41 = *(*off_28105B918 + *v36 + 16);
    v42 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v42));
    v43 = *(v39 + 16);
    v127 = v41;
    v44 = &v40[v41];
    v45 = v139;
    v126 = v39 + 16;
    v125 = v43;
    v43(v139, v44, v144);
    v128 = v42;
    os_unfair_lock_unlock(&v40[v42]);
    v46 = v140;
    sub_2259CB710(v140, v38);
    v47 = sub_225CCD934();
    v48 = sub_225CCED34();
    sub_2259BEF00(v46, v38);
    v129 = v48;
    v49 = os_log_type_enabled(v47, v48);
    v132 = v38;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v122 = v50;
      v123 = swift_slowAlloc();
      v145 = v123;
      *v50 = 136446210;
      v152 = sub_225B34448(v46, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
      v124 = a5;
      sub_2259CB764();
      v51 = sub_225CCE384();
      v53 = v52;
      v54 = v143;

      v55 = sub_2259BE198(v51, v53, &v145);
      v56 = v131;
      a5 = v124;

      v57 = v122;
      *(v122 + 1) = v55;
      v58 = v57;
      _os_log_impl(&dword_2259A7000, v47, v129, "Validating signature with authentication structure %{public}s", v57, 0xCu);
      v59 = v123;
      __swift_destroy_boxed_opaque_existential_0(v123);
      MEMORY[0x22AA6F950](v59, -1, -1);
      MEMORY[0x22AA6F950](v58, -1, -1);

      v60 = v139;
      v139 = *(v54 + 8);
      (v139)(v60, v144);
      v61 = v141;
    }

    else
    {

      v139 = *(v39 + 8);
      (v139)(v45, v144);
      v61 = v141;
      v56 = v131;
    }

    sub_225AA2B28(v136, v133, v61, 0x1BC01BB01B601BALL, a5, v137, v56, a5);
    v62 = v138;
    v102 = v128;
    os_unfair_lock_lock(&v40[v128]);
    v103 = v144;
    v125(v62, &v40[v127], v144);
    os_unfair_lock_unlock(&v40[v102]);
    v104 = sub_225CCD934();
    v105 = sub_225CCED34();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_2259A7000, v104, v105, "Signature successfully validated", v106, 2u);
      MEMORY[0x22AA6F950](v106, -1, -1);

      sub_2259BEF00(v140, v132);
    }

    else
    {

      sub_2259BEF00(v140, v132);
    }

    (v139)(v62, v103);
  }
}

uint64_t sub_225AA6DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v178 = a2;
  v182 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v176 = &v172 - v6;
  v179 = type metadata accessor for ISO18013ReaderAuthentication();
  MEMORY[0x28223BE20](v179, v7);
  v9 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  v184 = v10;
  v185 = v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v180 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v177 = (&v172 - v17);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v181 = &v172 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v183 = &v172 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v172 - v25;
  v27 = sub_225CCD354();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  sub_225A0DE54(a1 + *(v32 + 20), v26, &qword_27D73AC30);
  if ((*(v28 + 6))(v26, 1, v27) == 1)
  {
    sub_2259CB640(v26, &qword_27D73AC30);
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v33 = off_28105B918;
    v34 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v35 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v35));
    v36 = v184;
    v37 = v185;
    (*(v185 + 16))(v183, &v33[v34], v184);
    os_unfair_lock_unlock(&v33[v35]);
    v38 = sub_225CCD934();
    v39 = sub_225CCED34();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2259A7000, v38, v39, "Document request does not contain a reader auth structure, skipping.", v40, 2u);
      MEMORY[0x22AA6F950](v40, -1, -1);
    }

    result = (*(v37 + 8))(v183, v36);
LABEL_15:
    *v182 = 0;
    return result;
  }

  (*(v28 + 4))(v31, v26, v27);
  v42 = sub_225CCD344();
  if (!v42)
  {
    v59 = v31;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v60 = off_28105B918;
    v61 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v62 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v62));
    v63 = v184;
    v64 = v185;
    (*(v185 + 16))(v181, &v60[v61], v184);
    os_unfair_lock_unlock(&v60[v62]);
    v65 = sub_225CCD934();
    v66 = sub_225CCED34();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_2259A7000, v65, v66, "Skipping reader auth structure because it does not have an x509 chain attached.", v67, 2u);
      MEMORY[0x22AA6F950](v67, -1, -1);
    }

    (*(v64 + 8))(v181, v63);
    result = (*(v28 + 1))(v59, v27);
    goto LABEL_15;
  }

  v43 = v42;
  v175 = v27;
  sub_225AA8304(v178, v9, type metadata accessor for ISO18013SessionTranscript);
  v44 = *(a1 + 80);
  v46 = *(a1 + 48);
  v200 = *(a1 + 64);
  v45 = v200;
  v201 = v44;
  v47 = *(a1 + 80);
  v202 = *(a1 + 96);
  v203 = *(a1 + 112);
  v48 = *(a1 + 48);
  v50 = *(a1 + 16);
  v198 = *(a1 + 32);
  v49 = v198;
  v199 = v48;
  v51 = *(a1 + 16);
  v197[0] = *a1;
  v52 = v197[0];
  v197[1] = v51;
  v53 = &v9[*(v179 + 20)];
  v54 = *(a1 + 96);
  *(v53 + 5) = v47;
  *(v53 + 6) = v54;
  *(v53 + 3) = v46;
  *(v53 + 4) = v45;
  *(v53 + 1) = v50;
  *(v53 + 2) = v49;
  *(v53 + 14) = *(a1 + 112);
  *v53 = v52;
  sub_225A0DE54(v197, &p_isa, &qword_27D73AD30);
  v55 = v186;
  sub_225AA5E24(v31, v9, type metadata accessor for ISO18013ReaderAuthentication, &qword_27D73C260, type metadata accessor for ISO18013ReaderAuthentication, &protocol conformance descriptor for ISO18013ReaderAuthentication, type metadata accessor for ISO18013ReaderAuthentication);
  v56 = v55;
  v57 = MEMORY[0x277D841D0];
  v183 = v28;
  v186 = v43;
  v174 = v31;
  if (v55)
  {
    sub_225AA825C(v9, type metadata accessor for ISO18013ReaderAuthentication);
    v179 = 0;
    v58 = v184;
  }

  else
  {
    sub_225AA825C(v9, type metadata accessor for ISO18013ReaderAuthentication);
    v68 = v184;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v69 = off_28105B918;
    v70 = *(*off_28105B918 + *v57 + 16);
    v71 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v71));
    v72 = v185;
    v73 = &v69[v70];
    v74 = v177;
    (*(v185 + 16))(v177, v73, v68);
    v75 = &v69[v71];
    v76 = v74;
    os_unfair_lock_unlock(v75);
    v77 = v186;

    v78 = sub_225CCD934();
    v79 = sub_225CCED34();

    if (os_log_type_enabled(v78, v79))
    {
      LODWORD(v179) = v79;
      v181 = 0;
      v80 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      p_isa = v173;
      v178 = v80;
      *v80 = 136446210;
      isa = v77[2].isa;
      v82 = MEMORY[0x277D84F90];
      if (isa)
      {
        v187 = MEMORY[0x277D84F90];
        sub_2259D52A4(0, isa, 0);
        v82 = v187;
        v83 = &v77[5];
        do
        {
          v84 = *(v83 - 1);
          v85 = *v83;
          sub_2259CB710(v84, *v83);
          v86 = sub_225CCCF84();
          v88 = v87;
          sub_2259BEF00(v84, v85);
          v187 = v82;
          v90 = v82[2];
          v89 = v82[3];
          if (v90 >= v89 >> 1)
          {
            sub_2259D52A4((v89 > 1), v90 + 1, 1);
            v82 = v187;
          }

          v83 += 2;
          v82[2] = v90 + 1;
          v91 = &v82[2 * v90];
          v91[4] = v86;
          v91[5] = v88;
          --isa;
        }

        while (isa);
        v93 = v175;
        v58 = v184;
        v77 = v186;
      }

      else
      {
        v58 = v68;
        v93 = v175;
      }

      v94 = MEMORY[0x22AA6D060](v82, MEMORY[0x277D837D0]);
      v96 = v95;

      v97 = sub_2259BE198(v94, v96, &p_isa);

      v98 = v178;
      *(v178 + 1) = v97;
      _os_log_impl(&dword_2259A7000, v78, v179, "Successfully validated Reader Auth list with X509 chain %{public}s", v98, 0xCu);
      v99 = v173;
      __swift_destroy_boxed_opaque_existential_0(v173);
      MEMORY[0x22AA6F950](v99, -1, -1);
      MEMORY[0x22AA6F950](v98, -1, -1);

      (*(v185 + 8))(v177, v58);
      v28 = v183;
      v92 = v174;
      v56 = v181;
    }

    else
    {

      (*(v72 + 8))(v76, v68);
      v58 = v68;
      v92 = v174;
      v93 = v175;
    }

    v100 = decodeCertificateChain(fromDER:)(v77);
    if (!v56)
    {
      v154 = v100;
      (*(v28 + 1))(v92, v93);

      *v182 = v154;
      return result;
    }

    v179 = 0;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v101 = off_28105B918;
  v102 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v103 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v103));
  v104 = v185;
  v105 = &v101[v102];
  v106 = v180;
  (*(v185 + 16))(v180, v105, v58);
  os_unfair_lock_unlock(&v101[v103]);
  v107 = v58;
  v108 = v186;

  v109 = v56;
  v110 = sub_225CCD934();
  v111 = sub_225CCED14();

  LODWORD(v178) = v111;
  v112 = os_log_type_enabled(v110, v111);
  v113 = v175;
  v181 = v56;
  if (v112)
  {
    v177 = v110;
    v114 = v107;
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    p_isa = v173;
    *v115 = 138412546;
    v117 = v56;
    v118 = _swift_stdlib_bridgeErrorToNSError();
    *(v115 + 4) = v118;
    v172 = v116;
    *v116 = v118;
    *(v115 + 12) = 2082;
    v119 = v108[2].isa;
    if (v119)
    {
      v187 = MEMORY[0x277D84F90];
      sub_2259D52A4(0, v119, 0);
      v120 = v187;
      v121 = &v108[5];
      do
      {
        v123 = *(v121 - 1);
        v122 = *v121;
        sub_2259CB710(v123, *v121);
        v124 = sub_225CCCF84();
        v126 = v125;
        sub_2259BEF00(v123, v122);
        v187 = v120;
        v128 = v120[2];
        v127 = v120[3];
        if (v128 >= v127 >> 1)
        {
          sub_2259D52A4((v127 > 1), v128 + 1, 1);
          v120 = v187;
        }

        v121 += 2;
        v120[2] = v128 + 1;
        v129 = &v120[2 * v128];
        v129[4] = v124;
        v129[5] = v126;
        --v119;
      }

      while (v119);

      v130 = v174;
      v131 = v184;
      v106 = v180;
      v56 = v181;
    }

    else
    {

      v120 = MEMORY[0x277D84F90];
      v130 = v174;
      v131 = v114;
    }

    v132 = MEMORY[0x22AA6D060](v120, MEMORY[0x277D837D0]);
    v134 = v133;

    v135 = sub_2259BE198(v132, v134, &p_isa);

    *(v115 + 14) = v135;
    v136 = v177;
    _os_log_impl(&dword_2259A7000, v177, v178, "IdentityDocumentWebPresentmentRawRequestValidator encountered error %@ while validating certificate for certificate chain. %{public}s", v115, 0x16u);
    v137 = v172;
    sub_2259CB640(v172, &unk_27D73FC90);
    MEMORY[0x22AA6F950](v137, -1, -1);
    v138 = v173;
    __swift_destroy_boxed_opaque_existential_0(v173);
    MEMORY[0x22AA6F950](v138, -1, -1);
    MEMORY[0x22AA6F950](v115, -1, -1);

    (*(v185 + 8))(v106, v131);
    v113 = v175;
    v28 = v183;
  }

  else
  {

    (*(v104 + 8))(v106, v107);
    v130 = v174;
  }

  swift_getErrorValue();
  Error.dipErrorCode.getter(v190, &p_isa);
  if (p_isa == 444 || (swift_getErrorValue(), Error.dipErrorCode.getter(v189, &p_isa), p_isa == 443))
  {
    v184 = "nticationStructure:)";
    v185 = ". Not a Jumbo Package";
    v139 = v56;
    v140 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v141 = swift_allocError();
    v143 = v142;
    swift_getErrorValue();
    v144 = v188;
    v145 = v56;
    sub_225B21FAC(v144, &p_isa);

    v146 = v192;
    v186 = v141;
    if (v192)
    {
      v182 = p_isa;
      v180 = v193;
      v147 = v195;
      v177 = v196;
      v178 = v194;
    }

    else
    {
      p_isa = &v56->isa;
      v148 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v149 = v187;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v151 = [v149 code];
        v152 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v152;
        *(inited + 40) = v151;
        v147 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v153 = v56;
        v180 = 0;
        v182 = 0;
        v178 = 0;
        v146 = MEMORY[0x277D84F90];
        v177 = v56;
      }

      else
      {
        p_isa = &v56->isa;
        v155 = v56;
        v156 = sub_225CCE954();
        v157 = v176;
        v158 = swift_dynamicCast();
        v159 = *(v156 - 8);
        (*(v159 + 56))(v157, v158 ^ 1u, 1, v156);
        LODWORD(v159) = (*(v159 + 48))(v157, 1, v156);
        sub_2259CB640(v157, &unk_27D73B050);
        if (v159)
        {
          v160 = 0;
        }

        else
        {
          v160 = 23;
        }

        v182 = v160;
        v146 = MEMORY[0x277D84F90];
        v147 = sub_225B2C374(MEMORY[0x277D84F90]);
        v161 = v56;
        v180 = 0;
        v177 = v56;
        v178 = 0;
      }
    }

    v162 = v185 | 0x8000000000000000;
    v163 = v184 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    p_isa = v147;
    sub_225B2C4A0(v140, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &p_isa);

    v165 = p_isa;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v146 = sub_225B29AA0(0, *(v146 + 2) + 1, 1, v146);
    }

    v167 = *(v146 + 2);
    v166 = *(v146 + 3);
    if (v167 >= v166 >> 1)
    {
      v146 = sub_225B29AA0((v166 > 1), v167 + 1, 1, v146);
    }

    v168 = v181;

    *(v146 + 2) = v167 + 1;
    v169 = &v146[56 * v167];
    *(v169 + 4) = 0;
    *(v169 + 5) = 0;
    *(v169 + 6) = 0xD00000000000004CLL;
    *(v169 + 7) = v162;
    *(v169 + 8) = 0xD00000000000003CLL;
    *(v169 + 9) = v163;
    *(v169 + 10) = 103;
    *v143 = v182;
    v170 = v180;
    *(v143 + 8) = v146;
    *(v143 + 16) = v170;
    v171 = v177;
    *(v143 + 24) = v178;
    *(v143 + 32) = v165;
    *(v143 + 40) = v171;
    swift_willThrow();

    return (*(v183 + 1))(v174, v175);
  }

  else
  {

    result = (*(v28 + 1))(v130, v113);
    *v182 = 0;
  }

  return result;
}

uint64_t sub_225AA80DC(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 + 8 * i);
      swift_bridgeObjectRetain_n();
      v9 = sub_225B1C4D8(&v13, v8);

      if (v9)
      {
        break;
      }

      if (v4 == v3)
      {
        return v6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v14 = v6;
    v12 = v2;
    if ((result & 1) == 0)
    {
      result = sub_2259D547C(0, *(v6 + 16) + 1, 1);
      v6 = v14;
    }

    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_2259D547C((v10 > 1), v11 + 1, 1);
      v6 = v14;
    }

    *(v6 + 16) = v11 + 1;
    *(v6 + 8 * v11 + 32) = v8;
    v2 = v12;
  }

  while (v4 != v3);
  return v6;
}

uint64_t sub_225AA825C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_225AA82BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225AA8304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ISO18013MobileSecurityObject.DeviceKeyInfo.init(deviceKey:keyAuthorizations:keyInfo:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = sub_225CCD494();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  result = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0);
  v11 = (a4 + *(result + 20));
  *v11 = v7;
  v11[1] = v8;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t ISO18013MobileSecurityObject.ValidityInfo.init(signed:validFrom:validUntil:expectedUpdate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_225CCD0B4();
  v11 = *(*(v10 - 8) + 32);
  v11(a5, a1, v10);
  v12 = type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
  v11(a5 + v12[5], a2, v10);
  v11(a5 + v12[6], a3, v10);
  v13 = a5 + v12[7];

  return sub_225A94CFC(a4, v13);
}

__n128 ISO18013MobileSecurityObject.init(version:digestAlgorithm:valueDigests:deviceKeyInfo:docType:validityInfo:timePolicy:status:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v16 = *(a11 + 32);
  v17 = *(a11 + 40);
  *a9 = *a1;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  v18 = type metadata accessor for ISO18013MobileSecurityObject(0);
  sub_225AA8630(a5, a9 + v18[7], type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
  v19 = (a9 + v18[8]);
  *v19 = a6;
  v19[1] = a7;
  sub_225AA8630(a8, a9 + v18[9], type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
  *(a9 + v18[10]) = a10;
  v20 = a9 + v18[11];
  result = *a11;
  v22 = *(a11 + 16);
  *v20 = *a11;
  *(v20 + 16) = v22;
  *(v20 + 32) = v16;
  *(v20 + 40) = v17;
  return result;
}

uint64_t sub_225AA8630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ISO18013MobileSecurityObject.IdentifierList.init(id:certificate:uri:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

__n128 ISO18013MobileSecurityObject.Status.init(identifierList:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

unint64_t sub_225AA86BC()
{
  v0._countAndFlagsBits = 3157553;
  v0._object = 0xE300000000000000;
  result = ISO18013Version.init(_:)(v0);
  if (v4)
  {
    v2 = 0uLL;
  }

  else
  {
    v2 = v3;
  }

  xmmword_27D73C268 = v2;
  return result;
}

double static ISO18013MobileSecurityObject.supportedVersion.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27D739F38 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_27D73C268;
  *a1 = xmmword_27D73C268;
  return result;
}

__n128 ISO18013MobileSecurityObject.version.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t ISO18013MobileSecurityObject.digestAlgorithm.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ISO18013MobileSecurityObject.docType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISO18013MobileSecurityObject(0) + 32));

  return v1;
}

uint64_t sub_225AA8890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ISO18013MobileSecurityObject.status.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ISO18013MobileSecurityObject(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_225AA8974(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_225AA8974(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
    return sub_225AA8984(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_225AA8984(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_2259CB710(result, a2);
    sub_2259CB6FC(a3, a4);
  }

  return result;
}

uint64_t sub_225AA89F8()
{
  sub_225CCE5B4();
}

uint64_t sub_225AA8B34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AAF3FC();
  *a1 = result;
  return result;
}

void sub_225AA8B64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6973726576;
  v5 = 0xEC0000006F666E49;
  v6 = 0x79746964696C6176;
  if (v2 != 5)
  {
    v6 = 0x737574617473;
    v5 = 0xE600000000000000;
  }

  v7 = 0xED00006F666E4979;
  v8 = 0x654B656369766564;
  if (v2 != 3)
  {
    v8 = 0x65707954636F64;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF6D687469726F67;
  v10 = 0x6C41747365676964;
  if (v2 != 1)
  {
    v10 = 0x67694465756C6176;
    v9 = 0xEC00000073747365;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_225AA8C68()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x79746964696C6176;
  if (v1 != 5)
  {
    v3 = 0x737574617473;
  }

  v4 = 0x654B656369766564;
  if (v1 != 3)
  {
    v4 = 0x65707954636F64;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C41747365676964;
  if (v1 != 1)
  {
    v5 = 0x67694465756C6176;
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