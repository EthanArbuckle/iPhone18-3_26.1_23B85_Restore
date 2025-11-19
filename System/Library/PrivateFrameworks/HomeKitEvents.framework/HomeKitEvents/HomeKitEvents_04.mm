uint64_t sub_254181F44()
{
  v72 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 512);
  sub_25424E1E8();
  if (v1)
  {
    (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));

    v2 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v2;
    v3 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v3;
    sub_254132E5C(v0 + 144, qword_27F5B93A0, &qword_254254818);
LABEL_3:
    v4 = *(v0 + 496);

    v5 = *(v0 + 8);
    v6 = *MEMORY[0x277D85DE8];

    return v5();
  }

  v8 = *(v0 + 536) == 12435439 && *(v0 + 528) == 0xA300000000000000;
  if (v8 || (v9 = *(v0 + 528), v10 = sub_25424EAB8(), v11 = *(v0 + 528), (v10 & 1) != 0))
  {
    v12 = *(v0 + 520);
    v13 = *(v0 + 504);
    v14 = *(v0 + 32);
    *(v0 + 336) = *(v0 + 16);
    *(v0 + 352) = v14;
    v15 = *(v0 + 64);
    *(v0 + 368) = *(v0 + 48);
    *(v0 + 384) = v15;
    sub_254132E5C(v0 + 336, qword_27F5B93A0, &qword_254254818);

    v16 = v13 - v12;
    if (!__OFSUB__(v13, v12))
    {
      v18 = *(v0 + 488);
      v17 = *(v0 + 496);
      v19 = *(v0 + 480);
      if (v16 >= 4)
      {
        sub_254182650();
        swift_allocError();
        *v25 = 0xD000000000000016;
        v25[1] = 0x8000000254250740;
        swift_willThrow();
        (*(v18 + 8))(v17, v19);
        goto LABEL_3;
      }

      (*(v18 + 8))(*(v0 + 496), *(v0 + 480));
      v20 = 0;
      v21 = 0xF000000000000000;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_54;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
LABEL_54:
    v71 = *(v0 + 536);
    v26 = sub_25424DDF8();
    goto LABEL_22;
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v26 = *(v0 + 536) & 0xFFFFFFFFFFFFLL;
  }

LABEL_22:
  v27 = *(v0 + 520);
  v28 = v27 + v26;
  if (__OFADD__(v27, v26))
  {
    __break(1u);
    goto LABEL_56;
  }

  v29 = *(v0 + 536);
  v30 = *(v0 + 528);
  v31 = *(v0 + 472);
  *(v31 + 88) = v28;
  sub_25420C7A4(v29, v30);
  v32 = *(v31 + 24);
  if (*(v31 + 40))
  {
    if (*(v31 + 40) == 1)
    {
      v33 = *(v0 + 528);
      v35 = *(v0 + 488);
      v34 = *(v0 + 496);
      v36 = *(v0 + 480);
      v37 = *(*(v0 + 472) + 32);

      v38 = *(v0 + 32);
      *(v0 + 272) = *(v0 + 16);
      *(v0 + 288) = v38;
      v39 = *(v0 + 64);
      *(v0 + 304) = *(v0 + 48);
      *(v0 + 320) = v39;
      sub_254132E5C(v0 + 272, qword_27F5B93A0, &qword_254254818);
      sub_25424E688();

      MEMORY[0x259C05CA0](v32, v37);
      sub_254183380(v32, v37, 1);
      sub_254182650();
      swift_allocError();
      *v40 = 0xD000000000000016;
      v40[1] = 0x8000000254250720;
      swift_willThrow();
      (*(v35 + 8))(v34, v36);
      goto LABEL_3;
    }

    goto LABEL_30;
  }

  swift_beginAccess();
  if (*(*(v32 + 16) + 16) > 1uLL)
  {
    v41 = *(v0 + 528);
    v42 = *(v0 + 472);

    if (*(v42 + 80))
    {
      v43 = *(v0 + 472);
      *(v43 + 72) = *(v0 + 520);
      *(v43 + 80) = 0;
    }

    goto LABEL_31;
  }

  v44 = *(v0 + 472);
  if ((*(v44 + 80) & 1) == 0)
  {
    v47 = *(v44 + 72);
    v48 = *(v0 + 536);
    v49 = *(v0 + 528);
    v50 = *(v0 + 32);
    *(v0 + 208) = *(v0 + 16);
    *(v0 + 224) = v50;
    v51 = *(v0 + 64);
    *(v0 + 240) = *(v0 + 48);
    *(v0 + 256) = v51;
    sub_254132E5C(v0 + 208, qword_27F5B93A0, &qword_254254818);
    *(v44 + 72) = 0;
    *(v44 + 80) = 1;
    if (v48 == 44 && v49 == 0xE100000000000000)
    {
      v52 = *(v0 + 528);

      v53 = *(v0 + 520);
    }

    else
    {
      v54 = *(v0 + 536);
      v55 = *(v0 + 528);
      v56 = *(v0 + 520);
      v57 = sub_25424EAB8();

      if (v57)
      {
        v53 = v56;
      }

      else
      {
        v53 = v28;
      }
    }

    v58 = *(v0 + 472);
    v59 = sub_2541D0258(v53);
    v61 = v59;
    v62 = v60;
    *(v58 + 88) = 0;
    v63 = v60 >> 62;
    if ((v60 >> 62) > 1)
    {
      if (v63 == 2)
      {
        v65 = sub_2541347C8(*(v59 + 16), v47, v59, v60);
        v64 = *(v61 + 16);
        v66 = *(v61 + 24);
        goto LABEL_50;
      }
    }

    else if (v63)
    {
      v64 = v59;
      v65 = sub_2541347C8(v59, v47, v59, v60);
      v66 = v61 >> 32;
      goto LABEL_50;
    }

    v65 = sub_2541347C8(0, v47, v59, v60);
    if (v63 > 1)
    {
      v66 = 0;
      v64 = 0;
    }

    else if (v63)
    {
      v64 = v61;
      v66 = v61 >> 32;
    }

    else
    {
      v64 = 0;
      v66 = BYTE6(v62);
    }

LABEL_50:
    if (v66 >= v65 && v66 >= v64)
    {
      v68 = *(v0 + 488);
      v67 = *(v0 + 496);
      v69 = *(v0 + 480);
      v20 = sub_25424D4B8();
      v21 = v70;
      sub_254134D04(v61, v62);
      (*(v68 + 8))(v67, v69);
LABEL_14:
      v22 = *(v0 + 496);

      v23 = *(v0 + 8);
      v24 = *MEMORY[0x277D85DE8];

      return v23(v20, v21);
    }

LABEL_56:
    __break(1u);
  }

LABEL_30:
  v45 = *(v0 + 528);

LABEL_31:
  *(v0 + 520) = v28;
  *(v0 + 512) = 0;
  v46 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_254181598, 0, 0);
}

uint64_t sub_254182578()
{
  v7 = *MEMORY[0x277D85DE8];
  (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
  v1 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v1;
  v2 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v2;
  sub_254132E5C(v0 + 80, qword_27F5B93A0, &qword_254254818);
  v3 = *(v0 + 496);

  v4 = *(v0 + 8);
  v5 = *MEMORY[0x277D85DE8];

  return v4(0, 0xF000000000000000);
}

unint64_t sub_254182650()
{
  result = qword_27F5B9378;
  if (!qword_27F5B9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9378);
  }

  return result;
}

void *sub_2541826A4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_254182718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25424DE78();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_254182D68();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25424E708();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_254182CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_254182D0C(uint64_t a1)
{
  v2 = type metadata accessor for EventRecord.DecodedEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254182D68()
{
  v0 = sub_25424DE88();
  v4 = sub_254182DE8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_254182DE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25424DD78();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_25424E5B8();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2541826A4(v9, 0);
  v12 = sub_254182F40(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_25424DD78();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_25424E708();
LABEL_4:

  return sub_25424DD78();
}

unint64_t sub_254182F40(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_2541B1288(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25424DE28();
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
          result = sub_25424E708();
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

    result = sub_2541B1288(v12, a6, a7);
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

    result = sub_25424DE08();
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

unint64_t sub_254183160(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_2541833A0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_25424E678();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_25424E708() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

uint64_t sub_2541832B0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_25424DE58();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2541832F8(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      if ((v1[1] & 0x2000000000000000) == 0)
      {
        v4 = *v1;
      }

      result = sub_25424DDB8();
      if ((v2 & 1) == 0)
      {
        v5 = result;
        result = 15;
        v2 = v5;

        return MEMORY[0x2821FBD18](result, v2);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v2);
  }

  return result;
}

uint64_t sub_254183380(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

unint64_t sub_2541833A0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_254183438(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2541834AC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_254183438(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_2541B1288(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2541834AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_25424E708();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_2541835D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  result = a4(319, *(a1 + 16), *(a1 + 24));
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254183654(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = (((v12 & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v11 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v19 = (v17 - 1) << (8 * v13);
    if (v13 <= 3)
    {
      v20 = *a1;
    }

    else
    {
      v19 = 0;
      v20 = *a1;
    }

    return v11 + (v20 | v19) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v10 < 0x7FFFFFFF)
  {
    v22 = *((&a1[v12] & 0xFFFFFFFFFFFFFFF8) + 32);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }

  else
  {
    v21 = *(v9 + 48);

    return v21(a1);
  }
}

void sub_2541837FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = (((v11 & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v12 >= a3)
  {
    v16 = 0;
    if (v12 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v13 <= 3)
    {
      v14 = ((a3 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v12 >= a2)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *&a1[v13] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v13] = 0;
      }

      else if (v16)
      {
        a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v10 < 0x7FFFFFFF)
      {
        v20 = (&a1[v11] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
          v20[5] = 0;
          v20[6] = 0;
        }

        else
        {
          v21 = (a2 - 1);
        }

        v20[4] = v21;
      }

      else
      {
        v19 = *(v9 + 56);

        v19(a1, a2);
      }

      return;
    }
  }

  v17 = ~v12 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v16 > 1)
    {
LABEL_27:
      if (v16 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v16 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v16)
  {
    a1[v13] = v18;
  }
}

uint64_t ThermostatAutomationEvent.State.result.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ThermostatAutomationEvent.State(0);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t ThermostatAutomationEvent.State.init(trigger:result:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_25418E278(a1, a3, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  result = type metadata accessor for ThermostatAutomationEvent.State(0);
  v7 = a3 + *(result + 20);
  *v7 = v4;
  *(v7 + 8) = v5;
  return result;
}

unint64_t static ThermostatAutomationEvent.State.random.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9448, &qword_254254860);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  if (qword_27F5B83E0 != -1)
  {
    swift_once();
  }

  v6 = off_27F5B9428;
  v7 = *(off_27F5B9428 + 2);
  if (v7)
  {
    result = sub_25418E184(v7);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v9 = result;
      if (result < v6[2])
      {
        v10 = type metadata accessor for ThermostatAutomationEvent.State(0);
        v11 = *(v10 - 8);
        sub_25418E210(v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, v5, type metadata accessor for ThermostatAutomationEvent.State);
        (*(v11 + 56))(v5, 0, 1, v10);
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v10 = type metadata accessor for ThermostatAutomationEvent.State(0);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
LABEL_8:
  type metadata accessor for ThermostatAutomationEvent.State(0);
  result = (*(*(v10 - 8) + 48))(v5, 1, v10);
  if (result != 1)
  {
    return sub_25418E278(v5, a1, type metadata accessor for ThermostatAutomationEvent.State);
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_254183D50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B48, &qword_254257040);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v21 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B50, &unk_254257048);
  v4 = type metadata accessor for ThermostatAutomationEvent.State(0);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_254254360;
  if (qword_27F5B83F0 != -1)
  {
    swift_once();
  }

  v8 = off_27F5B9438;
  v9 = *(off_27F5B9438 + 2);
  if (v9)
  {

    result = sub_25418E184(v9);
    if ((result & 0x8000000000000000) != 0)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v11 = result;
    if (result >= v8[2])
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v12 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
    v13 = *(v12 - 8);
    sub_25418E210(v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11, v3, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);

    (*(v13 + 56))(v3, 0, 1, v12);
  }

  else
  {
    v12 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  }

  type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  result = (*(*(v12 - 8) + 48))(v3, 1, v12);
  if (result != 1)
  {
    if (qword_27F5B83F8 != -1)
    {
      result = swift_once();
    }

    v14 = off_27F5B9440;
    v15 = *(off_27F5B9440 + 2);
    if (!v15)
    {
      goto LABEL_20;
    }

    result = sub_25418E184(v15);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < v14[2])
    {
      v16 = v7 + v6;
      v17 = v14 + 12 * result;
      v18 = *(v17 + 4);
      v19 = v17[40];

      result = sub_25418E278(v3, v16, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
      v20 = v16 + *(v4 + 20);
      *v20 = v18;
      *(v20 + 8) = v19;
      off_27F5B9428 = v7;
      return result;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2541840F4()
{
  if (*v0)
  {
    result = 0x746C75736572;
  }

  else
  {
    result = 0x72656767697274;
  }

  *v0;
  return result;
}

uint64_t sub_25418412C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
  if (v6 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_254184204(uint64_t a1)
{
  v2 = sub_25418F788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254184240(uint64_t a1)
{
  v2 = sub_25418F788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.name.getter()
{
  v1 = (v0 + *(type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.init(identifier:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25424D948();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.random.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25424D938();
  result = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v3 = a1 + *(result + 20);
  strcpy(v3, "Default Room");
  *(v3 + 13) = 0;
  *(v3 + 14) = -5120;
  return result;
}

uint64_t static ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_25424EAB8();
}

uint64_t sub_254184450()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_254184488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_25418456C(uint64_t a1)
{
  v2 = sub_25418E300();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541845A8(uint64_t a1)
{
  v2 = sub_25418E300();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9450, &qword_254254868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E300();
  sub_25424EC78();
  v15[15] = 0;
  sub_25424D948();
  sub_25418E354(&qword_27F5B89D8, MEMORY[0x277CC95F0]);
  sub_25424EA18();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_25424E9D8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.hash(into:)()
{
  sub_25424D948();
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  v1 = (v0 + *(type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_25424DD88();
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.hashValue.getter()
{
  sub_25424EBD8();
  sub_25424D948();
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  v1 = (v0 + *(type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_25424DD88();
  return sub_25424EC28();
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_25424D948();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9460, &qword_254254870);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E300();
  sub_25424EC68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_25418E354(&qword_27F5B89F0, MEMORY[0x277CC95F0]);
  v18 = v30;
  sub_25424E978();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_25424E938();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v11 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_25418E210(v23, v22, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25418F3C0(v23, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
}

uint64_t sub_254184C6C(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424D948();
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_25424DD88();
  return sub_25424EC28();
}

uint64_t sub_254184D14(uint64_t a1, uint64_t a2)
{
  sub_25424D948();
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_25424DD88();
}

uint64_t sub_254184DB0(uint64_t a1, uint64_t a2)
{
  sub_25424EBD8();
  sub_25424D948();
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_25424DD88();
  return sub_25424EC28();
}

uint64_t sub_254184E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_25424EAB8();
}

uint64_t sub_254184EDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B40, &qword_254257038);
  v0 = *(type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2542542D0;
  v4 = v3 + v2;
  v5 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = v4 + v1;
  sub_25424D938();
  v8 = v7 + *(v5 + 20);
  strcpy(v8, "Default Room");
  *(v8 + 13) = 0;
  *(v8 + 14) = -5120;
  result = (v6)(v7, 0, 1, v5);
  off_27F5B9430 = v3;
  return result;
}

uint64_t sub_25418505C()
{
  if (*v0)
  {
    return 1836019570;
  }

  else
  {
    return 1701670760;
  }
}

uint64_t sub_254185080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701670760 && a2 == 0xE400000000000000;
  if (v5 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1836019570 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_25418515C(uint64_t a1)
{
  v2 = sub_25418E7A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254185198(uint64_t a1)
{
  v2 = sub_25418E7A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541851E0(uint64_t a1)
{
  v2 = sub_25418E850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418521C(uint64_t a1)
{
  v2 = sub_25418E850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254185258(uint64_t a1)
{
  v2 = sub_25418E7FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254185294(uint64_t a1)
{
  v2 = sub_25418E7FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9468, &qword_254254878);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v28 - v4;
  v5 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9470, &qword_254254880);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9478, &qword_254254888);
  v17 = *(v36 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v36);
  v20 = &v28 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E7A8();
  sub_25424EC78();
  sub_25418E210(v35, v16, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    v37 = 0;
    sub_25418E850();
    v22 = v36;
    sub_25424E9A8();
    (*(v29 + 8))(v12, v30);
    return (*(v17 + 8))(v20, v22);
  }

  else
  {
    v24 = v31;
    sub_25418E278(v16, v31, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
    v38 = 1;
    sub_25418E7FC();
    v25 = v32;
    v26 = v36;
    sub_25424E9A8();
    sub_25418E354(&qword_27F5B9490, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
    v27 = v34;
    sub_25424EA18();
    (*(v33 + 8))(v25, v27);
    sub_25418F3C0(v24, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
    return (*(v17 + 8))(v20, v26);
  }
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25418E210(v1, v10, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return MEMORY[0x259C06AA0](0);
  }

  sub_25418E278(v10, v6, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  MEMORY[0x259C06AA0](1);
  sub_25424D948();
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  v12 = &v6[*(v2 + 20)];
  v13 = *v12;
  v14 = *(v12 + 1);
  sub_25424DD88();
  return sub_25418F3C0(v6, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424EBD8();
  sub_25418E210(v1, v10, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    MEMORY[0x259C06AA0](0);
  }

  else
  {
    sub_25418E278(v10, v6, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
    MEMORY[0x259C06AA0](1);
    sub_25424D948();
    sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
    sub_25424DC28();
    v11 = &v6[*(v2 + 20)];
    v12 = *v11;
    v13 = *(v11 + 1);
    sub_25424DD88();
    sub_25418F3C0(v6, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  }

  return sub_25424EC28();
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94A0, &qword_254254890);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94A8, &qword_254254898);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94B0, &unk_2542548A0);
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_25418E7A8();
  v25 = v58;
  sub_25424EC68();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v58 = v16;
  v49 = v20;
  v50 = v22;
  v27 = v55;
  v26 = v56;
  v28 = sub_25424E988();
  v29 = (2 * *(v28 + 16)) | 1;
  v60 = v28;
  v61 = v28 + 32;
  v62 = 0;
  v63 = v29;
  v30 = sub_254140878();
  v31 = v12;
  v32 = v15;
  if (v30 == 2 || v62 != v63 >> 1)
  {
    v35 = sub_25424E6F8();
    swift_allocError();
    v37 = v36;
    v38 = v31;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
    *v37 = v58;
    sub_25424E908();
    sub_25424E6E8();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    (*(v57 + 8))(v15, v38);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  if (v30)
  {
    v64 = 1;
    sub_25418E7FC();
    v33 = v27;
    sub_25424E8F8();
    v34 = v57;
    v42 = v26;
    v43 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
    sub_25418E354(&qword_27F5B94B8, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
    v44 = v49;
    v45 = v53;
    sub_25424E978();
    (*(v54 + 8))(v33, v45);
    (*(v34 + 8))(v32, v31);
    swift_unknownObjectRelease();
    (*(*(v43 - 8) + 56))(v44, 0, 1, v43);
    v46 = v50;
    sub_25418E278(v44, v50, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  }

  else
  {
    v64 = 0;
    sub_25418E850();
    sub_25424E8F8();
    v41 = v57;
    v42 = v26;
    (*(v52 + 8))(v11, v51);
    (*(v41 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v47 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
    v46 = v50;
    (*(*(v47 - 8) + 56))(v50, 1, 1, v47);
  }

  sub_25418E278(v46, v42, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_2541861E0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25418E210(v4, v13, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    return MEMORY[0x259C06AA0](0);
  }

  sub_25418E278(v13, v10, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  MEMORY[0x259C06AA0](1);
  sub_25424D948();
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  v15 = &v10[*(v5 + 20)];
  v16 = *v15;
  v17 = *(v15 + 1);
  sub_25424DD88();
  return sub_25418F3C0(v10, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
}

uint64_t sub_2541863DC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424EBD8();
  sub_25418E210(v4, v13, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    MEMORY[0x259C06AA0](0);
  }

  else
  {
    sub_25418E278(v13, v10, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
    MEMORY[0x259C06AA0](1);
    sub_25424D948();
    sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
    sub_25424DC28();
    v14 = &v10[*(v5 + 20)];
    v15 = *v14;
    v16 = *(v14 + 1);
    sub_25424DD88();
    sub_25418F3C0(v10, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  }

  return sub_25424EC28();
}

uint64_t sub_254186664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
  if (v5 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xED00006465646E45)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_254186740(uint64_t a1)
{
  v2 = sub_25418E8A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418677C(uint64_t a1)
{
  v2 = sub_25418E8A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541867B8(uint64_t a1)
{
  v2 = sub_25418E94C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541867F4(uint64_t a1)
{
  v2 = sub_25418E94C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254186830(uint64_t a1)
{
  v2 = sub_25418E8F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418686C(uint64_t a1)
{
  v2 = sub_25418E8F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.SleepDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94C0, &qword_2542548B0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94C8, &qword_2542548B8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94D0, &qword_2542548C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E8A4();
  sub_25424EC78();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_25418E8F8();
    v18 = v22;
    sub_25424E9A8();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_25418E94C();
    sub_25424E9A8();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.SleepDetails.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94F0, &qword_2542548C8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94F8, &qword_2542548D0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9500, &qword_2542548D8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E8A4();
  v16 = v36;
  sub_25424EC68();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_25424E988();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_254140878();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_25424E6F8();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
      *v26 = &type metadata for ThermostatAutomationEvent.ThermostatAutomationTrigger.SleepDetails;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_25418E8F8();
        sub_25424E8F8();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_25418E94C();
        sub_25424E8F8();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_254187098(uint64_t a1)
{
  v2 = sub_25418E9F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541870D4(uint64_t a1)
{
  v2 = sub_25418E9F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254187134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7974697669746361 && a2 == 0xED00006574617453)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25424EAB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2541871C4(uint64_t a1)
{
  v2 = sub_25418E9A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254187200(uint64_t a1)
{
  v2 = sub_25418E9A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.VacationDetails.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9508, &qword_2542548E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9510, &qword_2542548E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E9A0();
  sub_25424EC78();
  sub_25418E9F4();
  sub_25424E9A8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.VacationDetails.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9528, &qword_2542548F0);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9530, &qword_2542548F8);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E9A0();
  sub_25424EC68();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_25424E988();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_25414087C() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_25424E6F8();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
    *v19 = &type metadata for ThermostatAutomationEvent.ThermostatAutomationTrigger.VacationDetails;
    sub_25424E908();
    sub_25424E6E8();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_25418E9F4();
  sub_25424E8F8();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_254187784(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9508, &qword_2542548E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9510, &qword_2542548E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E9A0();
  sub_25424EC78();
  sub_25418E9F4();
  sub_25424E9A8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_25418798C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64657269707865 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25424EAB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_254187A14(uint64_t a1)
{
  v2 = sub_25418EA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254187A50(uint64_t a1)
{
  v2 = sub_25418EA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254187A8C(uint64_t a1)
{
  v2 = sub_25418EA9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254187AC8(uint64_t a1)
{
  v2 = sub_25418EA9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.HoldDetails.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9538, &qword_254254900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9540, &qword_254254908);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418EA48();
  sub_25424EC78();
  sub_25418EA9C();
  sub_25424E9A8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.HoldDetails.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9558, &qword_254254910);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9560, &qword_254254918);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418EA48();
  sub_25424EC68();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_25424E988();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_25414087C() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_25424E6F8();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
    *v19 = &type metadata for ThermostatAutomationEvent.ThermostatAutomationTrigger.HoldDetails;
    sub_25424E908();
    sub_25424E6E8();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_25418EA9C();
  sub_25424E8F8();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_254188078(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9538, &qword_254254900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9540, &qword_254254908);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418EA48();
  sub_25424EC78();
  sub_25418EA9C();
  sub_25424E9A8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_254188260(uint64_t a1)
{
  v2 = sub_25418EB44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418829C(uint64_t a1)
{
  v2 = sub_25418EB44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541882D8(uint64_t a1)
{
  v2 = sub_25418EB98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254188314(uint64_t a1)
{
  v2 = sub_25418EB98();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_254188350()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_25418838C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000254250760 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000254250780 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_25424EAB8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_254188470(uint64_t a1)
{
  v2 = sub_25418EAF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541884AC(uint64_t a1)
{
  v2 = sub_25418EAF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.ArrivalPredictionDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9568, &qword_254254920);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9570, &qword_254254928);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9578, &qword_254254930);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418EAF0();
  sub_25424EC78();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_25418EB44();
    v18 = v22;
    sub_25424E9A8();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_25418EB98();
    sub_25424E9A8();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.ArrivalPredictionDetails.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9598, &qword_254254938);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95A0, &qword_254254940);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95A8, &qword_254254948);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418EAF0();
  v16 = v36;
  sub_25424EC68();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_25424E988();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_254140878();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_25424E6F8();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
      *v26 = &type metadata for ThermostatAutomationEvent.ThermostatAutomationTrigger.ArrivalPredictionDetails;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_25418EB44();
        sub_25424E8F8();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_25418EB98();
        sub_25424E8F8();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_254188CA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B28, &qword_254257020);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B30, &qword_254257028);
  v7 = *(type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_254254840;
  if (qword_27F5B83E8 != -1)
  {
    swift_once();
  }

  v10 = off_27F5B9430;
  v11 = *(off_27F5B9430 + 2);
  if (v11)
  {
    v12 = v9;

    result = sub_25418E184(v11);
    if ((result & 0x8000000000000000) != 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v14 = result;
    if (result >= v10[2])
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v15 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
    v16 = *(v15 - 8);
    sub_25418E210(v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14, v6, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);

    (*(v16 + 56))(v6, 0, 1, v15);
    v9 = v12;
  }

  else
  {
    v15 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  v17 = *(v15 - 8);
  v18 = *(v17 + 48);
  result = v18(v6, 1, v15);
  if (result == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19 = v24 + v9;
  sub_25418E278(v6, v24 + v9, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  swift_storeEnumTagMultiPayload();
  v20 = off_27F5B9430;
  v21 = *(off_27F5B9430 + 2);
  if (v21)
  {

    result = sub_25418E184(v21);
    if ((result & 0x8000000000000000) != 0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (result >= v20[2])
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    sub_25418E210(v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * result, v4, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  (*(v17 + 56))(v4, v22, 1, v15);
  result = v18(v4, 1, v15);
  if (result != 1)
  {
    sub_25418E278(v4, v19 + v8, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
    swift_storeEnumTagMultiPayload();
    result = sub_25418E184(2uLL);
    if (result > 1)
    {
      __break(1u);
    }

    else
    {
      *(v19 + 2 * v8) = byte_286632FB8[result + 32];
      swift_storeEnumTagMultiPayload();
      result = sub_25418E184(1uLL);
      if (!result)
      {
        swift_storeEnumTagMultiPayload();
        result = sub_25418E184(1uLL);
        if (!result)
        {
          swift_storeEnumTagMultiPayload();
          result = sub_25418E184(2uLL);
          if (result <= 1)
          {
            *(v19 + 5 * v8) = byte_286632FE0[result + 32];
            result = swift_storeEnumTagMultiPayload();
            off_27F5B9438 = v24;
            return result;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2541891D4(uint64_t a1)
{
  v2 = sub_25418F0CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254189210(uint64_t a1)
{
  v2 = sub_25418F0CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25418924C()
{
  v1 = *v0;
  v2 = 0x646569707563636FLL;
  v3 = 0x6E6F697461636176;
  v4 = 1684828008;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x69707563636F6E75;
  if (v1 != 1)
  {
    v5 = 0x7065656C73;
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

uint64_t sub_254189304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254191F54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254189338(uint64_t a1)
{
  v2 = sub_25418F078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254189374(uint64_t a1)
{
  v2 = sub_25418F078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541893B0(uint64_t a1)
{
  v2 = sub_25418F174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541893EC(uint64_t a1)
{
  v2 = sub_25418F174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254189428(uint64_t a1)
{
  v2 = sub_25418F420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254189464(uint64_t a1)
{
  v2 = sub_25418F420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541894A0(uint64_t a1)
{
  v2 = sub_25418F2C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541894DC(uint64_t a1)
{
  v2 = sub_25418F2C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254189518(uint64_t a1)
{
  v2 = sub_25418F36C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254189554(uint64_t a1)
{
  v2 = sub_25418F36C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254189590(uint64_t a1)
{
  v2 = sub_25418F21C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541895CC(uint64_t a1)
{
  v2 = sub_25418F21C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95B0, &qword_254254950);
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v2);
  v63 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95B8, &qword_254254958);
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95C0, &qword_254254960);
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95C8, &qword_254254968);
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v52 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95D0, &qword_254254970);
  v53 = *(v14 - 8);
  v54 = v14;
  v15 = *(v53 + 64);
  MEMORY[0x28223BE20](v14);
  v51 = &v48 - v16;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95D8, &qword_254254978);
  v49 = *(v50 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v50);
  v19 = &v48 - v18;
  v66 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  v20 = *(*(v66 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v66);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v48 - v24;
  v26 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95E0, &qword_254254980);
  v31 = *(v30 - 8);
  v67 = v30;
  v68 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v48 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418F078();
  sub_25424EC78();
  sub_25418E210(v69, v29, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v74 = 3;
      sub_25418F21C();
      v40 = v57;
      v38 = v67;
      sub_25424E9A8();
      sub_25418F270();
      v41 = v59;
      sub_25424EA18();
      v42 = v58;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v75 = 4;
      sub_25418F174();
      v40 = v60;
      v38 = v67;
      sub_25424E9A8();
      sub_25418F1C8();
      v41 = v62;
      sub_25424EA18();
      v42 = v61;
    }

    else
    {
      v47 = *v29;
      v77 = 5;
      sub_25418F0CC();
      v40 = v63;
      v38 = v67;
      sub_25424E9A8();
      v76 = v47;
      sub_25418F120();
      v41 = v65;
      sub_25424EA18();
      v42 = v64;
    }

    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_25418E278(v29, v25, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
    v70 = 0;
    sub_25418F420();
    v43 = v67;
    sub_25424E9A8();
    sub_25418E354(&qword_27F5B9638, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
    v44 = v50;
    sub_25424EA18();
    (*(v49 + 8))(v19, v44);
    sub_25418F3C0(v25, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
    return (*(v68 + 8))(v34, v43);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v46 = *v29;
    v73 = 2;
    sub_25418F2C4();
    v40 = v52;
    v38 = v67;
    sub_25424E9A8();
    v72 = v46;
    sub_25418F318();
    v41 = v56;
    sub_25424EA18();
    v42 = v55;
LABEL_12:
    (*(v42 + 8))(v40, v41);
    return (*(v68 + 8))(v34, v38);
  }

  sub_25418E278(v29, v23, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  v71 = 1;
  sub_25418F36C();
  v37 = v51;
  v38 = v67;
  sub_25424E9A8();
  sub_25418E354(&qword_27F5B9638, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  v39 = v54;
  sub_25424EA18();
  (*(v53 + 8))(v37, v39);
  sub_25418F3C0(v23, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  return (*(v68 + 8))(v34, v38);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.hash(into:)()
{
  v1 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25418E210(v0, v21, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_25418E278(v21, v17, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      MEMORY[0x259C06AA0](0);
      sub_25418E210(v17, v15, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      if ((*(v2 + 48))(v15, 1, v1) == 1)
      {
        MEMORY[0x259C06AA0](0);
        return sub_25418F3C0(v17, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      }

      v28 = v37;
      sub_25418E278(v15, v37, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
      MEMORY[0x259C06AA0](1);
      sub_25424D948();
      sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
      sub_25424DC28();
      v29 = (v28 + *(v1 + 20));
      v30 = *v29;
      v31 = v29[1];
      sub_25424DD88();
      v32 = v17;
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_25418E278(v21, v12, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      MEMORY[0x259C06AA0](1);
      sub_25418E210(v12, v9, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      if ((*(v2 + 48))(v9, 1, v1) == 1)
      {
        MEMORY[0x259C06AA0](0);
        return sub_25418F3C0(v12, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      }

      v28 = v37;
      sub_25418E278(v9, v37, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
      MEMORY[0x259C06AA0](1);
      sub_25424D948();
      sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
      sub_25424DC28();
      v33 = (v28 + *(v1 + 20));
      v34 = *v33;
      v35 = v33[1];
      sub_25424DD88();
      v32 = v12;
LABEL_20:
      sub_25418F3C0(v32, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      return sub_25418F3C0(v28, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
    }

    v26 = *v21;
    v27 = 2;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v24 = 3;
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      v26 = *v21;
      v27 = 5;
LABEL_15:
      MEMORY[0x259C06AA0](v27);
      v25 = v26;
      return MEMORY[0x259C06AA0](v25);
    }

    v24 = 4;
  }

  MEMORY[0x259C06AA0](v24);
  v25 = 0;
  return MEMORY[0x259C06AA0](v25);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9648, &qword_254254988);
  v4 = *(v3 - 8);
  v102 = v3;
  v103 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v112 = &v84 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9650, &qword_254254990);
  v100 = *(v7 - 8);
  v101 = v7;
  v8 = *(v100 + 64);
  MEMORY[0x28223BE20](v7);
  v111 = &v84 - v9;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9658, &qword_254254998);
  v99 = *(v98 - 8);
  v10 = *(v99 + 64);
  MEMORY[0x28223BE20](v98);
  v110 = &v84 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9660, &qword_2542549A0);
  v96 = *(v97 - 8);
  v12 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v104 = &v84 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9668, &qword_2542549A8);
  v94 = *(v95 - 8);
  v14 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v105 = &v84 - v15;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9670, &qword_2542549B0);
  v93 = *(v92 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  v108 = &v84 - v17;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9678, &qword_2542549B8);
  v113 = *(v109 - 8);
  v18 = *(v113 + 64);
  MEMORY[0x28223BE20](v109);
  v20 = &v84 - v19;
  v107 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  v21 = *(*(v107 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v107);
  v91 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v90 = &v84 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v84 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v84 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v84 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v84 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v84 - v38;
  v41 = a1[3];
  v40 = a1[4];
  v116 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_25418F078();
  v114 = v20;
  v42 = v115;
  sub_25424EC68();
  if (!v42)
  {
    v87 = v37;
    v85 = v28;
    v86 = v31;
    v88 = v34;
    v44 = v107;
    v43 = v108;
    v45 = v110;
    v46 = v111;
    v115 = 0;
    v47 = v112;
    v89 = v39;
    v48 = v109;
    v49 = v114;
    v50 = sub_25424E988();
    v51 = (2 * *(v50 + 16)) | 1;
    v117 = v50;
    v118 = v50 + 32;
    v119 = 0;
    v120 = v51;
    v52 = sub_25413B110();
    if (v52 == 6 || v119 != v120 >> 1)
    {
      v59 = v49;
      v60 = sub_25424E6F8();
      swift_allocError();
      v62 = v61;
      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
      *v62 = v44;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v60 - 8) + 104))(v62, *MEMORY[0x277D84160], v60);
      swift_willThrow();
      (*(v113 + 8))(v59, v48);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v116);
    }

    if (v52 <= 2u)
    {
      if (!v52)
      {
        v121 = 0;
        sub_25418F420();
        v70 = v115;
        sub_25424E8F8();
        if (!v70)
        {
          type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
          sub_25418E354(&qword_27F5B96A0, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
          v56 = v87;
          v78 = v92;
          sub_25424E978();
          (*(v93 + 8))(v43, v78);
          (*(v113 + 8))(v114, v48);
          swift_unknownObjectRelease();
          goto LABEL_27;
        }

        (*(v113 + 8))(v49, v48);
        goto LABEL_10;
      }

      v53 = v115;
      if (v52 == 1)
      {
        v121 = 1;
        sub_25418F36C();
        v54 = v105;
        v55 = v49;
        sub_25424E8F8();
        if (!v53)
        {
          type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
          sub_25418E354(&qword_27F5B96A0, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
          v56 = v88;
          v57 = v95;
          sub_25424E978();
          v58 = v113;
          (*(v94 + 8))(v54, v57);
          (*(v58 + 8))(v114, v48);
          swift_unknownObjectRelease();
LABEL_27:
          swift_storeEnumTagMultiPayload();
          v80 = v56;
LABEL_29:
          v82 = v89;
          sub_25418E278(v80, v89, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
          v65 = v106;
LABEL_31:
          sub_25418E278(v82, v65, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
          return __swift_destroy_boxed_opaque_existential_1(v116);
        }

        goto LABEL_20;
      }

      v121 = 2;
      sub_25418F2C4();
      v74 = v104;
      v67 = v49;
      sub_25424E8F8();
      if (!v53)
      {
        sub_25418F570();
        v75 = v97;
        sub_25424E978();
        (*(v96 + 8))(v74, v75);
        (*(v113 + 8))(v49, v48);
        swift_unknownObjectRelease();
        v79 = v86;
        *v86 = v121;
        goto LABEL_28;
      }

LABEL_25:
      (*(v113 + 8))(v67, v48);
      goto LABEL_10;
    }

    v65 = v106;
    if (v52 == 3)
    {
      v121 = 3;
      sub_25418F21C();
      v71 = v45;
      v55 = v49;
      v72 = v115;
      sub_25424E8F8();
      if (v72)
      {
LABEL_20:
        (*(v113 + 8))(v55, v48);
        goto LABEL_10;
      }

      sub_25418F51C();
      v73 = v98;
      sub_25424E978();
      (*(v99 + 8))(v71, v73);
      (*(v113 + 8))(v49, v48);
      swift_unknownObjectRelease();
      v79 = v85;
LABEL_28:
      swift_storeEnumTagMultiPayload();
      v80 = v79;
      goto LABEL_29;
    }

    if (v52 == 4)
    {
      v121 = 4;
      sub_25418F174();
      v66 = v46;
      v67 = v49;
      v68 = v115;
      sub_25424E8F8();
      if (v68)
      {
        goto LABEL_25;
      }

      sub_25418F4C8();
      v69 = v101;
      sub_25424E978();
      (*(v100 + 8))(v66, v69);
      (*(v113 + 8))(v49, v48);
      swift_unknownObjectRelease();
      v81 = v90;
    }

    else
    {
      v121 = 5;
      sub_25418F0CC();
      v67 = v49;
      v76 = v115;
      sub_25424E8F8();
      if (v76)
      {
        goto LABEL_25;
      }

      sub_25418F474();
      v77 = v102;
      sub_25424E978();
      (*(v103 + 8))(v47, v77);
      (*(v113 + 8))(v49, v48);
      swift_unknownObjectRelease();
      v81 = v91;
      *v91 = v121;
    }

    swift_storeEnumTagMultiPayload();
    v83 = v81;
    v82 = v89;
    sub_25418E278(v83, v89, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
    goto LABEL_31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v116);
}

unint64_t sub_25418B248()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B18, &qword_254257010);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_254254850;
  *(v0 + 32) = 0;
  *(v0 + 40) = 3;
  v1 = sub_2541B1304(0x1000001uLL);
  v2 = (vcvts_n_f32_u32(v1, 0x18uLL) * 3.0) + 17.0;
  v3 = sub_2541B1304(0x1000001uLL);
  *&v4 = (vcvts_n_f32_u32(v3, 0x18uLL) * 5.0) + 21.0;
  if (v1 == 0x1000000)
  {
    v5 = 1101004800;
  }

  else
  {
    v5 = LODWORD(v2);
  }

  if (v3 == 0x1000000)
  {
    v4 = 1104150528;
  }

  else
  {
    v4 = v4;
  }

  *(v0 + 44) = v5 | (v4 << 32);
  *(v0 + 52) = 0;
  v6 = sub_2541B1304(0x1000001uLL);
  *&v7 = (vcvts_n_f32_u32(v6, 0x18uLL) * 5.0) + 21.0;
  if (v6 == 0x1000000)
  {
    v7 = 1104150528;
  }

  else
  {
    v7 = v7;
  }

  *(v0 + 56) = v7;
  *(v0 + 64) = 1;
  result = sub_2541B1304(0x1000001uLL);
  *&v9 = (vcvts_n_f32_u32(result, 0x18uLL) * 3.0) + 17.0;
  if (result == 0x1000000)
  {
    v9 = 1101004800;
  }

  else
  {
    v9 = v9;
  }

  *(v0 + 68) = v9;
  *(v0 + 76) = 2;
  off_27F5B9440 = v0;
  return result;
}

uint64_t sub_25418B3B8(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_25418B418()
{
  v1 = 6710895;
  v2 = 0x6F546C6F6F63;
  if (*v0 != 2)
  {
    v2 = 0x6F5474616568;
  }

  if (*v0)
  {
    v1 = 0x65676E6172;
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

uint64_t sub_25418B480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25419215C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25418B4B4(uint64_t a1)
{
  v2 = sub_25418F5C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418B4F0(uint64_t a1)
{
  v2 = sub_25418F5C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25418B548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002542507E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_25424EAB8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_25418B5DC(uint64_t a1)
{
  v2 = sub_25418F66C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418B618(uint64_t a1)
{
  v2 = sub_25418F66C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25418B670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002542507C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_25424EAB8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_25418B704(uint64_t a1)
{
  v2 = sub_25418F618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418B740(uint64_t a1)
{
  v2 = sub_25418F618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25418B77C(uint64_t a1)
{
  v2 = sub_25418F714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418B7B8(uint64_t a1)
{
  v2 = sub_25418F714();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25418B824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002542507C0 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002542507E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_25424EAB8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_25418B90C(uint64_t a1)
{
  v2 = sub_25418F6C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418B948(uint64_t a1)
{
  v2 = sub_25418F6C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationResult.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B96A8, &qword_2542549C0);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B96B0, &qword_2542549C8);
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B96B8, &qword_2542549D0);
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B96C0, &qword_2542549D8);
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B96C8, &qword_2542549E0);
  v44 = *(v18 - 8);
  v45 = v18;
  v19 = *(v44 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - v20;
  v22 = *v2;
  v23 = *(v2 + 8);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418F5C4();
  sub_25424EC78();
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      v47 = 0;
      sub_25418F714();
      v33 = v45;
      sub_25424E9A8();
      (*(v35 + 8))(v17, v14);
      return (*(v44 + 8))(v21, v33);
    }

    v52 = 3;
    sub_25418F618();
    v28 = v41;
    v29 = v45;
    sub_25424E9A8();
    v30 = v43;
    sub_25424E9F8();
    v31 = v42;
LABEL_8:
    (*(v31 + 8))(v28, v30);
    return (*(v44 + 8))(v21, v29);
  }

  if (v23)
  {
    v51 = 2;
    sub_25418F66C();
    v28 = v36;
    v29 = v45;
    sub_25424E9A8();
    v30 = v38;
    sub_25424E9F8();
    v31 = v37;
    goto LABEL_8;
  }

  v50 = 1;
  sub_25418F6C0();
  v25 = v45;
  sub_25424E9A8();
  v49 = 0;
  v26 = v40;
  v27 = v46;
  sub_25424E9F8();
  if (!v27)
  {
    v48 = 1;
    sub_25424E9F8();
  }

  (*(v39 + 8))(v13, v26);
  return (*(v44 + 8))(v21, v25);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationResult.hash(into:)()
{
  if (*(v0 + 8) <= 1u)
  {
    if (!*(v0 + 8))
    {
      v1 = HIDWORD(*v0);
      MEMORY[0x259C06AA0](1);
      sub_25424EC08();
      return sub_25424EC08();
    }

    v2 = 2;
LABEL_7:
    MEMORY[0x259C06AA0](v2);
    return sub_25424EC08();
  }

  if (*(v0 + 8) == 2)
  {
    v2 = 3;
    goto LABEL_7;
  }

  return MEMORY[0x259C06AA0](0);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationResult.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_25424EBD8();
  ThermostatAutomationEvent.ThermostatAutomationResult.hash(into:)();
  return sub_25424EC28();
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B96F8, &qword_2542549E8);
  v64 = *(v67 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v56 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9700, &qword_2542549F0);
  v62 = *(v60 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  v65 = &v56 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9708, &qword_2542549F8);
  v63 = *(v61 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9710, &qword_254254A00);
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9718, &qword_254254A08);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_25418F5C4();
  v21 = v69;
  sub_25424EC68();
  if (!v21)
  {
    v22 = v13;
    v57 = v10;
    v58 = 0;
    v23 = v9;
    v24 = v65;
    v25 = v66;
    v69 = v15;
    v27 = v67;
    v26 = v68;
    v28 = sub_25424E988();
    v29 = (2 * *(v28 + 16)) | 1;
    v71 = v28;
    v72 = v28 + 32;
    v73 = 0;
    v74 = v29;
    v30 = sub_254140880();
    if (v30 == 4 || v73 != v74 >> 1)
    {
      v35 = sub_25424E6F8();
      swift_allocError();
      v37 = v36;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
      *v37 = &type metadata for ThermostatAutomationEvent.ThermostatAutomationResult;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
      swift_willThrow();
    }

    else
    {
      if (v30 > 1u)
      {
        if (v30 == 2)
        {
          v75 = 2;
          sub_25418F66C();
          v41 = v24;
          v42 = v58;
          sub_25424E8F8();
          v43 = v69;
          if (v42)
          {
            (*(v69 + 8))(v18, v14);
            goto LABEL_11;
          }

          v44 = v60;
          sub_25424E958();
          v49 = v48;
          (*(v62 + 8))(v41, v44);
          (*(v43 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v33 = v49;
          v34 = 1;
        }

        else
        {
          v75 = 3;
          sub_25418F618();
          v47 = v58;
          sub_25424E8F8();
          v39 = v69;
          if (v47)
          {
            goto LABEL_10;
          }

          sub_25424E958();
          v55 = v54;
          (*(v64 + 8))(v25, v27);
          (*(v39 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v33 = v55;
          v34 = 2;
        }

        v32 = v26;
        goto LABEL_22;
      }

      if (v30)
      {
        v75 = 1;
        sub_25418F6C0();
        v45 = v58;
        sub_25424E8F8();
        if (!v45)
        {
          v32 = v26;
          v75 = 0;
          v46 = v61;
          sub_25424E958();
          v51 = v50;
          v75 = 1;
          sub_25424E958();
          v53 = v52;
          (*(v63 + 8))(v23, v46);
          (*(v69 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v34 = 0;
          v33 = v51 | (v53 << 32);
          goto LABEL_22;
        }
      }

      else
      {
        v75 = 0;
        sub_25418F714();
        v31 = v58;
        sub_25424E8F8();
        if (!v31)
        {
          v32 = v26;
          (*(v59 + 8))(v22, v57);
          (*(v69 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v33 = 0;
          v34 = 3;
LABEL_22:
          *v32 = v33;
          *(v32 + 8) = v34;
          return __swift_destroy_boxed_opaque_existential_1(v70);
        }
      }
    }

    v39 = v69;
LABEL_10:
    (*(v39 + 8))(v18, v14);
LABEL_11:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v70);
}

uint64_t sub_25418C7C8()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_25424EBD8();
  ThermostatAutomationEvent.ThermostatAutomationResult.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_25418C820()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_25424EBD8();
  ThermostatAutomationEvent.ThermostatAutomationResult.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_25418C894@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

uint64_t ThermostatAutomationEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ThermostatAutomationEvent.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ThermostatAutomationEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThermostatAutomationEvent.accessoryName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ThermostatAutomationEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

uint64_t ThermostatAutomationEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = type metadata accessor for AccessoryEventBase(0);
  v17 = v16[9];
  v18 = sub_25424D948();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a9 + v17, 1, 1, v18);
  v20 = sub_25424D8B8();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for EventBase(0);
  v22 = *(v19 + 32);
  v22(a9 + v21[5], a2, v18);
  *(a9 + v21[6]) = 3;
  v23 = (a9 + v21[7]);
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 15;
  v22(a9 + v16[5], a3, v18);
  v24 = (a9 + v16[6]);
  *v24 = a4;
  v24[1] = a5;
  v22(a9 + v16[7], a6, v18);
  v25 = (a9 + v16[8]);
  *v25 = a7;
  v25[1] = a8;
  v26 = type metadata accessor for ThermostatAutomationEvent(0);
  return sub_25418E278(a10, a9 + *(v26 + 20), type metadata accessor for ThermostatAutomationEvent.State);
}

uint64_t ThermostatAutomationEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8F00, &unk_25425B800);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ThermostatAutomationEvent.State(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessoryEventBase(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v25);
  sub_254232240(v25, v16);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v5;
  v24 = v12;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25412F1C4();
  sub_25424EC68();
  LOBYTE(v25[0]) = 0;
  sub_25418E354(&qword_27F5B9720, type metadata accessor for ThermostatAutomationEvent.State);
  v18 = v24;
  sub_25424E978();
  (*(v23 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v26;
  sub_25418E278(v16, v26, type metadata accessor for AccessoryEventBase);
  v20 = type metadata accessor for ThermostatAutomationEvent(0);
  return sub_25418E278(v18, v19 + *(v20 + 20), type metadata accessor for ThermostatAutomationEvent.State);
}

uint64_t ThermostatAutomationEvent.encode(to:)(void *a1)
{
  v38 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - v5;
  v6 = type metadata accessor for AccessoryEventBase.DocumentLayout(0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25424D8B8();
  (*(*(v11 - 8) + 16))(v10, v2, v11);
  v12 = type metadata accessor for EventBase(0);
  v13 = *(v12 + 20);
  v14 = v7[7];
  v15 = sub_25424D948();
  v16 = *(*(v15 - 8) + 16);
  v16(&v10[v14], v2 + v13, v15);
  v40 = *(v2 + *(v12 + 24));
  v17 = type metadata accessor for AccessoryEventBase(0);
  v16(&v10[v7[9]], v2 + v17[5], v15);
  v18 = (v2 + v17[6]);
  v20 = *v18;
  v19 = v18[1];
  v16(&v10[v7[11]], v2 + v17[7], v15);
  v21 = v38;
  v22 = v17[9];
  v23 = (v2 + v17[8]);
  v24 = *v23;
  v25 = v23[1];
  sub_254149770(v2 + v22, &v10[v7[13]]);
  v10[v7[8]] = v40;
  v26 = &v10[v7[10]];
  *v26 = v20;
  *(v26 + 1) = v19;
  v27 = &v10[v7[12]];
  *v27 = v24;
  *(v27 + 1) = v25;

  v28 = v39;
  sub_25423298C(v21);
  result = sub_25418F3C0(v10, type metadata accessor for AccessoryEventBase.DocumentLayout);
  if (!v28)
  {
    v30 = *(type metadata accessor for ThermostatAutomationEvent(0) + 20);
    v31 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_25412F1C4();
    v32 = v35;
    sub_25424EC78();
    v41 = 0;
    type metadata accessor for ThermostatAutomationEvent.State(0);
    sub_25418E354(&qword_27F5B9728, type metadata accessor for ThermostatAutomationEvent.State);
    v33 = v37;
    sub_25424EA18();
    return (*(v36 + 8))(v32, v33);
  }

  return result;
}

BOOL static ThermostatAutomationEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = *(type metadata accessor for ThermostatAutomationEvent(0) + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  if ((_s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO2eeoiySbAE_AEtFZ_0(v5, v6) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for ThermostatAutomationEvent.State(0) + 20);
  v8 = *(v5 + v7 + 8);
  v14 = *(v5 + v7);
  v15 = v8;
  v9 = v6 + v7;
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  v12 = v10;
  v13 = v9;
  return _s13HomeKitEvents25ThermostatAutomationEventV0dE6ResultO2eeoiySbAE_AEtFZ_0(&v14, &v12);
}

uint64_t ThermostatAutomationEvent.hash(into:)()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  sub_25424D8B8();
  sub_25418E354(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254257058[*(v1 + *(v11 + 24))]);
  v13 = type metadata accessor for AccessoryEventBase(0);
  v14 = v1 + v13[5];
  sub_25424DC28();
  v15 = (v1 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  sub_25424DD88();
  v18 = v1 + v13[7];
  sub_25424DC28();
  v19 = (v1 + v13[8]);
  v20 = *v19;
  v21 = v19[1];
  sub_25424DD88();
  sub_254149770(v1 + v13[9], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v6, v2);
  }

  v22 = v1 + *(type metadata accessor for ThermostatAutomationEvent(0) + 20);
  ThermostatAutomationEvent.ThermostatAutomationTrigger.hash(into:)();
  v23 = (v22 + *(type metadata accessor for ThermostatAutomationEvent.State(0) + 20));
  v24 = *v23;
  v25 = *(v23 + 8);
  if (v25 <= 1)
  {
    if (!v25)
    {
      MEMORY[0x259C06AA0](1);
      sub_25424EC08();
      return sub_25424EC08();
    }

    v27 = 2;
LABEL_11:
    MEMORY[0x259C06AA0](v27);
    return sub_25424EC08();
  }

  if (v25 == 2)
  {
    v27 = 3;
    goto LABEL_11;
  }

  return MEMORY[0x259C06AA0](0);
}

BOOL sub_25418D7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((j___s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  if ((_s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO2eeoiySbAE_AEtFZ_0(a1 + v6, v8) & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for ThermostatAutomationEvent.State(0) + 20);
  v10 = *(v7 + v9 + 8);
  v16 = *(v7 + v9);
  v17 = v10;
  v11 = v8 + v9;
  v12 = *v11;
  LOBYTE(v11) = *(v11 + 8);
  v14 = v12;
  v15 = v11;
  return _s13HomeKitEvents25ThermostatAutomationEventV0dE6ResultO2eeoiySbAE_AEtFZ_0(&v16, &v14);
}

uint64_t sub_25418D8A0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_25424D948();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL static ThermostatAutomationEvent.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    v4 = *(type metadata accessor for ThermostatAutomationEvent.State(0) + 20);
    v5 = *(a1 + v4 + 8);
    v12 = *(a1 + v4);
    v13 = v5;
    v6 = a2 + v4;
    v7 = *v6;
    LOBYTE(v6) = *(v6 + 8);
    v10 = v7;
    v11 = v6;
    return _s13HomeKitEvents25ThermostatAutomationEventV0dE6ResultO2eeoiySbAE_AEtFZ_0(&v12, &v10);
  }

  else
  {
    return 0;
  }
}

uint64_t ThermostatAutomationEvent.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9730, &qword_254254A18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418F788();
  sub_25424EC78();
  v17 = 0;
  type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  sub_25418E354(&qword_27F5B9740, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  sub_25424EA18();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for ThermostatAutomationEvent.State(0) + 20));
    v12 = *v11;
    LOBYTE(v11) = *(v11 + 8);
    v15 = v12;
    v16 = v11;
    v14[15] = 1;
    sub_25418F7DC();
    sub_25424EA18();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ThermostatAutomationEvent.State.hash(into:)()
{
  ThermostatAutomationEvent.ThermostatAutomationTrigger.hash(into:)();
  v1 = (v0 + *(type metadata accessor for ThermostatAutomationEvent.State(0) + 20));
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 <= 1)
  {
    if (!v3)
    {
      MEMORY[0x259C06AA0](1);
      sub_25424EC08();
      return sub_25424EC08();
    }

    v4 = 2;
LABEL_7:
    MEMORY[0x259C06AA0](v4);
    return sub_25424EC08();
  }

  if (v3 == 2)
  {
    v4 = 3;
    goto LABEL_7;
  }

  return MEMORY[0x259C06AA0](0);
}

uint64_t sub_25418DC98(void (*a1)(_BYTE *))
{
  sub_25424EBD8();
  a1(v3);
  return sub_25424EC28();
}

uint64_t ThermostatAutomationEvent.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9750, &qword_254254A20);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for ThermostatAutomationEvent.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418F788();
  sub_25424EC68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v23;
  v17 = v14;
  v29 = 0;
  sub_25418E354(&qword_27F5B9758, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  v18 = v24;
  sub_25424E978();
  sub_25418E278(v25, v17, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  v28 = 1;
  sub_25418F830();
  sub_25424E978();
  (*(v16 + 8))(v10, v18);
  v19 = v27;
  v20 = v17 + *(v11 + 20);
  *v20 = v26;
  *(v20 + 8) = v19;
  sub_25418E210(v17, v22, type metadata accessor for ThermostatAutomationEvent.State);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25418F3C0(v17, type metadata accessor for ThermostatAutomationEvent.State);
}

uint64_t sub_25418E058(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_25424EBD8();
  a3(v5);
  return sub_25424EC28();
}

uint64_t sub_25418E0BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_25424EBD8();
  a4(v6);
  return sub_25424EC28();
}

BOOL sub_25418E100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6 + 8);
    v14 = *(a1 + v6);
    v15 = v7;
    v8 = a2 + v6;
    v9 = *v8;
    LOBYTE(v8) = *(v8 + 8);
    v12 = v9;
    v13 = v8;
    return _s13HomeKitEvents25ThermostatAutomationEventV0dE6ResultO2eeoiySbAE_AEtFZ_0(&v14, &v12);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25418E184(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x259C07350](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x259C07350](&v3, 8);
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

uint64_t sub_25418E210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25418E278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25418E300()
{
  result = qword_27F5B9458;
  if (!qword_27F5B9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9458);
  }

  return result;
}

uint64_t sub_25418E354(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL _s13HomeKitEvents25ThermostatAutomationEventV0dE6ResultO2eeoiySbAE_AEtFZ_0(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8) <= 1u)
  {
    if (!*(a1 + 8))
    {
      if (!*(a2 + 8) && vabds_f32(COERCE_FLOAT(*a1), *&v2) < 0.00001)
      {
        LODWORD(v4) = HIDWORD(*a1);
        v2 >>= 32;
        return vabds_f32(v4, *&v2) < 0.00001;
      }

      return 0;
    }

    if (v3 == 1)
    {
LABEL_10:
      LODWORD(v4) = *a1;
      return vabds_f32(v4, *&v2) < 0.00001;
    }

    return 0;
  }

  if (*(a1 + 8) == 2)
  {
    if (v3 == 2)
    {
      goto LABEL_10;
    }

    return 0;
  }

  return v3 == 3 && v2 == 0;
}

uint64_t _s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO16OccupancyDetailsO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B38, &qword_254257030);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v26 - v16;
  v18 = *(v15 + 56);
  sub_25418E210(a1, &v26 - v16, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  sub_25418E210(a2, &v17[v18], type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_25418E210(v17, v12, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_25418F3C0(v12, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
LABEL_6:
    sub_254132E5C(v17, &qword_27F5B9B38, &qword_254257030);
    return 0;
  }

  sub_25418E278(&v17[v18], v8, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  if (sub_25424D8F8())
  {
    v20 = *(v4 + 20);
    v21 = *&v12[v20];
    v22 = *&v12[v20 + 8];
    v23 = &v8[v20];
    v24 = v21 == *v23 && v22 == *(v23 + 1);
    if (v24 || (sub_25424EAB8() & 1) != 0)
    {
      sub_25418F3C0(v8, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
      sub_25418F3C0(v12, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
LABEL_14:
      sub_25418F3C0(v17, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      return 1;
    }
  }

  sub_25418F3C0(v8, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  sub_25418F3C0(v12, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  sub_25418F3C0(v17, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  return 0;
}

unint64_t sub_25418E7A8()
{
  result = qword_27F5B9480;
  if (!qword_27F5B9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9480);
  }

  return result;
}

unint64_t sub_25418E7FC()
{
  result = qword_27F5B9488;
  if (!qword_27F5B9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9488);
  }

  return result;
}

unint64_t sub_25418E850()
{
  result = qword_27F5B9498;
  if (!qword_27F5B9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9498);
  }

  return result;
}

unint64_t sub_25418E8A4()
{
  result = qword_27F5B94D8;
  if (!qword_27F5B94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B94D8);
  }

  return result;
}

unint64_t sub_25418E8F8()
{
  result = qword_27F5B94E0;
  if (!qword_27F5B94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B94E0);
  }

  return result;
}

unint64_t sub_25418E94C()
{
  result = qword_27F5B94E8;
  if (!qword_27F5B94E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B94E8);
  }

  return result;
}

unint64_t sub_25418E9A0()
{
  result = qword_27F5B9518;
  if (!qword_27F5B9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9518);
  }

  return result;
}

unint64_t sub_25418E9F4()
{
  result = qword_27F5B9520;
  if (!qword_27F5B9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9520);
  }

  return result;
}

unint64_t sub_25418EA48()
{
  result = qword_27F5B9548;
  if (!qword_27F5B9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9548);
  }

  return result;
}

unint64_t sub_25418EA9C()
{
  result = qword_27F5B9550;
  if (!qword_27F5B9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9550);
  }

  return result;
}

unint64_t sub_25418EAF0()
{
  result = qword_27F5B9580;
  if (!qword_27F5B9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9580);
  }

  return result;
}

unint64_t sub_25418EB44()
{
  result = qword_27F5B9588;
  if (!qword_27F5B9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9588);
  }

  return result;
}

unint64_t sub_25418EB98()
{
  result = qword_27F5B9590;
  if (!qword_27F5B9590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9590);
  }

  return result;
}

uint64_t _s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v38 - v8;
  v9 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B20, &qword_254257018);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v38 - v25;
  v27 = *(v24 + 56);
  sub_25418E210(a1, &v38 - v25, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  sub_25418E210(a2, &v26[v27], type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_25418E210(v26, v21, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
      if (!swift_getEnumCaseMultiPayload())
      {
        v35 = &v26[v27];
        v36 = v38;
        sub_25418E278(v35, v38, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
        v31 = _s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO16OccupancyDetailsO2eeoiySbAG_AGtFZ_0(v21, v36);
        sub_25418F3C0(v36, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
        v32 = v21;
        goto LABEL_22;
      }

      v19 = v21;
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_25418E210(v26, v19, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = &v26[v27];
        v30 = v39;
        sub_25418E278(v29, v39, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
        v31 = _s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO16OccupancyDetailsO2eeoiySbAG_AGtFZ_0(v19, v30);
        sub_25418F3C0(v30, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
        v32 = v19;
LABEL_22:
        sub_25418F3C0(v32, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
        sub_25418F3C0(v26, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
        return v31 & 1;
      }

LABEL_12:
      sub_25418F3C0(v19, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
LABEL_20:
      sub_254132E5C(v26, &qword_27F5B9B20, &qword_254257018);
      v31 = 0;
      return v31 & 1;
    }

    sub_25418E210(v26, v16, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_20;
    }

    v33 = *v16;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_25418E210(v26, v13, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_20;
      }

      v33 = *v13;
LABEL_19:
      v34 = v33 ^ v26[v27];
      sub_25418F3C0(v26, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
      v31 = v34 ^ 1;
      return v31 & 1;
    }

    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_20;
    }
  }

  sub_25418F3C0(v26, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  v31 = 1;
  return v31 & 1;
}

unint64_t sub_25418F078()
{
  result = qword_27F5B95E8;
  if (!qword_27F5B95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B95E8);
  }

  return result;
}

unint64_t sub_25418F0CC()
{
  result = qword_27F5B95F0;
  if (!qword_27F5B95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B95F0);
  }

  return result;
}

unint64_t sub_25418F120()
{
  result = qword_27F5B95F8;
  if (!qword_27F5B95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B95F8);
  }

  return result;
}

unint64_t sub_25418F174()
{
  result = qword_27F5B9600;
  if (!qword_27F5B9600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9600);
  }

  return result;
}

unint64_t sub_25418F1C8()
{
  result = qword_27F5B9608;
  if (!qword_27F5B9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9608);
  }

  return result;
}

unint64_t sub_25418F21C()
{
  result = qword_27F5B9610;
  if (!qword_27F5B9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9610);
  }

  return result;
}

unint64_t sub_25418F270()
{
  result = qword_27F5B9618;
  if (!qword_27F5B9618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9618);
  }

  return result;
}

unint64_t sub_25418F2C4()
{
  result = qword_27F5B9620;
  if (!qword_27F5B9620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9620);
  }

  return result;
}

unint64_t sub_25418F318()
{
  result = qword_27F5B9628;
  if (!qword_27F5B9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9628);
  }

  return result;
}

unint64_t sub_25418F36C()
{
  result = qword_27F5B9630;
  if (!qword_27F5B9630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9630);
  }

  return result;
}

uint64_t sub_25418F3C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25418F420()
{
  result = qword_27F5B9640;
  if (!qword_27F5B9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9640);
  }

  return result;
}

unint64_t sub_25418F474()
{
  result = qword_27F5B9680;
  if (!qword_27F5B9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9680);
  }

  return result;
}

unint64_t sub_25418F4C8()
{
  result = qword_27F5B9688;
  if (!qword_27F5B9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9688);
  }

  return result;
}

unint64_t sub_25418F51C()
{
  result = qword_27F5B9690;
  if (!qword_27F5B9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9690);
  }

  return result;
}

unint64_t sub_25418F570()
{
  result = qword_27F5B9698;
  if (!qword_27F5B9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9698);
  }

  return result;
}

unint64_t sub_25418F5C4()
{
  result = qword_27F5B96D0;
  if (!qword_27F5B96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B96D0);
  }

  return result;
}

unint64_t sub_25418F618()
{
  result = qword_27F5B96D8;
  if (!qword_27F5B96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B96D8);
  }

  return result;
}

unint64_t sub_25418F66C()
{
  result = qword_27F5B96E0;
  if (!qword_27F5B96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B96E0);
  }

  return result;
}

unint64_t sub_25418F6C0()
{
  result = qword_27F5B96E8;
  if (!qword_27F5B96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B96E8);
  }

  return result;
}

unint64_t sub_25418F714()
{
  result = qword_27F5B96F0;
  if (!qword_27F5B96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B96F0);
  }

  return result;
}

unint64_t sub_25418F788()
{
  result = qword_27F5B9738;
  if (!qword_27F5B9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9738);
  }

  return result;
}

unint64_t sub_25418F7DC()
{
  result = qword_27F5B9748;
  if (!qword_27F5B9748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9748);
  }

  return result;
}

unint64_t sub_25418F830()
{
  result = qword_27F5B9760;
  if (!qword_27F5B9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9760);
  }

  return result;
}

unint64_t sub_25418F978()
{
  result = qword_27F5B9798;
  if (!qword_27F5B9798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9798);
  }

  return result;
}

unint64_t sub_25418FA00()
{
  result = qword_27F5B97B0;
  if (!qword_27F5B97B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B97B0);
  }

  return result;
}

unint64_t sub_25418FA88()
{
  result = qword_27F5B97C8;
  if (!qword_27F5B97C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B97C8);
  }

  return result;
}

unint64_t sub_25418FB10()
{
  result = qword_27F5B97E0;
  if (!qword_27F5B97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B97E0);
  }

  return result;
}

unint64_t sub_25418FC10()
{
  result = qword_27F5B9810;
  if (!qword_27F5B9810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9810);
  }

  return result;
}

uint64_t sub_25418FC94(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25418FCE8(void *a1)
{
  a1[1] = sub_25418E354(&qword_27F5B9830, type metadata accessor for ThermostatAutomationEvent);
  a1[2] = sub_25418E354(&qword_27F5B9838, type metadata accessor for ThermostatAutomationEvent);
  result = sub_25418E354(&qword_27F5B9840, type metadata accessor for ThermostatAutomationEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25418FDDC(void *a1)
{
  a1[1] = sub_25418E354(&qword_27F5B9850, type metadata accessor for ThermostatAutomationEvent);
  a1[2] = sub_25418E354(&qword_27F5B9858, type metadata accessor for ThermostatAutomationEvent);
  result = sub_25418E354(&qword_27F5B9860, type metadata accessor for ThermostatAutomationEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25418FF18(void *a1)
{
  a1[1] = sub_25418E354(&qword_27F5B9720, type metadata accessor for ThermostatAutomationEvent.State);
  a1[2] = sub_25418E354(&qword_27F5B9728, type metadata accessor for ThermostatAutomationEvent.State);
  result = sub_25418E354(&qword_27F5B9870, type metadata accessor for ThermostatAutomationEvent.State);
  a1[3] = result;
  return result;
}

uint64_t sub_25419000C(uint64_t a1)
{
  result = sub_25418E354(&qword_27F5B9868, type metadata accessor for ThermostatAutomationEvent.State);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25419008C()
{
  result = type metadata accessor for AccessoryEventBase(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ThermostatAutomationEvent.State(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2541901A8()
{
  result = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254190258()
{
  v0 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_2541902F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ThermostatAutomationEvent.ThermostatAutomationResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ThermostatAutomationEvent.ThermostatAutomationResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_25419044C(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_254190464(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_254190640()
{
  result = qword_27F5B98D0;
  if (!qword_27F5B98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B98D0);
  }

  return result;
}

unint64_t sub_254190698()
{
  result = qword_27F5B98D8;
  if (!qword_27F5B98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B98D8);
  }

  return result;
}

unint64_t sub_2541906F0()
{
  result = qword_27F5B98E0;
  if (!qword_27F5B98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B98E0);
  }

  return result;
}

unint64_t sub_254190748()
{
  result = qword_27F5B98E8;
  if (!qword_27F5B98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B98E8);
  }

  return result;
}

unint64_t sub_2541907A0()
{
  result = qword_27F5B98F0;
  if (!qword_27F5B98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B98F0);
  }

  return result;
}

unint64_t sub_2541907F8()
{
  result = qword_27F5B98F8;
  if (!qword_27F5B98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B98F8);
  }

  return result;
}

unint64_t sub_254190850()
{
  result = qword_27F5B9900;
  if (!qword_27F5B9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9900);
  }

  return result;
}

unint64_t sub_2541908A8()
{
  result = qword_27F5B9908;
  if (!qword_27F5B9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9908);
  }

  return result;
}

unint64_t sub_254190900()
{
  result = qword_27F5B9910;
  if (!qword_27F5B9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9910);
  }

  return result;
}

unint64_t sub_254190958()
{
  result = qword_27F5B9918;
  if (!qword_27F5B9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9918);
  }

  return result;
}

unint64_t sub_2541909B0()
{
  result = qword_27F5B9920;
  if (!qword_27F5B9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9920);
  }

  return result;
}

unint64_t sub_254190A08()
{
  result = qword_27F5B9928;
  if (!qword_27F5B9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9928);
  }

  return result;
}

unint64_t sub_254190A60()
{
  result = qword_27F5B9930;
  if (!qword_27F5B9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9930);
  }

  return result;
}

unint64_t sub_254190AB8()
{
  result = qword_27F5B9938;
  if (!qword_27F5B9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9938);
  }

  return result;
}

unint64_t sub_254190B10()
{
  result = qword_27F5B9940;
  if (!qword_27F5B9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9940);
  }

  return result;
}

unint64_t sub_254190B68()
{
  result = qword_27F5B9948;
  if (!qword_27F5B9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9948);
  }

  return result;
}

unint64_t sub_254190BC0()
{
  result = qword_27F5B9950;
  if (!qword_27F5B9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9950);
  }

  return result;
}

unint64_t sub_254190C18()
{
  result = qword_27F5B9958;
  if (!qword_27F5B9958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9958);
  }

  return result;
}

unint64_t sub_254190C70()
{
  result = qword_27F5B9960;
  if (!qword_27F5B9960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9960);
  }

  return result;
}

unint64_t sub_254190CC8()
{
  result = qword_27F5B9968;
  if (!qword_27F5B9968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9968);
  }

  return result;
}

unint64_t sub_254190D20()
{
  result = qword_27F5B9970;
  if (!qword_27F5B9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9970);
  }

  return result;
}

unint64_t sub_254190D78()
{
  result = qword_27F5B9978;
  if (!qword_27F5B9978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9978);
  }

  return result;
}

unint64_t sub_254190DD0()
{
  result = qword_27F5B9980;
  if (!qword_27F5B9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9980);
  }

  return result;
}

unint64_t sub_254190E28()
{
  result = qword_27F5B9988;
  if (!qword_27F5B9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9988);
  }

  return result;
}

unint64_t sub_254190E80()
{
  result = qword_27F5B9990;
  if (!qword_27F5B9990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9990);
  }

  return result;
}

unint64_t sub_254190ED8()
{
  result = qword_27F5B9998;
  if (!qword_27F5B9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9998);
  }

  return result;
}

unint64_t sub_254190F30()
{
  result = qword_27F5B99A0;
  if (!qword_27F5B99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99A0);
  }

  return result;
}

unint64_t sub_254190F88()
{
  result = qword_27F5B99A8;
  if (!qword_27F5B99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99A8);
  }

  return result;
}

unint64_t sub_254190FE0()
{
  result = qword_27F5B99B0;
  if (!qword_27F5B99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99B0);
  }

  return result;
}

unint64_t sub_254191038()
{
  result = qword_27F5B99B8;
  if (!qword_27F5B99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99B8);
  }

  return result;
}

unint64_t sub_254191090()
{
  result = qword_27F5B99C0;
  if (!qword_27F5B99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99C0);
  }

  return result;
}

unint64_t sub_2541910E8()
{
  result = qword_27F5B99C8;
  if (!qword_27F5B99C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99C8);
  }

  return result;
}

unint64_t sub_254191140()
{
  result = qword_27F5B99D0;
  if (!qword_27F5B99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99D0);
  }

  return result;
}

unint64_t sub_254191198()
{
  result = qword_27F5B99D8;
  if (!qword_27F5B99D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99D8);
  }

  return result;
}

unint64_t sub_2541911F0()
{
  result = qword_27F5B99E0;
  if (!qword_27F5B99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99E0);
  }

  return result;
}

unint64_t sub_254191248()
{
  result = qword_27F5B99E8;
  if (!qword_27F5B99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99E8);
  }

  return result;
}

unint64_t sub_2541912A0()
{
  result = qword_27F5B99F0;
  if (!qword_27F5B99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99F0);
  }

  return result;
}

unint64_t sub_2541912F8()
{
  result = qword_27F5B99F8;
  if (!qword_27F5B99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99F8);
  }

  return result;
}

unint64_t sub_254191350()
{
  result = qword_27F5B9A00;
  if (!qword_27F5B9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A00);
  }

  return result;
}

unint64_t sub_2541913A8()
{
  result = qword_27F5B9A08;
  if (!qword_27F5B9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A08);
  }

  return result;
}

unint64_t sub_254191400()
{
  result = qword_27F5B9A10;
  if (!qword_27F5B9A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A10);
  }

  return result;
}

unint64_t sub_254191458()
{
  result = qword_27F5B9A18;
  if (!qword_27F5B9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A18);
  }

  return result;
}

unint64_t sub_2541914B0()
{
  result = qword_27F5B9A20;
  if (!qword_27F5B9A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A20);
  }

  return result;
}

unint64_t sub_254191508()
{
  result = qword_27F5B9A28;
  if (!qword_27F5B9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A28);
  }

  return result;
}

unint64_t sub_254191560()
{
  result = qword_27F5B9A30;
  if (!qword_27F5B9A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A30);
  }

  return result;
}

unint64_t sub_2541915B8()
{
  result = qword_27F5B9A38;
  if (!qword_27F5B9A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A38);
  }

  return result;
}

unint64_t sub_254191610()
{
  result = qword_27F5B9A40;
  if (!qword_27F5B9A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A40);
  }

  return result;
}

unint64_t sub_254191668()
{
  result = qword_27F5B9A48;
  if (!qword_27F5B9A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A48);
  }

  return result;
}

unint64_t sub_2541916C0()
{
  result = qword_27F5B9A50;
  if (!qword_27F5B9A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A50);
  }

  return result;
}

unint64_t sub_254191718()
{
  result = qword_27F5B9A58;
  if (!qword_27F5B9A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A58);
  }

  return result;
}

unint64_t sub_254191770()
{
  result = qword_27F5B9A60;
  if (!qword_27F5B9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A60);
  }

  return result;
}

unint64_t sub_2541917C8()
{
  result = qword_27F5B9A68;
  if (!qword_27F5B9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A68);
  }

  return result;
}

unint64_t sub_254191820()
{
  result = qword_27F5B9A70;
  if (!qword_27F5B9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A70);
  }

  return result;
}

unint64_t sub_254191878()
{
  result = qword_27F5B9A78;
  if (!qword_27F5B9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A78);
  }

  return result;
}

unint64_t sub_2541918D0()
{
  result = qword_27F5B9A80;
  if (!qword_27F5B9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A80);
  }

  return result;
}

unint64_t sub_254191928()
{
  result = qword_27F5B9A88;
  if (!qword_27F5B9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A88);
  }

  return result;
}

unint64_t sub_254191980()
{
  result = qword_27F5B9A90;
  if (!qword_27F5B9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A90);
  }

  return result;
}

unint64_t sub_2541919D8()
{
  result = qword_27F5B9A98;
  if (!qword_27F5B9A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A98);
  }

  return result;
}

unint64_t sub_254191A30()
{
  result = qword_27F5B9AA0;
  if (!qword_27F5B9AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AA0);
  }

  return result;
}

unint64_t sub_254191A88()
{
  result = qword_27F5B9AA8;
  if (!qword_27F5B9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AA8);
  }

  return result;
}

unint64_t sub_254191AE0()
{
  result = qword_27F5B9AB0;
  if (!qword_27F5B9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AB0);
  }

  return result;
}

unint64_t sub_254191B38()
{
  result = qword_27F5B9AB8;
  if (!qword_27F5B9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AB8);
  }

  return result;
}

unint64_t sub_254191B90()
{
  result = qword_27F5B9AC0;
  if (!qword_27F5B9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AC0);
  }

  return result;
}

unint64_t sub_254191BE8()
{
  result = qword_27F5B9AC8;
  if (!qword_27F5B9AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AC8);
  }

  return result;
}

unint64_t sub_254191C40()
{
  result = qword_27F5B9AD0;
  if (!qword_27F5B9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AD0);
  }

  return result;
}

unint64_t sub_254191C98()
{
  result = qword_27F5B9AD8;
  if (!qword_27F5B9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AD8);
  }

  return result;
}

unint64_t sub_254191CF0()
{
  result = qword_27F5B9AE0;
  if (!qword_27F5B9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AE0);
  }

  return result;
}

unint64_t sub_254191D48()
{
  result = qword_27F5B9AE8;
  if (!qword_27F5B9AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AE8);
  }

  return result;
}

unint64_t sub_254191DA0()
{
  result = qword_27F5B9AF0;
  if (!qword_27F5B9AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AF0);
  }

  return result;
}

unint64_t sub_254191DF8()
{
  result = qword_27F5B9AF8;
  if (!qword_27F5B9AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AF8);
  }

  return result;
}

unint64_t sub_254191E50()
{
  result = qword_27F5B9B00;
  if (!qword_27F5B9B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9B00);
  }

  return result;
}

unint64_t sub_254191EA8()
{
  result = qword_27F5B9B08;
  if (!qword_27F5B9B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9B08);
  }

  return result;
}

unint64_t sub_254191F00()
{
  result = qword_27F5B9B10;
  if (!qword_27F5B9B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9B10);
  }

  return result;
}

uint64_t sub_254191F54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646569707563636FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69707563636F6E75 && a2 == 0xEA00000000006465 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7065656C73 && a2 == 0xE500000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636176 && a2 == 0xE800000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684828008 && a2 == 0xE400000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002542507A0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_25424EAB8();

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

uint64_t sub_25419215C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6710895 && a2 == 0xE300000000000000;
  if (v3 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F546C6F6F63 && a2 == 0xE600000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F5474616568 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25424EAB8();

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

int64_t sub_2541922E4(int64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    v2 = MEMORY[0x277D84F90];
    if (!result)
    {
LABEL_13:
      v13 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B58, &qword_254257090);
      sub_2541924BC();
      return sub_25424DE68();
    }

    v13 = MEMORY[0x277D84F90];
    result = sub_254148238(0, result, 0);
    v3 = 0;
    v2 = v13;
    while (("celsiusCoolingSetpoint" & 0x2F00000000000000) != 0x2000000000000000)
    {
      result = sub_25424DD98();
      if (result < 0)
      {
        goto LABEL_15;
      }

      v4 = result;
      if (!result)
      {
        goto LABEL_16;
      }

      v12 = 0;
      MEMORY[0x259C07350](&v12, 8);
      if (v4 > v12 * v4)
      {
        v5 = -v4 % v4;
        while (v5 > v12 * v4)
        {
          v12 = 0;
          MEMORY[0x259C07350](&v12, 8);
        }
      }

      sub_25424DDC8();
      result = sub_25424DE58();
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = result;
        v11 = v6;
        sub_254148238((v7 > 1), v8 + 1, 1);
        v6 = v11;
        result = v10;
        v2 = v13;
      }

      ++v3;
      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = result;
      *(v9 + 40) = v6;
      if (v3 == v1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2541924BC()
{
  result = qword_27F5B9B60;
  if (!qword_27F5B9B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B9B58, &qword_254257090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9B60);
  }

  return result;
}

void sub_254192568()
{
  if (!qword_27F5B9B78)
  {
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5B9B78);
    }
  }
}

uint64_t sub_254192620(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9BA0, &qword_254257220);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541943B4();
  sub_25424EC78();
  v14[15] = 0;
  sub_25424D8B8();
  sub_25419434C(&qword_27F5B8C78, MEMORY[0x277CC9578]);
  sub_25424EA18();
  if (!v2)
  {
    v11 = type metadata accessor for EventBase.DocumentLayout(0);
    v12 = *(v11 + 20);
    v14[14] = 1;
    sub_25424D948();
    sub_25419434C(&qword_27F5B89D8, MEMORY[0x277CC95F0]);
    sub_25424EA18();
    v14[13] = *(v3 + *(v11 + 24));
    v14[12] = 2;
    sub_2541406B4();
    sub_25424EA18();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_254192868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_25424D8B8();
  v28 = *(v34 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B90, &qword_254257218);
  v29 = *(v33 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v33);
  v13 = &v25 - v12;
  v14 = type metadata accessor for EventBase.DocumentLayout(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541943B4();
  sub_25424EC68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v26 = a1;
  v19 = v17;
  v20 = v31;
  v22 = v29;
  v21 = v30;
  v38 = 0;
  sub_25419434C(&qword_27F5B8CA8, MEMORY[0x277CC9578]);
  sub_25424E978();
  (*(v28 + 32))(v19, v32, v34);
  v37 = 1;
  sub_25419434C(&qword_27F5B89F0, MEMORY[0x277CC95F0]);
  sub_25424E978();
  (*(v20 + 32))(v19 + *(v25 + 20), v8, v21);
  v35 = 2;
  sub_2541407C8();
  sub_25424E978();
  v23 = v26;
  (*(v22 + 8))(v13, v33);
  *(v19 + *(v25 + 24)) = v36;
  sub_2541944DC(v19, v27, type metadata accessor for EventBase.DocumentLayout);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_254194428(v19, type metadata accessor for EventBase.DocumentLayout);
}

uint64_t sub_254192D40(char *a1, char *a2)
{
  if (qword_254257550[*a1] == qword_254257550[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25424EAB8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_254192DA8()
{
  v1 = *v0;
  sub_25424EBD8();
  v2 = qword_254257550[v1];
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254192E04()
{
  v1 = qword_254257550[*v0];
  sub_25424DD88();
}

uint64_t sub_254192E44()
{
  v1 = *v0;
  sub_25424EBD8();
  v2 = qword_254257550[v1];
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254192E9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_254194B2C();
  *a2 = result;
  return result;
}

uint64_t sub_254192F00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254194B2C();
  *a1 = result;
  return result;
}

uint64_t sub_254192F28(uint64_t a1)
{
  v2 = sub_2541943B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254192F64(uint64_t a1)
{
  v2 = sub_2541943B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254192FD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - v7;
  v9 = sub_25424E848();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EventBase.DocumentLayout(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v43);
  sub_254192868(v43, v17);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v14;
  v39 = 0;
  v44 = a2;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_25424EC58();
  sub_25424E838();
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    if (*(v20 + 16) && (v21 = sub_2542208F8(v13), (v22 & 1) != 0))
    {
      sub_25414076C(*(v20 + 56) + 32 * v21, v43);
      (*(v10 + 8))(v13, v9);

      v23 = swift_dynamicCast();
      if (v23)
      {
        v24 = v40;
      }

      else
      {
        v24 = 15;
      }

      if (v23)
      {
        v25 = v41;
      }

      else
      {
        v25 = 0;
      }

      v37 = v25;
      if (v23)
      {
        v26 = v42;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {

      (*(v10 + 8))(v13, v9);
      v37 = 0;
      v26 = 0;
      v24 = 15;
    }

    v27 = sub_25424D8B8();
    v28 = v44;
    (*(*(v27 - 8) + 16))(v44, v17, v27);
    v29 = v38;
    v30 = *(v38 + 20);
    v31 = type metadata accessor for EventBase(0);
    v32 = v31[5];
    v33 = sub_25424D948();
    (*(*(v33 - 8) + 16))(v28 + v32, &v17[v30], v33);
    LOBYTE(v30) = v17[*(v29 + 24)];
    sub_254194428(v17, type metadata accessor for EventBase.DocumentLayout);
    *(v28 + v31[6]) = v30;
    v34 = (v28 + v31[7]);
    v35 = v37;
    *v34 = v24;
    v34[1] = v35;
    v34[2] = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t sub_2541933F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9BB8, &qword_254257230);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254194488();
  sub_25424EC78();
  v14[15] = 0;
  sub_25424D8B8();
  sub_25419434C(&qword_27F5B8C78, MEMORY[0x277CC9578]);
  sub_25424EA18();
  if (!v2)
  {
    v11 = type metadata accessor for EventBaseLegacy.DocumentLayout(0);
    v12 = *(v11 + 20);
    v14[14] = 1;
    sub_25424D948();
    sub_25419434C(&qword_27F5B89D8, MEMORY[0x277CC95F0]);
    sub_25424EA18();
    v14[13] = *(v3 + *(v11 + 24));
    v14[12] = 2;
    sub_2541406B4();
    sub_25424EA18();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_254193638@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_25424D8B8();
  v28 = *(v34 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9BA8, &qword_254257228);
  v29 = *(v33 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v33);
  v13 = &v25 - v12;
  v14 = type metadata accessor for EventBaseLegacy.DocumentLayout(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254194488();
  sub_25424EC68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v26 = a1;
  v19 = v17;
  v20 = v31;
  v22 = v29;
  v21 = v30;
  v38 = 0;
  sub_25419434C(&qword_27F5B8CA8, MEMORY[0x277CC9578]);
  sub_25424E978();
  (*(v28 + 32))(v19, v32, v34);
  v37 = 1;
  sub_25419434C(&qword_27F5B89F0, MEMORY[0x277CC95F0]);
  sub_25424E978();
  (*(v20 + 32))(v19 + *(v25 + 20), v8, v21);
  v35 = 2;
  sub_2541407C8();
  sub_25424E978();
  v23 = v26;
  (*(v22 + 8))(v13, v33);
  *(v19 + *(v25 + 24)) = v36;
  sub_2541944DC(v19, v27, type metadata accessor for EventBaseLegacy.DocumentLayout);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_254194428(v19, type metadata accessor for EventBaseLegacy.DocumentLayout);
}

uint64_t sub_254193B10()
{
  v1 = 0x6E656449656D6F68;
  if (*v0 != 1)
  {
    v1 = 0x79726F6765746163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_254193B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254194B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254193B98(uint64_t a1)
{
  v2 = sub_254194488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254193BD4(uint64_t a1)
{
  v2 = sub_254194488();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254193C40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - v7;
  v9 = sub_25424E848();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EventBaseLegacy.DocumentLayout(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v47);
  sub_254193638(v47, v17);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v48 = v10;
  v18 = *(v14 + 24);
  if (!sub_2541DA534(v17[v18], &unk_2866331D8))
  {
    v31 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v47[0] = 0;
    v47[1] = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0xD000000000000012, 0x80000002542503A0);
    MEMORY[0x259C05CA0](0x736142746E657645, 0xEF79636167654C65);
    MEMORY[0x259C05CA0](0xD000000000000017, 0x8000000254250840);
    v44 = v17[v18];
    sub_25424E7D8();
    sub_25424E6F8();
    swift_allocError();
    static DecodingError.dataCorruptedError<A>(_:_:)(v32);

    swift_willThrow();
    sub_254194428(v17, type metadata accessor for EventBaseLegacy.DocumentLayout);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = 0;
  v41 = v18;
  v19 = a1;
  v21 = a1[3];
  v20 = a1[4];
  v42 = a2;
  v43 = v19;
  __swift_project_boxed_opaque_existential_1(v19, v21);
  v22 = sub_25424EC58();
  sub_25424E838();
  v23 = v48;
  result = (*(v48 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v23 + 32))(v13, v8, v9);
    if (*(v22 + 16) && (v25 = sub_2542208F8(v13), (v26 & 1) != 0))
    {
      sub_25414076C(*(v22 + 56) + 32 * v25, v47);
      (*(v23 + 8))(v13, v9);

      v27 = swift_dynamicCast();
      if (v27)
      {
        v28 = v44;
      }

      else
      {
        v28 = 15;
      }

      if (v27)
      {
        v29 = v45;
      }

      else
      {
        v29 = 0;
      }

      if (v27)
      {
        v30 = v46;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {

      (*(v23 + 8))(v13, v9);
      v29 = 0;
      v30 = 0;
      v28 = 15;
    }

    v33 = sub_25424D8B8();
    v34 = v42;
    (*(*(v33 - 8) + 16))(v42, v17, v33);
    v35 = *(v14 + 20);
    v36 = type metadata accessor for EventBaseLegacy(0);
    v37 = v36[5];
    v38 = sub_25424D948();
    (*(*(v38 - 8) + 16))(v34 + v37, &v17[v35], v38);
    LOBYTE(v35) = v17[v41];
    sub_254194428(v17, type metadata accessor for EventBaseLegacy.DocumentLayout);
    *(v34 + v36[6]) = v35;
    v39 = (v34 + v36[7]);
    *v39 = v28;
    v39[1] = v29;
    v39[2] = v30;
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  return result;
}

uint64_t sub_2541941AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v22 = a6;
  v9 = v6;
  v11 = a4(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v16 = sub_25424D8B8();
  (*(*(v16 - 8) + 16))(v15, v9, v16);
  v17 = *(a2 + 20);
  v18 = *(v12 + 28);
  v19 = sub_25424D948();
  (*(*(v19 - 8) + 16))(&v15[v18], v9 + v17, v19);
  v15[*(v12 + 32)] = *(v9 + *(a2 + 24));
  a5(a1);
  return sub_254194428(v15, v22);
}

uint64_t sub_25419434C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2541943B4()
{
  result = qword_27F5B9B98;
  if (!qword_27F5B9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9B98);
  }

  return result;
}

uint64_t sub_254194428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_254194488()
{
  result = qword_27F5B9BB0;
  if (!qword_27F5B9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9BB0);
  }

  return result;
}

uint64_t sub_2541944DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541945B4()
{
  result = sub_25424D8B8();
  if (v1 <= 0x3F)
  {
    result = sub_25424D948();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D8B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_25424D948();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 7)
      {
        return v14 - 6;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25424D8B8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25424D948();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 6;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_254194878()
{
  sub_25424D8B8();
  if (v0 <= 0x3F)
  {
    sub_25424D948();
    if (v1 <= 0x3F)
    {
      sub_254192568();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_254194920()
{
  result = qword_27F5B9BF0;
  if (!qword_27F5B9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9BF0);
  }

  return result;
}

unint64_t sub_254194978()
{
  result = qword_27F5B9BF8;
  if (!qword_27F5B9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9BF8);
  }

  return result;
}

unint64_t sub_2541949D0()
{
  result = qword_27F5B9C00;
  if (!qword_27F5B9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C00);
  }

  return result;
}

unint64_t sub_254194A28()
{
  result = qword_27F5B9C08;
  if (!qword_27F5B9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C08);
  }

  return result;
}

unint64_t sub_254194A80()
{
  result = qword_27F5B9C10;
  if (!qword_27F5B9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C10);
  }

  return result;
}

unint64_t sub_254194AD8()
{
  result = qword_27F5B9C18;
  if (!qword_27F5B9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C18);
  }

  return result;
}

uint64_t sub_254194B2C()
{
  v0 = sub_25424E8E8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_254194B78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656449656D6F68 && a2 == 0xEE00726569666974 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_25424EAB8();

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

HomeKitEvents::HomeActivityState_optional __swiftcall HomeActivityState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t HomeActivityStateEvent.State.init(activityState:isActivityStateHoldActive:activityStateHoldEndDate:)@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  a4[1] = a2;
  v6 = type metadata accessor for HomeActivityStateEvent.State(0);
  return sub_25417E6C8(a3, &a4[*(v6 + 24)], &unk_27F5BA1B0, qword_2542544A0);
}

unint64_t static HomeActivityStateEvent.State.randomState.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v14 = 0;
  MEMORY[0x259C07350](&v14, 8);
  v6 = v14;
  if ((v14 & 0x20000) != 0)
  {
    v7 = 1;
  }

  else
  {
    sub_25424D858();
    v7 = 0;
  }

  v8 = sub_25424D8B8();
  (*(*(v8 - 8) + 56))(v5, v7, 1, v8);
  result = sub_25418E184(8uLL);
  if (result > 7)
  {
    __break(1u);
  }

  else
  {
    v10 = (*&v6 & 0x20000) == 0;
    v11 = byte_286633200[result + 32];
    v12 = type metadata accessor for HomeActivityStateEvent.State(0);
    result = sub_25417E6C8(v5, &a1[*(v12 + 24)], &unk_27F5BA1B0, qword_2542544A0);
    *a1 = v11;
    a1[1] = v10;
  }

  return result;
}

uint64_t sub_254194FAC()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7974697669746361;
  }
}

uint64_t sub_254195020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25419890C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254195048(uint64_t a1)
{
  v2 = sub_254197EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254195084(uint64_t a1)
{
  v2 = sub_254197EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeActivityStateEvent.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9C20, &qword_2542575A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254197EB0();
  sub_25424EC78();
  v14[15] = *v3;
  v14[14] = 0;
  sub_254197F04();
  sub_25424EA18();
  if (!v2)
  {
    v12 = v3[1];
    v14[13] = 1;
    sub_25424E9B8();
    v13 = *(type metadata accessor for HomeActivityStateEvent.State(0) + 24);
    v14[12] = 2;
    sub_25424D8B8();
    sub_254197F58(&qword_27F5B8C78, MEMORY[0x277CC9578]);
    sub_25424E9C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HomeActivityStateEvent.State.hash(into:)()
{
  v1 = sub_25424D8B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  MEMORY[0x259C06AA0](*v0);
  if (v0[1] != 2)
  {
    sub_25424EBF8();
  }

  sub_25424EBF8();
  v10 = type metadata accessor for HomeActivityStateEvent.State(0);
  sub_254132DF4(&v0[*(v10 + 24)], v9, &unk_27F5BA1B0, qword_2542544A0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_25424EBF8();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_25424EBF8();
  sub_254197F58(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  return (*(v2 + 8))(v5, v1);
}

uint64_t HomeActivityStateEvent.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9C38, &unk_2542575B0);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = &v22 - v10;
  v12 = type metadata accessor for HomeActivityStateEvent.State(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_254197EB0();
  sub_25424EC68();
  if (!v2)
  {
    v18 = v7;
    v28 = 0;
    sub_254197FA0();
    sub_25424E978();
    *v15 = v29;
    v27 = 1;
    v19 = v8;
    v15[1] = sub_25424E918();
    sub_25424D8B8();
    v26 = 2;
    sub_254197F58(&qword_27F5B8CA8, MEMORY[0x277CC9578]);
    v20 = v24;
    sub_25424E928();
    (*(v19 + 8))(v11, v20);
    sub_25417E6C8(v18, &v15[*(v12 + 24)], &unk_27F5BA1B0, qword_2542544A0);
    sub_254197FF4(v15, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t HomeActivityStateEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomeActivityStateEvent.homeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventBase(0) + 20);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HomeActivityStateEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t HomeActivityStateEvent.hash(into:)()
{
  v1 = v0;
  v2 = sub_25424D948();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v28 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v29 = v26 - v7;
  v8 = sub_25424D8B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v27 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v26 - v14;
  v26[0] = sub_254197F58(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v16 = type metadata accessor for EventBase(0);
  v17 = *(v16 + 20);
  v26[1] = sub_254197F58(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254257C80[*(v1 + *(v16 + 24))]);
  v18 = type metadata accessor for HomeActivityStateEvent(0);
  v19 = (v1 + *(v18 + 20));
  MEMORY[0x259C06AA0](*v19);
  if (v19[1] != 2)
  {
    sub_25424EBF8();
  }

  sub_25424EBF8();
  v20 = type metadata accessor for HomeActivityStateEvent.State(0);
  sub_254132DF4(&v19[*(v20 + 24)], v15, &unk_27F5BA1B0, qword_2542544A0);
  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v21 = v27;
    (*(v9 + 32))(v27, v15, v8);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v9 + 8))(v21, v8);
  }

  v22 = v29;
  sub_254132DF4(v1 + *(v18 + 24), v29, &unk_27F5B8E50, &qword_254254390);
  v23 = v30;
  if ((*(v30 + 48))(v22, 1, v2) == 1)
  {
    return sub_25424EBF8();
  }

  v25 = v28;
  (*(v23 + 32))(v28, v22, v2);
  sub_25424EBF8();
  sub_25424DC28();
  return (*(v23 + 8))(v25, v2);
}

uint64_t sub_254195F10(void (*a1)(_BYTE *))
{
  sub_25424EBD8();
  a1(v3);
  return sub_25424EC28();
}

uint64_t sub_254195F58@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventBase(0) + 20);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_254195FEC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_25424EBD8();
  a3(v5);
  return sub_25424EC28();
}

uint64_t sub_254196050(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_25424EBD8();
  a4(v6);
  return sub_25424EC28();
}

uint64_t HomeActivityStateEvent.State.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - v3;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_25424E688();
  MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254250860);
  v11 = *v0;
  v5 = sub_25424DD08();
  MEMORY[0x259C05CA0](v5);

  MEMORY[0x259C05CA0](0x41646C6F48736920, 0xEF203A6576697463);
  v11 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9C48, &qword_2542575C0);
  v6 = sub_25424DD08();
  MEMORY[0x259C05CA0](v6);

  MEMORY[0x259C05CA0](0x646E45646C6F6820, 0xEE00203A65746144);
  v7 = type metadata accessor for HomeActivityStateEvent.State(0);
  sub_254132DF4(&v0[*(v7 + 24)], v4, &unk_27F5BA1B0, qword_2542544A0);
  v8 = sub_25424DD08();
  MEMORY[0x259C05CA0](v8);

  MEMORY[0x259C05CA0](41, 0xE100000000000000);
  return v12;
}

uint64_t HomeActivityStateEvent.init(date:homeIdentifier:state:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25424D8B8();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for EventBase(0);
  v12 = v11[5];
  v13 = sub_25424D948();
  (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  *(a5 + v11[6]) = 4;
  v14 = (a5 + v11[7]);
  *v14 = 15;
  v15 = type metadata accessor for HomeActivityStateEvent(0);
  v14[1] = 0;
  v14[2] = 0;
  sub_254197FF4(a3, a5 + *(v15 + 20));
  return sub_25417E6C8(a4, a5 + *(v15 + 24), &unk_27F5B8E50, &qword_254254390);
}

uint64_t sub_254196388(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9D00, &qword_254257AF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254198A90();
  sub_25424EC78();
  v22 = 0;
  sub_25424D8B8();
  sub_254197F58(&qword_27F5B8C78, MEMORY[0x277CC9578]);
  sub_25424EA18();
  if (!v2)
  {
    v11 = type metadata accessor for HomeActivityStateEvent.DocumentLayout(0);
    v12 = v11[5];
    v21 = 1;
    sub_25424D948();
    sub_254197F58(&qword_27F5B89D8, MEMORY[0x277CC95F0]);
    sub_25424EA18();
    v20 = *(v3 + v11[6]);
    v19 = 2;
    sub_2541406B4();
    sub_25424EA18();
    v13 = v11[7];
    v18 = 3;
    sub_25424E9C8();
    v14 = v11[8];
    v17 = 4;
    type metadata accessor for HomeActivityStateEvent.State(0);
    sub_254197F58(&qword_27F5B9D10, type metadata accessor for HomeActivityStateEvent.State);
    sub_25424EA18();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_254196680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = type metadata accessor for HomeActivityStateEvent.State(0);
  v3 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v38 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = v35 - v7;
  v40 = sub_25424D948();
  v42 = *(v40 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25424D8B8();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v44 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9D18, &qword_254257AF8);
  v41 = *(v46 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v16 = v35 - v15;
  v17 = type metadata accessor for HomeActivityStateEvent.DocumentLayout(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254198A90();
  v45 = v16;
  v22 = v47;
  sub_25424EC68();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = a1;
  v23 = v42;
  v24 = v43;
  v25 = v40;
  v53 = 0;
  sub_254197F58(&qword_27F5B8CA8, MEMORY[0x277CC9578]);
  sub_25424E978();
  v26 = *(v24 + 32);
  v27 = v20;
  v28 = v44;
  v44 = v11;
  v26(v20, v28, v11);
  v52 = 1;
  sub_254197F58(&qword_27F5B89F0, MEMORY[0x277CC95F0]);
  sub_25424E978();
  v29 = v17;
  (*(v23 + 32))(v27 + *(v17 + 20), v10, v25);
  v50 = 2;
  sub_2541407C8();
  sub_25424E978();
  v35[1] = 0;
  *(v27 + *(v17 + 24)) = v51;
  v49 = 3;
  v30 = v39;
  sub_25424E928();
  v31 = v47;
  v32 = v41;
  sub_25417E6C8(v30, v27 + *(v29 + 28), &unk_27F5B8E50, &qword_254254390);
  v48 = 4;
  sub_254197F58(&qword_27F5B9D20, type metadata accessor for HomeActivityStateEvent.State);
  v33 = v38;
  sub_25424E978();
  (*(v32 + 8))(v45, v46);
  sub_254197FF4(v33, v27 + *(v29 + 32));
  sub_254198AE4(v27, v36, type metadata accessor for HomeActivityStateEvent.DocumentLayout);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_254198098(v27);
}

uint64_t sub_254196D34()
{
  v1 = *v0;
  sub_25424EBD8();
  v2 = qword_254257C58[v1];
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254196D90()
{
  v1 = qword_254257C58[*v0];
  sub_25424DD88();
}

uint64_t sub_254196DD0()
{
  v1 = *v0;
  sub_25424EBD8();
  v2 = qword_254257C58[v1];
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254196E28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_254198DA4();
  *a2 = result;
  return result;
}

uint64_t sub_254196E8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254198DA4();
  *a1 = result;
  return result;
}

uint64_t sub_254196EC0(uint64_t a1)
{
  v2 = sub_254198A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254196EFC(uint64_t a1)
{
  v2 = sub_254198A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeActivityStateEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for HomeActivityStateEvent.DocumentLayout(0);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v20);
  sub_254196680(v20, v8);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    v10 = sub_25424D8B8();
    (*(*(v10 - 8) + 16))(a2, v8, v10);
    v11 = v5[5];
    v12 = type metadata accessor for EventBase(0);
    v13 = v12[5];
    v14 = sub_25424D948();
    (*(*(v14 - 8) + 16))(a2 + v13, &v8[v11], v14);
    v15 = v5[7];
    v16 = v8[v5[6]];
    v17 = type metadata accessor for HomeActivityStateEvent(0);
    sub_254132DF4(&v8[v15], a2 + *(v17 + 24), &unk_27F5B8E50, &qword_254254390);
    sub_254198AE4(&v8[v5[8]], a2 + *(v17 + 20), type metadata accessor for HomeActivityStateEvent.State);
    result = sub_254198098(v8);
    *(a2 + v12[6]) = v16;
    v18 = (a2 + v12[7]);
    v18[1] = 0;
    v18[2] = 0;
    *v18 = 15;
  }

  return result;
}

uint64_t HomeActivityStateEvent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeActivityStateEvent.DocumentLayout(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25424D8B8();
  (*(*(v9 - 8) + 16))(v8, v2, v9);
  v10 = type metadata accessor for EventBase(0);
  v11 = *(v10 + 20);
  v12 = v5[7];
  v13 = sub_25424D948();
  (*(*(v13 - 8) + 16))(&v8[v12], v2 + v11, v13);
  LOBYTE(v11) = *(v2 + *(v10 + 24));
  v14 = type metadata accessor for HomeActivityStateEvent(0);
  sub_254132DF4(v2 + *(v14 + 24), &v8[v5[9]], &unk_27F5B8E50, &qword_254254390);
  sub_254198AE4(v2 + *(v14 + 20), &v8[v5[10]], type metadata accessor for HomeActivityStateEvent.State);
  v8[v5[8]] = v11;
  sub_254196388(a1);
  return sub_254198098(v8);
}

uint64_t sub_2541972F0(void *a1, uint64_t a2)
{
  v4 = v2;
  v6 = type metadata accessor for HomeActivityStateEvent.DocumentLayout(0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25424D8B8();
  (*(*(v11 - 8) + 16))(v10, v4, v11);
  v12 = type metadata accessor for EventBase(0);
  v13 = *(v12 + 20);
  v14 = v7[7];
  v15 = sub_25424D948();
  (*(*(v15 - 8) + 16))(&v10[v14], v4 + v13, v15);
  LOBYTE(v12) = *(v4 + *(v12 + 24));
  sub_254132DF4(v4 + *(a2 + 24), &v10[v7[9]], &unk_27F5B8E50, &qword_254254390);
  sub_254198AE4(v4 + *(a2 + 20), &v10[v7[10]], type metadata accessor for HomeActivityStateEvent.State);
  v10[v7[8]] = v12;
  sub_254196388(a1);
  return sub_254198098(v10);
}

uint64_t HomeActivityStateEvent.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - v4;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_25424E688();
  MEMORY[0x259C05CA0](32, 0xE100000000000000);
  v6 = type metadata accessor for HomeActivityStateEvent(0);
  v18 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9C50, &qword_2542575C8);
  v7 = sub_25424DD08();
  MEMORY[0x259C05CA0](v7);

  MEMORY[0x259C05CA0](0x74617473207B203ALL, 0xEB00000000203A65);
  v8 = v0 + *(v6 + 20);
  v9 = HomeActivityStateEvent.State.description.getter();
  MEMORY[0x259C05CA0](v9);

  MEMORY[0x259C05CA0](0x6F6765746163202CLL, 0xEC000000203A7972);
  v10 = type metadata accessor for EventBase(0);
  LOBYTE(v18) = *(v1 + *(v10 + 24));
  v11 = sub_25424DD08();
  MEMORY[0x259C05CA0](v11);

  MEMORY[0x259C05CA0](0x203A65746164202CLL, 0xE800000000000000);
  sub_25424D8B8();
  sub_254197F58(&qword_27F5B9208, MEMORY[0x277CC9578]);
  v12 = sub_25424EA58();
  MEMORY[0x259C05CA0](v12);

  MEMORY[0x259C05CA0](0x203A656D6F6820, 0xE700000000000000);
  v13 = *(v10 + 20);
  sub_25424D948();
  sub_254197F58(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
  v14 = sub_25424EA58();
  MEMORY[0x259C05CA0](v14);

  MEMORY[0x259C05CA0](0x203A72657375202CLL, 0xE800000000000000);
  sub_254132DF4(v1 + *(v6 + 24), v5, &unk_27F5B8E50, &qword_254254390);
  v15 = sub_25424DD08();
  MEMORY[0x259C05CA0](v15);

  MEMORY[0x259C05CA0](125, 0xE100000000000000);
  return v19;
}

BOOL _s13HomeKitEvents0A18ActivityStateEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9D28, &qword_254257B00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for EventBase(0);
  v18 = *(v17 + 20);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  if (qword_254257C80[*(a1 + *(v17 + 24))] != qword_254257C80[*(a2 + *(v17 + 24))])
  {
    return 0;
  }

  v19 = type metadata accessor for HomeActivityStateEvent(0);
  if (!_s13HomeKitEvents0A18ActivityStateEventV0E0V2eeoiySbAE_AEtFZ_0((a1 + *(v19 + 20)), (a2 + *(v19 + 20))))
  {
    return 0;
  }

  v20 = *(v19 + 24);
  v21 = *(v13 + 48);
  sub_254132DF4(a1 + v20, v16, &unk_27F5B8E50, &qword_254254390);
  sub_254132DF4(a2 + v20, &v16[v21], &unk_27F5B8E50, &qword_254254390);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_254132E5C(v16, &unk_27F5B8E50, &qword_254254390);
      return 1;
    }

    goto LABEL_10;
  }

  sub_254132DF4(v16, v12, &unk_27F5B8E50, &qword_254254390);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_10:
    sub_254132E5C(v16, &qword_27F5B9D28, &qword_254257B00);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v21], v4);
  sub_254197F58(&qword_27F5B9090, MEMORY[0x277CC95F0]);
  v24 = sub_25424DC98();
  v25 = *(v5 + 8);
  v25(v8, v4);
  v25(v12, v4);
  sub_254132E5C(v16, &unk_27F5B8E50, &qword_254254390);
  return (v24 & 1) != 0;
}

BOOL _s13HomeKitEvents0A18ActivityStateEventV0E0V2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_25424D8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9D30, &qword_254257B08);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = a1[1];
  v19 = a2[1];
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }

LABEL_7:
    v21 = v15;
    v22 = *(type metadata accessor for HomeActivityStateEvent.State(0) + 24);
    v23 = *(v21 + 48);
    sub_254132DF4(&a1[v22], v17, &unk_27F5BA1B0, qword_2542544A0);
    sub_254132DF4(&a2[v22], &v17[v23], &unk_27F5BA1B0, qword_2542544A0);
    v24 = *(v5 + 48);
    if (v24(v17, 1, v4) == 1)
    {
      if (v24(&v17[v23], 1, v4) == 1)
      {
        sub_254132E5C(v17, &unk_27F5BA1B0, qword_2542544A0);
        return 1;
      }
    }

    else
    {
      sub_254132DF4(v17, v12, &unk_27F5BA1B0, qword_2542544A0);
      if (v24(&v17[v23], 1, v4) != 1)
      {
        (*(v5 + 32))(v8, &v17[v23], v4);
        sub_254197F58(&qword_27F5B9138, MEMORY[0x277CC9578]);
        v26 = sub_25424DC98();
        v27 = *(v5 + 8);
        v27(v8, v4);
        v27(v12, v4);
        sub_254132E5C(v17, &unk_27F5BA1B0, qword_2542544A0);
        return (v26 & 1) != 0;
      }

      (*(v5 + 8))(v12, v4);
    }

    sub_254132E5C(v17, &qword_27F5B9D30, &qword_254257B08);
    return 0;
  }

  v20 = 0;
  if (v19 != 2 && ((v19 ^ v18) & 1) == 0)
  {
    goto LABEL_7;
  }

  return v20;
}

unint64_t sub_254197EB0()
{
  result = qword_27F5B9C28;
  if (!qword_27F5B9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C28);
  }

  return result;
}

unint64_t sub_254197F04()
{
  result = qword_27F5B9C30;
  if (!qword_27F5B9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C30);
  }

  return result;
}

uint64_t sub_254197F58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_254197FA0()
{
  result = qword_27F5B9C40;
  if (!qword_27F5B9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C40);
  }

  return result;
}

uint64_t sub_254197FF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeActivityStateEvent.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254198098(uint64_t a1)
{
  v2 = type metadata accessor for HomeActivityStateEvent.DocumentLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2541980F8()
{
  result = qword_27F5B9C58;
  if (!qword_27F5B9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C58);
  }

  return result;
}

unint64_t sub_254198150()
{
  result = qword_27F5B9C60;
  if (!qword_27F5B9C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B9C68, &qword_2542576C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C60);
  }

  return result;
}

uint64_t sub_2541981FC(void *a1)
{
  a1[1] = sub_254197F58(&qword_27F5B9C78, type metadata accessor for HomeActivityStateEvent);
  a1[2] = sub_254197F58(&qword_27F5B9C80, type metadata accessor for HomeActivityStateEvent);
  result = sub_254197F58(&qword_27F5B9C88, type metadata accessor for HomeActivityStateEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541982F0(uint64_t a1)
{
  result = sub_254197F58(&qword_27F5B9C98, type metadata accessor for HomeActivityStateEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SecuritySystemEvent.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SecuritySystemEvent.State(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2541984C0()
{
  type metadata accessor for EventBase(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HomeActivityStateEvent.State(319);
    if (v1 <= 0x3F)
    {
      sub_2541986A0(319, &qword_27F5B9068, MEMORY[0x277CC95F0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2541985A0()
{
  sub_254198650();
  if (v0 <= 0x3F)
  {
    sub_2541986A0(319, &qword_27F5B9CC8, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254198650()
{
  if (!qword_27F5B9CC0)
  {
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5B9CC0);
    }
  }
}

void sub_2541986A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25424E598();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25419871C()
{
  sub_25424D8B8();
  if (v0 <= 0x3F)
  {
    sub_25424D948();
    if (v1 <= 0x3F)
    {
      sub_2541986A0(319, &qword_27F5B9068, MEMORY[0x277CC95F0]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for HomeActivityStateEvent.State(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_254198808()
{
  result = qword_27F5B9CE0;
  if (!qword_27F5B9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9CE0);
  }

  return result;
}

unint64_t sub_254198860()
{
  result = qword_27F5B9CE8;
  if (!qword_27F5B9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9CE8);
  }

  return result;
}

unint64_t sub_2541988B8()
{
  result = qword_27F5B9CF0;
  if (!qword_27F5B9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9CF0);
  }

  return result;
}

uint64_t sub_25419890C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xED00006574617453;
  if (v4 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000254250880 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002542508A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_25424EAB8();

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

unint64_t sub_254198A3C()
{
  result = qword_27F5B9CF8;
  if (!qword_27F5B9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9CF8);
  }

  return result;
}

unint64_t sub_254198A90()
{
  result = qword_27F5B9D08;
  if (!qword_27F5B9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9D08);
  }

  return result;
}

uint64_t sub_254198AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for DoorEvent.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DoorEvent.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_254198CA0()
{
  result = qword_27F5B9D38;
  if (!qword_27F5B9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9D38);
  }

  return result;
}

unint64_t sub_254198CF8()
{
  result = qword_27F5B9D40;
  if (!qword_27F5B9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9D40);
  }

  return result;
}

unint64_t sub_254198D50()
{
  result = qword_27F5B9D48;
  if (!qword_27F5B9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9D48);
  }

  return result;
}

uint64_t sub_254198DA4()
{
  v0 = sub_25424E8E8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t RecordType.rawValue.getter()
{
  v1 = 0x746E657645;
  if (*v0 != 1)
  {
    v1 = 0x6974707972636E45;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x694473746E657645;
  }
}

HomeKitEvents::RecordType_optional __swiftcall RecordType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25424E8E8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_254198EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746E657645;
  if (v2 != 1)
  {
    v4 = 0x6974707972636E45;
    v3 = 0xED000079654B6E6FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x694473746E657645;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC00000074736567;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746E657645;
  if (*a2 != 1)
  {
    v8 = 0x6974707972636E45;
    v7 = 0xED000079654B6E6FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x694473746E657645;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC00000074736567;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25424EAB8();
  }

  return v11 & 1;
}

unint64_t sub_254198FE0()
{
  result = qword_27F5B9D50[0];
  if (!qword_27F5B9D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5B9D50);
  }

  return result;
}

uint64_t sub_254199034()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2541990E8()
{
  *v0;
  *v0;
  sub_25424DD88();
}

uint64_t sub_254199188()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

void sub_254199244(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000074736567;
  v4 = 0xE500000000000000;
  v5 = 0x746E657645;
  if (v2 != 1)
  {
    v5 = 0x6974707972636E45;
    v4 = 0xED000079654B6E6FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x694473746E657645;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t get_enum_tag_for_layout_string_13HomeKitEvents11RecordErrorO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 == 7)
  {
    return (*a1 >> 3) + 7;
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2541992F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 24))
  {
    return (*a1 + 121);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_254199350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_2541993B8(void *result, uint64_t a2)
{
  if (a2 < 7)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (8 * (a2 - 7)) | 0xE000000000000000;
  }

  return result;
}