uint64_t sub_1DF495DB4(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF495348, 0, 0);
}

uint64_t sub_1DF495DF0(uint64_t a1)
{
  v3 = *(sub_1DF564494() - 8);
  v4 = ((*(v3 + 80) + 80) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v16 = v1[3];
  v17 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  v13 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DF48D3C0;

  return sub_1DF495FB0(a1, v17, v16, v7, v8, v9, v10, v12);
}

uint64_t sub_1DF495FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v18;
  *(v8 + 72) = v19;
  *(v8 + 48) = v17;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 88) = v12;
  *v11 = v8;
  v11[1] = sub_1DF49AF5C;
  v13 = MEMORY[0x1E69E6370];
  v14 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8 + 104, a4, v13, v12, v14);
}

uint64_t sub_1DF4960BC(uint64_t a1)
{
  v3 = *(sub_1DF564494() - 8);
  v4 = ((*(v3 + 80) + 80) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v16 = v1[3];
  v17 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  v13 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DF48D3C0;

  return sub_1DF49656C(a1, v17, v16, v7, v8, v9, v10, v12);
}

uint64_t sub_1DF4962A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = a5;
  v6[19] = v5;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37EE8, &unk_1DF569E60) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v8 = sub_1DF564184();
  v6[21] = v8;
  v9 = *(v8 - 8);
  v6[22] = v9;
  v10 = *(v9 + 64) + 15;
  v6[23] = swift_task_alloc();
  v11 = sub_1DF5640F4();
  v6[24] = v11;
  v12 = *(v11 - 8);
  v6[25] = v12;
  v13 = *(v12 + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v14 = sub_1DF564344();
  v6[29] = v14;
  v15 = *(v14 - 8);
  v6[30] = v15;
  v16 = *(v15 + 64) + 15;
  v6[31] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v18 = sub_1DF564494();
  v6[33] = v18;
  v19 = *(v18 - 8);
  v6[34] = v19;
  v20 = *(v19 + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v21 = sub_1DF5644C4();
  v6[37] = v21;
  v22 = *(v21 - 8);
  v6[38] = v22;
  v23 = *(v22 + 64) + 15;
  v6[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF496654, 0, 0);
}

uint64_t sub_1DF49656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v18;
  *(v8 + 72) = v19;
  *(v8 + 48) = v17;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 88) = v12;
  *v11 = v8;
  v11[1] = sub_1DF53B2A0;
  v13 = MEMORY[0x1E69E7288];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v12, a4, v14, v12, v13);
}

uint64_t sub_1DF496654()
{
  v78 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 152);
  v76 = 0x65757165526C7275;
  v77 = 0xEB000000002E7473;
  v5 = sub_1DF496DEC();
  MEMORY[0x1E12D62C0](v5);

  *(v0 + 320) = 0x65757165526C7275;
  *(v0 + 328) = 0xEB000000002E7473;
  sub_1DF5644B4();
  v6 = sub_1DF5644A4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  v10 = sub_1DF488298(8, v6, v8, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x1E12D6280](v10, v12, v14, v16);
  v19 = v18;

  *(v0 + 336) = v17;
  *(v0 + 344) = v19;
  if (qword_1ED954C48 != -1)
  {
    swift_once();
  }

  v20 = sub_1DF5647B4();
  *(v0 + 352) = v20;
  *(v0 + 360) = __swift_project_value_buffer(v20, qword_1ED954C50);

  v21 = sub_1DF564794();
  v22 = sub_1DF564C44();

  v74 = v17;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 136446210;
    v75 = v24;
    v76 = 91;
    v77 = 0xE100000000000000;

    MEMORY[0x1E12D62C0](0x65757165526C7275, 0xEB000000002E7473);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v17, v19);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v25 = sub_1DF47EF6C(91, 0xE100000000000000, &v75);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_1DF47C000, v21, v22, "%{public}s Start", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1E12D75F0](v24, -1, -1);
    MEMORY[0x1E12D75F0](v23, -1, -1);
  }

  if (*(*(v0 + 152) + 32) != 1)
  {
    goto LABEL_8;
  }

  v26 = *(v0 + 264);
  v27 = *(v0 + 272);
  v28 = *(v0 + 256);
  static Preferences.dateRequestBlocked()(v28);
  if ((*(v27 + 48))(v28, 1, v26) == 1)
  {
    sub_1DF47E5B4(*(v0 + 256), &qword_1ECE37A10, &qword_1DF567C00);
LABEL_8:
    __swift_project_boxed_opaque_existential_0(*(v0 + 128), *(*(v0 + 128) + 24));
    v29 = swift_task_alloc();
    *(v0 + 368) = v29;
    *v29 = v0;
    v29[1] = sub_1DF49874C;
    v30 = *(v0 + 248);
    v31 = *(v0 + 152);

    return sub_1DF496F8C(v30, v31);
  }

  v34 = *(v0 + 280);
  v33 = *(v0 + 288);
  v35 = *(v0 + 264);
  v36 = *(v0 + 272);
  (*(v36 + 32))(v33, *(v0 + 256), v35);
  v73 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  v72 = *(v36 + 16);
  v72(v34, v33, v35);

  v37 = sub_1DF564794();
  v38 = sub_1DF564C44();

  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 280);
  v41 = *(v0 + 288);
  v42 = *(v0 + 264);
  v43 = *(v0 + 272);
  if (v39)
  {
    v71 = *(v0 + 288);
    v44 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v44 = 136446466;
    v75 = v70;
    v76 = 91;
    v77 = 0xE100000000000000;
    v69 = v42;
    MEMORY[0x1E12D62C0](0x65757165526C7275, 0xEB000000002E7473);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v74, v19);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v45 = sub_1DF47EF6C(v76, v77, &v75);

    *(v44 + 4) = v45;
    *(v44 + 12) = 2082;
    v46 = sub_1DF5643E4();
    v47 = [v73 stringFromDate_];

    v48 = sub_1DF564944();
    v49 = v38;
    v51 = v50;

    v52 = *(v43 + 8);
    v52(v40, v69);
    v53 = sub_1DF47EF6C(v48, v51, &v75);

    *(v44 + 14) = v53;
    _os_log_impl(&dword_1DF47C000, v37, v49, "%{public}s Request is blocked by defaults on %{public}s. Throwing an error.", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v70, -1, -1);
    MEMORY[0x1E12D75F0](v44, -1, -1);

    type metadata accessor for BlockedNetworkRequestError();
    sub_1DF4EFFC0();
    swift_allocError();
    v72(v54, v71, v69);
    swift_willThrow();

    v55 = v71;
    v56 = v69;
  }

  else
  {

    v52 = *(v43 + 8);
    v52(v40, v42);
    type metadata accessor for BlockedNetworkRequestError();
    sub_1DF4EFFC0();
    swift_allocError();
    v72(v57, v41, v42);
    swift_willThrow();

    v55 = v41;
    v56 = v42;
  }

  v52(v55, v56);
  v58 = *(v0 + 312);
  v60 = *(v0 + 280);
  v59 = *(v0 + 288);
  v62 = *(v0 + 248);
  v61 = *(v0 + 256);
  v64 = *(v0 + 216);
  v63 = *(v0 + 224);
  v65 = *(v0 + 208);
  v66 = *(v0 + 184);
  v67 = *(v0 + 160);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1DF496DEC()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 32);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = 0x745374656B636974;
      v6 = 0xED00002E73757461;
    }

    else
    {
      if (v3 != 4)
      {
        if (v1 | v2 | *(v0 + 24) | *(v0 + 16))
        {
          return 0x6C69626967696C65;
        }

        else
        {
          return 0xD000000000000012;
        }
      }

      v5 = 0x656B636954746567;
      v6 = 0xEA00000000002E74;
    }

LABEL_10:
    v8[0] = v5;
    v8[1] = v6;
    MEMORY[0x1E12D62C0](v2, v1);
    return v8[0];
  }

  if (!*(v0 + 32))
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1DF564DF4();

    v5 = 0x6546656C676E6973;
    v6 = 0xEE002E6572757461;
    goto LABEL_10;
  }

  if (v3 == 1)
  {
    strcpy(v8, "allFeatures.");
    BYTE5(v8[1]) = 0;
    HIWORD(v8[1]) = -5120;
    v4 = sub_1DF547430(v2, v1);
    MEMORY[0x1E12D62C0](v4);

    return v8[0];
  }

  return 0xD000000000000011;
}

uint64_t sub_1DF496F8C(uint64_t a1, uint64_t a2)
{
  v3[45] = a2;
  v3[46] = v2;
  v3[44] = a1;
  v4 = sub_1DF564344();
  v3[47] = v4;
  v5 = *(v4 - 8);
  v3[48] = v5;
  v6 = *(v5 + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF49705C, 0, 0);
}

uint64_t sub_1DF49705C()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = *v2;
  v0[51] = *v2;
  v7 = v2[1];
  v0[52] = v7;
  v8 = *(v2 + 32);
  if (v8 <= 2)
  {
    if (!*(v2 + 32))
    {
      v22 = v0[46];
      if (v5)
      {
        v11 = v1[3];
        v10 = v1[4];
        __swift_project_boxed_opaque_existential_0(v0[46], v11);
        v12 = "acseGatewayV3DeviceFeature";
        v23 = *(v10 + 88);
        v67 = (v23 + *v23);
        v24 = v23[1];
        v25 = swift_task_alloc();
        v0[55] = v25;
        *v25 = v0;
        v25[1] = sub_1DF4F8D24;
        v16 = 0xD000000000000024;
        goto LABEL_15;
      }

      v40 = *(v22 + 40);
      v39 = *(v22 + 48);
      ObjectType = swift_getObjectType();
      v42 = "iceAndAccountAllFeatures";
      v43 = *(v39 + 24);
      v68 = (v43 + *v43);
      v44 = v43[1];
      v45 = swift_task_alloc();
      v0[59] = v45;
      *v45 = v0;
      v45[1] = sub_1DF4F90A8;
      v46 = 0xD00000000000001ALL;
      goto LABEL_22;
    }

    if (v8 == 1)
    {
      v9 = v0[46];
      if (v5)
      {
        v11 = v1[3];
        v10 = v1[4];
        __swift_project_boxed_opaque_existential_0(v0[46], v11);
        v12 = "acseGatewayV3DeviceAllFeatures";
        v13 = *(v10 + 88);
        v67 = (v13 + *v13);
        v14 = v13[1];
        v15 = swift_task_alloc();
        v0[63] = v15;
        *v15 = v0;
        v15[1] = sub_1DF4F9438;
        v16 = 0xD000000000000028;
LABEL_15:
        v29 = v12 | 0x8000000000000000;
        goto LABEL_31;
      }

      v53 = *(v9 + 40);
      v39 = *(v9 + 48);
      ObjectType = swift_getObjectType();
      v42 = "subscriptionStatusPath";
      v54 = *(v39 + 24);
      v68 = (v54 + *v54);
      v55 = v54[1];
      v56 = swift_task_alloc();
      v0[67] = v56;
      *v56 = v0;
      v56[1] = sub_1DF4F9744;
      v46 = 0xD00000000000001ELL;
LABEL_22:
      v29 = v42 | 0x8000000000000000;
      v16 = v46;
      goto LABEL_25;
    }

    v11 = v1[3];
    v10 = v1[4];
    __swift_project_boxed_opaque_existential_0(v0[46], v11);
    v30 = *(v10 + 88);
    v67 = (v30 + *v30);
    v31 = v30[1];
    v32 = swift_task_alloc();
    v0[77] = v32;
    *v32 = v0;
    v32[1] = sub_1DF4F9CEC;
    v33 = 0xD000000000000019;
    v29 = 0x80000001DF572BB0;
LABEL_30:
    v16 = v33;
LABEL_31:
    v60 = v11;
    v61 = v10;
    v62 = v67;

    return v62(v16, v29, v60, v61);
  }

  if (v8 == 3)
  {
    v26 = v0[46];
    if (v5)
    {
      v11 = v1[3];
      v10 = v1[4];
      __swift_project_boxed_opaque_existential_0(v0[46], v11);
      v12 = "iceFeatureStatusKey";
      v27 = *(v10 + 88);
      v67 = (v27 + *v27);
      v28 = v27[1];
      v20 = swift_task_alloc();
      v0[81] = v20;
      *v20 = v0;
      v21 = sub_1DF4F9EF4;
      goto LABEL_14;
    }

    v47 = *(v26 + 40);
    v39 = *(v26 + 48);
    ObjectType = swift_getObjectType();
    v48 = "iceAndAccountFeatureSignupKey";
    v49 = *(v39 + 24);
    v68 = (v49 + *v49);
    v50 = v49[1];
    v51 = swift_task_alloc();
    v0[85] = v51;
    *v51 = v0;
    v52 = sub_1DF4FA2A4;
  }

  else
  {
    if (v8 != 4)
    {
      v34 = v0[46];
      v11 = v1[3];
      v10 = v1[4];
      if (v7 | v6 | *(v0[45] + 24) | *(v0[45] + 16))
      {
        __swift_project_boxed_opaque_existential_0(v34, v11);
        v35 = "geoClassificationInfoPath";
        v36 = *(v10 + 88);
        v67 = (v36 + *v36);
        v37 = v36[1];
        v38 = swift_task_alloc();
        v0[53] = v38;
        *v38 = v0;
        v38[1] = sub_1DF4985D8;
        v33 = 0xD000000000000012;
      }

      else
      {
        __swift_project_boxed_opaque_existential_0(v34, v11);
        v35 = "displaySectionPath";
        v63 = *(v10 + 88);
        v67 = (v63 + *v63);
        v64 = v63[1];
        v65 = swift_task_alloc();
        v0[71] = v65;
        *v65 = v0;
        v65[1] = sub_1DF4F9A50;
        v33 = 0xD000000000000016;
      }

      v29 = v35 | 0x8000000000000000;
      goto LABEL_30;
    }

    v17 = v0[46];
    if (v5)
    {
      v11 = v1[3];
      v10 = v1[4];
      __swift_project_boxed_opaque_existential_0(v0[46], v11);
      v12 = "iceFeatureSignupKey";
      v18 = *(v10 + 88);
      v67 = (v18 + *v18);
      v19 = v18[1];
      v20 = swift_task_alloc();
      v0[89] = v20;
      *v20 = v0;
      v21 = sub_1DF4FA654;
LABEL_14:
      v20[1] = v21;
      v16 = 0xD00000000000002DLL;
      goto LABEL_15;
    }

    v57 = *(v17 + 40);
    v39 = *(v17 + 48);
    ObjectType = swift_getObjectType();
    v48 = "foundationClientWrapperSet";
    v58 = *(v39 + 24);
    v68 = (v58 + *v58);
    v59 = v58[1];
    v51 = swift_task_alloc();
    v0[93] = v51;
    *v51 = v0;
    v52 = sub_1DF4FAA04;
  }

  v51[1] = v52;
  v29 = v48 | 0x8000000000000000;
  v16 = 0xD000000000000023;
LABEL_25:
  v60 = ObjectType;
  v61 = v39;
  v62 = v68;

  return v62(v16, v29, v60, v61);
}

BOOL sub_1DF497AE4()
{
  v1 = [*v0 aa_primaryAppleAccount];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_1DF497B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DF4984C8;

  return sub_1DF497BE8(a1, a2, a3, a4);
}

uint64_t sub_1DF497BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF497C10, 0, 0);
}

uint64_t sub_1DF497C10()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[21];
  v6 = *(v5 + 80);
  v0[23] = v6;
  v0[24] = (v5 + 80) & 0xFFFFFFFFFFFFLL | 0xF8F0000000000000;
  v7 = v6(v4, v2, v3);
  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1DF49801C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a1;
  v36 = a2;
  v34 = a6;
  v39 = *(a4 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DF564D04();
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = (*(a5 + 32))(a3, a5);
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = v16;
  v18 = (*(a5 + 64))(a3, a5);
  v19 = [v17 propertiesForDataclass_];

  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = sub_1DF564874();

  v21 = sub_1DF4A5A5C(v20);

  if (!v21)
  {
    goto LABEL_16;
  }

  if (*(v21 + 16))
  {
    v22 = sub_1DF480420(v35, v36);
    v23 = v39;
    if (v24)
    {
      sub_1DF47F24C(*(v21 + 56) + 32 * v22, &v37);
    }

    else
    {

      v37 = 0u;
      v38 = 0u;
    }
  }

  else
  {

    v37 = 0u;
    v38 = 0u;
    v23 = v39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378F0, &qword_1DF5686F0);
  v25 = swift_dynamicCast();
  v26 = *(v23 + 56);
  if ((v25 & 1) == 0)
  {
    v26(v15, 1, 1, a4);
    (*(v33 + 8))(v15, v12);
LABEL_16:
    sub_1DF498474();
    swift_allocError();
    *v32 = 9;
    return swift_willThrow();
  }

  v26(v15, 0, 1, a4);
  v27 = v34;
  (*(v23 + 32))(v34, v15, a4);
  (*(v23 + 16))(v11, v27, a4);
  result = swift_dynamicCast();
  if (result)
  {
    v29 = v37;

    v30 = HIBYTE(*(&v29 + 1)) & 0xFLL;
    if ((*(&v29 + 1) & 0x2000000000000000) == 0)
    {
      v30 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v30)
    {
      sub_1DF498474();
      swift_allocError();
      *v31 = 9;
      swift_willThrow();
      return (*(v23 + 8))(v27, a4);
    }
  }

  return result;
}

uint64_t sub_1DF498400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DF49801C(a1, a2, a3, MEMORY[0x1E69E6158], a4, &v6);
  if (!v4)
  {
    return v6;
  }

  return result;
}

id sub_1DF49843C()
{
  v1 = [*v0 aa_primaryAppleAccount];

  return v1;
}

unint64_t sub_1DF498474()
{
  result = qword_1ED9558A0;
  if (!qword_1ED9558A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9558A0);
  }

  return result;
}

uint64_t sub_1DF4984C8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1DF4985D8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 424);
  v8 = *v3;
  *(*v3 + 432) = v2;

  if (v2)
  {
    v10 = v6[49];
    v9 = v6[50];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v6[75] = a2;
    v6[76] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4F9C58, 0, 0);
  }
}

uint64_t sub_1DF49874C()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v8 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = *(v2 + 344);
    v5 = *(v2 + 328);

    v6 = sub_1DF498874;
  }

  else
  {
    v6 = sub_1DF4ECF04;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DF498874()
{
  v13 = v0[47];
  v1 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v9 = v0[23];
  v10 = v0[20];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DF498960()
{
  v2 = (*v1)[25];
  v3 = *v1;
  v3[26] = v0;

  __swift_destroy_boxed_opaque_existential_0(v3 + 17);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF498AAC, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 7);
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1DF498AAC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[26];

  return v1();
}

uint64_t sub_1DF498B18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1DF47E5B4(v0 + 32, &qword_1ECE38370, &qword_1DF569E50);
  sub_1DF47E5B4(v0 + 72, &qword_1ECE381A0, &unk_1DF56C320);

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1DF498B80()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v6 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_1DF498C9C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_1DF4AC0C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF498C9C()
{
  v39 = v0;
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[28];
  v4 = v0[14];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_1DF494E04(v4, v3);
  v5 = v1;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C24();

  if (os_log_type_enabled(v6, v7))
  {
    v36 = v0[36];
    v9 = v0[28];
    v8 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v38[0] = v12;
    *v10 = 136446466;
    sub_1DF494E04(v9, v8);
    sub_1DF564DF4();

    v38[1] = 0xD000000000000010;
    v38[2] = 0x80000001DF571470;
    MEMORY[0x1E12D62C0](*v8, v8[1]);
    MEMORY[0x1E12D62C0](62, 0xE100000000000000);
    sub_1DF494FCC(v9);
    sub_1DF494FCC(v8);
    v13 = sub_1DF47EF6C(0xD000000000000010, 0x80000001DF571470, v38);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2114;
    v14 = v36;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v11 = v15;
    _os_log_impl(&dword_1DF47C000, v6, v7, "%{public}s Error creating request with error: %{public}@", v10, 0x16u);
    sub_1DF484888(v11);
    MEMORY[0x1E12D75F0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1E12D75F0](v12, -1, -1);
    MEMORY[0x1E12D75F0](v10, -1, -1);
  }

  else
  {
    v16 = v0[28];

    sub_1DF494FCC(v16);
  }

  v17 = v0[36];
  swift_willThrow();
  v37 = v0[36];
  v18 = v0[32];
  v19 = v0[33];
  v21 = v0[30];
  v20 = v0[31];
  v23 = v0[28];
  v22 = v0[29];
  v25 = v0[26];
  v24 = v0[27];
  v26 = v0[25];
  v29 = v0[24];
  v30 = v0[23];
  v31 = v0[21];
  v32 = v0[20];
  v33 = v0[19];
  v34 = v0[18];
  v35 = v0[17];
  sub_1DF4990CC(v19, v0[14]);
  (*(v18 + 8))(v19, v20);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1DF498FC4(uint64_t a1)
{
  v2 = sub_1DF499060();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DF499000(uint64_t a1)
{
  v2 = sub_1DF499060();
  v3 = sub_1DF4994D4();
  v4 = sub_1DF4995C8();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

unint64_t sub_1DF499060()
{
  result = qword_1ED9558B0;
  if (!qword_1ED9558B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9558B0);
  }

  return result;
}

void sub_1DF4990CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NetworkRequest();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = sub_1DF564494();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF564474();
  sub_1DF5643C4();
  v16 = v15;
  (*(v11 + 8))(v14, v10);
  if (qword_1ED9550A8 != -1)
  {
    swift_once();
  }

  v17 = sub_1DF5647B4();
  __swift_project_value_buffer(v17, qword_1ED9550B0);
  sub_1DF494E04(a2, v9);
  v18 = sub_1DF564794();
  v19 = sub_1DF564C44();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136446466;
    sub_1DF494E04(v9, v7);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1DF564DF4();

    v26 = 0xD000000000000010;
    v27 = 0x80000001DF571470;
    MEMORY[0x1E12D62C0](*v7, v7[1]);
    MEMORY[0x1E12D62C0](62, 0xE100000000000000);
    v22 = v26;
    v23 = v27;
    sub_1DF494FCC(v9);
    sub_1DF494FCC(v7);
    v24 = sub_1DF47EF6C(v22, v23, &v28);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v16;
    _os_log_impl(&dword_1DF47C000, v18, v19, "%{public}s Request completed in %f seconds.", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1E12D75F0](v21, -1, -1);
    MEMORY[0x1E12D75F0](v20, -1, -1);
  }

  else
  {

    sub_1DF494FCC(v9);
  }
}

uint64_t sub_1DF4993C0()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1DF49961C;
  }

  else
  {
    v3 = sub_1DF4B1FC4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

unint64_t sub_1DF4994D4()
{
  result = qword_1ED9558A8;
  if (!qword_1ED9558A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9558A8);
  }

  return result;
}

uint64_t sub_1DF499528()
{
  sub_1DF499628(v0[33], type metadata accessor for NetworkRequest);
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[28];

  v5 = v0[1];

  return v5();
}

unint64_t sub_1DF4995C8()
{
  result = qword_1ED955750[0];
  if (!qword_1ED955750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED955750);
  }

  return result;
}

uint64_t sub_1DF499628(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DF499688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DF4996E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E0, &unk_1DF56B300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56B0F0;
  v1 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1DF564944();
  *(inited + 40) = v2;
  v3 = sub_1DF499ED4();
  v4 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  v6 = *MEMORY[0x1E696A588];
  *(inited + 80) = sub_1DF564944();
  *(inited + 88) = v7;
  v8 = sub_1DF49A378();
  *(inited + 120) = v4;
  *(inited + 96) = v8;
  *(inited + 104) = v9;
  v10 = *MEMORY[0x1E696A598];
  *(inited + 128) = sub_1DF564944();
  *(inited + 136) = v11;
  v12 = sub_1DF49A574();
  *(inited + 168) = v4;
  *(inited + 144) = v12;
  *(inited + 152) = v13;
  v14 = sub_1DF49A758(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E8, &unk_1DF5673D0);
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_1DF4997F4()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 304);
  v5 = *v1;
  v3[39] = v0;
  v3[40] = v2[2];
  v3[41] = v2[3];
  *(v3 + 21) = *(v3 + 2);
  v3[44] = v2[6];
  *(v3 + 57) = *(v3 + 56);

  if (v0)
  {
    v6 = sub_1DF499968;
  }

  else
  {
    v6 = sub_1DF4BB82C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DF499968()
{
  v1 = *(v0 + 312);
  *(v0 + 144) = v1;
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 240);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = *(v0 + 312);
      v63 = *(v0 + 288);
      v8 = *(v0 + 256);
      v9 = *(v0 + 264);
      v10 = *(v0 + 248);
      v12 = *(v0 + 216);
      v11 = *(v0 + 224);
      v13 = *(v0 + 208);
      sub_1DF47E5B4(v10, &qword_1ECE37A10, &qword_1DF567C00);

      (*(v12 + 32))(v11, v6, v13);
      (*(v12 + 16))(v10, v11, v13);
      v8(v10, 0, 1, v13);
      v14 = sub_1DF4B3DAC(8, sub_1DF498474);

      (*(v12 + 8))(v11, v13);
      goto LABEL_16;
    }

    sub_1DF499628(v6, type metadata accessor for InternalError);
  }

  v15 = *(v0 + 312);
  v16 = *(v0 + 272);

  swift_getErrorValue();
  v17 = *(v0 + 64);
  v18 = *(v0 + 72);
  v19 = *(v0 + 80);
  v20 = v15;
  v21 = sub_1DF49A0C0(v18);
  v22 = [v21 domain];

  v23 = sub_1DF564944();
  v25 = v24;

  if (v23 == sub_1DF564944() && v25 == v26)
  {

    goto LABEL_9;
  }

  v27 = sub_1DF5650D4();

  if (v27)
  {
LABEL_9:
    v28 = *(v0 + 288);
    v30 = *(v0 + 256);
    v29 = *(v0 + 264);
    v31 = *(v0 + 248);
    v32 = *(v0 + 208);

    swift_getErrorValue();
    v33 = *(v0 + 112);
    v34 = *(v0 + 128);
    v35 = sub_1DF505580(*(v0 + 120));

    sub_1DF47E5B4(v31, &qword_1ECE37A10, &qword_1DF567C00);
    v30(v31, 1, 1, v32);
    v14 = *(v0 + 312);
    if (!v35)
    {
LABEL_20:
      if (!v14)
      {
        sub_1DF4B3DAC(8, sub_1DF498474);
      }

      swift_willThrow();
      sub_1DF47E5B4(*(v0 + 248), &qword_1ECE37A10, &qword_1DF567C00);
      goto LABEL_23;
    }

LABEL_16:
    v53 = *(v0 + 296) - 1;
    if (*(v0 + 296) != 1)
    {
      *(v0 + 288) = v14;
      *(v0 + 296) = v53;
      v54 = swift_task_alloc();
      *(v0 + 304) = v54;
      *v54 = v0;
      v54[1] = sub_1DF4997F4;
      v55 = *(v0 + 248);
      v56 = *(v0 + 200);

      return sub_1DF4939B4(v0 + 16, v0 + 136, v55);
    }

    goto LABEL_20;
  }

  v36 = *(v0 + 312);
  v37 = *(v0 + 280);
  swift_getErrorValue();
  v38 = *(v0 + 88);
  v39 = *(v0 + 104);
  v40 = sub_1DF49A0C0(*(v0 + 96));
  v41 = [v40 domain];

  v42 = sub_1DF564944();
  v44 = v43;

  v46 = sub_1DF564944();
  v47 = v42;
  v48 = *(v0 + 312);
  v49 = *(v0 + 288);
  v50 = *(v0 + 248);
  if (v47 == v46 && v44 == v45)
  {

    sub_1DF47E5B4(v50, &qword_1ECE37A10, &qword_1DF567C00);
LABEL_15:
    v52 = *(v0 + 264);
    (*(v0 + 256))(*(v0 + 248), 1, 1, *(v0 + 208));
    v14 = *(v0 + 312);
    goto LABEL_16;
  }

  v51 = sub_1DF5650D4();

  sub_1DF47E5B4(v50, &qword_1ECE37A10, &qword_1DF567C00);
  if (v51)
  {
    goto LABEL_15;
  }

  v62 = *(v0 + 312);
LABEL_23:
  v59 = *(v0 + 240);
  v58 = *(v0 + 248);
  v60 = *(v0 + 224);

  v61 = *(v0 + 8);

  return v61();
}

unint64_t sub_1DF499ED4()
{
  result = 0xD00000000000002ALL;
  switch(*v0)
  {
    case 1:
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD00000000000002BLL;
      break;
    case 3:
    case 0xC:
      result = 0xD00000000000002DLL;
      break;
    case 5:
      result = 0xD000000000000032;
      break;
    case 6:
      result = 0xD00000000000003DLL;
      break;
    case 7:
      result = 0xD000000000000021;
      break;
    case 8:
      result = 0xD000000000000023;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 0xA:
      result = 0xD00000000000001ALL;
      break;
    case 0xB:
      result = 0xD000000000000031;
      break;
    case 0xD:
      result = 0xD000000000000046;
      break;
    case 0xE:
      result = 0xD00000000000002ELL;
      break;
    case 0xF:
      result = 0xD00000000000004BLL;
      break;
    case 0x10:
      result = 0xD00000000000002CLL;
      break;
    default:
      return result;
  }

  return result;
}

id sub_1DF49A0C0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_1DF5650B4();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_1DF5642E4();

  v11 = [v10 domain];
  if (!v11)
  {
    sub_1DF564944();
    v11 = sub_1DF564914();
  }

  v12 = [v10 code];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E0, &unk_1DF56B300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF567CF0;
  v14 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1DF564944();
  *(inited + 40) = v15;
  v16 = [v10 localizedDescription];
  v17 = sub_1DF564944();
  v19 = v18;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  sub_1DF49A758(inited);
  swift_setDeallocating();
  sub_1DF47E5B4(inited + 32, &qword_1ECE378E8, &unk_1DF5673D0);
  v20 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v21 = sub_1DF564864();

  v22 = [v20 initWithDomain:v11 code:v12 userInfo:v21];

  return v22;
}

unint64_t sub_1DF49A378()
{
  result = 0xD00000000000002ALL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000051;
      break;
    case 2:
      result = 0xD000000000000033;
      break;
    case 3:
      result = 0xD000000000000038;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000031;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 0xA:
    case 0x10:
      result = 0xD00000000000001ALL;
      break;
    case 0xB:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0xD00000000000001FLL;
      break;
    case 0xD:
      result = 0xD000000000000040;
      break;
    case 0xE:
      result = 0xD000000000000046;
      break;
    case 0xF:
      result = 0xD00000000000002ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DF49A574()
{
  result = 0xD00000000000009DLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000043;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
    case 6:
    case 0xD:
      result = 0xD000000000000038;
      break;
    case 4:
    case 5:
      result = 0xD00000000000003BLL;
      break;
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD000000000000042;
      break;
    case 0xE:
      result = 0xD000000000000037;
      break;
    case 0xF:
      result = 0xD000000000000026;
      break;
    case 0x10:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DF49A6F4()
{
  sub_1DF49A9F0(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 392);

  return v1();
}

unint64_t sub_1DF49A758(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE379F8, &unk_1DF568890);
    v3 = sub_1DF564F34();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DF47E4CC(v4, &v13, &qword_1ECE378E8, &unk_1DF5673D0);
      v5 = v13;
      v6 = v14;
      result = sub_1DF480420(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DF49A88C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_1DF49A88C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DF49A89C()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;
  v5 = *(v2 + 264);
  v6 = *(v2 + 280);

  if (v0)
  {
    v7 = sub_1DF49A888;
  }

  else
  {

    v7 = sub_1DF4BB828;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t get_enum_tag_for_layout_string_25CloudSubscriptionFeatures21ResponsePreProcessing_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DF49AA80(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[9];
  v6 = *v2;
  (*v2)[10] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF49ABF0, 0, 0);
  }

  else
  {
    v7 = v4[7];
    v8 = v4[8];
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_0(v4 + 2);
    v9 = v6[1];

    return v9(a1);
  }
}

uint64_t sub_1DF49ABF0()
{
  v1 = v0[7];
  v2 = v0[8];
  swift_bridgeObjectRelease_n();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1DF49AC68(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      if (a5 == 3)
      {
      }

      if (a5 != 4)
      {
        return result;
      }
    }

LABEL_11:
  }

  if (!a5)
  {
    goto LABEL_11;
  }

  if (a5 == 1)
  {

    return sub_1DF4B9718(result, a2);
  }

  return result;
}

uint64_t sub_1DF49AD00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 64) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4CCCF8, 0, 0);
  }
}

uint64_t sub_1DF49AE4C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (!v0)
  {
    **(v2 + 16) = *(v2 + 32);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1DF49AF5C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1DF49B088;
  }

  else
  {
    v6 = sub_1DF5392AC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF49B088()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = swift_task_alloc();
  v8 = *(v0 + 56);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v8;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  os_unfair_lock_lock((v6 + 20));
  sub_1DF49B328((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DF49B174(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v30 = a4;
  v31 = a8;
  v29 = a3;
  v14 = sub_1DF564494();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v26 = a9;
    v27 = a10;
    v28 = a6;
    v20 = *(a2 + 128);
    v21 = *(a2 + 136);
    sub_1DF564484();
    sub_1DF5643C4();
    v23 = v22;
    (*(v15 + 8))(v19, v14);
    sub_1DF48FD84(v20, v21, v29, v30, v23);
    v32 = a7;
    v24 = a7;
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    result = sub_1DF564B14();
  }

  *a1 = 1;
  return result;
}

uint64_t sub_1DF49B350()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_1DF49B478;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 48);

    v5 = sub_1DF5441F8;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF49B478()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2(0);
}

uint64_t sub_1DF49B4E0(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_1DF49B5E8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1DF49B6FC()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_1DF49B828;
  }

  else
  {
    v6 = sub_1DF532104;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF49B828()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[23];
  v9 = v0[19];
  v8 = v0[20];

  (*(v6 + 8))(v4, v5);
  sub_1DF490EE8(v9, v8);
  v10 = v0[35];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[28];

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_1DF49B910(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 152);
  v7 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v8 = sub_1DF49BA60;
  }

  else
  {
    *(v4 + 176) = a1 & 1;
    v8 = sub_1DF4CCC80;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DF49BA60()
{
  v25 = v0;
  v1 = v0[18];

  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED956260);
  v4 = v2;
  v5 = sub_1DF564794();
  v6 = sub_1DF564C24();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[7];
    v13 = sub_1DF5651B4();
    v15 = sub_1DF47EF6C(v13, v14, &v24);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Received error from server: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  v16 = v0[21];
  v18 = v0[15];
  v17 = v0[16];
  swift_getErrorValue();
  v19 = v0[2];
  v20 = v0[4];
  v21 = sub_1DF49A0C0(v0[3]);
  v18(0, v21);

  v22 = v0[1];

  return v22();
}

void sub_1DF49BC74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_1DF49BD00(char a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t))
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF5647B4();
  __swift_project_value_buffer(v11, qword_1ED956398);
  v12 = a2;

  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();

  if (os_log_type_enabled(v13, v14))
  {
    v22 = v14;
    v15 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v15 = 136315650;
    *(v15 + 4) = sub_1DF47EF6C(a3, a4, &v23);
    *(v15 + 12) = 1024;
    *(v15 + 14) = a1 & 1;
    *(v15 + 18) = 2080;
    if (a2)
    {
      v16 = [v12 localizedDescription];
      v17 = sub_1DF564944();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v20 = sub_1DF47EF6C(v17, v19, &v23);

    *(v15 + 20) = v20;
    _os_log_impl(&dword_1DF47C000, v13, v22, "received feature eligibility response, feature: %s, isEligible: %{BOOL}d, error: %s", v15, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v21, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  sub_1DF49BF58(a3, a4, a1 & 1, a2, a6);
}

void sub_1DF49BF58(uint64_t a1, unint64_t a2, char a3, void *a4, void (*a5)(void *, uint64_t))
{
  if (a4)
  {
    v7 = qword_1ED956390;
    v8 = a4;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_1DF5647B4();
    __swift_project_value_buffer(v9, qword_1ED956398);
    v10 = v8;
    v11 = sub_1DF564794();
    v12 = sub_1DF564C24();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v13 = 138412546;
      *(v13 + 4) = v10;
      *v28 = a4;
      *(v13 + 12) = 2080;
      v14 = [v10 userInfo];
      v27 = v12;
      sub_1DF564874();

      v15 = sub_1DF564884();
      v17 = v16;

      v18 = sub_1DF47EF6C(v15, v17, &v31);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1DF47C000, v11, v27, "Received error from daemon: %@, %s", v13, 0x16u);
      sub_1DF484888(v28);
      MEMORY[0x1E12D75F0](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1E12D75F0](v29, -1, -1);
      MEMORY[0x1E12D75F0](v13, -1, -1);
    }

    v30 = v10;
    a5(a4, 1);
  }

  else
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v22 = sub_1DF5647B4();
    __swift_project_value_buffer(v22, qword_1ED956398);

    v23 = sub_1DF564794();
    v24 = sub_1DF564C44();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_1DF47EF6C(a1, a2, &v31);
      *(v25 + 12) = 1024;
      *(v25 + 14) = a3 & 1;
      _os_log_impl(&dword_1DF47C000, v23, v24, "Successfully retrieved feature eligibility from daemon. Feature ID: %s, isEligible: %{BOOL}d", v25, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1E12D75F0](v26, -1, -1);
      MEMORY[0x1E12D75F0](v25, -1, -1);
    }

    a5((a3 & 1), 0);
  }
}

uint64_t sub_1DF49C33C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v4 = 0;
    v5 = a1;
  }

  else
  {
    v4 = a1 & 1;
    v5 = 0;
  }

  return a3(v4, v5);
}

void sub_1DF49C380(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1DF5642E4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t objectdestroy_39Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_39Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

BOOL sub_1DF49C4B0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1DF49C51C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DF49C54C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

char *sub_1DF49C584@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  result = sub_1DF47E8A4();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DF49C5B0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_1DF49C5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF49C6B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF49C760()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DF49C7FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DF4BFA44();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DF49C854@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DF4C108C(0x74706F5F6F747561, 0xEB000000006E695FLL);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DF49C8E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DF4C108C(0x6E695F646574706FLL, 0xEE0079646475625FLL);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DF49C97C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DF4C108C(0x756F5F646574706FLL, 0xEF79646475625F74);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DF49CA14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF49CA54()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF49CAA4()
{
  MEMORY[0x1E12D76A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF49CADC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DF49CB2C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF49CB68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DF49CBB0()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF49CBF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DF49CC38()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DF49CC80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DF49CCEC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF49CD3C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DF49CD84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1DF49CDE4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DF49CE34()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DF49CEC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DF4DA35C();
  *a2 = result;
  return result;
}

uint64_t sub_1DF49CEF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1DF4DA4C8(v4);
}

uint64_t sub_1DF49CF1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DF564494();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DF49CFC8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF564494();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF49D06C()
{

  return MEMORY[0x1EEE6BDD0](v0, 82, 7);
}

uint64_t sub_1DF49D0D0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1DF49D118()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF49D1A4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1DF49D1E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF49D218()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF49D29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A18, qword_1DF56B370);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF49D358(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A18, qword_1DF56B370);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF49D4FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF49D53C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF49D578()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF49D5BC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DF49D604()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1DF49D6C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF564494();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF49D730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF564494();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF49D850@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DF52A5E8();
  *a2 = result & 1;
  return result;
}

BOOL sub_1DF49D8AC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DF52ACE4();
  *a2 = result;
  return result;
}

id sub_1DF49D980@<X0>(_BYTE *a1@<X8>)
{
  result = [objc_opt_self() hasEngagedWithCFU];
  *a1 = result;
  return result;
}

id sub_1DF49D9BC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();

  return [v2 setHasEngagedWithCFU_];
}

uint64_t sub_1DF49DA04()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38328, &qword_1DF56CD48);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1DF49DA8C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF49DAC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF49DB10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF49DB50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF49DBA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF49DBDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DF49DCB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_1DF564494();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v12 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v12 + 16, v3 | v7 | 7);
}

uint64_t sub_1DF49DE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DF49DF3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DF49E004()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DF49E048@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1DF49E0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF564494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1DF49E168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DF564494();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DF49E228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386C8, &qword_1DF56E240);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DF49E2F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386C8, &qword_1DF56E240);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DF49E3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF564494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DF49E474(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DF564494();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DF49E530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF564494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DF49E5FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DF564494();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1DF49E6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DF564494();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF49E760(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF564494();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF49E804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DF564494();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF49E8B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF564494();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF49E954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF49EA10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF49EAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DF564494();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF49EB6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF564494();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF49EC10()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1DF49F8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id _CSFGetLogSystem()
{
  if (_CSFGetLogSystem_onceToken != -1)
  {
    _CSFGetLogSystem_cold_1();
  }

  v1 = _CSFGetLogSystem_log;

  return v1;
}

__CFString *CSFGeoClassificationStatusDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E86BB2B8[a1 - 1];
  }
}

Class initTapToRadarService()
{
  if (TapToRadarKitLibrary_sOnce != -1)
  {
    initTapToRadarService_cold_1();
  }

  result = objc_getClass("TapToRadarService");
  classTapToRadarService = result;
  getTapToRadarServiceClass[0] = TapToRadarServiceFunction;
  return result;
}

void *__TapToRadarKitLibrary_block_invoke()
{
  result = dlopen("/AppleInternal/Library/Frameworks/TapToRadarKit.framework/TapToRadarKit", 2);
  TapToRadarKitLibrary_sLib = result;
  return result;
}

Class initRadarDraft()
{
  if (TapToRadarKitLibrary_sOnce != -1)
  {
    initTapToRadarService_cold_1();
  }

  result = objc_getClass("RadarDraft");
  classRadarDraft = result;
  getRadarDraftClass[0] = RadarDraftFunction;
  return result;
}

Class initRadarComponent()
{
  if (TapToRadarKitLibrary_sOnce != -1)
  {
    initTapToRadarService_cold_1();
  }

  result = objc_getClass("RadarComponent");
  classRadarComponent = result;
  getRadarComponentClass = RadarComponentFunction;
  return result;
}

id getINDaemonConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getINDaemonConnectionClass_softClass;
  v7 = getINDaemonConnectionClass_softClass;
  if (!getINDaemonConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getINDaemonConnectionClass_block_invoke;
    v3[3] = &unk_1E86BB3C0;
    v3[4] = &v4;
    __getINDaemonConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DF4A20D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMSDKDemoStateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMSDKDemoStateClass_softClass;
  v7 = getMSDKDemoStateClass_softClass;
  if (!getMSDKDemoStateClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMSDKDemoStateClass_block_invoke;
    v3[3] = &unk_1E86BB3C0;
    v3[4] = &v4;
    __getMSDKDemoStateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DF4A2590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINDaemonConnectionClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __iCloudNotificationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E86BB3E0;
    v7 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMSDKDemoStateClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!MobileStoreDemoKitLibraryCore_frameworkLibrary)
  {
    MobileStoreDemoKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("MSDKDemoState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSDKDemoStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileStoreDemoKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileStoreDemoKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF4A28D4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithString_];

  sub_1DF564944();
  v3 = sub_1DF564914();

  qword_1ED958B40 = v3;
  return result;
}

uint64_t sub_1DF4A296C(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4A2990, 0, 0);
}

uint64_t sub_1DF4A2990()
{
  v1 = v0[21];
  v2 = v0[19];
  sub_1DF4A2CEC(v0[20]);
  v3 = sub_1DF564864();
  v0[22] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF4A2B00;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378F8, &qword_1DF5673E8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4A2FB4;
  v0[13] = &block_descriptor_57;
  v0[14] = v4;
  [v1 renewCredentialsForAccount:v2 options:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF4A2B00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1DF4A2C7C;
  }

  else
  {
    v3 = sub_1DF4A2C10;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF4A2C10()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DF4A2C7C()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_1DF4A2CEC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37908, &qword_1DF568860);
    v2 = sub_1DF564F34();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1DF47F24C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1DF49A88C(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1DF49A88C(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1DF49A88C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1DF564D74();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1DF49A88C(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1DF4A2FB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

void sub_1DF4A3080(char a1)
{
  v2 = v1;
  v4 = [v1 aa_primaryAppleAccount];
  if (v4)
  {
    v5 = v4;
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v6 = sub_1DF5647B4();
    __swift_project_value_buffer(v6, qword_1ED956260);
    v7 = v5;
    v8 = sub_1DF564794();
    v9 = sub_1DF564C14();
    if (!os_log_type_enabled(v8, v9))
    {

      goto LABEL_15;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 67109378;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2080;
    v12 = [v7 aa_altDSID];

    if (v12)
    {
      v13 = sub_1DF564944();
      v15 = v14;

      v16 = sub_1DF47EF6C(v13, v15, aBlock);

      *(v10 + 10) = v16;
      _os_log_impl(&dword_1DF47C000, v8, v9, "Storing subscriber status %{BOOL}d on account %s", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1E12D75F0](v11, -1, -1);
      MEMORY[0x1E12D75F0](v10, -1, -1);
LABEL_15:

      [v7 aa:a1 & 1 setIsCloudSubscriber:?];
      v20 = swift_allocObject();
      *(v20 + 16) = v7;
      *(v20 + 24) = a1 & 1;
      aBlock[4] = sub_1DF4A4E38;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DF4A3718;
      aBlock[3] = &block_descriptor;
      v21 = _Block_copy(aBlock);
      v22 = v7;

      [v2 saveAccount:v22 withCompletionHandler:v21];
      _Block_release(v21);

      return;
    }

    __break(1u);
  }

  else
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v17 = sub_1DF5647B4();
    __swift_project_value_buffer(v17, qword_1ED956260);
    oslog = sub_1DF564794();
    v18 = sub_1DF564C24();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DF47C000, oslog, v18, "Unable to update subscriber status because there is no primary apple account", v19, 2u);
      MEMORY[0x1E12D75F0](v19, -1, -1);
    }
  }
}

void sub_1DF4A3408(char a1, void *a2, void *a3, char a4)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF5647B4();
    __swift_project_value_buffer(v18, qword_1ED956260);
    v19 = a2;
    oslog = sub_1DF564794();
    v20 = sub_1DF564C24();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v23 = sub_1DF5651B4();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = sub_1DF47EF6C(v23, v25, &v28);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1DF47C000, oslog, v20, "Failed to save account with Error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1E12D75F0](v22, -1, -1);
      v16 = v21;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED956260);
  v7 = a3;
  oslog = sub_1DF564794();
  v8 = sub_1DF564C14();
  if (!os_log_type_enabled(oslog, v8))
  {

LABEL_13:

    return;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v28 = v10;
  *v9 = 136315394;
  v11 = [v7 aa_altDSID];

  if (v11)
  {
    v12 = sub_1DF564944();
    v14 = v13;

    v15 = sub_1DF47EF6C(v12, v14, &v28);

    *(v9 + 4) = v15;
    *(v9 + 12) = 1024;
    *(v9 + 14) = a4 & 1;
    _os_log_impl(&dword_1DF47C000, oslog, v8, "Saved account %s with subscriber status %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    v16 = v9;
LABEL_18:
    MEMORY[0x1E12D75F0](v16, -1, -1);

    return;
  }

  __break(1u);
}

void sub_1DF4A3718(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_1DF4A3790()
{
  if (qword_1ED954660 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED958B40;

  return v0;
}

uint64_t sub_1DF4A37EC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF490980;

  return sub_1DF4A296C(a1, a2);
}

uint64_t sub_1DF4A3894(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_1DF4A3C4C;
  }

  else
  {
    v8 = *(v4 + 216);

    *(v4 + 240) = a1;
    v7 = sub_1DF4A39C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DF4A39C4()
{
  v28 = v0;
  if (*(v0 + 240))
  {
    v1 = *(v0 + 200);
    v2 = sub_1DF564794();
    v3 = sub_1DF564C24();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DF47C000, v2, v3, "Bag refresh failed", v4, 2u);
      MEMORY[0x1E12D75F0](v4, -1, -1);
    }

    v5 = *(v0 + 208);

    sub_1DF498474();
    swift_allocError();
    *v6 = 9;
    swift_willThrow();
    goto LABEL_7;
  }

  v7 = *(v0 + 232);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  v10 = (*(v0 + 184))(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
  if (v7)
  {
    v5 = *(v0 + 208);
LABEL_7:

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = v11;
  v15 = v10;
  v16 = *(v0 + 200);
  v17 = *(v0 + 152);

  v18 = sub_1DF564794();
  v19 = sub_1DF564C44();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 208);
  if (v20)
  {
    v23 = *(v0 + 144);
    v22 = *(v0 + 152);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_1DF47EF6C(v23, v22, &v27);
    _os_log_impl(&dword_1DF47C000, v18, v19, "Bag refresh was successful and now contains a path for %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1E12D75F0](v25, -1, -1);
    MEMORY[0x1E12D75F0](v24, -1, -1);
  }

  else
  {
  }

  v26 = *(v0 + 8);

  return v26(v15, v14);
}

uint64_t sub_1DF4A3C4C()
{
  v2 = v0[26];
  v1 = v0[27];

  v3 = v0[29];
  v4 = v0[1];

  return v4();
}

id sub_1DF4A3CB4()
{
  v1 = *v0;
  v2 = sub_1DF564914();
  v3 = [v1 aa:v2 appleAccountWithAltDSID:?];

  return v3;
}

uint64_t sub_1DF4A3D08()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DF4A3D80()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF4A3EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 72);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DF4A3FF4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1DF4A3FF4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1DF4A4118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 88);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DF4A4248;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1DF4A4248(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1DF4A4380(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF4A4458(uint64_t a1, int a2)
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

uint64_t sub_1DF4A4478(uint64_t result, int a2, int a3)
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

uint64_t sub_1DF4A44DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void *sub_1DF4A455C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1DF4A4588@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1DF4A4640(uint64_t a1, id *a2)
{
  result = sub_1DF564924();
  *a2 = 0;
  return result;
}

uint64_t sub_1DF4A46B8(uint64_t a1, id *a2)
{
  v3 = sub_1DF564934();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DF4A4738@<X0>(uint64_t *a1@<X8>)
{
  sub_1DF564944();
  v2 = sub_1DF564914();

  *a1 = v2;
  return result;
}

uint64_t sub_1DF4A477C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1DF4A4E00(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1DF4A484C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF4A4924@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DF564914();

  *a2 = v5;
  return result;
}

uint64_t sub_1DF4A496C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DF564944();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1DF4A4998(uint64_t a1)
{
  v2 = sub_1DF4A484C(&qword_1ECE378C8, type metadata accessor for Name);
  v3 = sub_1DF4A484C(&unk_1ECE378D0, type metadata accessor for Name);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DF4A4AE4()
{
  v1 = *v0;
  v2 = sub_1DF564944();
  v3 = MEMORY[0x1E12D62F0](v2);

  return v3;
}

uint64_t sub_1DF4A4B20()
{
  v1 = *v0;
  sub_1DF564944();
  sub_1DF5649E4();
}

uint64_t sub_1DF4A4B74()
{
  v1 = *v0;
  sub_1DF564944();
  sub_1DF565234();
  sub_1DF5649E4();
  v2 = sub_1DF565264();

  return v2;
}

uint64_t sub_1DF4A4BE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1DF564944();
  v6 = v5;
  if (v4 == sub_1DF564944() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();
  }

  return v9 & 1;
}

uint64_t sub_1DF4A4CB8()
{
  v0 = sub_1DF5159E8();
  if (v0 == 2)
  {
    sub_1DF5640B4();
    if (v1)
    {

      v2 = 0;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = v0;
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF5647B4();
    __swift_project_value_buffer(v3, qword_1ED956260);
    v4 = sub_1DF564794();
    v5 = sub_1DF564C44();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v2 & 1;
      _os_log_impl(&dword_1DF47C000, v4, v5, "User has mocked auth issue via CSFCTL. Returning value %{BOOL}d.", v6, 8u);
      MEMORY[0x1E12D75F0](v6, -1, -1);
    }
  }

  return v2 & 1;
}

uint64_t sub_1DF4A4E00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1DF4A4F1C()
{
  type metadata accessor for SystemProperties();
  result = swift_initStaticObject();
  qword_1ECE37720 = result;
  return result;
}

uint64_t static SystemProperties.shared.getter()
{
  type metadata accessor for SystemProperties();

  return swift_initStaticObject();
}

uint64_t sub_1DF4A4F78(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t (*sub_1DF4A4F88(char **a1))(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1DF47E8A4();
  a1[1] = v3;
  return sub_1DF4A4FD0;
}

uint64_t sub_1DF4A4FD0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *a1;
  v4 = *(v1 + 24);
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
}

uint64_t sub_1DF4A4FE4()
{
  result = sub_1DF4A52C0();
  if (!v1)
  {
    sub_1DF498474();
    swift_allocError();
    *v2 = 11;
    return swift_willThrow();
  }

  return result;
}

id sub_1DF4A5040()
{
  v19[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v19[0] = 0;
  result = [objc_opt_self() isDeviceEnrolledWithDeKOTA_];
  v3 = v19[0];
  if (v19[0])
  {
    swift_willThrow();
    v4 = qword_1ED9545D8;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_1DF5647B4();
    __swift_project_value_buffer(v6, qword_1ED9545E0);
    v7 = v5;
    v8 = sub_1DF564794();
    v9 = sub_1DF564C24();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19[0] = v12;
      *v10 = 136446722;
      v13 = sub_1DF5652D4();
      v15 = sub_1DF47EF6C(v13, v14, v19);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2082;
      *(v10 + 14) = sub_1DF47EF6C(0x6C69617465527369, 0xEE00656369766544, v19);
      *(v10 + 22) = 2112;
      v16 = v7;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 24) = v17;
      *v11 = v17;
      _os_log_impl(&dword_1DF47C000, v8, v9, "%{public}s %{public}s failed to check isRetailDevice: %@", v10, 0x20u);
      sub_1DF484888(v11);
      MEMORY[0x1E12D75F0](v11, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v12, -1, -1);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    else
    {
    }

    result = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF4A52C0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = sub_1DF4A571C();
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    *(v0 + 32) = v3;
    *(v0 + 40) = v6;

    sub_1DF4A559C(v4, v5);
  }

  sub_1DF4A5880(v1, v2);
  return v3;
}

void *SystemProperties.deinit()
{
  v1 = v0[3];

  sub_1DF4A559C(v0[4], v0[5]);
  return v0;
}

uint64_t SystemProperties.__deallocating_deinit()
{
  v1 = v0[3];

  sub_1DF4A559C(v0[4], v0[5]);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1DF4A53AC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1DF4A53F8(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_1DF4A5458(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1DF4A5490(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1DF47EF6C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1DF4A54EC(void (*a1)(void))
{
  a1();

  return sub_1DF5652D4();
}

void sub_1DF4A5528(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1DF4A559C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DF4A571C()
{
  v0 = sub_1DF564914();
  v1 = MGCopyAnswer();

  if (!v1)
  {
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v3;
  }

  return 0;
}

uint64_t sub_1DF4A57C0()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    v2 = MobileGestalt_copy_regionCode_obj();

    if (v2)
    {
      v3 = sub_1DF564944();
      v5 = v4;

      if (v3 == 18499 && v5 == 0xE200000000000000)
      {

        return 1;
      }

      else
      {
        v6 = sub_1DF5650D4();

        return v6 & 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4A5880(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DF4A5894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 aa_primaryAppleAccount];
  if (!v6)
  {
    goto LABEL_12;
  }

  if (qword_1ED954660 != -1)
  {
    v16 = v6;
    swift_once();
    v6 = v16;
  }

  v7 = v6;
  v8 = [v6 propertiesForDataclass_];

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = sub_1DF564874();

  v10 = sub_1DF4A5A5C(v9);

  if (!v10)
  {
    goto LABEL_12;
  }

  if (*(v10 + 16) && (v11 = sub_1DF480420(a1, a2), (v12 & 1) != 0))
  {
    sub_1DF47F24C(*(v10 + 56) + 32 * v11, v17);
  }

  else
  {

    memset(v17, 0, sizeof(v17));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378F0, &qword_1DF5686F0);
  if (swift_dynamicCast())
  {
    v13 = v18;
  }

  else
  {
LABEL_12:
    sub_1DF498474();
    swift_allocError();
    *v14 = 9;
    swift_willThrow();
  }

  return v13 & 1;
}

unint64_t sub_1DF4A5A5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE379F8, &unk_1DF568890);
    v2 = sub_1DF564F34();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_1DF4A799C(*(a1 + 48) + 40 * v14, v29);
        sub_1DF47F24C(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_1DF4A799C(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1DF47F24C(v27 + 8, v22);
        sub_1DF47E5B4(v26, &qword_1ECE37A00, &qword_1DF5675D8);
        v23 = v20;
        sub_1DF49A88C(v22, v24);
        v15 = v23;
        sub_1DF49A88C(v24, v25);
        sub_1DF49A88C(v25, &v23);
        result = sub_1DF480420(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_1DF49A88C(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_1DF49A88C(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_1DF47E5B4(v26, &qword_1ECE37A00, &qword_1DF5675D8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1DF4A5D58()
{
  if (sub_1DF4C4790(0) || sub_1DF4C4790(1u) || sub_1DF4C4790(2u) || sub_1DF4C4790(3u))
  {
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_1DF4A5E54;
    v2 = *(v0 + 16);

    return sub_1DF4A6160();
  }

  else
  {
    *(v0 + 40) = 0;

    return MEMORY[0x1EEE6DFA0](sub_1DF4A60C8, 0, 0);
  }
}

uint64_t sub_1DF4A5E54(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *v1;

  if (a1)
  {
    v6 = swift_task_alloc();
    *(v3 + 32) = v6;
    *v6 = v5;
    v6[1] = sub_1DF4A5FC4;
    v7 = *(v3 + 16);

    return sub_1DF4A66E4();
  }

  else
  {
    *(v3 + 40) = 0;

    return MEMORY[0x1EEE6DFA0](sub_1DF4A60C8, 0, 0);
  }
}

uint64_t sub_1DF4A5FC4(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v6 = *v1;

  *(v3 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF4A60C8, 0, 0);
}

uint64_t sub_1DF4A60C8()
{
  if (qword_1ED954E20 != -1)
  {
    swift_once();
  }

  sub_1DF4A79F8(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4A6180()
{
  v0[5] = &type metadata for FeatureFlag;
  v1 = sub_1DF481614();
  *(v0 + 16) = 1;
  v0[6] = v1;
  v2 = sub_1DF5645A4();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2 & 1) != 0 && (v0[5] = &type metadata for FeatureFlag, v0[6] = v1, *(v0 + 16) = 2, v3 = sub_1DF5645A4(), __swift_destroy_boxed_opaque_existential_0(v0 + 2), (v3))
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF5647B4();
    __swift_project_value_buffer(v4, qword_1ED9556D8);
    v5 = sub_1DF564794();
    v6 = sub_1DF564C44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DF47C000, v5, v6, "Both runtime feature flags for rsvp are enabled, overriding setup bag values", v7, 2u);
      MEMORY[0x1E12D75F0](v7, -1, -1);
    }

    v8 = v0[1];

    return v8(1);
  }

  else
  {
    v10 = *(v0[11] + OBJC_IVAR___DaemonController_accountStore);
    v0[12] = v10;

    return MEMORY[0x1EEE6DFA0](sub_1DF4A6348, v10, 0);
  }
}

uint64_t sub_1DF4A6348()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v0 + 104) = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DF4A63D0, 0, 0);
}

uint64_t sub_1DF4A63D0()
{
  v1 = *(v0 + 104);
  v2 = sub_1DF4A5894(0x62616E4570767372, 0xEB0000000064656CLL);
  v3 = *(v0 + 104);
  v4 = sub_1DF4A5894(0xD000000000000018, 0x80000001DF5710D0);

  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v5 = sub_1DF5647B4();
  __swift_project_value_buffer(v5, qword_1ED9556D8);
  v6 = sub_1DF564794();
  v7 = sub_1DF564C44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240448;
    *(v8 + 4) = v2 & 1;
    *(v8 + 8) = 1026;
    *(v8 + 10) = v4 & 1;
    _os_log_impl(&dword_1DF47C000, v6, v7, "setup bag results: rsvpEnabled=%{BOOL,public}d, rsvpDataDetectorsEnabled=%{BOOL,public}d", v8, 0xEu);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9(v2 & v4 & 1);
}

uint64_t sub_1DF4A6704()
{
  v0[5] = &type metadata for FeatureFlag;
  v1 = sub_1DF481614();
  *(v0 + 16) = 3;
  v0[6] = v1;
  v2 = sub_1DF5645A4();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2)
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF5647B4();
    __swift_project_value_buffer(v3, qword_1ED9556D8);
    v4 = sub_1DF564794();
    v5 = sub_1DF564C44();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DF47C000, v4, v5, "Runtime flag rsvpSubscriber is enabled, overriding feature check as true", v6, 2u);
      MEMORY[0x1E12D75F0](v6, -1, -1);
    }

    v7 = v0[1];

    return v7(1);
  }

  else
  {
    if (qword_1ED955FF0 != -1)
    {
      swift_once();
    }

    v9 = v0[10];
    v0[11] = off_1ED955FF8;
    v10 = *(v9 + OBJC_IVAR___DaemonController_accountStore);
    v0[12] = v10;

    return MEMORY[0x1EEE6DFA0](sub_1DF4A68E0, v10, 0);
  }
}

uint64_t sub_1DF4A68E0()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = [v2 aa_primaryAppleAccount];
  if (v3 && (v4 = v3, v5 = [v3 aa_altDSID], v4, v5))
  {
    v6 = sub_1DF564944();
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0;
  }

  v0[13] = v6;
  v0[14] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1DF4A69D4, 0, 0);
}

uint64_t sub_1DF4A69D4()
{
  v16 = v0;
  v1 = v0[11];
  v2 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(0xD000000000000016, 0x80000001DF571090, v0[13], v0[14], 0, 0);

  if (v2)
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF5647B4();
    __swift_project_value_buffer(v3, qword_1ED9556D8);
    v4 = v2;
    v5 = sub_1DF564794();
    v6 = sub_1DF564C44();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v7 = 136315394;
      *(v7 + 4) = sub_1DF47EF6C(0xD000000000000018, 0x80000001DF5710B0, &v15);
      *(v7 + 12) = 2112;
      *(v7 + 14) = v4;
      *v8 = v2;
      v10 = v4;
      _os_log_impl(&dword_1DF47C000, v5, v6, "%s feature: %@", v7, 0x16u);
      sub_1DF47E5B4(v8, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1E12D75F0](v9, -1, -1);
      MEMORY[0x1E12D75F0](v7, -1, -1);
    }

    v11 = OBJC_IVAR___CloudFeature_canUse;
    swift_beginAccess();
    v12 = v4[v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = v0[1];

  return v13(v12);
}

uint64_t _sSo17CSFFeatureManagerC25CloudSubscriptionFeaturesE23urlForRSVPDataDetectors7context10Foundation3URLVSDySSypG_tFZ_0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v101 = a2;
  v97 = sub_1DF564264();
  v96 = *(v97 - 8);
  v3 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A08, &qword_1DF5675E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v100 = &v89 - v7;
  v113 = sub_1DF564204();
  v8 = *(v113 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v89 - v13;
  v15 = sub_1DF564494();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A18, qword_1DF56B370);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v94 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v89 - v23;
  v25 = sub_1DF564344();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x1EEE9AC00](v25);
  v95 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v89 = &v89 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v90 = &v89 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v89 - v34;
  sub_1DF564334();
  v36 = v26[6];
  v92 = v26 + 6;
  v91 = v36;
  if (v36(v24, 1, v25) != 1)
  {
    v98 = v26;
    v37 = v26[4];
    v102 = v35;
    v99 = v25;
    v104 = v26 + 4;
    v103 = v37;
    v37(v35, v24, v25);
    v38 = (a1 + 64);
    v39 = 1 << *(a1 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    isa = v40 & *(a1 + 64);
    v42 = (v39 + 63) >> 6;
    v111 = (v16 + 56);
    v107 = (v16 + 32);
    v106 = "Invalid base URL";
    v105 = (v16 + 8);
    v112 = v8;
    v110 = v8 + 32;
    v109 = a1;

    v43 = 0;
    v44 = MEMORY[0x1E69E7CC0];
    v45 = MEMORY[0x1E69E7CA0];
    if (isa)
    {
      while (1)
      {
        v46 = v43;
LABEL_14:
        v49 = __clz(__rbit64(isa));
        isa &= isa - 1;
        v50 = v49 | (v46 << 6);
        v51 = (*(v109 + 48) + 16 * v50);
        v53 = *v51;
        v52 = v51[1];
        sub_1DF47F24C(*(v109 + 56) + 32 * v50, v117);
        *&v118 = v53;
        *(&v118 + 1) = v52;
        sub_1DF49A88C(v117, &v119);

LABEL_15:
        v121 = v118;
        v122[0] = v119;
        v122[1] = v120;
        if (!*(&v118 + 1))
        {
          break;
        }

        v115 = v121;
        v116 = *(&v118 + 1);
        sub_1DF49A88C(v122, &v118);
        sub_1DF47F24C(&v118, v117);
        v54 = swift_dynamicCast();
        v55 = *v111;
        if (v54)
        {
          v55(v14, 0, 1, v15);
          v56 = v108;
          (*v107)(v108, v14, v15);
          MEMORY[0x1E12D62C0](0xD000000000000013, v106 | 0x8000000000000000);
          sub_1DF564394();
          sub_1DF564B84();
          (*v105)(v56, v15);
        }

        else
        {
          v55(v14, 1, 1, v15);
          sub_1DF47E5B4(v14, &qword_1ECE37A10, &qword_1DF567C00);
          sub_1DF47F24C(&v118, v117);
          sub_1DF564994();
        }

        sub_1DF5641F4();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1DF4A9EB8(0, *(v44 + 16) + 1, 1, v44);
        }

        v58 = *(v44 + 16);
        v57 = *(v44 + 24);
        v45 = MEMORY[0x1E69E7CA0];
        if (v58 >= v57 >> 1)
        {
          v44 = sub_1DF4A9EB8(v57 > 1, v58 + 1, 1, v44);
        }

        __swift_destroy_boxed_opaque_existential_0(&v118);
        *(v44 + 16) = v58 + 1;
        (*(v112 + 32))(v44 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v58, v114, v113);
        if (!isa)
        {
          goto LABEL_6;
        }
      }

      v45 = v100;
      v42 = v102;
      sub_1DF564244();
      v59 = v96;
      v60 = *(v96 + 48);
      v61 = v97;
      if (v60(v45, 1, v97))
      {
      }

      else
      {
        sub_1DF564234();
      }

      v43 = v99;
      v62 = v95;
      v63 = v60(v45, 1, v61);
      v44 = v98;
      if (v63)
      {
        v64 = v94;
        (v98[7])(v94, 1, 1, v43);
LABEL_32:
        sub_1DF47E5B4(v64, &qword_1ECE37A18, qword_1DF56B370);
        if (qword_1ED956390 != -1)
        {
          swift_once();
        }

        v66 = sub_1DF5647B4();
        __swift_project_value_buffer(v66, qword_1ED956398);
        (*(v44 + 16))(v62, v42, v43);
        v67 = sub_1DF564794();
        v68 = sub_1DF564C24();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *&v121 = v70;
          *v69 = 136315138;
          v71 = sub_1DF564304();
          v72 = v62;
          v74 = v73;
          (*(v44 + 8))(v72, v43);
          v75 = sub_1DF47EF6C(v71, v74, &v121);

          *(v69 + 4) = v75;
          _os_log_impl(&dword_1DF47C000, v67, v68, "Unable to append context to URL, returning base URL %s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v70);
          MEMORY[0x1E12D75F0](v70, -1, -1);
          MEMORY[0x1E12D75F0](v69, -1, -1);
        }

        else
        {

          (*(v44 + 8))(v62, v43);
        }

        v14 = v42;
        goto LABEL_38;
      }

      v65 = v93;
      (*(v59 + 16))(v93, v45, v61);
      v64 = v94;
      sub_1DF564254();
      (*(v59 + 8))(v65, v61);
      if (v91(v64, 1, v43) == 1)
      {
        goto LABEL_32;
      }

      v14 = v90;
      v103(v90, v64, v43);
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v77 = sub_1DF5647B4();
      __swift_project_value_buffer(v77, qword_1ED956398);
      isa = v89;
      (*(v44 + 16))(v89, v14, v43);
      v38 = sub_1DF564794();
      v78 = sub_1DF564C44();
      if (os_log_type_enabled(v38, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v121 = v80;
        *v79 = 136315138;
        v81 = sub_1DF564304();
        v82 = isa;
        v84 = v83;
        v85 = *(v44 + 8);
        v85(v82, v43);
        v86 = sub_1DF47EF6C(v81, v84, &v121);

        *(v79 + 4) = v86;
        _os_log_impl(&dword_1DF47C000, v38, v78, "Returning URL %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x1E12D75F0](v80, -1, -1);
        v87 = v79;
        v14 = v90;
        MEMORY[0x1E12D75F0](v87, -1, -1);

        v85(v102, v43);
LABEL_38:
        v103(v101, v14, v43);
        return sub_1DF47E5B4(v45, &qword_1ECE37A08, &qword_1DF5675E0);
      }
    }

    else
    {
LABEL_6:
      if (v42 <= v43 + 1)
      {
        v47 = v43 + 1;
      }

      else
      {
        v47 = v42;
      }

      v48 = v47 - 1;
      while (1)
      {
        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v46 >= v42)
        {
          isa = 0;
          v119 = 0u;
          v120 = 0u;
          v43 = v48;
          v118 = 0u;
          goto LABEL_15;
        }

        isa = v38[v46].isa;
        ++v43;
        if (isa)
        {
          v43 = v46;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v88 = *(v44 + 8);
    v88(isa, v43);
    v88(v42, v43);
    goto LABEL_38;
  }

  sub_1DF47E5B4(v24, &qword_1ECE37A18, qword_1DF56B370);
  result = sub_1DF564EF4();
  __break(1u);
  return result;
}

void sub_1DF4A79F8(char a1)
{
  v2 = v1;
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956260);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Updating DataDetectors cache with new shouldShowRSVPDataDetectors value %{BOOL,public}d", v7, 8u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v8 = v2[2];
  v9 = sub_1DF564AF4();
  v10 = v2[3];
  v11 = v2[4];
  v12 = sub_1DF564914();
  [v8 setObject:v9 forKey:v12 inDomain:*MEMORY[0x1E696A400]];
}

void *sub_1DF4A7B50()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  type metadata accessor for DataDetectorsCache();
  result = swift_allocObject();
  result[3] = 0xD00000000000001BLL;
  result[4] = 0x80000001DF5711F0;
  if (v2)
  {
    result[2] = v2;
    qword_1ED958B50 = result;
  }

  else
  {
    result = sub_1DF564EF4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4A7C48()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = sub_1DF564914();
  v5 = [v2 objectForKey:v4 inDomain:*MEMORY[0x1E696A400]];

  if (v5)
  {
    sub_1DF564D24();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v7;
    }
  }

  else
  {
    sub_1DF4A7D80(v10);
    return 0;
  }

  return result;
}

uint64_t sub_1DF4A7D1C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1DF4A7D80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378F0, &qword_1DF5686F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF4A7DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF564494();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF4A7E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF564494();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for BlockedNetworkRequestError()
{
  result = qword_1ECE37A20;
  if (!qword_1ECE37A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF4A7F28(uint64_t a1)
{
  result = sub_1DF564494();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t CSFUnavailabilityReasons.description.getter(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1DF4A9DAC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1DF4A9DAC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0xD000000000000010;
  *(v5 + 5) = 0x80000001DF571310;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF4A9DAC(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1DF4A9DAC((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD00000000000001ALL;
    *(v8 + 5) = 0x80000001DF5712F0;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF4A9DAC(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1DF4A9DAC((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD000000000000010;
    *(v11 + 5) = 0x80000001DF5712D0;
    if ((a1 & 0x10) == 0)
    {
LABEL_14:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF4A9DAC(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_1DF4A9DAC((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0xD000000000000010;
  *(v14 + 5) = 0x80000001DF5712B0;
  if ((a1 & 0x20) == 0)
  {
LABEL_15:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF4A9DAC(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_1DF4A9DAC((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0x4E73497465737361;
  *(v17 + 5) = 0xEF7964616552746FLL;
  if ((a1 & 0x40) == 0)
  {
LABEL_16:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF4A9DAC(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_1DF4A9DAC((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  strcpy(v20 + 32, "shortOfStorage");
  v20[47] = -18;
  if ((a1 & 0x80) == 0)
  {
LABEL_17:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_40:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF4A9DAC(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_1DF4A9DAC((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x646574704F746F6ELL;
  *(v23 + 5) = 0xEA00000000006E49;
  if ((a1 & 0x100) == 0)
  {
LABEL_18:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

LABEL_45:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF4A9DAC(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_1DF4A9DAC((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0xD000000000000019;
  *(v26 + 5) = 0x80000001DF571290;
  if ((a1 & 0x200) != 0)
  {
LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF4A9DAC(0, *(v2 + 2) + 1, 1, v2);
    }

    v28 = *(v2 + 2);
    v27 = *(v2 + 3);
    if (v28 >= v27 >> 1)
    {
      v2 = sub_1DF4A9DAC((v27 > 1), v28 + 1, 1, v2);
    }

    *(v2 + 2) = v28 + 1;
    v29 = &v2[16 * v28];
    *(v29 + 4) = 0x6E776F6E6B6E75;
    *(v29 + 5) = 0xE700000000000000;
  }

LABEL_55:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
  sub_1DF4A9C0C();
  v30 = sub_1DF5648C4();
  v32 = v31;

  MEMORY[0x1E12D62C0](v30, v32);

  MEMORY[0x1E12D62C0](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1DF4A8540()
{
  v1 = *v0;
  sub_1DF565234();
  MEMORY[0x1E12D6B00](v1);
  return sub_1DF565264();
}

uint64_t sub_1DF4A85B4()
{
  v1 = *v0;
  sub_1DF565234();
  MEMORY[0x1E12D6B00](v1);
  return sub_1DF565264();
}

void AvailabilityModel.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

BOOL AvailabilityModel.deviceIsOptedIn.getter()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 16) & 1) != 0 || (*(v0 + 8) & 0x80) == 0;
  v3 = *(v0 + 24);
  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED955738);

  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_1DF47EF6C(v3, v1, &v10);
    *(v7 + 12) = 1026;
    *(v7 + 14) = v2;
    _os_log_impl(&dword_1DF47C000, v5, v6, "[%{public}s] Returning deviceIsOptedIn value: %{BOOL,public}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  return v2;
}

uint64_t AvailabilityModel.serverGrantedAccess.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  if ((v1 & 0x110) != 0)
  {
    v5 = *(v0 + 16);
  }

  else
  {
    v5 = 1;
  }

  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED955738);

  v7 = sub_1DF564794();
  v8 = sub_1DF564C44();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446722;
    *(v9 + 4) = sub_1DF47EF6C(v4, v3, &v16);
    *(v9 + 12) = 1026;
    *(v9 + 14) = v5;
    *(v9 + 18) = 2082;
    if (v2)
    {
      if (v1)
      {
        v11 = 0x646574696D696CLL;
      }

      else
      {
        v11 = 0x6C62616C69617661;
      }

      if (v1)
      {
        v12 = 0xE700000000000000;
      }

      else
      {
        v12 = 0xE900000000000065;
      }
    }

    else
    {
      sub_1DF564DF4();

      v13 = CSFUnavailabilityReasons.description.getter(v1);
      MEMORY[0x1E12D62C0](v13);

      v11 = 0xD000000000000016;
      v12 = 0x80000001DF571330;
    }

    v14 = sub_1DF47EF6C(v11, v12, &v16);

    *(v9 + 20) = v14;
    _os_log_impl(&dword_1DF47C000, v7, v8, "[%{public}s] Returning serverGrantedAccess value: %{BOOL,public}d, from status %{public}s", v9, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  return v5;
}

void sub_1DF4A8ACC(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v54 = a3;
  v5 = sub_1DF5644C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 9);
  sub_1DF5644B4();
  v13 = sub_1DF5644A4();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  v17 = sub_1DF488298(8, v13, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = MEMORY[0x1E12D6280](v17, v19, v21, v23);
  v26 = v25;

  if (v12)
  {

    v27 = [a1 status];
    if (v27 >= 2)
    {
      if (v27 == 2)
      {
        v55 = [a1 unavailabiltyReasons];
        v28 = 0;
      }

      else
      {
        v28 = 0;
        v55 = 512;
      }
    }

    else
    {
      v55 = v27;
      v28 = 1;
    }
  }

  else
  {

    v55 = v10;
    v28 = v11;
  }

  v59 = v28 & 1;
  v60 = [a1 deviceHasEnoughStorage];
  v61 = [a1 unableToFetchAvailability];
  if (v12)
  {
    v29 = 0xE300000000000000;
    v30 = 7104878;
  }

  else if (v11)
  {
    if (v10)
    {
      v30 = 0x646574696D696CLL;
    }

    else
    {
      v30 = 0x6C62616C69617661;
    }

    if (v10)
    {
      v29 = 0xE700000000000000;
    }

    else
    {
      v29 = 0xE900000000000065;
    }
  }

  else
  {
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_1DF564DF4();

    v56 = 0xD000000000000016;
    v57 = 0x80000001DF571330;
    v31 = CSFUnavailabilityReasons.description.getter(v10);
    MEMORY[0x1E12D62C0](v31);

    v30 = v56;
    v29 = v57;
    v28 = v59;
  }

  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v32 = sub_1DF5647B4();
  __swift_project_value_buffer(v32, qword_1ED955738);

  v33 = a1;

  v34 = sub_1DF564794();
  v35 = sub_1DF564C44();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    HIDWORD(v51) = v28;
    v37 = v36;
    v38 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v58 = v52;
    *v37 = 136446978;
    v53 = v24;
    v39 = sub_1DF47EF6C(v24, v26, &v58);

    *(v37 + 4) = v39;
    *(v37 + 12) = 2114;
    *(v37 + 14) = v33;
    *v38 = v33;
    *(v37 + 22) = 2082;
    v40 = v33;
    v41 = sub_1DF47EF6C(v30, v29, &v58);

    *(v37 + 24) = v41;
    *(v37 + 32) = 2082;
    if ((v51 & 0x100000000) != 0)
    {
      v42 = v55;
      if (v55)
      {
        v43 = 0x646574696D696CLL;
      }

      else
      {
        v43 = 0x6C62616C69617661;
      }

      if (v55)
      {
        v44 = 0xE700000000000000;
      }

      else
      {
        v44 = 0xE900000000000065;
      }
    }

    else
    {
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_1DF564DF4();

      v56 = 0xD000000000000016;
      v57 = 0x80000001DF571330;
      v42 = v55;
      v45 = CSFUnavailabilityReasons.description.getter(v55);
      MEMORY[0x1E12D62C0](v45);

      v43 = v56;
      v44 = v57;
    }

    v46 = sub_1DF47EF6C(v43, v44, &v58);

    *(v37 + 34) = v46;
    _os_log_impl(&dword_1DF47C000, v34, v35, "[%{public}s] Initialized AvailabilityModel using csfAvailability %{public}@, and status %{public}s. Resulting status: %{public}s", v37, 0x2Au);
    sub_1DF484888(v38);
    MEMORY[0x1E12D75F0](v38, -1, -1);
    v47 = v52;
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v47, -1, -1);
    MEMORY[0x1E12D75F0](v37, -1, -1);

    v24 = v53;
  }

  else
  {

    v42 = v55;
  }

  v48 = v60;
  v49 = v59;
  v50 = v54;
  *v54 = v61;
  v50[1] = v48;
  *(v50 + 1) = v42;
  v50[16] = v49;
  *(v50 + 3) = v24;
  *(v50 + 4) = v26;
}

uint64_t AvailabilityModel.description.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1DF564DF4();
  MEMORY[0x1E12D62C0](0xD000000000000013, 0x80000001DF571350);
  MEMORY[0x1E12D62C0](v4, v5);
  MEMORY[0x1E12D62C0](0xD00000000000001BLL, 0x80000001DF571370);
  if (v1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1E12D62C0](v6, v7);

  MEMORY[0x1E12D62C0](0x737574617473202CLL, 0xEA0000000000203ALL);
  sub_1DF4A9154(v2, v3);
  return 0;
}

uint64_t sub_1DF4A9154(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = a1 == 0;
    if (a1)
    {
      v3 = 0x646574696D696CLL;
    }

    else
    {
      v3 = 0x6C62616C69617661;
    }

    if (v2)
    {
      v4 = 0xE900000000000065;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = a1;
    sub_1DF564DF4();

    v6 = CSFUnavailabilityReasons.description.getter(v5);
    MEMORY[0x1E12D62C0](v6);

    v3 = 0xD000000000000016;
    v4 = 0x80000001DF571330;
  }

  MEMORY[0x1E12D62C0](v3, v4);
}

uint64_t sub_1DF4A9244()
{
  v1 = *v0;
  sub_1DF565234();
  MEMORY[0x1E12D6B00](v1);
  return sub_1DF565264();
}

uint64_t sub_1DF4A928C()
{
  v1 = *v0;
  sub_1DF565234();
  MEMORY[0x1E12D6B00](v1);
  return sub_1DF565264();
}

unint64_t sub_1DF4A92D0()
{
  v1 = 0x737574617473;
  if (*v0 != 2)
  {
    v1 = 25705;
  }

  v2 = 0xD000000000000019;
  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DF4A9348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF4AA9CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF4A9388(uint64_t a1)
{
  v2 = sub_1DF4AA4E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4A93C4(uint64_t a1)
{
  v2 = sub_1DF4AA4E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AvailabilityModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A38, &qword_1DF5676D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v21 = v1[1];
  v17 = *(v1 + 1);
  v16 = v1[16];
  v9 = *(v1 + 4);
  v15 = *(v1 + 3);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4AA4E8();
  sub_1DF5652A4();
  v25 = 0;
  v11 = v18;
  sub_1DF565064();
  if (!v11)
  {
    v13 = v16;
    v14 = v17;
    v24 = 1;
    sub_1DF565064();
    v19 = v14;
    v20 = v13;
    v23 = 2;
    sub_1DF4AA53C();
    sub_1DF565074();
    v22 = 3;
    sub_1DF565054();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t AvailabilityModel.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = v0[16];
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  sub_1DF565254();
  sub_1DF565254();
  if (v4 == 1)
  {
    v3 = v3 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  MEMORY[0x1E12D6B00](v3);

  return sub_1DF5649E4();
}

uint64_t AvailabilityModel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = v0[16];
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  sub_1DF565234();
  sub_1DF565254();
  sub_1DF565254();
  if (v4 == 1)
  {
    v3 = v3 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  MEMORY[0x1E12D6B00](v3);
  sub_1DF5649E4();
  return sub_1DF565264();
}

uint64_t AvailabilityModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A50, &qword_1DF5676E0);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - v6;
  v8 = sub_1DF5644C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF5644B4();
  v13 = sub_1DF5644A4();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v17 = sub_1DF488298(8, v13, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  MEMORY[0x1E12D6280](v17, v19, v21, v23);

  v24 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4AA4E8();
  sub_1DF565284();
  if (!v2)
  {
    v26 = v34;
    v25 = v35;
    LOBYTE(v36) = 0;
    v39 = sub_1DF564FD4() & 1;
    LOBYTE(v36) = 1;
    v41 = sub_1DF564FD4() & 1;
    v40 = 2;
    sub_1DF4AA590();
    sub_1DF564FE4();
    v33 = v36;
    v38 = v37;
    LOBYTE(v36) = 3;
    v28 = sub_1DF564FC4();
    v30 = v29;
    (*(v26 + 8))(v7, v4);

    v31 = v41;
    v32 = v38;
    *v25 = v39;
    *(v25 + 1) = v31;
    *(v25 + 8) = v33;
    *(v25 + 16) = v32;
    *(v25 + 24) = v28;
    *(v25 + 32) = v30;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_1DF4A9AE8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t sub_1DF4A9AFC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = v0[16];
  v6 = *(v0 + 3);
  v7 = *(v0 + 4);
  sub_1DF565234();
  AvailabilityModel.hash(into:)();
  return sub_1DF565264();
}

uint64_t sub_1DF4A9B6C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = v0[16];
  v6 = *(v0 + 3);
  v7 = *(v0 + 4);
  sub_1DF565234();
  AvailabilityModel.hash(into:)();
  return sub_1DF565264();
}

unint64_t sub_1DF4A9C0C()
{
  result = qword_1ED9551C0;
  if (!qword_1ED9551C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37A30, &qword_1DF5676D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9551C0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

char *sub_1DF4A9CB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC8, &qword_1DF567A68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_1DF4A9DAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF4A9F30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A80, &qword_1DF567D70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1DF4AA05C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AB0, &qword_1DF567A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AB8, &qword_1DF567A58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DF4AA1CC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1DF4AA3FC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_1DF4AA42C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t _s25CloudSubscriptionFeatures17AvailabilityModelV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v5 = *(a1 + 1);
    v6 = *(a1 + 3);
    v7 = *(a1 + 4);
    v8 = *(a2 + 1);
    v9 = a2[16];
    if (a1[16] == 1)
    {
      if (v5)
      {
        if (v8)
        {
          v10 = a2[16];
        }

        else
        {
          v10 = 0;
        }

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v8)
        {
          v12 = 0;
        }

        else
        {
          v12 = a2[16];
        }

        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v5 == v8)
      {
        v11 = a2[16];
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        return 0;
      }
    }

    if (v6 == *(a2 + 3) && v7 == *(a2 + 4))
    {
      return 1;
    }

    else
    {
      return sub_1DF5650D4();
    }
  }

  return result;
}

unint64_t sub_1DF4AA4E8()
{
  result = qword_1ECE37A40;
  if (!qword_1ECE37A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37A40);
  }

  return result;
}

unint64_t sub_1DF4AA53C()
{
  result = qword_1ECE37A48;
  if (!qword_1ECE37A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37A48);
  }

  return result;
}

unint64_t sub_1DF4AA590()
{
  result = qword_1ECE37A58;
  if (!qword_1ECE37A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37A58);
  }

  return result;
}

unint64_t sub_1DF4AA61C()
{
  result = qword_1ECE37A60;
  if (!qword_1ECE37A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37A60);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF4AA6D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF4AA71C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AvailabilityModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AvailabilityModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF4AA8C8()
{
  result = qword_1ECE37A68;
  if (!qword_1ECE37A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37A68);
  }

  return result;
}

unint64_t sub_1DF4AA920()
{
  result = qword_1ECE37A70;
  if (!qword_1ECE37A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37A70);
  }

  return result;
}

unint64_t sub_1DF4AA978()
{
  result = qword_1ECE37A78;
  if (!qword_1ECE37A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37A78);
  }

  return result;
}

uint64_t sub_1DF4AA9CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000019 && 0x80000001DF571290 == a2;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DF571390 == a2 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DF5650D4();

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

uint64_t sub_1DF4AAB30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UnavailabilityReasons(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF4AABD8(uint64_t a1, unint64_t a2)
{
  if (sub_1DF564A24())
  {
    v5 = *__swift_project_boxed_opaque_existential_0(v2, v2[3]);
    v6 = sub_1DF4AADE8();
  }

  else if (sub_1DF564A24() & 1) != 0 || (sub_1DF564A24())
  {
    v6 = *(*__swift_project_boxed_opaque_existential_0(v2, v2[3]) + 16);
  }

  else
  {
    v6 = 1;
  }

  if (qword_1ED9550A8 != -1)
  {
    swift_once();
  }

  v7 = sub_1DF5647B4();
  __swift_project_value_buffer(v7, qword_1ED9550B0);

  v8 = sub_1DF564794();
  v9 = sub_1DF564C14();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1DF47EF6C(a1, a2, &v13);
    *(v10 + 12) = 1024;
    *(v10 + 14) = v6 & 1;
    _os_log_impl(&dword_1DF47C000, v8, v9, "Feature ID %s is supported? %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1E12D75F0](v11, -1, -1);
    MEMORY[0x1E12D75F0](v10, -1, -1);
  }

  return v6 & 1;
}

id sub_1DF4AADE8()
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED955720 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED9558C0);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Fetching CT capability.", v4, 2u);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];
  v38[0] = 0;
  v6 = [v5 getStewieSupport_];

  if (!v6)
  {
    v13 = v38[0];
    v14 = sub_1DF5642F4();

    swift_willThrow();
    v15 = sub_1DF5642E4();
    v16 = [v15 domain];
    v17 = sub_1DF564944();
    v19 = v18;

    v20 = *MEMORY[0x1E696A250];
    if (v17 == sub_1DF564944() && v19 == v21)
    {
    }

    else
    {
      v22 = sub_1DF5650D4();

      if ((v22 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v23 = [v15 code];
    if (v23 == sub_1DF564814())
    {
      v24 = sub_1DF564794();
      v25 = sub_1DF564C04();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1DF47C000, v24, v25, "Fetched CT device capability, device is incapable.", v26, 2u);
        MEMORY[0x1E12D75F0](v26, -1, -1);
      }

      v27 = v14;
      sub_1DF4E179C(1, v14, sub_1DF47FD50);
      sub_1DF55629C(0);
LABEL_23:

      v8 = 0;
      goto LABEL_24;
    }

LABEL_20:
    v28 = v14;
    v29 = sub_1DF564794();
    v30 = sub_1DF564C24();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      v33 = v14;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_1DF47C000, v29, v30, "Error fetching CT device capability: %{public}@", v31, 0xCu);
      sub_1DF484888(v32);
      MEMORY[0x1E12D75F0](v32, -1, -1);
      MEMORY[0x1E12D75F0](v31, -1, -1);
    }

    v35 = v14;
    sub_1DF4E179C(0, v14, sub_1DF47FD50);
    sub_1DF556638(v14);
    goto LABEL_23;
  }

  v7 = v38[0];
  v8 = [v6 hwSupport];

  v9 = sub_1DF564794();
  v10 = sub_1DF564C44();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_1DF47C000, v9, v10, "Fetched CT device capability: %{BOOL,public}d", v11, 8u);
    MEMORY[0x1E12D75F0](v11, -1, -1);
  }

  if (v8)
  {
    v12 = 257;
  }

  else
  {
    v12 = 1;
  }

  sub_1DF4E179C(v12, 0, sub_1DF47FD50);
  sub_1DF55629C(v8);
LABEL_24:
  v36 = *MEMORY[0x1E69E9840];
  return v8;
}

id sub_1DF4AB2B8()
{
  type metadata accessor for HardwareChecker();
  swift_allocObject();
  result = sub_1DF4AB2F8();
  qword_1ED954AD0 = result;
  return result;
}

id sub_1DF4AB2F8()
{
  v0 = sub_1DF564C64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DF564C54();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1DF564854();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1DF4AB608();
  sub_1DF564844();
  v13[1] = MEMORY[0x1E69E7CC0];
  sub_1DF4AB654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AD0, qword_1DF567B48);
  sub_1DF4AB6AC();
  sub_1DF564D44();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  v9 = v13[0];
  *(v9 + 24) = sub_1DF564C74();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v11 = result;
    deviceSupportsGenerativeModelSystems = MobileGestalt_get_deviceSupportsGenerativeModelSystems();

    *(v9 + 16) = deviceSupportsGenerativeModelSystems;
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4AB530()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DF4AB568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DF4AB5B0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1DF4AB608()
{
  result = qword_1ED954D20;
  if (!qword_1ED954D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED954D20);
  }

  return result;
}

unint64_t sub_1DF4AB654()
{
  result = qword_1ED954D28;
  if (!qword_1ED954D28)
  {
    sub_1DF564C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954D28);
  }

  return result;
}

unint64_t sub_1DF4AB6AC()
{
  result = qword_1ED954D50;
  if (!qword_1ED954D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37AD0, qword_1DF567B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954D50);
  }

  return result;
}

uint64_t sub_1DF4AB710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DF4AB838;

  return v11(a1, a2, a3);
}

uint64_t sub_1DF4AB838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_1DF4AB94C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 + 32);
  v10 = *(a4 + 8);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = *a2;
  v14 = a2[1];
  *(v4 + 56) = v12;
  *(v4 + 32) = v14;
  *(v4 + 48) = v9;
  *(v4 + 16) = v13;
  *v12 = v4;
  v12[1] = sub_1DF4ABA9C;

  return v16(a1, v4 + 16, a3, a4);
}

uint64_t sub_1DF4ABA9C()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DF4ABBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DF48D4B0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1DF4ABD00(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1DF4BCB24(0, v2, 0);
    v35 = v36;
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_1DF564D54();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v30 = v1 + 72;
    v31 = v2;
    v32 = v8;
    v33 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v34 = v7;
      v11 = *(v1 + 56);
      v12 = (*(v1 + 48) + 16 * v6);
      v13 = v1;
      v14 = *v12;
      v15 = v12[1];
      v16 = (v11 + 16 * v6);
      v18 = *v16;
      v17 = v16[1];

      MEMORY[0x1E12D62C0](v14, v15);
      MEMORY[0x1E12D62C0](8250, 0xE200000000000000);
      MEMORY[0x1E12D62C0](v18, v17);

      v19 = v35;
      v21 = *(v35 + 16);
      v20 = *(v35 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1DF4BCB24((v20 > 1), v21 + 1, 1);
        v19 = v35;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = 8237;
      *(v22 + 40) = 0xE200000000000000;
      v9 = 1 << *(v13 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v1 = v13;
      v4 = v33;
      v23 = *(v33 + 8 * v10);
      if ((v23 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v35 = v19;
      v8 = v32;
      if (v32 != *(v1 + 36))
      {
        goto LABEL_27;
      }

      v24 = v23 & (-2 << (v6 & 0x3F));
      if (v24)
      {
        v9 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (v30 + 8 * v10);
        while (v26 < (v9 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1DF4AD520(v6, v32, 0);
            v9 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1DF4AD520(v6, v32, 0);
      }

LABEL_4:
      v7 = v34 + 1;
      v6 = v9;
      if (v34 + 1 == v31)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t sub_1DF4ABFB8(uint64_t a1, unint64_t a2)
{
  v4 = 0x3E7974706D653CLL;
  v5 = sub_1DF564984();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v7)
    {
      if (a1 == a1 >> 32)
      {
        return v4;
      }
    }

    else if ((a2 & 0xFF000000000000) == 0)
    {
      return v4;
    }

    goto LABEL_9;
  }

  if (v7 == 2 && *(a1 + 16) != *(a1 + 24))
  {
LABEL_9:
    sub_1DF564974();
    v8 = sub_1DF564964();
    if (v9)
    {
      return v8;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  return v4;
}

uint64_t sub_1DF4AC0C4()
{
  v87 = v0;
  (*(v0[16] + 32))(v0[21], v0[20], v0[15]);
  v1 = sub_1DF564084();
  if (v1)
  {
    v2 = v1;
    if (*(v1 + 16))
    {
      v3 = sub_1DF480420(0xD00000000000001FLL, 0x80000001DF5714B0);
      if (v4)
      {
        v5 = (*(v2 + 56) + 16 * v3);
        v7 = *v5;
        v6 = v5[1];

        goto LABEL_7;
      }
    }
  }

  v7 = 0;
  v6 = 0;
LABEL_7:
  v0[37] = v7;
  v0[38] = v6;
  v8 = v0[21];
  v9 = sub_1DF564084();
  if (v9)
  {
    v10 = v9;
    if (*(v9 + 16))
    {
      v11 = sub_1DF480420(0xD00000000000001DLL, 0x80000001DF571490);
      if (v12)
      {
        v13 = (*(v10 + 56) + 16 * v11);
        v15 = *v13;
        v14 = v13[1];

        goto LABEL_13;
      }
    }
  }

  v15 = 0;
  v14 = 0;
LABEL_13:
  v0[39] = v15;
  v0[40] = v14;
  v16 = v0[34];
  v17 = v0[21];
  v19 = v0[18];
  v18 = v0[19];
  v21 = v0[16];
  v20 = v0[17];
  v22 = v0[15];
  sub_1DF494E04(v0[14], v0[27]);
  v23 = *(v21 + 16);
  v23(v18, v17, v22);
  v23(v19, v17, v22);
  v23(v20, v17, v22);
  v24 = sub_1DF564794();
  v25 = sub_1DF564C44();
  if (os_log_type_enabled(v24, v25))
  {
    v81 = v25;
    v82 = v24;
    v26 = v0[29];
    v27 = v0[27];
    v28 = v0[19];
    v79 = v0[18];
    v30 = v0[15];
    v29 = v0[16];
    v31 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v84 = v80;
    *v31 = 136446978;
    sub_1DF494E04(v27, v26);
    sub_1DF564DF4();

    v85 = 0xD000000000000010;
    v86 = 0x80000001DF571470;
    MEMORY[0x1E12D62C0](*v26, v26[1]);
    MEMORY[0x1E12D62C0](62, 0xE100000000000000);
    sub_1DF494FCC(v27);
    sub_1DF494FCC(v26);
    v32 = sub_1DF47EF6C(0xD000000000000010, 0x80000001DF571470, &v84);

    *(v31 + 4) = v32;
    *(v31 + 12) = 2082;
    sub_1DF4AD4C8();
    v33 = sub_1DF5650A4();
    v35 = v34;
    v36 = *(v29 + 8);
    v36(v28, v30);
    v37 = sub_1DF47EF6C(v33, v35, &v84);

    *(v31 + 14) = v37;
    *(v31 + 22) = 2080;
    v38 = sub_1DF564084();
    if (v38)
    {
      v39 = v0[36];
      v40 = sub_1DF4ABD00(v38);

      v0[12] = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
      sub_1DF4A9C0C();
      v41 = sub_1DF5648C4();
      v43 = v42;

      v44 = 0x3E6C696E3CLL;
    }

    else
    {
      v43 = 0xE500000000000000;
      v44 = 0x3E6C696E3CLL;
      v41 = 0x3E6C696E3CLL;
    }

    v51 = v0[17];
    v36(v0[18], v0[15]);
    v52 = sub_1DF47EF6C(v41, v43, &v84);

    *(v31 + 24) = v52;
    *(v31 + 32) = 2080;
    v53 = sub_1DF5640D4();
    if (v54 >> 60 == 15)
    {
      v55 = 0xE500000000000000;
    }

    else
    {
      v56 = v53;
      v57 = v54;
      v44 = sub_1DF4ABFB8(v53, v54);
      v55 = v58;
      sub_1DF48C2F4(v56, v57);
    }

    v36(v0[17], v0[15]);
    v59 = sub_1DF47EF6C(v44, v55, &v84);

    *(v31 + 34) = v59;
    _os_log_impl(&dword_1DF47C000, v82, v81, "%{public}s Created network request: %{public}s with headers\n%s\nwith body: %s", v31, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v80, -1, -1);
    MEMORY[0x1E12D75F0](v31, -1, -1);
  }

  else
  {
    v45 = v0[27];
    v47 = v0[18];
    v46 = v0[19];
    v49 = v0[16];
    v48 = v0[17];
    v50 = v0[15];

    v36 = *(v49 + 8);
    v36(v48, v50);
    v36(v47, v50);
    v36(v46, v50);
    sub_1DF494FCC(v45);
  }

  v0[41] = v36;
  v60 = v0[34];
  sub_1DF494E04(v0[14], v0[26]);
  v61 = sub_1DF564794();
  v62 = sub_1DF564C44();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = v0[29];
    v64 = v0[26];
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v84 = v66;
    *v65 = 136446210;
    sub_1DF494E04(v64, v63);
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_1DF564DF4();

    v85 = 0xD000000000000010;
    v86 = 0x80000001DF571470;
    MEMORY[0x1E12D62C0](*v63, v63[1]);
    MEMORY[0x1E12D62C0](62, 0xE100000000000000);
    v67 = v85;
    v68 = v86;
    sub_1DF494FCC(v64);
    sub_1DF494FCC(v63);
    v69 = sub_1DF47EF6C(v67, v68, &v84);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_1DF47C000, v61, v62, "%{public}s Sending network request.", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x1E12D75F0](v66, -1, -1);
    MEMORY[0x1E12D75F0](v65, -1, -1);
  }

  else
  {
    v70 = v0[26];

    sub_1DF494FCC(v70);
  }

  v71 = v0[14];
  v72 = v71[5];
  v73 = v71[6];
  __swift_project_boxed_opaque_existential_0(v71 + 2, v72);
  v74 = *(v73 + 8);
  v83 = (v74 + *v74);
  v75 = v74[1];
  v76 = swift_task_alloc();
  v0[42] = v76;
  *v76 = v0;
  v76[1] = sub_1DF4AC82C;
  v77 = v0[21];

  return v83(v77, v72, v73);
}

uint64_t sub_1DF4AC82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 336);
  v11 = *v4;
  v5[43] = a1;
  v5[44] = a2;
  v5[45] = a3;
  v5[46] = v3;

  if (v3)
  {
    v7 = v5[40];
    v8 = v5[38];

    v9 = sub_1DF4AD0B4;
  }

  else
  {
    v9 = sub_1DF4AC958;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DF4AC958()
{
  v105 = v0;
  v1 = v0[45];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v0[45];
  if (v2)
  {
    v100 = v2;
    v5 = v0[43];
    v4 = v0[44];
    v6 = v0[34];
    sub_1DF494E04(v0[14], v0[25]);
    v7 = v3;
    sub_1DF4AD474(v5, v4);
    v8 = sub_1DF564794();
    v9 = sub_1DF564C44();
    sub_1DF48C308(v5, v4);
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[45];
    if (v10)
    {
      v94 = v0[44];
      v91 = v0[43];
      v12 = v0[29];
      v13 = v0[25];
      v14 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v102 = v97;
      *v14 = 136446722;
      sub_1DF494E04(v13, v12);
      sub_1DF564DF4();

      v103 = 0xD000000000000010;
      v104 = 0x80000001DF571470;
      MEMORY[0x1E12D62C0](*v12, v12[1]);
      MEMORY[0x1E12D62C0](62, 0xE100000000000000);
      sub_1DF494FCC(v13);
      sub_1DF494FCC(v12);
      v15 = sub_1DF47EF6C(0xD000000000000010, 0x80000001DF571470, &v102);

      *(v14 + 4) = v15;
      *(v14 + 12) = 2050;
      v16 = v100;
      v17 = [v100 0x1FAA064F8];

      *(v14 + 14) = v17;
      *(v14 + 22) = 2080;
      v18 = sub_1DF4ABFB8(v91, v94);
      v20 = sub_1DF47EF6C(v18, v19, &v102);

      *(v14 + 24) = v20;
      _os_log_impl(&dword_1DF47C000, v8, v9, "%{public}s Request completed with HTTP status %{public}ld\nwith data: %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v97, -1, -1);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }

    else
    {
      v37 = v0[25];

      sub_1DF494FCC(v37);
      v16 = v100;
    }

    v77 = v0[43];
    v78 = v0[44];
    v38 = v0[40];
    v74 = v0[45];
    v75 = v0[41];
    v40 = v0[38];
    v39 = v0[39];
    v41 = v0[37];
    v42 = v0[32];
    v43 = v0[33];
    v76 = v0[31];
    v79 = v0[30];
    v80 = v0[29];
    v81 = v0[28];
    v82 = v0[27];
    v83 = v0[26];
    v85 = v0[25];
    v87 = v0[24];
    v44 = v0[21];
    v89 = v0[23];
    v92 = v0[20];
    v95 = v0[19];
    v98 = v0[18];
    v45 = v0[16];
    v101 = v0[17];
    v46 = v0[14];
    v47 = v0[15];
    if (!v40)
    {
      v41 = 0x756F6620746F4E3CLL;
    }

    v73 = v41;
    if (!v40)
    {
      v40 = 0xEB000000003E646ELL;
    }

    if (!v38)
    {
      v39 = 0x756F6620746F4E3CLL;
    }

    v71 = v39;
    v72 = v40;
    if (!v38)
    {
      v38 = 0xEB000000003E646ELL;
    }

    v70 = v38;
    v48 = v0[13];
    v49 = [v16 0x1FAA064F8];

    v75(v44, v47);
    LOBYTE(v103) = 0;
    sub_1DF4990CC(v43, v46);
    (*(v42 + 8))(v43, v76);
    *v48 = v77;
    *(v48 + 8) = v78;
    *(v48 + 16) = v16;
    *(v48 + 24) = v73;
    *(v48 + 32) = v72;
    *(v48 + 40) = v71;
    *(v48 + 48) = v70;
    *(v48 + 56) = v49;
    *(v48 + 64) = v103;

    v50 = v0[1];
  }

  else
  {
    v21 = v0[40];
    v22 = v0[38];
    v23 = v0[34];
    v24 = v0[24];
    v25 = v0[14];

    sub_1DF494E04(v25, v24);
    v26 = v3;
    v27 = sub_1DF564794();
    v28 = sub_1DF564C24();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[45];
      v30 = v0[29];
      v31 = v0[24];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v102 = v34;
      *v32 = 136446466;
      sub_1DF494E04(v31, v30);
      sub_1DF564DF4();

      v103 = 0xD000000000000010;
      v104 = 0x80000001DF571470;
      MEMORY[0x1E12D62C0](*v30, v30[1]);
      MEMORY[0x1E12D62C0](62, 0xE100000000000000);
      sub_1DF494FCC(v31);
      sub_1DF494FCC(v30);
      v35 = sub_1DF47EF6C(0xD000000000000010, 0x80000001DF571470, &v102);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2112;
      *(v32 + 14) = v29;
      *v33 = v29;
      v36 = v29;
      _os_log_impl(&dword_1DF47C000, v27, v28, "%{public}s Invalid response type: %@", v32, 0x16u);
      sub_1DF484888(v33);
      MEMORY[0x1E12D75F0](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1E12D75F0](v34, -1, -1);
      MEMORY[0x1E12D75F0](v32, -1, -1);
    }

    else
    {
      v51 = v0[24];

      sub_1DF494FCC(v51);
    }

    v52 = v0[44];
    v53 = v0[45];
    v54 = v0[43];
    v55 = v0[41];
    v56 = v0[21];
    v57 = v0[15];
    v58 = v0[16];
    sub_1DF498474();
    swift_allocError();
    *v59 = 2;
    swift_willThrow();
    sub_1DF48C308(v54, v52);

    v55(v56, v57);
    v60 = v0[32];
    v61 = v0[33];
    v63 = v0[30];
    v62 = v0[31];
    v65 = v0[28];
    v64 = v0[29];
    v67 = v0[26];
    v66 = v0[27];
    v68 = v0[25];
    v84 = v0[24];
    v86 = v0[23];
    v88 = v0[21];
    v90 = v0[20];
    v93 = v0[19];
    v96 = v0[18];
    v99 = v0[17];
    sub_1DF4990CC(v61, v0[14]);
    (*(v60 + 8))(v61, v62);

    v50 = v0[1];
  }

  return v50();
}

uint64_t sub_1DF4AD0B4()
{
  v41 = v0;
  v1 = v0[46];
  v2 = v0[34];
  sub_1DF494E04(v0[14], v0[23]);
  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v38 = v0[46];
    v6 = v0[29];
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40[0] = v10;
    *v8 = 136446466;
    sub_1DF494E04(v7, v6);
    sub_1DF564DF4();

    v40[1] = 0xD000000000000010;
    v40[2] = 0x80000001DF571470;
    MEMORY[0x1E12D62C0](*v6, v6[1]);
    MEMORY[0x1E12D62C0](62, 0xE100000000000000);
    sub_1DF494FCC(v7);
    sub_1DF494FCC(v6);
    v11 = sub_1DF47EF6C(0xD000000000000010, 0x80000001DF571470, v40);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2114;
    v12 = v38;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v9 = v13;
    _os_log_impl(&dword_1DF47C000, v4, v5, "%{public}s Error making network request: %{public}@", v8, 0x16u);
    sub_1DF484888(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  else
  {
    v14 = v0[23];

    sub_1DF494FCC(v14);
  }

  v15 = v0[46];
  v16 = v0[41];
  v17 = v0[21];
  v18 = v0[15];
  v19 = v0[16];
  swift_willThrow();
  v16(v17, v18);
  v39 = v0[46];
  v20 = v0[32];
  v21 = v0[33];
  v23 = v0[30];
  v22 = v0[31];
  v25 = v0[28];
  v24 = v0[29];
  v27 = v0[26];
  v26 = v0[27];
  v28 = v0[25];
  v31 = v0[24];
  v32 = v0[23];
  v33 = v0[21];
  v34 = v0[20];
  v35 = v0[19];
  v36 = v0[18];
  v37 = v0[17];
  sub_1DF4990CC(v21, v0[14]);
  (*(v20 + 8))(v21, v22);

  v29 = v0[1];

  return v29();
}

unint64_t sub_1DF4AD3F4()
{
  sub_1DF564DF4();

  MEMORY[0x1E12D62C0](*v0, v0[1]);
  MEMORY[0x1E12D62C0](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_1DF4AD474(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1DF4AD4C8()
{
  result = qword_1ED954CD0;
  if (!qword_1ED954CD0)
  {
    sub_1DF5640F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954CD0);
  }

  return result;
}

uint64_t sub_1DF4AD520(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DF4AD56C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF4AD5B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DF4AD640()
{
  sub_1DF4AD70C(319, qword_1ED954B60);
  if (v0 <= 0x3F)
  {
    sub_1DF4AD70C(319, &qword_1ED9548E8);
    if (v1 <= 0x3F)
    {
      sub_1DF4820E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1DF4AD70C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_1DF4AD7B8()
{
  result = sub_1DF549DDC();
  qword_1ECE37628 = result;
  return result;
}

uint64_t sub_1DF4AD7D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v6 = sub_1DF564494();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  v28 = *(v7 + 56);
  v28(&v26 - v16, 1, 1, v6);
  v18 = sub_1DF564914();
  v19 = [a1 valueForHTTPHeaderField_];

  if (v19)
  {
    v27 = sub_1DF564944();
    v21 = v20;
    if (qword_1ECE37620 != -1)
    {
      swift_once();
    }

    v22 = [qword_1ECE37628 dateFromString_];

    if (v22)
    {
      sub_1DF564464();

      sub_1DF47E5B4(v17, &qword_1ECE37A10, &qword_1DF567C00);
      (*(v7 + 32))(v17, v10, v6);
      v28(v17, 0, 1, v6);
    }

    v33 = 0;
    v23 = sub_1DF4B823C(v27, v21);

    if (v23)
    {
      sub_1DF564424();
      sub_1DF47E5B4(v17, &qword_1ECE37A10, &qword_1DF567C00);
      v28(v15, 0, 1, v6);
      sub_1DF48C284(v15, v17);
    }
  }

  ObjectType = swift_getObjectType();
  (*(v32 + 16))(v17, v29, v30, ObjectType);
  return sub_1DF47E5B4(v17, &qword_1ECE37A10, &qword_1DF567C00);
}

uint64_t sub_1DF4ADB28()
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v0 = sub_1DF531308();
  v2 = v1;
  type metadata accessor for Config();
  v3 = swift_allocObject();
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  result = sub_1DF47E5B4(v5, &qword_1ECE38370, &qword_1DF569E50);
  qword_1ED954B20 = v3;
  return result;
}

uint64_t sub_1DF4ADBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_1DF564494();
  v4[26] = v5;
  v6 = *(v5 - 8);
  v4[27] = v6;
  v7 = *(v6 + 64) + 15;
  v4[28] = swift_task_alloc();
  v8 = type metadata accessor for InternalError();
  v4[29] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64) + 15;
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4ADCE4, 0, 0);
}

void sub_1DF4ADCE4()
{
  v1 = v0[24];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = v0[31];
    v4 = v0[26];
    v5 = v0[27];
    v6 = *(v5 + 56);
    v0[32] = v6;
    v0[33] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v6(v3, 1, 1, v4);
    if (v2 < 1)
    {
      sub_1DF4B3DAC(8, sub_1DF498474);
      swift_willThrow();
      sub_1DF47E5B4(v0[31], &qword_1ECE37A10, &qword_1DF567C00);
      v11 = v0[30];
      v10 = v0[31];
      v12 = v0[28];

      v13 = v0[1];

      v13();
    }

    else
    {
      v0[34] = @"CloudFeaturesServerErrorDomain";
      v0[35] = @"CloudFeaturesLocalErrorDomain";
      v0[36] = 0;
      v0[37] = v2;
      v7 = swift_task_alloc();
      v0[38] = v7;
      *v7 = v0;
      v7[1] = sub_1DF4ADE9C;
      v8 = v0[31];
      v9 = v0[25];

      sub_1DF4B1014((v0 + 2), (v0 + 17), v8);
    }
  }
}

uint64_t sub_1DF4ADE9C()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 304);
  v5 = *v1;
  v3[39] = v0;
  v3[40] = v2[2];
  v3[41] = v2[3];
  *(v3 + 21) = *(v3 + 2);
  v3[44] = v2[6];
  *(v3 + 57) = *(v3 + 56);

  if (v0)
  {
    v6 = sub_1DF4AE008;
  }

  else
  {
    v6 = sub_1DF4BB82C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DF4AE008()
{
  v1 = *(v0 + 312);
  *(v0 + 144) = v1;
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 240);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = *(v0 + 312);
      v63 = *(v0 + 288);
      v8 = *(v0 + 256);
      v9 = *(v0 + 264);
      v10 = *(v0 + 248);
      v12 = *(v0 + 216);
      v11 = *(v0 + 224);
      v13 = *(v0 + 208);
      sub_1DF47E5B4(v10, &qword_1ECE37A10, &qword_1DF567C00);

      (*(v12 + 32))(v11, v6, v13);
      (*(v12 + 16))(v10, v11, v13);
      v8(v10, 0, 1, v13);
      v14 = sub_1DF4B3DAC(8, sub_1DF498474);

      (*(v12 + 8))(v11, v13);
      goto LABEL_16;
    }

    sub_1DF499628(v6, type metadata accessor for InternalError);
  }

  v15 = *(v0 + 312);
  v16 = *(v0 + 272);

  swift_getErrorValue();
  v17 = *(v0 + 64);
  v18 = *(v0 + 72);
  v19 = *(v0 + 80);
  v20 = v15;
  v21 = sub_1DF49A0C0(v18);
  v22 = [v21 domain];

  v23 = sub_1DF564944();
  v25 = v24;

  if (v23 == sub_1DF564944() && v25 == v26)
  {

    goto LABEL_9;
  }

  v27 = sub_1DF5650D4();

  if (v27)
  {
LABEL_9:
    v28 = *(v0 + 288);
    v30 = *(v0 + 256);
    v29 = *(v0 + 264);
    v31 = *(v0 + 248);
    v32 = *(v0 + 208);

    swift_getErrorValue();
    v33 = *(v0 + 112);
    v34 = *(v0 + 128);
    v35 = sub_1DF505580(*(v0 + 120));

    sub_1DF47E5B4(v31, &qword_1ECE37A10, &qword_1DF567C00);
    v30(v31, 1, 1, v32);
    v14 = *(v0 + 312);
    if (!v35)
    {
LABEL_20:
      if (!v14)
      {
        sub_1DF4B3DAC(8, sub_1DF498474);
      }

      swift_willThrow();
      sub_1DF47E5B4(*(v0 + 248), &qword_1ECE37A10, &qword_1DF567C00);
      goto LABEL_23;
    }

LABEL_16:
    v53 = *(v0 + 296) - 1;
    if (*(v0 + 296) != 1)
    {
      *(v0 + 288) = v14;
      *(v0 + 296) = v53;
      v54 = swift_task_alloc();
      *(v0 + 304) = v54;
      *v54 = v0;
      v54[1] = sub_1DF4ADE9C;
      v55 = *(v0 + 248);
      v56 = *(v0 + 200);

      return sub_1DF4B1014(v0 + 16, v0 + 136, v55);
    }

    goto LABEL_20;
  }

  v36 = *(v0 + 312);
  v37 = *(v0 + 280);
  swift_getErrorValue();
  v38 = *(v0 + 88);
  v39 = *(v0 + 104);
  v40 = sub_1DF49A0C0(*(v0 + 96));
  v41 = [v40 domain];

  v42 = sub_1DF564944();
  v44 = v43;

  v46 = sub_1DF564944();
  v47 = v42;
  v48 = *(v0 + 312);
  v49 = *(v0 + 288);
  v50 = *(v0 + 248);
  if (v47 == v46 && v44 == v45)
  {

    sub_1DF47E5B4(v50, &qword_1ECE37A10, &qword_1DF567C00);
LABEL_15:
    v52 = *(v0 + 264);
    (*(v0 + 256))(*(v0 + 248), 1, 1, *(v0 + 208));
    v14 = *(v0 + 312);
    goto LABEL_16;
  }

  v51 = sub_1DF5650D4();

  sub_1DF47E5B4(v50, &qword_1ECE37A10, &qword_1DF567C00);
  if (v51)
  {
    goto LABEL_15;
  }

  v62 = *(v0 + 312);
LABEL_23:
  v59 = *(v0 + 240);
  v58 = *(v0 + 248);
  v60 = *(v0 + 224);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1DF4AE574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  v5 = sub_1DF564494();
  v4[25] = v5;
  v6 = *(v5 - 8);
  v4[26] = v6;
  v7 = *(v6 + 64) + 15;
  v4[27] = swift_task_alloc();
  v8 = type metadata accessor for InternalError();
  v4[28] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4AE6A0, 0, 0);
}

void sub_1DF4AE6A0()
{
  v1 = v0[23];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = v0[30];
    v4 = v0[25];
    v5 = v0[26];
    v6 = *(v5 + 56);
    v0[31] = v6;
    v0[32] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v6(v3, 1, 1, v4);
    if (v2 < 1)
    {
      sub_1DF4B3DAC(8, sub_1DF498474);
      swift_willThrow();
      sub_1DF47E5B4(v0[30], &qword_1ECE37A10, &qword_1DF567C00);
      v11 = v0[29];
      v10 = v0[30];
      v12 = v0[27];

      v13 = v0[1];

      v13();
    }

    else
    {
      v0[33] = @"CloudFeaturesServerErrorDomain";
      v0[34] = @"CloudFeaturesLocalErrorDomain";
      v0[35] = 0;
      v0[36] = v2;
      v7 = swift_task_alloc();
      v0[37] = v7;
      *v7 = v0;
      v7[1] = sub_1DF4AE858;
      v8 = v0[30];
      v9 = v0[24];

      sub_1DF4B17A8((v0 + 2), v0 + 57, v8);
    }
  }
}

uint64_t sub_1DF4AE858()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 296);
  v5 = *v1;
  v3[38] = v0;
  v3[39] = v2[2];
  v3[40] = v2[3];
  *(v3 + 41) = *(v3 + 2);
  v3[43] = v2[6];
  *(v3 + 58) = *(v3 + 56);

  if (v0)
  {
    v6 = sub_1DF4AEAB4;
  }

  else
  {
    v6 = sub_1DF4AE9C8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DF4AE9C8()
{
  v1 = *(v0 + 58);
  v2 = *(v0 + 344);
  v10 = *(v0 + 312);
  v11 = *(v0 + 328);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);

  sub_1DF47E5B4(v4, &qword_1ECE37A10, &qword_1DF567C00);
  *v6 = *(v0 + 57);

  *v7 = v10;
  *(v7 + 16) = v11;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1DF4AEAB4()
{
  v1 = *(v0 + 304);
  *(v0 + 136) = v1;
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 232);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = *(v0 + 304);
      v63 = *(v0 + 280);
      v8 = *(v0 + 248);
      v9 = *(v0 + 256);
      v10 = *(v0 + 240);
      v12 = *(v0 + 208);
      v11 = *(v0 + 216);
      v13 = *(v0 + 200);
      sub_1DF47E5B4(v10, &qword_1ECE37A10, &qword_1DF567C00);

      (*(v12 + 32))(v11, v6, v13);
      (*(v12 + 16))(v10, v11, v13);
      v8(v10, 0, 1, v13);
      v14 = sub_1DF4B3DAC(8, sub_1DF498474);

      (*(v12 + 8))(v11, v13);
      goto LABEL_16;
    }

    sub_1DF499628(v6, type metadata accessor for InternalError);
  }

  v15 = *(v0 + 304);
  v16 = *(v0 + 264);

  swift_getErrorValue();
  v17 = *(v0 + 64);
  v18 = *(v0 + 72);
  v19 = *(v0 + 80);
  v20 = v15;
  v21 = sub_1DF49A0C0(v18);
  v22 = [v21 domain];

  v23 = sub_1DF564944();
  v25 = v24;

  if (v23 == sub_1DF564944() && v25 == v26)
  {

    goto LABEL_9;
  }

  v27 = sub_1DF5650D4();

  if (v27)
  {
LABEL_9:
    v28 = *(v0 + 280);
    v30 = *(v0 + 248);
    v29 = *(v0 + 256);
    v31 = *(v0 + 240);
    v32 = *(v0 + 200);

    swift_getErrorValue();
    v33 = *(v0 + 112);
    v34 = *(v0 + 128);
    v35 = sub_1DF505580(*(v0 + 120));

    sub_1DF47E5B4(v31, &qword_1ECE37A10, &qword_1DF567C00);
    v30(v31, 1, 1, v32);
    v14 = *(v0 + 304);
    if (!v35)
    {
LABEL_20:
      if (!v14)
      {
        sub_1DF4B3DAC(8, sub_1DF498474);
      }

      swift_willThrow();
      sub_1DF47E5B4(*(v0 + 240), &qword_1ECE37A10, &qword_1DF567C00);
      goto LABEL_23;
    }

LABEL_16:
    v53 = *(v0 + 288) - 1;
    if (*(v0 + 288) != 1)
    {
      *(v0 + 280) = v14;
      *(v0 + 288) = v53;
      v54 = swift_task_alloc();
      *(v0 + 296) = v54;
      *v54 = v0;
      v54[1] = sub_1DF4AE858;
      v55 = *(v0 + 240);
      v56 = *(v0 + 192);

      return sub_1DF4B17A8(v0 + 16, v0 + 57, v55);
    }

    goto LABEL_20;
  }

  v36 = *(v0 + 304);
  v37 = *(v0 + 272);
  swift_getErrorValue();
  v38 = *(v0 + 88);
  v39 = *(v0 + 104);
  v40 = sub_1DF49A0C0(*(v0 + 96));
  v41 = [v40 domain];

  v42 = sub_1DF564944();
  v44 = v43;

  v46 = sub_1DF564944();
  v47 = v42;
  v48 = *(v0 + 304);
  v49 = *(v0 + 280);
  v50 = *(v0 + 240);
  if (v47 == v46 && v44 == v45)
  {

    sub_1DF47E5B4(v50, &qword_1ECE37A10, &qword_1DF567C00);
LABEL_15:
    v52 = *(v0 + 256);
    (*(v0 + 248))(*(v0 + 240), 1, 1, *(v0 + 200));
    v14 = *(v0 + 304);
    goto LABEL_16;
  }

  v51 = sub_1DF5650D4();

  sub_1DF47E5B4(v50, &qword_1ECE37A10, &qword_1DF567C00);
  if (v51)
  {
    goto LABEL_15;
  }

  v62 = *(v0 + 304);
LABEL_23:
  v59 = *(v0 + 232);
  v58 = *(v0 + 240);
  v60 = *(v0 + 216);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1DF4AF020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[34] = a3;
  v4[35] = v3;
  v4[32] = a1;
  v4[33] = a2;
  v5 = sub_1DF564494();
  v4[36] = v5;
  v6 = *(v5 - 8);
  v4[37] = v6;
  v7 = *(v6 + 64) + 15;
  v4[38] = swift_task_alloc();
  v8 = type metadata accessor for InternalError();
  v4[39] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64) + 15;
  v4[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4AF14C, 0, 0);
}

void sub_1DF4AF14C()
{
  v1 = v0[34];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = v0[41];
    v4 = v0[36];
    v5 = v0[37];
    v6 = *(v5 + 56);
    v0[42] = v6;
    v0[43] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v6(v3, 1, 1, v4);
    if (v2 < 1)
    {
      sub_1DF4B3DAC(8, sub_1DF498474);
      swift_willThrow();
      sub_1DF47E5B4(v0[41], &qword_1ECE37A10, &qword_1DF567C00);
      v11 = v0[40];
      v10 = v0[41];
      v12 = v0[38];

      v13 = v0[1];

      v13();
    }

    else
    {
      v0[44] = @"CloudFeaturesServerErrorDomain";
      v0[45] = @"CloudFeaturesLocalErrorDomain";
      v0[46] = 0;
      v0[47] = v2;
      v7 = swift_task_alloc();
      v0[48] = v7;
      *v7 = v0;
      v7[1] = sub_1DF4AF304;
      v8 = v0[41];
      v9 = v0[35];

      sub_1DF4B2284((v0 + 13), (v0 + 2), v8);
    }
  }
}

uint64_t sub_1DF4AF304()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 384);
  v5 = *v1;
  v3[49] = v0;
  v3[50] = v2[13];
  v3[51] = v2[14];
  *(v3 + 26) = *(v3 + 15);
  v3[54] = v2[17];
  *(v3 + 97) = *(v3 + 144);

  if (v0)
  {
    v6 = sub_1DF4AF560;
  }

  else
  {
    v6 = sub_1DF4AF470;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DF4AF470()
{
  v1 = *(v0 + 97);
  v2 = *(v0 + 432);
  v12 = *(v0 + 400);
  v13 = *(v0 + 416);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 304);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);

  sub_1DF47E5B4(v4, &qword_1ECE37A10, &qword_1DF567C00);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  *v6 = *(v0 + 16);
  *(v6 + 16) = v8;
  *(v6 + 24) = v9;

  *v7 = v12;
  *(v7 + 16) = v13;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DF4AF560()
{
  v1 = *(v0 + 392);
  *(v0 + 224) = v1;
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 320);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = *(v0 + 392);
      v63 = *(v0 + 368);
      v8 = *(v0 + 336);
      v9 = *(v0 + 344);
      v10 = *(v0 + 328);
      v12 = *(v0 + 296);
      v11 = *(v0 + 304);
      v13 = *(v0 + 288);
      sub_1DF47E5B4(v10, &qword_1ECE37A10, &qword_1DF567C00);

      (*(v12 + 32))(v11, v6, v13);
      (*(v12 + 16))(v10, v11, v13);
      v8(v10, 0, 1, v13);
      v14 = sub_1DF4B3DAC(8, sub_1DF498474);

      (*(v12 + 8))(v11, v13);
      goto LABEL_16;
    }

    sub_1DF499628(v6, type metadata accessor for InternalError);
  }

  v15 = *(v0 + 392);
  v16 = *(v0 + 352);

  swift_getErrorValue();
  v17 = *(v0 + 152);
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = v15;
  v21 = sub_1DF49A0C0(v18);
  v22 = [v21 domain];

  v23 = sub_1DF564944();
  v25 = v24;

  if (v23 == sub_1DF564944() && v25 == v26)
  {

    goto LABEL_9;
  }

  v27 = sub_1DF5650D4();

  if (v27)
  {
LABEL_9:
    v28 = *(v0 + 368);
    v30 = *(v0 + 336);
    v29 = *(v0 + 344);
    v31 = *(v0 + 328);
    v32 = *(v0 + 288);

    swift_getErrorValue();
    v33 = *(v0 + 200);
    v34 = *(v0 + 216);
    v35 = sub_1DF505580(*(v0 + 208));

    sub_1DF47E5B4(v31, &qword_1ECE37A10, &qword_1DF567C00);
    v30(v31, 1, 1, v32);
    v14 = *(v0 + 392);
    if (!v35)
    {
LABEL_20:
      if (!v14)
      {
        sub_1DF4B3DAC(8, sub_1DF498474);
      }

      swift_willThrow();
      sub_1DF47E5B4(*(v0 + 328), &qword_1ECE37A10, &qword_1DF567C00);
      goto LABEL_23;
    }

LABEL_16:
    v53 = *(v0 + 376) - 1;
    if (*(v0 + 376) != 1)
    {
      *(v0 + 368) = v14;
      *(v0 + 376) = v53;
      v54 = swift_task_alloc();
      *(v0 + 384) = v54;
      *v54 = v0;
      v54[1] = sub_1DF4AF304;
      v55 = *(v0 + 328);
      v56 = *(v0 + 280);

      return sub_1DF4B2284(v0 + 104, v0 + 16, v55);
    }

    goto LABEL_20;
  }

  v36 = *(v0 + 392);
  v37 = *(v0 + 360);
  swift_getErrorValue();
  v38 = *(v0 + 176);
  v39 = *(v0 + 192);
  v40 = sub_1DF49A0C0(*(v0 + 184));
  v41 = [v40 domain];

  v42 = sub_1DF564944();
  v44 = v43;

  v46 = sub_1DF564944();
  v47 = v42;
  v48 = *(v0 + 392);
  v49 = *(v0 + 368);
  v50 = *(v0 + 328);
  if (v47 == v46 && v44 == v45)
  {

    sub_1DF47E5B4(v50, &qword_1ECE37A10, &qword_1DF567C00);
LABEL_15:
    v52 = *(v0 + 344);
    (*(v0 + 336))(*(v0 + 328), 1, 1, *(v0 + 288));
    v14 = *(v0 + 392);
    goto LABEL_16;
  }

  v51 = sub_1DF5650D4();

  sub_1DF47E5B4(v50, &qword_1ECE37A10, &qword_1DF567C00);
  if (v51)
  {
    goto LABEL_15;
  }

  v62 = *(v0 + 392);
LABEL_23:
  v59 = *(v0 + 320);
  v58 = *(v0 + 328);
  v60 = *(v0 + 304);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1DF4AFACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_1DF564494();
  v4[26] = v5;
  v6 = *(v5 - 8);
  v4[27] = v6;
  v7 = *(v6 + 64) + 15;
  v4[28] = swift_task_alloc();
  v8 = type metadata accessor for InternalError();
  v4[29] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64) + 15;
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4AFBF8, 0, 0);
}

void sub_1DF4AFBF8()
{
  v1 = v0[24];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = v0[31];
    v4 = v0[26];
    v5 = v0[27];
    v6 = *(v5 + 56);
    v0[32] = v6;
    v0[33] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v6(v3, 1, 1, v4);
    if (v2 < 1)
    {
      sub_1DF4B3DAC(8, sub_1DF498474);
      swift_willThrow();
      sub_1DF47E5B4(v0[31], &qword_1ECE37A10, &qword_1DF567C00);
      v11 = v0[30];
      v10 = v0[31];
      v12 = v0[28];

      v13 = v0[1];

      v13();
    }

    else
    {
      v0[34] = @"CloudFeaturesServerErrorDomain";
      v0[35] = @"CloudFeaturesLocalErrorDomain";
      v0[36] = 0;
      v0[37] = v2;
      v7 = swift_task_alloc();
      v0[38] = v7;
      *v7 = v0;
      v7[1] = sub_1DF4AFDB0;
      v8 = v0[31];
      v9 = v0[25];

      sub_1DF4B2AB0((v0 + 2), (v0 + 17), v8);
    }
  }
}

uint64_t sub_1DF4AFDB0()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 304);
  v5 = *v1;
  v3[39] = v0;
  v3[40] = v2[2];
  v3[41] = v2[3];
  *(v3 + 21) = *(v3 + 2);
  v3[44] = v2[6];
  *(v3 + 57) = *(v3 + 56);

  if (v0)
  {
    v6 = sub_1DF4AFFFC;
  }

  else
  {
    v6 = sub_1DF4AFF1C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DF4AFF1C()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 352);
  v10 = *(v0 + 320);
  v11 = *(v0 + 336);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v7 = *(v0 + 176);
  v6 = *(v0 + 184);

  sub_1DF47E5B4(v4, &qword_1ECE37A10, &qword_1DF567C00);
  *v6 = *(v0 + 136);

  *v7 = v10;
  *(v7 + 16) = v11;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1DF4AFFFC()
{
  v1 = *(v0 + 312);
  *(v0 + 144) = v1;
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 240);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = *(v0 + 312);
      v63 = *(v0 + 288);
      v8 = *(v0 + 256);
      v9 = *(v0 + 264);
      v10 = *(v0 + 248);
      v12 = *(v0 + 216);
      v11 = *(v0 + 224);
      v13 = *(v0 + 208);
      sub_1DF47E5B4(v10, &qword_1ECE37A10, &qword_1DF567C00);

      (*(v12 + 32))(v11, v6, v13);
      (*(v12 + 16))(v10, v11, v13);
      v8(v10, 0, 1, v13);
      v14 = sub_1DF4B3DAC(8, sub_1DF498474);

      (*(v12 + 8))(v11, v13);
      goto LABEL_16;
    }

    sub_1DF499628(v6, type metadata accessor for InternalError);
  }

  v15 = *(v0 + 312);
  v16 = *(v0 + 272);

  swift_getErrorValue();
  v17 = *(v0 + 64);
  v18 = *(v0 + 72);
  v19 = *(v0 + 80);
  v20 = v15;
  v21 = sub_1DF49A0C0(v18);
  v22 = [v21 domain];

  v23 = sub_1DF564944();
  v25 = v24;

  if (v23 == sub_1DF564944() && v25 == v26)
  {

    goto LABEL_9;
  }

  v27 = sub_1DF5650D4();

  if (v27)
  {
LABEL_9:
    v28 = *(v0 + 288);
    v30 = *(v0 + 256);
    v29 = *(v0 + 264);
    v31 = *(v0 + 248);
    v32 = *(v0 + 208);

    swift_getErrorValue();
    v33 = *(v0 + 112);
    v34 = *(v0 + 128);
    v35 = sub_1DF505580(*(v0 + 120));

    sub_1DF47E5B4(v31, &qword_1ECE37A10, &qword_1DF567C00);
    v30(v31, 1, 1, v32);
    v14 = *(v0 + 312);
    if (!v35)
    {
LABEL_20:
      if (!v14)
      {
        sub_1DF4B3DAC(8, sub_1DF498474);
      }

      swift_willThrow();
      sub_1DF47E5B4(*(v0 + 248), &qword_1ECE37A10, &qword_1DF567C00);
      goto LABEL_23;
    }

LABEL_16:
    v53 = *(v0 + 296) - 1;
    if (*(v0 + 296) != 1)
    {
      *(v0 + 288) = v14;
      *(v0 + 296) = v53;
      v54 = swift_task_alloc();
      *(v0 + 304) = v54;
      *v54 = v0;
      v54[1] = sub_1DF4AFDB0;
      v55 = *(v0 + 248);
      v56 = *(v0 + 200);

      return sub_1DF4B2AB0(v0 + 16, v0 + 136, v55);
    }

    goto LABEL_20;
  }

  v36 = *(v0 + 312);
  v37 = *(v0 + 280);
  swift_getErrorValue();
  v38 = *(v0 + 88);
  v39 = *(v0 + 104);
  v40 = sub_1DF49A0C0(*(v0 + 96));
  v41 = [v40 domain];

  v42 = sub_1DF564944();
  v44 = v43;

  v46 = sub_1DF564944();
  v47 = v42;
  v48 = *(v0 + 312);
  v49 = *(v0 + 288);
  v50 = *(v0 + 248);
  if (v47 == v46 && v44 == v45)
  {

    sub_1DF47E5B4(v50, &qword_1ECE37A10, &qword_1DF567C00);
LABEL_15:
    v52 = *(v0 + 264);
    (*(v0 + 256))(*(v0 + 248), 1, 1, *(v0 + 208));
    v14 = *(v0 + 312);
    goto LABEL_16;
  }

  v51 = sub_1DF5650D4();

  sub_1DF47E5B4(v50, &qword_1ECE37A10, &qword_1DF567C00);
  if (v51)
  {
    goto LABEL_15;
  }

  v62 = *(v0 + 312);
LABEL_23:
  v59 = *(v0 + 240);
  v58 = *(v0 + 248);
  v60 = *(v0 + 224);

  v61 = *(v0 + 8);

  return v61();
}