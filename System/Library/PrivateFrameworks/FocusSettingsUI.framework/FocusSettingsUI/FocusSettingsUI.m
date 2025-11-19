id sub_24B8D686C()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = sub_24B8D68F0();
    v4 = *(v0 + 56);
    *(v0 + 56) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_24B8D68F0()
{
  v0 = sub_24BAA9FDC();
  v1 = [objc_opt_self() serviceForClientIdentifier_];

  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v2 = sub_24BAA812C();
  __swift_project_value_buffer(v2, qword_27F077038);
  v3 = v1;
  v4 = sub_24BAA810C();
  v5 = sub_24BAAA29C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446466;
    v8 = sub_24BAAA86C();
    v10 = sub_24B8E49D4(v8, v9, &v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = v3;
    v12 = [v11 description];
    v13 = sub_24BAAA01C();
    v15 = v14;

    v16 = sub_24B8E49D4(v13, v15, &v18);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_24B8D3000, v4, v5, "[%{public}s] DNDModeConfigurationService: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C251390](v7, -1, -1);
    MEMORY[0x24C251390](v6, -1, -1);
  }

  return v3;
}

id sub_24B8D6B00()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = sub_24BAA9FDC();
    v4 = [objc_opt_self() serviceForClientIdentifier_];

    v5 = *(v0 + 64);
    *(v0 + 64) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_24B8D6B8C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = sub_24BAA9FDC();
    v4 = [objc_opt_self() serviceForClientIdentifier_];

    v5 = *(v0 + 72);
    *(v0 + 72) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_24B8D6C18()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 104) = 0;
    v1 = result;

    v2 = sub_24B8D6CB8();
    v3 = *(v1 + 96);
    *(v1 + 96) = v2;
    sub_24B8F345C(v3);
    v4 = *(v1 + 80);

    v4(v5);
  }

  return result;
}

id sub_24B8D6CB8()
{
  v1 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = sub_24B8D686C();

  v3 = sub_24BAA9FDC();

  v40[0] = 0;
  v4 = [v2 modeConfigurationForModeIdentifier:v3 error:v40];

  v5 = v40[0];
  if (!v4)
  {
    v6 = v5;
    v7 = sub_24BAA7CCC();

    swift_willThrow();
    v40[0] = v7;
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    sub_24B8F37E8(0, &unk_27F063460);
    if (swift_dynamicCast())
    {

      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v9 = sub_24BAA812C();
      __swift_project_value_buffer(v9, qword_27F077038);

      v10 = v38;
      v11 = sub_24BAA810C();
      v12 = sub_24BAAA2AC();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v39 = v14;
        *v13 = 136446722;
        v15 = sub_24BAAA86C();
        v17 = sub_24B8E49D4(v15, v16, &v39);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2080;
        v19 = *(v1 + 16);
        v18 = *(v1 + 24);

        v20 = sub_24B8E49D4(v19, v18, &v39);

        *(v13 + 14) = v20;
        *(v13 + 22) = 2080;
        v21 = [v10 localizedDescription];
        v22 = sub_24BAAA01C();
        v24 = v23;

        v25 = sub_24B8E49D4(v22, v24, &v39);

        *(v13 + 24) = v25;
        _os_log_impl(&dword_24B8D3000, v11, v12, "[%{public}s] error getting modeConfig for identifier %s: %s", v13, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v14, -1, -1);
        MEMORY[0x24C251390](v13, -1, -1);
      }

      else
      {
      }
    }

    else
    {

      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v26 = sub_24BAA812C();
      __swift_project_value_buffer(v26, qword_27F077038);

      v27 = sub_24BAA810C();
      v28 = sub_24BAAA2AC();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v40[0] = v30;
        *v29 = 136446466;
        v31 = sub_24BAAA86C();
        v33 = sub_24B8E49D4(v31, v32, v40);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        v35 = *(v1 + 16);
        v34 = *(v1 + 24);

        v36 = sub_24B8E49D4(v35, v34, v40);

        *(v29 + 14) = v36;
        _os_log_impl(&dword_24B8D3000, v27, v28, "[%{public}s] error getting modeConfig for identifier %s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v30, -1, -1);
        MEMORY[0x24C251390](v29, -1, -1);
      }
    }

    return 0;
  }

  return v4;
}

id sub_24B8D7188()
{
  v1 = *(v0 + 96);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_24B8D6CB8();
    v3 = *(v0 + 96);
    *(v0 + 96) = v2;
    v4 = v2;
    sub_24B8F345C(v3);
  }

  sub_24B8F383C(v1);
  return v2;
}

void sub_24B8D71E4(uint64_t a1, uint64_t a2)
{

  sub_24B8D7C34(a1, a2, DNDModeConfiguration.configurationWithModeName(_:));
}

uint64_t sub_24B8D725C()
{

  return sub_24B8D732C(&selRef_hasCloudDevices, &selRef_cloudFeatures);
}

uint64_t sub_24B8D72C4()
{

  return sub_24B8D732C(&selRef_hasPairedDevices, &selRef_pairedFeatures);
}

uint64_t sub_24B8D732C(SEL *a1, SEL *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24B8D6B00();
  v26 = 0;
  v5 = [v4 getAccountFeatureSupportWithError_];

  if (v5)
  {
    v6 = v26;
    if ([v5 *a1])
    {
      v7 = [v5 *a2];

      return v7 & 1;
    }
  }

  else
  {
    v9 = v26;
    v10 = sub_24BAA7CCC();

    swift_willThrow();
    v26 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    sub_24B8F37E8(0, &unk_27F063460);
    swift_dynamicCast();
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v11 = sub_24BAA812C();
    __swift_project_value_buffer(v11, qword_27F077038);
    v12 = v25;
    v13 = sub_24BAA810C();
    v14 = sub_24BAAA2AC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27[0] = v16;
      *v15 = 136446466;
      v17 = sub_24BAAA86C();
      v19 = sub_24B8E49D4(v17, v18, v27);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = [v12 localizedDescription];
      v21 = sub_24BAAA01C();
      v23 = v22;

      v24 = sub_24B8E49D4(v21, v23, v27);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_24B8D3000, v13, v14, "[%{public}s] getAccountFeatureSupport error: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v16, -1, -1);
      MEMORY[0x24C251390](v15, -1, -1);
    }

    else
    {
    }
  }

  return 1;
}

unint64_t sub_24B8D763C()
{
  v0 = sub_24B8D7188();
  if (!v0)
  {
    return 0xD000000000000012;
  }

  v1 = v0;
  v2 = [v0 mode];

  v3 = [v2 symbolImageName];
  if (!v3)
  {
    return 0xD000000000000012;
  }

  v4 = sub_24BAAA01C();

  return v4;
}

void sub_24B8D76E4(uint64_t a1, uint64_t a2)
{

  sub_24B8D7C34(a1, a2, DNDModeConfiguration.configurationWithSymbolImageName(_:));
}

id sub_24B8D775C(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_getObjectType();
  v5 = [v3 mode];
  [v5 mutableCopy];

  sub_24BAAA47C();
  swift_unknownObjectRelease();
  sub_24B8F37E8(0, &unk_27F063140);
  if (swift_dynamicCast())
  {
    v6 = sub_24BAA9FDC();
    [v29 *a3];

    [v3 mutableCopy];
    sub_24BAAA47C();
    swift_unknownObjectRelease();
    sub_24B8F37E8(0, &qword_27F063150);
    if (swift_dynamicCast())
    {
      [v29 setMode_];

      return v29;
    }

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v19 = sub_24BAA812C();
    __swift_project_value_buffer(v19, qword_27F077038);
    v20 = v3;
    v10 = sub_24BAA810C();
    v21 = sub_24BAAA2AC();

    if (os_log_type_enabled(v10, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30[0] = v24;
      *v22 = 136446466;
      v25 = sub_24BAAA86C();
      v27 = sub_24B8E49D4(v25, v26, v30);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2112;
      *(v22 + 14) = v20;
      *v23 = v20;
      v28 = v20;
      _os_log_impl(&dword_24B8D3000, v10, v21, "[%{public}s] fail to convert %@ into a DNDMutableModeConfiguration", v22, 0x16u);
      sub_24B8F35E4(v23, &qword_27F064510);
      MEMORY[0x24C251390](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x24C251390](v24, -1, -1);
      MEMORY[0x24C251390](v22, -1, -1);
    }
  }

  else
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v8 = sub_24BAA812C();
    __swift_project_value_buffer(v8, qword_27F077038);
    v9 = v3;
    v10 = sub_24BAA810C();
    v11 = sub_24BAAA2AC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v12 = 136446466;
      v15 = sub_24BAAA86C();
      v17 = sub_24B8E49D4(v15, v16, v30);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      v18 = [v9 mode];
      *(v12 + 14) = v18;
      *v13 = v18;
      _os_log_impl(&dword_24B8D3000, v10, v11, "[%{public}s] fail to convert %@ into a DNDMutableMode", v12, 0x16u);
      sub_24B8F35E4(v13, &qword_27F064510);
      MEMORY[0x24C251390](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C251390](v14, -1, -1);
      MEMORY[0x24C251390](v12, -1, -1);
    }
  }

  return 0;
}

void sub_24B8D7BC8(uint64_t a1, uint64_t a2)
{

  sub_24B8D7C34(a1, a2, DNDModeConfiguration.configurationWithTintColorName(_:));
}

void sub_24B8D7C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  v34[1] = *MEMORY[0x277D85DE8];
  v8 = sub_24B8D7188();
  if (v8 && (v9 = v8, v10 = a3(a1, a2), v9, v10))
  {
    v11 = sub_24B8D686C();
    v33 = 0;
    v12 = [v11 setModeConfiguration:v10 error:&v33];

    if (v12)
    {
      v13 = v33;

      v14 = *(v5 + 96);
      *(v5 + 96) = v10;
      sub_24B8F345C(v14);
    }

    else
    {
      v15 = v33;
      v16 = sub_24BAA7CCC();

      swift_willThrow();
      v33 = v16;
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
      sub_24B8F37E8(0, &unk_27F063460);
      swift_dynamicCast();

      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v18 = sub_24BAA812C();
      __swift_project_value_buffer(v18, qword_27F077038);
      v19 = v32;
      v20 = sub_24BAA810C();
      v21 = sub_24BAAA2AC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v34[0] = v23;
        *v22 = 136446466;
        v24 = sub_24BAAA86C();
        v26 = sub_24B8E49D4(v24, v25, v34);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2080;
        v27 = [v19 localizedDescription];
        v28 = sub_24BAAA01C();
        v30 = v29;

        v31 = sub_24B8E49D4(v28, v30, v34);

        *(v22 + 14) = v31;
        _os_log_impl(&dword_24B8D3000, v20, v21, "[%{public}s] error setting mode configuration: %s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v23, -1, -1);
        MEMORY[0x24C251390](v22, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
  }
}

uint64_t sub_24B8D7FD0()
{

  return sub_24B8D8420("[%{public}s] otherModeNames error: %s", sub_24B8D8044);
}

void sub_24B8D8044(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_24BAAA52C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_24B914D68(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_24BAAA4CC();
    }

    else
    {
      v3 = sub_24BAAA49C();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_24B9A0050(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 name];
        v14 = sub_24BAAA01C();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_24B914D68((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_24BAAA4EC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0634E0);
          v6 = sub_24BAAA23C();
          sub_24BAAA59C();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_24B8F3830(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_24B8F3830(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_24B8F3830(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_24B8D83AC()
{

  return sub_24B8D8420("[%{public}s] otherModeSymbolImageNames error: %s", sub_24B8D8770);
}

uint64_t sub_24B8D8420(const char *a1, uint64_t (*a2)(void))
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24B8D686C();
  v32 = 0;
  v5 = [v4 availableModesReturningError_];

  v6 = v32;
  sub_24B8F37E8(0, &unk_27F0634D0);
  sub_24B8F1128(&qword_27F068F60, &unk_27F0634D0);
  v7 = sub_24BAAA20C();
  v8 = v6;

  v32 = v7;
  if (v8)
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v9 = sub_24BAA812C();
    __swift_project_value_buffer(v9, qword_27F077038);
    v10 = v8;
    v11 = sub_24BAA810C();
    v12 = sub_24BAAA2AC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v30 = a1;
      v14 = swift_slowAlloc();
      v33[0] = v14;
      *v13 = 136446466;
      v15 = sub_24BAAA86C();
      v31 = a2;
      v17 = sub_24B8E49D4(v15, v16, v33);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = [v10 localizedDescription];
      v19 = sub_24BAAA01C();
      v21 = v20;

      v22 = sub_24B8E49D4(v19, v21, v33);

      *(v13 + 14) = v22;
      a2 = v31;
      _os_log_impl(&dword_24B8D3000, v11, v12, v30, v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v14, -1, -1);
      MEMORY[0x24C251390](v13, -1, -1);
    }

    else
    {
    }
  }

  v23 = sub_24B8D7188();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 mode];

    if (v25)
    {
      v26 = sub_24B9AC2F4(v25);
    }
  }

  v27 = a2(v32);

  v28 = sub_24B8F0F04(v27);

  return v28;
}

void sub_24B8D8770(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24BAAA4DC();
    sub_24B8F37E8(0, &unk_27F0634D0);
    sub_24B8F1128(&qword_27F068F60, &unk_27F0634D0);
    sub_24BAAA24C();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_24BAAA56C() || (sub_24B8F37E8(0, &unk_27F0634D0), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_24B8F0C5C();
      return;
    }

LABEL_17:
    v12 = [v11 symbolImageName];
    if (v12)
    {
      v13 = v12;
      v19 = sub_24BAAA01C();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_24B99A290(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_24B99A290((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_24B8D8A20()
{
  v46[1] = *MEMORY[0x277D85DE8];
  v45 = MEMORY[0x277D84FA0];
  v0 = sub_24B8D686C();
  v44 = 0;
  v1 = [v0 modeConfigurationsReturningError_];

  v2 = v44;
  if (v1)
  {
    sub_24B8F37E8(0, &unk_27F0634C0);
    v3 = sub_24BAA9EEC();
    v4 = v2;

    v5 = 0;
    v6 = v3 + 64;
    v39 = v3 + 64;
    v40 = v3;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 64);
    v10 = (v7 + 63) >> 6;
    v38 = v10;
LABEL_7:
    if (!v9)
    {
      while (1)
      {
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v11 >= v10)
        {

          return v45;
        }

        v9 = *(v6 + 8 * v11);
        ++v5;
        if (v9)
        {
          v5 = v11;
          goto LABEL_12;
        }
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_12:
    v41 = *(*(v40 + 56) + ((v5 << 9) | (8 * __clz(__rbit64(v9)))));
    v12 = [v41 triggers];
    sub_24B8F37E8(0, &qword_27F063490);
    v13 = sub_24BAAA12C();

    v44 = MEMORY[0x277D84F90];
    if (v13 >> 62)
    {
      v14 = sub_24BAAA52C();
      if (v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_14:
        v15 = 0;
        v42 = MEMORY[0x277D84F90];
        while (1)
        {
          v16 = v15;
          while (1)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x24C2506E0](v16, v13);
            }

            else
            {
              if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_39;
              }

              v17 = *(v13 + 8 * v16 + 32);
            }

            v18 = v17;
            v15 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

            objc_opt_self();
            v19 = swift_dynamicCastObjCClass();
            if (v19)
            {
              break;
            }

LABEL_17:
            ++v16;
            if (v15 == v14)
            {
              goto LABEL_6;
            }
          }

          v20 = [v19 applicationIdentifier];

          if (!v20)
          {
            goto LABEL_17;
          }

          MEMORY[0x24C2501C0]();
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24BAAA14C();
          }

          sub_24BAAA16C();
          v42 = v44;
          if (v15 == v14)
          {
LABEL_6:
            v9 &= v9 - 1;

            sub_24B8F1D18(v42);

            v10 = v38;
            v6 = v39;
            goto LABEL_7;
          }
        }
      }
    }

    v42 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v22 = v44;
  v23 = sub_24BAA7CCC();

  swift_willThrow();
  v44 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
  sub_24B8F37E8(0, &unk_27F063460);
  swift_dynamicCast();
  v5 = v43;
  if (qword_27F0630F0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v24 = sub_24BAA812C();
  __swift_project_value_buffer(v24, qword_27F077038);
  v25 = v5;
  v26 = sub_24BAA810C();
  v27 = sub_24BAAA2AC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46[0] = v29;
    *v28 = 136446466;
    v30 = sub_24BAAA86C();
    v32 = sub_24B8E49D4(v30, v31, v46);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v33 = [v25 localizedDescription];
    v34 = sub_24BAAA01C();
    v36 = v35;

    v37 = sub_24B8E49D4(v34, v36, v46);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_24B8D3000, v26, v27, "[%{public}s] otherModeAppIdentifiersWithTriggers error: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C251390](v29, -1, -1);
    MEMORY[0x24C251390](v28, -1, -1);
  }

  else
  {
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24B8D8FB0()
{
  result = sub_24B8D7188();
  if (result)
  {
    v2 = result;
    v3 = [result mode];

    if (!v3)
    {
      return 0;
    }

    if (![v3 semanticType] || objc_msgSend(v3, sel_semanticType) == 9)
    {

      return 0;
    }

    v4 = *(v0 + 96);
    if (v4)
    {
      v5 = [v4 resolvedCompatibilityVersion];
      v6 = *MEMORY[0x277D05818];

      return v6 >= v5;
    }

    else
    {

      return 1;
    }
  }

  return result;
}

void sub_24B8D9070(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_24B8D6B8C();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v5;
  v9[4] = sub_24B8F37DC;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24B8D9560;
  v9[3] = &block_descriptor_132;
  v8 = _Block_copy(v9);

  [v6 queryCurrentStateWithCompletionHandler_];
  _Block_release(v8);
}

uint64_t sub_24B8D9190(id a1, id a2, void (*a3)(void, void, void))
{
  v5 = 0x27F063000uLL;
  if (a2)
  {
    v7 = a2;
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v8 = sub_24BAA812C();
    __swift_project_value_buffer(v8, qword_27F077038);
    v9 = a2;
    v10 = sub_24BAA810C();
    v11 = sub_24BAAA2AC();

    if (os_log_type_enabled(v10, v11))
    {
      v36 = a3;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38 = v13;
      *v12 = 136446466;
      v14 = sub_24BAAA86C();
      v16 = sub_24B8E49D4(v14, v15, &v38);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_24BAAA7DC();
      v19 = sub_24B8E49D4(v17, v18, &v38);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_24B8D3000, v10, v11, "[%{public}s] getMeDeviceName error: %s", v12, 0x16u);
      swift_arrayDestroy();
      v5 = 0x27F063000;
      MEMORY[0x24C251390](v13, -1, -1);
      v20 = v12;
      a3 = v36;
      MEMORY[0x24C251390](v20, -1, -1);
    }

    else
    {
    }
  }

  v21 = [a1 meDeviceName];
  v22 = sub_24BAAA01C();
  v24 = v23;

  v25 = [a1 meDeviceStatus];
  if (*(v5 + 240) != -1)
  {
    swift_once();
  }

  v26 = sub_24BAA812C();
  __swift_project_value_buffer(v26, qword_27F077038);

  v27 = sub_24BAA810C();
  v28 = sub_24BAAA2CC();

  if (os_log_type_enabled(v27, v28))
  {
    v37 = a3;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136446722;
    v31 = sub_24BAAA86C();
    v33 = sub_24B8E49D4(v31, v32, &v38);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_24B8E49D4(v22, v24, &v38);
    *(v29 + 22) = 1024;
    *(v29 + 24) = v25 == 2;
    _os_log_impl(&dword_24B8D3000, v27, v28, "[%{public}s] meDeviceName: %s isThisDevice: %{BOOL}d", v29, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C251390](v30, -1, -1);
    v34 = v29;
    a3 = v37;
    MEMORY[0x24C251390](v34, -1, -1);
  }

  a3(v22, v24, v25 == 2);
}

void sub_24B8D9560(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

BOOL DNDModeConfiguration.allowsTimeSensitive.getter()
{
  v1 = [v0 configuration];
  v2 = [v1 minimumBreakthroughUrgency];

  return v2 == 1;
}

void sub_24B8D9640(char a1)
{
  v2 = v1;
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24B8D7188();
  if (v4)
  {
    v5 = v4;
    v6 = DNDModeConfiguration.configurationWithTimeSensitive(_:)(a1 & 1);

    if (v6)
    {
      v7 = *(v2 + 96);
      *(v2 + 96) = v6;
      v8 = v6;
      sub_24B8F345C(v7);
      v9 = sub_24B8D686C();
      v29 = 0;
      v10 = [v9 setModeConfiguration:v8 error:&v29];

      if (v10)
      {
        v11 = v29;
      }

      else
      {
        v12 = v29;
        v13 = sub_24BAA7CCC();

        swift_willThrow();
        v29 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
        sub_24B8F37E8(0, &unk_27F063460);
        swift_dynamicCast();
        if (qword_27F0630F0 != -1)
        {
          swift_once();
        }

        v14 = sub_24BAA812C();
        __swift_project_value_buffer(v14, qword_27F077038);
        v15 = v28;
        v16 = sub_24BAA810C();
        v17 = sub_24BAAA2AC();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v30[0] = v19;
          *v18 = 136446466;
          v20 = sub_24BAAA86C();
          v22 = sub_24B8E49D4(v20, v21, v30);

          *(v18 + 4) = v22;
          *(v18 + 12) = 2080;
          v23 = [v15 localizedDescription];
          v24 = sub_24BAAA01C();
          v26 = v25;

          v27 = sub_24B8E49D4(v24, v26, v30);

          *(v18 + 14) = v27;
          _os_log_impl(&dword_24B8D3000, v16, v17, "[%{public}s] error setting mode configuration: %s", v18, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C251390](v19, -1, -1);
          MEMORY[0x24C251390](v18, -1, -1);
        }

        else
        {
        }
      }
    }
  }
}

id DNDModeConfiguration.configurationWithTimeSensitive(_:)(char a1)
{
  swift_getObjectType();
  v3 = [v1 configuration];
  [v3 mutableCopy];
  sub_24BAAA47C();
  swift_unknownObjectRelease();
  sub_24B8F37E8(0, &qword_27F063158);
  if (swift_dynamicCast())
  {
    [v27 setMinimumBreakthroughUrgency_];
    [v1 mutableCopy];
    sub_24BAAA47C();
    swift_unknownObjectRelease();
    sub_24B8F37E8(0, &qword_27F063150);
    if (swift_dynamicCast())
    {
      [v27 setConfiguration_];

      return v27;
    }

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v16 = sub_24BAA812C();
    __swift_project_value_buffer(v16, qword_27F077038);
    v17 = v1;
    v18 = sub_24BAA810C();
    v19 = sub_24BAAA2AC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28[0] = v22;
      *v20 = 136446466;
      v23 = sub_24BAAA86C();
      v25 = sub_24B8E49D4(v23, v24, v28);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v17;
      *v21 = v17;
      v26 = v17;
      _os_log_impl(&dword_24B8D3000, v18, v19, "[%{public}s] fail to convert %@ into a DNDMutableModeConfiguration", v20, 0x16u);
      sub_24B8F35E4(v21, &qword_27F064510);
      MEMORY[0x24C251390](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C251390](v22, -1, -1);
      MEMORY[0x24C251390](v20, -1, -1);
    }
  }

  else
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v5 = sub_24BAA812C();
    __swift_project_value_buffer(v5, qword_27F077038);
    v6 = v3;
    v7 = sub_24BAA810C();
    v8 = sub_24BAAA2AC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28[0] = v11;
      *v9 = 136446466;
      v12 = sub_24BAAA86C();
      v14 = sub_24B8E49D4(v12, v13, v28);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = v6;
      v15 = v6;
      _os_log_impl(&dword_24B8D3000, v7, v8, "[%{public}s] fail to convert %@ into a DNDMutableConfiguration", v9, 0x16u);
      sub_24B8F35E4(v10, &qword_27F064510);
      MEMORY[0x24C251390](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C251390](v11, -1, -1);
      MEMORY[0x24C251390](v9, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

id sub_24B8D9DB8(void *a1, char a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [a1 setAllowIntelligentManagement_];
}

void sub_24B8D9DD0(char a1)
{
  v66[4] = *MEMORY[0x277D85DE8];
  v3 = sub_24B8D7188();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  [v3 mutableCopy];
  sub_24BAAA47C();
  swift_unknownObjectRelease();
  sub_24B8F37E8(0, &qword_27F063150);
  if (!swift_dynamicCast())
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v13 = sub_24BAA812C();
    __swift_project_value_buffer(v13, qword_27F077038);
    v14 = v4;
    v15 = sub_24BAA810C();
    v16 = sub_24BAAA2AC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v66[0] = v19;
      *v17 = 136446466;
      v20 = sub_24BAAA86C();
      v22 = sub_24B8E49D4(v20, v21, v66);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v14;
      *v18 = v4;
      v23 = v14;
      _os_log_impl(&dword_24B8D3000, v15, v16, "[%{public}s] fail to convert %@ into a DNDMutableModeConfiguration", v17, 0x16u);
      sub_24B8F35E4(v18, &qword_27F064510);
      MEMORY[0x24C251390](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C251390](v19, -1, -1);
      MEMORY[0x24C251390](v17, -1, -1);
    }

    else
    {
    }

    goto LABEL_30;
  }

  v5 = [v64 configuration];
  [v5 mutableCopy];

  sub_24BAAA47C();
  swift_unknownObjectRelease();
  sub_24B8F37E8(0, &qword_27F063158);
  if (!swift_dynamicCast())
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v24 = sub_24BAA812C();
    __swift_project_value_buffer(v24, qword_27F077038);
    v25 = v64;
    v15 = sub_24BAA810C();
    v26 = sub_24BAAA2AC();

    if (os_log_type_enabled(v15, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v66[0] = v29;
      *v27 = 136446466;
      v30 = sub_24BAAA86C();
      v32 = sub_24B8E49D4(v30, v31, v66);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2112;
      *(v27 + 14) = v25;
      *v28 = v25;
      v33 = v25;
      _os_log_impl(&dword_24B8D3000, v15, v26, "[%{public}s] fail to retrieve DNDMutableConfiguration from %@", v27, 0x16u);
      sub_24B8F35E4(v28, &qword_27F064510);
      MEMORY[0x24C251390](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C251390](v29, -1, -1);
      MEMORY[0x24C251390](v27, -1, -1);
    }

    else
    {
    }

    goto LABEL_30;
  }

  v6 = [v64 phoneCallBypassSettings];
  [v6 mutableCopy];

  sub_24BAAA47C();
  swift_unknownObjectRelease();
  sub_24B8F37E8(0, &qword_27F0634B8);
  if (!swift_dynamicCast())
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v34 = sub_24BAA812C();
    __swift_project_value_buffer(v34, qword_27F077038);
    v35 = v64;
    v15 = sub_24BAA810C();
    v36 = sub_24BAAA2AC();

    if (os_log_type_enabled(v15, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v66[0] = v39;
      *v37 = 136446466;
      v40 = sub_24BAAA86C();
      v42 = sub_24B8E49D4(v40, v41, v66);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2112;
      *(v37 + 14) = v35;
      *v38 = v35;
      v43 = v35;
      _os_log_impl(&dword_24B8D3000, v15, v36, "[%{public}s] fail to retrieve DNDMutableBypassSettings from %@", v37, 0x16u);
      sub_24B8F35E4(v38, &qword_27F064510);
      MEMORY[0x24C251390](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x24C251390](v39, -1, -1);
      MEMORY[0x24C251390](v37, -1, -1);
    }

    else
    {
    }

LABEL_30:
    return;
  }

  if (a1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v64 setRepeatEventSourceBehaviorEnabledSetting_];
  [v64 setPhoneCallBypassSettings_];
  [v64 setConfiguration_];
  v8 = *(v1 + 96);
  *(v1 + 96) = v64;
  v9 = v64;
  sub_24B8F345C(v8);
  v10 = sub_24B8D686C();
  v66[0] = 0;
  v11 = [v10 setModeConfiguration:v9 error:v66];

  if (v11)
  {
    v12 = v66[0];
  }

  else
  {
    v44 = v66[0];
    v45 = sub_24BAA7CCC();

    swift_willThrow();
    v66[0] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    sub_24B8F37E8(0, &unk_27F063460);
    swift_dynamicCast();
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v46 = sub_24BAA812C();
    __swift_project_value_buffer(v46, qword_27F077038);
    v47 = v64;
    v48 = sub_24BAA810C();
    v49 = sub_24BAAA2AC();

    if (os_log_type_enabled(v48, v49))
    {
      v63 = v9;
      v50 = v47;
      v61 = v47;
      v51 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v65 = v62;
      *v51 = 136446466;
      v52 = sub_24BAAA86C();
      v54 = sub_24B8E49D4(v52, v53, &v65);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      v55 = [v50 localizedDescription];
      v56 = sub_24BAAA01C();
      v57 = v48;
      v59 = v58;

      v60 = sub_24B8E49D4(v56, v59, &v65);

      *(v51 + 14) = v60;
      _os_log_impl(&dword_24B8D3000, v57, v49, "[%{public}s] error setting mode configuration: %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v62, -1, -1);
      MEMORY[0x24C251390](v51, -1, -1);
    }

    else
    {
    }
  }
}

void sub_24B8DA728(uint64_t a1, uint64_t a2, void *a3)
{
  v66[4] = *MEMORY[0x277D85DE8];
  v6 = sub_24B8D7188();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  [v6 mutableCopy];
  sub_24BAAA47C();
  swift_unknownObjectRelease();
  sub_24B8F37E8(0, &qword_27F063150);
  if (!swift_dynamicCast())
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v15 = sub_24BAA812C();
    __swift_project_value_buffer(v15, qword_27F077038);
    v16 = v7;
    v17 = sub_24BAA810C();
    v18 = sub_24BAAA2AC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v66[0] = v21;
      *v19 = 136446466;
      v22 = sub_24BAAA86C();
      v24 = sub_24B8E49D4(v22, v23, v66);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v16;
      *v20 = v7;
      v25 = v16;
      _os_log_impl(&dword_24B8D3000, v17, v18, "[%{public}s] fail to convert %@ into a DNDMutableModeConfiguration", v19, 0x16u);
      sub_24B8F35E4(v20, &qword_27F064510);
      MEMORY[0x24C251390](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C251390](v21, -1, -1);
      MEMORY[0x24C251390](v19, -1, -1);
    }

    else
    {
    }

    goto LABEL_29;
  }

  v8 = [v64 configuration];
  [v8 mutableCopy];

  sub_24BAAA47C();
  swift_unknownObjectRelease();
  sub_24B8F37E8(0, &qword_27F063158);
  if (!swift_dynamicCast())
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v26 = sub_24BAA812C();
    __swift_project_value_buffer(v26, qword_27F077038);
    v27 = v64;
    v17 = sub_24BAA810C();
    v28 = sub_24BAAA2AC();

    if (os_log_type_enabled(v17, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v66[0] = v31;
      *v29 = 136446466;
      v32 = sub_24BAAA86C();
      v34 = sub_24B8E49D4(v32, v33, v66);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2112;
      *(v29 + 14) = v27;
      *v30 = v27;
      v35 = v27;
      _os_log_impl(&dword_24B8D3000, v17, v28, "[%{public}s] fail to retrieve DNDMutableConfiguration from %@", v29, 0x16u);
      sub_24B8F35E4(v30, &qword_27F064510);
      MEMORY[0x24C251390](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x24C251390](v31, -1, -1);
      MEMORY[0x24C251390](v29, -1, -1);
    }

    else
    {
    }

    goto LABEL_29;
  }

  v9 = [v64 phoneCallBypassSettings];
  [v9 mutableCopy];

  sub_24BAAA47C();
  swift_unknownObjectRelease();
  sub_24B8F37E8(0, &qword_27F0634B8);
  if (!swift_dynamicCast())
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v36 = sub_24BAA812C();
    __swift_project_value_buffer(v36, qword_27F077038);
    v37 = v64;
    v17 = sub_24BAA810C();
    v38 = sub_24BAAA2AC();

    if (os_log_type_enabled(v17, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v66[0] = v41;
      *v39 = 136446466;
      v42 = sub_24BAAA86C();
      v44 = sub_24B8E49D4(v42, v43, v66);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2112;
      *(v39 + 14) = v37;
      *v40 = v37;
      v45 = v37;
      _os_log_impl(&dword_24B8D3000, v17, v38, "[%{public}s] fail to retrieve DNDMutableBypassSettings from %@", v39, 0x16u);
      sub_24B8F35E4(v40, &qword_27F064510);
      MEMORY[0x24C251390](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C251390](v41, -1, -1);
      MEMORY[0x24C251390](v39, -1, -1);
    }

    else
    {
    }

LABEL_29:
    return;
  }

  [v64 setImmediateBypassEventSourceType_];
  if (a3)
  {
    a3 = sub_24BAA9FDC();
  }

  [v64 setImmediateBypassCNGroupIdentifier_];

  [v64 setPhoneCallBypassSettings_];
  [v64 setConfiguration_];
  v10 = *(v3 + 96);
  *(v3 + 96) = v64;
  v11 = v64;
  sub_24B8F345C(v10);
  v12 = sub_24B8D686C();
  v66[0] = 0;
  v13 = [v12 setModeConfiguration:v11 error:v66];

  if (v13)
  {
    v14 = v66[0];
  }

  else
  {
    v46 = v66[0];
    v47 = sub_24BAA7CCC();

    swift_willThrow();
    v66[0] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    sub_24B8F37E8(0, &unk_27F063460);
    swift_dynamicCast();
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v48 = sub_24BAA812C();
    __swift_project_value_buffer(v48, qword_27F077038);
    v49 = v64;
    v50 = sub_24BAA810C();
    v51 = sub_24BAAA2AC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v65 = v62;
      *v52 = 136446466;
      v53 = sub_24BAAA86C();
      log = v50;
      v55 = sub_24B8E49D4(v53, v54, &v65);

      *(v52 + 4) = v55;
      *(v52 + 12) = 2080;
      v63 = v49;
      v56 = [v49 localizedDescription];
      v57 = sub_24BAAA01C();
      v59 = v58;

      v60 = sub_24B8E49D4(v57, v59, &v65);

      *(v52 + 14) = v60;
      _os_log_impl(&dword_24B8D3000, log, v51, "[%{public}s] error setting mode configuration: %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v62, -1, -1);
      MEMORY[0x24C251390](v52, -1, -1);
    }

    else
    {
    }
  }
}

void sub_24B8DB0E4(void *a1)
{
  v2 = v1;
  v40[1] = *MEMORY[0x277D85DE8];
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v4 = sub_24BAA812C();
  __swift_project_value_buffer(v4, qword_27F077038);
  v5 = sub_24BAA810C();
  v6 = sub_24BAAA2CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v40[0] = v8;
    *v7 = 136446466;
    v9 = sub_24BAAA86C();
    v11 = sub_24B8E49D4(v9, v10, v40);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a1;
    _os_log_impl(&dword_24B8D3000, v5, v6, "[%{public}s] set appExceptionType %lu", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C251390](v8, -1, -1);
    MEMORY[0x24C251390](v7, -1, -1);
  }

  v12 = sub_24B8D7188();
  if (v12)
  {
    v13 = v12;
    if (*(v2 + 104))
    {
      v14 = *(v2 + 104);
    }

    else
    {
      v15 = *(v2 + 96);
      if (v15)
      {
        v16 = v15;
        v14 = DNDModeConfiguration.appsWithExceptions.getter();
        sub_24B8F345C(v15);
        *(v2 + 104) = v14;
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
      }
    }

    v17 = DNDModeConfiguration.configuration(type:appsWithExceptions:)(a1, v14);

    if (v17)
    {
      v18 = sub_24B8D686C();
      v40[0] = 0;
      v19 = [v18 setModeConfiguration:v17 error:v40];

      v20 = v40[0];
      if (v19)
      {
        v21 = *(v2 + 96);
        *(v2 + 96) = v17;
        v22 = v20;
        sub_24B8F345C(v21);
        *(v2 + 104) = 0;
      }

      else
      {
        v23 = v40[0];
        v24 = sub_24BAA7CCC();

        swift_willThrow();
        v40[0] = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
        sub_24B8F37E8(0, &unk_27F063460);
        swift_dynamicCast();
        v25 = v38;
        v26 = sub_24BAA810C();
        v27 = sub_24BAAA2AC();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v39 = v29;
          *v28 = 136446466;
          v30 = sub_24BAAA86C();
          v32 = sub_24B8E49D4(v30, v31, &v39);

          *(v28 + 4) = v32;
          *(v28 + 12) = 2080;
          v33 = [v25 localizedDescription];
          v34 = sub_24BAAA01C();
          v36 = v35;

          v37 = sub_24B8E49D4(v34, v36, &v39);

          *(v28 + 14) = v37;
          _os_log_impl(&dword_24B8D3000, v26, v27, "[%{public}s] error setting mode configuration: %s", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C251390](v29, -1, -1);
          MEMORY[0x24C251390](v28, -1, -1);
        }

        else
        {
        }
      }
    }
  }
}

id DNDModeConfiguration.configuration(type:appsWithExceptions:)(id a1, unint64_t a2)
{
  swift_getObjectType();
  v133 = v2;
  v5 = [v2 configuration];
  if (qword_27F0630F0 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v6 = sub_24BAA812C();
    __swift_project_value_buffer(v6, qword_27F077038);
    v7 = v5;
    v8 = sub_24BAA810C();
    v9 = sub_24BAAA2CC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v164[0] = v12;
      *v10 = 136446466;
      v13 = sub_24BAAA86C();
      v3 = sub_24B8E49D4(v13, v14, v164);

      *(v10 + 4) = v3;
      *(v10 + 12) = 2112;
      *(v10 + 14) = v7;
      *v11 = v7;
      v15 = v7;
      _os_log_impl(&dword_24B8D3000, v8, v9, "[%{public}s] config %@", v10, 0x16u);
      sub_24B8F35E4(v11, &qword_27F064510);
      MEMORY[0x24C251390](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C251390](v12, -1, -1);
      MEMORY[0x24C251390](v10, -1, -1);
    }

    v137 = MEMORY[0x277D84F90];
    v138 = MEMORY[0x277D84F90];
    if (a2 >> 62)
    {
      v16 = sub_24BAAA52C();
    }

    else
    {
      v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      if (v16 >= 1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v17 = 0;
          while (1)
          {
            MEMORY[0x24C2506E0](v17, a2);
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v19 = swift_unknownObjectRetain_n();
              MEMORY[0x24C2501C0](v19);
              if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_24BAAA14C();
              }

              goto LABEL_15;
            }

            swift_unknownObjectRelease();
LABEL_11:
            if (v16 == ++v17)
            {
              goto LABEL_20;
            }
          }

          v18 = swift_unknownObjectRetain_n();
          MEMORY[0x24C2501C0](v18);
          if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v137 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24BAAA14C();
          }

LABEL_15:
          sub_24BAAA16C();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_11;
        }

        v38 = a2 + 32;
        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            swift_unknownObjectRetain_n();

            MEMORY[0x24C2501C0](v39);
            if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v137 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24BAAA14C();
            }
          }

          else
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              goto LABEL_31;
            }

            swift_unknownObjectRetain_n();

            MEMORY[0x24C2501C0](v40);
            if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24BAAA14C();
            }
          }

          sub_24BAAA16C();
          swift_unknownObjectRelease();

LABEL_31:
          v38 += 8;
          if (!--v16)
          {
            goto LABEL_20;
          }
        }
      }

      __break(1u);
      goto LABEL_157;
    }

LABEL_20:
    [v7 mutableCopy];
    sub_24BAAA47C();
    swift_unknownObjectRelease();
    sub_24B8F37E8(0, &qword_27F063158);
    if (!swift_dynamicCast())
    {

      v29 = v7;
      v30 = sub_24BAA810C();
      v31 = sub_24BAAA2AC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v164[0] = v34;
        *v32 = 136446466;
        v35 = sub_24BAAA86C();
        v37 = sub_24B8E49D4(v35, v36, v164);

        *(v32 + 4) = v37;
        *(v32 + 12) = 2112;
        *(v32 + 14) = v29;
        *v33 = v29;
        v29 = v29;
        _os_log_impl(&dword_24B8D3000, v30, v31, "[%{public}s] fail to make a mutable copy of %@", v32, 0x16u);
        sub_24B8F35E4(v33, &qword_27F064510);
        MEMORY[0x24C251390](v33, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x24C251390](v34, -1, -1);
        MEMORY[0x24C251390](v32, -1, -1);
      }

      goto LABEL_147;
    }

    v129 = v7;
    v3 = v159;
    v20 = [v133 configuration];
    v21 = [v20 applicationsWithExceptions];

    sub_24B8F37E8(0, &qword_27F063160);
    sub_24B8F1128(&qword_27F063168, &qword_27F063160);
    v22 = sub_24BAAA20C();

    if ([v159 applicationConfigurationType] != a1)
    {

      [v159 setApplicationConfigurationType_];
      v23 = [v133 configuration];
      v24 = [v23 applicationsWithExceptions];

      v25 = sub_24BAAA20C();
      if ((v25 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_24BAAA4DC();
        sub_24BAAA24C();
        v27 = v139;
        v26 = v140;
        v5 = v141;
        v28 = v142;
        a2 = v143;
      }

      else
      {
        v41 = -1 << *(v25 + 32);
        v26 = v25 + 56;
        v5 = ~v41;
        v42 = -v41;
        if (v42 < 64)
        {
          v43 = ~(-1 << v42);
        }

        else
        {
          v43 = -1;
        }

        a2 = v43 & *(v25 + 56);

        v28 = 0;
        v27 = v25;
      }

      v44 = (v5 + 64) >> 6;
      if (v27 < 0)
      {
        goto LABEL_48;
      }

      while (1)
      {
        v45 = v28;
        v46 = a2;
        for (i = v28; !v46; ++v45)
        {
          i = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_152;
          }

          if (i >= v44)
          {
            goto LABEL_52;
          }

          v46 = *(v26 + 8 * i);
        }

        v48 = (v46 - 1) & v46;
        v5 = *(*(v27 + 48) + ((i << 9) | (8 * __clz(__rbit64(v46)))));
        if (!v5)
        {
          break;
        }

        while (1)
        {
          [v3 removeExceptionForApplicationIdentifier_];

          v28 = i;
          a2 = v48;
          if ((v27 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_48:
          v49 = sub_24BAAA56C();
          if (v49)
          {
            v159 = v49;
            swift_dynamicCast();
            v5 = v164[0];
            i = v28;
            v48 = a2;
            if (v164[0])
            {
              continue;
            }
          }

          goto LABEL_52;
        }
      }

LABEL_52:
      sub_24B8F0C5C();

      if (!(MEMORY[0x277D84F90] >> 62))
      {
        v22 = MEMORY[0x277D84FA0];
        goto LABEL_54;
      }

LABEL_157:
      if (sub_24BAAA52C())
      {
        sub_24B8F1F10(MEMORY[0x277D84F90], qword_27F069140, &unk_24BAACA38, &qword_27F063160);
        v22 = v128;
      }

      else
      {
        v22 = MEMORY[0x277D84FA0];
      }
    }

LABEL_54:
    v134 = v3;

    v51 = sub_24B8F0F9C(v50);

    v130 = v51;
    v52 = sub_24B8E3050(v51, v22);
    v53 = v52;
    if ((v52 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_24BAAA4DC();
      sub_24BAAA24C();
      v54 = v144;
      v55 = v145;
      v5 = v146;
      a2 = v147;
      v3 = v148;
    }

    else
    {
      v56 = -1 << *(v52 + 32);
      v55 = v52 + 56;
      v5 = ~v56;
      v57 = -v56;
      if (v57 < 64)
      {
        v58 = ~(-1 << v57);
      }

      else
      {
        v58 = -1;
      }

      v3 = (v58 & *(v52 + 56));

      a2 = 0;
      v54 = v53;
    }

    v59 = (v5 + 64) >> 6;
    if (v54 < 0)
    {
      goto LABEL_67;
    }

    while (1)
    {
      v60 = a2;
      v61 = v3;
      v62 = a2;
      if (!v3)
      {
        while (1)
        {
          v62 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            break;
          }

          if (v62 >= v59)
          {
            v3 = 0;
            goto LABEL_72;
          }

          v61 = *(v55 + 8 * v62);
          ++v60;
          if (v61)
          {
            goto LABEL_65;
          }
        }

        __break(1u);
        goto LABEL_149;
      }

LABEL_65:
      v63 = (v61 - 1) & v61;
      v5 = *(*(v54 + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v61)))));
      if (!v5)
      {
        break;
      }

      while (1)
      {
        [v134 removeExceptionForApplicationIdentifier_];

        a2 = v62;
        v3 = v63;
        if ((v54 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_67:
        v64 = sub_24BAAA56C();
        if (v64)
        {
          v159 = v64;
          swift_dynamicCast();
          v5 = v164[0];
          v62 = a2;
          v63 = v3;
          if (v164[0])
          {
            continue;
          }
        }

        goto LABEL_72;
      }
    }

LABEL_72:
    sub_24B8F0C5C();

    v65 = sub_24B8E3050(v22, v130);

    if ((v65 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_24BAAA4DC();
      sub_24BAAA24C();
      v66 = v149;
      a2 = v150;
      v5 = v151;
      v67 = v152;
      v68 = v153;
    }

    else
    {
      v69 = -1 << *(v65 + 32);
      a2 = v65 + 56;
      v5 = ~v69;
      v70 = -v69;
      if (v70 < 64)
      {
        v71 = ~(-1 << v70);
      }

      else
      {
        v71 = -1;
      }

      v68 = (v71 & *(v65 + 56));

      v67 = 0;
      v66 = v65;
    }

    v72 = (v5 + 64) >> 6;
    if (v66 < 0)
    {
      goto LABEL_85;
    }

    while (1)
    {
      v73 = v67;
      v74 = v68;
      v75 = v67;
      if (!v68)
      {
        while (1)
        {
          v75 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            break;
          }

          if (v75 >= v72)
          {
            goto LABEL_89;
          }

          v74 = *(a2 + 8 * v75);
          ++v73;
          if (v74)
          {
            goto LABEL_83;
          }
        }

LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

LABEL_83:
      v3 = ((v74 - 1) & v74);
      v5 = *(*(v66 + 48) + ((v75 << 9) | (8 * __clz(__rbit64(v74)))));
      if (!v5)
      {
        break;
      }

      while (1)
      {
        [v134 setExceptionForApplicationIdentifier_];

        v67 = v75;
        v68 = v3;
        if ((v66 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_85:
        v76 = sub_24BAAA56C();
        if (v76)
        {
          v159 = v76;
          swift_dynamicCast();
          v5 = v164[0];
          v75 = v67;
          v3 = v68;
          if (v164[0])
          {
            continue;
          }
        }

        goto LABEL_89;
      }
    }

LABEL_89:
    sub_24B8F0C5C();

    v77 = [v133 configuration];
    v78 = [v77 webApplicationsWithExceptions];

    sub_24B8F37E8(0, &qword_27F063170);
    sub_24B8F1128(&qword_27F063178, &qword_27F063170);
    v3 = sub_24BAAA20C();

    v131 = v3;
    if ([v134 applicationConfigurationType] == a1)
    {
      goto LABEL_108;
    }

    [v134 setApplicationConfigurationType_];
    v79 = [v133 configuration];
    v5 = [v79 webApplicationsWithExceptions];

    v80 = sub_24BAAA20C();
    if ((v80 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_24BAAA4DC();
      sub_24BAAA24C();
      v82 = v154;
      v81 = v155;
      a2 = v156;
      v83 = v157;
      v84 = v158;
    }

    else
    {
      v85 = -1 << *(v80 + 32);
      v81 = v80 + 56;
      a2 = ~v85;
      v86 = -v85;
      if (v86 < 64)
      {
        v87 = ~(-1 << v86);
      }

      else
      {
        v87 = -1;
      }

      v84 = (v87 & *(v80 + 56));

      v83 = 0;
      v82 = v80;
    }

    for (; v82 < 0; v84 = v3)
    {
      v91 = sub_24BAAA56C();
      if (!v91)
      {
        goto LABEL_107;
      }

      v159 = v91;
      swift_dynamicCast();
      v5 = v164[0];
      v90 = v83;
      v3 = v84;
      if (!v164[0])
      {
        goto LABEL_107;
      }

LABEL_105:
      [v134 removeExceptionForWebApplicationIdentifier_];

      v83 = v90;
    }

    v88 = v83;
    v89 = v84;
    v90 = v83;
    if (v84)
    {
      break;
    }

    while (1)
    {
      v90 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      if (v90 >= ((a2 + 64) >> 6))
      {
        goto LABEL_107;
      }

      v89 = *(v81 + 8 * v90);
      ++v88;
      if (v89)
      {
        goto LABEL_101;
      }
    }

LABEL_153:
    __break(1u);
  }

LABEL_101:
  v3 = ((v89 - 1) & v89);
  v5 = *(*(v82 + 48) + ((v90 << 9) | (8 * __clz(__rbit64(v89)))));
  if (v5)
  {
    goto LABEL_105;
  }

LABEL_107:
  sub_24B8F0C5C();

  v3 = v131;
  if (MEMORY[0x277D84F90] >> 62 && sub_24BAAA52C())
  {
    sub_24B8F1F10(MEMORY[0x277D84F90], qword_27F069140, &unk_24BAACA38, &qword_27F063160);
  }

LABEL_108:

  v5 = sub_24B8F1178(v92);

  v93 = sub_24B8E31B0(v5, v3);
  v94 = v93;
  a1 = v5;
  if ((v93 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24BAAA4DC();
    sub_24BAAA24C();
    v96 = v159;
    v95 = v160;
    a2 = v161;
    v97 = v162;
    v98 = v163;
  }

  else
  {
    v99 = -1 << *(v93 + 32);
    v95 = v93 + 56;
    a2 = ~v99;
    v100 = -v99;
    if (v100 < 64)
    {
      v101 = ~(-1 << v100);
    }

    else
    {
      v101 = -1;
    }

    v98 = (v101 & *(v93 + 56));

    v97 = 0;
    v96 = v94;
  }

  if ((v96 & 0x8000000000000000) != 0)
  {
    goto LABEL_121;
  }

LABEL_115:
  v102 = v97;
  v103 = v98;
  v104 = v97;
  if (!v98)
  {
    do
    {
      v104 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        goto LABEL_150;
      }

      if (v104 >= ((a2 + 64) >> 6))
      {
        goto LABEL_125;
      }

      v103 = *(v95 + 8 * v104);
      ++v102;
    }

    while (!v103);
  }

  v3 = ((v103 - 1) & v103);
  v5 = *(*(v96 + 48) + ((v104 << 9) | (8 * __clz(__rbit64(v103)))));
  if (v5)
  {
    while (1)
    {
      [v134 removeExceptionForWebApplicationIdentifier_];

      v97 = v104;
      v98 = v3;
      if ((v96 & 0x8000000000000000) == 0)
      {
        goto LABEL_115;
      }

LABEL_121:
      v105 = sub_24BAAA56C();
      if (v105)
      {
        v136[0] = v105;
        swift_dynamicCast();
        v5 = v164[0];
        v104 = v97;
        v3 = v98;
        if (v164[0])
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_125:
  sub_24B8F0C5C();

  v106 = sub_24B8E31B0(v131, a1);

  if ((v106 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24BAAA4DC();
    sub_24BAAA24C();
    v107 = v164[0];
    a2 = v164[1];
    v5 = v164[2];
    v108 = v164[3];
    v109 = v164[4];
  }

  else
  {
    v110 = -1 << *(v106 + 32);
    a2 = v106 + 56;
    v5 = ~v110;
    v111 = -v110;
    if (v111 < 64)
    {
      v112 = ~(-1 << v111);
    }

    else
    {
      v112 = -1;
    }

    v109 = v112 & *(v106 + 56);

    v108 = 0;
    v107 = v106;
  }

  a1 = v5;
  v113 = (v5 + 64) >> 6;
  if ((v107 & 0x8000000000000000) == 0)
  {
LABEL_132:
    v114 = v108;
    v115 = v109;
    v116 = v108;
    if (v109)
    {
LABEL_136:
      v3 = ((v115 - 1) & v115);
      v5 = *(*(v107 + 48) + ((v116 << 9) | (8 * __clz(__rbit64(v115)))));
      if (v5)
      {
        goto LABEL_140;
      }

      goto LABEL_142;
    }

    while (1)
    {
      v116 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        break;
      }

      if (v116 >= v113)
      {
        goto LABEL_142;
      }

      v115 = *(a2 + 8 * v116);
      ++v114;
      if (v115)
      {
        goto LABEL_136;
      }
    }

LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  while (1)
  {
    v117 = sub_24BAAA56C();
    if (!v117)
    {
      break;
    }

    v135 = v117;
    swift_dynamicCast();
    v5 = v136[0];
    v116 = v108;
    v3 = v109;
    if (!v136[0])
    {
      break;
    }

LABEL_140:
    [v134 setExceptionForWebApplicationIdentifier_];

    v108 = v116;
    v109 = v3;
    if ((v107 & 0x8000000000000000) == 0)
    {
      goto LABEL_132;
    }
  }

LABEL_142:
  sub_24B8F0C5C();

  [v133 mutableCopy];
  sub_24BAAA47C();
  swift_unknownObjectRelease();
  sub_24B8F37E8(0, &qword_27F063150);
  if (swift_dynamicCast())
  {
    [v135 setConfiguration_];

    return v135;
  }

  v119 = v133;
  v30 = sub_24BAA810C();
  v120 = sub_24BAAA2AC();

  if (os_log_type_enabled(v30, v120))
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v136[0] = v123;
    *v121 = 136446466;
    v124 = sub_24BAAA86C();
    v126 = sub_24B8E49D4(v124, v125, v136);

    *(v121 + 4) = v126;
    *(v121 + 12) = 2112;
    *(v121 + 14) = v119;
    *v122 = v119;
    v127 = v119;
    _os_log_impl(&dword_24B8D3000, v30, v120, "[%{public}s] fail to make a mutable copy of %@", v121, 0x16u);
    sub_24B8F35E4(v122, &qword_27F064510);
    MEMORY[0x24C251390](v122, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v123);
    MEMORY[0x24C251390](v123, -1, -1);
    MEMORY[0x24C251390](v121, -1, -1);
  }

LABEL_147:
  return 0;
}

uint64_t DNDModeConfiguration.appsWithExceptions.getter()
{
  v149 = *MEMORY[0x277D85DE8];
  v126 = sub_24BAA7D0C();
  v1 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = MEMORY[0x277D84F90];
  v3 = [v0 configuration];
  v4 = [v3 applicationsWithExceptions];

  v5 = sub_24B8F37E8(0, &qword_27F063160);
  sub_24B8F1128(&qword_27F063168, &qword_27F063160);
  v6 = sub_24BAAA20C();

  v127 = v0;
  v125 = v1;
  v129 = v5;
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_24BAAA4DC();
    sub_24BAAA24C();
    v6 = v140;
    v7 = v141;
    v8 = v142;
    v9 = v143;
    v10 = v144;
  }

  else
  {
    v9 = 0;
    v11 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v6 + 56);
  }

  v117 = 0;
  v128 = v8;
  v14 = (v8 + 64) >> 6;
  v15 = MEMORY[0x277D84F90];
  v131 = v6;
  v130 = v7;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v16 = v9;
    v17 = v10;
    v18 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v6 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v132 = v19;
      v22 = v20;
      v23 = [v22 bundleID];
      if (!v23)
      {
        sub_24BAAA01C();
        v23 = sub_24BAA9FDC();
      }

      v24 = sub_24BAAA01C();
      v26 = v25;
      v27 = objc_allocWithZone(MEMORY[0x277CC1E70]);
      *&v145 = 0;
      v28 = [v27 initWithBundleIdentifier:v23 allowPlaceholder:1 error:&v145];

      if (v28)
      {
        v29 = v145;
        v30 = [v28 localizedName];
        v24 = sub_24BAAA01C();
        v32 = v31;

        v26 = v32;
      }

      else
      {
        v33 = v145;
        v34 = sub_24BAA7CCC();

        swift_willThrow();
        v117 = 0;
      }

      type metadata accessor for InstalledApp();
      v35 = swift_allocObject();
      v36 = [v22 bundleID];
      v37 = sub_24BAAA01C();
      v39 = v38;

      v35[5] = v37;
      v35[6] = v39;

      v35[2] = v22;
      v35[3] = v24;
      v35[4] = v26;
      MEMORY[0x24C2501C0]();
      if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24BAAA14C();
      }

      sub_24BAAA16C();

      v15 = v134;
      v9 = v18;
      v10 = v132;
      v6 = v131;
      v7 = v130;
      if ((v131 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v21 = sub_24BAAA56C();
      if (v21)
      {
        *&v137 = v21;
        swift_dynamicCast();
        v20 = v145;
        v18 = v9;
        v19 = v10;
        if (v145)
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_102;
    }

    if (v18 >= v14)
    {
      break;
    }

    v17 = *(v7 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_12;
    }
  }

LABEL_25:
  sub_24B8F0C5C();
  v40 = [objc_opt_self() enumeratorWithOptions_];
  v41 = MEMORY[0x277D84F90];
  *&v135 = MEMORY[0x277D84F90];
  v42 = v124;
  sub_24BAAA27C();
  sub_24B8F1E94(&unk_27F063180, MEMORY[0x277CC9178]);
  v43 = v126;
  sub_24BAAA40C();
  while (v147)
  {
    sub_24B8F1EDC(&v145, &v137);
    sub_24B8F37E8(0, &qword_27F063198);
    if ((swift_dynamicCast() & 1) != 0 && v139)
    {
      MEMORY[0x24C2501C0]();
      if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24BAAA14C();
      }

      sub_24BAAA16C();
      v41 = v135;
    }

    sub_24BAAA40C();
  }

  v128 = v41;
  v114 = v15;

  (*(v125 + 8))(v42, v43);
  v139 = MEMORY[0x277D84F90];
  v44 = [v127 configuration];
  v45 = [v44 webApplicationsWithExceptions];

  v46 = sub_24B8F37E8(0, &qword_27F063170);
  sub_24B8F1128(&qword_27F063178, &qword_27F063170);
  v47 = sub_24BAAA20C();

  v115 = v46;
  if ((v47 & 0xC000000000000001) != 0)
  {
    sub_24BAAA4DC();
    sub_24BAAA24C();
    v48 = *(&v145 + 1);
    v47 = v145;
    v49 = v146;
    v50 = v147;
    v51 = v148;
  }

  else
  {
    v50 = 0;
    v52 = -1 << *(v47 + 32);
    v48 = v47 + 56;
    v49 = ~v52;
    v53 = -v52;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    else
    {
      v54 = -1;
    }

    v51 = v54 & *(v47 + 56);
  }

  v113 = v49;
  v55 = (v49 + 64) >> 6;
  v56 = v128 & 0xFFFFFFFFFFFFFF8;
  v129 = v128 & 0xFFFFFFFFFFFFFF8;
  if (v128 < 0)
  {
    v56 = v128;
  }

  v112 = v56;
  v132 = v128 & 0xC000000000000001;
  v131 = "com.apple.NanoTips";
  v120 = v47;
  v119 = v48;
  v118 = (v49 + 64) >> 6;
  if (v47 < 0)
  {
    goto LABEL_48;
  }

LABEL_42:
  v57 = v50;
  v58 = v51;
  v59 = v50;
  if (v51)
  {
LABEL_46:
    v126 = (v58 - 1) & v58;
    v60 = *(*(v47 + 48) + ((v59 << 9) | (8 * __clz(__rbit64(v58)))));
    if (!v60)
    {
      goto LABEL_98;
    }

LABEL_50:
    v127 = v60;
    v125 = v59;
    v62 = v128;
    if (v128 >> 62)
    {
      v63 = sub_24BAAA52C();
    }

    else
    {
      v63 = *(v129 + 16);
    }

    if (!v63)
    {
LABEL_90:
      type metadata accessor for RemoteWebApp();
      v92 = swift_allocObject();
      v93 = v127;
      v92[5] = v127;
      v94 = v93;
      v95 = [v94 givenName];
      v96 = sub_24BAAA01C();
      v98 = v97;

      v92[2] = v94;
      v92[3] = v96;
      v92[4] = v98;
      goto LABEL_91;
    }

    v130 = sub_24B8F37E8(0, &qword_27F0698A0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v65 = 0;
    while (1)
    {
      if (v132)
      {
        v66 = MEMORY[0x24C2506E0](v65, v62);
        v67 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (v65 >= *(v129 + 16))
        {
          goto LABEL_101;
        }

        v66 = *(v62 + 8 * v65 + 32);
        v67 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
        }
      }

      v68 = v66;
      v69 = [v68 infoDictionary];
      v70 = sub_24BAA9FDC();
      v71 = [v69 objectForKey:v70 ofClass:ObjCClassFromMetadata];

      if (v71)
      {
        sub_24BAAA47C();
        swift_unknownObjectRelease();
      }

      else
      {
        v135 = 0u;
        v136 = 0u;
      }

      v137 = v135;
      v138 = v136;
      if (!*(&v136 + 1))
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0 || !v133)
      {
        goto LABEL_55;
      }

      v72 = v133;
      v73 = sub_24BAA9FDC();
      v74 = [v72 objectForKey_];

      if (v74)
      {
        sub_24BAAA47C();
        swift_unknownObjectRelease();
      }

      else
      {
        v135 = 0u;
        v136 = 0u;
      }

      v137 = v135;
      v138 = v136;
      if (*(&v136 + 1))
      {
        if (swift_dynamicCast())
        {
          v75 = *(&v135 + 1);
          v124 = v135;
          v76 = [v68 bundleIdentifier];
          if (v76)
          {
            v122 = v75;
            v77 = v76;
            v116 = sub_24BAAA01C();
            v123 = v78;

            v79 = [v68 localizedName];
            v121 = sub_24BAAA01C();
            v81 = v80;

            v82 = [v127 givenName];
            v83 = sub_24BAAA01C();
            v85 = v84;

            if (v121 == v83 && v81 == v85)
            {

LABEL_83:
              v87 = [v127 webIdentifier];
              v88 = sub_24BAAA01C();
              v90 = v89;

              if (v124 == v88 && v122 == v90)
              {

LABEL_96:
                type metadata accessor for InstalledApp();
                v100 = swift_allocObject();
                v101 = v123;
                v100[5] = v116;
                v100[6] = v101;
                v102 = v127;
                v103 = [v102 givenName];
                v104 = sub_24BAAA01C();
                v106 = v105;

                v100[2] = v102;
                v100[3] = v104;
                v100[4] = v106;

LABEL_91:

                MEMORY[0x24C2501C0](v99);
                v47 = v120;
                v48 = v119;
                v55 = v118;
                if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_24BAAA14C();
                }

                sub_24BAAA16C();

                v50 = v125;
                v51 = v126;
                if (v47 < 0)
                {
LABEL_48:
                  v61 = sub_24BAAA56C();
                  if (!v61)
                  {
                    goto LABEL_98;
                  }

                  *&v135 = v61;
                  swift_dynamicCast();
                  v60 = v137;
                  v59 = v50;
                  v126 = v51;
                  if (!v137)
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_50;
                }

                goto LABEL_42;
              }

              v91 = sub_24BAAA78C();

              if (v91)
              {
                goto LABEL_96;
              }
            }

            else
            {
              v86 = sub_24BAAA78C();

              if (v86)
              {
                goto LABEL_83;
              }
            }

LABEL_89:
            v62 = v128;
            goto LABEL_57;
          }
        }

        goto LABEL_89;
      }

      v62 = v128;
LABEL_56:
      sub_24B8F35E4(&v137, &qword_27F063190);
LABEL_57:
      ++v65;
      if (v67 == v63)
      {
        goto LABEL_90;
      }
    }

    sub_24B8F35E4(&v137, &qword_27F063190);
LABEL_55:

    v137 = 0u;
    v138 = 0u;
    goto LABEL_56;
  }

  while (1)
  {
    v59 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_103;
    }

    if (v59 >= v55)
    {
      break;
    }

    v58 = *(v48 + 8 * v59);
    ++v57;
    if (v58)
    {
      goto LABEL_46;
    }
  }

LABEL_98:
  sub_24B8F0C5C();

  *&v137 = MEMORY[0x277D84F90];

  sub_24B8E36C4(v107, sub_24B8F0524);

  sub_24B8E36C4(v108, sub_24B8F0524);

  *&v135 = sub_24B8F0454(v109, sub_24BAA74CC, sub_24B8F0524);
  v110 = v117;
  sub_24B8EF9B4(&v135);
  if (v110)
  {

    __break(1u);
  }

  else
  {

    return v135;
  }

  return result;
}

void sub_24B8DD9E0(unint64_t a1)
{
  v2 = v1;
  v47[1] = *MEMORY[0x277D85DE8];
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v4 = sub_24BAA812C();
  __swift_project_value_buffer(v4, qword_27F077038);
  swift_retain_n();

  v5 = sub_24BAA810C();
  v6 = sub_24BAAA29C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v47[0] = v8;
    *v7 = 136446722;
    v9 = sub_24BAAA86C();
    v11 = sub_24B8E49D4(v9, v10, v47);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = type metadata accessor for EventSource();
    v13 = MEMORY[0x24C2501F0](a1, v12);
    v15 = sub_24B8E49D4(v13, v14, v47);

    *(v7 + 14) = v15;
    *(v7 + 22) = 2048;
    v16 = sub_24B8D7188();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 configuration];
      v19 = [v18 applicationConfigurationType];
    }

    else
    {

      v19 = 2;
    }

    *(v7 + 24) = v19;

    _os_log_impl(&dword_24B8D3000, v5, v6, "[%{public}s] set appsWithExceptions %s for appExceptionType %lu", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C251390](v8, -1, -1);
    MEMORY[0x24C251390](v7, -1, -1);
  }

  else
  {
  }

  v20 = sub_24B8D7188();
  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = v20;
  v22 = *(v2 + 96);
  if (v22)
  {
    v23 = [v22 configuration];
    v24 = [v23 applicationConfigurationType];

    sub_24B8F345C(v22);
  }

  else
  {
    v24 = 2;
  }

  v25 = DNDModeConfiguration.configuration(type:appsWithExceptions:)(v24, a1);

  if (v25)
  {
    v26 = sub_24B8D686C();
    v47[0] = 0;
    v27 = [v26 setModeConfiguration:v25 error:v47];

    if (v27)
    {
      v28 = v47[0];

      v29 = *(v2 + 96);
      *(v2 + 96) = v25;
      sub_24B8F345C(v29);
      *(v2 + 104) = 0;
    }

    else
    {
      v30 = v47[0];
      v31 = sub_24BAA7CCC();

      swift_willThrow();
      v47[0] = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
      sub_24B8F37E8(0, &unk_27F063460);
      swift_dynamicCast();

      v32 = v45;
      v33 = sub_24BAA810C();
      v34 = sub_24BAAA2AC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v46 = v36;
        *v35 = 136446466;
        v37 = sub_24BAAA86C();
        v39 = sub_24B8E49D4(v37, v38, &v46);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        v40 = [v32 localizedDescription];
        v41 = sub_24BAAA01C();
        v43 = v42;

        v44 = sub_24B8E49D4(v41, v43, &v46);

        *(v35 + 14) = v44;
        _os_log_impl(&dword_24B8D3000, v33, v34, "[%{public}s] error setting mode configuration: %s", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v36, -1, -1);
        MEMORY[0x24C251390](v35, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
LABEL_16:
  }
}

id sub_24B8DDF7C(SEL *a1)
{
  v3 = [v1 configuration];
  v4 = [v3 *a1];

  return v4;
}

void sub_24B8DDFCC(void *a1)
{
  v2 = v1;
  v38[1] = *MEMORY[0x277D85DE8];
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v4 = sub_24BAA812C();
  __swift_project_value_buffer(v4, qword_27F077038);
  v5 = sub_24BAA810C();
  v6 = sub_24BAAA2CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38[0] = v8;
    *v7 = 136446466;
    v9 = sub_24BAAA86C();
    v11 = sub_24B8E49D4(v9, v10, v38);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a1;
    _os_log_impl(&dword_24B8D3000, v5, v6, "[%{public}s] set peopleExceptionType %lu", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C251390](v8, -1, -1);
    MEMORY[0x24C251390](v7, -1, -1);
  }

  v12 = sub_24B8D7188();
  if (v12)
  {
    v13 = v12;
    sub_24B8DF01C();
    v15 = DNDModeConfiguration.configuration(type:contactsWithExceptions:)(a1, v14);

    if (v15)
    {
      v16 = sub_24B8D686C();
      v38[0] = 0;
      v17 = [v16 setModeConfiguration:v15 error:v38];

      v18 = v38[0];
      if (v17)
      {
        v19 = *(v2 + 96);
        *(v2 + 96) = v15;
        v20 = v18;
        sub_24B8F345C(v19);
      }

      else
      {
        v21 = v38[0];
        v22 = sub_24BAA7CCC();

        swift_willThrow();
        v38[0] = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
        sub_24B8F37E8(0, &unk_27F063460);
        swift_dynamicCast();
        v23 = v36;
        v24 = sub_24BAA810C();
        v25 = sub_24BAAA2AC();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v37 = v27;
          *v26 = 136446466;
          v28 = sub_24BAAA86C();
          v30 = sub_24B8E49D4(v28, v29, &v37);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2080;
          v31 = [v23 localizedDescription];
          v32 = sub_24BAAA01C();
          v34 = v33;

          v35 = sub_24B8E49D4(v32, v34, &v37);

          *(v26 + 14) = v35;
          _os_log_impl(&dword_24B8D3000, v24, v25, "[%{public}s] error setting mode configuration: %s", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C251390](v27, -1, -1);
          MEMORY[0x24C251390](v26, -1, -1);
        }

        else
        {
        }
      }
    }
  }
}

void *DNDModeConfiguration.configuration(type:contactsWithExceptions:)(id a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = [v2 configuration];
  [v6 mutableCopy];
  sub_24BAAA47C();
  swift_unknownObjectRelease();
  sub_24B8F37E8(0, &qword_27F063158);
  if (swift_dynamicCast())
  {
    v96 = a2;
    v95 = v6;
    v7 = [v2 configuration];
    v8 = [v7 contactsWithExceptions];

    sub_24B8F37E8(0, &qword_27F0631A0);
    sub_24B8F1128(&qword_27F0631A8, &qword_27F0631A0);
    v9 = sub_24BAAA20C();

    v97 = v100;
    v94 = v3;
    if ([v100 senderConfigurationType] == a1)
    {
      v10 = a2;
LABEL_27:

      v37 = sub_24B8E3310(v10, v9);
      v38 = v37;
      if ((v37 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_24BAAA4DC();
        sub_24BAAA24C();
        v6 = v100;
        v39 = v101;
        v40 = v102;
        v41 = v103;
        v42 = v104;
      }

      else
      {
        v43 = -1 << *(v37 + 32);
        v39 = v37 + 56;
        v40 = ~v43;
        v44 = -v43;
        if (v44 < 64)
        {
          v45 = ~(-1 << v44);
        }

        else
        {
          v45 = -1;
        }

        v42 = v45 & *(v37 + 56);

        v41 = 0;
        v6 = v38;
      }

      v46 = (v40 + 64) >> 6;
      if (v6 < 0)
      {
        goto LABEL_40;
      }

      while (1)
      {
        v47 = v41;
        v48 = v42;
        v49 = v41;
        if (!v42)
        {
          break;
        }

LABEL_38:
        v50 = (v48 - 1) & v48;
        v51 = *(*(v6 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v48)))));
        if (!v51)
        {
LABEL_44:
          sub_24B8F0C5C();

          v53 = sub_24B8E3310(v9, v96);

          if ((v53 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            sub_24BAAA4DC();
            sub_24BAAA24C();
            v54 = v105[0];
            v55 = v105[1];
            v56 = v105[2];
            v57 = v105[3];
            v6 = v105[4];
          }

          else
          {
            v58 = -1 << *(v53 + 32);
            v55 = v53 + 56;
            v56 = ~v58;
            v59 = -v58;
            if (v59 < 64)
            {
              v60 = ~(-1 << v59);
            }

            else
            {
              v60 = -1;
            }

            v6 = v60 & *(v53 + 56);

            v57 = 0;
            v54 = v53;
          }

          v61 = (v56 + 64) >> 6;
          if (v54 < 0)
          {
            goto LABEL_57;
          }

          while (1)
          {
            v62 = v57;
            v63 = v6;
            for (i = v57; !v63; ++v62)
            {
              i = v62 + 1;
              if (__OFADD__(v62, 1))
              {
                goto LABEL_75;
              }

              if (i >= v61)
              {
                goto LABEL_61;
              }

              v63 = *(v55 + 8 * i);
            }

            v65 = (v63 - 1) & v63;
            v66 = *(*(v54 + 48) + ((i << 9) | (8 * __clz(__rbit64(v63)))));
            if (!v66)
            {
              break;
            }

            while (1)
            {
              [v97 setExceptionForContact_];

              v57 = i;
              v6 = v65;
              if ((v54 & 0x8000000000000000) == 0)
              {
                break;
              }

LABEL_57:
              v67 = sub_24BAAA56C();
              if (v67)
              {
                v98 = v67;
                swift_dynamicCast();
                v66 = v99[0];
                i = v57;
                v65 = v6;
                if (v99[0])
                {
                  continue;
                }
              }

              goto LABEL_61;
            }
          }

LABEL_61:
          sub_24B8F0C5C();

          [v94 mutableCopy];
          sub_24BAAA47C();
          swift_unknownObjectRelease();
          sub_24B8F37E8(0, &qword_27F063150);
          if (swift_dynamicCast())
          {
            [v98 setConfiguration_];
            if (qword_27F0630F0 != -1)
            {
              swift_once();
            }

            v68 = sub_24BAA812C();
            __swift_project_value_buffer(v68, qword_27F077038);
            v69 = v97;
            v70 = sub_24BAA810C();
            v71 = sub_24BAAA29C();

            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              v73 = swift_slowAlloc();
              v99[0] = v73;
              *v72 = 136446466;
              v74 = sub_24BAAA86C();
              v76 = sub_24B8E49D4(v74, v75, v99);

              *(v72 + 4) = v76;
              *(v72 + 12) = 2080;
              v77 = [v69 contactsWithExceptions];
              sub_24BAAA20C();

              v78 = sub_24BAAA21C();
              v80 = v79;

              v81 = sub_24B8E49D4(v78, v80, v99);

              *(v72 + 14) = v81;
              _os_log_impl(&dword_24B8D3000, v70, v71, "[%{public}s] after: %s)", v72, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C251390](v73, -1, -1);
              MEMORY[0x24C251390](v72, -1, -1);
            }

            else
            {
            }

            return v98;
          }

          if (qword_27F0630F0 != -1)
          {
            swift_once();
          }

          v82 = sub_24BAA812C();
          __swift_project_value_buffer(v82, qword_27F077038);
          v83 = v94;
          v13 = sub_24BAA810C();
          v84 = sub_24BAAA2AC();

          if (os_log_type_enabled(v13, v84))
          {
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v99[0] = v87;
            *v85 = 136446466;
            v88 = sub_24BAAA86C();
            v90 = sub_24B8E49D4(v88, v89, v99);

            *(v85 + 4) = v90;
            *(v85 + 12) = 2112;
            *(v85 + 14) = v83;
            *v86 = v83;
            v91 = v83;
            _os_log_impl(&dword_24B8D3000, v13, v84, "[%{public}s] failed to make a mutable copy of %@", v85, 0x16u);
            sub_24B8F35E4(v86, &qword_27F064510);
            MEMORY[0x24C251390](v86, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v87);
            MEMORY[0x24C251390](v87, -1, -1);
            MEMORY[0x24C251390](v85, -1, -1);
          }

          goto LABEL_71;
        }

        while (1)
        {
          [v97 removeExceptionForContact_];

          v41 = v49;
          v42 = v50;
          if ((v6 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_40:
          v52 = sub_24BAAA56C();
          if (v52)
          {
            v99[0] = v52;
            swift_dynamicCast();
            v51 = v105[0];
            v49 = v41;
            v50 = v42;
            if (v105[0])
            {
              continue;
            }
          }

          goto LABEL_44;
        }
      }

      while (1)
      {
        v49 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v49 >= v46)
        {
          goto LABEL_44;
        }

        v48 = *(v39 + 8 * v49);
        ++v47;
        if (v48)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
    }

    else
    {

      [v100 setSenderConfigurationType_];
      v21 = [v3 configuration];
      v22 = [v21 contactsWithExceptions];

      v23 = sub_24BAAA20C();
      if ((v23 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_24BAAA4DC();
        sub_24BAAA24C();
        v24 = v99[4];
        v25 = v99[5];
        v6 = v99[6];
        v26 = v99[7];
        v27 = v99[8];
      }

      else
      {
        v28 = -1 << *(v23 + 32);
        v25 = v23 + 56;
        v6 = ~v28;
        v29 = -v28;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        else
        {
          v30 = -1;
        }

        v27 = v30 & *(v23 + 56);

        v26 = 0;
        v24 = v23;
      }

      if (v24 < 0)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v31 = v26;
        v32 = v27;
        v33 = v26;
        if (!v27)
        {
          break;
        }

LABEL_19:
        v34 = (v32 - 1) & v32;
        v35 = *(*(v24 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
        if (!v35)
        {
LABEL_25:
          sub_24B8F0C5C();

          if (MEMORY[0x277D84F90] >> 62)
          {
            v10 = v96;
            if (sub_24BAAA52C())
            {
              sub_24B8F1F10(MEMORY[0x277D84F90], &unk_27F069130, &unk_24BAACA50, &qword_27F0631A0);
              v9 = v93;
            }

            else
            {
              v9 = MEMORY[0x277D84FA0];
            }
          }

          else
          {
            v9 = MEMORY[0x277D84FA0];
            v10 = v96;
          }

          goto LABEL_27;
        }

        while (1)
        {
          [v97 removeExceptionForContact_];

          v26 = v33;
          v27 = v34;
          if ((v24 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_21:
          v36 = sub_24BAAA56C();
          if (v36)
          {
            v100 = v36;
            swift_dynamicCast();
            v35 = v105[0];
            v33 = v26;
            v34 = v27;
            if (v105[0])
            {
              continue;
            }
          }

          goto LABEL_25;
        }
      }

      while (1)
      {
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v33 >= ((v6 + 64) >> 6))
        {
          goto LABEL_25;
        }

        v32 = *(v25 + 8 * v33);
        ++v31;
        if (v32)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
    goto LABEL_77;
  }

  if (qword_27F0630F0 != -1)
  {
LABEL_77:
    swift_once();
  }

  v11 = sub_24BAA812C();
  __swift_project_value_buffer(v11, qword_27F077038);
  v12 = v6;
  v13 = sub_24BAA810C();
  v14 = sub_24BAAA2AC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v105[0] = v17;
    *v15 = 136446466;
    v18 = sub_24BAAA86C();
    v20 = sub_24B8E49D4(v18, v19, v105);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v12;
    v12 = v12;
    _os_log_impl(&dword_24B8D3000, v13, v14, "[%{public}s] failed to make a mutable copy of %@", v15, 0x16u);
    sub_24B8F35E4(v16, &qword_27F064510);
    MEMORY[0x24C251390](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C251390](v17, -1, -1);
    MEMORY[0x24C251390](v15, -1, -1);
  }

LABEL_71:
  return 0;
}

void sub_24B8DF01C()
{
  v0 = sub_24B8D7188();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 configuration];
    v3 = [v2 contactsWithExceptions];

    sub_24B8F37E8(0, &qword_27F0631A0);
    sub_24B8F1128(&qword_27F0631A8, &qword_27F0631A0);
    sub_24BAAA20C();
  }

  else if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_24BAAA52C())
    {
      sub_24B8F1F10(MEMORY[0x277D84F90], &unk_27F069130, &unk_24BAACA50, &qword_27F0631A0);
    }
  }
}

void sub_24B8DF160(uint64_t a1)
{
  v2 = v1;
  v46[1] = *MEMORY[0x277D85DE8];
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v4 = sub_24BAA812C();
  __swift_project_value_buffer(v4, qword_27F077038);
  swift_retain_n();

  v5 = sub_24BAA810C();
  v6 = sub_24BAAA2CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v46[0] = v8;
    *v7 = 136446722;
    v9 = sub_24BAAA86C();
    v11 = sub_24B8E49D4(v9, v10, v46);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    sub_24B8F37E8(0, &qword_27F0631A0);
    sub_24B8F1128(&qword_27F0631A8, &qword_27F0631A0);
    v12 = sub_24BAAA21C();
    v14 = sub_24B8E49D4(v12, v13, v46);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2048;
    v15 = sub_24B8D7188();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 configuration];
      v18 = [v17 senderConfigurationType];
    }

    else
    {

      v18 = 2;
    }

    *(v7 + 24) = v18;

    _os_log_impl(&dword_24B8D3000, v5, v6, "[%{public}s] set peopleWithExceptions %s for peopleExceptionType %lu", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C251390](v8, -1, -1);
    MEMORY[0x24C251390](v7, -1, -1);
  }

  else
  {
  }

  v19 = sub_24B8D7188();
  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = v19;
  v21 = *(v2 + 96);
  if (v21)
  {
    v22 = [v21 configuration];
    v23 = [v22 senderConfigurationType];

    sub_24B8F345C(v21);
  }

  else
  {
    v23 = 2;
  }

  v24 = DNDModeConfiguration.configuration(type:contactsWithExceptions:)(v23, a1);

  if (v24)
  {
    v25 = sub_24B8D686C();
    v46[0] = 0;
    v26 = [v25 setModeConfiguration:v24 error:v46];

    if (v26)
    {
      v27 = v46[0];

      v28 = *(v2 + 96);
      *(v2 + 96) = v24;
      sub_24B8F345C(v28);
    }

    else
    {
      v29 = v46[0];
      v30 = sub_24BAA7CCC();

      swift_willThrow();
      v46[0] = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
      sub_24B8F37E8(0, &unk_27F063460);
      swift_dynamicCast();

      v31 = v44;
      v32 = sub_24BAA810C();
      v33 = sub_24BAAA2AC();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v45 = v35;
        *v34 = 136446466;
        v36 = sub_24BAAA86C();
        v38 = sub_24B8E49D4(v36, v37, &v45);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        v39 = [v31 localizedDescription];
        v40 = sub_24BAAA01C();
        v42 = v41;

        v43 = sub_24B8E49D4(v40, v42, &v45);

        *(v34 + 14) = v43;
        _os_log_impl(&dword_24B8D3000, v32, v33, "[%{public}s] error setting mode configuration: %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v35, -1, -1);
        MEMORY[0x24C251390](v34, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
LABEL_16:
  }
}

size_t sub_24B8DF718()
{
  v0 = type metadata accessor for Trigger(0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v49 - v5;
  v7 = sub_24B8D7188();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = v7;
    v10 = [v7 triggers];

    sub_24B8F37E8(0, &qword_27F063490);
    v11 = sub_24BAAA12C();

    v12 = v11;
    if (!(v11 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_4;
      }

LABEL_29:

      return MEMORY[0x277D84F90];
    }
  }

  v13 = sub_24BAAA52C();
  if (!v13)
  {
    goto LABEL_29;
  }

LABEL_4:
  v55 = v8;
  result = sub_24B914D88(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v53 = v13;
    v54 = v12 & 0xC000000000000001;
    v16 = v55;
    v52 = v12;
    do
    {
      if (v54)
      {
        v17 = MEMORY[0x24C2506E0](v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      v18 = v17;
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        sub_24B928E74(v19, v4);
      }

      else
      {
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v21 = v20;
          v22 = v18;
          v23 = [v21 isEnabled];
          v24 = [v21 applicationIdentifier];

          *v4 = v24;
          v4[8] = v23;
          *(v4 + 2) = v21;
          v12 = v52;
          v13 = v53;
        }

        else
        {
          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          if (v25)
          {
            v26 = v25;
            v51 = [v25 isEnabled];
            v27 = [v26 region];
            [v27 center];
            v29 = v28;
            v31 = v30;

            v32 = [v26 region];
            [v32 radius];
            v34 = v33;

            v35 = [v26 region];
            v50 = [v35 geoReferenceFrame];

            v36 = [v26 region];
            v37 = [v36 identifier];

            v38 = sub_24BAAA01C();
            v39 = v0;
            v41 = v40;

            *v4 = v29;
            *(v4 + 1) = v31;
            *(v4 + 2) = v34;
            v42 = v51;
            *(v4 + 6) = v50;
            *(v4 + 4) = v38;
            *(v4 + 5) = v41;
            v0 = v39;
            v12 = v52;
            v13 = v53;
            v4[48] = v42;
            *(v4 + 7) = v26;
          }

          else
          {
            objc_opt_self();
            v43 = swift_dynamicCastObjCClass();
            if (v43)
            {
              v44 = v43;
              *v4 = [v43 isEnabled];
              *(v4 + 1) = v44;
              v13 = v53;
            }

            else
            {
              objc_opt_self();
              v45 = swift_dynamicCastObjCClass();
              v13 = v53;
              if (v45 || (objc_opt_self(), (v45 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v45 = swift_dynamicCastObjCClass()) != 0))
              {
                v46 = v45;
                *v4 = [v45 isEnabled];
                *(v4 + 1) = v46;
              }

              else
              {
                *v4 = v18;
              }
            }
          }
        }
      }

      swift_storeEnumTagMultiPayload();
      sub_24B8F36A4(v4, v6, type metadata accessor for Trigger);
      v55 = v16;
      v48 = *(v16 + 16);
      v47 = *(v16 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_24B914D88(v47 > 1, v48 + 1, 1);
        v16 = v55;
      }

      ++v15;
      *(v16 + 16) = v48 + 1;
      sub_24B8F36A4(v6, v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v48, type metadata accessor for Trigger);
    }

    while (v13 != v15);

    return v16;
  }

  __break(1u);
  return result;
}

void sub_24B8DFC94(uint64_t a1)
{
  v133[4] = *MEMORY[0x277D85DE8];
  v122 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063488);
  MEMORY[0x28223BE20](v3 - 8);
  v125 = &v112 - v4;
  v5 = sub_24BAA7DCC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v124 = &v112 - v10;
  v129 = type metadata accessor for Trigger.Schedule(0);
  MEMORY[0x28223BE20](v129);
  v12 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Trigger(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v112 - v18;
  v20 = sub_24B8D7188();
  if (v20 && (v126 = a1, v119 = v9, v121 = v5, v120 = v1, v21 = v20, [v20 mutableCopy], v21, sub_24BAAA47C(), swift_unknownObjectRelease(), sub_24B8F37E8(0, &qword_27F063150), (swift_dynamicCast() & 1) != 0))
  {
    v118 = v131;
    v22 = v126;
    v23 = *(v126 + 16);
    if (v23)
    {
      v133[0] = MEMORY[0x277D84F90];
      sub_24BAAA68C();
      v24 = v22 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v115 = (v6 + 32);
      v130 = *(v14 + 72);
      v117 = (v6 + 56);
      v114 = (v6 + 48);
      v116 = (v6 + 8);
      v123 = v12;
      v128 = v13;
      do
      {
        sub_24B8F357C(v24, v19, type metadata accessor for Trigger);
        sub_24B8F357C(v19, v17, type metadata accessor for Trigger);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 3)
        {
          if (EnumCaseMultiPayload > 5)
          {
            if (EnumCaseMultiPayload == 6)
            {
              v49 = *v17;
              v40 = *(v17 + 1);
              if (v49 != [v40 isEnabled])
              {
                if (v49)
                {
                  v41 = 2;
                }

                else
                {
                  v41 = 1;
                }

                v42 = MEMORY[0x277D059A8];
                goto LABEL_50;
              }
            }
          }

          else if (EnumCaseMultiPayload == 4)
          {
            v39 = *v17;
            v40 = *(v17 + 1);
            if (v39 != [v40 isEnabled])
            {
              if (v39)
              {
                v41 = 2;
              }

              else
              {
                v41 = 1;
              }

              v42 = MEMORY[0x277D059E8];
              goto LABEL_50;
            }
          }

          else
          {
            v72 = *v17;
            v40 = *(v17 + 1);
            if (v72 != [v40 isEnabled])
            {
              if (v72)
              {
                v41 = 2;
              }

              else
              {
                v41 = 1;
              }

              v42 = MEMORY[0x277D059B8];
              goto LABEL_50;
            }
          }
        }

        else if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            v43 = *v17;
            v44 = v17[8];
            v45 = *(v17 + 2);
            if (v44 == [v45 isEnabled] && (sub_24B8F37E8(0, &unk_27F067FA0), v46 = objc_msgSend(v45, sel_applicationIdentifier), v47 = sub_24BAAA3CC(), v46, (v47 & 1) != 0))
            {
              v48 = v45;
              sub_24B8F3644(v19, type metadata accessor for Trigger);
            }

            else
            {
              if (v44)
              {
                v74 = 2;
              }

              else
              {
                v74 = 1;
              }

              [objc_allocWithZone(MEMORY[0x277D05998]) initWithApplicationIdentifier:v43 enabledSetting:v74];
              sub_24B8F3644(v19, type metadata accessor for Trigger);
            }

            goto LABEL_8;
          }

          v73 = *v17;
          v40 = *(v17 + 1);
          if (v73 != [v40 isEnabled])
          {
            if (v73)
            {
              v41 = 2;
            }

            else
            {
              v41 = 1;
            }

            v42 = MEMORY[0x277D059D8];
LABEL_50:
            [objc_allocWithZone(v42) initWithEnabledSetting_];
            sub_24B8F3644(v19, type metadata accessor for Trigger);

            goto LABEL_8;
          }
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            v50 = *v17;
            v51 = *(v17 + 1);
            v52 = *(v17 + 2);
            LODWORD(v127) = *(v17 + 6);
            v54 = *(v17 + 4);
            v53 = *(v17 + 5);
            v55 = v17[48];
            v56 = *(v17 + 7);
            if (v55 != [v56 isEnabled])
            {
              goto LABEL_65;
            }

            v57 = [v56 region];
            [v57 center];
            v59 = v58;

            if (v50 != v59)
            {
              goto LABEL_65;
            }

            v60 = [v56 region];
            [v60 center];
            v62 = v61;

            if (v51 != v62)
            {
              goto LABEL_65;
            }

            v63 = [v56 region];
            v64 = [v63 geoReferenceFrame];

            if (v127 != v64)
            {
              goto LABEL_65;
            }

            v65 = [v56 region];
            [v65 radius];
            v67 = v66;

            if (v52 != v67)
            {
              goto LABEL_65;
            }

            v68 = [v56 region];
            v69 = [v68 identifier];

            v70 = sub_24BAAA01C();
            v113 = v71;

            if (v54 == v70 && v53 == v113)
            {

              goto LABEL_64;
            }

            v82 = sub_24BAAA78C();

            if (v82)
            {
LABEL_64:
              v83 = v56;
              sub_24B8F3644(v19, type metadata accessor for Trigger);
            }

            else
            {
LABEL_65:
              v84 = objc_allocWithZone(MEMORY[0x277CBFBC8]);
              v85 = sub_24BAA9FDC();
              v86 = [v84 initWithCenter:v85 radius:v50 identifier:{v51, v52}];

              [v86 setGeoReferenceFrame_];
              if (v55)
              {
                v87 = 2;
              }

              else
              {
                v87 = 1;
              }

              [objc_allocWithZone(MEMORY[0x277D059B0]) initWithRegion:v86 detail:0 enabledSetting:v87];

              sub_24B8F3644(v19, type metadata accessor for Trigger);
            }

            v12 = v123;
            goto LABEL_8;
          }

          sub_24B8F36A4(v17, v12, type metadata accessor for Trigger.Schedule);
          if (sub_24B92A5B4())
          {
            v25 = *&v12[*(v129 + 32)];
          }

          else
          {
            v27 = [objc_allocWithZone(MEMORY[0x277D05A68]) init];
            v28 = sub_24B92AE44();
            [v27 setStartTime_];

            v29 = v129;
            v30 = sub_24B92AE44();
            [v27 setEndTime_];

            v31 = sub_24B92CDC4(*&v12[*(v29 + 24)]);
            v127 = v27;
            [v27 setWeekdays_];
            v32 = [*&v12[*(v29 + 32)] creationDate];
            if (v32)
            {
              v33 = v119;
              v34 = v32;
              sub_24BAA7DAC();

              v35 = *v115;
              v36 = v125;
              v37 = v121;
              (*v115)(v125, v33, v121);
              (*v117)(v36, 0, 1, v37);
              v38 = v124;
              v35();
            }

            else
            {
              v75 = v125;
              v37 = v121;
              (*v117)(v125, 1, 1, v121);
              v38 = v124;
              sub_24BAA7DBC();
              if ((*v114)(v75, 1, v37) != 1)
              {
                sub_24B8F35E4(v125, &qword_27F063488);
              }
            }

            v12 = v123;
            if (v123[*(v129 + 28)])
            {
              v76 = 2;
            }

            else
            {
              v76 = 1;
            }

            v77 = objc_allocWithZone(MEMORY[0x277D059C0]);
            v78 = v38;
            v79 = sub_24BAA7D8C();
            v80 = v77;
            v81 = v127;
            [v80 initWithTimePeriod:v127 creationDate:v79 enabledSetting:v76];

            (*v116)(v78, v37);
          }

          sub_24B8F3644(v12, type metadata accessor for Trigger.Schedule);
        }

        sub_24B8F3644(v19, type metadata accessor for Trigger);
LABEL_8:
        sub_24BAAA66C();
        sub_24BAAA69C();
        sub_24BAAA6AC();
        sub_24BAAA67C();
        v24 += v130;
        --v23;
      }

      while (v23);
    }

    sub_24B8F37E8(0, &qword_27F063490);
    v88 = sub_24BAAA11C();

    v89 = v118;
    [v118 setTriggers_];

    v90 = v120;
    v91 = sub_24B8D686C();
    v133[0] = 0;
    v92 = v89;
    LOBYTE(v89) = [v91 setModeConfiguration:v92 error:v133];

    v93 = v133[0];
    if (v89)
    {

      v94 = v90[12];
      v90[12] = v92;
      sub_24B8F345C(v94);
    }

    else
    {
      v95 = sub_24BAA7CCC();

      swift_willThrow();
      v133[0] = v95;
      v96 = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
      sub_24B8F37E8(0, &unk_27F063460);
      swift_dynamicCast();

      v97 = v131;
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v98 = sub_24BAA812C();
      __swift_project_value_buffer(v98, qword_27F077038);
      v99 = v97;
      v100 = sub_24BAA810C();
      v101 = sub_24BAAA2AC();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v132 = v103;
        *v102 = 136446466;
        v104 = sub_24BAAA86C();
        v106 = sub_24B8E49D4(v104, v105, &v132);

        *(v102 + 4) = v106;
        *(v102 + 12) = 2080;
        v107 = [v99 localizedDescription];
        v108 = sub_24BAAA01C();
        v110 = v109;

        v111 = sub_24B8E49D4(v108, v110, &v132);

        *(v102 + 14) = v111;
        _os_log_impl(&dword_24B8D3000, v100, v101, "[%{public}s] error setting mode configuration: %s", v102, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v103, -1, -1);
        MEMORY[0x24C251390](v102, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
  }
}

id sub_24B8E0B80(void *a1, char a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [a1 setHideApplicationBadges_];
}

void sub_24B8E0BC8(char a1, SEL *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41[1] = a3;
  v7 = v5;
  v48 = *v5;
  v9 = sub_24BAA9E2C();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24BAA9E5C();
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24BAA9E3C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24B8D7188();
  if (v19)
  {
    v20 = v19;
    [v19 mutableCopy];
    sub_24BAAA47C();
    swift_unknownObjectRelease();
    sub_24B8F37E8(0, &qword_27F063150);
    if (swift_dynamicCast())
    {
      v21 = v50;
      if (a1)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      [v50 *a2];
      v23 = v7[12];
      v7[12] = v21;
      v24 = v21;
      sub_24B8F345C(v23);
      sub_24B8F37E8(0, &qword_27F0644F0);
      (*(v16 + 104))(v18, *MEMORY[0x277D851B8], v15);
      v25 = sub_24BAAA36C();
      (*(v16 + 8))(v18, v15);
      v26 = swift_allocObject();
      v26[2] = v7;
      v26[3] = v24;
      v27 = v48;
      v26[4] = v20;
      v26[5] = v27;
      aBlock[4] = v42;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24B97ACC4;
      aBlock[3] = v43;
      v28 = _Block_copy(aBlock);
      v48 = v24;

      v29 = v20;
      sub_24BAA9E4C();
      v50 = MEMORY[0x277D84F90];
      sub_24B8F1E94(&qword_27F063470, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
      sub_24B8F384C(&qword_27F063480, &unk_27F064500);
      v30 = v47;
      sub_24BAAA48C();
      MEMORY[0x24C250400](0, v14, v11, v28);
      _Block_release(v28);

      (*(v46 + 8))(v11, v30);
      (*(v44 + 8))(v14, v45);
    }

    else
    {
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v31 = sub_24BAA812C();
      __swift_project_value_buffer(v31, qword_27F077038);
      v32 = v20;
      v33 = sub_24BAA810C();
      v34 = sub_24BAAA2AC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v35 = 136446466;
        v38 = sub_24BAAA86C();
        v40 = sub_24B8E49D4(v38, v39, aBlock);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2112;
        *(v35 + 14) = v32;
        *v36 = v20;
        v32 = v32;
        _os_log_impl(&dword_24B8D3000, v33, v34, "[%{public}s] fail to convert %@ into a DNDMutableModeConfiguration", v35, 0x16u);
        sub_24B8F35E4(v36, &qword_27F064510);
        MEMORY[0x24C251390](v36, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x24C251390](v37, -1, -1);
        MEMORY[0x24C251390](v35, -1, -1);
      }
    }
  }
}

id sub_24B8E11CC(void *a1, char a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [a1 setSuppressionType_];
}

void sub_24B8E11F4(void (*a1)(void))
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_24BAA9E2C();
  v55 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_24BAA9E5C();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24BAA9E3C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B8D7188();
  if (v12)
  {
    v13 = v12;
    v50 = v5;
    v56 = v4;
    v57 = [v12 configuration];
    [v57 mutableCopy];
    sub_24BAAA47C();
    swift_unknownObjectRelease();
    sub_24B8F37E8(0, &qword_27F063158);
    if (swift_dynamicCast())
    {
      v49 = v59;
      a1();
      [v13 mutableCopy];
      sub_24BAAA47C();
      swift_unknownObjectRelease();
      sub_24B8F37E8(0, &qword_27F063150);
      if (swift_dynamicCast())
      {
        v14 = v59;
        [v59 setConfiguration_];
        v15 = v2[12];
        v2[12] = v14;
        v16 = v14;
        sub_24B8F345C(v15);
        sub_24B8F37E8(0, &qword_27F0644F0);
        (*(v9 + 104))(v11, *MEMORY[0x277D851B8], v8);
        v48 = sub_24BAAA36C();
        (*(v9 + 8))(v11, v8);
        v17 = swift_allocObject();
        v17[2] = v2;
        v17[3] = v16;
        v18 = v56;
        v17[4] = v13;
        v17[5] = v18;
        aBlock[4] = sub_24B8F34C4;
        aBlock[5] = v17;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24B97ACC4;
        aBlock[3] = &block_descriptor_93;
        v19 = _Block_copy(aBlock);
        v20 = v16;

        v21 = v13;
        v22 = v51;
        sub_24BAA9E4C();
        v59 = MEMORY[0x277D84F90];
        sub_24B8F1E94(&qword_27F063470, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
        sub_24B8F384C(&qword_27F063480, &unk_27F064500);
        v23 = v53;
        v24 = v50;
        sub_24BAAA48C();
        v25 = v48;
        MEMORY[0x24C250400](0, v22, v23, v19);
        _Block_release(v19);

        (*(v55 + 8))(v23, v24);
        (*(v52 + 8))(v22, v54);

        return;
      }

      v36 = v49;
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v37 = sub_24BAA812C();
      __swift_project_value_buffer(v37, qword_27F077038);
      v38 = v13;
      v28 = sub_24BAA810C();
      v39 = sub_24BAAA2AC();

      if (os_log_type_enabled(v28, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock[0] = v42;
        *v40 = 136446466;
        v43 = sub_24BAAA86C();
        v45 = sub_24B8E49D4(v43, v44, aBlock);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2112;
        *(v40 + 14) = v38;
        *v41 = v13;
        v46 = v38;
        _os_log_impl(&dword_24B8D3000, v28, v39, "[%{public}s] fail to convert %@ into a DNDMutableModeConfiguration", v40, 0x16u);
        sub_24B8F35E4(v41, &qword_27F064510);
        MEMORY[0x24C251390](v41, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x24C251390](v42, -1, -1);
        MEMORY[0x24C251390](v40, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v26 = sub_24BAA812C();
      __swift_project_value_buffer(v26, qword_27F077038);
      v27 = v57;
      v28 = sub_24BAA810C();
      v29 = sub_24BAAA2AC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        aBlock[0] = v32;
        *v30 = 136446466;
        v33 = sub_24BAAA86C();
        v35 = sub_24B8E49D4(v33, v34, aBlock);

        *(v30 + 4) = v35;
        *(v30 + 12) = 2112;
        *(v30 + 14) = v27;
        *v31 = v27;
        v27 = v27;
        _os_log_impl(&dword_24B8D3000, v28, v29, "[%{public}s] fail to convert %@ into a DNDMutableConfiguration", v30, 0x16u);
        sub_24B8F35E4(v31, &qword_27F064510);
        MEMORY[0x24C251390](v31, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x24C251390](v32, -1, -1);
        MEMORY[0x24C251390](v30, -1, -1);
      }
    }
  }
}

void sub_24B8E1A5C(uint64_t a1, void *a2, void *a3, char *a4, uint64_t a5, void *a6, void *a7)
{
  v62 = a5;
  v63 = a6;
  v59 = a4;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v11 = sub_24BAA9E2C();
  v64 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24BAA9E5C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  v18 = sub_24B8D686C();
  aBlock[0] = 0;
  v19 = [v18 setModeConfiguration:a2 error:aBlock];

  v20 = aBlock[0];
  if (v19)
  {

    v21 = v20;
  }

  else
  {
    v57 = a7;
    v58 = v15;
    v60 = aBlock[0];
    v22 = aBlock[0];
    v23 = sub_24BAA7CCC();

    swift_willThrow();
    v66 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    sub_24B8F37E8(0, &unk_27F063460);
    swift_dynamicCast();
    v24 = v65;
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v60 = v17;
    v25 = sub_24BAA812C();
    __swift_project_value_buffer(v25, qword_27F077038);
    v26 = v24;
    v27 = sub_24BAA810C();
    v28 = sub_24BAAA2AC();

    v29 = os_log_type_enabled(v27, v28);
    v56 = v26;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v55 = a3;
      v31 = v30;
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136446466;
      v33 = sub_24BAAA86C();
      v35 = sub_24B8E49D4(v33, v34, aBlock);
      v59 = v13;
      v36 = v14;
      v37 = a2;
      v38 = v11;
      v39 = v35;

      *(v31 + 4) = v39;
      *(v31 + 12) = 2080;
      v40 = [v26 localizedDescription];
      v41 = sub_24BAAA01C();
      v43 = v42;

      v44 = v41;
      v11 = v38;
      a2 = v37;
      v14 = v36;
      v13 = v59;
      v45 = sub_24B8E49D4(v44, v43, aBlock);

      *(v31 + 14) = v45;
      _os_log_impl(&dword_24B8D3000, v27, v28, "[%{public}s] error setting mode configuration: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v32, -1, -1);
      v46 = v31;
      a3 = v55;
      MEMORY[0x24C251390](v46, -1, -1);
    }

    sub_24B8F37E8(0, &qword_27F0644F0);
    v47 = sub_24BAAA33C();
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    v49[2] = v48;
    v49[3] = a2;
    v49[4] = a3;
    aBlock[4] = v63;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B97ACC4;
    aBlock[3] = v57;
    v50 = _Block_copy(aBlock);
    v51 = a2;
    v52 = a3;

    v53 = v60;
    sub_24BAA9E4C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24B8F1E94(&qword_27F063470, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
    sub_24B8F384C(&qword_27F063480, &unk_27F064500);
    sub_24BAAA48C();
    MEMORY[0x24C250400](0, v53, v13, v50);
    _Block_release(v50);

    (*(v64 + 8))(v13, v11);
    (*(v58 + 8))(v53, v14);
  }
}

uint64_t sub_24B8E2064(uint64_t a1, id a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_24B8D7188();
    if (v7)
    {
      v8 = v7;

      if (v8 == a2)
      {
        v9 = *(v6 + 96);
        *(v6 + 96) = a3;
        v10 = a3;
        sub_24B8F345C(v9);
      }
    }
  }

  return result;
}

uint64_t sub_24B8E20F4()
{
  v16 = *v0;
  v1 = sub_24BAA9E2C();
  v18 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24BAA9E5C();
  v4 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24BAA9E3C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B8F37E8(0, &qword_27F0644F0);
  (*(v8 + 104))(v10, *MEMORY[0x277D851B8], v7);
  v11 = sub_24BAAA36C();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  v13 = v16;
  *(v12 + 16) = v0;
  *(v12 + 24) = v13;
  aBlock[4] = sub_24B8F34A4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = &block_descriptor;
  v14 = _Block_copy(aBlock);

  sub_24BAA9E4C();
  v19 = MEMORY[0x277D84F90];
  sub_24B8F1E94(&qword_27F063470, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B8F384C(&qword_27F063480, &unk_27F064500);
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v6, v3, v14);
  _Block_release(v14);

  (*(v18 + 8))(v3, v1);
  (*(v4 + 8))(v6, v17);
}

void sub_24B8E24D0(uint64_t a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = sub_24B8D686C();

  v3 = sub_24BAA9FDC();

  v36[0] = 0;
  v4 = [v2 removeModeConfigurationForModeIdentifier:v3 error:v36];

  if (v4)
  {
    v5 = qword_27F0630F0;
    v6 = v36[0];
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_24BAA812C();
    __swift_project_value_buffer(v7, qword_27F077038);

    v8 = sub_24BAA810C();
    v9 = sub_24BAAA2CC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36[0] = v11;
      *v10 = 136446466;
      v12 = sub_24BAAA86C();
      v14 = sub_24B8E49D4(v12, v13, v36);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = *(a1 + 16);
      v16 = *(a1 + 24);

      v17 = sub_24B8E49D4(v15, v16, v36);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_24B8D3000, v8, v9, "[%{public}s] Removed mode:\n %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v11, -1, -1);
      MEMORY[0x24C251390](v10, -1, -1);
    }
  }

  else
  {
    v18 = v36[0];
    v19 = sub_24BAA7CCC();

    swift_willThrow();
    v36[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    sub_24B8F37E8(0, &unk_27F063460);
    swift_dynamicCast();
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v20 = sub_24BAA812C();
    __swift_project_value_buffer(v20, qword_27F077038);
    v21 = v34;
    v22 = sub_24BAA810C();
    v23 = sub_24BAAA2AC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = v25;
      *v24 = 136446466;
      v26 = sub_24BAAA86C();
      v28 = sub_24B8E49D4(v26, v27, &v35);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = [v21 localizedDescription];
      v30 = sub_24BAAA01C();
      v32 = v31;

      v33 = sub_24B8E49D4(v30, v32, &v35);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_24B8D3000, v22, v23, "[%{public}s] Unable to remove mode: error: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v25, -1, -1);
      MEMORY[0x24C251390](v24, -1, -1);
    }

    else
    {
    }
  }
}

id DNDModeConfiguration.configurationWithResetNotificationConfigurationCompatibility()()
{
  swift_getObjectType();
  v1 = [v0 configuration];
  [v1 mutableCopy];
  sub_24BAAA47C();
  swift_unknownObjectRelease();
  sub_24B8F37E8(0, &qword_27F063158);
  if (swift_dynamicCast())
  {
    [v25 setCompatibilityVersion_];
    [v0 mutableCopy];
    sub_24BAAA47C();
    swift_unknownObjectRelease();
    sub_24B8F37E8(0, &qword_27F063150);
    if (swift_dynamicCast())
    {
      [v25 setConfiguration_];

      return v25;
    }

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v14 = sub_24BAA812C();
    __swift_project_value_buffer(v14, qword_27F077038);
    v15 = v0;
    v16 = sub_24BAA810C();
    v17 = sub_24BAAA2AC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v18 = 136446466;
      v21 = sub_24BAAA86C();
      v23 = sub_24B8E49D4(v21, v22, v26);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v15;
      *v19 = v15;
      v24 = v15;
      _os_log_impl(&dword_24B8D3000, v16, v17, "[%{public}s] fail to convert %@ into a DNDMutableModeConfiguration", v18, 0x16u);
      sub_24B8F35E4(v19, &qword_27F064510);
      MEMORY[0x24C251390](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C251390](v20, -1, -1);
      MEMORY[0x24C251390](v18, -1, -1);
    }
  }

  else
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v3 = sub_24BAA812C();
    __swift_project_value_buffer(v3, qword_27F077038);
    v4 = v1;
    v5 = sub_24BAA810C();
    v6 = sub_24BAAA2AC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26[0] = v9;
      *v7 = 136446466;
      v10 = sub_24BAAA86C();
      v12 = sub_24B8E49D4(v10, v11, v26);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2112;
      *(v7 + 14) = v4;
      *v8 = v4;
      v13 = v4;
      _os_log_impl(&dword_24B8D3000, v5, v6, "[%{public}s] fail to convert %@ into a DNDMutableConfiguration", v7, 0x16u);
      sub_24B8F35E4(v8, &qword_27F064510);
      MEMORY[0x24C251390](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C251390](v9, -1, -1);
      MEMORY[0x24C251390](v7, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

id *sub_24B8E2D64()
{

  sub_24B8F345C(v0[12]);

  return v0;
}

uint64_t sub_24B8E2DC4()
{
  sub_24B8E2D64();

  return swift_deallocClassInstance();
}

id sub_24B8E2EC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityConfigurationManager.StateListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DNDModeConfiguration.configuration(type:contactIdentifiersWithExceptions:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_24BAAA68C();
    v6 = a2 + 40;
    do
    {
      v7 = objc_allocWithZone(MEMORY[0x277D058F0]);

      v8 = sub_24BAA9FDC();

      [v7 initWithContactIdentifier_];

      sub_24BAAA66C();
      sub_24BAAA69C();
      sub_24BAAA6AC();
      sub_24BAAA67C();
      v6 += 16;
      --v3;
    }

    while (v3);
    v4 = v12;
  }

  v9 = sub_24B8F1304(v4);

  v10 = DNDModeConfiguration.configuration(type:contactsWithExceptions:)(a1, v9);

  return v10;
}

uint64_t sub_24B8E3050(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_24BAAA52C();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_24BAAA52C() / 8)
    {
      v6 = sub_24BAAA52C();
      a2 = sub_24B8E6004(v5, v6, qword_27F069140, &unk_24BAACA38, &qword_27F063160);
      return sub_24B8EB408(a1, a2, &qword_27F063160, 0x277D058C8, &qword_27F063168, sub_24BA29424, sub_24BA29424);
    }
  }

  else if (v4 > *(a2 + 16) >> 3)
  {
    return sub_24B8EB408(a1, a2, &qword_27F063160, 0x277D058C8, &qword_27F063168, sub_24BA29424, sub_24BA29424);
  }

  sub_24B8EA6CC(a1, &qword_27F063160, 0x277D058C8, &qword_27F063168, sub_24B9AC36C);
  return a2;
}

uint64_t sub_24B8E31B0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_24BAAA52C();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_24BAAA52C() / 8)
    {
      v6 = sub_24BAAA52C();
      a2 = sub_24B8E6004(v5, v6, &qword_27F063510, &unk_24BAACA60, &qword_27F063170);
      return sub_24B8EB408(a1, a2, &qword_27F063170, 0x277D05AC8, &qword_27F063178, sub_24BA29410, sub_24BA29410);
    }
  }

  else if (v4 > *(a2 + 16) >> 3)
  {
    return sub_24B8EB408(a1, a2, &qword_27F063170, 0x277D05AC8, &qword_27F063178, sub_24BA29410, sub_24BA29410);
  }

  sub_24B8EA6CC(a1, &qword_27F063170, 0x277D05AC8, &qword_27F063178, sub_24B9AC330);
  return a2;
}

uint64_t sub_24B8E3310(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_24BAAA52C();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_24BAAA52C() / 8)
    {
      v6 = sub_24BAAA52C();
      a2 = sub_24B8E6004(v5, v6, &unk_27F069130, &unk_24BAACA50, &qword_27F0631A0);
      return sub_24B8EB408(a1, a2, &qword_27F0631A0, 0x277D058F0, &qword_27F0631A8, sub_24BA29438, sub_24BA29438);
    }
  }

  else if (v4 > *(a2 + 16) >> 3)
  {
    return sub_24B8EB408(a1, a2, &qword_27F0631A0, 0x277D058F0, &qword_27F0631A8, sub_24BA29438, sub_24BA29438);
  }

  sub_24B8EA6CC(a1, &qword_27F0631A0, 0x277D058F0, &qword_27F0631A8, sub_24B9AC3A8);
  return a2;
}

uint64_t sub_24B8E3470(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_24BAAA52C();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_24B8EB1D0(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_24BAAA52C() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_24BAAA52C();
  v2 = sub_24B8E629C(v5, v6, &qword_27F0633D0, &unk_24BAAC9D0, type metadata accessor for InstalledApp);
LABEL_10:

  return sub_24B8EDDA0(a1, v2);
}

uint64_t sub_24B8E35B8(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24B99A290(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24B8E36C4(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_24BAAA52C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_24BAAA52C();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_24B8EF914(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24B8E37BC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_24B99ABD0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for LocationSuggestions.PointOfInterest(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24B8E3930(SEL *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v8 = [v4 configuration];
  v9 = [v8 *a1];

  sub_24B8F37E8(0, a2);
  sub_24B8F1128(a4, a2);
  v10 = sub_24BAAA20C();

  return v10;
}

uint64_t sub_24B8E39E4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24BAA9A3C();
  v2 = *MEMORY[0x277CDE248];
  v3 = sub_24BAA8E8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_24B8E3A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 4)
  {
    MEMORY[0x24C24F1E0](a5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0631B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0690B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F0631C0);
  sub_24B8F2368();
  swift_getOpaqueTypeConformance2();
  sub_24B8F23E4();
  return sub_24BAA948C();
}

uint64_t sub_24B8E3B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 4)
  {
    MEMORY[0x24C24F1E0](a5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0631E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0631F0);
  type metadata accessor for FocusNameAndAppearanceView.MastheadLeadImageContent(255);
  sub_24B8F1E94(&qword_27F0631F8, type metadata accessor for FocusNameAndAppearanceView.MastheadLeadImageContent);
  swift_getOpaqueTypeConformance2();
  sub_24B8F249C();
  return sub_24BAA948C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24B8E3D2C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 33) = a2;
  sub_24B8F319C(a3, a4, a5 & 1);
}

uint64_t sub_24B8E3D88@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 3);
  v5 = v3[1];
  v12 = *v3;
  v13 = *(v3 + 16);
  v11 = v4;
  v9 = v3[2];
  v6 = v9;
  v10 = *(v3 + 48);
  LOBYTE(v4) = v10;
  *a3 = v12;
  *(a3 + 16) = v5;
  *(a3 + 32) = v6;
  *(a3 + 48) = v4;
  *(a3 + 56) = a1;
  *(a3 + 64) = a2;
  sub_24B8F31AC(&v12, v8);
  sub_24B8F3208(&v11, v8, &qword_27F063270);
  return sub_24B8F3208(&v9, v8, &unk_27F063278);
}

uint64_t sub_24B8E3E28@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 40) = a2;
  sub_24B8F319C(a3, a4, a5 & 1);
}

id sub_24B8E3E80(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_24BAA9FDC();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_24BAA7CCC();

    swift_willThrow();
  }

  return v6;
}

BOOL sub_24B8E3F98(void *a1, uint64_t *a2)
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

_DWORD *sub_24B8E3FF0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_24B8E4018@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24B8E405C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24BAAA01C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24B8E409C(uint64_t a1, id *a2)
{
  result = sub_24BAA9FFC();
  *a2 = 0;
  return result;
}

uint64_t sub_24B8E4114(uint64_t a1, id *a2)
{
  v3 = sub_24BAAA00C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24B8E4194@<X0>(uint64_t *a1@<X8>)
{
  sub_24BAAA01C();
  v2 = sub_24BAA9FDC();

  *a1 = v2;
  return result;
}

uint64_t sub_24B8E41E0(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x24C24E070](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_24B8E4234(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x24C24E080](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_24B8E42C0()
{
  v0 = sub_24BAAA01C();
  v1 = MEMORY[0x24C250180](v0);

  return v1;
}

uint64_t sub_24B8E42FC()
{
  sub_24BAAA01C();
  sub_24BAAA07C();
}

uint64_t sub_24B8E4350()
{
  sub_24BAAA01C();
  sub_24BAAA7FC();
  sub_24BAAA07C();
  v0 = sub_24BAAA84C();

  return v0;
}

uint64_t sub_24B8E43C4()
{
  v1 = *v0;
  sub_24BAAA7FC();
  MEMORY[0x24C2508C0](v1);
  return sub_24BAAA84C();
}

uint64_t sub_24B8E440C()
{
  v1 = *v0;
  sub_24BAAA7FC();
  MEMORY[0x24C2508C0](v1);
  return sub_24BAAA84C();
}

uint64_t sub_24B8E447C()
{
  v0 = sub_24BAAA01C();
  v2 = v1;
  if (v0 == sub_24BAAA01C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24BAAA78C();
  }

  return v5 & 1;
}

uint64_t sub_24B8E4504()
{
  sub_24B8F1E94(&qword_27F0636B0, type metadata accessor for OpenExternalURLOptionsKey);
  sub_24B8F1E94(&qword_27F0636B8, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_24BAAA73C();
}

uint64_t sub_24B8E45C4()
{
  sub_24B8F1E94(&qword_27F0635E8, type metadata accessor for AttributeName);
  sub_24B8F1E94(&qword_27F0635F0, type metadata accessor for AttributeName);

  return sub_24BAAA73C();
}

uint64_t sub_24B8E4680@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24BAA9FDC();

  *a1 = v2;
  return result;
}

uint64_t sub_24B8E46C8()
{
  sub_24B8F1E94(&qword_27F0635D8, type metadata accessor for TraitKey);
  sub_24B8F1E94(&qword_27F0635E0, type metadata accessor for TraitKey);

  return sub_24BAAA73C();
}

double sub_24B8E4784@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_24B8E4790()
{
  sub_24B8F1E94(&qword_27F0635C0, type metadata accessor for Weight);
  sub_24B8F1E94(&qword_27F0635C8, type metadata accessor for Weight);
  sub_24B8F3CE0();
  return sub_24BAAA73C();
}

uint64_t sub_24B8E4860()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x24C2508F0](*&v1);
}

uint64_t sub_24B8E489C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

uint64_t sub_24B8E48C8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_24B8E4914(void (*a1)(void))
{
  a1();

  return sub_24BAAA86C();
}

uint64_t sub_24B8E4978(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_24B8E49D4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_24B8E49D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24B8E4AA0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24B8F3894(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24B8E4AA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24B8E4BAC(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_24BAAA64C();
    a6 = v11;
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

uint64_t sub_24B8E4BAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_24B8E4BF8(a1, a2);
  sub_24B8E4D28(&unk_285EBE7F8);
  return v3;
}

uint64_t sub_24B8E4BF8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24B8E4E14(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24BAAA64C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24BAAA0BC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24B8E4E14(v10, 0);
        result = sub_24BAAA5EC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24B8E4D28(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24B8E4E88(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24B8E4E14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063518);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24B8E4E88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

_BYTE **sub_24B8E4F7C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_24B8E4FB4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_24B8E50BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24B8E50EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24BAAA7FC();
  sub_24BAAA07C();
  v8 = sub_24BAAA84C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24BAAA78C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24B8E7908(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24B8E523C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24BAAA7FC();
  MEMORY[0x24C2508C0](a2);
  v6 = sub_24BAAA84C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_24B8E7C18(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24B8E5358(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = sub_24BAAA53C();

    if (v16)
    {

      sub_24B8F37E8(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_24BAAA52C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_24B8E6004(v14, result + 1, a5, a6, a3);
        v27 = *(v26 + 16);
        if (*(v26 + 24) <= v27)
        {
          sub_24B8E75C4(v27 + 1, a5);
        }

        v28 = v15;
        sub_24B8E77E8(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_24B8F37E8(0, a3);
    v18 = sub_24BAAA3BC();
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = sub_24BAAA3CC();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_24B8E7A88(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

uint64_t sub_24B8E55CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_24BAAA53C();

    if (v8)
    {

      type metadata accessor for InstalledApp();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_24BAAA52C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_24B8E629C(v7, result + 1, &qword_27F0633D0, &unk_24BAAC9D0, type metadata accessor for InstalledApp);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_24B8E6964(v17 + 1, &qword_27F0633D0);
    }

    sub_24B8E7870(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_24BAAA7FC();
  v10 = sub_24BAAA84C();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_24B8E7D64(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (([*(*(*(v6 + 48) + 8 * v12) + 16) isEqual_] & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_24B8E5810(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_24BAAA53C();

    if (v8)
    {

      type metadata accessor for EventSource();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_24BAAA52C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_24B8E629C(v7, result + 1, &qword_27F063340, &unk_24BAAC9B0, type metadata accessor for EventSource);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_24B8E6964(v17 + 1, &qword_27F063340);
    }

    sub_24B8E7870(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_24BAAA7FC();
  v10 = sub_24BAAA84C();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_24B8E7EF8(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (([*(*(*(v6 + 48) + 8 * v12) + 16) isEqual_] & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_24B8E5A54(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = type metadata accessor for FocusSystemConfigurationAction(0);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v27 = &v26 - v9;
  v28 = v2;
  v10 = *v2;
  sub_24BAAA7FC();
  sub_24BAA7E4C();
  sub_24B8F1E94(&unk_27F063400, MEMORY[0x277CC95F0]);
  sub_24BAA9F1C();
  v31 = *(a2 + v4[5]);
  sub_24BAAA81C();
  v34 = *(a2 + v4[6]);
  sub_24BAAA81C();
  v11 = (a2 + v4[7]);
  v12 = *v11;
  v32 = v11[1];
  v33 = v12;
  sub_24BAAA07C();
  v30 = *(a2 + v4[8]);
  sub_24BAAA3DC();
  v13 = sub_24BAAA84C();
  v14 = -1 << *(v10 + 32);
  v15 = v13 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v5 + 72);
    v18 = v31;
    while (1)
    {
      sub_24B8F357C(*(v10 + 48) + v17 * v15, v8, type metadata accessor for FocusSystemConfigurationAction);
      if ((sub_24BAA7E0C() & 1) != 0 && v18 == v8[v4[5]] && v34 == v8[v4[6]])
      {
        v20 = &v8[v4[7]];
        v21 = *v20 == v33 && *(v20 + 1) == v32;
        if (v21 || (sub_24BAAA78C() & 1) != 0)
        {
          sub_24B8F37E8(0, &unk_27F067FA0);
          v19 = sub_24BAAA3CC();
          v18 = v31;
          if (v19)
          {
            break;
          }
        }
      }

      sub_24B8F3644(v8, type metadata accessor for FocusSystemConfigurationAction);
      v15 = (v15 + 1) & v16;
      if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_24B8F3644(v8, type metadata accessor for FocusSystemConfigurationAction);
    sub_24B8F3644(a2, type metadata accessor for FocusSystemConfigurationAction);
    sub_24B8F357C(*(v10 + 48) + v17 * v15, v29, type metadata accessor for FocusSystemConfigurationAction);
    return 0;
  }

  else
  {
LABEL_14:
    v22 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v27;
    sub_24B8F357C(a2, v27, type metadata accessor for FocusSystemConfigurationAction);
    v35 = *v22;
    sub_24B8E8460(v24, v15, isUniquelyReferenced_nonNull_native);
    *v22 = v35;
    sub_24B8F36A4(a2, v29, type metadata accessor for FocusSystemConfigurationAction);
    return 1;
  }
}

uint64_t sub_24B8E5DFC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = *v5;
  sub_24BAAA7FC();
  sub_24B9AA96C(a4, a5, v28, a2, a3);
  v12 = sub_24BAAA84C();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = *v5;

    sub_24B8E87D8(v24, a3, v14, isUniquelyReferenced_nonNull_native, a4, a5);
    *v5 = v28[0];
    *a1 = a2;
    *(a1 + 8) = a4;
    *(a1 + 16) = a5;
    *(a1 + 24) = a3;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v18 = *(v11 + 48) + 32 * v14;
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
    v21 = *(v18 + 24);
    if (*v18)
    {
      break;
    }

    if (!a2)
    {
      v22 = v20 == a4;
      goto LABEL_3;
    }

LABEL_10:
    v14 = (v14 + 1) & v15;
    if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  if ([*(*v18 + 16) isEqual_])
  {
    v22 = v20 == a4;
  }

  else
  {
    v22 = 0;
  }

LABEL_3:
  if (!v22 || v19 != a5 || v21 != a3)
  {
    goto LABEL_10;
  }

  v26 = *(v11 + 48) + 32 * v14;
  v27 = *(v26 + 24);
  *a1 = *v26;
  *(a1 + 8) = *(v26 + 8);
  *(a1 + 24) = v27;

  return 0;
}

uint64_t sub_24B8E6004(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_24BAAA5CC();
    v20 = v7;
    sub_24BAAA4DC();
    if (sub_24BAAA56C())
    {
      sub_24B8F37E8(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_24B8E75C4(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_24BAAA3BC();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_24BAAA56C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v7;
}

uint64_t sub_24B8E629C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_24BAAA5CC();
    v20 = v7;
    sub_24BAAA4DC();
    if (sub_24BAAA56C())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_24B8E6964(v14 + 1, a3);
        }

        v7 = v20;
        sub_24BAAA7FC();
        result = sub_24BAAA84C();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_24BAAA56C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v7;
}

uint64_t sub_24B8E64A0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068F80);
  result = sub_24BAAA5BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24BAAA7FC();
      sub_24BAAA07C();
      result = sub_24BAAA84C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_24B8E6714()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0634B0);
  result = sub_24BAAA5BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_24BAAA7FC();
      MEMORY[0x24C2508C0](v16);
      result = sub_24BAAA84C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_24B8E6964(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_24BAAA5BC();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_24BAAA7FC();
      result = sub_24BAAA84C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_24B8E6BA0()
{
  v1 = v0;
  v2 = type metadata accessor for FocusConfigurationAction(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063438);
  result = sub_24BAAA5BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v28 = result + 56;
    v29 = v5;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v19 = *(v5 + 48);
      v20 = *(v30 + 72);
      sub_24B8F36A4(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for FocusConfigurationAction);
      sub_24BAAA7FC();
      sub_24BAA7E4C();
      sub_24B8F1E94(&unk_27F063400, MEMORY[0x277CC95F0]);
      sub_24BAA9F1C();
      sub_24BAAA81C();
      sub_24BAAA81C();
      sub_24BAAA07C();
      sub_24BAAA07C();
      sub_24BAAA3DC();
      v21 = *&v4[*(v2 + 40)];
      sub_24BAAA81C();
      if (v21)
      {
        v22 = v21;
        sub_24BAAA3DC();
      }

      v23 = *&v4[*(v2 + 44)];
      sub_24BAAA81C();
      if (v23)
      {
        v24 = v23;
        sub_24BAAA3DC();
      }

      sub_24BAAA84C();
      v14 = v28;
      v15 = sub_24BAAA4BC();
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_24B8F36A4(v4, *(v7 + 48) + v15 * v20, type metadata accessor for FocusConfigurationAction);
      ++*(v7 + 16);
      v5 = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    v25 = 1 << *(v5 + 32);
    if (v25 >= 64)
    {
      bzero(v9, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v25;
    }

    v1 = v27;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_24B8E6F5C()
{
  v1 = v0;
  v2 = type metadata accessor for FocusSystemConfigurationAction(0);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F063410);
  result = sub_24BAAA5BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v32 + 72);
      sub_24B8F36A4(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for FocusSystemConfigurationAction);
      sub_24BAAA7FC();
      sub_24BAA7E4C();
      sub_24B8F1E94(&unk_27F063400, MEMORY[0x277CC95F0]);
      sub_24BAA9F1C();
      sub_24BAAA81C();
      sub_24BAAA81C();
      sub_24BAAA07C();
      sub_24BAAA3DC();
      result = sub_24BAAA84C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_24B8F36A4(v4, *(v7 + 48) + v15 * v20, type metadata accessor for FocusSystemConfigurationAction);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_24B8E72F8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0633B0);
  result = sub_24BAAA5BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 32 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      sub_24BAAA7FC();
      sub_24BAAA81C();
      if (v19 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v19;
      }

      MEMORY[0x24C2508F0](*&v22);
      if (v20 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v20;
      }

      MEMORY[0x24C2508F0](*&v23);
      MEMORY[0x24C2508C0](v21);
      result = sub_24BAAA84C();
      v24 = -1 << *(v4 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 32 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      *(v13 + 24) = v21;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v2 + 32);
    if (v31 >= 64)
    {
      bzero((v2 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v31;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_24B8E75C4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_24BAAA5BC();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_24BAAA3BC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t sub_24B8E77E8(uint64_t a1, uint64_t a2)
{
  sub_24BAAA3BC();
  result = sub_24BAAA4BC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_24B8E7870(uint64_t a1, uint64_t a2)
{
  sub_24BAAA7FC();
  sub_24BAAA84C();
  result = sub_24BAAA4BC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24B8E7908(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24B8E64A0();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24B8E89B4();
      goto LABEL_16;
    }

    sub_24B8E94CC();
  }

  v10 = *v4;
  sub_24BAAA7FC();
  sub_24BAAA07C();
  result = sub_24BAAA84C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24BAAA78C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24BAAA7BC();
  __break(1u);
  return result;
}

void sub_24B8E7A88(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_24B8E75C4(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_24B8E8B60(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_24B8E9704(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = sub_24BAAA3BC();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_24B8F37E8(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_24BAAA3CC();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24BAAA7BC();
  __break(1u);
}

uint64_t sub_24B8E7C18(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24B8E6714();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_24B8E8CA0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24B8E9910();
  }

  v8 = *v3;
  sub_24BAAA7FC();
  MEMORY[0x24C2508C0](v4);
  result = sub_24BAAA84C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24BAAA7BC();
  __break(1u);
  return result;
}

uint64_t sub_24B8E7D64(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24B8E6964(v6 + 1, &qword_27F0633D0);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24B8E8E08(&qword_27F0633D0);
      goto LABEL_12;
    }

    sub_24B8E9B30(v6 + 1, &qword_27F0633D0);
  }

  v8 = *v3;
  sub_24BAAA7FC();
  result = sub_24BAAA84C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    type metadata accessor for InstalledApp();
    do
    {
      result = [*(*(*(v8 + 48) + 8 * a2) + 16) isEqual_];
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24BAAA7BC();
  __break(1u);
  return result;
}

uint64_t sub_24B8E7EF8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24B8E6964(v6 + 1, &qword_27F063340);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24B8E8E08(&qword_27F063340);
      goto LABEL_12;
    }

    sub_24B8E9B30(v6 + 1, &qword_27F063340);
  }

  v8 = *v3;
  sub_24BAAA7FC();
  result = sub_24BAAA84C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    type metadata accessor for EventSource();
    do
    {
      result = [*(*(*(v8 + 48) + 8 * a2) + 16) isEqual_];
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24BAAA7BC();
  __break(1u);
  return result;
}

uint64_t sub_24B8E808C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for FocusConfigurationAction(0);
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v46 = v8;
  v47 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_35;
  }

  if (a3)
  {
    sub_24B8E6BA0();
  }

  else
  {
    if (v12 > v11)
    {
      sub_24B8E8F48();
      goto LABEL_35;
    }

    sub_24B8E9D44();
  }

  v13 = *v3;
  sub_24BAAA7FC();
  sub_24B9B1520();
  v14 = sub_24BAAA84C();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 72);
    do
    {
      sub_24B8F357C(*(v13 + 48) + v17 * a2, v10, type metadata accessor for FocusConfigurationAction);
      if ((sub_24BAA7E0C() & 1) == 0 || v10[v7[5]] != *(a1 + v7[5]) || v10[v7[6]] != *(a1 + v7[6]))
      {
        goto LABEL_11;
      }

      v18 = v7[7];
      v19 = *&v10[v18];
      v20 = *&v10[v18 + 8];
      v21 = (a1 + v18);
      v22 = v19 == *v21 && v20 == v21[1];
      if (!v22 && (sub_24BAAA78C() & 1) == 0)
      {
        goto LABEL_11;
      }

      v23 = v7[8];
      v24 = *&v10[v23];
      v25 = *&v10[v23 + 8];
      v26 = (a1 + v23);
      v27 = v24 == *v26 && v25 == v26[1];
      if (!v27 && (sub_24BAAA78C() & 1) == 0)
      {
        goto LABEL_11;
      }

      sub_24B8F37E8(0, &unk_27F067FA0);
      if ((sub_24BAAA3CC() & 1) == 0)
      {
        goto LABEL_11;
      }

      v28 = v7[10];
      v29 = *&v10[v28];
      v30 = *(a1 + v28);
      if (v29)
      {
        if (!v30)
        {
          goto LABEL_11;
        }

        v45 = sub_24B8F37E8(0, &qword_27F063430);
        v31 = v30;
        v44 = v29;
        v32 = sub_24BAAA3CC();

        if ((v32 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v30)
      {
        goto LABEL_11;
      }

      v33 = v7[11];
      v34 = *&v10[v33];
      v35 = *(a1 + v33);
      if (v34)
      {
        if (v35)
        {
          v45 = sub_24B8F37E8(0, &qword_27F063428);
          v36 = v35;
          v44 = v34;
          v37 = sub_24BAAA3CC();

          if (v37)
          {
LABEL_34:
            sub_24B8F3644(v10, type metadata accessor for FocusConfigurationAction);
            sub_24BAAA7BC();
            __break(1u);
            break;
          }
        }
      }

      else if (!v35)
      {
        goto LABEL_34;
      }

LABEL_11:
      sub_24B8F3644(v10, type metadata accessor for FocusConfigurationAction);
      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_35:
  v38 = *v47;
  *(*v47 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24B8F36A4(a1, *(v38 + 48) + *(v46 + 72) * a2, type metadata accessor for FocusConfigurationAction);
  v40 = *(v38 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v42;
  }

  return result;
}

uint64_t sub_24B8E8460(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for FocusSystemConfigurationAction(0);
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v34 = v8;
  v35 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    sub_24B8E6F5C();
  }

  else
  {
    if (v12 > v11)
    {
      sub_24B8E9154();
      goto LABEL_21;
    }

    sub_24B8EA0D0();
  }

  v13 = *v3;
  sub_24BAAA7FC();
  sub_24BAA7E4C();
  sub_24B8F1E94(&unk_27F063400, MEMORY[0x277CC95F0]);
  sub_24BAA9F1C();
  v14 = *(a1 + v7[5]);
  sub_24BAAA81C();
  v31 = *(a1 + v7[6]);
  sub_24BAAA81C();
  v15 = (a1 + v7[7]);
  v16 = *v15;
  v32 = v15[1];
  v33 = v16;
  sub_24BAAA07C();
  v30[1] = *(a1 + v7[8]);
  sub_24BAAA3DC();
  v17 = sub_24BAAA84C();
  v18 = -1 << *(v13 + 32);
  a2 = v17 & ~v18;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v8 + 72);
    v21 = v31;
    do
    {
      sub_24B8F357C(*(v13 + 48) + v20 * a2, v10, type metadata accessor for FocusSystemConfigurationAction);
      if ((sub_24BAA7E0C() & 1) != 0 && v14 == v10[v7[5]] && v21 == v10[v7[6]])
      {
        v23 = &v10[v7[7]];
        v24 = *v23 == v33 && *(v23 + 1) == v32;
        if (v24 || (sub_24BAAA78C() & 1) != 0)
        {
          sub_24B8F37E8(0, &unk_27F067FA0);
          v22 = sub_24BAAA3CC();
          v21 = v31;
          if (v22)
          {
            goto LABEL_24;
          }
        }
      }

      sub_24B8F3644(v10, type metadata accessor for FocusSystemConfigurationAction);
      a2 = (a2 + 1) & v19;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_21:
  v25 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24B8F36A4(a1, *(v25 + 48) + *(v34 + 72) * a2, type metadata accessor for FocusSystemConfigurationAction);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_24:
  sub_24B8F3644(v10, type metadata accessor for FocusSystemConfigurationAction);
  result = sub_24BAAA7BC();
  __break(1u);
  return result;
}

uint64_t sub_24B8E87D8(uint64_t result, uint64_t a2, unint64_t a3, char a4, double a5, double a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 <= v12 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_24B8E72F8();
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_24B8E9360();
        goto LABEL_25;
      }

      sub_24B8EA43C();
    }

    v14 = *v6;
    sub_24BAAA7FC();
    sub_24B9AA96C(a5, a6, v29, v11, a2);
    result = sub_24BAAA84C();
    v15 = -1 << *(v14 + 32);
    a3 = result & ~v15;
    if ((*(v14 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v16 = ~v15;
      do
      {
        v19 = *(v14 + 48) + 32 * a3;
        v21 = *(v19 + 8);
        v20 = *(v19 + 16);
        v22 = *(v19 + 24);
        if (*v19)
        {
          if (!v11)
          {
            goto LABEL_17;
          }

          result = [*(*v19 + 16) isEqual_];
          if (result)
          {
            v23 = v21 == a5;
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_17;
          }

          v23 = v21 == a5;
        }

        if (v23 && v20 == a6 && v22 == a2)
        {
          goto LABEL_28;
        }

LABEL_17:
        a3 = (a3 + 1) & v16;
      }

      while (((*(v14 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_25:
  v24 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v25 = *(v24 + 48) + 32 * a3;
  *v25 = v11;
  *(v25 + 8) = a5;
  *(v25 + 16) = a6;
  *(v25 + 24) = a2;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_28:
    result = sub_24BAAA7BC();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void *sub_24B8E89B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068F80);
  v2 = *v0;
  v3 = sub_24BAAA5AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_24B8E8B60(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_24BAAA5AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_24B8E8CA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0634B0);
  v2 = *v0;
  v3 = sub_24BAAA5AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24B8E8E08(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_24BAAA5AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        *(*(v5 + 48) + 8 * (v15 | (v9 << 6))) = *(*(v3 + 48) + 8 * (v15 | (v9 << 6)));
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}