void sub_22FF5053C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v27 = a3;
  v5 = sub_22FFB0D38();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FFB0BE8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22FFB0C28();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  v19 = (2 * *(sub_22FF6C960(a1, a2) + 16)) | 1;
  sub_22FFB0DB8();
  v20 = v30;
  sub_22FFB0DD8();
  if (v20)
  {
    v31[0] = v20;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
    v23 = v29;
    if (swift_dynamicCast())
    {
      (*(v28 + 8))(v8, v23);
      v31[0] = v20;
      sub_22FF50A14(&qword_27DAF1CA0, MEMORY[0x277D6A9C0]);
      swift_allocError();
      v24 = v20;
      swift_dynamicCast();
    }

    else
    {
      swift_getErrorValue();
      sub_22FFB1C48();
      sub_22FF50A14(&qword_27DAF1CA0, MEMORY[0x277D6A9C0]);
      swift_allocError();
      sub_22FFB0D18();
    }

    swift_willThrow();
  }

  else
  {
    v21 = v27;
    (*(v12 + 16))(v16, v18, v11);
    ProvisioningCertificate.DeviceIdentity.init(extensionValue:)(v16, v31);
    (*(v12 + 8))(v18, v11);
    v25 = v31[1];
    *v21 = v31[0];
    v21[1] = v25;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22FF50970(uint64_t *a1, int a2)
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

uint64_t sub_22FF509B8(uint64_t result, int a2, int a3)
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

uint64_t sub_22FF50A14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ProvisioningCertificate.ChassisID.init<A>(extensionValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v49 = a4;
  v54 = sub_22FFB0D38();
  v51 = *(v54 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FFB14F8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v48[1] = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22FFB0BE8();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22FFB0C28();
  v50 = *(v19 - 8);
  v20 = *(v50 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v52 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v48 - v23;
  v56 = v15;
  v57 = a1;
  (*(v15 + 16))(v18, a1, a2);
  v25 = *(*(*(*(a3 + 8) + 8) + 8) + 8);
  v58 = a2;
  sub_22FFB18E8();
  sub_22FFB0DB8();
  v26 = v55;
  sub_22FFB0DD8();
  if (v26)
  {
    v27 = v26;
    v28 = v54;
  }

  else
  {
    v33 = v49;
    v34 = v50;
    (*(v50 + 16))(v52, v24, v19);
    v35 = sub_22FFB0C18();
    sub_22FF960FC(v35, v36, v37, v38);
    v40 = v39;
    v42 = v41;
    sub_22FFB14E8();
    v43 = sub_22FFB14B8();
    v45 = v44;
    sub_22FEA55AC(v40, v42);
    if (v45)
    {
      (*(v56 + 8))(v57, v58);
      v46 = *(v34 + 8);
      v46(v52, v19);
      result = (v46)(v24, v19);
      *v33 = v43;
      v33[1] = v45;
      return result;
    }

    sub_22FF512D0();
    v28 = v54;
    v27 = swift_allocError();
    sub_22FFB0D28();
    swift_willThrow();
    v47 = *(v34 + 8);
    v47(v52, v19);
    v47(v24, v19);
  }

  v59 = v27;
  v29 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  v30 = v53;
  if (swift_dynamicCast())
  {
    (*(v51 + 8))(v30, v28);
    v59 = v27;
    sub_22FF512D0();
    swift_allocError();
    v31 = v27;
    swift_dynamicCast();
  }

  else
  {
    swift_getErrorValue();
    sub_22FFB1C48();
    sub_22FF512D0();
    swift_allocError();
    sub_22FFB0D18();
  }

  swift_willThrow();

  return (*(v56 + 8))(v57, v58);
}

uint64_t sub_22FF50FF8()
{
  v0 = sub_22FFB0C98();
  __swift_allocate_value_buffer(v0, qword_28148F898);
  __swift_project_value_buffer(v0, qword_28148F898);
  return sub_22FFB0C88();
}

uint64_t static ProvisioningCertificate.ChassisID.objectIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148F890 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB0C98();
  v3 = __swift_project_value_buffer(v2, qword_28148F898);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProvisioningCertificate.ChassisID.string.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ProvisioningCertificate.ChassisID.init(extensionValue:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22FFB14F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_22FFB0C18();
  sub_22FF960FC(v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  sub_22FFB14E8();
  v14 = sub_22FFB14B8();
  v16 = v15;
  sub_22FEA55AC(v11, v13);
  if (v16)
  {
    v17 = sub_22FFB0C28();
    result = (*(*(v17 - 8) + 8))(a1, v17);
    *a2 = v14;
    a2[1] = v16;
  }

  else
  {
    sub_22FFB0D38();
    sub_22FF512D0();
    swift_allocError();
    sub_22FFB0D28();
    swift_willThrow();
    v19 = sub_22FFB0C28();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  return result;
}

unint64_t sub_22FF512D0()
{
  result = qword_27DAF1CA0;
  if (!qword_27DAF1CA0)
  {
    sub_22FFB0D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1CA0);
  }

  return result;
}

uint64_t static ProvisioningCertificate.ChassisID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22FFB1BC8();
  }
}

uint64_t ProvisioningCertificate.ChassisID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22FFB1548();
}

uint64_t ProvisioningCertificate.ChassisID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22FFB1CA8();
  sub_22FFB1548();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF513AC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22FFB1CA8();
  sub_22FFB1548();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF513F8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22FFB1548();
}

uint64_t sub_22FF51400()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22FFB1CA8();
  sub_22FFB1548();
  return sub_22FFB1CF8();
}

unint64_t sub_22FF5144C()
{
  result = qword_27DAF3670;
  if (!qword_27DAF3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3670);
  }

  return result;
}

uint64_t sub_22FF514A0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22FFB1BC8();
  }
}

uint64_t sub_22FF514D0(uint64_t a1, int a2)
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

uint64_t sub_22FF51518(uint64_t result, int a2, int a3)
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

uint64_t ProvisioningCertificate.DeviceIdentity.init<A>(extensionValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v34 = a4;
  v37 = sub_22FFB0D38();
  v35 = *(v37 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FFB0BE8();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22FFB0C28();
  v33 = *(v16 - 8);
  v17 = *(v33 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v33 - v21;
  v39 = v12;
  v40 = a1;
  (*(v12 + 16))(v15, a1, a2);
  v23 = *(*(*(*(a3 + 8) + 8) + 8) + 8);
  v41 = a2;
  sub_22FFB18E8();
  sub_22FFB0DB8();
  v24 = v38;
  sub_22FFB0DD8();
  if (v24)
  {
    v42[0] = v24;
    v27 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
    v28 = v36;
    v29 = v37;
    if (swift_dynamicCast())
    {
      (*(v35 + 8))(v28, v29);
      v42[0] = v24;
      sub_22FF512D0();
      swift_allocError();
      v30 = v24;
      swift_dynamicCast();
    }

    else
    {
      swift_getErrorValue();
      sub_22FFB1C48();
      sub_22FF512D0();
      swift_allocError();
      sub_22FFB0D18();
    }

    swift_willThrow();

    return (*(v39 + 8))(v40, v41);
  }

  else
  {
    v26 = v33;
    v25 = v34;
    (*(v33 + 16))(v20, v22, v16);
    ProvisioningCertificate.DeviceIdentity.init(extensionValue:)(v20, v42);
    (*(v39 + 8))(v40, v41);
    result = (*(v26 + 8))(v22, v16);
    v32 = v42[1];
    *v25 = v42[0];
    v25[1] = v32;
  }

  return result;
}

uint64_t sub_22FF519F8()
{
  v0 = sub_22FFB0C98();
  __swift_allocate_value_buffer(v0, qword_28148F8B8);
  __swift_project_value_buffer(v0, qword_28148F8B8);
  return sub_22FFB0C88();
}

uint64_t static ProvisioningCertificate.DeviceIdentity.objectIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148F8B0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB0C98();
  v3 = __swift_project_value_buffer(v2, qword_28148F8B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProvisioningCertificate.DeviceIdentity.identity.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ProvisioningCertificate.DeviceIdentity.init(extensionValue:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v61 = a2;
  v68 = sub_22FFB0D38();
  v66 = *(v68 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFB14F8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FFB0C28();
  v70 = *(v10 - 8);
  v71 = v10;
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v10);
  v63 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22FFB0CC8();
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CD8, &qword_22FFB43D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v59 - v25;
  v69 = a1;
  sub_22FFB0C18();
  sub_22FF52248();
  sub_22FFB0D98();
  if (v2)
  {
    v27 = v71;
    v28 = v68;
  }

  else
  {
    v60 = v24;
    v29 = v26;
    v30 = v64;
    v31 = v65;
    v32 = v72;
    if (v72[2] && (v33 = sub_22FFA6338(2), (v34 & 1) != 0))
    {
      (*(v30 + 2))(v29, v32[7] + *(v30 + 9) * v33, v31);
      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    (*(v30 + 7))(v29, v35, 1, v31);
    v36 = v60;
    sub_22FF52F38(v29, v60);
    if ((*(v30 + 6))(v36, 1, v31) == 1)
    {
      sub_22FEAEA34(v29, &qword_27DAF1CD8, &qword_22FFB43D0);
    }

    else
    {
      (*(v30 + 4))(v19, v36, v31);
      (*(v30 + 2))(v17, v19, v31);
      v41 = v63;
      v42 = v71;
      sub_22FFB0DA8();
      v43 = sub_22FFB0C18();
      v44 = v42;
      v45 = v43;
      v47 = v46;
      v64 = v19;
      v65 = v29;
      v48 = v30;
      v50 = v49;
      v51 = v41;
      v53 = v52;
      v54 = *(v70 + 8);
      v54(v51, v44);
      v72 = v45;
      v73 = v47;
      v74 = v50;
      v75 = v53;
      sub_22FFB14E8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CA8, &qword_22FFC0150);
      sub_22FEC734C();
      v55 = sub_22FFB14C8();
      v57 = v56;
      swift_unknownObjectRelease();
      (*(v48 + 1))(v64, v31);
      sub_22FEAEA34(v65, &qword_27DAF1CD8, &qword_22FFB43D0);
      if (v57)
      {
        result = (v54)(v69, v71);
        v58 = v61;
        *v61 = v55;
        v58[1] = v57;
        return result;
      }
    }

    sub_22FF512D0();
    v28 = v68;
    v3 = swift_allocError();
    sub_22FFB0D18();
    swift_willThrow();
    v27 = v71;
  }

  v72 = v3;
  v37 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  v38 = v67;
  if (swift_dynamicCast())
  {
    (*(v66 + 8))(v38, v28);
    v72 = v3;
    sub_22FF512D0();
    swift_allocError();
    v39 = v3;
    swift_dynamicCast();
  }

  else
  {
    swift_getErrorValue();
    sub_22FFB1C48();
    sub_22FF512D0();
    swift_allocError();
    sub_22FFB0D18();
  }

  swift_willThrow();

  return (*(v70 + 8))(v69, v27);
}

unint64_t sub_22FF52248()
{
  result = qword_28148F8D0;
  if (!qword_28148F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F8D0);
  }

  return result;
}

uint64_t ProvisioningCertificate.DeviceIdentity.Definition.properties.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unint64_t ProvisioningCertificate.DeviceIdentity.Definition.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22FFA7B9C(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t ProvisioningCertificate.DeviceIdentity.Definition.init(derEncoded:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v28 = a2;
  v4 = sub_22FFB0BE8();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FFB0D08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v31 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = sub_22FFB0C28();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22FFA7B9C(MEMORY[0x277D84F90]);
  (*(v9 + 16))(v14, a1, v8);
  sub_22FFB0DE8();
  if (v2)
  {
    (*(v9 + 8))(a1, v8);
  }

  else
  {
    v26 = v8;
    v27 = v16;
    v20 = v30;
    sub_22FFB0C18();
    sub_22FFB0E98();
    swift_unknownObjectRelease();
    v21 = v7;
    v22 = _s16CloudAttestation7ReleaseV17defaultIdentifier17SwiftASN1Internal0gE0VvgZ_0();
    MEMORY[0x28223BE20](v22);
    *(&v26 - 2) = &v32;
    sub_22FFB0EA8();
    v24 = *(v9 + 8);
    v25 = v26;
    v24(a1, v26);
    (*(v29 + 8))(v21, v20);
    v24(v31, v25);
    result = (*(v27 + 8))(v19, v15);
    *v28 = v32;
  }

  return result;
}

uint64_t sub_22FF5271C(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CD8, &qword_22FFB43D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - v5;
  v62 = sub_22FFB0C58();
  v58 = *(v62 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v62);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22FFB0CE8();
  v10 = *(v65 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v65);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22FFB0C68();
  v52 = *(v68 - 8);
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22FFB0BE8();
  v55 = *(v64 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CC8, &qword_22FFBEEA0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v60 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v44 - v22;
  v24 = sub_22FFB0D08();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v66 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  sub_22FFB0C48();
  v28 = v25;
  v29 = *(v25 + 48);
  if (v29(v23, 1, v24) == 1)
  {
    return sub_22FEAEA34(v23, &qword_27DAF1CC8, &qword_22FFBEEA0);
  }

  v47 = v29;
  v50 = v6;
  v32 = *(v28 + 32);
  v31 = v28 + 32;
  v55 += 8;
  v56 = v32;
  v54 = (v10 + 88);
  v53 = *MEMORY[0x277D6A9A8];
  v45 = v10;
  v48 = (v52 + 32);
  v49 = (v10 + 96);
  v51 = (v58 + 8);
  v52 += 8;
  v57 = v24;
  v58 = v31 - 24;
  v33 = v66;
  v46 = v31;
  while (1)
  {
    v56(v33, v23, v24);
    v34 = v63;
    sub_22FFB0CD8();
    v35 = sub_22FFB0BD8();
    (*v55)(v34, v64);
    sub_22FFB0CF8();
    v36 = v65;
    v37 = (*v54)(v13, v65);
    if (v37 != v53)
    {
      (*(v45 + 8))(v13, v36);
      sub_22FFB0D38();
      sub_22FF512D0();
      swift_allocError();
      sub_22FFB0D18();
      swift_willThrow();
LABEL_11:
      v24 = v57;
      return (*v58)(v66, v24);
    }

    (*v49)(v13, v36);
    (*v48)(v67, v13, v68);
    sub_22FFB0C38();
    v38 = sub_22FFB0CC8();
    v39 = v50;
    v40 = v69;
    sub_22FFB0D88();
    v69 = v40;
    if (v40)
    {
      (*v51)(v9, v62);
      (*v52)(v67, v68);
      goto LABEL_11;
    }

    (*(*(v38 - 8) + 56))(v39, 0, 1, v38);
    sub_22FECBE04(v39, v35);
    v41 = v60;
    sub_22FFB0C48();
    v24 = v57;
    v42 = v47;
    v43 = v47(v41, 1, v57);
    sub_22FEAEA34(v41, &qword_27DAF1CC8, &qword_22FFBEEA0);
    if (v43 != 1)
    {
      break;
    }

    (*v51)(v9, v62);
    (*v52)(v67, v68);
    v33 = v66;
    (*v58)(v66, v24);
    sub_22FFB0C48();
    if (v42(v23, 1, v24) == 1)
    {
      return sub_22FEAEA34(v23, &qword_27DAF1CC8, &qword_22FFBEEA0);
    }
  }

  sub_22FFB0D38();
  sub_22FF512D0();
  swift_allocError();
  sub_22FFB0D18();
  swift_willThrow();
  (*v51)(v9, v62);
  (*v52)(v67, v68);
  return (*v58)(v66, v24);
}

uint64_t sub_22FF52F38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CD8, &qword_22FFB43D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ProvisioningCertificate.Error()
{
  result = qword_27DAF3678;
  if (!qword_27DAF3678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22FF53030()
{
  result = sub_22FFB0D38();
  if (v1 <= 0x3F)
  {
    result = sub_22FED85D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t SEP.Attestation.identity.getter()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v6[0] = 0;
  v5[0] = 0;
  v5[3] = v6;
  v5[4] = v5;
  result = sub_22FED55F8(v1, v2, sub_22FEB341C);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t SEP.Attestation.boardID.getter()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 62;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = sub_22FF55E14(*(v1 + 16));
      v5 = HIDWORD(v4) & 1;
    }

    else
    {
      uint64 = aks_attest_context_get_uint64();
      LODWORD(v4) = 0;
      LOBYTE(v5) = uint64 != 0;
      if (!uint64)
      {
        LODWORD(v4) = 0;
      }
    }
  }

  else if (v2)
  {
    if (v1 > v1 >> 32)
    {
      __break(1u);
      __break(1u);
    }

    v4 = sub_22FF55E14(v1);
    v5 = HIDWORD(v4) & 1;
  }

  else
  {
    v3 = aks_attest_context_get_uint64();
    LODWORD(v4) = 0;
    LOBYTE(v5) = v3 != 0;
    if (!v3)
    {
      LODWORD(v4) = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4 | (v5 << 32);
}

uint64_t SEP.Attestation.nonce.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_22FF545A8(sub_22FF55EEC);
}

uint64_t SEP.Attestation.osType.getter()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v6[0] = 0;
  v5[0] = 0;
  v5[3] = v6;
  v5[4] = v5;
  result = sub_22FED55F8(v1, v2, sub_22FED545C);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SEP.Attestation.sealDataA.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_22FF53AE0(sub_22FF55F0C);
}

uint64_t SEP.Attestation.sealedHash(at:)(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  memset(v6, 0, 86);
  v7 = a1;
  v8 = v6;
  result = sub_22FED55F8(v3, v2, sub_22FED86EC);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SEP.Attestation.restrictedExecutionMode.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_22FF535A8();
}

uint64_t SEP.Attestation.ephemeralDataMode.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_22FF535A8();
}

uint64_t sub_22FF535A8()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 62;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v3 = *(v1 + 16);
LABEL_7:
    result = sub_22FF55D44(v3);
    goto LABEL_11;
  }

  if (v2)
  {
    v3 = v1;
    if (v1 > v1 >> 32)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

LABEL_8:
  if (aks_attest_context_get_uint64())
  {
    result = 2;
  }

  else
  {
    result = 0;
  }

LABEL_11:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SEP.Attestation.developerMode.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_22FF535A8();
}

uint64_t SEP.Attestation.sealDataB.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_22FF53AE0(sub_22FF55F3C);
}

uint64_t SEP.Attestation.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v11 = sub_22FF55750(*MEMORY[0x277CEE028]);
  *(&v11 + 1) = v6;
  sub_22FF55368(&v11, 0);
  v12 = v11;
  sub_22FEA5608(a1, a2);
  v7 = sub_22FF558A4(&v12, a1, a2);
  result = sub_22FEA55AC(a1, a2);
  if (v7)
  {
    sub_22FF55FA4();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    sub_22FEA55AC(a1, a2);
    return sub_22FEA55AC(v12, *(&v12 + 1));
  }

  else
  {
    v10 = v12;
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = v10;
  }

  return result;
}

uint64_t SEP.Attestation.init(from:signer:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  sub_22FEA5608(a1, a2);
  SEP.Attestation.init(from:)(a1, a2, v21);
  if (v4)
  {

    v9 = a1;
    v10 = a2;
LABEL_9:
    result = sub_22FEA55AC(v9, v10);
LABEL_10:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v22 = v21[0];
  v23 = v21[1];
  *&v21[0] = 0;
  result = SecKeyCopyExternalRepresentation(a3, v21);
  if (result)
  {
    v12 = result;
    v13 = sub_22FFB07E8();
    v15 = v14;

    sub_22FF54D1C(v13, v15, &v22);
    sub_22FEA55AC(v13, v15);

    result = sub_22FEA55AC(a1, a2);
    v16 = v23;
    *a4 = v22;
    a4[1] = v16;
    goto LABEL_10;
  }

  v17 = *&v21[0];
  if (*&v21[0])
  {
    type metadata accessor for CFError(0);
    sub_22FF55FF8();
    swift_allocError();
    *v18 = v17;
    swift_willThrow();

    sub_22FEA55AC(a1, a2);
    v19 = v23;
    sub_22FEA55AC(v22, *(&v22 + 1));
    v10 = v19 >> 64;
    v9 = v19;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t SEP.Attestation.sealData.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_22FF53AE0(sub_22FF56050);
}

uint64_t sub_22FF53AE0(uint64_t (*a1)(void *))
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v11[0] = 0;
  v7[0] = 0;
  v7[3] = v11;
  v7[4] = v7;
  v8 = *v1;
  v9 = v3;
  v10 = v4;
  result = sub_22FED55F8(v3, v4, a1);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FF53B64()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05A50);
  __swift_project_value_buffer(v0, qword_27DB05A50);
  return sub_22FFB12E8();
}

uint64_t SEP.Attestation.data.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_22FF53C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _DWORD *a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_21:
    __break(1u);
  }

  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_16;
    }

    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    v8 = sub_22FFB0588();
    if (v8)
    {
      v9 = sub_22FFB05B8();
      if (__OFSUB__(v6, v9))
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v8 += v6 - v9;
    }

    if (__OFSUB__(v7, v6))
    {
      goto LABEL_18;
    }

    sub_22FFB05A8();
    if (v8)
    {
LABEL_16:
      result = aks_attest_context_init();
      *a4 = result;
      v16 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
  }

  else if (!v5)
  {
    goto LABEL_16;
  }

  v10 = a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = sub_22FFB0588();
  if (!v11)
  {
    result = sub_22FFB05A8();
    goto LABEL_23;
  }

  v12 = v11;
  v13 = sub_22FFB05B8();
  if (__OFSUB__(v10, v13))
  {
    goto LABEL_19;
  }

  v14 = v10 - v13 + v12;
  result = sub_22FFB05A8();
  if (v14)
  {
    goto LABEL_16;
  }

LABEL_23:
  __break(1u);
  return result;
}

double SEP.Attestation.init<A>(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_22FEC4190(a1, a2, *(*(*(*(a3 + 8) + 8) + 8) + 8));
  SEP.Attestation.init(from:)(v8, v9, v12);
  (*(*(a2 - 8) + 8))(a1, a2);
  if (!v4)
  {
    result = *v12;
    v11 = v12[1];
    *a4 = v12[0];
    a4[1] = v11;
  }

  return result;
}

void sub_22FF53E94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (aks_attest_context_verify())
    {
      sub_22FF55FA4();
      swift_allocError();
      *v2 = 3;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

double SEP.Attestation.init<A>(from:signer:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = sub_22FEC4190(a1, a3, *(*(*(*(a4 + 8) + 8) + 8) + 8));
  SEP.Attestation.init(from:signer:)(v10, v11, a2, v14);
  (*(*(a3 - 8) + 8))(a1, a3);
  if (!v5)
  {
    result = *v14;
    v13 = v14[1];
    *a5 = v14[0];
    a5[1] = v13;
  }

  return result;
}

uint64_t sub_22FF53FB0@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v23 = sub_22FFB0948();
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  if (aks_attest_context_get_sealed_hash())
  {
    v12 = type metadata accessor for SEP.SealedHash(0);
    result = (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  else
  {
    v14 = *(a1 + 54);
    v22[0] = *(a1 + 38);
    v22[1] = v14;
    v22[2] = *(a1 + 70);
    v15 = sub_22FF56430(v22, *(a1 + 37));
    v17 = v16;
    v18 = *(a1 + 16);
    v19 = type metadata accessor for SEP.SealedHash(0);
    v20 = &a2[*(v19 + 20)];
    *v20 = v15;
    v20[1] = v17;
    type metadata accessor for SEP.SealedHash.Value(0);
    swift_storeEnumTagMultiPayload();
    *a2 = v18;
    result = (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_22FF54190@<X0>(_BYTE **a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X5>, unint64_t a4@<X6>, void *a5@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  result = sub_22FF542BC(a1, a2, a3, a4, a5, sub_22FEBFA54);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_22FF541F4@<X0>(_BYTE **a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X5>, unint64_t a4@<X6>, void *a5@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  result = sub_22FF542BC(a1, a2, a3, a4, a5, sub_22FEBFA54);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_22FF54258@<X0>(_BYTE **a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X5>, unint64_t a4@<X6>, void *a5@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  result = sub_22FF542BC(a1, a2, a3, a4, a5, sub_22FEBFA54);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_22FF542BC@<X0>(_BYTE **a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X5>, unint64_t a4@<X6>, void *a5@<X8>, uint64_t (*a6)(void *))
{
  v16 = *MEMORY[0x277D85DE8];
  result = aks_attest_context_get();
  if (result || (result = *a1) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0x3000000000000000;
  }

  else
  {
    v12 = sub_22FF56430(result, *a2);
    v14 = v13;
    MEMORY[0x28223BE20](v12);
    sub_22FED55F8(a3, a4, a6);
    result = SEP.SealData.init(for:data:)(v12, v14, a5);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_22FF543F8@<X0>(_BYTE **a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_22FFB14F8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  result = aks_attest_context_get();
  if (!result)
  {
    result = *a1;
    if (*a1)
    {
      v10 = sub_22FF56430(result, *a2);
      v12 = v11;
      sub_22FFB14E8();
      v13 = sub_22FFB14B8();
      if (v14)
      {
        SEP.Identity.init(string:)(v13, v14, &v15);
        result = sub_22FEA55AC(v10, v12);
        v9 = v16;
        if (v16 != 2)
        {
          *a3 = v15;
          goto LABEL_3;
        }
      }

      else
      {
        result = sub_22FEA55AC(v10, v12);
      }
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  v9 = 2;
LABEL_3:
  *(a3 + 16) = v9;
  return result;
}

uint64_t SEP.Attestation.rawPublicKeyData.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_22FF545A8(sub_22FF56080);
}

uint64_t sub_22FF545A8(uint64_t (*a1)(void *))
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v8[0] = 0;
  v7[0] = 0;
  v7[3] = v8;
  v7[4] = v7;
  sub_22FED55F8(v3, v4, a1);
  result = v7[5];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_22FF54628@<X0>(_BYTE **a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (aks_attest_context_get())
  {
    result = 0;
    v7 = 0xF000000000000000;
LABEL_5:
    *a3 = result;
    a3[1] = v7;
    return result;
  }

  result = *a1;
  if (*a1)
  {
    result = sub_22FF56430(result, *a2);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t SEP.Attestation.cryptexLockdown.getter()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13[-v3];
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  if (qword_281490280 != -1)
  {
    swift_once();
  }

  v7 = sub_22FFB0958();
  v8 = __swift_project_value_buffer(v7, qword_281491418);
  memset(v14, 0, sizeof(v14));
  *&v13[-16] = MEMORY[0x28223BE20](v8);
  *&v13[-8] = v14;
  sub_22FED55F8(v6, v5, sub_22FF56508);
  v9 = type metadata accessor for SEP.SealedHash(0);
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
  {
    sub_22FEAEA34(v4, &qword_27DAF1F08, &qword_22FFB4B00);
    result = 2;
  }

  else
  {
    v11 = *v4;
    sub_22FF560A0(v4);
    result = (v11 >> 2) & 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SEP.Attestation.publicKeyData.getter@<X0>(uint64_t *a1@<X8>)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3690, &qword_22FFBDE20);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-1] - v8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v31[0] = 0;
  v28[0] = 0;
  v28[3] = v31;
  v28[4] = v28;
  result = sub_22FED55F8(v10, v11, sub_22FF56520);
  v13 = v30;
  if (v30 >> 60 == 15)
  {
    goto LABEL_16;
  }

  v14 = v29;
  v15 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v15 != 2 || *(v29 + 16) == *(v29 + 24))
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (!v15)
  {
    if ((v30 & 0xFF000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_8:
    sub_22FF54FA4(v10, v11, v9);
    v16 = sub_22FFB09C8();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v9, 1, v16) != 1)
    {
      sub_22FF560FC(v9, v7);
      v23 = (*(v17 + 88))(v7, v16);
      if (v23 == *MEMORY[0x277CEDFE8])
      {
        *a1 = v14;
        a1[1] = v13 | 0x2000000000000000;
LABEL_20:
        result = sub_22FEAEA34(v9, &qword_27DAF3690, &qword_22FFBDE20);
        goto LABEL_17;
      }

      if (v23 == *MEMORY[0x277CEDFF0] || v23 == *MEMORY[0x277CEE000] || v23 == *MEMORY[0x277CEDFF8] || v23 == *MEMORY[0x277CEE008])
      {
        result = sub_22FEAEA34(v9, &qword_27DAF3690, &qword_22FFBDE20);
        *a1 = v14;
        a1[1] = v13;
        goto LABEL_17;
      }

      (*(v17 + 8))(v7, v16);
    }

    if (qword_27DAF1478 != -1)
    {
      swift_once();
    }

    v18 = sub_22FFB12F8();
    __swift_project_value_buffer(v18, qword_27DB05A50);
    v19 = sub_22FFB12D8();
    v20 = sub_22FFB1828();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22FE99000, v19, v20, "Unsupported public key type", v21, 2u);
      MEMORY[0x23190EFF0](v21, -1, -1);
    }

    sub_22FEA56EC(v14, v13);

    *a1 = xmmword_22FFBDE10;
    goto LABEL_20;
  }

  if (v29 != v29 >> 32)
  {
    goto LABEL_8;
  }

LABEL_15:
  result = sub_22FEA56EC(v29, v30);
LABEL_16:
  *a1 = xmmword_22FFBDE10;
LABEL_17:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FF54C44@<X0>(void *a1@<X1>, void *a2@<X2>, char *a3@<X8>)
{
  result = aks_attest_context_get();
  if (!result && *a1 && *a2 == 1)
  {
    result = sub_22FF54CC8(**a1, &v8);
    v7 = v8;
  }

  else
  {
    v7 = 8;
  }

  *a3 = v7;
  return result;
}

uint64_t sub_22FF54CC8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result & 0xF8) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_22FF54D1C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v14 = *a3;
      v15 = a3[1];
      v16 = a3[2];
      v17 = a3[3];
      MEMORY[0x28223BE20](a1);
      sub_22FEA5608(v14, v15);
      sub_22FEA5608(v16, v17);
      sub_22FED55F8(v16, v17, sub_22FF56538);
      sub_22FEA55AC(v14, v15);
      result = sub_22FEA55AC(v16, v17);
      goto LABEL_10;
    }

    v10 = *(a1 + 24);
    v11 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = *(a1 + 16);
    v12 = v10;
    goto LABEL_8;
  }

  if (v4)
  {
    v13 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    v11 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = a1;
    v12 = v13;
LABEL_8:
    result = sub_22FF5512C(a1, v12, v11, a3);
    goto LABEL_10;
  }

  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  MEMORY[0x28223BE20](a1);
  sub_22FEA5608(v5, v6);
  sub_22FEA5608(v7, v8);
  sub_22FED55F8(v7, v8, sub_22FF564E0);
  sub_22FEA55AC(v5, v6);
  result = sub_22FEA55AC(v7, v8);
LABEL_10:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FF54FA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = a3;
      goto LABEL_9;
    }

    v5 = a1;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    result = sub_22FF5525C(v5, a3);
    goto LABEL_12;
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    goto LABEL_7;
  }

  v4 = a3;
LABEL_9:
  if (aks_attest_context_get_uint64())
  {
    v8 = sub_22FFB09C8();
    result = (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  }

  else
  {
    result = sub_22FFB09B8();
  }

LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FF5512C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = sub_22FFB0588();
  if (!result)
  {
    if (!__OFSUB__(a2, a1))
    {
      goto LABEL_4;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = sub_22FFB05B8();
  if (!__OFSUB__(a1, result))
  {
    if (!__OFSUB__(a2, a1))
    {
LABEL_4:
      v8 = sub_22FFB05A8();
      v9 = *a4;
      v10 = a4[1];
      v12 = a4[2];
      v11 = a4[3];
      MEMORY[0x28223BE20](v8);
      sub_22FEA5608(v9, v10);
      sub_22FEA5608(v12, v11);
      sub_22FED55F8(v12, v11, sub_22FF56538);
      sub_22FEA55AC(v9, v10);
      return sub_22FEA55AC(v12, v11);
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22FF5525C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = sub_22FFB0588();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_22FFB05B8();
  if (__OFSUB__(a1, v6))
  {
    __break(1u);
LABEL_9:
    sub_22FFB05A8();
LABEL_10:
    __break(1u);
  }

  v7 = a1 - v6 + v5;
  sub_22FFB05A8();
  if (!v7)
  {
    goto LABEL_10;
  }

  if (aks_attest_context_get_uint64())
  {
    v8 = sub_22FFB09C8();
    result = (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  else
  {
    result = sub_22FFB09B8();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_22FF55368(uint64_t *result, int a2)
{
  v3 = result;
  v24 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_22FEA55AC(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_22FFB33B0;
      sub_22FEA55AC(0, 0xC000000000000000);
      result = sub_22FF555D0(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_22FEA55AC(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = *result;

  sub_22FEA55AC(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_22FFB33B0;
  sub_22FEA55AC(0, 0xC000000000000000);
  sub_22FFB06C8();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  result = sub_22FFB0588();
  if (result)
  {
    v13 = result;
    v14 = sub_22FFB05B8();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_22FFB05A8();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = memset(v13 + v15, a2, v19);
        *v3 = __b;
        v3[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FF555D0(int *a1, int a2)
{
  result = sub_22FFB0708();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_22FFB0588();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_22FFB05B8();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_22FFB05A8();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

unint64_t sub_22FF55678(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FF55698(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FF55750(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_22FFB05D8();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_22FFB0598();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22FFB0738();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_22FF557F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22FFB0588();
  if (!result)
  {
    goto LABEL_9;
  }

  v11 = result;
  result = sub_22FFB05B8();
  v12 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_22FFB05A8();
  result = sub_22FF53C1C(v11 + v12, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return result;
}

unint64_t sub_22FF558A4(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      sub_22FEA5608(a2, a3);
      sub_22FEA5608(a2, a3);
      sub_22FEA55AC(v8, v7);
      *&v25 = v8;
      WORD4(v25) = v7;
      BYTE10(v25) = BYTE2(v7);
      BYTE11(v25) = BYTE3(v7);
      BYTE12(v25) = BYTE4(v7);
      BYTE13(v25) = BYTE5(v7);
      BYTE14(v25) = BYTE6(v7);
      sub_22FF53C1C(&v25, a2, a3, &v24);
      if (v3)
      {
        v7 = v25;
        v10 = DWORD2(v25) | ((WORD6(v25) | (BYTE14(v25) << 16)) << 32);
        sub_22FEA55AC(a2, a3);
        sub_22FEA55AC(a2, a3);
        *a1 = v7;
        a1[1] = v10;
      }

      else
      {
        v7 = v24;
        v16 = v25;
        v17 = DWORD2(v25) | ((WORD6(v25) | (BYTE14(v25) << 16)) << 32);
        sub_22FEA55AC(a2, a3);
        sub_22FEA55AC(a2, a3);
        *a1 = v16;
        a1[1] = v17;
      }

      goto LABEL_20;
    }

    v14 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    sub_22FEA5608(a2, a3);
    sub_22FEA5608(a2, a3);
    sub_22FEA5608(v8, v7);
    sub_22FEA55AC(v8, v7);
    *a1 = xmmword_22FFB33B0;
    sub_22FEA55AC(0, 0xC000000000000000);
    v15 = v8 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v15 < v8)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (sub_22FFB0588() && __OFSUB__(v8, sub_22FFB05B8()))
      {
LABEL_23:
        __break(1u);
      }

      v18 = sub_22FFB05D8();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      v21 = sub_22FFB0568();

      v14 = v21;
    }

    if (v15 >= v8)
    {
      sub_22FEA5608(a2, a3);

      v7 = sub_22FF557F0(v8, v8 >> 32, v14, a2, a3);
      sub_22FEA55AC(a2, a3);

      sub_22FEA55AC(a2, a3);
      sub_22FEA55AC(a2, a3);
      *a1 = v8;
      a1[1] = v14 | 0x4000000000000000;
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v9 == 2)
  {
    sub_22FEA5608(a2, a3);
    sub_22FEA5608(a2, a3);
    sub_22FEA5608(v8, v7);
    sub_22FEA55AC(v8, v7);
    *&v25 = v8;
    *(&v25 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_22FFB33B0;
    sub_22FEA55AC(0, 0xC000000000000000);
    sub_22FFB06C8();
    v11 = *(&v25 + 1);
    v7 = *(v25 + 16);
    v12 = *(v25 + 24);
    sub_22FEA5608(a2, a3);
    v13 = sub_22FF557F0(v7, v12, *(&v25 + 1), a2, a3);
    if (!v3)
    {
      v7 = v13;
    }

    sub_22FEA55AC(a2, a3);
    sub_22FEA55AC(a2, a3);
    sub_22FEA55AC(a2, a3);
    *a1 = v25;
    a1[1] = v11 | 0x8000000000000000;
  }

  else
  {
    *(&v25 + 7) = 0;
    *&v25 = 0;
    sub_22FF53C1C(&v25, a2, a3, &v24);
    if (!v3)
    {
      v7 = v24;
    }
  }

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_22FF55D44(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sub_22FFB0588();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  v4 = sub_22FFB05B8();
  if (__OFSUB__(a1, v4))
  {
    __break(1u);
LABEL_9:
    sub_22FFB05A8();
LABEL_10:
    __break(1u);
  }

  v5 = a1 - v4 + v3;
  sub_22FFB05A8();
  if (!v5)
  {
    goto LABEL_10;
  }

  if (aks_attest_context_get_uint64())
  {
    result = 2;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22FF55E14(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sub_22FFB0588();
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = sub_22FFB05B8();
  if (__OFSUB__(a1, v4))
  {
    __break(1u);
    __break(1u);
LABEL_6:
    sub_22FFB05A8();
LABEL_7:
    __break(1u);
  }

  v5 = a1 - v4 + v3;
  sub_22FFB05A8();
  if (!v5)
  {
    goto LABEL_7;
  }

  uint64 = aks_attest_context_get_uint64();
  v7 = *MEMORY[0x277D85DE8];
  return (uint64 != 0) << 32;
}

_BYTE *sub_22FF55F6C@<X0>(uint64_t (*a1)(void *)@<X2>, void *a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return sub_22FF542BC(*(v2 + 16), *(v2 + 24), *(v2 + 48), *(v2 + 56), a2, a1);
}

unint64_t sub_22FF55FA4()
{
  result = qword_27DAF3688;
  if (!qword_27DAF3688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3688);
  }

  return result;
}

unint64_t sub_22FF55FF8()
{
  result = qword_27DAF1518;
  if (!qword_27DAF1518)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1518);
  }

  return result;
}

uint64_t sub_22FF560A0(uint64_t a1)
{
  v2 = type metadata accessor for SEP.SealedHash(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FF560FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3690, &qword_22FFBDE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FF56170()
{
  result = qword_27DAF3698;
  if (!qword_27DAF3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3698);
  }

  return result;
}

unint64_t sub_22FF561C8()
{
  result = qword_27DAF36A0;
  if (!qword_27DAF36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36A0);
  }

  return result;
}

uint64_t sub_22FF5621C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
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

uint64_t sub_22FF56270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t _s11AttestationV6OSTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s11AttestationV6OSTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22FF56430(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_22FF55698(a1, &a1[a2]);
  }

  v3 = sub_22FFB05D8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_22FFB0578();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_22FFB0738();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t SEP.Identity.udid.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84CC0];
  *(v3 + 16) = xmmword_22FFB2D20;
  v5 = MEMORY[0x277D84D30];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  v6 = MEMORY[0x277D84D90];
  *(v3 + 96) = MEMORY[0x277D84D38];
  *(v3 + 104) = v6;
  *(v3 + 72) = v2;

  return sub_22FFB14D8();
}

uint64_t SEP.Identity.ArchBits.SecurityDomain.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t SEP.Identity.init(chipID:ecid:archBits:swSeed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 17) = v6;
  *(a5 + 18) = v7;
  *(a5 + 20) = a4;
  return result;
}

uint64_t SEP.Identity.string.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22FFB2F50;
  v8 = MEMORY[0x277D84CC0];
  v9 = MEMORY[0x277D84D30];
  *(v7 + 56) = MEMORY[0x277D84CC0];
  *(v7 + 64) = v9;
  v10 = MEMORY[0x277D84D38];
  *(v7 + 32) = v1;
  v11 = MEMORY[0x277D84D90];
  *(v7 + 96) = v10;
  *(v7 + 104) = v11;
  *(v7 + 72) = v2;
  v12 = v5 & 3;
  if (v4)
  {
    v12 = v5 & 3 | 4;
  }

  if (v3)
  {
    v13 = 8;
  }

  else
  {
    v13 = 0;
  }

  v14 = MEMORY[0x277D84BC0];
  *(v7 + 136) = MEMORY[0x277D84B78];
  *(v7 + 144) = v14;
  *(v7 + 112) = v12 | v13;
  *(v7 + 176) = v8;
  *(v7 + 184) = v9;
  *(v7 + 152) = v6;

  return sub_22FFB14D8();
}

uint64_t SEP.Identity.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_22FFB14F8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_22FFB14E8();
  v8 = sub_22FFB14B8();
  if (!v9)
  {
    result = sub_22FEA55AC(a1, a2);
    goto LABEL_5;
  }

  SEP.Identity.init(string:)(v8, v9, &v12);
  result = sub_22FEA55AC(a1, a2);
  v11 = v13;
  if (v13 == 2)
  {
LABEL_5:
    *a3 = 0;
    a3[1] = 0;
    v11 = 2;
    goto LABEL_6;
  }

  *a3 = v12;
LABEL_6:
  a3[2] = v11;
  return result;
}

void SEP.Identity.archBits.getter(_BYTE *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  *a1 = v1[16];
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t SEP.Identity.ArchBits.rawValue.getter()
{
  if (v0[1])
  {
    v1 = v0[2] & 3 | 4;
  }

  else
  {
    v1 = v0[2] & 3;
  }

  if (*v0)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v1 | v2;
}

uint64_t sub_22FF568F4()
{
  v1 = *v0;
  sub_22FFB1CA8();
  sub_22FFB1CC8();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF56968()
{
  v1 = *v0;
  sub_22FFB1CA8();
  sub_22FFB1CC8();
  return sub_22FFB1CF8();
}

uint64_t SEP.Identity.ArchBits.init(rawValue:)@<X0>(int a1@<W0>, BOOL *a2@<X8>)
{
  v2 = a1;
  result = sub_22FEB1BA8(0, 2uLL, a1);
  if (result > 3u)
  {
    __break(1u);
  }

  else
  {
    *a2 = (v2 & 8) != 0;
    a2[1] = (v2 & 4) != 0;
    a2[2] = result;
  }

  return result;
}

uint64_t sub_22FF56A18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22FFB1CA8();
  sub_22FFB1CC8();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF56A90()
{
  v1 = *v0;
  v2 = v0[2] & 3 | 4;
  v0[1];
  return sub_22FFB1CC8();
}

uint64_t sub_22FF56AE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22FFB1CA8();
  sub_22FFB1CC8();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF56B5C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  result = SEP.Identity.ArchBits.init(rawValue:)(*a1, v6);
  v4 = v6[0];
  if (v6[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 2) = v6[2];
  *a2 = v5 | v4;
  return result;
}

void sub_22FF56BB4(_BYTE *a1@<X8>)
{
  if (v1[1])
  {
    v2 = v1[2] & 3 | 4;
  }

  else
  {
    v2 = v1[2] & 3;
  }

  if (*v1)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v2 | v3;
}

BOOL sub_22FF56BEC(_BYTE *a1, _BYTE *a2)
{
  v2 = a2[2];
  v3 = a1[2] & 3;
  if (a1[1])
  {
    v3 |= 4u;
  }

  if (a2[1])
  {
    v4 = v2 & 3 | 4;
  }

  else
  {
    v4 = v2 & 3;
  }

  if (*a1)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  if (*a2)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  return v6 == (v4 | v7);
}

uint64_t SEP.Identity.init(string:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v39[0] = 45;
  v39[1] = 0xE100000000000000;
  v38[2] = v39;
  v4 = sub_22FF571C8(4, 1, sub_22FF592B8, v38, a1, a2, v39);
  v5 = v4;
  if (v4[2] != 4)
  {
    goto LABEL_28;
  }

  v6 = v4[4];
  v7 = v4[5];
  if (!((v7 ^ v6) >> 14))
  {
    goto LABEL_28;
  }

  v9 = v4[6];
  v8 = v4[7];
  v10 = sub_22FF591F0(v4[4], v4[5], v9, v8, 16);
  if ((v10 & 0x10000000000) != 0)
  {

    v11 = sub_22FF586D4(v6, v7, v9, v8, 16);

    LODWORD(v10) = v11;
    if ((v11 & 0x100000000) != 0)
    {
      goto LABEL_28;
    }
  }

  else if ((v10 & 0x100000000) != 0)
  {
    goto LABEL_28;
  }

  if (v5[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  v12 = v5[8];
  v13 = v5[9];
  if (!((v13 ^ v12) >> 14))
  {
    goto LABEL_28;
  }

  v14 = v10;
  v16 = v5[10];
  v15 = v5[11];
  v17 = sub_22FF59124(v5[8], v5[9], v16, v15, 16);
  if ((v18 & 0x100) != 0)
  {

    v19 = sub_22FF58144(v12, v13, v16, v15, 16);
    v21 = v20;

    if (v21)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v18)
    {
      goto LABEL_28;
    }

    v19 = v17;
  }

  if (v5[2] < 3uLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v22 = v5[12];
  v23 = v5[13];
  if (!((v23 ^ v22) >> 14))
  {
    goto LABEL_28;
  }

  v25 = v5[14];
  v24 = v5[15];
  v26 = sub_22FF59054(v5[12], v5[13], v25, v24, 16);
  if ((v26 & 0x10000) != 0)
  {

    v27 = sub_22FF57B64(v22, v23, v25, v24, 16);

    if ((v27 & 0x100) == 0)
    {
      v26 = v27;
      goto LABEL_20;
    }

LABEL_28:

LABEL_29:
    *a3 = 0;
    a3[1] = 0;
    v37 = 2;
    goto LABEL_30;
  }

  if ((v26 & 0x100) != 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  if (v5[2] < 4uLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_28;
  }

  v28 = v26;
  v29 = v5[16];
  v30 = v5[17];
  v32 = v5[18];
  v31 = v5[19];

  if (!((v30 ^ v29) >> 14))
  {
    goto LABEL_28;
  }

  v33 = sub_22FF591F0(v29, v30, v32, v31, 16);
  if ((v33 & 0x10000000000) != 0)
  {
    v33 = sub_22FF586D4(v29, v30, v32, v31, 16);
  }

  v34 = v33;

  if ((v34 & 0x100000000) != 0)
  {
    goto LABEL_29;
  }

  result = SEP.Identity.ArchBits.init(rawValue:)(v28, v39);
  v36 = 256;
  if (!BYTE1(v39[0]))
  {
    v36 = 0;
  }

  v37 = v36 | LOBYTE(v39[0]) | (BYTE2(v39[0]) << 16) | (v34 << 32);
  *a3 = v14;
  a3[1] = v19;
LABEL_30:
  a3[2] = v37;
  return result;
}

uint64_t SEP.Identity.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = v0[5];
  sub_22FFB1CD8();
  MEMORY[0x23190E490](v2);
  sub_22FFB1CC8();
  return sub_22FFB1CD8();
}

uint64_t SEP.Identity.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = v0[5];
  sub_22FFB1CA8();
  sub_22FFB1CD8();
  MEMORY[0x23190E490](v2);
  sub_22FFB1CC8();
  sub_22FFB1CD8();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF57080()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = v0[5];
  sub_22FFB1CD8();
  MEMORY[0x23190E490](v2);
  sub_22FFB1CC8();
  return sub_22FFB1CD8();
}

uint64_t sub_22FF57110()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = v0[5];
  sub_22FFB1CA8();
  sub_22FFB1CD8();
  MEMORY[0x23190E490](v2);
  sub_22FFB1CC8();
  sub_22FFB1CD8();
  return sub_22FFB1CF8();
}

unint64_t sub_22FF571C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22FFB15F8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22FEC3458(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_22FEC3458((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22FFB15D8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22FFB1558();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22FFB1558();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22FFB15F8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_22FEC3458(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22FFB15F8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22FEC3458(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22FEC3458((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22FFB1558();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FF57588(uint64_t result, int a2, uint64_t (*a3)(_BYTE *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = *MEMORY[0x277D85DE8];
  v58 = *MEMORY[0x277D85DE8];
  if (result < 0)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v6 = a6;
  v9 = a5;
  v13 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    v14 = 0;
    if (v13 == 2)
    {
      v14 = *(a5 + 16);
    }
  }

  else
  {
    v11 = a5;
    if (v13)
    {
      v14 = a5;
    }

    else
    {
      v14 = 0;
    }
  }

  if (!result)
  {
    goto LABEL_18;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_25;
    }

    v11 = *(a5 + 16);
    if (v11 != *(a5 + 24))
    {
      goto LABEL_15;
    }

LABEL_18:
    if (v13 <= 1)
    {
      if (v13)
      {
        v16 = a5 >> 32;
        if (v14 != a5 >> 32)
        {
          goto LABEL_30;
        }

LABEL_28:
        if (a2)
        {
          sub_22FEA55AC(a5, a6);
          result = MEMORY[0x277D84F90];
          goto LABEL_78;
        }

LABEL_30:
        if (v16 >= v14)
        {
          v7 = sub_22FFB0788();
          v10 = v17;
          sub_22FEA55AC(v9, v6);
          result = sub_22FEC334C(0, 1, 1, MEMORY[0x277D84F90]);
          v9 = *(result + 16);
          v11 = *(result + 24);
          v6 = v9 + 1;
          if (v9 < v11 >> 1)
          {
LABEL_32:
            *(result + 16) = v6;
            v18 = result + 16 * v9;
            *(v18 + 32) = v7;
            *(v18 + 40) = v10;
            goto LABEL_78;
          }

LABEL_88:
          result = sub_22FEC334C((v11 > 1), v6, 1, result);
          goto LABEL_32;
        }

LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

LABEL_20:
      v16 = BYTE6(a6);
      if (v14 != BYTE6(a6))
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if (v13 == 2)
    {
      v16 = *(a5 + 24);
      if (v14 != v16)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

LABEL_25:
    v16 = 0;
    if (v14)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (!v13)
  {
    if ((a6 & 0xFF000000000000) != 0)
    {
      v15 = BYTE6(a6);
      goto LABEL_34;
    }

    goto LABEL_20;
  }

  v11 = a5;
  if (a5 == a5 >> 32)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v13 == 2)
  {
    v15 = *(a5 + 24);
  }

  else
  {
    v15 = a5 >> 32;
  }

LABEL_34:
  v47 = a5;
  v43 = -v15;
  v44 = a5 >> 32;
  v19 = MEMORY[0x277D84F90];
  v45 = BYTE6(a6);
  while (2)
  {
    if (v14 == v15)
    {
      v14 = v15;
      goto LABEL_70;
    }

    v39 = result;
    v41 = a2;
    if (v13 == 3)
    {
      __break(1u);
      return result;
    }

    v42 = v19;
    v46 = &v52[v14];
    v40 = v15;
LABEL_38:
    v20 = 0;
    v21 = v43 + v14;
    v48 = v14;
    while (1)
    {
      v22 = v14 + v20;
      if (v13 == 1)
      {
        v11 = v47;
        if (v22 < v47)
        {
          goto LABEL_82;
        }

        v11 = v44;
        if (v22 >= v44)
        {
          goto LABEL_82;
        }

        v24 = v8;
        v25 = sub_22FFB0588();
        if (!v25)
        {
          goto LABEL_92;
        }

        v10 = v25;
        v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        result = sub_22FFB05B8();
        v11 = v22 - result;
        if (__OFSUB__(v22, result))
        {
          goto LABEL_84;
        }

LABEL_53:
        v23 = *(v10 + v11);
        v8 = v24;
        v14 = v48;
        goto LABEL_54;
      }

      if (v13)
      {
        v11 = *(v9 + 16);
        if (v22 < v11)
        {
          goto LABEL_81;
        }

        v11 = *(v9 + 24);
        if (v22 >= v11)
        {
          goto LABEL_83;
        }

        v24 = v8;
        v26 = sub_22FFB0588();
        if (!v26)
        {
          goto LABEL_93;
        }

        v10 = v26;
        v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        result = sub_22FFB05B8();
        v11 = v22 - result;
        if (__OFSUB__(v22, result))
        {
          goto LABEL_85;
        }

        goto LABEL_53;
      }

      v11 = v45;
      if (v22 >= v45)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v52[0] = v47;
      v52[1] = BYTE1(v9);
      v52[2] = BYTE2(v9);
      v52[3] = BYTE3(v9);
      v52[4] = BYTE4(v9);
      v52[5] = BYTE5(v9);
      v52[6] = BYTE6(v9);
      v52[7] = HIBYTE(v9);
      v53 = v6;
      v54 = BYTE2(v6);
      v55 = BYTE3(v6);
      v56 = BYTE4(v6);
      v57 = BYTE5(v6);
      v23 = v46[v20];
LABEL_54:
      v52[0] = v23;
      v7 = a4;
      result = a3(v52);
      if (v8)
      {
        sub_22FEA55AC(v9, v6);

        goto LABEL_78;
      }

      if (result)
      {
        break;
      }

      ++v20;
      if (!(v21 + v20))
      {
        LOBYTE(a2) = v41;
        v19 = v42;
        v15 = v40;
        goto LABEL_70;
      }
    }

    if (v20 || (v41 & 1) == 0)
    {
      v27 = v42;
      if (v14 + v20 < v14)
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
      }

      v10 = 0;
      v49 = sub_22FFB0788();
      v29 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_22FEC334C(0, *(v42 + 2) + 1, 1, v42);
      }

      v31 = *(v27 + 2);
      v30 = *(v27 + 3);
      v32 = v27;
      v7 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v32 = sub_22FEC334C((v30 > 1), v31 + 1, 1, v32);
      }

      *(v32 + 2) = v7;
      v33 = &v32[16 * v31];
      v19 = v32;
      *(v33 + 4) = v49;
      *(v33 + 5) = v29;
      v14 += v20 + 1;
      result = v39;
      v15 = v40;
      a2 = v41;
      if (v7 == v39)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  ++v14;
  ++v46;
  v15 = v40;
  if (v14 != v40)
  {
    goto LABEL_38;
  }

  v14 = v40;
  LOBYTE(a2) = v41;
  v19 = v42;
LABEL_70:
  if (v14 == v15 && (a2 & 1) != 0)
  {
    sub_22FEA55AC(v9, v6);
    result = v19;
    goto LABEL_78;
  }

  if (v15 < v14)
  {
    __break(1u);
    goto LABEL_90;
  }

  v7 = sub_22FFB0788();
  v10 = v34;
  sub_22FEA55AC(v9, v6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_90:
    v19 = sub_22FEC334C(0, *(v19 + 2) + 1, 1, v19);
  }

  result = v19;
  v36 = *(v19 + 2);
  v35 = *(v19 + 3);
  if (v36 >= v35 >> 1)
  {
    result = sub_22FEC334C((v35 > 1), v36 + 1, 1, v19);
  }

  *(result + 16) = v36 + 1;
  v37 = result + 16 * v36;
  *(v37 + 32) = v7;
  *(v37 + 40) = v10;
LABEL_78:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *sub_22FF57B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_22FF59684();

  result = sub_22FFB15E8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22FF58C5C();
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22FFB19F8();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
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

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_22FF58144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_22FF59684();

  result = sub_22FFB15E8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22FF58C5C();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22FFB19F8();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_22FF586D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_22FF59684();

  result = sub_22FFB15E8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22FF58C5C();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22FFB19F8();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_22FF58C5C()
{
  v0 = sub_22FFB15F8();
  v4 = sub_22FF58CDC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_22FF58CDC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22FFB1538();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22FFB1898();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_22FF6BE0C(v9, 0);
  v12 = sub_22FF58E34(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22FFB1538();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22FFB19F8();
LABEL_4:

  return sub_22FFB1538();
}

unint64_t sub_22FF58E34(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22FF5B770(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22FFB15B8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22FFB19F8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22FF5B770(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22FFB1588();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_22FF59054(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_22FFB19F8();
  }

  result = sub_22FF59FB0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE1(result) & 1;
    v13 = result | ((BYTE1(result) & 1) << 8);
LABEL_8:
    LOBYTE(v14[0]) = (a4 & 0x1000000000000000) != 0;
    return v13 | (LOBYTE(v14[0]) << 16);
  }

  return result;
}

uint64_t sub_22FF59124(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_22FFB19F8();
  }

  result = sub_22FF59B44(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_22FF591F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_22FFB19F8();
  }

  result = sub_22FF596D8(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_22FF592B8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22FFB1BC8() & 1;
  }
}

BOOL _s16CloudAttestation3SEPO8IdentityV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 18);
  v5 = *(a1 + 18) & 3;
  if (*(a1 + 17))
  {
    v5 |= 4u;
  }

  if (*(a2 + 17))
  {
    v6 = v4 & 3 | 4;
  }

  else
  {
    v6 = v4 & 3;
  }

  if (*(a1 + 16))
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | v5;
  if (*(a2 + 16))
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  return v8 == (v6 | v9) && *(a1 + 20) == *(a2 + 20);
}

unint64_t sub_22FF593AC()
{
  result = qword_27DAF36A8;
  if (!qword_27DAF36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36A8);
  }

  return result;
}

unint64_t sub_22FF59404()
{
  result = qword_27DAF36B0;
  if (!qword_27DAF36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36B0);
  }

  return result;
}

unint64_t sub_22FF5945C()
{
  result = qword_27DAF36B8;
  if (!qword_27DAF36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36B8);
  }

  return result;
}

uint64_t _s8IdentityVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s8IdentityVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s8IdentityV8ArchBitsVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s8IdentityV8ArchBitsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
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
      *result = a2 + 1;
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

unint64_t sub_22FF59684()
{
  result = qword_27DAF36C0;
  if (!qword_27DAF36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36C0);
  }

  return result;
}

uint64_t sub_22FF596D8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_22FF5B770(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22FFB15A8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22FF5B770(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22FF5B770(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_22FFB15A8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_22FF59B44(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_22FF5B770(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22FFB15A8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22FF5B770(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22FF5B770(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_22FFB15A8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_22FF59FB0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_22FF5B770(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22FFB15A8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22FF5B770(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22FF5B770(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_22FFB15A8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 8);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFF00) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 >> 8))
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 8);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 >> 8))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFFFF00) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_22FF5A448()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05A68);
  __swift_project_value_buffer(v0, qword_27DB05A68);
  return sub_22FFB12E8();
}

void SEP.PhysicalDevice.attest(key:using:)(__SecKey *a1@<X1>, _OWORD *a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  Attestation = SecKeyCreateAttestation();
  if (Attestation)
  {
    v5 = Attestation;
    v6 = SecKeyCopyPublicKey(a1);
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = sub_22FFB07E8();
      v11 = v10;

      SEP.Attestation.init(from:signer:)(v9, v11, v7, a2);
    }

    else
    {
      if (qword_27DAF1480 != -1)
      {
        swift_once();
      }

      v12 = sub_22FFB12F8();
      __swift_project_value_buffer(v12, qword_27DB05A68);
      v13 = sub_22FFB12D8();
      v14 = sub_22FFB1838();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_22FE99000, v13, v14, "Failed to copy public key from DCIK, parsing attestation without checking signature", v15, 2u);
        MEMORY[0x23190EFF0](v15, -1, -1);
      }

      v8 = v5;
      v16 = sub_22FFB07E8();
      v18 = v17;

      SEP.Attestation.init(from:)(v16, v18, a2);
    }

    v19 = *MEMORY[0x277D85DE8];
  }

  else
  {
    __break(1u);
  }
}

uint64_t SEP.SealData.digest.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = v0[1];
  }

  else
  {
    v4 = *v0;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v0[1];
  }

  sub_22FF5C5B8(v1, v2, v3, sub_22FEA5608);
  return v4;
}

uint64_t SEP.SealData.init(for:data:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_22FEA5608(a1, a2);
  result = sub_22FEC3DC8(a1, a2, a1, a2);
  if (result)
  {
    v7 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (!v7)
      {
        v8 = BYTE6(a2);
        goto LABEL_12;
      }

LABEL_9:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
        return result;
      }

      v8 = HIDWORD(a1) - a1;
      goto LABEL_12;
    }

    if (v7 == 2)
    {
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (__OFSUB__(v9, v10))
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_12:
    if (qword_28148F5C8 != -1)
    {
      swift_once();
    }

    if (v8 == qword_281491370)
    {
      sub_22FF5AC34(a1, a2, &v23);
      sub_22FEA55AC(a1, a2);
      result = sub_22FEA55AC(a1, a2);
      v11 = v24;
      *a3 = v23;
LABEL_30:
      *(a3 + 16) = v11;
      return result;
    }
  }

  v12 = sub_22FEC3DC8(a1, a2, a1, a2);
  sub_22FEA55AC(a1, a2);
  if (v12)
  {
    v13 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v13 != 2 || *(a1 + 16) == *(a1 + 24))
      {
        goto LABEL_29;
      }
    }

    else if (v13)
    {
      if (a1 == a1 >> 32)
      {
LABEL_29:
        result = sub_22FEA55AC(a1, a2);
        *a3 = 0;
        *(a3 + 8) = 0;
        v11 = 0x3000000000000000;
        goto LABEL_30;
      }
    }

    else if ((a2 & 0xFF000000000000) == 0)
    {
      goto LABEL_29;
    }
  }

  if (qword_27DAF1488 != -1)
  {
    swift_once();
  }

  v14 = sub_22FFB12F8();
  __swift_project_value_buffer(v14, qword_27DB05A80);
  sub_22FEA5608(a1, a2);
  v15 = sub_22FFB12D8();
  v16 = sub_22FFB1838();
  sub_22FEA55AC(a1, a2);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v23 = v18;
    *v17 = 136446210;
    v19 = sub_22FFB07C8();
    v21 = sub_22FF9E448(v19, v20, &v23);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_22FE99000, v15, v16, "unknown SealDataA format: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x23190EFF0](v18, -1, -1);
    MEMORY[0x23190EFF0](v17, -1, -1);
  }

  result = sub_22FF96214(a1, a2);
  *a3 = result;
  *(a3 + 8) = v22;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_22FF5AB7C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05A80);
  __swift_project_value_buffer(v0, qword_27DB05A80);
  return sub_22FFB12E8();
}

double SEP.SealData.init(for:data:)@<D0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  SEP.SealData.init(for:data:)(a1, a2, &v6);
  v4 = v7;
  result = *&v6;
  *a3 = v6;
  *(a3 + 16) = v4;
  return result;
}

uint64_t sub_22FF5AC34@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = BYTE6(a2);
  v4 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(result + 16);
  v8 = *(result + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v7 = HIDWORD(result) - result;
  }

LABEL_11:
  if (qword_28148F5C8 != -1)
  {
    result = swift_once();
  }

  if (v7 != qword_281491370)
  {
    __break(1u);
    goto LABEL_28;
  }

  v10 = sub_22FFB0798();
  v11 = sub_22FFB0798();
  v12 = sub_22FFB0798();
  result = sub_22FFB0798();
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_29;
    }

    v14 = *(v4 + 16);
    v13 = *(v4 + 24);
    if (v13 < 4)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v6)
    {
      v13 = v4 >> 32;
    }

    else
    {
      v13 = v3;
    }

    if (v6)
    {
      v14 = v4;
    }

    else
    {
      v14 = 0;
    }

    if (v13 < 4)
    {
      goto LABEL_29;
    }
  }

  if (v13 >= v14)
  {
    v15 = (v10 << 24) | (v11 << 16) | (v12 << 8) | result;
    v16 = sub_22FFB0788();
    result = sub_22FF96214(v16, v17);
    *a3 = v15;
    a3[1] = result;
    a3[2] = v18 | 0x2000000000000000;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22FF5ADD0()
{
  result = sub_22FFB13A8();
  if (__OFADD__(result, 4))
  {
    __break(1u);
  }

  else
  {
    qword_281491370 = result + 4;
  }

  return result;
}

uint64_t SEP.SealData.serializedBytes.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if ((v3 & 0x2000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36C8, &unk_22FFC0160);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22FFB2F50;
    *(v5 + 32) = BYTE3(v1);
    *(v5 + 33) = BYTE2(v1);
    *(v5 + 34) = BYTE1(v1);
    *(v5 + 35) = v1;
    v6 = sub_22FF9F990(v5);
    v8 = v7;

    sub_22FF5C5B8(v1, v2, v3, sub_22FEA5608);
    sub_22FEA5608(v6, v8);
    sub_22FF5B8A0(v2, v3 & 0xDFFFFFFFFFFFFFFFLL);
    sub_22FF5C5B8(v1, v2, v3, sub_22FEA55AC);
    sub_22FEA55AC(v6, v8);
    return v6;
  }

  else
  {
    sub_22FEA5608(*v0, v0[1]);
    return sub_22FF96214(v1, v2);
  }
}

uint64_t sub_22FF5AF38(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v23 = *MEMORY[0x277D85DE8];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_22FEA55AC(v5, v4);
      *&v22 = v5;
      *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_22FFB33B0;
      sub_22FEA55AC(0, 0xC000000000000000);
      result = sub_22FF5B5E0(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_22FEA55AC(v5, v4);
      *&v22 = v5;
      WORD4(v22) = v4;
      BYTE10(v22) = BYTE2(v4);
      BYTE11(v22) = BYTE3(v4);
      BYTE12(v22) = BYTE4(v4);
      BYTE13(v22) = BYTE5(v4);
      BYTE14(v22) = BYTE6(v4);
      result = (a1)(&v22, &v22 + BYTE6(v4));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v2 = v8;
    v2[1] = v9;
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    result = (a1)(&v22, &v22);
LABEL_15:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_22FEA55AC(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_22FFB33B0;
  sub_22FEA55AC(0, 0xC000000000000000);
  sub_22FFB06C8();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  result = sub_22FFB0588();
  if (result)
  {
    v13 = result;
    v14 = sub_22FFB05B8();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_22FFB05A8();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = (a1)(v13 + v15, v13 + v15 + v19);
        *v2 = v22;
        v2[1] = v10 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22FF5B1E8(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_22FEA55AC(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_22FEA55AC(v6, v5);
    *v3 = xmmword_22FFB33B0;
    sub_22FEA55AC(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_22FFB0588() && __OFSUB__(v6, sub_22FFB05B8()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_22FFB05D8();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_22FFB0568();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_22FF5B6BC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_22FEA55AC(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_22FFB33B0;
    sub_22FEA55AC(0, 0xC000000000000000);
    sub_22FFB06C8();
    result = sub_22FF5B6BC(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FF5B58C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = a1(0, 0);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_22FF5B5E0(void (*a1)(uint64_t, uint64_t))
{
  result = sub_22FFB0708();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;
  v6 = *(v1 + 1);

  result = sub_22FFB0588();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_22FFB05B8();
  v8 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v5 - v4;
  v10 = sub_22FFB05A8();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v7 + v8, v7 + v8 + v11);
}

char *sub_22FF5B6BC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22FFB0588();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22FFB05B8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_22FFB05A8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_22FF5B770(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22FFB15C8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23190DD40](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_22FF5B7EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FF5B8A0(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v46 = a1;
  v47 = a2;
  v41 = a1;
  v42 = a2;
  sub_22FEA5608(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36D0, &qword_22FFBE480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C88, &unk_22FFC0140);
  if (swift_dynamicCast())
  {
    sub_22FE9B84C(v39, &v43);
    v3 = __swift_project_boxed_opaque_existential_1(&v43, v45);
    MEMORY[0x28223BE20](v3);
    sub_22FFB0618();
    result = __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_72;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_22FEC4CC8(v39);
  v5 = v47 >> 62;
  if ((v47 >> 62) > 1)
  {
    v6 = 0;
    v7 = 0;
    if (v5 == 2)
    {
      v6 = *(v46 + 16);
      v7 = *(v46 + 24);
    }
  }

  else
  {
    if (v5)
    {
      v6 = v46;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = v46 >> 32;
    }

    else
    {
      v7 = BYTE6(v47);
    }
  }

  v8 = sub_22FF5B7EC(v6, v7, v46, v47);
  v9 = *v2;
  v10 = v2[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = BYTE6(v10);
      v13 = BYTE6(v10);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v11 != 2)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_22;
  }

  v14 = v9 + 16;
  v9 = *(v9 + 16);
  v12 = *(v14 + 8);
  v13 = v12 - v9;
  if (__OFSUB__(v12, v9))
  {
    __break(1u);
LABEL_19:
    if (__OFSUB__(HIDWORD(v9), v9))
    {
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
    }

    v13 = HIDWORD(v9) - v9;
    v12 = v9 >> 32;
  }

LABEL_22:
  if (__OFADD__(v12, v8))
  {
    goto LABEL_83;
  }

  if (v12 + v8 < v12)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v12 < 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v15 = sub_22FFB0748();
  MEMORY[0x28223BE20](v15);
  sub_22FF5AF38(sub_22FF5C7B0);
  v16 = *(&v43 + 1);
  v17 = v43;
  if (v45 != v8)
  {
    v30 = 0;
    v31 = *v2;
    v32 = v2[1];
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v30 = *(v31 + 16);
      }
    }

    else if (v33)
    {
      v30 = v31;
    }

    v22 = __OFADD__(v30, v13);
    v34 = v30 + v13;
    if (!v22)
    {
      if (!__OFADD__(v34, v45))
      {
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v35 = *(v31 + 24);
          }

          else
          {
            v35 = 0;
          }
        }

        else if (v33)
        {
          v35 = v31 >> 32;
        }

        else
        {
          v35 = BYTE6(v32);
        }

        if (v35 >= v34 + v45)
        {
          sub_22FFB0758();
          goto LABEL_71;
        }

        goto LABEL_88;
      }

LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  LOBYTE(v18) = 0;
  v19 = *(&v43 + 1) >> 62;
  v20 = v44;
  v37 = v43 >> 32;
  v38 = BYTE14(v43);
  *(&v43 + 7) = 0;
  *&v43 = 0;
  while (v19 <= 1)
  {
    v21 = v17;
    if (!v19)
    {
      goto LABEL_34;
    }

LABEL_32:
    if (v20 == v21)
    {
      goto LABEL_73;
    }

LABEL_35:
    v22 = __OFSUB__(v20--, 1);
    if (v22)
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_90;
      }

      if (v20 < *(v17 + 16))
      {
        goto LABEL_77;
      }

      if (v20 >= *(v17 + 24))
      {
        goto LABEL_80;
      }

      v24 = sub_22FFB0588();
      if (!v24)
      {
        goto LABEL_92;
      }

      v25 = v24;
      v26 = sub_22FFB05B8();
      v27 = v20 - v26;
      if (__OFSUB__(v20, v26))
      {
        goto LABEL_82;
      }

      goto LABEL_51;
    }

    if (v19)
    {
      if (v20 < v17 || v20 >= v37)
      {
        goto LABEL_79;
      }

      v28 = sub_22FFB0588();
      if (!v28)
      {
        goto LABEL_91;
      }

      v25 = v28;
      v29 = sub_22FFB05B8();
      v27 = v20 - v29;
      if (__OFSUB__(v20, v29))
      {
        goto LABEL_81;
      }

LABEL_51:
      v23 = *(v25 + v27);
      goto LABEL_52;
    }

    if (v20 >= v38)
    {
      goto LABEL_78;
    }

    *&v39[0] = v17;
    WORD4(v39[0]) = v16;
    BYTE10(v39[0]) = BYTE2(v16);
    BYTE11(v39[0]) = BYTE3(v16);
    BYTE12(v39[0]) = BYTE4(v16);
    BYTE13(v39[0]) = BYTE5(v16);
    v23 = *(v39 + v20);
LABEL_52:
    *(&v43 + v18) = v23;
    v18 = v18 + 1;
    if ((v18 >> 8))
    {
      goto LABEL_76;
    }

    if (v18 == 14)
    {
      *&v39[0] = v43;
      *(v39 + 6) = *(&v43 + 6);
      sub_22FFB0778();
      LOBYTE(v18) = 0;
    }
  }

  if (v19 == 2)
  {
    v21 = *(v17 + 16);
    goto LABEL_32;
  }

LABEL_34:
  if (v20)
  {
    goto LABEL_35;
  }

LABEL_73:
  if (v18)
  {
    *&v39[0] = v43;
    *(v39 + 6) = *(&v43 + 6);
    sub_22FFB0778();
  }

LABEL_71:
  result = sub_22FEA55AC(v17, v16);
LABEL_72:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22FF5BE00(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C88, &unk_22FFC0140);
  if (!swift_dynamicCast())
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    sub_22FEC4CC8(v41);
    result = sub_22FF5C3A4(a1, a2);
    if ((result & 1) == 0)
    {
      goto LABEL_68;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_72;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v7 = a1 & 0xFFFFFFFFFFFFLL;
    }

LABEL_8:
    v8 = *v2;
    v9 = v2[1];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v11 = 0;
        v12 = 0;
        goto LABEL_18;
      }

      v13 = v8 + 16;
      v8 = *(v8 + 16);
      v11 = *(v13 + 8);
      v12 = v11 - v8;
      if (!__OFSUB__(v11, v8))
      {
LABEL_18:
        if (__OFADD__(v11, v7))
        {
          __break(1u);
        }

        else if (v11 + v7 >= v11)
        {
          if ((v11 & 0x8000000000000000) == 0)
          {
            v14 = sub_22FFB0748();
            MEMORY[0x28223BE20](v14);
            v15 = sub_22FF5B1E8(sub_22FF5C6BC);
            v19 = v16;
            if (v18 == v7)
            {
              v20 = v15;
              v21 = v17;
              if ((v16 & 0x2000000000000000) != 0)
              {
                v22 = HIBYTE(v16) & 0xF;
              }

              else
              {
                v22 = v15 & 0xFFFFFFFFFFFFLL;
              }

              *(v41 + 7) = 0;
              *&v41[0] = 0;
              if (4 * v22 == v17 >> 14)
              {
LABEL_67:

                goto LABEL_68;
              }

              LOBYTE(v23) = 0;
              v24 = (v15 >> 59) & 1;
              if ((v16 & 0x1000000000000000) == 0)
              {
                LOBYTE(v24) = 1;
              }

              v25 = 4 << v24;
              v39 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v40 = v16 & 0xFFFFFFFFFFFFFFLL;
              while (1)
              {
                v26 = v21 & 0xC;
                v27 = v21;
                if (v26 == v25)
                {
                  v27 = sub_22FF5B770(v21, v20, v19);
                }

                v28 = v27 >> 16;
                if (v27 >> 16 >= v22)
                {
                  __break(1u);
LABEL_70:
                  __break(1u);
LABEL_71:
                  __break(1u);
LABEL_72:
                  v7 = sub_22FFB1578();
                  goto LABEL_8;
                }

                if ((v19 & 0x1000000000000000) != 0)
                {
                  v30 = sub_22FFB15B8();
                  if (v26 != v25)
                  {
                    goto LABEL_40;
                  }
                }

                else if ((v19 & 0x2000000000000000) != 0)
                {
                  *&v43 = v20;
                  *(&v43 + 1) = v40;
                  v30 = *(&v43 + v28);
                  if (v26 != v25)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  v29 = v39;
                  if ((v20 & 0x1000000000000000) == 0)
                  {
                    v29 = sub_22FFB19F8();
                  }

                  v30 = *(v29 + v28);
                  if (v26 != v25)
                  {
LABEL_40:
                    if ((v19 & 0x1000000000000000) != 0)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_41;
                  }
                }

                v21 = sub_22FF5B770(v21, v20, v19);
                if ((v19 & 0x1000000000000000) != 0)
                {
LABEL_44:
                  if (v22 <= v21 >> 16)
                  {
                    goto LABEL_71;
                  }

                  v21 = sub_22FFB1588();
                  goto LABEL_46;
                }

LABEL_41:
                v21 = (v21 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_46:
                *(v41 + v23) = v30;
                v23 = v23 + 1;
                if ((v23 >> 8))
                {
                  goto LABEL_70;
                }

                if (v23 == 14)
                {
                  *&v43 = *&v41[0];
                  *(&v43 + 6) = *(v41 + 6);
                  sub_22FFB0778();
                  LOBYTE(v23) = 0;
                }

                if (4 * v22 == v21 >> 14)
                {
                  if (v23)
                  {
                    *&v43 = *&v41[0];
                    *(&v43 + 6) = *(v41 + 6);
                    sub_22FFB0778();
                  }

                  goto LABEL_67;
                }
              }
            }

            v31 = 0;
            v32 = *v2;
            v33 = v2[1];
            v34 = v33 >> 62;
            if ((v33 >> 62) > 1)
            {
              if (v34 == 2)
              {
                v31 = *(v32 + 16);
              }
            }

            else if (v34)
            {
              v31 = v32;
            }

            v35 = __OFADD__(v31, v12);
            v36 = v31 + v12;
            if (!v35)
            {
              if (!__OFADD__(v36, v18))
              {
                if (v34 > 1)
                {
                  if (v34 == 2)
                  {
                    v37 = *(v32 + 24);
                  }

                  else
                  {
                    v37 = 0;
                  }
                }

                else if (v34)
                {
                  v37 = v32 >> 32;
                }

                else
                {
                  v37 = BYTE6(v33);
                }

                if (v37 >= v36 + v18)
                {
                  sub_22FFB0758();
                  goto LABEL_67;
                }

                goto LABEL_78;
              }

LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
            }

LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        __break(1u);
        goto LABEL_75;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = BYTE6(v9);
      v12 = BYTE6(v9);
      goto LABEL_18;
    }

    if (__OFSUB__(HIDWORD(v8), v8))
    {
      goto LABEL_79;
    }

    v12 = HIDWORD(v8) - v8;
    v11 = v8 >> 32;
    goto LABEL_18;
  }

  sub_22FE9B84C(v41, &v43);
  v5 = __swift_project_boxed_opaque_existential_1(&v43, v44);
  MEMORY[0x28223BE20](v5);
  sub_22FFB0618();
  result = __swift_destroy_boxed_opaque_existential_1(&v43);
LABEL_68:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FF5C2CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  if (!result)
  {
    v12 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v12 != 2)
      {
        v13 = 0;
        goto LABEL_12;
      }

      v13 = *(a4 + 24);
    }

    else
    {
      if (!v12)
      {
        v13 = BYTE6(a5);
LABEL_12:
        *a6 = a4;
        a6[1] = a5;
        a6[2] = v13;
        a6[3] = 0;
        return result;
      }

      v13 = a4 >> 32;
    }

    result = sub_22FEA5608(a4, a5);
    goto LABEL_12;
  }

  v10 = result;
  v11 = a2 - result - a3;
  if (__OFSUB__(a2 - result, a3))
  {
    __break(1u);
  }

  else
  {
    sub_22FEA5608(a4, a5);
    result = sub_22FF8FC7C(a6, a3 + v10, v11, a4, a5);
    a6[3] = result;
  }

  return result;
}

unint64_t sub_22FF5C3A4(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0x1000000000000000;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
    {
      sub_22FFB19F8();
    }

    sub_22FFB0778();
  }

  return v2 >> 60;
}

uint64_t _s16CloudAttestation3SEPO8SealDataO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v4 & 0x2000000000000000) != 0)
  {
    if ((v7 & 0x2000000000000000) != 0 && v2 == v5)
    {
      sub_22FF5C5B8(*a2, a2[1], v7, sub_22FEA5608);
      sub_22FF5C5B8(v2, v3, v4, sub_22FEA5608);
      v9 = v4 & 0xDFFFFFFFFFFFFFFFLL;
      v11 = v7 & 0xDFFFFFFFFFFFFFFFLL;
      v8 = v3;
      v10 = v6;
      goto LABEL_7;
    }

LABEL_8:
    sub_22FF5C5B8(*a2, a2[1], v7, sub_22FEA5608);
    sub_22FF5C5B8(v2, v3, v4, sub_22FEA5608);
    v12 = 0;
    goto LABEL_9;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    goto LABEL_8;
  }

  sub_22FF5C5B8(*a2, a2[1], v7, sub_22FEA5608);
  sub_22FF5C5B8(v2, v3, v4, sub_22FEA5608);
  v8 = v2;
  v9 = v3;
  v10 = v5;
  v11 = v6;
LABEL_7:
  v12 = sub_22FEC3DC8(v8, v9, v10, v11);
LABEL_9:
  sub_22FF5C5B8(v2, v3, v4, sub_22FEA55AC);
  sub_22FF5C5B8(v5, v6, v7, sub_22FEA55AC);
  return v12 & 1;
}

uint64_t sub_22FF5C5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    return (a4)(a2, a3 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
    return a4();
  }
}

uint64_t sub_22FF5C5E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 24))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 16) & 0x1000000000000000) != 0)) | ((*(a1 + 16) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22FF5C634(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t sub_22FF5C6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 32);
  v7 = *v6;
  v8 = v6[1];
  result = sub_22FF5C714(a1, a2, *(v3 + 16));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v10;
    a3[2] = v11;
    a3[3] = v12;
  }

  return result;
}

uint64_t sub_22FF5C714(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_6;
  }

  if (__OFSUB__(a2 - result, a3))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_22FFB19C8();
  if ((v3 & 1) == 0)
  {

    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22FF5C7EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_22FF5C844@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t SEP.SealedHash.init(digest:flags:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_22FFB13F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v16 = 0;
    if (v15 != 2)
    {
      goto LABEL_10;
    }

    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    v16 = v17 - v18;
    if (!__OFSUB__(v17, v18))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return result;
  }

  v16 = HIDWORD(a1) - a1;
LABEL_10:
  if (sub_22FFB13A8() >= v16)
  {
    *a4 = v14;
    if ((v14 & 2) != 0)
    {
      sub_22FFB13E8();
      sub_22FEA5608(a1, a2);
      sub_22FED5478(a1, a2);
      sub_22FEA55AC(a1, a2);
      sub_22FEA55AC(a1, a2);
      v21 = type metadata accessor for SEP.SealedHash(0);
      (*(v9 + 32))(&a4[*(v21 + 20)], v13, v8);
    }

    else
    {
      v20 = &a4[*(type metadata accessor for SEP.SealedHash(0) + 20)];
      *v20 = a1;
      v20[1] = a2;
    }

    type metadata accessor for SEP.SealedHash.Value(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_22FF5FE1C();
    swift_allocError();
    *v19 = 1;
    *(v19 + 4) = 1;
    swift_willThrow();
    return sub_22FEA55AC(a1, a2);
  }
}

uint64_t SEP.SealedHash.Flags.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  return result;
}

{
  *a2 = result;
  return result;
}

uint64_t SEP.SealedHash.init(from:flags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *a3;
  v8 = &a4[*(type metadata accessor for SEP.SealedHash(0) + 20)];
  *v8 = a1;
  v8[1] = a2;
  type metadata accessor for SEP.SealedHash.Value(0);
  result = swift_storeEnumTagMultiPayload();
  *a4 = v7;
  return result;
}

uint64_t SEP.SealedHash.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SEP.SealedHash(0) + 20);

  return sub_22FF5FE70(v3, a1);
}

uint64_t SEP.SealedHash.data.getter()
{
  v1 = sub_22FFB13B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FFB13F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SEP.SealedHash.Value(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for SEP.SealedHash(0);
  sub_22FF5FE70(v0 + *(v15 + 20), v14);
  if (swift_getEnumCaseMultiPayload())
  {
    result = *v14;
    v17 = v14[1];
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    sub_22FFB13D8();
    v22 = v1;
    v23 = sub_22FF5FED4(&qword_28148F1A8, MEMORY[0x277CC52C8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    (*(v2 + 16))(boxed_opaque_existential_1, v5, v1);
    __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_22FFB0618();
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
    v19 = v20[1];
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v19;
  }

  return result;
}

uint64_t sub_22FF5CE54()
{
  v1 = sub_22FFB13B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FFB13F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SEP.SealedHash.Value(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FF5FE70(v0, v14);
  if (swift_getEnumCaseMultiPayload())
  {
    result = *v14;
    v16 = v14[1];
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    sub_22FFB13D8();
    v21 = v1;
    v22 = sub_22FF5FED4(&qword_28148F1A8, MEMORY[0x277CC52C8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    (*(v2 + 16))(boxed_opaque_existential_1, v5, v1);
    __swift_project_boxed_opaque_existential_1(v20, v21);
    sub_22FFB0618();
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
    v18 = v19[1];
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v18;
  }

  return result;
}

uint64_t sub_22FF5D114@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for SEP.SealedHash.Value(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v60 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22FFB13F8();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 2;
  v11 = *(type metadata accessor for SEP.SealedHash(0) + 20);
  sub_22FFB13E8();
  v65 = v5;
  swift_storeEnumTagMultiPayload();
  v58 = *(a1 + 16);
  if (v58)
  {
    v53[1] = v2;
    v12 = 0;
    v63 = (v8 + 32);
    v57 = a2;
    v13 = v60;
    v59 = a1;
    while (1)
    {
      if (v12 >= *(a1 + 16))
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      v75 = MEMORY[0x277CC9318];
      v76 = MEMORY[0x277CC9300];
      v64 = *(a1 + 16 * v12 + 32);
      v74 = v64;
      v14 = __swift_project_boxed_opaque_existential_1(&v74, MEMORY[0x277CC9318]);
      v16 = *v14;
      v15 = v14[1];
      v17 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        break;
      }

      if (v17)
      {
        v30 = (v16 >> 32) - v16;
        if (v16 >> 32 < v16)
        {
          goto LABEL_69;
        }

        sub_22FEA5608(v64, *(&v64 + 1));
        v31 = sub_22FFB0588();
        if (v31)
        {
          v32 = v31;
          v33 = sub_22FFB05B8();
          if (__OFSUB__(v16, v33))
          {
            goto LABEL_74;
          }

          v34 = (v16 - v33 + v32);
        }

        else
        {
          v34 = 0;
        }

        v42 = sub_22FFB05A8();
        v16 = 0;
        if (v42 >= v30)
        {
          v18 = v30;
        }

        else
        {
          v18 = v42;
        }

        v15 = 0xC000000000000000;
        v13 = v60;
        if (!v34)
        {
          a2 = v57;
          goto LABEL_24;
        }

        a2 = v57;
        if (!v18)
        {
          goto LABEL_24;
        }

        if (v18 < 15)
        {
          memset(__dst, 0, sizeof(__dst));
          v73 = v18;
          memcpy(__dst, v34, v18);
          v16 = *__dst;
          v18 = v73;
          v15 = v54 & 0xF00000000000000 | *&__dst[8] | (*&__dst[12] << 32) | (v73 << 48);
          __swift_destroy_boxed_opaque_existential_1(&v74);
          v54 = v15;
          goto LABEL_25;
        }

        goto LABEL_54;
      }

      __src = *v14;
      v67 = v15;
      v68 = BYTE2(v15);
      v69 = BYTE3(v15);
      v70 = BYTE4(v15);
      v18 = BYTE6(v15);
      v71 = BYTE5(v15);
      if (!BYTE6(v15))
      {
        v16 = 0;
        v15 = 0xC000000000000000;
LABEL_23:
        sub_22FEA5608(v64, *(&v64 + 1));
LABEL_24:
        __swift_destroy_boxed_opaque_existential_1(&v74);
        v18 = 0;
        goto LABEL_25;
      }

      if (BYTE6(v15) > 0xEuLL)
      {
        v19 = sub_22FFB05D8();
        v20 = *(v19 + 48);
        v21 = *(v19 + 52);
        swift_allocObject();
        sub_22FEA5608(v64, *(&v64 + 1));
        v22 = sub_22FFB0578();
LABEL_55:
        __swift_destroy_boxed_opaque_existential_1(&v74);
        v15 = v22 | 0x4000000000000000;
        v16 = v18 << 32;
        goto LABEL_25;
      }

      memset(__dst, 0, sizeof(__dst));
      v73 = BYTE6(v15);
      memcpy(__dst, &__src, BYTE6(v15));
      v16 = *__dst;
      v18 = v73;
      v15 = v56 & 0xF00000000000000 | *&__dst[8] | (*&__dst[12] << 32) | (v73 << 48);
      sub_22FEA5608(v64, *(&v64 + 1));
      __swift_destroy_boxed_opaque_existential_1(&v74);
      v56 = v15;
LABEL_25:
      if (sub_22FFB13A8() < v18)
      {
        v50 = 1;
LABEL_65:
        sub_22FF5FE1C();
        swift_allocError();
        *v51 = v50;
        *(v51 + 4) = 1;
        swift_willThrow();
        sub_22FED82C8(a2, type metadata accessor for SEP.SealedHash);
        sub_22FEA55AC(v16, v15);

        goto LABEL_67;
      }

      sub_22FF5FE70(&a2[v11], v13);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_22FED82C8(v13, type metadata accessor for SEP.SealedHash.Value);
        v50 = 0;
        goto LABEL_65;
      }

      v35 = v62;
      v36 = *v63;
      v37 = v61;
      (*v63)(v61, v13, v62);
      v38 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v38 == 2)
        {
          v40 = *(v16 + 16);
          v39 = *(v16 + 24);
          sub_22FEA5608(v16, v15);
          if (sub_22FFB0588() && __OFSUB__(v40, sub_22FFB05B8()))
          {
            goto LABEL_75;
          }

          if (__OFSUB__(v39, v40))
          {
            goto LABEL_72;
          }

LABEL_38:
          sub_22FFB05A8();
          sub_22FF5FED4(&qword_28148F188, MEMORY[0x277CC5550]);
          v37 = v61;
          v35 = v62;
          sub_22FFB1358();
          sub_22FEA55AC(v16, v15);
          a2 = v57;
          v13 = v60;
          goto LABEL_5;
        }

        sub_22FF5FED4(&qword_28148F188, MEMORY[0x277CC5550]);
        *&v74 = 0;
        *(&v74 + 6) = 0;
      }

      else
      {
        if (v38)
        {
          if (v16 >> 32 < v16)
          {
            goto LABEL_71;
          }

          sub_22FEA5608(v16, v15);
          if (sub_22FFB0588() && __OFSUB__(v16, sub_22FFB05B8()))
          {
            goto LABEL_76;
          }

          goto LABEL_38;
        }

        *&v74 = v16;
        WORD4(v74) = v15;
        BYTE10(v74) = BYTE2(v15);
        BYTE11(v74) = BYTE3(v15);
        BYTE12(v74) = BYTE4(v15);
        BYTE13(v74) = BYTE5(v15);
        *&v64 = v12;
        sub_22FF5FED4(&qword_28148F188, MEMORY[0x277CC5550]);
        v12 = v64;
      }

      sub_22FFB1358();
LABEL_5:
      ++v12;
      sub_22FED82C8(&a2[v11], type metadata accessor for SEP.SealedHash.Value);
      v36(&a2[v11], v37, v35);
      swift_storeEnumTagMultiPayload();
      sub_22FEA55AC(v16, v15);
      a1 = v59;
      if (v58 == v12)
      {

        goto LABEL_67;
      }
    }

    if (v17 != 2)
    {
      goto LABEL_23;
    }

    v23 = *(v16 + 16);
    v24 = *(v16 + 24);
    sub_22FEA5608(v64, *(&v64 + 1));
    v25 = sub_22FFB0588();
    if (v25)
    {
      v26 = v25;
      v27 = sub_22FFB05B8();
      if (__OFSUB__(v23, v27))
      {
        goto LABEL_73;
      }

      v28 = (v23 - v27 + v26);
      v29 = v24 - v23;
      if (__OFSUB__(v24, v23))
      {
        goto LABEL_70;
      }
    }

    else
    {
      v28 = 0;
      v29 = v24 - v23;
      if (__OFSUB__(v24, v23))
      {
        goto LABEL_70;
      }
    }

    v41 = sub_22FFB05A8();
    v16 = 0;
    if (v41 >= v29)
    {
      v18 = v29;
    }

    else
    {
      v18 = v41;
    }

    v15 = 0xC000000000000000;
    if (!v28)
    {
      a2 = v57;
      v13 = v60;
      goto LABEL_24;
    }

    a2 = v57;
    v13 = v60;
    if (!v18)
    {
      goto LABEL_24;
    }

    if (v18 < 15)
    {
      memset(__dst, 0, sizeof(__dst));
      v73 = v18;
      memcpy(__dst, v28, v18);
      v16 = *__dst;
      v18 = v73;
      v15 = v55 & 0xF00000000000000 | *&__dst[8] | (*&__dst[12] << 32) | (v73 << 48);
      __swift_destroy_boxed_opaque_existential_1(&v74);
      v55 = v15;
      goto LABEL_25;
    }

LABEL_54:
    v43 = sub_22FFB05D8();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    v22 = sub_22FFB0578();
    if (v18 < 0x7FFFFFFF)
    {
      goto LABEL_55;
    }

    sub_22FFB0738();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = v18;
    __swift_destroy_boxed_opaque_existential_1(&v74);
    v47 = *(v16 + 16);
    v46 = *(v16 + 24);
    v18 = v46 - v47;
    if (__OFSUB__(v46, v47))
    {
      goto LABEL_77;
    }

    v15 = v22 | 0x8000000000000000;
    goto LABEL_25;
  }

  sub_22FF5FE1C();
  swift_allocError();
  *v48 = 2;
  *(v48 + 4) = 1;
  swift_willThrow();
  result = sub_22FED82C8(a2, type metadata accessor for SEP.SealedHash);
LABEL_67:
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SEP.SealedHash.init<A, B>(ratchet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v86 = a5;
  v95 = a4;
  v74 = a1;
  v96[2] = *MEMORY[0x277D85DE8];
  v75 = type metadata accessor for SEP.SealedHash.Value(0);
  v9 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v84 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FFB13F8();
  v12 = *(v11 - 8);
  v90 = v11;
  v91 = v12;
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v92 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(a3 - 8);
  v16 = *(v88 + 64);
  MEMORY[0x28223BE20](v14);
  v85 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22FFB1888();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v71 - v21;
  v23 = *(a2 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  v28 = *(v73 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v71 - v29;
  *a6 = 2;
  v31 = *(type metadata accessor for SEP.SealedHash(0) + 20);
  sub_22FFB13E8();
  v93 = v31;
  v94 = a6;
  v32 = v88;
  swift_storeEnumTagMultiPayload();
  v89 = v23;
  (*(v23 + 16))(v26, v74, a2);
  sub_22FFB1608();
  v33 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_22FFB18A8();
  v34 = *(v32 + 48);
  v87 = v22;
  v81 = v34;
  v82 = v32 + 48;
  if (v34(v22, 1, a3) != 1)
  {
    v36 = v90;
    v80 = v30;
    v72 = a2;
    v38 = *(v32 + 32);
    v37 = v32 + 32;
    v78 = (v37 - 24);
    v79 = v38;
    v91 += 4;
    v39 = v75;
    v88 = v37;
    v40 = v87;
    v77 = v33;
    v76 = a3;
    while (1)
    {
      v48 = v85;
      v79(v85, v40, a3);
      v49 = sub_22FEC4190(v48, a3, v86);
      v51 = v50;
      (*v78)(v48, a3);
      v52 = v51 >> 62;
      v95 = v49;
      if ((v51 >> 62) > 1)
      {
        v53 = v39;
        if (v52 == 2)
        {
          v56 = *(v49 + 16);
          v55 = *(v49 + 24);
          v54 = v55 - v56;
          if (__OFSUB__(v55, v56))
          {
            goto LABEL_44;
          }
        }

        else
        {
          v54 = 0;
        }
      }

      else
      {
        v53 = v39;
        if (v52)
        {
          if (__OFSUB__(HIDWORD(v49), v49))
          {
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
          }

          v54 = HIDWORD(v49) - v49;
        }

        else
        {
          v54 = BYTE6(v51);
        }
      }

      if (sub_22FFB13A8() < v54)
      {
        v67 = 1;
        v59 = v89;
LABEL_39:
        sub_22FF5FE1C();
        swift_allocError();
        *v68 = v67;
        *(v68 + 4) = 1;
        swift_willThrow();
        sub_22FEA55AC(v95, v51);
        (*(v59 + 8))(v74, v72);
        (*(v73 + 8))(v80, v33);
        goto LABEL_40;
      }

      v57 = v84;
      sub_22FF5FE70(&v94[v93], v84);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v59 = v89;
      if (EnumCaseMultiPayload)
      {
        sub_22FED82C8(v57, type metadata accessor for SEP.SealedHash.Value);
        v67 = 0;
        v33 = v77;
        goto LABEL_39;
      }

      v60 = *v91;
      (*v91)(v92, v57, v36);
      v90 = v60;
      if (v52 > 1)
      {
        if (v52 == 2)
        {
          v61 = *(v95 + 16);
          v62 = *(v95 + 24);

          v63 = v36;
          if (sub_22FFB0588())
          {
            v64 = sub_22FFB05B8();
            v42 = v92;
            if (__OFSUB__(v61, v64))
            {
              goto LABEL_47;
            }

            if (__OFSUB__(v62, v61))
            {
              goto LABEL_46;
            }
          }

          else
          {
            v42 = v92;
            if (__OFSUB__(v62, v61))
            {
              goto LABEL_46;
            }
          }

          goto LABEL_36;
        }

        sub_22FF5FED4(&qword_28148F188, MEMORY[0x277CC5550]);
        memset(v96, 0, 14);
        v41 = v36;
        v42 = v92;
        sub_22FFB1358();
        v43 = v94;
        v44 = v95;
        v45 = v53;
      }

      else
      {
        if (v52)
        {
          v65 = v95;
          if (v95 >> 32 < v95)
          {
            goto LABEL_45;
          }

          v63 = v36;

          if (sub_22FFB0588())
          {
            v66 = sub_22FFB05B8();
            v42 = v92;
            if (__OFSUB__(v65, v66))
            {
              goto LABEL_48;
            }
          }

          else
          {
            v42 = v92;
          }

LABEL_36:
          sub_22FFB05A8();
          sub_22FF5FED4(&qword_28148F188, MEMORY[0x277CC5550]);
          v41 = v63;
          sub_22FFB1358();
          v44 = v95;
          sub_22FEA55AC(v95, v51);
          v43 = v94;
          v59 = v89;
          v45 = v75;
          goto LABEL_6;
        }

        v43 = v94;
        v44 = v95;
        v45 = v53;
        v96[0] = v95;
        LOWORD(v96[1]) = v51;
        BYTE2(v96[1]) = BYTE2(v51);
        BYTE3(v96[1]) = BYTE3(v51);
        BYTE4(v96[1]) = BYTE4(v51);
        BYTE5(v96[1]) = BYTE5(v51);
        sub_22FF5FED4(&qword_28148F188, MEMORY[0x277CC5550]);
        v41 = v36;
        v42 = v92;
        sub_22FFB1358();
      }

      sub_22FEA55AC(v44, v51);
LABEL_6:
      v46 = v93;
      sub_22FED82C8(v43 + v93, type metadata accessor for SEP.SealedHash.Value);
      v47 = v42;
      v36 = v41;
      v90(v43 + v46, v47, v41);
      v39 = v45;
      swift_storeEnumTagMultiPayload();
      sub_22FEA55AC(v44, v51);
      v40 = v87;
      v33 = v77;
      sub_22FFB18A8();
      a3 = v76;
      if (v81(v40, 1, v76) == 1)
      {
        (*(v73 + 8))(v80, v33);
        result = (*(v59 + 8))(v74, v72);
        goto LABEL_41;
      }
    }
  }

  (*(v73 + 8))(v30, AssociatedTypeWitness);
  sub_22FF5FE1C();
  swift_allocError();
  *v35 = 2;
  *(v35 + 4) = 1;
  swift_willThrow();
  (*(v89 + 8))(v74, a2);
LABEL_40:
  result = sub_22FED82C8(v94, type metadata accessor for SEP.SealedHash);
LABEL_41:
  v70 = *MEMORY[0x277D85DE8];
  return result;
}