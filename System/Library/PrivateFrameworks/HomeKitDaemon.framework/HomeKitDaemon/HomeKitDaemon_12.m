uint64_t sub_229666968(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v8 = sub_22A4DD07C();
  __swift_project_value_buffer(v8, qword_281401F78);
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_229538000, v9, v10, "Updating mobile asset started", v11, 2u);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_22A4DD9DC();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;
    v15[5] = a2;
    v15[6] = v13;

    sub_22957F3C0(0, 0, v7, &unk_22A57BCB8, v15);
  }

  else
  {
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_229538000, v17, v18, "Self deallocated, no work to do", v19, 2u);
      MEMORY[0x22AAD4E50](v19, -1, -1);
    }

    return a1(1);
  }
}

uint64_t sub_229666BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_229666C8C;

  return sub_22965F140(0, 0, 1);
}

uint64_t sub_229666C8C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_229666E08;
  }

  else
  {
    v3 = sub_229666DA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229666DA0()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229666E08()
{
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_281401F78);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_229538000, v4, v5, "Updating mobile assets failed: %@, will try again later", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 24);
  (*(v0 + 16))(1);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_229666FBC(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_2296695FC, v5);
}

BOOL sub_229667050(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v8 = *(a2 + 8);
      }

      else
      {
        v8 = 0;
      }

      return (v8 & 1) != 0;
    }

    v5 = v3 == 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
  }

  return (v7 & 1) != 0;
}

void sub_2296670B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = [*(a1 + 168) managedObjectContext];
  v10 = [objc_opt_self() fetchRequest];
  sub_229562F68(0, &unk_281401B28, off_2786663B0);
  v11 = sub_22A4DDE7C();

  if (!v2)
  {
    if (v11 >> 62)
    {
      if (sub_22A4DE0EC())
      {
        goto LABEL_4;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x22AAD13F0](0, v11);
      }

      else
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v12 = *(v11 + 32);
      }

      v13 = v12;

      v14 = [v13 mobileAssetUpdateInfo];
      if (v14)
      {
        v15 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        v16 = sub_22A4DD49C();

        sub_2296A9A44(v16, a2);
        return;
      }

      goto LABEL_12;
    }

LABEL_12:
    v17 = sub_22A4DB74C();
    v18 = *(*(v17 - 8) + 56);
    v18(v8, 1, 1, v17);
    v18(a2, 1, 1, v17);
    v19 = a2 + *(_s21MobileAssetUpdateInfoVMa() + 20);
    sub_2296690E8(v8, a2);
    *v19 = 0;
    *(v19 + 8) = 1;
  }
}

uint64_t sub_229667330(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_229667354, v2, 0);
}

uint64_t sub_229667354()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = *(v2 + 168);
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;

  return MEMORY[0x2822009F8](sub_229667400, 0, 0);
}

uint64_t sub_229667400()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[7] = v3;
  v3[2] = v2;
  v3[3] = sub_229669408;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_229667508;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_229586C80, v3, v6);
}

uint64_t sub_229667508()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_229667638;
    v5 = 0;
  }

  else
  {
    v6 = v2[6];
    v7 = v2[7];
    v8 = v2[4];

    v4 = sub_229566EE4;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_229667638()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];

  return MEMORY[0x2822009F8](sub_2296676AC, v3, 0);
}

void sub_2296676C4(uint64_t a1, void (*a2)(char *))
{
  updated = _s21MobileAssetUpdateInfoVMa();
  v6 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(a1 + 168) managedObjectContext];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 fetchRequest];
  sub_229562F68(0, &unk_281401B28, off_2786663B0);
  v13 = sub_22A4DDE7C();

  if (v2)
  {

    return;
  }

  if (v13 >> 62)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_5;
    }

LABEL_10:

    v15 = [objc_allocWithZone(MKFLocalSettings) initWithContext_];

    goto LABEL_11;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x22AAD13F0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

LABEL_11:
  v16 = [v15 mobileAssetUpdateInfo];
  if (v16)
  {
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v18 = sub_22A4DD49C();

    v19 = v18;
  }

  else
  {
    v19 = sub_22956AC5C(MEMORY[0x277D84F90]);
  }

  sub_2296A9A44(v19, v8);
  a2(v8);
  sub_2296A9D18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v20 = sub_22A4DD47C();

  [v15 setMobileAssetUpdateInfo_];

  sub_2297082C0();
  sub_22966908C(v8);
}

uint64_t sub_229667994(uint64_t a1, uint64_t a2)
{
  sub_22953EAE4(a1, &unk_27D881AA0, &qword_22A57BC20);
  v4 = sub_22A4DB74C();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a1, a2, v4);
  v5 = *(v7 + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_229667A60(uint64_t a1)
{
  sub_22953EAE4(a1, &unk_27D881AA0, &qword_22A57BC20);
  v2 = sub_22A4DB74C();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = _s21MobileAssetUpdateInfoVMa();
  v4 = a1 + *(result + 20);
  *v4 = 0;
  *(v4 + 8) = 1;
  return result;
}

HMDMobileAssetManagerFactory __swiftcall HMDMobileAssetManagerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_229667CFC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22A4DE5BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D228, &qword_22A578170);
        v5 = sub_22A4DD86C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_229667F58(v7, v8, a1, v4);
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
    return sub_229667E04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_229667E04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v24 = a3;
    v7 = v6;
    v8 = v5;
    while (1)
    {
      sub_22957F1C4(v8, &v21);
      sub_22957F1C4(v8 - 40, v18);
      v9 = v22;
      v10 = v23;
      __swift_project_boxed_opaque_existential_0(&v21, v22);
      v11 = sub_2297B96F4(v9, v10);
      v12 = v19;
      v13 = v20;
      __swift_project_boxed_opaque_existential_0(v18, v19);
      v14 = sub_2297B96F4(v12, v13);
      __swift_destroy_boxed_opaque_existential_0(v18);
      result = __swift_destroy_boxed_opaque_existential_0(&v21);
      if (v14 >= v11)
      {
LABEL_4:
        a3 = v24 + 1;
        v5 += 40;
        --v6;
        if (v24 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_229557188(v8, &v21);
      v15 = *(v8 - 24);
      *v8 = *(v8 - 40);
      *(v8 + 16) = v15;
      *(v8 + 32) = *(v8 - 8);
      result = sub_229557188(&v21, v8 - 40);
      v8 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_229667F58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v106 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *v106;
    if (!*v106)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_229668AF0(v8);
      v8 = result;
    }

    v118 = v8;
    v95 = *(v8 + 16);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = *(v8 + 16 * v95);
        v97 = v8;
        v98 = *(v8 + 16 * (v95 - 1) + 32);
        v8 = *(v8 + 16 * (v95 - 1) + 40);
        sub_2296686E8((*a3 + 40 * v96), (*a3 + 40 * v98), *a3 + 40 * v8, v7);
        if (v5)
        {
        }

        if (v8 < v96)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_229668AF0(v97);
        }

        if (v95 - 2 >= *(v97 + 2))
        {
          goto LABEL_116;
        }

        v99 = &v97[16 * v95];
        *v99 = v96;
        *(v99 + 1) = v8;
        v118 = v97;
        result = sub_229668A64(v95 - 1);
        v8 = v118;
        v95 = *(v118 + 16);
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v20 = v7 + 1;
    }

    else
    {
      v110 = v6;
      v102 = v5;
      v10 = *a3;
      sub_22957F1C4(*a3 + 40 * (v7 + 1), &v115);
      v11 = 40 * v7;
      v12 = v10 + 40 * v7;
      sub_22957F1C4(v12, v112);
      v13 = v116;
      v14 = v117;
      __swift_project_boxed_opaque_existential_0(&v115, v116);
      v107 = sub_2297B96F4(v13, v14);
      v15 = v113;
      v16 = v114;
      __swift_project_boxed_opaque_existential_0(v112, v113);
      v17 = sub_2297B96F4(v15, v16);
      __swift_destroy_boxed_opaque_existential_0(v112);
      result = __swift_destroy_boxed_opaque_existential_0(&v115);
      v104 = v7;
      v18 = v7 + 2;
      v19 = v12 + 80;
      while (1)
      {
        v20 = v110;
        if (v110 == v18)
        {
          break;
        }

        sub_22957F1C4(v19, &v115);
        sub_22957F1C4(v19 - 40, v112);
        v21 = v116;
        v22 = v117;
        __swift_project_boxed_opaque_existential_0(&v115, v116);
        v23 = sub_2297B96F4(v21, v22);
        v24 = v113;
        v7 = v114;
        __swift_project_boxed_opaque_existential_0(v112, v113);
        v25 = sub_2297B96F4(v24, v7);
        __swift_destroy_boxed_opaque_existential_0(v112);
        result = __swift_destroy_boxed_opaque_existential_0(&v115);
        ++v18;
        v19 += 40;
        if (v17 < v107 == v25 >= v23)
        {
          v20 = v18 - 1;
          break;
        }
      }

      v5 = v102;
      v9 = v104;
      if (v17 < v107)
      {
        if (v20 < v104)
        {
          goto LABEL_119;
        }

        if (v104 < v20)
        {
          v26 = v8;
          v27 = 40 * v20 - 40;
          v28 = v20;
          v29 = v20;
          do
          {
            if (v9 != --v29)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v30 = v33 + v11;
              v7 = v33 + v27;
              sub_229557188((v33 + v11), &v115);
              v31 = *(v7 + 32);
              v32 = *(v7 + 16);
              *v30 = *v7;
              *(v30 + 16) = v32;
              *(v30 + 32) = v31;
              result = sub_229557188(&v115, v7);
            }

            ++v9;
            v27 -= 40;
            v11 += 40;
          }

          while (v9 < v29);
          v8 = v26;
          v9 = v104;
          v20 = v28;
        }
      }
    }

    v34 = a3[1];
    if (v20 < v34)
    {
      if (__OFSUB__(v20, v9))
      {
        goto LABEL_118;
      }

      if (v20 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 >= v34)
        {
          v7 = a3[1];
        }

        else
        {
          v7 = v9 + a4;
        }

        if (v7 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v20 != v7)
        {
          break;
        }
      }
    }

    v7 = v20;
    if (v20 < v9)
    {
      goto LABEL_117;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22958A414(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v36 = *(v8 + 16);
    v35 = *(v8 + 24);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_22958A414((v35 > 1), v36 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 16 * v36;
    *(v38 + 32) = v9;
    *(v38 + 40) = v7;
    v39 = *v106;
    if (!*v106)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v8 + 32);
          v42 = *(v8 + 40);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_48:
          if (v44)
          {
            goto LABEL_106;
          }

          v57 = (v8 + 16 * v37);
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_109;
          }

          v63 = (v8 + 32 + 16 * v40);
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_113;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v67 = (v8 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_62:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = v8 + 16 * v40;
        v72 = *(v70 + 32);
        v71 = *(v70 + 40);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_111;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_69:
        v78 = v40 - 1;
        if (v40 - 1 >= v37)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = *(v8 + 32 + 16 * v78);
        v80 = *(v8 + 32 + 16 * v40 + 8);
        sub_2296686E8((*a3 + 40 * v79), (*a3 + 40 * *(v8 + 32 + 16 * v40)), *a3 + 40 * v80, v39);
        if (v5)
        {
        }

        if (v80 < v79)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_229668AF0(v8);
        }

        if (v78 >= *(v8 + 16))
        {
          goto LABEL_103;
        }

        v81 = v8 + 16 * v78;
        *(v81 + 32) = v79;
        *(v81 + 40) = v80;
        v118 = v8;
        result = sub_229668A64(v40);
        v8 = v118;
        v37 = *(v118 + 16);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = v8 + 32 + 16 * v37;
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_104;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_105;
      }

      v52 = (v8 + 16 * v37);
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_107;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_110;
      }

      if (v56 >= v48)
      {
        v74 = (v8 + 32 + 16 * v40);
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_114;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v100 = v8;
  v103 = v5;
  v105 = v9;
  v82 = *a3;
  v83 = *a3 + 40 * v20;
  v84 = v9 - v20;
  v108 = v7;
LABEL_81:
  v111 = v20;
  v85 = v84;
  v86 = v83;
  while (1)
  {
    sub_22957F1C4(v86, &v115);
    sub_22957F1C4(v86 - 40, v112);
    v87 = v116;
    v88 = v117;
    __swift_project_boxed_opaque_existential_0(&v115, v116);
    v89 = sub_2297B96F4(v87, v88);
    v90 = v113;
    v91 = v114;
    __swift_project_boxed_opaque_existential_0(v112, v113);
    v92 = sub_2297B96F4(v90, v91);
    __swift_destroy_boxed_opaque_existential_0(v112);
    result = __swift_destroy_boxed_opaque_existential_0(&v115);
    if (v92 >= v89)
    {
LABEL_80:
      v20 = v111 + 1;
      v83 += 40;
      --v84;
      v7 = v108;
      if (v111 + 1 != v108)
      {
        goto LABEL_81;
      }

      v5 = v103;
      v9 = v105;
      v8 = v100;
      if (v108 < v105)
      {
        goto LABEL_117;
      }

      goto LABEL_29;
    }

    if (!v82)
    {
      break;
    }

    sub_229557188(v86, &v115);
    v93 = *(v86 - 24);
    *v86 = *(v86 - 40);
    *(v86 + 16) = v93;
    *(v86 + 32) = *(v86 - 8);
    sub_229557188(&v115, v86 - 40);
    v86 -= 40;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_80;
    }
  }

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
  return result;
}

uint64_t sub_2296686E8(char *__src, char *a2, unint64_t a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 40;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 40;
  v49 = __dst;
  if (v8 >= v10)
  {
    v13 = __dst;
    if (__dst != a2 || &a2[40 * v10] <= __dst)
    {
      memmove(__dst, a2, 40 * v10);
    }

    v12 = &v13[40 * v10];
    if (v9 < 40 || v5 <= v6)
    {
      v24 = v5;
      goto LABEL_35;
    }

    while (1)
    {
      __dsta = v5;
      v25 = (v5 - 40);
      v26 = (v12 - 40);
      v4 -= 40;
      while (1)
      {
        v12 = (v26 + 40);
        v29 = (v4 + 40);
        sub_22957F1C4(v26, v46);
        v5 = v25;
        sub_22957F1C4(v25, v43);
        v30 = v47;
        v31 = v48;
        __swift_project_boxed_opaque_existential_0(v46, v47);
        v32 = sub_2297B96F4(v30, v31);
        v34 = v44;
        v33 = v45;
        __swift_project_boxed_opaque_existential_0(v43, v44);
        v35 = sub_2297B96F4(v34, v33);
        __swift_destroy_boxed_opaque_existential_0(v43);
        __swift_destroy_boxed_opaque_existential_0(v46);
        if (v35 < v32)
        {
          break;
        }

        v13 = v49;
        if (v29 != v12)
        {
          v36 = *v26;
          v37 = *(v26 + 16);
          *(v4 + 32) = *(v26 + 32);
          *v4 = v36;
          *(v4 + 16) = v37;
        }

        v27 = v26 - 40;
        v4 -= 40;
        v28 = v26 > v13;
        v26 -= 40;
        v25 = v5;
        if (!v28)
        {
          v12 = (v27 + 40);
          v24 = __dsta;
          goto LABEL_35;
        }
      }

      v13 = v49;
      v24 = v5;
      if (v29 != __dsta)
      {
        v38 = *v5;
        v39 = *(v5 + 1);
        *(v4 + 32) = *(v5 + 4);
        *v4 = v38;
        *(v4 + 16) = v39;
      }

      if (v12 <= v13 || v5 <= v6)
      {
        v12 = (v26 + 40);
        goto LABEL_35;
      }
    }
  }

  if (__dst != __src || &__src[40 * v8] <= __dst)
  {
    v11 = __dst;
    memmove(__dst, __src, 40 * v8);
    __dst = v11;
  }

  v12 = &__dst[40 * v8];
  if (v7 < 40 || v5 >= v4)
  {
    v24 = v6;
    v13 = v49;
    goto LABEL_35;
  }

  v13 = v49;
  do
  {
    sub_22957F1C4(v5, v46);
    sub_22957F1C4(v13, v43);
    v14 = v47;
    v15 = v48;
    __swift_project_boxed_opaque_existential_0(v46, v47);
    v16 = sub_2297B96F4(v14, v15);
    v17 = v44;
    v18 = v45;
    __swift_project_boxed_opaque_existential_0(v43, v44);
    v19 = sub_2297B96F4(v17, v18);
    __swift_destroy_boxed_opaque_existential_0(v43);
    __swift_destroy_boxed_opaque_existential_0(v46);
    if (v19 < v16)
    {
      v20 = v5;
      v21 = v6 == v5;
      v5 += 40;
      if (v21)
      {
        goto LABEL_14;
      }

LABEL_13:
      v22 = *v20;
      v23 = *(v20 + 1);
      *(v6 + 4) = *(v20 + 4);
      *v6 = v22;
      *(v6 + 1) = v23;
      goto LABEL_14;
    }

    v20 = v13;
    v21 = v6 == v13;
    v13 += 40;
    if (!v21)
    {
      goto LABEL_13;
    }

LABEL_14:
    v6 += 40;
  }

  while (v13 < v12 && v5 < v4);
  v24 = v6;
LABEL_35:
  v40 = (v12 - v13) / 40;
  if (v24 != v13 || v24 >= &v13[40 * v40])
  {
    memmove(v24, v13, 40 * v40);
  }

  return 1;
}

uint64_t sub_229668A64(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_229668AF0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_229668B04(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x22AAD4E70](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x22AAD4E70](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_229668B90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_229557188(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_229668C28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    sub_22957F1C4(v2, &v25);
    v4 = v26;
    v5 = v27;
    __swift_project_boxed_opaque_existential_0(&v25, v26);
    if (sub_2297B96F4(v4, v5) < 1 || (v6 = v26, v7 = v27, __swift_project_boxed_opaque_existential_0(&v25, v26), v8 = sub_2297B97D8(v6, v7), (v9 & 1) != 0) || v8 != 2)
    {
      __swift_destroy_boxed_opaque_existential_0(&v25);
    }

    else
    {
      sub_229557188(&v25, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22958383C(0, *(v3 + 16) + 1, 1);
        v3 = v28;
      }

      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22958383C((v11 > 1), v12 + 1, 1);
      }

      v13 = v23;
      v14 = v24;
      v15 = __swift_mutable_project_boxed_opaque_existential_0(v22, v23);
      v16 = *(*(v13 - 8) + 64);
      MEMORY[0x28223BE20](v15);
      v18 = &v22[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v18);
      sub_229668B90(v12, v18, &v28, v13, v14);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v3 = v28;
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

double sub_229668E2C()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = sub_22A4DD5AC();
  v2 = [v0 preferenceForKey_];

  v3 = [v2 numberValue];
  if (v3)
  {
    v4 = v3;
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 86400.0;
  }

  return v6;
}

uint64_t sub_229668F10(void *a1, uint64_t a2)
{
  v10[3] = &type metadata for DefaultMobileAssetManagerDataSource;
  v10[4] = &off_283CE7308;
  swift_defaultActor_initialize();
  *(a2 + 176) = 0;
  sub_22957F1C4(v10, a2 + 112);
  *(a2 + 168) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  *(a2 + 152) = [v4 defaultCenter];
  v6 = objc_allocWithZone(MEMORY[0x277CCA8B8]);
  v7 = sub_22A4DD5AC();
  v8 = [v6 initWithIdentifier_];

  __swift_destroy_boxed_opaque_existential_0(v10);
  *(a2 + 160) = v8;
  return a2;
}

uint64_t sub_22966901C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22966908C(uint64_t a1)
{
  updated = _s21MobileAssetUpdateInfoVMa();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_2296690E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_229669180(uint64_t a1, uint64_t a2)
{
  updated = _s21MobileAssetUpdateInfoVMa();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

unint64_t sub_2296691E4()
{
  result = qword_2814026C8;
  if (!qword_2814026C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814026C8);
  }

  return result;
}

uint64_t sub_229669238(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229666224(a1, v4, v5, v7, v6);
}

uint64_t sub_2296692F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229669368(uint64_t a1, uint64_t a2)
{
  updated = _s21MobileAssetUpdateInfoVMa();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_2296693CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = _s21MobileAssetUpdateInfoVMa();
  v5 = a1 + *(result + 20);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_229669428(uint64_t a1)
{
  v3 = *(sub_22A4DB74C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_229667994(a1, v4);
}

uint64_t sub_229669498(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_27Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  v4 = *(v2 + 32);

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_229669534(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22965E724(a1, v4, v5, v7);
}

uint64_t sub_229669610(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_229666BEC(a1, v4, v5, v6, v7);
}

uint64_t sub_2296696D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_229663F04(v2, v3);
}

uint64_t sub_229669784()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_229569B30;

  return sub_2296633C0(v2, v3, v5, v4);
}

uint64_t sub_229669848(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229631318(a1, v4, v5, v7);
}

uint64_t sub_229669914()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_229662B14(v2, v3);
}

uint64_t sub_2296699C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_229662440(v2, v3);
}

uint64_t objectdestroy_69Tm()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229669AAC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_22965E178(v2, v3);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MobileAssetManager.ManagerError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MobileAssetManager.ManagerError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_229669BBC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_229669BD8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_229669C18()
{
  result = qword_27D87E3D0;
  if (!qword_27D87E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E3D0);
  }

  return result;
}

unint64_t sub_229669C78(void *a1)
{
  a1[1] = sub_229669CB0();
  a1[2] = sub_229669D04();
  result = sub_229669D58();
  a1[3] = result;
  return result;
}

unint64_t sub_229669CB0()
{
  result = qword_27D87E3D8;
  if (!qword_27D87E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E3D8);
  }

  return result;
}

unint64_t sub_229669D04()
{
  result = qword_27D87E3E0;
  if (!qword_27D87E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E3E0);
  }

  return result;
}

unint64_t sub_229669D58()
{
  result = qword_27D87E3E8;
  if (!qword_27D87E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E3E8);
  }

  return result;
}

uint64_t sub_229669DDC()
{
  sub_229669E48(v0 + 24);
  v1 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return swift_deallocClassInstance();
}

void sub_229669FAC(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_messageDispatcher);
  *(v2 + OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_messageDispatcher) = a1;
  v5 = a1;

  v6 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_remoteEventRouterClientController);
  *(v2 + OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_remoteEventRouterClientController) = a2;
  v7 = a2;

  v8 = [objc_opt_self() policyWithEntitlements_];
  v9 = *MEMORY[0x277CCEB08];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22A576190;
  *(v10 + 32) = v8;
  sub_22960A928();
  v11 = v8;
  v12 = sub_22A4DD81C();

  [v5 registerForMessage:v9 receiver:v2 policies:v12 selector:sel_handleFetchWithMessage_];
}

void sub_22966A0E8(void *a1)
{
  v3 = [a1 messagePayload];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v5 = sub_22A4DD49C();

  v6 = *MEMORY[0x277CCEB10];
  v7 = sub_22A4DD5EC();
  if (!*(v5 + 16))
  {

    goto LABEL_8;
  }

  v9 = v1;
  v10 = sub_229543DBC(v7, v8);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v10, aBlock);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v19 = [objc_opt_self() hmErrorWithCode_];
    v15 = sub_22A4DB3DC();

    [a1 respondWithError_];
    goto LABEL_10;
  }

  v13 = *(v9 + OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_remoteEventRouterClientController);
  if (v13)
  {
    v14 = v13;
    v15 = sub_22A4DD81C();

    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    aBlock[4] = sub_22966A65C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2295AAF60;
    aBlock[3] = &block_descriptor_12;
    v17 = _Block_copy(aBlock);
    v18 = a1;

    [v14 fetchWithFilters:v15 completion:v17];
    _Block_release(v17);

LABEL_10:
    return;
  }

  __break(1u);
}

void sub_22966A35C(void *a1, id a2)
{
  if (a1)
  {
    v4 = a1;
    v5 = sub_22A4DB3DC();
    [a2 respondWithError_];
  }

  else
  {

    [a2 respondWithSuccess];
  }
}

id sub_22966A48C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryInfoFetchController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccessoryInfoFetchController()
{
  result = qword_281402148;
  if (!qword_281402148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22966A5B4()
{
  result = sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22966A664()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

id sub_22966A6C0()
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA0, &qword_22A57A158);
  v1 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v95 = &v72 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v102 = &v72 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v72 - v10;
  v12 = sub_22A4DB7DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v78 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v86 = &v72 - v18;
  MEMORY[0x28223BE20](v17);
  v103 = &v72 - v19;
  v20 = type metadata accessor for NetworkDetectAccessory();
  v84 = *(v20 - 8);
  v85 = v20;
  v21 = *(v84 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v83 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v72 - v24;
  result = [v0 homes];
  if (result)
  {
    v27 = result;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v28 = sub_22A4DD83C();

    v104 = MEMORY[0x277D84F90];
    v76 = v28;
    if (v28 >> 62)
    {
      goto LABEL_46;
    }

    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_4:
      v75 = v28 & 0xC000000000000001;
      v74 = v28 & 0xFFFFFFFFFFFFFF8;
      v73 = v28 + 32;
      v92 = (v13 + 32);
      v81 = (v13 + 56);
      v101 = (v13 + 16);
      v80 = (v13 + 48);
      v93 = (v13 + 8);
      v94 = v11;
      v13 = 0;
      v82 = v25;
      v72 = v29;
      v79 = v7;
      while (1)
      {
        if (v75)
        {
          v30 = MEMORY[0x22AAD13F0](v13, v28);
        }

        else
        {
          if (v13 >= *(v74 + 16))
          {
            goto LABEL_45;
          }

          v30 = *(v73 + 8 * v13);
        }

        v90 = v30;
        if (__OFADD__(v13++, 1))
        {
          goto LABEL_44;
        }

        v77 = v13;
        v32 = [v90 appleMediaAccessories];
        sub_229562F68(0, &qword_281401920, off_278666038);
        v33 = sub_22A4DD83C();

        if (!(v33 >> 62))
        {
          v25 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            break;
          }

          goto LABEL_5;
        }

        v25 = sub_22A4DE0EC();
        if (v25)
        {
          break;
        }

LABEL_5:
        v7 = MEMORY[0x277D84F90];
LABEL_6:

        sub_2296F0A74(v7);
        v13 = v77;
        v28 = v76;
        if (v77 == v72)
        {
          v71 = v104;
          goto LABEL_48;
        }
      }

      v13 = 0;
      v96 = v33 & 0xFFFFFFFFFFFFFF8;
      v97 = v33 & 0xC000000000000001;
      v7 = MEMORY[0x277D84F90];
      v34 = v95;
      v88 = v25;
      v89 = v33;
      while (1)
      {
        if (v97)
        {
          v35 = MEMORY[0x22AAD13F0](v13, v33);
        }

        else
        {
          if (v13 >= *(v96 + 16))
          {
            goto LABEL_43;
          }

          v35 = *(v33 + 8 * v13 + 32);
        }

        v36 = v35;
        v37 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          v29 = sub_22A4DE0EC();
          v28 = v76;
          if (!v29)
          {
            goto LABEL_47;
          }

          goto LABEL_4;
        }

        v38 = [v35 idsIdentifier];
        if (v38)
        {
          break;
        }

LABEL_15:
        ++v13;
        if (v37 == v25)
        {
          goto LABEL_6;
        }
      }

      v99 = (v13 + 1);
      v39 = v86;
      v40 = v38;
      sub_22A4DB79C();

      v41 = *v92;
      v42 = v12;
      (*v92)(v103, v39, v12);
      v43 = [v90 primaryResident];
      v91 = v41;
      if (v43 && (v44 = v43, v45 = [v43 messageAddress], v44, v45))
      {
        v46 = [v45 idsIdentifier];

        sub_22A4DB79C();
        v47 = 0;
      }

      else
      {
        v47 = 1;
      }

      v100 = v7;
      v48 = *v81;
      (*v81)(v11, v47, 1, v42);
      v49 = v102;
      v98 = *v101;
      v98(v102, v103, v42);
      v48(v49, 0, 1, v42);
      v50 = *(v87 + 48);
      sub_2295F2274(v11, v34);
      sub_2295F2274(v49, v34 + v50);
      v51 = *v80;
      if ((*v80)(v34, 1, v42) == 1)
      {
        sub_22953EAE4(v102, &unk_27D87D2A0, &unk_22A578BD0);
        v34 = v95;
        sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);
        v52 = v42;
        if (v51(v34 + v50, 1, v42) == 1)
        {
          sub_22953EAE4(v34, &unk_27D87D2A0, &unk_22A578BD0);
          v53 = 1;
LABEL_32:
          v58 = [v36 uuid];
          v59 = v83;
          sub_22A4DB79C();

          v60 = v85;
          v61 = v103;
          v98(&v59[*(v85 + 20)], v103, v52);
          v62 = [v36 identifier];
          v63 = sub_22A4DD5EC();
          v65 = v64;

          v12 = v52;
          (*v93)(v61, v52);
          v66 = &v59[*(v60 + 24)];
          *v66 = v63;
          v66[1] = v65;
          v59[*(v60 + 28)] = v53 & 1;
          v67 = v59;
          v68 = v82;
          sub_22966B7F0(v67, v82);
          v7 = v100;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_22958B1C8(0, v7[2] + 1, 1, v7);
          }

          v70 = v7[2];
          v69 = v7[3];
          v11 = v94;
          v34 = v95;
          if (v70 >= v69 >> 1)
          {
            v7 = sub_22958B1C8(v69 > 1, v70 + 1, 1, v7);
          }

          v7[2] = v70 + 1;
          sub_22966B7F0(v68, v7 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v70);
          v25 = v88;
          v33 = v89;
          v37 = v99;
          goto LABEL_15;
        }
      }

      else
      {
        v54 = v102;
        v55 = v79;
        sub_2295F2274(v34, v79);
        if (v51(v34 + v50, 1, v42) != 1)
        {
          v56 = v78;
          v91(v78, v34 + v50, v42);
          sub_2295B2378();
          v53 = sub_22A4DD58C();
          v57 = *v93;
          (*v93)(v56, v42);
          sub_22953EAE4(v54, &unk_27D87D2A0, &unk_22A578BD0);
          sub_22953EAE4(v94, &unk_27D87D2A0, &unk_22A578BD0);
          v57(v55, v42);
          sub_22953EAE4(v34, &unk_27D87D2A0, &unk_22A578BD0);
          v52 = v42;
          goto LABEL_32;
        }

        sub_22953EAE4(v54, &unk_27D87D2A0, &unk_22A578BD0);
        sub_22953EAE4(v94, &unk_27D87D2A0, &unk_22A578BD0);
        (*v93)(v55, v42);
        v52 = v42;
      }

      sub_22953EAE4(v34, &qword_27D87DBA0, &qword_22A57A158);
      v53 = 0;
      goto LABEL_32;
    }

LABEL_47:
    v71 = MEMORY[0x277D84F90];
LABEL_48:

    return v71;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22966B0E4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E410, &qword_22A57C000);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = sub_22A4DB77C();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_22966B764;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_229582E94;
  aBlock[3] = &block_descriptor_13;
  v12 = _Block_copy(aBlock);

  [a2 fetchSetupDiagnosticStateForAccessoryUUID:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_22966B2A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v7 = a1;
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8802C0, &qword_22A57C008);
  MEMORY[0x22AACEC10](&v7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E410, &qword_22A57C000);
  return sub_22A4DD8FC();
}

void *sub_22966B374()
{
  v0 = [objc_opt_self() driver];
  v1 = sub_2297B3744();

  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_229711EE0();

  return v2;
}

uint64_t sub_22966B3EC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22966B4B8, 0, 0);
}

uint64_t sub_22966B4B8()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_22966B5A8;
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000023, 0x800000022A58F260, sub_22966B75C, v1, v5);
}

uint64_t sub_22966B5A8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22966B6C0, 0, 0);
}

uint64_t sub_22966B6C0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_22A4DBA4C();
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_22966B764(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E410, &qword_22A57C000) - 8) + 80);

  return sub_22966B2A8(a1);
}

uint64_t sub_22966B7F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkDetectAccessory();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22966B854()
{
  v0 = [objc_opt_self() driver];
  v1 = sub_2297B3744();

  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *&v1[OBJC_IVAR___HMDDiscoveryController_visibleSFDevices];

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = sub_229714F44(*(v3 + 16), 0);
  v6 = *(sub_22A4DBB4C() - 8);
  v7 = sub_22971528C(&v9, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80))), v4, v3);
  result = sub_22953EE84();
  if (v7 == v4)
  {

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22966B9A0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v37 = MEMORY[0x277D84F90];
    sub_229583334(0, v4, 0);
    v36 = v37;
    v6 = v3 + 56;
    v7 = -1 << *(v3 + 32);
    result = sub_22A4DE04C();
    v8 = result;
    v9 = 0;
    v29 = v3 + 64;
    v30 = v4;
    v31 = v3 + 56;
    v32 = v3;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v3 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v33 = v9;
      v35 = *(v3 + 36);
      v12 = (*(v3 + 48) + 16 * v8);
      v13 = *v12;
      v14 = v12[1];
      sub_22956C148(*v12, v14);
      v34 = v2;
      sub_22966BC74(v13, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      sub_229590C00(&qword_281401CA8, &qword_27D87E400, "ll\b");
      v15 = sub_22A4DD50C();
      v17 = v16;

      result = sub_2295798D4(v13, v14);
      v18 = v36;
      v20 = *(v36 + 16);
      v19 = *(v36 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_229583334((v19 > 1), v20 + 1, 1);
        v18 = v36;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v15;
      *(v21 + 40) = v17;
      v3 = v32;
      v10 = 1 << *(v32 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v6 = v31;
      v22 = *(v31 + 8 * v11);
      if ((v22 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v36 = v18;
      if (v35 != *(v32 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v8 & 0x3F));
      if (v23)
      {
        v10 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v2 = v34;
      }

      else
      {
        v24 = v11 << 6;
        v25 = v11 + 1;
        v26 = (v29 + 8 * v11);
        v2 = v34;
        while (v25 < (v10 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_22962F424(v8, v35, 0);
            v10 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_22962F424(v8, v35, 0);
      }

LABEL_4:
      v9 = v33 + 1;
      v8 = v10;
      if (v33 + 1 == v30)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22966BC74(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    sub_229583334(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v46;
    v30 = &v34 + v9;
    v32 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
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
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v33 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_22A4DB24C();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_22A4DB27C();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v19 = v30[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_22A4DB24C();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_22A4DB27C();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_22A576180;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_22A4DD61C();
      v46 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v29 = v21;
        v26 = v22;
        sub_229583334((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v32;
    }

    while (v11 != v5);
  }

LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_22966BFE8(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    v4 = 0xC000000000000000;
    v5 = MEMORY[0x277CC9318];
    v6 = MEMORY[0x277CC9300];
    while (1)
    {
      v19 = v2;
      v20 = v4;
      v17 = v5;
      v18 = v6;
      v15 = *v3;
      v16 = *v3;
      v7 = __swift_project_boxed_opaque_existential_0(&v16, v5);
      v8 = *v7;
      v9 = v7[1] >> 62;
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v11 = *(v8 + 16);
          v10 = *(v8 + 24);
          sub_22956C148(v15, *(&v15 + 1));
          sub_22956C148(v2, v4);
          if (sub_22A4DB24C() && __OFSUB__(v11, sub_22A4DB27C()))
          {
            goto LABEL_21;
          }

          if (__OFSUB__(v10, v11))
          {
            goto LABEL_20;
          }

LABEL_16:
          sub_22A4DB26C();
          sub_22A4DB5EC();
          sub_2295798D4(v2, v4);
          v6 = MEMORY[0x277CC9300];
          goto LABEL_4;
        }
      }

      else if (v9)
      {
        v12 = v8;
        if (v8 >> 32 < v8)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
        }

        sub_22956C148(v15, *(&v15 + 1));
        sub_22956C148(v2, v4);
        if (sub_22A4DB24C() && __OFSUB__(v12, sub_22A4DB27C()))
        {
          goto LABEL_22;
        }

        goto LABEL_16;
      }

      sub_22956C148(v15, *(&v15 + 1));
      sub_22A4DB5EC();
LABEL_4:
      __swift_destroy_boxed_opaque_existential_0(&v16);
      v2 = v19;
      v4 = v20;
      ++v3;
      if (!--v1)
      {
        goto LABEL_18;
      }
    }
  }

  v2 = 0;
LABEL_18:
  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t static AliroVersionUtilities.readAndSaveAliroVersionFromSESOnHomeManager(_:)(void *a1)
{
  v3 = a1[3];
  v4 = __swift_project_boxed_opaque_existential_0(a1, v3);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229569B30;

  return sub_229671DE8(v4, v1, v3);
}

uint64_t sub_22966C54C(uint64_t a1, uint64_t a2)
{
  v2[28] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E510, &qword_22A57C0B8);
  v2[29] = v3;
  v4 = *(v3 - 8);
  v2[30] = v4;
  v5 = *(v4 + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22966C618, 0, 0);
}

uint64_t sub_22966C618()
{
  sub_2295404B0(v0[28], (v0 + 18));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  if (swift_dynamicCast())
  {
    v2 = v0[30];
    v1 = v0[31];
    v3 = v0[29];
    v0[32] = v0[25];
    v8 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_22966C8B4;
    swift_continuation_init();
    v0[17] = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E518, &unk_22A57C0C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DD8DC();
    (*(v2 + 32))(boxed_opaque_existential_1, v1, v3);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22966D5C8;
    v0[13] = &block_descriptor_14;
    [v8 aliroCompatibilityManifestWithCompletion_];
    (*(v2 + 8))(boxed_opaque_existential_1, v3);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_22A4DBD3C();
    v5 = v0[31];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22966C8B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_22966D4D8;
  }

  else
  {
    v3 = sub_22966C9C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22966C9C4()
{
  v1 = *(v0 + 208);
  *(v0 + 272) = v1;
  if (v1)
  {
    sub_22A4DE1FC();

    v2 = [v1 description];
    v3 = sub_22A4DD5EC();
    v5 = v4;

    MEMORY[0x22AAD08C0](v3, v5);

    sub_22A4DBD0C();

    v6 = [v1 supportedExpeditedTransactionProtocolVersions];
    v75 = MEMORY[0x277D84F90];
    v71 = v1;
    v72 = v0;
    if (v6)
    {
      v7 = v6;
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      v8 = sub_22A4DD83C();

      if (v8 >> 62)
      {
        goto LABEL_19;
      }

      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        while (1)
        {
          v78 = MEMORY[0x277D84F90];
          v10 = sub_22958387C(0, v9 & ~(v9 >> 63), 0);
          if (v9 < 0)
          {
            break;
          }

          v18 = 0;
          v0 = v78;
          while (1)
          {
            v1 = (v18 + 1);
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if ((v8 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x22AAD13F0](v18, v8);
            }

            else
            {
              if (v18 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_18;
              }

              v19 = *(v8 + 8 * v18 + 32);
            }

            v20 = v19;
            v21 = sub_229672F78(v19);
            v23 = v22;

            v25 = *(v0 + 16);
            v24 = *(v0 + 24);
            v26 = v0;
            if (v25 >= v24 >> 1)
            {
              sub_22958387C((v24 > 1), v25 + 1, 1);
              v26 = v0;
            }

            *(v26 + 16) = v25 + 1;
            v27 = v26 + 16 * v25;
            *(v27 + 32) = v21;
            *(v27 + 40) = v23;
            ++v18;
            v0 = v26;
            if (v1 == v9)
            {
              v75 = v26;

              v1 = v71;
              v0 = v72;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          v9 = sub_22A4DE0EC();
          if (!v9)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_65;
      }

LABEL_20:

      v75 = MEMORY[0x277D84F90];
    }

LABEL_21:
    v29 = [v1 supportedBLEUWBProtocolVersions];
    v30 = MEMORY[0x277D84F90];
    if (v29)
    {
      v31 = v29;
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      v32 = sub_22A4DD83C();

      if (v32 >> 62)
      {
        goto LABEL_37;
      }

      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        while (1)
        {
          v10 = sub_22958387C(0, v33 & ~(v33 >> 63), 0);
          if (v33 < 0)
          {
            break;
          }

          v34 = 0;
          v35 = v32;
          v36 = v32 & 0xC000000000000001;
          v73 = v32 & 0xFFFFFFFFFFFFFF8;
          v76 = v32;
          while (1)
          {
            v1 = (v34 + 1);
            if (__OFADD__(v34, 1))
            {
              break;
            }

            if (v36)
            {
              v37 = MEMORY[0x22AAD13F0](v34, v35);
            }

            else
            {
              if (v34 >= *(v73 + 16))
              {
                goto LABEL_36;
              }

              v37 = *(v35 + 8 * v34 + 32);
            }

            v38 = v37;
            v39 = sub_229672F78(v37);
            v32 = v40;

            v42 = *(v30 + 16);
            v41 = *(v30 + 24);
            v0 = v42 + 1;
            if (v42 >= v41 >> 1)
            {
              sub_22958387C((v41 > 1), v42 + 1, 1);
            }

            *(v30 + 16) = v0;
            v43 = v30 + 16 * v42;
            *(v43 + 32) = v39;
            *(v43 + 40) = v32;
            ++v34;
            v35 = v76;
            if (v1 == v33)
            {

              v1 = v71;
              v0 = v72;
              goto LABEL_39;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          v33 = sub_22A4DE0EC();
          if (!v33)
          {
            goto LABEL_38;
          }
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_38:
    }

LABEL_39:
    v44 = [v1 supportedBLEAdvertisingVersions];
    v45 = MEMORY[0x277D84F90];
    if (v44)
    {
      v46 = v44;
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      v47 = sub_22A4DD83C();

      if (v47 >> 62)
      {
        goto LABEL_58;
      }

      for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
      {
        v10 = sub_22958387C(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          goto LABEL_66;
        }

        v49 = 0;
        v50 = v47;
        v0 = v47 & 0xC000000000000001;
        v74 = v47 & 0xFFFFFFFFFFFFFF8;
        v77 = v47;
        while (1)
        {
          v51 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (v0)
          {
            v52 = MEMORY[0x22AAD13F0](v49, v50);
          }

          else
          {
            if (v49 >= *(v74 + 16))
            {
              goto LABEL_57;
            }

            v52 = *(v50 + 8 * v49 + 32);
          }

          v53 = v52;
          v54 = sub_229672F78(v52);
          v56 = v55;

          v58 = *(v45 + 16);
          v57 = *(v45 + 24);
          v47 = v58 + 1;
          if (v58 >= v57 >> 1)
          {
            sub_22958387C((v57 > 1), v58 + 1, 1);
          }

          *(v45 + 16) = v47;
          v59 = v45 + 16 * v58;
          *(v59 + 32) = v54;
          *(v59 + 40) = v56;
          ++v49;
          v50 = v77;
          if (v51 == i)
          {

            v0 = v72;
            goto LABEL_60;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        ;
      }
    }

LABEL_60:
    v10 = [*(v0 + 256) backingStore];
    if (v10)
    {
      v63 = v10;
      v64 = *(v0 + 256);
      v65 = [v10 context];
      *(v0 + 280) = v65;

      v66 = swift_allocObject();
      *(v0 + 288) = v66;
      v66[2] = v65;
      v66[3] = v75;
      v66[4] = v30;
      v66[5] = v45;
      v66[6] = v64;
      v67 = v65;
      v68 = v64;
      v69 = swift_task_alloc();
      *(v0 + 296) = v69;
      v69[2] = v67;
      v69[3] = sub_229673944;
      v69[4] = v66;
      v70 = *(MEMORY[0x277D85A40] + 4);
      v10 = swift_task_alloc();
      *(v0 + 304) = v10;
      *v10 = v0;
      v10[1] = sub_22966D22C;
      v15 = sub_229586C80;
      v14 = 0x800000022A58A7E0;
      v17 = MEMORY[0x277D84F78] + 8;
      v11 = 0;
      v12 = 0;
      v13 = 0xD000000000000016;
      v16 = v69;

      return MEMORY[0x2822008A0](v10, v11, v12, v13, v14, v15, v16, v17);
    }

LABEL_67:
    __break(1u);
    return MEMORY[0x2822008A0](v10, v11, v12, v13, v14, v15, v16, v17);
  }

  v28 = *(v0 + 256);
  sub_22A4DBD3C();

  v60 = *(v0 + 248);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_22966D22C()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v8 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_22966D3C8;
  }

  else
  {
    v5 = *(v2 + 288);
    v6 = *(v2 + 296);

    v4 = sub_22966D350;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22966D350()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  v3 = *(v0 + 248);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22966D3C8()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[32];

  v6 = v0[39];
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000003BLL, 0x800000022A58F6A0);
  swift_getErrorValue();
  v7 = v0[22];
  v8 = v0[23];
  sub_22A4DE5EC();
  sub_22A4DBD3C();

  v9 = v0[31];

  v10 = v0[1];

  return v10();
}

uint64_t sub_22966D4D8()
{
  v1 = v0[32];
  v2 = v0[33];
  swift_willThrow();

  v3 = v0[33];
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000003BLL, 0x800000022A58F6A0);
  swift_getErrorValue();
  v4 = v0[22];
  v5 = v0[23];
  sub_22A4DE5EC();
  sub_22A4DBD3C();

  v6 = v0[31];

  v7 = v0[1];

  return v7();
}

void sub_22966D5C8(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E510, &qword_22A57C0B8);
    sub_22A4DD8EC();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E510, &qword_22A57C0B8);
    sub_22A4DD8FC();
  }
}

void sub_22966D670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = [a1 managedObjectContext];
  sub_229562F68(0, &unk_281401938, off_2786663A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = v9;
  v12 = [ObjCClassFromMetadata fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E500, &qword_22A57C0A0);
  v13 = sub_22A4DDE7C();

  if (v5)
  {

    return;
  }

  v61 = a2;
  v14 = sub_22986B134(v13);

  v62 = a3;
  v63 = a4;
  if (!v14)
  {
    goto LABEL_11;
  }

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!sub_22A4DE0EC())
  {
LABEL_10:

LABEL_11:
    v16 = [objc_allocWithZone(MKFLocalAliroVersion) initWithContext_];

LABEL_12:
    v69 = sub_22966BFE8(a2);
    v18 = v17;
    v66 = sub_22966BFE8(a3);
    v67 = v19;
    v60 = sub_22966BFE8(v63);
    v64 = v20;
    v21 = [v16 expeditedTransactionSupportedVersions];
    if (v21)
    {
      v22 = v21;
      v23 = sub_22A4DB62C();
      v25 = v24;

      if (v25 >> 60 != 15)
      {
        if (v18 >> 60 != 15)
        {
          sub_22956C148(v69, v18);
          sub_22956C148(v69, v18);
          sub_2295AEF1C(v23, v25);
          v26 = sub_2297B7550(v23, v25, v69, v18);
          sub_229590D18(v69, v18);
          sub_2295798D4(v69, v18);
          sub_229590D18(v23, v25);
          sub_229590D18(v23, v25);
          if ((v26 & 1) == 0)
          {
            goto LABEL_41;
          }

LABEL_20:
          v27 = [v16 bleUWBSupportedVersions];
          if (v27)
          {
            v28 = v27;
            v29 = sub_22A4DB62C();
            v31 = v30;

            if (v31 >> 60 != 15)
            {
              if (v67 >> 60 != 15)
              {
                sub_22956C148(v66, v67);
                sub_22956C148(v66, v67);
                sub_2295AEF1C(v29, v31);
                v32 = sub_2297B7550(v29, v31, v66, v67);
                sub_229590D18(v66, v67);
                sub_2295798D4(v66, v67);
                sub_229590D18(v29, v31);
                sub_229590D18(v29, v31);
                if ((v32 & 1) == 0)
                {
                  goto LABEL_41;
                }

LABEL_29:
                v35 = [v16 bleAdvertisingVersions];
                if (v35)
                {
                  v36 = v35;
                  v37 = sub_22A4DB62C();
                  v39 = v38;

                  if (v39 >> 60 != 15)
                  {
                    v40 = v64;
                    if (v64 >> 60 != 15)
                    {
                      sub_22956C148(v60, v64);
                      sub_22956C148(v60, v64);
                      sub_2295AEF1C(v37, v39);
                      v41 = sub_2297B7550(v37, v39, v60, v64);
                      sub_229590D18(v60, v64);
                      sub_2295798D4(v60, v64);
                      sub_229590D18(v37, v39);
                      sub_229590D18(v37, v39);
                      if ((v41 & 1) == 0)
                      {
                        goto LABEL_41;
                      }

LABEL_38:
                      sub_22A4DBD0C();
                      sub_2295798D4(v60, v64);
                      v42 = v66;
                      v43 = v67;
LABEL_43:
                      sub_2295798D4(v42, v43);
                      sub_2295798D4(v69, v18);

                      return;
                    }

LABEL_39:
                    sub_22956C148(v60, v40);
                    sub_229590D18(v37, v39);
                    v33 = v60;
                    v34 = v40;
                    goto LABEL_40;
                  }
                }

                else
                {
                  v37 = 0;
                  v39 = 0xF000000000000000;
                }

                v40 = v64;
                if (v64 >> 60 == 15)
                {
                  sub_22956C148(v60, v64);
                  sub_229590D18(v37, v39);
                  goto LABEL_38;
                }

                goto LABEL_39;
              }

LABEL_34:
              sub_22956C148(v66, v67);
              sub_229590D18(v29, v31);
              v33 = v66;
              v34 = v67;
              goto LABEL_40;
            }
          }

          else
          {
            v29 = 0;
            v31 = 0xF000000000000000;
          }

          if (v67 >> 60 == 15)
          {
            sub_22956C148(v66, v67);
            sub_229590D18(v29, v31);
            goto LABEL_29;
          }

          goto LABEL_34;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v23 = 0;
      v25 = 0xF000000000000000;
    }

    if (v18 >> 60 == 15)
    {
      sub_22956C148(v69, v18);
      sub_229590D18(v23, v25);
      goto LABEL_20;
    }

LABEL_25:
    sub_22956C148(v69, v18);
    sub_229590D18(v23, v25);
    v33 = v69;
    v34 = v18;
LABEL_40:
    sub_229590D18(v33, v34);
LABEL_41:
    v44 = sub_22A4DB61C();
    [v16 setExpeditedTransactionSupportedVersions_];

    v45 = sub_22A4DB61C();
    [v16 setBleUWBSupportedVersions_];

    v46 = sub_22A4DB61C();
    [v16 setBleAdvertisingVersions_];

    sub_2297082C0();
    v59 = type metadata accessor for AliroVersion();
    v47 = objc_allocWithZone(v59);
    sub_22956C148(v69, v18);
    sub_22956C148(v66, v67);
    sub_22956C148(v60, v64);
    v48 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v69, v18);
    v49 = sub_2296725BC(v48);

    *&v47[OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions] = v49;
    v50 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v66, v67);
    v51 = sub_2296725BC(v50);

    *&v47[OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions] = v51;
    v52 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v60, v64);
    v53 = sub_2296725BC(v52);

    *&v47[OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions] = v53;
    v68.receiver = v47;
    v68.super_class = v59;
    v54 = objc_msgSendSuper2(&v68, sel_init);
    sub_2295798D4(v60, v64);
    sub_2295798D4(v66, v67);
    sub_2295798D4(v69, v18);
    [a5 setCurrentDeviceAliroVersion_];

    logAndPostNotification(@"HMDLocalAliroVersionDidChangeNotification", a5, 0);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000003CLL, 0x800000022A58F740);
    v55 = MEMORY[0x277CC9318];
    v56 = MEMORY[0x22AAD0A20](v61, MEMORY[0x277CC9318]);
    MEMORY[0x22AAD08C0](v56);

    MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A58F330);
    v57 = MEMORY[0x22AAD0A20](v62, v55);
    MEMORY[0x22AAD08C0](v57);

    MEMORY[0x22AAD08C0](0xD000000000000019, 0x800000022A58F780);
    v58 = MEMORY[0x22AAD0A20](v63, v55);
    MEMORY[0x22AAD08C0](v58);

    sub_22A4DBD0C();

    sub_2295798D4(v60, v64);
    v42 = v66;
    v43 = v67;
    goto LABEL_43;
  }

LABEL_5:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x22AAD13F0](0, v14);
    goto LABEL_8;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v14 + 32);
LABEL_8:
    v16 = v15;

    goto LABEL_12;
  }

  __break(1u);
}

id AliroVersion.__allocating_init(expeditedTransactionSupportedVersions:bleUWBSupportedVersions:bleAdvertisingVersions:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  v15 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(a1, a2);
  v16 = sub_2296725BC(v15);

  *&v14[OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions] = v16;
  v17 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(a3, a4);
  v18 = sub_2296725BC(v17);

  *&v14[OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions] = v18;
  v19 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(a5, a6);
  v20 = sub_2296725BC(v19);

  *&v14[OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions] = v20;
  v23.receiver = v14;
  v23.super_class = v7;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  sub_2295798D4(a5, a6);
  sub_2295798D4(a3, a4);
  sub_2295798D4(a1, a2);
  return v21;
}

uint64_t sub_22966E1B8(int a1, void *aBlock)
{
  v2[6] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v3 = v2[5];
  v4 = __swift_project_boxed_opaque_existential_0(v2 + 2, v3);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v6 = swift_task_alloc();
  v2[7] = v6;
  *v6 = v2;
  v6[1] = sub_22966E2B8;

  return sub_229671DE8(v4, ObjCClassMetadata, v3);
}

uint64_t sub_22966E2B8()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v3[2](v3);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t static AliroVersionUtilities.readAliroVersionIntoMemoryOnHomeManager(_:)(void *a1)
{
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_0(a1, v2);

  return sub_2296720CC(v3, v1, v2);
}

void sub_22966E420(uint64_t a1)
{
  sub_2295404B0(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  if (swift_dynamicCast())
  {
    v2 = v8;
    v3 = [v8 backingStore];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 context];

      MEMORY[0x28223BE20](v6);
      v7[2] = v5;
      v7[3] = v8;
      sub_2296D0418(sub_229673828, v7);
      if (v1)
      {

        v9[0] = 0;
        v9[1] = 0xE000000000000000;
        sub_22A4DE1FC();
        MEMORY[0x22AAD08C0](0xD00000000000002ALL, 0x800000022A58F5E0);
        swift_getErrorValue();
        sub_22A4DE5EC();
        sub_22A4DBD3C();
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_22A4DBD3C();
  }
}

void sub_22966E5E8(void *a1, void *a2)
{
  v4 = [a1 managedObjectContext];
  sub_229562F68(0, &unk_281401938, off_2786663A8);
  v5 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E500, &qword_22A57C0A0);
  v6 = sub_22A4DDE7C();
  if (v2)
  {

    return;
  }

  v7 = v6;

  v8 = sub_22986B134(v7);

  if (!v8)
  {
    goto LABEL_14;
  }

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_19:

    return;
  }

  if (!sub_22A4DE0EC())
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x22AAD13F0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 expeditedTransactionSupportedVersions];
  if (!v11)
  {

LABEL_14:
    return;
  }

  v12 = v11;
  v13 = sub_22A4DB62C();
  v43 = v14;

  v15 = [v10 bleUWBSupportedVersions];
  if (v15)
  {
    v16 = v15;
    v17 = sub_22A4DB62C();
    v41 = v18;

    v19 = [v10 bleAdvertisingVersions];
    if (v19)
    {
      v20 = v19;
      v21 = sub_22A4DB62C();
      v23 = v22;
      v40 = v22;

      v36.super_class = type metadata accessor for AliroVersion();
      v39 = v17;
      v36.receiver = objc_allocWithZone(v36.super_class);
      v37 = v13;
      sub_22956C148(v13, v43);
      sub_22956C148(v17, v41);
      v38 = v10;
      sub_22956C148(v21, v23);
      v24 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v13, v43);
      v25 = sub_2296725BC(v24);

      *(v36.receiver + OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions) = v25;
      v26 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v17, v41);
      v27 = sub_2296725BC(v26);

      *(v36.receiver + OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions) = v27;
      v28 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v21, v40);
      v29 = sub_2296725BC(v28);

      *(v36.receiver + OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions) = v29;
      v42 = v36;
      v30 = objc_msgSendSuper2(&v42, sel_init);
      sub_2295798D4(v21, v40);
      sub_2295798D4(v39, v41);
      v31 = v43;
      sub_2295798D4(v37, v43);
      [a2 setCurrentDeviceAliroVersion_];
      sub_22A4DE1FC();

      v32 = [v30 description];
      v33 = sub_22A4DD5EC();
      v35 = v34;

      MEMORY[0x22AAD08C0](v33, v35);

      sub_22A4DBD0C();

      sub_2295798D4(v21, v40);
      sub_2295798D4(v39, v41);
      sub_2295798D4(v37, v31);

      return;
    }

    sub_2295798D4(v17, v41);
  }

  else
  {
  }

  sub_2295798D4(v13, v43);
}

id AliroVersionUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AliroVersionUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AliroVersion.init(expeditedTransactionSupportedVersions:bleUWBSupportedVersions:bleAdvertisingVersions:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v13 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(a1, a2);
  v14 = sub_2296725BC(v13);

  *&v6[OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions] = v14;
  v15 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(a3, a4);
  v16 = sub_2296725BC(v15);

  *&v6[OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions] = v16;
  v17 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(a5, a6);
  v18 = sub_2296725BC(v17);

  *&v6[OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions] = v18;
  v21.receiver = v6;
  v21.super_class = type metadata accessor for AliroVersion();
  v19 = objc_msgSendSuper2(&v21, sel_init);
  sub_2295798D4(a5, a6);
  sub_2295798D4(a3, a4);
  sub_2295798D4(a1, a2);
  return v19;
}

uint64_t AliroVersion.isCompatibleWith(version:includeUWBCompatibility:)(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions);
  v6 = *(a1 + OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions);

  v7 = sub_22966FE3C(v6, v5, sub_229670474, sub_229670474);
  v8 = *(v2 + OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions);
  v9 = *(a1 + OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions);

  v10 = sub_22966FE3C(v9, v8, sub_229670474, sub_229670474);
  v11 = *(v2 + OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions);
  v12 = *(a1 + OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions);

  v13 = sub_22966FE3C(v12, v11, sub_229670474, sub_229670474);
  if (a2)
  {
    v14 = v13;
    v15 = v10[2];

    if (v15)
    {
      v16 = v14[2];

      v17 = v16 != 0;
    }

    else
    {

      v17 = 0;
    }
  }

  else
  {

    v17 = 1;
  }

  v18 = v7[2];

  return (v18 != 0) & v17;
}

uint64_t AliroVersion.description.getter()
{
  strcpy(v11, "AliroVersion(");
  HIWORD(v11[1]) = -4864;
  sub_22A4DE1FC();

  sub_22966B9A0(*(v0 + OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions));
  v1 = MEMORY[0x22AAD0A20]();
  v3 = v2;

  MEMORY[0x22AAD08C0](v1, v3);

  MEMORY[0x22AAD08C0](0xD000000000000027, 0x800000022A58F2E0);

  sub_22A4DE1FC();

  sub_22966B9A0(*(v0 + OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions));
  v4 = MEMORY[0x22AAD0A20]();
  v6 = v5;

  MEMORY[0x22AAD08C0](v4, v6);

  MEMORY[0x22AAD08C0](0xD00000000000001ALL, 0x800000022A58F310);

  sub_22A4DE1FC();

  sub_22966B9A0(*(v0 + OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions));
  v7 = MEMORY[0x22AAD0A20]();
  v9 = v8;

  MEMORY[0x22AAD08C0](v7, v9);

  MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A58F330);

  return v11[0];
}

id AliroVersion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_22966F2B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22966F360(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CED8, &qword_22A57C0E0);
  result = sub_22A4DE1CC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_22A4DE77C();

    sub_22A4DD6BC();
    result = sub_22A4DE7BC();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22966F584(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CFD0, &unk_22A57C090);
  result = sub_22A4DE1CC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_22A4DE77C();
    sub_22956C148(v17, v18);
    sub_22A4DB63C();
    result = sub_22A4DE7BC();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22966F7C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_22A4DB7DC();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF40, &qword_22A577D70);
  result = sub_22A4DE1CC();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_229673710(&qword_281403880, MEMORY[0x277CC95F0]);
    result = sub_22A4DD4EC();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22966FB38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_22A4DE1CC();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_22A4DDECC();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_22966FD24(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_22966FDBC(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_22966FE3C(a1, a2, sub_229670098, sub_229670098);
}

void *sub_22966FE3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v13 = sub_22966FD24(v16, v10, a2, a1, a4);

    MEMORY[0x22AAD4E50](v16, -1, -1);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void *sub_229670018(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_22966FE3C(a1, a2, sub_2296719F4, sub_2296719F4);
}

uint64_t sub_229670098(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_22A4DE77C();

      sub_22A4DD6BC();
      v27 = sub_22A4DE7BC();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_22A4DE60C() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_22966F360(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_22A4DE77C();

      sub_22A4DD6BC();
      v41 = sub_22A4DE7BC();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_22A4DE60C() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_229670474(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v238 = *MEMORY[0x277D85DE8];
  if (*(a4 + 16) < *(a3 + 16))
  {
    v214 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v229 = a3 + 56;
    v189 = v11;
    v195 = a4 + 56;
    while (1)
    {
      if (v10)
      {
        v12 = __clz(__rbit64(v10));
        v212 = (v10 - 1) & v10;
      }

      else
      {
        v13 = v6;
        do
        {
          v6 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_325;
          }

          if (v6 >= v11)
          {
LABEL_323:

            sub_22966F584(a1, a2, v214, v5);
            v177 = *MEMORY[0x277D85DE8];
            return;
          }

          v14 = *(v7 + 8 * v6);
          ++v13;
        }

        while (!v14);
        v12 = __clz(__rbit64(v14));
        v212 = (v14 - 1) & v14;
      }

      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_22A4DE77C();
      sub_22956C148(v17, v16);
      v225 = v17;
      v227 = v16;
      sub_22A4DB63C();
      v19 = sub_22A4DE7BC();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v229 + 8 * (v21 >> 6))) == 0)
      {
LABEL_6:
        sub_2295798D4(v225, v227);
        v4 = a4;
        v11 = v189;
        v7 = v195;
        v10 = v212;
        continue;
      }

      v24 = ~v20;
      v25 = v16 >> 62;
      if (v17)
      {
        v26 = 0;
      }

      else
      {
        v26 = v16 == 0xC000000000000000;
      }

      v27 = !v26;
      v222 = v27;
      v206 = HIDWORD(v17);
      v28 = __OFSUB__(HIDWORD(v17), v17);
      v216 = v28;
      v202 = (v17 >> 32) - v17;
      v204 = v17 >> 32;
      v217 = v24;
      v218 = v16 >> 62;
      while (1)
      {
        v29 = (*(v5 + 48) + 16 * v21);
        v31 = *v29;
        v30 = v29[1];
        v32 = v30 >> 62;
        if (v30 >> 62 == 3)
        {
          if (v31)
          {
            v33 = 0;
          }

          else
          {
            v33 = v30 == 0xC000000000000000;
          }

          v35 = !v33 || v25 < 3;
          if (((v35 | v222) & 1) == 0)
          {
            v88 = 0;
            v89 = 0xC000000000000000;
            goto LABEL_162;
          }

LABEL_49:
          v36 = 0;
          if (v25 <= 1)
          {
            goto LABEL_46;
          }

          goto LABEL_50;
        }

        if (v32 > 1)
        {
          if (v32 != 2)
          {
            goto LABEL_49;
          }

          v38 = *(v31 + 16);
          v37 = *(v31 + 24);
          v39 = __OFSUB__(v37, v38);
          v36 = v37 - v38;
          if (v39)
          {
            goto LABEL_332;
          }

          if (v25 <= 1)
          {
            goto LABEL_46;
          }
        }

        else if (v32)
        {
          LODWORD(v36) = HIDWORD(v31) - v31;
          if (__OFSUB__(HIDWORD(v31), v31))
          {
            goto LABEL_333;
          }

          v36 = v36;
          if (v25 <= 1)
          {
LABEL_46:
            v40 = BYTE6(v227);
            if (v25)
            {
              v40 = HIDWORD(v225) - v225;
              if (v216)
              {
                goto LABEL_329;
              }
            }

            goto LABEL_52;
          }
        }

        else
        {
          v36 = BYTE6(v30);
          if (v25 <= 1)
          {
            goto LABEL_46;
          }
        }

LABEL_50:
        if (v25 != 2)
        {
          if (!v36)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        v42 = *(v225 + 16);
        v41 = *(v225 + 24);
        v39 = __OFSUB__(v41, v42);
        v40 = v41 - v42;
        if (v39)
        {
          goto LABEL_328;
        }

LABEL_52:
        if (v36 != v40)
        {
          goto LABEL_26;
        }

        if (v36 < 1)
        {
          goto LABEL_161;
        }

        if (v32 > 1)
        {
          break;
        }

        if (v32)
        {
          if (v31 > v31 >> 32)
          {
            goto LABEL_335;
          }

          sub_22956C148(v31, v30);
          v52 = sub_22A4DB24C();
          if (v52)
          {
            v53 = v52;
            v54 = sub_22A4DB27C();
            if (__OFSUB__(v31, v54))
            {
              goto LABEL_339;
            }

            v198 = (v31 - v54 + v53);
          }

          else
          {
            v198 = 0;
          }

          sub_22A4DB26C();
          v25 = v218;
          v5 = a3;
          if (v218 == 2)
          {
            v179 = *(v225 + 24);
            v185 = *(v225 + 16);
            v61 = sub_22A4DB24C();
            if (v61)
            {
              v74 = sub_22A4DB27C();
              v75 = v185;
              if (__OFSUB__(v185, v74))
              {
                goto LABEL_368;
              }

              v61 += v185 - v74;
            }

            else
            {
              v75 = v185;
            }

            v85 = v179 - v75;
            if (__OFSUB__(v179, v75))
            {
              goto LABEL_358;
            }

            v86 = sub_22A4DB26C();
            if (v86 >= v85)
            {
              v82 = v85;
            }

            else
            {
              v82 = v86;
            }

            v83 = v198;
            if (!v198)
            {
              goto LABEL_393;
            }

            v5 = a3;
            if (!v61)
            {
              goto LABEL_395;
            }
          }

          else
          {
            if (v218 != 1)
            {
              v73 = v198;
              *__s1 = v225;
              __s1[4] = v206;
              *&__s1[5] = *(&v225 + 5);
              __s1[7] = HIBYTE(v225);
              *&__s1[8] = v227;
              *&__s1[12] = WORD2(v227);
              if (!v198)
              {
                goto LABEL_378;
              }

LABEL_115:
              v70 = memcmp(v73, __s1, BYTE6(v227));
              sub_2295798D4(v31, v30);
              v24 = v217;
              goto LABEL_116;
            }

            if (v204 < v225)
            {
              goto LABEL_357;
            }

            v62 = sub_22A4DB24C();
            if (v62)
            {
              v182 = v62;
              v63 = sub_22A4DB27C();
              if (__OFSUB__(v225, v63))
              {
                goto LABEL_369;
              }

              v61 = (v225 - v63 + v182);
            }

            else
            {
              v61 = 0;
            }

            v87 = sub_22A4DB26C();
            v82 = (v225 >> 32) - v225;
            if (v87 < v202)
            {
              v82 = v87;
            }

            v83 = v198;
            if (!v198)
            {
              goto LABEL_396;
            }

            if (!v61)
            {
              goto LABEL_394;
            }
          }

          goto LABEL_156;
        }

        *__s1 = v31;
        *&__s1[8] = v30;
        __s1[10] = BYTE2(v30);
        __s1[11] = BYTE3(v30);
        __s1[12] = BYTE4(v30);
        __s1[13] = BYTE5(v30);
        if (!v25)
        {
          goto LABEL_79;
        }

        if (v25 == 1)
        {
          if (v204 < v225)
          {
            goto LABEL_350;
          }

          sub_22956C148(v31, v30);
          v43 = sub_22A4DB24C();
          if (!v43)
          {
            goto LABEL_388;
          }

          v44 = v43;
          v45 = sub_22A4DB27C();
          if (__OFSUB__(v225, v45))
          {
            goto LABEL_354;
          }

          v46 = (v225 - v45 + v44);
          v47 = sub_22A4DB26C();
          if (!v46)
          {
            goto LABEL_381;
          }

          goto LABEL_102;
        }

        v200 = *(v225 + 16);
        v183 = *(v225 + 24);
        sub_22956C148(v31, v30);
        v55 = sub_22A4DB24C();
        if (v55)
        {
          v64 = sub_22A4DB27C();
          v65 = v200;
          if (__OFSUB__(v200, v64))
          {
            goto LABEL_364;
          }

          v55 = &v200[v55 - v64];
        }

        else
        {
          v65 = v200;
        }

        v76 = v183 - v65;
        if (__OFSUB__(v183, v65))
        {
          goto LABEL_351;
        }

        v77 = sub_22A4DB26C();
        if (!v55)
        {
          goto LABEL_380;
        }

LABEL_125:
        if (v77 >= v76)
        {
          v78 = v76;
        }

        else
        {
          v78 = v77;
        }

        v79 = memcmp(__s1, v55, v78);
        sub_2295798D4(v31, v30);
        v5 = a3;
LABEL_158:
        v24 = v217;
        v25 = v218;
        if (!v79)
        {
          goto LABEL_161;
        }

LABEL_26:
        v21 = (v21 + 1) & v24;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if ((*(v229 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
        {
          goto LABEL_6;
        }
      }

      if (v32 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v25)
        {
LABEL_79:
          __s2 = v225;
          v232 = v206;
          v233 = *(&v225 + 5);
          v234 = HIBYTE(v225);
          v235 = v227;
          v236 = WORD2(v227);
          v58 = memcmp(__s1, &__s2, BYTE6(v227));
          v24 = v217;
          if (!v58)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        if (v25 != 2)
        {
          if (v204 < v225)
          {
            goto LABEL_349;
          }

          sub_22956C148(v31, v30);
          v66 = sub_22A4DB24C();
          if (!v66)
          {
            goto LABEL_382;
          }

          v67 = v66;
          v68 = sub_22A4DB27C();
          if (__OFSUB__(v225, v68))
          {
            goto LABEL_355;
          }

          v46 = (v225 - v68 + v67);
          v47 = sub_22A4DB26C();
          if (!v46)
          {
            goto LABEL_383;
          }

LABEL_102:
          if (v47 >= v202)
          {
            v69 = (v225 >> 32) - v225;
          }

          else
          {
            v69 = v47;
          }

          v70 = memcmp(__s1, v46, v69);
          sub_2295798D4(v31, v30);
          v5 = a3;
          v24 = v217;
          v25 = v218;
LABEL_116:
          if (!v70)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        v199 = *(v225 + 16);
        v180 = *(v225 + 24);
        sub_22956C148(v31, v30);
        v55 = sub_22A4DB24C();
        if (v55)
        {
          v56 = sub_22A4DB27C();
          v57 = v199;
          if (__OFSUB__(v199, v56))
          {
            goto LABEL_365;
          }

          v55 = &v199[v55 - v56];
        }

        else
        {
          v57 = v199;
        }

        v76 = v180 - v57;
        if (__OFSUB__(v180, v57))
        {
          goto LABEL_352;
        }

        v77 = sub_22A4DB26C();
        if (!v55)
        {
          goto LABEL_377;
        }

        goto LABEL_125;
      }

      v48 = *(v31 + 16);
      sub_22956C148(v31, v30);
      v49 = sub_22A4DB24C();
      if (v49)
      {
        v50 = v49;
        v51 = sub_22A4DB27C();
        if (__OFSUB__(v48, v51))
        {
          goto LABEL_338;
        }

        v197 = (v48 - v51 + v50);
      }

      else
      {
        v197 = 0;
      }

      sub_22A4DB26C();
      v25 = v218;
      v5 = a3;
      if (v218 == 2)
      {
        v178 = *(v225 + 24);
        v184 = *(v225 + 16);
        v61 = sub_22A4DB24C();
        if (v61)
        {
          v71 = sub_22A4DB27C();
          v72 = v184;
          if (__OFSUB__(v184, v71))
          {
            goto LABEL_366;
          }

          v61 += v184 - v71;
        }

        else
        {
          v72 = v184;
        }

        v80 = v178 - v72;
        if (__OFSUB__(v178, v72))
        {
          goto LABEL_356;
        }

        v81 = sub_22A4DB26C();
        if (v81 >= v80)
        {
          v82 = v80;
        }

        else
        {
          v82 = v81;
        }

        v83 = v197;
        if (!v197)
        {
          goto LABEL_398;
        }

        v5 = a3;
        if (!v61)
        {
          goto LABEL_397;
        }
      }

      else
      {
        if (v218 != 1)
        {
          v73 = v197;
          *__s1 = v225;
          __s1[4] = v206;
          *&__s1[5] = *(&v225 + 5);
          __s1[7] = HIBYTE(v225);
          *&__s1[8] = v227;
          *&__s1[12] = WORD2(v227);
          if (!v197)
          {
            goto LABEL_379;
          }

          goto LABEL_115;
        }

        if (v204 < v225)
        {
          goto LABEL_353;
        }

        v59 = sub_22A4DB24C();
        if (v59)
        {
          v181 = v59;
          v60 = sub_22A4DB27C();
          if (__OFSUB__(v225, v60))
          {
            goto LABEL_367;
          }

          v61 = (v225 - v60 + v181);
        }

        else
        {
          v61 = 0;
        }

        v84 = sub_22A4DB26C();
        v82 = (v225 >> 32) - v225;
        if (v84 < v202)
        {
          v82 = v84;
        }

        v83 = v197;
        if (!v197)
        {
          goto LABEL_392;
        }

        if (!v61)
        {
          goto LABEL_391;
        }
      }

LABEL_156:
      if (v83 != v61)
      {
        v79 = memcmp(v83, v61, v82);
        sub_2295798D4(v31, v30);
        goto LABEL_158;
      }

      sub_2295798D4(v31, v30);
LABEL_161:
      v88 = v225;
      v89 = v227;
LABEL_162:
      sub_2295798D4(v88, v89);
      a1[v22] |= v23;
      v39 = __OFADD__(v214++, 1);
      v4 = a4;
      v11 = v189;
      v7 = v195;
      v10 = v212;
      if (v39)
      {
        __break(1u);
        break;
      }
    }
  }

  v214 = 0;
  v90 = 0;
  v196 = v5 + 56;
  v91 = 1 << *(v5 + 32);
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  else
  {
    v92 = -1;
  }

  v93 = v92 & *(v5 + 56);
  v94 = (v91 + 63) >> 6;
  v203 = v94;
  v95 = v4 + 56;
  v223 = v4 + 56;
  while (1)
  {
LABEL_170:
    if (v93)
    {
      v96 = __clz(__rbit64(v93));
      v97 = (v93 - 1) & v93;
      goto LABEL_177;
    }

    v98 = v90;
    do
    {
      v90 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
      }

      if (v90 >= v94)
      {
        goto LABEL_323;
      }

      v99 = *(v196 + 8 * v90);
      ++v98;
    }

    while (!v99);
    v96 = __clz(__rbit64(v99));
    v97 = (v99 - 1) & v99;
LABEL_177:
    v100 = v96 | (v90 << 6);
    v215 = v97;
    v101 = (*(v5 + 48) + 16 * v100);
    v103 = *v101;
    v102 = v101[1];
    v104 = *(v4 + 40);
    sub_22A4DE77C();
    sub_22956C148(v103, v102);
    sub_22A4DB63C();
    v105 = sub_22A4DE7BC();
    v106 = -1 << *(v4 + 32);
    v107 = v105 & ~v106;
    v108 = v95;
    v230 = v102;
    if ((*(v95 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107))
    {
      break;
    }

LABEL_169:
    v95 = v108;
    sub_2295798D4(v103, v230);
    v5 = a3;
    v94 = v203;
    v93 = v215;
  }

  v201 = v100;
  v109 = ~v106;
  v110 = v102 >> 62;
  if (v103)
  {
    v111 = 0;
  }

  else
  {
    v111 = v102 == 0xC000000000000000;
  }

  v112 = !v111;
  v226 = v112;
  v113 = __OFSUB__(HIDWORD(v103), v103);
  v219 = v113;
  v228 = BYTE6(v102);
  v213 = v103 >> 32;
  v205 = (v103 >> 32) - v103;
  __n = v109;
  while (1)
  {
    v114 = (*(v4 + 48) + 16 * v107);
    v115 = *v114;
    v116 = v114[1];
    v117 = v116 >> 62;
    if (v116 >> 62 == 3)
    {
      if (v115)
      {
        v118 = 0;
      }

      else
      {
        v118 = v116 == 0xC000000000000000;
      }

      v120 = !v118 || v110 < 3;
      if (((v120 | v226) & 1) == 0)
      {
        v95 = v108;
        v174 = 0;
        v175 = 0xC000000000000000;
LABEL_318:
        sub_2295798D4(v174, v175);
        v176 = v214;
        goto LABEL_319;
      }

LABEL_212:
      v121 = 0;
      if (v110 <= 1)
      {
        goto LABEL_209;
      }

      goto LABEL_213;
    }

    if (v117 > 1)
    {
      if (v117 != 2)
      {
        goto LABEL_212;
      }

      v123 = *(v115 + 16);
      v122 = *(v115 + 24);
      v39 = __OFSUB__(v122, v123);
      v121 = v122 - v123;
      if (v39)
      {
        goto LABEL_330;
      }

      if (v110 <= 1)
      {
        goto LABEL_209;
      }
    }

    else if (v117)
    {
      LODWORD(v121) = HIDWORD(v115) - v115;
      if (__OFSUB__(HIDWORD(v115), v115))
      {
        goto LABEL_331;
      }

      v121 = v121;
      if (v110 <= 1)
      {
LABEL_209:
        v124 = v228;
        if (v110)
        {
          v124 = HIDWORD(v103) - v103;
          if (v219)
          {
            goto LABEL_326;
          }
        }

        goto LABEL_215;
      }
    }

    else
    {
      v121 = BYTE6(v116);
      if (v110 <= 1)
      {
        goto LABEL_209;
      }
    }

LABEL_213:
    if (v110 != 2)
    {
      if (!v121)
      {
        goto LABEL_317;
      }

      goto LABEL_189;
    }

    v126 = *(v103 + 16);
    v125 = *(v103 + 24);
    v39 = __OFSUB__(v125, v126);
    v124 = v125 - v126;
    if (v39)
    {
      goto LABEL_327;
    }

LABEL_215:
    if (v121 != v124)
    {
      goto LABEL_189;
    }

    if (v121 < 1)
    {
      goto LABEL_317;
    }

    if (v117 > 1)
    {
      break;
    }

    if (v117)
    {
      if (v115 > v115 >> 32)
      {
        goto LABEL_334;
      }

      sub_22956C148(v115, v116);
      v133 = sub_22A4DB24C();
      if (v133)
      {
        v134 = v133;
        v135 = sub_22A4DB27C();
        if (__OFSUB__(v115, v135))
        {
          goto LABEL_337;
        }

        v208 = (v115 - v135 + v134);
      }

      else
      {
        v208 = 0;
      }

      sub_22A4DB26C();
      v4 = a4;
      v109 = __n;
      if (v110 == 2)
      {
        v194 = *(v103 + 16);
        v187 = *(v103 + 24);
        v143 = sub_22A4DB24C();
        if (v143)
        {
          v159 = sub_22A4DB27C();
          v160 = v194;
          if (__OFSUB__(v194, v159))
          {
            goto LABEL_362;
          }

          v143 += v194 - v159;
        }

        else
        {
          v160 = v194;
        }

        v170 = v187 - v160;
        if (__OFSUB__(v187, v160))
        {
          goto LABEL_348;
        }

        v171 = sub_22A4DB26C();
        if (v171 >= v170)
        {
          v167 = v170;
        }

        else
        {
          v167 = v171;
        }

        v168 = v208;
        if (!v208)
        {
          goto LABEL_390;
        }

        v4 = a4;
        if (!v143)
        {
          goto LABEL_389;
        }

        goto LABEL_315;
      }

      if (v110 == 1)
      {
        if (v213 < v103)
        {
          goto LABEL_347;
        }

        v144 = sub_22A4DB24C();
        if (v144)
        {
          v192 = v144;
          v145 = sub_22A4DB27C();
          if (__OFSUB__(v103, v145))
          {
            goto LABEL_363;
          }

          v143 = (v103 - v145 + v192);
        }

        else
        {
          v143 = 0;
        }

        v172 = sub_22A4DB26C();
        v167 = (v103 >> 32) - v103;
        if (v172 < v205)
        {
          v167 = v172;
        }

        v168 = v208;
        if (!v208)
        {
          goto LABEL_385;
        }

        if (!v143)
        {
          goto LABEL_384;
        }

        goto LABEL_315;
      }

      v158 = v208;
      *__s1 = v103;
      *&__s1[8] = v230;
      *&__s1[12] = WORD2(v230);
      if (!v208)
      {
        goto LABEL_371;
      }

      goto LABEL_277;
    }

    *__s1 = v115;
    *&__s1[8] = v116;
    __s1[10] = BYTE2(v116);
    __s1[11] = BYTE3(v116);
    __s1[12] = BYTE4(v116);
    __s1[13] = BYTE5(v116);
    if (!v110)
    {
      goto LABEL_240;
    }

    if (v110 == 1)
    {
      if (v213 < v103)
      {
        goto LABEL_342;
      }

      sub_22956C148(v115, v116);
      v127 = sub_229673380(v103, v213, v230 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (v211)
      {
        goto LABEL_399;
      }

      v128 = v127;
      sub_2295798D4(v115, v116);
    }

    else
    {
      v146 = *(v103 + 16);
      v147 = *(v103 + 24);
      sub_22956C148(v115, v116);
      v148 = sub_229673380(v146, v147, v230 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (v211)
      {
        goto LABEL_399;
      }

      v128 = v148;
      sub_2295798D4(v115, v116);
      v4 = a4;
    }

    v108 = v223;
    if (v128)
    {
      goto LABEL_317;
    }

LABEL_189:
    v107 = (v107 + 1) & v109;
    if (((*(v108 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
    {
      goto LABEL_169;
    }
  }

  if (v117 == 2)
  {
    v129 = *(v115 + 16);
    sub_22956C148(v115, v116);
    v130 = sub_22A4DB24C();
    if (v130)
    {
      v131 = v130;
      v132 = sub_22A4DB27C();
      if (__OFSUB__(v129, v132))
      {
        goto LABEL_336;
      }

      v207 = (v129 - v132 + v131);
    }

    else
    {
      v207 = 0;
    }

    sub_22A4DB26C();
    v4 = a4;
    v109 = __n;
    if (v110 == 2)
    {
      v193 = *(v103 + 16);
      v186 = *(v103 + 24);
      v143 = sub_22A4DB24C();
      if (v143)
      {
        v156 = sub_22A4DB27C();
        v157 = v193;
        if (__OFSUB__(v193, v156))
        {
          goto LABEL_360;
        }

        v143 += v193 - v156;
      }

      else
      {
        v157 = v193;
      }

      v165 = v186 - v157;
      if (__OFSUB__(v186, v157))
      {
        goto LABEL_346;
      }

      v166 = sub_22A4DB26C();
      if (v166 >= v165)
      {
        v167 = v165;
      }

      else
      {
        v167 = v166;
      }

      v168 = v207;
      if (!v207)
      {
        goto LABEL_376;
      }

      v4 = a4;
      if (!v143)
      {
        goto LABEL_375;
      }

      goto LABEL_315;
    }

    if (v110 == 1)
    {
      if (v213 < v103)
      {
        goto LABEL_344;
      }

      v141 = sub_22A4DB24C();
      if (v141)
      {
        v191 = v141;
        v142 = sub_22A4DB27C();
        if (__OFSUB__(v103, v142))
        {
          goto LABEL_361;
        }

        v143 = (v103 - v142 + v191);
      }

      else
      {
        v143 = 0;
      }

      v169 = sub_22A4DB26C();
      v167 = (v103 >> 32) - v103;
      if (v169 < v205)
      {
        v167 = v169;
      }

      v168 = v207;
      if (!v207)
      {
        goto LABEL_387;
      }

      if (!v143)
      {
        goto LABEL_386;
      }

LABEL_315:
      if (v168 == v143)
      {
        sub_2295798D4(v115, v116);
        sub_2295798D4(v103, v230);
        v176 = v214;
        v95 = v223;
LABEL_319:
        v93 = v215;
        *(a1 + ((v201 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v201;
        v214 = v176 + 1;
        v5 = a3;
        v94 = v203;
        if (__OFADD__(v176, 1))
        {
          goto LABEL_340;
        }

        goto LABEL_170;
      }

      v173 = memcmp(v168, v143, v167);
      sub_2295798D4(v115, v116);
      v108 = v223;
      v109 = __n;
      if (!v173)
      {
        goto LABEL_317;
      }

      goto LABEL_189;
    }

    v158 = v207;
    *__s1 = v103;
    *&__s1[8] = v230;
    *&__s1[12] = WORD2(v230);
    if (!v207)
    {
      goto LABEL_374;
    }

LABEL_277:
    v155 = memcmp(v158, __s1, v228);
    sub_2295798D4(v115, v116);
LABEL_278:
    v108 = v223;
    if (!v155)
    {
      goto LABEL_317;
    }

    goto LABEL_189;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v110)
  {
LABEL_240:
    LOWORD(__s2) = v103;
    BYTE2(__s2) = BYTE2(v103);
    HIBYTE(__s2) = BYTE3(v103);
    v232 = BYTE4(v103);
    LOBYTE(v233) = BYTE5(v103);
    HIBYTE(v233) = BYTE6(v103);
    v234 = HIBYTE(v103);
    v235 = v230;
    v236 = WORD2(v230);
    v139 = v108;
    v140 = memcmp(__s1, &__s2, v228);
    v108 = v139;
    if (!v140)
    {
      goto LABEL_317;
    }

    goto LABEL_189;
  }

  if (v110 != 2)
  {
    if (v213 < v103)
    {
      goto LABEL_341;
    }

    sub_22956C148(v115, v116);
    v149 = sub_22A4DB24C();
    if (!v149)
    {
      goto LABEL_372;
    }

    v150 = v149;
    v151 = sub_22A4DB27C();
    if (__OFSUB__(v103, v151))
    {
      goto LABEL_345;
    }

    v152 = (v103 - v151 + v150);
    v153 = sub_22A4DB26C();
    if (!v152)
    {
      goto LABEL_373;
    }

    if (v153 >= v205)
    {
      v154 = (v103 >> 32) - v103;
    }

    else
    {
      v154 = v153;
    }

    v155 = memcmp(__s1, v152, v154);
    sub_2295798D4(v115, v116);
    v4 = a4;
    v109 = __n;
    goto LABEL_278;
  }

  v209 = *(v103 + 16);
  v190 = *(v103 + 24);
  sub_22956C148(v115, v116);
  v136 = sub_22A4DB24C();
  if (v136)
  {
    v137 = sub_22A4DB27C();
    v138 = v209;
    if (__OFSUB__(v209, v137))
    {
      goto LABEL_359;
    }

    v136 = &v209[v136 - v137];
  }

  else
  {
    v138 = v209;
  }

  v161 = v190 - v138;
  if (__OFSUB__(v190, v138))
  {
    goto LABEL_343;
  }

  v162 = sub_22A4DB26C();
  if (v136)
  {
    if (v162 >= v161)
    {
      v163 = v161;
    }

    else
    {
      v163 = v162;
    }

    v164 = memcmp(__s1, v136, v163);
    sub_2295798D4(v115, v116);
    v4 = a4;
    v108 = v223;
    v109 = __n;
    if (!v164)
    {
LABEL_317:
      v95 = v108;
      v174 = v103;
      v175 = v230;
      goto LABEL_318;
    }

    goto LABEL_189;
  }

  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  sub_22A4DB26C();
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  sub_22A4DB26C();
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  sub_22A4DB26C();
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
LABEL_395:
  __break(1u);
LABEL_396:
  __break(1u);
LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
LABEL_399:

  __break(1u);
}

void sub_2296719F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v51 = 0;
    v27 = 0;
    v47 = v5 + 56;
    v28 = 1 << *(v5 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(v5 + 56);
    v31 = (v28 + 63) >> 6;
    v32 = v4 + 56;
    while (v30)
    {
      v33 = __clz(__rbit64(v30));
      v53 = (v30 - 1) & v30;
LABEL_34:
      v50 = v33 | (v27 << 6);
      v36 = *(v4 + 40);
      v37 = *(*(a3 + 48) + 8 * v50);
      v38 = sub_22A4DDECC();
      v39 = -1 << *(v4 + 32);
      v40 = v38 & ~v39;
      if ((*(v32 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
        while (1)
        {
          v42 = *(*(v4 + 48) + 8 * v40);
          v43 = sub_22A4DDEDC();

          if (v43)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          v4 = a4;
          if (((*(v32 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(a1 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        v30 = v53;
        v26 = __OFADD__(v51++, 1);
        v4 = a4;
        if (v26)
        {
          __break(1u);
LABEL_42:
          v5 = a3;
          goto LABEL_43;
        }
      }

      else
      {
LABEL_26:

        v30 = v53;
      }
    }

    v34 = v27;
    while (1)
    {
      v27 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_45;
      }

      if (v27 >= v31)
      {
        goto LABEL_42;
      }

      v35 = *(v47 + 8 * v27);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v53 = (v35 - 1) & v35;
        goto LABEL_34;
      }
    }
  }

  v6 = 0;
  v44 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v51 = 0;
  v52 = a3 + 56;
  v46 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v49 = (v9 - 1) & v9;
LABEL_14:
    v14 = *(v5 + 40);
    v15 = *(*(v4 + 48) + 8 * (v11 | (v6 << 6)));
    v16 = sub_22A4DDECC();
    v17 = -1 << *(v5 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) != 0)
    {
      sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
      v21 = *(*(v5 + 48) + 8 * v18);
      v22 = sub_22A4DDEDC();

      if ((v22 & 1) == 0)
      {
        v23 = ~v17;
        do
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          v5 = a3;
          if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_6;
          }

          v24 = *(*(a3 + 48) + 8 * v18);
          v25 = sub_22A4DDEDC();
        }

        while ((v25 & 1) == 0);
      }

      v10 = v46;
      a1[v19] |= v20;
      v9 = v49;
      v26 = __OFADD__(v51++, 1);
      v5 = a3;
      v4 = a4;
      if (v26)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v4 = a4;
      v10 = v46;
      v9 = v49;
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
LABEL_43:

      sub_22966FB38(a1, a2, v51, v5, &unk_27D87CF70, &qword_22A577D88);
      return;
    }

    v13 = *(v44 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_229671DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v3[6] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 2);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);

  return MEMORY[0x2822009F8](sub_229671E8C, 0, 0);
}

uint64_t sub_229671E8C()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = *(MEMORY[0x277D0EFE8] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_229671F90;

  return MEMORY[0x2821677B0]();
}

void sub_229671F90()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 56);

    MEMORY[0x2822009F8](sub_229663A04, 0, 0);
  }
}

uint64_t sub_2296720CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[3] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_22A4DBC9C();
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_229672204(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AAD0D60](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_229570788(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22967229C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2295C0FB8();
  result = MEMORY[0x22AAD0D60](v2, &type metadata for HomeCapability, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_229570DD4(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_229672310(uint64_t a1)
{
  v2 = type metadata accessor for HomeGroupEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_229673710(&unk_27D87E4E0, type metadata accessor for HomeGroupEntity);
  result = MEMORY[0x22AAD0D60](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_2295C28B4(v13, v7);
      sub_229570B40(v9, v7);
      sub_2295C2918(v9);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_229672478(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_22A4DE0EC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
  result = MEMORY[0x22AAD0D60](v3, v4, MEMORY[0x277D83F88]);
  v11 = result;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AAD13F0](i, a1);
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v11;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v8 = *(a1 + 8 * i + 32);

        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_229570FD0(&v10, v8);

      if (v9 == v2)
      {
        return v11;
      }
    }
  }

  v6 = result;
  v2 = sub_22A4DE0EC();
  result = v6;
  if (v2)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2296725BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_229673844();
  result = MEMORY[0x22AAD0D60](v2, MEMORY[0x277CC9318], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_22956C148(v7, *v5);
      sub_229571224(v8, v7, v6);
      sub_2295798D4(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_229672658(uint64_t a1)
{
  v2 = sub_22A4DCCAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_229673710(&qword_27D87CF18, MEMORY[0x277D173F0]);
  result = MEMORY[0x22AAD0D60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2295716AC(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_2296727F4(uint64_t a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_229673710(&qword_281403880, MEMORY[0x277CC95F0]);
  result = MEMORY[0x22AAD0D60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_22957198C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_229672AE0(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v12 = sub_229562F68(0, a2, a3);
    v13 = sub_22959E62C(a4, a2, a3);
    result = MEMORY[0x22AAD0D60](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x22AAD13F0](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_22A4DE0EC();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(uint64_t result, unint64_t a2)
{
  v4 = BYTE6(a2);
  v5 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v6)
    {
      v14 = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
LABEL_77:
        __break(1u);
        return result;
      }

      v7 = v14;
      if (v14 < 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = BYTE6(a2);
      if (!BYTE6(a2))
      {
LABEL_16:
        v12 = 0;
        goto LABEL_18;
      }
    }

LABEL_8:
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v13 = __OFADD__(v11, 2);
      v11 += 2;
      if (v13)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v10;
      if (v11 >= v7)
      {
        goto LABEL_18;
      }
    }

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
    goto LABEL_75;
  }

  if (v6 == 2)
  {
    v9 = *(result + 16);
    v8 = *(result + 24);
    v7 = v8 - v9;
    if (__OFSUB__(v8, v9))
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v7 < 1)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v12 = 0;
  v7 = 0;
LABEL_18:
  v38 = MEMORY[0x277D84F90];
  result = sub_22958387C(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v16 = v38;
  if (v12)
  {
    result = 0;
    v17 = __OFSUB__(HIDWORD(v5), v5);
    v36 = v17;
    v35 = HIDWORD(v5) - v5;
    v18 = v4;
    v37 = v4;
    v19 = 0x7FFFFFFFFFFFFFFELL;
    while (1)
    {
      if (result >= v7)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        while (2)
        {
          v34 = result;
          v26 = v15;
          sub_22958387C((v18 > 1), v3, 1);
          v15 = v26;
          result = v34;
          v16 = v38;
LABEL_66:
          *(v16 + 16) = v3;
          v31 = v16 + 16 * v19;
          *(v31 + 32) = result;
          *(v31 + 40) = v15;
          v2 += 2;
          if (v12 >= v7)
          {
            return v16;
          }

LABEL_52:
          v12 = v2 + 2;
          if (__OFADD__(v2, 2))
          {
            __break(1u);
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          if (v6 <= 1)
          {
            v27 = v37;
            if (v6)
            {
              v27 = v35;
              if (v36)
              {
                goto LABEL_74;
              }
            }

            goto LABEL_59;
          }

          if (v6 == 2)
          {
            v29 = *(v5 + 16);
            v28 = *(v5 + 24);
            v13 = __OFSUB__(v28, v29);
            v27 = v28 - v29;
            if (v13)
            {
              goto LABEL_73;
            }

LABEL_59:
            if (v27 >= v12)
            {
              v30 = v2 + 2;
            }

            else
            {
              v30 = v27;
            }

            if (v30 < v2)
            {
              goto LABEL_69;
            }
          }

          else if ((v12 & (v12 >> 63)) < v2)
          {
            goto LABEL_69;
          }

          result = sub_22A4DB5FC();
          v38 = v16;
          v19 = *(v16 + 16);
          v18 = *(v16 + 24);
          v3 = v19 + 1;
          if (v19 >= v18 >> 1)
          {
            continue;
          }

          goto LABEL_66;
        }
      }

      if (result == 0x7FFFFFFFFFFFFFFELL)
      {
        goto LABEL_49;
      }

      v2 = result + 2;
      if (v6 <= 1)
      {
        break;
      }

      if (v6 == 2)
      {
        v21 = *(v5 + 16);
        v20 = *(v5 + 24);
        v13 = __OFSUB__(v20, v21);
        v18 = v20 - v21;
        if (v13)
        {
          goto LABEL_72;
        }

        goto LABEL_32;
      }

      v15 = v2 & (v2 >> 63);
      if (v15 < result)
      {
        goto LABEL_50;
      }

LABEL_38:
      v22 = sub_22A4DB5FC();
      v38 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      v3 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v32 = v15;
        v33 = v22;
        sub_22958387C((v23 > 1), v24 + 1, 1);
        v15 = v32;
        v22 = v33;
      }

      *(v16 + 16) = v3;
      v18 = v16 + 16 * v24;
      *(v18 + 32) = v22;
      *(v18 + 40) = v15;
      result = v2;
      if (!--v12)
      {
        if (v2 < v7)
        {
          goto LABEL_52;
        }

        return v16;
      }
    }

    v18 = v4;
    if (v6)
    {
      v18 = HIDWORD(v5) - v5;
      if (v36)
      {
        goto LABEL_71;
      }
    }

LABEL_32:
    if (v18 >= v2)
    {
      v15 = result + 2;
    }

    else
    {
      v15 = v18;
    }

    if (v15 < result)
    {
      goto LABEL_50;
    }

    goto LABEL_38;
  }

  if (v7 >= 1)
  {
    v2 = 0;
    v25 = __OFSUB__(HIDWORD(v5), v5);
    v36 = v25;
    v35 = HIDWORD(v5) - v5;
    v37 = v4;
    goto LABEL_52;
  }

  return v16;
}

id sub_229672F78(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
    sub_22A4DE7EC();
    sub_22A4DE1FC();

    v9 = 0xD00000000000001ALL;
    v10 = 0x800000022A58F7C0;
    v2 = [v1 description];
    v3 = sub_22A4DD5EC();
    v5 = v4;

    MEMORY[0x22AAD08C0](v3, v5);

    MEMORY[0x22AAD08C0](0x61746164206F7420, 0xE800000000000000);
    sub_22A4DBD3C();

    sub_229673968();
    swift_allocError();
    *v6 = v1;
    swift_willThrow();
  }

  else
  {
    v1 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_229673380(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_22A4DB24C();
  v8 = result;
  if (result)
  {
    result = sub_22A4DB27C();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_22A4DB26C();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t _s13HomeKitDaemon21AliroVersionUtilitiesC29isCurrentDeviceCompatibleWith0dE023includeUWBCompatibilitySbAaEC_SbtFZ_0(void *a1, char a2)
{
  v4 = [objc_opt_self() driver];
  v5 = [v4 homeManager];

  *&v15 = v5;
  v14 = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  sub_22A4DBD4C();

  v6 = v17[0];
  if (!v17[0])
  {
    v6 = 0;
    *v17 = 0u;
    v18 = 0u;
LABEL_3:
    sub_229609094(v17);
    goto LABEL_4;
  }

  if ([v17[0] currentDeviceAliroVersion])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  *v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {
    goto LABEL_3;
  }

  type metadata accessor for AliroVersion();
  if (swift_dynamicCast())
  {
    v13 = AliroVersion.isCompatibleWith(version:includeUWBCompatibility:)(a1, a2 & 1);

    if (v13)
    {
      sub_22A4DE1FC();

      v17[0] = 0xD000000000000030;
      v17[1] = 0x800000022A58F550;
      v7 = [a1 description];
      goto LABEL_5;
    }
  }

LABEL_4:
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000034, 0x800000022A58F510);
  v7 = [a1 description];
LABEL_5:
  v8 = v7;
  v9 = sub_22A4DD5EC();
  v11 = v10;

  MEMORY[0x22AAD08C0](v9, v11);

  sub_22A4DBD0C();

  return 1;
}

uint64_t sub_229673710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_229673758()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229569B30;

  return sub_22966E1B8(v2, v3);
}

unint64_t sub_229673844()
{
  result = qword_2814038B0;
  if (!qword_2814038B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814038B0);
  }

  return result;
}

uint64_t sub_229673898(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_22966C54C(a1, v5);
}

unint64_t sub_229673968()
{
  result = qword_27D87E528;
  if (!qword_27D87E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E528);
  }

  return result;
}

uint64_t sub_2296739BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_229673A04(uint64_t result, int a2, int a3)
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

id HomeIntelligence.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeIntelligence();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_229673AEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E538, &qword_22A57C188);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v3 + 16))(v6, a1, v2);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v3 + 32))(v13 + v12, v6, v2);
  sub_22957F3C0(0, 0, v10, &unk_22A57C198, v13);
  return sub_22A4DD9FC();
}

uint64_t sub_229673CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v4[21] = a4;
  v5 = sub_22A4DD22C();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E540, &qword_22A57C1A0) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v9 = sub_22A4DD1DC();
  v4[27] = v9;
  v10 = *(v9 - 8);
  v4[28] = v10;
  v11 = *(v10 + 64) + 15;
  v4[29] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E548, &qword_22A57C1A8);
  v4[30] = v12;
  v13 = *(v12 - 8);
  v4[31] = v13;
  v14 = *(v13 + 64) + 15;
  v4[32] = swift_task_alloc();
  v15 = sub_22A4DD24C();
  v4[33] = v15;
  v16 = *(v15 - 8);
  v4[34] = v16;
  v17 = *(v16 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v18 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_229673F40, 0, 0);
}

uint64_t sub_229673F40()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  v25 = *(v0 + 256);
  v26 = *(v0 + 240);
  v27 = *(v0 + 232);
  v23 = *(v0 + 264);
  v24 = *(v0 + 168);
  v4 = sub_22A4DD1FC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v0 + 296) = sub_22A4DD1EC();
  sub_22A4DD1BC();
  v7 = sub_22967519C(0);
  v9 = v8;
  *(v0 + 304) = v7;
  *(v0 + 312) = v8;
  v10 = sub_22967519C(1);
  v12 = v11;
  *(v0 + 320) = v10;
  *(v0 + 328) = v11;
  v13 = *(v2 + 8);
  *(v0 + 336) = v13;
  *(v0 + 344) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v1, v23);
  *(v0 + 96) = v7;
  *(v0 + 104) = v9;
  *(v0 + 112) = v10;
  *(v0 + 120) = v12;
  sub_2295AEF1C(v7, v9);
  sub_2295AEF1C(v10, v12);
  *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E538, &qword_22A57C188);
  sub_22A4DDA0C();
  v14 = *(v3 + 8);
  *(v0 + 360) = v14;
  *(v0 + 368) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v25, v26);
  sub_2295AEF1C(v7, v9);
  sub_2295AEF1C(v10, v12);

  sub_22A4DD1CC();
  *(v0 + 440) = *MEMORY[0x277CD8F78];
  *(v0 + 408) = v10;
  *(v0 + 416) = v12;
  *(v0 + 392) = v7;
  *(v0 + 400) = v9;
  v15 = sub_22967553C();
  v16 = *(MEMORY[0x277D856D0] + 4);
  v17 = swift_task_alloc();
  *(v0 + 424) = v17;
  *v17 = v0;
  v17[1] = sub_229674194;
  v18 = *(v0 + 232);
  v19 = *(v0 + 208);
  v20 = *(v0 + 216);
  v21 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200308](v19, v20, v15);
}

uint64_t sub_229674194()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 424);
  v7 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_229674FE8;
  }

  else
  {
    v3 = sub_2296742D4;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296742D4()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_229674360, 0, 0);
}

uint64_t sub_229674360()
{
  v138 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 208);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v116 = *(v0 + 392);
    v118 = *(v0 + 400);
    v4 = *(v0 + 352);
    v5 = *(v0 + 320);
    v6 = *(v0 + 328);
    v8 = *(v0 + 304);
    v7 = *(v0 + 312);
    v9 = *(v0 + 296);
    v120 = *(v0 + 288);
    v122 = *(v0 + 280);
    v124 = *(v0 + 408);
    __dsta = *(v0 + 256);
    v131 = *(v0 + 416);
    v133 = *(v0 + 200);
    v136 = *(v0 + 192);
    v10 = *(v0 + 168);
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    sub_22A4DDA1C();

    sub_229590D18(v8, v7);
    sub_229590D18(v5, v6);
    sub_229590D18(v116, v118);
    sub_229590D18(v124, v131);

    v11 = *(v0 + 8);
    v12 = *MEMORY[0x277D85DE8];

    return v11();
  }

  __dst = (v0 + 444);
  v14 = *(v0 + 440);
  v16 = *(v0 + 192);
  v15 = *(v0 + 200);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  (*(v2 + 32))(*(v0 + 280), v3, v1);
  sub_22A4DD23C();
  v134 = *(v18 + 104);
  v134(v16, v14, v17);
  v19 = sub_22A4DD21C();
  v20 = *(v18 + 8);
  v20(v16, v17);
  v20(v15, v17);
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

  v21 = *(v0 + 280);
  if (!sub_22A4DD20C())
  {
    goto LABEL_13;
  }

  v22 = sub_22A4DD86C();
  *(v22 + 16) = 20;
  *(v22 + 40) = 0;
  *(v22 + 48) = 0;
  *(v22 + 32) = 0;
  *(v0 + 475) = 20;
  if (!nw_path_get_ipv4_network_signature())
  {

    swift_unknownObjectRelease();
LABEL_13:
    v26 = 0;
    v132 = *(v0 + 376);
    v137 = 0xF000000000000000;
    goto LABEL_14;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4E0, &qword_22A578748);
  *(v0 + 80) = v23;
  *(v0 + 88) = sub_229675594();
  *(v0 + 56) = v22;
  v24 = __swift_project_boxed_opaque_existential_0((v0 + 56), v23);
  v25 = *v24;
  v26 = *(*v24 + 16);
  if (v26)
  {
    if (v26 <= 0xE)
    {
      v87 = *(v0 + 376);
      *(v0 + 459) = 0;
      *(v0 + 465) = 0;
      *(v0 + 473) = v26;
      memcpy((v0 + 459), (v25 + 32), v26);
      swift_unknownObjectRelease();
      v26 = *(v0 + 459);
      v86 = v87 & 0xF00000000000000 | *(v0 + 467) | ((*(v0 + 471) | (*(v0 + 473) << 16)) << 32);
      v137 = v86;
    }

    else
    {
      v27 = sub_22A4DB28C();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_22A4DB23C();
      swift_unknownObjectRelease();
      if (v26 >= 0x7FFFFFFF)
      {
        sub_22A4DB5CC();
        v98 = swift_allocObject();
        *(v98 + 16) = 0;
        *(v98 + 24) = v26;
        v26 = v98;
        v31 = v30 | 0x8000000000000000;
      }

      else
      {
        v26 <<= 32;
        v31 = v30 | 0x4000000000000000;
      }

      v137 = v31;
      v86 = *(v0 + 376);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v86 = *(v0 + 376);
    v137 = 0xC000000000000000;
  }

  v132 = v86;
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
LABEL_14:
  v32 = *(v0 + 440);
  v33 = *(v0 + 280);
  v35 = *(v0 + 192);
  v34 = *(v0 + 200);
  v36 = *(v0 + 176);
  sub_22A4DD23C();
  v134(v35, v32, v36);
  LOBYTE(v33) = sub_22A4DD21C();
  v20(v35, v36);
  v20(v34, v36);
  if ((v33 & 1) == 0)
  {
    goto LABEL_22;
  }

  v37 = *(v0 + 280);
  if (!sub_22A4DD20C())
  {
    goto LABEL_22;
  }

  v38 = sub_22A4DD86C();
  *(v38 + 16) = 20;
  *(v38 + 40) = 0;
  *(v38 + 48) = 0;
  *(v38 + 32) = 0;
  *(v0 + 474) = 20;
  if (!nw_path_get_ipv6_network_signature())
  {

    swift_unknownObjectRelease();
LABEL_22:
    v42 = 0;
    v48 = *(v0 + 384);
    v47 = 0xF000000000000000;
    v49 = v137;
    goto LABEL_23;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4E0, &qword_22A578748);
  *(v0 + 40) = v39;
  *(v0 + 48) = sub_229675594();
  *(v0 + 16) = v38;
  v40 = __swift_project_boxed_opaque_existential_0((v0 + 16), v39);
  v41 = *v40;
  v42 = *(*v40 + 16);
  if (v42)
  {
    if (v42 <= 0xE)
    {
      v88 = *(v0 + 384);
      *__dst = 0;
      *(v0 + 450) = 0;
      *(v0 + 458) = v42;
      memcpy(__dst, (v41 + 32), v42);
      swift_unknownObjectRelease();
      v42 = *__dst;
      v48 = v88 & 0xF00000000000000 | *(v0 + 452) | ((*(v0 + 456) | (*(v0 + 458) << 16)) << 32);
      v47 = v48;
    }

    else
    {
      v43 = sub_22A4DB28C();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      v46 = sub_22A4DB23C();
      swift_unknownObjectRelease();
      if (v42 >= 0x7FFFFFFF)
      {
        sub_22A4DB5CC();
        v99 = swift_allocObject();
        *(v99 + 16) = 0;
        *(v99 + 24) = v42;
        v42 = v99;
        v47 = v46 | 0x8000000000000000;
      }

      else
      {
        v42 <<= 32;
        v47 = v46 | 0x4000000000000000;
      }

      v48 = *(v0 + 384);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v48 = *(v0 + 384);
    v47 = 0xC000000000000000;
  }

  v49 = v137;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_23:
  v50 = *(v0 + 400);
  v135 = v48;
  if (v49 >> 60 == 15)
  {
    if (v50 >> 60 == 15)
    {
      v51 = *(v0 + 392);
      sub_2295AEF1C(v26, v49);
      sub_2295AEF1C(v51, v50);
LABEL_26:
      v52 = v26;
      v53 = v49;
LABEL_27:
      sub_229590D18(v52, v53);
      v54 = *(v0 + 432);
      goto LABEL_28;
    }

LABEL_32:
    v61 = *(v0 + 392);
    sub_2295AEF1C(v26, v49);
    sub_2295AEF1C(v61, v50);
    v62 = v26;
    v63 = v49;
LABEL_42:
    sub_229590D18(v62, v63);
    v67 = v61;
    v68 = v50;
LABEL_43:
    sub_229590D18(v67, v68);
LABEL_44:
    v69 = *(v0 + 392);
    v70 = *(v0 + 400);
    v119 = *(v0 + 416);
    v121 = *(v0 + 360);
    v71 = *(v0 + 352);
    __dstc = *(v0 + 344);
    v123 = *(v0 + 368);
    v126 = *(v0 + 336);
    v117 = *(v0 + 280);
    v72 = *(v0 + 256);
    v114 = *(v0 + 408);
    v115 = *(v0 + 264);
    v73 = *(v0 + 240);
    v74 = *(v0 + 168);
    *(v0 + 128) = v26;
    *(v0 + 136) = v137;
    *(v0 + 144) = v42;
    *(v0 + 152) = v47;
    sub_2295AEF1C(v26, v137);
    sub_2295AEF1C(v42, v47);
    v49 = v137;
    sub_22A4DDA0C();
    sub_229590D18(v69, v70);
    sub_229590D18(v114, v119);
    v75 = v72;
    v48 = v135;
    v121(v75, v73);
    v126(v117, v115);
    goto LABEL_45;
  }

  if (v50 >> 60 == 15)
  {
    goto LABEL_32;
  }

  v64 = v49 >> 62;
  v65 = v50 >> 62;
  if (v49 >> 62 == 3)
  {
    v66 = 0;
    if (!v26 && v49 == 0xC000000000000000 && v50 >> 62 == 3)
    {
      v66 = 0;
      if (v50 == 0xC000000000000000 && !*(v0 + 392))
      {
        sub_2295AEF1C(0, 0xC000000000000000);
        sub_2295AEF1C(0, 0xC000000000000000);
        sub_229590D18(0, 0xC000000000000000);
        v52 = 0;
        v53 = 0xC000000000000000;
        goto LABEL_27;
      }
    }
  }

  else if (v64)
  {
    if (v64 == 1)
    {
      LODWORD(v66) = HIDWORD(v26) - v26;
      if (__OFSUB__(HIDWORD(v26), v26))
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v66 = v66;
    }

    else
    {
      v90 = *(v26 + 16);
      v89 = *(v26 + 24);
      v91 = __OFSUB__(v89, v90);
      v66 = v89 - v90;
      if (v91)
      {
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
      }
    }
  }

  else
  {
    v66 = BYTE6(v49);
  }

  if (v65 > 1)
  {
    if (v65 != 2)
    {
      v92 = *(v0 + 392);
      if (!v66)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    v92 = *(v0 + 392);
    v94 = *(v92 + 16);
    v93 = *(v92 + 24);
    v91 = __OFSUB__(v93, v94);
    v95 = v93 - v94;
    if (!v91)
    {
      if (v66 != v95)
      {
        goto LABEL_83;
      }

      goto LABEL_79;
    }

    __break(1u);
    goto LABEL_113;
  }

  if (v65)
  {
    v92 = *(v0 + 392);
    if (!__OFSUB__(HIDWORD(v92), v92))
    {
      if (v66 == HIDWORD(v92) - v92)
      {
        goto LABEL_79;
      }

LABEL_83:
      sub_2295AEF1C(v26, v49);
      sub_2295AEF1C(v92, v50);
      sub_229590D18(v92, v50);
      v67 = v26;
      v68 = v49;
      goto LABEL_43;
    }

LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v92 = *(v0 + 392);
  if (v66 != BYTE6(v50))
  {
    goto LABEL_83;
  }

LABEL_79:
  if (v66 < 1)
  {
LABEL_84:
    sub_2295AEF1C(v26, v49);
    sub_2295AEF1C(v92, v50);
    sub_229590D18(v92, v50);
    goto LABEL_26;
  }

  v96 = *(v0 + 432);
  sub_2295AEF1C(v26, v49);
  sub_2295AEF1C(v92, v50);
  sub_2295AEF1C(v92, v50);
  v97 = sub_2296753AC(v26, v49, v92, v50);
  sub_229590D18(v92, v50);
  sub_229590D18(v26, v49);
  if ((v97 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_28:
  v50 = *(v0 + 416);
  if (v47 >> 60 != 15)
  {
    if (v50 >> 60 == 15)
    {
      goto LABEL_41;
    }

    v83 = v47 >> 62;
    v84 = v50 >> 62;
    if (v47 >> 62 == 3)
    {
      v85 = 0;
      if (!v42 && v47 == 0xC000000000000000 && v50 >> 62 == 3)
      {
        v85 = 0;
        if (v50 == 0xC000000000000000 && !*(v0 + 408))
        {
          sub_2295AEF1C(0, 0xC000000000000000);
          sub_2295AEF1C(0, 0xC000000000000000);
          sub_229590D18(0, 0xC000000000000000);
          sub_229590D18(0, 0xC000000000000000);
LABEL_107:
          v108 = *(v0 + 408);
          v107 = *(v0 + 416);
          sub_229590D18(*(v0 + 392), *(v0 + 400));
          v109 = v108;
          v110 = v107;
LABEL_111:
          sub_229590D18(v109, v110);
          v113 = *(v0 + 344);
          (*(v0 + 336))(*(v0 + 280), *(v0 + 264));
          goto LABEL_45;
        }
      }

      goto LABEL_95;
    }

    if (v83 == 2)
    {
      v101 = *(v42 + 16);
      v100 = *(v42 + 24);
      v91 = __OFSUB__(v100, v101);
      v85 = v100 - v101;
      if (!v91)
      {
        goto LABEL_95;
      }

      __break(1u);
    }

    else if (v83 == 1)
    {
      LODWORD(v85) = HIDWORD(v42) - v42;
      if (__OFSUB__(HIDWORD(v42), v42))
      {
        goto LABEL_117;
      }

      v85 = v85;
      goto LABEL_95;
    }

    v85 = BYTE6(v47);
LABEL_95:
    if (v84 > 1)
    {
      if (v84 != 2)
      {
        v103 = *(v0 + 408);
        if (!v85)
        {
          goto LABEL_110;
        }

        goto LABEL_109;
      }

      v103 = *(v0 + 408);
      v105 = *(v103 + 16);
      v104 = *(v103 + 24);
      v91 = __OFSUB__(v104, v105);
      v102 = v104 - v105;
      if (!v91)
      {
LABEL_104:
        if (v85 == v102)
        {
          if (v85 >= 1)
          {
            sub_2295AEF1C(v42, v47);
            sub_2295AEF1C(v103, v50);
            sub_2295AEF1C(v103, v50);
            v106 = sub_2296753AC(v42, v47, v103, v50);
            sub_229590D18(v103, v50);
            sub_229590D18(v42, v47);
            if ((v106 & 1) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_107;
          }

LABEL_110:
          v112 = *(v0 + 392);
          v111 = *(v0 + 400);
          sub_2295AEF1C(v42, v47);
          sub_2295AEF1C(v103, v50);
          sub_229590D18(v112, v111);
          sub_229590D18(v103, v50);
          sub_229590D18(v103, v50);
          v109 = v42;
          v110 = v47;
          goto LABEL_111;
        }

LABEL_109:
        sub_2295AEF1C(v42, v47);
        sub_2295AEF1C(v103, v50);
        sub_229590D18(v103, v50);
        v67 = v42;
        v68 = v47;
        goto LABEL_43;
      }

      __break(1u);
    }

    else if (!v84)
    {
      v102 = BYTE6(v50);
      v103 = *(v0 + 408);
      goto LABEL_104;
    }

    v103 = *(v0 + 408);
    LODWORD(v102) = HIDWORD(v103) - v103;
    if (!__OFSUB__(HIDWORD(v103), v103))
    {
      v102 = v102;
      goto LABEL_104;
    }

    goto LABEL_116;
  }

  if (v50 >> 60 != 15)
  {
LABEL_41:
    v61 = *(v0 + 408);
    sub_2295AEF1C(v42, v47);
    sub_2295AEF1C(v61, v50);
    v62 = v42;
    v63 = v47;
    goto LABEL_42;
  }

  v55 = *(v0 + 408);
  v125 = *(v0 + 392);
  __dstb = *(v0 + 400);
  v56 = v26;
  v58 = *(v0 + 336);
  v57 = *(v0 + 344);
  v59 = *(v0 + 280);
  v60 = *(v0 + 264);
  sub_2295AEF1C(v42, v47);
  sub_2295AEF1C(v55, v50);
  v58(v59, v60);
  v26 = v56;
  v48 = v135;
  v49 = v137;
  sub_229590D18(v125, __dstb);
  sub_229590D18(v55, v50);
  sub_229590D18(v42, v47);
LABEL_45:
  *(v0 + 408) = v42;
  *(v0 + 416) = v47;
  *(v0 + 392) = v26;
  *(v0 + 400) = v49;
  *(v0 + 376) = v132;
  *(v0 + 384) = v48;
  v76 = sub_22967553C();
  v77 = *(MEMORY[0x277D856D0] + 4);
  v78 = swift_task_alloc();
  *(v0 + 424) = v78;
  *v78 = v0;
  v78[1] = sub_229674194;
  v79 = *(v0 + 232);
  v80 = *(v0 + 208);
  v81 = *(v0 + 216);
  v82 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200308](v80, v81, v76);
}

uint64_t sub_229674FE8()
{
  v3 = *MEMORY[0x277D85DE8];
  *(v0 + 160) = *(v0 + 432);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();
  v1 = *MEMORY[0x277D85DE8];

  return swift_willThrowTypedImpl();
}

uint64_t sub_2296750A0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E538, &qword_22A57C188) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_229673CE4(a1, v6, v7, v1 + v5);
}

uint64_t sub_22967519C(char a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = sub_22A4DD22C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  sub_22A4DD23C();
  (*(v3 + 104))(v7, *MEMORY[0x277CD8F78], v2);
  v10 = sub_22A4DD21C();
  v11 = *(v3 + 8);
  v11(v7, v2);
  v11(v9, v2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  result = sub_22A4DD20C();
  if (result)
  {
    v13 = sub_22A4DD86C();
    *(v13 + 16) = 20;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    v16[7] = 20;
    if (a1)
    {
      if ((nw_path_get_ipv6_network_signature() & 1) == 0)
      {
LABEL_5:
        swift_unknownObjectRelease();

LABEL_6:
        result = 0;
        goto LABEL_7;
      }
    }

    else if (!nw_path_get_ipv4_network_signature())
    {
      goto LABEL_5;
    }

    v15 = sub_229590750(v13);
    swift_unknownObjectRelease();

    result = v15;
  }

LABEL_7:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2296753AC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2296755F8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2295798D4(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_229838464(v14, a3, a4, &v13);
  v10 = v4;
  sub_2295798D4(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

unint64_t sub_22967553C()
{
  result = qword_27D87E550;
  if (!qword_27D87E550)
  {
    sub_22A4DD1DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E550);
  }

  return result;
}

unint64_t sub_229675594()
{
  result = qword_27D87D4E8;
  if (!qword_27D87D4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87D4E0, &qword_22A578748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D4E8);
  }

  return result;
}

uint64_t sub_2296755F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22A4DB24C();
  v11 = result;
  if (result)
  {
    result = sub_22A4DB27C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22A4DB26C();
  sub_229838464(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t HMDRemoteConnectivityMonitor.hasConnectivity.getter()
{
  v1 = v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity));
  v2 = *(v1 + 4);
  os_unfair_lock_unlock(v1);
  return v2;
}

char *HMDRemoteConnectivityMonitor.__allocating_init(failedMessagesThreshold:connectivityLostTimer:delegate:workQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v10 = &v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v10 = 0;
  v10[4] = 0;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer] = a2;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_delegate] = a3;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue] = a4;
  v18.receiver = v9;
  v18.super_class = v4;
  v11 = a2;
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  v14 = OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v15 = *&v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v16 = v13;
  [v15 setDelegate_];
  [*&v13[v14] setDelegateQueue_];

  swift_unknownObjectRelease();
  return v16;
}

char *HMDRemoteConnectivityMonitor.init(failedMessagesThreshold:connectivityLostTimer:delegate:workQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v7 = &v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v7 = 0;
  v7[4] = 0;
  *&v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer] = a2;
  *&v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_delegate] = a3;
  *&v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue] = a4;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for HMDRemoteConnectivityMonitor();
  v8 = a2;
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v12 = *&v10[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v13 = v10;
  [v12 setDelegate_];
  [*&v10[v11] setDelegateQueue_];

  swift_unknownObjectRelease();
  return v13;
}

char *HMDRemoteConnectivityMonitor.__allocating_init(failedMessagesThreshold:connectivityLostTimerInterval:delegate:workQueue:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a4];
  v12 = type metadata accessor for HMDRemoteConnectivityMonitor();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v14 = &v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v14 = 0;
  v14[4] = 0;
  *&v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer] = v11;
  *&v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_delegate] = a2;
  *&v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue] = a3;
  v22.receiver = v13;
  v22.super_class = v12;
  v15 = v11;
  swift_unknownObjectRetain();
  v16 = a3;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  v18 = OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v19 = *&v17[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v20 = v17;
  [v19 setDelegate_];
  [*&v17[v18] setDelegateQueue_];

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v20;
}

char *HMDRemoteConnectivityMonitor.init(failedMessagesThreshold:connectivityLostTimerInterval:delegate:workQueue:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a4];
  v8 = type metadata accessor for HMDRemoteConnectivityMonitor();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v10 = &v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v10 = 0;
  v10[4] = 0;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer] = v7;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_delegate] = a2;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue] = a3;
  v18.receiver = v9;
  v18.super_class = v8;
  v11 = v7;
  swift_unknownObjectRetain();
  v12 = a3;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  v14 = OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v15 = *&v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v16 = v13;
  [v15 setDelegate_];
  [*&v13[v14] setDelegateQueue_];

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.underlyingConnectionChanged(connected:)(Swift::Bool connected)
{
  v3 = sub_22A4DD2FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_22A4DD31C();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    *(v1 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection) = connected;
    sub_22967651C();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.sendMessageSucceeded()()
{
  v1 = sub_22A4DD2FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_22A4DD31C();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer);
    if ([v8 isRunning])
    {
      [v8 suspend];
    }

    *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages) = 0;
    *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired) = 0;
    sub_22967651C();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.sendMessageFailed()()
{
  v1 = sub_22A4DD2FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_22A4DD31C();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages);
  if ((v8 & 0x8000000000000000) == 0 && v8 >= *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessagesThreshold))
  {
    goto LABEL_6;
  }

  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages) = v10;
  sub_22967651C();
LABEL_6:
  v11 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer);
  if (([v11 isRunning] & 1) == 0)
  {
    [v11 resume];
  }
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.timerDidFire(_:)(HMFTimer *a1)
{
  v2 = sub_22A4DD2FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_22A4DD31C();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    sub_22956540C();
    v9 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer);
    if (sub_22A4DDEDC())
    {
      *(v1 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired) = 1;
      sub_22967651C();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22967651C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD2FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v1[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_22A4DD31C();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v15 = OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection;
    if (v1[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] == 1)
    {
      v16 = *&v1[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages];
      v17 = 1;
      if ((v16 & 0x8000000000000000) == 0 && v16 >= *&v1[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessagesThreshold])
      {
        v17 = v1[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] ^ 1;
      }
    }

    else
    {
      v17 = 0;
    }

    sub_229541CB0(ObjectType, &off_283CDF4A0);
    v18 = v1;
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109888;
      *(v21 + 4) = v17 & 1;
      *(v21 + 8) = 1024;
      *(v21 + 10) = v1[v15];
      *(v21 + 14) = 2048;
      *(v21 + 16) = *(v18 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages);
      *(v21 + 24) = 1024;
      *(v21 + 26) = *(&v18->isa + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired);

      _os_log_impl(&dword_229538000, v19, v20, "Has connectivity: %{BOOL}d (has underlying connection: %{BOOL}d, failed messages, %ld, connectivity lost timer fired: %{BOOL}d)", v21, 0x1Eu);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    else
    {

      v19 = v18;
    }

    (*(v4 + 8))(v7, v3);
    v22 = (v18 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity);
    os_unfair_lock_lock((v18 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity));
    if ((v17 & 1) == LOBYTE(v22[1]._os_unfair_lock_opaque))
    {
      os_unfair_lock_unlock(v22);
    }

    else
    {
      LOBYTE(v22[1]._os_unfair_lock_opaque) = v17 & 1;
      os_unfair_lock_unlock(v22);
      v23 = *(&v18->isa + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_delegate);
      if (v23)
      {
        [v23 hasConnectivityDidChangeFor_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id HMDRemoteConnectivityMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HMDRemoteConnectivityMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMDRemoteConnectivityMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_229676994()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = v1;
  v9 = sub_22957F3C0(0, 0, v5, &unk_22A57C258, v8);
  v10 = *(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_streamTask);
  *(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_streamTask) = v9;
}

uint64_t sub_229676AF0()
{
  v1 = OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_streamTask;
  if (*(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_streamTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_streamTask);

    sub_22A4DDA7C();
  }

  sub_2296775B0(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_eventStream);
  v3 = *(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_backend + 24);
  v4 = *(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_backend + 40);
  sub_2295798D4(*(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_backend), *(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_backend + 8));

  v5 = *(v0 + v1);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s15SecureSubmitterCMa()
{
  result = qword_27D87E628;
  if (!qword_27D87E628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_229676C2C()
{
  sub_2295A44E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_229676CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[35] = a4;
  v5[36] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D87E638, &qword_22A57C260);
  v5[37] = v6;
  v7 = *(v6 - 8);
  v5[38] = v7;
  v8 = *(v7 + 64) + 15;
  v5[39] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) - 8) + 64) + 15;
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v10 = sub_22A4DD07C();
  v5[42] = v10;
  v11 = *(v10 - 8);
  v5[43] = v11;
  v12 = *(v11 + 64) + 15;
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229676E48, 0, 0);
}

uint64_t sub_229676E48()
{
  v29 = v0;
  v1 = v0[45];
  sub_229541CB0(v0[36], &off_283CDF4B8);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[45];
  v6 = v0[42];
  v7 = v0[43];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_2295A3E30(0xD000000000000020, 0x800000022A58F9F0, &v28);
    _os_log_impl(&dword_229538000, v2, v3, "Configuring %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[46] = v10;
  v11 = v0[35];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = v0[40];
    v14 = v0[41];
    v15 = v0[39];
    v16 = v0[35];
    sub_2296776D8(Strong + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_eventStream, v13);

    sub_2295F5AFC(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D0, &qword_22A57A390);
    sub_22A4DDA3C();
    swift_beginAccess();
    v17 = *(MEMORY[0x277D85798] + 4);
    v18 = swift_task_alloc();
    v0[47] = v18;
    *v18 = v0;
    v18[1] = sub_229677108;
    v19 = v0[39];
    v20 = v0[37];

    return MEMORY[0x2822003E8](v0 + 14, 0, 0, v20);
  }

  else
  {
    v22 = v0[44];
    v21 = v0[45];
    v24 = v0[40];
    v23 = v0[41];
    v25 = v0[39];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_229677108()
{
  v1 = *(*v0 + 376);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229677204, 0, 0);
}

uint64_t sub_229677204()
{
  v40 = v0;
  if (*(v0 + 136))
  {
    v1 = *(v0 + 280);
    sub_229557188((v0 + 112), v0 + 152);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(v0 + 352);
      sub_229541CB0(*(v0 + 288), &off_283CDF4B8);
      sub_22957F1C4(v0 + 152, v0 + 192);
      v5 = sub_22A4DD05C();
      v6 = sub_22A4DDCDC();
      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 368);
      v9 = *(v0 + 352);
      v10 = *(v0 + 336);
      if (v7)
      {
        v38 = *(v0 + 344) + 8;
        v37 = *(v0 + 368);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v39 = v12;
        *v11 = 136315138;
        v13 = *(v0 + 224);
        __swift_project_boxed_opaque_existential_0((v0 + 192), *(v0 + 216));
        v14 = *(v13 + 16);
        v15 = sub_22A4DE5CC();
        v17 = v16;
        __swift_destroy_boxed_opaque_existential_0((v0 + 192));
        v18 = sub_2295A3E30(v15, v17, &v39);

        *(v11 + 4) = v18;
        _os_log_impl(&dword_229538000, v5, v6, "Submitting to PET: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x22AAD4E50](v12, -1, -1);
        MEMORY[0x22AAD4E50](v11, -1, -1);

        v37(v9, v10);
      }

      else
      {

        v8(v9, v10);
        __swift_destroy_boxed_opaque_existential_0((v0 + 192));
      }

      v29 = *(v0 + 176);
      v28 = *(v0 + 184);
      v30 = __swift_project_boxed_opaque_existential_0((v0 + 152), v29);
      v32 = *(v3 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_backend + 16);
      v31 = *(v3 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_backend + 32);
      *(v0 + 16) = *(v3 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_backend);
      *(v0 + 32) = v32;
      *(v0 + 48) = v31;
      sub_229677748(v0 + 16, v0 + 64);
      sub_2297A4178(v30, v29, *(v28 + 24));
      sub_2296777A4(v0 + 16);

      __swift_destroy_boxed_opaque_existential_0((v0 + 152));
      v33 = *(MEMORY[0x277D85798] + 4);
      v34 = swift_task_alloc();
      *(v0 + 376) = v34;
      *v34 = v0;
      v34[1] = sub_229677108;
      v35 = *(v0 + 312);
      v36 = *(v0 + 296);

      return MEMORY[0x2822003E8](v0 + 112, 0, 0, v36);
    }

    v20 = *(v0 + 328);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    sub_2296775B0(v20);
    __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  }

  else
  {
    v19 = *(v0 + 328);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    sub_2296775B0(v19);
  }

  v22 = *(v0 + 352);
  v21 = *(v0 + 360);
  v24 = *(v0 + 320);
  v23 = *(v0 + 328);
  v25 = *(v0 + 312);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2296775B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_229677618(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_229676CD0(a1, v4, v5, v7, v6);
}

uint64_t sub_2296776D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296777F8()
{
  v0 = [swift_getObjCClassFromMetadata() logCategory];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    return sub_22A4DD08C();
  }

  else
  {
    sub_22A4DE1FC();

    v2 = [v0 description];
    v3 = sub_22A4DD5EC();
    v5 = v4;

    MEMORY[0x22AAD08C0](v3, v5);

    result = sub_22A4DE39C();
    __break(1u);
  }

  return result;
}

void sub_22967792C(void *a1)
{
  swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    [v1 setAccessoryServer_];
    [v1 setReachable_];
    v28 = [v1 matterAdapter];
    [v28 configureMatterAccessory];

    v11 = v28;
  }

  else
  {
    sub_2296777F8();
    v12 = a1;
    v13 = v1;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315394;
      v29 = 91;
      v30 = 0xE100000000000000;
      v31 = v17;
      v18 = [v13 logIdentifier];
      v19 = sub_22A4DD5EC();
      v21 = v20;

      MEMORY[0x22AAD08C0](v19, v21);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v22 = sub_2295A3E30(v29, v30, &v31);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v12;
      v23 = v27;
      *v27 = v12;
      v24 = v12;
      _os_log_impl(&dword_229538000, v14, v15, "%s Invalid accessory server type: %@", v16, 0x16u);
      sub_2295A1C40(v23);
      MEMORY[0x22AAD4E50](v23, -1, -1);
      v25 = v28;
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

id sub_229677CB0(void *a1)
{
  swift_getObjectType();
  v3 = sub_22A4DD07C();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 identifier];
  v8 = sub_22A4DD5EC();
  v10 = v9;

  v11 = [a1 identifier];
  v12 = sub_22A4DD5EC();
  v14 = v13;

  if (v8 == v12 && v10 == v14)
  {
  }

  else
  {
    v16 = sub_22A4DE60C();

    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  sub_2296777F8();
  v18 = v1;
  v19 = a1;
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCDC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v22 = 136315394;
    v35 = 91;
    v36 = 0xE100000000000000;
    v37 = v24;
    v25 = [v18 logIdentifier];
    v26 = sub_22A4DD5EC();
    v28 = v27;

    MEMORY[0x22AAD08C0](v26, v28);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v29 = sub_2295A3E30(v35, v36, &v37);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v19;
    *v23 = v19;
    v30 = v19;
    _os_log_impl(&dword_229538000, v20, v21, "%s found accessory server: %@", v22, 0x16u);
    sub_2295A1C40(v23);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    v31 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AAD4E50](v31, -1, -1);
    MEMORY[0x22AAD4E50](v22, -1, -1);
  }

  (*(v33 + 8))(v6, v34);
  return [v18 setReachable_];
}

void sub_229678034(uint64_t a1, unint64_t a2)
{
  swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 accessoryServer];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 identifier];

    v13 = sub_22A4DD5EC();
    v15 = v14;

    if (v13 == a1 && v15 == a2)
    {
    }

    else
    {
      v17 = sub_22A4DE60C();

      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    sub_2296777F8();
    v18 = v2;

    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCDC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315394;
      v36 = 91;
      v37 = 0xE100000000000000;
      v38 = v22;
      v23 = [v18 logIdentifier];
      v24 = sub_22A4DD5EC();
      v33 = v6;
      v34 = v5;
      v25 = v24;
      v27 = v26;

      MEMORY[0x22AAD08C0](v25, v27);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v28 = sub_2295A3E30(v36, v37, &v38);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_2295A3E30(a1, a2, &v38);
      _os_log_impl(&dword_229538000, v19, v20, "%s lost accessory server: %s", v21, 0x16u);
      v29 = v35;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);

      (*(v33 + 8))(v9, v34);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    [v18 setReachable_];
    [v18 setAccessoryServer_];
    v30 = [v18 matterAdapter];
    v31 = [v30 useMatterPlugin];

    if ((v31 & 1) == 0)
    {
      v32 = [v18 matterAdapter];
      [v32 setMatterDevice_];
    }
  }
}

uint64_t sub_229678438()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    sub_22A4DD5EC();
    v1 = sub_22A4DD5AC();
  }

  sub_229678A8C();
  v2 = sub_22A4DDEBC();
  v3 = [objc_allocWithZone(HMDAccessoryTransportInformation) initWithServerIdentifier:v1 instanceID:v2 linkType:1];

  v4 = [v3 transportInfoDictionary];
  v5 = sub_22A4DD49C();

  v6 = sub_22976F484(v5);

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D148, &unk_22A578040);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_22A576180;
    *(v7 + 32) = v6;
  }

  else
  {

    return 0;
  }

  return v7;
}

void sub_229678580(void *a1, uint64_t a2)
{
  v3 = v2;
  v32.super_class = HMDMatterAccessory;
  objc_msgSendSuper2(&v32, sel_populateModelObject_version_, a1, a2);
  sub_229678A8C();
  v5 = sub_22A4DDEAC();
  [a1 setSupportsNativeMatter_];

  v6 = [v3 identifier];
  if (!v6)
  {
    sub_22A4DD5EC();
    v6 = sub_22A4DD5AC();
  }

  v7 = *MEMORY[0x277CFED10];
  v8 = sub_22A4DDBDC();
  v9 = HAPUniqueIdentifier();

  if (!v9)
  {
    sub_22A4DD5EC();
    v9 = sub_22A4DD5AC();
  }

  [a1 setUniqueIdentifier_];

  v10 = [v3 matterNodeID];
  [a1 setChipNodeID_];

  v11 = [v3 matterVendorID];
  [a1 setChipVendorID_];

  v12 = [v3 matterProductID];
  [a1 setChipProductID_];

  v13 = [v3 matterWEDSupport];
  [a1 setChipWEDSupport_];

  v14 = [v3 matterExtendedMACAddress];
  [a1 setChipExtendedMACAddress_];

  v15 = [v3 matterSoftwareVersionNumber];
  [a1 setMatterSoftwareVersionNumber_];

  v16 = [v3 supportedLinkLayerTypes];
  [a1 setSupportedLinkLayerTypes_];

  v17 = [v3 setupHash];
  v18 = sub_22A4DB62C();
  v20 = v19;

  v21 = sub_22A4DB61C();
  sub_2295798D4(v18, v20);
  [a1 setAccessorySetupHash_];

  v22 = [v3 publicKey];
  v23 = sub_22A4DB62C();
  v25 = v24;

  v26 = sub_22A4DB61C();
  sub_2295798D4(v23, v25);
  [a1 setPublicKey_];

  v27 = [v3 pairingUsername];
  if (!v27)
  {
    sub_22A4DD5EC();
    v27 = sub_22A4DD5AC();
  }

  [a1 setPairingUsername_];

  [v3 certificationStatus];
  v28 = sub_22A4DDBDC();
  [a1 setCertificationStatus_];

  [v3 communicationProtocol];
  v29 = sub_22A4DDBDC();
  [a1 setCommunicationProtocol_];

  if (sub_229678438())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
    v30 = sub_22A4DD81C();
  }

  else
  {
    v30 = 0;
  }

  [a1 setTransportInformation_];

  v31 = [v3 chipStorage];
  [v31 updateAccessoryModel_];
}