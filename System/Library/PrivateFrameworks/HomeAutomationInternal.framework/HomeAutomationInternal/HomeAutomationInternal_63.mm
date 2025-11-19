uint64_t sub_252DD365C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252E36AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v9 = qword_27F544FD0;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v10 + 16), v39);

  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v11 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(v39);
  if ((v11 & 1) == 0 && a1)
  {
    v35[3] = v9;
    v36 = v5;
    v12 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);
    v13 = sub_252E35A74();
    v35[2] = v35;
    v14 = *(v13 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x28223BE20](v13);
    v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461A0, &qword_252E611D0);
    v35[1] = v35;
    v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v18 - 8);
    v21 = v35 - v20;
    v22 = [v12 associatedServiceType];
    v37 = v4;
    v38 = v13;
    if (v22)
    {
      v23 = v22;
      sub_252E36F34();

      sub_252E36FE4();
      v13 = v38;

      if ((*(v14 + 48))(v21, 1, v13) != 1)
      {
        (*(v14 + 32))(v17, v21, v13);
        v24 = v14;
LABEL_12:
        v35[0] = sub_252E35A54();
        v27 = v26;
        v28 = sub_252E35A64();
        v30 = v29;
        sub_252E35A34();
        v31 = sub_252E36C54();
        v33 = v32;

        (*(v24 + 8))(v17, v38);
        *a2 = v28;
        *(a2 + 8) = v30;
        *(a2 + 16) = v35[0];
        *(a2 + 24) = v27;
        *(a2 + 32) = 514;
        *(a2 + 40) = v31;
        *(a2 + 48) = v33;
        *(a2 + 56) = 0;
        sub_252E375C4();
        sub_252E36A74();
        v5 = v36;
        v4 = v37;
        return (*(v5 + 8))(v8, v4);
      }
    }

    else
    {
      (*(v14 + 56))(v21, 1, 1, v13);
    }

    sub_252E376E4();
    v25 = (*(v14 + 48))(v21, 1, v13);
    v24 = v14;
    if (v25 != 1)
    {
      sub_25293847C(v21, &qword_27F5461A0, &qword_252E611D0);
    }

    goto LABEL_12;
  }

  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_252E375C4();
  sub_252E36A74();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_252DD3B64@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_252E36AB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v7 = qword_27F544FD0;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 16), v24);

  __swift_project_boxed_opaque_existential_1(v24, v25);
  v9 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (v9)
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v22 = v3;
    v10 = sub_252DD3EBC();
    v12 = v11;
    v13 = sub_252E37484();
    v23 = v2;
    if (!v13 && !sub_252E37474())
    {
      sub_252E36C74();
    }

    v14 = sub_252E36C54();
    v16 = v15;
    v17 = qword_27F53F4D0;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    v21 = __swift_project_value_buffer(v18, qword_27F544D18);
    strcpy(v32, "Fetched icon ");
    HIWORD(v32[1]) = -4864;
    v24[0] = v10;
    v24[1] = v12;
    v24[2] = v10;
    v25 = v12;
    v26 = 0;
    v27 = v33;
    v28 = v34;
    v29 = v14;
    v30 = v16;
    v31 = 0;
    v19 = IconInfo.description.getter();
    MEMORY[0x2530AD570](v19);

    sub_252CC3D90(v32[0], v32[1], 0xD000000000000078, 0x8000000252E9CBF0);

    *a1 = v10;
    *(a1 + 8) = v12;
    *(a1 + 16) = v10;
    *(a1 + 24) = v12;
    *(a1 + 32) = 0;
    *(a1 + 34) = v33;
    *(a1 + 38) = v34;
    *(a1 + 40) = v14;
    *(a1 + 48) = v16;
    *(a1 + 56) = 0;
    v3 = v22;
    v2 = v23;
  }

  sub_252E375C4();
  sub_252E36A74();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_252DD3EBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461B8, &qword_252E61300);
  v1 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0 - 8);
  sub_252E37454();
  v2 = sub_252E37444();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(&v8 - v1, 1, v2);
  if (v4 != 1)
  {
    MEMORY[0x28223BE20](v4);
    sub_252938414(&v8 - v1, &v8 - v1, &qword_27F5461B8, &qword_252E61300);
    v6 = (*(v3 + 88))(&v8 - v1, v2);
    if (MEMORY[0x277D16EE8] && v6 == *MEMORY[0x277D16EE8])
    {
      v5 = 0xD000000000000013;
      goto LABEL_15;
    }

    if (MEMORY[0x277D16F08] && v6 == *MEMORY[0x277D16F08])
    {
      v5 = 0xD000000000000015;
      goto LABEL_15;
    }

    if (MEMORY[0x277D16F30] && v6 == *MEMORY[0x277D16F30])
    {
      v5 = 0x2E78616D2E6E7573;
      goto LABEL_15;
    }

    if (MEMORY[0x277D16F20] && v6 == *MEMORY[0x277D16F20])
    {
      v5 = 0x6174732E6E6F6F6DLL;
      goto LABEL_15;
    }

    (*(v3 + 8))(&v8 - v1, v2);
  }

  v5 = sub_252E37464();
LABEL_15:
  sub_25293847C(&v8 - v1, &qword_27F5461B8, &qword_252E61300);
  return v5;
}

uint64_t sub_252DD4144@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_252E36AB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v61 = sub_252E36AD4();
  __swift_project_value_buffer(v61, qword_27F544EB0);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E9CBD0, 0xD000000000000078, 0x8000000252E9CBF0);
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v7 = qword_27F544FD0;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 16), v63);

  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  v9 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(v63);
  if ((v9 & 1) == 0)
  {
    v54 = a1;
    v57 = v7;
    v58 = v6;
    v59 = v3;
    v60 = v2;
    sub_252CC3D90(0xD000000000000033, 0x8000000252E9CCA0, 0xD000000000000078, 0x8000000252E9CBF0);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461A8, &qword_252E611D8);
    v56 = v45;
    v50 = *(*(v10 - 8) + 64);
    v11 = MEMORY[0x28223BE20](v10);
    v51 = v12;
    v13 = (v45 - v12);
    v62 = v11;
    v14 = *(v11 + 48);
    v15 = *MEMORY[0x277D16570];
    v16 = sub_252E35A94();
    v17 = *(v16 - 8);
    v18 = v17[13];
    v18(v13, v15, v16);
    v46 = v15;
    v18(&v13[v14], v15, v16);
    v19 = sub_252E36C64();
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v61, qword_27F544D18);
    v63[0] = 0;
    v63[1] = 0xE000000000000000;
    sub_252E379F4();

    strcpy(v63, "Fetched icon");
    BYTE5(v63[1]) = 0;
    HIWORD(v63[1]) = -5120;
    MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E9CCE0);
    MEMORY[0x2530AD570](32, 0xE100000000000000);
    v55 = 0x8000000252E9CCE0;
    MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E9CCE0);
    MEMORY[0x2530AD570](32, 0xE100000000000000);
    v53 = v19;
    v20 = sub_252E36C54();
    MEMORY[0x2530AD570](v20);

    sub_252CC3D90(v63[0], v63[1], 0xD000000000000078, 0x8000000252E9CBF0);

    v52 = v45;
    v22 = v50;
    MEMORY[0x28223BE20](v21);
    v23 = (v45 - v51);
    v24 = sub_252938414(v13, v45 - v51, &qword_27F5461A8, &qword_252E611D8);
    v51 = v45;
    v25 = v17[8];
    MEMORY[0x28223BE20](v24);
    v26 = v17[2];
    v61 = v23;
    v48 = v26;
    v26(&v45[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)], v23, v16);
    v47 = v17[11];
    v27 = v47(&v45[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)], v16);
    v28 = v13;
    v29 = v22;
    if (MEMORY[0x277D16590] && v27 == *MEMORY[0x277D16590])
    {
      v49 = 0;
      v30 = v54;
LABEL_23:
      v32 = v17[1];
      v33 = v32(v61, v16);
      v51 = v45;
      MEMORY[0x28223BE20](v33);
      v34 = &v45[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v54 = v28;
      v35 = sub_252938414(v28, v34, &qword_27F5461A8, &qword_252E611D8);
      v50 = v45;
      v36 = *(v62 + 48);
      MEMORY[0x28223BE20](v35);
      v48(&v45[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)], &v34[v36], v16);
      v37 = v47(&v45[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)], v16);
      if (MEMORY[0x277D16590] && v37 == *MEMORY[0x277D16590])
      {
        v38 = 0;
      }

      else
      {
        if (!MEMORY[0x277D16580] || v37 != *MEMORY[0x277D16580])
        {
          if (!MEMORY[0x277D16570] || v37 != v46)
          {
            if (MEMORY[0x277D16598] && v37 == *MEMORY[0x277D16598])
            {
              v38 = 3;
              goto LABEL_36;
            }

            v32(&v45[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)], v16);
          }

          v38 = 2;
          goto LABEL_36;
        }

        v38 = 1;
      }

LABEL_36:
      v39 = *(v62 + 48);
      v32(&v34[v36], v16);
      v40 = sub_252E36C54();
      v42 = v41;

      sub_25293847C(v54, &qword_27F5461A8, &qword_252E611D8);
      v32(v34, v16);
      v32(&v61[v39], v16);
      v43 = v55;
      *v30 = 0xD000000000000013;
      *(v30 + 8) = v43;
      *(v30 + 16) = 0xD000000000000013;
      *(v30 + 24) = v43;
      *(v30 + 32) = v49;
      *(v30 + 33) = v38;
      *(v30 + 40) = v40;
      *(v30 + 48) = v42;
      *(v30 + 56) = 0;
      sub_252E375C4();
      v6 = v58;
      sub_252E36A74();
      v3 = v59;
      v2 = v60;
      return (*(v3 + 8))(v6, v2);
    }

    v30 = v54;
    if (MEMORY[0x277D16580] && v27 == *MEMORY[0x277D16580])
    {
      v31 = 1;
LABEL_22:
      v49 = v31;
      goto LABEL_23;
    }

    if (!MEMORY[0x277D16570] || v27 != v46)
    {
      if (MEMORY[0x277D16598] && v27 == *MEMORY[0x277D16598])
      {
        v31 = 3;
        goto LABEL_22;
      }

      (v17[1])(&v45[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)], v16);
    }

    v31 = 2;
    goto LABEL_22;
  }

  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  sub_252E375C4();
  sub_252E36A74();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_252DD4A04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_252E36AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544EB0);
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_252E379F4();

  v80 = 0xD00000000000002ELL;
  v81 = 0x8000000252E9CD00;
  v10 = HomeDeviceType.description.getter(a1);
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(v80, v81, 0xD000000000000078, 0x8000000252E9CBF0);

  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v11 = qword_27F544FD0;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v12 + 16), &v80);

  __swift_project_boxed_opaque_existential_1(&v80, v82);
  v13 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(&v80);
  if (v13)
  {
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    sub_252E375C4();
    sub_252E36A74();
    return (*(v5 + 8))(v8, v4);
  }

  v73 = a2;
  v75 = v8;
  v77 = v11;
  v78 = v5;
  v79 = v4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461A8, &qword_252E611D8);
  v76 = &v64;
  v15 = *(*(v14 - 8) + 64);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v64 - v16;
  v74 = MEMORY[0x28223BE20](v14);
  v18 = *(v74 + 12);
  v19 = a1;
  v20 = *MEMORY[0x277D16570];
  v21 = sub_252E35A94();
  v22 = *(v21 - 8);
  v23 = v22[13];
  v23(&v64 - v16, v20, v21);
  v70 = v20;
  v24 = (v23)(&v64 + v18 - v16, v20, v21);
  if (v19 == 41)
  {
    v69 = &v64;
    MEMORY[0x28223BE20](v24);
    v25 = &v64 - v16;
    v26 = sub_252938414(&v64 - v16, &v64 - v16, &qword_27F5461A8, &qword_252E611D8);
    v65 = &v64;
    v27 = v22[8];
    MEMORY[0x28223BE20](v26);
    v28 = v22[2];
    v72 = v25;
    v67 = v28;
    v28(&v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v21);
    v66 = v22[11];
    v29 = v66(&v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    v30 = MEMORY[0x277D16590];
    v71 = v17;
    if (MEMORY[0x277D16590] && v29 == *MEMORY[0x277D16590])
    {
      v68 = 0;
      v8 = v75;
      v31 = v73;
LABEL_26:
      v53 = v22[1];
      v54 = v53(v72, v21);
      v75 = &v64;
      MEMORY[0x28223BE20](v54);
      v55 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v56 = sub_252938414(v71, v55, &qword_27F5461A8, &qword_252E611D8);
      v73 = &v64;
      v57 = *(v74 + 12);
      MEMORY[0x28223BE20](v56);
      v58 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      v65 = v59;
      v67(v58, v59 + v55, v21);
      v60 = v66(v58, v21);
      if (v30 && v60 == *v30)
      {
        v61 = 0;
        v5 = v78;
      }

      else
      {
        v5 = v78;
        if (!MEMORY[0x277D16580] || v60 != *MEMORY[0x277D16580])
        {
          if (!MEMORY[0x277D16570] || v60 != v70)
          {
            if (MEMORY[0x277D16598] && v60 == *MEMORY[0x277D16598])
            {
              v61 = 3;
              goto LABEL_39;
            }

            v53(v58, v21);
          }

          v61 = 2;
          goto LABEL_39;
        }

        v61 = 1;
      }

LABEL_39:
      v62 = *(v74 + 12);
      v53(v65 + v55, v21);
      sub_25293847C(v71, &qword_27F5461A8, &qword_252E611D8);
      v53(v55, v21);
      v53(&v72[v62], v21);
      strcpy(v31, "appletv.fill");
      *(v31 + 13) = 0;
      *(v31 + 7) = -5120;
      strcpy(v31 + 16, "appletv.fill");
      *(v31 + 29) = 0;
      *(v31 + 15) = -5120;
      *(v31 + 32) = v68;
      *(v31 + 33) = v61;
      *(v31 + 5) = xmmword_252E41BA0;
      v31[7] = 0;
      sub_252E375C4();
      sub_252E36A74();
      v4 = v79;
      return (*(v5 + 8))(v8, v4);
    }

    v8 = v75;
    v31 = v73;
    if (MEMORY[0x277D16580] && v29 == *MEMORY[0x277D16580])
    {
      v43 = 1;
LABEL_25:
      v68 = v43;
      goto LABEL_26;
    }

    if (!MEMORY[0x277D16570] || v29 != v70)
    {
      if (MEMORY[0x277D16598] && v29 == *MEMORY[0x277D16598])
      {
        v43 = 3;
        goto LABEL_25;
      }

      (v22[1])(&v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    }

    v43 = 2;
    goto LABEL_25;
  }

  v32 = &v64 - v16;
  v33 = sub_252E35A74();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461A0, &qword_252E611D0);
  v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v64 - v40;
  HomeDeviceType.serviceKind.getter(v19, &v64 - v40);
  if ((*(v34 + 48))(v41, 1, v33) == 1)
  {
    sub_25293847C(v17, &qword_27F5461A8, &qword_252E611D8);
    sub_25293847C(v41, &qword_27F5461A0, &qword_252E611D0);
    v42 = v73;
    *v73 = 0u;
    *(v42 + 1) = 0u;
    *(v42 + 2) = 0u;
    *(v42 + 3) = 0u;
  }

  else
  {
    (*(v34 + 32))(v37, v41, v33);
    v44 = sub_252E35A54();
    v72 = v45;
    v71 = sub_252E35A64();
    v47 = v46;
    sub_252E35A34();
    v48 = sub_252E36C54();
    v74 = &v64;
    v50 = v49;

    (*(v34 + 8))(v37, v33);
    sub_25293847C(v32, &qword_27F5461A8, &qword_252E611D8);
    v51 = v73;
    v52 = v72;
    *v73 = v71;
    v51[1] = v47;
    v51[2] = v44;
    v51[3] = v52;
    *(v51 + 16) = 514;
    v51[5] = v48;
    v51[6] = v50;
    v51[7] = 0;
  }

  sub_252E375C4();
  v8 = v75;
  sub_252E36A74();
  v5 = v78;
  v4 = v79;
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_252DD5520(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);
    v7 &= v7 - 1;
    v21 = a1[2];
    v22 = a1[3];
    v23 = *(a1 + 8);
    v19 = *a1;
    v20 = a1[1];

    sub_252E37044();

    if (v17 == 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v17;
    }

    MEMORY[0x2530AE3C0](*&v18);
    result = sub_252E37F14();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x2530AE390](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s22HomeAutomationInternal8IconInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 48);
  v14 = *(a2 + 40);
  v15 = *(a1 + 40);
  v16 = *(a2 + 56);
  v17 = *(a1 + 56);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_252E37DB4() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_252E37DB4() & 1) == 0 || (sub_252A0B420(v4, v9) & 1) == 0 || (sub_252A0B420(v5, v10) & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v15 != v14 || v6 != v11) && (sub_252E37DB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v17)
  {
    if (v16)
    {

      v12 = sub_252DA6B34(v17, v16);

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_252DD57F4()
{
  result = qword_27F5461B0;
  if (!qword_27F5461B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5461B0);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252DD585C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_252DD58A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of HomeDataDecorator.getIconInfo(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 40))();
}

uint64_t dispatch thunk of DefaultHomeDataDecorator.getIconInfo(from:)()
{
  return (*(*v0 + 80))();
}

{
  return (*(*v0 + 112))();
}

uint64_t sub_252DD5A58(unint64_t a1)
{
  v58 = sub_252E36CA4();
  v2 = *(v58 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v58);
  v57 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_252E36D04();
  v5 = *(v56 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_61;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v53 = a1 & 0xFFFFFFFFFFFFFF8;
    v54 = a1 & 0xC000000000000001;
    v46[0] = a1;
    v48 = a1 + 32;
    v51 = (v2 + 1);
    v52 = v65;
    v50 = (v5 + 8);
    v2 = &unk_2814B0000;
    v49 = xmmword_252E3E810;
    v11 = MEMORY[0x277D84F90];
    v47 = v8;
    while (1)
    {
      if (v54)
      {
        v12 = MEMORY[0x2530ADF00](v10, v46[0]);
        v13 = __OFADD__(v10, 1);
        v14 = v10 + 1;
        if (v13)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v10 >= *(v53 + 16))
        {
          goto LABEL_56;
        }

        v12 = *(v48 + 8 * v10);
        v13 = __OFADD__(v10, 1);
        v14 = v10 + 1;
        if (v13)
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v8 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v60 = v14;
      v61 = v12;
      v15 = type metadata accessor for HomeStore();
      if (qword_2814B0DB8 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v16 = v2[440];
      v62 = v11;
      if (v16)
      {
      }

      else
      {
        type metadata accessor for LifeCycleManager();
        swift_allocObject();
        v16 = sub_252D7EAE8();
        v17 = v2[440];
        v2[440] = v16;

        sub_252D7E92C();
      }

      sub_252E37614();
      v18 = swift_allocObject();
      v59 = v15;
      *(v18 + 16) = v15;
      v19 = *(v16 + 16);
      v20 = swift_allocObject();
      *(v20 + 16) = v16;
      *(v20 + 24) = v49;
      *(v20 + 40) = 0xE900000000000065;
      *(v20 + 48) = sub_252990558;
      *(v20 + 56) = v18;
      v65[2] = sub_252990560;
      v65[3] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v65[0] = sub_252AD686C;
      v65[1] = &block_descriptor_27;
      v21 = _Block_copy(aBlock);

      v22 = v55;
      sub_252E36CD4();
      v63 = v9;
      sub_252DDD174(qword_2814B0298, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
      sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
      v24 = v57;
      v23 = v58;
      sub_252E37824();
      MEMORY[0x2530ADA30](0, v22, v24, v21);
      _Block_release(v21);
      (*v51)(v24, v23);
      (*v50)(v22, v56);

      if (qword_2814B0E18 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v25 = v62;
      if (qword_2814B0E30)
      {
        v26 = qword_2814B0E30;
      }

      else
      {
        v27 = [objc_allocWithZone(v59) init];
        v28 = qword_2814B0E30;
        qword_2814B0E30 = v27;
        v26 = v27;
      }

      sub_252E37614();
      v29 = v61;
      v5 = sub_2529F3704(v61);

      a1 = v5 >> 62;
      if (v5 >> 62)
      {
        v9 = sub_252E378C4();
      }

      else
      {
        v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = v25 >> 62;
      if (v25 >> 62)
      {
        v44 = sub_252E378C4();
        v32 = v44 + v9;
        if (__OFADD__(v44, v9))
        {
LABEL_52:
          __break(1u);
          return v9;
        }
      }

      else
      {
        v31 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v32 = v31 + v9;
        if (__OFADD__(v31, v9))
        {
          goto LABEL_52;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v30)
        {
          goto LABEL_31;
        }

        v2 = (v25 & 0xFFFFFFFFFFFFFF8);
        if (v32 <= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v30)
        {
LABEL_31:
          sub_252E378C4();
          goto LABEL_32;
        }

        v2 = (v25 & 0xFFFFFFFFFFFFFF8);
      }

      v33 = v2[2];
LABEL_32:
      v62 = sub_252E37A54();
      v2 = (v62 & 0xFFFFFFFFFFFFFF8);
LABEL_33:
      v34 = v2[2];
      v35 = v2[3];
      if (a1)
      {
        v36 = sub_252E378C4();
        if (!v36)
        {
LABEL_5:

          v10 = v60;
          v11 = v62;
          if (v9 > 0)
          {
            goto LABEL_57;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v36 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v36)
        {
          goto LABEL_5;
        }
      }

      if (((v35 >> 1) - v34) < v9)
      {
        goto LABEL_58;
      }

      v37 = &v2[v34 + 4];
      if (a1)
      {
        if (v36 < 1)
        {
          goto LABEL_60;
        }

        a1 = sub_2529E6488(&qword_27F543610, &qword_27F543608, &unk_252E4D550);
        for (i = 0; i != v36; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543608, &unk_252E4D550);
          v39 = sub_2529FBE00(aBlock, i, v5);
          v41 = *v40;

          (v39)(aBlock, 0);
          *(v37 + 8 * i) = v41;
        }
      }

      else
      {
        a1 = v5 & 0xFFFFFFFFFFFFFF8;
        type metadata accessor for Home();
        swift_arrayInitWithCopy();
      }

      v10 = v60;
      v11 = v62;
      if (v9 >= 1)
      {
        v42 = v2[2];
        v13 = __OFADD__(v42, v9);
        v43 = v42 + v9;
        if (v13)
        {
          goto LABEL_59;
        }

        v2[2] = v43;
      }

LABEL_6:
      v9 = MEMORY[0x277D84F90];
      v2 = &unk_2814B0000;
      if (v10 == v47)
      {
        return v11;
      }
    }
  }

  return v9;
}

uint64_t sub_252DD6238(uint64_t a1)
{
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = sub_2529D9114();

  v32 = a1;
  if (v3)
  {
    v31 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_252E37874();
      type metadata accessor for Home();
      sub_252DDD174(&qword_27F5447C8, type metadata accessor for Home);
      result = sub_252E373E4();
      a1 = v34;
      v5 = v35;
      v6 = v36;
      v7 = v37;
      v8 = v38;
    }

    else
    {
      v16 = -1 << *(a1 + 32);
      v5 = a1 + 56;
      v6 = ~v16;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v8 = v18 & *(a1 + 56);

      v7 = 0;
    }

    v19 = (v6 + 64) >> 6;
    while (1)
    {
      if (a1 < 0)
      {
        v23 = sub_252E37904();
        if (!v23)
        {
          goto LABEL_32;
        }

        v33 = v23;
        type metadata accessor for Home();
        swift_dynamicCast();
        v22 = v39;
        if (!v39)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v20 = v7;
        for (i = v8; !i; ++v20)
        {
          v7 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_52;
          }

          if (v7 >= v19)
          {
            goto LABEL_32;
          }

          i = *(v5 + 8 * v7);
        }

        v8 = (i - 1) & i;
        v22 = *(*(a1 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(i)))));

        if (!v22)
        {
LABEL_32:
          sub_25291AE30();

          a1 = v32;
          if (!v31)
          {
            goto LABEL_5;
          }

LABEL_33:
          swift_unknownObjectRetain();
          sub_252E37874();
          type metadata accessor for Home();
          sub_252DDD174(&qword_27F5447C8, type metadata accessor for Home);
          result = sub_252E373E4();
          a1 = v39;
          v10 = v40;
          v11 = v41;
          v15 = v42;
          v14 = v43;
          goto LABEL_34;
        }
      }

      if ((sub_252E32E54() & 1) != 0 && *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
      {
        if (*(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
        {

          goto LABEL_50;
        }

        v25 = sub_252E37DB4();

        if (v25)
        {
          goto LABEL_50;
        }
      }

      else
      {
      }
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

LABEL_5:
  v9 = -1 << *(a1 + 32);
  v10 = a1 + 56;
  v11 = ~v9;
  v12 = -v9;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a1 + 56);

  v15 = 0;
LABEL_34:
  v26 = (v11 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_41;
  }

LABEL_35:
  v27 = v15;
  v28 = v14;
  v29 = v15;
  if (v14)
  {
LABEL_39:
    v30 = (v28 - 1) & v28;
    v3 = *(*(a1 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));

    if (v3)
    {
      while (([*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) isPrimary] & 1) == 0)
      {

        v15 = v29;
        v14 = v30;
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_35;
        }

LABEL_41:
        if (sub_252E37904())
        {
          type metadata accessor for Home();
          swift_dynamicCast();
          v3 = v33;
          v29 = v15;
          v30 = v14;
          if (v33)
          {
            continue;
          }
        }

        goto LABEL_46;
      }

LABEL_50:
      sub_25291AE30();
    }

    else
    {
LABEL_46:
      sub_25291AE30();
      return sub_252DA089C(v32);
    }

    return v3;
  }

  else
  {
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v26)
      {
        goto LABEL_46;
      }

      v28 = *(v10 + 8 * v29);
      ++v27;
      if (v28)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
  }

  return result;
}

id AutomateHomeIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_252DD6728(void *a1, void (*a2)(void))
{
  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544C40);
  sub_252CC3D90(0xD000000000000011, 0x8000000252E9CD70, 0xD000000000000080, 0x8000000252E9CD90);
  v5 = [a1 trigger];
  if (!v5)
  {
    type metadata accessor for AutomateHomeTriggerResolutionResult();
    v20 = sub_252E20FF8(3);
    a2();
    goto LABEL_23;
  }

  v6 = v5;
  if ([v5 type] == 1)
  {
    v7 = sub_252DEF140();
    if ((v8 & 1) == 0)
    {
      v16 = v7;
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_27F544C70);
      v17 = 0xD000000000000022;
      v18 = 0x8000000252E9CEA0;
      v19 = 66;
      goto LABEL_21;
    }
  }

  if ([v6 type] == 2)
  {
    v9 = sub_252DEFCA4();
    if ((v10 & 1) == 0)
    {
      v16 = v9;
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_27F544C70);
      v17 = 0xD000000000000023;
      v18 = 0x8000000252E9CE50;
      v19 = 71;
LABEL_21:
      sub_252CC4050(v17, v18, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000019, 0x8000000252E9CE80, v19);
      type metadata accessor for AutomateHomeTriggerResolutionResult();
      v15 = sub_252E20FF8(v16);
      goto LABEL_22;
    }
  }

  v11 = [v6 value];
  if (!v11)
  {
LABEL_13:
    type metadata accessor for AutomateHomeTriggerResolutionResult();
    v15 = sub_252E2A3A4(v6);
LABEL_22:
    v20 = v15;
    a2();

    goto LABEL_23;
  }

  v12 = v11;
  type metadata accessor for EventTriggerValue();
  v13 = swift_dynamicCastClass();
  if (!v13 || (v14 = v13, [v6 type] != 2) || *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event))
  {

    goto LABEL_13;
  }

  sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E9CE20, 0xD000000000000080, 0x8000000252E9CD90);
  type metadata accessor for AutomateHomeTriggerResolutionResult();
  v20 = [swift_getObjCClassFromMetadata() needsValue];
  a2();

LABEL_23:
}

void sub_252DD6B34(void *a1, void (*a2)(void))
{
  v3 = v2;
  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544C40);
  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E9CED0, 0xD000000000000080, 0x8000000252E9CD90);
  v7 = [a1 automatableTask];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for ControlAutomateHomeIntent();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      if ((sub_252DD8F6C() & 1) == 0)
      {
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v6, qword_27F544C70);
        sub_252CC4050(0xD000000000000057, 0x8000000252E9CEF0, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000021, 0x8000000252E9CF50, 92);
        type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
        v191 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
        a2();

        v23 = v191;
        goto LABEL_58;
      }

      v189 = a2;
      v188 = v8;
      v184 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask;
      v11 = *&v10[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask];
      v183 = v10;
      v186 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters;
      v12 = *&v10[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters];
      v185 = type metadata accessor for ControlHomeIntent();
      v13 = objc_allocWithZone(v185);
      v14 = v11;

      v15 = [v13 init];
      [v15 setUserTask_];
      v16 = type metadata accessor for HomeFilter();
      v17 = sub_252E37254();

      [v15 setFilters_];

      [v15 setTime_];
      v18 = [v15 filters];
      if (v18)
      {
        v19 = v18;
        v20 = v16;
        v21 = sub_252E37264();

        v22 = sub_252DD5A58(v21);
      }

      else
      {
        v20 = v16;
        v22 = MEMORY[0x277D84F90];
      }

      v24 = sub_252C758E0(v22);

      v25 = sub_252DD6238(v24);

      if (!v25)
      {
        if (qword_27F53F4C0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v6, qword_27F544CE8);
        sub_252CC4050(0xD00000000000001ELL, 0x8000000252E80080, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000021, 0x8000000252E9CF50, 97);
        type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
        v187 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
        v189();

        goto LABEL_57;
      }

      if ((sub_2529E8090() & 1) == 0)
      {
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v6, qword_27F544C70);
        sub_252CC4050(0xD000000000000047, 0x8000000252E9CF80, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000021, 0x8000000252E9CF50, 102);
        type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
        v187 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
        v189();

        goto LABEL_26;
      }

      v26 = *(v183 + v184);
      v27 = *&v186[v183];
      v28 = objc_allocWithZone(v185);
      v29 = v26;

      v30 = [v28 init];
      [v30 setUserTask_];
      v31 = sub_252E37254();

      [v30 setFilters_];

      [v30 setTime_];
      LOBYTE(v29) = sub_252C4BEB8();

      if (v29)
      {
        if (qword_27F53F4C0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v6, qword_27F544CE8);
        sub_252CC4050(0xD00000000000004DLL, 0x8000000252E9D0C0, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000021, 0x8000000252E9CF50, 107);
        type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
        v187 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
        v189();

LABEL_26:

LABEL_57:
        v23 = v187;
        goto LABEL_58;
      }

      v32 = *(v183 + v184);
      sub_252E379F4();

      v193 = 0xD00000000000001FLL;
      v194 = 0x8000000252E921C0;
      v182 = v32;
      v33 = [v182 description];
      v34 = sub_252E36F34();
      v36 = v35;

      MEMORY[0x2530AD570](v34, v36);

      sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E921C0, 0xD000000000000080, 0x8000000252E9CD90);

      v37 = *(v183 + v184);
      v38 = *&v186[v183];
      v39 = objc_allocWithZone(v185);
      v40 = v37;

      v41 = [v39 init];
      [v41 setUserTask_];
      v42 = sub_252E37254();

      [v41 setFilters_];

      [v41 setTime_];
      LOBYTE(v40) = sub_252C4B5D4();

      v43 = v182;
      if (v40)
      {
        v44 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25AutomateHomeIntentHandler_climateAttributes);
        v45 = [v182 attribute];
        v43 = v182;
        v46 = *(v44 + 16);
        v47 = (v44 + 32);
        while (v46)
        {
          v48 = *v47++;
          --v46;
          if (v48 == v45)
          {
            if (qword_27F53F4C0 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v6, qword_27F544CE8);
            sub_252CC4050(0xD000000000000051, 0x8000000252E9D060, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000021, 0x8000000252E9CF50, 115);
            type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
            v49 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
            goto LABEL_42;
          }
        }
      }

      if (![v43 attribute])
      {
        sub_252CC3D90(0xD000000000000026, 0x8000000252E922C0, 0xD000000000000080, 0x8000000252E9CD90);
        type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
        v49 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_42:
        v187 = v49;
        v189();

        goto LABEL_56;
      }

      v50 = *(v183 + v184);
      v51 = *&v186[v183];
      v52 = objc_allocWithZone(v185);
      v53 = v50;

      v54 = [v52 init];
      [v54 setUserTask_];
      v55 = sub_252E37254();

      [v54 setFilters_];

      [v54 setTime_];
      v56 = [v54 userTask];
      if (v56)
      {
        v57 = v56;
        v58 = [v56 taskType];

        v59 = &off_279711000;
        if (v58 == 1)
        {
          v60 = *(v183 + v184);
          v61 = *&v186[v183];
          v62 = objc_allocWithZone(v185);
          v63 = v60;

          v64 = [v62 init];
          [v64 setUserTask_];
          v65 = sub_252E37254();

          [v64 setFilters_];

          [v64 setTime_];
          LOBYTE(v63) = sub_252CCFCB8();

          if ((v63 & 1) == 0 && [v182 attribute] != 67)
          {
            if ([v182 attribute] == 8)
            {
              v66 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
              v67 = sub_252E36F04();
              v68 = [v66 initWithIdentifier:0 displayString:v67];

              v69 = v68;
              [v69 setBoolValue_];
              [v69 setType_];

              v70 = objc_allocWithZone(type metadata accessor for HomeUserTask());
              v71 = v69;
              v72 = sub_252E36F04();
              v73 = [v70 initWithIdentifier:0 displayString:v72];

              v74 = v73;
              [v74 setTaskType_];
              [v74 setAttribute_];
              [v74 setValue_];

              type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
              v187 = [swift_getObjCClassFromMetadata() resolutionResultConfirmationRequiredWithItemToConfirm_];
              v189();

              goto LABEL_57;
            }

            sub_252CC3D90(0xD000000000000028, 0x8000000252E92290, 0xD000000000000080, 0x8000000252E9CD90);
            type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
            v90 = [swift_getObjCClassFromMetadata() needsValue];
            goto LABEL_49;
          }
        }
      }

      else
      {
        sub_252C515AC();

        v59 = 0x1FB2FA000;
      }

      v75 = sub_252DD9550(v183);
      if ((v76 & 1) == 0)
      {
        v89 = v75;
        type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
        v90 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
LABEL_49:
        v91 = v90;
LABEL_55:
        v187 = v91;
        v189();

LABEL_56:

        goto LABEL_57;
      }

      v77 = *&v186[v183];

      sub_252E379F4();

      v193 = 0xD00000000000001ELL;
      v194 = 0x8000000252E922F0;
      v181 = v77;
      v78 = MEMORY[0x2530AD730](v77, v20);
      MEMORY[0x2530AD570](v78);

      sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E922F0, 0xD000000000000080, 0x8000000252E9CD90);

      v79 = *(v183 + v184);
      v80 = *&v186[v183];
      v81 = objc_allocWithZone(v185);
      v82 = v79;
      v83 = v59;
      v84 = v82;

      v85 = [v81 (v83 + 2936)];
      [v85 &selRef_characteristic + 1];
      v86 = sub_252E37254();

      [v85 setFilters_];

      [v85 setTime_];
      v87 = [v85 userTask];
      if (v87)
      {
        v88 = v87;
        if ([v87 taskType] == 4)
        {

LABEL_52:

          sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E9D030, 0xD000000000000080, 0x8000000252E9CD90);
LABEL_53:
          type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
          v93 = v183;
LABEL_54:
          v91 = sub_252E28EC0(v93);
          goto LABEL_55;
        }

        v92 = [v88 taskType];

        if (v92 == 5)
        {
          goto LABEL_52;
        }
      }

      else
      {
        sub_252C515AC();
      }

      v94 = *(v183 + v184);
      v95 = *&v186[v183];
      v96 = objc_allocWithZone(v185);
      v97 = v94;

      v98 = [v96 init];
      [v98 setUserTask_];
      v99 = sub_252E37254();

      [v98 setFilters_];

      [v98 setTime_];
      if (sub_252C51814(3u) & 1) != 0 || (sub_252C51814(1u))
      {

        v100 = v189;
LABEL_64:

        sub_252CC3D90(0xD000000000000040, 0x8000000252E92370, 0xD000000000000080, 0x8000000252E9CD90);
        type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
        v192 = sub_252E28EC0(v183);
        v100();

        v23 = v192;
        goto LABEL_58;
      }

      v101 = sub_252C51814(2u);

      v100 = v189;
      if (v101)
      {
        goto LABEL_64;
      }

      v102 = *(v183 + v184);
      v103 = *&v186[v183];
      v104 = objc_allocWithZone(v185);
      v105 = v102;

      v106 = [v104 init];
      [v106 setUserTask_];
      v107 = sub_252E37254();

      [v106 setFilters_];

      [v106 setTime_];
      LOBYTE(v105) = sub_252C4DD64();

      if (v105)
      {

        v193 = 0;
        v194 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000054, 0x8000000252E9CFD0);
        v108 = *(v183 + v184);
        v109 = *&v186[v183];
        v110 = objc_allocWithZone(v185);
        v111 = v108;

        v112 = [v110 init];
        [v112 setUserTask_];
        v113 = sub_252E37254();

        [v112 setFilters_];

        [v112 setTime_];
        ControlHomeIntent.getTargetDeviceTypes()();

        sub_25292A344();
        v114 = sub_252E373B4();
        v116 = v115;

        MEMORY[0x2530AD570](v114, v116);

        sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E9CD90);

        goto LABEL_53;
      }

      sub_252E379F4();

      v193 = 0xD000000000000012;
      v194 = 0x8000000252E92310;
      v117 = [v183 description];
      v118 = sub_252E36F34();
      v120 = v119;

      MEMORY[0x2530AD570](v118, v120);

      sub_252CC3D90(0xD000000000000012, 0x8000000252E92310, 0xD000000000000080, 0x8000000252E9CD90);

      v121 = *(v183 + v184);
      v122 = *&v186[v183];
      v123 = objc_allocWithZone(v185);
      v124 = v121;

      v125 = [v123 init];
      [v125 setUserTask_];
      v126 = sub_252E37254();

      [v125 setFilters_];

      [v125 setTime_];
      v179 = sub_252C4D664(5);

      type metadata accessor for HomeStore();
      v180 = static HomeStore.shared.getter();
      v127 = *(v183 + v184);
      v128 = *&v186[v183];
      v129 = objc_allocWithZone(v185);
      v130 = v127;

      v131 = [v129 init];
      [v131 setUserTask_];
      v132 = sub_252E37254();

      [v131 setFilters_];

      [v131 setTime_];
      if (v179)
      {
        v133 = [v131 filters];

        if (v133)
        {
          v134 = sub_252E37264();
        }

        else
        {
          v134 = MEMORY[0x277D84F90];
        }

        v140 = HomeStore.scenes(matching:)(v134);
        v143 = v142;

        if (v143)
        {

          v193 = 0;
          v194 = 0xE000000000000000;
          v144 = v140;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E92330);
          v196 = v140;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
          sub_252E37AE4();
          sub_252CC4050(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000021, 0x8000000252E9CF50, 168);

          type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
          v145 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
          v189();

          sub_252929F10(v140, 1);
LABEL_92:
          v156 = v140;
          v157 = 1;
LABEL_93:
          sub_252929F10(v156, v157);

          return;
        }

        v146 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentHandler()) init];
        v147 = sub_252B1BB50(v181, MEMORY[0x277D84F90], 0, v140, 0, 0, 0, 0);

        if (v147 >> 62)
        {
          if (!sub_252E378C4())
          {
            goto LABEL_126;
          }
        }

        else if (!*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_126;
        }

        v148 = v147 & 0xC000000000000001;
        if ((v147 & 0xC000000000000001) != 0)
        {
          v149 = MEMORY[0x2530ADF00](0, v147);
          goto LABEL_85;
        }

        if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v149 = *(v147 + 32);
LABEL_85:
          v150 = v149;
          v151 = [v149 resolutionResultCode];

          if (v151 == 2)
          {
            if (v148)
            {
              goto LABEL_101;
            }

            goto LABEL_112;
          }

          if (v148)
          {
            v164 = MEMORY[0x2530ADF00](0, v147);
            goto LABEL_109;
          }

          if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v164 = *(v147 + 32);
LABEL_109:
            v166 = v164;
            v167 = [v164 resolutionResultCode];

            if (v167 == 3)
            {
              if (!v148)
              {
                goto LABEL_119;
              }

              goto LABEL_118;
            }

            goto LABEL_126;
          }

          goto LABEL_129;
        }

        __break(1u);
        goto LABEL_125;
      }

      v135 = v180[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
      if (v135 == 2 || (v135 & 1) != 0)
      {
        v136 = [v131 filters];
        if (v136)
        {
          v137 = v136;
          v138 = sub_252E37264();

          v139 = [v131 userTask];
          v140 = HomeStore.accessories(matching:supporting:)(v138, v139);
          LOBYTE(v137) = v141;

          if ((v137 & 1) == 0)
          {
            v158 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentHandler()) init];
            v147 = sub_252B1BB50(v181, v140, 0, MEMORY[0x277D84F90], 0, 0, 0, 0);

            if (!(v147 >> 62))
            {
              if (!*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_126;
              }

LABEL_96:
              v159 = v147 & 0xC000000000000001;
              if ((v147 & 0xC000000000000001) != 0)
              {
                v160 = MEMORY[0x2530ADF00](0, v147);
              }

              else
              {
                if (!*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_129:
                  __break(1u);
                  goto LABEL_130;
                }

                v160 = *(v147 + 32);
              }

              v161 = v160;
              v162 = [v160 resolutionResultCode];

              if (v162 == 2)
              {
                if (v159)
                {
LABEL_101:
                  v163 = MEMORY[0x2530ADF00](0, v147);
LABEL_113:
                  v168 = v163;

                  type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
                  v169 = [v168 disambiguationItems];

                  sub_252E37264();
                  v170 = sub_252E37254();

                  v171 = [swift_getObjCClassFromMetadata() resolutionResultDisambiguationWithItemsToDisambiguate_];

                  (v189)(v171);
                  sub_252929F10(v140, 0);

                  v23 = v182;
                  goto LABEL_58;
                }

LABEL_112:
                v163 = *(v147 + 32);
                goto LABEL_113;
              }

              if (v159)
              {
                v165 = MEMORY[0x2530ADF00](0, v147);
              }

              else
              {
                if (!*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_130:
                  __break(1u);
                  return;
                }

                v165 = *(v147 + 32);
              }

              v172 = v165;
              v173 = [v165 resolutionResultCode];

              if (v173 == 3)
              {
                if (!v159)
                {
LABEL_119:
                  v174 = *(v147 + 32);
                  goto LABEL_120;
                }

LABEL_118:
                v174 = MEMORY[0x2530ADF00](0, v147);
LABEL_120:
                v175 = v174;

                type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
                v176 = [v175 itemToConfirm];

                sub_252E377F4();
                swift_unknownObjectRelease();
                __swift_project_boxed_opaque_existential_1(&v193, v195);
                v177 = sub_252E37DA4();
                __swift_destroy_boxed_opaque_existential_1(&v193);
                v178 = [swift_getObjCClassFromMetadata() resolutionResultConfirmationRequiredWithItemToConfirm_];
                swift_unknownObjectRelease();
                (v189)(v178);

                v156 = v140;
                v157 = 0;
                goto LABEL_93;
              }

LABEL_126:

              sub_252929F10(v140, 0);
              type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
              v93 = v183;
              goto LABEL_54;
            }

LABEL_125:
            if (!sub_252E378C4())
            {
              goto LABEL_126;
            }

            goto LABEL_96;
          }

LABEL_91:
          v193 = 0;
          v194 = 0xE000000000000000;
          v154 = v140;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E92330);
          v196 = v140;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
          sub_252E37AE4();
          sub_252CC4050(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000021, 0x8000000252E9CF50, 183);

          type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
          v155 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
          v189();

          goto LABEL_92;
        }

        sub_2529318DC();
        v140 = swift_allocError();
        v153 = 1;
      }

      else
      {
        sub_2529318DC();
        v140 = swift_allocError();
        v153 = 12;
      }

      *v152 = v153;

      goto LABEL_91;
    }
  }

  type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
  v190 = sub_252E21658(5);
  a2();
  v23 = v190;
LABEL_58:
}

void sub_252DD89E4(uint64_t a1, void (*a2)(char *))
{
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544C58);
  sub_252CC3D90(0xD000000000000015, 0x8000000252E9D110, 0xD000000000000080, 0x8000000252E9CD90);
  v4 = *(sub_252B680FC() + 72);

  if (v4 == 1)
  {
    *(sub_252B680FC() + 72) = 0;

    v5 = sub_252B680FC();
    *(v5 + 104) = 0;
    *(v5 + 112) = 1;
  }

  v6 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
  v7 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v6[v7] = 1;
  [v6 setUserActivity_];
  a2(v6);
}

uint64_t sub_252DD8BC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  sub_252E375C4();
  sub_252E36A74();
  return a3(a1);
}

uint64_t sub_252DD8C9C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544C70);
  sub_252E379F4();

  v5 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  v8 = *(a1 + v5);
  v6 = sub_252E36F94();
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E769D0, 0xD000000000000080, 0x8000000252E9CD90);

  return a2(a1);
}

id AutomateHomeIntentHandler.init()()
{
  *&v0[OBJC_IVAR____TtC22HomeAutomationInternal25AutomateHomeIntentHandler_climateAttributes] = &unk_2864AFDB8;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutomateHomeIntentHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AutomateHomeIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutomateHomeIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_252DD8F6C()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v0 + 16), v15);

  __swift_project_boxed_opaque_existential_1(v15, v16);
  if (sub_252E338D4())
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    v1 = 1;
  }

  else
  {
    v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v2 + 16), v14);

    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v3 = sub_252E338F4();
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v3)
    {
      goto LABEL_8;
    }

    v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v4 + 16), v15);

    __swift_project_boxed_opaque_existential_1(v15, v16);
    v5 = sub_252E338B4();
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v5)
    {
      goto LABEL_8;
    }

    v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v6 + 16), v15);

    __swift_project_boxed_opaque_existential_1(v15, v16);
    v7 = sub_252E33894();
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v7)
    {
      goto LABEL_8;
    }

    v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v8 + 16), v15);

    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = sub_252E338A4();
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v9 & 1) != 0 || (v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(), sub_252929E74((v10 + 16), v15), , __swift_project_boxed_opaque_existential_1(v15, v16), v11 = sub_252E338E4(), __swift_destroy_boxed_opaque_existential_1(v15), (v11))
    {
LABEL_8:
      v1 = 1;
    }

    else
    {
      v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v13 + 16), v15);

      __swift_project_boxed_opaque_existential_1(v15, v16);
      v1 = sub_252E33884();
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  return v1 & 1;
}

void sub_252DD91C0(void *a1, uint64_t a2)
{
  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544C40);
  sub_252CC3D90(0xD000000000000011, 0x8000000252E9CD70, 0xD000000000000080, 0x8000000252E9CD90);
  v5 = [a1 trigger];
  if (!v5)
  {
    type metadata accessor for AutomateHomeTriggerResolutionResult();
    v20 = sub_252E20FF8(3);
    (*(a2 + 16))(a2);
    goto LABEL_23;
  }

  v6 = v5;
  if ([v5 type] == 1)
  {
    v7 = sub_252DEF140();
    if ((v8 & 1) == 0)
    {
      v16 = v7;
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_27F544C70);
      v17 = 0xD000000000000022;
      v18 = 0x8000000252E9CEA0;
      v19 = 66;
      goto LABEL_21;
    }
  }

  if ([v6 type] == 2)
  {
    v9 = sub_252DEFCA4();
    if ((v10 & 1) == 0)
    {
      v16 = v9;
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_27F544C70);
      v17 = 0xD000000000000023;
      v18 = 0x8000000252E9CE50;
      v19 = 71;
LABEL_21:
      sub_252CC4050(v17, v18, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000019, 0x8000000252E9CE80, v19);
      type metadata accessor for AutomateHomeTriggerResolutionResult();
      v15 = sub_252E20FF8(v16);
      goto LABEL_22;
    }
  }

  v11 = [v6 value];
  if (!v11)
  {
LABEL_13:
    type metadata accessor for AutomateHomeTriggerResolutionResult();
    v15 = sub_252E2A3A4(v6);
LABEL_22:
    v20 = v15;
    (*(a2 + 16))(a2);

    goto LABEL_23;
  }

  v12 = v11;
  type metadata accessor for EventTriggerValue();
  v13 = swift_dynamicCastClass();
  if (!v13 || (v14 = v13, [v6 type] != 2) || *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event))
  {

    goto LABEL_13;
  }

  sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E9CE20, 0xD000000000000080, 0x8000000252E9CD90);
  type metadata accessor for AutomateHomeTriggerResolutionResult();
  v20 = [swift_getObjCClassFromMetadata() needsValue];
  (*(a2 + 16))(a2);

LABEL_23:
}

uint64_t sub_252DD9550(uint64_t a1)
{
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v161 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask;
  v3 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v162 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters;
  v4 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
  v160 = type metadata accessor for ControlHomeIntent();
  v5 = objc_allocWithZone(v160);
  v6 = v3;

  v7 = [v5 init];
  [v7 setUserTask_];
  type metadata accessor for HomeFilter();
  v8 = sub_252E37254();

  [v7 setFilters_];

  [v7 setTime_];
  v9 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v9 != 2 && (v9 & 1) == 0)
  {
    v17 = 12;
    goto LABEL_8;
  }

  v10 = [v7 filters];
  if (!v10)
  {
    v17 = 1;
LABEL_8:
    sub_2529318DC();
    v16 = swift_allocError();
    *v18 = v17;

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    swift_willThrowTypedImpl();
    sub_252929F10(v16, 1);
    if (qword_27F53F4C0 != -1)
    {
      goto LABEL_112;
    }

    goto LABEL_10;
  }

  v11 = v10;
  v12 = sub_252E37264();

  v13 = [v7 userTask];
  v158 = HomeStore.services(matching:supporting:)(v12, v13);
  v15 = v14;

  if (v15)
  {
    v16 = v158;
    goto LABEL_9;
  }

  v21 = static HomeStore.shared.getter();
  v22 = v162;
  v23 = *(a1 + v162);

  v25 = HomeStore.accessories(matching:supporting:)(v24, 0);
  v27 = v26;

  if (v27)
  {
    sub_252929F10(v25, 1);
    v28 = v161;
  }

  else
  {
    v156 = v25;
    v157 = a1;
    v45 = (v25 & 0xFFFFFFFFFFFFFF8);
    if (v25 >> 62)
    {
      goto LABEL_115;
    }

    v46 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_19;
    }

LABEL_116:
    sub_252929F10(v156, 0);
    a1 = v157;
    v22 = v162;
    v131 = *(v157 + v162);

    v133 = sub_252BAFC18(v132);

    if (v133 == 41 || (v134 = *(v157 + v162), v135 = , v136 = sub_252BAFC18(v135), , v28 = v161, v136 == 24))
    {
      v90 = v158;
LABEL_119:
      sub_252929F10(v90, 0);
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v137 = sub_252E36AD4();
      __swift_project_value_buffer(v137, qword_27F544C70);
      sub_252CC3D90(0xD000000000000063, 0x8000000252E9D320, 0xD000000000000080, 0x8000000252E9CD90);
      return 1;
    }
  }

  v29 = *(a1 + v28);
  v30 = *(a1 + v22);
  v31 = objc_allocWithZone(v160);
  v32 = v29;

  v33 = [v31 init];
  [v33 setUserTask_];
  v34 = sub_252E37254();

  [v33 setFilters_];

  [v33 setTime_];
  LOBYTE(v32) = sub_252C4D664(5);

  if (v32)
  {
    v35 = static HomeStore.shared.getter();
    v36 = *(a1 + v28);
    v37 = *(a1 + v22);
    v38 = objc_allocWithZone(v160);
    v39 = v36;

    v40 = [v38 init];
    v41 = &off_279711000;
    [v40 setUserTask_];
    v42 = sub_252E37254();

    [v40 setFilters_];

    [v40 setTime_];
    v43 = [v40 filters];

    if (v43)
    {
      v44 = sub_252E37264();
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
    }

    v100 = HomeStore.scenes(matching:)(v44);
    v102 = v101;

    v93 = v161;
    if (v102)
    {
      sub_252929F10(v158, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      swift_willThrowTypedImpl();
      v103 = v100;
      v104 = 1;
LABEL_104:
      sub_252929F10(v103, v104);
      if (qword_27F53F4C0 != -1)
      {
        swift_once();
      }

      v129 = sub_252E36AD4();
      __swift_project_value_buffer(v129, qword_27F544CE8);
      sub_252CC4050(0xD00000000000002ALL, 0x8000000252E959E0, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000014, 0x8000000252E9D230, 278);
      return 7;
    }

    if (v100 >> 62)
    {
      v105 = sub_252E378C4();
    }

    else
    {
      v105 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v92 = v160;
    sub_252929F10(v100, 0);
    v103 = v158;
    if (!v105)
    {
      v104 = 0;
      goto LABEL_104;
    }
  }

  else
  {
    if (v158 >> 62)
    {
      v91 = sub_252E378C4();
    }

    else
    {
      v91 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v92 = v160;
    v93 = v161;
    v41 = 0x279711000;
    if (!v91)
    {
      v94 = *(a1 + v162);

      v96 = sub_252BAFC18(v95);

      if (v96 != 36)
      {
        v97 = *(a1 + v162);

        v99 = sub_252B288A4(v98);

        if (v99 != 46)
        {
          sub_252929F10(v158, 0);
          return 7;
        }
      }
    }
  }

  v106 = *(a1 + v93);
  v157 = a1;
  v107 = *(a1 + v162);
  v108 = objc_allocWithZone(v92);
  v109 = v106;

  v110 = [v108 init];
  [v110 *(v41 + 2352)];
  v111 = sub_252E37254();

  [v110 setFilters_];

  v45 = v158;
  [v110 setTime_];

  LOBYTE(v109) = sub_252C4B5D4();
  if ((v109 & 1) == 0)
  {
    goto LABEL_125;
  }

  v112 = [*(a1 + v93) value];
  if (!v112)
  {
    goto LABEL_125;
  }

  v113 = v112;
  v114 = [v112 BOOLValue];

  if (!v114)
  {
    goto LABEL_125;
  }

  if (v158 >> 62)
  {
    v115 = sub_252E378C4();
    if (v115)
    {
      goto LABEL_85;
    }

LABEL_125:
    sub_252929F10(v45, 0);
    v138 = *(a1 + v93);
    v139 = v162;
    v140 = *(a1 + v162);
    v141 = objc_allocWithZone(v160);
    v142 = v138;

    v143 = v41;
    v144 = [v141 init];
    [v144 (v41 + 1577)];
    v145 = sub_252E37254();

    [v144 setFilters_];

    [v144 setTime_];
    LOBYTE(v142) = sub_252C4B5D4();

    v146 = v161;
    if (v142)
    {
      v147 = [*(a1 + v161) value];
      if (!v147)
      {
LABEL_129:
        if (qword_27F53F4C0 != -1)
        {
          swift_once();
        }

        v155 = sub_252E36AD4();
        __swift_project_value_buffer(v155, qword_27F544CE8);
        sub_252CC4050(0xD000000000000077, 0x8000000252E9D250, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000014, 0x8000000252E9D230, 307);
        return 6;
      }

      v139 = v162;
      v143 = 0x1FBC72000;
      v146 = v161;
    }

    v148 = v143;
    v149 = *(a1 + v146);
    v150 = *(a1 + v139);
    v151 = objc_allocWithZone(v160);
    v152 = v149;

    v153 = [v151 init];
    [v153 (v148 + 1577)];
    v154 = sub_252E37254();

    [v153 setFilters_];

    [v153 setTime_];
    LOBYTE(v152) = sub_252C51508();

    if ((v152 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_129;
  }

  v115 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v115)
  {
    goto LABEL_125;
  }

LABEL_85:
  v116 = 0;
  while (1)
  {
    if ((v158 & 0xC000000000000001) != 0)
    {
      v117 = MEMORY[0x2530ADF00](v116, v45);
      v118 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        break;
      }

      goto LABEL_89;
    }

    if (v116 >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_114;
    }

    v117 = v45[v116 + 4];

    v118 = v116 + 1;
    if (__OFADD__(v116, 1))
    {
      break;
    }

LABEL_89:
    v119 = [*(v117 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v120 = sub_252E36F34();
    v122 = v121;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v123 = off_27F546230;
    if (*(off_27F546230 + 2) && (v124 = sub_252A44A10(v120, v122), (v125 & 1) != 0))
    {
      v126 = *(v123[7] + 8 * v124);
    }

    else
    {
      v126 = 0;
    }

    v45 = v158;

    v127 = vdupq_n_s64(v126);
    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2864AFD90, v127), vceqq_s64(unk_2864AFDA0, v127)))) & 1) != 0 || qword_2864AFDB0 == v126)
    {
      sub_252929F10(v158, 0);
      if (qword_27F53F4C0 != -1)
      {
        swift_once();
      }

      v130 = sub_252E36AD4();
      __swift_project_value_buffer(v130, qword_27F544CE8);
      sub_252CC4050(0xD00000000000004DLL, 0x8000000252E9D2D0, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000014, 0x8000000252E9D230, 302);
      return 3;
    }

    ++v116;
    v128 = v118 == v115;
    v93 = v161;
    v41 = 0x1FBC72000;
    if (v128)
    {
      goto LABEL_125;
    }
  }

  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  v46 = sub_252E378C4();
  if (!v46)
  {
    goto LABEL_116;
  }

LABEL_19:
  v47 = 0;
  v48 = (v156 + 32);
  v159 = v46;
  while (2)
  {
    if ((v156 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x2530ADF00](v47, v156);
      v50 = __OFADD__(v47++, 1);
      if (v50)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        sub_252929F10(v158, 0);
        v90 = v156;
        goto LABEL_119;
      }

LABEL_25:
      v51 = (*v49 + 256);
      v52 = *v51;
      if ((*v51)() == 41)
      {

        goto LABEL_21;
      }

      v53 = (*v49 + 272);
      v54 = *v53;
      v55 = (*v53)();
      if (*(v55 + 16))
      {
        v56 = *(v55 + 40);
        v57 = v55;
        sub_252E37EC4();
        MEMORY[0x2530AE390](41);
        v58 = sub_252E37F14();
        v59 = -1 << *(v57 + 32);
        v60 = v58 & ~v59;
        if ((*(v57 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
        {
          v61 = ~v59;
          while (*(*(v57 + 48) + 8 * v60) != 41)
          {
            v60 = (v60 + 1) & v61;
            if (((*(v57 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_51;
        }
      }

LABEL_31:

      v63 = (v52)(v62);
      if (v63 == 38)
      {
        v66 = &unk_2864AFCD0;
      }

      else
      {
        v64 = v63;
        v65 = MEMORY[0x277D84FA0];
        if (v64 != 41)
        {
LABEL_36:
          if (*(v65 + 16))
          {
            v67 = *(v65 + 40);
            v68 = v65;
            sub_252E37EC4();
            MEMORY[0x2530AE390](41);
            v69 = sub_252E37F14();
            v70 = -1 << *(v68 + 32);
            v71 = v69 & ~v70;
            if ((*(v68 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
            {
              v72 = ~v70;
              while (*(*(v68 + 48) + 8 * v71) != 41)
              {
                v71 = (v71 + 1) & v72;
                if (((*(v68 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
                {
                  goto LABEL_41;
                }
              }

LABEL_51:

LABEL_52:

LABEL_53:
              v48 = (v156 + 32);
              v46 = v159;
              goto LABEL_21;
            }
          }

LABEL_41:

          if (sub_252D4FE78(41) || v52() == 24)
          {
            goto LABEL_52;
          }

          v73 = v54();
          v74 = v73;
          if (*(v73 + 16))
          {
            v75 = *(v73 + 40);
            sub_252E37EC4();
            MEMORY[0x2530AE390](24);
            v76 = sub_252E37F14();
            v77 = -1 << *(v74 + 32);
            v78 = v76 & ~v77;
            if ((*(v74 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78))
            {
              v79 = ~v77;
              while (*(*(v74 + 48) + 8 * v78) != 24)
              {
                v78 = (v78 + 1) & v79;
                if (((*(v74 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
                {
                  goto LABEL_48;
                }
              }

LABEL_63:

              goto LABEL_53;
            }
          }

LABEL_48:

          v81 = (v52)(v80);
          if (v81 == 38)
          {
            v83 = &unk_2864AFD20;
          }

          else
          {
            v82 = MEMORY[0x277D84FA0];
            if (v81 != 41)
            {
              goto LABEL_56;
            }

            v83 = &unk_2864AFD48;
          }

          v82 = sub_2529FC004(v83);
LABEL_56:
          if (!*(v82 + 16) || (v84 = *(v82 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](24), v85 = sub_252E37F14(), v86 = -1 << *(v82 + 32), v87 = v85 & ~v86, ((*(v82 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0))
          {
LABEL_61:

            v89 = sub_252D4FE78(24);

            v48 = (v156 + 32);
            v46 = v159;
            if (!v89)
            {
              goto LABEL_116;
            }

LABEL_21:
            if (v47 == v46)
            {
              goto LABEL_67;
            }

            continue;
          }

          v88 = ~v86;
          while (*(*(v82 + 48) + 8 * v87) != 24)
          {
            v87 = (v87 + 1) & v88;
            if (((*(v82 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_63;
        }

        v66 = &unk_2864AFCF8;
      }

      v65 = sub_2529FC004(v66);
      goto LABEL_36;
    }

    break;
  }

  if (v47 < v45[2])
  {
    v49 = *&v48[8 * v47];

    v50 = __OFADD__(v47++, 1);
    if (v50)
    {
      goto LABEL_66;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_112:
  swift_once();
LABEL_10:
  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544CE8);
  sub_252CC4050(0xD00000000000002CLL, 0x8000000252E7FFF0, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000014, 0x8000000252E9D230, 264);
  return 1;
}

void sub_252DDA6CC(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544C40);
  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E9CED0, 0xD000000000000080, 0x8000000252E9CD90);
  v7 = [a1 automatableTask];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for ControlAutomateHomeIntent();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      if ((sub_252DD8F6C() & 1) == 0)
      {
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v6, qword_27F544C70);
        sub_252CC4050(0xD000000000000057, 0x8000000252E9CEF0, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000021, 0x8000000252E9CF50, 92);
        type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
        v193 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
        (*(a3 + 16))(a3, v193);

        v23 = v193;
        goto LABEL_58;
      }

      v190 = v8;
      v191 = a3;
      v188 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask;
      v11 = *&v10[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask];
      v185 = v10;
      v187 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters;
      v12 = *&v10[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters];
      v186 = type metadata accessor for ControlHomeIntent();
      v13 = objc_allocWithZone(v186);
      v14 = v11;

      v15 = [v13 init];
      [v15 setUserTask_];
      v16 = type metadata accessor for HomeFilter();
      v17 = sub_252E37254();

      [v15 setFilters_];

      [v15 setTime_];
      v18 = [v15 filters];
      if (v18)
      {
        v19 = v18;
        v20 = v16;
        v21 = sub_252E37264();

        v22 = sub_252DD5A58(v21);
      }

      else
      {
        v20 = v16;
        v22 = MEMORY[0x277D84F90];
      }

      v24 = sub_252C758E0(v22);

      v25 = sub_252DD6238(v24);

      if (!v25)
      {
        if (qword_27F53F4C0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v6, qword_27F544CE8);
        sub_252CC4050(0xD00000000000001ELL, 0x8000000252E80080, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000021, 0x8000000252E9CF50, 97);
        type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
        v189 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
        (*(v191 + 16))(v191, v189);

        goto LABEL_57;
      }

      if ((sub_2529E8090() & 1) == 0)
      {
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v6, qword_27F544C70);
        sub_252CC4050(0xD000000000000047, 0x8000000252E9CF80, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000021, 0x8000000252E9CF50, 102);
        type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
        v189 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
        (*(v191 + 16))(v191, v189);

        goto LABEL_26;
      }

      v26 = *&v188[v185];
      v27 = *(v185 + v187);
      v28 = objc_allocWithZone(v186);
      v29 = v26;

      v30 = [v28 init];
      [v30 setUserTask_];
      v31 = sub_252E37254();

      [v30 setFilters_];

      [v30 setTime_];
      LOBYTE(v29) = sub_252C4BEB8();

      if (v29)
      {
        if (qword_27F53F4C0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v6, qword_27F544CE8);
        sub_252CC4050(0xD00000000000004DLL, 0x8000000252E9D0C0, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000021, 0x8000000252E9CF50, 107);
        type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
        v189 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
        (*(v191 + 16))(v191, v189);

LABEL_26:

LABEL_57:
        v23 = v189;
        goto LABEL_58;
      }

      v32 = *&v188[v185];
      sub_252E379F4();

      v195 = 0xD00000000000001FLL;
      v196 = 0x8000000252E921C0;
      v184 = v32;
      v33 = [v184 description];
      v34 = sub_252E36F34();
      v36 = v35;

      MEMORY[0x2530AD570](v34, v36);

      sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E921C0, 0xD000000000000080, 0x8000000252E9CD90);

      v37 = *&v188[v185];
      v38 = *(v185 + v187);
      v39 = objc_allocWithZone(v186);
      v40 = v37;

      v41 = [v39 init];
      [v41 setUserTask_];
      v42 = sub_252E37254();

      [v41 setFilters_];

      [v41 setTime_];
      LOBYTE(v40) = sub_252C4B5D4();

      v43 = v184;
      if (v40)
      {
        v44 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal25AutomateHomeIntentHandler_climateAttributes);
        v45 = [v184 attribute];
        v43 = v184;
        v46 = *(v44 + 16);
        v47 = (v44 + 32);
        while (v46)
        {
          v48 = *v47++;
          --v46;
          if (v48 == v45)
          {
            if (qword_27F53F4C0 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v6, qword_27F544CE8);
            sub_252CC4050(0xD000000000000051, 0x8000000252E9D060, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000021, 0x8000000252E9CF50, 115);
            type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
            v49 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
            goto LABEL_42;
          }
        }
      }

      if (![v43 attribute])
      {
        sub_252CC3D90(0xD000000000000026, 0x8000000252E922C0, 0xD000000000000080, 0x8000000252E9CD90);
        type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
        v49 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_42:
        v189 = v49;
        (*(v191 + 16))(v191, v189);

        goto LABEL_56;
      }

      v50 = *&v188[v185];
      v51 = *(v185 + v187);
      v52 = objc_allocWithZone(v186);
      v53 = v50;

      v54 = [v52 init];
      [v54 setUserTask_];
      v55 = sub_252E37254();

      [v54 setFilters_];

      [v54 setTime_];
      v56 = [v54 userTask];
      if (v56)
      {
        v57 = v56;
        v58 = [v56 taskType];

        v59 = &off_279711000;
        if (v58 == 1)
        {
          v60 = *&v188[v185];
          v61 = *(v185 + v187);
          v62 = objc_allocWithZone(v186);
          v63 = v60;

          v64 = [v62 init];
          [v64 setUserTask_];
          v65 = sub_252E37254();

          [v64 setFilters_];

          [v64 setTime_];
          LOBYTE(v63) = sub_252CCFCB8();

          if ((v63 & 1) == 0 && [v184 attribute] != 67)
          {
            if ([v184 attribute] == 8)
            {
              v66 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
              v67 = sub_252E36F04();
              v68 = [v66 initWithIdentifier:0 displayString:v67];

              v69 = v68;
              [v69 setBoolValue_];
              [v69 setType_];

              v70 = objc_allocWithZone(type metadata accessor for HomeUserTask());
              v71 = v69;
              v72 = sub_252E36F04();
              v73 = [v70 initWithIdentifier:0 displayString:v72];

              v74 = v73;
              [v74 setTaskType_];
              [v74 setAttribute_];
              [v74 setValue_];

              type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
              v189 = [swift_getObjCClassFromMetadata() resolutionResultConfirmationRequiredWithItemToConfirm_];
              (*(v191 + 16))(v191, v189);

              goto LABEL_57;
            }

            sub_252CC3D90(0xD000000000000028, 0x8000000252E92290, 0xD000000000000080, 0x8000000252E9CD90);
            type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
            v90 = [swift_getObjCClassFromMetadata() needsValue];
            goto LABEL_49;
          }
        }
      }

      else
      {
        sub_252C515AC();

        v59 = 0x1FBC72000;
      }

      v75 = sub_252DD9550(v185);
      if ((v76 & 1) == 0)
      {
        v89 = v75;
        type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
        v90 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
LABEL_49:
        v91 = v90;
LABEL_55:
        v189 = v91;
        (*(v191 + 16))(v191, v91);

LABEL_56:

        goto LABEL_57;
      }

      v77 = *(v185 + v187);

      sub_252E379F4();

      v195 = 0xD00000000000001ELL;
      v196 = 0x8000000252E922F0;
      v183 = v77;
      v78 = MEMORY[0x2530AD730](v77, v20);
      MEMORY[0x2530AD570](v78);

      sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E922F0, 0xD000000000000080, 0x8000000252E9CD90);

      v79 = *&v188[v185];
      v80 = *(v185 + v187);
      v81 = objc_allocWithZone(v186);
      v82 = v79;
      v83 = v59;
      v84 = v82;

      v85 = [v81 init];
      [v85 (v83 + 1577)];
      v86 = sub_252E37254();

      [v85 setFilters_];

      [v85 setTime_];
      v87 = [v85 userTask];
      if (v87)
      {
        v88 = v87;
        if ([v87 taskType] == 4)
        {

LABEL_52:

          sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E9D030, 0xD000000000000080, 0x8000000252E9CD90);
LABEL_53:
          type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
          v93 = v185;
LABEL_54:
          v91 = sub_252E28EC0(v93);
          goto LABEL_55;
        }

        v92 = [v88 taskType];

        if (v92 == 5)
        {
          goto LABEL_52;
        }
      }

      else
      {
        sub_252C515AC();
      }

      v94 = *&v188[v185];
      v95 = *(v185 + v187);
      v96 = objc_allocWithZone(v186);
      v97 = v94;

      v98 = [v96 init];
      [v98 setUserTask_];
      v99 = sub_252E37254();

      [v98 setFilters_];

      [v98 setTime_];
      if (sub_252C51814(3u) & 1) != 0 || (sub_252C51814(1u))
      {

        v100 = v191;
LABEL_64:

        sub_252CC3D90(0xD000000000000040, 0x8000000252E92370, 0xD000000000000080, 0x8000000252E9CD90);
        type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
        v194 = sub_252E28EC0(v185);
        (*(v100 + 16))(v100, v194);

        v23 = v194;
        goto LABEL_58;
      }

      v101 = sub_252C51814(2u);

      v100 = v191;
      if (v101)
      {
        goto LABEL_64;
      }

      v102 = *&v188[v185];
      v103 = *(v185 + v187);
      v104 = objc_allocWithZone(v186);
      v105 = v102;

      v106 = [v104 init];
      [v106 setUserTask_];
      v107 = sub_252E37254();

      [v106 setFilters_];

      [v106 setTime_];
      LOBYTE(v105) = sub_252C4DD64();

      if (v105)
      {

        v195 = 0;
        v196 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000054, 0x8000000252E9CFD0);
        v108 = *&v188[v185];
        v109 = *(v185 + v187);
        v110 = objc_allocWithZone(v186);
        v111 = v108;

        v112 = [v110 init];
        [v112 setUserTask_];
        v113 = sub_252E37254();

        [v112 setFilters_];

        [v112 setTime_];
        ControlHomeIntent.getTargetDeviceTypes()();

        sub_25292A344();
        v114 = sub_252E373B4();
        v116 = v115;

        MEMORY[0x2530AD570](v114, v116);

        sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E9CD90);

        goto LABEL_53;
      }

      sub_252E379F4();

      v195 = 0xD000000000000012;
      v196 = 0x8000000252E92310;
      v117 = [v185 description];
      v118 = sub_252E36F34();
      v120 = v119;

      MEMORY[0x2530AD570](v118, v120);

      sub_252CC3D90(0xD000000000000012, 0x8000000252E92310, 0xD000000000000080, 0x8000000252E9CD90);

      v121 = *&v188[v185];
      v122 = *(v185 + v187);
      v123 = objc_allocWithZone(v186);
      v124 = v121;

      v125 = [v123 init];
      [v125 setUserTask_];
      v126 = sub_252E37254();

      [v125 setFilters_];

      [v125 setTime_];
      v182 = sub_252C4D664(5);

      type metadata accessor for HomeStore();
      v127 = static HomeStore.shared.getter();
      v128 = *&v188[v185];
      v129 = *(v185 + v187);
      v130 = objc_allocWithZone(v186);
      v131 = v128;

      v132 = [v130 init];
      [v132 setUserTask_];
      v133 = sub_252E37254();

      [v132 setFilters_];

      [v132 setTime_];
      if (v182)
      {
        v134 = [v132 filters];

        if (v134)
        {
          v135 = sub_252E37264();
        }

        else
        {
          v135 = MEMORY[0x277D84F90];
        }

        v144 = v127;
        v142 = HomeStore.scenes(matching:)(v135);
        v146 = v145;

        if (v146)
        {

          v195 = 0;
          v196 = 0xE000000000000000;
          v147 = v142;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E92330);
          v198 = v142;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
          sub_252E37AE4();
          sub_252CC4050(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000021, 0x8000000252E9CF50, 168);

          type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
          v148 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
          (*(v191 + 16))(v191, v148);

          sub_252929F10(v142, 1);
LABEL_92:
          v159 = v142;
          v160 = 1;
LABEL_93:
          sub_252929F10(v159, v160);

          return;
        }

        v149 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentHandler()) init];
        v150 = sub_252B1BB50(v183, MEMORY[0x277D84F90], 0, v142, 0, 0, 0, 0);

        if (v150 >> 62)
        {
          if (!sub_252E378C4())
          {
            goto LABEL_126;
          }
        }

        else if (!*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_126;
        }

        v151 = v150 & 0xC000000000000001;
        if ((v150 & 0xC000000000000001) != 0)
        {
          v152 = MEMORY[0x2530ADF00](0, v150);
          goto LABEL_85;
        }

        if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v152 = *(v150 + 32);
LABEL_85:
          v153 = v152;
          v154 = [v152 resolutionResultCode];

          if (v154 == 2)
          {
            if (v151)
            {
              goto LABEL_101;
            }

            goto LABEL_112;
          }

          if (v151)
          {
            v167 = MEMORY[0x2530ADF00](0, v150);
            goto LABEL_109;
          }

          if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v167 = *(v150 + 32);
LABEL_109:
            v169 = v167;
            v170 = [v167 resolutionResultCode];

            if (v170 == 3)
            {
              if (!v151)
              {
                goto LABEL_119;
              }

              goto LABEL_118;
            }

            goto LABEL_126;
          }

          goto LABEL_129;
        }

        __break(1u);
        goto LABEL_125;
      }

      v136 = v127;
      v137 = v127[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
      if (v137 == 2 || (v137 & 1) != 0)
      {
        v138 = [v132 filters];
        if (v138)
        {
          v139 = v138;
          v140 = sub_252E37264();

          v141 = [v132 userTask];
          v142 = HomeStore.accessories(matching:supporting:)(v140, v141);
          LOBYTE(v139) = v143;

          if ((v139 & 1) == 0)
          {
            v161 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentHandler()) init];
            v150 = sub_252B1BB50(v183, v142, 0, MEMORY[0x277D84F90], 0, 0, 0, 0);

            if (!(v150 >> 62))
            {
              if (!*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_126;
              }

LABEL_96:
              v162 = v150 & 0xC000000000000001;
              if ((v150 & 0xC000000000000001) != 0)
              {
                v163 = MEMORY[0x2530ADF00](0, v150);
              }

              else
              {
                if (!*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_129:
                  __break(1u);
                  goto LABEL_130;
                }

                v163 = *(v150 + 32);
              }

              v164 = v163;
              v165 = [v163 resolutionResultCode];

              if (v165 == 2)
              {
                if (v162)
                {
LABEL_101:
                  v166 = MEMORY[0x2530ADF00](0, v150);
LABEL_113:
                  v171 = v166;

                  type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
                  v172 = [v171 disambiguationItems];

                  sub_252E37264();
                  v173 = sub_252E37254();

                  v174 = [swift_getObjCClassFromMetadata() resolutionResultDisambiguationWithItemsToDisambiguate_];

                  (*(v191 + 16))(v191, v174);
                  sub_252929F10(v142, 0);

                  v23 = v184;
                  goto LABEL_58;
                }

LABEL_112:
                v166 = *(v150 + 32);
                goto LABEL_113;
              }

              if (v162)
              {
                v168 = MEMORY[0x2530ADF00](0, v150);
              }

              else
              {
                if (!*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_130:
                  __break(1u);
                  return;
                }

                v168 = *(v150 + 32);
              }

              v175 = v168;
              v176 = [v168 resolutionResultCode];

              if (v176 == 3)
              {
                if (!v162)
                {
LABEL_119:
                  v177 = *(v150 + 32);
                  goto LABEL_120;
                }

LABEL_118:
                v177 = MEMORY[0x2530ADF00](0, v150);
LABEL_120:
                v178 = v177;

                type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
                v179 = [v178 itemToConfirm];

                sub_252E377F4();
                swift_unknownObjectRelease();
                __swift_project_boxed_opaque_existential_1(&v195, v197);
                v180 = sub_252E37DA4();
                __swift_destroy_boxed_opaque_existential_1(&v195);
                v181 = [swift_getObjCClassFromMetadata() resolutionResultConfirmationRequiredWithItemToConfirm_];
                swift_unknownObjectRelease();
                (*(v191 + 16))(v191, v181);

                v159 = v142;
                v160 = 0;
                goto LABEL_93;
              }

LABEL_126:

              sub_252929F10(v142, 0);
              type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
              v93 = v185;
              goto LABEL_54;
            }

LABEL_125:
            if (!sub_252E378C4())
            {
              goto LABEL_126;
            }

            goto LABEL_96;
          }

LABEL_91:
          v195 = 0;
          v196 = 0xE000000000000000;
          v157 = v142;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E92330);
          v198 = v142;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
          sub_252E37AE4();
          sub_252CC4050(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E9CD90, 0xD000000000000021, 0x8000000252E9CF50, 183);

          type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
          v158 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
          (*(v191 + 16))(v191, v158);

          goto LABEL_92;
        }

        sub_2529318DC();
        v142 = swift_allocError();
        v156 = 1;
      }

      else
      {
        sub_2529318DC();
        v142 = swift_allocError();
        v156 = 12;
      }

      *v155 = v156;

      goto LABEL_91;
    }
  }

  type metadata accessor for AutomateHomeAutomatableTaskResolutionResult();
  v192 = sub_252E21658(5);
  (*(a3 + 16))(a3, v192);
  v23 = v192;
LABEL_58:
}

void sub_252DDC524(uint64_t a1)
{
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C58);
  sub_252CC3D90(0xD000000000000015, 0x8000000252E9D110, 0xD000000000000080, 0x8000000252E9CD90);
  v3 = *(sub_252B680FC() + 72);

  if (v3 == 1)
  {
    *(sub_252B680FC() + 72) = 0;

    v4 = sub_252B680FC();
    *(v4 + 104) = 0;
    *(v4 + 112) = 1;
  }

  v5 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
  v6 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = 1;
  [v5 setUserActivity_];
  (*(a1 + 16))(a1, v5);
}

uint64_t sub_252DDC678(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541768, &qword_252E40A18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C3C0;
  *(inited + 32) = type metadata accessor for AutomateHomeIntentSceneHandleDelegate();
  *(inited + 40) = &off_2864BE578;
  *(inited + 48) = type metadata accessor for AutomateHomeIntentTaskHandleDelegate();
  *(inited + 56) = &off_2864B72D8;
  v3 = [a1 automatableTask];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  type metadata accessor for ControlAutomateHomeIntent();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    v10 = v4;
LABEL_10:

    goto LABEL_11;
  }

  v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v7 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
  v8 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v9 = v6;

  v10 = [v8 init];
  [v10 setUserTask_];
  type metadata accessor for HomeFilter();
  v11 = sub_252E37254();

  [v10 setFilters_];

  [v10 setTime_];
  v12 = [v10 userTask];
  if (!v12)
  {
    sub_252C515AC();
    goto LABEL_10;
  }

  v13 = v12;
  v14 = [v12 attribute];

  if (v14 == 67)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544C70);
    sub_252CC3D90(0xD000000000000033, 0x8000000252E9D1F0, 0xD000000000000080, 0x8000000252E9CD90);
    v16 = type metadata accessor for AutomateHomeAppIntentHandleDelegate();
    inited = sub_2529F9984(1, 3, 1, inited);
    sub_252B7DA94(0, 0, 1, v16, &off_2864BC7E0);
    goto LABEL_13;
  }

LABEL_11:
  if (qword_27F53F498 != -1)
  {
LABEL_21:
    swift_once();
  }

  v17 = sub_252E36AD4();
  __swift_project_value_buffer(v17, qword_27F544C70);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E769F0, 0xD000000000000080, 0x8000000252E9CD90);
LABEL_13:
  v18 = (inited + 40);
  v19 = -*(inited + 16);
  v20 = -1;
  while (v19 + v20 != -1)
  {
    if (++v20 >= *(inited + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v21 = v18 + 2;
    v22 = *(v18 - 1);
    v23 = *v18;
    v24 = (*(*v18 + 8))(a1, v22, *v18);
    v18 = v21;
    if (v24)
    {

      result = (*(v23 + 24))(v22, v23);
      goto LABEL_19;
    }
  }

  type metadata accessor for AutomateHomeIntentDefaultHandleDelegate();
  v26 = swift_allocObject();
  v27 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
  v28 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v27[v28] = 5;
  [v27 setUserActivity_];
  result = v26;
  *(v26 + 16) = v27;
LABEL_19:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252DDCAE0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252E36AB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  *(sub_252B680FC() + 72) = 0;

  v13 = sub_252B680FC();
  *(v13 + 104) = 0;
  *(v13 + 112) = 1;

  v14 = sub_252B680FC();
  v15 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_currentLearnedEntitySuggestionQuery);
  *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_currentLearnedEntitySuggestionQuery) = 0;

  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v16 = qword_27F544F08;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v17 = *(v7 + 16);
  v38 = v12;
  v17(v10, v12, v6);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = *(v7 + 32);
  v39 = v6;
  v21(v20 + v18, v10, v6);
  v22 = (v20 + v19);
  *v22 = a2;
  v22[1] = a3;
  v23 = qword_2814B09D0;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_252E36AD4();
  __swift_project_value_buffer(v24, qword_2814B09D8);
  ObjectType = 0;
  v41 = 0xE000000000000000;
  sub_252E379F4();

  ObjectType = 0xD000000000000028;
  v41 = 0x8000000252E9D1C0;
  v25 = [a1 description];
  v26 = sub_252E36F34();
  v28 = v27;

  MEMORY[0x2530AD570](v26, v28);

  sub_252CC4A5C(ObjectType, v41, 1, 0xD000000000000080, 0x8000000252E9CD90);

  sub_252DDC678(a1);
  v30 = v29;
  ObjectType = swift_getObjectType();
  v41 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461D0, &qword_252E61340);
  v31 = sub_252E36F94();
  v33 = v32;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v24, qword_27F544C70);
  ObjectType = 0;
  v41 = 0xE000000000000000;
  sub_252E379F4();

  ObjectType = 0xD000000000000011;
  v41 = 0x8000000252E73E80;
  MEMORY[0x2530AD570](v31, v33);

  sub_252CC4A5C(ObjectType, v41, 1, 0xD000000000000080, 0x8000000252E9CD90);

  v34 = swift_getObjectType();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_252DDD0B4;
  *(v35 + 24) = v20;
  v36 = *(v30 + 16);

  v36(a1, sub_252DDD154, v35, v34, v30);

  swift_unknownObjectRelease();

  return (*(v7 + 8))(v38, v39);
}

uint64_t sub_252DDD0B4(uint64_t a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_252DD8BC8(a1, v1 + v4, v6);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252DDD174(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_252DDD1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v79 = a2;
  v74 = sub_252E36AB4();
  v5 = *(v74 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v74);
  v64 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v78 = &v59 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v59 - v14;
  if (qword_27F53F618 != -1)
  {
    swift_once();
  }

  v16 = qword_27F544FA0;
  sub_252E36A94();
  sub_252E375D4();
  v73 = v16;
  sub_252E36A84();
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v17 = sub_252E36AD4();
  v18 = __swift_project_value_buffer(v17, qword_27F544E08);
  *&v83[0] = 0;
  *(&v83[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v83[0] = 0xD000000000000022;
  *(&v83[0] + 1) = 0x8000000252E9D4B0;
  *&v82[0] = *(a1 + 16);
  v19 = *&v82[0];
  v20 = sub_252E37D94();
  MEMORY[0x2530AD570](v20);

  MEMORY[0x2530AD570](2108704, 0xE300000000000000);
  v77 = a1;
  v21 = MEMORY[0x2530AD730](a1, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v21);

  v71 = v18;
  v72 = "izing candidates: ";
  sub_252CC3D90(*&v83[0], *(&v83[0] + 1), 0xD000000000000094, 0x8000000252E9D4E0);

  (*(v5 + 16))(v13, v15, v74);
  if (v19 != 1)
  {
    v22 = a3;
    if (v19)
    {
      v26 = *(v79 + 16);
      if (v26)
      {
        v61 = v13;
        v62 = v15;
        v63 = a3;
        v27 = (v79 + 32);
        v69 = "IntentPrevalidation.Step";

        v66 = "Remaining candidates: ";
        v67 = 0x8000000252E8D210;
        v65 = " is one. Returning candidate ";
        v60 = v5;
        v70 = (v5 + 8);
        v76 = v26 - 1;
        v68 = 0xD000000000000011;
        v28 = v72;
        v29 = v78;
        while (1)
        {
          v30 = v73;
          v75 = v27;
          v79 = *v27;
          sub_252E36A94();
          sub_252E375D4();
          sub_252E36A84();
          *&v83[0] = 0;
          *(&v83[0] + 1) = 0xE000000000000000;
          sub_252E379F4();

          strcpy(v83, "Running step: ");
          HIBYTE(v83[0]) = -18;
          v82[0] = v79;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461D8, &qword_252E61348);
          v31 = sub_252E36F94();
          MEMORY[0x2530AD570](v31);

          MEMORY[0x2530AD570](v68, v69 | 0x8000000000000000);
          v32 = v77;
          v33 = MEMORY[0x2530AD730](v77, &type metadata for HomeAutomationIntent);
          MEMORY[0x2530AD570](v33);

          sub_252CC3D90(*&v83[0], *(&v83[0] + 1), 0xD000000000000094, v28 | 0x8000000000000000);

          v34 = (*(*(&v79 + 1) + 8))(v32, v79);
          v83[0] = v79;
          v35 = sub_252E36F94();
          LOBYTE(v82[0]) = 1;
          v81[0] = 1;
          LOBYTE(v80) = 1;
          v84 = 1;
          *&v89 = 0;
          BYTE8(v89) = 1;
          *(&v89 + 9) = *v88;
          HIDWORD(v89) = *&v88[3];
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          LOBYTE(v95) = 1;
          DWORD1(v95) = *&v87[3];
          *(&v95 + 1) = *v87;
          *(&v95 + 1) = 0;
          v96 = 0uLL;
          LOWORD(v97) = 513;
          WORD3(v97) = v86;
          *(&v97 + 2) = v85;
          *(&v97 + 1) = v35;
          v98 = v36;
          v99 = 1;
          GEOLocationCoordinate2DMake(&v89);
          v83[8] = v97;
          v83[9] = v98;
          LOBYTE(v83[10]) = v99;
          v83[4] = v93;
          v83[5] = v94;
          v83[6] = v95;
          v83[7] = v96;
          v83[0] = v89;
          v83[1] = v90;
          v83[2] = v91;
          v83[3] = v92;
          *&v79 = v30;
          _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v30, v29, "IntentSelection.IntentPrioritization.Step", 41, 2, v83);
          v100[8] = v83[8];
          v100[9] = v83[9];
          v101 = v83[10];
          v100[4] = v83[4];
          v100[5] = v83[5];
          v100[6] = v83[6];
          v100[7] = v83[7];
          v100[0] = v83[0];
          v100[1] = v83[1];
          v100[2] = v83[2];
          v100[3] = v83[3];
          sub_2529765AC(v100);
          if (*(v34 + 16))
          {

            v37 = *(v34 + 16);
            if (v37 == 1)
            {
              memcpy(v81, (v34 + 32), sizeof(v81));
              sub_2529353AC(v81, v83);

              *&v83[0] = 0;
              *(&v83[0] + 1) = 0xE000000000000000;
              sub_252E379F4();
              v80 = v83[0];
              MEMORY[0x2530AD570](0xD000000000000020, v66 | 0x8000000000000000);
              v52 = sub_252E37FB4();
              MEMORY[0x2530AD570](v52);

              MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E8D260);
              memcpy(v83, v81, 0x1F8uLL);
              sub_2529353AC(v81, v82);
              v53 = HomeAutomationIntent.description.getter();
              v55 = v54;
              memcpy(v82, v83, 0x1F8uLL);
              sub_252935408(v82);
              MEMORY[0x2530AD570](v53, v55);

              sub_252CC3D90(v80, *(&v80 + 1), 0xD000000000000094, v72 | 0x8000000000000000);

              memcpy(v83, v81, 0x1F8uLL);
              GEOLocationCoordinate2DMake(v83);
              sub_2529353AC(v81, &v80);
              sub_252E375C4();
              v56 = v61;
              sub_252E36A74();
              sub_252935408(v81);
              v57 = *v70;
              v58 = v74;
              (*v70)(v78, v74);
              v57(v56, v58);
              v57(v62, v58);
              v25 = v63;
              return memcpy(v25, v83, 0x1F8uLL);
            }

            *&v83[0] = 0;
            *(&v83[0] + 1) = 0xE000000000000000;
            sub_252E379F4();

            *&v83[0] = 0xD000000000000016;
            *(&v83[0] + 1) = v67;
            *&v82[0] = v37;
            v38 = sub_252E37D94();
            MEMORY[0x2530AD570](v38);

            MEMORY[0x2530AD570](0x7320726574666120, 0xED0000203A706574);
            v39 = sub_252E37FB4();
            MEMORY[0x2530AD570](v39);

            MEMORY[0x2530AD570](2108704, 0xE300000000000000);
            v40 = MEMORY[0x2530AD730](v34, &type metadata for HomeAutomationIntent);
            MEMORY[0x2530AD570](v40);

            v28 = v72;
            sub_252CC3D90(*&v83[0], *(&v83[0] + 1), 0xD000000000000094, v72 | 0x8000000000000000);
            v77 = v34;
          }

          else
          {

            *&v83[0] = 0;
            *(&v83[0] + 1) = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000020, v66 | 0x8000000000000000);
            v41 = sub_252E37FB4();
            MEMORY[0x2530AD570](v41);

            MEMORY[0x2530AD570](0xD00000000000001ALL, v65 | 0x8000000000000000);
            v42 = sub_252E37FB4();
            MEMORY[0x2530AD570](v42);

            v43 = v72;
            sub_252CC3D90(*&v83[0], *(&v83[0] + 1), 0xD000000000000094, v72 | 0x8000000000000000);
            v28 = v43;
          }

          (*v70)(v78, v74);
          if (!v76)
          {
            v15 = v62;
            v22 = v63;
            v5 = v60;
            v13 = v61;
            v44 = v64;
            v45 = v77;
            goto LABEL_19;
          }

          --v76;
          v27 = v75 + 1;
        }
      }

      v45 = v77;

      v44 = v64;
LABEL_19:
      v46 = *(v45 + 16);
      if (v46 >= 2)
      {
        *&v83[0] = v45;

        sub_252DDE2C0(v83);

        v45 = *&v83[0];
        *&v83[0] = 0;
        *(&v83[0] + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E9D580);
        *&v82[0] = *(v45 + 16);
        v47 = sub_252E37D94();
        MEMORY[0x2530AD570](v47);

        MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E9D5C0);
        v48 = MEMORY[0x2530AD730](v45, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v48);

        sub_252CC4050(*&v83[0], *(&v83[0] + 1), 0xD000000000000094, v72 | 0x8000000000000000, 0xD00000000000001DLL, 0x8000000252E9D610, 100);

        sub_2529515FC(10, 20, 0xD00000000000001CLL, 0x8000000252E9D630);
        sub_252E375E4();
        sub_252E36AA4();
        sub_252E36A74();
        (*(v5 + 8))(v44, v74);
        v46 = *(v45 + 16);
      }

      if (v46)
      {
        memcpy(v81, (v45 + 32), sizeof(v81));
        memmove(v82, (v45 + 32), 0x1F8uLL);
        GEOLocationCoordinate2DMake(v82);
        sub_2529353AC(v81, v83);

        memcpy(v83, v82, 0x1F8uLL);
LABEL_25:
        sub_252E375C4();
        sub_252E36A74();
        v49 = *(v5 + 8);
        v50 = v74;
        v49(v13, v74);
        v49(v15, v50);
        v25 = v22;
        return memcpy(v25, v83, 0x1F8uLL);
      }
    }

    else
    {
      sub_252CC4050(0xD00000000000001CLL, 0x8000000252E6C730, 0xD000000000000094, v72 | 0x8000000000000000, 0xD00000000000001DLL, 0x8000000252E9D610, 55);
    }

    sub_25293DEE0(v83);
    goto LABEL_25;
  }

  sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E8D2A0, 0xD000000000000094, v72 | 0x8000000000000000);
  memcpy(v82, (v77 + 32), 0x1F8uLL);
  memcpy(v83, (v77 + 32), 0x1F8uLL);
  GEOLocationCoordinate2DMake(v83);
  sub_2529353AC(v82, v81);
  sub_252E375C4();
  sub_252E36A74();
  v23 = *(v5 + 8);
  v24 = v74;
  v23(v13, v74);
  v23(v15, v24);
  v25 = a3;
  return memcpy(v25, v83, 0x1F8uLL);
}

double sub_252DDE0C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541828, &qword_252E40AC0);
  v0 = swift_allocObject();
  *&result = 22;
  *(v0 + 16) = xmmword_252E5B3B0;
  *(v0 + 32) = &type metadata for PrioritizeTypeEveryOverPerfectNameMatch;
  *(v0 + 40) = &off_2864C1050;
  *(v0 + 48) = &type metadata for PrioritizeServiceTypeOverPartialName;
  *(v0 + 56) = &off_2864B55F8;
  *(v0 + 64) = &type metadata for PrioritizeMatchAllWords;
  *(v0 + 72) = &off_2864B2108;
  *(v0 + 80) = &type metadata for PrioritizeGenericTypeForServiceTypeEvery;
  *(v0 + 88) = &off_2864BEE90;
  *(v0 + 96) = &type metadata for PrioritizeGenericTypeOverPerfectName;
  *(v0 + 104) = &off_2864BA5D0;
  *(v0 + 112) = &type metadata for PrioritizePerfectNameOverNonGenericType;
  *(v0 + 120) = &off_2864B5AD0;
  *(v0 + 128) = &type metadata for PrioritizeRvcRoomDirectedCleaning;
  *(v0 + 136) = &off_2864B4F58;
  *(v0 + 144) = &type metadata for PrioritizeAccessoryName;
  *(v0 + 152) = &off_2864B3308;
  *(v0 + 160) = &type metadata for PrioritizePrimaryServiceMatch;
  *(v0 + 168) = &off_2864BB9B8;
  *(v0 + 176) = &type metadata for PrioritizeResolvedReference;
  *(v0 + 184) = &off_2864B6158;
  *(v0 + 192) = &type metadata for PrioritizeDoorCandidates;
  *(v0 + 200) = &off_2864B1968;
  *(v0 + 208) = &type metadata for PrioritizeUserVocabularyScenes;
  *(v0 + 216) = &off_2864B6B58;
  *(v0 + 224) = &type metadata for PrioritizePrimaryNLIntent;
  *(v0 + 232) = &off_2864BB418;
  *(v0 + 240) = &type metadata for PrioritizePerfectMatchesOverFuzzyMatches;
  *(v0 + 248) = &off_2864B9048;
  *(v0 + 256) = &type metadata for PrioritizeSceneIfCandidateHasNoVerb;
  *(v0 + 264) = &off_2864BB7B8;
  *(v0 + 272) = &type metadata for PrioritizeAliasFuzzyMatching;
  *(v0 + 280) = &off_2864B5A98;
  *(v0 + 288) = &type metadata for PrioritizeFuzzyMatchingCandidates;
  *(v0 + 296) = &off_2864B0B90;
  *(v0 + 304) = &type metadata for PrioritizeCandidatesWithMoreNames;
  *(v0 + 312) = &off_2864BB980;
  *(v0 + 320) = &type metadata for PrioritizeRoomNameMatchOverGenericType;
  *(v0 + 328) = &off_2864B09B0;
  *(v0 + 336) = &type metadata for PrioritizeHomeName;
  *(v0 + 344) = &off_2864B83A0;
  *(v0 + 352) = &type metadata for PrioritizeReferencedEntities;
  *(v0 + 360) = &off_2864B6190;
  *(v0 + 368) = &type metadata for PrioritizeGenericType;
  *(v0 + 376) = &off_2864BB8E8;
  qword_27F575DA0 = v0;
  return result;
}

uint64_t sub_252DDE2C0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_252934724(v2);
  }

  v3 = *(v2 + 2);
  v15[0] = (v2 + 32);
  v15[1] = v3;
  result = sub_252E37D74();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2;
      do
      {
        v11 = v8;
        v12 = v10;
        do
        {
          if (*(v12 + 44) >= *(v12 + 107))
          {
            break;
          }

          memcpy(__dst, v12 + 536, sizeof(__dst));
          memcpy(v12 + 536, v12 + 32, 0x1F8uLL);
          result = memcpy(v12 + 32, __dst, 0x1F8uLL);
          v12 -= 504;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 504;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_252E372B4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    __dst[0] = v7 + 32;
    __dst[1] = v6;
    sub_252DDE444(__dst, v16, v15, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_252DDE444(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v88 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_90:
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_252934564(v7);
      v7 = result;
    }

    v76 = (v7 + 16);
    v77 = *(v7 + 16);
    if (v77 >= 2)
    {
      while (*v88)
      {
        v78 = (v7 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_252DDEA34((*v88 + 504 * *v78), (*v88 + 504 * *v80), (*v88 + 504 * v81), v86);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_116;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_117;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_118;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*v88 + 504 * v6 + 320);
      v10 = 504 * v8;
      v11 = *v88 + 504 * v8;
      v12 = *(v11 + 320);
      v13 = v8 + 2;
      v14 = (v11 + 1328);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v17 = (v12 < v9) ^ (v15 >= *v14);
        ++v13;
        v14 += 63;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_121;
      }

      if (v8 < v6)
      {
        v18 = 504 * v6 - 504;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v21 = *v88;
            if (!*v88)
            {
              goto LABEL_127;
            }

            memcpy(__dst, (v21 + v10), sizeof(__dst));
            memmove((v21 + v10), (v21 + v18), 0x1F8uLL);
            result = memcpy((v21 + v18), __dst, 0x1F8uLL);
          }

          ++v20;
          v18 -= 504;
          v10 += 504;
        }

        while (v20 < v19);
        v5 = v88[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_120;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v6 < v8)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v29 = *(v7 + 16);
    v28 = *(v7 + 24);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_252934578((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v30;
    v31 = v7 + 32;
    v32 = (v7 + 32 + 16 * v29);
    *v32 = v8;
    v32[1] = v6;
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_129;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v7 + 32);
          v35 = *(v7 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_59:
          if (v37)
          {
            goto LABEL_106;
          }

          v50 = (v7 + 16 * v30);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_108;
          }

          v56 = (v31 + 16 * v33);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_113;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v30 < 2)
        {
          goto LABEL_114;
        }

        v60 = (v7 + 16 * v30);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_74:
        if (v55)
        {
          goto LABEL_110;
        }

        v63 = (v31 + 16 * v33);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_112;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_81:
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v88)
        {
          goto LABEL_126;
        }

        v71 = (v31 + 16 * (v33 - 1));
        v72 = *v71;
        v73 = (v31 + 16 * v33);
        v74 = v73[1];
        sub_252DDEA34((*v88 + 504 * *v71), (*v88 + 504 * *v73), (*v88 + 504 * v74), v86);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_101;
        }

        if (v33 > *(v7 + 16))
        {
          goto LABEL_102;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v7 + 16);
        if (v33 >= v75)
        {
          goto LABEL_103;
        }

        v30 = v75 - 1;
        result = memmove((v31 + 16 * v33), v73 + 2, 16 * (v75 - 1 - v33));
        *(v7 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v31 + 16 * v30;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_104;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_105;
      }

      v45 = (v7 + 16 * v30);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_107;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_109;
      }

      if (v49 >= v41)
      {
        v67 = (v31 + 16 * v33);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_115;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_3:
    v5 = v88[1];
    if (v6 >= v5)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_122;
  }

  v86 = v7;
  if (v8 + a4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v8 + a4;
  }

  if (v7 < v8)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v6 == v7)
  {
LABEL_38:
    v7 = v86;
    goto LABEL_39;
  }

  v22 = *v88;
  v23 = *v88 + 504 * v6 - 504;
  v83 = v8;
  v24 = v8 - v6;
LABEL_31:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (v26[40] >= v26[103])
    {
LABEL_30:
      ++v6;
      v23 += 504;
      --v24;
      if (v6 != v7)
      {
        goto LABEL_31;
      }

      v6 = v7;
      v8 = v83;
      goto LABEL_38;
    }

    if (!v22)
    {
      break;
    }

    memcpy(__dst, v26 + 63, sizeof(__dst));
    memcpy(v26 + 63, v26, 0x1F8uLL);
    result = memcpy(v26, __dst, 0x1F8uLL);
    v26 -= 63;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_252DDEA34(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 504;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 504;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[504 * v9] <= a4)
    {
      memmove(a4, __dst, 504 * v9);
    }

    v12 = &v4[504 * v9];
    if (v8 < 504)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 40) < *(v6 + 40))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 504;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 504;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 504;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x1F8uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[504 * v11] <= a4)
  {
    memmove(a4, __src, 504 * v11);
  }

  v12 = &v4[504 * v11];
  if (v10 >= 504 && v6 > v7)
  {
LABEL_20:
    v5 -= 504;
    do
    {
      v15 = v5 + 504;
      if (*(v6 - 23) < *(v12 - 23))
      {
        v17 = v6 - 504;
        if (v15 != v6)
        {
          memmove(v5, v6 - 504, 0x1F8uLL);
        }

        if (v12 <= v4 || (v6 -= 504, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 504);
      if (v15 != v12)
      {
        memmove(v5, v12 - 504, 0x1F8uLL);
      }

      v5 -= 504;
      v12 -= 504;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 504;
  if (v6 != v4 || v6 >= &v4[504 * v18])
  {
    memmove(v6, v4, 504 * v18);
  }

  return 1;
}

uint64_t sub_252DDECB8()
{
  result = sub_252A008A8(&unk_2864AC538);
  qword_27F575DA8 = result;
  return result;
}

uint64_t sub_252DDED0C()
{
  type metadata accessor for PowerOffDeltaDecreaseHandleDelegate();

  return swift_allocObject();
}

void sub_252DDED3C(void *a1, uint64_t a2)
{
  v5 = sub_252B4CD30(a1, 0, 1);
  v6 = v5;
  if ((v7 & 1) != 0 || (v49 = v5, v8 = [a1 userTask], v6 = v49, !v8))
  {
    sub_252927D3C(v6);
    v26 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v27 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v26[v27] = 5;
    [v26 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v28 = sub_252E37254();
    [v26 setEntityResponses_];

    (a2)(v26);
    return;
  }

  v9 = v8;
  v52 = [v8 attribute];

  type metadata accessor for MutableControlHomeIntentResponse();
  swift_initStackObject();
  v47 = v49;
  v10 = sub_252D6D96C(v47);
  sub_252927D3C(v49);
  v57 = MEMORY[0x277D84FA0];
  v48 = v10;
  v11 = *(v10 + 24);
  if (v11 >> 62)
  {
    goto LABEL_57;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_42;
  }

  do
  {
    v46 = a2;
    v55 = v11 & 0xC000000000000001;
    v50 = v11 + 32;
    v51 = v11 & 0xFFFFFFFFFFFFFF8;
    v53 = v11;

    v13 = 0;
    v54 = v12;
    while (1)
    {
      if (v55)
      {
        v11 = MEMORY[0x2530ADF00](v13, v53);
        v14 = v11;
        v15 = __OFADD__(v13++, 1);
        if (v15)
        {
          break;
        }

        goto LABEL_12;
      }

      if (v13 >= *(v51 + 16))
      {
        goto LABEL_56;
      }

      v14 = *(v50 + 8 * v13);

      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

LABEL_12:
      swift_beginAccess();
      v16 = *(v14 + 24);
      if (v16 >> 62)
      {
        if (v16 < 0)
        {
          v25 = *(v14 + 24);
        }

        v17 = sub_252E378C4();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v17)
      {
LABEL_31:

        v21 = v54;
        goto LABEL_32;
      }

      v2 = 0;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2530ADF00](v2, v16);
          v18 = v11;
          v19 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v2 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v18 = *(v16 + 8 * v2 + 32);

          v19 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }
        }

        if (*(v18 + 24) != 1 || (a2 = *(v18 + 16)) == 0 || (swift_beginAccess(), (v20 = *(a2 + 32)) == 0) || *(v20 + 16) != 1)
        {

          goto LABEL_26;
        }

        a2 = *(v20 + 24);

        if ((a2 & 1) == 0)
        {
          break;
        }

LABEL_26:
        ++v2;
        if (v19 == v17)
        {
          goto LABEL_31;
        }
      }

      v22 = *(v14 + 16);
      v21 = v54;
      if (v22 && (v23 = *(v22 + 48)) != 0)
      {
        v2 = *(v22 + 40);
        v24 = *(v22 + 48);

        sub_252DA6CD0(&v56, v2, v23);
      }

      else
      {
      }

LABEL_32:
      if (v13 == v21)
      {

        a2 = v46;
        goto LABEL_42;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v36 = v11;
    v12 = sub_252E378C4();
    v11 = v36;
  }

  while (v12);
LABEL_42:
  v29 = *(v48 + 24);

  v31 = sub_252D843F0(v30);

  if (v31 >> 62)
  {
    v32 = sub_252E378C4();
    if (!v32)
    {
      goto LABEL_60;
    }

LABEL_44:
    if (v32 < 1)
    {
      __break(1u);
      goto LABEL_67;
    }

    v33 = 0;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = *(MEMORY[0x2530ADF00](v33, v31) + 16);
        if (v34)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v35 = *(v31 + 8 * v33 + 32);
        v34 = *( + 16);
        if (v34)
        {
LABEL_51:
          if (*(v34 + 24) == 27)
          {

            *(v34 + 24) = v52;
          }
        }
      }

      ++v33;

      if (v32 == v33)
      {
        goto LABEL_60;
      }
    }
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v32)
  {
    goto LABEL_44;
  }

LABEL_60:

  v2 = *(v57 + 16);
  v37 = [v47 entityResponses];
  if (!v37)
  {
    goto LABEL_64;
  }

  v38 = v37;
  type metadata accessor for HomeEntityResponse();
  v39 = sub_252E37264();

  if (!(v39 >> 62))
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_63;
  }

LABEL_67:
  v40 = sub_252E378C4();
LABEL_63:

  if (v2 != v40)
  {
LABEL_64:
    v41 = *(v48 + 24);

    v43 = sub_252D847A0(v42, &v57);

    v44 = *(v48 + 24);
    *(v48 + 24) = v43;
  }

  v45 = sub_252D6BB10();
  (a2)();
  sub_252927D3C(v49);
}

uint64_t sub_252DDF2E4(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 attribute];

    if (v4 == 2)
    {
      v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v5 + 288), v19);

      v6 = v20;
      v7 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      if ((*(v7 + 80))(v6, v7))
      {
        v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        sub_252929E74((v8 + 16), v18);

        __swift_project_boxed_opaque_existential_1(v18, v18[3]);
        v9 = sub_252E338F4();
        __swift_destroy_boxed_opaque_existential_1(v18);
        __swift_destroy_boxed_opaque_existential_1(v19);
        if (v9)
        {
          goto LABEL_13;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v19);
      }
    }
  }

  v10 = [a1 userTask];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 taskType];

    if (v12 != 3)
    {
LABEL_13:
      LOBYTE(v10) = 0;
      return v10 & 1;
    }

    if (qword_27F53F888 != -1)
    {
      swift_once();
    }

    v13 = qword_27F575DA8;
    v14 = [a1 userTask];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 attribute];
    }

    else
    {
      v16 = 0;
    }

    LOBYTE(v10) = sub_252DA0680(v16, v15 == 0, v13);
  }

  return v10 & 1;
}

uint64_t sub_252DDF4D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546200, &unk_252E614E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E3C3C0;
  *(v0 + 32) = type metadata accessor for FoundNoMatchingEntitiesResponseHandler();
  *(v0 + 40) = &off_2864B6EC0;
  result = type metadata accessor for GenericFallbackResponseHandler();
  *(v0 + 48) = result;
  *(v0 + 56) = &off_2864BB810;
  qword_27F575DB0 = v0;
  return result;
}

uint64_t sub_252DDF54C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546200, &unk_252E614E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E3F1F0;
  *(v0 + 32) = type metadata accessor for DiscoverTriggerResponseHandler();
  *(v0 + 40) = &off_2864C1280;
  *(v0 + 48) = type metadata accessor for DiscoverInventoryResponseHandler();
  *(v0 + 56) = &off_2864BAFF8;
  *(v0 + 64) = type metadata accessor for DiscoverLocationResponseHandler();
  *(v0 + 72) = &off_2864BAF00;
  *(v0 + 80) = type metadata accessor for DiscoverCapabilityResponseHandler();
  *(v0 + 88) = &off_2864B17A0;
  *(v0 + 96) = type metadata accessor for DiscoverCountResponseHandler();
  *(v0 + 104) = &off_2864BBA10;
  result = type metadata accessor for SuccessFallbackResponseHandler();
  *(v0 + 112) = result;
  *(v0 + 120) = &off_2864BC760;
  qword_27F575DB8 = v0;
  return result;
}

uint64_t sub_252DDF618(uint64_t a1, uint64_t a2)
{
  v3[268] = v2;
  v3[267] = a2;
  v3[266] = a1;
  v4 = sub_252E36AB4();
  v3[269] = v4;
  v5 = *(v4 - 8);
  v3[270] = v5;
  v6 = *(v5 + 64) + 15;
  v3[271] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DDF6E0, 0, 0);
}

uint64_t sub_252DDF6E0()
{
  v36 = v0;
  if (qword_27F53F898 != -1)
  {
LABEL_20:
    swift_once();
  }

  v1 = v0[267];
  v2 = qword_27F575DB8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461E8, &qword_252E614C0);
  v3 = sub_252E33F24();
  v4 = sub_252E33F04();
  v5 = 0;
  v6 = *(v2 + 16);
  while (v6 != v5)
  {
    if (v5 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v7 = *(v2 + 32 + 16 * v5++);
    v8 = *(&v7 + 1);
    v34 = v7;
    v9 = v7;
    if ((*(*(&v7 + 1) + 16))(v3, v4, v7, *(&v7 + 1)))
    {
      v10 = v0[268];
      memcpy(v0 + 65, (v10 + 16), 0x1F8uLL);
      memcpy(v0 + 2, (v10 + 16), 0x1F8uLL);
      GEOLocationCoordinate2DMake(v0 + 2);
      memcpy(__dst, v0 + 2, 0x1F8uLL);
      v11 = *(v8 + 8);
      v12 = *(v11 + 24);
      *(v0 + 257) = v34;
      __swift_allocate_boxed_opaque_existential_0(v0 + 254);
      sub_2529353AC((v0 + 65), (v0 + 128));
      v12(__dst, v9, v11);
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v13 = sub_252E36AD4();
      __swift_project_value_buffer(v13, qword_27F544D18);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_252E379F4();

      __swift_project_boxed_opaque_existential_1(v0 + 254, v0[257]);
      DynamicType = swift_getDynamicType();
      v15 = v0[258];
      v0[264] = DynamicType;
      v0[265] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461F0, &qword_252E614C8);
      __dst[0] = sub_252E36F94();
      __dst[1] = v16;
      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E73DB0);
      sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000093, 0x8000000252E9D740);

      goto LABEL_12;
    }
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v17 = sub_252E36AD4();
  __swift_project_value_buffer(v17, qword_27F544D18);
  sub_252CC3D90(0xD000000000000057, 0x8000000252E9D7E0, 0xD000000000000093, 0x8000000252E9D740);
  sub_25293DEE0((v0 + 191));
  v18 = type metadata accessor for GenericFallbackResponseHandler();
  swift_allocObject();
  memcpy(__dst, v0 + 191, 0x1F8uLL);
  v19 = sub_252BE97AC(__dst);
  v0[257] = v18;
  v0[258] = &off_2864BB810;
  v0[254] = v19;

LABEL_12:
  sub_252929E74((v0 + 254), (v0 + 259));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461F8, &unk_252E614D0);
  v20 = sub_252E36F94();
  v22 = v21;
  v0[272] = v20;
  v0[273] = v21;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v23 = sub_252E36AD4();
  __swift_project_value_buffer(v23, qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000011;
  __dst[1] = 0x8000000252E73E80;
  MEMORY[0x2530AD570](v20, v22);
  sub_252CC4A5C(__dst[0], __dst[1], 1, 0xD000000000000093, 0x8000000252E9D740);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v24 = v0[271];
  v25 = v0[267];
  v26 = qword_27F544F70;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v27 = v0[257];
  v28 = v0[258];
  __swift_project_boxed_opaque_existential_1(v0 + 254, v27);
  v29 = sub_252E33F24();
  v0[274] = v29;
  v30 = sub_252E33F04();
  v0[275] = v30;
  v31 = swift_task_alloc();
  v0[276] = v31;
  *v31 = v0;
  v31[1] = sub_252DDFC94;
  v32 = v0[266];

  return sub_252C6A028(v32, v29, v30, v27, v28);
}

uint64_t sub_252DDFC94()
{
  v2 = *v1;
  v3 = *(*v1 + 2208);
  v7 = *v1;
  *(*v1 + 2216) = v0;

  if (v0)
  {
    v4 = sub_252DDFE78;
  }

  else
  {
    v5 = *(v2 + 2192);

    v4 = sub_252DDFDB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252DDFDB8()
{
  v1 = v0[271];
  v2 = v0[270];
  v3 = v0[269];
  sub_252DE08A8(v1, v0[272], v0[273], v0[268], "HandleSuccessDialog");

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 254);

  v4 = v0[1];

  return v4();
}

uint64_t sub_252DDFE78()
{
  v1 = *(v0 + 2192);
  v2 = *(v0 + 2184);
  v3 = *(v0 + 2176);
  v4 = *(v0 + 2168);
  v5 = *(v0 + 2160);
  v6 = *(v0 + 2152);
  v7 = *(v0 + 2144);

  sub_252DE08A8(v4, v3, v2, v7, "HandleSuccessDialog");

  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2032));

  v8 = *(v0 + 8);
  v9 = *(v0 + 2216);

  return v8();
}

uint64_t sub_252DDFF60(uint64_t a1, uint64_t a2)
{
  v3[268] = v2;
  v3[267] = a2;
  v3[266] = a1;
  v4 = sub_252E36AB4();
  v3[269] = v4;
  v5 = *(v4 - 8);
  v3[270] = v5;
  v6 = *(v5 + 64) + 15;
  v3[271] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DE0028, 0, 0);
}

uint64_t sub_252DE0028()
{
  v36 = v0;
  if (qword_27F53F890 != -1)
  {
LABEL_20:
    swift_once();
  }

  v1 = v0[267];
  v2 = qword_27F575DB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461E8, &qword_252E614C0);
  v3 = sub_252E33F24();
  v4 = sub_252E33F04();
  v5 = 0;
  v6 = *(v2 + 16);
  while (v6 != v5)
  {
    if (v5 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v7 = *(v2 + 32 + 16 * v5++);
    v8 = *(&v7 + 1);
    v34 = v7;
    v9 = v7;
    if ((*(*(&v7 + 1) + 16))(v3, v4, v7, *(&v7 + 1)))
    {
      v10 = v0[268];
      memcpy(v0 + 65, (v10 + 16), 0x1F8uLL);
      memcpy(v0 + 2, (v10 + 16), 0x1F8uLL);
      GEOLocationCoordinate2DMake(v0 + 2);
      memcpy(__dst, v0 + 2, 0x1F8uLL);
      v11 = *(v8 + 8);
      v12 = *(v11 + 24);
      *(v0 + 257) = v34;
      __swift_allocate_boxed_opaque_existential_0(v0 + 254);
      sub_2529353AC((v0 + 65), (v0 + 128));
      v12(__dst, v9, v11);
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v13 = sub_252E36AD4();
      __swift_project_value_buffer(v13, qword_27F544D18);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_252E379F4();

      __swift_project_boxed_opaque_existential_1(v0 + 254, v0[257]);
      DynamicType = swift_getDynamicType();
      v15 = v0[258];
      v0[264] = DynamicType;
      v0[265] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461F0, &qword_252E614C8);
      __dst[0] = sub_252E36F94();
      __dst[1] = v16;
      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E73DB0);
      sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000093, 0x8000000252E9D740);

      goto LABEL_12;
    }
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v17 = sub_252E36AD4();
  __swift_project_value_buffer(v17, qword_27F544D18);
  sub_252CC3D90(0xD000000000000057, 0x8000000252E9D7E0, 0xD000000000000093, 0x8000000252E9D740);
  sub_25293DEE0((v0 + 191));
  v18 = type metadata accessor for GenericFallbackResponseHandler();
  swift_allocObject();
  memcpy(__dst, v0 + 191, 0x1F8uLL);
  v19 = sub_252BE97AC(__dst);
  v0[257] = v18;
  v0[258] = &off_2864BB810;
  v0[254] = v19;

LABEL_12:
  sub_252929E74((v0 + 254), (v0 + 259));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461F8, &unk_252E614D0);
  v20 = sub_252E36F94();
  v22 = v21;
  v0[272] = v20;
  v0[273] = v21;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v23 = sub_252E36AD4();
  __swift_project_value_buffer(v23, qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000011;
  __dst[1] = 0x8000000252E73E80;
  MEMORY[0x2530AD570](v20, v22);
  sub_252CC4A5C(__dst[0], __dst[1], 1, 0xD000000000000093, 0x8000000252E9D740);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v24 = v0[271];
  v25 = v0[267];
  v26 = qword_27F544F70;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v27 = v0[257];
  v28 = v0[258];
  __swift_project_boxed_opaque_existential_1(v0 + 254, v27);
  v29 = sub_252E33F24();
  v0[274] = v29;
  v30 = sub_252E33F04();
  v0[275] = v30;
  v31 = swift_task_alloc();
  v0[276] = v31;
  *v31 = v0;
  v31[1] = sub_252DE05DC;
  v32 = v0[266];

  return sub_252C6A028(v32, v29, v30, v27, v28);
}

uint64_t sub_252DE05DC()
{
  v2 = *v1;
  v3 = *(*v1 + 2208);
  v7 = *v1;
  *(*v1 + 2216) = v0;

  if (v0)
  {
    v4 = sub_252DE07C0;
  }

  else
  {
    v5 = *(v2 + 2192);

    v4 = sub_252DE0700;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252DE0700()
{
  v1 = v0[271];
  v2 = v0[270];
  v3 = v0[269];
  sub_252DE08A8(v1, v0[272], v0[273], v0[268], "HandleFailureDialog");

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 254);

  v4 = v0[1];

  return v4();
}

uint64_t sub_252DE07C0()
{
  v1 = *(v0 + 2192);
  v2 = *(v0 + 2184);
  v3 = *(v0 + 2176);
  v4 = *(v0 + 2168);
  v5 = *(v0 + 2160);
  v6 = *(v0 + 2152);
  v7 = *(v0 + 2144);

  sub_252DE08A8(v4, v3, v2, v7, "HandleFailureDialog");

  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2032));

  v8 = *(v0 + 8);
  v9 = *(v0 + 2216);

  return v8();
}

void sub_252DE08A8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27F53F5E8 != -1)
  {
    v20 = a2;
    v21 = a4;
    swift_once();
    a4 = v21;
    a2 = v20;
  }

  v8 = qword_27F544F70;
  v9 = *(a4 + 520);
  v10 = *(a4 + 528);
  v36 = 1;
  v35 = 1;
  v34 = 1;
  v33 = 1;
  *&v37 = 0;
  BYTE8(v37) = 1;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  *&v41 = 0;
  *(&v41 + 1) = a2;
  v42 = a3;
  LOBYTE(v43) = 1;
  *(&v43 + 1) = v9;
  v44 = v10;
  LOWORD(v45) = 513;
  *(&v45 + 1) = 0;
  v46 = 0uLL;
  v47 = 1;
  GEOLocationCoordinate2DMake(&v37);
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v29 = v44;
  v22 = v37;
  v23 = v38;
  v24 = v39;
  v25 = v40;

  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v8, a1, a5, 19, 2, &v22);
  v48[8] = v30;
  v48[9] = v31;
  v49 = v32;
  v48[4] = v26;
  v48[5] = v27;
  v48[6] = v28;
  v48[7] = v29;
  v48[0] = v22;
  v48[1] = v23;
  v48[2] = v24;
  v48[3] = v25;
  sub_25293847C(v48, &qword_27F5407B0, &unk_252E42860);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v11 = sub_252E36804();
  v13 = v12;

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v15 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v11;
    *(inited + 56) = v13;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v15, &unk_27F541F10, &unk_252E42870);
  }

  v16 = [objc_opt_self() sharedAnalytics];
  if (v16)
  {
    v17 = v16;

    sub_252CC1408(v18);

    v19 = sub_252E36E24();

    [v17 logEventWithType:6504 context:v19];
  }

  else
  {
  }
}

uint64_t sub_252DE0BA8()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_252935408(__dst);
  v1 = *(v0 + 528);

  return swift_deallocClassInstance();
}

uint64_t sub_252DE0C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DiscoverHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_252DE0CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DiscoverHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_252DE0DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DiscoverHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_252DE0E6C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252DDF618(a1, a2);
}

uint64_t sub_252DE0F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DiscoverHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_252DE0FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DiscoverHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_252DE10A0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252DDFF60(a1, a2);
}

uint64_t sub_252DE114C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return (sub_252DE1258)(a1, a2);
}

unint64_t sub_252DE1204()
{
  result = qword_27F5461E0;
  if (!qword_27F5461E0)
  {
    type metadata accessor for DiscoverHomeHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5461E0);
  }

  return result;
}

uint64_t sub_252DE1258(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DE1318, 0, 0);
}

uint64_t sub_252DE1318()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544C70);
  sub_252CC3D90(0xD000000000000050, 0x8000000252E9D6E0, 0xD000000000000093, 0x8000000252E9D740);
  v7 = objc_allocWithZone(type metadata accessor for DiscoverHomeIntentHandler());

  [v7 init];
  type metadata accessor for DiscoverHomeIntent();
  v8 = v4;
  sub_252E336E4();
  sub_252E33784();
  v9 = sub_252E33774();
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_252DE14CC()
{
  type metadata accessor for DefaultHandleDelegate();

  return swift_allocObject();
}

void sub_252DE14FC(void *a1, void (*a2)(void))
{
  v4 = sub_252B4CD30(a1, 0, 1);
  v5 = v4;
  if (v6)
  {
    v7 = v4;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544C70);
    MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E9D880, 0xD000000000000021, 0x8000000252E68B10, 30);

    v9 = parse(error:with:)(v5, a1);
    a2();
    sub_252927D3C(v5);

    sub_252927D3C(v5);
  }

  else
  {
    a2();

    sub_252927D3C(v5);
  }
}

id sub_252DE16D0(void *a1)
{
  v2 = v1;
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (!v9)
  {
    if (qword_27F53F530 == -1)
    {
LABEL_8:
      v18 = sub_252E36AD4();
      __swift_project_value_buffer(v18, qword_27F544E38);
      sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD00000000000007CLL, 0x8000000252E9D900, 0xD000000000000017, 0x8000000252E715D0, 48);
      return 0;
    }

LABEL_58:
    swift_once();
    goto LABEL_8;
  }

  v10 = v9;
  v69 = a1;
  sub_252E32E74();
  v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v12 = sub_252E32E44();
  v13 = [v11 initWithNSUUID_];

  (*(v5 + 8))(v8, v4);
  [v10 setCommandId_];

  [v10 setCommandType_];
  v14 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  v15 = *&v2[v14];
  if (v15 <= 4)
  {
    v16 = v69;
    if (!v15)
    {
      v17 = 0;
      goto LABEL_12;
    }

    if (v15 != 3)
    {
      if (v15 != 4)
      {
        goto LABEL_13;
      }

      v17 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v17 = 2;
LABEL_12:
    [v10 setCommandOutcome_];
    goto LABEL_13;
  }

  v16 = v69;
  if ((v15 - 5) < 2 || v15 == 100)
  {
    goto LABEL_11;
  }

LABEL_13:
  v19 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
  if (!v19)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v26 = sub_252E36AD4();
    __swift_project_value_buffer(v26, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD00000000000007CLL, 0x8000000252E9D900, 0xD000000000000017, 0x8000000252E715D0, 59);

    return 0;
  }

  v20 = v19;
  if ([v10 commandOutcome] != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    inited = swift_initStackObject();
    v22 = inited;
    *(inited + 16) = xmmword_252E3C290;
    v23 = *&v2[v14];
    if (v23 <= 4)
    {
      if (v23)
      {
        if (v23 == 3)
        {
          v24 = 0xEA00000000007373;
          v25 = 0x6572676F72506E69;
          goto LABEL_34;
        }

        if (v23 == 4)
        {
          v24 = 0xE700000000000000;
          v25 = 0x73736563637573;
LABEL_34:
          *(inited + 32) = v25;
          *(inited + 40) = v24;
          sub_252AD4414(inited);
          swift_setDeallocating();
          sub_252A01B34(v22 + 32);
          v29 = sub_252E37254();

          [v20 setHomeAutomationRequestErrorReasons_];

          goto LABEL_35;
        }
      }

      goto LABEL_29;
    }

    switch(v23)
    {
      case 100:
        v28 = "failureNoMatchingEntities";
        break;
      case 6:
        v28 = "failureRequiringAppLaunch";
        break;
      case 5:
        v24 = 0xE700000000000000;
        v25 = 0x6572756C696166;
        goto LABEL_34;
      default:
LABEL_29:
        v24 = 0xE700000000000000;
        v25 = 0x6E776F6E6B6E75;
        goto LABEL_34;
    }

    v24 = (v28 - 32) | 0x8000000000000000;
    v25 = 0xD000000000000019;
    goto LABEL_34;
  }

LABEL_35:
  v30 = [v2 matchedEntities];
  if (v30)
  {
    v31 = v30;
    type metadata accessor for HomeEntity();
    v32 = sub_252E37264();

    if (v32 >> 62)
    {
      v33 = sub_252E378C4();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v33 = 0;
  }

  sub_252C77A20(v33);
  v34 = [v16 filters];
  v35 = MEMORY[0x277D84F90];
  v68 = v10;
  if (v34)
  {
    v36 = v34;
    type metadata accessor for HomeFilter();
    v37 = sub_252E37264();

    v70 = v37;
    if (v37 >> 62)
    {
      v38 = sub_252E378C4();
      v67 = v20;
      if (v38)
      {
LABEL_43:
        v39 = 0;
        v40 = v70 & 0xC000000000000001;
        v41 = v70 & 0xFFFFFFFFFFFFFF8;
        v42 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v40)
          {
            v43 = MEMORY[0x2530ADF00](v39, v70);
          }

          else
          {
            if (v39 >= *(v41 + 16))
            {
              goto LABEL_57;
            }

            v43 = *(v70 + 8 * v39 + 32);
          }

          v44 = v43;
          v45 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          v46 = HomeDeviceType.description.getter([v43 deviceType]);
          v48 = v47;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_2529F7A80(0, *(v42 + 2) + 1, 1, v42);
          }

          v50 = *(v42 + 2);
          v49 = *(v42 + 3);
          if (v50 >= v49 >> 1)
          {
            v42 = sub_2529F7A80((v49 > 1), v50 + 1, 1, v42);
          }

          *(v42 + 2) = v50 + 1;
          v51 = &v42[16 * v50];
          *(v51 + 4) = v46;
          *(v51 + 5) = v48;
          ++v39;
          if (v45 == v38)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    else
    {
      v38 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v67 = v20;
      if (v38)
      {
        goto LABEL_43;
      }
    }

    v42 = MEMORY[0x277D84F90];
LABEL_62:

    v20 = v67;
    v16 = v69;
    v35 = MEMORY[0x277D84F90];
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  sub_252C76E8C(v42);

  v52 = [v16 filters];
  if (v52)
  {
    v53 = v52;
    type metadata accessor for HomeFilter();
    v54 = sub_252E37264();

    v71 = v35;
    if (v54 >> 62)
    {
      goto LABEL_78;
    }

    for (i = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v56 = v20;
      v57 = 0;
      while (1)
      {
        if ((v54 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x2530ADF00](v57, v54);
        }

        else
        {
          if (v57 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

          v58 = *(v54 + 8 * v57 + 32);
        }

        v59 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        v20 = &v71;
        MEMORY[0x2530AD700](v58);
        if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v60 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v57;
        if (v59 == i)
        {
          v61 = v71;
          v20 = v56;
          goto LABEL_80;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      ;
    }

    v61 = MEMORY[0x277D84F90];
LABEL_80:

    v62 = sub_252B1F8D4(v61);

    v52 = dword_252E6151C[v62];
  }

  sub_252C7704C(v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_252E3C130;
  *(v63 + 32) = v20;
  sub_252A01B88();
  v64 = v20;
  v65 = sub_252E37254();

  v66 = v68;
  [v68 setHomeAutomationRequests_];

  return v66;
}

id sub_252DE1F7C(unint64_t a1)
{
  swift_getObjectType();
  v13 = v1;
  v3 = [v13 userTask];
  v4 = [v13 filters];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  type metadata accessor for ControlHomeIntent.Builder();
  v7 = [v13 time];
  v8 = sub_252D47574(v3, v6, v7);

  sub_252B4EEFC(a1);
  v9 = (*(*v8 + 208))();

  v11 = (*(*v9 + 224))(v10);

  result = swift_dynamicCastClass();
  if (!result)
  {

    return v13;
  }

  return result;
}

void *INControlHomeIntent.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x277CD3D00]) initWithTaskType:4 attribute:0 value:0];
  v2 = MEMORY[0x277D84F90];
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = 0;
  return v0;
}

void *INControlHomeIntent.Builder.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD3D00]) initWithTaskType:4 attribute:0 value:0];
  v2 = MEMORY[0x277D84F90];
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = 0;
  return v0;
}

void *INControlHomeIntent.Builder.__allocating_init(intent:)(void *a1)
{
  v2 = [a1 userTask];
  v3 = [a1 filters];
  if (v3)
  {
    v4 = v3;
    sub_252CB0B64();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = [a1 time];
  v7 = sub_252DE26D0(v2, v5, v6);

  return v7;
}

uint64_t sub_252DE22AC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 taskType];
    v4 = [v2 attribute];
    v5 = [v2 value];
    v6 = [objc_allocWithZone(MEMORY[0x277CD3D00]) initWithTaskType:v3 attribute:v4 value:v5];

    v7 = *(v1 + 16);
    *(v1 + 16) = v6;
  }
}

uint64_t sub_252DE2374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CD3D00]) initWithTaskType:a1 attribute:a2 value:a3];
  v5 = *(v3 + 16);
  *(v3 + 16) = v4;
}

uint64_t sub_252DE23E8(uint64_t result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v3 = *(result + 16);
  v4 = result + 32;
  while (1)
  {
    if (v3 == v1)
    {
      swift_beginAccess();
      sub_25297C50C(v2);
      swift_endAccess();
    }

    if (v1 >= v3)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_11;
    }

    v6 = *(v4 + 8 * v1++);
    if (v6)
    {
      v7 = v6;
      MEMORY[0x2530AD700]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v2 = v9;
      v1 = v5;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

id sub_252DE2500()
{
  v1 = v0[2];
  swift_beginAccess();
  v2 = v0[3];
  v3 = v0[4];
  v4 = objc_allocWithZone(MEMORY[0x277CD3B10]);
  sub_252CB0B64();
  v5 = v1;

  v6 = v3;
  v7 = sub_252E37254();

  v8 = [v4 initWithUserTask:v5 filters:v7 time:v6];

  return v8;
}

void *sub_252DE25CC()
{
  type metadata accessor for INControlHomeIntent.Builder();
  v1 = v0[2];
  swift_beginAccess();
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2;
  v5 = v1;

  v6 = sub_252DE26D0(v1, v3, v2);

  return v6;
}

uint64_t INControlHomeIntent.Builder.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t INControlHomeIntent.Builder.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_252DE26D0(void *a1, unint64_t a2, void *a3)
{
  v7 = (*(v3 + 176))();
  v8 = v7[2];
  v7[2] = a1;

  v9 = a1;

  v10 = sub_25297CECC(a2);

  swift_beginAccess();
  v11 = v7[3];
  v7[3] = v10;

  v12 = v7[4];
  v7[4] = a3;
  v13 = a3;

  return v7;
}

uint64_t sub_252DE28F4(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252DE2C3C(a1);
}

BOOL sub_252DE299C(uint64_t a1)
{
  v1 = 0;
  if (*(a1 + 8) == 3 && *(a1 + 9) == 3 && !*(a1 + 16))
  {
    if (*(a1 + 10))
    {
      if (*(a1 + 24) == 2 && *(a1 + 25) == 3 && *(a1 + 26) == 4)
      {
        v1 = 0;
        if (!*(*(a1 + 32) + 16) && *(a1 + 40) == 4)
        {
          v1 = 0;
          if (!*(*(a1 + 56) + 16) && *(a1 + 64) == 4)
          {
            if (*(*(a1 + 80) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 88) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 104) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 128) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 136) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 144) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 152) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 160) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 168) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 176) + 16))
            {
              return 0;
            }

            v1 = *(*(a1 + 184) + 16);
            if (v1)
            {
              return 0;
            }

            if (!*(*(a1 + 200) + 16) && *(a1 + 209) == 2)
            {
              if (*(*(a1 + 216) + 16) || ((*(*(a1 + 224) + 16) == 0) & *(a1 + 232)) != 1)
              {
                return 0;
              }

              return *(*(a1 + 256) + 16) == 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

BOOL sub_252DE2B0C(__int128 *a1)
{
  v1 = *(a1 + 208);
  if (v1 != 9 && (v13 = a1[12], (sub_252A0D524(v1, 0) & 1) != 0) && *(v13 + 16) && sub_2529A78B0(1, v13) && (v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(), sub_252929E74((v3 + 16), &v14), , __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1)), v4 = sub_252E338D4(), __swift_destroy_boxed_opaque_existential_1(&v14), (v4 & 1) != 0))
  {
    v5 = a1[9];
    v22 = a1[8];
    v23 = v5;
    v6 = a1[11];
    v24 = a1[10];
    v25 = v6;
    v7 = a1[5];
    v18 = a1[4];
    v19 = v7;
    v8 = a1[7];
    v20 = a1[6];
    v21 = v8;
    v9 = a1[1];
    v14 = *a1;
    v15 = v9;
    v10 = a1[3];
    v16 = a1[2];
    v17 = v10;
    v26 = v13;
    v27 = v1;
    memcpy(v28, a1 + 209, sizeof(v28));
    return sub_252DE299C(&v14);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252DE2C3C(void *__src)
{
  memcpy((v1 + 16), __src, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252DE2CAC, 0, 0);
}

uint64_t sub_252DE2CAC()
{
  v39 = v0;
  type metadata accessor for HomeStore();
  v1 = static HomeStore.shared.getter();
  v2 = sub_2529F219C();
  v4 = v3;

  if ((v4 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_252E3C290;
    _s7BuilderCMa_1();
    swift_allocObject();
    sub_252E1E238();
    memcpy(__dst, (v0 + 16), sizeof(__dst));

    v6 = sub_252E1EBE8(__dst);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_252E3C290;
    v8 = &v2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    v9 = *&v2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
    *(v7 + 32) = *&v2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    *(v7 + 40) = v9;
    v10 = v6[23];
    v6[23] = v7;
    sub_252DE30E4(v2, 0);

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_252E3C290;
    v13 = *v8;
    v12 = *(v8 + 1);

    sub_252956C8C(v2, 0);
    *(v11 + 32) = v13;
    *(v11 + 40) = v12;
    v14 = v6[41];
    v6[41] = v11;

    v15 = v6[20];
    v6[20] = &unk_2864A7638;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
    v16 = swift_allocObject();
    v17 = [*&v2[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] room];
    if (v17)
    {
      v18 = v17;
      v19 = type metadata accessor for Room();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      v22 = sub_2529A1E08(v18);
      v24 = *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v23 = *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      *(v16 + 32) = v24;
      *(v16 + 40) = v23;
      if (v23)
      {

        v25 = MEMORY[0x277D84F90];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_2529F7A80(0, *(v25 + 2) + 1, 1, v25);
        }

        v26 = *(v25 + 2);
        v27 = *(v25 + 3);
        v28 = v26 + 1;
        if (v26 >= v27 >> 1)
        {
          v37 = v26 + 1;
          v34 = v25;
          v35 = *(v25 + 2);
          v36 = sub_2529F7A80((v27 > 1), v26 + 1, 1, v34);
          v26 = v35;
          v28 = v37;
          v25 = v36;
        }

        *(v25 + 2) = v28;
        v29 = &v25[16 * v26];
        *(v29 + 4) = v24;
        *(v29 + 5) = v23;
        goto LABEL_16;
      }
    }

    else
    {
      *(v16 + 32) = 0;
      *(v16 + 40) = 0;
    }

    v25 = MEMORY[0x277D84F90];
LABEL_16:
    swift_setDeallocating();
    sub_252DE30F0(v16 + 32);
    swift_deallocClassInstance();
    v31 = v6[15];
    v6[15] = v25;

    sub_252E1F258(&unk_2864A7660);

    sub_252E1E4F8(v5 + 32);

    sub_252956C8C(v2, 0);
    sub_252956C8C(v2, 0);
    goto LABEL_17;
  }

  sub_252956C8C(v2, 1);
LABEL_11:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v30 = sub_252E36AD4();
  __swift_project_value_buffer(v30, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E9D9E0, 0xD00000000000008DLL, 0x8000000252E9DA00);
  v5 = MEMORY[0x277D84F90];
LABEL_17:
  v32 = *(v0 + 8);

  return v32(v5);
}

id sub_252DE30E4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_252DE30F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HomeAttributeTargetMap.indentedDescription.getter()
{
  v1 = v0;
  sub_252E379F4();
  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252E36F34();
    v6 = v5;
  }

  else
  {
    v6 = 0xE600000000000000;
    v4 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v4, v6);

  MEMORY[0x2530AD570](0x444970616D207B20, 0xEA0000000000203ALL);
  [v1 mapID];
  sub_252E37374();
  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  v7 = sub_252AD24A4();

  return v7;
}

uint64_t HomeAttributeTargetMap.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](8315, 0xE200000000000000);
  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252E36F34();
    v6 = v5;
  }

  else
  {
    v6 = 0xE600000000000000;
    v4 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v4, v6);

  MEMORY[0x2530AD570](0x3A444970616D202CLL, 0xE900000000000020);
  [v1 mapID];
  sub_252E37374();
  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  return 0;
}

BOOL HomeAttributeTargetMap.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v19);
  if (v20)
  {
    type metadata accessor for HomeAttributeTargetMap();
    if (swift_dynamicCast())
    {
      v2 = [v18 name];
      if (v2)
      {
        v3 = v2;
        v4 = sub_252E36F34();
        v6 = v5;
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

      v7 = [v1 name];
      if (v7)
      {
        v8 = v7;
        v9 = sub_252E36F34();
        v11 = v10;

        if (!v6)
        {
          if (!v11)
          {
            goto LABEL_18;
          }

LABEL_19:

          return 0;
        }

        if (v11)
        {
          if (v4 == v9 && v6 == v11)
          {

LABEL_18:
            [v18 mapID];
            v14 = v13;
            [v1 mapID];
            v16 = v15;

            return v14 == v16;
          }

          v12 = sub_252E37DB4();

          if (v12)
          {
            goto LABEL_18;
          }

          goto LABEL_19;
        }
      }

      else if (!v6)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    sub_252982F10(v19);
  }

  return 0;
}

void *sub_252DE3C64@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    sub_252DE5680(__src);
    return memcpy(a1, __src, 0x200uLL);
  }

  if (v3 >= v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = memcpy(__dst, (*v1 + 504 * v3 + 32), sizeof(__dst));
  v1[1] = v3 + 1;
  v6 = v1[2];
  if (__OFADD__(v6, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v6 + 1;
  memcpy(__src + 8, __dst, 0x1F8uLL);
  *&__src[0] = v6;
  GEOLocationCoordinate2DMake(__src);
  memcpy(a1, __src, 0x200uLL);
  return sub_2529353AC(__dst, &v7);
}

double sub_252DE3D38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546220, &unk_252E61660);
  v0 = swift_allocObject();
  *&result = 7;
  *(v0 + 16) = xmmword_252E419D0;
  *(v0 + 32) = &type metadata for UnsupportedMultiCardinalRequests;
  *(v0 + 40) = &off_2864B9170;
  *(v0 + 48) = &type metadata for MatchesAllWords;
  *(v0 + 56) = &off_2864C0E70;
  *(v0 + 64) = &type metadata for MatchesEntities;
  *(v0 + 72) = &off_2864B30A8;
  *(v0 + 80) = &type metadata for SceneSetUp;
  *(v0 + 88) = &off_2864BB8B0;
  *(v0 + 96) = &type metadata for TurnOffScene;
  *(v0 + 104) = &off_2864BE9E8;
  *(v0 + 112) = &type metadata for DeviceNameRoomNameConflict;
  *(v0 + 120) = &off_2864BFA48;
  *(v0 + 128) = &type metadata for IntentIntersection;
  *(v0 + 136) = &off_2864B4E60;
  qword_27F575DC0 = v0;
  return result;
}

uint64_t sub_252DE3E0C(uint64_t a1, uint64_t a2, char *a3, char a4)
{
  v8 = sub_252E36AD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v55 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v47 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v56 = &v45 - v15;
  v72[65] = 0;
  v72[66] = 0;
  v72[64] = a3;
  swift_bridgeObjectRetain_n();
  sub_252DE3C64(v70);
  memcpy(v71, v70, sizeof(v71));
  memcpy(v72, v71, 0x200uLL);
  if (sub_252AFB7A0(v72) == 1)
  {
    v48 = MEMORY[0x277D84F90];
LABEL_3:

    return a3;
  }

  v17 = (v9 + 16);
  v18 = 0x616320797A7A7566;
  v63 = "ing candidates: ";
  if (a4)
  {
    v18 = 0x74616469646E6163;
  }

  v52 = v18;
  v19 = 0xEF6574616469646ELL;
  if (a4)
  {
    v19 = 0xE900000000000065;
  }

  v51 = v19;
  if (a4)
  {
    v20 = 0x74616469646E6143;
  }

  else
  {
    v20 = 0x616320797A7A7546;
  }

  v49 = "validateCandidates(for:using:)";
  v50 = a2 + 8;
  v53 = a2 + 16;
  v54 = v20;
  v46 = " is invalid for step: ";
  v48 = MEMORY[0x277D84F90];
  v61 = (v9 + 16);
  v62 = (v9 + 8);
  v64 = v8;
  while (1)
  {
    v60 = a3;
    v57 = v72[0];
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v8, qword_27F544DA8);
    v22 = *v17;
    v23 = v56;
    (*v17)(v56, v21, v8);
    v70[0] = 0;
    v70[1] = 0xE000000000000000;
    sub_252E379F4();

    v65[0] = 0x676E696E6E755222;
    v65[1] = 0xEF203A7065747320;
    v70[0] = a1;
    v70[1] = a2;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546208, &qword_252E61648);
    v24 = sub_252E36F94();
    v25 = a2;
    MEMORY[0x2530AD570](v24);

    MEMORY[0x2530AD570](0x20726F6620, 0xE500000000000000);
    v26 = v51;
    MEMORY[0x2530AD570](v52, v51);

    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    memcpy(v70, &v72[1], 0x1F8uLL);
    v27 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v27);

    sub_252CC3D90(v65[0], v65[1], 0xD00000000000008CLL, v63 | 0x8000000000000000);
    v28 = v64;

    v59 = *v62;
    v59(v23, v28);
    memcpy(v70, &v72[1], 0x1F8uLL);
    v29 = v25;
    if ((*(v25 + 8))(v70, a1, v25))
    {
      v37 = v47;
      v22(v47, v21, v28);
      v70[0] = 0;
      v70[1] = 0xE000000000000000;
      sub_252E379F4();
      v68 = v70[0];
      v69 = v70[1];
      MEMORY[0x2530AD570](v54, v26);

      MEMORY[0x2530AD570](0xD000000000000014, v46 | 0x8000000000000000);
      v70[0] = a1;
      v70[1] = v25;
      v38 = sub_252E36F94();
      MEMORY[0x2530AD570](v38);

      MEMORY[0x2530AD570](2618, 0xE200000000000000);
      memcpy(v66, &v72[1], sizeof(v66));
      memcpy(v70, v71, sizeof(v70));
      sub_252DE5610(v70, v65);
      v39 = HomeAutomationIntent.description.getter();
      v41 = v40;
      memcpy(v67, v66, sizeof(v67));
      sub_252935408(v67);
      MEMORY[0x2530AD570](v39, v41);
      v8 = v64;

      sub_252CC3D90(v68, v69, 0xD00000000000008CLL, v63 | 0x8000000000000000);

      v59(v37, v8);
      memcpy(v66, &v72[1], sizeof(v66));
      (*(v25 + 16))(v65, v66, 1, a1, v25);
      v42 = v48;
      a2 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_2529F7FB0(0, *(v42 + 2) + 1, 1, v42);
      }

      a3 = v60;
      v44 = *(v42 + 2);
      v43 = *(v42 + 3);
      if (v44 >= v43 >> 1)
      {
        v42 = sub_2529F7FB0((v43 > 1), v44 + 1, 1, v42);
      }

      sub_25293847C(v71, &qword_27F546218, &qword_252E61658);
      *(v42 + 2) = v44 + 1;
      v48 = v42;
      memcpy(&v42[504 * v44 + 32], v65, 0x1F8uLL);
      goto LABEL_20;
    }

    v30 = v55;
    v22(v55, v21, v28);
    v70[0] = 0;
    v70[1] = 0xE000000000000000;
    sub_252E379F4();
    v68 = v70[0];
    v69 = v70[1];
    MEMORY[0x2530AD570](v54, v26);

    MEMORY[0x2530AD570](0xD000000000000016, v49 | 0x8000000000000000);
    v70[0] = a1;
    v70[1] = v25;
    v31 = sub_252E36F94();
    MEMORY[0x2530AD570](v31);

    MEMORY[0x2530AD570](2618, 0xE200000000000000);
    memcpy(v66, &v72[1], sizeof(v66));
    memcpy(v70, v71, sizeof(v70));
    sub_252DE5610(v70, v65);
    v32 = HomeAutomationIntent.description.getter();
    v34 = v33;
    memcpy(v67, v66, sizeof(v67));
    sub_252935408(v67);
    MEMORY[0x2530AD570](v32, v34);
    v8 = v64;

    sub_252CC3D90(v68, v69, 0xD00000000000008CLL, v63 | 0x8000000000000000);

    v59(v30, v8);
    memcpy(v66, &v72[1], sizeof(v66));
    (*(v25 + 16))(v65, v66, 0, a1, v25);
    a3 = v60;
    a2 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a3 = sub_252D57AC0(a3);
    }

    result = sub_25293847C(v71, &qword_27F546218, &qword_252E61658);
    if ((v57 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v57 >= *(a3 + 2))
    {
      goto LABEL_28;
    }

    v35 = &a3[504 * v57];
    memcpy(v66, v35 + 32, sizeof(v66));
    memcpy(v35 + 32, v65, 0x1F8uLL);
    sub_252935408(v66);
LABEL_20:
    sub_252DE3C64(v70);
    memcpy(v71, v70, sizeof(v71));
    memcpy(v72, v71, 0x200uLL);
    v36 = sub_252AFB7A0(v72);
    v17 = v61;
    if (v36 == 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_252DE4708(uint64_t a1, uint64_t a2)
{
  *&v76 = a2;
  v70 = sub_252E36AB4();
  v3 = *(v70 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v70);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  if (qword_27F53F618 != -1)
  {
    goto LABEL_73;
  }

LABEL_2:
  v68 = v7;
  v63 = v10;
  v13 = qword_27F544FA0;
  sub_252E36A94();
  sub_252E375D4();
  v69 = v13;
  sub_252E36A84();
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v75 = sub_252E36AD4();
  __swift_project_value_buffer(v75, qword_27F544E08);
  *&v103[0] = 0;
  *(&v103[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v103[0] = 0xD000000000000020;
  *(&v103[0] + 1) = 0x8000000252E9DA90;
  *&v92 = *(a1 + 16);
  v14 = v92;
  v15 = sub_252E37D94();
  MEMORY[0x2530AD570](v15);

  MEMORY[0x2530AD570](2108704, 0xE300000000000000);
  v16 = MEMORY[0x2530AD730](a1, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v16);

  sub_252CC3D90(*&v103[0], *(&v103[0] + 1), 0xD00000000000008CLL, 0x8000000252E9DAC0);

  v17 = v63;
  (*(v3 + 16))(v63, v12, v70);
  if (v14 == 1)
  {
    sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E8D2A0, 0xD00000000000008CLL, 0x8000000252E9DAC0);
    sub_252E375C4();
    sub_252E36A74();
    v20 = *(v3 + 8);
    v21 = v70;
    v20(v17, v70);
    v20(v12, v21);

    return a1;
  }

  if (!v14)
  {
    sub_252CC4050(0xD00000000000001CLL, 0x8000000252E6C730, 0xD00000000000008CLL, 0x8000000252E9DAC0, 0xD00000000000001ELL, 0x8000000252E9DC20, 41);
    sub_252E375C4();
    a1 = MEMORY[0x277D84F90];
    sub_252E36A74();
    v18 = *(v3 + 8);
    v19 = v70;
    v18(v17, v70);
    v18(v12, v19);
    return a1;
  }

  v71 = "ing candidates: ";
  v59 = v12;
  v60 = v3;
  v12 = 0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v10 = (a1 + 32 + 504 * v12);
    v7 = v12;
    while (1)
    {
      if (v7 >= v14)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        swift_once();
        goto LABEL_2;
      }

      memcpy(v103, v10, 0x1F8uLL);
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_70;
      }

      if (!*(*&v103[25] + 16) && !*(*(&v103[25] + 1) + 16) && !*(*&v103[26] + 16) && !*(*(&v103[26] + 1) + 16) && !*(*&v103[27] + 16) && !*(*(&v103[27] + 1) + 16) && !*(*&v103[28] + 16) && !*(*(&v103[28] + 1) + 16) && !*(*&v103[29] + 16) && !*(*(&v103[29] + 1) + 16) && !*(*&v103[30] + 16))
      {
        break;
      }

      ++v7;
      v10 += 504;
      if (v12 == v14)
      {
        goto LABEL_29;
      }
    }

    sub_2529353AC(v103, &v92);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v77 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA480(0, *(v3 + 16) + 1, 1);
      v3 = v77;
    }

    v24 = *(v3 + 16);
    v23 = *(v3 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_2529AA480((v23 > 1), v24 + 1, 1);
      v3 = v77;
    }

    *(v3 + 16) = v24 + 1;
    memcpy((v3 + 504 * v24 + 32), v103, 0x1F8uLL);
  }

  while (v12 != v14);
LABEL_29:
  v25 = 0;
  a1 += 32;
  v10 = MEMORY[0x277D84F90];
  do
  {
    v7 = (a1 + 504 * v25);
    v12 = v25;
    while (1)
    {
      if (v12 >= v14)
      {
        goto LABEL_71;
      }

      memcpy(v103, v7, 0x1F8uLL);
      v25 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_72;
      }

      if (*(*&v103[25] + 16) || *(*(&v103[25] + 1) + 16) || *(*&v103[26] + 16) || *(*(&v103[26] + 1) + 16) || *(*&v103[27] + 16) || *(*(&v103[27] + 1) + 16) || *(*&v103[28] + 16) || *(*(&v103[28] + 1) + 16) || *(*&v103[29] + 16) || *(*(&v103[29] + 1) + 16) || *(*&v103[30] + 16))
      {
        break;
      }

      ++v12;
      v7 += 504;
      if (v25 == v14)
      {
        goto LABEL_51;
      }
    }

    sub_2529353AC(v103, &v92);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *&v77 = v10;
    if ((v26 & 1) == 0)
    {
      sub_2529AA480(0, *(v10 + 2) + 1, 1);
      v10 = v77;
    }

    v28 = *(v10 + 2);
    v27 = *(v10 + 3);
    if (v28 >= v27 >> 1)
    {
      sub_2529AA480((v27 > 1), v28 + 1, 1);
      v10 = v77;
    }

    *(v10 + 2) = v28 + 1;
    memcpy(&v10[504 * v28 + 32], v103, 0x1F8uLL);
  }

  while (v25 != v14);
LABEL_51:
  v29 = *(v76 + 16);
  if (v29)
  {
    v30 = (v76 + 32);
    v64 = 0x8000000252E9DB90;
    v65 = "ation/IntentValidation.swift";
    v61 = "candidates after step ";
    v62 = "t andidates after step ";
    v66 = 0x8000000252E9DB70;
    v67 = (v60 + 8);
    while (1)
    {
      v76 = *v30;
      v36 = v69;
      sub_252E36A94();
      sub_252E375D4();
      v72 = v36;
      sub_252E36A84();
      v38 = *(&v76 + 1);
      v37 = v76;
      v39 = sub_252DE3E0C(v76, *(&v76 + 1), v3, 1);
      v32 = v40;

      v41 = sub_252DE3E0C(v37, v38, v10, 0);
      v43 = v42;

      v44 = *(v32 + 16);
      v73 = v30;
      v74 = v29;
      if (v44)
      {
        break;
      }

      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v75, qword_27F544DA8);
      *&v103[0] = 0;
      *(&v103[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v103[0] = 0xD000000000000027;
      *(&v103[0] + 1) = v64;
      v48 = sub_252E37FB4();
      MEMORY[0x2530AD570](v48);

      MEMORY[0x2530AD570](0x74706D6520736920, 0xE900000000000079);
      v49 = v71;
      sub_252CC3D90(*&v103[0], *(&v103[0] + 1), 0xD00000000000008CLL, v71 | 0x8000000000000000);

      if (*(v43 + 16))
      {
        v32 = v39;
LABEL_63:
        v33 = v68;

        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v75, qword_27F544DA8);
        *&v103[0] = 0;
        *(&v103[0] + 1) = 0xE000000000000000;
        sub_252E379F4();

        *&v103[0] = 0xD00000000000001CLL;
        *(&v103[0] + 1) = v66;
        *&v92 = *(v43 + 16);

        v50 = sub_252E37D94();
        MEMORY[0x2530AD570](v50);

        MEMORY[0x2530AD570](0x7320726574666120, 0xED0000203A706574);
        v51 = sub_252E37FB4();
        MEMORY[0x2530AD570](v51);

        MEMORY[0x2530AD570](2108682, 0xE300000000000000);
        v52 = MEMORY[0x2530AD730](v43, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v52);

        sub_252CC3D90(*&v103[0], *(&v103[0] + 1), 0xD00000000000008CLL, v71 | 0x8000000000000000);
        v41 = v43;
        goto LABEL_54;
      }

      *&v103[0] = 0;
      *(&v103[0] + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000026, v62 | 0x8000000000000000);
      v31 = sub_252E37FB4();
      MEMORY[0x2530AD570](v31);

      MEMORY[0x2530AD570](0xD00000000000002DLL, v61 | 0x8000000000000000);
      sub_252CC3D90(*&v103[0], *(&v103[0] + 1), 0xD00000000000008CLL, v49 | 0x8000000000000000);
      v32 = v39;
      v33 = v68;
LABEL_54:

      v103[0] = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546208, &qword_252E61648);
      v34 = sub_252E36F94();
      v91 = 1;
      v90 = 1;
      v89 = 1;
      v88 = 1;
      *&v92 = 0;
      BYTE8(v92) = 1;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      LOBYTE(v98) = 1;
      v99 = 0uLL;
      *(&v98 + 1) = 0;
      LOWORD(v100) = 513;
      *(&v100 + 1) = v34;
      v101 = v35;
      v102 = 1;
      GEOLocationCoordinate2DMake(&v92);
      v85 = v100;
      v86 = v101;
      v87 = v102;
      v81 = v96;
      v82 = v97;
      v83 = v98;
      v84 = v99;
      v77 = v92;
      v78 = v93;
      v79 = v94;
      v80 = v95;
      _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v72, v33, "IntentSelection.IntentValidation.Step", 37, 2, &v77);

      v103[8] = v85;
      v103[9] = v86;
      LOBYTE(v103[10]) = v87;
      v103[4] = v81;
      v103[5] = v82;
      v103[6] = v83;
      v103[7] = v84;
      v103[0] = v77;
      v103[1] = v78;
      v103[2] = v79;
      v103[3] = v80;
      sub_25293847C(v103, &qword_27F5407B0, &unk_252E42860);
      (*v67)(v33, v70);
      v30 = v73 + 1;
      v3 = v32;
      v10 = v41;
      v29 = v74 - 1;
      if (v74 == 1)
      {
        goto LABEL_67;
      }
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v75, qword_27F544DA8);
    *&v103[0] = 0;
    *(&v103[0] + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001ELL, v65 | 0x8000000000000000);
    *&v92 = *(v32 + 16);
    v45 = sub_252E37D94();
    MEMORY[0x2530AD570](v45);

    MEMORY[0x2530AD570](0x7320726574666120, 0xED0000203A706574);
    v46 = sub_252E37FB4();
    MEMORY[0x2530AD570](v46);

    MEMORY[0x2530AD570](2108682, 0xE300000000000000);
    v47 = MEMORY[0x2530AD730](v32, &type metadata for HomeAutomationIntent);
    MEMORY[0x2530AD570](v47);

    sub_252CC3D90(*&v103[0], *(&v103[0] + 1), 0xD00000000000008CLL, v71 | 0x8000000000000000);

    goto LABEL_63;
  }

  v32 = v3;
  v41 = v10;
LABEL_67:
  *&v103[0] = v32;
  sub_25297AA34(v41);
  a1 = *&v103[0];
  sub_252E375C4();
  v53 = v63;
  sub_252E36A74();
  v54 = *(v60 + 8);
  v55 = v53;
  v56 = v70;
  v54(v55, v70);
  v54(v59, v56);
  return a1;
}

uint64_t sub_252DE5610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546210, &qword_252E61650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_252DE5680(_OWORD *a1)
{
  result = 0.0;
  a1[30] = 0u;
  a1[31] = 0u;
  a1[28] = 0u;
  a1[29] = 0u;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *sub_252DE56C8(void *a1)
{
  v2 = v1;
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = v2;
    v12 = [v10 error];
    if (v12 && (v37 = v12, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480), type metadata accessor for HMError(0), (swift_dynamicCast() & 1) != 0))
    {

      v13 = v35;
      v14 = sub_252DE5E64(a1);

      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_27F544CB8);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E9DEB0);
      v15 = sub_252B9ACF0(v14);
      MEMORY[0x2530AD570](v15);

      sub_252CC4050(v37, v38, 0xD000000000000073, 0x8000000252E9DCB0, 0xD000000000000015, 0x8000000252E9DE10, 604);
    }

    else
    {
      v16 = [v10 error];
      if (v16)
      {

        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v17 = __swift_project_value_buffer(v4, qword_27F544CB8);
        (*(v5 + 16))(v8, v17, v4);
        v37 = 0;
        v38 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E9DE50);
        v18 = [v10 error];

        if (v18)
        {
          swift_getErrorValue();
          v19 = sub_252E37E54();
          v21 = v20;
        }

        else
        {
          v19 = 0;
          v21 = 0;
        }

        v35 = v19;
        v36 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        v27 = sub_252E36F94();
        MEMORY[0x2530AD570](v27);

        MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E9DE80);
        sub_252CC4050(v37, v38, 0xD000000000000073, 0x8000000252E9DCB0, 0xD000000000000015, 0x8000000252E9DE10, 607);

        (*(v5 + 8))(v8, v4);
        v14 = 7;
      }

      else
      {

        v14 = 1;
      }
    }

    v28 = [v10 request];
    v26 = sub_252DE80B4(v14);

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27F544CB8);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_252E379F4();

    v37 = 0xD000000000000014;
    v38 = 0x8000000252E9DE30;
    v35 = v11;
    sub_25293F638(0, &qword_27F545340, 0x277CD1D70);
    v29 = v11;
    v30 = sub_252E36FB4();
    MEMORY[0x2530AD570](v30);

    MEMORY[0x2530AD570](544175136, 0xE400000000000000);
    v35 = v26;
    v31 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EE0, &qword_252E4D870);
    v32 = sub_252E36FB4();
    MEMORY[0x2530AD570](v32);

    sub_252CC3D90(v37, v38, 0xD000000000000073, 0x8000000252E9DCB0);
  }

  else
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27F544CB8);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x65736E6F70736552, 0xED00002065736142);
    v22 = [v2 description];
    v23 = sub_252E36F34();
    v25 = v24;

    MEMORY[0x2530AD570](v23, v25);

    MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E9DDE0);
    sub_252CC4050(v37, v38, 0xD000000000000073, 0x8000000252E9DCB0, 0xD000000000000015, 0x8000000252E9DE10, 621);

    return 0;
  }

  return v26;
}

uint64_t sub_252DE5D70(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HMError(0);
  if (!swift_dynamicCast())
  {
    return 2;
  }

  v4 = v8;
  v5 = sub_252DE89C0(v8);

  return v5;
}

uint64_t sub_252DE5E64(void *a1)
{
  type metadata accessor for HMError(0);
  sub_252DE9E74();
  sub_252E32C04();
  if (v9 > 44)
  {
    if (v9 <= 64)
    {
      if (v9 == 45)
      {
        return 10;
      }

      if (v9 == 63 || v9 == 64)
      {
        return 7;
      }

      goto LABEL_30;
    }

    if (v9 != 65)
    {
      if (v9 == 82)
      {
        return 21;
      }

      if (v9 == 88)
      {
        return 16;
      }

      goto LABEL_30;
    }

    return 17;
  }

  if (v9 > 14)
  {
    if (v9 != 15)
    {
      if (v9 == 25)
      {
        return 18;
      }

      if (v9 == 44)
      {
        return 11;
      }

      goto LABEL_30;
    }

    return 17;
  }

  switch(v9)
  {
    case 4:
      if (a1)
      {
        v3 = a1;
        v4 = [v3 residentDevices];
        sub_25293F638(0, &qword_27F542020, 0x277CD1D68);
        v5 = sub_252E37264();

        if (v5 >> 62)
        {
          v6 = sub_252E378C4();
        }

        else
        {
          v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v6)
        {
        }

        else
        {
          v7 = [v3 homeLocationStatus];

          if (v7 != 1)
          {
            return 12;
          }
        }
      }

      return 6;
    case 5:
      return 3;
    case 10:
      return 22;
  }

LABEL_30:
  sub_252E32C04();
  if (v8 == 2405)
  {
    return 23;
  }

  if (v8 != 2404)
  {
    if (v8 == 2003)
    {
      return 22;
    }

    return 7;
  }

  return 20;
}

double sub_252DE6090@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  if ([a1 taskType] == 4)
  {
    goto LABEL_11;
  }

  if (qword_27F53F8D8 != -1)
  {
    swift_once();
  }

  v4 = off_27F546250;
  v5 = [a1 attribute];
  v6 = [a1 value];
  if (!v4[2])
  {

LABEL_11:
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v10 = v6;
  v7 = sub_252A45854(v5, v6);
  if ((v8 & 1) == 0)
  {

    goto LABEL_11;
  }

  sub_252974E7C(v4[7] + 32 * v7, a2);

  return result;
}

uint64_t sub_252DE61A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E61670;
  v1 = *MEMORY[0x277CCF870];
  *(v0 + 32) = sub_252E36F34();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CCF808];
  *(v0 + 48) = sub_252E36F34();
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CCF848];
  *(v0 + 64) = sub_252E36F34();
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CCF800];
  *(v0 + 80) = sub_252E36F34();
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277CCF860];
  *(v0 + 96) = sub_252E36F34();
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x277CCF830];
  *(v0 + 112) = sub_252E36F34();
  *(v0 + 120) = v12;
  v13 = *MEMORY[0x277CCF868];
  *(v0 + 128) = sub_252E36F34();
  *(v0 + 136) = v14;
  v15 = *MEMORY[0x277CCF878];
  *(v0 + 144) = sub_252E36F34();
  *(v0 + 152) = v16;
  v17 = *MEMORY[0x277CCF818];
  *(v0 + 160) = sub_252E36F34();
  *(v0 + 168) = v18;
  v19 = *MEMORY[0x277CCF820];
  *(v0 + 176) = sub_252E36F34();
  *(v0 + 184) = v20;
  v21 = *MEMORY[0x277CCF7F8];
  *(v0 + 192) = sub_252E36F34();
  *(v0 + 200) = v22;
  v23 = *MEMORY[0x277CCF850];
  *(v0 + 208) = sub_252E36F34();
  *(v0 + 216) = v24;
  v25 = *MEMORY[0x277CCF810];
  *(v0 + 224) = sub_252E36F34();
  *(v0 + 232) = v26;
  v27 = *MEMORY[0x277CCF838];
  *(v0 + 240) = sub_252E36F34();
  *(v0 + 248) = v28;
  v29 = *MEMORY[0x277CCF858];
  *(v0 + 256) = sub_252E36F34();
  *(v0 + 264) = v30;
  v31 = *MEMORY[0x277CCF828];
  *(v0 + 272) = sub_252E36F34();
  *(v0 + 280) = v32;
  v33 = *MEMORY[0x277CCF840];
  *(v0 + 288) = sub_252E36F34();
  *(v0 + 296) = v34;
  v35 = *MEMORY[0x277CCF880];
  *(v0 + 304) = sub_252E36F34();
  *(v0 + 312) = v36;
  v37 = *MEMORY[0x277CCFAA8];
  *(v0 + 320) = sub_252E36F34();
  *(v0 + 328) = v38;
  v39 = *MEMORY[0x277CCF780];
  *(v0 + 336) = sub_252E36F34();
  *(v0 + 344) = v40;
  v41 = *MEMORY[0x277CCF770];
  *(v0 + 352) = sub_252E36F34();
  *(v0 + 360) = v42;
  v43 = *MEMORY[0x277CCF768];
  *(v0 + 368) = sub_252E36F34();
  *(v0 + 376) = v44;
  v45 = *MEMORY[0x277CCF760];
  *(v0 + 384) = sub_252E36F34();
  *(v0 + 392) = v46;
  *(v0 + 400) = sub_252E36F34();
  *(v0 + 408) = v47;
  v48 = *MEMORY[0x277CCF7A8];
  *(v0 + 416) = sub_252E36F34();
  *(v0 + 424) = v49;
  v50 = *MEMORY[0x277CCF7C0];
  *(v0 + 432) = sub_252E36F34();
  *(v0 + 440) = v51;
  v52 = *MEMORY[0x277CCF7A0];
  *(v0 + 448) = sub_252E36F34();
  *(v0 + 456) = v53;
  v54 = *MEMORY[0x277CCF7B8];
  *(v0 + 464) = sub_252E36F34();
  *(v0 + 472) = v55;
  v56 = *MEMORY[0x277CCF7B0];
  *(v0 + 480) = sub_252E36F34();
  *(v0 + 488) = v57;
  v58 = *MEMORY[0x277CCF7C8];
  *(v0 + 496) = sub_252E36F34();
  *(v0 + 504) = v59;
  v60 = *MEMORY[0x277CCF7D0];
  *(v0 + 512) = sub_252E36F34();
  *(v0 + 520) = v61;
  v62 = *MEMORY[0x277CCF7E8];
  *(v0 + 528) = sub_252E36F34();
  *(v0 + 536) = v63;
  v64 = *MEMORY[0x277CCF908];
  *(v0 + 544) = sub_252E36F34();
  *(v0 + 552) = v65;
  v66 = *MEMORY[0x277CCF938];
  *(v0 + 560) = sub_252E36F34();
  *(v0 + 568) = v67;
  *(v0 + 576) = sub_252E36F34();
  *(v0 + 584) = v68;
  v69 = *MEMORY[0x277CCF978];
  *(v0 + 592) = sub_252E36F34();
  *(v0 + 600) = v70;
  v71 = *MEMORY[0x277CCF998];
  *(v0 + 608) = sub_252E36F34();
  *(v0 + 616) = v72;
  v73 = *MEMORY[0x277CCF9A8];
  *(v0 + 624) = sub_252E36F34();
  *(v0 + 632) = v74;
  v75 = *MEMORY[0x277CCF9C8];
  *(v0 + 640) = sub_252E36F34();
  *(v0 + 648) = v76;
  v77 = *MEMORY[0x277CCF9D0];
  *(v0 + 656) = sub_252E36F34();
  *(v0 + 664) = v78;
  v79 = *MEMORY[0x277CCF9D8];
  *(v0 + 672) = sub_252E36F34();
  *(v0 + 680) = v80;
  v81 = *MEMORY[0x277CCFAC0];
  *(v0 + 688) = sub_252E36F34();
  *(v0 + 696) = v82;
  v83 = *MEMORY[0x277CCFBA0];
  *(v0 + 704) = sub_252E36F34();
  *(v0 + 712) = v84;
  v85 = *MEMORY[0x277CCFA80];
  result = sub_252E36F34();
  *(v0 + 720) = result;
  *(v0 + 728) = v87;
  qword_27F575DC8 = v0;
  return result;
}

uint64_t sub_252DE65A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546280, &qword_252E616E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF90;
  v1 = *MEMORY[0x277CCF180];
  *(inited + 32) = sub_252E36F34();
  *(inited + 40) = v2;
  *(inited + 48) = 4;
  v3 = *MEMORY[0x277CCF188];
  *(inited + 56) = sub_252E36F34();
  *(inited + 64) = v4;
  *(inited + 72) = 3;
  v5 = *MEMORY[0x277CCF198];
  *(inited + 80) = sub_252E36F34();
  *(inited + 88) = v6;
  *(inited + 96) = 5;
  v7 = *MEMORY[0x277CCF1B0];
  *(inited + 104) = sub_252E36F34();
  *(inited + 112) = v8;
  *(inited + 120) = 2;
  v9 = *MEMORY[0x277CCF1A8];
  *(inited + 128) = sub_252E36F34();
  *(inited + 136) = v10;
  *(inited + 144) = 1;
  v11 = sub_252CC5CBC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546288, &unk_252E616E8);
  result = swift_arrayDestroy();
  off_27F546228 = v11;
  return result;
}

uint64_t sub_252DE66CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462A0, &qword_252E61708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E61680;
  v1 = *MEMORY[0x277CD0EA0];
  *(inited + 32) = sub_252E36F34();
  *(inited + 40) = v2;
  *(inited + 48) = 1;
  v3 = *MEMORY[0x277CD0F08];
  *(inited + 56) = sub_252E36F34();
  *(inited + 64) = v4;
  *(inited + 72) = 2;
  v5 = *MEMORY[0x277CD0F30];
  *(inited + 80) = sub_252E36F34();
  *(inited + 88) = v6;
  *(inited + 96) = 3;
  v7 = *MEMORY[0x277CD0E58];
  *(inited + 104) = sub_252E36F34();
  *(inited + 112) = v8;
  *(inited + 120) = 4;
  v9 = *MEMORY[0x277CD0ED0];
  *(inited + 128) = sub_252E36F34();
  *(inited + 136) = v10;
  *(inited + 144) = 6;
  v11 = *MEMORY[0x277CD0E30];
  *(inited + 152) = sub_252E36F34();
  *(inited + 160) = v12;
  *(inited + 168) = 27;
  v13 = *MEMORY[0x277CD0ED8];
  *(inited + 176) = sub_252E36F34();
  *(inited + 184) = v14;
  *(inited + 192) = 19;
  v15 = *MEMORY[0x277CD0F58];
  *(inited + 200) = sub_252E36F34();
  *(inited + 208) = v16;
  *(inited + 216) = 28;
  v17 = *MEMORY[0x277CD0F60];
  *(inited + 224) = sub_252E36F34();
  *(inited + 232) = v18;
  *(inited + 240) = 23;
  v19 = *MEMORY[0x277CD0E60];
  *(inited + 248) = sub_252E36F34();
  *(inited + 256) = v20;
  *(inited + 264) = 29;
  v21 = *MEMORY[0x277CD0E68];
  *(inited + 272) = sub_252E36F34();
  *(inited + 280) = v22;
  *(inited + 288) = 30;
  v23 = *MEMORY[0x277CD0EE0];
  *(inited + 296) = sub_252E36F34();
  *(inited + 304) = v24;
  *(inited + 312) = 31;
  v25 = *MEMORY[0x277CD0E80];
  *(inited + 320) = sub_252E36F34();
  *(inited + 328) = v26;
  *(inited + 336) = 32;
  v27 = *MEMORY[0x277CD0F38];
  *(inited + 344) = sub_252E36F34();
  *(inited + 352) = v28;
  *(inited + 360) = 33;
  v29 = *MEMORY[0x277CD0E48];
  *(inited + 368) = sub_252E36F34();
  *(inited + 376) = v30;
  *(inited + 384) = 34;
  v31 = *MEMORY[0x277CD0F20];
  *(inited + 392) = sub_252E36F34();
  *(inited + 400) = v32;
  *(inited + 408) = 36;
  v33 = *MEMORY[0x277CD0EB0];
  *(inited + 416) = sub_252E36F34();
  *(inited + 424) = v34;
  *(inited + 432) = 7;
  v35 = *MEMORY[0x277CD0DF0];
  *(inited + 440) = sub_252E36F34();
  *(inited + 448) = v36;
  *(inited + 456) = 24;
  v37 = *MEMORY[0x277CD0E40];
  *(inited + 464) = sub_252E36F34();
  *(inited + 472) = v38;
  *(inited + 480) = 5;
  v39 = *MEMORY[0x277CD0F40];
  *(inited + 488) = sub_252E36F34();
  *(inited + 496) = v40;
  *(inited + 504) = 5;
  v41 = *MEMORY[0x277CD0F28];
  *(inited + 512) = sub_252E36F34();
  *(inited + 520) = v42;
  *(inited + 528) = 21;
  v43 = *MEMORY[0x277CD0E70];
  *(inited + 536) = sub_252E36F34();
  *(inited + 544) = v44;
  *(inited + 552) = 14;
  v45 = *MEMORY[0x277CD0DE0];
  *(inited + 560) = sub_252E36F34();
  *(inited + 568) = v46;
  *(inited + 576) = 8;
  v47 = *MEMORY[0x277CD0EE8];
  *(inited + 584) = sub_252E36F34();
  *(inited + 592) = v48;
  *(inited + 600) = 20;
  v49 = *MEMORY[0x277CD0E18];
  *(inited + 608) = sub_252E36F34();
  *(inited + 616) = v50;
  *(inited + 624) = 11;
  v51 = *MEMORY[0x277CD0E10];
  *(inited + 632) = sub_252E36F34();
  *(inited + 640) = v52;
  *(inited + 648) = 10;
  v53 = *MEMORY[0x277CD0E20];
  *(inited + 656) = sub_252E36F34();
  *(inited + 664) = v54;
  *(inited + 672) = 12;
  v55 = *MEMORY[0x277CD0EC8];
  *(inited + 680) = sub_252E36F34();
  *(inited + 688) = v56;
  *(inited + 696) = 18;
  v57 = *MEMORY[0x277CD0EC0];
  *(inited + 704) = sub_252E36F34();
  *(inited + 712) = v58;
  *(inited + 720) = 17;
  v59 = *MEMORY[0x277CD0E98];
  *(inited + 728) = sub_252E36F34();
  *(inited + 736) = v60;
  *(inited + 744) = 16;
  v61 = *MEMORY[0x277CD0E90];
  *(inited + 752) = sub_252E36F34();
  *(inited + 760) = v62;
  *(inited + 768) = 15;
  v63 = *MEMORY[0x277CD0DE8];
  *(inited + 776) = sub_252E36F34();
  *(inited + 784) = v64;
  *(inited + 792) = 9;
  v65 = *MEMORY[0x277CD0E38];
  *(inited + 800) = sub_252E36F34();
  *(inited + 808) = v66;
  *(inited + 816) = 38;
  v67 = *MEMORY[0x277CD0DD8];
  *(inited + 824) = sub_252E36F34();
  *(inited + 832) = v68;
  *(inited + 840) = 39;
  v69 = *MEMORY[0x277CD0E50];
  *(inited + 848) = sub_252E36F34();
  *(inited + 856) = v70;
  *(inited + 864) = 40;
  v71 = *MEMORY[0x277CD0EF0];
  *(inited + 872) = sub_252E36F34();
  *(inited + 880) = v72;
  *(inited + 888) = 26;
  v73 = *MEMORY[0x277CD0DA8];
  *(inited + 896) = sub_252E36F34();
  *(inited + 904) = v74;
  *(inited + 912) = 32;
  v75 = *MEMORY[0x277CD0DA0];
  *(inited + 920) = sub_252E36F34();
  *(inited + 928) = v76;
  *(inited + 936) = 34;
  v77 = *MEMORY[0x277CD0DC0];
  *(inited + 944) = sub_252E36F34();
  *(inited + 952) = v78;
  *(inited + 960) = 34;
  v79 = *MEMORY[0x277CD0DB0];
  *(inited + 968) = sub_252E36F34();
  *(inited + 976) = v80;
  *(inited + 984) = 34;
  v81 = *MEMORY[0x277CD0DB8];
  *(inited + 992) = sub_252E36F34();
  *(inited + 1000) = v82;
  *(inited + 1008) = 32;
  v83 = sub_252CC4760(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462A8, &unk_252E61710);
  result = swift_arrayDestroy();
  off_27F546230 = v83;
  return result;
}

uint64_t sub_252DE6C28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462A0, &qword_252E61708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E61690;
  v1 = *MEMORY[0x277CCE8C8];
  *(inited + 32) = sub_252E36F34();
  *(inited + 40) = v2;
  *(inited + 48) = 37;
  v3 = *MEMORY[0x277CCE8E8];
  *(inited + 56) = sub_252E36F34();
  *(inited + 64) = v4;
  *(inited + 72) = 19;
  v5 = *MEMORY[0x277CCE888];
  *(inited + 80) = sub_252E36F34();
  *(inited + 88) = v6;
  *(inited + 96) = 27;
  v7 = *MEMORY[0x277CCE890];
  *(inited + 104) = sub_252E36F34();
  *(inited + 112) = v8;
  *(inited + 120) = 7;
  v9 = *MEMORY[0x277CCE898];
  *(inited + 128) = sub_252E36F34();
  *(inited + 136) = v10;
  *(inited + 144) = 5;
  v11 = *MEMORY[0x277CCE8A8];
  *(inited + 152) = sub_252E36F34();
  *(inited + 160) = v12;
  *(inited + 168) = 4;
  v13 = *MEMORY[0x277CCE8B8];
  *(inited + 176) = sub_252E36F34();
  *(inited + 184) = v14;
  *(inited + 192) = 24;
  v15 = *MEMORY[0x277CCE8C0];
  *(inited + 200) = sub_252E36F34();
  *(inited + 208) = v16;
  *(inited + 216) = 1;
  v17 = *MEMORY[0x277CCE8D0];
  *(inited + 224) = sub_252E36F34();
  *(inited + 232) = v18;
  *(inited + 240) = 6;
  v19 = *MEMORY[0x277CCE8D8];
  *(inited + 248) = sub_252E36F34();
  *(inited + 256) = v20;
  *(inited + 264) = 2;
  v21 = *MEMORY[0x277CCE8F0];
  *(inited + 272) = sub_252E36F34();
  *(inited + 280) = v22;
  *(inited + 288) = 43;
  v23 = *MEMORY[0x277CCE910];
  *(inited + 296) = sub_252E36F34();
  *(inited + 304) = v24;
  *(inited + 312) = 2;
  v25 = *MEMORY[0x277CCE940];
  *(inited + 320) = sub_252E36F34();
  *(inited + 328) = v26;
  *(inited + 336) = 3;
  v27 = *MEMORY[0x277CCE948];
  *(inited + 344) = sub_252E36F34();
  *(inited + 352) = v28;
  *(inited + 360) = 38;
  v29 = *MEMORY[0x277CCE958];
  *(inited + 368) = sub_252E36F34();
  *(inited + 376) = v30;
  *(inited + 384) = 28;
  v31 = *MEMORY[0x277CCE960];
  *(inited + 392) = sub_252E36F34();
  *(inited + 400) = v32;
  *(inited + 408) = 23;
  v33 = *MEMORY[0x277CCE848];
  *(inited + 416) = sub_252E36F34();
  *(inited + 424) = v34;
  *(inited + 432) = 30;
  v35 = *MEMORY[0x277CCE850];
  *(inited + 440) = sub_252E36F34();
  *(inited + 448) = v36;
  *(inited + 456) = 29;
  v37 = *MEMORY[0x277CCE840];
  *(inited + 464) = sub_252E36F34();
  *(inited + 472) = v38;
  *(inited + 480) = 29;
  v39 = *MEMORY[0x277CCE858];
  *(inited + 488) = sub_252E36F34();
  *(inited + 496) = v40;
  *(inited + 504) = 30;
  v41 = *MEMORY[0x277CCE868];
  *(inited + 512) = sub_252E36F34();
  *(inited + 520) = v42;
  *(inited + 528) = 39;
  v43 = *MEMORY[0x277CCE870];
  *(inited + 536) = sub_252E36F34();
  *(inited + 544) = v44;
  *(inited + 552) = 41;
  v45 = *MEMORY[0x277CCE8B0];
  *(inited + 560) = sub_252E36F34();
  *(inited + 568) = v46;
  *(inited + 576) = 26;
  v47 = *MEMORY[0x277CCE900];
  *(inited + 584) = sub_252E36F34();
  *(inited + 592) = v48;
  *(inited + 600) = 26;
  v49 = *MEMORY[0x277CCE860];
  *(inited + 608) = sub_252E36F34();
  *(inited + 616) = v50;
  *(inited + 624) = 44;
  v51 = *MEMORY[0x277CCE908];
  *(inited + 632) = sub_252E36F34();
  *(inited + 640) = v52;
  *(inited + 648) = 32;
  v53 = *MEMORY[0x277CCE8F8];
  *(inited + 656) = sub_252E36F34();
  *(inited + 664) = v54;
  *(inited + 672) = 35;
  v55 = *MEMORY[0x277CCE8A0];
  *(inited + 680) = sub_252E36F34();
  *(inited + 688) = v56;
  *(inited + 696) = 45;
  v57 = *MEMORY[0x277CCE920];
  *(inited + 704) = sub_252E36F34();
  *(inited + 712) = v58;
  *(inited + 720) = 36;
  v59 = *MEMORY[0x277CCE930];
  *(inited + 728) = sub_252E36F34();
  *(inited + 736) = v60;
  *(inited + 744) = 36;
  v61 = *MEMORY[0x277CCE938];
  *(inited + 752) = sub_252E36F34();
  *(inited + 760) = v62;
  *(inited + 768) = 36;
  v63 = sub_252CC4760(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462A8, &unk_252E61710);
  result = swift_arrayDestroy();
  off_27F546238 = v63;
  return result;
}

uint64_t sub_252DE7044()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546290, &qword_252E616F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C3C0;
  v1 = *MEMORY[0x277CCF748];
  *(inited + 32) = sub_252E36F34();
  *(inited + 40) = v2;
  *(inited + 48) = 27;
  v3 = *MEMORY[0x277CCF9B8];
  *(inited + 56) = sub_252E36F34();
  *(inited + 64) = v4;
  *(inited + 72) = 46;
  v5 = sub_252CC4774(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546298, &qword_252E61700);
  result = swift_arrayDestroy();
  off_27F546240 = v5;
  return result;
}

uint64_t sub_252DE7118()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546290, &qword_252E616F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E616A0;
  v1 = *MEMORY[0x277CCF9F0];
  *(v0 + 32) = sub_252E36F34();
  *(v0 + 40) = v2;
  *(v0 + 48) = 27;
  v3 = *MEMORY[0x277CCF9F8];
  *(v0 + 56) = sub_252E36F34();
  *(v0 + 64) = v4;
  *(v0 + 72) = 25;
  v5 = *MEMORY[0x277CCFA60];
  *(v0 + 80) = sub_252E36F34();
  *(v0 + 88) = v6;
  *(v0 + 96) = 26;
  v7 = *MEMORY[0x277CCFA08];
  *(v0 + 104) = sub_252E36F34();
  *(v0 + 112) = v8;
  *(v0 + 120) = 51;
  v9 = *MEMORY[0x277CCF788];
  *(v0 + 128) = sub_252E36F34();
  *(v0 + 136) = v10;
  *(v0 + 144) = 2;
  v11 = *MEMORY[0x277CCF8D8];
  *(v0 + 152) = sub_252E36F34();
  *(v0 + 160) = v12;
  *(v0 + 168) = 3;
  v13 = *MEMORY[0x277CCFA30];
  *(v0 + 176) = sub_252E36F34();
  *(v0 + 184) = v14;
  *(v0 + 192) = 4;
  v15 = *MEMORY[0x277CCF7D8];
  *(v0 + 200) = sub_252E36F34();
  *(v0 + 208) = v16;
  *(v0 + 216) = 59;
  v17 = *MEMORY[0x277CCF868];
  *(v0 + 224) = sub_252E36F34();
  *(v0 + 232) = v18;
  *(v0 + 240) = 6;
  v19 = *MEMORY[0x277CCF818];
  *(v0 + 248) = sub_252E36F34();
  *(v0 + 256) = v20;
  *(v0 + 264) = 14;
  v21 = *MEMORY[0x277CCF810];
  *(v0 + 272) = sub_252E36F34();
  *(v0 + 280) = v22;
  *(v0 + 288) = 15;
  v23 = *MEMORY[0x277CCF8C8];
  *(v0 + 296) = sub_252E36F34();
  *(v0 + 304) = v24;
  *(v0 + 312) = 19;
  v25 = *MEMORY[0x277CCF7F0];
  *(v0 + 320) = sub_252E36F34();
  *(v0 + 328) = v26;
  *(v0 + 336) = 17;
  v27 = *MEMORY[0x277CCF838];
  *(v0 + 344) = sub_252E36F34();
  *(v0 + 352) = v28;
  *(v0 + 360) = 8;
  v29 = *MEMORY[0x277CCF958];
  *(v0 + 368) = sub_252E36F34();
  *(v0 + 376) = v30;
  *(v0 + 384) = 16;
  v31 = *MEMORY[0x277CCF858];
  *(v0 + 392) = sub_252E36F34();
  *(v0 + 400) = v32;
  *(v0 + 408) = 13;
  v33 = *MEMORY[0x277CCF848];
  *(v0 + 416) = sub_252E36F34();
  *(v0 + 424) = v34;
  *(v0 + 432) = 9;
  v35 = *MEMORY[0x277CCF808];
  *(v0 + 440) = sub_252E36F34();
  *(v0 + 448) = v36;
  *(v0 + 456) = 18;
  v37 = *MEMORY[0x277CCFA20];
  *(v0 + 464) = sub_252E36F34();
  *(v0 + 472) = v38;
  *(v0 + 480) = 11;
  v39 = *MEMORY[0x277CCFA18];
  *(v0 + 488) = sub_252E36F34();
  *(v0 + 496) = v40;
  *(v0 + 504) = 12;
  v41 = *MEMORY[0x277CCF860];
  *(v0 + 512) = sub_252E36F34();
  *(v0 + 520) = v42;
  *(v0 + 528) = 21;
  v43 = *MEMORY[0x277CCFAF8];
  *(v0 + 536) = sub_252E36F34();
  *(v0 + 544) = v44;
  *(v0 + 552) = 22;
  v45 = *MEMORY[0x277CCF850];
  *(v0 + 560) = sub_252E36F34();
  *(v0 + 568) = v46;
  *(v0 + 576) = 7;
  v47 = *MEMORY[0x277CCF828];
  *(v0 + 584) = sub_252E36F34();
  *(v0 + 592) = v48;
  *(v0 + 600) = 20;
  v49 = *MEMORY[0x277CCF8E0];
  *(v0 + 608) = sub_252E36F34();
  *(v0 + 616) = v50;
  *(v0 + 624) = 23;
  v51 = *MEMORY[0x277CCF888];
  *(v0 + 632) = sub_252E36F34();
  *(v0 + 640) = v52;
  *(v0 + 648) = 24;
  v53 = *MEMORY[0x277CCF770];
  *(v0 + 656) = sub_252E36F34();
  *(v0 + 664) = v54;
  *(v0 + 672) = 28;
  v55 = *MEMORY[0x277CCF7F8];
  *(v0 + 680) = sub_252E36F34();
  *(v0 + 688) = v56;
  *(v0 + 696) = 47;
  v57 = *MEMORY[0x277CCF760];
  *(v0 + 704) = sub_252E36F34();
  *(v0 + 712) = v58;
  *(v0 + 720) = 29;
  v59 = *MEMORY[0x277CCF768];
  *(v0 + 728) = sub_252E36F34();
  *(v0 + 736) = v60;
  *(v0 + 744) = 30;
  v61 = *MEMORY[0x277CCFAC0];
  *(v0 + 752) = sub_252E36F34();
  *(v0 + 760) = v62;
  *(v0 + 768) = 53;
  v63 = *MEMORY[0x277CCF998];
  *(v0 + 776) = sub_252E36F34();
  *(v0 + 784) = v64;
  *(v0 + 792) = 54;
  v65 = *MEMORY[0x277CCF9C8];
  *(v0 + 800) = sub_252E36F34();
  *(v0 + 808) = v66;
  *(v0 + 816) = 58;
  v67 = *MEMORY[0x277CCF9D0];
  *(v0 + 824) = sub_252E36F34();
  *(v0 + 832) = v68;
  *(v0 + 840) = 56;
  v69 = *MEMORY[0x277CCF9D8];
  *(v0 + 848) = sub_252E36F34();
  *(v0 + 856) = v70;
  *(v0 + 864) = 55;
  v71 = *MEMORY[0x277CCFBA0];
  *(v0 + 872) = sub_252E36F34();
  *(v0 + 880) = v72;
  *(v0 + 888) = 57;
  v73 = *MEMORY[0x277CCFA80];
  *(v0 + 896) = sub_252E36F34();
  *(v0 + 904) = v74;
  *(v0 + 912) = 31;
  v75 = *MEMORY[0x277CCF7B8];
  *(v0 + 920) = sub_252E36F34();
  *(v0 + 928) = v76;
  *(v0 + 936) = 32;
  v77 = *MEMORY[0x277CCF7C0];
  *(v0 + 944) = sub_252E36F34();
  *(v0 + 952) = v78;
  *(v0 + 960) = 33;
  v79 = *MEMORY[0x277CCF7C8];
  *(v0 + 968) = sub_252E36F34();
  *(v0 + 976) = v80;
  *(v0 + 984) = 34;
  v81 = *MEMORY[0x277CCF7A0];
  *(v0 + 992) = sub_252E36F34();
  *(v0 + 1000) = v82;
  *(v0 + 1008) = 35;
  v83 = *MEMORY[0x277CCF7A8];
  *(v0 + 1016) = sub_252E36F34();
  *(v0 + 1024) = v84;
  *(v0 + 1032) = 36;
  v85 = *MEMORY[0x277CCF7B0];
  *(v0 + 1040) = sub_252E36F34();
  *(v0 + 1048) = v86;
  *(v0 + 1056) = 37;
  v87 = *MEMORY[0x277CCF7E8];
  *(v0 + 1064) = sub_252E36F34();
  *(v0 + 1072) = v88;
  *(v0 + 1080) = 38;
  v89 = *MEMORY[0x277CCF9A8];
  *(v0 + 1088) = sub_252E36F34();
  *(v0 + 1096) = v90;
  *(v0 + 1104) = 39;
  v91 = *MEMORY[0x277CCF938];
  *(v0 + 1112) = sub_252E36F34();
  *(v0 + 1120) = v92;
  *(v0 + 1128) = 40;
  v93 = *MEMORY[0x277CCF978];
  *(v0 + 1136) = sub_252E36F34();
  *(v0 + 1144) = v94;
  *(v0 + 1152) = 41;
  v95 = *MEMORY[0x277CCF830];
  *(v0 + 1160) = sub_252E36F34();
  *(v0 + 1168) = v96;
  *(v0 + 1176) = 42;
  v97 = *MEMORY[0x277CCF780];
  *(v0 + 1184) = sub_252E36F34();
  *(v0 + 1192) = v98;
  *(v0 + 1200) = 43;
  v99 = *MEMORY[0x277CCF7D0];
  *(v0 + 1208) = sub_252E36F34();
  *(v0 + 1216) = v100;
  *(v0 + 1224) = 44;
  v101 = *MEMORY[0x277CCFAA8];
  *(v0 + 1232) = sub_252E36F34();
  *(v0 + 1240) = v102;
  *(v0 + 1248) = 45;
  v103 = *MEMORY[0x277CCF8A0];
  *(v0 + 1256) = sub_252E36F34();
  *(v0 + 1264) = v104;
  *(v0 + 1272) = 48;
  v105 = *MEMORY[0x277CCF8A8];
  *(v0 + 1280) = sub_252E36F34();
  *(v0 + 1288) = v106;
  *(v0 + 1296) = 49;
  v107 = *MEMORY[0x277CCFBC0];
  *(v0 + 1304) = sub_252E36F34();
  *(v0 + 1312) = v108;
  *(v0 + 1320) = 50;
  v109 = *MEMORY[0x277CCFA98];
  *(v0 + 1328) = sub_252E36F34();
  *(v0 + 1336) = v110;
  *(v0 + 1344) = 52;
  v111 = *MEMORY[0x277CCF908];
  *(v0 + 1352) = sub_252E36F34();
  *(v0 + 1360) = v112;
  *(v0 + 1368) = 46;
  v113 = *MEMORY[0x277CCF840];
  *(v0 + 1376) = sub_252E36F34();
  *(v0 + 1384) = v114;
  *(v0 + 1392) = 65;
  v115 = *MEMORY[0x277CCF800];
  *(v0 + 1400) = sub_252E36F34();
  *(v0 + 1408) = v116;
  *(v0 + 1416) = 10;
  v117 = sub_252CC4774(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546298, &qword_252E61700);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27F546248 = v117;
  return result;
}

uint64_t sub_252DE78B0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  sub_252E37EE4();
  if (v2)
  {
    v3 = v2;
    sub_252E376A4();
  }

  return sub_252E37F14();
}

void sub_252DE7930()
{
  v1 = v0[1];
  MEMORY[0x2530AE390](*v0);
  if (v1)
  {
    sub_252E37EE4();
    v2 = v1;
    sub_252E376A4();
  }

  else
  {
    sub_252E37EE4();
  }
}

uint64_t sub_252DE79B4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  sub_252E37EE4();
  if (v2)
  {
    v3 = v2;
    sub_252E376A4();
  }

  return sub_252E37F14();
}

uint64_t sub_252DE7A30(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (v3)
    {
      type metadata accessor for HomeAttributeValue();
      v4 = v3;
      v5 = v2;
      v6 = sub_252E37694();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_252DE7AC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546278, &unk_252E616D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E419D0;
  v1 = type metadata accessor for HomeAttributeValue();
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  *(inited + 32) = 10;
  *(inited + 40) = v5;
  v6 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v7 = objc_allocWithZone(v1);
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setBoolValue_];
  [v10 setType_];

  *(inited + 80) = 10;
  *(inited + 88) = v10;
  *(inited + 120) = v6;
  *(inited + 96) = 0;
  v11 = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(inited + 128) = 47;
  *(inited + 136) = v11;
  v12 = MEMORY[0x277D83B88];
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 1;
  v13 = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4C41554E414DLL, 0xE600000000000000, 0);
  *(inited + 176) = 47;
  *(inited + 184) = v13;
  *(inited + 216) = v12;
  *(inited + 192) = 0;
  v14 = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(inited + 224) = 20;
  *(inited + 232) = v14;
  *(inited + 264) = v12;
  *(inited + 240) = 0;
  v15 = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x59464944494D5548, 0xE800000000000000, 0);
  *(inited + 272) = 20;
  *(inited + 280) = v15;
  *(inited + 312) = v12;
  *(inited + 288) = 1;
  v16 = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4944494D55484544, 0xEA00000000005946, 0);
  *(inited + 320) = 20;
  *(inited + 328) = v16;
  *(inited + 360) = v12;
  *(inited + 336) = 2;
  v17 = sub_252CC47EC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545240, &qword_252E5A5C0);
  result = swift_arrayDestroy();
  off_27F546250 = v17;
  return result;
}

uint64_t sub_252DE7D4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546290, &qword_252E616F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E616B0;
  v1 = *MEMORY[0x277CCFB68];
  *(inited + 32) = sub_252E36F34();
  *(inited + 40) = v2;
  *(inited + 48) = 6;
  v3 = *MEMORY[0x277CCFB20];
  *(inited + 56) = sub_252E36F34();
  *(inited + 64) = v4;
  *(inited + 72) = 14;
  v5 = *MEMORY[0x277CCFB18];
  *(inited + 80) = sub_252E36F34();
  *(inited + 88) = v6;
  *(inited + 96) = 15;
  v7 = *MEMORY[0x277CCFB58];
  *(inited + 104) = sub_252E36F34();
  *(inited + 112) = v8;
  *(inited + 120) = 7;
  v9 = *MEMORY[0x277CCFB30];
  *(inited + 128) = sub_252E36F34();
  *(inited + 136) = v10;
  *(inited + 144) = 20;
  v11 = *MEMORY[0x277CCFB10];
  *(inited + 152) = sub_252E36F34();
  *(inited + 160) = v12;
  *(inited + 168) = 18;
  v13 = *MEMORY[0x277CCFB00];
  *(inited + 176) = sub_252E36F34();
  *(inited + 184) = v14;
  *(inited + 192) = 47;
  v15 = *MEMORY[0x277CCFB50];
  *(inited + 200) = sub_252E36F34();
  *(inited + 208) = v16;
  *(inited + 216) = 9;
  v17 = *MEMORY[0x277CCFB40];
  *(inited + 224) = sub_252E36F34();
  *(inited + 232) = v18;
  *(inited + 240) = 8;
  v19 = *MEMORY[0x277CCFB60];
  *(inited + 248) = sub_252E36F34();
  *(inited + 256) = v20;
  *(inited + 264) = 13;
  v21 = *MEMORY[0x277CCFB08];
  *(inited + 272) = sub_252E36F34();
  *(inited + 280) = v22;
  *(inited + 288) = 10;
  v23 = *MEMORY[0x277CCF9F0];
  *(inited + 296) = sub_252E36F34();
  *(inited + 304) = v24;
  *(inited + 312) = 27;
  v25 = *MEMORY[0x277CCF788];
  *(inited + 320) = sub_252E36F34();
  *(inited + 328) = v26;
  *(inited + 336) = 2;
  v27 = *MEMORY[0x277CCF8D8];
  *(inited + 344) = sub_252E36F34();
  *(inited + 352) = v28;
  *(inited + 360) = 3;
  v29 = *MEMORY[0x277CCFA30];
  *(inited + 368) = sub_252E36F34();
  *(inited + 376) = v30;
  *(inited + 384) = 4;
  v31 = sub_252CC4774(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546298, &qword_252E61700);
  result = swift_arrayDestroy();
  off_27F546258 = v31;
  return result;
}

uint64_t sub_252DE7F8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546268, &qword_252E616C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF90;
  v1 = *MEMORY[0x277CCF708];
  *(inited + 32) = sub_252E36F34();
  *(inited + 40) = v2;
  *(inited + 48) = 4;
  v3 = *MEMORY[0x277CCF6F8];
  *(inited + 56) = sub_252E36F34();
  *(inited + 64) = v4;
  *(inited + 72) = 3;
  v5 = *MEMORY[0x277CCF700];
  *(inited + 80) = sub_252E36F34();
  *(inited + 88) = v6;
  *(inited + 96) = 2;
  v7 = *MEMORY[0x277CCF718];
  *(inited + 104) = sub_252E36F34();
  *(inited + 112) = v8;
  *(inited + 120) = 5;
  v9 = *MEMORY[0x277CCF710];
  *(inited + 128) = sub_252E36F34();
  *(inited + 136) = v10;
  *(inited + 144) = 1;
  v11 = sub_252CC57D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546270, &qword_252E616C8);
  result = swift_arrayDestroy();
  off_27F546260 = v11;
  return result;
}

uint64_t sub_252DE80B4(uint64_t a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v65 = a1;
    if (swift_dynamicCastObjCClass())
    {
      v6 = v1;
      v7 = [v5 characteristic];
      v8 = [v7 characteristicType];

      v9 = sub_252E36F34();
      v11 = v10;

      v12 = sub_252DE9AAC(v9, v11);
      v13 = 4;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v20 = v1;
        v21 = [v5 characteristic];
        v22 = [v21 characteristicType];

        v23 = sub_252E36F34();
        v25 = v24;

        if (qword_27F53F8E0 != -1)
        {
          swift_once();
        }

        v26 = off_27F546258;
        if (*(off_27F546258 + 2) && (v27 = sub_252A44A10(v23, v25), (v28 & 1) != 0))
        {
          v12 = *(v26[7] + 8 * v27);
          v13 = 1;
        }

        else
        {
          v12 = 0;
          v13 = 1;
        }
      }

      else
      {
        v29 = qword_2814B0A70;
        v30 = v1;
        if (v29 != -1)
        {
          swift_once();
        }

        v31 = sub_252E36AD4();
        __swift_project_value_buffer(v31, qword_2814B0A78);
        sub_252E379F4();

        *&v67[0] = 0xD00000000000002BLL;
        *(&v67[0] + 1) = 0x8000000252E9DF40;
        v32 = [v5 description];
        v33 = sub_252E36F34();
        v35 = v34;

        MEMORY[0x2530AD570](v33, v35);

        sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E9DF40, 0xD000000000000073, 0x8000000252E9DCB0);

        v36 = [v5 characteristic];
        v37 = [v36 characteristicType];

        v38 = sub_252E36F34();
        v40 = v39;

        if (qword_27F53F8E0 != -1)
        {
          swift_once();
        }

        v41 = off_27F546258;
        if (*(off_27F546258 + 2) && (v42 = sub_252A44A10(v38, v40), (v43 & 1) != 0))
        {
          v13 = 0;
          v12 = *(v41[7] + 8 * v42);
        }

        else
        {
          v12 = 0;
          v13 = 0;
        }
      }
    }

    v44 = [v5 characteristic];
    memset(v67, 0, sizeof(v67));
    v45 = sub_252C69EA4(v44, v67);
    v47 = v46;

    sub_252982F10(v67);
    v48 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v49 = v45;
    v50 = sub_252E36F04();
    v51 = [v48 initWithIdentifier:0 displayString:v50];

    v52 = v51;
    [v52 setTaskType_];
    [v52 setAttribute_];
    [v52 setValue_];

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v53 = sub_252E36AD4();
    __swift_project_value_buffer(v53, qword_27F544CB8);
    *&v67[0] = 0;
    *(&v67[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v67[0] = 0xD000000000000014;
    *(&v67[0] + 1) = 0x8000000252E9DE30;
    sub_25293F638(0, &qword_27F545660, 0x277CD1990);
    v54 = v2;
    v55 = sub_252E36FB4();
    MEMORY[0x2530AD570](v55);

    MEMORY[0x2530AD570](544175136, 0xE400000000000000);
    v56 = v52;
    v57 = sub_252E36FB4();
    MEMORY[0x2530AD570](v57);

    sub_252CC3D90(*&v67[0], *(&v67[0] + 1), 0xD000000000000073, 0x8000000252E9DCB0);

    type metadata accessor for HomeUserTaskResponse.Builder();
    swift_allocObject();
    v58 = HomeUserTaskResponse.Builder.init()();
    v59 = sub_252DE8858(v66, v47);
    v60 = (*(*v58 + 152))(v59);

    v61 = *(*v60 + 160);
    v62 = v56;
    v63 = v61(v56);

    v19 = (*(*v63 + 176))();
  }

  else
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544CB8);
    sub_252E379F4();

    strcpy(v67, "RequestBase ");
    BYTE13(v67[0]) = 0;
    HIWORD(v67[0]) = -5120;
    v15 = [v1 description];
    v16 = sub_252E36F34();
    v18 = v17;

    MEMORY[0x2530AD570](v16, v18);

    MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E9DEF0);
    sub_252CC4050(*&v67[0], *(&v67[0] + 1), 0xD000000000000073, 0x8000000252E9DCB0, 0xD000000000000019, 0x8000000252E9DF20, 589);

    return 0;
  }

  return v19;
}