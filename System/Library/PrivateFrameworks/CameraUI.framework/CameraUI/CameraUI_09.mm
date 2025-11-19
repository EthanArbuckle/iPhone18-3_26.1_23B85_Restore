uint64_t sub_1A39599FC(char *a1)
{
  v2 = sub_1A3A2F2A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v62 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = &unk_1F1653EC0;
  sub_1A3957724(&v69);
  v61 = v3;
  v63 = v2;
  v5 = v69;
  v6 = *(v69 + 2);
  if (v6)
  {
    v60 = a1;
    v77 = MEMORY[0x1E69E7CC0];
    sub_1A39569C0(0, v6, 0);
    v7 = v77;
    v8 = objc_opt_self();
    v64 = 0x80000001A3AA4BD0;
    v65 = v8;
    v9 = 32;
    v66 = v5;
    do
    {
      v68 = v6;
      v10 = v5[v9];
      LODWORD(v67) = v10 < 0x14;
      v75 = sub_1A3955768(v10);
      v76 = v11;
      MEMORY[0x1A58F7770](8250, 0xE200000000000000);
      v12 = sub_1A3953AD8(v10);
      v14 = v13;
      sub_1A39598B0(1, v12, v13, v15);

      v16 = sub_1A3A31DF0();
      v18 = v17;

      v69 = 0xD000000000000017;
      v70 = v64;
      MEMORY[0x1A58F7770](v16, v18);

      v20 = v69;
      v19 = v70;
      v22 = sub_1A395994C(1uLL, v12, v14, v21);
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v73 = v20;
      v74 = v19;
      v69 = v22;
      v70 = v24;
      v71 = v26;
      v72 = v28;
      sub_1A38E849C();
      sub_1A3A318E0();

      v29 = sub_1A3A31810();

      v30 = [v65 BOOLInCameraDomainForKey:v29 defaultValue:v67 & (0xF11E2u >> v10)];

      if (v30)
      {
        v31 = 1702195828;
      }

      else
      {
        v31 = 0x65736C6166;
      }

      if (v30)
      {
        v32 = 0xE400000000000000;
      }

      else
      {
        v32 = 0xE500000000000000;
      }

      MEMORY[0x1A58F7770](v31, v32);

      v33 = v75;
      v34 = v76;
      v77 = v7;
      v36 = *(v7 + 16);
      v35 = *(v7 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1A39569C0((v35 > 1), v36 + 1, 1);
        v7 = v77;
      }

      *(v7 + 16) = v36 + 1;
      v37 = v7 + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v34;
      ++v9;
      v6 = v68 - 1;
      v5 = v66;
    }

    while (v68 != 1);

    a1 = v60;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v69 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2E0);
  sub_1A38A08F8(&qword_1ED9981E8, &qword_1EB0FF2E0);
  v67 = sub_1A3A31770();
  v68 = v38;

  swift_getKeyPath();
  v69 = a1;
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  v39 = objc_opt_self();
  v40 = [v39 solCamShutterButtonCenterMaterialEnabled];
  v41 = 1702195828;
  if (!v40)
  {
    v41 = 0x65736C6166;
  }

  v66 = v41;
  v42 = 0xE500000000000000;
  if (v40)
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  swift_getKeyPath();
  v69 = a1;
  sub_1A3A2F080();

  v44 = [v39 solCamSelectedZoomCenteredEnabled];
  if (v44)
  {
    v45 = 1702195828;
  }

  else
  {
    v45 = 0x65736C6166;
  }

  if (v44)
  {
    v42 = 0xE400000000000000;
  }

  if (qword_1ED996460 != -1)
  {
    swift_once();
  }

  v46 = v63;
  v47 = __swift_project_value_buffer(v63, qword_1ED99D868);
  v49 = v61;
  v48 = v62;
  (*(v61 + 16))(v62, v47, v46);
  v50 = v68;
  sub_1A3A2EA50();
  sub_1A3A2EA50();
  sub_1A3A2EA50();
  v51 = sub_1A3A2F280();
  v52 = sub_1A3A31C10();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v69 = v54;
    *v53 = 136446722;
    v55 = v49;
    v56 = sub_1A39ABC10(v67, v50, &v69);

    *(v53 + 4) = v56;
    *(v53 + 12) = 2082;
    v57 = sub_1A39ABC10(v66, v43, &v69);

    *(v53 + 14) = v57;
    *(v53 + 22) = 2082;
    v58 = sub_1A39ABC10(v45, v42, &v69);

    *(v53 + 24) = v58;
    _os_log_impl(&dword_1A3640000, v51, v52, "CameraUI Settings (Switches):\n%{public}s | shutter-center-material: %{public}s | selected-zoom-centered: %{public}s", v53, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1A58FAC10](v54, -1, -1);
    MEMORY[0x1A58FAC10](v53, -1, -1);

    return (*(v55 + 8))(v62, v63);
  }

  else
  {

    return (*(v49 + 8))(v48, v46);
  }
}

uint64_t sub_1A395A0F8(uint64_t a1, uint64_t a2)
{
  v3 = 0x6D6574737953;
  v4 = byte_1F1653F18;
  v5 = 0xE600000000000000;
  v6 = 0x74614D726F6C6F43;
  v7 = 0xEB00000000786972;
  v8 = 0x6F43656C706D6953;
  v9 = 0xEB00000000726F6CLL;
  if (byte_1F1653F18 != 4)
  {
    v8 = 1852401748;
    v9 = 0xE400000000000000;
  }

  if (byte_1F1653F18 != 3)
  {
    v6 = v8;
    v7 = v9;
  }

  v10 = 0x6C476172656D6143;
  v11 = 0xEB00000000737361;
  if (byte_1F1653F18 != 1)
  {
    v10 = 0x6C42656C706D6953;
    v11 = 0xEA00000000007275;
  }

  if (byte_1F1653F18)
  {
    v5 = v11;
  }

  else
  {
    v10 = 0x6D6574737953;
  }

  if (byte_1F1653F18 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (byte_1F1653F18 <= 2u)
  {
    v13 = v5;
  }

  else
  {
    v13 = v7;
  }

  if (v12 == a1 && v13 == a2)
  {
    goto LABEL_18;
  }

  v15 = sub_1A3A321C0();

  if (v15)
  {
    return v4;
  }

  v4 = byte_1F1653F19;
  if (byte_1F1653F19 > 2u)
  {
    if (byte_1F1653F19 == 3)
    {
      v17 = 0x74614D726F6C6F43;
      v18 = 7891314;
    }

    else
    {
      if (byte_1F1653F19 != 4)
      {
        v19 = 0xE400000000000000;
        if (a1 != 1852401748)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v17 = 0x6F43656C706D6953;
      v18 = 7499628;
    }

LABEL_31:
    v19 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v17 != a1)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (byte_1F1653F19)
  {
    if (byte_1F1653F19 != 1)
    {
      v19 = 0xEA00000000007275;
      if (a1 != 0x6C42656C706D6953)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v17 = 0x6C476172656D6143;
    v18 = 7566177;
    goto LABEL_31;
  }

  v19 = 0xE600000000000000;
  if (a1 != 0x6D6574737953)
  {
    goto LABEL_37;
  }

LABEL_36:
  if (v19 == a2)
  {
LABEL_18:

    return v4;
  }

LABEL_37:
  v20 = sub_1A3A321C0();

  if (v20)
  {
    return v4;
  }

  v4 = byte_1F1653F1A;
  if (byte_1F1653F1A > 2u)
  {
    if (byte_1F1653F1A == 3)
    {
      v21 = 0x74614D726F6C6F43;
      v22 = 0xEB00000000786972;
    }

    else if (byte_1F1653F1A == 4)
    {
      v21 = 0x6F43656C706D6953;
      v22 = 0xEB00000000726F6CLL;
    }

    else
    {
      v22 = 0xE400000000000000;
      v21 = 1852401748;
    }
  }

  else if (byte_1F1653F1A)
  {
    if (byte_1F1653F1A == 1)
    {
      v21 = 0x6C476172656D6143;
      v22 = 0xEB00000000737361;
    }

    else
    {
      v21 = 0x6C42656C706D6953;
      v22 = 0xEA00000000007275;
    }
  }

  else
  {
    v22 = 0xE600000000000000;
    v21 = 0x6D6574737953;
  }

  if (v21 == a1 && v22 == a2)
  {
    goto LABEL_18;
  }

  v23 = sub_1A3A321C0();

  if (v23)
  {
    return v4;
  }

  v4 = byte_1F1653F1B;
  if (byte_1F1653F1B > 2u)
  {
    if (byte_1F1653F1B == 3)
    {
      v24 = 0x74614D726F6C6F43;
      v25 = 0xEB00000000786972;
    }

    else if (byte_1F1653F1B == 4)
    {
      v24 = 0x6F43656C706D6953;
      v25 = 0xEB00000000726F6CLL;
    }

    else
    {
      v25 = 0xE400000000000000;
      v24 = 1852401748;
    }
  }

  else if (byte_1F1653F1B)
  {
    if (byte_1F1653F1B == 1)
    {
      v24 = 0x6C476172656D6143;
      v25 = 0xEB00000000737361;
    }

    else
    {
      v24 = 0x6C42656C706D6953;
      v25 = 0xEA00000000007275;
    }
  }

  else
  {
    v25 = 0xE600000000000000;
    v24 = 0x6D6574737953;
  }

  if (v24 == a1 && v25 == a2)
  {
    goto LABEL_18;
  }

  v26 = sub_1A3A321C0();

  if (v26)
  {
    return v4;
  }

  v4 = byte_1F1653F1C;
  if (byte_1F1653F1C > 2u)
  {
    if (byte_1F1653F1C == 3)
    {
      v27 = 0x74614D726F6C6F43;
      v28 = 0xEB00000000786972;
    }

    else if (byte_1F1653F1C == 4)
    {
      v27 = 0x6F43656C706D6953;
      v28 = 0xEB00000000726F6CLL;
    }

    else
    {
      v28 = 0xE400000000000000;
      v27 = 1852401748;
    }
  }

  else if (byte_1F1653F1C)
  {
    if (byte_1F1653F1C == 1)
    {
      v27 = 0x6C476172656D6143;
      v28 = 0xEB00000000737361;
    }

    else
    {
      v27 = 0x6C42656C706D6953;
      v28 = 0xEA00000000007275;
    }
  }

  else
  {
    v28 = 0xE600000000000000;
    v27 = 0x6D6574737953;
  }

  if (v27 == a1 && v28 == a2)
  {
    goto LABEL_18;
  }

  v29 = sub_1A3A321C0();

  if (v29)
  {
    return v4;
  }

  v4 = byte_1F1653F1D;
  if (byte_1F1653F1D > 2u)
  {
    if (byte_1F1653F1D == 3)
    {
      v3 = 0x74614D726F6C6F43;
      v30 = 0xEB00000000786972;
    }

    else if (byte_1F1653F1D == 4)
    {
      v3 = 0x6F43656C706D6953;
      v30 = 0xEB00000000726F6CLL;
    }

    else
    {
      v30 = 0xE400000000000000;
      v3 = 1852401748;
    }
  }

  else if (byte_1F1653F1D)
  {
    if (byte_1F1653F1D == 1)
    {
      v3 = 0x6C476172656D6143;
      v30 = 0xEB00000000737361;
    }

    else
    {
      v3 = 0x6C42656C706D6953;
      v30 = 0xEA00000000007275;
    }
  }

  else
  {
    v30 = 0xE600000000000000;
  }

  if (v3 == a1 && v30 == a2)
  {
    goto LABEL_18;
  }

  v31 = sub_1A3A321C0();

  if (v31)
  {
    return v4;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1A395A71C(uint64_t a1)
{
  v2 = sub_1A3A2F2A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v41 = a1;
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  v6 = [objc_opt_self() solCamGroupingType];
  LOBYTE(v41) = sub_1A3908FE8(v6);
  v7 = sub_1A3A31880();
  v9 = v8;
  swift_getKeyPath();
  v41 = a1;
  sub_1A3A2F080();

  v10 = sub_1A39C3974();
  v40 = v7;
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = sub_1A395A0F8(v10, v11);

  if (v12 <= 2u)
  {
    if (!v12)
    {
      v14 = 0xE600000000000000;
      v39 = 0x6D6574737953;
      goto LABEL_15;
    }

    if (v12 != 1)
    {
      v39 = 0x4220656C706D6953;
      v14 = 0xEB0000000072756CLL;
      goto LABEL_15;
    }

LABEL_14:
    v39 = 0x47206172656D6143;
    v14 = 0xEC0000007373616CLL;
    goto LABEL_15;
  }

  if (v12 > 4u)
  {
    if (v12 == 5)
    {
      v39 = 0x74614D206E696854;
      v14 = 0xED00006C61697265;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = 0x614D20726F6C6F43;
  if (v12 != 3)
  {
    v13 = 0x4320656C706D6953;
  }

  v39 = v13;
  if (v12 == 3)
  {
    v14 = 0xEC00000078697274;
  }

  else
  {
    v14 = 0xEC000000726F6C6FLL;
  }

LABEL_15:
  swift_getKeyPath();
  v41 = a1;
  sub_1A3A2F080();

  v15 = sub_1A39C3974();
  v17 = v3;
  if (!v16)
  {
    goto LABEL_20;
  }

  v18 = sub_1A395A0F8(v15, v16);

  if (v18 > 2u)
  {
    if (v18 - 5 >= 2)
    {
      v19 = v18 == 3;
      v20 = 0x614D20726F6C6F43;
      v21 = 0xEC00000078697274;
      v22 = 0x4320656C706D6953;
      v23 = 0xEC000000726F6C6FLL;
      goto LABEL_22;
    }

LABEL_20:
    v24 = 0x74614D206E696854;
    v25 = 0xED00006C61697265;
    goto LABEL_29;
  }

  if (!v18)
  {
    v25 = 0xE600000000000000;
    v24 = 0x6D6574737953;
    goto LABEL_29;
  }

  v19 = v18 == 1;
  v20 = 0x47206172656D6143;
  v21 = 0xEC0000007373616CLL;
  v22 = 0x4220656C706D6953;
  v23 = 0xEB0000000072756CLL;
LABEL_22:
  if (v19)
  {
    v24 = v20;
  }

  else
  {
    v24 = v22;
  }

  if (v19)
  {
    v25 = v21;
  }

  else
  {
    v25 = v23;
  }

LABEL_29:
  if (qword_1ED996460 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v2, qword_1ED99D868);
  (*(v17 + 16))(v5, v26, v2);
  sub_1A3A2EA50();
  sub_1A3A2EA50();
  sub_1A3A2EA50();
  v27 = sub_1A3A2F280();
  v28 = sub_1A3A31C10();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v2;
    v31 = v30;
    v41 = v30;
    *v29 = 136446722;
    v32 = sub_1A39ABC10(v40, v9, &v41);
    v40 = v5;
    v33 = v17;
    v34 = v32;

    *(v29 + 4) = v34;
    *(v29 + 12) = 2082;
    v35 = sub_1A39ABC10(v39, v14, &v41);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2082;
    v36 = sub_1A39ABC10(v24, v25, &v41);

    *(v29 + 24) = v36;
    _os_log_impl(&dword_1A3640000, v27, v28, "CameraUI Settings (Material Settings):\ngrouping: %{public}s | style: %{public}s | fallback-style: %{public}s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1A58FAC10](v31, -1, -1);
    MEMORY[0x1A58FAC10](v29, -1, -1);

    return (*(v33 + 8))(v40, v38);
  }

  else
  {

    return (*(v17 + 8))(v5, v2);
  }
}

uint64_t sub_1A395ADE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A395AE3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE508);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1A395AEA4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 72) = result;
  return result;
}

double sub_1A395AEB4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 80) = result;
  return result;
}

uint64_t sub_1A395B014(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1A39598B0(1, 0xD000000000000021, 0x80000001A3AA2100, a4);
  v4 = sub_1A3A31DF0();
  v6 = v5;

  MEMORY[0x1A58F7770](v4, v6);

  sub_1A395994C(1uLL, 0xD000000000000021, 0x80000001A3AA2100, v7);
  sub_1A38E849C();
  sub_1A3A318E0();

  sub_1A39C3B44();

  CEKProgressClamped();
  sub_1A39598B0(1, 0xD000000000000024, 0x80000001A3AA4F20, v8);
  v9 = sub_1A3A31DF0();
  v11 = v10;

  MEMORY[0x1A58F7770](v9, v11);

  sub_1A395994C(1uLL, 0xD000000000000024, 0x80000001A3AA4F20, v12);
  sub_1A3A318E0();

  sub_1A39C3A48();

  return CEKInterpolate();
}

uint64_t sub_1A395B230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1A3A316D0();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1A3A320B0();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1A3A320B0();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A395B330()
{
  v0 = sub_1A3A321E0();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1A395B384(uint64_t a1, unsigned __int8 a2)
{
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v3 = sub_1A394FC58(a2);

  return v3 & 1;
}

unint64_t sub_1A395B4F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraUISettings.BoolPreferenceKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraUISettings.BoolPreferenceKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A395B788()
{
  result = qword_1EB0FF390;
  if (!qword_1EB0FF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF390);
  }

  return result;
}

uint64_t sub_1A395B7DC()
{
  *(*(v0 + 16) + 128) = *(v0 + 24);
  sub_1A3A2EA50();
}

uint64_t sub_1A395B818()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
  sub_1A3A2EA50();
}

id sub_1A395B87C(SEL *a1, SEL *a2)
{
  v5 = *(v2 + 16);
  v6 = objc_opt_self();
  result = [v6 *a1];
  if (v5 != result)
  {
    return [v6 *a2];
  }

  return result;
}

unint64_t sub_1A395B90C(unint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = v6;
    for (i = v4; ; ++i)
    {
      if (i >= v2)
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

      v13 = *(v5 + 8 * i);
      v8 = v13;
      MEMORY[0x1EEE9AC00](result);
      v11[2] = &v13;
      sub_1A38A8F64(v8);
      if (sub_1A38EDEDC(sub_1A395DF38, v11, v3))
      {
        break;
      }

      result = sub_1A3890F2C(v8);
      if (v4 == v2)
      {
        return v12;
      }
    }

    v6 = v12;
    result = swift_isUniquelyReferenced_nonNull_native();
    v14 = v6;
    if ((result & 1) == 0)
    {
      result = sub_1A3956980(0, *(v6 + 16) + 1, 1);
      v6 = v14;
    }

    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_1A3956980((v9 > 1), v10 + 1, 1);
      v6 = v14;
    }

    *(v6 + 16) = v10 + 1;
    *(v6 + 8 * v10 + 32) = v8;
  }

  while (v4 != v2);
  return v6;
}

uint64_t sub_1A395BA98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 32;
    v6 = (result + 32);
    v7 = MEMORY[0x1E69E7CC0];
    while (v4 < v2)
    {
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_17;
      }

      v11 = *(v5 + 8 * v4++);
      v12 = *(v3 + 16);
      v13 = v6;
      while (v12)
      {
        v14 = *v13++;
        --v12;
        if (v14 == v11)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1A3956A20(0, *(v7 + 16) + 1, 1);
          }

          v9 = *(v7 + 16);
          v8 = *(v7 + 24);
          if (v9 >= v8 >> 1)
          {
            result = sub_1A3956A20((v8 > 1), v9 + 1, 1);
          }

          *(v7 + 16) = v9 + 1;
          *(v7 + 8 * v9 + 32) = v11;
          break;
        }
      }

      if (v10 == v2)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1A395BBBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A395DAFC(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  *a2 = *(v3 + 120);
  return sub_1A3A2EA50();
}

uint64_t sub_1A395BC94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A395DAFC(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  *a2 = *(v3 + 128);
  return sub_1A3A2EA50();
}

void sub_1A395BD6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2F8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1A395BE78(uint64_t a1)
{
  if (qword_1ED996478 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = qword_1ED99D888;
  v3 = *(qword_1ED99D888 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v5 = v3 - 1;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v4; ; ++i)
    {
      if (i >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v8 = *(v2 + 32 + 8 * i);
      v4 = i + 1;
      type metadata accessor for ChromeElementModel();
      sub_1A38A8F64(v8);
      if (sub_1A39B11D4(v8, 4, a1))
      {
        break;
      }

      sub_1A3890F2C(v8);
      if (v3 == v4)
      {
        return v6;
      }
    }

    v13 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1A3956980(0, *(v6 + 16) + 1, 1);
    }

    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = v10 + 1;
    if (v10 >= v9 >> 1)
    {
      sub_1A3956980((v9 > 1), v10 + 1, 1);
      v11 = v10 + 1;
    }

    *(v6 + 16) = v11;
    *(v6 + 8 * v10 + 32) = v8;
    v5 = v13;
  }

  while (v13 != i);
  return v6;
}

uint64_t sub_1A395BFFC(uint64_t a1, uint64_t a2)
{
  if (qword_1ED996480 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v4 = off_1ED997FE0;
    swift_getKeyPath();
    v5 = OBJC_IVAR____TtC8CameraUIP33_AD1680641DDDA8199D384A5228EC6D4815SettingsManager___observationRegistrar;
    v43 = v4;
    v40 = sub_1A395DAFC(&qword_1ED996650, type metadata accessor for SettingsManager);
    v41 = v5;
    sub_1A3A2F080();

    v6 = v4[2];
    swift_getKeyPath();
    v43 = v6;
    v7 = sub_1A395DAFC(&qword_1ED996658, type metadata accessor for CameraUISettings);
    sub_1A3A2EA60();
    v39 = v7;
    sub_1A3A2F080();

    v8 = *(v6 + 120);
    sub_1A3A2EA50();

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = 0;
      v38 = v9 - 1;
      v42 = MEMORY[0x1E69E7CC0];
      do
      {
        v11 = v10;
        while (1)
        {
          if (v11 >= *(v8 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          v12 = *(v8 + 32 + 8 * v11);
          type metadata accessor for ChromeElementModel();
          sub_1A38A8F64(v12);
          v13 = sub_1A39B11D4(v12, a2, a1);
          v14 = sub_1A39B73F8(v12, a1);
          if (v13 & 1) != 0 && (v14)
          {
            break;
          }

          ++v11;
          sub_1A3890F2C(v12);
          if (v9 == v11)
          {
            goto LABEL_16;
          }
        }

        v15 = v42;
        v43 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956980(0, *(v42 + 16) + 1, 1);
          v15 = v43;
        }

        v17 = *(v15 + 16);
        v16 = *(v15 + 24);
        v18 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          sub_1A3956980((v16 > 1), v17 + 1, 1);
          v18 = v17 + 1;
          v15 = v43;
        }

        v10 = v11 + 1;
        *(v15 + 16) = v18;
        v42 = v15;
        *(v15 + 8 * v17 + 32) = v12;
      }

      while (v38 != v11);
    }

    else
    {
      v42 = MEMORY[0x1E69E7CC0];
    }

LABEL_16:

    swift_getKeyPath();
    v43 = v4;
    sub_1A3A2F080();

    v19 = v4[2];
    swift_getKeyPath();
    v43 = v19;
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v20 = *(v19 + 128);
    sub_1A3A2EA50();

    v21 = *(v20 + 16);
    if (!v21)
    {
      break;
    }

    v22 = 0;
    v41 = v21 - 1;
    v23 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v24 = v22;
    while (v24 < *(v20 + 16))
    {
      v25 = *(v20 + 32 + 8 * v24);
      type metadata accessor for ChromeElementModel();
      sub_1A38A8F64(v25);
      v26 = sub_1A39B11D4(v25, a2, a1);
      v27 = sub_1A39B73F8(v25, a1);
      if (v26 & 1) != 0 && (v27)
      {
        v43 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956980(0, v23[2] + 1, 1);
          v23 = v43;
        }

        v29 = v23[2];
        v28 = v23[3];
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          sub_1A3956980((v28 > 1), v29 + 1, 1);
          v30 = v29 + 1;
          v23 = v43;
        }

        v22 = v24 + 1;
        v23[2] = v30;
        v23[v29 + 4] = v25;
        if (v41 != v24)
        {
          goto LABEL_18;
        }

        goto LABEL_30;
      }

      ++v24;
      sub_1A3890F2C(v25);
      if (v21 == v24)
      {
        goto LABEL_30;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_30:

  v43 = 31;
  MEMORY[0x1EEE9AC00](v31);
  v37[2] = &v43;
  if (sub_1A38EDEDC(sub_1A395DF38, v37, v23))
  {

    v23 = &unk_1F1654290;
  }

  result = v42;
  if (*(v42 + 16) >= 3uLL)
  {
    sub_1A395BD6C(v42, v42 + 32, 0, 5uLL);
    v34 = v33;

    result = v34;
  }

  v35 = v23[2];
  if (v35 >= 3)
  {
    v36 = result;
    sub_1A395BD6C(v23, (v23 + 4), v35 - 2, (2 * v35) | 1);

    return v36;
  }

  return result;
}

uint64_t sub_1A395C540(uint64_t a1)
{
  if (qword_1ED996480 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v2 = off_1ED997FE0;
    swift_getKeyPath();
    sub_1A395DAFC(&qword_1ED996650, type metadata accessor for SettingsManager);
    sub_1A3A2F080();

    v3 = *(v2[2] + 88);
    v4 = *(v3 + 16);
    sub_1A3A2EA50();
    if (v4)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = v5;
        while (1)
        {
          if (v7 >= *(v3 + 16))
          {
            __break(1u);
            goto LABEL_52;
          }

          v8 = *(v3 + 32 + 8 * v7);
          v5 = v7 + 1;
          type metadata accessor for ChromeElementModel();
          sub_1A38A8F64(v8);
          if (sub_1A39B11D4(v8, 0, a1))
          {
            break;
          }

          sub_1A3890F2C(v8);
          ++v7;
          if (v4 == v5)
          {
            goto LABEL_16;
          }
        }

        v38 = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956980(0, *(v6 + 16) + 1, 1);
        }

        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        v11 = v10 + 1;
        if (v10 >= v9 >> 1)
        {
          sub_1A3956980((v9 > 1), v10 + 1, 1);
          v11 = v10 + 1;
        }

        *(v6 + 16) = v11;
        *(v6 + 8 * v10 + 32) = v8;
        v2 = v38;
      }

      while (v4 - 1 != v7);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

LABEL_16:

    swift_getKeyPath();
    sub_1A3A2F080();

    v12 = *(v2[2] + 96);
    v13 = *(v12 + 16);
    sub_1A3A2EA50();
    if (!v13)
    {
      break;
    }

    v14 = MEMORY[0x1E69E7CC0];
    v15 = 0;
    while (v15 < *(v12 + 16))
    {
      v16 = *(v12 + 32 + 8 * v15);
      v17 = v15 + 1;
      type metadata accessor for ChromeElementModel();
      sub_1A38A8F64(v16);
      if (sub_1A39B11D4(v16, 0, a1))
      {
        v39 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956980(0, *(v14 + 16) + 1, 1);
        }

        v18 = v14;
        v19 = *(v14 + 16);
        v20 = *(v18 + 24);
        v21 = v19 + 1;
        if (v19 >= v20 >> 1)
        {
          sub_1A3956980((v20 > 1), v19 + 1, 1);
          v21 = v19 + 1;
          v18 = v39;
        }

        *(v18 + 16) = v21;
        *(v18 + 8 * v19 + 32) = v16;
        v14 = v18;
        if (v13 - 1 == v15)
        {
          goto LABEL_29;
        }

        ++v15;
      }

      else
      {
        sub_1A3890F2C(v16);
        ++v15;
        if (v13 == v17)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_29:

  v22 = sub_1A395BFFC(a1, 0);

  v23 = MEMORY[0x1E69E7CC0];
  if (*(v22 + 16))
  {
    sub_1A3A2EA50();
    v24 = v22;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  sub_1A395DAFC(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v25 = *(a1 + 584);
  if (v25 == 2)
  {

    v26 = sub_1A395B90C(&unk_1F1654390, v6);

    sub_1A395DB78(&unk_1F16543B0);
    v6 = v26;
    goto LABEL_36;
  }

  if (v25 == 1)
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v27 = v14;
    goto LABEL_39;
  }

  v27 = v14;
  if (!v25)
  {

LABEL_39:
    v28 = *(v6 + 16);
    if (v28)
    {
      sub_1A39569E0(0, v28, 0);
      v29 = 32;
      v30 = v23;
      do
      {
        v31 = *(v6 + v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2F8);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1A3A681C0;
        *(v32 + 32) = v31;
        sub_1A38A8F64(v31);
        v34 = *(v30 + 16);
        v33 = *(v30 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1A39569E0((v33 > 1), v34 + 1, 1);
        }

        *(v30 + 16) = v34 + 1;
        *(v30 + 8 * v34 + 32) = v32;
        v29 += 8;
        --v28;
      }

      while (v28);

      v27 = v14;
      if (*(v24 + 16))
      {
LABEL_45:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF398);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1A3A681C0;
        *(inited + 32) = v24;
        sub_1A3955C58(inited);
        if (*(v27 + 16))
        {
LABEL_46:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF398);
          v36 = swift_initStackObject();
          *(v36 + 16) = xmmword_1A3A681C0;
          *(v36 + 32) = v27;
          sub_1A3955C58(v36);
          return v30;
        }

LABEL_49:

        return v30;
      }
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
      if (*(v24 + 16))
      {
        goto LABEL_45;
      }
    }

    if (*(v27 + 16))
    {
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  result = sub_1A3A321F0();
  __break(1u);
  return result;
}

double sub_1A395CB84(uint64_t a1)
{
  if (qword_1ED996480 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = off_1ED997FE0;
  swift_getKeyPath();
  sub_1A395DAFC(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v3 = *(v2[2] + 104);
  v4 = *(v3 + 16);
  sub_1A3A2EA50();
  if (v4)
  {
    v5 = 0;
    v6 = v4 - 1;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v9 = *(v3 + 32 + 8 * v8);
        v5 = v8 + 1;
        type metadata accessor for ChromeElementModel();
        sub_1A38A8F64(v9);
        if (sub_1A39B11D4(v9, 0, a1))
        {
          break;
        }

        sub_1A3890F2C(v9);
        ++v8;
        if (v4 == v5)
        {
          goto LABEL_16;
        }
      }

      v15 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A3956980(0, *(v7 + 16) + 1, 1);
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        sub_1A3956980((v10 > 1), v11 + 1, 1);
        v12 = v11 + 1;
      }

      *(v7 + 16) = v12;
      *(v7 + 8 * v11 + 32) = v9;
      v6 = v15;
    }

    while (v15 != v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF398);
  v13 = swift_allocObject();
  *&result = 1;
  *(v13 + 16) = xmmword_1A3A681C0;
  *(v13 + 32) = v7;
  return result;
}

unint64_t sub_1A395CDB8(void *a1)
{
  v62 = a1;
  if (qword_1ED996480 != -1)
  {
    goto LABEL_290;
  }

  while (1)
  {
    v1 = off_1ED997FE0;
    swift_getKeyPath();
    v68 = v1;
    sub_1A395DAFC(&qword_1ED996650, type metadata accessor for SettingsManager);
    sub_1A3A2F080();

    v2 = *(v1[2] + 112);
    v3 = *(v2 + 16);
    sub_1A3A2EA50();
    if (v3)
    {
      v4 = 0;
      v63 = MEMORY[0x1E69E7CC0];
      v5 = v62;
      do
      {
        v6 = v4;
        while (1)
        {
          if (v6 >= *(v2 + 16))
          {
LABEL_286:
            __break(1u);
            goto LABEL_287;
          }

          v7 = *(v2 + 32 + 8 * v6);
          v4 = v6 + 1;
          type metadata accessor for ChromeElementModel();
          sub_1A38A8F64(v7);
          if (sub_1A39B11D4(v7, 0, v5))
          {
            break;
          }

          sub_1A3890F2C(v7);
          ++v6;
          if (v3 == v4)
          {
            goto LABEL_16;
          }
        }

        v8 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A3956980(0, *(v8 + 16) + 1, 1);
          v8 = v68;
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1A3956980((v10 > 1), v11 + 1, 1);
          v8 = v68;
        }

        *(v8 + 16) = v11 + 1;
        v63 = v8;
        *(v8 + 8 * v11 + 32) = v7;
        v5 = v62;
      }

      while (v3 - 1 != v6);
    }

    else
    {
      v63 = MEMORY[0x1E69E7CC0];
    }

LABEL_16:

    v68 = &unk_1F1653D10;
    MEMORY[0x1EEE9AC00](v12);
    v52[2] = &v68;
    v13 = v63;
    if ((sub_1A38EDEDC(sub_1A395DAC4, v52, v63) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF398);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1A3A681C0;
      *(v41 + 32) = v13;
      goto LABEL_275;
    }

    v14 = *(v13 + 16);
    if (!v14)
    {
      break;
    }

    v15 = 0;
    *&v67 = v13 + 32;
    v16 = MEMORY[0x1E69E7CC0];
    v57 = v14;
    while (v15 < *(v13 + 16))
    {
      v17 = *(v67 + 8 * v15++);
      if (v17 < 0x23)
      {
        goto LABEL_266;
      }

      if (*(v17 + 16) != 2)
      {
        sub_1A3A2EA50();
        goto LABEL_266;
      }

      if (v17 != &unk_1F1653D10)
      {
        sub_1A3A2EA50();
        v18 = 0;
        v19 = 0;
        while (1)
        {
          v20 = v18;
          if (v19 >= *(v17 + 16))
          {
            __break(1u);
            goto LABEL_286;
          }

          v21 = 8 * v19;
          v22 = *(v17 + 32 + v21);
          v23 = *(&unk_1F1653D10 + v21 + 32);
          switch(v22)
          {
            case 0uLL:
              if (v23)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 1uLL:
              if (v23 != 1)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 2uLL:
              if (v23 != 2)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 3uLL:
              if (v23 != 3)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 4uLL:
              if (v23 != 4)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 5uLL:
              if (v23 != 5)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 6uLL:
              if (v23 != 6)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 7uLL:
              if (v23 != 7)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 8uLL:
              if (v23 != 8)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 9uLL:
              if (v23 != 9)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0xAuLL:
              if (v23 != 10)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0xBuLL:
              if (v23 != 11)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0xCuLL:
              if (v23 != 12)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0xDuLL:
              if (v23 != 13)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0xEuLL:
              if (v23 != 14)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0xFuLL:
              if (v23 != 15)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x10uLL:
              if (v23 != 16)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x11uLL:
              if (v23 != 17)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x12uLL:
              if (v23 != 18)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x13uLL:
              if (v23 != 19)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x14uLL:
              if (v23 != 20)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x15uLL:
              if (v23 != 21)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x16uLL:
              if (v23 != 22)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x17uLL:
              if (v23 != 23)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x18uLL:
              if (v23 != 24)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x19uLL:
              if (v23 != 25)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x1AuLL:
              if (v23 != 26)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x1BuLL:
              if (v23 == 27)
              {
                goto LABEL_27;
              }

              goto LABEL_266;
            case 0x1CuLL:
              if (v23 != 28)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x1DuLL:
              if (v23 != 29)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x1EuLL:
              if (v23 != 30)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x1FuLL:
              if (v23 != 31)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x20uLL:
              if (v23 != 32)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x21uLL:
              if (v23 != 33)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x22uLL:
              if (v23 != 34)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            default:
              if (v23 < 0x23)
              {
                goto LABEL_266;
              }

              v24 = v22[2];
              if (v24 != *(v23 + 16))
              {
                goto LABEL_266;
              }

              if (v24)
              {
                v25 = v22 == v23;
              }

              else
              {
                v25 = 1;
              }

              if (v25)
              {
                goto LABEL_27;
              }

              v58 = v16;
              v64 = v23 + 32;
              v65 = v22 + 4;
              v26 = v22;
              sub_1A38A8F64(v23);
              v66 = v26;
              sub_1A38A8F64(v26);
              v27 = 0;
              break;
          }

LABEL_107:
          if (v27 >= v66[2])
          {
            goto LABEL_288;
          }

          if (v27 >= *(v23 + 16))
          {
            goto LABEL_289;
          }

          v28 = v65[v27];
          v29 = *(v64 + 8 * v27);
          switch(v28)
          {
            case 0uLL:
              if (v29)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 1uLL:
              if (v29 != 1)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 2uLL:
              if (v29 != 2)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 3uLL:
              if (v29 != 3)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 4uLL:
              if (v29 != 4)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 5uLL:
              if (v29 != 5)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 6uLL:
              if (v29 != 6)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 7uLL:
              if (v29 != 7)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 8uLL:
              if (v29 != 8)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 9uLL:
              if (v29 != 9)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0xAuLL:
              if (v29 != 10)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0xBuLL:
              if (v29 != 11)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0xCuLL:
              if (v29 != 12)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0xDuLL:
              if (v29 != 13)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0xEuLL:
              if (v29 != 14)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0xFuLL:
              if (v29 != 15)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x10uLL:
              if (v29 != 16)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x11uLL:
              if (v29 != 17)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x12uLL:
              if (v29 != 18)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x13uLL:
              if (v29 != 19)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x14uLL:
              if (v29 != 20)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x15uLL:
              if (v29 != 21)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x16uLL:
              if (v29 != 22)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x17uLL:
              if (v29 != 23)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x18uLL:
              if (v29 != 24)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x19uLL:
              if (v29 != 25)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x1AuLL:
              if (v29 != 26)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x1BuLL:
              if (v29 == 27)
              {
                goto LABEL_106;
              }

              goto LABEL_264;
            case 0x1CuLL:
              if (v29 != 28)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x1DuLL:
              if (v29 != 29)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x1EuLL:
              if (v29 != 30)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x1FuLL:
              if (v29 != 31)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x20uLL:
              if (v29 != 32)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x21uLL:
              if (v29 != 33)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x22uLL:
              if (v29 != 34)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            default:
              if (v29 < 0x23 || (v30 = *(v28 + 16), v30 != *(v29 + 16)))
              {
LABEL_264:
                sub_1A3890F2C(v23);
                sub_1A3890F2C(v66);
                goto LABEL_265;
              }

              if (v30)
              {
                v31 = v28 == v29;
              }

              else
              {
                v31 = 1;
              }

              if (v31)
              {
                goto LABEL_106;
              }

              v59 = v29 + 32;
              v60 = v28 + 32;
              v32 = v28;
              v56 = v30;
              sub_1A38A8F64(v29);
              v61 = v32;
              result = sub_1A38A8F64(v32);
              v34 = v56;
              v35 = 0;
              break;
          }

LABEL_187:
          if (v35 >= *(v61 + 16))
          {
            break;
          }

          if (v35 >= *(v29 + 16))
          {
            goto LABEL_292;
          }

          v36 = *(v60 + 8 * v35);
          v37 = *(v59 + 8 * v35);
          switch(v36)
          {
            case 0uLL:
              if (!v37)
              {
                goto LABEL_186;
              }

              goto LABEL_271;
            case 1uLL:
              if (v37 != 1)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 2uLL:
              if (v37 != 2)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 3uLL:
              if (v37 != 3)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 4uLL:
              if (v37 != 4)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 5uLL:
              if (v37 != 5)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 6uLL:
              if (v37 != 6)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 7uLL:
              if (v37 != 7)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 8uLL:
              if (v37 != 8)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 9uLL:
              if (v37 != 9)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0xAuLL:
              if (v37 != 10)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0xBuLL:
              if (v37 != 11)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0xCuLL:
              if (v37 != 12)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0xDuLL:
              if (v37 != 13)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0xEuLL:
              if (v37 != 14)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0xFuLL:
              if (v37 != 15)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x10uLL:
              if (v37 != 16)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x11uLL:
              if (v37 != 17)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x12uLL:
              if (v37 != 18)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x13uLL:
              if (v37 != 19)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x14uLL:
              if (v37 != 20)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x15uLL:
              if (v37 != 21)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x16uLL:
              if (v37 != 22)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x17uLL:
              if (v37 != 23)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x18uLL:
              if (v37 != 24)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x19uLL:
              if (v37 != 25)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x1AuLL:
              if (v37 != 26)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x1BuLL:
              if (v37 == 27)
              {
                goto LABEL_186;
              }

              goto LABEL_271;
            case 0x1CuLL:
              if (v37 != 28)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x1DuLL:
              if (v37 != 29)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x1EuLL:
              if (v37 != 30)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x1FuLL:
              if (v37 != 31)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x20uLL:
              if (v37 != 32)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x21uLL:
              if (v37 != 33)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x22uLL:
              if (v37 != 34)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            default:
              if (v37 < 0x23 || (v54 = *(v59 + 8 * v35), v55 = v36, sub_1A38A8F64(v54), sub_1A38A8F64(v55), v53 = sub_1A39FCD24(v55, v54), sub_1A3890F2C(v54), result = sub_1A3890F2C(v55), v34 = v56, (v53 & 1) == 0))
              {
LABEL_271:
                sub_1A3890F2C(v29);
                sub_1A3890F2C(v61);
                sub_1A3890F2C(v23);
                sub_1A3890F2C(v66);
                v13 = v63;
LABEL_265:
                v14 = v57;
                v16 = v58;
LABEL_266:
                v38 = swift_isUniquelyReferenced_nonNull_native();
                v68 = v16;
                if ((v38 & 1) == 0)
                {
                  sub_1A3956980(0, v16[2] + 1, 1);
                  v16 = v68;
                }

                v40 = v16[2];
                v39 = v16[3];
                if (v40 >= v39 >> 1)
                {
                  sub_1A3956980((v39 > 1), v40 + 1, 1);
                  v16 = v68;
                }

                v16[2] = v40 + 1;
                v16[v40 + 4] = v17;
                goto LABEL_20;
              }

LABEL_186:
              if (v34 != ++v35)
              {
                goto LABEL_187;
              }

              sub_1A3890F2C(v29);
              sub_1A3890F2C(v61);
              v13 = v63;
LABEL_106:
              if (++v27 != v24)
              {
                goto LABEL_107;
              }

              sub_1A3890F2C(v23);
              sub_1A3890F2C(v66);
              v14 = v57;
              v16 = v58;
LABEL_27:
              v18 = 1;
              v19 = 1;
              if (v20)
              {
                sub_1A3890F2C(v17);
                goto LABEL_20;
              }

              break;
          }
        }

        __break(1u);
LABEL_292:
        __break(1u);
        return result;
      }

LABEL_20:
      if (v15 == v14)
      {
        goto LABEL_274;
      }
    }

LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    swift_once();
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_274:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF398);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1A3A70140;
  *(v41 + 32) = &unk_1F16543B8;
  *(v41 + 40) = v16;
LABEL_275:
  swift_getKeyPath();
  v42 = v62;
  v68 = v62;
  sub_1A395DAFC(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if ((*(v42 + 1177) & 1) == 0)
  {
    swift_getKeyPath();
    v68 = v42;
    sub_1A3A2F080();

    if ((*(v42 + 1178) & 1) == 0)
    {
      sub_1A395BFFC(v42, 0);
      v44 = v43;

      v45 = *(v44 + 16);
      if (v45)
      {
        v66 = v41;
        v68 = MEMORY[0x1E69E7CC0];
        sub_1A39569E0(0, v45, 0);
        v46 = 32;
        v47 = v68;
        v67 = xmmword_1A3A681C0;
        do
        {
          v48 = *(v44 + v46);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2F8);
          v49 = swift_allocObject();
          *(v49 + 16) = v67;
          *(v49 + 32) = v48;
          sub_1A38A8F64(v48);
          v68 = v47;
          v51 = v47[2];
          v50 = v47[3];
          if (v51 >= v50 >> 1)
          {
            sub_1A39569E0((v50 > 1), v51 + 1, 1);
            v47 = v68;
          }

          v47[2] = v51 + 1;
          v47[v51 + 4] = v49;
          v46 += 8;
          --v45;
        }

        while (v45);

        v68 = v47;
        sub_1A3955C58(v66);
        return v68;
      }

      else
      {
      }
    }
  }

  return v41;
}

uint64_t sub_1A395DAFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A395DBCC(uint64_t a1)
{
  if (qword_1ED996480 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v2 = off_1ED997FE0;
    swift_getKeyPath();
    sub_1A395DAFC(&qword_1ED996650, type metadata accessor for SettingsManager);
    sub_1A3A2F080();

    v3 = *(v2[2] + 144);
    v4 = *(v3 + 16);
    sub_1A3A2EA50();
    if (!v4)
    {
      break;
    }

    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      v6 = *(v3 + 32 + 8 * v5);
      type metadata accessor for ChromeElementModel();
      sub_1A38A8F64(v6);
      if (sub_1A39B11D4(v6, 3, a1))
      {
        goto LABEL_8;
      }

      ++v5;
      sub_1A3890F2C(v6);
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }

LABEL_7:
  v6 = 35;
LABEL_8:

  return v6;
}

uint64_t sub_1A395DD30(uint64_t a1)
{
  if (qword_1ED996480 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = off_1ED997FE0;
  swift_getKeyPath();
  sub_1A395DAFC(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v3 = *(v2[2] + 136);
  v4 = *(v3 + 16);
  sub_1A3A2EA50();
  if (v4)
  {
    v5 = 0;
    v6 = v4 - 1;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v9 = *(v3 + 32 + 8 * v8);
        v5 = v8 + 1;
        type metadata accessor for ChromeElementModel();
        sub_1A38A8F64(v9);
        if (sub_1A39B11D4(v9, 3, a1))
        {
          break;
        }

        sub_1A3890F2C(v9);
        ++v8;
        if (v4 == v5)
        {
          goto LABEL_16;
        }
      }

      v14 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A3956980(0, *(v7 + 16) + 1, 1);
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        sub_1A3956980((v10 > 1), v11 + 1, 1);
        v12 = v11 + 1;
      }

      *(v7 + 16) = v12;
      *(v7 + 8 * v11 + 32) = v9;
      v6 = v14;
    }

    while (v14 != v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:

  return v7;
}

double sub_1A395DF54@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A390A488();
  sub_1A3A2F080();

  result = *(v3 + 720);
  *a2 = result;
  return result;
}

double sub_1A395DFF4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A390A488();
  sub_1A3A2F080();

  result = *(v3 + 728);
  *a2 = result;
  return result;
}

double sub_1A395E094@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A390A488();
  sub_1A3A2F080();

  result = *(v3 + 736);
  *a2 = result;
  return result;
}

double sub_1A395E134@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A390A488();
  sub_1A3A2F080();

  result = *(v3 + 744);
  *a2 = result;
  return result;
}

id sub_1A395E1D4(uint64_t a1, uint64_t a2, char a3)
{
  v30 = a1;
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x1E6993888]);
  v10 = sub_1A3A31810();
  v11 = [v9 initWithTitle_];

  v12 = v11;
  v13 = sub_1A3A31810();
  [v12 setAccessibilityIdentifier_];

  [v12 setTransparentGradients];
  sub_1A3A2EA60();
  v14 = a2;
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v14 = v31;
  }

  swift_getKeyPath();
  v31 = v14;
  sub_1A390A488();
  sub_1A3A2F080();

  v16 = *(v14 + 392);

  v17 = 68.0;
  if (v16)
  {
    v17 = 56.0;
  }

  [v12 setGradientInsets_];
  [v12 setSliderVerticalAlignment_];
  [v12 setValueLabelVisibility_];
  [v12 setTitleAlignment_];
  [v12 setFontStyle_];
  sub_1A3A2EA60();
  v18 = a2;
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v19 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v18 = v31;
  }

  swift_getKeyPath();
  v31 = v18;
  sub_1A3A2F080();

  v20 = *(v18 + 720);

  [v12 setMinimumValue_];
  sub_1A3A2EA60();
  v21 = a2;
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v22 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v21 = v31;
  }

  swift_getKeyPath();
  v31 = v21;
  sub_1A3A2F080();

  v23 = *(v21 + 728);

  [v12 setMaximumValue_];
  sub_1A3A2EA60();
  v24 = a2;
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v25 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v24 = v31;
  }

  swift_getKeyPath();
  v31 = v24;
  sub_1A3A2F080();

  v26 = *(v24 + 736);

  [v12 setDefaultValue_];
  sub_1A3A2EA60();
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v27 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    a2 = v31;
  }

  swift_getKeyPath();
  v31 = a2;
  sub_1A3A2F080();

  v28 = *(a2 + 744);

  [v12 setValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF3B8);
  sub_1A3A304D0();
  [v12 addTarget:v31 action:sel_intensityValueChanged_ forControlEvents:4096];

  return v12;
}

uint64_t sub_1A395E95C()
{

  return swift_deallocClassInstance();
}

id sub_1A395E9D4(void *a1)
{
  v3 = sub_1A39A12B8(*v1, *(v1 + 8));
  swift_getKeyPath();
  sub_1A390A488();
  sub_1A3A2F080();

  v4 = *(v3 + 744);

  return [a1 setValue_];
}

uint64_t sub_1A395EA94@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  type metadata accessor for ChromeIntensitySlider.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = v5;

  return sub_1A3A2EA60();
}

uint64_t sub_1A395EAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A395EBE8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A395EB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A395EBE8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A395EBBC()
{
  sub_1A395EBE8();
  sub_1A3A301A0();
  __break(1u);
}

unint64_t sub_1A395EBE8()
{
  result = qword_1EB0FF3C0;
  if (!qword_1EB0FF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF3C0);
  }

  return result;
}

void sub_1A395EC3C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1A3A2EA60();
  v4 = a2;
  v3();
}

uint64_t AVCaptureCameraLensSmudgeDetectionStatus.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6E776F6E6B6E55;
      }

      return 0x726F727245;
    }

    return 0x64656764756D53;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6574654420746F4ELL;
      }

      return 0x726F727245;
    }

    return 0x64656C6261736944;
  }
}

uint64_t sub_1A395ED44()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x6E776F6E6B6E55;
      }

      return 0x726F727245;
    }

    return 0x64656764756D53;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x6574654420746F4ELL;
      }

      return 0x726F727245;
    }

    return 0x64656C6261736944;
  }
}

uint64_t CAMCaptureDevicePosition.description.getter(uint64_t a1)
{
  v1 = 0xD000000000000017;
  if (a1 == 1)
  {
    v1 = 0x614320746E6F7246;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6D6143206B636142;
  }
}

uint64_t sub_1A395EE54()
{
  v1 = 0xD000000000000017;
  if (*v0 == 1)
  {
    v1 = 0x614320746E6F7246;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6143206B636142;
  }
}

uint64_t CAMCaptureMode.description.getter(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x6F6D6F6C53;
      }

      if (a1 == 3)
      {
        return 0x616D61726F6E6150;
      }

      return 0x657261757153;
    }

    if (!a1)
    {
      return 0x6F746F6850;
    }

    if (a1 == 1)
    {
      return 0x6F65646956;
    }

LABEL_20:
    sub_1A3A31F20();

    v3 = CAMCaptureMode.description.getter(a1);
    MEMORY[0x1A58F7770](v3);

    result = sub_1A3A32070();
    __break(1u);
    return result;
  }

  if (a1 > 7)
  {
    if ((a1 - 8) < 2)
    {
      return 0x6C616974617053;
    }

    goto LABEL_20;
  }

  if (a1 == 5)
  {
    return 0x7370616C656D6954;
  }

  if (a1 == 6)
  {
    return 0x7469617274726F50;
  }

  return 0x6974616D656E6943;
}

uint64_t sub_1A395F17C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_modeIsChanging) == 1)
  {
    sub_1A3A31F20();
    v3 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = 0xEC0000006172656DLL;
        v5 = 0x614320746E6F7246;
      }

      else
      {
        v4 = 0x80000001A3AA4FF0;
        v5 = 0xD000000000000017;
      }
    }

    else
    {
      v4 = 0xEC00000073617265;
      v5 = 0x6D6143206B636142;
    }

    MEMORY[0x1A58F7770](v5, v4);

    MEMORY[0x1A58F7770](0xD000000000000037, 0x80000001A3AA5280);
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v9 = 0xE700000000000000;
        v10 = 0x64656764756D53;
        goto LABEL_27;
      }

      if (a1 == 3)
      {
        v9 = 0xE700000000000000;
        v10 = 0x6E776F6E6B6E55;
        goto LABEL_27;
      }
    }

    else
    {
      if (!a1)
      {
        v9 = 0xE800000000000000;
        v10 = 0x64656C6261736944;
        goto LABEL_27;
      }

      if (a1 == 1)
      {
        v9 = 0xEC00000064657463;
        v10 = 0x6574654420746F4ELL;
LABEL_27:
        MEMORY[0x1A58F7770](v10, v9);

        sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

        *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState__status) = 3;
        return result;
      }
    }

    v9 = 0xE500000000000000;
    v10 = 0x726F727245;
    goto LABEL_27;
  }

  v6 = OBJC_IVAR___CAMLensSmudgeDisplayState__status;
  result = sub_1A395F450(a1, *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState__status));
  *(v1 + v6) = a1;
  if (a1 == 2)
  {
    v8 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
    if ([*(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_preferences) smudgeNotDetectedCountForDevicePosition_] >= 1)
    {
      sub_1A3961194(0, v8);
    }

    sub_1A3960924();

    return sub_1A3960A74();
  }

  else if (a1 == 1)
  {

    return sub_1A3960578();
  }

  return result;
}

uint64_t sub_1A395F450(uint64_t a1, uint64_t a2)
{
  sub_1A3A31F20();
  v5 = *(v2 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 0xEC0000006172656DLL;
      v7 = 0x614320746E6F7246;
    }

    else
    {
      v6 = 0x80000001A3AA4FF0;
      v7 = 0xD000000000000017;
    }
  }

  else
  {
    v6 = 0xEC00000073617265;
    v7 = 0x6D6143206B636142;
  }

  v8 = 0x64656764756D53;
  MEMORY[0x1A58F7770](v7, v6);

  MEMORY[0x1A58F7770](0xD000000000000016, 0x80000001A3AA53C0);
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v10 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E55;
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    v10 = 0xE700000000000000;
    v9 = 0x64656764756D53;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v9 = 0x6574654420746F4ELL;
        v10 = 0xEC00000064657463;
        goto LABEL_16;
      }

LABEL_13:
      v10 = 0xE500000000000000;
      v9 = 0x726F727245;
      goto LABEL_16;
    }

    v10 = 0xE800000000000000;
    v9 = 0x64656C6261736944;
  }

LABEL_16:
  MEMORY[0x1A58F7770](v9, v10);

  sub_1A389FD78();
  v11 = sub_1A3A31E40();
  v13 = v12;

  MEMORY[0x1A58F7770](0x203A73617728, 0xE600000000000000);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v14 = 0xE700000000000000;
      goto LABEL_26;
    }

    if (a2 == 3)
    {
      v14 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E55;
      goto LABEL_26;
    }

LABEL_23:
    v14 = 0xE500000000000000;
    v8 = 0x726F727245;
    goto LABEL_26;
  }

  if (!a2)
  {
    v14 = 0xE800000000000000;
    v8 = 0x64656C6261736944;
    goto LABEL_26;
  }

  if (a2 != 1)
  {
    goto LABEL_23;
  }

  v8 = 0x6574654420746F4ELL;
  v14 = 0xEC00000064657463;
LABEL_26:
  MEMORY[0x1A58F7770](v8, v14);

  MEMORY[0x1A58F7770](41, 0xE100000000000000);
  sub_1A39613D0(v11, v13, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);
}

uint64_t sub_1A395F7F8(uint64_t a1)
{
  v3 = sub_1A3A2ECE0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v57 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v57 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v57 - v17;
  result = [v1 areSmudgeNotificationsEnabled];
  if (!result)
  {
    return result;
  }

  v20 = [v1 smudgeAcknowledgementDateForDevicePosition_];
  if (!v20)
  {
    return 1;
  }

  v21 = v20;
  sub_1A3A2ECA0();

  (*(v4 + 32))(v18, v16, v3);
  v22 = [v1 smudgeAcknowledgementCountForDevicePosition_];
  v23 = v22 - 1;
  if (v22 < 1)
  {
    (*(v4 + 8))(v18, v3);
    return 1;
  }

  v60 = v22;
  [v1 smudgeNotificationBaseTimeoutInSeconds];
  v25 = exp2(v23) * v24;
  v61 = v4;
  (*(v4 + 16))(v10, v18, v3);
  sub_1A3A2EC60();
  sub_1A3A2ECB0();
  v26 = sub_1A3A2ECC0();
  v62 = v26 == 1;
  v27 = 0x65726F666562;
  if (v26 == 1)
  {
    v27 = 0x7265746661;
  }

  v63 = v27;
  v28 = 0xE600000000000000;
  if (v26 == 1)
  {
    v28 = 0xE500000000000000;
  }

  v59 = v28;
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_1A3A31F20();
  v58 = "PortraitEffectIntensitySlider";
  v29 = 0x80000001A3AA4FF0;
  v30 = 0x614320746E6F7246;
  if (a1 == 1)
  {
    v29 = 0xEC0000006172656DLL;
  }

  else
  {
    v30 = 0xD000000000000017;
  }

  if (a1)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0x6D6143206B636142;
  }

  if (a1)
  {
    v32 = v29;
  }

  else
  {
    v32 = 0xEC00000073617265;
  }

  MEMORY[0x1A58F7770](v31, v32);

  MEMORY[0x1A58F7770](2108704, 0xE300000000000000);
  if (qword_1EB0FC190 != -1)
  {
    swift_once();
  }

  v33 = qword_1EB0FF3C8;
  v34 = sub_1A3A2EC80();
  v35 = [v33 stringFromDate_];

  v36 = sub_1A3A31850();
  v38 = v37;

  MEMORY[0x1A58F7770](v36, v38);

  MEMORY[0x1A58F7770](544434464, 0xE400000000000000);
  v39 = v59;
  MEMORY[0x1A58F7770](v63);
  MEMORY[0x1A58F7770](0x2065726F6E676920, 0xEE00203A65746164);
  v40 = sub_1A3A2EC80();
  v41 = [v33 stringFromDate_];

  v42 = sub_1A3A31850();
  v44 = v43;

  MEMORY[0x1A58F7770](v42, v44);

  MEMORY[0x1A58F7770](0xD000000000000018, 0x80000001A3AA5220);
  v64 = v60;
  v45 = sub_1A3A321A0();
  MEMORY[0x1A58F7770](v45);

  MEMORY[0x1A58F7770](0x756F656D6974202CLL, 0xEA00000000002074);
  if (qword_1EB0FC198 != -1)
  {
    swift_once();
  }

  v46 = [qword_1EB0FF3D0 stringFromTimeInterval_];
  if (v46)
  {
    v47 = v46;
    v48 = sub_1A3A31850();
    v50 = v49;

    MEMORY[0x1A58F7770](v48, v50);
  }

  else
  {
    MEMORY[0x1A58F7770](9666786, 0xA300000000000000);
  }

  v51 = v39;
  MEMORY[0x1A58F7770](46, 0xE100000000000000);
  v52 = v65;
  v53 = v66;
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_1A3A31F20();
  if (a1)
  {
    if (a1 == 1)
    {
      v54 = 0x614320746E6F7246;
      v55 = 0xEC0000006172656DLL;
    }

    else
    {
      v55 = v58 | 0x8000000000000000;
      v54 = 0xD000000000000017;
    }
  }

  else
  {
    v55 = 0xEC00000073617265;
    v54 = 0x6D6143206B636142;
  }

  MEMORY[0x1A58F7770](v54, v55);

  MEMORY[0x1A58F7770](45, 0xE100000000000000);
  MEMORY[0x1A58F7770](v63, v51);

  MEMORY[0x1A58F7770](0xD000000000000016, 0x80000001A3AA5240);
  sub_1A39613D0(v52, v53, v65, v66, &qword_1EB0FF3D8, &qword_1EB0FF3E0, MEMORY[0x1E69E9430]);

  v56 = *(v61 + 8);
  v56(v7, v3);
  v56(v13, v3);
  v56(v18, v3);
  return v62;
}

void sub_1A395FEE0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___CAMLensSmudgeDisplayState_modeIsChanging) = 0;
  sub_1A3A31F20();
  v2 = *(v0 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xEC0000006172656DLL;
      v4 = 0x614320746E6F7246;
    }

    else
    {
      v3 = 0x80000001A3AA4FF0;
      v4 = 0xD000000000000017;
    }
  }

  else
  {
    v3 = 0xEC00000073617265;
    v4 = 0x6D6143206B636142;
  }

  v5 = 0x6E776F6E6B6E55;
  MEMORY[0x1A58F7770](v4, v3);

  MEMORY[0x1A58F7770](0xD000000000000014, 0x80000001A3AA51E0);
  v6 = 0xE700000000000000;
  MEMORY[0x1A58F7770](0x6E776F6E6B6E55, 0xE700000000000000);
  sub_1A389FD78();
  v7 = sub_1A3A31E40();
  v9 = v8;

  MEMORY[0x1A58F7770](0x203A73617728, 0xE600000000000000);
  v10 = OBJC_IVAR___CAMLensSmudgeDisplayState__status;
  v11 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState__status);
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      if (v11 == 3)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v5 = 0x64656764756D53;
  }

  else
  {
    if (v11)
    {
      if (v11 == 1)
      {
        v6 = 0xEC00000064657463;
        v5 = 0x6574654420746F4ELL;
        goto LABEL_15;
      }

LABEL_12:
      v6 = 0xE500000000000000;
      v5 = 0x726F727245;
      goto LABEL_15;
    }

    v6 = 0xE800000000000000;
    v5 = 0x64656C6261736944;
  }

LABEL_15:
  MEMORY[0x1A58F7770](v5, v6);

  MEMORY[0x1A58F7770](41, 0xE100000000000000);
  sub_1A39613D0(v7, v9, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

  *(v1 + v10) = 3;
  v12 = OBJC_IVAR___CAMLensSmudgeDisplayState_timer;
  v13 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_timer);
  if (v13)
  {
    [v13 invalidate];
    v14 = *(v1 + v12);
  }

  else
  {
    v14 = 0;
  }

  *(v1 + v12) = 0;
}

char *sub_1A39601A0()
{
  v1 = v0;
  v2 = sub_1A3A2ECE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_preferences);
  v7 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
  result = [v6 smudgeAcknowledgementCountForDevicePosition_];
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    [v6 setSmudgeAcknowledgementCount:result + 1 forDevicePosition:v7];
    sub_1A3A2ECB0();
    v9 = sub_1A3A2EC80();
    (*(v3 + 8))(v5, v2);
    [v6 setSmudgeAcknowledgementDate:v9 forDevicePosition:v7];

    v12 = 0;
    v13 = 0xE000000000000000;
    sub_1A3A31F20();
    if (v7)
    {
      if (v7 == 1)
      {
        v10 = 0xEC0000006172656DLL;
        v11 = 0x614320746E6F7246;
      }

      else
      {
        v10 = 0x80000001A3AA4FF0;
        v11 = 0xD000000000000017;
      }
    }

    else
    {
      v10 = 0xEC00000073617265;
      v11 = 0x6D6143206B636142;
    }

    MEMORY[0x1A58F7770](v11, v10);

    MEMORY[0x1A58F7770](0xD000000000000051, 0x80000001A3AA5180);
    sub_1A39613D0(v12, v13, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

    sub_1A395FEE0();
    return sub_1A3989CF4(*(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper), *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper + 8));
  }

  return result;
}

uint64_t sub_1A3960578()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF428);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF430);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = _s15AnalyticsHelperV9AnalyticsVMa();
  v9 = *(v8 - 1);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = *(v0 + OBJC_IVAR___CAMLensSmudgeDisplayState_preferences);
  v19 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
  result = [v18 smudgeAcknowledgementCountForDevicePosition_];
  if (result >= 1)
  {
    v33 = v4;
    result = [v18 smudgeNotDetectedCountForDevicePosition_];
    v21 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      if (v21 > 3)
      {
        sub_1A3961018(0, v19);
        v22 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper + 8);
        v32 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper);
        v23 = [v32 smudgeAnalyticsDictionaryForDevicePosition_];
        if (v23)
        {
          v24 = v23;
          v31 = v22;
          v25 = sub_1A3A31710();

          sub_1A398B380(v25, v7);
          if ((*(v9 + 48))(v7, 1, v8) == 1)
          {
            sub_1A3961760(v7);
          }

          else
          {
            sub_1A39617C8(v7, v15);
            sub_1A39617C8(v15, v17);
            sub_1A396182C(v17, v12);
            v12[v8[14]] = 0;
            v26 = v33;
            sub_1A3A2ECD0();
            v27 = sub_1A3A2ECE0();
            (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
            sub_1A3961890(v26, &v12[v8[16]]);
            v28 = sub_1A398D23C();

            v29 = &v12[v8[13]];
            *v29 = v28;
            v29[8] = 0;
            v12[v8[15]] = 1;
            [v32 removeSmudgeAnalyticsDictionaryForDevicePosition_];
            sub_1A398DE94(v12);
            sub_1A3961B00(v17);
            sub_1A3961B00(v12);
          }
        }

        v21 = 0;
      }

      else
      {
        sub_1A3989FA8(*(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper), *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper + 8));
      }

      return sub_1A3961194(v21, v19);
    }
  }

  return result;
}

void sub_1A3960924()
{
  v1 = v0;
  if (sub_1A395F7F8(*(v0 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition)))
  {
    v2 = OBJC_IVAR___CAMLensSmudgeDisplayState_timer;
    if (!*(v0 + OBJC_IVAR___CAMLensSmudgeDisplayState_timer))
    {
      v3 = objc_opt_self();
      v4 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_displayDuration);
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9[4] = sub_1A3961B5C;
      v9[5] = v5;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_1A395EC3C;
      v9[3] = &block_descriptor_5;
      v6 = _Block_copy(v9);

      v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:v4];
      _Block_release(v6);
      v8 = *(v1 + v2);
      *(v1 + v2) = v7;
    }
  }
}

uint64_t sub_1A3960A74()
{
  v1 = v0;
  v2 = 0xEC00000073617265;
  v3 = 0x6D6143206B636142;
  v4 = *(v0 + OBJC_IVAR___CAMLensSmudgeDisplayState_preferences);
  v5 = *(v0 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
  v6 = sub_1A395F7F8(v5);
  if ([v4 areSmudgeNotificationsEnabled])
  {
    if (v6)
    {
      sub_1A3A31F20();
      if (v5)
      {
        if (v5 == 1)
        {
          v3 = 0x614320746E6F7246;
          v2 = 0xEC0000006172656DLL;
        }

        else
        {
          v2 = 0x80000001A3AA4FF0;
          v3 = 0xD000000000000017;
        }
      }

      MEMORY[0x1A58F7770](v3, v2);

      MEMORY[0x1A58F7770](0xD00000000000001FLL, 0x80000001A3AA5380);
      sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

      v10 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper);
      v11 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper + 8);

      return sub_1A398A104(v10, v11);
    }

    else
    {
      sub_1A3A31F20();
      if (v5)
      {
        if (v5 == 1)
        {
          v3 = 0x614320746E6F7246;
          v2 = 0xEC0000006172656DLL;
        }

        else
        {
          v2 = 0x80000001A3AA4FF0;
          v3 = 0xD000000000000017;
        }
      }

      MEMORY[0x1A58F7770](v3, v2);

      MEMORY[0x1A58F7770](0xD00000000000001ELL, 0x80000001A3AA5360);
      sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

      v12 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper);
      v13 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper + 8);

      return sub_1A398A248(v12, v13);
    }
  }

  else
  {
    sub_1A3A31F20();
    if (v5)
    {
      if (v5 == 1)
      {
        v3 = 0x614320746E6F7246;
        v2 = 0xEC0000006172656DLL;
      }

      else
      {
        v2 = 0x80000001A3AA4FF0;
        v3 = 0xD000000000000017;
      }
    }

    MEMORY[0x1A58F7770](v3, v2);

    MEMORY[0x1A58F7770](0xD00000000000004CLL, 0x80000001A3AA5310);
    sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

    v7 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper);
    v8 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper + 8);

    return sub_1A398A38C(v7, v8);
  }
}

void sub_1A3960E18(void *a1)
{
  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR___CAMLensSmudgeDisplayState_timer);
    *(Strong + OBJC_IVAR___CAMLensSmudgeDisplayState_timer) = 0;

    sub_1A395F17C(3);
    sub_1A3A31F20();
    v4 = OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition;
    v5 = *&v2[OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition];
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = 0xEC0000006172656DLL;
        v7 = 0x614320746E6F7246;
      }

      else
      {
        v6 = 0x80000001A3AA4FF0;
        v7 = 0xD000000000000017;
      }
    }

    else
    {
      v6 = 0xEC00000073617265;
      v7 = 0x6D6143206B636142;
    }

    MEMORY[0x1A58F7770](v7, v6);

    MEMORY[0x1A58F7770](0xD000000000000010, 0x80000001A3AA53A0);
    sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

    v8 = *&v2[OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper + 8];
    v9 = *&v2[OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper];
    sub_1A3989E74(v9, v8);

    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      if ([v10 respondsToSelector_])
      {
        [v11 lensSmudgeDisplayShouldBeHiddenForDevicePosition_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1A3961018(uint64_t a1, uint64_t a2)
{
  [v2 setSmudgeAcknowledgementCount:a1 forDevicePosition:a2];
  sub_1A3A31F20();
  v4 = 0x80000001A3AA4FF0;
  v5 = 0x614320746E6F7246;
  if (a2 == 1)
  {
    v4 = 0xEC0000006172656DLL;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6D6143206B636142;
  }

  if (a2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC00000073617265;
  }

  MEMORY[0x1A58F7770](v6, v7);

  MEMORY[0x1A58F7770](0xD000000000000020, 0x80000001A3AA52C0);
  v8 = sub_1A3A321A0();
  MEMORY[0x1A58F7770](v8);

  MEMORY[0x1A58F7770](46, 0xE100000000000000);
  sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);
}

uint64_t sub_1A3961194(uint64_t a1, uint64_t a2)
{
  [v2 setSmudgeNotDetectedCount:a1 forDevicePosition:a2];
  sub_1A3A31F20();
  v4 = 0x80000001A3AA4FF0;
  v5 = 0x614320746E6F7246;
  if (a2 == 1)
  {
    v4 = 0xEC0000006172656DLL;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6D6143206B636142;
  }

  if (a2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC00000073617265;
  }

  MEMORY[0x1A58F7770](v6, v7);

  MEMORY[0x1A58F7770](0xD00000000000001DLL, 0x80000001A3AA52F0);
  v8 = sub_1A3A321A0();
  MEMORY[0x1A58F7770](v8);

  MEMORY[0x1A58F7770](46, 0xE100000000000000);
  sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);
}

void sub_1A39613D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, unint64_t *a6, uint64_t (*a7)(void))
{
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    sub_1A3A2EA50();
    a3 = a1;
    v13 = a2;
  }

  v14 = a3 == *a5 && v13 == *a6;
  if (v14 || (sub_1A3A321C0() & 1) != 0)
  {
    sub_1A3A2EA50();
  }

  else
  {
    *a5 = a3;
    *a6 = v13;
    sub_1A3A2EA50();

    if (qword_1ED996488 != -1)
    {
      swift_once();
    }

    v15 = sub_1A3A2F2A0();
    __swift_project_value_buffer(v15, qword_1ED9981F8);
    v16 = a7();
    sub_1A3A2EA50();
    oslog = sub_1A3A2F280();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_1A39ABC10(a1, a2, &v20);
      _os_log_impl(&dword_1A3640000, oslog, v16, "%{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1A58FAC10](v18, -1, -1);
      MEMORY[0x1A58FAC10](v17, -1, -1);
    }
  }
}

void sub_1A39615F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1A3A31810();
  [v0 setDateFormat_];

  qword_1EB0FF3C8 = v0;
}

id sub_1A3961668()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setUnitsStyle_];
  [v0 setAllowedUnits_];
  result = [v0 setZeroFormattingBehavior_];
  qword_1EB0FF3D0 = v0;
  return result;
}

uint64_t sub_1A39616E0()
{
  v0 = sub_1A3A2F2A0();
  __swift_allocate_value_buffer(v0, qword_1ED9981F8);
  __swift_project_value_buffer(v0, qword_1ED9981F8);
  return sub_1A3A2F290();
}

uint64_t sub_1A3961760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A39617C8(uint64_t a1, uint64_t a2)
{
  v4 = _s15AnalyticsHelperV9AnalyticsVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A396182C(uint64_t a1, uint64_t a2)
{
  v4 = _s15AnalyticsHelperV9AnalyticsVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3961890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF428);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1A3961900(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR___CAMLensSmudgeDisplayState_modeIsChanging] = 0;
  *&v5[OBJC_IVAR___CAMLensSmudgeDisplayState_timer] = 0;
  *&v5[OBJC_IVAR___CAMLensSmudgeDisplayState__status] = 3;
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition] = a3;
  *&v5[OBJC_IVAR___CAMLensSmudgeDisplayState_displayDuration] = a1;
  *&v5[OBJC_IVAR___CAMLensSmudgeDisplayState_preferences] = a4;
  v10 = &v5[OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper];
  *v10 = a4;
  v10[1] = a3;
  v11 = a4;
  sub_1A3A31F20();

  v18 = 0x20809A9FF0;
  v19 = 0xA500000000000000;
  v12 = 0x80000001A3AA4FF0;
  v13 = 0x614320746E6F7246;
  if (a3 == 1)
  {
    v12 = 0xEC0000006172656DLL;
  }

  else
  {
    v13 = 0xD000000000000017;
  }

  if (a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x6D6143206B636142;
  }

  if (a3)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xEC00000073617265;
  }

  MEMORY[0x1A58F7770](v14, v15);

  MEMORY[0x1A58F7770](0xD000000000000026, 0x80000001A3AA53E0);
  sub_1A39613D0(v18, v19, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

  v17.receiver = v5;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_1A3961B00(uint64_t a1)
{
  v2 = _s15AnalyticsHelperV9AnalyticsVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A3A2EA60();
}

uint64_t sub_1A3961B84(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1A3A31560();
}

uint64_t sub_1A3961D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3A301E0();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1A3A301F0();
}

uint64_t sub_1A3961E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A3A301E0();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1A3A301F0();
}

uint64_t View.earViews<A, B>(screenSize:alignment:leftEar:rightEar:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, __int128 a12)
{
  v15 = *a1;
  v28 = 1;
  v27 = 1;
  v26 = 1;
  v25 = 1;
  *&v18 = a9;
  *(&v18 + 1) = a10;
  *&v19 = 0;
  BYTE8(v19) = 1;
  *&v20 = 0;
  BYTE8(v20) = 1;
  *&v21 = 0;
  BYTE8(v21) = 1;
  *&v22 = 0;
  WORD4(v22) = 1;
  BYTE10(v22) = v15;
  *&v23 = a2;
  *(&v23 + 1) = a3;
  *&v24 = a4;
  *(&v24 + 1) = a5;
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  *&v29 = a7;
  *(&v29 + 1) = a8;
  v30 = a12;
  v16 = type metadata accessor for EarViewsModifier();
  MEMORY[0x1A58F6B00](&v18, a6, v16, a11);
  v33 = v22;
  v34 = v23;
  v35 = v24;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  return (*(*(v16 - 8) + 8))(&v29, v16);
}

uint64_t sub_1A39620C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3A2F680();
  v6 = v30;
  v7 = v30 * 0.5;
  v8 = v31;
  v9 = DWORD1(v31);
  v10 = *(&v31 + 1);
  v11 = v32;
  sub_1A3A2EA60();
  v12 = sub_1A3A31480();
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v13 = *v29;
  v14 = *&v29[16];
  v36 = *v29;
  v37 = *&v29[16];
  v35[0] = v33[0];
  v35[1] = v31;
  *&v38 = v12;
  *(&v38 + 1) = v15;
  v16 = v31;
  *(a3 + 8) = v33[0];
  v17 = v37;
  *(a3 + 72) = v38;
  v18 = v36;
  *(a3 + 56) = v17;
  *a3 = a2;
  *(a3 + 40) = v18;
  *(a3 + 24) = v16;
  v39[2] = v13;
  v39[3] = v14;
  v39[0] = v27;
  v39[1] = v28;
  v40 = v12;
  v41 = v15;
  sub_1A388F6D8(v33, v20, &qword_1EB0FF508);
  sub_1A3A2EA60();
  sub_1A388F6D8(v35, v20, &qword_1EB0FEC90);
  sub_1A388F740(v39, &qword_1EB0FEC90);
  *v20 = v7;
  *&v20[1] = v6;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = a1;
  v26 = 256;
  return sub_1A388F740(v20, &qword_1EB0FF508);
}

uint64_t VerticalEarAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](v1);
  return sub_1A3A32300();
}

unint64_t sub_1A3962328()
{
  result = qword_1EB0FF438;
  if (!qword_1EB0FF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF438);
  }

  return result;
}

uint64_t sub_1A39623D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1A3962430(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3962478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3962518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v24 = a1;
  v25 = a3;
  swift_getWitnessTable();
  sub_1A3A30260();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDFF8);
  v5 = *(a2 + 16);
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE0B0);
  sub_1A3A2FA90();
  v23 = *(a2 + 24);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31030();
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31120();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF4C8);
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31140();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  v6 = sub_1A3A30200();
  WitnessTable = swift_getWitnessTable();
  v37 = MEMORY[0x1E697EBF8];
  v22[2] = MEMORY[0x1E697E858];
  v34 = swift_getWitnessTable();
  v35 = MEMORY[0x1E6980A30];
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x1E6981E60];
  v22[1] = v6;
  swift_getWitnessTable();
  sub_1A3A2FC00();
  v7 = sub_1A3A2FA90();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  v14 = v3[5];
  v38[4] = v3[4];
  v38[5] = v14;
  v38[6] = v3[6];
  v15 = v3[1];
  v38[0] = *v3;
  v38[1] = v15;
  v16 = v3[3];
  v38[2] = v3[2];
  v38[3] = v16;
  v26 = v5;
  v27 = v23;
  v28 = *(a2 + 32);
  v29 = v38;
  sub_1A3A31480();
  v17 = swift_getWitnessTable();
  sub_1A3A30C60();
  v18 = swift_getWitnessTable();
  v30 = v17;
  v31 = v18;
  swift_getWitnessTable();
  v19 = *(v8 + 16);
  v19(v13, v11, v7);
  v20 = *(v8 + 8);
  v20(v11, v7);
  v19(v25, v13, v7);
  return (v20)(v13, v7);
}

uint64_t sub_1A3962A38@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a6;
  v67 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDFF8);
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE0B0);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31030();
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31120();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF4C8);
  swift_getTupleTypeMetadata2();
  v10 = sub_1A3A31550();
  WitnessTable = swift_getWitnessTable();
  v54 = v10;
  v11 = sub_1A3A31140();
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v52 = v51 - v12;
  v14 = v13;
  v15 = sub_1A3A2FA90();
  v57 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v55 = v51 - v16;
  v17 = sub_1A3A2FA90();
  v60 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v59 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = v51 - v20;
  v21 = sub_1A3A30200();
  v64 = *(v21 - 8);
  v65 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v51 - v22;
  v24 = *(a1 + 5);
  v90 = *(a1 + 4);
  v91 = v24;
  v92 = *(a1 + 6);
  v25 = *(a1 + 1);
  v86 = *a1;
  v87 = v25;
  v26 = *(a1 + 3);
  v88 = *(a1 + 2);
  v89 = v26;
  v61 = a2;
  v62 = a3;
  v82 = a2;
  v83 = a3;
  v63 = a4;
  v84 = a4;
  v85 = v67;
  type metadata accessor for EarViewsModifier();
  v27 = sub_1A39632D0();
  v28 = MEMORY[0x1E6980A30];
  if (v27 > 0.0)
  {
    v29 = *a1;
    if (*a1 != 0.0 || a1[1] != 0.0)
    {
      if (a1[3])
      {
        if (v29 >= a1[1])
        {
          v29 = a1[1];
        }

        static IslandAndNotchMetrics.width(from:)(v29);
        if (v30)
        {
          goto LABEL_12;
        }

        if ((a1[5] & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if ((a1[5] & 1) == 0)
      {
        goto LABEL_14;
      }

      v31 = *(a1 + 5);
      v90 = *(a1 + 4);
      v91 = v31;
      v92 = *(a1 + 6);
      v32 = *(a1 + 1);
      v86 = *a1;
      v87 = v32;
      v33 = *(a1 + 3);
      v88 = *(a1 + 2);
      v89 = v33;
      sub_1A39633B0();
      if ((v34 & 1) == 0)
      {
LABEL_14:
        v40 = sub_1A3A31460();
        MEMORY[0x1EEE9AC00](v40);
        v41 = v52;
        sub_1A3A31130();
        sub_1A3A31460();
        v50 = swift_getWitnessTable();
        v51[1] = v14;
        v42 = v55;
        sub_1A3A30C00();
        (*(v56 + 8))(v41, v14);
        sub_1A3A2FAA0();
        sub_1A3A30610();
        v70 = v50;
        v71 = MEMORY[0x1E697EBF8];
        v43 = swift_getWitnessTable();
        v44 = v59;
        sub_1A3A30A40();
        (*(v57 + 8))(v42, v15);
        v68 = v43;
        v69 = MEMORY[0x1E6980A30];
        v67 = swift_getWitnessTable();
        v45 = v60;
        v46 = *(v60 + 16);
        v47 = v58;
        v46(v58, v44, v17);
        v48 = *(v45 + 8);
        v48(v44, v17);
        v46(v44, v47, v17);
        sub_1A3961D8C(v44, v17);
        v49 = v44;
        v35 = MEMORY[0x1E697EBF8];
        v48(v49, v17);
        v48(v47, v17);
        v28 = MEMORY[0x1E6980A30];
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v80 = swift_getWitnessTable();
  v35 = MEMORY[0x1E697EBF8];
  v81 = MEMORY[0x1E697EBF8];
  v78 = swift_getWitnessTable();
  v79 = v28;
  v36 = swift_getWitnessTable();
  sub_1A3961E84(v36, v17, MEMORY[0x1E6981E70]);
LABEL_13:
  v76 = swift_getWitnessTable();
  v77 = v35;
  v74 = swift_getWitnessTable();
  v75 = v28;
  v72 = swift_getWitnessTable();
  v73 = MEMORY[0x1E6981E60];
  v37 = v65;
  swift_getWitnessTable();
  v38 = v64;
  (*(v64 + 16))(v66, v23, v37);
  return (*(v38 + 8))(v23, v37);
}

double sub_1A39632D0()
{
  if (*(v0 + 74))
  {
    result = *(v0 + 64);
    if (*(v0 + 74) == 1)
    {
      if (*(v0 + 72))
      {

        static IslandAndNotchMetrics.bottomEdgeDistance(within:)();
      }
    }

    else
    {
      return sub_1A3964900();
    }
  }

  else
  {

    static IslandAndNotchMetrics.safeAreaDistance(within:)();
  }

  return result;
}

id sub_1A39633B0()
{
  if (*v0 >= v0[1])
  {
    v1 = v0[1];
  }

  else
  {
    v1 = *v0;
  }

  v2 = static IslandAndNotchMetrics.width(from:)(v1);
  if (v3)
  {
    *&result = 0.0;
  }

  else
  {
    v5 = *&v2;
    result = MobileGestalt_get_current_device();
    if (*&result == 0.0)
    {
      __break(1u);
    }

    else
    {
      v6 = result;
      v7 = MobileGestalt_copy_productType_obj();

      if (v7)
      {
        v8 = v5;
        v9 = sub_1A3A31850();
        v11 = v10;

        v12 = (v1 - v8) * 0.5;
        v13._countAndFlagsBits = v9;
        v13._object = v11;
        IslandAndNotchMetrics.init(rawValue:)(v13);
        v14 = 0.0;
        v15 = 5.0;
        if (((1 << v16) & 0x111) == 0)
        {
          v15 = 0.0;
        }

        if (v16 <= 8u)
        {
          v14 = v15;
        }

        *&result = v12 - v14;
      }

      else
      {
        *&result = 0.0;
      }
    }
  }

  return result;
}

uint64_t sub_1A39634B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v41 = a4;
  v42 = a5;
  v40 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDFF8);
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE0B0);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31030();
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  v13 = sub_1A3A31120();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  v36 = a2;
  v37 = a3;
  v43 = a2;
  v44 = a3;
  v45 = v41;
  v46 = v42;
  v47 = a1;
  v48 = a7;
  v49 = a8;
  sub_1A3A300B0();
  sub_1A3A31110();
  WitnessTable = swift_getWitnessTable();
  v21 = *(v14 + 16);
  v21(v19, v17, v13);
  v22 = *(v14 + 8);
  v38 = v14 + 8;
  v39 = v22;
  v22(v17, v13);
  if (*(a1 + 73))
  {
    v34 = v13;
    v35 = v19;
    v23 = v36;
    v24 = v37;
    v25 = v21;
    v26 = v41;
    v33 = v17;
    v27 = WitnessTable;
    v28 = v42;
    sub_1A396475C(v36, v37, v41, v42, v50);
    *&v82 = v23;
    *(&v82 + 1) = v24;
    *&v83 = v26;
    v21 = v25;
    *(&v83 + 1) = v28;
    WitnessTable = v27;
    v17 = v33;
    v13 = v34;
    type metadata accessor for EarViewsModifier();
    static IslandAndNotchMetrics.safeAreaDistance(within:)();
    sub_1A3A31480();
    sub_1A3A2F780();
    v79 = v50[10];
    v80 = v50[11];
    v81 = v51;
    v75 = v50[6];
    v76 = v50[7];
    v77 = v50[8];
    v78 = v50[9];
    v71 = v50[2];
    v72 = v50[3];
    v19 = v35;
    v73 = v50[4];
    v74 = v50[5];
    v69 = v50[0];
    v70 = v50[1];
    CAMPhotoFormatMake(&v69, v29);
    v92 = v79;
    v93 = v80;
    v94 = v81;
    v88 = v75;
    v89 = v76;
    v90 = v77;
    v91 = v78;
    v84 = v71;
    v85 = v72;
    v86 = v73;
    v87 = v74;
    v82 = v69;
    v83 = v70;
  }

  else
  {
    sub_1A39649B8(&v82);
  }

  v21(v17, v19, v13);
  v65 = v92;
  v66 = v93;
  v67 = v94;
  v61 = v88;
  v62 = v89;
  v63 = v90;
  v64 = v91;
  v57 = v84;
  v58 = v85;
  v59 = v86;
  v60 = v87;
  v55 = v82;
  v56 = v83;
  v68[0] = v17;
  v68[1] = &v55;
  sub_1A388F6D8(&v82, &v69, &qword_1EB0FF4C8);
  v54[0] = v13;
  v54[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF4C8);
  v52 = WitnessTable;
  v53 = sub_1A39649DC();
  sub_1A3961B84(v68, 2uLL, v54);
  sub_1A388F740(&v82, &qword_1EB0FF4C8);
  v30 = v19;
  v31 = v39;
  v39(v30, v13);
  v79 = v65;
  v80 = v66;
  v81 = v67;
  v75 = v61;
  v76 = v62;
  v77 = v63;
  v78 = v64;
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v74 = v60;
  v69 = v55;
  v70 = v56;
  sub_1A388F740(&v69, &qword_1EB0FF4C8);
  return v31(v17, v13);
}

uint64_t sub_1A3963A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v35 = a5;
  v41 = a4;
  v40 = a6;
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE0B0);
  sub_1A3A2FA90();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDFF8);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  v39 = v13;
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1A3A31030();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v36 = &v31 - v19;
  v20 = *(a1 + 56);
  v21 = *(a1 + 74);
  v37 = a2;
  v45 = a2;
  v38 = a3;
  v46 = a3;
  v47 = v41;
  v22 = v35;
  v48 = v35;
  type metadata accessor for EarViewsModifier();
  if (v21 >= 2 && (v20 & 1) != 0)
  {
    static IslandAndNotchMetrics.topEdgeDistance(within:)();
  }

  sub_1A3A31480();
  v23 = sub_1A3A2F780();
  v24 = v54[2];
  v31 = v56;
  v33 = v58;
  v32 = v59;
  v65 = 1;
  v63 = v55;
  v61 = v57;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v38;
  *(&v31 - 8) = v37;
  *(&v31 - 7) = v25;
  *(&v31 - 6) = v41;
  *(&v31 - 5) = v22;
  *(&v31 - 4) = a1;
  *(&v31 - 3) = a7;
  *(&v31 - 2) = a8;
  sub_1A3A2FF40();
  sub_1A3A31020();
  v26 = swift_getWitnessTable();
  v27 = *(v15 + 16);
  v28 = v36;
  v27(v36, v18, v14);
  v29 = *(v15 + 8);
  v29(v18, v14);
  v45 = 0;
  LOBYTE(v46) = v65;
  *(&v46 + 1) = *v64;
  HIDWORD(v46) = *&v64[3];
  v47 = v24;
  LOBYTE(v48) = v63;
  *(&v48 + 1) = *v62;
  HIDWORD(v48) = *&v62[3];
  v49 = v31;
  v50 = v61;
  *v51 = *v60;
  *&v51[3] = *&v60[3];
  v52 = v33;
  v53 = v32;
  v54[0] = &v45;
  v27(v18, v28, v14);
  v54[1] = v18;
  v44[0] = v39;
  v44[1] = v14;
  v42 = sub_1A390FA98();
  v43 = v26;
  sub_1A3961B84(v54, 2uLL, v44);
  v29(v28, v14);
  return (v29)(v18, v14);
}

uint64_t sub_1A3963EF8@<X0>(void (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v82 = a3;
  v83 = a5;
  v69 = a4;
  v78 = a6;
  v77 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1A3A2FA90();
  v76 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v59 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE0B0);
  v75 = sub_1A3A2FA90();
  v85 = *(v75 - 8);
  v12 = MEMORY[0x1EEE9AC00](v75);
  v71 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v74 = &v59 - v15;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A3A2FA90();
  v68 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59 - v20;
  v80 = sub_1A3A2FA90();
  v84 = *(v80 - 8);
  v22 = MEMORY[0x1EEE9AC00](v80);
  v79 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v81 = &v59 - v25;
  a1[10](v24);
  v66 = a7;
  v26 = *(a1 + 5);
  v95 = *(a1 + 4);
  v96 = v26;
  v97 = *(a1 + 6);
  v27 = *(a1 + 1);
  v91 = *a1;
  v92 = v27;
  v28 = *(a1 + 3);
  v93 = *(a1 + 2);
  v94 = v28;
  v98 = a2;
  v99 = v82;
  v29 = v69;
  v100 = v69;
  v101 = v83;
  v67 = type metadata accessor for EarViewsModifier();
  sub_1A39632D0();
  sub_1A3A31480();
  sub_1A3A30BF0();
  (*(v16 + 8))(v18, a2);
  v30 = MEMORY[0x1E697E040];
  v90[9] = v29;
  v90[10] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v32 = v79;
  sub_1A3A30B60();
  (*(v68 + 8))(v21, v19);
  v33 = sub_1A38A08F8(&qword_1EB0FE0A8, &qword_1EB0FE0B0);
  v90[7] = WitnessTable;
  v90[8] = v33;
  v34 = v80;
  v68 = swift_getWitnessTable();
  v35 = v84;
  v36 = *(v84 + 16);
  v64 = v84 + 16;
  v65 = v36;
  v36(v81, v32, v34);
  v37 = *(v35 + 8);
  v84 = v35 + 8;
  v69 = v37;
  v37(v32, v34);
  sub_1A3A31480();
  v38 = sub_1A3A2F780();
  v60 = v98;
  v61 = v100;
  v62 = v103;
  v63 = v102;
  v109 = 1;
  v107 = v99;
  v105 = v101;
  v39 = v70;
  a1[12](v38);
  v40 = *(a1 + 5);
  v95 = *(a1 + 4);
  v96 = v40;
  v97 = *(a1 + 6);
  v41 = *(a1 + 1);
  v91 = *a1;
  v92 = v41;
  v42 = *(a1 + 3);
  v93 = *(a1 + 2);
  v94 = v42;
  sub_1A39632D0();
  sub_1A3A31480();
  v43 = v72;
  v45 = v82;
  v44 = v83;
  sub_1A3A30BF0();
  (*(v77 + 8))(v39, v45);
  v90[5] = v44;
  v90[6] = v30;
  v46 = v73;
  v47 = swift_getWitnessTable();
  v48 = v71;
  sub_1A3A30B60();
  (*(v76 + 8))(v43, v46);
  v90[3] = v47;
  v90[4] = v33;
  v49 = v75;
  v83 = swift_getWitnessTable();
  v50 = v85;
  v51 = *(v85 + 16);
  v52 = v74;
  v51(v74, v48, v49);
  v53 = *(v50 + 8);
  v85 = v50 + 8;
  v53(v48, v49);
  v55 = v79;
  v54 = v80;
  v56 = v81;
  v65(v79, v81, v80);
  *&v91 = 0;
  BYTE8(v91) = v109;
  *(&v91 + 9) = *v108;
  HIDWORD(v91) = *&v108[3];
  *&v92 = v60;
  BYTE8(v92) = v107;
  *(&v92 + 9) = *v106;
  HIDWORD(v92) = *&v106[3];
  *&v93 = v61;
  BYTE8(v93) = v105;
  *(&v93 + 9) = *v104;
  HIDWORD(v93) = *&v104[3];
  *&v94 = v63;
  *(&v94 + 1) = v62;
  v90[0] = v55;
  v90[1] = &v91;
  v51(v48, v52, v49);
  v90[2] = v48;
  v89[0] = v54;
  v89[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDFF8);
  v89[2] = v49;
  v86 = v68;
  v87 = sub_1A390FA98();
  v88 = v83;
  sub_1A3961B84(v90, 3uLL, v89);
  v53(v52, v49);
  v57 = v69;
  v69(v56, v54);
  v53(v48, v49);
  return v57(v55, v54);
}

uint64_t sub_1A396475C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;
  *&v41 = a3;
  *(&v41 + 1) = a4;
  type metadata accessor for EarViewsModifier();
  static IslandAndNotchMetrics.safeAreaDistance(within:)();
  sub_1A3A31480();
  sub_1A3A2F780();
  v6 = v29;
  v7 = v31;
  v8 = v33;
  v9 = v34;
  v37 = 1;
  v36 = v30;
  v35 = v32;
  v10 = sub_1A3A30DB0();
  v11 = sub_1A3A30D60();
  sub_1A39620C0(v11, v10, &v23);

  v12 = v37;
  v13 = v36;
  v14 = v28;
  v39 = v28;
  v15 = v35;
  v17 = v24;
  v16 = v25;
  v38[2] = v25;
  v38[3] = v26;
  v18 = v26;
  v38[4] = v27;
  v19 = v23;
  v38[0] = v23;
  v38[1] = v24;
  *a5 = 0;
  *(a5 + 8) = v12;
  *(a5 + 16) = v6;
  *(a5 + 24) = v13;
  *(a5 + 32) = v7;
  *(a5 + 40) = v15;
  *(a5 + 48) = v8;
  *(a5 + 56) = v9;
  *(a5 + 96) = v16;
  *(a5 + 112) = v18;
  v20 = v27;
  *(a5 + 128) = v27;
  *(a5 + 144) = v14;
  *(a5 + 64) = v19;
  *(a5 + 80) = v17;
  v45 = v14;
  v42 = v16;
  v43 = v18;
  v44 = v20;
  v40 = v19;
  v41 = v17;
  sub_1A388F6D8(v38, v22, &qword_1EB0FEC88);
  return sub_1A388F740(&v40, &qword_1EB0FEC88);
}

double sub_1A3964900()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  if (*(v0 + 72))
  {
    static IslandAndNotchMetrics.bottomEdgeDistance(within:)();
    v4 = v3;
    if ((v2 & 1) == 0)
    {
      return v4 - v1;
    }

    goto LABEL_5;
  }

  v4 = *(v0 + 64);
  if (*(v0 + 56))
  {
LABEL_5:
    static IslandAndNotchMetrics.topEdgeDistance(within:)();
    v1 = v5;
  }

  return v4 - v1;
}

double sub_1A39649B8(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1A39649DC()
{
  result = qword_1EB0FF4D0;
  if (!qword_1EB0FF4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF4C8);
    sub_1A3964A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF4D0);
  }

  return result;
}

unint64_t sub_1A3964A60()
{
  result = qword_1EB0FF4D8;
  if (!qword_1EB0FF4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF4E0);
    sub_1A3964AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF4D8);
  }

  return result;
}

unint64_t sub_1A3964AEC()
{
  result = qword_1EB0FF4E8;
  if (!qword_1EB0FF4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF4F0);
    sub_1A38A08F8(&qword_1EB0FF4F8, &qword_1EB0FF500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF4E8);
  }

  return result;
}

id static IslandAndNotchMetrics.width(from:)(double a1)
{
  result = MobileGestalt_get_current_device();
  if (*&result == 0.0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = result;
  v4 = MobileGestalt_copy_productType_obj();

  if (!v4)
  {
    *&result = 0.0;
    return result;
  }

  v5 = sub_1A3A31850();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  IslandAndNotchMetrics.init(rawValue:)(v8);
  *&result = 0.0;
  v9 = 229.0;
  switch(v16)
  {
    case 1:
    case 2:
    case 5:
    case 6:
    case 7:
      *&v10 = 208.0;
      goto LABEL_8;
    case 3:
    case 12:
    case 30:
      return result;
    case 4:
      *&v10 = 216.0;
      goto LABEL_8;
    case 8:
      *&v10 = 166.0;
      goto LABEL_8;
    case 9:
    case 10:
    case 11:
    case 13:
    case 14:
    case 25:
      *&v10 = 160.0;
      goto LABEL_8;
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
      *&v10 = 124.0;
LABEL_8:
      v9 = *&v10;
      break;
    default:
      break;
  }

  result = MobileGestalt_get_current_device();
  if (*&result == 0.0)
  {
    goto LABEL_15;
  }

  v11 = result;
  mainScreenWidth = MobileGestalt_get_mainScreenWidth();

  result = MobileGestalt_get_current_device();
  if (*&result != 0.0)
  {
    v13 = result;
    MobileGestalt_get_mainScreenScale();
    v15 = v14;

    *&result = v9 * (a1 / (mainScreenWidth / v15));
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

void static IslandAndNotchMetrics.topEdgeDistance(within:)()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = v0;
  v2 = MobileGestalt_copy_productType_obj();

  if (v2)
  {
    v3 = sub_1A3A31850();
    v5 = v4;

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    IslandAndNotchMetrics.init(rawValue:)(v6);
    if (v11 != 30)
    {
      v7 = MobileGestalt_get_current_device();
      if (v7)
      {
        v8 = v7;
        MobileGestalt_get_mainScreenHeight();

        v9 = MobileGestalt_get_current_device();
        if (v9)
        {
          v10 = v9;
          MobileGestalt_get_mainScreenScale();

          return;
        }

LABEL_10:
        __break(1u);
        return;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }
}

void static IslandAndNotchMetrics.bottomEdgeDistance(within:)()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = v0;
  v2 = MobileGestalt_copy_productType_obj();

  if (v2)
  {
    v3 = sub_1A3A31850();
    v5 = v4;

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    IslandAndNotchMetrics.init(rawValue:)(v6);
    if (v11 != 30)
    {
      v7 = MobileGestalt_get_current_device();
      if (v7)
      {
        v8 = v7;
        MobileGestalt_get_mainScreenHeight();

        v9 = MobileGestalt_get_current_device();
        if (v9)
        {
          v10 = v9;
          MobileGestalt_get_mainScreenScale();

          return;
        }

LABEL_10:
        __break(1u);
        return;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }
}

void static IslandAndNotchMetrics.safeAreaDistance(within:)()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = v0;
  v2 = MobileGestalt_copy_productType_obj();

  if (v2)
  {
    v3 = sub_1A3A31850();
    v5 = v4;

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    IslandAndNotchMetrics.init(rawValue:)(v6);
    if (v11 != 30)
    {
      v7 = MobileGestalt_get_current_device();
      if (v7)
      {
        v8 = v7;
        MobileGestalt_get_mainScreenHeight();

        v9 = MobileGestalt_get_current_device();
        if (v9)
        {
          v10 = v9;
          MobileGestalt_get_mainScreenScale();

          return;
        }

LABEL_10:
        __break(1u);
        return;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }
}

id static IslandAndNotchMetrics.widthOfEars(from:adjustment:)(char *a1, double a2)
{
  v3 = *a1;
  v4 = static IslandAndNotchMetrics.width(from:)(a2);
  if (v5)
  {
    goto LABEL_10;
  }

  v6 = *&v4;
  result = MobileGestalt_get_current_device();
  if (*&result == 0.0)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = MobileGestalt_copy_productType_obj();

  if (!v9)
  {
LABEL_10:
    *&result = 0.0;
    return result;
  }

  v10 = v6;
  v11 = sub_1A3A31850();
  v13 = v12;

  v14 = (a2 - v10) * 0.5;
  if (v3)
  {
    v15._countAndFlagsBits = v11;
    v15._object = v13;
    IslandAndNotchMetrics.init(rawValue:)(v15);
    v16 = 0.0;
    v17 = 5.0;
    if (((1 << v18) & 0x111) == 0)
    {
      v17 = 0.0;
    }

    if (v18 <= 8u)
    {
      v16 = v17;
    }

    *&result = v14 - v16;
  }

  else
  {

    *&result = v14;
  }

  return result;
}

CameraUI::IslandAndNotchMetrics_optional __swiftcall IslandAndNotchMetrics.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A3A321E0();

  v5 = 0;
  v6 = 12;
  switch(v3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
      goto LABEL_24;
    case 10:
      v5 = 10;
      goto LABEL_24;
    case 11:
      v5 = 11;
LABEL_24:
      v6 = v5;
      break;
    case 12:
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
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    default:
      v6 = 30;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t IslandAndNotchMetrics.Adjustment.hashValue.getter()
{
  v1 = *v0;
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](v1);
  return sub_1A3A32300();
}

void static IslandAndNotchMetrics.frame(from:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = static IslandAndNotchMetrics.width(from:)(a2);
  v5 = 0uLL;
  v6 = 0.0;
  if (v7)
  {
    v8 = 0;
    v9 = 1;
LABEL_8:
    *a1 = v5;
    *(a1 + 16) = v8;
    *(a1 + 24) = v6;
    *(a1 + 32) = v9;
    return;
  }

  v8 = v4;
  v10 = COERCE_DOUBLE(static IslandAndNotchMetrics.width(from:)(a2));
  if (v11)
  {
LABEL_7:
    v8 = 0;
    v9 = 1;
    v5 = 0uLL;
    goto LABEL_8;
  }

  v12 = v10;
  v13 = MobileGestalt_get_current_device();
  if (v13)
  {
    v14 = v13;
    v15 = MobileGestalt_copy_productType_obj();

    if (v15)
    {

      static IslandAndNotchMetrics.topEdgeDistance(within:)();
      v18 = v16;
      static IslandAndNotchMetrics.bottomEdgeDistance(within:)();
      v9 = 0;
      v6 = v17 - v18;
      *&v5 = (a2 - v12) * 0.5;
      *(&v5 + 1) = v18;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t IslandAndNotchMetrics.rawValue.getter()
{
  result = 0x3231656E6F685069;
  switch(*v0)
  {
    case 4:
      result = 0x3331656E6F685069;
      break;
    case 5:
      result = 0x3331656E6F685069;
      break;
    case 6:
      result = 0x3331656E6F685069;
      break;
    case 7:
      result = 0x3331656E6F685069;
      break;
    case 8:
      result = 0x3431656E6F685069;
      break;
    case 9:
      result = 0x3431656E6F685069;
      break;
    case 0xA:
      result = 0x3431656E6F685069;
      break;
    case 0xB:
      result = 0x3431656E6F685069;
      break;
    case 0xC:
      result = 0x3431656E6F685069;
      break;
    case 0xD:
      result = 0x3431656E6F685069;
      break;
    case 0xE:
      result = 0x3431656E6F685069;
      break;
    case 0xF:
      result = 0x3531656E6F685069;
      break;
    case 0x10:
      result = 0x3531656E6F685069;
      break;
    case 0x11:
      result = 0x3531656E6F685069;
      break;
    case 0x12:
      result = 0x3531656E6F685069;
      break;
    case 0x13:
      result = 0x3631656E6F685069;
      break;
    case 0x14:
      result = 0x3631656E6F685069;
      break;
    case 0x15:
      result = 0x3731656E6F685069;
      break;
    case 0x16:
      result = 0x3731656E6F685069;
      break;
    case 0x17:
      result = 0x3731656E6F685069;
      break;
    case 0x18:
      result = 0x3731656E6F685069;
      break;
    case 0x19:
      result = 0x3731656E6F685069;
      break;
    case 0x1A:
      result = 0x3831656E6F685069;
      break;
    case 0x1B:
      result = 0x3831656E6F685069;
      break;
    case 0x1C:
      result = 0x3831656E6F685069;
      break;
    case 0x1D:
      result = 0x3831656E6F685069;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1A396571C()
{
  result = qword_1EB0FF510;
  if (!qword_1EB0FF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF510);
  }

  return result;
}

uint64_t sub_1A3965770()
{
  v0 = IslandAndNotchMetrics.rawValue.getter();
  v2 = v1;
  if (v0 == IslandAndNotchMetrics.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A3A321C0();
  }

  return v5 & 1;
}

unint64_t sub_1A3965810()
{
  result = qword_1EB0FF518;
  if (!qword_1EB0FF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF518);
  }

  return result;
}

uint64_t sub_1A3965864()
{
  sub_1A3A322C0();
  IslandAndNotchMetrics.rawValue.getter();
  sub_1A3A318B0();

  return sub_1A3A32300();
}

uint64_t sub_1A39658CC()
{
  IslandAndNotchMetrics.rawValue.getter();
  sub_1A3A318B0();
}

uint64_t sub_1A3965930()
{
  sub_1A3A322C0();
  IslandAndNotchMetrics.rawValue.getter();
  sub_1A3A318B0();

  return sub_1A3A32300();
}

uint64_t sub_1A39659A0@<X0>(uint64_t *a1@<X8>)
{
  result = IslandAndNotchMetrics.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for IslandAndNotchMetrics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IslandAndNotchMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A3965B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3A2ECE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8CameraUI20CAMDockKitController_lastTrackingSummary;
  if (*(a1 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_lastTrackingSummary) || (v9 = OBJC_IVAR____TtC8CameraUI20CAMDockKitController_trackingSummaryResetTime, swift_beginAccess(), (*(v5 + 16))(v7, a1 + v9, v4), sub_1A3A2EC90(), v11 = v10, result = (*(v5 + 8))(v7, v4), fabs(v11) >= 1.0))
  {
    *(a1 + v8) = a2;
    sub_1A3A2EA60();
  }

  return result;
}

id CAMDockKitController.matchingTrackedSubjectForAnstID(_:)(uint64_t a1)
{
  v3 = sub_1A3A2ECE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_lastTrackingSummary))
  {
    return 0;
  }

  sub_1A3A2EA60();
  sub_1A3A2F010();
  sub_1A3A2EC90();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  if (v8 >= 1.0)
  {
LABEL_15:

    return 0;
  }

  v9 = sub_1A3A2F030();
  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = sub_1A3A320B0();
  if (!v11)
  {
LABEL_22:

    return 0;
  }

LABEL_5:
  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1A58F7DC0](v12, v10);
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_1A3A2EA60();
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_14;
      }
    }

    if (sub_1A3A2F000() == a1)
    {
      break;
    }

    ++v12;
    if (v13 == v11)
    {
      goto LABEL_22;
    }
  }

  v14 = type metadata accessor for CAMDockKitTrackedObject();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC8CameraUI23CAMDockKitTrackedObject_identifier] = sub_1A3A2F000();
  v16 = sub_1A3A2EFE0();
  if (v17)
  {
    v18 = -1;
  }

  else
  {
    v18 = v16;
  }

  *&v15[OBJC_IVAR____TtC8CameraUI23CAMDockKitTrackedObject_saliency] = v18;
  v15[OBJC_IVAR____TtC8CameraUI23CAMDockKitTrackedObject_trackingLock] = sub_1A3A2EFF0() & 1;
  v21.receiver = v15;
  v21.super_class = v14;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  return v19;
}

Swift::Bool __swiftcall CAMDockKitController.isTrackingLocked()()
{
  if (!*(v0 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_lastTrackingSummary))
  {
    return 0;
  }

  sub_1A3A2EA60();
  v1 = sub_1A3A2F030();

  v8 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1A58F7DC0](v3, v1);
        v4 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v5 = v8;
          goto LABEL_20;
        }

LABEL_10:
        if (sub_1A3A2EFF0())
        {
          sub_1A3A31FA0();
          sub_1A3A31FE0();
          sub_1A3A31FF0();
          sub_1A3A31FB0();
        }

        else
        {
        }

        ++v3;
        if (v4 == v2)
        {
          goto LABEL_15;
        }
      }

      if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_18:
      v2 = sub_1A3A320B0();
      if (!v2)
      {
        goto LABEL_19;
      }
    }

    sub_1A3A2EA60();
    v4 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_19:
  v5 = MEMORY[0x1E69E7CC0];
LABEL_20:

  if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    v7 = sub_1A3A320B0();
  }

  else
  {
    v7 = *(v5 + 16);
  }

  return v7 > 0;
}

id CAMDockKitTrackedObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CAMDockKitTrackedObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAMDockKitTrackedObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A3966334()
{
  v1 = sub_1A3A31650();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A3A31670();
  v5 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2F040();
  v8 = sub_1A3A2EC40();
  v10 = v9;
  v11 = sub_1A3A2F020();
  result = sub_1A3966640(v8, v10);
  if (v11)
  {
    sub_1A38C9AFC();
    v13 = sub_1A3A31C70();
    v14 = swift_allocObject();
    *(v14 + 16) = v0;
    *(v14 + 24) = v11;
    aBlock[4] = sub_1A3966694;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3904E20;
    aBlock[3] = &block_descriptor_6;
    v15 = _Block_copy(aBlock);
    v16 = v0;
    sub_1A3A2EA60();

    sub_1A3A31660();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A38C9B68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD668);
    sub_1A38C9BC0();
    sub_1A3A31E80();
    MEMORY[0x1A58F7B00](0, v7, v4, v15);
    _Block_release(v15);

    (*(v2 + 8))(v4, v1);
    return (*(v5 + 8))(v7, v18);
  }

  return result;
}

uint64_t sub_1A3966640(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A3A2EA60();
}

id sub_1A39666B4()
{
  v1 = OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_scenePhaseModel;
  type metadata accessor for ChromeScenePhaseModel(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  v4 = *MEMORY[0x1E697BE38];
  v5 = sub_1A3A2F540();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  sub_1A3A2F0B0();
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState] = 256;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ChromeScenePhaseView();
  v6 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setHidden_];
  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor_];

  [v6 setUserInteractionEnabled_];
  sub_1A396737C();
  sub_1A3966B84();

  return v6;
}

void sub_1A3966A4C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ChromeScenePhaseView();
  objc_msgSendSuper2(&v8, sel_didMoveToWindow);
  v1 = [v0 window];
  v2 = [v1 windowScene];

  if (v2)
  {
    v3 = [v2 activationState];
    v4 = v3 == 2 || v3 == -1;
    v5 = &v0[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState];
    v6 = v0[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState];
    v7 = v0[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState + 1];
    *v5 = v4;
    v5[1] = (v3 + 1 > 3) | (2u >> ((v3 + 1) & 0xF)) & 1;
    if (v4 != v6 || ((((v3 + 1 > 3) | (2u >> ((v3 + 1) & 0xF))) ^ v7) & 1) != 0)
    {
      sub_1A396737C();
    }
  }
}

void sub_1A3966B84()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = *MEMORY[0x1E69DE348];
  v2 = objc_opt_self();
  v3 = [v2 mainQueue];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_1A3967AB4;
  v27 = v4;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1A3966FA0;
  v25 = &block_descriptor_7;
  v5 = _Block_copy(&v22);

  v6 = [v0 addObserverForName:v1 object:0 queue:v3 usingBlock:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();

  v7 = *MEMORY[0x1E69DE360];
  v8 = [v2 mainQueue];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_1A3967B00;
  v27 = v9;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1A3966FA0;
  v25 = &block_descriptor_12;
  v10 = _Block_copy(&v22);

  v11 = [v0 addObserverForName:v7 object:0 queue:v8 usingBlock:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();

  v12 = *MEMORY[0x1E69DE338];
  v13 = [v2 mainQueue];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_1A3967B34;
  v27 = v14;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1A3966FA0;
  v25 = &block_descriptor_16;
  v15 = _Block_copy(&v22);

  v16 = [v0 addObserverForName:v12 object:0 queue:v13 usingBlock:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();

  v17 = *MEMORY[0x1E69DE358];
  v18 = [v2 mainQueue];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_1A3967B68;
  v27 = v19;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1A3966FA0;
  v25 = &block_descriptor_20;
  v20 = _Block_copy(&v22);

  v21 = [v0 addObserverForName:v17 object:0 queue:v18 usingBlock:v20];
  _Block_release(v20);

  swift_unknownObjectRelease();
}

uint64_t sub_1A3966FA0(uint64_t a1)
{
  v2 = sub_1A3A2EB60();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1A3A2EB40();
  sub_1A3A2EA60();
  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A3967094(uint64_t a1, uint64_t a2, char a3, void (*a4)(_BYTE *, void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_1A3A2EB50();
    a4(v8, a3 & 1);

    return sub_1A395AE3C(v8);
  }

  return result;
}

void sub_1A396711C(uint64_t a1, char a2)
{
  sub_1A39679F8(a1, v12);
  if (v13)
  {
    sub_1A3967A68();
    if (swift_dynamicCast())
    {
      v4 = [v2 window];
      v5 = [v4 windowScene];

      if (v5)
      {
        v6 = v2;
        v7 = v11;
        v8 = sub_1A3A31D10();

        if (v8)
        {
          v9 = &v6[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState];
          v10 = v6[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState + 1];
          *v9 = v6[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState];
          v9[1] = a2 & 1;
          if (v10 != (a2 & 1))
          {
            sub_1A396737C();
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1A395AE3C(v12);
  }
}

void sub_1A396724C(uint64_t a1, char a2)
{
  sub_1A39679F8(a1, v13);
  if (v14)
  {
    sub_1A3967A68();
    if (swift_dynamicCast())
    {
      v4 = [v2 window];
      v5 = [v4 windowScene];

      if (v5)
      {
        v6 = v2;
        v7 = v12;
        v8 = sub_1A3A31D10();

        if (v8)
        {
          v9 = &v6[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState];
          v10 = v6[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState + 1];
          v11 = v6[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState];
          *v9 = a2 & 1;
          v9[1] = v10;
          if (v11 != (a2 & 1))
          {
            sub_1A396737C();
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1A395AE3C(v13);
  }
}

uint64_t sub_1A396737C()
{
  v1 = sub_1A3A2F540();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v17 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_scenePhaseModel);
  if (*(v0 + OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState) == 1)
  {
    (*(v2 + 104))(v8, *MEMORY[0x1E697BE30], v1);
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState + 1))
    {
      v12 = MEMORY[0x1E697BE38];
    }

    else
    {
      v12 = MEMORY[0x1E697BE40];
    }

    (*(v2 + 104))(v8, *v12, v1);
  }

  (*(v2 + 32))(v10, v8, v1);
  swift_getKeyPath();
  v17[1] = v11;
  sub_1A39679B0(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel);
  sub_1A3A2F080();

  v13 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  swift_beginAccess();
  v14 = *(v2 + 16);
  v14(v5, v11 + v13, v1);
  sub_1A39679B0(&qword_1ED996CF0, MEMORY[0x1E697BE48]);
  LOBYTE(v13) = sub_1A3A31790();
  v15 = *(v2 + 8);
  v15(v5, v1);
  if ((v13 & 1) == 0)
  {
    v14(v5, v10, v1);
    sub_1A3967C08(v5);
  }

  return (v15)(v10, v1);
}

uint64_t sub_1A396765C()
{
  sub_1A3A322C0();
  sub_1A3A322E0();
  sub_1A3A322E0();
  return sub_1A3A32300();
}

uint64_t sub_1A39676FC()
{
  sub_1A3A322C0();
  sub_1A3A322E0();
  sub_1A3A322E0();
  return sub_1A3A32300();
}

id sub_1A3967780()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChromeScenePhaseView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for ChromeScenePhaseView.SceneState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ChromeScenePhaseView.SceneState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1A396795C()
{
  result = qword_1EB0FF548;
  if (!qword_1EB0FF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF548);
  }

  return result;
}

uint64_t sub_1A39679B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A39679F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3967A68()
{
  result = qword_1ED998270;
  if (!qword_1ED998270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED998270);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A3A2EA60();
}

uint64_t sub_1A3967BB4()
{
  sub_1A3968434();
  sub_1A3A2FEF0();
  return v1;
}

uint64_t sub_1A3967C08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A3A2F540();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1A39683EC(&qword_1ED996CF0, MEMORY[0x1E697BE48]);
  v14[0] = a1;
  LOBYTE(a1) = sub_1A3A31790();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1A39683EC(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel);
    sub_1A3A2F070();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1A3967EA8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1A39683EC(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel);
  sub_1A3A2F080();

  v3 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  swift_beginAccess();
  v4 = sub_1A3A2F540();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1A3967FA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39683EC(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel);
  sub_1A3A2F080();

  v4 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  swift_beginAccess();
  v5 = sub_1A3A2F540();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1A3968098(uint64_t a1)
{
  v2 = sub_1A3A2F540();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1A3967C08(v4);
}

uint64_t sub_1A3968164(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  swift_beginAccess();
  v5 = sub_1A3A2F540();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1A3968200()
{
  v1 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  v2 = sub_1A3A2F540();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___observationRegistrar;
  v4 = sub_1A3A2F0C0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3968304()
{
  result = sub_1A3A2F540();
  if (v1 <= 0x3F)
  {
    result = sub_1A3A2F0C0();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A39683EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A3968434()
{
  result = qword_1ED9983B8;
  if (!qword_1ED9983B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9983B8);
  }

  return result;
}

void sub_1A39684E4()
{
  sub_1A3968568();
  if (v0 <= 0x3F)
  {
    sub_1A39685CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A3968568()
{
  if (!qword_1ED998428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF558);
    v0 = sub_1A3A2F640();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED998428);
    }
  }
}

void sub_1A39685CC()
{
  if (!qword_1ED998430)
  {
    sub_1A3A2F540();
    v0 = sub_1A3A2F640();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED998430);
    }
  }
}

uint64_t sub_1A3968624@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3969880(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 944);
  return sub_1A3A2EA60();
}

id sub_1A39686FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_1A39687B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3905698(v1);
}

uint64_t sub_1A39687E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1A39688B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 40);
  return sub_1A3A2EA50();
}

uint64_t sub_1A396898C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1A3968A5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_1A3968B2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1A3968BFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 72);
  return result;
}

id sub_1A3968CCC(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(CAMFilterScrubberView) init];
  [v9 setTransparentGradients];
  sub_1A3A2EA60();
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v10 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    a2 = v18;
  }

  swift_getKeyPath();
  v18 = a2;
  sub_1A3969880(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v11 = a2[392];

  v12 = 68.0;
  if (v11)
  {
    v12 = 56.0;
  }

  [v9 setGradientInsets_];

  [v9 setDotIndicatorBehavior_];
  [v9 setPassThroughTouchesInFullyTransparentAreas_];

  [v9 setCellEffect_];
  [v9 setCornerStyle_];

  v13 = v9;
  v14 = sub_1A3A31810();
  [v13 setAccessibilityIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF5E0);
  sub_1A3A304D0();
  v15 = v18;
  [v13 setDelegate_];

  return v13;
}

void sub_1A3968FF0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1A3A2FEE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2EA60();
  if ((a4 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    a3 = v19;
  }

  swift_getKeyPath();
  v19 = a3;
  sub_1A3969880(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v12 = *(a3 + 944);
  sub_1A3A2EA60();

  swift_getKeyPath();
  v19 = v12;
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel);
  sub_1A3A2F080();

  [a1 setItemCount_];
  swift_getKeyPath();
  v19 = v12;
  sub_1A3A2F080();

  [a1 setDefaultIndex_];
  swift_getKeyPath();
  v19 = v12;
  sub_1A3A2F080();

  [a1 setSelectedIndex_];
  swift_getKeyPath();
  v19 = v12;
  sub_1A3A2F080();

  [a1 setMarkedIndex_];
  swift_getKeyPath();
  v19 = v12;
  sub_1A3A2F080();

  [a1 setSuspended_];
  swift_getKeyPath();
  v19 = v12;
  sub_1A3A2F080();

  v19 = *(v12 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4A8);
  [a1 setThumbnailContents_];
  swift_unknownObjectRelease();
  swift_getKeyPath();
  v19 = v12;
  sub_1A3A2F080();

  sub_1A3A2EA50();
  v13 = sub_1A3A31990();

  [a1 setItemDisplayNames_];

  swift_getKeyPath();
  v19 = v12;
  sub_1A3A2F080();

  v14 = *(v12 + 56);
  swift_getKeyPath();
  v19 = v12;
  sub_1A3A2F080();

  if (v14 >= *(*(v12 + 40) + 16))
  {
    v17 = 0;
    goto LABEL_8;
  }

  swift_getKeyPath();
  v19 = v12;
  sub_1A3A2F080();

  v15 = *(v12 + 40);
  swift_getKeyPath();
  v19 = v12;
  sub_1A3A2EA50();
  sub_1A3A2F080();

  v16 = *(v12 + 56);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(v15 + 16))
  {
    sub_1A3A2EA50();

    v17 = sub_1A3A31810();

LABEL_8:
    [a1 setAccessibilityValue_];

    return;
  }

  __break(1u);
}

id sub_1A3969710@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = type metadata accessor for ChromeFilterScrubber.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV8CameraUI20ChromeFilterScrubber11Coordinator_parent];
  *v7 = v3;
  v7[8] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  sub_1A3A2EA60();
  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1A396978C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A39698C8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A39697F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A39698C8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A3969854()
{
  sub_1A39698C8();
  sub_1A3A301A0();
  __break(1u);
}

uint64_t sub_1A3969880(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A39698C8()
{
  result = qword_1EB0FF5E8;
  if (!qword_1EB0FF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF5E8);
  }

  return result;
}

uint64_t type metadata accessor for GlassCircleElementButton()
{
  result = qword_1ED9984C0;
  if (!qword_1ED9984C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3969990()
{
  sub_1A3A30EF0();
  if (v0 <= 0x3F)
  {
    sub_1A394A6AC();
    if (v1 <= 0x3F)
    {
      sub_1A3969A58();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A3969A58()
{
  if (!qword_1EB0FCF80)
  {
    v0 = sub_1A3A2F640();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0FCF80);
    }
  }
}

uint64_t sub_1A3969AC4@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v88 = sub_1A3A2FEE0();
  v90 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ChromeElementState(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v80 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v82 = &v76 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v76 - v8;
  v9 = type metadata accessor for GlassCircleElementButton();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF5F0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v76 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF5F8);
  v84 = *(v16 - 8);
  v85 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v76 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF600);
  v19 = MEMORY[0x1EEE9AC00](v93);
  v87 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v92 = &v76 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v91 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v76 = &v76 - v25;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF608);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v76 - v26;
  sub_1A396B3B8(v1, &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GlassCircleElementButton);
  v27 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v28 = swift_allocObject();
  sub_1A396AFA4(&v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  v94 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF610);
  sub_1A396B070();
  sub_1A3A30FE0();
  v86 = v9;
  v29 = *(v1 + *(v9 + 24));
  v30 = sub_1A396AE48();
  v95 = v29;
  LOBYTE(v96) = v30 & 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF618);
  v32 = sub_1A38A08F8(&qword_1ED998518, &qword_1EB0FF5F0);
  v33 = sub_1A38A08F8(&qword_1ED998520, &qword_1EB0FF618);
  sub_1A3A30970();
  (*(v13 + 8))(v15, v12);
  v34 = *v1;
  if (*v1 != 15 && v34 != 16)
  {
    v95 = sub_1A39FDA64(*v1);
    v96 = v35;
    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x6E6F74747542, 0xE600000000000000);
  }

  v36 = v86;
  v95 = v12;
  v96 = v31;
  v97 = v32;
  v98 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v87;
  v38 = v85;
  sub_1A3A30B70();

  (*(v84 + 8))(v18, v38);
  v39 = v1 + *(v36 + 32);
  v40 = *v39;
  v41 = v39[8];
  sub_1A3A2EA60();
  v42 = v40;
  v43 = v88;
  if ((v41 & 1) == 0)
  {
    sub_1A3A31C30();
    v44 = sub_1A3A305C0();
    sub_1A3A2F270();

    v45 = v89;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v90 + 8))(v45, v43);
    v42 = v95;
  }

  swift_getKeyPath();
  v95 = v42;
  sub_1A396B370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (!*(v42 + 1192))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1A3A2EA60();
  v47 = sub_1A38BC058(v34);

  v49 = v83;
  (*(v47 + 56))(v48);

  v50 = *(v49 + 16);
  v51 = *(v49 + 24);
  sub_1A3A2EA50();
  sub_1A3890834(v49);
  v95 = v50;
  v96 = v51;
  sub_1A389FD78();
  sub_1A3A2FA10();

  sub_1A3666974(v37);
  sub_1A3A2EA60();
  v52 = v40;
  if ((v41 & 1) == 0)
  {
    sub_1A3A31C30();
    v53 = sub_1A3A305C0();
    sub_1A3A2F270();

    v54 = v89;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v90 + 8))(v54, v43);
    v52 = v95;
  }

  swift_getKeyPath();
  v95 = v52;
  sub_1A3A2F080();

  if (!*(v52 + 1192))
  {
    goto LABEL_17;
  }

  sub_1A3A2EA60();
  v55 = sub_1A38BC058(v34);

  v57 = v82;
  (*(v55 + 56))(v56);

  sub_1A3A2EA50();
  sub_1A3890834(v57);
  v58 = v92;
  sub_1A3A2FA70();

  sub_1A3666974(v58);
  sub_1A3A2EA60();
  if ((v41 & 1) == 0)
  {
    sub_1A3A31C30();
    v59 = sub_1A3A305C0();
    sub_1A3A2F270();

    v60 = v89;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v90 + 8))(v60, v43);
    v40 = v95;
  }

  swift_getKeyPath();
  v95 = v40;
  sub_1A3A2F080();

  if (*(v40 + 1192))
  {
    sub_1A3A2EA60();
    v61 = sub_1A38BC058(v34);

    v63 = v80;
    (*(v61 + 56))(v62);

    v65 = *(v63 + 32);
    v64 = *(v63 + 40);
    sub_1A3A2EA50();
    sub_1A3890834(v63);
    v95 = v65;
    v96 = v64;
    v66 = v76;
    v67 = v91;
    sub_1A3A2FA20();

    sub_1A3666974(v67);
    sub_1A396B1E4();
    v68 = v77;
    sub_1A3A30BC0();
    sub_1A3666974(v66);
    KeyPath = swift_getKeyPath();
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF620);
    v71 = v81;
    v72 = (v81 + *(v70 + 36));
    v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD938) + 28);
    v74 = *MEMORY[0x1E697F680];
    v75 = sub_1A3A30090();
    (*(*(v75 - 8) + 104))(v72 + v73, v74, v75);
    *v72 = KeyPath;
    return (*(v78 + 32))(v71, v68, v79);
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1A396A6C4(unint64_t *a1)
{
  v2 = sub_1A3A2FEE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GlassCircleElementButton();
  v10 = a1 + *(v9 + 32);
  v11 = *v10;
  v12 = v10[8];
  sub_1A3A2EA60();
  v13 = v11;
  v31 = v12;
  if ((v12 & 1) == 0)
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v13 = v32;
  }

  v29 = v3;
  v30 = v2;
  v15 = *a1;
  swift_getKeyPath();
  v32 = v13;
  sub_1A396B370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (v13[149])
  {
    sub_1A3A2EA60();
    v16 = sub_1A38BC058(v15);

    (*(v16 + 56))(v17);

    v18 = *&v8[*(v6 + 44)];
    sub_1A3A2EA60();
    sub_1A3890834(v8);
    v19 = v18(*(a1 + *(v9 + 24)), 0);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    LODWORD(v18) = v24;

    if (v18 <= 0xFB)
    {
      sub_1A3A2EA60();
      if ((v31 & 1) == 0)
      {
        sub_1A3A31C30();
        v26 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v29 + 8))(v5, v30);
        v11 = v32;
      }

      v27 = v11[153];
      v28 = v11[154];
      __swift_project_boxed_opaque_existential_1(v11 + 150, v27);
      (*(v28 + 8))(v19, v21, v23, v25, v11, v27, v28);

      sub_1A3890EA8(v19, v21, v23, v25);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A396AA80@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD610);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v28 - v9;
  v11 = type metadata accessor for GlassCircleElementButton();
  v12 = a1 + *(v11 + 32);
  v13 = *v12;
  v14 = v12[8];
  sub_1A3A2EA60();
  if ((v14 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v13 = v32;
  }

  v16 = *a1;
  swift_getKeyPath();
  *&v32 = v13;
  sub_1A396B370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(v13 + 1192))
  {
    sub_1A3A2EA60();
    v18 = sub_1A38BC058(v16);

    (*(v18 + 56))(v19);

    sub_1A396B3B8(&v8[*(v30 + 36)], v10, type metadata accessor for ChromeElementIcon);
    sub_1A3890834(v8);
    v20 = *(v11 + 20);
    KeyPath = swift_getKeyPath();
    v22 = &v10[*(v29 + 36)];
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEAC8) + 28);
    v24 = sub_1A3A30EF0();
    (*(*(v24 - 8) + 16))(v22 + v23, a1 + v20, v24);
    *v22 = KeyPath;
    sub_1A3A31480();
    sub_1A3A2F780();
    v25 = v31;
    sub_1A396B420(v10, v31);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF610);
    v26 = (v25 + *(result + 36));
    v27 = v33;
    *v26 = v32;
    v26[1] = v27;
    v26[2] = v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A396AE48()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for GlassCircleElementButton() + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v7 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1A396AFA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassCircleElementButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A396B008()
{
  v1 = *(type metadata accessor for GlassCircleElementButton() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1A396A6C4(v2);
}

unint64_t sub_1A396B070()
{
  result = qword_1ED998508;
  if (!qword_1ED998508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF610);
    sub_1A396B0FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998508);
  }

  return result;
}

unint64_t sub_1A396B0FC()
{
  result = qword_1ED998510;
  if (!qword_1ED998510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD610);
    sub_1A396B370(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
    sub_1A38A08F8(&qword_1ED997CD0, &qword_1EB0FEAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998510);
  }

  return result;
}

unint64_t sub_1A396B1E4()
{
  result = qword_1ED998528;
  if (!qword_1ED998528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF5F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF618);
    sub_1A38A08F8(&qword_1ED998518, &qword_1EB0FF5F0);
    sub_1A38A08F8(&qword_1ED998520, &qword_1EB0FF618);
    swift_getOpaqueTypeConformance2();
    sub_1A396B370(&qword_1ED9966D8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998528);
  }

  return result;
}

uint64_t sub_1A396B370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A396B3B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A396B420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A396B490()
{
  result = qword_1ED998530;
  if (!qword_1ED998530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF600);
    sub_1A396B1E4();
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1ED996D00, &qword_1EB0FD938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998530);
  }

  return result;
}

uint64_t sub_1A396B584(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 8 * v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1A3956A20(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_1A3956A20((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 8 * v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_1A396B790()
{
  sub_1A38E805C(0, &qword_1EB0FF648);
  v1 = [v0 captureMenuOptionSymbolName];
  v2 = [objc_opt_self() systemImageNamed_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF650);
  inited = swift_initStackObject();
  strcpy((inited + 32), "menuIdentifier");
  *(inited + 16) = xmmword_1A3A681C0;
  *(inited + 47) = -18;
  *(inited + 48) = sub_1A3A31810();
  sub_1A3A1DAE0(inited);
  swift_setDeallocating();
  sub_1A388F740(inited + 32, &qword_1EB0FF658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF660);
  v4 = sub_1A3A31C00();
  sub_1A38E805C(0, &qword_1EB0FF690);
  sub_1A3A31810();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE510);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A3A681B0;
  *(v5 + 32) = v4;
  return sub_1A3A31CB0();
}

id sub_1A396BA08()
{
  result = [v0 menuControllerDelegate];
  if (!result)
  {
    return result;
  }

  v2 = [result availableCaptureModes];
  swift_unknownObjectRelease();
  sub_1A38E805C(0, &qword_1ED998538);
  sub_1A396F784();
  v3 = sub_1A3A31B10();

  v4 = 0;
  v5 = v3 & 0xC000000000000001;
  v6 = v3 + 56;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = qword_1F1654320[v4 + 4];
    v9 = sub_1A3A31B40();
    v10 = v9;
    if (v5)
    {
      v11 = sub_1A3A31EA0();

      if ((v11 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (!*(v3 + 16))
      {

        goto LABEL_4;
      }

      v14 = sub_1A3A31D00();
      v15 = -1 << *(v3 + 32);
      v16 = v14 & ~v15;
      if (((*(v6 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
LABEL_3:

        v5 = v3 & 0xC000000000000001;
        goto LABEL_4;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = *(*(v3 + 48) + 8 * v16);
        v19 = sub_1A3A31D10();

        if (v19)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v6 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v5 = v3 & 0xC000000000000001;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1A3956A20(0, *(v7 + 16) + 1, 1);
    }

    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1A3956A20((v12 > 1), v13 + 1, 1);
    }

    *(v7 + 16) = v13 + 1;
    *(v7 + 8 * v13 + 32) = v8;
LABEL_4:
    ++v4;
  }

  while (v4 != 10);

  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1A396D8E0(v7, 1, sub_1A396F7EC);

  sub_1A3A31810();
  if (v21 >> 62)
  {
    sub_1A38E805C(0, &qword_1EB0FF640);
    sub_1A3A2EA50();
    sub_1A3A32080();
  }

  else
  {
    sub_1A3A2EA50();
    sub_1A3A321D0();
    sub_1A38E805C(0, &qword_1EB0FF640);
  }

  sub_1A38E805C(0, &qword_1EB0FF690);
  return sub_1A3A31CB0();
}

uint64_t sub_1A396BDA0(uint64_t a1)
{
  sub_1A3990574(a1);
  sub_1A38E805C(0, &qword_1EB0FF648);
  sub_1A396DC50(a1);
  v2 = sub_1A3A31810();

  v3 = [objc_opt_self() systemImageNamed_];

  v4 = MEMORY[0x1E69E6530];
  sub_1A3A321A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF698);
  inited = swift_initStackObject();
  strcpy((inited + 32), "menuIdentifier");
  *(inited + 16) = xmmword_1A3A70140;
  *(inited + 47) = -18;
  v6 = sub_1A3A31810();
  type metadata accessor for Identifier(0);
  *(inited + 48) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x65756C6176;
  *(inited + 120) = v4;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = a1;
  sub_1A3A1DBE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF680);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF638);
  return sub_1A3A31C00();
}

uint64_t sub_1A396C040@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1A3918700(*a1);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = 28239;
    }

    else
    {
      v5 = 6710863;
    }

    if (v4 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v5 = 1869903169;
  }

  sub_1A38E805C(0, &qword_1EB0FF688);
  MEMORY[0x1A58F7770](v5, v6);

  v7 = sub_1A3A31810();

  v8 = CAMLocalizedFrameworkString(v7, 0);

  sub_1A3A31850();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF698);
  inited = swift_initStackObject();
  strcpy((inited + 32), "menuIdentifier");
  *(inited + 16) = xmmword_1A3A70140;
  *(inited + 47) = -18;
  v10 = sub_1A3A31810();
  type metadata accessor for Identifier(0);
  *(inited + 48) = v10;
  *(inited + 72) = v11;
  *(inited + 80) = 0x65756C6176;
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = v3;
  sub_1A3A1DBE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF680);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF638);
  result = sub_1A3A31DC0();
  *a2 = result;
  return result;
}

void sub_1A396C3E8(void *a1)
{
  [a1 removeMenuForIdentifier_];
  [a1 removeMenuForIdentifier_];
  [a1 removeMenuForIdentifier_];
  [a1 removeMenuForIdentifier_];
  [a1 removeMenuForIdentifier_];
  v3 = *MEMORY[0x1E69DE170];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A396F68C;
  *(v5 + 24) = v4;
  v19[4] = sub_1A396F694;
  v19[5] = v5;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1A396C7E4;
  v19[3] = &block_descriptor_8;
  v6 = _Block_copy(v19);
  v7 = v1;
  sub_1A3A2EA60();

  [a1 replaceChildrenOfMenuForIdentifier:v3 fromChildrenBlock:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v9 = [v7 captureMenu];
    v10 = *MEMORY[0x1E69DE100];
    [a1 insertChildMenu:v9 atStartOfMenuForIdentifier:*MEMORY[0x1E69DE100]];

    v11 = [v7 cameraRollMenu];
    [a1 insertChildMenu:v11 atStartOfMenuForIdentifier:v10];

    v12 = [v7 timerMenu];
    v13 = *MEMORY[0x1E69DE118];
    [a1 insertChildMenu:v12 atStartOfMenuForIdentifier:*MEMORY[0x1E69DE118]];

    v14 = [v7 livePhotoModeMenu];
    [a1 insertChildMenu:v14 atStartOfMenuForIdentifier:v13];

    v15 = [v7 flashModeMenu];
    [a1 insertChildMenu:v15 atStartOfMenuForIdentifier:v13];

    v16 = [v7 flipCameraMenu];
    [a1 insertChildMenu:v16 atEndOfMenuForIdentifier:v13];

    v17 = [v7 captureModeMenu];
    if (v17)
    {
      v18 = v17;
      [a1 insertChildMenu:v17 atStartOfMenuForIdentifier:*MEMORY[0x1E69DE230]];
    }

    else
    {
    }
  }
}

uint64_t sub_1A396C774(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE510);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A3A681B0;
  *(v3 + 32) = [a2 cameraSettingsCommand];
  return v3;
}

id sub_1A396C7E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1A38E805C(0, &qword_1EB0FF640);
  sub_1A3A319A0();
  v1();

  v2 = sub_1A3A31990();

  return v2;
}

void sub_1A396C8E4(void *a1)
{
  v2 = v1;
  v4 = [v1 menuControllerDelegate];
  if (v4)
  {
    v5 = v4;
    if ([a1 propertyList])
    {
      sub_1A3A31E60();
      swift_unknownObjectRelease();
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
    }

    v83[0] = v81;
    v83[1] = v82;
    if (!*(&v82 + 1))
    {
      swift_unknownObjectRelease();
      sub_1A388F740(v83, &qword_1EB0FE508);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF638);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_15;
    }

    if (!*(v80 + 16) || (v6 = sub_1A3A1B864(0x6E656449756E656DLL, 0xEE00726569666974), (v7 & 1) == 0))
    {

LABEL_15:
      swift_unknownObjectRelease();
      return;
    }

    sub_1A395ADE0(*(v80 + 56) + 32 * v6, v83);
    type metadata accessor for Identifier(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      swift_unknownObjectRelease();

      return;
    }

    v8 = v81;
    v9 = sub_1A3A31810();
    v10 = sub_1A3A31850();
    v12 = v11;
    if (v10 == sub_1A3A31850() && v12 == v13)
    {

LABEL_19:
      v15 = [v5 currentCaptureMode];
      *&v83[0] = 0;
      *(&v83[0] + 1) = 0xE000000000000000;
      if (v15 > 9)
      {
        sub_1A3A31F20();

        v79 = CAMCaptureMode.description.getter(v15);
        MEMORY[0x1A58F7770](v79);

        sub_1A3A32070();
        __break(1u);
        return;
      }

      if (((1 << v15) & 0x1AE) != 0)
      {

        v16 = [v5 cameraIsRecording];
        v17 = v16 == 0;
        if (v16)
        {
          v18 = 0xD000000000000021;
        }

        else
        {
          v18 = 0xD000000000000022;
        }

        if (v17)
        {
          v19 = "MENU_CAPTURE_TITLE";
        }

        else
        {
          v19 = "RT_RECORDING_TITLE";
        }

        MEMORY[0x1A58F7770](v18, v19 | 0x8000000000000000);
      }

      else
      {

        MEMORY[0x1A58F7770](0xD000000000000012, 0x80000001A3AA5B00);
      }

      sub_1A39906E0(v15);
      v20 = sub_1A3A31890();
      v22 = v21;

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](95, 0xE100000000000000);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](v20, v22);

      v23 = sub_1A3A31810();

      v24 = CAMLocalizedFrameworkString(v23, 0);

      if (!v24)
      {
        sub_1A3A31850();
        v24 = sub_1A3A31810();
      }

      [a1 setTitle_];

      v25 = [v2 captureMenuOptionSymbolName];
      v26 = [objc_opt_self() systemImageNamed_];

      [a1 setImage_];
      v27 = [v2 menuControllerDelegate];
      if (v27)
      {
        v28 = v27;
        if ([v5 shouldEnableCaptureMenuCommand] && (objc_msgSend(v28, sel_isShowingCameraRoll) & 1) == 0)
        {
          v29 = [a1 attributes] & 0xFFFFFFFFFFFFFFFELL;
        }

        else
        {
          v29 = [a1 attributes] | 1;
        }

        [a1 setAttributes_];
        swift_unknownObjectRelease();
      }

      goto LABEL_15;
    }

    v14 = sub_1A3A321C0();

    if (v14)
    {
      goto LABEL_19;
    }

    v30 = v8;
    v31 = sub_1A3A31810();
    v32 = sub_1A3A31850();
    v34 = v33;
    if (v32 == sub_1A3A31850() && v34 == v35)
    {

LABEL_39:
      [v5 isShowingCameraRoll];
      v37 = sub_1A3A31810();

      v38 = CAMLocalizedFrameworkString(v37, 0);

      if (!v38)
      {
        sub_1A3A31850();
        v38 = sub_1A3A31810();
      }

      [a1 setTitle_];

      goto LABEL_42;
    }

    v36 = sub_1A3A321C0();

    if (v36)
    {
      goto LABEL_39;
    }

    v30 = v30;
    v39 = sub_1A3A31810();
    v40 = sub_1A3A31850();
    v42 = v41;
    if (v40 == sub_1A3A31850() && v42 == v43)
    {

      goto LABEL_50;
    }

    v44 = sub_1A3A321C0();

    if (v44)
    {
LABEL_50:
      [a1 setState_];
      v45 = [v2 menuControllerDelegate];
      if (v45)
      {
        v46 = [v45 isShowingCameraRoll];
        v47 = [a1 attributes];
        if ((v46 & 1) == 0)
        {
LABEL_52:
          v48 = v47 & 0xFFFFFFFFFFFFFFFELL;
LABEL_63:
          [a1 setAttributes_];
          swift_unknownObjectRelease();
          goto LABEL_64;
        }

        goto LABEL_62;
      }

LABEL_64:

      goto LABEL_15;
    }

    v30 = v30;
    v49 = sub_1A3A31810();
    v50 = sub_1A3A31850();
    v52 = v51;
    if (v50 == sub_1A3A31850() && v52 == v53)
    {
    }

    else
    {
      v54 = sub_1A3A321C0();

      if ((v54 & 1) == 0)
      {
        v30 = v30;
        v58 = sub_1A3A31810();
        v59 = sub_1A3A31850();
        v61 = v60;
        if (v59 == sub_1A3A31850() && v61 == v62)
        {
        }

        else
        {
          v63 = sub_1A3A321C0();

          if ((v63 & 1) == 0)
          {
            v30 = v30;
            v65 = sub_1A3A31810();
            v66 = sub_1A3A31850();
            v68 = v67;
            if (v66 == sub_1A3A31850() && v68 == v69)
            {
            }

            else
            {
              v70 = sub_1A3A321C0();

              if ((v70 & 1) == 0)
              {
                v30 = v30;
                v72 = sub_1A3A31810();
                v73 = sub_1A3A31850();
                v75 = v74;
                if (v73 == sub_1A3A31850() && v75 == v76)
                {
                }

                else
                {
                  v77 = sub_1A3A321C0();

                  if ((v77 & 1) == 0)
                  {
LABEL_42:
                    swift_unknownObjectRelease();

                    return;
                  }
                }

                [a1 setState_];
                v78 = [v2 menuControllerDelegate];
                if (!v78)
                {
                  goto LABEL_64;
                }

                v56 = v78;
                v57 = [v5 shouldEnableTimerMenuCommand];
                goto LABEL_59;
              }
            }

            [a1 setState_];
            v71 = [v2 menuControllerDelegate];
            if (!v71)
            {
              goto LABEL_64;
            }

            v56 = v71;
            v57 = [v5 shouldEnableLivePhotoMenuCommand];
            goto LABEL_59;
          }
        }

        v64 = [v2 menuControllerDelegate];
        if (!v64)
        {
          goto LABEL_64;
        }

        v56 = v64;
        v57 = [v5 shouldEnableFlipCameraMenuCommand];
        goto LABEL_59;
      }
    }

    [a1 setState_];
    v55 = [v2 menuControllerDelegate];
    if (!v55)
    {
      goto LABEL_64;
    }

    v56 = v55;
    v57 = [v5 shouldEnableFlashMenuCommand];
LABEL_59:
    if ((v57 & 1) != 0 && ([v56 isShowingCameraRoll] & 1) == 0)
    {
      v47 = [a1 attributes];
      goto LABEL_52;
    }

    v47 = [a1 attributes];
LABEL_62:
    v48 = v47 | 1;
    goto LABEL_63;
  }
}

double sub_1A396D57C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  if ([a1 propertyList])
  {
    sub_1A3A31E60();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF638);
    if (swift_dynamicCast())
    {
      if (*(v6 + 16))
      {
        v3 = sub_1A3A1B864(0x65756C6176, 0xE500000000000000);
        if (v4)
        {
          sub_1A395ADE0(*(v6 + 56) + 32 * v3, a2);

          return result;
        }
      }
    }
  }

  else
  {
    sub_1A388F740(v9, &qword_1EB0FE508);
  }

  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

id CAMSystemMenuController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = CAMSystemMenuController;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1A396D8E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1A3A31FD0();
  if (!v6)
  {
    return v12;
  }

  v8 = a2;
  v9 = (a1 + 32);
  while (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *v9++;
    v11 = v8 + 1;
    a3(v10);
    sub_1A3A31FA0();
    sub_1A3A31FE0();
    sub_1A3A31FF0();
    result = sub_1A3A31FB0();
    v8 = v11;
    if (!--v6)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A396D9C8()
{
  sub_1A38E805C(0, &qword_1EB0FF648);
  v0 = sub_1A3A31810();
  v1 = CAMLocalizedFrameworkString(v0, 0);

  sub_1A3A31850();
  v2 = sub_1A3A31810();
  v3 = [objc_opt_self() systemImageNamed_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF650);
  inited = swift_initStackObject();
  strcpy((inited + 32), "menuIdentifier");
  *(inited + 16) = xmmword_1A3A681C0;
  *(inited + 47) = -18;
  *(inited + 48) = sub_1A3A31810();
  sub_1A3A1DAE0(inited);
  swift_setDeallocating();
  sub_1A388F740(inited + 32, &qword_1EB0FF658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF660);
  v5 = sub_1A3A31C00();
  sub_1A38E805C(0, &qword_1EB0FF690);
  sub_1A3A31810();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE510);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A3A681B0;
  *(v6 + 32) = v5;
  return sub_1A3A31CB0();
}

uint64_t sub_1A396DC50(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x6F6D776F6C73;
      }

      if (a1 == 3)
      {
        return 1869504880;
      }

      return 0x657261757173;
    }

    if (!a1)
    {
      return 0x6F746F6870;
    }

    if (a1 == 1)
    {
      return 0x6F65646976;
    }

LABEL_20:
    sub_1A3A31F20();

    v3 = CAMCaptureMode.description.getter(a1);
    MEMORY[0x1A58F7770](v3);

    result = sub_1A3A32070();
    __break(1u);
    return result;
  }

  if (a1 > 7)
  {
    if ((a1 - 8) < 2)
    {
      return 0x6C616974617073;
    }

    goto LABEL_20;
  }

  if (a1 == 5)
  {
    return 0x7370616C656D6974;
  }

  if (a1 == 6)
  {
    return 0xD000000000000010;
  }

  return 0x6974616D656E6963;
}

uint64_t sub_1A396DE30()
{
  v37 = MEMORY[0x1E69E7CC0];
  sub_1A3A31FD0();
  sub_1A38E805C(0, &qword_1EB0FF688);
  v0 = 0;
  v29 = off_1F165EA38[0];
  while (1)
  {
    v1 = *(&unk_1F1654FC0 + v0 + 32);
    if (v1 >= 3)
    {
      break;
    }

    v30 = (2 - v1);
    (v29)(&type metadata for ChromeFlashMode);
    v2 = sub_1A3A31810();

    v3 = CAMLocalizedFrameworkString(v2, 0);

    sub_1A3A31850();
    strcpy(v33, "menuIdentifier");
    v33[15] = -18;
    v4 = sub_1A3A31810();
    type metadata accessor for Identifier(0);
    v34 = v4;
    v35 = v5;
    v36[0] = 0x65756C6176;
    v36[1] = 0xE500000000000000;
    v36[5] = MEMORY[0x1E69E6530];
    v36[2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF678);
    v6 = sub_1A3A320E0();
    sub_1A3A2EA60();
    sub_1A396F6F0(v33, &v30);
    v7 = v30;
    v8 = v31;
    v9 = sub_1A3A1B864(v30, v31);
    if (v10)
    {
      goto LABEL_12;
    }

    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v11 = (v6[6] + 16 * v9);
    *v11 = v7;
    v11[1] = v8;
    sub_1A3924CD4(v32, (v6[7] + 32 * v9));
    v12 = v6[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_13;
    }

    v6[2] = v14;
    sub_1A396F6F0(v36, &v30);
    v15 = v30;
    v16 = v31;
    v17 = sub_1A3A1B864(v30, v31);
    if (v18)
    {
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      sub_1A38E805C(0, &qword_1EB0FF640);
      sub_1A3A2EA50();
      sub_1A3A32080();

LABEL_11:

      sub_1A38E805C(0, &qword_1EB0FF690);
      return sub_1A3A31CB0();
    }

    *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
    v19 = (v6[6] + 16 * v17);
    *v19 = v15;
    v19[1] = v16;
    sub_1A3924CD4(v32, (v6[7] + 32 * v17));
    v20 = v6[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v13)
    {
      goto LABEL_13;
    }

    v6[2] = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF680);
    swift_arrayDestroy();
    *(&v32[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF638);
    v30 = v6;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1A3A31DC0();
    sub_1A3A31FA0();
    sub_1A3A31FE0();
    sub_1A3A31FF0();
    sub_1A3A31FB0();
    v0 += 8;
    if (v0 == 24)
    {
      v22 = v37;
      v23 = sub_1A3A31810();
      v24 = CAMLocalizedFrameworkString(v23, 0);

      sub_1A3A31850();
      v25 = sub_1A3A31810();
      v26 = [objc_opt_self() systemImageNamed_];

      sub_1A3A31810();
      if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
      {
        goto LABEL_14;
      }

      sub_1A3A2EA50();
      sub_1A3A321D0();
      sub_1A38E805C(0, &qword_1EB0FF640);
      goto LABEL_11;
    }
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1A3A31F20();
  MEMORY[0x1A58F7770](0xD000000000000015, 0x80000001A3AA5D10);
  v36[6] = v1;
  type metadata accessor for CAMFlashMode(0);
  sub_1A3A32060();
  result = sub_1A3A32070();
  __break(1u);
  return result;
}