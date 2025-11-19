unsigned __int8 *sub_247945E6C(_BYTE *a1, void *a2)
{
  v2 = 0xEE00435346737365;
  v3 = 0x72506E6F74747562;
  v4 = 0x8000000247952580;
  v5 = 0xD000000000000013;
  if (*a1 == 2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x80000002479525A0;
  }

  if (!*a1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000247952550;
  }

  if (*a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  v51 = v6;
  v52 = v7;

  MEMORY[0x24C1AE4C0](0xD000000000000025, 0x80000002479579C0);

  if (a2 && (v9 = sub_24794EEF4(), v10 = [a2 stringForKey_], v9, v10))
  {
    v11 = sub_24794EF04();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = HIBYTE(v13) & 0xF;
  v15 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v39 = 0;
    v38 = 1;
    goto LABEL_81;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {

    LOBYTE(v50) = 0;
    v20 = sub_2479435DC(v11, v13, 10);
    v38 = v48;
    goto LABEL_78;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {

    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_92;
    }

    result = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
    while (1)
    {
      v18 = *result;
      if (v18 == 43)
      {
        if (v15 < 1)
        {
          goto LABEL_95;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (result)
        {
          v27 = result + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_76;
            }

            v29 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_76;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }
        }
      }

      else if (v18 == 45)
      {
        if (v15 < 1)
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (result)
        {
          v21 = result + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }

LABEL_76:
          v20 = 0;
          LOBYTE(v19) = 1;
          goto LABEL_77;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (result)
        {
          do
          {
            v33 = *result - 48;
            if (v33 > 9)
            {
              goto LABEL_76;
            }

            v34 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_76;
            }

            ++result;
          }

          while (--v15);
        }
      }

LABEL_75:
      LOBYTE(v19) = 0;
LABEL_77:
      LOBYTE(v50) = v19;
      v38 = v19;
LABEL_78:

      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v20;
      }

LABEL_81:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v40 = sub_24794ED34();
      __swift_project_value_buffer(v40, qword_27EE58DF8);
      v41 = sub_24794ED14();
      v42 = sub_24794F154();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v50 = v44;
        v51 = v39;
        *v43 = 136315138;
        LOBYTE(v52) = v38 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577A0, &unk_247952330);
        v45 = sub_24794EF14();
        v47 = sub_247924380(v45, v46, &v50);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_2478E1000, v41, v42, "#SamplingUtils: get UserDefault Total SamplingCount is %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x24C1AF180](v44, -1, -1);
        MEMORY[0x24C1AF180](v43, -1, -1);
      }

      if (v38)
      {
        return 0;
      }

      if ((v39 & 0x8000000000000000) == 0)
      {
        return v39;
      }

      __break(1u);
LABEL_92:
      result = sub_24794F394();
      v15 = v49;
    }
  }

  v51 = v11;
  v52 = v13 & 0xFFFFFFFFFFFFFFLL;
  if (v11 != 43)
  {
    if (v11 != 45)
    {
      if (!v14)
      {
        goto LABEL_76;
      }

      v20 = 0;
      v35 = &v51;
      do
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          goto LABEL_76;
        }

        v37 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          goto LABEL_76;
        }

        v20 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          goto LABEL_76;
        }

        v35 = (v35 + 1);
        --v14;
      }

      while (v14);
      goto LABEL_75;
    }

    if (v14)
    {
      v19 = v14 - 1;
      if (v14 != 1)
      {
        v20 = 0;
        v24 = &v51 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v19)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_94;
  }

  if (v14)
  {
    v19 = v14 - 1;
    if (v14 != 1)
    {
      v20 = 0;
      v30 = &v51 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v19)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

LABEL_96:
  __break(1u);
  return result;
}

unsigned __int8 *sub_2479463F8(_BYTE *a1, void *a2)
{
  v2 = 0xEE00435346737365;
  v3 = 0x72506E6F74747562;
  v4 = 0x8000000247952580;
  v5 = 0xD000000000000013;
  if (*a1 == 2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x80000002479525A0;
  }

  if (!*a1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000247952550;
  }

  if (*a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  v51 = v6;
  v52 = v7;

  MEMORY[0x24C1AE4C0](0xD00000000000001CLL, 0x8000000247957A50);

  if (a2 && (v9 = sub_24794EEF4(), v10 = [a2 stringForKey_], v9, v10))
  {
    v11 = sub_24794EF04();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = HIBYTE(v13) & 0xF;
  v15 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v39 = 0;
    v38 = 1;
    goto LABEL_81;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {

    LOBYTE(v50) = 0;
    v20 = sub_2479435DC(v11, v13, 10);
    v38 = v48;
    goto LABEL_78;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {

    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_92;
    }

    result = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
    while (1)
    {
      v18 = *result;
      if (v18 == 43)
      {
        if (v15 < 1)
        {
          goto LABEL_95;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (result)
        {
          v27 = result + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_76;
            }

            v29 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_76;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }
        }
      }

      else if (v18 == 45)
      {
        if (v15 < 1)
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (result)
        {
          v21 = result + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }

LABEL_76:
          v20 = 0;
          LOBYTE(v19) = 1;
          goto LABEL_77;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (result)
        {
          do
          {
            v33 = *result - 48;
            if (v33 > 9)
            {
              goto LABEL_76;
            }

            v34 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_76;
            }

            ++result;
          }

          while (--v15);
        }
      }

LABEL_75:
      LOBYTE(v19) = 0;
LABEL_77:
      LOBYTE(v50) = v19;
      v38 = v19;
LABEL_78:

      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v20;
      }

LABEL_81:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v40 = sub_24794ED34();
      __swift_project_value_buffer(v40, qword_27EE58DF8);
      v41 = sub_24794ED14();
      v42 = sub_24794F154();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v50 = v44;
        v51 = v39;
        *v43 = 136315138;
        LOBYTE(v52) = v38 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577A0, &unk_247952330);
        v45 = sub_24794EF14();
        v47 = sub_247924380(v45, v46, &v50);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_2478E1000, v41, v42, "SamplingUtils: get userDefault Intermediate upload count is %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x24C1AF180](v44, -1, -1);
        MEMORY[0x24C1AF180](v43, -1, -1);
      }

      if (v38)
      {
        return 0;
      }

      if ((v39 & 0x8000000000000000) == 0)
      {
        return v39;
      }

      __break(1u);
LABEL_92:
      result = sub_24794F394();
      v15 = v49;
    }
  }

  v51 = v11;
  v52 = v13 & 0xFFFFFFFFFFFFFFLL;
  if (v11 != 43)
  {
    if (v11 != 45)
    {
      if (!v14)
      {
        goto LABEL_76;
      }

      v20 = 0;
      v35 = &v51;
      do
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          goto LABEL_76;
        }

        v37 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          goto LABEL_76;
        }

        v20 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          goto LABEL_76;
        }

        v35 = (v35 + 1);
        --v14;
      }

      while (v14);
      goto LABEL_75;
    }

    if (v14)
    {
      v19 = v14 - 1;
      if (v14 != 1)
      {
        v20 = 0;
        v24 = &v51 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v19)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_94;
  }

  if (v14)
  {
    v19 = v14 - 1;
    if (v14 != 1)
    {
      v20 = 0;
      v30 = &v51 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v19)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

LABEL_96:
  __break(1u);
  return result;
}

unsigned __int8 *sub_247946984(_BYTE *a1, void *a2)
{
  v2 = 0xD000000000000015;
  v3 = 0xEE00435346737365;
  v4 = 0x8000000247952580;
  v5 = 0xD000000000000011;
  if (*a1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000002479525A0;
  }

  if (*a1)
  {
    v2 = 0x72506E6F74747562;
  }

  else
  {
    v3 = 0x8000000247952550;
  }

  if (*a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  v50 = v2;
  v51 = v6;

  MEMORY[0x24C1AE4C0](0xD000000000000015, 0x8000000247957A30);

  if (a2 && (v8 = sub_24794EEF4(), v9 = [a2 stringForKey_], v8, v9))
  {
    v10 = sub_24794EF04();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = HIBYTE(v12) & 0xF;
  v14 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v15 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    v38 = 0;
    v37 = 1;
    goto LABEL_78;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {

    LOBYTE(v49) = 0;
    v19 = sub_2479435DC(v10, v12, 10);
    v37 = v47;
    goto LABEL_75;
  }

  if ((v12 & 0x2000000000000000) == 0)
  {

    if ((v10 & 0x1000000000000000) == 0)
    {
      goto LABEL_89;
    }

    result = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
    while (1)
    {
      v17 = *result;
      if (v17 == 43)
      {
        if (v14 < 1)
        {
          goto LABEL_92;
        }

        v18 = v14 - 1;
        if (v14 == 1)
        {
          goto LABEL_73;
        }

        v19 = 0;
        if (result)
        {
          v26 = result + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              goto LABEL_73;
            }

            v28 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_73;
            }

            v19 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              goto LABEL_73;
            }

            ++v26;
            if (!--v18)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else if (v17 == 45)
      {
        if (v14 < 1)
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v18 = v14 - 1;
        if (v14 == 1)
        {
          goto LABEL_73;
        }

        v19 = 0;
        if (result)
        {
          v20 = result + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v18)
            {
              goto LABEL_74;
            }
          }

LABEL_73:
          v19 = 0;
          LOBYTE(v18) = 1;
          goto LABEL_74;
        }
      }

      else
      {
        if (!v14)
        {
          goto LABEL_73;
        }

        v19 = 0;
        if (result)
        {
          do
          {
            v32 = *result - 48;
            if (v32 > 9)
            {
              goto LABEL_73;
            }

            v33 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_73;
            }

            v19 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              goto LABEL_73;
            }

            ++result;
          }

          while (--v14);
        }
      }

LABEL_72:
      LOBYTE(v18) = 0;
LABEL_74:
      LOBYTE(v49) = v18;
      v37 = v18;
LABEL_75:

      if (v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = v19;
      }

LABEL_78:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v39 = sub_24794ED34();
      __swift_project_value_buffer(v39, qword_27EE58DF8);
      v40 = sub_24794ED14();
      v41 = sub_24794F154();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v49 = v43;
        v50 = v38;
        *v42 = 136315138;
        LOBYTE(v51) = v37 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577A0, &unk_247952330);
        v44 = sub_24794EF14();
        v46 = sub_247924380(v44, v45, &v49);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_2478E1000, v40, v41, "#SamplingUtils: get UserDefault Total SamplingCount is %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C1AF180](v43, -1, -1);
        MEMORY[0x24C1AF180](v42, -1, -1);
      }

      if (v37)
      {
        return 0;
      }

      if ((v38 & 0x8000000000000000) == 0)
      {
        return v38;
      }

      __break(1u);
LABEL_89:
      result = sub_24794F394();
      v14 = v48;
    }
  }

  v50 = v10;
  v51 = v12 & 0xFFFFFFFFFFFFFFLL;
  if (v10 != 43)
  {
    if (v10 != 45)
    {
      if (!v13)
      {
        goto LABEL_73;
      }

      v19 = 0;
      v34 = &v50;
      do
      {
        v35 = *v34 - 48;
        if (v35 > 9)
        {
          goto LABEL_73;
        }

        v36 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          goto LABEL_73;
        }

        v19 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          goto LABEL_73;
        }

        v34 = (v34 + 1);
        --v13;
      }

      while (v13);
      goto LABEL_72;
    }

    if (v13)
    {
      v18 = v13 - 1;
      if (v13 != 1)
      {
        v19 = 0;
        v23 = &v50 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v18)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_91;
  }

  if (v13)
  {
    v18 = v13 - 1;
    if (v13 != 1)
    {
      v19 = 0;
      v29 = &v50 + 1;
      while (1)
      {
        v30 = *v29 - 48;
        if (v30 > 9)
        {
          break;
        }

        v31 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v31 + v30;
        if (__OFADD__(v31, v30))
        {
          break;
        }

        ++v29;
        if (!--v18)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_93:
  __break(1u);
  return result;
}

unint64_t sub_247946F14(_BYTE *a1, void *a2)
{
  v2 = 0xEE00435346737365;
  v3 = 0x8000000247952580;
  v4 = 0xD000000000000011;
  if (*a1 != 2)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000002479525A0;
  }

  v5 = 0xD000000000000015;
  if (*a1)
  {
    v5 = 0x72506E6F74747562;
  }

  else
  {
    v2 = 0x8000000247952550;
  }

  if (*a1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v5 = v4;
    v6 = v3;
  }

  v27 = v5;
  v28 = v6;

  MEMORY[0x24C1AE4C0](0xD000000000000013, 0x8000000247957A10);

  if (a2)
  {
    v8 = sub_24794EEF4();

    v9 = [a2 stringForKey_];

    if (v9)
    {
      v10 = sub_24794EF04();
      v12 = v11;

      v13 = v10;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v13 = 0;
  v12 = 0xE000000000000000;
LABEL_14:
  v27 = 0;
  v14 = sub_247943FDC(v13, v12);

  if (v14)
  {
    v15 = v27;
  }

  else
  {
    v15 = 0;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v16 = !v14;
  v17 = sub_24794ED34();
  __swift_project_value_buffer(v17, qword_27EE58DF8);
  v18 = sub_24794ED14();
  v19 = sub_24794F154();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 136315138;
    v27 = v15;
    LOBYTE(v28) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577A8, &qword_247952340);
    v22 = sub_24794EF14();
    v24 = sub_247924380(v22, v23, &v26);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_2478E1000, v18, v19, "#SamplingUtils: get UserDefault User Selection Chance is %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C1AF180](v21, -1, -1);
    MEMORY[0x24C1AF180](v20, -1, -1);
  }

  return v15;
}

BOOL sub_2479471EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_247944574(a1, a2, a3);
  v6 = v5;
  if (v5)
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v7 = sub_24794ED34();
    __swift_project_value_buffer(v7, qword_27EE58DF8);

    v8 = sub_24794ED14();
    v9 = sub_24794F154();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_247924380(a1, a2, &v15);
      v12 = "#SamplingUtils: audio requestId: %s is found";
LABEL_10:
      _os_log_impl(&dword_2478E1000, v8, v9, v12, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1AF180](v11, -1, -1);
      MEMORY[0x24C1AF180](v10, -1, -1);
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v13 = sub_24794ED34();
    __swift_project_value_buffer(v13, qword_27EE58DF8);

    v8 = sub_24794ED14();
    v9 = sub_24794F154();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_247924380(a1, a2, &v15);
      v12 = "#SamplingUtils: audio requestId: %s is not found";
      goto LABEL_10;
    }
  }

  return v6 != 0;
}

id sub_247947428(void *a1)
{
  v2 = sub_24794EEF4();
  v3 = [a1 BOOLForKey_];

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v4 = sub_24794ED34();
  __swift_project_value_buffer(v4, qword_27EE58DF8);
  v5 = sub_24794ED14();
  v6 = sub_24794F154();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    if (v3)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v3)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = sub_247924380(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2478E1000, v5, v6, "#SamplingUtils: isBypassingSATTrigger: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1AF180](v8, -1, -1);
    MEMORY[0x24C1AF180](v7, -1, -1);
  }

  return v3;
}

void sub_2479475D4(uint64_t a1)
{
  v3 = sub_24794EA84();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  v8 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v9 = sub_24794321C(v6, 3, 0);
  if (v1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v10 = sub_24794ED34();
    __swift_project_value_buffer(v10, qword_27EE58DF8);
    v11 = v1;
    v12 = sub_24794ED14();
    v13 = sub_24794F164();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = sub_24794F524();
      v18 = sub_247924380(v16, v17, &v36);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2478E1000, v12, v13, "#Utils: Failed to read audio file: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1AF180](v15, -1, -1);
      MEMORY[0x24C1AF180](v14, -1, -1);
    }

    sub_24791EF2C();
    swift_allocError();
    *v19 = v1;
    *(v19 + 8) = 0;
    *(v19 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v20 = v9;
    v21 = [v9 processingFormat];
    [v21 sampleRate];
    v23 = v22;

    [objc_opt_self() inputRecordingSampleRate];
    v25 = v24;
    if (v23 == v24)
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v26 = sub_24794ED34();
      __swift_project_value_buffer(v26, qword_27EE58DF8);
      v27 = sub_24794ED14();
      v28 = sub_24794F154();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        *(v29 + 4) = v23;
        _os_log_impl(&dword_2478E1000, v27, v28, "#Utils: audio file validated successfully with sample rate: %fHz", v29, 0xCu);
        MEMORY[0x24C1AF180](v29, -1, -1);
      }
    }

    else
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v30 = sub_24794ED34();
      __swift_project_value_buffer(v30, qword_27EE58DF8);
      v31 = sub_24794ED14();
      v32 = sub_24794F164();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134218240;
        *(v33 + 4) = v23;
        *(v33 + 12) = 2048;
        *(v33 + 14) = v25;
        _os_log_impl(&dword_2478E1000, v31, v32, "#Utils: audio sampling rate: %f is not %fHz", v33, 0x16u);
        MEMORY[0x24C1AF180](v33, -1, -1);
      }

      sub_24791EF2C();
      swift_allocError();
      *v34 = v23;
      *(v34 + 8) = v25;
      *(v34 + 16) = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_247947A5C()
{
  v0 = IDSCopyLocalDeviceUniqueID();
  if (v0)
  {
    v1 = v0;
    v2 = sub_24794EF04();
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v3 = sub_24794ED34();
    __swift_project_value_buffer(v3, qword_27EE58DF8);
    v4 = sub_24794ED14();
    v5 = sub_24794F164();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2478E1000, v4, v5, "#CollectionManagerFactor: cannot get localDeviceId, do not update the dependencies", v6, 2u);
      MEMORY[0x24C1AF180](v6, -1, -1);
    }

    return 0;
  }

  return v2;
}

uint64_t sub_247947B7C()
{
  v0 = sub_24794EDE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57788, &qword_2479522F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = dispatch_semaphore_create(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v15 = sub_24794F0E4();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = v13;
  v16[6] = v12;
  v17 = v14;

  v18 = v12;
  sub_247941C98(0, 0, v11, &unk_247952300, v16);

  sub_24794EDD4();
  sub_24794EDF4();
  v19 = *(v1 + 8);
  v19(v5, v0);
  sub_24794F1C4();
  v19(v7, v0);
  if (sub_24794EDA4())
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v20 = sub_24794ED34();
    __swift_project_value_buffer(v20, qword_27EE58DF8);
    v21 = sub_24794ED14();
    v22 = sub_24794F164();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2478E1000, v21, v22, "#SamplingUtils: Location service authorization check timed out", v23, 2u);
      MEMORY[0x24C1AF180](v23, -1, -1);
    }

    return 0;
  }

  else
  {

    swift_beginAccess();
    v24 = *(v13 + 16);
  }

  return v24;
}

void sub_247947EF0()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  [objc_opt_self() removeAllAudioDataWithError_];
  v0 = v10[0];
  if (v10[0])
  {
    v1 = qword_27EE571C0;
    v2 = v10[0];
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = sub_24794ED34();
    __swift_project_value_buffer(v3, qword_27EE58DF8);
    v4 = sub_24794ED14();
    v5 = sub_24794F164();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v2;
      *v7 = v0;
      v8 = v2;
      _os_log_impl(&dword_2478E1000, v4, v5, "#SamplingUtils cleanup all audio data with error: %@", v6, 0xCu);
      sub_2478E9620(v7, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v7, -1, -1);
      MEMORY[0x24C1AF180](v6, -1, -1);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_24794808C(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = sub_24794EBB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Utils();
  sub_247940B60(a1, v6);
  v7 = objc_opt_self();
  v8 = sub_24794EB34();
  v21[0] = 0;
  [v7 cleanUpAudioOnAndBeforeDate:v8 error:v21];

  v9 = v21[0];
  if (v21[0])
  {
    v10 = qword_27EE571C0;
    v11 = v21[0];
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = sub_24794ED34();
    __swift_project_value_buffer(v12, qword_27EE58DF8);
    v13 = v11;
    v14 = sub_24794ED14();
    v15 = sub_24794F164();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v9;
      v18 = v13;
      _os_log_impl(&dword_2478E1000, v14, v15, "#SamplingUtils cleanup on date with error: %@", v16, 0xCu);
      sub_2478E9620(v17, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v17, -1, -1);
      MEMORY[0x24C1AF180](v16, -1, -1);
    }

    sub_2478E95CC();
    swift_allocError();
    *v19 = xmmword_247952210;
    *(v19 + 16) = 2;
    swift_willThrow();

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_247948368(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2478E975C;

  return sub_247941654(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_247948430(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2478E975C;

  return sub_247943378(a1, v5);
}

_BYTE *sub_2479484E8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_247948574(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2479485BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_247948624()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57740, &qword_247952158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2479523E0;
  *(inited + 32) = 0x7365757165527368;
  *(inited + 40) = 0xEF746E756F437374;
  v2 = MEMORY[0x277D83B88];
  *(inited + 48) = *v0;
  *(inited + 72) = v2;
  *(inited + 80) = 0x736575716552736ALL;
  *(inited + 88) = 0xEF746E756F437374;
  *(inited + 96) = v0[1];
  *(inited + 120) = v2;
  *(inited + 128) = 0x7365757165526262;
  *(inited + 136) = 0xEF746E756F437374;
  v3 = v0[2];
  *(inited + 168) = v2;
  *(inited + 144) = v3;
  v4 = sub_24794D0D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57748, &qword_247952160);
  swift_arrayDestroy();
  v5 = v0[4];
  if (v5)
  {
    v6 = v0[3];
    v12 = MEMORY[0x277D837D0];
    *&v11 = v6;
    *(&v11 + 1) = v5;
    sub_247933794(&v11, v10);
    sub_24794D544(v0, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9[0] = v4;
    sub_24794B0E4(v10, 0x4974736575716572, 0xE900000000000064, isUniquelyReferenced_nonNull_native);
    return v9[0];
  }

  return v4;
}

uint64_t sub_24794879C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57740, &qword_247952158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2479523E0;
  *(inited + 32) = 1702125924;
  *(inited + 40) = 0xE400000000000000;
  v3 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_date;
  v4 = sub_24794EBB4();
  *(inited + 72) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v1 + v3, v4);
  strcpy((inited + 80), "sessionClockId");
  *(inited + 95) = -18;
  v6 = sub_24794EBD4();
  v7 = MEMORY[0x277D837D0];
  *(inited + 96) = v6;
  *(inited + 104) = v8;
  *(inited + 120) = v7;
  *(inited + 128) = 0x656C61636F6CLL;
  *(inited + 136) = 0xE600000000000000;
  v10 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
  v9 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale + 8);
  *(inited + 168) = v7;
  *(inited + 144) = v10;
  *(inited + 152) = v9;

  v11 = sub_24794D0D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57748, &qword_247952160);
  swift_arrayDestroy();
  v12 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 16);
  v17[0] = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo);
  v17[1] = v12;
  v18 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 32);
  v19 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 24);
  sub_2478E9680(&v19, v16, &qword_27EE57438, &qword_247950E90);
  v13 = sub_247948624();
  sub_24794D204(v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[0] = v11;
  sub_24794D234(v13, sub_24794CDEC, 0, isUniquelyReferenced_nonNull_native, v16);

  return v16[0];
}

uint64_t sub_2479489B8()
{
  v1 = v0;
  v2 = sub_24794EBB4();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  v10 = sub_24794EC04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v21 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo;
  if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 32))
  {
    v36 = v1;
    v22 = *(v21 + 24);

    sub_24794EBC4();

    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v20, v9, v10);
      sub_247949118();
      v33 = *(v11 + 16);
      v34 = v36;
      v33(v18, v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_sessionClockId, v10);
      (*(v37 + 16))(v5, v34 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_date, v38);
      v33(v15, v20, v10);
      v35 = sub_24791A758(v18, v5, v15);
      (*(v11 + 8))(v20, v10);
      return v35;
    }

    sub_2478E9620(v9, &qword_27EE57278, &unk_247950590);
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v23 = sub_24794ED34();
  __swift_project_value_buffer(v23, qword_27EE58DF8);

  v24 = sub_24794ED14();
  v25 = sub_24794F164();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v41 = v27;
    *v26 = 136315138;
    v28 = *(v21 + 32);
    v39 = *(v21 + 24);
    v40 = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
    v29 = sub_24794EF14();
    v31 = sub_247924380(v29, v30, &v41);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_2478E1000, v24, v25, "#SiriSession: Cannot get requestIdUUID from %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x24C1AF180](v27, -1, -1);
    MEMORY[0x24C1AF180](v26, -1, -1);
  }

  return 0;
}

uint64_t sub_247948E08()
{
  v1 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_date;
  v2 = sub_24794EBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 32);

  v4 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_sessionClockId;
  v5 = sub_24794EC04();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale + 8);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SiriSession()
{
  result = qword_27EE577B8;
  if (!qword_27EE577B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247948F60()
{
  result = sub_24794EBB4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_24794EC04();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
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

uint64_t sub_247949050(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_2479490AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_247949118()
{
  result = qword_27EE577C8;
  if (!qword_27EE577C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE577C8);
  }

  return result;
}

uint64_t sub_247949164(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577E0, &unk_247952490);
  result = sub_24794F474();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_247933794((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_24792DB98(v24, &v38);
        sub_2478F65EC(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_24794F2C4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_247933794(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_24794941C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577D0, &qword_247952478);
  v36 = a2;
  result = sub_24794F474();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_247933794(v25, v37);
      }

      else
      {
        sub_2478F65EC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_24794F584();
      sub_24794EF74();
      result = sub_24794F5B4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_247933794(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2479496D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57830, &qword_2479524F0);
  v33 = a2;
  result = sub_24794F474();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_24794F584();
      MEMORY[0x24C1AEAB0](v21);
      result = sub_24794F5B4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_247949964(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24794EBB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57828, &qword_2479524E8);
  v43 = a2;
  result = sub_24794F474();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_24793A29C(&qword_27EE574B0, MEMORY[0x277CC9578]);
      result = sub_24794EEB4();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_247949D40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57820, &qword_2479524E0);
  result = sub_24794F474();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_24794F584();
      sub_24794F5A4();
      result = sub_24794F5B4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_247949FC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57818, &qword_2479524D8);
  result = sub_24794F474();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = (*(v5 + 56) + 24 * v21);
      v24 = v23[1];
      v38 = v23[2];
      v25 = *v23;
      v26 = *(v8 + 40);
      sub_24794F584();
      sub_24794F5A4();
      result = sub_24794F5B4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = (*(v8 + 56) + 24 * v16);
      *v17 = v25;
      v17[1] = v24;
      v5 = v37;
      v17[2] = v38;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_24794A260(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57420, &unk_247950E70);
  v39 = a2;
  result = sub_24794F474();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v39 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_24794F584();
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);

      sub_24794EF74();

      v26 = *(v21 + 32);
      sub_24794F5A4();
      v27 = *(v21 + 40);
      sub_24794F224();

      v28 = *(v21 + 80);
      *(v21 + 84);
      sub_24794F5A4();
      result = sub_24794F5B4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
      v5 = v38;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24794A550(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24794EC04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57808, &qword_2479524C0);
  v43 = a2;
  result = sub_24794F474();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_24793A29C(&qword_27EE57528, MEMORY[0x277CC95F0]);
      result = sub_24794EEB4();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_24794A92C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24794EBB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577F8, &qword_2479524B0);
  v44 = a2;
  result = sub_24794F474();
  v14 = result;
  if (*(v11 + 16))
  {
    v48 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v11;
    v43 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v47 = *(v43 + 72);
      v28 = v27 + v47 * v26;
      if (v44)
      {
        (*v45)(v48, v28, v6);
        v46 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v41)(v48, v28, v6);
        v46 = *(*(v11 + 56) + 8 * v26);
        v29 = v46;
      }

      v30 = *(v14 + 40);
      sub_24793A29C(&qword_27EE574B0, MEMORY[0x277CC9578]);
      result = sub_24794EEB4();
      v31 = -1 << *(v14 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v47 * v22, v48, v6);
      *(*(v14 + 56) + 8 * v22) = v46;
      ++*(v14 + 16);
      v11 = v42;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v11 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v16, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_24794AD08(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24794EBB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577E8, &qword_2479524A0);
  v43 = a2;
  result = sub_24794F474();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_24793A29C(&qword_27EE574B0, MEMORY[0x277CC9578]);
      result = sub_24794EEB4();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

_OWORD *sub_24794B0E4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24792BEF8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24794BF0C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24794941C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_24792BEF8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_24794F514();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_247933794(a1, v23);
  }

  else
  {
    sub_24794BB58(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_24794B274(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_24792C090(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a5 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a5 & 1) == 0)
  {
    v21 = result;
    sub_24794C5D8();
    result = v21;
    goto LABEL_8;
  }

  sub_247949FC0(v18, a5 & 1);
  v22 = *v6;
  result = sub_24792C090(a4);
  if ((v19 & 1) == (v23 & 1))
  {
LABEL_8:
    v24 = *v6;
    if (v19)
    {
      v25 = (v24[7] + 24 * result);
      *v25 = a1;
      v25[1] = a2;
      v25[2] = a3;
      return result;
    }

    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 4 * result) = a4;
    v26 = (v24[7] + 24 * result);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
    v27 = v24[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v24[2] = v28;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for SISchemaInvocationSource(0);
  result = sub_24794F514();
  __break(1u);
  return result;
}

uint64_t sub_24794B3C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24792C168(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_24794A260(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_24792C168(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        type metadata accessor for MetricsCalcDimensions();
        result = sub_24794F514();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_24794C73C();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  *(v20[7] + 8 * v9) = a1;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;
}

uint64_t sub_24794B520(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24794EC04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24792C228(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_24794CB70(MEMORY[0x277CC95F0], &qword_27EE57808, &qword_2479524C0);
      goto LABEL_7;
    }

    sub_24794A550(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_24792C228(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_24794BCAC(v15, v12, a1, v21, MEMORY[0x277CC95F0]);
    }

LABEL_15:
    result = sub_24794F514();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_24794B764(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v7 = v6;
  v11 = sub_24794EBB4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_24792BFBC(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v33();
      goto LABEL_7;
    }

    v34();
    v29 = *v7;
    v30 = sub_24792BFBC(a2);
    if ((v22 & 1) == (v31 & 1))
    {
      v18 = v30;
      v24 = *v7;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v15, a2, v11);
      return sub_24794BBDC(v18, v15, a1, v24);
    }

LABEL_15:
    result = sub_24794F514();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v7;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = v24[7];
  v26 = *(v25 + 8 * v18);
  *(v25 + 8 * v18) = a1;
  v27 = v35;

  return v27(v26);
}

uint64_t sub_24794B954(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24794EBB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24792BFBC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_24794CB70(MEMORY[0x277CC9578], &qword_27EE577E8, &qword_2479524A0);
      goto LABEL_7;
    }

    sub_24794AD08(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_24792BFBC(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_24794BCAC(v15, v12, a1, v21, MEMORY[0x277CC9578]);
    }

LABEL_15:
    result = sub_24794F514();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_24794BB58(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_247933794(a4, (a5[7] + 32 * a1));
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

uint64_t sub_24794BBDC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24794EBB4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

uint64_t sub_24794BCAC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

void *sub_24794BD68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577E0, &unk_247952490);
  v2 = *v0;
  v3 = sub_24794F464();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_24792DB98(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2478F65EC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_247933794(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_24794BF0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577D0, &qword_247952478);
  v2 = *v0;
  v3 = sub_24794F464();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2478F65EC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_247933794(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_24794C0B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57830, &qword_2479524F0);
  v2 = *v0;
  v3 = sub_24794F464();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_24794C20C()
{
  v1 = v0;
  v34 = sub_24794EBB4();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57828, &qword_2479524E8);
  v4 = *v0;
  v5 = sub_24794F464();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_24794C48C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57820, &qword_2479524E0);
  v2 = *v0;
  v3 = sub_24794F464();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_24794C5D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57818, &qword_2479524D8);
  v2 = *v0;
  v3 = sub_24794F464();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *v17;
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
      v20 = *(v4 + 56) + 24 * v14;
      *v20 = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_24794C73C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57420, &unk_247950E70);
  v2 = *v0;
  v3 = sub_24794F464();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_24794C8C8()
{
  v1 = v0;
  v34 = sub_24794EBB4();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577F8, &qword_2479524B0);
  v4 = *v0;
  v5 = sub_24794F464();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;
        result = v24;
        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_24794CB70(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_24794F464();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

uint64_t sub_24794CDEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2478F65EC((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_24794CE38@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2478F65EC(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_247933794(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_2478E9620(v22, &qword_27EE577D8, &unk_247952480);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_24794CF98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577E0, &unk_247952490);
    v3 = sub_24794F494();
    v4 = a1 + 32;

    while (1)
    {
      sub_2478E9680(v4, v13, &qword_27EE57680, &unk_247951BE0);
      result = sub_24792BEB4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_247933794(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24794D0D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577D0, &qword_247952478);
    v3 = sub_24794F494();
    v4 = a1 + 32;

    while (1)
    {
      sub_2478E9680(v4, &v13, &qword_27EE57748, &qword_247952160);
      v5 = v13;
      v6 = v14;
      result = sub_24792BEF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_247933794(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24794D234(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_24794CE38(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_247933794(v46, v44);
  v14 = *a5;
  result = sub_24792BEF8(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_24794941C(v20, a4 & 1);
    v22 = *a5;
    result = sub_24792BEF8(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_24794F514();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_24794BF0C();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_247933794(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_247933794(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_24794CE38(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_247933794(v46, v44);
        v33 = *a5;
        result = sub_24792BEF8(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_24794941C(v37, 1);
          v38 = *a5;
          result = sub_24792BEF8(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          sub_247933794(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_247933794(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_24794CE38(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_2478FE384();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_24794D57C@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if (!*(result + 16))
  {
    goto LABEL_14;
  }

  v3 = result;
  result = sub_24792BEF8(0x7365757165527368, 0xEF746E756F437374);
  if ((v4 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2478F65EC(*(v3 + 56) + 32 * result, v15);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_14;
  }

  v5 = v13;
  result = sub_24792BEF8(0x736575716552736ALL, 0xEF746E756F437374);
  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2478F65EC(*(v3 + 56) + 32 * result, v15);
  result = swift_dynamicCast();
  if (result & 1) != 0 && *(v3 + 16) && (v7 = v13, result = sub_24792BEF8(0x7365757165526262, 0xEF746E756F437374), (v8) && (sub_2478F65EC(*(v3 + 56) + 32 * result, v15), result = swift_dynamicCast(), (result))
  {
    v9 = v13;
    v10 = *(v3 + 16);
    if (v10)
    {
      result = sub_24792BEF8(0x4974736575716572, 0xE900000000000064);
      if (v11)
      {
        sub_2478F65EC(*(v3 + 56) + 32 * result, v15);
        result = swift_dynamicCast();
        v10 = v13;
        v12 = v14;
        if (!result)
        {
          v10 = 0;
          v12 = 0;
        }
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_14:
    v5 = 0;
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 1;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v12;
  return result;
}

uint64_t sub_24794D76C(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v48 - v4;
  v6 = sub_24794EC04();
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v48 - v15;
  v17 = sub_24794EBB4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v48 - v23;
  if (!*(a1 + 16) || (v25 = sub_24792BEF8(1702125924, 0xE400000000000000), (v26 & 1) == 0))
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_10;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v25, v52);
  v27 = swift_dynamicCast();
  (*(v18 + 56))(v16, v27 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_10:
    v31 = &qword_27EE572D0;
    v32 = &unk_2479504E0;
    v33 = v16;
    goto LABEL_11;
  }

  v49 = *(v18 + 32);
  v50 = v18 + 32;
  v49(v24, v16, v17);
  if (!*(a1 + 16) || (v28 = sub_24792BEF8(0x436E6F6973736573, 0xEE0064496B636F6CLL), (v29 & 1) == 0) || (sub_2478F65EC(*(a1 + 56) + 32 * v28, v52), (swift_dynamicCast() & 1) == 0))
  {
LABEL_20:
    (*(v18 + 8))(v24, v17);
    return 0;
  }

  sub_24794EBC4();

  v30 = v51;
  if ((*(v51 + 48))(v5, 1, v6) != 1)
  {
    v35 = v5;
    v36 = *(v30 + 32);
    v36(v12, v35, v6);
    if (*(a1 + 16))
    {
      v37 = sub_24792BEF8(0x656C61636F6CLL, 0xE600000000000000);
      if (v38)
      {
        sub_2478F65EC(*(a1 + 56) + 32 * v37, v52);
        if (swift_dynamicCast())
        {
          v48 = v54;
          sub_24794D57C(a1, v52);
          if (v53 != 1)
          {
            v54 = v52[0];
            v55 = v52[1];
            v39 = v49;
            v51 = v53;
            v49(v22, v24, v17);
            v36(v10, v12, v6);
            v40 = type metadata accessor for SiriSession();
            v41 = *(v40 + 48);
            v42 = *(v40 + 52);
            v43 = swift_allocObject();
            v39(v43 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_date, v22, v17);
            v44 = v43 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo;
            v45 = v55;
            *v44 = v54;
            *(v44 + 16) = v45;
            *(v44 + 32) = v51;
            v36((v43 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_sessionClockId), v10, v6);
            result = v43;
            v46 = (v43 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
            v47 = *(&v48 + 1);
            *v46 = v48;
            v46[1] = v47;
            return result;
          }
        }
      }
    }

    (*(v51 + 8))(v12, v6);
    goto LABEL_20;
  }

  (*(v18 + 8))(v24, v17);
  v31 = &qword_27EE57278;
  v32 = &unk_247950590;
  v33 = v5;
LABEL_11:
  sub_2478E9620(v33, v31, v32);
  return 0;
}

void *sub_24794DD20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57830, &qword_2479524F0);
  v3 = sub_24794F494();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_24792C0FC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_24792C0FC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24794DE30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57818, &qword_2479524D8);
    v3 = sub_24794F494();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 6);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_24792C090(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      v11 = (v3[7] + 24 * result);
      *v11 = v6;
      v11[1] = v7;
      v11[2] = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24794DF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57420, &unk_247950E70);
    v3 = sub_24794F494();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_24792C168(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24794E020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57810, &unk_2479524C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57808, &qword_2479524C0);
    v8 = sub_24794F494();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2478E9680(v10, v6, &qword_27EE57810, &unk_2479524C8);
      result = sub_24792C228(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_24794EC04();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24794E208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE57840, &qword_247952500);
    v3 = sub_24794F494();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24792BEF8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24794E330(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_24794F494();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_2478E9680(v17, v13, a2, v28);
      result = sub_24792BFBC(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_24794EBB4();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24794E510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577F0, &qword_2479524A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577E8, &qword_2479524A0);
    v8 = sub_24794F494();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2478E9680(v10, v6, &qword_27EE577F0, &qword_2479524A8);
      result = sub_24792BFBC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_24794EBB4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}