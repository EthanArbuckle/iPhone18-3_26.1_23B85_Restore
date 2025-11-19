uint64_t sub_252D3BA48()
{
  type metadata accessor for SetDeltaTemperatureHandleDelegate();

  return swift_allocObject();
}

id sub_252D3BA78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_252B680FC();
  sub_252B66C78(a3, a4, 0, &v39);

  if (!v40)
  {
    sub_25293847C(&v39, &qword_27F541E80, &qword_252E3DFA0);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544C70);
    sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E968C0, 0xD00000000000008FLL, 0x8000000252E96390);
    return 0;
  }

  v8 = [a2 userTask];
  if (!v8)
  {
    sub_252C515AC();
LABEL_14:
    v14 = [a2 userTask];
    if (!v14)
    {
      sub_252C515AC();
      goto LABEL_21;
    }

    v15 = v14;
    v16 = [v14 taskType];

    if (v16 == 3)
    {
      v11 = 0xE90000000000004FLL;
      if (v38 <= 2u && v38 > 1u)
      {
      }

      else
      {
        v17 = sub_252E37DB4();

        if ((v17 & 1) == 0)
        {
          if (v38 == 5)
          {

LABEL_57:
            if (qword_27F53F498 != -1)
            {
              swift_once();
            }

            v31 = sub_252E36AD4();
            __swift_project_value_buffer(v31, qword_27F544C70);
            sub_252CC3D90(0xD000000000000053, 0x8000000252E7A0B0, 0xD00000000000008FLL, 0x8000000252E96390);
            sub_252B680FC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
            goto LABEL_60;
          }

          v30 = sub_252E37DB4();

          if (v30)
          {
            goto LABEL_57;
          }

          goto LABEL_21;
        }
      }

      if (a1 == 15)
      {
        v20 = 0x5455415F4C4F4F43;
      }

      else
      {
        v20 = 1280266051;
      }

      if (a1 != 15)
      {
        v11 = 0xE400000000000000;
      }

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v26 = sub_252E36AD4();
      __swift_project_value_buffer(v26, qword_27F544C70);
      *&v39 = 0;
      *(&v39 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000004DLL, 0x8000000252E7A060);
      MEMORY[0x2530AD570](v20, v11);
      sub_252CC3D90(v39, *(&v39 + 1), 0xD00000000000008FLL, 0x8000000252E96390);

      sub_252B680FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = a3;
      v23 = inited + 32;
      *(inited + 40) = a4;
      v40 = &type metadata for ClimateModes;
      v24 = 6;
      goto LABEL_50;
    }

LABEL_21:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544C70);
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000048, 0x8000000252E7A010);
    sub_252E37AE4();
    sub_252CC3D90(v39, *(&v39 + 1), 0xD00000000000008FLL, 0x8000000252E96390);

    return 0;
  }

  v9 = v8;
  v10 = [v8 taskType];

  if (v10 != 2)
  {
    goto LABEL_14;
  }

  v11 = 0xE90000000000004FLL;
  if (v38 <= 2u && v38 > 1u)
  {
  }

  else
  {
    v12 = sub_252E37DB4();

    if ((v12 & 1) == 0)
    {
      if (v38 > 4u && v38 != 5)
      {

LABEL_53:
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v29 = sub_252E36AD4();
        __swift_project_value_buffer(v29, qword_27F544C70);
        sub_252CC3D90(0xD000000000000053, 0x8000000252E7A160, 0xD00000000000008FLL, 0x8000000252E96390);
        sub_252B680FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
LABEL_60:
        v32 = swift_initStackObject();
        *(v32 + 16) = xmmword_252E3C290;
        *(v32 + 32) = a3;
        *(v32 + 40) = a4;
        v40 = &type metadata for ClimateModes;
        LOBYTE(v39) = 4;

        sub_252B689F8(v32, &v39);
        swift_setDeallocating();
        sub_25293847C(v32 + 32, &unk_27F541300, &qword_252E3C100);

        sub_25293847C(&v39, &qword_27F541E80, &qword_252E3DFA0);
        type metadata accessor for HomeAttributeValue();
        v27 = 1330926913;
        v28 = 0xE400000000000000;
        goto LABEL_61;
      }

      v25 = sub_252E37DB4();

      if (v25)
      {
        goto LABEL_53;
      }

      goto LABEL_21;
    }
  }

  if (a1 == 15)
  {
    v20 = 0x5455415F54414548;
  }

  else
  {
    v20 = 1413563720;
  }

  if (a1 != 15)
  {
    v11 = 0xE400000000000000;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v21 = sub_252E36AD4();
  __swift_project_value_buffer(v21, qword_27F544C70);
  *&v39 = 0;
  *(&v39 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000004DLL, 0x8000000252E7A110);
  MEMORY[0x2530AD570](v20, v11);
  sub_252CC3D90(v39, *(&v39 + 1), 0xD00000000000008FLL, 0x8000000252E96390);

  sub_252B680FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  *(inited + 32) = a3;
  v23 = inited + 32;
  *(inited + 40) = a4;
  v40 = &type metadata for ClimateModes;
  v24 = 5;
LABEL_50:
  LOBYTE(v39) = v24;

  sub_252B689F8(inited, &v39);
  swift_setDeallocating();
  sub_25293847C(v23, &unk_27F541300, &qword_252E3C100);

  sub_25293847C(&v39, &qword_27F541E80, &qword_252E3DFA0);
  type metadata accessor for HomeAttributeValue();
  v27 = v20;
  v28 = v11;
LABEL_61:
  v33 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v27, v28, 0);
  v34 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v35 = sub_252E36F04();
  v36 = [v34 initWithIdentifier:0 displayString:v35];

  v37 = v36;
  [v37 setTaskType_];
  [v37 setAttribute_];
  [v37 setValue_];

  return v37;
}

double sub_252D3C5D8(void *a1)
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C70);
  sub_252CC3D90(0xD000000000000021, 0x8000000252E79FE0, 0xD00000000000008FLL, 0x8000000252E96390);
  v3 = [a1 userTask];
  v4 = 1.0;
  if (v3)
  {
    v5 = v3;
    v6 = [v3 value];

    if (v6)
    {
      [v6 doubleValue];
      v4 = v7;

      v8 = [a1 userTask];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 taskType];

        if (v10 == 2)
        {
          return v4;
        }
      }

      else
      {
        sub_252C515AC();
      }

      return -v4;
    }
  }

  return v4;
}

uint64_t sub_252D3C730(void *a1, void *a2, void *a3, void *a4, unsigned __int8 a5, uint64_t a6)
{
  v9 = sub_252B680FC();
  swift_beginAccess();
  v10 = *(v9 + 40);

  v103 = *(v10 + 16);

  v11 = [a1 userTask];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 taskType];

    v107 = v13 == 2;
  }

  else
  {
    sub_252C515AC();
    v107 = 0;
  }

  v14 = *(sub_252B680FC() + 48);

  if (v14)
  {
    v102 = 1;
  }

  else
  {
    v102 = *(sub_252B680FC() + 49);
  }

  v105 = a4;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v15 = 0x65736C6166;
  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E96300);
  v17 = *(sub_252B680FC() + 48);

  if (v17)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v18, v19);

  MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E96350);
  v20 = *(sub_252B680FC() + 49);

  if (v20)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v20)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v21, v22);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008FLL, 0x8000000252E96390);

  v23 = sub_252C6E240(a1);
  if (!a2)
  {
    sub_252CC4050(0xD000000000000043, 0x8000000252E96420, 0xD00000000000008FLL, 0x8000000252E96390, 0xD00000000000006ELL, 0x8000000252E90A60, 169);
    return 0;
  }

  v24 = v23;
  v25 = a2;
  [v25 doubleValue];
  if (v107)
  {
    if (v24 == 3)
    {
      v27 = v26 < 15.0;
    }

    else
    {
      v27 = v26 < 60.0;
    }

    v28 = a4;
    if (v24 == 2)
    {
      v29 = 70.0;
      goto LABEL_37;
    }
  }

  else
  {
    if (v24 == 3)
    {
      v27 = v26 > 28.0;
    }

    else
    {
      v27 = v26 > 82.0;
    }

    v28 = a4;
    if (v24 == 2)
    {
      v30 = v103 != 1;
      v31 = a3 == 0;
      v29 = 70.0;
      if (!v105)
      {
        goto LABEL_34;
      }

      goto LABEL_42;
    }
  }

  v29 = 21.0;
LABEL_37:
  v30 = v103 != 1;
  if (a3)
  {
    if (v107)
    {
      v35 = a3;
      v36 = v35;
      v104 = v103 != 1;
      if (v27)
      {
        [v35 doubleValue];
        v38 = v29 - v37 > 1.0;
      }

      else
      {
        v38 = 0;
      }

      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000061, 0x8000000252E966C0);
      if (v38)
      {
        v45 = 1702195828;
      }

      else
      {
        v45 = 0x65736C6166;
      }

      if (v38)
      {
        v46 = 0xE400000000000000;
      }

      else
      {
        v46 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v45, v46);

      sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E8E210);
      v31 = 0;
LABEL_67:

      v30 = v104;
      if (!(v102 & 1 | !v38) && !v104)
      {
        *(sub_252B680FC() + 49) = 1;

        v47 = "is smaller than cooling: ";
        v48 = 0xD000000000000040;
LABEL_86:
        sub_252CC3D90(v48, v47 | 0x8000000000000000, 0xD00000000000008FLL, 0x8000000252E96390);
        return 0;
      }

      [v25 doubleValue];
      v40 = v49;
      if (v31)
      {
        v33 = 1;
        v28 = v105;
LABEL_75:
        v34 = &off_279711000;
        if (!v28)
        {
          goto LABEL_88;
        }

        goto LABEL_76;
      }

      v28 = v105;
LABEL_73:
      [a3 doubleValue];
      v33 = 0;
      if (v40 < v50 && v107)
      {
        v51 = "yHeatingCooling follow up";
        v52 = 0xD000000000000059;
        v34 = &off_279711000;
        goto LABEL_78;
      }

      goto LABEL_75;
    }

    v31 = 0;
    if (!v28)
    {
LABEL_34:

      [v25 doubleValue];
      if (v31)
      {
        v33 = 1;
        v34 = &off_279711000;
        goto LABEL_88;
      }

      v40 = v32;
      goto LABEL_73;
    }
  }

  else
  {
    v31 = 1;
    if (!v28)
    {
      goto LABEL_34;
    }
  }

LABEL_42:
  if (!v107)
  {
    v41 = v28;
    v36 = v41;
    v104 = v30;
    if (v27)
    {
      [v41 doubleValue];
      v38 = v42 - v29 > 1.0;
    }

    else
    {
      v38 = 0;
    }

    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000059, 0x8000000252E96610);
    if (v38)
    {
      v43 = 1702195828;
    }

    else
    {
      v43 = 0x65736C6166;
    }

    if (v38)
    {
      v44 = 0xE400000000000000;
    }

    else
    {
      v44 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v43, v44);

    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E8E210);
    goto LABEL_67;
  }

  [v25 doubleValue];
  v40 = v39;
  if (!v31)
  {
    goto LABEL_73;
  }

  v33 = 1;
  v34 = &off_279711000;
LABEL_76:
  [v28 doubleValue];
  if (v53 >= v40 || v107)
  {
    goto LABEL_88;
  }

  v51 = "erature based on thresholds";
  v52 = 0xD000000000000051;
LABEL_78:
  sub_252CC3D90(v52, v51 | 0x8000000000000000, 0xD00000000000007ALL, 0x8000000252E8E210);
  if ((v102 | v30))
  {
    goto LABEL_88;
  }

  if (a5 > 3u)
  {
    if (a5 > 5u)
    {
      if (a5 != 6)
      {
        goto LABEL_88;
      }
    }

    else if (a5 == 4)
    {

LABEL_85:
      *(sub_252B680FC() + 48) = 1;

      v47 = "rrent temperature";
      v48 = 0xD000000000000039;
      goto LABEL_86;
    }
  }

  v54 = sub_252E37DB4();

  if (v54)
  {
    goto LABEL_85;
  }

LABEL_88:
  [v25 doubleValue];
  v57 = v56;
  v58 = sub_252C6E240(a1);
  sub_252D3C5D8(a1);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E79E70);
  sub_252E37374();
  MEMORY[0x2530AD570](0x202020202020200ALL, 0xEF203A74696E7520);
  v59 = sub_252C65640(v58);
  MEMORY[0x2530AD570](v59);

  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E79EA0);
  v60 = [a1 v34[214]];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 taskType];

    if (v62 == 2)
    {
      v63 = 0xE400000000000000;
      v64 = 1702195828;
      goto LABEL_93;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v63 = 0xE500000000000000;
  v64 = 0x65736C6166;
LABEL_93:
  MEMORY[0x2530AD570](v64, v63);

  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E79ED0);
  v65 = [a1 v34[214]];
  v66 = v34;
  if (v65)
  {
    v67 = v65;
    v68 = [v65 taskType];

    if (v68 == 3)
    {
      v69 = v33;
      v70 = 0xE400000000000000;
      v15 = 1702195828;
      goto LABEL_98;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v69 = v33;
  v70 = 0xE500000000000000;
LABEL_98:
  MEMORY[0x2530AD570](v15, v70);

  MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008FLL, 0x8000000252E96390);

  v71 = v57 + sub_252D3C5D8(a1);
  v72 = type metadata accessor for HomeAttributeValue();
  v73 = objc_allocWithZone(v72);
  v74 = sub_252E36F04();
  v75 = [v73 initWithIdentifier:0 displayString:v74];

  v76 = v75;
  [v76 setDoubleValue_];
  [v76 setUnit_];
  [v76 setType_];

  LODWORD(v75) = *(sub_252B680FC() + 48);

  if (v75 == 1)
  {
    sub_252CC3D90(0xD00000000000005BLL, 0x8000000252E964B0, 0xD00000000000008FLL, 0x8000000252E96390);
    if ((v69 & 1) == 0)
    {
      [a3 doubleValue];
      v78 = v77;
      v79 = [a1 v66 + 198];
      if (v79)
      {
        v80 = v79;
        v81 = [v79 taskType];

        if (v81 == 2)
        {
LABEL_107:
          v86 = v78 + sub_252D3C5D8(a1);
          v87 = objc_allocWithZone(v72);
          v88 = sub_252E36F04();
          v89 = [v87 initWithIdentifier:0 displayString:v88];

          v90 = v89;
          [v90 setDoubleValue_];
          [v90 setUnit_];
          [v90 setType_];

          v76 = v90;
          goto LABEL_109;
        }
      }

      else
      {
        sub_252C515AC();
      }
    }

    if (v105)
    {
      [v105 doubleValue];
      v78 = v82;
      v83 = [a1 v66 + 198];
      if (!v83)
      {
        sub_252C515AC();
        goto LABEL_109;
      }

      v84 = v83;
      v85 = [v83 taskType];

      if (v85 == 3)
      {
        goto LABEL_107;
      }
    }
  }

LABEL_109:
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E96470);
  v91 = [v76 description];
  v92 = sub_252E36F34();
  v94 = v93;

  MEMORY[0x2530AD570](v92, v94);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008FLL, 0x8000000252E96390);

  v95 = [a1 v66 + 198];
  if (v95)
  {
    v96 = v95;
    v97 = [v95 taskType];

    v98 = v97 == 2;
  }

  else
  {
    sub_252C515AC();
    v98 = 0;
  }

  v99 = sub_252D3D554(a1, a3, v105, a6, v98, v76);

  return v99;
}

id sub_252D3D484(uint64_t a1, char a2, char a3)
{
  v4 = 6;
  if (a3)
  {
    v4 = 17;
  }

  if (a2)
  {
    v5 = 19;
  }

  else
  {
    v5 = v4;
  }

  v6 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setTaskType_];
  [v9 setAttribute_];
  [v9 setValue_];

  return v9;
}

uint64_t sub_252D3D554(void *a1, void *a2, objc_class *a3, uint64_t a4, int a5, void *a6)
{
  v92 = a5;
  v93 = a4;
  v94 = a3;
  v9 = sub_252E36AD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 filters];
  if (!v14)
  {
    goto LABEL_4;
  }

  v15 = v14;
  v90 = a2;
  v91 = a6;
  type metadata accessor for HomeFilter();
  v16 = sub_252E37264();

  type metadata accessor for HomeStore();
  v17 = static HomeStore.shared.getter();
  v18 = HomeStore.accessories(matching:supporting:)(v16, 0);
  v20 = v19;

  if (v20)
  {
    sub_252929F10(v18, 1);
LABEL_4:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v9, qword_27F544C70);
    (*(v10 + 16))(v13, v21, v9);
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E96730);
    v22 = [a1 filters];
    if (v22)
    {
      v23 = v22;
      type metadata accessor for HomeFilter();
      v24 = sub_252E37264();
    }

    else
    {
      v24 = 0;
    }

    v98 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
    v34 = sub_252E36F94();
    MEMORY[0x2530AD570](v34);

    sub_252CC3D90(v96, *(&v96 + 1), 0xD00000000000008ALL, 0x8000000252E8BF70);

    (*(v10 + 8))(v13, v9);
    return MEMORY[0x277D84F90];
  }

  LODWORD(v89) = sub_252C6E3CC(v18);
  v25 = sub_252C6E60C(v18);
  sub_252929F10(v18, 0);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F544C70);
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v96 = 0xD000000000000014;
  *(&v96 + 1) = 0x8000000252E96770;
  if (v25)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (v25)
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v26, v27);

  sub_252CC3D90(v96, *(&v96 + 1), 0xD00000000000008ALL, 0x8000000252E8BF70);

  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v96 = 0xD000000000000014;
  *(&v96 + 1) = 0x8000000252E96790;
  v28 = v89 | v25;
  if (v89)
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (v89)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v29, v30);

  v88 = "eResponseHandler";
  sub_252CC3D90(v96, *(&v96 + 1), 0xD00000000000008ALL, 0x8000000252E8BF70);

  if (v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_252E3C130;
    v32 = sub_252D3D484(v91, v89 & 1, v25);
    result = v31;
    *(v31 + 32) = v32;
    return result;
  }

  v98 = MEMORY[0x277D84F90];
  v89 = sub_252C6E240(a1);
  sub_252B680FC();
  sub_252B66C78(*(v93 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier), *(v93 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8), 0, &v96);

  if (v97)
  {
    v35 = swift_dynamicCast();
    v36 = v90;
    v37 = v94;
    if (v35)
    {
      v38 = v95;
    }

    else
    {
      v38 = 7;
    }
  }

  else
  {
    sub_25293847C(&v96, &qword_27F541E80, &qword_252E3DFA0);
    v38 = 7;
    v36 = v90;
    v37 = v94;
  }

  v39 = sub_252CD995C();
  v40 = *(v39 + 16);
  v41 = 32;
  do
  {
    v42 = v40;
    if (!v40)
    {
      break;
    }

    v43 = *(v39 + v41);
    v41 += 8;
    --v40;
  }

  while (v43 != 6);

  if (v38 <= 3)
  {
    goto LABEL_40;
  }

  if (v38 <= 5)
  {
    if (v38 == 4)
    {

LABEL_44:
      v46 = 17;
      v47 = 19;
      if (!v36)
      {
        v47 = 6;
      }

      if (!v37)
      {
        v46 = v47;
      }

      v48 = 19;
      v49 = 17;
      if (!v37)
      {
        v49 = 6;
      }

      if (!v36)
      {
        v48 = v49;
      }

      if (v92)
      {
        v45 = v48;
      }

      else
      {
        v45 = v46;
      }

      goto LABEL_55;
    }

    goto LABEL_40;
  }

  if (v38 == 6)
  {
LABEL_40:
    v44 = sub_252E37DB4();

    if (!v42 || (v44 & 1) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (!v42)
  {
    goto LABEL_44;
  }

LABEL_42:
  v45 = 6;
LABEL_55:
  v94 = type metadata accessor for HomeUserTask();
  v50 = objc_allocWithZone(v94);
  v51 = sub_252E36F04();
  v52 = [v50 initWithIdentifier:0 displayString:v51];

  v53 = v52;
  [v53 setTaskType_];
  [v53 setAttribute_];
  [v53 setValue_];

  MEMORY[0x2530AD700]();
  if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  v54 = v98;
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v96 = 0xD00000000000002DLL;
  *(&v96 + 1) = 0x8000000252E967B0;
  v55 = HomeAttributeType.description.getter(v45);
  MEMORY[0x2530AD570](v55);

  sub_252CC3D90(v96, *(&v96 + 1), 0xD00000000000008ALL, v88 | 0x8000000000000000);

  if (v38 <= 3)
  {
    goto LABEL_62;
  }

  if (v38 > 5)
  {
    if (v38 != 6)
    {
      return v54;
    }

    goto LABEL_62;
  }

  if (v38 != 4)
  {
LABEL_62:
    v56 = sub_252E37DB4();

    if (v56)
    {
      goto LABEL_63;
    }

    return v54;
  }

LABEL_63:
  result = v54;
  if (v45 != 6 && v90 && v37)
  {
    [(objc_class *)v37 doubleValue];
    v58 = v57;
    [v90 doubleValue];
    v60 = v59;
    v61 = v88;
    sub_252CC3D90(0xD00000000000003ALL, 0x8000000252E967E0, 0xD00000000000008ALL, v88 | 0x8000000000000000);
    if (v89 == 2)
    {
      v62 = 5.0;
    }

    else
    {
      v62 = 3.0;
    }

    if (v62 >= v58 - v60)
    {
      v63 = v58 - v60;
    }

    else
    {
      v63 = v62;
    }

    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E96820);
    sub_252E37374();
    sub_252CC3D90(v96, *(&v96 + 1), 0xD00000000000008ALL, v61 | 0x8000000000000000);

    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E96840);
    sub_252E37374();
    sub_252CC3D90(v96, *(&v96 + 1), 0xD00000000000008ALL, v61 | 0x8000000000000000);

    if (v45 == 17)
    {
      v76 = v91;
      [v91 doubleValue];
      result = v54;
      if (v77 - v63 >= v60)
      {
        return result;
      }

      [v76 doubleValue];
      v79 = v78 - v63;
      *&v96 = 0;
      *(&v96 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E96860);
      sub_252E37374();
      sub_252CC3D90(v96, *(&v96 + 1), 0xD00000000000008ALL, v88 | 0x8000000000000000);

      v80 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v81 = sub_252E36F04();
      v82 = [v80 initWithIdentifier:0 displayString:v81];

      v71 = v82;
      [v71 setDoubleValue_];
      [v71 setUnit_];
      [v71 setType_];

      v83 = objc_allocWithZone(v94);
      v84 = sub_252E36F04();
      v85 = [v83 initWithIdentifier:0 displayString:v84];

      v75 = v85;
      [v75 setTaskType_];
      [v75 setAttribute_];
    }

    else
    {
      v64 = v91;
      [v91 doubleValue];
      result = v54;
      if (v58 >= v63 + v65)
      {
        return result;
      }

      [v64 doubleValue];
      v67 = v63 + v66;
      *&v96 = 0;
      *(&v96 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E96890);
      sub_252E37374();
      sub_252CC3D90(v96, *(&v96 + 1), 0xD00000000000008ALL, v88 | 0x8000000000000000);

      v68 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v69 = sub_252E36F04();
      v70 = [v68 initWithIdentifier:0 displayString:v69];

      v71 = v70;
      [v71 setDoubleValue_];
      [v71 setUnit_];
      [v71 setType_];

      v72 = objc_allocWithZone(v94);
      v73 = sub_252E36F04();
      v74 = [v72 initWithIdentifier:0 displayString:v73];

      v75 = v74;
      [v75 setTaskType_];
      [v75 setAttribute_];
    }

    [v75 setValue_];

    MEMORY[0x2530AD700]();
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v86 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    return v98;
  }

  return result;
}

uint64_t sub_252D3E360(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 taskType];

    if (v4 == 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_10:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  v7 = [v5 taskType];

  if (v7 != 3)
  {
    return 0;
  }

LABEL_7:
  v8 = [a1 userTask];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v8 attribute];

  if (v10 == 6)
  {
    return sub_252CCFCB8() & 1;
  }

  return 0;
}

uint64_t sub_252D3E47C()
{
  type metadata accessor for PowerOnMatterThermostatHandleDelegate();

  return swift_allocObject();
}

void sub_252D3E4AC(void *a1, void (*a2)(void))
{
  v4 = [a1 filters];
  if (!v4)
  {
    v12 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v28 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v12[v28] = 102;
    [v12 setUserActivity_];
    (a2)(v12);
    goto LABEL_36;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v100 = type metadata accessor for HomeUserTask();
  v7 = objc_allocWithZone(v100);
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setTaskType_];
  [v10 setAttribute_];
  [v10 setValue_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C130;
  *(inited + 32) = v10;
  v12 = v10;
  v13 = sub_252B4CA9C(v6, inited, 0, 1);
  v15 = v14;
  swift_setDeallocating();
  v16 = *(inited + 16);
  swift_arrayDestroy();
  v102 = v13;
  v103 = v15 & 1;
  sub_2529904E4(v13);
  if ((v15 & 1) == 1)
  {
    goto LABEL_30;
  }

  v99 = a1;
  v101 = a2;
  v17 = qword_27F53F3F8;
  v18 = v102;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_27F575A30;
  v20 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  if (*(v19 + 16))
  {
    v21 = *&v18[v20];
    v22 = *(v19 + 40);
    sub_252E37EC4();
    MEMORY[0x2530AE390](v21);
    v23 = sub_252E37F14();
    v24 = -1 << *(v19 + 32);
    v25 = v23 & ~v24;
    if ((*(v19 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
    {
      v26 = ~v24;
      while (*(*(v19 + 48) + 8 * v25) != v21)
      {
        v25 = (v25 + 1) & v26;
        if (((*(v19 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      sub_252927D3C(v102);
      a2 = v101;
      goto LABEL_30;
    }
  }

LABEL_10:
  v27 = sub_252C2AC20();
  sub_252927D3C(v102);
  a2 = v101;
  if (v27)
  {
LABEL_30:

    sub_25293847C(&v102, &qword_27F540880, &qword_252E53B20);
    goto LABEL_31;
  }

  sub_25293847C(&v102, &qword_27F540880, &qword_252E53B20);
  if (v15)
  {

LABEL_31:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v42 = sub_252E36AD4();
    __swift_project_value_buffer(v42, qword_27F544C70);
    v43 = sub_252E36AC4();
    v44 = sub_252E374D4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_252917000, v43, v44, "There was an error getting the currentClimateValues", v45, 2u);
      MEMORY[0x2530AED00](v45, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_252E3C290;
    *(v46 + 32) = v13;
    *(v46 + 40) = v15 & 1;
    sub_2529904E4(v13);
    v47 = combineResults(results:)(v46);
    swift_setDeallocating();
    sub_25293847C(v46 + 32, &qword_27F5402B0, &qword_252E3C0E0);
    (a2)(v47);

    sub_252927D3C(v13);
    goto LABEL_36;
  }

  v29 = [v13 entityResponses];
  if (!v29)
  {

    sub_252927D3C(v13);
    goto LABEL_31;
  }

  v30 = v29;
  sub_252927D3C(v13);
  type metadata accessor for HomeEntityResponse();
  v31 = sub_252E37264();

  if (v31 >> 62)
  {
    goto LABEL_92;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
LABEL_93:

LABEL_94:

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v92 = sub_252E36AD4();
    __swift_project_value_buffer(v92, qword_27F544C70);
    v93 = sub_252E36AC4();
    v94 = sub_252E374D4();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_252917000, v93, v94, "We couldn't predict the right mode to set", v95, 2u);
      MEMORY[0x2530AED00](v95, -1, -1);
    }

    v89 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v96 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v89[v96] = 5;
    [v89 setUserActivity_];
    v91 = v89;
    goto LABEL_99;
  }

  while (2)
  {
    v33 = 0;
    v34 = v31 & 0xC000000000000001;
    a2 = (v31 + 32);
LABEL_18:
    if (v34)
    {
      v35 = MEMORY[0x2530ADF00](v33, v31);
    }

    else
    {
      if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_87;
      }

      v35 = *(a2 + v33);
    }

    v36 = v35;
    v37 = __OFADD__(v33++, 1);
    if (v37)
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v38 = sub_252DA6828();
    v39 = *(v38 + 2);
    v40 = 32;
    do
    {
      if (!v39)
      {

        if (v33 == v32)
        {
          v48 = 1;
          goto LABEL_40;
        }

        goto LABEL_18;
      }

      v41 = *&v38[v40];
      v40 += 8;
      --v39;
    }

    while (v41 != 6);

    v48 = 1;
    v49 = sub_252DA5378(6, 0, 1);

    if (v49)
    {
      [v49 doubleValue];
      v51 = v50;

      v48 = 0;
      goto LABEL_41;
    }

LABEL_40:
    v51 = 0.0;
LABEL_41:
    v97 = v48;
    v52 = 0;
    v98 = v32;
LABEL_42:
    if (v34)
    {
      v53 = MEMORY[0x2530ADF00](v52, v31);
    }

    else
    {
      if (v52 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v53 = *(a2 + v52);
    }

    v54 = v53;
    v37 = __OFADD__(v52++, 1);
    if (v37)
    {
      goto LABEL_88;
    }

    v55 = sub_252DA6828();
    v56 = *(v55 + 2);
    v57 = 32;
    do
    {
      if (!v56)
      {

        if (v52 == v32)
        {
          v59 = 1;
LABEL_55:
          v62 = 0.0;
          goto LABEL_56;
        }

        goto LABEL_42;
      }

      v58 = *&v55[v57];
      v57 += 8;
      --v56;
    }

    while (v58 != 17);

    v59 = 1;
    v60 = sub_252DA5378(0x11, 0, 1);

    if (!v60)
    {
      goto LABEL_55;
    }

    [v60 doubleValue];
    v62 = v61;

    v59 = 0;
LABEL_56:
    v63 = 0;
LABEL_57:
    if (!v34)
    {
      if (v63 < *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v64 = *(a2 + v63);
        goto LABEL_60;
      }

LABEL_91:
      __break(1u);
LABEL_92:
      v32 = sub_252E378C4();
      if (!v32)
      {
        goto LABEL_93;
      }

      continue;
    }

    break;
  }

  v64 = MEMORY[0x2530ADF00](v63, v31);
LABEL_60:
  v65 = v64;
  v37 = __OFADD__(v63++, 1);
  if (v37)
  {
    goto LABEL_90;
  }

  v66 = sub_252DA6828();
  v67 = *(v66 + 2);
  v68 = 32;
  do
  {
    if (!v67)
    {

      if (v63 != v98)
      {
        goto LABEL_57;
      }

LABEL_77:
      a2 = v101;
      if (v59)
      {
        goto LABEL_94;
      }

LABEL_78:
      v71 = 0x5455415F4C4F4F43;
      goto LABEL_79;
    }

    v69 = *&v66[v68];
    v68 += 8;
    --v67;
  }

  while (v69 != 19);

  v70 = sub_252DA5378(0x13, 0, 1);

  if (!v70)
  {
    goto LABEL_77;
  }

  v71 = 0x5455415F54414548;
  [v70 doubleValue];
  v73 = v72;

  a2 = v101;
  if ((v59 & 1) == 0)
  {
    if (v97)
    {
      goto LABEL_94;
    }

    if (v62 <= v51)
    {
      goto LABEL_78;
    }

    if (v51 > v73)
    {
      if (v51 >= v62 || v73 >= v51)
      {

        goto LABEL_84;
      }

      if (vabdd_f64(v73, v51) < vabdd_f64(v62, v51))
      {
        goto LABEL_78;
      }
    }
  }

LABEL_79:
  type metadata accessor for HomeAttributeValue();
  v74 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v71, 0xE90000000000004FLL, 0);
  v75 = objc_allocWithZone(v100);
  v76 = sub_252E36F04();
  v77 = [v75 initWithIdentifier:0 displayString:v76];

  v78 = v77;
  [v78 setTaskType_];
  [v78 setAttribute_];
  [v78 setValue_];

  v79 = swift_initStackObject();
  *(v79 + 16) = xmmword_252E3C130;
  *(v79 + 32) = v78;
  v80 = v78;
  v81 = sub_252B4CA9C(v6, v79, 0, 1);
  LOBYTE(v78) = v82;

  swift_setDeallocating();
  v83 = *(v79 + 16);
  swift_arrayDestroy();
  if (v78)
  {
    v84 = v81;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v85 = sub_252E36AD4();
    __swift_project_value_buffer(v85, qword_27F544C70);
    MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000093, 0x8000000252E96980, 0xD000000000000021, 0x8000000252E68B10, 100);

    v86 = parse(error:with:)(v81, v99);
    v101();

    sub_252927D3C(v81);
    v87 = v81;
    a2 = v101;
    sub_252927D3C(v87);
  }

  else
  {
    (v101)(v81);

    sub_252927D3C(v81);
    v88 = v81;
    a2 = v101;
    sub_252927D3C(v88);
  }

LABEL_84:
  v89 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v90 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v89[v90] = 5;
  [v89 setUserActivity_];
  v91 = v89;
LABEL_99:
  (a2)(v91);

  sub_252927D3C(v13);
  v12 = v89;
LABEL_36:
}

id sub_252D3F178(void *a1)
{
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v3 = result;
  type metadata accessor for HomeFilter();
  v4 = sub_252E37264();

  type metadata accessor for HomeStore();
  v5 = static HomeStore.shared.getter();
  v6 = HomeStore.services(matching:supporting:)(v4, 0);
  v8 = v7;

  if (v8)
  {
    v9 = v6;
    v10 = 1;
LABEL_50:
    sub_252929F10(v9, v10);
    return 0;
  }

  v46 = a1;
  v11 = v6 & 0xFFFFFFFFFFFFFF8;
  if (!(v6 >> 62))
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_49:
    v9 = v6;
    v10 = 0;
    goto LABEL_50;
  }

LABEL_48:
  v12 = sub_252E378C4();
  if (!v12)
  {
    goto LABEL_49;
  }

LABEL_6:
  v13 = 0;
  v47 = v6;
  v48 = v6 & 0xC000000000000001;
  v14 = &off_279711000;
  while (1)
  {
    if (v48)
    {
      v15 = MEMORY[0x2530ADF00](v13, v6);
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_48;
      }

      v15 = *(v6 + 8 * v13 + 32);

      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:

        v33 = 0;
        goto LABEL_26;
      }
    }

    if (sub_252CD941C() != 29)
    {
      goto LABEL_22;
    }

    v17 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
    v18 = [*(v15 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) v14[331]];
    if (!v18)
    {
      goto LABEL_22;
    }

    v19 = v18;
    v20 = v14;
    v21 = type metadata accessor for Accessory();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = *(sub_252D4CE7C(v19) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);

    v25 = [v24 matterNodeID];

    if (!v25)
    {
      break;
    }

    v14 = v20;
    v26 = [*(v15 + v17) v20 + 3192];
    if (!v26)
    {
      goto LABEL_7;
    }

    v27 = v26;
    v28 = *(v21 + 48);
    v29 = *(v21 + 52);
    swift_allocObject();
    v30 = *(sub_252D4CE7C(v27) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);

    v31 = [v30 matterNodeID];

    if (v31)
    {
      v32 = [v31 unsignedLongLongValue];

      if (!v32)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_7:
    }

    ++v13;
    v6 = v47;
    if (v16 == v12)
    {
      v33 = 1;
      goto LABEL_26;
    }
  }

LABEL_24:
  v33 = 0;
  v6 = v47;
LABEL_26:
  sub_252929F10(v6, 0);
  v34 = [v46 userTask];
  if (v34 && (v35 = v34, v36 = [v34 attribute], v35, v36 == 27) && (v37 = objc_msgSend(v46, sel_userTask)) != 0 && (v38 = v37, v39 = objc_msgSend(v37, sel_value), v38, v39))
  {
    v40 = [v39 BOOLValue];
  }

  else
  {
    v40 = 0;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v41 = sub_252E36AD4();
  __swift_project_value_buffer(v41, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E96930);
  if (v33)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v33)
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v42, v43);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E96960);
  if (v40)
  {
    v44 = 1702195828;
  }

  else
  {
    v44 = 0x65736C6166;
  }

  if (v40)
  {
    v45 = 0xE400000000000000;
  }

  else
  {
    v45 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v44, v45);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000093, 0x8000000252E96980);

  return (v33 & v40);
}

uint64_t sub_252D3F684(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25293B808;

  return (sub_252D3F99C)(a2);
}

void *sub_252D3F734@<X0>(void *a1@<X8>)
{
  type metadata accessor for BlockIncompleteMatterAccessoryManagerLoadHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252D3F770(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if ((sub_252CDFDD4() & 1) == 0)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544DA8);
    v4 = "anagerLoadHandler.swift";
    v5 = 0xD00000000000002ELL;
    goto LABEL_10;
  }

  v1 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v2 = sub_252AC5368(0x776F6C46646E6966, 0xE800000000000000);

  if (v2 == 2 || (v2 & 1) != 0)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544DA8);
    v4 = "ccessoryManager initialization";
    v5 = 0xD000000000000063;
LABEL_10:
    sub_252CC3D90(v5, v4 | 0x8000000000000000, 0xD000000000000097, 0x8000000252E96AB0);
    return 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544DA8);
  sub_252CC4050(0xD000000000000050, 0x8000000252E96BF0, 0xD000000000000097, 0x8000000252E96AB0, 0xD00000000000001ALL, 0x8000000252E7D3B0, 22);
  sub_2529515FC(7, 18, 0xD00000000000001BLL, 0x8000000252E82E50);
  return 1;
}

uint64_t sub_252D3F99C()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D3FA38, 0, 0);
}

uint64_t sub_252D3FA38()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000003ALL, 0x8000000252E96A70, 0xD000000000000097, 0x8000000252E96AB0);
  v4 = *(v2 + 16);

  sub_252E362B4();

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_25295A234;
  v7 = v0[2];
  v6 = v0[3];

  return sub_252959850(v6);
}

uint64_t sub_252D3FBA4(uint64_t result, char **a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 32); ; i += 504)
    {
      memcpy(__dst, i, sizeof(__dst));
      memcpy(__src, i, sizeof(__src));
      sub_2529353AC(__dst, v6);
      sub_252D408D4(__src, a2);
      if (v2)
      {
        break;
      }

      memcpy(v6, __src, sizeof(v6));
      result = sub_252935408(v6);
      if (!--v3)
      {
        return result;
      }
    }

    memcpy(v6, __src, sizeof(v6));
    return sub_252935408(v6);
  }

  return result;
}

uint64_t sub_252D3FC68@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 528), 0x1F8uLL);
  memcpy(a1, (v1 + 528), 0x1F8uLL);
  return sub_2529353AC(__dst, v4);
}

void *sub_252D3FCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v60 = a2;
  v69 = sub_252E36AB4();
  v67 = *(v69 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_252E34164();
  v70 = *(v64 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v64);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v85, a1, sizeof(v85));
  v19 = *(a1 + 464);
  v81 = *(a1 + 448);
  v82 = v19;
  v83 = *(a1 + 480);
  v20 = *(a1 + 400);
  v77 = *(a1 + 384);
  v78 = v20;
  v21 = *(a1 + 432);
  v79 = *(a1 + 416);
  v22 = *(a1 + 496);
  v23 = *(a1 + 376);
  v84 = v22;
  v80 = v21;
  v7[2] = MEMORY[0x277D84F90];
  v7[129] = a3;
  v7[130] = a4;
  v7[131] = a5;
  v58 = v7 + 2;
  v7[132] = a6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_2529F846C(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  v26 = v60;
  v27 = MEMORY[0x277D84F90];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_2529F846C((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v23[v25 + 32] = 3;
  memcpy(v75, v85, 0x178uLL);
  *&v75[448] = v81;
  *&v75[464] = v82;
  *&v75[480] = v83;
  *&v75[376] = v23;
  *&v75[496] = v84;
  *&v75[384] = v77;
  *&v75[400] = v78;
  *&v75[416] = v79;
  *&v75[432] = v80;
  memcpy(v7 + 3, v75, 0x1F8uLL);
  memcpy(v76, v85, 0x178uLL);
  *&v76[376] = v23;
  *&v76[448] = v81;
  *&v76[464] = v82;
  *&v76[480] = v83;
  *&v76[496] = v84;
  *&v76[384] = v77;
  *&v76[400] = v78;
  *&v76[416] = v79;
  *&v76[432] = v80;
  memcpy(v7 + 66, v76, 0x1F8uLL);
  sub_2529353AC(v75, v74);
  sub_2529353AC(v76, v74);
  v28 = *(sub_252E340D4() + 16);

  if (!v28 && !*(v7[3] + 16))
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v53 = sub_252E36AD4();
    __swift_project_value_buffer(v53, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000022, 0x8000000252E96F90, 0xD00000000000007ELL, 0x8000000252E96C80);
    v54 = sub_252E34104();
    (*(*(v54 - 8) + 8))(v26, v54);
    memcpy(v74, v85, 0x178uLL);
    *&v74[376] = v23;
    goto LABEL_39;
  }

  v59 = v23;
  v29 = sub_252E340D4();
  v30 = *(v29 + 16);
  if (v30)
  {
    v56 = v29;
    v57 = v7;
    v68 = *(v70 + 16);
    v31 = v29 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v66 = (v70 + 8);
    v67 += 8;
    v70 += 16;
    v65 = *(v70 + 56);
    v62 = "Running intentSelectionFlow";
    v63 = "meFlow with Parse";
    v61 = " initial candidates.";
    v32 = v30 - 1;
    v33 = v27;
    v34 = v64;
    while (1)
    {
      v68(v18, v31, v34);
      if (qword_27F53F5A8 != -1)
      {
        swift_once();
      }

      v35 = qword_27F544F30;
      sub_252E36A94();
      sub_252E375D4();
      sub_252E36A84();
      type metadata accessor for SELFPerformanceLogger();
      swift_allocObject();
      v36 = sub_252D2D190(201, 0x6E776F6E6B6E75, 0xE700000000000000);
      sub_252AB431C(v18, 0, v74);
      if (v36)
      {

        sub_252D2D83C(0, 0);
      }

      sub_252E375C4();
      sub_252E36A74();

      (*v67)(v15, v69);
      memcpy(v72, v74, sizeof(v72));
      memcpy(v73, v74, sizeof(v73));
      if (sub_252956B94(v73) == 1)
      {
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v37 = sub_252E36AD4();
        __swift_project_value_buffer(v37, qword_27F544DA8);
        v71[0] = 0;
        v71[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000035, v63 | 0x8000000000000000);
        v38 = v64;
        sub_252E37AE4();
        v34 = v38;
        sub_252CC4050(v71[0], v71[1], 0xD00000000000007ELL, v62 | 0x8000000000000000, 0xD00000000000005ALL, v61 | 0x8000000000000000, 47);

        (*v66)(v18, v38);
        if (!v32)
        {
          goto LABEL_24;
        }
      }

      else
      {
        (*v66)(v18, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_2529F7FB0(0, *(v33 + 2) + 1, 1, v33);
        }

        v40 = *(v33 + 2);
        v39 = *(v33 + 3);
        if (v40 >= v39 >> 1)
        {
          v33 = sub_2529F7FB0((v39 > 1), v40 + 1, 1, v33);
        }

        memcpy(v71, v72, sizeof(v71));
        *(v33 + 2) = v40 + 1;
        memcpy(&v33[504 * v40 + 32], v71, 0x1F8uLL);
        if (!v32)
        {
LABEL_24:

          v7 = v57;
          v26 = v60;
          goto LABEL_26;
        }
      }

      --v32;
      v31 += v65;
    }
  }

  v33 = MEMORY[0x277D84F90];
LABEL_26:
  if (*(v33 + 2))
  {
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v41 = sub_252E36AD4();
    __swift_project_value_buffer(v41, qword_27F544E08);
    *v74 = 0;
    *&v74[8] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E96F00);
    v42 = MEMORY[0x2530AD730](v33, &type metadata for HomeAutomationIntent);
    MEMORY[0x2530AD570](v42);

    sub_252CC3D90(*v74, *&v74[8], 0xD00000000000007ELL, 0x8000000252E96C80);

    swift_beginAccess();
    sub_25297AA34(v33);
    swift_endAccess();
  }

  else
  {
  }

  v43 = v59;
  if (!*(v7[3] + 16))
  {
    v52 = sub_252E34104();
    (*(*(v52 - 8) + 8))(v26, v52);
    memcpy(v74, v85, 0x178uLL);
    *&v74[376] = v43;
LABEL_39:
    *&v74[448] = v81;
    *&v74[464] = v82;
    *&v74[480] = v83;
    *&v74[496] = v84;
    *&v74[384] = v77;
    *&v74[400] = v78;
    *&v74[416] = v79;
    *&v74[432] = v80;
    sub_252935408(v74);
    return v7;
  }

  v44 = MEMORY[0x277D84F90];
  v73[0] = MEMORY[0x277D84F90];

  sub_252D3FBA4(v45, v73);

  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v46 = sub_252E36AD4();
  __swift_project_value_buffer(v46, qword_27F544E08);
  *v74 = 0;
  *&v74[8] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000043, 0x8000000252E96F40);
  v47 = v73[0];

  v49 = MEMORY[0x2530AD730](v48, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v49);

  sub_252CC3D90(*v74, *&v74[8], 0xD00000000000007ELL, 0x8000000252E96C80);

  swift_beginAccess();
  sub_25297AA34(v47);
  swift_endAccess();
  v50 = sub_252E34104();
  (*(*(v50 - 8) + 8))(v26, v50);
  memcpy(v74, v85, 0x178uLL);
  *&v74[376] = v59;
  *&v74[448] = v81;
  *&v74[464] = v82;
  *&v74[480] = v83;
  *&v74[496] = v84;
  *&v74[384] = v77;
  *&v74[400] = v78;
  *&v74[416] = v79;
  *&v74[432] = v80;
  sub_252935408(v74);
  v51 = v7[3];
  v7[3] = v44;

  return v7;
}

uint64_t sub_252D408D4(void *__src, char **a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s7BuilderCMa_1();
  swift_allocObject();
  sub_252E1E238();
  sub_252E1EBE8(__dst);

  sub_252E1E4F8(__dst);

  v3 = __dst[47];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2529F846C(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_2529F846C((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v3[v5 + 32] = 3;
  __dst[47] = v3;
  memcpy(__srca, __dst, sizeof(__srca));
  v6 = *a2;
  sub_2529353AC(__srca, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2529F7FB0(0, *(v6 + 2) + 1, 1, v6);
    *a2 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_2529F7FB0((v8 > 1), v9 + 1, 1, v6);
    *a2 = v6;
  }

  *(v6 + 2) = v9 + 1;
  memcpy(&v6[504 * v9 + 32], __srca, 0x1F8uLL);
  memcpy(v11, __dst, sizeof(v11));
  return sub_252935408(v11);
}

uint64_t sub_252D40AA0(uint64_t a1)
{
  v2[1242] = v1;
  v2[1241] = a1;
  v3 = sub_252E36AB4();
  v2[1243] = v3;
  v4 = *(v3 - 8);
  v2[1244] = v4;
  v5 = *(v4 + 64) + 15;
  v2[1245] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D40B64, 0, 0);
}

uint64_t sub_252D40B64()
{
  v26 = v0;
  if (qword_27F53F618 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 9960);
  v2 = qword_27F544FA0;
  *(v0 + 9968) = qword_27F544FA0;
  v3 = v2;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  type metadata accessor for SELFPerformanceLogger();
  swift_allocObject();
  v4 = sub_252D2D190(200, 0x6E776F6E6B6E75, 0xE700000000000000);
  *(v0 + 9976) = v4;
  if (_s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0() && (memcpy(__dst, (*(v0 + 9936) + 24), sizeof(__dst)), v5 = sub_252A12D08(), sub_252D746D8(v5, (v0 + 8080)), , memcpy((v0 + 7576), (v0 + 8080), 0x1F8uLL), sub_252956B94((v0 + 7576)) != 1))
  {
    v13 = *(v0 + 9936);
    memcpy((v0 + 8584), (v13 + 528), 0x1F8uLL);
    memcpy((v13 + 528), (v0 + 7576), 0x1F8uLL);
    sub_2529353AC(v0 + 7576, v0 + 9088);
    sub_252935408(v0 + 8584);
    if (v4)
    {
      v14 = *(v0 + 7784);
      if (v14 > 4)
      {
        if (*(v0 + 7784) <= 6u)
        {
          if (v14 == 5)
          {
            v20 = 0xD000000000000011;
          }

          else
          {
            v20 = 0xD000000000000010;
          }

          if (v14 == 5)
          {
            v21 = 0x8000000252E678A0;
          }

          else
          {
            v21 = 0x8000000252E678C0;
          }
        }

        else if (v14 == 7)
        {
          v21 = 0x8000000252E678E0;
          v20 = 0xD000000000000012;
        }

        else if (v14 == 8)
        {
          v21 = 0xEF64656C69614673;
          v20 = 0x656E4F6863696877;
        }

        else
        {
          v20 = 0;
          v21 = 0;
        }
      }

      else
      {
        v15 = 7628135;
        v16 = 0xE600000000000000;
        v17 = 0x656C67676F74;
        v18 = 0xE400000000000000;
        v19 = 2003789939;
        if (v14 != 3)
        {
          v19 = 0x746E756F63;
          v18 = 0xE500000000000000;
        }

        if (v14 != 2)
        {
          v17 = v19;
          v16 = v18;
        }

        if (!*(v0 + 7784))
        {
          v15 = 7628147;
        }

        if (*(v0 + 7784) <= 1u)
        {
          v20 = v15;
        }

        else
        {
          v20 = v17;
        }

        if (*(v0 + 7784) <= 1u)
        {
          v21 = 0xE300000000000000;
        }

        else
        {
          v21 = v16;
        }
      }

      sub_252D2D83C(v20, v21);
    }

    v22 = *(v0 + 9960);
    v23 = *(v0 + 9928);
    sub_252E375C4();
    sub_252E36A74();
    sub_252E33B24();

    sub_25293847C(v0 + 8080, &qword_27F5404C8, &unk_252E3FD60);
    (*(*(v0 + 9952) + 8))(*(v0 + 9960), *(v0 + 9944));

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 9936);
    v7 = sub_252E36AD4();
    *(v0 + 9984) = __swift_project_value_buffer(v7, qword_27F544E08);
    sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E96C60, 0xD00000000000007ELL, 0x8000000252E96C80);
    v8 = sub_252D417A4();
    *(v0 + 9992) = v8;
    v9 = sub_252C62D4C(v8, *(v6 + 1032));
    *(v0 + 10000) = v9;
    v10 = *(v6 + 1040);
    v11 = swift_task_alloc();
    *(v0 + 10008) = v11;
    *v11 = v0;
    v11[1] = sub_252D41070;

    return sub_252975024(v9, v10);
  }
}

uint64_t sub_252D41070(uint64_t a1)
{
  v2 = *(*v1 + 10008);
  v3 = *(*v1 + 10000);
  v5 = *v1;
  *(*v1 + 10016) = a1;

  return MEMORY[0x2822009F8](sub_252D41190, 0, 0);
}

uint64_t sub_252D41190()
{
  v32 = v0;
  v1 = *(v0 + 9936);
  v2 = sub_252DE4708(*(v0 + 10016), *(v1 + 1048));

  sub_252DDD1BC(v2, *(v1 + 1056), __src);

  memcpy((v0 + 520), __src, 0x1F8uLL);
  memcpy((v0 + 16), (v0 + 520), 0x1F8uLL);
  if (sub_252956B94((v0 + 16)) == 1)
  {
    v3 = *(v0 + 9984);
    v4 = *(v0 + 9936);
    sub_252CC4050(0xD00000000000003ELL, 0x8000000252E96D00, 0xD00000000000007ELL, 0x8000000252E96C80, 0x2865747563657865, 0xE900000000000029, 120);
    memcpy((v0 + 1528), (v4 + 24), 0x1F8uLL);
    memcpy((v0 + 1024), (v4 + 528), 0x1F8uLL);
    memcpy((v4 + 528), (v4 + 24), 0x1F8uLL);
    sub_2529353AC(v0 + 1528, v0 + 2032);
    v5 = v0 + 1024;
  }

  else
  {
    v6 = *(v0 + 9984);
    v7 = *(v0 + 9936);
    *&__src[0] = 0;
    *(&__src[0] + 1) = 0xE000000000000000;
    memcpy((v0 + 6064), (v0 + 520), 0x1F8uLL);
    sub_2529353AC(v0 + 6064, v0 + 6568);
    sub_252E379F4();

    memcpy(__src, (v0 + 16), 0x1F8uLL);
    memcpy((v0 + 5560), (v0 + 520), 0x1F8uLL);
    sub_2529353AC(v0 + 5560, v0 + 7072);
    v8 = HomeAutomationIntent.description.getter();
    v10 = v9;
    memcpy((v0 + 5056), __src, 0x1F8uLL);
    sub_252935408(v0 + 5056);
    MEMORY[0x2530AD570](v8, v10);

    sub_252CC3D90(0xD000000000000014, 0x8000000252E96D40, 0xD00000000000007ELL, 0x8000000252E96C80);

    memcpy((v0 + 4552), (v7 + 528), 0x1F8uLL);
    memcpy((v7 + 528), (v0 + 16), 0x1F8uLL);
    v5 = v0 + 4552;
  }

  sub_252935408(v5);
  if (_s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0())
  {
    v11 = *(v0 + 9936);
    memcpy((v0 + 3544), (v11 + 528), 0x1F8uLL);
    memcpy(__src, (v11 + 528), 0x1F8uLL);
    sub_2529353AC(v0 + 3544, v0 + 4048);
    sub_252D7C580(__src);

    memcpy((v0 + 3040), __src, 0x1F8uLL);
    sub_252935408(v0 + 3040);
  }

  if (*(v0 + 9976))
  {
    memcpy((v0 + 2536), (v0 + 520), 0x1F8uLL);
    v12 = 0;
    if (sub_252956B94((v0 + 2536)) == 1)
    {
      v14 = 0;
    }

    else
    {
      v13 = *(v0 + 2744);
      v14 = 0;
      if (v13 != 9)
      {
        if (*(v0 + 2744) <= 3u)
        {
          if (*(v0 + 2744) > 1u)
          {
            if (v13 == 2)
            {
              v14 = 0xE600000000000000;
              v12 = 0x656C67676F74;
            }

            else
            {
              v14 = 0xE400000000000000;
              v12 = 2003789939;
            }
          }

          else
          {
            v12 = 7628135;
            if (!*(v0 + 2744))
            {
              v12 = 7628147;
            }

            v14 = 0xE300000000000000;
          }
        }

        else if (*(v0 + 2744) <= 5u)
        {
          if (v13 == 4)
          {
            v14 = 0xE500000000000000;
            v12 = 0x746E756F63;
          }

          else
          {
            v14 = 0x8000000252E678A0;
            v12 = 0xD000000000000011;
          }
        }

        else if (v13 == 6)
        {
          v14 = 0x8000000252E678C0;
          v12 = 0xD000000000000010;
        }

        else if (v13 == 7)
        {
          v14 = 0x8000000252E678E0;
          v12 = 0xD000000000000012;
        }

        else
        {
          v14 = 0xEF64656C69614673;
          v12 = 0x656E4F6863696877;
        }
      }
    }

    sub_252D2D83C(v12, v14);
  }

  v15 = *(v0 + 9968);
  v16 = *(v0 + 9960);
  v17 = *(v0 + 9928);
  v18 = *(*(v0 + 9992) + 16);

  *(v0 + 9760) = 0;
  *(v0 + 9768) = 1;
  *(v0 + 9776) = 0u;
  *(v0 + 9792) = 0u;
  *(v0 + 9808) = 0u;
  *(v0 + 9824) = 0u;
  *(v0 + 9840) = 0u;
  *(v0 + 9856) = 1;
  *(v0 + 9864) = 0;
  *(v0 + 9872) = 0u;
  *(v0 + 9888) = 513;
  *(v0 + 9896) = 0u;
  *(v0 + 9912) = v18;
  *(v0 + 9920) = 0;
  GEOLocationCoordinate2DMake(v0 + 9760);
  v19 = *(v0 + 9872);
  v20 = *(v0 + 9904);
  __src[8] = *(v0 + 9888);
  __src[9] = v20;
  LOBYTE(__src[10]) = *(v0 + 9920);
  v21 = *(v0 + 9808);
  v22 = *(v0 + 9840);
  __src[4] = *(v0 + 9824);
  __src[5] = v22;
  __src[6] = *(v0 + 9856);
  __src[7] = v19;
  v23 = *(v0 + 9776);
  __src[0] = *(v0 + 9760);
  __src[1] = v23;
  __src[2] = *(v0 + 9792);
  __src[3] = v21;
  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v15, v16, "IntentSelection", 15, 2, __src);
  v24 = __src[9];
  *(v0 + 9720) = __src[8];
  *(v0 + 9736) = v24;
  *(v0 + 9752) = __src[10];
  v25 = __src[5];
  *(v0 + 9656) = __src[4];
  *(v0 + 9672) = v25;
  v26 = __src[7];
  *(v0 + 9688) = __src[6];
  *(v0 + 9704) = v26;
  v27 = __src[1];
  *(v0 + 9592) = __src[0];
  *(v0 + 9608) = v27;
  v28 = __src[3];
  *(v0 + 9624) = __src[2];
  *(v0 + 9640) = v28;
  sub_25293847C(v0 + 9592, &qword_27F5407B0, &unk_252E42860);
  sub_252E33B24();

  sub_25293847C(v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
  (*(*(v0 + 9952) + 8))(*(v0 + 9960), *(v0 + 9944));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_252D417A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_252E3C290;
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  memcpy((v1 + 32), (v0 + 24), 0x1F8uLL);
  v15 = v1;
  swift_beginAccess();
  v2 = *(v0 + 16);
  sub_2529353AC(__dst, v14);

  sub_25297AA34(v3);
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544E08);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_252E379F4();

  v14[0] = 0xD000000000000014;
  v14[1] = 0x8000000252E96E50;
  v5 = v15;
  v13[0] = *(v15 + 16);
  v6 = sub_252E37D94();
  MEMORY[0x2530AD570](v6);

  MEMORY[0x2530AD570](14889, 0xE200000000000000);
  sub_252CC3D90(v14[0], v14[1], 0xD00000000000007ELL, 0x8000000252E96C80);

  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = (v5 + 32);
    do
    {
      memcpy(v14, v8, sizeof(v14));
      memcpy(v13, v8, sizeof(v13));
      sub_2529353AC(v14, &v11);
      v11 = HomeAutomationIntent.description.getter();
      v12 = v9;
      MEMORY[0x2530AD570](10, 0xE100000000000000);
      sub_252CC3D90(v11, v12, 0xD00000000000007ELL, 0x8000000252E96C80);

      sub_252935408(v14);
      v8 += 504;
      --v7;
    }

    while (v7);
  }

  sub_252CC3D90(0xD000000000000024, 0x8000000252E96E70, 0xD00000000000007ELL, 0x8000000252E96C80);
  return v5;
}

void *IntentSelectionFlow.deinit()
{
  v1 = v0[2];

  memcpy(v7, v0 + 3, sizeof(v7));
  sub_252935408(v7);
  memcpy(__dst, v0 + 66, sizeof(__dst));
  sub_252935408(__dst);
  v2 = v0[129];

  v3 = v0[130];

  v4 = v0[131];

  v5 = v0[132];

  return v0;
}

uint64_t IntentSelectionFlow.__deallocating_deinit()
{
  IntentSelectionFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_252D41AE4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252D40AA0(a1);
}

uint64_t sub_252D41B80@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  memcpy(__dst, (v3 + 528), sizeof(__dst));
  memcpy(a1, (v3 + 528), 0x1F8uLL);
  return sub_2529353AC(__dst, &v5);
}

uint64_t dispatch thunk of IntentSelectionFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 240);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return v8(a1);
}

uint64_t dispatch thunk of ShowHomeIntentHandleDelegate.handle(intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25296BC70;

  return v11(a1, a2, a3);
}

void sub_252D41EFC(uint64_t *a1, void *a2, void *a3)
{
  v92 = a3;
  v5 = sub_252E36AD4();
  v96 = *(v5 - 8);
  v6 = *(v96 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v91 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v95 = &v90 - v9;
  v100 = *a1;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v93 = a2;
  v10 = __swift_project_value_buffer(v5, qword_27F544C70);

  v11 = sub_252E36AC4();
  v12 = sub_252E374C4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = v5;
    v15 = v10;
    v16 = swift_slowAlloc();
    v99[0] = v16;
    *v13 = 136315138;
    v17 = *(v100 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v18 = *(v100 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v19 = sub_252BE2CE0(v17, v18, v99);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_252917000, v11, v12, "Checking filter against accessory %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v20 = v16;
    v10 = v15;
    v5 = v14;
    MEMORY[0x2530AED00](v20, -1, -1);
    MEMORY[0x2530AED00](v13, -1, -1);
  }

  v21 = v93;
  v22 = sub_252D50978(v93);
  v99[0] = 0;
  v99[1] = 0xE000000000000000;
  sub_252E379F4();

  v99[0] = 0xD000000000000011;
  v99[1] = 0x8000000252E96FC0;
  if (v22)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  v24 = v21;
  if (v22)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v23, v25);

  v94 = "Final ShowHome Filters: ";
  sub_252CC3D90(v99[0], v99[1], 0xD00000000000007FLL, 0x8000000252E733E0);

  v26 = [v21 homeEntityName];
  if (v26)
  {
    LODWORD(v90) = v22;
    v27 = v26;
    v28 = sub_252E36F34();
    v30 = v29;

    v31 = *(v96 + 16);
    v91 = v10;
    v31(v95, v10, v5);
    v99[0] = 0;
    v99[1] = 0xE000000000000000;
    sub_252E379F4();

    v99[0] = 0xD00000000000002FLL;
    v99[1] = 0x8000000252E97020;
    v32 = [v24 homeEntityName];
    if (v32)
    {
      v33 = v32;
      v34 = sub_252E36F34();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v48 = v94;
    v97 = v34;
    v98 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v49 = sub_252E36F94();
    MEMORY[0x2530AD570](v49);

    v50 = v95;
    sub_252CC3D90(v99[0], v99[1], 0xD00000000000007FLL, v48 | 0x8000000000000000);

    (*(v96 + 8))(v50, v5);
    if (*(v100 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v28 && *(v100 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v30)
    {

      strcpy(v99, "Name match: ");
      BYTE5(v99[1]) = 0;
      HIWORD(v99[1]) = -5120;
    }

    else
    {
      v51 = sub_252E37DB4();

      strcpy(v99, "Name match: ");
      BYTE5(v99[1]) = 0;
      HIWORD(v99[1]) = -5120;
      if ((v51 & 1) == 0)
      {
        v53 = 0;
        v52 = 0xE500000000000000;
        v54 = 0x65736C6166;
        v22 = v90;
        goto LABEL_24;
      }
    }

    v52 = 0xE400000000000000;
    v53 = 1;
    v22 = v90;
    v54 = 1702195828;
LABEL_24:
    MEMORY[0x2530AD570](v54, v52);

    v55 = v99[0];
    v56 = v48 | 0x8000000000000000;
    v57 = v99[1];
    goto LABEL_35;
  }

  v37 = [v21 outerDeviceName];
  if (v37)
  {
    v38 = v37;
    v90 = sub_252E36F34();
    v39 = v5;
    v41 = v40;

    v42 = *(v96 + 16);
    v95 = v39;
    v42(v91, v10, v39);
    v99[0] = 0;
    v99[1] = 0xE000000000000000;
    sub_252E379F4();

    v99[0] = 0xD000000000000030;
    v99[1] = 0x8000000252E96FE0;
    v43 = [v21 outerDeviceName];
    if (v43)
    {
      v44 = v43;
      v45 = sub_252E36F34();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    v97 = v45;
    v98 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v58 = sub_252E36F94();
    MEMORY[0x2530AD570](v58);

    v59 = v91;
    sub_252CC3D90(v99[0], v99[1], 0xD00000000000007FLL, v94 | 0x8000000000000000);

    (*(v96 + 8))(v59, v95);
    if (*(v100 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v90 && *(v100 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v41)
    {

      strcpy(v99, "Name match: ");
      BYTE5(v99[1]) = 0;
      HIWORD(v99[1]) = -5120;
    }

    else
    {
      v60 = sub_252E37DB4();

      strcpy(v99, "Name match: ");
      BYTE5(v99[1]) = 0;
      HIWORD(v99[1]) = -5120;
      if ((v60 & 1) == 0)
      {
        v53 = 0;
        v61 = 0xE500000000000000;
        v62 = 0x65736C6166;
        goto LABEL_34;
      }
    }

    v61 = 0xE400000000000000;
    v53 = 1;
    v62 = 1702195828;
LABEL_34:
    MEMORY[0x2530AD570](v62, v61);

    v55 = v99[0];
    v56 = v94 | 0x8000000000000000;
    v57 = v99[1];
LABEL_35:
    sub_252CC3D90(v55, v57, 0xD00000000000007FLL, v56);

    if ((v53 & v22 & 1) == 0)
    {
      return;
    }

    goto LABEL_36;
  }

  if ((v22 & 1) == 0)
  {
    return;
  }

LABEL_36:
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v63.n128_f64[0] = HomeFilter.Builder.init()();
  v64 = v100;
  v66 = (*(*v65 + 576))(*(v100 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v100 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v63);

  v67 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
  v68 = [*(v64 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
  if (v68)
  {
    v69 = type metadata accessor for Room();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    swift_allocObject();
    v72 = sub_2529A1E08(v68);
    v68 = *(v72 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v73 = *(v72 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
  }

  else
  {
    v73 = 0;
  }

  v74 = (*(*v66 + 680))(v68, v73);

  v75 = [*(v100 + v67) room];
  if (!v75)
  {
    goto LABEL_43;
  }

  v76 = type metadata accessor for Room();
  v77 = *(v76 + 48);
  v78 = *(v76 + 52);
  swift_allocObject();
  sub_2529A1E08(v75);
  v79 = sub_2529A2E84();

  if (!v79)
  {
    v75 = 0;
LABEL_43:
    v80 = 0;
    goto LABEL_44;
  }

  v75 = *(v79 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v80 = *(v79 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

LABEL_44:
  v81 = (*(*v74 + 632))(v75, v80);

  v83 = (*(*v100 + 256))(v82);
  v84 = (*(*v81 + 624))(v83);

  v86 = (*(*v84 + 760))(v85);

  v87 = v86;
  v88 = v92;
  MEMORY[0x2530AD700]();
  if (*((*v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v89 = *((*v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
}

uint64_t sub_252D42994@<X0>(const void *a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v3 = sub_252E36AB4();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v39, a1, sizeof(v39));
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v7 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  v31 = v7;
  v33 = v6;
  sub_252E36A84();
  memcpy(v38, a1, sizeof(v38));
  v30 = sub_252D45810(v38);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544DA8);
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_252E379F4();

  v36 = 0xD000000000000025;
  v37 = 0x8000000252E97180;
  memcpy(v38, v39, sizeof(v38));
  sub_252A0EF78();
  v10 = (v9 & 1) == 0;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v11, v12);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(v36, v37, 0xD000000000000072, 0x8000000252E97070);

  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_252E379F4();

  v36 = 0xD000000000000024;
  v37 = 0x8000000252E971B0;
  memcpy(v38, v39, sizeof(v38));
  v13 = sub_252A16EC4();
  v14 = (v13 & 1) == 0;
  if (v13)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v15, v16);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(v36, v37, 0xD000000000000072, 0x8000000252E97070);

  if (sub_252D459F0())
  {

    v17 = 4;
    v18 = v33;
  }

  else
  {
    v19 = sub_252D45C98();
    v18 = v33;
    v20 = v30;
    if (v19)
    {

      v17 = 3;
    }

    else
    {
      memcpy(v38, v39, sizeof(v38));
      if (!sub_252D45FEC(v38, v30) || (memcpy(v38, v39, sizeof(v38)), sub_252A0EF78(), (v21 & 1) != 0) || (memcpy(v38, v39, sizeof(v38)), (sub_252A16EC4() & 1) != 0))
      {
        if (sub_252D45E60())
        {
          memcpy(v38, v39, sizeof(v38));
          sub_252A0EF78();
          if ((v22 & 1) == 0)
          {
            memcpy(v38, v39, sizeof(v38));
            if ((sub_252A16EC4() & 1) == 0)
            {

              v17 = 2;
              goto LABEL_41;
            }
          }
        }

        memcpy(v38, v39, sizeof(v38));
        if (sub_252D462EC(v38, v20))
        {

          v17 = 5;
        }

        else
        {
          if (v20)
          {
            v23 = v20;
            v24 = [v23 currentUser];
            v25 = [v23 homeAccessControlForUser_];

            if ([v25 isAccessAllowed])
            {
            }

            else
            {
              v26 = [v25 accessNotAllowedReasonCode];

              if (v26 == 4)
              {

                v17 = 7;
                goto LABEL_41;
              }
            }
          }

          memcpy(v38, v39, sizeof(v38));
          if (sub_252D466E4(v38, v20))
          {

            v17 = 6;
          }

          else
          {
            memcpy(v38, v39, sizeof(v38));
            v27 = sub_252D46BBC(v38);

            if (v27)
            {
              v17 = 8;
            }

            else
            {
              v17 = 9;
            }
          }
        }
      }

      else
      {

        v17 = 1;
      }
    }
  }

LABEL_41:
  *v32 = v17;
  sub_252E375C4();
  sub_252E36A74();
  return (*(v34 + 8))(v18, v35);
}

uint64_t HomeAutomationGuardFlow.__allocating_init(guardError:)(char *a1)
{
  v2 = swift_allocObject();
  HomeAutomationGuardFlow.init(guardError:)(a1);
  return v2;
}

uint64_t HomeAutomationGuardFlow.GuardError.hashValue.getter()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t HomeAutomationGuardFlow.init(guardError:)(char *a1)
{
  v2 = *a1;
  sub_25293DEE0(__src);
  memcpy((v1 + 152), __src, 0x1F8uLL);
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v3 + 96), v9);

  sub_252927BEC(v9, v1 + 104);
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v5 = *(v4 + 22);

  *(v1 + 16) = v5;
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v6 + 136), v9);

  sub_252927BEC(v9, v1 + 24);
  v7 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  *(v1 + 88) = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  *(v1 + 96) = &off_2864BA730;
  *(v1 + 64) = v7;
  *(v1 + 144) = v2;
  return v1;
}

BOOL sub_252D430FC()
{
  v1 = sub_252E34164();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E340E4();
  sub_252AB3FEC(v5, 0, v12);
  (*(v2 + 8))(v5, v1);
  memcpy(v13, v12, sizeof(v13));
  v6 = sub_252956B94(v13);
  if (v6 == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544DA8);
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_252E379F4();

    v11[0] = 0xD000000000000016;
    v11[1] = 0x8000000252E97050;
    sub_252E34104();
    sub_252D45468();
    v8 = sub_252E37D94();
    MEMORY[0x2530AD570](v8);

    MEMORY[0x2530AD570](32, 0xE100000000000000);
    sub_252CC4050(v11[0], v11[1], 0xD000000000000072, 0x8000000252E97070, 0x7475706E69286E6FLL, 0xEA0000000000293ALL, 253);
  }

  else
  {
    memcpy(v11, (v0 + 152), sizeof(v11));
    memcpy((v0 + 152), v12, 0x1F8uLL);
    sub_25293847C(v11, &qword_27F5404C8, &unk_252E3FD60);
  }

  return v6 != 1;
}

uint64_t sub_252D43364(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = swift_task_alloc();
  v2[20] = v3;
  *v3 = v2;
  v3[1] = sub_252D433FC;

  return sub_252D43608((v2 + 2));
}

uint64_t sub_252D433FC()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_252D434F8, 0, 0);
}

uint64_t sub_252D434F8()
{
  v1 = *(v0 + 144);
  sub_252929E74(*(v0 + 152) + 104, v0 + 56);
  sub_252929E74(v0 + 16, v0 + 96);
  v2 = swift_allocObject();
  sub_252927BEC((v0 + 96), v2 + 16);
  v3 = sub_252E331C4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 136) = sub_252E331B4();
  sub_252E33AF4();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_252D43608(uint64_t a1)
{
  v2[580] = v1;
  v2[579] = a1;
  v3 = sub_252E34014();
  v2[581] = v3;
  v4 = *(v3 - 8);
  v2[582] = v4;
  v5 = *(v4 + 64) + 15;
  v2[583] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D436CC, 0, 0);
}

uint64_t sub_252D436CC()
{
  v91 = v0;
  v1 = v0[580];
  v2 = *(v1 + 144);
  if (v2 > 3)
  {
    if (*(v1 + 144) > 5u)
    {
      if (v2 == 6)
      {
        memcpy(v0 + 2, (v1 + 152), 0x1F8uLL);
        if (sub_252956B94(v0 + 2) == 1 || (memcpy(__src, v0 + 2, 0x1F8uLL), (v29 = sub_252D45810(__src)) == 0))
        {
          v14 = 0;
          v15 = sub_252D46D8C;
        }

        else
        {
          v30 = v29;
          v14 = swift_allocObject();
          *(v14 + 16) = v30;

          v15 = sub_252D46D90;
        }

        goto LABEL_37;
      }

      if (v2 != 7)
      {
        v14 = 0;
        v15 = sub_252D46D8C;
        goto LABEL_37;
      }

      v3 = v0[583];
      sub_252E379F4();

      strcpy(__src, "com.apple.Home");
      HIBYTE(__src[1]) = -18;
      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E97140);
      v4 = __src[0];
      v5 = __src[1];
      v0[586] = __src[1];
      v6 = *(v1 + 48);
      v7 = *(v1 + 56);
      __swift_project_boxed_opaque_existential_1((v1 + 24), v6);
      sub_252AD7CC4();
      v8 = swift_task_alloc();
      v0[587] = v8;
      *v8 = v0;
      v8[1] = sub_252D444A0;
      v9 = v0[583];
      v10 = v0[580];
      v11 = v0[579];
      v93 = v7;

      return sub_252BDB88C(v11, &unk_252E5D688, v10, v9, v4, v5, 1, v6);
    }

    if (v2 == 4)
    {
      v14 = 0;
      v15 = sub_252D449E8;
      goto LABEL_37;
    }

LABEL_20:
    memcpy(v0 + 128, (v1 + 152), 0x1F8uLL);
    memcpy(v0 + 65, (v1 + 152), 0x1F8uLL);
    if (sub_252956B94(v0 + 65) != 1)
    {
      memcpy(v0 + 191, v0 + 128, 0x1F8uLL);
      memcpy(__src, v0 + 65, 0x1F8uLL);
      sub_2529353AC((v0 + 191), (v0 + 254));
      v26 = sub_252D45810(__src);
      v0[584] = v26;
      if (v26)
      {
        v27 = v26;
        v28 = swift_task_alloc();
        v0[585] = v28;
        *v28 = v0;
        v28[1] = sub_252D44218;

        return static RestrictedGuestCheckUtils.makeRestrictedGuestBlockingOutput(forHome:)((v0 + 574), v27);
      }

      sub_25293847C((v0 + 128), &qword_27F5404C8, &unk_252E3FD60);
    }

    v14 = 0;
    v15 = sub_252D46D8C;
    goto LABEL_37;
  }

  if (*(v1 + 144) <= 1u)
  {
    if (!*(v1 + 144))
    {
      sub_252E35F84();
      sub_252E35F74();
      sub_252E35F64();

      v13 = sub_252E36074();

      v14 = swift_allocObject();
      *(v14 + 16) = v13 & 1;

      v15 = sub_252D4598C;
      goto LABEL_37;
    }

    goto LABEL_20;
  }

  if (v2 != 2)
  {
    v31 = sub_252D44954;
    v14 = 0;
    goto LABEL_38;
  }

  memcpy(__dst, (v1 + 152), sizeof(__dst));
  memcpy(v0 + 317, (v1 + 152), 0x1F8uLL);
  if (sub_252956B94(v0 + 317) == 1)
  {
LABEL_35:
    v32 = 0;
    goto LABEL_36;
  }

  memcpy(v0 + 443, __dst, 0x1F8uLL);
  memcpy(__src, __dst, 0x1F8uLL);
  sub_2529353AC((v0 + 443), (v0 + 506));
  v16 = sub_252AEFEB0();
  memcpy(v0 + 380, __src, 0x1F8uLL);
  sub_252935408((v0 + 380));
  type metadata accessor for HomeStore();
  v17 = static HomeStore.shared.getter();
  v18 = v17[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v18 != 2 && (v18 & 1) == 0 || (v19 = [v16 filters]) == 0)
  {

    goto LABEL_34;
  }

  v20 = v19;
  type metadata accessor for HomeFilter();
  v21 = sub_252E37264();

  v22 = [v16 userTask];
  v23 = HomeStore.accessories(matching:supporting:)(v21, v22);
  v25 = v24;

  if (v25)
  {
    sub_252929F10(v23, 1);
LABEL_34:

    goto LABEL_35;
  }

  v39 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
LABEL_96:
    v40 = sub_252E378C4();
  }

  else
  {
    v40 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = 0;
  v42 = v23 & 0xC000000000000001;
  v43 = v23 + 32;
  v87 = v39;
  v88 = v23;
  v85 = v23 & 0xC000000000000001;
  v86 = v40;
  v84 = v23 + 32;
  while (1)
  {
    if (v41 == v40)
    {

      sub_252929F10(v23, 0);
      goto LABEL_35;
    }

    if (v42)
    {
      v44 = MEMORY[0x2530ADF00](v41, v23);
      v45 = __OFADD__(v41++, 1);
      if (v45)
      {
LABEL_85:
        __break(1u);
LABEL_86:

        sub_252929F10(v88, 0);

        v32 = 1;
        goto LABEL_36;
      }
    }

    else
    {
      if (v41 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_96;
      }

      v44 = *(v43 + 8 * v41);

      v45 = __OFADD__(v41++, 1);
      if (v45)
      {
        goto LABEL_85;
      }
    }

    v46 = (*v44 + 256);
    v47 = *v46;
    if ((*v46)() == 36)
    {
      break;
    }

    v48 = (*v44 + 272);
    v49 = *v48;
    v50 = (*v48)();
    v51 = v50;
    if (*(v50 + 16))
    {
      v52 = *(v50 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](36);
      v53 = sub_252E37F14();
      v54 = -1 << *(v51 + 32);
      v55 = v53 & ~v54;
      if ((*(v51 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
      {
        v56 = ~v54;
        while (*(*(v51 + 48) + 8 * v55) != 36)
        {
          v55 = (v55 + 1) & v56;
          if (((*(v51 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_86;
      }
    }

LABEL_54:

    v58 = (v47)(v57);
    if (v58 == 38)
    {
      v60 = &unk_2864AF500;
      goto LABEL_58;
    }

    v59 = MEMORY[0x277D84FA0];
    if (v58 == 41)
    {
      v60 = &unk_2864AF528;
LABEL_58:
      v59 = sub_2529FC004(v60);
    }

    if (*(v59 + 16))
    {
      v61 = *(v59 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](36);
      v62 = sub_252E37F14();
      v63 = -1 << *(v59 + 32);
      v64 = v62 & ~v63;
      if ((*(v59 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
      {
        v65 = ~v63;
        while (*(*(v59 + 48) + 8 * v64) != 36)
        {
          v64 = (v64 + 1) & v65;
          if (((*(v59 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        goto LABEL_86;
      }
    }

LABEL_64:

    if (sub_252D4FE78(36))
    {

      v83 = v88;
      goto LABEL_94;
    }

    if (v47() == 41)
    {

      sub_252929F10(v88, 0);
      goto LABEL_88;
    }

    v66 = v49();
    v67 = v66;
    v23 = v88;
    if (*(v66 + 16))
    {
      v68 = *(v66 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](41);
      v69 = sub_252E37F14();
      v70 = -1 << *(v67 + 32);
      v71 = v69 & ~v70;
      if ((*(v67 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
      {
        v72 = ~v70;
        while (*(*(v67 + 48) + 8 * v71) != 41)
        {
          v71 = (v71 + 1) & v72;
          if (((*(v67 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_87;
      }
    }

LABEL_71:

    v74 = (v47)(v73);
    if (v74 == 38)
    {
      v76 = &unk_2864AF550;
    }

    else
    {
      v75 = MEMORY[0x277D84FA0];
      if (v74 != 41)
      {
        goto LABEL_76;
      }

      v76 = &unk_2864AF578;
    }

    v75 = sub_2529FC004(v76);
LABEL_76:
    if (*(v75 + 16))
    {
      v77 = *(v75 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](41);
      v78 = sub_252E37F14();
      v79 = -1 << *(v75 + 32);
      v80 = v78 & ~v79;
      if ((*(v75 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80))
      {
        v81 = ~v79;
        while (*(*(v75 + 48) + 8 * v80) != 41)
        {
          v80 = (v80 + 1) & v81;
          if (((*(v75 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
          {
            goto LABEL_81;
          }
        }

LABEL_87:

        sub_252929F10(v88, 0);

LABEL_88:

        v32 = 1;
        goto LABEL_36;
      }
    }

LABEL_81:

    v82 = sub_252D4FE78(41);

    v40 = v86;
    v39 = v87;
    v43 = v84;
    v42 = v85;
    if (v82)
    {

      goto LABEL_93;
    }
  }

LABEL_93:
  v83 = v23;
LABEL_94:
  sub_252929F10(v83, 0);
  v32 = 1;
LABEL_36:
  v14 = swift_allocObject();
  *(v14 + 16) = v32;

  v15 = sub_252D45984;
LABEL_37:
  v31 = v15;
LABEL_38:
  v33 = v0[580];
  v34 = v0[579];
  v35 = v33[6];
  v36 = v33[7];
  __swift_project_boxed_opaque_existential_1(v33 + 3, v35);
  sub_252943BD0(v31, v14, 1, v35, v36);

  v37 = v0[583];

  v38 = v0[1];

  return v38();
}

uint64_t sub_252D44218()
{
  v1 = *(*v0 + 4680);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_252D44314, 0, 0);
}

uint64_t sub_252D44314()
{
  sub_25293847C(v0 + 1024, &qword_27F5404C8, &unk_252E3FD60);
  v1 = *(v0 + 4672);
  if (*(v0 + 4616))
  {
    v2 = *(v0 + 4632);

    sub_252927BEC((v0 + 4592), v0 + 4552);
    sub_252927BEC((v0 + 4552), v2);
  }

  else
  {
    sub_25293847C(v0 + 4592, &qword_27F542188, &qword_252E43C80);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;

    v4 = *(v0 + 4640);
    v5 = *(v0 + 4632);
    v6 = v4[6];
    v7 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v6);
    sub_252943BD0(sub_252D45968, v3, 1, v6, v7);
  }

  v8 = *(v0 + 4664);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252D444A0()
{
  v2 = *v1;
  v3 = *(*v1 + 4696);
  v4 = *v1;
  v2[588] = v0;

  v5 = v2[586];
  (*(v2[582] + 8))(v2[583], v2[581]);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252D44660, 0, 0);
  }

  else
  {
    v6 = v2[583];

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_252D44660()
{
  v1 = v0[588];
  v2 = v0[579];
  sub_252E33964();
  sub_252E33954();

  v3 = v0[583];

  v4 = v0[1];

  return v4();
}

uint64_t sub_252D446E4(char a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v3 = *(v2 + 22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C290;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x8000000252E97160;
  *(v4 + 72) = MEMORY[0x277D839B0];
  *(v4 + 48) = a1;
  sub_252E362B4();
}

uint64_t sub_252D447E4(char a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v3 = *(v2 + 22);

  v4 = type metadata accessor for HomeAutomationIntentContext.Builder(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_2529930C0();
  *(v7 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isTVRequest) = a1;
  v8 = type metadata accessor for HomeAutomationIntentContext(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_252996D9C(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_252E3C290;
  strcpy((v12 + 32), "intentContext");
  *(v12 + 46) = -4864;
  *(v12 + 72) = v8;
  *(v12 + 48) = v11;

  sub_252E362B4();
}

uint64_t sub_252D44954()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v1 = *(v0 + 22);

  sub_252E362B4();
}

uint64_t sub_252D449E8()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v1 = *(v0 + 22);

  sub_252E362B4();
}

uint64_t sub_252D44A7C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for HomeAutomationIncompatibleHomeHubVersionParameters(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D44B10, 0, 0);
}

uint64_t sub_252D44B10()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));
  v4 = sub_252E36324();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  *(v1 + *(v2 + 20)) = 0;
  v5 = v1 + *(v2 + 24);
  *v5 = 0x3FF0000000000000;
  *(v5 + 8) = 0;
  v6 = sub_252C07CDC();
  v0[5] = v6;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_252D44C58;

  return v10(0xD000000000000029, 0x8000000252E95510, v6);
}

uint64_t sub_252D44C58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v8 = sub_252D44E18;
  }

  else
  {
    *(v4 + 64) = a1;
    v8 = sub_252D44DA4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252D44DA4()
{
  sub_252D45994(v0[4]);

  v1 = v0[1];
  v2 = v0[8];

  return v1(v2);
}

uint64_t sub_252D44E18()
{
  sub_252D45994(v0[4]);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t sub_252D44E88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v34 - v5;
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v8 = *(v7 + 22);

  v9 = type metadata accessor for HomeAutomationIntentContext.Builder(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_2529930C0();
  v13 = [a1 name];
  sub_252E36F34();

  sub_252E37024();

  v14 = sub_252E36324();
  v15 = *(*(v14 - 8) + 56);
  v15(v6, 0, 1, v14);
  v16 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
  v15((v19 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name), 1, 1, v14);
  swift_beginAccess();
  sub_252956BAC(v6, v19 + v20);
  swift_endAccess();
  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
  v21 = type metadata accessor for HomeAutomationHomeLocation(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  sub_252956C1C(v19 + v20, v24 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  swift_setDeallocating();
  sub_25293847C(v19 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
  v25 = *(*v19 + 48);
  v26 = *(*v19 + 52);
  swift_deallocClassInstance();
  v27 = *(v12 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetedHomeName);
  *(v12 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetedHomeName) = v24;

  v28 = type metadata accessor for HomeAutomationIntentContext(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_252996D9C(v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_252E3C290;
  strcpy((v32 + 32), "intentContext");
  *(v32 + 46) = -4864;
  *(v32 + 72) = v28;
  *(v32 + 48) = v31;

  sub_252E362B4();
}

uint64_t sub_252D451EC()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v1 = *(v0 + 22);

  sub_252E362B4();
}

uint64_t *HomeAutomationGuardFlow.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  memcpy(__dst, v0 + 19, sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  return v0;
}

uint64_t HomeAutomationGuardFlow.__deallocating_deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  memcpy(__dst, v0 + 19, sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  return swift_deallocClassInstance();
}

uint64_t sub_252D45394(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252D43364(a1);
}

uint64_t sub_252D45430()
{
  type metadata accessor for HomeAutomationGuardFlow();

  return sub_252E33644();
}

unint64_t sub_252D45468()
{
  result = qword_27F5406B0;
  if (!qword_27F5406B0)
  {
    sub_252E34104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5406B0);
  }

  return result;
}

uint64_t sub_252D454C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return sub_252A738CC(a1, v1 + 16);
}

unint64_t sub_252D45560()
{
  result = qword_27F545920;
  if (!qword_27F545920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545920);
  }

  return result;
}

uint64_t dispatch thunk of HomeAutomationGuardFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return v8(a1);
}

uint64_t sub_252D45780()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252D44A7C(v0);
}

id sub_252D45810(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = sub_252AEFEB0();
  v2 = [v1 filters];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for HomeFilter();
    v4 = sub_252E37264();

    v5 = sub_252DD5A58(v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_252C758E0(v5);

  v7 = sub_252DD6238(v6);

  if (v7 || (type metadata accessor for HomeStore(), v8 = static HomeStore.shared.getter(), v7 = sub_2529D9114(), v8, v7))
  {
  }

  else
  {
    v11 = static HomeStore.shared.getter();
    v7 = sub_2529F1BFC();

    if (!v7)
    {
      return 0;
    }
  }

  v9 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

  return v9;
}

uint64_t sub_252D45994(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationIncompatibleHomeHubVersionParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252D459F0()
{
  type metadata accessor for HomeStore();
  v0 = static HomeStore.shared.getter();
  v1 = sub_2529E1FF0(0x776F6C46646E6966, 0xE800000000000000, 0);

  if (v1 == 2 || (v1 & 1) != 0)
  {
    v2 = static HomeStore.shared.getter();
    v3 = *&v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager];

    LODWORD(v2) = [v3 isDataSyncInProgress];
    if (v2)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v4 = sub_252E36AD4();
      __swift_project_value_buffer(v4, qword_27F544DA8);
      sub_252CC4050(0xD00000000000004FLL, 0x8000000252E97530, 0xD000000000000072, 0x8000000252E97070, 0xD00000000000001DLL, 0x8000000252E97580, 151);
      sub_2529515FC(7, 17, 0xD000000000000019, 0x8000000252E975A0);
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544DA8);
    sub_252CC3D90(0xD00000000000003CLL, 0x8000000252E974F0, 0xD000000000000072, 0x8000000252E97070);
    return 0;
  }

  else
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544DA8);
    sub_252CC4050(0xD00000000000004ELL, 0x8000000252E975C0, 0xD000000000000072, 0x8000000252E97070, 0xD00000000000001DLL, 0x8000000252E97580, 143);
    sub_2529515FC(7, 17, 0xD00000000000001BLL, 0x8000000252E82E50);
    return 1;
  }
}

uint64_t sub_252D45C98()
{
  type metadata accessor for HomeStore();
  v0 = static HomeStore.shared.getter();
  v1 = *&v0[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager];

  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 16), v9);

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  if ((sub_252E338F4() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(v9);
    return 0;
  }

  v3 = [v1 isDataSyncInProgress];
  __swift_destroy_boxed_opaque_existential_1(v9);
  if ((v3 & 1) != 0 || ((v4 = static HomeStore.shared.getter(), v5 = sub_2529D8DC0(), v4, v5 >> 62) ? (v6 = sub_252E378C4()) : (v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v6))
  {

    return 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E974D0, 0xD000000000000072, 0x8000000252E97070);
  sub_2529515FC(7, 19, 0, 0);

  return 1;
}

uint64_t sub_252D45E60()
{
  type metadata accessor for HomeStore();
  v0 = static HomeStore.shared.getter();
  v1 = v0[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];

  if (v1 == 2 || (v1 & 1) == 0)
  {
    return 0;
  }

  v2 = static HomeStore.shared.getter();
  v3 = sub_2529D8DC0();

  if (v3 >> 62)
  {
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = static HomeStore.shared.getter();
    v6 = sub_2529D9D50();

    if (v6 >> 62)
    {
      v9 = sub_252E378C4();

      if (v9)
      {
        return 0;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v7)
      {
        return 0;
      }
    }
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E97400, 0xD000000000000072, 0x8000000252E97070);
  return 1;
}

BOOL sub_252D45FEC(uint64_t a1, void *a2)
{
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v3 + 288), &v20);

  v4 = v22;
  v5 = v23;
  __swift_project_boxed_opaque_existential_1(&v20, v22);
  v6 = (*(v5 + 168))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  if ((v6 & 1) == 0)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544DA8);
    v8 = "Providing NoHomeSetUp error";
    v9 = 0xD00000000000003FLL;
    goto LABEL_9;
  }

  if (_s22HomeAutomationInternal25RestrictedGuestCheckUtilsO23isCurrentDeviceCommunalSbyFZ_0())
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544DA8);
    v8 = "ck and let the next checker run";
    v9 = 0xD000000000000063;
LABEL_9:
    sub_252CC3D90(v9, v8 | 0x8000000000000000, 0xD000000000000072, 0x8000000252E97070);
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = a2;
  v13 = [v12 currentUser];
  v14 = [v12 homeAccessControlForUser_];
  v15 = [v14 isRestrictedGuest];

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544DA8);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_252E379F4();

  v20 = 0xD000000000000012;
  v21 = 0x8000000252E972C0;
  if (v15)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v15)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v17, v18);

  sub_252CC3D90(v20, v21, 0xD000000000000072, 0x8000000252E97070);

  if (!v15)
  {

    return 0;
  }

  v19 = sub_252D45E60();

  return (v19 & 1) != 0;
}

uint64_t sub_252D462EC(uint64_t a1, void *a2)
{
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v3 + 288), &v25);

  v4 = v27;
  v5 = v28;
  __swift_project_boxed_opaque_existential_1(&v25, v27);
  v6 = (*(v5 + 168))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(&v25);
  if ((v6 & 1) == 0)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544DA8);
    v8 = ". Likely HH1/HH2 incompatible.";
    v9 = 0xD00000000000001CLL;
    goto LABEL_9;
  }

  if (_s22HomeAutomationInternal25RestrictedGuestCheckUtilsO23isCurrentDeviceCommunalSbyFZ_0())
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544DA8);
    v8 = "location away or unknown)";
    v9 = 0xD000000000000060;
LABEL_9:
    sub_252CC3D90(v9, v8 | 0x8000000000000000, 0xD000000000000072, 0x8000000252E97070);
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = a2;
  v13 = [v12 currentUser];
  v14 = [v12 homeAccessControlForUser_];

  v24 = [v14 isAccessAllowed];
  v15 = [v14 isRestrictedGuest];
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544DA8);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_252E379F4();

  v25 = 0xD000000000000012;
  v26 = 0x8000000252E972C0;
  if (v15)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  v18 = 0xE400000000000000;
  if (v15)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v17, v19);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E972E0);
  if (v24)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (!v24)
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v20, v18);

  sub_252CC3D90(v25, v26, 0xD000000000000072, 0x8000000252E97070);

  if (!v15)
  {
    goto LABEL_29;
  }

  v21 = [v12 homeLocationStatus];
  if (([v14 isRestrictedGuestInAllowedPeriod] & 1) == 0)
  {
    v22 = ", isAccessAllowed ";
    v23 = 0xD00000000000003FLL;
    goto LABEL_31;
  }

  if ((v21 | 2) != 2)
  {
LABEL_29:

    return 0;
  }

  v22 = "ess error (outside of schedule)";
  v23 = 0xD000000000000049;
LABEL_31:
  sub_252CC3D90(v23, v22 | 0x8000000000000000, 0xD000000000000072, 0x8000000252E97070);

  return 1;
}

uint64_t sub_252D466E4(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v41 - v5;
  if (!a2)
  {
    return 0;
  }

  v7 = a2;
  v8 = [v7 currentUser];
  v9 = [v7 homeAccessControlForUser_];

  LOBYTE(v8) = [v9 isRestrictedGuest];
  if (v8 & 1) != 0 || (v10 = [v7 currentUser], v11 = objc_msgSend(v7, sel_homeAccessControlForUser_, v10), v10, LOBYTE(v10) = objc_msgSend(v11, sel_isAccessAllowed), v11, (v10))
  {

    return 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000020, 0x8000000252E971E0, 0xD000000000000072, 0x8000000252E97070);
  type metadata accessor for ErrorFilingHelper();
  inited = swift_initStackObject();
  v41[1] = inited;
  v15 = sub_252E36884();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v42 = sub_252E36874();
  v43 = 0;
  *(inited + 16) = v42;
  v44 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E97210);
  v18 = [v7 currentUser];
  v19 = [v18 description];
  v20 = sub_252E36F34();
  v22 = v21;

  MEMORY[0x2530AD570](v20, v22);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E97240);
  v23 = [v7 description];
  v24 = sub_252E36F34();
  v26 = v25;

  MEMORY[0x2530AD570](v24, v26);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  v28 = v43;
  v27 = v44;
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_252E379F4();
  v29 = [v7 currentUser];
  v30 = [v29 description];
  v31 = sub_252E36F34();
  v33 = v32;

  MEMORY[0x2530AD570](v31, v33);

  MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E97260);
  v34 = [v7 description];
  v35 = sub_252E36F34();
  v37 = v36;

  MEMORY[0x2530AD570](v35, v37);

  MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E97280);
  v38 = v43;
  v39 = v44;
  MEMORY[0x2530ACCE0](0x74694B656D6F48, 0xE700000000000000, 0x736775422077654ELL, 0xE800000000000000, 590644);
  v40 = sub_252E36834();
  (*(*(v40 - 8) + 56))(v6, 0, 1, v40);
  sub_25295ADB4(v28, v27, 0x7A69726F68747541, 0xED00006E6F697461, v38, v39, v6);

  sub_25293847C(v6, &qword_27F540570, &unk_252E50EE0);
  return 1;
}

uint64_t sub_252D46BBC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F44();

  v1 = sub_252E36064();

  sub_252E35F74();
  sub_252E35F44();

  v2 = sub_252E36054();

  sub_252E35F74();
  sub_252E35F44();

  v3 = sub_252E36044();

  v4 = sub_252CDFDD4();
  if ((v4 & 1) != 0 && (v1 & 1) == 0)
  {
    if (v2)
    {
      __dst[3] = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
      __dst[4] = sub_252D46D38();
      LOBYTE(__dst[0]) = 23;
      v5 = sub_252E34214();
      __swift_destroy_boxed_opaque_existential_1(__dst);
      v4 = v5;
      if (v5 & 1) != 0 || ((v3 ^ 1))
      {
        return v4 & 1;
      }
    }

    else if ((v3 & 1) == 0)
    {
      v4 = 0;
      return v4 & 1;
    }

    __dst[3] = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
    __dst[4] = sub_252D46D38();
    LOBYTE(__dst[0]) = 24;
    v6 = sub_252E34214();
    __swift_destroy_boxed_opaque_existential_1(__dst);
    v4 = v6;
  }

  return v4 & 1;
}

unint64_t sub_252D46D38()
{
  result = qword_2814B0C28[0];
  if (!qword_2814B0C28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814B0C28);
  }

  return result;
}

void *sub_252D46D94()
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v2 = *(v1 + 22);

  v0[2] = v2;
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v3 + 136), v8);

  sub_252927BEC(v8, (v0 + 3));
  v4 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v0[11] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v0[12] = &off_2864BA730;
  v0[8] = v4;
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v6 = *(v5 + 23);

  v0[13] = v6;
  return v0;
}

uint64_t ControlHomeIntent.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  ControlHomeIntent.Builder.init()();
  return v0;
}

id ControlHomeIntent.__allocating_init(userTask:filters:time:)(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_252D474AC(a1, a2, a3);

  return v5;
}

{
  v4 = v3;
  v7 = [objc_allocWithZone(v4) init];
  [v7 setUserTask_];
  type metadata accessor for HomeFilter();
  v8 = sub_252E37254();

  [v7 setFilters_];

  [v7 setTime_];
  return v7;
}

id ControlHomeIntent.__allocating_init(userTask:filters:)(void *a1, uint64_t a2)
{
  v3 = sub_252D473EC(a1, a2);

  return v3;
}

void *ControlHomeIntent.Builder.__allocating_init(intent:)(void *a1)
{
  v2 = [a1 userTask];
  v3 = [a1 filters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = [a1 time];
  v7 = sub_252D47574(v2, v5, v6);

  return v7;
}

void *ControlHomeIntent.Builder.init()()
{
  v1 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v2 = sub_252E36F04();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  v4 = v3;
  [v4 setTaskType_];
  [v4 setAttribute_];
  [v4 setValue_];

  v5 = MEMORY[0x277D84F90];
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = 0;
  return v0;
}

uint64_t sub_252D471A4(void *a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  v3 = a1;
}

id sub_252D471E4()
{
  v1 = v0[2];
  swift_beginAccess();
  v3 = v0[3];
  v2 = v0[4];
  v4 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v5 = v2;
  v6 = v1;

  v7 = [v4 init];
  [v7 setUserTask_];
  type metadata accessor for HomeFilter();
  v8 = sub_252E37254();

  [v7 setFilters_];

  [v7 setTime_];
  return v7;
}

void *sub_252D472E8()
{
  type metadata accessor for ControlHomeIntent.Builder();
  v1 = v0[2];
  swift_beginAccess();
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2;
  v5 = v1;

  v6 = sub_252D47574(v1, v3, v2);

  return v6;
}

uint64_t ControlHomeIntent.Builder.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ControlHomeIntent.Builder.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_252D473EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(v3) init];
  [v6 setUserTask_];
  if (a2)
  {
    type metadata accessor for HomeFilter();
    v7 = sub_252E37254();
  }

  else
  {
    v7 = 0;
  }

  [v6 setFilters_];

  [v6 setTime_];
  return v6;
}

id sub_252D474AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(v3) init];
  [v7 setUserTask_];
  if (a2)
  {
    type metadata accessor for HomeFilter();
    v8 = sub_252E37254();
  }

  else
  {
    v8 = 0;
  }

  [v7 setFilters_];

  [v7 setTime_];
  return v7;
}

void *sub_252D47574(void *a1, unint64_t a2, void *a3)
{
  v7 = (*(v3 + 176))();
  v8 = v7[2];
  v7[2] = a1;

  v9 = a1;

  v10 = sub_25297CCF8(a2);

  swift_beginAccess();
  v11 = v7[3];
  v7[3] = v10;

  v12 = v7[4];
  v7[4] = a3;
  v13 = a3;

  return v7;
}

uint64_t sub_252D47790(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name;
  v19 = *(v15 + 56);
  sub_252956C1C(a1 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, &v24 - v16);
  sub_252956C1C(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) != 1)
  {
    sub_252956C1C(v17, v12);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v19], v4);
      sub_252B3DE3C();
      v21 = sub_252E36EF4();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_25293847C(v17, &qword_27F540298, &unk_252E3C270);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v20(&v17[v19], 1, v4) != 1)
  {
LABEL_6:
    sub_25293847C(v17, &qword_27F540758, &unk_252E4D160);
    v21 = 0;
    return v21 & 1;
  }

  sub_25293847C(v17, &qword_27F540298, &unk_252E3C270);
  v21 = 1;
  return v21 & 1;
}

uint64_t ControlHomeIntent.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v18);
  if (v19)
  {
    type metadata accessor for ControlHomeIntent();
    if (swift_dynamicCast())
    {
      v2 = [v17 userTask];
      v3 = [v1 userTask];
      v4 = v3;
      if (v2)
      {
        if (!v3)
        {
LABEL_28:

          goto LABEL_8;
        }

        type metadata accessor for HomeUserTask();
        v5 = sub_252E37694();

        if ((v5 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_12:
        v8 = [v17 filters];
        if (v8)
        {
          v9 = v8;
          type metadata accessor for HomeFilter();
          v10 = sub_252E37264();
        }

        else
        {
          v10 = 0;
        }

        v11 = [v1 filters];
        if (v11)
        {
          v12 = v11;
          type metadata accessor for HomeFilter();
          v13 = sub_252E37264();

          if (v10)
          {
            if (v13)
            {
              v14 = sub_252AE91C8(v10, v13);

              if (v14)
              {
                goto LABEL_25;
              }

LABEL_24:

              goto LABEL_8;
            }

            goto LABEL_21;
          }

          if (v13)
          {

            goto LABEL_24;
          }
        }

        else if (v10)
        {
LABEL_21:

          goto LABEL_8;
        }

LABEL_25:
        v2 = [v17 time];
        v15 = [v1 time];
        v16 = v15;
        if (!v2)
        {

          if (!v16)
          {
            v6 = 1;
            return v6 & 1;
          }

          goto LABEL_8;
        }

        if (v15)
        {
          sub_252D47CC8();
          v6 = sub_252E37694();

          return v6 & 1;
        }

        goto LABEL_28;
      }

      if (!v3)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_252982F10(v18);
  }

LABEL_8:
  v6 = 0;
  return v6 & 1;
}

unint64_t sub_252D47CC8()
{
  result = qword_27F545928;
  if (!qword_27F545928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F545928);
  }

  return result;
}

unint64_t DisambiguationSnippetModel.stringId.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v35 - v4;
  v41 = type metadata accessor for DisambiguationOption(0);
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = (v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B8, &qword_252E4BE48);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v38 = (v35 - v12);
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_252E379F4();

  v47 = 0xD000000000000010;
  v48 = 0x8000000252E97690;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570](v45, v46);

  v45 = 0x736E6F6974706F23;
  v46 = 0xEA0000000000203ALL;
  v13 = type metadata accessor for DisambiguationSnippetModel(0);
  v42 = *(v0 + *(v13 + 20));

  sub_252D4A8B0(&v42);
  v37 = v13;
  v14 = v42;
  v15 = *(v42 + 16);
  v39 = v6;
  if (v15)
  {
    v36 = v0;
    v44 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v15, 0);
    v16 = v44;
    v17 = *(v6 + 80);
    v35[1] = v14;
    v18 = v14 + ((v17 + 32) & ~v17);
    v40 = *(v6 + 72);
    do
    {
      sub_252D4AB5C(v18, v9, type metadata accessor for DisambiguationOption);
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_252E379F4();

      v42 = 0x203A6C6562616CLL;
      v43 = 0xE700000000000000;
      MEMORY[0x2530AD570](*v9, v9[1]);
      MEMORY[0x2530AD570](0x686365657073202CLL, 0xEE003A6C6562614CLL);
      MEMORY[0x2530AD570](v9[2], v9[3]);
      MEMORY[0x2530AD570](0x6E6F436E6F636920, 0xEC0000003A676966);
      sub_252938414(v9 + *(v41 + 24), v5, &qword_27F541B50, &unk_252E47970);
      v19 = type metadata accessor for IconConfiguration();
      if ((*(*(v19 - 8) + 48))(v5, 1, v19) == 1)
      {
        sub_25293847C(v5, &qword_27F541B50, &unk_252E47970);
        v20 = 0xE300000000000000;
        v21 = 7104878;
      }

      else
      {
        v21 = IconConfiguration.description.getter();
        v20 = v22;
        sub_252D4A958(v5, type metadata accessor for IconConfiguration);
      }

      MEMORY[0x2530AD570](v21, v20);

      v23 = v42;
      v24 = v43;
      sub_252D4A958(v9, type metadata accessor for DisambiguationOption);
      v44 = v16;
      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2529AA3A0((v25 > 1), v26 + 1, 1);
        v16 = v44;
      }

      *(v16 + 16) = v26 + 1;
      v27 = v16 + 16 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      v18 += v40;
      --v15;
    }

    while (v15);

    v1 = v36;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v28 = MEMORY[0x2530AD730](v16, MEMORY[0x277D837D0]);
  v30 = v29;

  MEMORY[0x2530AD570](v28, v30);

  MEMORY[0x2530AD570](v45, v46);

  v45 = 0;
  v46 = 0xE000000000000000;
  sub_252E379F4();

  v45 = 0xD000000000000010;
  v46 = 0x8000000252E976B0;
  v31 = v38;
  sub_252938414(v1 + *(v37 + 24), v38, &qword_27F5434B8, &qword_252E4BE48);
  if ((*(v39 + 48))(v31, 1, v41) == 1)
  {
    sub_25293847C(v31, &qword_27F5434B8, &qword_252E4BE48);
    v32 = 0xE300000000000000;
    v33 = 7104878;
  }

  else
  {
    v33 = *v31;
    v32 = v31[1];

    sub_252D4A958(v31, type metadata accessor for DisambiguationOption);
  }

  MEMORY[0x2530AD570](v33, v32);

  MEMORY[0x2530AD570](v45, v46);

  return v47;
}

uint64_t sub_252D48390()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v36 - v4;
  v42 = type metadata accessor for DisambiguationOption(0);
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v42);
  v9 = (v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B8, &qword_252E4BE48);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v36 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_252E379F4();

  v46 = 0x5379616C70736964;
  v47 = 0xEF203A676E697274;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570](v44, v45);

  MEMORY[0x2530AD570](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  v14 = type metadata accessor for DisambiguationSnippetModel(0);
  v44 = *(v0 + *(v14 + 20));

  sub_252D4A8B0(&v44);
  v39 = v14;
  v40 = v13;
  v15 = v44;
  v16 = *(v44 + 16);
  if (v16)
  {
    v38 = v0;
    v43 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v16, 0);
    v17 = v43;
    v18 = *(v6 + 80);
    v36[1] = v15;
    v37 = v6;
    v19 = v15 + ((v18 + 32) & ~v18);
    v41 = *(v6 + 72);
    do
    {
      sub_252D4AB5C(v19, v9, type metadata accessor for DisambiguationOption);
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_252E379F4();

      v44 = 0x203A6C6562616CLL;
      v45 = 0xE700000000000000;
      MEMORY[0x2530AD570](*v9, v9[1]);
      MEMORY[0x2530AD570](0x686365657073202CLL, 0xEE003A6C6562614CLL);
      MEMORY[0x2530AD570](v9[2], v9[3]);
      MEMORY[0x2530AD570](0x6E6F436E6F636920, 0xEC0000003A676966);
      sub_252938414(v9 + *(v42 + 24), v5, &qword_27F541B50, &unk_252E47970);
      v20 = type metadata accessor for IconConfiguration();
      if ((*(*(v20 - 8) + 48))(v5, 1, v20) == 1)
      {
        sub_25293847C(v5, &qword_27F541B50, &unk_252E47970);
        v21 = 0xE300000000000000;
        v22 = 7104878;
      }

      else
      {
        v22 = IconConfiguration.description.getter();
        v21 = v23;
        sub_252D4A958(v5, type metadata accessor for IconConfiguration);
      }

      MEMORY[0x2530AD570](v22, v21);

      v24 = v44;
      v25 = v45;
      sub_252D4A958(v9, type metadata accessor for DisambiguationOption);
      v43 = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2529AA3A0((v26 > 1), v27 + 1, 1);
        v17 = v43;
      }

      *(v17 + 16) = v27 + 1;
      v28 = v17 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      v19 += v41;
      --v16;
    }

    while (v16);

    v6 = v37;
    v1 = v38;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v29 = MEMORY[0x2530AD730](v17, MEMORY[0x277D837D0]);
  v31 = v30;

  MEMORY[0x2530AD570](v29, v31);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E976D0);
  v32 = v40;
  sub_252938414(v1 + *(v39 + 24), v40, &qword_27F5434B8, &qword_252E4BE48);
  if ((*(v6 + 48))(v32, 1, v42) == 1)
  {
    sub_25293847C(v32, &qword_27F5434B8, &qword_252E4BE48);
    v33 = 0xE300000000000000;
    v34 = 7104878;
  }

  else
  {
    v34 = *v32;
    v33 = v32[1];

    sub_252D4A958(v32, type metadata accessor for DisambiguationOption);
  }

  MEMORY[0x2530AD570](v34, v33);

  return v46;
}

uint64_t DisambiguationOption.action.setter()
{
  v0 = *(type metadata accessor for DisambiguationOption(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

uint64_t DisambiguationOption.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DisambiguationOption.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DisambiguationOption.speechLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DisambiguationOption.speechLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DisambiguationOption.action.getter()
{
  v0 = *(type metadata accessor for DisambiguationOption(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33074();
}

uint64_t sub_252D48B84@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for DisambiguationOption(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  result = sub_252E33074();
  *a1 = result;
  return result;
}

uint64_t sub_252D48BDC(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for DisambiguationOption(0) + 28);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

uint64_t (*DisambiguationOption.action.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for DisambiguationOption(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  *(v3 + 32) = sub_252E33064();
  return sub_25292DC78;
}

uint64_t sub_252D48CE8()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D48DB0()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252D48E64()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D48F28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252D4C5DC();
  *a2 = result;
  return result;
}

void sub_252D48F58(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C6562616CLL;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F69746361;
  if (*v1 != 2)
  {
    v5 = 0x666E6F436E6F6369;
    v4 = 0xEA00000000006769;
  }

  if (*v1)
  {
    v3 = 0x614C686365657073;
    v2 = 0xEB000000006C6562;
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

uint64_t sub_252D48FDC()
{
  v1 = 0x6C6562616CLL;
  v2 = 0x6E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x666E6F436E6F6369;
  }

  if (*v0)
  {
    v1 = 0x614C686365657073;
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

uint64_t sub_252D4905C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252D4C5DC();
  *a1 = result;
  return result;
}

uint64_t sub_252D49084(uint64_t a1)
{
  v2 = sub_252D4A9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252D490C0(uint64_t a1)
{
  v2 = sub_252D4A9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DisambiguationOption.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v44 = *(v47 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v47);
  v43 = v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = v38 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545930, &qword_252E5D750);
  v45 = *(v48 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v48);
  v10 = v38 - v9;
  v11 = type metadata accessor for DisambiguationOption(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 24);
  v17 = type metadata accessor for IconConfiguration();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v50 = v16;
  v51 = v15;
  v19(v15 + v16, 1, 1, v17);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D4A9B8();
  v22 = v49;
  sub_252E37F74();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_25293847C(v51 + v50, &qword_27F541B50, &unk_252E47970);
  }

  else
  {
    v40 = v20;
    v41 = v19;
    v23 = v45;
    v24 = v46;
    v39 = v11;
    v49 = a1;
    v25 = v47;
    v55 = 0;
    v26 = sub_252E37C04();
    v27 = v10;
    v28 = v51;
    *v51 = v26;
    v28[1] = v29;
    v38[2] = v29;
    v54 = 1;
    v28[2] = sub_252E37C04();
    v28[3] = v30;
    v53 = 3;
    sub_252D4AA0C(&qword_27F542A38, type metadata accessor for IconConfiguration);
    v31 = v24;
    v38[1] = 0;
    sub_252E37C64();
    v32 = v43;
    v41(v31, 0, 1, 0);
    v33 = v51;
    sub_252A909F4(v31, v51 + v50, &qword_27F541B50, &unk_252E47970);
    v52 = 2;
    sub_252AA8EEC(&qword_27F542A30);
    v34 = v48;
    sub_252E37C64();
    v35 = v44;
    sub_252E33074();
    (*(v35 + 8))(v32, v25);
    v36 = *(v39 + 28);
    sub_252A75B60();
    sub_252E33054();
    (*(v23 + 8))(v27, v34);
    sub_252D4AB5C(v33, v42, type metadata accessor for DisambiguationOption);
    __swift_destroy_boxed_opaque_existential_1(v49);
    return sub_252D4A958(v33, type metadata accessor for DisambiguationOption);
  }
}

uint64_t DisambiguationOption.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545940, &qword_252E5D758);
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D4A9B8();
  sub_252E37F84();
  v14 = *v3;
  v15 = v3[1];
  v27 = 0;
  sub_252E37CF4();
  if (v2)
  {
  }

  v16 = v3[2];
  v17 = v3[3];
  v26 = 1;
  sub_252E37CF4();
  v18 = type metadata accessor for DisambiguationOption(0);
  v19 = *(v18 + 24);
  v25 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  sub_252AA8E38();
  sub_252E37D54();
  v20 = v3 + *(v18 + 28);
  sub_252E33074();
  sub_252A75B60();
  sub_252E33054();
  v24 = 2;
  sub_252AA8EEC(&qword_27F542A58);
  sub_252E37D54();
  (*(v23 + 8))(v8, v5);
  return (*(v22 + 8))(v12, v9);
}

uint64_t sub_252D49988@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t DisambiguationSnippetModel.displayText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

uint64_t (*DisambiguationSnippetModel.displayText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t DisambiguationSnippetModel.options.getter()
{
  v1 = *(v0 + *(type metadata accessor for DisambiguationSnippetModel(0) + 20));
}

uint64_t DisambiguationSnippetModel.options.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DisambiguationSnippetModel(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_252D49C9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x736E6F6974706FLL;
  if (v2 != 1)
  {
    v4 = 0x4F746C7561666564;
    v3 = 0xED00006E6F697470;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x5479616C70736964;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000747865;
  }

  v7 = 0xE700000000000000;
  v8 = 0x736E6F6974706FLL;
  if (*a2 != 1)
  {
    v8 = 0x4F746C7561666564;
    v7 = 0xED00006E6F697470;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x5479616C70736964;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000747865;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252D49DBC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D49E74()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252D49F18()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D49FCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252D4C628();
  *a2 = result;
  return result;
}

void sub_252D49FFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000747865;
  v4 = 0xE700000000000000;
  v5 = 0x736E6F6974706FLL;
  if (v2 != 1)
  {
    v5 = 0x4F746C7561666564;
    v4 = 0xED00006E6F697470;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x5479616C70736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252D4A070()
{
  v1 = 0x736E6F6974706FLL;
  if (*v0 != 1)
  {
    v1 = 0x4F746C7561666564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5479616C70736964;
  }
}

uint64_t sub_252D4A0E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252D4C628();
  *a1 = result;
  return result;
}

uint64_t sub_252D4A108(uint64_t a1)
{
  v2 = sub_252D4AA54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252D4A144(uint64_t a1)
{
  v2 = sub_252D4AA54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DisambiguationSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B8, &qword_252E4BE48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = v28 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545948, &qword_252E5D760);
  v30 = *(v33 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v33);
  v8 = v28 - v7;
  v9 = type metadata accessor for DisambiguationSnippetModel(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 24);
  v15 = type metadata accessor for DisambiguationOption(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v35 = v13;
  v36 = v14;
  v17(&v13[v14], 1, 1, v15);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D4AA54();
  v32 = v8;
  v20 = v34;
  sub_252E37F74();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_25293847C(&v35[v36], &qword_27F5434B8, &qword_252E4BE48);
  }

  else
  {
    v21 = v9;
    v28[1] = v18;
    v34 = v17;
    v23 = v30;
    v22 = v31;
    LOBYTE(v37) = 0;
    v37 = sub_252E37C04();
    v38 = v24;
    v25 = v35;
    sub_252E330C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545958, &qword_252E5D768);
    v39 = 1;
    sub_252D4AAA8();
    sub_252E37C64();
    *(v25 + *(v21 + 20)) = v37;
    LOBYTE(v37) = 2;
    sub_252D4AA0C(&qword_27F545968, type metadata accessor for DisambiguationOption);
    sub_252E37C64();
    (*(v23 + 8))(v32, v33);
    v26 = v29;
    v34(v22, 0, 1, v15);
    sub_252A909F4(v22, v25 + v36, &qword_27F5434B8, &qword_252E4BE48);
    sub_252D4AB5C(v25, v26, type metadata accessor for DisambiguationSnippetModel);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_252D4A958(v25, type metadata accessor for DisambiguationSnippetModel);
  }
}

uint64_t DisambiguationSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545970, &qword_252E5D770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D4AA54();
  sub_252E37F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  LOBYTE(v15) = 0;
  sub_252E37CF4();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v12 = type metadata accessor for DisambiguationSnippetModel(0);
    v15 = *(v3 + *(v12 + 20));
    v14[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545958, &qword_252E5D768);
    sub_252D4ABC4();
    sub_252E37D54();
    v13 = *(v12 + 24);
    LOBYTE(v15) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B8, &qword_252E4BE48);
    sub_252D4AC78();
    sub_252E37D54();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_252D4A8B0(void **a1)
{
  v2 = *(type metadata accessor for DisambiguationOption(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25293467C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_252D4B290(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_252D4A958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_252D4A9B8()
{
  result = qword_27F545938;
  if (!qword_27F545938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545938);
  }

  return result;
}

uint64_t sub_252D4AA0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252D4AA54()
{
  result = qword_27F545950;
  if (!qword_27F545950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545950);
  }

  return result;
}

unint64_t sub_252D4AAA8()
{
  result = qword_27F545960;
  if (!qword_27F545960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545958, &qword_252E5D768);
    sub_252D4AA0C(&qword_27F545968, type metadata accessor for DisambiguationOption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545960);
  }

  return result;
}

uint64_t sub_252D4AB5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_252D4ABC4()
{
  result = qword_27F545978;
  if (!qword_27F545978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545958, &qword_252E5D768);
    sub_252D4AA0C(&qword_27F545980, type metadata accessor for DisambiguationOption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545978);
  }

  return result;
}

unint64_t sub_252D4AC78()
{
  result = qword_27F545988;
  if (!qword_27F545988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5434B8, &qword_252E4BE48);
    sub_252D4AA0C(&qword_27F545980, type metadata accessor for DisambiguationOption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545988);
  }

  return result;
}

void sub_252D4ADE4()
{
  sub_252D4AED8(319, &qword_27F542A90, type metadata accessor for IconConfiguration, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252D4AED8(319, &qword_27F542A88, sub_252A75B60, MEMORY[0x277D63220]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252D4AED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_252D4AF64()
{
  sub_252ACF134();
  if (v0 <= 0x3F)
  {
    sub_252D4AED8(319, &qword_27F5459B0, type metadata accessor for DisambiguationOption, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_252D4AED8(319, &qword_27F5459B8, type metadata accessor for DisambiguationOption, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_252D4B084()
{
  result = qword_27F5459C0;
  if (!qword_27F5459C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5459C0);
  }

  return result;
}

unint64_t sub_252D4B0DC()
{
  result = qword_27F5459C8;
  if (!qword_27F5459C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5459C8);
  }

  return result;
}

unint64_t sub_252D4B134()
{
  result = qword_27F5459D0;
  if (!qword_27F5459D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5459D0);
  }

  return result;
}

unint64_t sub_252D4B18C()
{
  result = qword_27F5459D8;
  if (!qword_27F5459D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5459D8);
  }

  return result;
}

unint64_t sub_252D4B1E4()
{
  result = qword_27F5459E0;
  if (!qword_27F5459E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5459E0);
  }

  return result;
}

unint64_t sub_252D4B23C()
{
  result = qword_27F5459E8;
  if (!qword_27F5459E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5459E8);
  }

  return result;
}

uint64_t sub_252D4B290(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_252E37D74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DisambiguationOption(0);
        v6 = sub_252E372B4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for DisambiguationOption(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_252D4B62C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_252D4B3BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_252D4B3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for DisambiguationOption(0);
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v28 - v13);
  result = MEMORY[0x28223BE20](v12);
  v18 = (&v28 - v17);
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v35 = v19;
    v29 = v20;
    v24 = v19 + v20 * a3;
LABEL_6:
    v33 = v21;
    v34 = a3;
    v31 = v24;
    v32 = v23;
    while (1)
    {
      sub_252D4AB5C(v24, v18, type metadata accessor for DisambiguationOption);
      sub_252D4AB5C(v21, v14, type metadata accessor for DisambiguationOption);
      if (*v18 == *v14 && v18[1] == v14[1])
      {
        sub_252D4A958(v14, type metadata accessor for DisambiguationOption);
        result = sub_252D4A958(v18, type metadata accessor for DisambiguationOption);
LABEL_5:
        a3 = v34 + 1;
        v21 = v33 + v29;
        v23 = v32 - 1;
        v24 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_6;
      }

      v26 = sub_252E37DB4();
      sub_252D4A958(v14, type metadata accessor for DisambiguationOption);
      result = sub_252D4A958(v18, type metadata accessor for DisambiguationOption);
      if ((v26 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_252A6FB70(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_252A6FB70(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_252D4B62C(int64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v124 = a1;
  v138 = type metadata accessor for DisambiguationOption(0);
  v131 = *(v138 - 8);
  v9 = *(v131 + 64);
  v10 = MEMORY[0x28223BE20](v138);
  v127 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v137 = &v118 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v118 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v118 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v135 = (&v118 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v134 = (&v118 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v123 = (&v118 - v25);
  result = MEMORY[0x28223BE20](v24);
  v122 = (&v118 - v27);
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_110:
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_112:
      v139 = v30;
      v113 = *(v30 + 16);
      if (v113 >= 2)
      {
        while (*a3)
        {
          v114 = v30;
          v30 = *(v30 + 16 * v113);
          v115 = v114;
          v116 = *&v114[16 * v113 + 24];
          sub_252D4C044(*a3 + *(v131 + 72) * v30, *a3 + *(v131 + 72) * *&v114[16 * v113 + 16], *a3 + *(v131 + 72) * v116, v5);
          if (v6)
          {
          }

          if (v116 < v30)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = sub_252934564(v115);
          }

          if (v113 - 2 >= *(v115 + 2))
          {
            goto LABEL_136;
          }

          v117 = &v115[16 * v113];
          *v117 = v30;
          v117[1] = v116;
          v139 = v115;
          result = sub_2529344D8(v113 - 1);
          v30 = v139;
          v113 = *(v139 + 16);
          if (v113 <= 1)
          {
          }
        }

        goto LABEL_146;
      }
    }

LABEL_142:
    result = sub_252934564(v30);
    v30 = result;
    goto LABEL_112;
  }

  v118 = a4;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v132 = a3;
  v128 = v19;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v29 + 1 < v28)
    {
      v129 = v28;
      v119 = v30;
      v33 = *a3;
      v34 = *(v131 + 72);
      v35 = v29 + 1;
      v36 = v122;
      sub_252D4AB5C(v33 + v34 * v32, v122, type metadata accessor for DisambiguationOption);
      v133 = v34;
      v37 = v33 + v34 * v31;
      v38 = v123;
      sub_252D4AB5C(v37, v123, type metadata accessor for DisambiguationOption);
      v39 = *v36 == *v38 && v36[1] == v38[1];
      v120 = v6;
      if (v39)
      {
        LODWORD(v130) = 0;
      }

      else
      {
        LODWORD(v130) = sub_252E37DB4();
      }

      sub_252D4A958(v123, type metadata accessor for DisambiguationOption);
      result = sub_252D4A958(v122, type metadata accessor for DisambiguationOption);
      v121 = v31;
      v40 = v31 + 2;
      v41 = v133 * (v31 + 2);
      v42 = v33 + v41;
      v43 = v35;
      v44 = v133 * v35;
      a3 = v33 + v133 * v35;
      do
      {
        v46 = v40;
        v30 = v43;
        v5 = v44;
        v47 = v41;
        v136 = v40;
        if (v40 >= v129)
        {
          break;
        }

        v48 = v16;
        v49 = v134;
        sub_252D4AB5C(v42, v134, type metadata accessor for DisambiguationOption);
        v50 = v135;
        sub_252D4AB5C(a3, v135, type metadata accessor for DisambiguationOption);
        v51 = *v49 == *v50 && v49[1] == v50[1];
        v45 = v51 ? 0 : sub_252E37DB4();
        v16 = v48;
        v6 = type metadata accessor for DisambiguationOption;
        sub_252D4A958(v135, type metadata accessor for DisambiguationOption);
        result = sub_252D4A958(v134, type metadata accessor for DisambiguationOption);
        v46 = v136;
        v40 = v136 + 1;
        v42 += v133;
        a3 += v133;
        v43 = v30 + 1;
        v44 = v5 + v133;
        v41 = v47 + v133;
        v19 = v128;
      }

      while (((v130 ^ v45) & 1) == 0);
      if ((v130 & 1) == 0)
      {
        v32 = v46;
LABEL_36:
        v30 = v119;
        v6 = v120;
        a3 = v132;
        v31 = v121;
        goto LABEL_37;
      }

      if (v46 < v121)
      {
        goto LABEL_139;
      }

      if (v121 < v46)
      {
        v52 = v121 * v133;
        v53 = v121;
        do
        {
          if (v53 != v30)
          {
            v55 = *v132;
            if (!*v132)
            {
              goto LABEL_145;
            }

            sub_252A6FB70(v55 + v52, v127);
            if (v52 < v5 || v55 + v52 >= (v55 + v47))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v52 != v5)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_252A6FB70(v127, v55 + v5);
          }

          ++v53;
          v5 -= v133;
          v47 -= v133;
          v52 += v133;
        }

        while (v53 < v30--);
        v32 = v136;
        goto LABEL_36;
      }

      v32 = v46;
      v30 = v119;
      v6 = v120;
      a3 = v132;
      v31 = v121;
    }

LABEL_37:
    v56 = *(a3 + 8);
    if (v32 < v56)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_138;
      }

      if (v32 - v31 < v118)
      {
        break;
      }
    }

LABEL_59:
    if (v32 < v31)
    {
      goto LABEL_137;
    }

    v136 = v32;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v68 = *(v30 + 16);
    v67 = *(v30 + 24);
    v69 = v68 + 1;
    v29 = v136;
    if (v68 >= v67 >> 1)
    {
      result = sub_252934578((v67 > 1), v68 + 1, 1, v30);
      v29 = v136;
      v30 = result;
    }

    *(v30 + 16) = v69;
    v70 = v30 + 16 * v68;
    *(v70 + 32) = v31;
    *(v70 + 40) = v29;
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_147;
    }

    if (v68)
    {
      while (1)
      {
        a3 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v71 = *(v30 + 32);
          v72 = *(v30 + 40);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_79:
          if (v74)
          {
            goto LABEL_126;
          }

          v87 = (v30 + 16 * v69);
          v89 = *v87;
          v88 = v87[1];
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_129;
          }

          v93 = (v30 + 32 + 16 * a3);
          v95 = *v93;
          v94 = v93[1];
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_133;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              a3 = v69 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v97 = (v30 + 16 * v69);
        v99 = *v97;
        v98 = v97[1];
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_93:
        if (v92)
        {
          goto LABEL_128;
        }

        v100 = v30 + 16 * a3;
        v102 = *(v100 + 32);
        v101 = *(v100 + 40);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_131;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_100:
        v108 = a3 - 1;
        if (a3 - 1 >= v69)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v132)
        {
          goto LABEL_144;
        }

        v109 = v30;
        v110 = v30 + 32;
        v30 = *(v30 + 32 + 16 * v108);
        v111 = *(v110 + 16 * a3 + 8);
        sub_252D4C044(*v132 + *(v131 + 72) * v30, *v132 + *(v131 + 72) * *(v110 + 16 * a3), *v132 + *(v131 + 72) * v111, v5);
        if (v6)
        {
        }

        if (v111 < v30)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_252934564(v109);
        }

        if (v108 >= *(v109 + 2))
        {
          goto LABEL_123;
        }

        v112 = &v109[16 * v108];
        *(v112 + 4) = v30;
        *(v112 + 5) = v111;
        v139 = v109;
        result = sub_2529344D8(a3);
        v30 = v139;
        v69 = *(v139 + 16);
        v29 = v136;
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = v30 + 32 + 16 * v69;
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_124;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_125;
      }

      v82 = (v30 + 16 * v69);
      v84 = *v82;
      v83 = v82[1];
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_127;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_130;
      }

      if (v86 >= v78)
      {
        v104 = (v30 + 32 + 16 * a3);
        v106 = *v104;
        v105 = v104[1];
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_134;
        }

        if (v73 < v107)
        {
          a3 = v69 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v132;
    v28 = v132[1];
    if (v29 >= v28)
    {
      goto LABEL_110;
    }
  }

  v57 = v31 + v118;
  if (__OFADD__(v31, v118))
  {
    goto LABEL_140;
  }

  if (v57 >= v56)
  {
    v57 = *(a3 + 8);
  }

  if (v57 < v31)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v32 == v57)
  {
    goto LABEL_59;
  }

  v119 = v30;
  v120 = v6;
  a3 = *a3;
  v58 = *(v131 + 72);
  v59 = a3 + v58 * (v32 - 1);
  v60 = v31;
  v61 = -v58;
  v121 = v60;
  v62 = v60 - v32;
  v125 = v58;
  v126 = v57;
  v5 = a3 + v32 * v58;
LABEL_48:
  v136 = v32;
  v129 = v5;
  v130 = v62;
  v133 = v59;
  while (1)
  {
    sub_252D4AB5C(v5, v19, type metadata accessor for DisambiguationOption);
    sub_252D4AB5C(v59, v16, type metadata accessor for DisambiguationOption);
    if (*v19 == *v16 && v19[1] == v16[1])
    {
      sub_252D4A958(v16, type metadata accessor for DisambiguationOption);
      sub_252D4A958(v19, type metadata accessor for DisambiguationOption);
LABEL_47:
      v32 = v136 + 1;
      v59 = v133 + v125;
      v62 = v130 - 1;
      v5 = v129 + v125;
      if (v136 + 1 == v126)
      {
        v32 = v126;
        v30 = v119;
        v6 = v120;
        v31 = v121;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v64 = sub_252E37DB4();
    sub_252D4A958(v16, type metadata accessor for DisambiguationOption);
    result = sub_252D4A958(v19, type metadata accessor for DisambiguationOption);
    if ((v64 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!a3)
    {
      break;
    }

    v65 = v137;
    sub_252A6FB70(v5, v137);
    swift_arrayInitWithTakeFrontToBack();
    sub_252A6FB70(v65, v59);
    v59 += v61;
    v5 += v61;
    if (__CFADD__(v62++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_252D4C044(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a4;
  v48 = type metadata accessor for DisambiguationOption(0);
  v7 = *(*(v48 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v48);
  v47 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v46 = (&v41 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v41 - v13);
  result = MEMORY[0x28223BE20](v12);
  v17 = (&v41 - v16);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  v45 = a2;
  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v20 = a3 - v45;
  if (a3 - v45 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_72;
  }

  v21 = (a2 - a1) / v19;
  v52 = a1;
  v51 = v49;
  if (v21 >= v20 / v19)
  {
    v24 = v20 / v19 * v19;
    if (v49 < v45 || v45 + v24 <= v49)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v49 != v45)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = v49 + v24;
    if (v24 >= 1)
    {
      v31 = -v19;
      v32 = v49 + v24;
      v44 = -v19;
      do
      {
        v42 = v30;
        v33 = v45;
        v45 += v31;
        while (1)
        {
          if (v33 <= a1)
          {
            v52 = v33;
            v50 = v42;
            goto LABEL_69;
          }

          v34 = a3;
          v43 = v30;
          v35 = v44;
          v36 = v32 + v44;
          v37 = v46;
          sub_252D4AB5C(v32 + v44, v46, type metadata accessor for DisambiguationOption);
          v38 = v47;
          sub_252D4AB5C(v45, v47, type metadata accessor for DisambiguationOption);
          v39 = *v37 == *v38 && v37[1] == v38[1];
          v40 = v39 ? 0 : sub_252E37DB4();
          a3 = v34 + v35;
          sub_252D4A958(v47, type metadata accessor for DisambiguationOption);
          sub_252D4A958(v46, type metadata accessor for DisambiguationOption);
          if (v40)
          {
            break;
          }

          v30 = v32 + v35;
          if (v34 < v32 || a3 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v34 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v32 += v35;
          if (v36 <= v49)
          {
            v45 = v33;
            goto LABEL_68;
          }
        }

        if (v34 < v33 || a3 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
          v30 = v43;
        }

        else
        {
          v30 = v43;
          if (v34 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v44;
      }

      while (v32 > v49);
    }

LABEL_68:
    v52 = v45;
    v50 = v30;
  }

  else
  {
    v22 = v21 * v19;
    if (v49 < a1 || a1 + v22 <= v49)
    {
      swift_arrayInitWithTakeFrontToBack();
      v23 = v45;
    }

    else
    {
      v23 = v45;
      if (v49 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v25 = v49 + v22;
    v50 = v49 + v22;
    if (v22 >= 1 && v23 < a3)
    {
      while (1)
      {
        sub_252D4AB5C(v23, v17, type metadata accessor for DisambiguationOption);
        sub_252D4AB5C(v49, v14, type metadata accessor for DisambiguationOption);
        if (*v17 == *v14 && v17[1] == v14[1])
        {
          break;
        }

        v28 = sub_252E37DB4();
        sub_252D4A958(v14, type metadata accessor for DisambiguationOption);
        sub_252D4A958(v17, type metadata accessor for DisambiguationOption);
        if ((v28 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < v23 || a1 >= v23 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v23 += v19;
LABEL_38:
        a1 += v19;
        v52 = a1;
        if (v49 >= v25 || v23 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_252D4A958(v14, type metadata accessor for DisambiguationOption);
      sub_252D4A958(v17, type metadata accessor for DisambiguationOption);
LABEL_30:
      v29 = v49 + v19;
      if (a1 < v49 || a1 >= v29)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v49)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v51 = v29;
      v49 = v29;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_252D7BA0C(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_252D4C5DC()
{
  v0 = sub_252E37B74();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252D4C628()
{
  v0 = sub_252E37B74();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_252D4C678(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v27)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = i;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v4, v29);
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v37 = isUniquelyReferenced_nonNull_bridgeObject;
      sub_252D9822C(&v37, &v36);
      if (v2)
      {
        goto LABEL_42;
      }

      v8 = v36;
      v6 = (v36 >> 62);
      if (v36 >> 62)
      {
        v9 = sub_252E378C4();
      }

      else
      {
        v9 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v5 >> 62;
      if (v5 >> 62)
      {
        v26 = sub_252E378C4();
        v12 = v26 + v9;
        if (__OFADD__(v26, v9))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v5;
        }
      }

      else
      {
        v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = v11 + v9;
        if (__OFADD__(v11, v9))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_22;
        }

        v13 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v10)
        {
LABEL_22:
          sub_252E378C4();
          goto LABEL_23;
        }

        v13 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v6)
      {
        v18 = v13;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v13 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        if (((v16 >> 1) - v15) < v9)
        {
          goto LABEL_46;
        }

        v19 = v13 + 8 * v15 + 32;
        v30 = v13;
        if (v6)
        {
          if (v17 < 1)
          {
            goto LABEL_48;
          }

          sub_2529E6488(&qword_27F541868, &qword_27F541840, &qword_252E40AD8);
          for (j = 0; j != v17; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541840, &qword_252E40AD8);
            v21 = sub_2529FBE00(v35, j, v8);
            v23 = *v22;

            (v21)(v35, 0);
            *(v19 + 8 * j) = v23;
          }
        }

        else
        {
          type metadata accessor for Accessory();
          swift_arrayInitWithCopy();
        }

        v2 = 0;
        if (v9 >= 1)
        {
          v24 = *(v30 + 16);
          v7 = __OFADD__(v24, v9);
          v25 = v24 + v9;
          if (v7)
          {
            goto LABEL_47;
          }

          *(v30 + 16) = v25;
        }
      }

      else
      {

        if (v9 > 0)
        {
          goto LABEL_45;
        }
      }

      if (v4 == v31)
      {
        return v5;
      }
    }

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
LABEL_49:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_252E378C4();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_252D4C9E8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject characteristics];
      sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_252E378C4();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_2529E6488(&qword_27F545A08, &qword_27F545A00, &unk_252E5DBB0);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545A00, &unk_252E5DBB0);
              v20 = sub_2529FBD80(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

id static Accessory.isMatterAccessory(_:)(void *a1)
{
  result = [a1 matterNodeID];
  if (result)
  {

    v3 = [a1 matterNodeID];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 unsignedLongLongValue];

      if (!v5)
      {
        return 0;
      }
    }

    v6 = sub_252E37434();
    v8 = v7;
    v9 = *MEMORY[0x277CCE8C8];
    if (v6 == sub_252E36F34() && v8 == v10)
    {
    }

    else
    {
      v12 = sub_252E37DB4();

      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    return ([a1 isBridged] ^ 1);
  }

  return result;
}

uint64_t *sub_252D4CE7C(void *a1)
{
  v61 = sub_252E32E84();
  v57 = *(v61 - 8);
  v3 = *(v57 + 64);
  v4 = MEMORY[0x28223BE20](v61);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v62 = &v54 - v7;
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) = a1;
  v54 = a1;
  v8 = [v54 services];
  sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
  v9 = sub_252E37264();

  v63 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v11 = MEMORY[0x277D84F90];
    v55 = v6;
    v56 = v1;
    if (i)
    {
      v6 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x2530ADF00](v6, v9);
        }

        else
        {
          if (v6 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v12 = *(v9 + 8 * v6 + 32);
        }

        v13 = v12;
        v14 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ([v12 isUserInteractive])
        {
          v1 = &v63;
          sub_252E37A94();
          v15 = *(v63 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v6;
        if (v14 == i)
        {
          v16 = v63;
          v6 = v55;
          v1 = v56;
          v11 = MEMORY[0x277D84F90];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v16 = MEMORY[0x277D84F90];
LABEL_16:

    v63 = v11;
    if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x4000000000000000) == 0)
    {
      v17 = *(v16 + 16);
      if (!v17)
      {
        break;
      }

      goto LABEL_19;
    }

    v17 = sub_252E378C4();
    if (!v17)
    {
      break;
    }

LABEL_19:
    v6 = 0;
    v59 = v16;
    v60 = v16 & 0xC000000000000001;
    v58 = (v57 + 32);
    while (1)
    {
      if (v60)
      {
        v18 = MEMORY[0x2530ADF00](v6, v16);
      }

      else
      {
        if (v6 >= *(v16 + 16))
        {
          goto LABEL_39;
        }

        v18 = *(v16 + 8 * v6 + 32);
      }

      v19 = v18;
      v20 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v21 = type metadata accessor for Service();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      v24 = swift_allocObject();
      *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v19;
      v25 = v19;
      v26 = [v25 uniqueIdentifier];
      sub_252E32E64();

      v27 = [v25 name];
      v28 = sub_252E36F34();
      v30 = v29;

      v31 = [v25 assistantIdentifier];
      if (v31)
      {
        v9 = v31;
        v32 = sub_252E36F34();
        v34 = v33;
      }

      else
      {

        v32 = 0;
        v34 = 0;
      }

      v35 = (*v58)(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v62, v61);
      v36 = (v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v36 = v28;
      v36[1] = v30;
      *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
      v37 = (v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v37 = v32;
      v37[1] = v34;
      v1 = &v63;
      MEMORY[0x2530AD700](v35);
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v6;
      v16 = v59;
      if (v20 == v17)
      {
        v11 = v63;
        v6 = v55;
        v1 = v56;
        goto LABEL_32;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_32:

  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services) = v11;
  v39 = v54;
  v40 = [v54 uniqueIdentifier];
  sub_252E32E64();

  v41 = [v39 name];
  v42 = sub_252E36F34();
  v44 = v43;

  v45 = [v39 assistantIdentifier];
  if (v45)
  {
    v46 = v45;
    v47 = v39;
    v48 = sub_252E36F34();
    v50 = v49;
  }

  else
  {

    v48 = 0;
    v50 = 0;
  }

  (*(v57 + 32))(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v6, v61);
  v51 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  *v51 = v42;
  v51[1] = v44;
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
  v52 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
  *v52 = v48;
  v52[1] = v50;
  return v1;
}

void *sub_252D4D3EC(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_252D4D438(a1);
}

void *sub_252D4D438(uint64_t *a1)
{
  v3 = sub_252E32E84();
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v58 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v16 = v58;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v16);
    type metadata accessor for Accessory();
    v17 = *(*v62 + 48);
    v18 = *(*v62 + 52);
    swift_deallocPartialClassInstance();
    return v14;
  }

  v15 = v8;
  LOBYTE(v59[0]) = 0;
  sub_252950ADC(&qword_27F540498);
  sub_252E37C64();
  v20 = v3;
  LOBYTE(v60) = 1;
  sub_252950A60();
  sub_252E37C64();
  v21 = v58;
  v22 = v6;
  v23 = v59[0];
  LOBYTE(v59[0]) = 2;
  v54 = sub_252E37C04();
  v55 = v23;
  v56 = v24;
  LOBYTE(v59[0]) = 3;
  v25 = sub_252E37BA4();
  v48 = v15;
  v50 = v11;
  v52 = v26;
  v53 = v20;
  v27 = v25;
  type metadata accessor for HomeStore();
  v28 = static HomeStore.shared.getter();
  v29 = sub_2529D9D50();

  MEMORY[0x28223BE20](v30);
  v32 = v54;
  v31 = v55;
  *(&v46 - 6) = v22;
  *(&v46 - 5) = v32;
  *(&v46 - 4) = v56;
  *(&v46 - 3) = v27;
  v47 = v27;
  *(&v46 - 2) = v52;
  *(&v46 - 1) = v31;
  v33 = sub_2529A3DE8(sub_252CDD62C, (&v46 - 8), v29);
  v49 = 0;

  v51 = v33;
  if (!v33)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v40 = sub_252E36AD4();
    v41 = __swift_project_value_buffer(v40, qword_27F544CB8);
    sub_252CC4050(0xD000000000000026, 0x8000000252E97840, 0xD00000000000006FLL, 0x8000000252E977A0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 55);
    strcpy(v59, "identifier: ");
    BYTE5(v59[1]) = 0;
    HIWORD(v59[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8);
    v42 = sub_252E37D94();
    MEMORY[0x2530AD570](v42);

    sub_252CC4050(v59[0], v59[1], 0xD00000000000006FLL, 0x8000000252E977A0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 56);

    v59[0] = 0x203A656D616ELL;
    v59[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v54, v56);

    sub_252CC4050(v59[0], v59[1], 0xD00000000000006FLL, 0x8000000252E977A0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 57);

    v59[0] = 0;
    v59[1] = 0xE000000000000000;
    sub_252E379F4();

    v59[0] = 0xD000000000000015;
    v59[1] = 0x8000000252E6AA20;
    v60 = v47;
    v61 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v43 = sub_252E36F94();
    MEMORY[0x2530AD570](v43);

    sub_252CC4050(v59[0], v59[1], 0xD00000000000006FLL, 0x8000000252E977A0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 58);

    strcpy(v59, "entityType: ");
    BYTE5(v59[1]) = 0;
    HIWORD(v59[1]) = -5120;
    v60 = v55;
    v44 = sub_252E36F94();
    MEMORY[0x2530AD570](v44);

    v14 = v41;
    sub_252CC4050(v59[0], v59[1], 0xD00000000000006FLL, 0x8000000252E977A0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 59);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v48 + 8))(v50, v7);
    (*(v57 + 8))(v22, v53);
    v16 = v21;
    goto LABEL_4;
  }

  v34 = v51;

  v35 = *(v34 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);
  v14 = v62;
  *(v62 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) = v35;
  v36 = *(v34 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  v37 = v35;

  *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services) = v36;
  sub_252929E74(v21, v59);
  v38 = v49;
  v39 = Entity.init(from:)(v59);
  if (v38)
  {
    (*(v15 + 8))(v50, v7);

    (*(v57 + 8))(v22, v53);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v14 = v39;
    (*(v15 + 8))(v50, v7);

    v45 = *(v57 + 8);

    v45(v22, v53);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v14;
}

uint64_t sub_252D4DCA4()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) category];
  v3 = [v2 categoryType];

  v4 = sub_252E36F34();
  v6 = v5;

  if (qword_27F53F8C0 != -1)
  {
    swift_once();
  }

  v7 = off_27F546238;
  if (*(off_27F546238 + 2) && (v8 = sub_252A44A10(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(v7[7] + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  v12 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_9;
    }

LABEL_18:
    v14 = 0;
    v15 = 1;
    if (v10 == 37)
    {
LABEL_20:
      if (!v15)
      {
LABEL_23:
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v17 = sub_252E36AD4();
        __swift_project_value_buffer(v17, qword_27F544CB8);
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E976F0);
        v18 = HomeDeviceType.description.getter(v10);
        MEMORY[0x2530AD570](v18);

        MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E97730);
        v19 = HomeDeviceType.description.getter(v14);
        MEMORY[0x2530AD570](v19);

        MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E97770);
        MEMORY[0x2530AD570](*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
        sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E977A0);

        return v14;
      }

      if (sub_252D4DFC8())
      {
        v14 = sub_252CD941C();

        goto LABEL_23;
      }

      return v10;
    }

LABEL_19:
    if (v10)
    {
      return v10;
    }

    goto LABEL_20;
  }

  if (v12 < 0)
  {
    v16 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  }

  if (sub_252E378C4() != 1)
  {
    goto LABEL_18;
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](0, v12);
LABEL_12:
    v14 = sub_252CD941C();

    v15 = 0;
    if (v10 == 37)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_252D4DFC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  if (v1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2530ADF00](v3, v1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      if ([*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) isPrimaryService])
      {
        return v4;
      }

      ++v3;
      if (v5 == i)
      {
        return 0;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v4 = *(v1 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return 0;
}

uint64_t sub_252D4E0D0()
{
  v84 = sub_252E32E84();
  v1 = *(v84 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v84);
  v83 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v74 - v5;
  v75 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);
  v7 = [v75 services];
  v74[1] = sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
  v8 = sub_252E37264();

  if (v8 >> 62)
  {
    goto LABEL_25;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v9; i = v1)
  {
    v10 = 0;
    v81 = v8 & 0xFFFFFFFFFFFFFF8;
    v82 = v8 & 0xC000000000000001;
    v77 = (v1 + 8);
    v78 = (v1 + 32);
    v11 = MEMORY[0x277D84F90];
    v79 = v9;
    v80 = v8;
    while (1)
    {
      if (v82)
      {
        v12 = MEMORY[0x2530ADF00](v10, v8);
      }

      else
      {
        if (v10 >= *(v81 + 16))
        {
          goto LABEL_24;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v1 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = type metadata accessor for Service();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      v17 = swift_allocObject();
      v18 = v13;
      v19 = [v18 uniqueIdentifier];
      sub_252E32E64();

      v20 = [v18 assistantIdentifier];
      if (v20)
      {
        sub_252E36F34();
      }

      v21 = v6;
      (*v78)(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v6, v84);
      v22 = [v18 serviceType];
      v23 = sub_252E36F34();
      v25 = v24;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v26 = off_27F546230;
      if (*(off_27F546230 + 2) && (v27 = sub_252A44A10(v23, v25), (v28 & 1) != 0))
      {
        v29 = *(v26[7] + 8 * v27);
      }

      else
      {
        v29 = 0;
      }

      swift_setDeallocating();
      (*v77)(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v84);

      v30 = *(*v17 + 48);
      v31 = *(*v17 + 52);
      swift_deallocClassInstance();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2529F7B8C(0, *(v11 + 2) + 1, 1, v11);
      }

      v32 = v79;
      v34 = *(v11 + 2);
      v33 = *(v11 + 3);
      if (v34 >= v33 >> 1)
      {
        v11 = sub_2529F7B8C((v33 > 1), v34 + 1, 1, v11);
      }

      *(v11 + 2) = v34 + 1;
      *&v11[8 * v34 + 32] = v29;
      ++v10;
      v6 = v21;
      v8 = v80;
      if (v1 == v32)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v9 = sub_252E378C4();
  }

  v11 = MEMORY[0x277D84F90];
LABEL_27:

  v78 = sub_252C759A0(v11);

  v35 = [v75 services];
  v36 = sub_252E37264();

  if (!(v36 >> 62))
  {
    v82 = v36 & 0xFFFFFFFFFFFFFF8;
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v38 = i;
    if (v37)
    {
      goto LABEL_29;
    }

LABEL_62:
    v79 = MEMORY[0x277D84F90];
    goto LABEL_63;
  }

LABEL_61:
  v82 = v36 & 0xFFFFFFFFFFFFFF8;
  v37 = sub_252E378C4();
  v38 = i;
  if (!v37)
  {
    goto LABEL_62;
  }

LABEL_29:
  v39 = 0;
  v80 = (v38 + 32);
  v81 = v36 & 0xC000000000000001;
  v40 = (v38 + 8);
  v79 = MEMORY[0x277D84F90];
  v77 = v36;
  do
  {
    v41 = v39;
    while (1)
    {
      if (v81)
      {
        v42 = MEMORY[0x2530ADF00](v41, v36);
      }

      else
      {
        if (v41 >= *(v82 + 16))
        {
          goto LABEL_60;
        }

        v42 = *(v36 + 8 * v41 + 32);
      }

      v43 = v42;
      v39 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v44 = type metadata accessor for Service();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      v47 = swift_allocObject();
      v48 = v43;
      v49 = [v48 uniqueIdentifier];
      sub_252E32E64();

      v50 = [v48 assistantIdentifier];
      if (v50)
      {
        sub_252E36F34();
      }

      (*v80)(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v83, v84);
      v51 = [v48 serviceSubtype];
      if (v51)
      {
        break;
      }

      v52 = [v48 associatedServiceType];
      if (v52)
      {
        v61 = v52;
        v62 = sub_252E36F34();
        v58 = v63;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v59 = off_27F546230;
        if (!*(off_27F546230 + 2))
        {
          goto LABEL_52;
        }

        v60 = v62;
        goto LABEL_50;
      }

      swift_setDeallocating();
      (*v40)(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v84);

      v53 = *(*v47 + 48);
      v54 = *(*v47 + 52);
      swift_deallocClassInstance();
      ++v41;
      if (v39 == v37)
      {
        goto LABEL_63;
      }
    }

    v55 = v51;
    v56 = sub_252E36F34();
    v58 = v57;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v59 = off_27F546230;
    if (!*(off_27F546230 + 2))
    {
      goto LABEL_52;
    }

    v60 = v56;
LABEL_50:
    v64 = sub_252A44A10(v60, v58);
    if (v65)
    {
      v66 = *(v59[7] + 8 * v64);
      goto LABEL_53;
    }

LABEL_52:
    v66 = 0;
LABEL_53:

    swift_setDeallocating();
    (*v40)(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v84);

    v67 = *(*v47 + 48);
    v68 = *(*v47 + 52);
    swift_deallocClassInstance();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_2529F7B8C(0, *(v79 + 2) + 1, 1, v79);
    }

    v70 = *(v79 + 2);
    v69 = *(v79 + 3);
    if (v70 >= v69 >> 1)
    {
      v79 = sub_2529F7B8C((v69 > 1), v70 + 1, 1, v79);
    }

    v71 = v79;
    *(v79 + 2) = v70 + 1;
    *&v71[8 * v70 + 32] = v66;
    v36 = v77;
  }

  while (v39 != v37);
LABEL_63:

  v72 = sub_252C759A0(v79);

  return sub_2529F2308(v72, v78);
}

uint64_t sub_252D4E984()
{
  v1 = sub_252E32E84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v28 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifiersForBridgedAccessories];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    v8 = sub_252E37264();

    if (*(v8 + 16))
    {
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      v9 = sub_252E36AD4();
      __swift_project_value_buffer(v9, qword_27F544CB8);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_252E379F4();

      v29 = 0xD000000000000021;
      v30 = 0x8000000252E97920;
      v10 = MEMORY[0x2530AD730](v8, v1);
      MEMORY[0x2530AD570](v10);

      sub_252CC3D90(v29, v30, 0xD00000000000006FLL, 0x8000000252E977A0);

      v11 = *(v8 + 16);
      if (v11)
      {
        v29 = v6;
        sub_2529AA3A0(0, v11, 0);
        v6 = v29;
        v13 = *(v2 + 16);
        v12 = v2 + 16;
        v14 = *(v12 + 64);
        v24[1] = v8;
        v15 = v8 + ((v14 + 32) & ~v14);
        v25 = *(v12 + 56);
        v26 = v13;
        v27 = v12;
        do
        {
          v16 = v28;
          v26(v28, v15, v1);
          v17 = sub_252E32E24();
          v19 = v18;
          (*(v12 - 8))(v16, v1);
          v29 = v6;
          v21 = *(v6 + 16);
          v20 = *(v6 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_2529AA3A0((v20 > 1), v21 + 1, 1);
            v6 = v29;
          }

          *(v6 + 16) = v21 + 1;
          v22 = v6 + 16 * v21;
          *(v22 + 32) = v17;
          *(v22 + 40) = v19;
          v15 += v25;
          --v11;
        }

        while (v11);
      }
    }
  }

  return v6;
}

uint64_t sub_252D4EC70(uint64_t *a1)
{
  v3 = sub_252E32E84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) profiles];
  sub_25293F638(0, &qword_27F540170, 0x277CD1760);
  v9 = sub_252E37264();

  v20 = v4;
  if (v9 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2530ADF00](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = *a1;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v16 = [v13 uniqueIdentifier];

        sub_252E32E64();
        v17 = sub_252E32E24();
        (*(v20 + 8))(v7, v3);
        return v17;
      }

      ++v11;
      if (v14 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_252D4EEA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_252E3C290;
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);
  v3 = [v2 name];
  v4 = sub_252E36F34();
  v6 = v5;

  *(v1 + 32) = v4;
  *(v1 + 40) = v6;
  v25 = v1;
  v7 = [v2 services];
  sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
  v8 = sub_252E37264();

  if (v8 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v10 = 0;
    v26 = v8 & 0xC000000000000001;
    v11 = v8 & 0xFFFFFFFFFFFFFF8;
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v26)
      {
        v13 = MEMORY[0x2530ADF00](v10, v8);
      }

      else
      {
        if (v10 >= *(v11 + 16))
        {
          goto LABEL_16;
        }

        v13 = *(v8 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v16 = v8;
      v17 = [v13 name];
      v18 = sub_252E36F34();
      v20 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2529F7A80(0, *(v12 + 2) + 1, 1, v12);
      }

      v22 = *(v12 + 2);
      v21 = *(v12 + 3);
      if (v22 >= v21 >> 1)
      {
        v12 = sub_2529F7A80((v21 > 1), v22 + 1, 1, v12);
      }

      *(v12 + 2) = v22 + 1;
      v23 = &v12[16 * v22];
      *(v23 + 4) = v18;
      *(v23 + 5) = v20;
      ++v10;
      v8 = v16;
      if (v15 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_19:

  sub_25297A744(v12);
  return v25;
}

char *sub_252D4F104()
{
  v1 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  if ((*(*v0 + 256))() == 41)
  {
    v1 = sub_2529F7A6C(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_2529F7A6C((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    *&v1[8 * v3 + 32] = 27;
    v28 = v1;
  }

  if (sub_252D51FE0())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_2529F7A6C(0, *(v1 + 2) + 1, 1, v1);
    }

    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    if (v5 >= v4 >> 1)
    {
      v1 = sub_2529F7A6C((v4 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 2) = v5 + 1;
    *&v1[8 * v5 + 32] = 66;
    v28 = v1;
  }

  v6 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) services];
  sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
  v7 = sub_252E37264();

  v8 = sub_252D4C9E8(v7);

  if (v8 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2530ADF00](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = [v12 characteristicType];
      v16 = sub_252E36F34();
      v18 = v17;

      if (qword_27F53F8D0 != -1)
      {
        swift_once();
      }

      v19 = off_27F546248;
      if (*(off_27F546248 + 2))
      {
        v20 = sub_252A44A10(v16, v18);
        if (v21)
        {
          goto LABEL_30;
        }
      }

      if (qword_27F53F8E0 != -1)
      {
        swift_once();
      }

      v19 = off_27F546258;
      if (*(off_27F546258 + 2))
      {
        v20 = sub_252A44A10(v16, v18);
        if (v22)
        {
          goto LABEL_30;
        }
      }

      if (qword_27F53F8C8 != -1)
      {
        swift_once();
      }

      v19 = off_27F546240;
      if (*(off_27F546240 + 2) && (v20 = sub_252A44A10(v16, v18), (v23 & 1) != 0))
      {
LABEL_30:
        v24 = *(v19[7] + 8 * v20);
      }

      else
      {
        v24 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2529F7A6C(0, *(v11 + 2) + 1, 1, v11);
      }

      v26 = *(v11 + 2);
      v25 = *(v11 + 3);
      if (v26 >= v25 >> 1)
      {
        v11 = sub_2529F7A6C((v25 > 1), v26 + 1, 1, v11);
      }

      *(v11 + 2) = v26 + 1;
      *&v11[8 * v26 + 32] = v24;
      ++v10;
      if (v14 == i)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_43:

  sub_25297A864(v11);
  return v28;
}

char *sub_252D4F520()
{
  if ((*(*v0 + 256))() == 41)
  {
    return &unk_2864A1BB0;
  }

  v2 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) services];
  sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
  v3 = sub_252E37264();

  v4 = sub_252D4C9E8(v3);

  if (v4 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    v1 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 characteristicType];
      v11 = sub_252E36F34();
      v13 = v12;

      if (qword_27F53F8E0 != -1)
      {
        swift_once();
      }

      v14 = off_27F546258;
      if (*(off_27F546258 + 2) && (v15 = sub_252A44A10(v11, v13), (v16 & 1) != 0))
      {
        v17 = *(v14[7] + 8 * v15);
      }

      else
      {
        v17 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_2529F7A6C(0, *(v1 + 2) + 1, 1, v1);
      }

      v19 = *(v1 + 2);
      v18 = *(v1 + 3);
      if (v19 >= v18 >> 1)
      {
        v1 = sub_2529F7A6C((v18 > 1), v19 + 1, 1, v1);
      }

      *(v1 + 2) = v19 + 1;
      *&v1[8 * v19 + 32] = v17;
      ++v6;
      if (v9 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v1 = MEMORY[0x277D84F90];
LABEL_27:

  return v1;
}

char *sub_252D4F7B8()
{
  v1 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  if ((*(*v0 + 256))() == 41)
  {
    v1 = sub_2529F7A6C(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_2529F7A6C((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    *&v1[8 * v3 + 32] = 27;
    v33 = v1;
  }

  if (sub_252D51FE0())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_2529F7A6C(0, *(v1 + 2) + 1, 1, v1);
    }

    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    if (v5 >= v4 >> 1)
    {
      v1 = sub_2529F7A6C((v4 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 2) = v5 + 1;
    *&v1[8 * v5 + 32] = 66;
    v33 = v1;
  }

  v6 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) services];
  sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
  v7 = sub_252E37264();

  v8 = sub_252D4C9E8(v7);

  if (v8 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v10 = 0;
    v30 = v8 & 0xFFFFFFFFFFFFFF8;
    v31 = v8 & 0xC000000000000001;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v31)
      {
        v12 = MEMORY[0x2530ADF00](v10, v8);
      }

      else
      {
        if (v10 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = [v12 characteristicType];
      v16 = sub_252E36F34();
      v18 = v17;

      if (qword_27F53F8E0 != -1)
      {
        v19 = swift_once();
      }

      v20 = off_27F546258;
      if (*(off_27F546258 + 2))
      {
        v19 = sub_252A44A10(v16, v18);
        if (v21)
        {
          goto LABEL_33;
        }
      }

      if (qword_27F53F8A8 != -1)
      {
        v19 = swift_once();
      }

      v32[0] = v16;
      v32[1] = v18;
      MEMORY[0x28223BE20](v19);
      v29[2] = v32;
      if (sub_2529ED970(sub_25296A69C, v29, v22))
      {
        goto LABEL_34;
      }

      if (qword_27F53F8D0 != -1)
      {
        swift_once();
      }

      v20 = off_27F546248;
      if (*(off_27F546248 + 2))
      {
        v19 = sub_252A44A10(v16, v18);
        if (v23)
        {
          goto LABEL_33;
        }
      }

      if (qword_27F53F8C8 != -1)
      {
        swift_once();
      }

      v20 = off_27F546240;
      if (*(off_27F546240 + 2) && (v19 = sub_252A44A10(v16, v18), (v24 & 1) != 0))
      {
LABEL_33:
        v25 = *(v20[7] + 8 * v19);
      }

      else
      {
LABEL_34:
        v25 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2529F7A6C(0, *(v11 + 2) + 1, 1, v11);
      }

      v27 = *(v11 + 2);
      v26 = *(v11 + 3);
      if (v27 >= v26 >> 1)
      {
        v11 = sub_2529F7A6C((v26 > 1), v27 + 1, 1, v11);
      }

      *(v11 + 2) = v27 + 1;
      *&v11[8 * v27 + 32] = v25;
      ++v10;
      if (v14 == i)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_46:

  sub_25297A864(v11);
  return v33;
}