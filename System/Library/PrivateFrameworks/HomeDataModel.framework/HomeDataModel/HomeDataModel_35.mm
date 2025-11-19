uint64_t sub_1D19B1D68()
{
  v76 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 18);
  *(&v73 + 1) = &type metadata for BasicClusterPath;
  *&v74 = sub_1D18F6128();
  LOWORD(v72) = v3;
  BYTE2(v72) = v4;
  *&v69 = v1;
  *(&v69 + 1) = v2;
  AttributeValueSet.value(for:in:)(78, &v72, v70);
  __swift_destroy_boxed_opaque_existential_1(&v72);
  if (v71)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v5 = swift_dynamicCast();
    if (v5)
    {
      v6 = v72;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = *(&v72 + 1);
    }

    else
    {
      v7 = 0xF000000000000000;
    }
  }

  else
  {
    sub_1D1741A30(v70, &qword_1EC645D58, &unk_1D1E7E530);
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  *&v72 = v1;
  *(&v72 + 1) = v2;
  LOWORD(v73) = v3;
  BYTE2(v73) = v4;
  v8 = sub_1D19B1844();
  if (!v8)
  {
    goto LABEL_83;
  }

  v9 = v8;
  v10 = *(v8 + 2);
  if (!v10)
  {
LABEL_79:

    if (qword_1EE07A0A8 != -1)
    {
LABEL_94:
      swift_once();
    }

    v43 = sub_1D1E6709C();
    __swift_project_value_buffer(v43, qword_1EE07A0B0);
    sub_1D1771B38(v6, v7);
    v44 = sub_1D1E6707C();
    v45 = sub_1D1E6835C();
    sub_1D1716AA4(v6, v7);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v70[0] = v47;
      *v46 = 136315394;
      *(v46 + 4) = sub_1D1B1312C(0xD00000000000002CLL, 0x80000001D1EC17C0, v70);
      *(v46 + 12) = 2080;
      *&v72 = v6;
      *(&v72 + 1) = v7;
      sub_1D1771B38(v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643838, &qword_1D1E8C020);
      v48 = sub_1D1E6789C();
      v50 = sub_1D1B1312C(v48, v49, v70);

      *(v46 + 14) = v50;
      _os_log_impl(&dword_1D16EC000, v44, v45, "%s: Could not find preset matching active preset handle: %s.", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v47, -1, -1);
      MEMORY[0x1D3893640](v46, -1, -1);
    }

    goto LABEL_83;
  }

  v11 = 0;
  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7 == 0xC000000000000000;
  }

  v13 = !v12;
  v68 = v13;
  v14 = v7 >> 62;
  v15 = __OFSUB__(HIDWORD(v6), v6);
  v65 = v15;
  v67 = *(v8 + 2);
  v16 = 32;
  while (1)
  {
    if (v11 >= *(v9 + 2))
    {
      __break(1u);
      goto LABEL_94;
    }

    v17 = *&v9[v16 + 48];
    v18 = *&v9[v16];
    v19 = *&v9[v16 + 16];
    v74 = *&v9[v16 + 32];
    v75 = v17;
    v72 = v18;
    v73 = v19;
    v21 = *(&v19 + 1);
    v20 = v74;
    if (v74 >> 60 == 15)
    {
      if (v7 >> 60 == 15)
      {
        v66 = v19;
        sub_1D1771B38(*(&v19 + 1), v74);
        sub_1D17806DC(&v72, v70);
        sub_1D1771B38(v6, v7);

        sub_1D1716AA4(v21, v20);
        goto LABEL_89;
      }

      goto LABEL_22;
    }

    if (v7 >> 60 != 15)
    {
      break;
    }

LABEL_22:
    sub_1D1771B38(*(&v73 + 1), v74);
    sub_1D1771B38(v6, v7);
    sub_1D1716AA4(v21, v20);
    sub_1D1716AA4(v6, v7);
LABEL_23:
    ++v11;
    v16 += 64;
    if (v10 == v11)
    {
      goto LABEL_79;
    }
  }

  v22 = v74 >> 62;
  if (v74 >> 62 != 3)
  {
    v26 = v7 >> 62;
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v29 = *(*(&v19 + 1) + 16);
        v28 = *(*(&v19 + 1) + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_97;
        }

        if (v14 > 1)
        {
          goto LABEL_50;
        }
      }

      else
      {
LABEL_49:
        v27 = 0;
        if (v26 > 1)
        {
LABEL_50:
          if (v26 != 2)
          {
            if (!v27)
            {
LABEL_85:
              v66 = v19;
              sub_1D1771B38(*(&v19 + 1), v74);
              sub_1D17806DC(&v72, v70);
              sub_1D1771B38(v6, v7);
              sub_1D1716AA4(v6, v7);
              goto LABEL_87;
            }

            goto LABEL_58;
          }

          v33 = *(v6 + 16);
          v32 = *(v6 + 24);
          v30 = __OFSUB__(v32, v33);
          v31 = v32 - v33;
          if (v30)
          {
            goto LABEL_95;
          }

LABEL_52:
          if (v27 == v31)
          {
            if (v27 < 1)
            {
              goto LABEL_85;
            }

            v66 = v19;
            if (v22 > 1)
            {
              if (v22 == 2)
              {
                v62 = *(*(&v19 + 1) + 24);
                v64 = *(*(&v19 + 1) + 16);
                sub_1D1771B38(*(&v19 + 1), v74);
                sub_1D1771B38(v21, v20);
                sub_1D17806DC(&v72, v70);
                sub_1D1771B38(v6, v7);
                v35 = sub_1D1E6616C();
                if (v35)
                {
                  v36 = v35;
                  v37 = sub_1D1E6619C();
                  v38 = v64;
                  if (__OFSUB__(v64, v37))
                  {
                    goto LABEL_101;
                  }

                  v61 = (v64 - v37 + v36);
                }

                else
                {
                  v61 = 0;
                  v38 = v64;
                }

                if (__OFSUB__(v62, v38))
                {
                  goto LABEL_100;
                }

                sub_1D1E6618C();
                v34 = v61;
              }

              else
              {
                *(&v69 + 6) = 0;
                *&v69 = 0;
                sub_1D1771B38(*(&v19 + 1), v74);
                sub_1D1771B38(v21, v20);
                sub_1D17806DC(&v72, v70);
                sub_1D1771B38(v6, v7);
                v34 = &v69;
              }
            }

            else if (v22)
            {
              if (*(&v19 + 1) >> 32 < SDWORD2(v19))
              {
                __break(1u);
LABEL_100:
                __break(1u);
LABEL_101:
                __break(1u);
LABEL_102:
                __break(1u);
              }

              sub_1D1771B38(*(&v19 + 1), v74);
              sub_1D1771B38(v21, v20);
              sub_1D17806DC(&v72, v70);
              sub_1D1771B38(v6, v7);
              v39 = sub_1D1E6616C();
              if (v39)
              {
                v63 = v39;
                v40 = sub_1D1E6619C();
                if (__OFSUB__(v21, v40))
                {
                  goto LABEL_102;
                }

                v41 = (v21 - v40 + v63);
              }

              else
              {
                v41 = 0;
              }

              sub_1D1E6618C();
              v34 = v41;
            }

            else
            {
              *&v69 = *(&v19 + 1);
              DWORD2(v69) = v74;
              WORD6(v69) = WORD2(v74);
              sub_1D1771B38(*(&v19 + 1), v74);
              sub_1D1771B38(v21, v20);
              sub_1D17806DC(&v72, v70);
              sub_1D1771B38(v6, v7);
              v34 = &v69;
            }

            sub_1D199EDB4(v34, v6, v7, v70);
            sub_1D1716AA4(v21, v20);
            sub_1D1716AA4(v6, v7);
            v42 = v70[0];
            sub_1D1716AA4(v21, v20);
            if (v42)
            {
              goto LABEL_88;
            }

            v10 = v67;
            goto LABEL_78;
          }

LABEL_58:
          sub_1D1771B38(*(&v73 + 1), v74);
          sub_1D17806DC(&v72, v70);
          sub_1D1771B38(v6, v7);
          sub_1D1716AA4(v6, v7);
          sub_1D1716AA4(v21, v20);
LABEL_78:
          sub_1D1780738(&v72);
          goto LABEL_23;
        }
      }
    }

    else if (v22)
    {
      LODWORD(v27) = HIDWORD(v19) - DWORD2(v19);
      if (__OFSUB__(HIDWORD(v19), DWORD2(v19)))
      {
        goto LABEL_96;
      }

      v27 = v27;
      if (v14 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v27 = BYTE6(v74);
      if (v14 > 1)
      {
        goto LABEL_50;
      }
    }

    v31 = BYTE6(v7);
    if (v26)
    {
      v31 = HIDWORD(v6) - v6;
      if (v65)
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    goto LABEL_52;
  }

  if (*(&v19 + 1))
  {
    v23 = 0;
  }

  else
  {
    v23 = v74 == 0xC000000000000000;
  }

  v25 = !v23 || v7 >> 62 != 3;
  if ((v25 | v68))
  {
    v26 = v7 >> 62;
    goto LABEL_49;
  }

  v66 = v19;
  sub_1D1771B38(0, 0xC000000000000000);
  sub_1D17806DC(&v72, v70);
  sub_1D1771B38(0, 0xC000000000000000);
  sub_1D1716AA4(0, 0xC000000000000000);
  v21 = 0;
LABEL_87:
  sub_1D1716AA4(v21, v20);
LABEL_88:

LABEL_89:
  if (qword_1EE07A0A8 == -1)
  {
    goto LABEL_90;
  }

LABEL_98:
  swift_once();
LABEL_90:
  v53 = sub_1D1E6709C();
  __swift_project_value_buffer(v53, qword_1EE07A0B0);
  sub_1D17806DC(&v72, v70);
  v54 = sub_1D1E6707C();
  v55 = sub_1D1E6835C();
  sub_1D1780738(&v72);
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v70[0] = v57;
    *v56 = 136315394;
    *(v56 + 4) = sub_1D1B1312C(0xD00000000000002CLL, 0x80000001D1EC17C0, v70);
    *(v56 + 12) = 2080;
    LOBYTE(v69) = v66;
    v58 = ThermostatPresetScenario.label.getter();
    v60 = sub_1D1B1312C(v58, v59, v70);

    *(v56 + 14) = v60;
    _os_log_impl(&dword_1D16EC000, v54, v55, "%s: Current active preset is: %s.", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v57, -1, -1);
    MEMORY[0x1D3893640](v56, -1, -1);
    sub_1D1780738(&v72);
  }

  else
  {

    sub_1D1780738(&v72);
  }

LABEL_83:
  v51 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1D19B2748()
{
  v76 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 18);
  *&v69 = *v0;
  *(&v69 + 1) = v1;
  *(&v73 + 1) = &type metadata for BasicClusterPath;
  *&v74 = sub_1D18F6128();
  LOWORD(v72) = v3;
  BYTE2(v72) = v4;

  AttributeValueSet.value(for:in:)(323551241, &v72, v70);

  __swift_destroy_boxed_opaque_existential_1(&v72);
  if (v71)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v5 = swift_dynamicCast();
    if (v5)
    {
      v6 = v72;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = *(&v72 + 1);
    }

    else
    {
      v7 = 0xF000000000000000;
    }
  }

  else
  {
    sub_1D1741A30(v70, &qword_1EC645D58, &unk_1D1E7E530);
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  *&v72 = v2;
  *(&v72 + 1) = v1;
  LOWORD(v73) = v3;
  BYTE2(v73) = v4;
  v8 = sub_1D19B1844();
  if (!v8)
  {
    goto LABEL_83;
  }

  v9 = v8;
  v10 = *(v8 + 2);
  if (!v10)
  {
LABEL_79:

    if (qword_1EE07A0A8 != -1)
    {
LABEL_94:
      swift_once();
    }

    v43 = sub_1D1E6709C();
    __swift_project_value_buffer(v43, qword_1EE07A0B0);
    sub_1D1771B38(v6, v7);
    v44 = sub_1D1E6707C();
    v45 = sub_1D1E6835C();
    sub_1D1716AA4(v6, v7);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v70[0] = v47;
      *v46 = 136315394;
      *(v46 + 4) = sub_1D1B1312C(0xD00000000000002CLL, 0x80000001D1EC17C0, v70);
      *(v46 + 12) = 2080;
      *&v72 = v6;
      *(&v72 + 1) = v7;
      sub_1D1771B38(v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643838, &qword_1D1E8C020);
      v48 = sub_1D1E6789C();
      v50 = sub_1D1B1312C(v48, v49, v70);

      *(v46 + 14) = v50;
      _os_log_impl(&dword_1D16EC000, v44, v45, "%s: Could not find preset matching suggested preset handle: %s.", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v47, -1, -1);
      MEMORY[0x1D3893640](v46, -1, -1);
    }

    goto LABEL_83;
  }

  v11 = 0;
  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7 == 0xC000000000000000;
  }

  v13 = !v12;
  v68 = v13;
  v14 = v7 >> 62;
  v15 = __OFSUB__(HIDWORD(v6), v6);
  v65 = v15;
  v67 = *(v8 + 2);
  v16 = 32;
  while (1)
  {
    if (v11 >= *(v9 + 2))
    {
      __break(1u);
      goto LABEL_94;
    }

    v17 = *&v9[v16 + 48];
    v18 = *&v9[v16];
    v19 = *&v9[v16 + 16];
    v74 = *&v9[v16 + 32];
    v75 = v17;
    v72 = v18;
    v73 = v19;
    v21 = *(&v19 + 1);
    v20 = v74;
    if (v74 >> 60 == 15)
    {
      if (v7 >> 60 == 15)
      {
        v66 = v19;
        sub_1D1771B38(*(&v19 + 1), v74);
        sub_1D17806DC(&v72, v70);
        sub_1D1771B38(v6, v7);

        sub_1D1716AA4(v21, v20);
        goto LABEL_89;
      }

      goto LABEL_22;
    }

    if (v7 >> 60 != 15)
    {
      break;
    }

LABEL_22:
    sub_1D1771B38(*(&v73 + 1), v74);
    sub_1D1771B38(v6, v7);
    sub_1D1716AA4(v21, v20);
    sub_1D1716AA4(v6, v7);
LABEL_23:
    ++v11;
    v16 += 64;
    if (v10 == v11)
    {
      goto LABEL_79;
    }
  }

  v22 = v74 >> 62;
  if (v74 >> 62 != 3)
  {
    v26 = v7 >> 62;
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v29 = *(*(&v19 + 1) + 16);
        v28 = *(*(&v19 + 1) + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_97;
        }

        if (v14 > 1)
        {
          goto LABEL_50;
        }
      }

      else
      {
LABEL_49:
        v27 = 0;
        if (v26 > 1)
        {
LABEL_50:
          if (v26 != 2)
          {
            if (!v27)
            {
LABEL_85:
              v66 = v19;
              sub_1D1771B38(*(&v19 + 1), v74);
              sub_1D17806DC(&v72, v70);
              sub_1D1771B38(v6, v7);
              sub_1D1716AA4(v6, v7);
              goto LABEL_87;
            }

            goto LABEL_58;
          }

          v33 = *(v6 + 16);
          v32 = *(v6 + 24);
          v30 = __OFSUB__(v32, v33);
          v31 = v32 - v33;
          if (v30)
          {
            goto LABEL_95;
          }

LABEL_52:
          if (v27 == v31)
          {
            if (v27 < 1)
            {
              goto LABEL_85;
            }

            v66 = v19;
            if (v22 > 1)
            {
              if (v22 == 2)
              {
                v62 = *(*(&v19 + 1) + 24);
                v64 = *(*(&v19 + 1) + 16);
                sub_1D1771B38(*(&v19 + 1), v74);
                sub_1D1771B38(v21, v20);
                sub_1D17806DC(&v72, v70);
                sub_1D1771B38(v6, v7);
                v35 = sub_1D1E6616C();
                if (v35)
                {
                  v36 = v35;
                  v37 = sub_1D1E6619C();
                  v38 = v64;
                  if (__OFSUB__(v64, v37))
                  {
                    goto LABEL_101;
                  }

                  v61 = (v64 - v37 + v36);
                }

                else
                {
                  v61 = 0;
                  v38 = v64;
                }

                if (__OFSUB__(v62, v38))
                {
                  goto LABEL_100;
                }

                sub_1D1E6618C();
                v34 = v61;
              }

              else
              {
                *(&v69 + 6) = 0;
                *&v69 = 0;
                sub_1D1771B38(*(&v19 + 1), v74);
                sub_1D1771B38(v21, v20);
                sub_1D17806DC(&v72, v70);
                sub_1D1771B38(v6, v7);
                v34 = &v69;
              }
            }

            else if (v22)
            {
              if (*(&v19 + 1) >> 32 < SDWORD2(v19))
              {
                __break(1u);
LABEL_100:
                __break(1u);
LABEL_101:
                __break(1u);
LABEL_102:
                __break(1u);
              }

              sub_1D1771B38(*(&v19 + 1), v74);
              sub_1D1771B38(v21, v20);
              sub_1D17806DC(&v72, v70);
              sub_1D1771B38(v6, v7);
              v39 = sub_1D1E6616C();
              if (v39)
              {
                v63 = v39;
                v40 = sub_1D1E6619C();
                if (__OFSUB__(v21, v40))
                {
                  goto LABEL_102;
                }

                v41 = (v21 - v40 + v63);
              }

              else
              {
                v41 = 0;
              }

              sub_1D1E6618C();
              v34 = v41;
            }

            else
            {
              *&v69 = *(&v19 + 1);
              DWORD2(v69) = v74;
              WORD6(v69) = WORD2(v74);
              sub_1D1771B38(*(&v19 + 1), v74);
              sub_1D1771B38(v21, v20);
              sub_1D17806DC(&v72, v70);
              sub_1D1771B38(v6, v7);
              v34 = &v69;
            }

            sub_1D199EDB4(v34, v6, v7, v70);
            sub_1D1716AA4(v21, v20);
            sub_1D1716AA4(v6, v7);
            v42 = v70[0];
            sub_1D1716AA4(v21, v20);
            if (v42)
            {
              goto LABEL_88;
            }

            v10 = v67;
            goto LABEL_78;
          }

LABEL_58:
          sub_1D1771B38(*(&v73 + 1), v74);
          sub_1D17806DC(&v72, v70);
          sub_1D1771B38(v6, v7);
          sub_1D1716AA4(v6, v7);
          sub_1D1716AA4(v21, v20);
LABEL_78:
          sub_1D1780738(&v72);
          goto LABEL_23;
        }
      }
    }

    else if (v22)
    {
      LODWORD(v27) = HIDWORD(v19) - DWORD2(v19);
      if (__OFSUB__(HIDWORD(v19), DWORD2(v19)))
      {
        goto LABEL_96;
      }

      v27 = v27;
      if (v14 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v27 = BYTE6(v74);
      if (v14 > 1)
      {
        goto LABEL_50;
      }
    }

    v31 = BYTE6(v7);
    if (v26)
    {
      v31 = HIDWORD(v6) - v6;
      if (v65)
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    goto LABEL_52;
  }

  if (*(&v19 + 1))
  {
    v23 = 0;
  }

  else
  {
    v23 = v74 == 0xC000000000000000;
  }

  v25 = !v23 || v7 >> 62 != 3;
  if ((v25 | v68))
  {
    v26 = v7 >> 62;
    goto LABEL_49;
  }

  v66 = v19;
  sub_1D1771B38(0, 0xC000000000000000);
  sub_1D17806DC(&v72, v70);
  sub_1D1771B38(0, 0xC000000000000000);
  sub_1D1716AA4(0, 0xC000000000000000);
  v21 = 0;
LABEL_87:
  sub_1D1716AA4(v21, v20);
LABEL_88:

LABEL_89:
  if (qword_1EE07A0A8 == -1)
  {
    goto LABEL_90;
  }

LABEL_98:
  swift_once();
LABEL_90:
  v53 = sub_1D1E6709C();
  __swift_project_value_buffer(v53, qword_1EE07A0B0);
  sub_1D17806DC(&v72, v70);
  v54 = sub_1D1E6707C();
  v55 = sub_1D1E6835C();
  sub_1D1780738(&v72);
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v70[0] = v57;
    *v56 = 136315394;
    *(v56 + 4) = sub_1D1B1312C(0xD00000000000002CLL, 0x80000001D1EC17C0, v70);
    *(v56 + 12) = 2080;
    LOBYTE(v69) = v66;
    v58 = ThermostatPresetScenario.label.getter();
    v60 = sub_1D1B1312C(v58, v59, v70);

    *(v56 + 14) = v60;
    _os_log_impl(&dword_1D16EC000, v54, v55, "%s: Current suggested preset is: %s.", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v57, -1, -1);
    MEMORY[0x1D3893640](v56, -1, -1);
    sub_1D1780738(&v72);
  }

  else
  {

    sub_1D1780738(&v72);
  }

LABEL_83:
  v51 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1D19B313C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 18);
  v10[5] = v3;
  v10[6] = v4;
  v10[3] = &type metadata for BasicClusterPath;
  v10[4] = sub_1D18F6128();
  LOWORD(v10[0]) = v5;
  BYTE2(v10[0]) = v6;

  AttributeValueSet.value(for:in:)(323551243, v10, &v11);

  __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v12)
  {
    sub_1D1741A30(&v11, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 1;
    goto LABEL_6;
  }

  sub_1D1E6698C();
  v7 = 0;
LABEL_6:
  v8 = sub_1D1E669FC();
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_1D19B3278@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 18);
  v11[5] = v3;
  v11[6] = v4;
  v11[3] = &type metadata for BasicClusterPath;
  v11[4] = sub_1D18F6128();
  LOWORD(v11[0]) = v5;
  BYTE2(v11[0]) = v6;

  AttributeValueSet.value(for:in:)(323551242, v11, &v12);

  __swift_destroy_boxed_opaque_existential_1(v11);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v7 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
    v8 = swift_dynamicCast();
    return (*(*(v7 - 8) + 56))(a1, v8 ^ 1u, 1, v7);
  }

  else
  {
    sub_1D1741A30(&v12, &qword_1EC645D58, &unk_1D1E7E530);
    v10 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

uint64_t sub_1D19B33D0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 18);
  v9[5] = v1;
  v9[6] = v2;
  v9[3] = &type metadata for BasicClusterPath;
  v9[4] = sub_1D18F6128();
  LOWORD(v9[0]) = v3;
  BYTE2(v9[0]) = v4;

  AttributeValueSet.value(for:in:)(323551245, v9, &v10);

  __swift_destroy_boxed_opaque_existential_1(v9);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v5 = swift_dynamicCast();
    v6 = v9[0];
    if (!v5)
    {
      v6 = 0;
    }

    v7 = v5 ^ 1;
  }

  else
  {
    sub_1D1741A30(&v10, &qword_1EC645D58, &unk_1D1E7E530);
    v6 = 0;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

uint64_t sub_1D19B34D8@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 18);
  v11[5] = v5;
  v11[6] = v6;
  v11[3] = &type metadata for BasicClusterPath;
  v11[4] = sub_1D18F6128();
  LOWORD(v11[0]) = v7;
  BYTE2(v11[0]) = v8;

  AttributeValueSet.value(for:in:)(a1, v11, &v12);

  __swift_destroy_boxed_opaque_existential_1(v11);
  if (!v13)
  {
    result = sub_1D1741A30(&v12, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_6:
    v10 = 3;
    goto LABEL_7;
  }

  v10 = v11[0];
  if (LOBYTE(v11[0]) >= 3u)
  {
    v10 = 3;
  }

LABEL_7:
  *a2 = v10;
  return result;
}

uint64_t sub_1D19B3600@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 18);
  v8[5] = v3;
  v8[6] = v4;
  v8[3] = &type metadata for BasicClusterPath;
  v8[4] = sub_1D18F6128();
  LOWORD(v8[0]) = v5;
  BYTE2(v8[0]) = v6;

  AttributeValueSet.value(for:in:)(323551247, v8, &v9);

  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    result = swift_dynamicCast();
    if (result)
    {
      return StaticThermostatClusterGroup.ActivePresetChangeReason.init(rawValue:)(LOBYTE(v8[0]), a1);
    }
  }

  else
  {
    result = sub_1D1741A30(&v9, &qword_1EC645D58, &unk_1D1E7E530);
  }

  *a1 = 6;
  return result;
}

uint64_t sub_1D19B36F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 18);
  v8[5] = v3;
  v8[6] = v4;
  v8[3] = &type metadata for BasicClusterPath;
  v8[4] = sub_1D18F6128();
  LOWORD(v8[0]) = v5;
  BYTE2(v8[0]) = v6;

  AttributeValueSet.value(for:in:)(323551249, v8, &v9);

  __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v10)
  {
    result = sub_1D1741A30(&v9, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *(a1 + 4) = 0;
    *a1 = 2;
  }

  return result;
}

unint64_t sub_1D19B37E8(char a1)
{
  v2 = 0xD00000000000001DLL;
  if (a1 < 0)
  {
    v4 = a1 & 0x7F;
    if (v4 > 3)
    {
      v7 = 0xD00000000000001BLL;
      if (v4 != 6)
      {
        v7 = 0xD000000000000019;
      }

      if (v4 != 4)
      {
        v2 = 0xD000000000000027;
      }

      if ((a1 & 0x7Fu) <= 5)
      {
        return v2;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v5 = 0xD000000000000014;
      v6 = 0xD00000000000001ALL;
      if (v4 != 2)
      {
        v6 = 0xD00000000000001FLL;
      }

      if ((a1 & 0x7F) != 0)
      {
        v5 = 0xD000000000000016;
      }

      if ((a1 & 0x7Fu) <= 1)
      {
        return v5;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    result = 0xD000000000000019;
    switch(a1)
    {
      case 1:
      case 8:
        result = 0xD000000000000017;
        break;
      case 2:
        result = 0xD000000000000024;
        break;
      case 3:
        result = 0xD00000000000001ALL;
        break;
      case 4:
      case 12:
      case 13:
        result = 0xD00000000000001DLL;
        break;
      case 5:
        result = 0xD00000000000001BLL;
        break;
      case 6:
        result = 0xD000000000000013;
        break;
      case 7:
        result = 0xD000000000000016;
        break;
      case 9:
        result = 0xD000000000000021;
        break;
      case 10:
        result = 0xD00000000000002BLL;
        break;
      case 11:
        result = 0xD000000000000026;
        break;
      case 14:
        result = 0xD000000000000023;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D19B3A3C()
{
  result = sub_1D179C2A8(&unk_1F4D5FFE0);
  qword_1EC6BE128 = result;
  return result;
}

uint64_t sub_1D19B3A64@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1D1741970(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
  result = swift_dynamicCast();
  if (!result)
  {
    goto LABEL_8;
  }

  sub_1D19B4490(v7, a2, v8);

  if (!v8[3])
  {
    result = sub_1D1741A30(v8, &qword_1EC649700, &qword_1D1E6E910);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648310, &qword_1D1E8BEF0);
  result = swift_dynamicCast();
  if (!result)
  {
LABEL_8:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      *(a3 + 24) = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      return StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.init(from:)(v7, boxed_opaque_existential_1);
    }

    else
    {
      *(a3 + 24) = &type metadata for StaticThermostatClusterGroup.PresetsConfig.HoldPolicy;
      return StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.init(from:)(v7, a3);
    }
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_1D19B3BB0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v18[0] = *a1;
  result = MatterThermostatPresetContextTag.dataTypeString.getter();
  if (v6)
  {
    v7 = result;
    v8 = v6;
    v9 = *MEMORY[0x1E696F550];
    v10 = sub_1D1E6781C();
    if (*(a2 + 16))
    {
      v12 = sub_1D171D2F0(v10, v11);
      v14 = v13;

      if (v14)
      {
        sub_1D1741970(*(a2 + 56) + 32 * v12, v18);
        if (swift_dynamicCast())
        {
          if (v16 == v7 && v8 == v17)
          {

LABEL_13:
            sub_1D19B3D08(v16, v17, a2, a3);
          }

          v15 = sub_1D1E6904C();

          if (v15)
          {
            goto LABEL_13;
          }
        }
      }
    }

    else
    {
    }
  }

  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

double sub_1D19B3D08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *MEMORY[0x1E696F538];
  v10 = sub_1D1E6781C() == a1 && v9 == a2;
  v11 = MEMORY[0x1E696F568];
  if (v10)
  {
  }

  else
  {
    v12 = sub_1D1E6904C();

    if ((v12 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v13 = *v11;
  v14 = sub_1D1E6781C();
  if (*(a3 + 16))
  {
    v16 = sub_1D171D2F0(v14, v15);
    v18 = v17;

    if (v18)
    {
      sub_1D1741970(*(a3 + 56) + 32 * v16, v41);
      v19 = sub_1D1741B10(0, &qword_1EC647ED0, 0x1E695DEF0);
      if (swift_dynamicCast())
      {
        v21 = v40;
        *(a4 + 24) = v19;
LABEL_29:
        *a4 = v21;
        return result;
      }
    }
  }

  else
  {
  }

LABEL_13:
  v22 = *MEMORY[0x1E696F558];
  if (sub_1D1E6781C() == a1 && v23 == a2)
  {

    v27 = *v11;
  }

  else
  {
    v25 = sub_1D1E6904C();

    v26 = *v11;
    if ((v25 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v28 = sub_1D1E6781C();
  if (!*(a3 + 16))
  {

    goto LABEL_25;
  }

  v30 = sub_1D171D2F0(v28, v29);
  v32 = v31;

  if (v32)
  {
    sub_1D1741970(*(a3 + 56) + 32 * v30, v41);
    v33 = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
    if (swift_dynamicCast())
    {
      v21 = v40;
      *(a4 + 24) = v33;
      goto LABEL_29;
    }
  }

LABEL_25:
  v34 = sub_1D1E6781C();
  if (*(a3 + 16))
  {
    v36 = sub_1D171D2F0(v34, v35);
    v38 = v37;

    if (v38)
    {
      sub_1D1741970(*(a3 + 56) + 32 * v36, v41);
      v39 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v21 = v40;
        *(a4 + 24) = v39;
        goto LABEL_29;
      }
    }
  }

  else
  {
  }

  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_1D19B3FC8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_1D18D6668(MEMORY[0x1E69E7CC0]);
  v54 = v4;
  v5 = *(a1 + 16);
  if (!v5)
  {
    v43 = v4;
LABEL_37:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648310, &qword_1D1E8BEF0);
    a2[3] = result;
    *a2 = v43;
    return result;
  }

  v44 = a2;
  v50 = *MEMORY[0x1E696F518];
  v6 = (a1 + 32);
  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v49 = *MEMORY[0x1E696F520];
  v45 = *MEMORY[0x1E696F508];
  v46 = *MEMORY[0x1E696F560];
  v48 = *MEMORY[0x1E696F538];
  v47 = *MEMORY[0x1E696F550];
  while (1)
  {
    v7 = *v6;
    v8 = sub_1D1E6781C();
    v10 = v9;
    if (*(v7 + 16))
    {
      v11 = v8;

      v12 = sub_1D171D2F0(v11, v10);
      v14 = v13;

      if (v14)
      {
        sub_1D1741970(*(v7 + 56) + 32 * v12, v53);
        if (swift_dynamicCast())
        {
          v15 = v51;
          goto LABEL_9;
        }
      }
    }

    else
    {
    }

    v15 = 0;
LABEL_9:
    v16 = v15;
    v17 = sub_1D1E684DC();
    v18 = v17;
    if (!v15)
    {

      v40 = v16;
      v41 = sub_1D1E684DC();

      goto LABEL_36;
    }

    v19 = sub_1D1E684FC();

    if (v19)
    {
      v20 = 0;
LABEL_13:

      goto LABEL_15;
    }

    v21 = v16;
    v20 = 1;
    v22 = sub_1D1E684DC();
    v23 = sub_1D1E684FC();

    if (v23)
    {
      goto LABEL_13;
    }

    v20 = 2;
    v24 = sub_1D1E684DC();
    v25 = sub_1D1E684FC();

    if ((v25 & 1) == 0)
    {
      break;
    }

LABEL_15:
    v26 = sub_1D1E6781C();
    if (!*(v7 + 16))
    {

LABEL_34:

      goto LABEL_36;
    }

    v28 = sub_1D171D2F0(v26, v27);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      goto LABEL_34;
    }

    sub_1D1741970(*(v7 + 56) + 32 * v28, v53);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_36;
    }

    v31 = sub_1D1E6781C();
    v33 = v32;
    v34 = sub_1D1E6781C();
    if (*(v51 + 16))
    {
      v36 = sub_1D171D2F0(v34, v35);
      v38 = v37;

      if (v38)
      {
        sub_1D1741970(*(v51 + 56) + 32 * v36, v53);
        if (swift_dynamicCast())
        {
          if (v51 == v31 && v52 == v33)
          {

LABEL_29:
            sub_1D19B3D08(v51, v52, v51, v53);

            goto LABEL_26;
          }

          v39 = sub_1D1E6904C();

          if (v39)
          {
            goto LABEL_29;
          }
        }
      }
    }

    else
    {
    }

    memset(v53, 0, sizeof(v53));
LABEL_26:
    sub_1D1B0E808(v53, v20 | 0x40u);

    ++v6;
    if (!--v5)
    {
      v43 = v54;
      a2 = v44;
      goto LABEL_37;
    }
  }

LABEL_36:

  *v44 = 0u;
  *(v44 + 1) = 0u;
  return result;
}

double sub_1D19B4490@<D0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  v6 = sub_1D18D6668(MEMORY[0x1E69E7CC0]);
  v33 = v6;
  v7 = *(a1 + 16);
  if (!v7)
  {
    v26 = v6;
LABEL_17:
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648310, &qword_1D1E8BEF0);
    *a3 = v26;
    return result;
  }

  v29 = a3;
  v8 = *MEMORY[0x1E696F518];
  v9 = (a1 + 32);
  v30 = *MEMORY[0x1E696F520];
  while (1)
  {
    v10 = *v9;
    v11 = sub_1D1E6781C();
    v13 = v12;
    if (!*(v10 + 16))
    {

LABEL_9:
      v17 = 0;
      goto LABEL_10;
    }

    v14 = v11;

    v15 = sub_1D171D2F0(v14, v13);
    LOBYTE(v14) = v16;

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_1D1741970(*(v10 + 56) + 32 * v15, v32);
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v17 = swift_dynamicCast() ? v31 : 0;
LABEL_10:
    v18 = v17;
    sub_1D197ED64(v17, a2 + 2, v32);
    v19 = LOBYTE(v32[0]);
    if (LOBYTE(v32[0]) >= 0xF8u)
    {

      goto LABEL_22;
    }

    v20 = sub_1D1E6781C();
    if (!*(v10 + 16))
    {

LABEL_20:

      v28 = v29;

      goto LABEL_23;
    }

    v22 = sub_1D171D2F0(v20, v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }

    sub_1D1741970(*(v10 + 56) + 32 * v22, v32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v25 = v31;
    LOBYTE(v31) = v19;
    sub_1D19B3BB0(&v31, v25, v32);

    sub_1D1B0E808(v32, v19);

    ++v9;
    if (!--v7)
    {
      v26 = v33;
      a3 = v29;
      goto LABEL_17;
    }
  }

LABEL_22:

  v28 = v29;
LABEL_23:
  result = 0.0;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  return result;
}

uint64_t sub_1D19B473C(uint64_t *a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
  v4 = 0;
  v159 = MEMORY[0x1E69E7CC0];
  v160 = *MEMORY[0x1E696F518];
  v158 = *MEMORY[0x1E696F550];
  v157 = *MEMORY[0x1E696F568];
  v5 = *MEMORY[0x1E696F520];
  v155 = *MEMORY[0x1E696F540];
  v153 = *MEMORY[0x1E696F560];
  v150 = *MEMORY[0x1E696F538];
  v151 = *MEMORY[0x1E696F558];
  v152 = *MEMORY[0x1E696F508];
  v156 = a1;
  while (1)
  {
    v6 = byte_1F4D65750[v4 + 32];
    v7 = sub_1D1E6821C();
    v165[0] = sub_1D1E6781C();
    v165[1] = v8;
    v9 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v165[5] = v9;
    v165[2] = v7;
    v10 = sub_1D1E68BCC();
    sub_1D1741C08(v165, &v163, &qword_1EC646238, &qword_1D1E7E8D0);
    v11 = v163;
    v12 = v7;

    v13 = sub_1D171D2F0(v11, *(&v11 + 1));
    if (v14)
    {
      break;
    }

    v10[(v13 >> 6) + 8] |= 1 << v13;
    *(v10[6] + 16 * v13) = v11;
    sub_1D1742194(&v164, (v10[7] + 32 * v13));
    v15 = v10[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_88;
    }

    v10[2] = v17;

    sub_1D1741A30(v165, &qword_1EC646238, &qword_1D1E7E8D0);
    if (v6 > 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D1E73A90;
          *(inited + 32) = sub_1D1E6781C();
          *(inited + 40) = v37;
          v38 = sub_1D1E6781C();
          *(inited + 72) = MEMORY[0x1E69E6158];
          *(inited + 48) = v38;
          *(inited + 56) = v39;
          *(inited + 80) = sub_1D1E6781C();
          *(inited + 88) = v40;
          v41 = a1[1];
          *(inited + 120) = MEMORY[0x1E69E76D8];
          *(inited + 96) = v41;
          v42 = sub_1D18D6538(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
          swift_arrayDestroy();
          v43 = sub_1D1E6781C();
          v45 = v44;
          *(&v164 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
          *&v163 = v42;
          sub_1D1742194(&v163, v162);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v161 = v10;
          v29 = sub_1D171D2F0(v43, v45);
          v48 = v10[2];
          v49 = (v47 & 1) == 0;
          v16 = __OFADD__(v48, v49);
          v50 = v48 + v49;
          if (v16)
          {
            goto LABEL_91;
          }

          v51 = v47;
          if (v10[3] < v50)
          {
            sub_1D1726F00(v50, isUniquelyReferenced_nonNull_native);
            v29 = sub_1D171D2F0(v43, v45);
            if ((v51 & 1) != (v52 & 1))
            {
              goto LABEL_99;
            }

LABEL_44:
            if ((v51 & 1) == 0)
            {
              goto LABEL_45;
            }

LABEL_59:
            v132 = v29;

            v10 = v161;
            v120 = (v161[7] + 32 * v132);
LABEL_60:
            __swift_destroy_boxed_opaque_existential_1(v120);
            sub_1D1742194(v162, v120);
LABEL_74:
            a1 = v156;
LABEL_75:
            v141 = sub_1D1E6781C();
            if (v10[2])
            {
              v143 = sub_1D171D2F0(v141, v142);
              v145 = v144;

              if (v145)
              {
                sub_1D1741970(v10[7] + 32 * v143, &v163);
                sub_1D1741A30(&v163, &qword_1EC649700, &qword_1D1E6E910);
                v146 = sub_1D18A77C0(v10);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v159 = sub_1D177D340(0, v159[2] + 1, 1, v159);
                }

                v148 = v159[2];
                v147 = v159[3];
                if (v148 >= v147 >> 1)
                {
                  v159 = sub_1D177D340((v147 > 1), v148 + 1, 1, v159);
                }

                v159[2] = v148 + 1;
                v159[v148 + 4] = v146;
                goto LABEL_84;
              }
            }

            else
            {
            }

            v163 = 0u;
            v164 = 0u;

            sub_1D1741A30(&v163, &qword_1EC649700, &qword_1D1E6E910);
LABEL_84:

            goto LABEL_85;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_44;
          }

          v135 = v29;
          sub_1D1738144();
          v29 = v135;
          if (v51)
          {
            goto LABEL_59;
          }

LABEL_45:
          v10[(v29 >> 6) + 8] |= 1 << v29;
          v118 = (v10[6] + 16 * v29);
          *v118 = v43;
          v118[1] = v45;
          sub_1D1742194(v162, (v10[7] + 32 * v29));
          v119 = v10[2];
          v16 = __OFADD__(v119, 1);
          v115 = v119 + 1;
          if (v16)
          {
            goto LABEL_95;
          }

LABEL_73:
          v10[2] = v115;
          goto LABEL_74;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_1D1E73A90;
        *(v77 + 32) = sub_1D1E6781C();
        *(v77 + 40) = v78;
        v79 = sub_1D1E6781C();
        *(v77 + 72) = MEMORY[0x1E69E6158];
        *(v77 + 48) = v79;
        *(v77 + 56) = v80;
        *(v77 + 80) = sub_1D1E6781C();
        *(v77 + 88) = v81;
        v82 = *(a1 + 40);
        v83 = sub_1D1E67D2C();
        *(v77 + 120) = v9;
        *(v77 + 96) = v83;
        v84 = sub_1D18D6538(v77);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v85 = sub_1D1E6781C();
        v87 = v86;
        *(&v164 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
        *&v163 = v84;
        sub_1D1742194(&v163, v162);
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v90 = sub_1D171D2F0(v85, v87);
        v91 = v10[2];
        v92 = (v89 & 1) == 0;
        v93 = v91 + v92;
        if (__OFADD__(v91, v92))
        {
          goto LABEL_90;
        }

        v94 = v89;
        if (v10[3] >= v93)
        {
          if (v88)
          {
            if ((v89 & 1) == 0)
            {
              goto LABEL_68;
            }
          }

          else
          {
            sub_1D1738144();
            if ((v94 & 1) == 0)
            {
              goto LABEL_68;
            }
          }
        }

        else
        {
          sub_1D1726F00(v93, v88);
          v95 = sub_1D171D2F0(v85, v87);
          if ((v94 & 1) != (v96 & 1))
          {
            goto LABEL_99;
          }

          v90 = v95;
          if ((v94 & 1) == 0)
          {
LABEL_68:
            v10[(v90 >> 6) + 8] |= 1 << v90;
            v136 = (v10[6] + 16 * v90);
            *v136 = v85;
            v136[1] = v87;
            sub_1D1742194(v162, (v10[7] + 32 * v90));
            v137 = v10[2];
            v16 = __OFADD__(v137, 1);
            v115 = v137 + 1;
            if (v16)
            {
              goto LABEL_94;
            }

            goto LABEL_73;
          }
        }

        v120 = (v10[7] + 32 * v90);
        goto LABEL_60;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1D1E73A90;
      *(v53 + 32) = sub_1D1E6781C();
      *(v53 + 40) = v54;
      v55 = sub_1D1E6781C();
      *(v53 + 72) = MEMORY[0x1E69E6158];
      *(v53 + 48) = v55;
      *(v53 + 56) = v56;
      *(v53 + 80) = sub_1D1E6781C();
      *(v53 + 88) = v57;
      v58 = *a1;
      *(v53 + 120) = MEMORY[0x1E69E76D8];
      *(v53 + 96) = v58;
      v59 = sub_1D18D6538(v53);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v60 = sub_1D1E6781C();
      v62 = v61;
      *(&v164 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      *&v163 = v59;
      sub_1D1742194(&v163, v162);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v161 = v10;
      v29 = sub_1D171D2F0(v60, v62);
      v65 = v10[2];
      v66 = (v64 & 1) == 0;
      v16 = __OFADD__(v65, v66);
      v67 = v65 + v66;
      if (v16)
      {
        goto LABEL_89;
      }

      v68 = v64;
      if (v10[3] < v67)
      {
        sub_1D1726F00(v67, v63);
        v29 = sub_1D171D2F0(v60, v62);
        if ((v68 & 1) != (v69 & 1))
        {
          goto LABEL_99;
        }

        goto LABEL_34;
      }

      if (v63)
      {
LABEL_34:
        if (v68)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v133 = v29;
        sub_1D1738144();
        v29 = v133;
        if (v68)
        {
          goto LABEL_59;
        }
      }

      v10[(v29 >> 6) + 8] |= 1 << v29;
      v113 = (v10[6] + 16 * v29);
      *v113 = v60;
      v113[1] = v62;
      sub_1D1742194(v162, (v10[7] + 32 * v29));
      v114 = v10[2];
      v16 = __OFADD__(v114, 1);
      v115 = v114 + 1;
      if (v16)
      {
        goto LABEL_96;
      }

      goto LABEL_73;
    }

    if (v6)
    {
      if (v6 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1D1E73A90;
        *(v18 + 32) = sub_1D1E6781C();
        *(v18 + 40) = v19;
        v20 = sub_1D1E6781C();
        *(v18 + 72) = MEMORY[0x1E69E6158];
        *(v18 + 48) = v20;
        *(v18 + 56) = v21;
        *(v18 + 80) = sub_1D1E6781C();
        *(v18 + 88) = v22;
        v23 = sub_1D1E691BC();
        *(v18 + 120) = v9;
        *(v18 + 96) = v23;
        v24 = sub_1D18D6538(v18);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v25 = sub_1D1E6781C();
        v27 = v26;
        *(&v164 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
        *&v163 = v24;
        sub_1D1742194(&v163, v162);
        v28 = swift_isUniquelyReferenced_nonNull_native();
        v161 = v10;
        v29 = sub_1D171D2F0(v25, v27);
        v31 = v10[2];
        v32 = (v30 & 1) == 0;
        v16 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v16)
        {
          goto LABEL_92;
        }

        v34 = v30;
        if (v10[3] < v33)
        {
          sub_1D1726F00(v33, v28);
          v29 = sub_1D171D2F0(v25, v27);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_99;
          }

          goto LABEL_39;
        }

        if (v28)
        {
LABEL_39:
          if (v34)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v134 = v29;
          sub_1D1738144();
          v29 = v134;
          if (v34)
          {
            goto LABEL_59;
          }
        }

        v10[(v29 >> 6) + 8] |= 1 << v29;
        v116 = (v10[6] + 16 * v29);
        *v116 = v25;
        v116[1] = v27;
        sub_1D1742194(v162, (v10[7] + 32 * v29));
        v117 = v10[2];
        v16 = __OFADD__(v117, 1);
        v115 = v117 + 1;
        if (v16)
        {
          goto LABEL_97;
        }

        goto LABEL_73;
      }

      if ((a3 & 1) == 0)
      {
        goto LABEL_75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
      v70 = swift_initStackObject();
      *(v70 + 16) = xmmword_1D1E73A90;
      *(v70 + 32) = sub_1D1E6781C();
      *(v70 + 40) = v71;
      v72 = sub_1D1E6781C();
      *(v70 + 72) = MEMORY[0x1E69E6158];
      *(v70 + 48) = v72;
      *(v70 + 56) = v73;
      *(v70 + 80) = sub_1D1E6781C();
      *(v70 + 88) = v74;
      if (!a1[7])
      {
        *(v70 + 120) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
        goto LABEL_52;
      }

      v75 = a1[6];
      v76 = sub_1D1E677EC();
      *(v70 + 120) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
      if (!v76)
      {
LABEL_52:
        v76 = sub_1D1E6852C();
      }

      *(v70 + 96) = v76;
      v121 = sub_1D18D6538(v70);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
      swift_arrayDestroy();
      v122 = sub_1D1E6781C();
      v124 = v123;
      *(&v164 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      *&v163 = v121;
      sub_1D1742194(&v163, v162);
      v125 = swift_isUniquelyReferenced_nonNull_native();
      v161 = v10;
      v29 = sub_1D171D2F0(v122, v124);
      v127 = v10[2];
      v128 = (v126 & 1) == 0;
      v16 = __OFADD__(v127, v128);
      v129 = v127 + v128;
      if (v16)
      {
        goto LABEL_93;
      }

      v130 = v126;
      if (v10[3] < v129)
      {
        sub_1D1726F00(v129, v125);
        v29 = sub_1D171D2F0(v122, v124);
        if ((v130 & 1) != (v131 & 1))
        {
          goto LABEL_99;
        }

        goto LABEL_58;
      }

      if (v125)
      {
LABEL_58:
        if (v130)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v138 = v29;
        sub_1D1738144();
        v29 = v138;
        if (v130)
        {
          goto LABEL_59;
        }
      }

      v10[(v29 >> 6) + 8] |= 1 << v29;
      v139 = (v10[6] + 16 * v29);
      *v139 = v122;
      v139[1] = v124;
      sub_1D1742194(v162, (v10[7] + 32 * v29));
      v140 = v10[2];
      v16 = __OFADD__(v140, 1);
      v115 = v140 + 1;
      if (v16)
      {
        goto LABEL_98;
      }

      goto LABEL_73;
    }

    v166[0] = *(a1 + 3);
    if (*(&v166[0] + 1) >> 60 != 15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648320, &qword_1D1E8BEF8);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_1D1E739C0;
      *(v97 + 32) = sub_1D1E6781C();
      *(v97 + 40) = v98;
      v99 = sub_1D1E6781C();
      *(v97 + 72) = MEMORY[0x1E69E6158];
      *(v97 + 48) = v99;
      *(v97 + 56) = v100;
      sub_1D1741C08(v166, &v163, &qword_1EC643838, &qword_1D1E8C020);
      v101 = sub_1D18DA288(v97);
      swift_setDeallocating();
      sub_1D1741A30(v97 + 32, &qword_1EC646220, &qword_1D1E7E8A8);
      swift_deallocClassInstance();
      v102 = sub_1D1E6781C();
      v104 = v103;
      v105 = sub_1D1E6688C();
      v106 = sub_1D1741B10(0, &qword_1EC647ED0, 0x1E695DEF0);
      *&v163 = v105;
      *(&v164 + 1) = v106;
      v107 = swift_isUniquelyReferenced_nonNull_native();
      *&v162[0] = v101;
      sub_1D17556A8(&v163, v102, v104, v107);

      v108 = *&v162[0];
      v109 = sub_1D1E6781C();
      v111 = v110;
      *(&v164 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648328, &qword_1D1E8BF00);
      *&v163 = v108;
      sub_1D1742194(&v163, v162);
      v112 = swift_isUniquelyReferenced_nonNull_native();
      sub_1D1753F18(v162, v109, v111, v112);
      sub_1D1741A30(v166, &qword_1EC643838, &qword_1D1E8C020);

      goto LABEL_75;
    }

LABEL_85:
    if (++v4 == 6)
    {
      return v159;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D19B5690(uint64_t result)
{
  if (result > 7)
  {
    if (result > 4097)
    {
      if (result == 4098)
      {
        return 6;
      }

      if (result == 4100)
      {
        return 7;
      }
    }

    else
    {
      if (result == 8)
      {
        return 4;
      }

      if (result == 9)
      {
        return 5;
      }
    }

    return 8;
  }

  if (result <= 5)
  {
    if (!result)
    {
      return result;
    }

    if (result == 4)
    {
      return 1;
    }

    return 8;
  }

  if (result == 6)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1D19B5730(int a1)
{
  if ((a1 - 323551232) > 0x13)
  {
    return 15;
  }

  else
  {
    return byte_1D1E8BF0A[a1 - 323551232];
  }
}

BOOL sub_1D19B5758(unsigned int a1, _BYTE *a2)
{
  if (*a2 != 19)
  {
    return 0;
  }

  if (qword_1EC642260 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v2 = qword_1EC6BE128;
  if (!*(qword_1EC6BE128 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = MEMORY[0x1D3892820](*(qword_1EC6BE128 + 40), a1, 4);
  v5 = -1 << *(v2 + 32);
  v6 = v4 & ~v5;
  if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(v2 + 48) + 4 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1D19B5854(uint64_t a1)
{
  sub_1D1741970(a1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
  result = swift_dynamicCast();
  if (!result)
  {
    return 0;
  }

  v2 = *(v33 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

  v3 = 0;
  v32 = *MEMORY[0x1E696F520];
  v30 = *MEMORY[0x1E696F548];
  v31 = *MEMORY[0x1E696F550];
  v29 = *MEMORY[0x1E696F568];
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v3;
    while (1)
    {
      if (v5 >= *(v33 + 16))
      {
        __break(1u);
        return result;
      }

      v6 = *(v33 + 32 + 8 * v5);
      v7 = sub_1D1E6781C();
      v9 = v8;
      if (!*(v6 + 16))
      {
        goto LABEL_37;
      }

      v10 = v7;

      v11 = sub_1D171D2F0(v10, v9);
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_1D1741970(*(v6 + 56) + 32 * v11, v35);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      v14 = sub_1D1E6781C();
      if (!*(v33 + 16))
      {
LABEL_36:

LABEL_37:

LABEL_38:

LABEL_39:

        return 0;
      }

      v16 = sub_1D171D2F0(v14, v15);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_1D1741970(*(v33 + 56) + 32 * v16, v35);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_37;
      }

      if (v33 == sub_1D1E6781C() && v34 == v19)
      {
      }

      else
      {
        v20 = sub_1D1E6904C();

        if ((v20 & 1) == 0)
        {

          goto LABEL_39;
        }
      }

      v21 = sub_1D1E6781C();
      if (!*(v33 + 16))
      {
        goto LABEL_36;
      }

      v23 = sub_1D171D2F0(v21, v22);
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_1D1741970(*(v33 + 56) + 32 * v23, v35);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      sub_1D19B3FC8(v33, v35);

      if (!v36)
      {
        result = sub_1D1741A30(v35, &qword_1EC649700, &qword_1D1E6E910);
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648310, &qword_1D1E8BEF0);
      result = swift_dynamicCast();
      if (result)
      {
        break;
      }

LABEL_23:
      if (v2 == ++v5)
      {
        goto LABEL_32;
      }
    }

    v36 = &type metadata for PresetInfo;
    PresetInfo.init(from:)(v33, v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1D177E950(0, *(v4 + 2) + 1, 1, v4);
    }

    v28 = *(v4 + 2);
    v27 = *(v4 + 3);
    if (v28 >= v27 >> 1)
    {
      v4 = sub_1D177E950((v27 > 1), v28 + 1, 1, v4);
    }

    v3 = v5 + 1;
    *(v4 + 2) = v28 + 1;
    result = sub_1D1742194(v35, &v4[32 * v28 + 32]);
  }

  while (v2 - 1 != v5);
LABEL_32:

  return v4;
}

unint64_t sub_1D19B5CA0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v8 = 60 * a2;
    if ((a2 * 60) >> 64 != (60 * a2) >> 63)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643388, &unk_1D1E71FF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D1E739C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  inited = swift_initStackObject();
  v47 = xmmword_1D1E73A90;
  *(inited + 16) = xmmword_1D1E73A90;
  v44 = *MEMORY[0x1E696F518];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = v10;
  *(inited + 48) = 0;
  v43 = *MEMORY[0x1E696F520];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v11;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1D1E73A90;
  v46 = *MEMORY[0x1E696F550];
  *(v12 + 32) = sub_1D1E6781C();
  *(v12 + 40) = v13;
  v14 = *MEMORY[0x1E696F508];
  v15 = sub_1D1E6781C();
  *(v12 + 72) = MEMORY[0x1E69E6158];
  *(v12 + 48) = v15;
  *(v12 + 56) = v16;
  v17 = *MEMORY[0x1E696F568];
  *(v12 + 80) = sub_1D1E6781C();
  *(v12 + 88) = v18;
  v19 = sub_1D1E67D2C();
  v20 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  *(v12 + 120) = v20;
  *(v12 + 96) = v19;
  v21 = sub_1D18D6538(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  swift_arrayDestroy();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  *(inited + 120) = v22;
  *(inited + 96) = v21;
  v23 = sub_1D18D6538(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v3 + 32) = v23;
  if ((a3 & 1) == 0)
  {
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1D1E73A90;
    *(v24 + 32) = sub_1D1E6781C();
    *(v24 + 72) = MEMORY[0x1E69E6530];
    *(v24 + 40) = v25;
    *(v24 + 48) = 1;
    *(v24 + 80) = sub_1D1E6781C();
    *(v24 + 88) = v26;
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_1D1E73A90;
    *(v27 + 32) = sub_1D1E6781C();
    *(v27 + 40) = v28;
    v29 = *MEMORY[0x1E696F560];
    v30 = sub_1D1E6781C();
    *(v27 + 72) = MEMORY[0x1E69E6158];
    *(v27 + 48) = v30;
    *(v27 + 56) = v31;
    *(v27 + 80) = sub_1D1E6781C();
    *(v27 + 88) = v32;
    v33 = sub_1D1E6821C();
    *(v27 + 120) = v20;
    *(v27 + 96) = v33;
    v34 = sub_1D18D6538(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v24 + 120) = v22;
    *(v24 + 96) = v34;
    v6 = sub_1D18D6538(v24);
    swift_setDeallocating();
    swift_arrayDestroy();
    v5 = *(v3 + 16);
    v8 = *(v3 + 24);
    v4 = v5 + 1;
    v7 = MEMORY[0x1E69E6158];
    if (v5 < v8 >> 1)
    {
LABEL_7:
      *(v3 + 16) = v4;
      *(v3 + 8 * v5 + 32) = v6;
      goto LABEL_8;
    }

LABEL_9:
    v3 = sub_1D177D2F8((v8 > 1), v4, 1, v3);
    goto LABEL_7;
  }

  v7 = MEMORY[0x1E69E6158];
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  v35 = swift_initStackObject();
  *(v35 + 16) = v47;
  *(v35 + 32) = sub_1D1E6781C();
  *(v35 + 40) = v36;
  v37 = *MEMORY[0x1E696F548];
  v38 = sub_1D1E6781C();
  *(v35 + 72) = v7;
  *(v35 + 48) = v38;
  *(v35 + 56) = v39;
  *(v35 + 80) = sub_1D1E6781C();
  *(v35 + 88) = v40;
  *(v35 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
  *(v35 + 96) = v3;
  v41 = sub_1D18D6E78(v35);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  return v41;
}

unint64_t sub_1D19B60F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643388, &unk_1D1E71FF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D1E739C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v2 = *MEMORY[0x1E696F518];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = v3;
  *(inited + 48) = 0;
  v4 = *MEMORY[0x1E696F520];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v5;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1D1E73A90;
  v7 = *MEMORY[0x1E696F550];
  *(v6 + 32) = sub_1D1E6781C();
  *(v6 + 40) = v8;
  v9 = *MEMORY[0x1E696F560];
  v10 = sub_1D1E6781C();
  v11 = MEMORY[0x1E69E6158];
  *(v6 + 72) = MEMORY[0x1E69E6158];
  *(v6 + 48) = v10;
  *(v6 + 56) = v12;
  v13 = *MEMORY[0x1E696F568];
  *(v6 + 80) = sub_1D1E6781C();
  *(v6 + 88) = v14;
  v15 = sub_1D1E680EC();
  *(v6 + 120) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  *(v6 + 96) = v15;
  v16 = sub_1D18D6538(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  swift_arrayDestroy();
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  *(inited + 96) = v16;
  v17 = sub_1D18D6538(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v0 + 32) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1D1E73A90;
  *(v18 + 32) = sub_1D1E6781C();
  *(v18 + 40) = v19;
  v20 = *MEMORY[0x1E696F548];
  v21 = sub_1D1E6781C();
  *(v18 + 72) = v11;
  *(v18 + 48) = v21;
  *(v18 + 56) = v22;
  *(v18 + 80) = sub_1D1E6781C();
  *(v18 + 88) = v23;
  *(v18 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
  *(v18 + 96) = v0;
  v24 = sub_1D18D6E78(v18);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  return v24;
}

unint64_t sub_1D19B63BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v51 = *a1;
  v2 = *(a1 + 16);
  v55 = *(a1 + 17);
  v59 = *MEMORY[0x1E696F518];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v58 = *MEMORY[0x1E696F550];
  v54 = *MEMORY[0x1E696F508];
  v56 = *MEMORY[0x1E696F520];
  v57 = *MEMORY[0x1E696F568];
  v50 = v1;
  v52 = *MEMORY[0x1E696F560];
  v53 = v1 >> 60;
  v48 = *MEMORY[0x1E696F538];
  v49 = v2;
  while (1)
  {
    v5 = byte_1F4D656D8[v3 + 32];
    v6 = sub_1D1E6821C();
    v64[0] = sub_1D1E6781C();
    v64[1] = v7;
    v8 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v64[5] = v8;
    v64[2] = v6;
    v9 = sub_1D1E68BCC();
    sub_1D1741C08(v64, &v62, &qword_1EC646238, &qword_1D1E7E8D0);
    v10 = v62;
    v11 = v6;

    result = sub_1D171D2F0(v10, *(&v10 + 1));
    if (v13)
    {
      break;
    }

    v9[(result >> 6) + 8] |= 1 << result;
    *(v9[6] + 16 * result) = v10;
    result = sub_1D1742194(&v63, (v9[7] + 32 * result));
    v14 = v9[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_20;
    }

    v9[2] = v16;

    sub_1D1741A30(v64, &qword_1EC646238, &qword_1D1E7E8D0);
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E73A90;
      *(inited + 32) = sub_1D1E6781C();
      *(inited + 40) = v18;
      v19 = sub_1D1E6781C();
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v19;
      *(inited + 56) = v20;
      *(inited + 80) = sub_1D1E6781C();
      *(inited + 88) = v21;
      if (v5 == 1)
      {
        v22 = byte_1D1E8BF1E[v2];
        v23 = sub_1D1E691BC();
      }

      else
      {
        v23 = sub_1D1E67D2C();
      }

      *(inited + 120) = v8;
      *(inited + 96) = v23;
      v40 = sub_1D18D6538(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
      swift_arrayDestroy();
      v41 = sub_1D1E6781C();
      v43 = v42;
      *(&v63 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      *&v62 = v40;
      sub_1D1742194(&v62, v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v9;
      sub_1D1753F18(v61, v41, v43, isUniquelyReferenced_nonNull_native);
      goto LABEL_13;
    }

    if (v53 <= 0xE)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648320, &qword_1D1E8BEF8);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_1D1E739C0;
      *(v24 + 32) = sub_1D1E6781C();
      *(v24 + 40) = v25;
      v26 = sub_1D1E6781C();
      *(v24 + 72) = MEMORY[0x1E69E6158];
      *(v24 + 48) = v26;
      *(v24 + 56) = v27;
      sub_1D1741854(v51, v50);
      v28 = sub_1D18DA288(v24);
      swift_setDeallocating();
      sub_1D1741A30(v24 + 32, &qword_1EC646220, &qword_1D1E7E8A8);
      v29 = sub_1D1E6781C();
      v31 = v30;
      v32 = sub_1D1E6688C();
      v33 = sub_1D1741B10(0, &qword_1EC647ED0, 0x1E695DEF0);
      *&v62 = v32;
      *(&v63 + 1) = v33;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *&v61[0] = v28;
      sub_1D17556A8(&v62, v29, v31, v34);

      v35 = *&v61[0];
      v36 = sub_1D1E6781C();
      v38 = v37;
      *(&v63 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648328, &qword_1D1E8BF00);
      *&v62 = v35;
      sub_1D1742194(&v62, v61);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v9;
      sub_1D1753F18(v61, v36, v38, v39);
      v2 = v49;
      sub_1D1716AA4(v51, v50);
LABEL_13:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1D177D2F8(0, v4[2] + 1, 1, v4);
      }

      v46 = v4[2];
      v45 = v4[3];
      if (v46 >= v45 >> 1)
      {
        v4 = sub_1D177D2F8((v45 > 1), v46 + 1, 1, v4);
      }

      v4[2] = v46 + 1;
      v4[v46 + 4] = v60;
      goto LABEL_3;
    }

LABEL_3:
    if (++v3 == 3)
    {
      v47 = sub_1D18F95CC(v4);

      return v47;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1D19B6988(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v6 = *MEMORY[0x1E696F550];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v7;
  v8 = *MEMORY[0x1E696F548];
  v9 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v11 = *MEMORY[0x1E696F568];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v12;
  v16[0] = v1;
  v16[1] = v2;
  v17 = v3;
  v18 = v4;
  v13 = sub_1D19B63BC(v16);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  *(inited + 96) = v13;
  v14 = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_1D19B6AB4(unsigned __int8 *a1)
{
  v70 = *(a1 + 1);
  v72 = a1[4];
  v73 = *a1;
  v77 = *MEMORY[0x1E696F518];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v76 = *MEMORY[0x1E696F550];
  v71 = *MEMORY[0x1E696F508];
  v74 = *MEMORY[0x1E696F520];
  v75 = *MEMORY[0x1E696F568];
  v69 = *MEMORY[0x1E696F560];
  v4 = &qword_1D1E7E8D0;
  while (1)
  {
    v78 = v1;
    v5 = *(&unk_1F4D65728 + v2 + 32);
    v6 = sub_1D1E6821C();
    v82[0] = sub_1D1E6781C();
    v82[1] = v7;
    v8 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v82[5] = v8;
    v82[2] = v6;
    v9 = sub_1D1E68BCC();
    v10 = v4;
    sub_1D1741C08(v82, &v80, &qword_1EC646238, v4);
    v11 = v80;
    v12 = v6;

    v13 = sub_1D171D2F0(v11, *(&v11 + 1));
    if (v14)
    {
      break;
    }

    v9[(v13 >> 6) + 8] |= 1 << v13;
    *(v9[6] + 16 * v13) = v11;
    sub_1D1742194(&v81, (v9[7] + 32 * v13));
    v15 = v9[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_38;
    }

    v9[2] = v17;

    sub_1D1741A30(v82, &qword_1EC646238, v4);
    if (v5)
    {
      if ((v72 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D1E73A90;
        *(inited + 32) = sub_1D1E6781C();
        *(inited + 40) = v19;
        v20 = sub_1D1E6781C();
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 48) = v20;
        *(inited + 56) = v21;
        *(inited + 80) = sub_1D1E6781C();
        *(inited + 88) = v22;
        v23 = sub_1D1E692AC();
        *(inited + 120) = v8;
        *(inited + 96) = v23;
        v24 = sub_1D18D6538(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, v4);
        swift_arrayDestroy();
        v25 = sub_1D1E6781C();
        v27 = v26;
        *(&v81 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
        *&v80 = v24;
        sub_1D1742194(&v80, v79);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = sub_1D171D2F0(v25, v27);
        v31 = v9[2];
        v32 = (v30 & 1) == 0;
        v16 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v16)
        {
          goto LABEL_40;
        }

        v34 = v30;
        if (v9[3] >= v33)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v4 = v10;
            if (v30)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v61 = v29;
            sub_1D1738144();
            v29 = v61;
            v4 = v10;
            if (v34)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          sub_1D1726F00(v33, isUniquelyReferenced_nonNull_native);
          v29 = sub_1D171D2F0(v25, v27);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_43;
          }

          v4 = v10;
          if (v34)
          {
LABEL_23:
            v56 = v29;

            v57 = (v9[7] + 32 * v56);
            __swift_destroy_boxed_opaque_existential_1(v57);
            sub_1D1742194(v79, v57);
            goto LABEL_30;
          }
        }

        v9[(v29 >> 6) + 8] |= 1 << v29;
        v62 = (v9[6] + 16 * v29);
        *v62 = v25;
        v62[1] = v27;
        sub_1D1742194(v79, (v9[7] + 32 * v29));
        v63 = v9[2];
        v16 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v16)
        {
          goto LABEL_42;
        }

        v9[2] = v64;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_1D1E73A90;
      *(v36 + 32) = sub_1D1E6781C();
      *(v36 + 40) = v37;
      v38 = sub_1D1E6781C();
      *(v36 + 72) = MEMORY[0x1E69E6158];
      *(v36 + 48) = v38;
      *(v36 + 56) = v39;
      *(v36 + 80) = sub_1D1E6781C();
      *(v36 + 88) = v40;
      v41 = sub_1D1E67D2C();
      *(v36 + 120) = v8;
      *(v36 + 96) = v41;
      v42 = sub_1D18D6538(v36);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, v4);
      swift_arrayDestroy();
      v43 = sub_1D1E6781C();
      v45 = v44;
      *(&v81 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      *&v80 = v42;
      sub_1D1742194(&v80, v79);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v48 = sub_1D171D2F0(v43, v45);
      v49 = v9[2];
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        goto LABEL_39;
      }

      v52 = v47;
      if (v9[3] >= v51)
      {
        if (v46)
        {
          v4 = v10;
          if (v47)
          {
            goto LABEL_20;
          }
        }

        else
        {
          sub_1D1738144();
          v4 = v10;
          if (v52)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_1D1726F00(v51, v46);
        v53 = sub_1D171D2F0(v43, v45);
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_43;
        }

        v48 = v53;
        v4 = v10;
        if (v52)
        {
LABEL_20:

          v55 = (v9[7] + 32 * v48);
          __swift_destroy_boxed_opaque_existential_1(v55);
          sub_1D1742194(v79, v55);
          goto LABEL_30;
        }
      }

      v9[(v48 >> 6) + 8] |= 1 << v48;
      v58 = (v9[6] + 16 * v48);
      *v58 = v43;
      v58[1] = v45;
      sub_1D1742194(v79, (v9[7] + 32 * v48));
      v59 = v9[2];
      v16 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v16)
      {
        goto LABEL_41;
      }

      v9[2] = v60;
    }

LABEL_30:
    if (v9[2] < 2uLL)
    {
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1D177D2F8(0, v3[2] + 1, 1, v3);
      }

      v66 = v3[2];
      v65 = v3[3];
      if (v66 >= v65 >> 1)
      {
        v3 = sub_1D177D2F8((v65 > 1), v66 + 1, 1, v3);
      }

      v3[2] = v66 + 1;
      v3[v66 + 4] = v9;
      v4 = v10;
    }

    v1 = 1;
    v2 = 1u;
    if (v78)
    {
      v67 = sub_1D18F95CC(v3);

      return v67;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

double ThermostatPreset.init(for:name:)@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  if (v4 <= 4 && ((0x17u >> v4) & 1) != 0)
  {
    v5 = a3;
    v6 = a2;
    v7 = a4;
    v8 = sub_1D19B8F94(*(&off_1E83EF778 + v4));
    a4 = v7;
    a3 = v5;
    v10 = v9;
    a2 = v6;
  }

  else
  {
    v8 = 0;
    v10 = 0xC000000000000000;
  }

  *&result = 2600;
  *a4 = xmmword_1D1E8BF30;
  *(a4 + 16) = v4;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  *(a4 + 40) = 0;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

double ThermostatPreset.heatingSetpointCelsius.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1D1E66ADC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = *(v0 + 8);
  sub_1D18311BC();
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v6 = sub_1D1E6838C();
  v7 = objc_opt_self();
  v8 = [v7 fahrenheit];
  v9 = sub_1D1E684FC();

  if (v9)
  {
    v10 = 0.555555556;
  }

  else
  {
    v11 = [v7 celsius];
    sub_1D1E684FC();

    v10 = 0.5;
    v6 = v11;
  }

  return v10 * round(v5 / 100.0 / v10);
}

double ThermostatPreset.coolingSetpointCelsius.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1D1E66ADC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = *v0;
  sub_1D18311BC();
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v6 = sub_1D1E6838C();
  v7 = objc_opt_self();
  v8 = [v7 fahrenheit];
  v9 = sub_1D1E684FC();

  if (v9)
  {
    v10 = 0.555555556;
  }

  else
  {
    v11 = [v7 celsius];
    sub_1D1E684FC();

    v10 = 0.5;
    v6 = v11;
  }

  return v10 * round(v5 / 100.0 / v10);
}

uint64_t ThermostatPreset.presetHandle.getter()
{
  v1 = *(v0 + 24);
  sub_1D1771B38(v1, *(v0 + 32));
  return v1;
}

uint64_t ThermostatPreset.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1D19B76C8()
{
  v1 = *v0;
  v2 = 0x53676E696C6F6F63;
  v3 = 0x6148746573657270;
  v4 = 0x6E49746C697562;
  if (v1 != 4)
  {
    v4 = 1701667182;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x53676E6974616568;
  if (v1 != 1)
  {
    v5 = 0x6353746573657270;
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

uint64_t sub_1D19B7798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19B93BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19B77C0(uint64_t a1)
{
  v2 = sub_1D19B9044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19B77FC(uint64_t a1)
{
  v2 = sub_1D19B9044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ThermostatPreset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648330, &qword_1D1E8BF58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - v6;
  v9 = *v1;
  v8 = v1[1];
  v26 = *(v1 + 16);
  v10 = v1[4];
  v21 = v1[3];
  v22 = v8;
  v18[1] = *(v1 + 40);
  v11 = v1[7];
  v19 = v1[6];
  v20 = v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19B9044();
  sub_1D1E6930C();
  LOBYTE(v24) = 0;
  v13 = v23;
  sub_1D1E68F6C();
  if (!v13)
  {
    v14 = v26;
    v15 = v20;
    v16 = v21;
    v23 = v11;
    LOBYTE(v24) = 1;
    sub_1D1E68F6C();
    LOBYTE(v24) = v14;
    v27 = 2;
    sub_1D19B9098();
    sub_1D1E68F1C();
    v24 = v16;
    v25 = v15;
    v27 = 3;
    sub_1D1771B38(v16, v15);
    sub_1D18CAD0C();
    sub_1D1E68E5C();
    sub_1D1716AA4(v24, v25);
    LOBYTE(v24) = 4;
    sub_1D1E68EDC();
    LOBYTE(v24) = 5;
    sub_1D1E68E0C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ThermostatPreset.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  MEMORY[0x1D3892890](*v0);
  MEMORY[0x1D3892890](v1);
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (v4 >> 60 != 15)
  {
    sub_1D1E668CC();
  }

  sub_1D1E6922C();
  if (!v7)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();

  return sub_1D1E678EC();
}

uint64_t ThermostatPreset.hashValue.getter()
{
  sub_1D1E6920C();
  ThermostatPreset.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t ThermostatPreset.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648348, &qword_1D1E8BF60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19B9044();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29) = 0;
  v11 = sub_1D1E68DCC();
  LOBYTE(v29) = 1;
  v24 = sub_1D1E68DCC();
  LOBYTE(v25) = 2;
  sub_1D19B90EC();
  sub_1D1E68D7C();
  v12 = v29;
  LOBYTE(v25) = 3;
  sub_1D18CB0FC();
  sub_1D1E68CBC();
  v37 = v12;
  v22 = v30;
  v23 = v29;
  LOBYTE(v29) = 4;
  LOBYTE(v12) = sub_1D1E68D3C();
  v38 = 5;
  v13 = sub_1D1E68C6C();
  LOBYTE(v12) = v12 & 1;
  v14 = v9;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  *&v25 = v11;
  *(&v25 + 1) = v24;
  v17 = v37;
  LOBYTE(v26) = v37;
  v18 = v22;
  *(&v26 + 1) = v23;
  *&v27 = v22;
  BYTE8(v27) = v12;
  *&v28 = v13;
  *(&v28 + 1) = v16;
  v19 = v26;
  *a2 = v25;
  a2[1] = v19;
  v20 = v28;
  a2[2] = v27;
  a2[3] = v20;
  sub_1D17806DC(&v25, &v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29 = v11;
  v30 = v24;
  v31 = v17;
  v32 = v23;
  v33 = v18;
  v34 = v12;
  v35 = v13;
  v36 = v16;
  return sub_1D1780738(&v29);
}

uint64_t sub_1D19B7F2C()
{
  sub_1D1E6920C();
  ThermostatPreset.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D19B7F70()
{
  sub_1D1E6920C();
  ThermostatPreset.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D19B7FB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D1771B38(v2, v3);
}

uint64_t sub_1D19B7FF0(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648378, &qword_1D1E8C268);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_1D1E6631C();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1D19B95D4(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1D1E6893C();
  }

  sub_1D19B8500(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1D19B963C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1D19B85C8(sub_1D19B96DC);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1D1E6686C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1D19B8B20(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1D1E6795C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1D1E6798C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1D1E6893C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1D19B8B20(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1D1E6796C();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1D1E6687C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1D1E6687C();
    sub_1D1716AA4(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1D1716AA4(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1D1741854(*&__src[0], *(&__src[0] + 1));

  sub_1D174E7C4(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t sub_1D19B8500@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1D19B8DDC(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1D1E661AC();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1D1E6615C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1D1E6685C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1D19B85C8(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1D174E7C4(v6, v5);
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

    sub_1D174E7C4(v6, v5);
    *v3 = xmmword_1D1E8BF40;
    sub_1D174E7C4(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1D1E6616C() && __OFSUB__(v6, sub_1D1E6619C()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1D1E661AC();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1D1E6614C();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1D19B8A6C(v6, v6 >> 32, a1);

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

    sub_1D174E7C4(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1D1E8BF40;
    sub_1D174E7C4(0, 0xC000000000000000);
    sub_1D1E6681C();
    result = sub_1D19B8A6C(v20[2], v20[3], a1);
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
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_1D19B896C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1D19B8DDC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D19B8E94(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D19B8F10(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1D19B8A00(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D19B8A6C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1D1E6616C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1D1E6619C();
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

  v12 = sub_1D1E6618C();
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

uint64_t sub_1D19B8B20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D1E6799C();
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
    v5 = MEMORY[0x1D3890FB0](15, a1 >> 16);
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

uint64_t sub_1D19B8B9C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1D1E6885C();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s13HomeDataModel16ThermostatPresetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if ((0xFE060504030201uLL >> (8 * *(a1 + 16))) != (0xFE060504030201uLL >> (8 * *(a2 + 16))))
    {
      return 0;
    }

    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v10 = *(a2 + 24);
    v9 = *(a2 + 32);
    v11 = *(a2 + 40);
    v13 = *(a2 + 48);
    v12 = *(a2 + 56);
    if (v4 >> 60 == 15)
    {
      if (v9 >> 60 == 15)
      {
        sub_1D1771B38(v5, v4);
        sub_1D1771B38(v10, v9);
        sub_1D1716AA4(v5, v4);
        if (v6 == v11)
        {
          goto LABEL_16;
        }

        return 0;
      }

LABEL_11:
      sub_1D1771B38(v5, v4);
      sub_1D1771B38(v10, v9);
      sub_1D1716AA4(v5, v4);
      sub_1D1716AA4(v10, v9);
      return 0;
    }

    if (v9 >> 60 == 15)
    {
      goto LABEL_11;
    }

    v15 = *(a1 + 48);
    sub_1D1771B38(v5, v4);
    sub_1D1771B38(v10, v9);
    v14 = sub_1D199F344(v5, v4, v10, v9);
    sub_1D1716AA4(v10, v9);
    sub_1D1716AA4(v5, v4);
    result = 0;
    if (v14)
    {
      v8 = v15;
      if (((v6 ^ v11) & 1) == 0)
      {
LABEL_16:
        if (v7)
        {
          if (v12 && (v8 == v13 && v7 == v12 || (sub_1D1E6904C() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!v12)
        {
          return 1;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D19B8DDC(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
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

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D19B8E94(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D1E661AC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D1E6615C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D1E6685C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D19B8F10(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D1E661AC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D1E6615C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D19B8F94(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648388, &qword_1D1E8C278);
  v10 = sub_1D19B9764();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1D19B896C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_1D19B9044()
{
  result = qword_1EC648338;
  if (!qword_1EC648338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648338);
  }

  return result;
}

unint64_t sub_1D19B9098()
{
  result = qword_1EC648340;
  if (!qword_1EC648340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648340);
  }

  return result;
}

unint64_t sub_1D19B90EC()
{
  result = qword_1EC648350;
  if (!qword_1EC648350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648350);
  }

  return result;
}

unint64_t sub_1D19B9144()
{
  result = qword_1EC648358;
  if (!qword_1EC648358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648358);
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

uint64_t sub_1D19B91AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_1D19B9208(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

unint64_t sub_1D19B92B8()
{
  result = qword_1EC648360;
  if (!qword_1EC648360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648360);
  }

  return result;
}

unint64_t sub_1D19B9310()
{
  result = qword_1EC648368;
  if (!qword_1EC648368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648368);
  }

  return result;
}

unint64_t sub_1D19B9368()
{
  result = qword_1EC648370;
  if (!qword_1EC648370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648370);
  }

  return result;
}

uint64_t sub_1D19B93BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E696C6F6F63 && a2 == 0xEF746E696F707465;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53676E6974616568 && a2 == 0xEF746E696F707465 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6353746573657270 && a2 == 0xEE006F6972616E65 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6148746573657270 && a2 == 0xEC000000656C646ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E49746C697562 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D19B95D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648380, &qword_1D1E8C270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D19B963C(uint64_t result)
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
      v2 = sub_1D1E661AC();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1D1E6617C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1D1E6685C();
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

void *sub_1D19B96DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1D19B8A00(sub_1D19B9744, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

unint64_t sub_1D19B9764()
{
  result = qword_1EC648390;
  if (!qword_1EC648390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC648388, &qword_1D1E8C278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648390);
  }

  return result;
}

uint64_t ThermostatPresetScenario.label.getter()
{
  v1 = *v0;
  v2 = "HFThermostatPreset_Away";
  v3 = "XCTestConfigurationFilePath";
  v4 = 0xD00000000000001FLL;
  if (v1 != 5)
  {
    v3 = "enablePresets(presets:)";
    v4 = 0xD00000000000001ELL;
  }

  v5 = "HFThermostatPreset_Vacation";
  if (v1 == 3)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v5 = "HFThermostatPreset_GoingToSleep";
    v6 = 0xD00000000000001BLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v5;
    v4 = v6;
  }

  v7 = "HFThermostatPreset_Sleep";
  if (v1 == 1)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v7 = "HFThermostatPreset_Wake";
    v8 = 0xD000000000000018;
  }

  if (*v0)
  {
    v2 = v7;
    v9 = v8;
  }

  else
  {
    v9 = 0xD000000000000017;
  }

  if (*v0 <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v3;
  }

  if (*v0 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  return static String.hfLocalized(_:)(v11, v10 | 0x8000000000000000);
}

HomeDataModel::ThermostatPresetScenario_optional __swiftcall ThermostatPresetScenario.init(value:)(Swift::UInt8_optional value)
{
  if ((*&value & 0x100) != 0 || (value.value + 2) > 8u)
  {
    *v1 = 7;
  }

  else
  {
    *v1 = byte_1D1E8C45A[(value.value + 2)];
  }

  return value.value;
}

uint64_t ThermostatPresetScenario.shortPresetLabel.getter()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  v3 = 0xD000000000000019;
  v4 = "HFThermostatPreset_Night";
  v5 = "XCTestConfigurationFilePath";
  v6 = 0xD00000000000001FLL;
  if (v2 != 5)
  {
    v5 = "enablePresets(presets:)";
    v6 = 0xD00000000000001ELL;
  }

  v7 = "HFThermostatPreset_Vacation";
  if (v2 == 3)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v7 = "esetSuggestionChange";
    v8 = 0xD00000000000001BLL;
  }

  if (*v0 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = "HFThermostatPreset_Sleep";
  if (v2 != 1)
  {
    v9 = "HFThermostatPreset_Extended";
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    v4 = v9;
    v3 = v1;
  }

  if (*v0 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v0 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  return static String.hfLocalized(_:)(v11, v10 | 0x8000000000000000);
}

uint64_t ThermostatPresetScenario.longPresetLabel.getter()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  v3 = 0xD000000000000019;
  v4 = "HFThermostatPreset_Night";
  v5 = "XCTestConfigurationFilePath";
  v6 = 0xD00000000000001FLL;
  if (v2 == 5)
  {
    v7 = 0xD00000000000001FLL;
  }

  else
  {
    v5 = "enablePresets(presets:)";
    v7 = 0xD00000000000001ELL;
  }

  v8 = "HFThermostatPreset_Vacation";
  if (v2 == 3)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v8 = "HFThermostatPreset_AtHome";
  }

  if (*v0 > 4u)
  {
    v6 = v7;
  }

  else
  {
    v5 = v8;
  }

  v9 = "HFThermostatPreset_Sleep";
  if (v2 != 1)
  {
    v9 = "HFThermostatPreset_AwayExtended";
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v4 = v9;
    v3 = v1;
  }

  if (*v0 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v0 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  return static String.hfLocalized(_:)(v11, v10 | 0x8000000000000000);
}

HomeDataModel::ThermostatPresetScenario_optional __swiftcall ThermostatPresetScenario.init(rawValue:)(HomeDataModel::ThermostatPresetScenario_optional rawValue)
{
  if ((rawValue.value + 2) > 8u)
  {
    *v1 = 7;
  }

  else
  {
    *v1 = byte_1D1E8C45A[(rawValue.value + 2)];
  }

  return rawValue;
}

uint64_t ThermostatPresetScenario.symbol.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (!*v0)
    {
      return 0x69662E6573756F68;
    }

    if (v1 == 1)
    {
      return 0xD000000000000015;
    }

    return 0x6174732E6E6F6F6DLL;
  }

  if (*v0 > 4u)
  {
    if (v1 != 5)
    {
      return 0;
    }

    return 0x6174732E6E6F6F6DLL;
  }

  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return 0x69662E6B636F6C63;
  }
}

uint64_t ThermostatPresetScenario.order.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    return 4;
  }

  else
  {
    return qword_1D1E8C468[v1];
  }
}

unint64_t sub_1D19B9CA0()
{
  result = qword_1EC648398;
  if (!qword_1EC648398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648398);
  }

  return result;
}

uint64_t sub_1D19B9CF4()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19B9D94()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

unint64_t sub_1D19B9E5C()
{
  result = qword_1EC6483A0;
  if (!qword_1EC6483A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6483A8, &qword_1D1E8C3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483A0);
  }

  return result;
}

unint64_t sub_1D19B9EE0()
{
  result = qword_1EC6483B0;
  if (!qword_1EC6483B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483B0);
  }

  return result;
}

_BYTE *ThermostatPresetType.init(preset:numberOfPresets:supportsNames:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t ThermostatPresetType.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1D171DB60(0x20u), (v5 & 1) != 0))
  {
    sub_1D1741970(*(a1 + 56) + 32 * v4, v14);
    v6 = swift_dynamicCast();
    if (v6)
    {
      LOWORD(v6) = v13;
    }
  }

  else
  {
    LOWORD(v6) = 0;
  }

  ThermostatPresetScenario.init(value:)(v6);
  v7 = v14[0];
  if (*(a1 + 16) && (v8 = sub_1D171DB60(0x21u), (v9 & 1) != 0))
  {
    sub_1D1741970(*(a1 + 56) + 32 * v8, v14);

    result = swift_dynamicCast();
    if (result)
    {
      v11 = v13;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v11 = 0;
LABEL_12:
  if (v7 == 7)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1D19BA0F8()
{
  v1 = 0x664F7265626D756ELL;
  if (*v0 != 1)
  {
    v1 = 0x7374726F70707573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6353746573657270;
  }
}

uint64_t sub_1D19BA178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19BAB80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19BA1A0(uint64_t a1)
{
  v2 = sub_1D19BA914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19BA1DC(uint64_t a1)
{
  v2 = sub_1D19BA914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ThermostatPresetType.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6483B8, &qword_1D1E8C490);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = *(v1 + 1);
  v13 = v1[16];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19BA914();
  sub_1D1E6930C();
  v17 = v9;
  v16 = 0;
  sub_1D19B9098();
  sub_1D1E68F1C();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_1D1E68F6C();
  v14 = 2;
  sub_1D1E68EDC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t ThermostatPresetType.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = v0[16];
  v3 = 8 * *v0;
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v1);
  return sub_1D1E6922C();
}

uint64_t ThermostatPresetType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_1D1E6920C();
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v2);
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t ThermostatPresetType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6483C8, &qword_1D1E8C498);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19BA914();
  sub_1D1E692FC();
  if (!v2)
  {
    v18 = 0;
    sub_1D19B90EC();
    sub_1D1E68D7C();
    v11 = v19;
    v17 = 1;
    v13 = sub_1D1E68DCC();
    v16 = 2;
    v14 = sub_1D1E68D3C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D19BA6EC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_1D1E6920C();
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v2);
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19BA770()
{
  v1 = *(v0 + 1);
  v2 = v0[16];
  v3 = 8 * *v0;
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v1);
  return sub_1D1E6922C();
}

uint64_t sub_1D19BA7D4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_1D1E6920C();
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v2);
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

unint64_t sub_1D19BA914()
{
  result = qword_1EC6483C0;
  if (!qword_1EC6483C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483C0);
  }

  return result;
}

unint64_t sub_1D19BA96C()
{
  result = qword_1EC6483D0;
  if (!qword_1EC6483D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ThermostatPresetType(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ThermostatPresetType(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D19BAA7C()
{
  result = qword_1EC6483D8;
  if (!qword_1EC6483D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483D8);
  }

  return result;
}

unint64_t sub_1D19BAAD4()
{
  result = qword_1EC6483E0;
  if (!qword_1EC6483E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483E0);
  }

  return result;
}

unint64_t sub_1D19BAB2C()
{
  result = qword_1EC6483E8;
  if (!qword_1EC6483E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483E8);
  }

  return result;
}

uint64_t sub_1D19BAB80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6353746573657270 && a2 == 0xEE006F6972616E65;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEF73746573657250 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xED000073656D614ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t static StaticBasicInfoCluster.ProductAppearance.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  if (a1[2])
  {
    if ((a2[2] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a1[1] != a2[1])
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D19BAF38()
{
  if (*v0)
  {
    result = 0x437972616D697270;
  }

  else
  {
    result = 0x6873696E6966;
  }

  *v0;
  return result;
}

uint64_t sub_1D19BAF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6873696E6966 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x437972616D697270 && a2 == 0xEC000000726F6C6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D19BB054(uint64_t a1)
{
  v2 = sub_1D19BE17C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19BB090(uint64_t a1)
{
  v2 = sub_1D19BE17C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticBasicInfoCluster.ProductAppearance.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6483F0, &qword_1D1E8C6F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v14 = v1[2];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19BE17C();
  sub_1D1E6930C();
  v20 = v9;
  v19 = 0;
  type metadata accessor for MTRBasicInformationProductFinish(0);
  sub_1D19BFFB8(&qword_1EC648400, type metadata accessor for MTRBasicInformationProductFinish);
  sub_1D1E68F1C();
  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v16 = 1;
    type metadata accessor for MTRBasicInformationColor(0);
    sub_1D19BFFB8(&qword_1EC648408, type metadata accessor for MTRBasicInformationColor);
    sub_1D1E68E5C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t StaticBasicInfoCluster.ProductAppearance.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_1D1E6922C();
  if ((v2 & 1) == 0)
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t StaticBasicInfoCluster.ProductAppearance.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_1D1E6920C();
  sub_1D1E6922C();
  if ((v2 & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticBasicInfoCluster.ProductAppearance.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648410, &qword_1D1E8C6F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19BE17C();
  sub_1D1E692FC();
  if (!v2)
  {
    type metadata accessor for MTRBasicInformationProductFinish(0);
    v19 = 0;
    sub_1D19BFFB8(&qword_1EC648418, type metadata accessor for MTRBasicInformationProductFinish);
    sub_1D1E68D7C();
    v11 = v20;
    type metadata accessor for MTRBasicInformationColor(0);
    v16 = 1;
    sub_1D19BFFB8(&qword_1EC648420, type metadata accessor for MTRBasicInformationColor);
    sub_1D1E68CBC();
    (*(v6 + 8))(v9, v5);
    v12 = v17;
    v13 = v18;
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D19BB604(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = a2[2];
    if (a1[2])
    {
      if (a2[2])
      {
        return 1;
      }
    }

    else
    {
      if (a1[1] != a2[1])
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D19BB64C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_1D1E6920C();
  sub_1D1E6922C();
  if ((v2 & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19BB6C8()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_1D1E6922C();
  if ((v2 & 1) == 0)
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t sub_1D19BB720()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_1D1E6920C();
  sub_1D1E6922C();
  if ((v2 & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticBasicInfoCluster.vendorName.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticBasicInfoCluster() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticBasicInfoCluster.productName.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticBasicInfoCluster() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticBasicInfoCluster.nodeLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticBasicInfoCluster() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticBasicInfoCluster.location.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticBasicInfoCluster() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticBasicInfoCluster.hardwareVersionString.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticBasicInfoCluster() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticBasicInfoCluster.softwareVersionString.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticBasicInfoCluster() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticBasicInfoCluster.manufacturingDate.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticBasicInfoCluster() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticBasicInfoCluster.partNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticBasicInfoCluster() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticBasicInfoCluster.productURL.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticBasicInfoCluster() + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticBasicInfoCluster.productLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticBasicInfoCluster() + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticBasicInfoCluster.serialNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticBasicInfoCluster() + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticBasicInfoCluster.uniqueID.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticBasicInfoCluster() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticBasicInfoCluster.productAppearance.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticBasicInfoCluster();
  v4 = (v1 + *(result + 92));
  v5 = *v4;
  v6 = *(v4 + 2);
  LOBYTE(v4) = *(v4 + 3);
  *(a1 + 2) = v6;
  *a1 = v5;
  *(a1 + 3) = v4;
  return result;
}

int *StaticBasicInfoCluster.init(id:vendorName:vendorID:productName:productID:nodeLabel:location:hardwareVersion:hardwareVersionString:softwareVersion:softwareVersionString:manufacturingDate:partNumber:productURL:productLabel:serialNumber:localConfigDisabled:reachable:uniqueID:productAppearance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, char a30, uint64_t a31, uint64_t a32, __int16 *a33)
{
  v55 = *(a33 + 2);
  v56 = *(a33 + 3);
  v57 = *a33;
  sub_1D190D804(a1, a9);
  result = type metadata accessor for StaticBasicInfoCluster();
  v38 = (a9 + result[5]);
  *v38 = a2;
  v38[1] = a3;
  *(a9 + result[6]) = a4;
  v39 = (a9 + result[7]);
  *v39 = a5;
  v39[1] = a6;
  *(a9 + result[8]) = a7;
  v40 = (a9 + result[9]);
  *v40 = a8;
  v40[1] = a10;
  v41 = (a9 + result[10]);
  *v41 = a11;
  v41[1] = a12;
  *(a9 + result[11]) = a13;
  v42 = (a9 + result[12]);
  *v42 = a14;
  v42[1] = a15;
  *(a9 + result[13]) = a16;
  v43 = (a9 + result[14]);
  *v43 = a17;
  v43[1] = a18;
  v44 = (a9 + result[15]);
  *v44 = a19;
  v44[1] = a20;
  v45 = (a9 + result[16]);
  *v45 = a21;
  v45[1] = a22;
  v46 = (a9 + result[17]);
  *v46 = a23;
  v46[1] = a24;
  v47 = (a9 + result[18]);
  *v47 = a25;
  v47[1] = a26;
  v48 = (a9 + result[19]);
  *v48 = a27;
  v48[1] = a28;
  *(a9 + result[20]) = a29;
  *(a9 + result[21]) = a30;
  v49 = (a9 + result[22]);
  *v49 = a31;
  v49[1] = a32;
  v50 = a9 + result[23];
  *(v50 + 2) = v55;
  *v50 = v57;
  *(v50 + 3) = v56;
  return result;
}

uint64_t sub_1D19BBE44(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x614E726F646E6576;
      break;
    case 2:
      result = 0x4449726F646E6576;
      break;
    case 3:
      result = 0x4E746375646F7270;
      break;
    case 4:
      result = 0x49746375646F7270;
      break;
    case 5:
      result = 0x6562614C65646F6ELL;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      v3 = 1685217640;
      goto LABEL_13;
    case 8:
    case 10:
      result = 0xD000000000000015;
      break;
    case 9:
      v3 = 1952870259;
LABEL_13:
      result = v3 | 0x6572617700000000;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x626D754E74726170;
      break;
    case 13:
      result = 0x55746375646F7270;
      break;
    case 14:
      result = 0x4C746375646F7270;
      break;
    case 15:
      result = 0x754E6C6169726573;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0x6C62616863616572;
      break;
    case 18:
      result = 0x4449657571696E75;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D19BC08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19BF94C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19BC0C0(uint64_t a1)
{
  v2 = sub_1D19BEE60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19BC0FC(uint64_t a1)
{
  v2 = sub_1D19BEE60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticBasicInfoCluster.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648428, &qword_1D1E8C700);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v58[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19BEE60();
  sub_1D1E6930C();
  LOBYTE(v59) = 0;
  type metadata accessor for ClusterPath(0);
  sub_1D19BFFB8(&qword_1EC646D88, type metadata accessor for ClusterPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticBasicInfoCluster();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v59) = 1;
    sub_1D1E68ECC();
    v15 = *(v3 + v11[6]);
    LOBYTE(v59) = 2;
    sub_1D1E68EFC();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v59) = 3;
    sub_1D1E68ECC();
    v19 = *(v3 + v11[8]);
    LOBYTE(v59) = 4;
    sub_1D1E68F4C();
    v20 = (v3 + v11[9]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v59) = 5;
    sub_1D1E68ECC();
    v23 = (v3 + v11[10]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v59) = 6;
    sub_1D1E68ECC();
    v26 = *(v3 + v11[11]);
    LOBYTE(v59) = 7;
    sub_1D1E68F4C();
    v27 = (v3 + v11[12]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v59) = 8;
    sub_1D1E68ECC();
    v30 = *(v3 + v11[13]);
    LOBYTE(v59) = 9;
    sub_1D1E68F5C();
    v31 = (v3 + v11[14]);
    v32 = *v31;
    v33 = v31[1];
    LOBYTE(v59) = 10;
    sub_1D1E68ECC();
    v34 = (v3 + v11[15]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v59) = 11;
    sub_1D1E68E0C();
    v37 = (v3 + v11[16]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v59) = 12;
    sub_1D1E68E0C();
    v40 = (v3 + v11[17]);
    v41 = *v40;
    v42 = v40[1];
    LOBYTE(v59) = 13;
    sub_1D1E68E0C();
    v43 = (v3 + v11[18]);
    v44 = *v43;
    v45 = v43[1];
    LOBYTE(v59) = 14;
    sub_1D1E68E0C();
    v46 = (v3 + v11[19]);
    v47 = *v46;
    v48 = v46[1];
    LOBYTE(v59) = 15;
    sub_1D1E68E0C();
    v49 = *(v3 + v11[20]);
    LOBYTE(v59) = 16;
    sub_1D1E68E1C();
    v50 = *(v3 + v11[21]);
    LOBYTE(v59) = 17;
    sub_1D1E68E1C();
    v51 = (v3 + v11[22]);
    v52 = *v51;
    v53 = v51[1];
    LOBYTE(v59) = 18;
    sub_1D1E68E0C();
    v54 = (v3 + v11[23]);
    v55 = *v54;
    v56 = *(v54 + 2);
    LOBYTE(v54) = *(v54 + 3);
    v60 = v56;
    v59 = v55;
    v61 = v54;
    v58[11] = 19;
    sub_1D19BEEB4();
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticBasicInfoCluster.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D19BFFB8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  v2 = *(v0 + *(v1 + 24));
  sub_1D1E6923C();
  v3 = dword_1D1E8CC84[*(v0 + *(type metadata accessor for ClusterPath(0) + 20))];
  sub_1D1E6924C();
  v4 = type metadata accessor for StaticBasicInfoCluster();
  v5 = (v0 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v0 + v4[6]));
  v8 = (v0 + v4[7]);
  v9 = *v8;
  v10 = v8[1];
  sub_1D1E678EC();
  v11 = *(v0 + v4[8]);
  sub_1D1E6923C();
  v12 = (v0 + v4[9]);
  v13 = *v12;
  v14 = v12[1];
  sub_1D1E678EC();
  v15 = (v0 + v4[10]);
  v16 = *v15;
  v17 = v15[1];
  sub_1D1E678EC();
  v18 = *(v0 + v4[11]);
  sub_1D1E6923C();
  v19 = (v0 + v4[12]);
  v20 = *v19;
  v21 = v19[1];
  sub_1D1E678EC();
  v22 = *(v0 + v4[13]);
  sub_1D1E6924C();
  v23 = (v0 + v4[14]);
  v24 = *v23;
  v25 = v23[1];
  sub_1D1E678EC();
  v26 = (v0 + v4[15]);
  if (v26[1])
  {
    v27 = *v26;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v28 = (v0 + v4[16]);
  if (v28[1])
  {
    v29 = *v28;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v30 = (v0 + v4[17]);
  if (v30[1])
  {
    v31 = *v30;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v32 = (v0 + v4[18]);
  if (v32[1])
  {
    v33 = *v32;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v34 = (v0 + v4[19]);
  if (v34[1])
  {
    v35 = *v34;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v0 + v4[20]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v0 + v4[21]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v36 = (v0 + v4[22]);
  if (v36[1])
  {
    v37 = *v36;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v38 = (v0 + v4[23]);
  if ((*(v38 + 3) & 1) == 0)
  {
    v39 = *v38 | (*(v38 + 2) << 16);
    sub_1D1E6922C();
    sub_1D1E6922C();
    if ((v39 & 0x10000) == 0)
    {
      sub_1D1E6922C();
    }
  }

  return sub_1D1E6922C();
}

uint64_t StaticBasicInfoCluster.hashValue.getter()
{
  sub_1D1E6920C();
  StaticBasicInfoCluster.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticBasicInfoCluster.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v4 = type metadata accessor for ClusterPath(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648440, &qword_1D1E8C708);
  v65 = *(v67 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v10 = &v61 - v9;
  v11 = type metadata accessor for StaticBasicInfoCluster();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D19BEE60();
  v66 = v10;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v17 = v64;
  v62 = v11;
  v63 = v14;
  LOBYTE(v70) = 0;
  sub_1D19BFFB8(&qword_1EC646DC0, type metadata accessor for ClusterPath);
  sub_1D1E68D7C();
  v18 = v63;
  sub_1D190D804(v7, v63);
  LOBYTE(v70) = 1;
  v19 = sub_1D1E68D2C();
  v20 = v62;
  v21 = (v18 + v62[5]);
  *v21 = v19;
  v21[1] = v22;
  LOBYTE(v70) = 2;
  *(v18 + v20[6]) = sub_1D1E68D5C();
  LOBYTE(v70) = 3;
  v23 = sub_1D1E68D2C();
  v24 = (v18 + v20[7]);
  *v24 = v23;
  v24[1] = v25;
  LOBYTE(v70) = 4;
  *(v18 + v20[8]) = sub_1D1E68DAC();
  LOBYTE(v70) = 5;
  v26 = sub_1D1E68D2C();
  v27 = (v18 + v20[9]);
  *v27 = v26;
  v27[1] = v28;
  LOBYTE(v70) = 6;
  v29 = sub_1D1E68D2C();
  v30 = (v18 + v20[10]);
  *v30 = v29;
  v30[1] = v31;
  LOBYTE(v70) = 7;
  *&v63[v62[11]] = sub_1D1E68DAC();
  LOBYTE(v70) = 8;
  v32 = sub_1D1E68D2C();
  v33 = &v63[v62[12]];
  *v33 = v32;
  v33[1] = v34;
  LOBYTE(v70) = 9;
  *&v63[v62[13]] = sub_1D1E68DBC();
  LOBYTE(v70) = 10;
  v35 = sub_1D1E68D2C();
  v36 = &v63[v62[14]];
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v70) = 11;
  v38 = sub_1D1E68C6C();
  v39 = &v63[v62[15]];
  *v39 = v38;
  v39[1] = v40;
  LOBYTE(v70) = 12;
  v41 = sub_1D1E68C6C();
  v42 = &v63[v62[16]];
  *v42 = v41;
  v42[1] = v43;
  LOBYTE(v70) = 13;
  v44 = sub_1D1E68C6C();
  v45 = &v63[v62[17]];
  *v45 = v44;
  v45[1] = v46;
  LOBYTE(v70) = 14;
  v47 = sub_1D1E68C6C();
  v48 = &v63[v62[18]];
  *v48 = v47;
  v48[1] = v49;
  LOBYTE(v70) = 15;
  v50 = sub_1D1E68C6C();
  v51 = &v63[v62[19]];
  *v51 = v50;
  v51[1] = v52;
  LOBYTE(v70) = 16;
  v63[v62[20]] = sub_1D1E68C7C();
  LOBYTE(v70) = 17;
  v63[v62[21]] = sub_1D1E68C7C();
  LOBYTE(v70) = 18;
  v53 = sub_1D1E68C6C();
  v54 = &v63[v62[22]];
  *v54 = v53;
  v54[1] = v55;
  v69 = 19;
  sub_1D19BEF08();
  sub_1D1E68CBC();
  (*(v65 + 8))(v66, v67);
  v56 = v70;
  v57 = v72;
  v58 = v63;
  v59 = &v63[v62[23]];
  v59[2] = v71;
  *v59 = v56;
  v59[3] = v57;
  sub_1D19BEF5C(v58, v17, type metadata accessor for StaticBasicInfoCluster);
  __swift_destroy_boxed_opaque_existential_1(v68);
  return sub_1D19BEFC4(v58, type metadata accessor for StaticBasicInfoCluster);
}

uint64_t sub_1D19BD608()
{
  sub_1D1E6920C();
  StaticBasicInfoCluster.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D19BD64C()
{
  sub_1D1E6920C();
  StaticBasicInfoCluster.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticBasicInfoCluster.init(path:valueSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v5 = type metadata accessor for ClusterPath(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticBasicInfoCluster();
  v93 = *(v9 - 1);
  v10 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v13 = *(a2 + 8);
  sub_1D19BEF5C(a1, v12, type metadata accessor for ClusterPath);
  sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath);
  v15 = sub_1D1912A98(1, v8, v14, v13);
  v17 = v16;
  sub_1D19BEFC4(v8, type metadata accessor for ClusterPath);
  if (!v17)
  {
    goto LABEL_16;
  }

  v92 = v5;
  v18 = &v12[v9[5]];
  *v18 = v15;
  v18[1] = v17;
  sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath);
  v19 = sub_1D19BE21C(2, v8, v14, v13);
  v21 = v20;
  sub_1D19BEFC4(v8, type metadata accessor for ClusterPath);
  if ((v21 & 1) != 0 || (*&v12[v9[6]] = v19, sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath), v22 = sub_1D1912A98(3, v8, v14, v13), v24 = v23, sub_1D19BEFC4(v8, type metadata accessor for ClusterPath), !v24))
  {
LABEL_16:
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    goto LABEL_17;
  }

  v25 = &v12[v9[7]];
  *v25 = v22;
  v25[1] = v24;
  sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath);
  v26 = sub_1D18F5A60(4, v8, v14, v13);
  sub_1D19BEFC4(v8, type metadata accessor for ClusterPath);
  if ((v26 & 0x10000) != 0 || (*&v12[v9[8]] = v26, sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath), v27 = sub_1D1912A98(5, v8, v14, v13), v29 = v28, sub_1D19BEFC4(v8, type metadata accessor for ClusterPath), !v29))
  {
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 1;
    goto LABEL_17;
  }

  v30 = &v12[v9[9]];
  *v30 = v27;
  v30[1] = v29;
  sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath);
  v31 = sub_1D1912A98(6, v8, v14, v13);
  v33 = v32;
  sub_1D19BEFC4(v8, type metadata accessor for ClusterPath);
  if (!v33)
  {
    v75 = 0;
    v76 = 0;
    v73 = 1;
    v74 = 1;
    goto LABEL_17;
  }

  v34 = &v12[v9[10]];
  *v34 = v31;
  v34[1] = v33;
  sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath);
  v35 = sub_1D18F5A60(7, v8, v14, v13);
  sub_1D19BEFC4(v8, type metadata accessor for ClusterPath);
  if ((v35 & 0x10000) != 0 || (*&v12[v9[11]] = v35, sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath), v36 = sub_1D1912A98(8, v8, v14, v13), v38 = v37, sub_1D19BEFC4(v8, type metadata accessor for ClusterPath), !v38))
  {
    v76 = 0;
    v73 = 1;
    v74 = 1;
    v75 = 1;
    goto LABEL_17;
  }

  v39 = &v12[v9[12]];
  *v39 = v36;
  v39[1] = v38;
  sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath);
  v40 = sub_1D192B170(9, v8, v14, v13);
  sub_1D19BEFC4(v8, type metadata accessor for ClusterPath);
  if ((v40 & 0x100000000) != 0 || (*&v12[v9[13]] = v40, sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath), v41 = sub_1D1912A98(10, v8, v14, v13), v43 = v42, sub_1D19BEFC4(v8, type metadata accessor for ClusterPath), !v43))
  {
    v73 = 1;
    v74 = 1;
    v75 = 1;
    v76 = 1;
LABEL_17:
    sub_1D19BEFC4(a1, type metadata accessor for ClusterPath);

    sub_1D19BEFC4(v12, type metadata accessor for ClusterPath);
    if (v17)
    {
      v77 = *&v12[v9[5] + 8];
    }

    if (v73)
    {
      v80 = *&v12[v9[7] + 8];

      if (!v74)
      {
LABEL_21:
        if (!v75)
        {
          goto LABEL_22;
        }

        goto LABEL_27;
      }
    }

    else if (!v74)
    {
      goto LABEL_21;
    }

    v81 = *&v12[v9[9] + 8];

    if (!v75)
    {
LABEL_22:
      if (!v76)
      {
        return (*(v93 + 56))(v94, 1, 1, v9);
      }

LABEL_23:
      v78 = *&v12[v9[12] + 8];

      return (*(v93 + 56))(v94, 1, 1, v9);
    }

LABEL_27:
    v82 = *&v12[v9[10] + 8];

    if (!v76)
    {
      return (*(v93 + 56))(v94, 1, 1, v9);
    }

    goto LABEL_23;
  }

  v44 = &v12[v9[14]];
  *v44 = v41;
  v44[1] = v43;
  sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath);
  v45 = sub_1D1912A98(11, v8, v14, v13);
  v47 = v46;
  sub_1D19BEFC4(v8, type metadata accessor for ClusterPath);
  v48 = &v12[v9[15]];
  *v48 = v45;
  v48[1] = v47;
  sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath);
  v49 = sub_1D1912A98(12, v8, v14, v13);
  v51 = v50;
  sub_1D19BEFC4(v8, type metadata accessor for ClusterPath);
  v52 = &v12[v9[16]];
  *v52 = v49;
  v52[1] = v51;
  sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath);
  v53 = sub_1D1912A98(13, v8, v14, v13);
  v55 = v54;
  sub_1D19BEFC4(v8, type metadata accessor for ClusterPath);
  v56 = &v12[v9[17]];
  *v56 = v53;
  v56[1] = v55;
  sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath);
  v57 = sub_1D1912A98(14, v8, v14, v13);
  v59 = v58;
  sub_1D19BEFC4(v8, type metadata accessor for ClusterPath);
  v60 = &v12[v9[18]];
  *v60 = v57;
  v60[1] = v59;
  sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath);
  v61 = sub_1D1912A98(15, v8, v14, v13);
  v63 = v62;
  sub_1D19BEFC4(v8, type metadata accessor for ClusterPath);
  v64 = &v12[v9[19]];
  *v64 = v61;
  v64[1] = v63;
  sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath);
  LOBYTE(v61) = sub_1D19BE5F8(16, v8, v14, v13);
  sub_1D19BEFC4(v8, type metadata accessor for ClusterPath);
  v12[v9[20]] = v61;
  sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath);
  LOBYTE(v61) = sub_1D19BE5F8(17, v8, v14, v13);
  sub_1D19BEFC4(v8, type metadata accessor for ClusterPath);
  v12[v9[21]] = v61;
  sub_1D19BEF5C(a1, v8, type metadata accessor for ClusterPath);
  v65 = sub_1D1912A98(18, v8, v14, v13);
  v67 = v66;
  sub_1D19BEFC4(v8, type metadata accessor for ClusterPath);
  v68 = &v12[v9[22]];
  *v68 = v65;
  v68[1] = v67;
  v98 = v92;
  v99 = sub_1D19BFFB8(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v97);
  sub_1D19BEF5C(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v95 = v14;
  v96 = v13;
  AttributeValueSet.value(for:in:)(20, v97, v100);

  __swift_destroy_boxed_opaque_existential_1(v97);
  sub_1D18C20AC(v100, v97);
  if (v98)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    sub_1D19BF024();
    if (swift_dynamicCast())
    {
      v70 = v95;
      v71 = [v95 finish];
      LOWORD(v97[0]) = 256;
      sub_1D1E691CC();

      if (BYTE1(v97[0]) != 1)
      {
        v87 = LOBYTE(v97[0]);
        v88 = [v70 primaryColor];
        if (v88)
        {
          LOWORD(v97[0]) = 256;
          v89 = v88;
          sub_1D1E691CC();

          sub_1D19BEFC4(a1, type metadata accessor for ClusterPath);
          sub_1D18F49A8(v100);
          if (BYTE1(v97[0]))
          {
            v90 = 0;
          }

          else
          {
            v90 = v97[0];
          }

          if (BYTE1(v97[0]))
          {
            v91 = 0x10000;
          }

          else
          {
            v91 = 0;
          }
        }

        else
        {

          sub_1D19BEFC4(a1, type metadata accessor for ClusterPath);
          sub_1D18F49A8(v100);
          v90 = 0;
          v91 = 0x10000;
        }

        v84 = 0;
        v83 = v87 & 0xFFFF00FF | (v90 << 8) | v91;
        goto LABEL_35;
      }
    }

    sub_1D19BEFC4(a1, type metadata accessor for ClusterPath);
    v72 = v100;
  }

  else
  {
    sub_1D19BEFC4(a1, type metadata accessor for ClusterPath);
    sub_1D18F49A8(v100);
    v72 = v97;
  }

  sub_1D18F49A8(v72);
  v83 = 0;
  v84 = 1;
LABEL_35:
  v85 = &v12[v9[23]];
  v85[2] = BYTE2(v83);
  *v85 = v83;
  v85[3] = v84;
  v86 = v94;
  sub_1D19BEF5C(v12, v94, type metadata accessor for StaticBasicInfoCluster);
  (*(v93 + 56))(v86, 0, 1, v9);
  return sub_1D19BEFC4(v12, type metadata accessor for StaticBasicInfoCluster);
}

unint64_t sub_1D19BE17C()
{
  result = qword_1EC6483F8;
  if (!qword_1EC6483F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483F8);
  }

  return result;
}

uint64_t type metadata accessor for StaticBasicInfoCluster()
{
  result = qword_1EE07C308;
  if (!qword_1EE07C308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D19BE21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v40[3] = v8;
  v40[4] = sub_1D19BFFB8(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  sub_1D19BEF5C(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  *&v33 = a3;
  *(&v33 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v40, v39);
  sub_1D18C20AC(v39, &v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v10 = swift_dynamicCast();
  if ((v10 & 1) == 0)
  {
    v37 = 0;
  }

  v38 = v10 ^ 1;
  sub_1D18C20AC(v39, &v33);
  if (v34)
  {
    sub_1D1742194(&v33, v36);
    if (v38)
    {
      LOBYTE(v33) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v11 = sub_1D1A38104(a1, &v33);
      v13 = v12;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v14 = sub_1D1E6709C();
      __swift_project_value_buffer(v14, qword_1EE07A0B0);
      sub_1D1741970(v36, v35);
      sub_1D17419CC(v40, &v33);

      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6833C();

      if (!os_log_type_enabled(v15, v16))
      {

        __swift_destroy_boxed_opaque_existential_1(v35);
        __swift_destroy_boxed_opaque_existential_1(v36);
        sub_1D18F49A8(v39);
        __swift_destroy_boxed_opaque_existential_1(&v33);
        goto LABEL_12;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136446978;
      v19 = sub_1D1B1312C(v11, v13, &v32);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_1D1B1312C(7630409, 0xE300000000000000, &v32);
      *(v17 + 22) = 2082;
      sub_1D1741970(v35, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v20 = sub_1D1E678BC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v35);
      v23 = sub_1D1B1312C(v20, v22, &v32);

      *(v17 + 24) = v23;
      *(v17 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v33, v34);
      v24 = ClusterPath.description.getter();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(&v33);
      v27 = sub_1D1B1312C(v24, v26, &v32);

      *(v17 + 34) = v27;
      _os_log_impl(&dword_1D16EC000, v15, v16, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v17, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v36);
    v28 = v39;
  }

  else
  {
    sub_1D18F49A8(v39);
    v28 = &v33;
  }

  sub_1D18F49A8(v28);
LABEL_12:
  v29 = v37;
  __swift_destroy_boxed_opaque_existential_1(v40);
  return v29;
}

uint64_t sub_1D19BE5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v38[3] = v8;
  v38[4] = sub_1D19BFFB8(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  sub_1D19BEF5C(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  *&v32 = a3;
  *(&v32 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v38, v37);
  sub_1D18C20AC(v37, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 2;
  }

  sub_1D18C20AC(v37, &v32);
  if (v33)
  {
    sub_1D1742194(&v32, v35);
    if (v36 == 2)
    {
      LOBYTE(v32) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v10 = sub_1D1A38104(a1, &v32);
      v12 = v11;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EE07A0B0);
      sub_1D1741970(v35, v34);
      sub_1D17419CC(v38, &v32);

      v14 = sub_1D1E6707C();
      v15 = sub_1D1E6833C();

      if (!os_log_type_enabled(v14, v15))
      {

        __swift_destroy_boxed_opaque_existential_1(v34);
        __swift_destroy_boxed_opaque_existential_1(v35);
        sub_1D18F49A8(v37);
        __swift_destroy_boxed_opaque_existential_1(&v32);
        goto LABEL_12;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136446978;
      v18 = sub_1D1B1312C(v10, v12, &v31);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1D1B1312C(1819242306, 0xE400000000000000, &v31);
      *(v16 + 22) = 2082;
      sub_1D1741970(v34, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v19 = sub_1D1E678BC();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1(v34);
      v22 = sub_1D1B1312C(v19, v21, &v31);

      *(v16 + 24) = v22;
      *(v16 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v32, v33);
      v23 = ClusterPath.description.getter();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(&v32);
      v26 = sub_1D1B1312C(v23, v25, &v31);

      *(v16 + 34) = v26;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
    v27 = v37;
  }

  else
  {
    sub_1D18F49A8(v37);
    v27 = &v32;
  }

  sub_1D18F49A8(v27);
LABEL_12:
  v28 = v36;
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v28;
}

BOOL _s13HomeDataModel22StaticBasicInfoClusterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for ClusterPath(0);
  if (dword_1D1E8CC84[*(a1 + *(v5 + 20))] != dword_1D1E8CC84[*(a2 + *(v5 + 20))])
  {
    return 0;
  }

  v6 = type metadata accessor for StaticBasicInfoCluster();
  v7 = v6[5];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v6[6]) != *(a2 + v6[6]))
  {
    return 0;
  }

  v12 = v6[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if ((v13 != *v15 || v14 != v15[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v6[8]) != *(a2 + v6[8]))
  {
    return 0;
  }

  v16 = v6[9];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  if ((v17 != *v19 || v18 != v19[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v20 = v6[10];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v6[11]) != *(a2 + v6[11]))
  {
    return 0;
  }

  v24 = v6[12];
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  if ((v25 != *v27 || v26 != v27[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v6[13]) != *(a2 + v6[13]))
  {
    return 0;
  }

  v28 = v6[14];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if ((v29 != *v31 || v30 != v31[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v32 = v6[15];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v37 = v6[16];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v42 = v6[17];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46 || (*v43 != *v45 || v44 != v46) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  v47 = v6[18];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51 || (*v48 != *v50 || v49 != v51) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v51)
  {
    return 0;
  }

  v52 = v6[19];
  v53 = (a1 + v52);
  v54 = *(a1 + v52 + 8);
  v55 = (a2 + v52);
  v56 = v55[1];
  if (v54)
  {
    if (!v56 || (*v53 != *v55 || v54 != v56) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v56)
  {
    return 0;
  }

  v57 = v6[20];
  v58 = *(a1 + v57);
  v59 = *(a2 + v57);
  if (v58 == 2)
  {
    if (v59 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v59 == 2 || ((v59 ^ v58) & 1) != 0)
    {
      return result;
    }
  }

  v61 = v6[21];
  v62 = *(a1 + v61);
  v63 = *(a2 + v61);
  if (v62 == 2)
  {
    if (v63 != 2)
    {
      return 0;
    }

    goto LABEL_74;
  }

  result = 0;
  if (v63 != 2 && ((v63 ^ v62) & 1) == 0)
  {
LABEL_74:
    v64 = v6[22];
    v65 = (a1 + v64);
    v66 = *(a1 + v64 + 8);
    v67 = (a2 + v64);
    v68 = v67[1];
    if (v66)
    {
      if (!v68 || (*v65 != *v67 || v66 != v68) && (sub_1D1E6904C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v68)
    {
      return 0;
    }

    v69 = v6[23];
    v70 = (a1 + v69);
    v71 = *(a1 + v69 + 3);
    v72 = (a2 + v69);
    v73 = *(v72 + 3);
    if (v71)
    {
      if (*(v72 + 3))
      {
        return 1;
      }
    }

    else
    {
      if (*(v72 + 3))
      {
        return 0;
      }

      v74 = *v70 | (*(v70 + 2) << 16);
      v75 = *v72 | (*(v72 + 2) << 16);
      if (v74 != v75)
      {
        return 0;
      }

      if ((v74 & 0x10000) == 0)
      {
        return (v75 & 0x10000) == 0 && BYTE1(v74) == BYTE1(v75);
      }

      if ((v75 & 0x10000) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1D19BEE60()
{
  result = qword_1EC648430;
  if (!qword_1EC648430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648430);
  }

  return result;
}

unint64_t sub_1D19BEEB4()
{
  result = qword_1EC648438;
  if (!qword_1EC648438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648438);
  }

  return result;
}

unint64_t sub_1D19BEF08()
{
  result = qword_1EC648448;
  if (!qword_1EC648448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648448);
  }

  return result;
}

uint64_t sub_1D19BEF5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19BEFC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D19BF024()
{
  result = qword_1EC648450;
  if (!qword_1EC648450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC648450);
  }

  return result;
}

unint64_t sub_1D19BF074()
{
  result = qword_1EC648458;
  if (!qword_1EC648458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648458);
  }

  return result;
}

void sub_1D19BF180()
{
  type metadata accessor for ClusterPath(319);
  if (v0 <= 0x3F)
  {
    sub_1D17BDF80(319, qword_1EE07D1F8);
    if (v1 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EE07D1F0);
      if (v2 <= 0x3F)
      {
        sub_1D17BDF80(319, qword_1EE07C318);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StaticBasicInfoCluster.ProductAppearance(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t storeEnumTagSinglePayload for StaticBasicInfoCluster.ProductAppearance(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
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

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StaticBasicInfoCluster.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticBasicInfoCluster.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D19BF4F8()
{
  result = qword_1EC648468;
  if (!qword_1EC648468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648468);
  }

  return result;
}

unint64_t sub_1D19BF550()
{
  result = qword_1EC648470;
  if (!qword_1EC648470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648470);
  }

  return result;
}

unint64_t sub_1D19BF5A8()
{
  result = qword_1EC648478;
  if (!qword_1EC648478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648478);
  }

  return result;
}

unint64_t sub_1D19BF600()
{
  result = qword_1EC648480;
  if (!qword_1EC648480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648480);
  }

  return result;
}

unint64_t sub_1D19BF658()
{
  result = qword_1EC648488;
  if (!qword_1EC648488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648488);
  }

  return result;
}

unint64_t sub_1D19BF6B0()
{
  result = qword_1EC648490;
  if (!qword_1EC648490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648490);
  }

  return result;
}

uint64_t sub_1D19BF704(int a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 0x614E726F646E6576;
      break;
    case 2:
      result = 0x4449726F646E6576;
      break;
    case 3:
      result = 0x4E746375646F7270;
      break;
    case 4:
      result = 0x49746375646F7270;
      break;
    case 5:
      result = 0x6562614C65646F6ELL;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      v3 = 1685217640;
      goto LABEL_19;
    case 8:
    case 10:
      result = 0xD000000000000015;
      break;
    case 9:
      v3 = 1952870259;
LABEL_19:
      result = v3 | 0x6572617700000000;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x626D754E74726170;
      break;
    case 13:
      result = 0x55746375646F7270;
      break;
    case 14:
      result = 0x4C746375646F7270;
      break;
    case 15:
      result = 0x754E6C6169726573;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0x6C62616863616572;
      break;
    case 18:
      result = 0x4449657571696E75;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D19BF94C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E726F646E6576 && a2 == 0xEA0000000000656DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449726F646E6576 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000044 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6562614C65646F6ELL && a2 == 0xE90000000000006CLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6572617764726168 && a2 == 0xEF6E6F6973726556 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC1B20 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEF6E6F6973726556 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC1B40 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC1B60 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x626D754E74726170 && a2 == 0xEA00000000007265 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x55746375646F7270 && a2 == 0xEA00000000004C52 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x4C746375646F7270 && a2 == 0xEC0000006C656261 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC1B80 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6C62616863616572 && a2 == 0xE900000000000065 || (sub_1D1E6904C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x4449657571696E75 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC1BA0 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_1D19BFFB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for StaticClusterPowerSource()
{
  result = qword_1EE07C010;
  if (!qword_1EE07C010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *StaticClusterPowerSource.init(id:status:order:supportedFeatures:wiredConnected:batteryRemaining:batteryTimeRemaining:batteryChargeLevel:batteryChargeState:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, char a5@<W4>, __int16 a6@<W5>, uint64_t a7@<X6>, __int16 a8@<W7>, uint64_t a9@<X8>, char a10, char a11)
{
  sub_1D190D804(a1, a9);
  result = type metadata accessor for StaticClusterPowerSource();
  *(a9 + result[5]) = a2;
  *(a9 + result[6]) = a3;
  *(a9 + result[7]) = a4;
  *(a9 + result[8]) = a5;
  v20 = (a9 + result[9]);
  *v20 = a6;
  v20[1] = HIBYTE(a6) & 1;
  v21 = a9 + result[10];
  *v21 = a7;
  *(v21 + 4) = BYTE4(a7) & 1;
  v22 = (a9 + result[11]);
  *v22 = a8;
  v22[1] = HIBYTE(a8) & 1;
  v23 = (a9 + result[12]);
  *v23 = a10;
  v23[1] = a11 & 1;
  return result;
}

uint64_t sub_1D19C0320(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 25705;
    v5 = 0x726564726FLL;
    if (a1 != 2)
    {
      v5 = 0xD000000000000011;
    }

    if (a1)
    {
      v4 = 0x737574617473;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    if (a1 != 6)
    {
      v1 = 0xD000000000000012;
    }

    v2 = 0x6E6F436465726977;
    if (a1 != 4)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D19C0454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19C2794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19C047C(uint64_t a1)
{
  v2 = sub_1D19C2288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19C04B8(uint64_t a1)
{
  v2 = sub_1D19C2288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticClusterPowerSource.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6484A8, &qword_1D1E8CD00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19C2288();
  sub_1D1E6930C();
  LOBYTE(v25) = 0;
  type metadata accessor for ClusterPath(0);
  sub_1D19C2434(&qword_1EC646D88, type metadata accessor for ClusterPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticClusterPowerSource();
    LOBYTE(v25) = *(v3 + v11[5]);
    v26 = 1;
    type metadata accessor for MTRPowerSourceStatus(0);
    sub_1D19C2434(&qword_1EC6484B8, type metadata accessor for MTRPowerSourceStatus);
    sub_1D1E68F1C();
    v12 = *(v3 + v11[6]);
    LOBYTE(v25) = 2;
    sub_1D1E68F3C();
    v25 = *(v3 + v11[7]);
    v26 = 3;
    type metadata accessor for MTRPowerSourceFeature(0);
    sub_1D19C2434(&qword_1EC6484C0, type metadata accessor for MTRPowerSourceFeature);
    sub_1D1E68F1C();
    v13 = *(v3 + v11[8]);
    LOBYTE(v25) = 4;
    sub_1D1E68E1C();
    v14 = (v3 + v11[9]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v25) = 5;
    sub_1D1E68E8C();
    v17 = (v3 + v11[10]);
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 4);
    LOBYTE(v25) = 6;
    v26 = v17;
    sub_1D1E68EAC();
    v19 = (v3 + v11[11]);
    v20 = *v19;
    LOBYTE(v19) = v19[1];
    LOBYTE(v25) = v20;
    BYTE1(v25) = v19;
    v26 = 7;
    type metadata accessor for MTRPowerSourceBatChargeLevel(0);
    sub_1D19C2434(&qword_1EC6484C8, type metadata accessor for MTRPowerSourceBatChargeLevel);
    sub_1D1E68E5C();
    v21 = (v3 + v11[12]);
    v22 = *v21;
    LOBYTE(v21) = v21[1];
    LOBYTE(v25) = v22;
    BYTE1(v25) = v21;
    v26 = 8;
    type metadata accessor for MTRPowerSourceBatChargeState(0);
    sub_1D19C2434(&qword_1EC6484D0, type metadata accessor for MTRPowerSourceBatChargeState);
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticClusterPowerSource.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D19C2434(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  v2 = *(v0 + *(v1 + 24));
  sub_1D1E6923C();
  v3 = dword_1D1E8CF80[*(v0 + *(type metadata accessor for ClusterPath(0) + 20))];
  sub_1D1E6924C();
  v4 = type metadata accessor for StaticClusterPowerSource();
  v5 = *(v0 + v4[5]);
  sub_1D1E6922C();
  v6 = *(v0 + v4[6]);
  sub_1D1E6922C();
  v7 = *(v0 + v4[7]);
  sub_1D1E6924C();
  if (*(v0 + v4[8]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v8 = (v0 + v4[9]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v10 = (v0 + v4[10]);
  if (*(v10 + 4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v11 = *v10;
    sub_1D1E6922C();
    sub_1D1E6924C();
  }

  v12 = (v0 + v4[11]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v14 = (v0 + v4[12]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t StaticClusterPowerSource.hashValue.getter()
{
  sub_1D1E6920C();
  StaticClusterPowerSource.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticClusterPowerSource.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for ClusterPath(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6484D8, &qword_1D1E8CD08);
  v32 = *(v34 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v30 - v8;
  v10 = type metadata accessor for StaticClusterPowerSource();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D19C2288();
  v16 = v9;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v17 = v32;
  v18 = v13;
  LOBYTE(v36) = 0;
  sub_1D19C2434(&qword_1EC646DC0, type metadata accessor for ClusterPath);
  v19 = v33;
  v20 = v34;
  sub_1D1E68D7C();
  sub_1D190D804(v19, v18);
  type metadata accessor for MTRPowerSourceStatus(0);
  v37 = 1;
  sub_1D19C2434(&qword_1EC6484E0, type metadata accessor for MTRPowerSourceStatus);
  sub_1D1E68D7C();
  *(v18 + v10[5]) = v36;
  LOBYTE(v36) = 2;
  *(v18 + v10[6]) = sub_1D1E68D9C();
  type metadata accessor for MTRPowerSourceFeature(0);
  v37 = 3;
  sub_1D19C2434(&qword_1EC6484E8, type metadata accessor for MTRPowerSourceFeature);
  sub_1D1E68D7C();
  *(v18 + v10[7]) = v36;
  LOBYTE(v36) = 4;
  *(v18 + v10[8]) = sub_1D1E68C7C();
  LOBYTE(v36) = 5;
  v21 = sub_1D1E68CEC();
  v22 = (v18 + v10[9]);
  *v22 = v21;
  v22[1] = HIBYTE(v21) & 1;
  LOBYTE(v36) = 6;
  v23 = sub_1D1E68D0C();
  v24 = v18 + v10[10];
  *v24 = v23;
  *(v24 + 4) = BYTE4(v23) & 1;
  type metadata accessor for MTRPowerSourceBatChargeLevel(0);
  v37 = 7;
  sub_1D19C2434(&qword_1EC6484F0, type metadata accessor for MTRPowerSourceBatChargeLevel);
  sub_1D1E68CBC();
  v26 = BYTE1(v36);
  v27 = (v18 + v10[11]);
  *v27 = v36;
  v27[1] = v26;
  type metadata accessor for MTRPowerSourceBatChargeState(0);
  v37 = 8;
  sub_1D19C2434(&qword_1EC6484F8, type metadata accessor for MTRPowerSourceBatChargeState);
  sub_1D1E68CBC();
  (*(v17 + 8))(v16, v20);
  v28 = BYTE1(v36);
  v29 = (v18 + v10[12]);
  *v29 = v36;
  v29[1] = v28;
  sub_1D19C22DC(v18, v31, type metadata accessor for StaticClusterPowerSource);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_1D19C2344(v18, type metadata accessor for StaticClusterPowerSource);
}

uint64_t sub_1D19C1150()
{
  sub_1D1E6920C();
  StaticClusterPowerSource.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D19C1194()
{
  sub_1D1E6920C();
  StaticClusterPowerSource.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticClusterPowerSource.init(path:valueSource:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a3;
  v92 = type metadata accessor for ClusterPath(0);
  v5 = *(*(v92 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v92);
  v91 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v90 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v93 = &v90 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v90 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v90 - v16;
  v18 = type metadata accessor for StaticClusterPowerSource();
  v95 = *(v18 - 8);
  v19 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a2;
  v22 = a2[1];
  sub_1D19C22DC(a1, v21, type metadata accessor for ClusterPath);
  sub_1D19C22DC(a1, v17, type metadata accessor for ClusterPath);
  v24 = sub_1D1912E6C(0, v17, v23, v22);
  sub_1D19C2344(v17, type metadata accessor for ClusterPath);
  if ((v24 & 0x100) != 0)
  {
    v94 = v21;

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D1E6709C();
    __swift_project_value_buffer(v30, qword_1EE07A0B0);
    sub_1D19C22DC(a1, v15, type metadata accessor for ClusterPath);
    v31 = sub_1D1E6707C();
    v32 = sub_1D1E6833C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v99 = v34;
      *v33 = 136446210;
      v35 = ClusterPath.description.getter();
      v37 = v36;
      sub_1D19C2344(v15, type metadata accessor for ClusterPath);
      v38 = sub_1D1B1312C(v35, v37, &v99);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1D16EC000, v31, v32, "Couldn't get value for status attribute '%{public}s'", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1D3893640](v34, -1, -1);
      MEMORY[0x1D3893640](v33, -1, -1);

      v39 = a1;
    }

    else
    {

      sub_1D19C2344(a1, type metadata accessor for ClusterPath);
      v39 = v15;
    }

    sub_1D19C2344(v39, type metadata accessor for ClusterPath);
    v26 = v18;
    goto LABEL_22;
  }

  v21[*(v18 + 20)] = v24;
  sub_1D19C22DC(a1, v17, type metadata accessor for ClusterPath);
  v25 = sub_1D1912E6C(1, v17, v23, v22);
  sub_1D19C2344(v17, type metadata accessor for ClusterPath);
  v26 = v18;
  if ((v25 & 0x100) != 0)
  {
    v94 = v21;

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D1E6709C();
    __swift_project_value_buffer(v40, qword_1EE07A0B0);
    v41 = v93;
    sub_1D19C22DC(a1, v93, type metadata accessor for ClusterPath);
    v42 = sub_1D1E6707C();
    v43 = sub_1D1E6833C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v99 = v45;
      *v44 = 136446210;
      v46 = ClusterPath.description.getter();
      v48 = v47;
      sub_1D19C2344(v41, type metadata accessor for ClusterPath);
      v49 = sub_1D1B1312C(v46, v48, &v99);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1D16EC000, v42, v43, "Couldn't get value for order attribute '%{public}s'", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1D3893640](v45, -1, -1);
      MEMORY[0x1D3893640](v44, -1, -1);

      v50 = a1;
      v26 = v18;
    }

    else
    {

      sub_1D19C2344(a1, type metadata accessor for ClusterPath);
      v50 = v41;
    }

    sub_1D19C2344(v50, type metadata accessor for ClusterPath);
LABEL_22:
    v62 = v94;
LABEL_23:
    sub_1D19C2344(v62, type metadata accessor for ClusterPath);
    return (*(v95 + 56))(v96, 1, 1, v26);
  }

  v21[*(v18 + 24)] = v25;
  sub_1D19C22DC(a1, v17, type metadata accessor for ClusterPath);
  sub_1D19C22DC(v17, v10, type metadata accessor for ClusterPath);
  v27 = sub_1D192B170(65532, v10, v23, v22);
  sub_1D19C2344(v10, type metadata accessor for ClusterPath);
  sub_1D19C2344(v17, type metadata accessor for ClusterPath);
  if ((v27 & 0x100000000) != 0)
  {

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v51 = sub_1D1E6709C();
    __swift_project_value_buffer(v51, qword_1EE07A0B0);
    v52 = v91;
    sub_1D19C22DC(a1, v91, type metadata accessor for ClusterPath);
    v53 = sub_1D1E6707C();
    v54 = sub_1D1E6833C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v21;
      v57 = swift_slowAlloc();
      v99 = v57;
      *v55 = 136446210;
      v58 = ClusterPath.description.getter();
      v60 = v59;
      sub_1D19C2344(v52, type metadata accessor for ClusterPath);
      v61 = sub_1D1B1312C(v58, v60, &v99);

      *(v55 + 4) = v61;
      _os_log_impl(&dword_1D16EC000, v53, v54, "Couldn't get value for feature map attribute '%{public}s'", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x1D3893640](v57, -1, -1);
      MEMORY[0x1D3893640](v55, -1, -1);

      sub_1D19C2344(a1, type metadata accessor for ClusterPath);
      v62 = v56;
    }

    else
    {

      sub_1D19C2344(a1, type metadata accessor for ClusterPath);
      sub_1D19C2344(v52, type metadata accessor for ClusterPath);
      v62 = v21;
    }

    goto LABEL_23;
  }

  v28 = v23;
  *&v21[*(v26 + 28)] = v27;
  if (v27)
  {
    v29 = v92;
    v101 = v92;
    v102 = sub_1D19C2434(&qword_1EC646A70, type metadata accessor for ClusterPath);
    v64 = __swift_allocate_boxed_opaque_existential_1(&v99);
    sub_1D19C22DC(a1, v64, type metadata accessor for ClusterPath);
    v97 = v28;
    v98 = v22;
    AttributeValueSet.value(for:in:)(9, &v99, &v103);
    __swift_destroy_boxed_opaque_existential_1(&v99);
    if (v104)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v65 = swift_dynamicCast();
      v66 = v99;
      if (!v65)
      {
        v66 = 2;
      }
    }

    else
    {
      sub_1D18F49A8(&v103);
      v66 = 2;
    }

    LODWORD(v93) = v66;
  }

  else
  {
    LODWORD(v93) = 2;
    v29 = v92;
  }

  v94 = v21;
  v90 = v26;
  if ((v27 & 2) != 0)
  {
    v101 = v29;
    v75 = sub_1D19C2434(&qword_1EC646A70, type metadata accessor for ClusterPath);
    v102 = v75;
    v76 = __swift_allocate_boxed_opaque_existential_1(&v99);
    sub_1D19C22DC(a1, v76, type metadata accessor for ClusterPath);
    v97 = v28;
    v98 = v22;
    AttributeValueSet.value(for:in:)(12, &v99, &v103);
    __swift_destroy_boxed_opaque_existential_1(&v99);
    if (v104)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v77 = swift_dynamicCast();
      v78 = v99;
      if (!v77)
      {
        v78 = 0;
      }

      LODWORD(v92) = v78;
      v79 = v77 ^ 1;
    }

    else
    {
      sub_1D18F49A8(&v103);
      LODWORD(v92) = 0;
      v79 = 1;
    }

    LODWORD(v91) = v79;
    v101 = v29;
    v102 = v75;
    v80 = __swift_allocate_boxed_opaque_existential_1(&v99);
    sub_1D19C22DC(a1, v80, type metadata accessor for ClusterPath);
    v97 = v28;
    v98 = v22;
    AttributeValueSet.value(for:in:)(13, &v99, &v103);
    __swift_destroy_boxed_opaque_existential_1(&v99);
    if (v104)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v81 = swift_dynamicCast();
      if (v81)
      {
        v70 = v99;
      }

      else
      {
        v70 = 0;
      }

      v71 = v81 ^ 1;
    }

    else
    {
      sub_1D18F49A8(&v103);
      v70 = 0;
      v71 = 1;
    }

    v67 = v28;
    v99 = v28;
    v100 = v22;
    v68 = a1;
    v82 = sub_1D19C1E6C(a1, 14, "Failed to fetch batteryChargeLevel: %{public}s");
    v69 = v82;
    LODWORD(a1) = (v82 >> 8) & 1;
    if ((v27 & 4) != 0)
    {
      goto LABEL_32;
    }

LABEL_45:
    sub_1D19C2344(v68, type metadata accessor for ClusterPath);

    v73 = 0;
    LOBYTE(v74) = 1;
    goto LABEL_46;
  }

  v67 = v28;
  v68 = a1;
  v69 = 0;
  v70 = 0;
  LODWORD(v92) = 0;
  LOBYTE(a1) = 1;
  v71 = 1;
  LODWORD(v91) = 1;
  if ((v27 & 4) == 0)
  {
    goto LABEL_45;
  }

LABEL_32:
  v99 = v67;
  v100 = v22;
  v72 = sub_1D19C1E6C(v68, 26, "Failed to fetch batteryChargeState: %{public}s");
  v73 = v72;
  v74 = (v72 >> 8) & 1;
  sub_1D19C2344(v68, type metadata accessor for ClusterPath);

LABEL_46:
  v83 = v90;
  v84 = v94;
  v94[v90[8]] = v93;
  v85 = (v84 + v83[9]);
  *v85 = v92;
  v85[1] = v91;
  v86 = v84 + v83[10];
  *v86 = v70;
  *(v86 + 4) = v71;
  v87 = (v84 + v83[11]);
  *v87 = v69;
  v87[1] = a1;
  v88 = (v84 + v83[12]);
  *v88 = v73;
  v88[1] = v74;
  v89 = v96;
  sub_1D19C22DC(v84, v96, type metadata accessor for StaticClusterPowerSource);
  (*(v95 + 56))(v89, 0, 1, v83);
  return sub_1D19C2344(v84, type metadata accessor for StaticClusterPowerSource);
}

uint64_t sub_1D19C1E6C(uint64_t a1, uint64_t a2, const char *a3)
{
  v7 = type metadata accessor for ClusterPath(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D1912E6C(a2, a1, *v3, v3[1]);
  v12 = v11;
  if ((v11 & 0x100) != 0)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v13 = sub_1D1E6709C();
    __swift_project_value_buffer(v13, qword_1EE07A0B0);
    sub_1D19C22DC(a1, v10, type metadata accessor for ClusterPath);
    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6833C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24[0] = v17;
      *v16 = 136446210;
      v18 = ClusterPath.description.getter();
      v20 = v19;
      sub_1D19C2344(v10, type metadata accessor for ClusterPath);
      v21 = sub_1D1B1312C(v18, v20, v24);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1D16EC000, v14, v15, a3, v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    else
    {

      sub_1D19C2344(v10, type metadata accessor for ClusterPath);
    }

    v22 = 0;
  }

  else
  {
    v22 = v11;
  }

  return v12 & 0x100 | v22;
}

uint64_t _s13HomeDataModel24StaticClusterPowerSourceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for ClusterPath(0);
  if (dword_1D1E8CF80[*(a1 + *(v5 + 20))] != dword_1D1E8CF80[*(a2 + *(v5 + 20))])
  {
    return 0;
  }

  v6 = type metadata accessor for StaticClusterPowerSource();
  if (*(a1 + v6[5]) != *(a2 + v6[5]) || *(a1 + v6[6]) != *(a2 + v6[6]) || *(a1 + v6[7]) != *(a2 + v6[7]))
  {
    return 0;
  }

  v7 = v6[8];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    v10 = 0;
    if (v9 == 2 || ((v9 ^ v8) & 1) != 0)
    {
      return v10;
    }
  }

  v11 = v6[9];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 1);
  v14 = (a2 + v11);
  v10 = *(a2 + v11 + 1);
  if (v13)
  {
    if (!v10)
    {
      return v10;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v15 = v6[10];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v10 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v10)
    {
      return v10;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v19 = v6[11];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 1);
  v22 = (a2 + v19);
  v10 = *(a2 + v19 + 1);
  if (v21)
  {
    if (!v10)
    {
      return v10;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v23 = v6[12];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 1);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 1);
  if (v25)
  {
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1D19C2288()
{
  result = qword_1EC6484B0;
  if (!qword_1EC6484B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6484B0);
  }

  return result;
}

uint64_t sub_1D19C22DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19C2344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D19C2434(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D19C24A4()
{
  type metadata accessor for ClusterPath(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MTRPowerSourceStatus(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MTRPowerSourceFeature(319);
      if (v2 <= 0x3F)
      {
        sub_1D17BDF80(319, &qword_1EE07D1F0);
        if (v3 <= 0x3F)
        {
          sub_1D17BDF80(319, &qword_1EE07B608);
          if (v4 <= 0x3F)
          {
            sub_1D17BDF80(319, &qword_1EE07B600);
            if (v5 <= 0x3F)
            {
              sub_1D19C2628(319, &qword_1EE07B640, type metadata accessor for MTRPowerSourceBatChargeLevel);
              if (v6 <= 0x3F)
              {
                sub_1D19C2628(319, &qword_1EE07B630, type metadata accessor for MTRPowerSourceBatChargeState);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D19C2628(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1E685AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D19C2690()
{
  result = qword_1EC648508;
  if (!qword_1EC648508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648508);
  }

  return result;
}

unint64_t sub_1D19C26E8()
{
  result = qword_1EC648510;
  if (!qword_1EC648510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648510);
  }

  return result;
}

unint64_t sub_1D19C2740()
{
  result = qword_1EC648518;
  if (!qword_1EC648518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648518);
  }

  return result;
}

uint64_t sub_1D19C2794(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC1BC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F436465726977 && a2 == 0xEE0064657463656ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC1BE0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC1C00 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC1C20 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC1C40 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t StaticDoorLockCluster.WalletKeyUWBApproachAngle.description.getter()
{
  v1 = *v0;
  v2 = off_1EC648520;
  v3 = *(off_1EC648520 + 2);

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = 3 * v5;
  while (v3 != v5)
  {
    if (v5 >= v2[2])
    {
      __break(1u);
      return result;
    }

    ++v5;
    v9 = v8 * 8 + 24;
    v10 = LOBYTE(v2[v8 + 4]);
    v8 += 3;
    if ((v10 & ~v1) == 0)
    {
      v12 = *(v2 + v9 + 16);
      v11 = *(v2 + v9 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D178CD44(0, v7[2] + 1, 1);
      }

      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_1D178CD44((v13 > 1), v14 + 1, 1);
      }

      v7[2] = v14 + 1;
      v15 = &v7[3 * v14];
      *(v15 + 32) = v10;
      v15[5] = v12;
      v15[6] = v11;
      goto LABEL_2;
    }
  }

  v16 = v7[2];
  if (v16)
  {
    sub_1D178CD24(0, v16, 0);
    v17 = v6;
    v18 = v7 + 6;
    do
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);

      if (v22 >= v21 >> 1)
      {
        sub_1D178CD24((v21 > 1), v22 + 1, 1);
      }

      *(v17 + 16) = v22 + 1;
      v23 = v17 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v18 += 3;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1D1E6884C();

  v24 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v24);

  MEMORY[0x1D3890F70](8233, 0xE200000000000000);
  v25 = MEMORY[0x1D3891260](v17, MEMORY[0x1E69E6158]);
  v27 = v26;

  MEMORY[0x1D3890F70](v25, v27);

  return 0xD000000000000024;
}

BOOL sub_1D19C2E64(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_1D19C2E94@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1D19C2EC0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t StaticDoorLockCluster.walletKeyUWBApproachAngle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticDoorLockCluster();
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *a1 = v5;
  a1[1] = v4;
  return result;
}

int *StaticDoorLockCluster.init(id:autoRelockTime:autoRelockTimeSupported:walletKeyUWBApproachAngle:walletKeyUWBApproachAngleSupported:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  v11 = a4[1];
  sub_1D19C6210(a1, a6, type metadata accessor for ClusterPath);
  result = type metadata accessor for StaticDoorLockCluster();
  v13 = a6 + result[5];
  *v13 = a2;
  *(v13 + 4) = BYTE4(a2) & 1;
  *(a6 + result[6]) = a3;
  v14 = (a6 + result[7]);
  *v14 = v10;
  v14[1] = v11;
  *(a6 + result[8]) = a5;
  return result;
}

uint64_t StaticDoorLockCluster.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001DLL, 0x80000001D1EC1C90);
  v1 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC1CB0);
  v2 = type metadata accessor for StaticDoorLockCluster();
  v3 = (v0 + v2[5]);
  v13 = *v3;
  v16 = *(v3 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648528, &qword_1D1E8D000);
  v4 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v4);

  MEMORY[0x1D3890F70](0xD00000000000001DLL, 0x80000001D1EC1CD0);
  v5 = *(v0 + v2[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648530, &unk_1D1E8D008);
  v6 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v6);

  MEMORY[0x1D3890F70](0xD000000000000026, 0x80000001D1EC1CF0);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    v7 = 0xE500000000000000;
    v8 = 0x65736C6166;
  }

  else
  {
    v7 = 0xE400000000000000;
    v8 = 1702195828;
  }

  MEMORY[0x1D3890F70](v8, v7);

  MEMORY[0x1D3890F70](0xD00000000000001FLL, 0x80000001D1EC1D20);
  v9 = (v0 + v2[7]);
  if ((v9[1] & 1) == 0)
  {
    v14 = *v9;
    StaticDoorLockCluster.WalletKeyUWBApproachAngle.description.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434D0, &qword_1D1E71C60);
  v10 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v10);

  MEMORY[0x1D3890F70](0xD000000000000028, 0x80000001D1EC1D40);
  v15 = *(v0 + v2[8]);
  v11 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v11);

  MEMORY[0x1D3890F70](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_1D19C3420()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000017;
  v4 = 0xD000000000000019;
  if (v1 != 3)
  {
    v4 = 0xD000000000000022;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F6C65526F747561;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D19C34C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19C67A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19C34E8(uint64_t a1)
{
  v2 = sub_1D19C5FF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19C3524(uint64_t a1)
{
  v2 = sub_1D19C5FF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticDoorLockCluster.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648538, &qword_1D1E8D018);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19C5FF8();
  sub_1D1E6930C();
  v19[15] = 0;
  type metadata accessor for ClusterPath(0);
  sub_1D19C6958(&qword_1EC646D88, type metadata accessor for ClusterPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticDoorLockCluster();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 4);
    v19[14] = 1;
    v19[12] = v12;
    sub_1D1E68EAC();
    v14 = *(v3 + v11[6]);
    v19[11] = 2;
    sub_1D1E68E1C();
    v15 = (v3 + v11[7]);
    v16 = *v15;
    LOBYTE(v15) = v15[1];
    v19[9] = v16;
    v19[10] = v15;
    v19[8] = 3;
    sub_1D19C604C();
    sub_1D1E68E5C();
    v17 = *(v3 + v11[8]);
    v19[7] = 4;
    sub_1D1E68E1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticDoorLockCluster.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D19C6958(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  v2 = *(v0 + *(v1 + 24));
  sub_1D1E6923C();
  v3 = dword_1D1E8D52C[*(v0 + *(type metadata accessor for ClusterPath(0) + 20))];
  sub_1D1E6924C();
  v4 = type metadata accessor for StaticDoorLockCluster();
  v5 = (v0 + v4[5]);
  if (*(v5 + 4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v6 = *v5;
    sub_1D1E6922C();
    sub_1D1E6924C();
  }

  if (*(v0 + v4[6]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v7 = (v0 + v4[7]);
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v0 + v4[8]) != 2)
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t StaticDoorLockCluster.hashValue.getter()
{
  sub_1D1E6920C();
  StaticDoorLockCluster.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticDoorLockCluster.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for ClusterPath(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648550, &qword_1D1E8D020);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for StaticDoorLockCluster();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D19C5FF8();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v18 = v28;
  v19 = v15;
  v37 = 0;
  sub_1D19C6958(&qword_1EC646DC0, type metadata accessor for ClusterPath);
  v20 = v29;
  sub_1D1E68D7C();
  sub_1D19C6210(v7, v19, type metadata accessor for ClusterPath);
  v36 = 1;
  v21 = sub_1D1E68D0C();
  v22 = v19 + v12[5];
  *v22 = v21;
  *(v22 + 4) = BYTE4(v21) & 1;
  v35 = 2;
  *(v19 + v12[6]) = sub_1D1E68C7C();
  v32 = 3;
  sub_1D19C60A0();
  sub_1D1E68CBC();
  v24 = v34;
  v25 = (v19 + v12[7]);
  *v25 = v33;
  v25[1] = v24;
  v31 = 4;
  v26 = sub_1D1E68C7C();
  (*(v18 + 8))(v11, v20);
  *(v19 + v12[8]) = v26;
  sub_1D19C61A8(v19, v27, type metadata accessor for StaticDoorLockCluster);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_1D19C60F4(v19, type metadata accessor for StaticDoorLockCluster);
}

uint64_t sub_1D19C3DA4()
{
  sub_1D1E6920C();
  StaticDoorLockCluster.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D19C3DE8()
{
  sub_1D1E6920C();
  StaticDoorLockCluster.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticDoorLockCluster.init(path:valueSource:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticDoorLockCluster();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v15 = a2[1];
  sub_1D19C61A8(a1, v14, type metadata accessor for ClusterPath);
  v17 = sub_1D192B170(35, a1, v16, v15);
  v18 = &v14[v10[5]];
  *v18 = v17;
  v18[4] = BYTE4(v17) & 1;
  v19 = sub_1D19C52F0(a1, v16, v15);
  v20 = *(v19 + 16);
  v21 = 32;
  do
  {
    v22 = v20;
    v32 = v20-- != 0;
    if (!v32)
    {
      break;
    }

    v23 = *(v19 + v21);
    v21 += 4;
  }

  while (v23 != 35);
  v24 = v22 != 0;

  v14[v10[6]] = v24;
  v44 = &type metadata for HomeAppFeatures;
  v45 = sub_1D19C6154();
  LOBYTE(v41[0]) = 1;
  v25 = sub_1D1E66D5C();
  __swift_destroy_boxed_opaque_existential_1(v41);
  if (v25)
  {
    v40 = a3;
    v26 = *(a1 + *(type metadata accessor for EndpointPath(0) + 24));
    v41[0] = v16;
    v41[1] = v15;
    v42 = v26;
    v43 = 0;
    v44 = 0;
    v45 = 0;

    v27 = DescriptorClusterDecoder.availableClusterKinds.getter();
    v28 = sub_1D17198DC(28, v27);

    if (v28)
    {
      sub_1D19C61A8(a1, v9, type metadata accessor for EndpointPath);
      v9[*(v6 + 20)] = 28;
      v29 = sub_1D19C52F0(v9, v16, v15);
      v30 = *(v29 + 16);
      v31 = 32;
      do
      {
        v32 = v30-- != 0;
        v33 = v32;
        if (!v32)
        {
          break;
        }

        v34 = *(v29 + v31);
        v31 += 4;
      }

      while (v34);

      v35 = sub_1D1912E6C(0, v9, v16, v15);
      swift_bridgeObjectRelease_n();
      sub_1D19C60F4(a1, type metadata accessor for ClusterPath);
      sub_1D19C60F4(v9, type metadata accessor for ClusterPath);
      v36 = (v35 & 0x100) >> 8;
      if ((v35 & 0x100) != 0)
      {
        v37 = 0;
      }

      else
      {
        v37 = v35;
      }
    }

    else
    {
      sub_1D19C60F4(a1, type metadata accessor for ClusterPath);
      swift_bridgeObjectRelease_n();
      v33 = 0;
      v37 = 0;
      LOBYTE(v36) = 1;
    }

    a3 = v40;
  }

  else
  {
    sub_1D19C60F4(a1, type metadata accessor for ClusterPath);

    v33 = 0;
    v37 = 0;
    LOBYTE(v36) = 1;
  }

  v14[v10[8]] = v33;
  v38 = &v14[v10[7]];
  *v38 = v37;
  v38[1] = v36 & 1;
  sub_1D19C6210(v14, a3, type metadata accessor for StaticDoorLockCluster);
  return (*(v11 + 56))(a3, 0, 1, v10);
}

uint64_t StaticDoorLockCluster.setAutoRelockTime(_:)(int a1)
{
  *(v2 + 144) = v1;
  *(v2 + 184) = a1;
  v3 = *(*(type metadata accessor for StaticDoorLockCluster() - 8) + 64) + 15;
  *(v2 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19C42D4, 0, 0);
}

uint64_t sub_1D19C42D4()
{
  v11 = v0;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_1EE07A0B0);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 184);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_1D1B1312C(0xD000000000000029, 0x80000001D1EC1D70, &v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EC1DA0, &v10);
    *(v5 + 22) = 1026;
    *(v5 + 24) = v4;
    _os_log_impl(&dword_1D16EC000, v2, v3, "%s - %s: Starting to update autoRelockTime to %{public}u.", v5, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v6, -1, -1);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  sub_1D1741B10(0, &qword_1EC648560, 0x1E696F598);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_1D19C44F4;
  v8 = *(v0 + 144);

  return sub_1D1A092C4(v8);
}

uint64_t sub_1D19C44F4(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19C45F4, 0, 0);
}

uint64_t sub_1D19C45F4()
{
  v32 = v0;
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = *(v0 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    v4 = *MEMORY[0x1E696F550];
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v5;
    v6 = *MEMORY[0x1E696F560];
    v7 = sub_1D1E6781C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v7;
    *(inited + 56) = v8;
    v9 = *MEMORY[0x1E696F568];
    *(inited + 80) = sub_1D1E6781C();
    *(inited + 88) = v10;
    v11 = sub_1D1E692CC();
    *(inited + 120) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    *(inited + 96) = v11;
    sub_1D18D6538(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
    swift_arrayDestroy();
    v12 = sub_1D1E675DC();

    if (qword_1EC6422E8 != -1)
    {
      swift_once();
    }

    v13 = qword_1EC649398;
    if (qword_1EC649398)
    {
      v14 = qword_1EC649398;
    }

    else
    {
      v14 = sub_1D1E684DC();
      v13 = 0;
    }

    v27 = v13;
    [v1 writeAttributeAutoRelockTimeWithValue:v12 expectedValueInterval:v14];
  }

  else
  {
    v15 = *(v0 + 160);
    sub_1D19C61A8(*(v0 + 144), *(v0 + 152), type metadata accessor for StaticDoorLockCluster);
    v16 = sub_1D1E6707C();
    v17 = sub_1D1E6835C();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 152);
    if (v18)
    {
      v20 = *(v0 + 184);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315906;
      *(v21 + 4) = sub_1D1B1312C(0xD000000000000029, 0x80000001D1EC1D70, &v31);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EC1DA0, &v31);
      *(v21 + 22) = 1026;
      *(v21 + 24) = v20;
      *(v21 + 28) = 2082;
      v23 = ClusterPath.description.getter();
      v25 = v24;
      sub_1D19C60F4(v19, type metadata accessor for StaticDoorLockCluster);
      v26 = sub_1D1B1312C(v23, v25, &v31);

      *(v21 + 30) = v26;
      _os_log_impl(&dword_1D16EC000, v16, v17, "%s - %s: Unable to update to autoRelockTime to %{public}u because could not create door lock cluster with %{public}s", v21, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v22, -1, -1);
      MEMORY[0x1D3893640](v21, -1, -1);
    }

    else
    {

      sub_1D19C60F4(v19, type metadata accessor for StaticDoorLockCluster);
    }
  }

  v28 = *(v0 + 152);

  v29 = *(v0 + 8);

  return v29();
}