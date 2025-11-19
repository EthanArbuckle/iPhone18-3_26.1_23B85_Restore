uint64_t Int32.toUInt8.getter(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0xFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

_DWORD *sub_258398D9C@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

_DWORD *sub_258398DB8@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

int *sub_258398DD4@<X0>(int *result@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *result * *a2;
  if (v3 == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_DWORD *sub_258398DF4@<X0>(_DWORD *result@<X0>, int *a2@<X1>, int *a3@<X8>)
{
  v3 = *a2;
  if (*a2)
  {
    if (*result != 0x80000000 || v3 != -1)
    {
      *a3 = *result / v3;
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

uint64_t sub_258398E24@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_258398E4C()
{
  result = *v0;
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0xFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_258398E74(int a1, uint64_t a2, uint64_t a3, int a4, size_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  v11 = v10;
  LOBYTE(v12) = a8;
  LODWORD(v85) = a4;
  v18 = [v10 shape];
  v19 = sub_25839E29C();
  v20 = sub_258428860();

  if (v20 >> 62)
  {
    goto LABEL_141;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v21 <= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_25842CCB0;
    sub_258428FC0();

    v89 = 0xD000000000000025;
    v90 = 0x8000000258434A70;
    v23 = [v11 shape];
    v24 = sub_258428860();

    v25 = MEMORY[0x259C7E180](v24, v19);
    v27 = v26;

    MEMORY[0x259C7DFF0](v25, v27);

    MEMORY[0x259C7DFF0](0x67616D69206F7420, 0xE900000000000065);
    goto LABEL_5;
  }

  if (v12)
  {
    v30 = [v11 shape];
    v31 = sub_258428860();

    if (!(v31 >> 62))
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

      a6 = v32 != 2;
      if (v32 == 2)
      {
        a5 = -1;
      }

      else
      {
        a5 = 0;
      }

      if (v32 == 2)
      {
        a7 = 1;
      }

      else
      {
        a7 = 2;
      }

      goto LABEL_15;
    }

LABEL_152:
    v32 = sub_258428F10();
    goto LABEL_9;
  }

  if ((a5 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_25842CCB0;
    sub_258428FC0();
    MEMORY[0x259C7DFF0](0x2064696C61766E49, 0xED00002073657861);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928328);
    sub_2584290D0();
    MEMORY[0x259C7DFF0](0x61687320726F6620, 0xEB00000000206570);
    v56 = [v11 shape];
    v57 = sub_258428860();

    v58 = MEMORY[0x259C7E180](v57, v19);
    v60 = v59;

    MEMORY[0x259C7DFF0](v58, v60);

    v28 = 0;
    v29 = 0xE000000000000000;
    goto LABEL_44;
  }

  v47 = [v11 shape];
  v48 = sub_258428860();

  if (!(v48 >> 62))
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_34;
  }

LABEL_158:
  v49 = sub_258428F10();
LABEL_34:

  if (v49 <= a5 || a6 < 0)
  {
    goto LABEL_43;
  }

  v50 = [v11 shape];
  v51 = sub_258428860();

  if (!(v51 >> 62))
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_38;
  }

  while (1)
  {
    v52 = sub_258428F10();
LABEL_38:

    if (v52 <= a6 || a7 < 0)
    {
      goto LABEL_43;
    }

    v53 = [v11 shape];
    v54 = sub_258428860();

    v55 = v54 >> 62 ? sub_258428F10() : *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v55 <= a7)
    {
      goto LABEL_43;
    }

LABEL_15:
    v33 = [v11 shape];
    v12 = sub_258428860();

    if ((v12 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x259C7E900](a6, v12);
    }

    else
    {
      if (a6 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_145:
        v40 = MEMORY[0x259C7E900](a6, a2);
        goto LABEL_24;
      }

      v34 = *(v12 + 8 * a6 + 32);
    }

    v35 = v34;

    v88 = [v35 integerValue];

    v36 = [v11 shape];
    v20 = sub_258428860();

    if ((v20 & 0xC000000000000001) != 0)
    {
      LODWORD(v12) = a2;
      v37 = MEMORY[0x259C7E900](a7, v20);
    }

    else
    {
      if (a7 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_147:
        v43 = MEMORY[0x259C7E900](a7, a6);
        a2 = a3;
        goto LABEL_27;
      }

      LODWORD(v12) = a2;
      v37 = *(v20 + 8 * a7 + 32);
    }

    v38 = v37;

    v20 = [v38 integerValue];

    v39 = [v11 strides];
    a2 = sub_258428860();

    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_145;
    }

    if (a6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_149;
    }

    v40 = *(a2 + 8 * a6 + 32);
LABEL_24:
    v41 = v40;

    v87 = [v41 integerValue];

    v42 = [v11 strides];
    a6 = sub_258428860();

    if ((a6 & 0xC000000000000001) != 0)
    {
      goto LABEL_147;
    }

    a2 = a3;
    if (a7 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    v43 = *(a6 + 8 * a7 + 32);
LABEL_27:

    a7 = [v43 integerValue];

    v44 = [v11 shape];
    v45 = sub_258428860();

    if (!(v45 >> 62))
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_29;
    }

LABEL_149:
    v46 = sub_258428F10();
LABEL_29:

    if (v46 == 2)
    {
      a2 = 0;
      v85 = 1;
      a3 = 0;
      a6 = 1;
      goto LABEL_64;
    }

    v62 = [v11 shape];
    a6 = sub_258428860();

    if ((a6 & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x259C7E900](a5, a6);
    }

    else
    {
      if ((a5 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        v66 = MEMORY[0x259C7E900](a5, v19);
        goto LABEL_63;
      }

      if (a5 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_161;
      }

      v63 = *(a6 + 8 * a5 + 32);
    }

    v64 = v63;

    a6 = [v64 integerValue];

    if ((v85 & 1) == 0)
    {
      break;
    }

    if ((a6 - 3) >= 2)
    {
      if (a6 != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_25842CCB0;
        v89 = 0;
        v90 = 0xE000000000000000;
        sub_258428FC0();
        MEMORY[0x259C7DFF0](0xD00000000000003CLL, 0x8000000258434A00);
        goto LABEL_118;
      }

      a2 = 0;
      v85 = 1;
    }

    else
    {
      v85 = a6;
      a2 = 0;
      a6 = 4;
    }

LABEL_59:
    v65 = [v11 strides];
    v19 = sub_258428860();

    if ((v19 & 0xC000000000000001) != 0)
    {
      goto LABEL_162;
    }

    if ((a5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (a5 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v66 = *(v19 + 8 * a5 + 32);
LABEL_63:
      v67 = v66;

      a3 = [v67 integerValue];

LABEL_64:
      v19 = v88;
      v68 = v88 * v20;
      if ((v88 * v20) >> 64 != (v88 * v20) >> 63)
      {
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      a5 = v68 * a6;
      if ((v68 * a6) >> 64 != (v68 * a6) >> 63)
      {
        goto LABEL_154;
      }

      if ((a5 & 0x8000000000000000) != 0)
      {
        goto LABEL_155;
      }

      if (a5)
      {
        v69 = sub_2584288E0();
        *(v69 + 16) = a5;
        v70 = v69;
        memset((v69 + 32), 255, a5);
      }

      else
      {
        v70 = MEMORY[0x277D84F90];
      }

      v71 = [v11 dataPointer];
      if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
      {
        goto LABEL_156;
      }

      if (v88 < 0)
      {
        goto LABEL_157;
      }

      v72 = v71;
      result = v70;
      v73 = 0;
      v74 = &v72[4 * a2 * a3];
      v75 = v12 - a1;
      v76 = __OFSUB__(v12, a1);
      v77 = *&a9 * 100.0;
      v78 = (*&a9 * 100.0);
      while (!v19)
      {
LABEL_115:
        if (++v73 == v85)
        {
          return result;
        }
      }

      if (v20 < 0)
      {
        goto LABEL_151;
      }

      v79 = 0;
      v80 = v73 * a3;
      while (!v20)
      {
LABEL_79:
        ++v79;
        v19 = v88;
        if (v79 == v88)
        {
          goto LABEL_115;
        }
      }

      if ((v73 * a3) >> 64 == (v73 * a3) >> 63)
      {
        v11 = v79 * v87;
        v19 = (v79 * v87) >> 64;
        if (v19 != (v79 * v87) >> 63)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        v81 = __OFADD__(v80, v11);
        v11 += v80;
        if (v81)
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        a5 = v79 * v20;
        v19 = (v79 * v20) >> 64;
        if (v19 != (v79 * v20) >> 63)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v76)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          v21 = sub_258428F10();
          goto LABEL_3;
        }

        if (!v75)
        {
          goto LABEL_140;
        }

        v82 = 0;
        while (1)
        {
          v19 = v82 * a7;
          v12 = (v82 * a7) >> 64;
          if (v12 != (v82 * a7) >> 63)
          {
            break;
          }

          v81 = __OFADD__(v11, v19);
          v19 += v11;
          if (v81)
          {
            goto LABEL_120;
          }

          v19 = *&v74[4 * v19];
          if ((a10 & 1) == 0)
          {
            a2 = 100 * v19;
            if (a2 != a2)
            {
              goto LABEL_128;
            }

            LOBYTE(v12) = LOBYTE(v77);
            if (COERCE_UNSIGNED_INT64(fabs(*&a9 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_129;
            }

            if (v77 <= -9.22337204e18)
            {
              goto LABEL_130;
            }

            if (v77 >= 9.22337204e18)
            {
              goto LABEL_131;
            }

            if (v78 < 0xFFFFFFFF80000000)
            {
              goto LABEL_132;
            }

            if (v78 > 0x7FFFFFFF)
            {
              goto LABEL_134;
            }

            if (a2 < v78)
            {
              LODWORD(v19) = 0;
            }
          }

          v81 = __OFSUB__(v19, a1);
          v19 = (v19 - a1);
          if (v81)
          {
            goto LABEL_121;
          }

          LOBYTE(v12) = v19;
          v19 = 255 * v19;
          if (v19 != v19)
          {
            goto LABEL_122;
          }

          if (v19 == 0x80000000 && v75 == -1)
          {
            goto LABEL_133;
          }

          LODWORD(v19) = v19 / v75;
          if (v19 >= 255)
          {
            v19 = 255;
          }

          else
          {
            v19 = v19;
          }

          v12 = a5 + v82;
          if (__OFADD__(a5, v82))
          {
            goto LABEL_123;
          }

          a2 = v12 * a6;
          v12 = (v12 * a6) >> 64;
          if (v12 != a2 >> 63)
          {
            goto LABEL_124;
          }

          v81 = __OFADD__(a2, v73);
          a2 += v73;
          if (v81)
          {
            goto LABEL_125;
          }

          if (a2 < 0)
          {
            goto LABEL_126;
          }

          v12 = *(v70 + 16);
          if (a2 >= v12)
          {
            goto LABEL_127;
          }

          ++v82;
          *(v70 + 32 + a2) = v19 & ~(v19 >> 31);
          if (v20 == v82)
          {
            goto LABEL_79;
          }
        }

        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
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
      }

      __break(1u);
      goto LABEL_136;
    }

    __break(1u);
  }

  if ((a2 & 0x8000000000000000) == 0 && a6 > a2)
  {
    v85 = 1;
    a6 = 1;
    goto LABEL_59;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25842CCB0;
  sub_258428FC0();

  v89 = 0xD000000000000025;
  v90 = 0x8000000258434A40;
  if (__OFSUB__(a6, 1))
  {
    __break(1u);
  }

  else
  {
LABEL_118:
    v84 = sub_2584292B0();
    MEMORY[0x259C7DFF0](v84);

LABEL_5:
    v28 = v89;
    v29 = v90;
LABEL_44:
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 32) = v28;
    *(v22 + 40) = v29;
    sub_2584293A0();

    return 0;
  }

  return result;
}

uint64_t sub_258399B74(uint64_t a1, int a2, size_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, float a9, float a10)
{
  v11 = v10;
  LOBYTE(v14) = a6;
  LODWORD(v102) = a2;
  v20 = [v10 shape];
  v21 = sub_25839E29C();
  v22 = sub_258428860();

  if (v22 >> 62)
  {
    goto LABEL_130;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v23 <= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_25842CCB0;
    sub_258428FC0();

    v104 = 0xD000000000000025;
    v105 = 0x8000000258434A70;
    v25 = [v11 shape];
    v26 = sub_258428860();

    v27 = MEMORY[0x259C7E180](v26, v21);
    v29 = v28;

    MEMORY[0x259C7DFF0](v27, v29);

    MEMORY[0x259C7DFF0](0x67616D69206F7420, 0xE900000000000065);
LABEL_5:
    v30 = v104;
    v31 = v105;
LABEL_44:
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 32) = v30;
    *(v24 + 40) = v31;
    sub_2584293A0();

    return 0;
  }

  if (v14)
  {
    v32 = [v11 shape];
    v33 = sub_258428860();

    if (v33 >> 62)
    {
      goto LABEL_141;
    }

    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_9;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_25842CCB0;
    sub_258428FC0();
    MEMORY[0x259C7DFF0](0x2064696C61766E49, 0xED00002073657861);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928328);
    sub_2584290D0();
    MEMORY[0x259C7DFF0](0x61687320726F6620, 0xEB00000000206570);
    v60 = [v11 shape];
    v61 = sub_258428860();

    v62 = MEMORY[0x259C7E180](v61, v21);
    v64 = v63;

    MEMORY[0x259C7DFF0](v62, v64);

    v30 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_44;
  }

  v51 = [v11 shape];
  v52 = sub_258428860();

  if (!(v52 >> 62))
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_34;
  }

LABEL_147:
  v53 = sub_258428F10();
LABEL_34:

  if (v53 <= a3 || a4 < 0)
  {
    goto LABEL_43;
  }

  v54 = [v11 shape];
  v55 = sub_258428860();

  if (!(v55 >> 62))
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_38;
  }

LABEL_154:
  v56 = sub_258428F10();
LABEL_38:

  if (v56 <= a4 || a5 < 0)
  {
    goto LABEL_43;
  }

  v57 = [v11 shape];
  v58 = sub_258428860();

  v59 = v58 >> 62 ? sub_258428F10() : *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v59 <= a5)
  {
    goto LABEL_43;
  }

  while (2)
  {
    v35 = [v11 shape];
    v14 = sub_258428860();

    if ((v14 & 0xC000000000000001) == 0)
    {
      if (a4 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v37 = *(v14 + 8 * a4 + 32);
        goto LABEL_18;
      }

      __break(1u);
LABEL_135:
      v43 = MEMORY[0x259C7E900](a4, a7);
LABEL_24:
      v44 = v43;

      a7 = [v44 integerValue];

      v45 = [v11 strides];
      a4 = sub_258428860();

      if ((a4 & 0xC000000000000001) == 0)
      {
        if (a5 < *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v46 = *(a4 + 8 * a5 + 32);
          goto LABEL_27;
        }

        __break(1u);
LABEL_141:
        v34 = sub_258428F10();
LABEL_9:

        a4 = v34 != 2;
        if (v34 == 2)
        {
          a3 = -1;
        }

        else
        {
          a3 = 0;
        }

        if (v34 == 2)
        {
          a5 = 1;
        }

        else
        {
          a5 = 2;
        }

        continue;
      }

LABEL_137:
      v46 = MEMORY[0x259C7E900](a5, a4);
LABEL_27:
      v47 = v46;

      a5 = [v47 integerValue];

      v48 = [v11 shape];
      v49 = sub_258428860();

      if (!(v49 >> 62))
      {
        v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_29;
      }

      goto LABEL_139;
    }

    break;
  }

  while (1)
  {
    v37 = MEMORY[0x259C7E900](a4, v14, v36);
LABEL_18:
    v38 = v37;

    v14 = [v38 integerValue];

    v39 = [v11 shape];
    v22 = sub_258428860();

    v101 = *&a7;
    if ((v22 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x259C7E900](a5, v22);
    }

    else
    {
      if (a5 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_137;
      }

      v40 = *(v22 + 8 * a5 + 32);
    }

    v41 = v40;

    v22 = [v41 integerValue];

    v42 = [v11 strides];
    a7 = sub_258428860();

    if ((a7 & 0xC000000000000001) != 0)
    {
      goto LABEL_135;
    }

    if (a4 < *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v43 = *(a7 + 8 * a4 + 32);
      goto LABEL_24;
    }

    __break(1u);
LABEL_139:
    v50 = sub_258428F10();
LABEL_29:

    if (v50 == 2)
    {
      v21 = 0;
      v102 = 1;
      a1 = 0;
      a4 = 1;
      goto LABEL_64;
    }

    v66 = [v11 shape];
    a4 = sub_258428860();

    if ((a4 & 0xC000000000000001) != 0)
    {
      v67 = MEMORY[0x259C7E900](a3, a4);
    }

    else
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      if (a3 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_150;
      }

      v67 = *(a4 + 8 * a3 + 32);
    }

    v68 = v67;

    a4 = [v68 integerValue];

    if ((v102 & 1) == 0)
    {
      break;
    }

    if ((a4 - 3) >= 2)
    {
      if (a4 != 1)
      {
LABEL_121:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_25842CCB0;
        v104 = 0;
        v105 = 0xE000000000000000;
        sub_258428FC0();
        MEMORY[0x259C7DFF0](0xD00000000000003CLL, 0x8000000258434A00);
LABEL_122:
        v100 = sub_2584292B0();
        MEMORY[0x259C7DFF0](v100);

        goto LABEL_5;
      }

      v102 = 1;
      a1 = 0;
    }

    else
    {
      v102 = a4;
      a1 = 0;
      a4 = 4;
    }

LABEL_59:
    v69 = [v11 strides];
    v21 = sub_258428860();

    if ((v21 & 0xC000000000000001) == 0)
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      if (a3 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_153;
      }

      v70 = *(v21 + 8 * a3 + 32);
      goto LABEL_63;
    }

LABEL_151:
    v70 = MEMORY[0x259C7E900](a3, v21);
LABEL_63:
    v71 = v70;

    v21 = [v71 integerValue];

LABEL_64:
    v72 = v14 * v22;
    if ((v14 * v22) >> 64 != (v14 * v22) >> 63)
    {
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    a3 = v72 * a4;
    if ((v72 * a4) >> 64 != (v72 * a4) >> 63)
    {
      goto LABEL_143;
    }

    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_144;
    }

    if (a3)
    {
      v73 = sub_2584288E0();
      *(v73 + 16) = a3;
      v74 = v73;
      memset((v73 + 32), 255, a3);
    }

    else
    {
      v74 = MEMORY[0x277D84F90];
    }

    v75 = [v11 dataPointer];
    if ((a1 * v21) >> 64 != (a1 * v21) >> 63)
    {
      goto LABEL_145;
    }

    if (v14 < 0)
    {
      goto LABEL_146;
    }

    v76 = v75;
    result = v74;
    v77 = 0;
    v78 = &v76[4 * a1 * v21];
    v36.n128_f32[0] = a10 - a9;
    v79 = v101 * 100.0;
    v80 = v74 + 32;
    while (!v14)
    {
LABEL_109:
      if (++v77 == v102)
      {
        return result;
      }
    }

    if ((v22 & 0x8000000000000000) == 0)
    {
      v81 = 0;
      v82 = v77 * v21;
      while (!v22)
      {
LABEL_76:
        if (++v81 == v14)
        {
          goto LABEL_109;
        }
      }

      if ((v77 * v21) >> 64 != (v77 * v21) >> 63)
      {
        goto LABEL_126;
      }

      v83 = v81 * a7;
      if ((v81 * a7) >> 64 == (v81 * a7) >> 63)
      {
        v84 = __OFADD__(v82, v83);
        v85 = v82 + v83;
        if (!v84)
        {
          v86 = v81 * v22;
          if ((v81 * v22) >> 64 == (v81 * v22) >> 63)
          {
            v87 = 0;
            while (1)
            {
              v88 = v87 * a5;
              if ((v87 * a5) >> 64 != (v87 * a5) >> 63)
              {
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

              v84 = __OFADD__(v85, v88);
              v89 = v85 + v88;
              if (v84)
              {
                goto LABEL_112;
              }

              v90 = *&v78[4 * v89];
              if ((a8 & 1) == 0)
              {
                if (COERCE_UNSIGNED_INT64(fabs(v101 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  __break(1u);
LABEL_124:
                  __break(1u);
LABEL_125:
                  __break(1u);
LABEL_126:
                  __break(1u);
                  goto LABEL_127;
                }

                if (v79 <= -9.22337204e18)
                {
                  goto LABEL_124;
                }

                if (v79 >= 9.22337204e18)
                {
                  goto LABEL_125;
                }

                if ((v90 * 100.0) < (v101 * 100.0))
                {
                  v90 = 0.0;
                }
              }

              v91 = (v90 - a9) * 255.0;
              v92 = v91 / v36.n128_f32[0];
              v93 = v91 / v36.n128_f32[0];
              if ((v91 / v36.n128_f32[0]) > 255.0)
              {
                v94 = 255.0;
              }

              else
              {
                v94 = v91 / v36.n128_f32[0];
              }

              v95 = (LODWORD(v93) & 0x7FFFFFFFu) > 0x7F7FFFFF;
              if (v92 >= 0.0)
              {
                v96 = v92 <= 255.0;
              }

              else
              {
                v94 = 0.0;
                v96 = 0;
              }

              if (v96 && v95)
              {
                goto LABEL_113;
              }

              if (v94 <= -1.0)
              {
                goto LABEL_114;
              }

              if (v94 >= 256.0)
              {
                goto LABEL_115;
              }

              v97 = v86 + v87;
              if (__OFADD__(v86, v87))
              {
                goto LABEL_116;
              }

              v98 = v97 * a4;
              if ((v97 * a4) >> 64 != (v97 * a4) >> 63)
              {
                goto LABEL_117;
              }

              v84 = __OFADD__(v98, v77);
              v99 = v98 + v77;
              if (v84)
              {
                goto LABEL_118;
              }

              if ((v99 & 0x8000000000000000) != 0)
              {
                goto LABEL_119;
              }

              if (v99 >= *(result + 16))
              {
                goto LABEL_120;
              }

              ++v87;
              *(v80 + v99) = v94;
              if (v22 == v87)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_129;
        }
      }

      else
      {
LABEL_127:
        __break(1u);
      }

      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      v23 = sub_258428F10();
      goto LABEL_3;
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) == 0 && a4 > a1)
  {
    v102 = 1;
    a4 = 1;
    goto LABEL_59;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_25842CCB0;
  sub_258428FC0();

  v104 = 0xD000000000000025;
  v105 = 0x8000000258434A40;
  if (!__OFSUB__(a4, 1))
  {
    goto LABEL_122;
  }

  __break(1u);
  return result;
}

uint64_t sub_25839A848(uint64_t a1, int a2, size_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, double a9, double a10)
{
  v11 = v10;
  LOBYTE(v14) = a6;
  LODWORD(v105) = a2;
  v20 = [v10 shape];
  v21 = sub_25839E29C();
  v22 = sub_258428860();

  if (v22 >> 62)
  {
    goto LABEL_130;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v23 <= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_25842CCB0;
    sub_258428FC0();

    v107 = 0xD000000000000025;
    v108 = 0x8000000258434A70;
    v25 = [v11 shape];
    v26 = sub_258428860();

    v27 = MEMORY[0x259C7E180](v26, v21);
    v29 = v28;

    MEMORY[0x259C7DFF0](v27, v29);

    MEMORY[0x259C7DFF0](0x67616D69206F7420, 0xE900000000000065);
LABEL_5:
    v30 = v107;
    v31 = v108;
LABEL_44:
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 32) = v30;
    *(v24 + 40) = v31;
    sub_2584293A0();

    return 0;
  }

  if (v14)
  {
    v32 = [v11 shape];
    v33 = sub_258428860();

    if (v33 >> 62)
    {
      goto LABEL_141;
    }

    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_9;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_25842CCB0;
    sub_258428FC0();
    MEMORY[0x259C7DFF0](0x2064696C61766E49, 0xED00002073657861);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928328);
    sub_2584290D0();
    MEMORY[0x259C7DFF0](0x61687320726F6620, 0xEB00000000206570);
    v65 = [v11 shape];
    v66 = sub_258428860();

    v67 = MEMORY[0x259C7E180](v66, v21);
    v69 = v68;

    MEMORY[0x259C7DFF0](v67, v69);

    v30 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_44;
  }

  v56 = [v11 shape];
  v57 = sub_258428860();

  if (!(v57 >> 62))
  {
    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_34;
  }

LABEL_147:
  v58 = sub_258428F10();
LABEL_34:

  if (v58 <= a3 || a4 < 0)
  {
    goto LABEL_43;
  }

  v59 = [v11 shape];
  v60 = sub_258428860();

  if (!(v60 >> 62))
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_38;
  }

LABEL_154:
  v61 = sub_258428F10();
LABEL_38:

  if (v61 <= a4 || a5 < 0)
  {
    goto LABEL_43;
  }

  v62 = [v11 shape];
  v63 = sub_258428860();

  v64 = v63 >> 62 ? sub_258428F10() : *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v64 <= a5)
  {
    goto LABEL_43;
  }

  while (2)
  {
    v35 = [v11 shape];
    v14 = sub_258428860();

    if ((v14 & 0xC000000000000001) == 0)
    {
      if (a4 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v42 = *(v14 + 8 * a4 + 32);
        goto LABEL_18;
      }

      __break(1u);
LABEL_135:
      v48 = MEMORY[0x259C7E900](a4, a7);
LABEL_24:
      v49 = v48;

      a7 = [v49 integerValue];

      v50 = [v11 strides];
      a4 = sub_258428860();

      if ((a4 & 0xC000000000000001) == 0)
      {
        if (a5 < *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v51 = *(a4 + 8 * a5 + 32);
          goto LABEL_27;
        }

        __break(1u);
LABEL_141:
        v34 = sub_258428F10();
LABEL_9:

        a4 = v34 != 2;
        if (v34 == 2)
        {
          a3 = -1;
        }

        else
        {
          a3 = 0;
        }

        if (v34 == 2)
        {
          a5 = 1;
        }

        else
        {
          a5 = 2;
        }

        continue;
      }

LABEL_137:
      v51 = MEMORY[0x259C7E900](a5, a4);
LABEL_27:
      v52 = v51;

      a5 = [v52 integerValue];

      v53 = [v11 shape];
      v54 = sub_258428860();

      if (!(v54 >> 62))
      {
        v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_29;
      }

      goto LABEL_139;
    }

    break;
  }

  while (1)
  {
    v42 = MEMORY[0x259C7E900](a4, v14, v36, v37, v38, v39, v40, v41);
LABEL_18:
    v43 = v42;

    v14 = [v43 integerValue];

    v44 = [v11 shape];
    v22 = sub_258428860();

    v104 = *&a7;
    if ((v22 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x259C7E900](a5, v22);
    }

    else
    {
      if (a5 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_137;
      }

      v45 = *(v22 + 8 * a5 + 32);
    }

    v46 = v45;

    v22 = [v46 integerValue];

    v47 = [v11 strides];
    a7 = sub_258428860();

    if ((a7 & 0xC000000000000001) != 0)
    {
      goto LABEL_135;
    }

    if (a4 < *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v48 = *(a7 + 8 * a4 + 32);
      goto LABEL_24;
    }

    __break(1u);
LABEL_139:
    v55 = sub_258428F10();
LABEL_29:

    if (v55 == 2)
    {
      v21 = 0;
      v105 = 1;
      a1 = 0;
      a4 = 1;
      goto LABEL_64;
    }

    v71 = [v11 shape];
    a4 = sub_258428860();

    if ((a4 & 0xC000000000000001) != 0)
    {
      v72 = MEMORY[0x259C7E900](a3, a4);
    }

    else
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      if (a3 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_150;
      }

      v72 = *(a4 + 8 * a3 + 32);
    }

    v73 = v72;

    a4 = [v73 integerValue];

    if ((v105 & 1) == 0)
    {
      break;
    }

    if ((a4 - 3) >= 2)
    {
      if (a4 != 1)
      {
LABEL_121:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_25842CCB0;
        v107 = 0;
        v108 = 0xE000000000000000;
        sub_258428FC0();
        MEMORY[0x259C7DFF0](0xD00000000000003CLL, 0x8000000258434A00);
LABEL_122:
        v103 = sub_2584292B0();
        MEMORY[0x259C7DFF0](v103);

        goto LABEL_5;
      }

      v105 = 1;
      a1 = 0;
    }

    else
    {
      v105 = a4;
      a1 = 0;
      a4 = 4;
    }

LABEL_59:
    v74 = [v11 strides];
    v21 = sub_258428860();

    if ((v21 & 0xC000000000000001) == 0)
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      if (a3 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_153;
      }

      v75 = *(v21 + 8 * a3 + 32);
      goto LABEL_63;
    }

LABEL_151:
    v75 = MEMORY[0x259C7E900](a3, v21);
LABEL_63:
    v76 = v75;

    v21 = [v76 integerValue];

LABEL_64:
    v77 = v14 * v22;
    if ((v14 * v22) >> 64 != (v14 * v22) >> 63)
    {
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    a3 = v77 * a4;
    if ((v77 * a4) >> 64 != (v77 * a4) >> 63)
    {
      goto LABEL_143;
    }

    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_144;
    }

    if (a3)
    {
      v78 = sub_2584288E0();
      *(v78 + 16) = a3;
      v79 = v78;
      memset((v78 + 32), 255, a3);
    }

    else
    {
      v79 = MEMORY[0x277D84F90];
    }

    v80 = [v11 dataPointer];
    if ((a1 * v21) >> 64 != (a1 * v21) >> 63)
    {
      goto LABEL_145;
    }

    if (v14 < 0)
    {
      goto LABEL_146;
    }

    v81 = v80;
    result = v79;
    v82 = 0;
    v83 = &v81[8 * a1 * v21];
    v36.n128_f64[0] = a10 - a9;
    v37.n128_u64[0] = 0x4059000000000000;
    v38.n128_f64[0] = v104 * 100.0;
    v39.n128_f64[0] = (v104 * 100.0);
    v40.n128_u64[0] = 0;
    v41.n128_u64[0] = -1.0;
    while (!v14)
    {
LABEL_109:
      if (++v82 == v105)
      {
        return result;
      }
    }

    if ((v22 & 0x8000000000000000) == 0)
    {
      v84 = 0;
      v85 = v82 * v21;
      while (!v22)
      {
LABEL_76:
        if (++v84 == v14)
        {
          goto LABEL_109;
        }
      }

      if ((v82 * v21) >> 64 != (v82 * v21) >> 63)
      {
        goto LABEL_126;
      }

      v86 = v84 * a7;
      if ((v84 * a7) >> 64 == (v84 * a7) >> 63)
      {
        v87 = __OFADD__(v85, v86);
        v88 = v85 + v86;
        if (!v87)
        {
          v89 = v84 * v22;
          if ((v84 * v22) >> 64 == (v84 * v22) >> 63)
          {
            v90 = 0;
            while (1)
            {
              v91 = v90 * a5;
              if ((v90 * a5) >> 64 != (v90 * a5) >> 63)
              {
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

              v87 = __OFADD__(v88, v91);
              v92 = v88 + v91;
              if (v87)
              {
                goto LABEL_112;
              }

              v93 = *&v83[8 * v92];
              if ((a8 & 1) == 0)
              {
                if (COERCE_UNSIGNED_INT64(fabs(v104 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  __break(1u);
LABEL_124:
                  __break(1u);
LABEL_125:
                  __break(1u);
LABEL_126:
                  __break(1u);
                  goto LABEL_127;
                }

                if (v38.n128_f64[0] <= -9.22337204e18)
                {
                  goto LABEL_124;
                }

                if (v38.n128_f64[0] >= 9.22337204e18)
                {
                  goto LABEL_125;
                }

                if (v93 * 100.0 < v39.n128_f64[0])
                {
                  v93 = 0.0;
                }
              }

              v94 = (v93 - a9) * 255.0;
              v95 = v94 / v36.n128_f64[0];
              v96 = v94 / v36.n128_f64[0];
              if (v94 / v36.n128_f64[0] > 255.0)
              {
                v97 = 255.0;
              }

              else
              {
                v97 = v94 / v36.n128_f64[0];
              }

              v98 = (*&v96 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
              if (v95 >= 0.0)
              {
                v99 = v95 <= 255.0;
              }

              else
              {
                v97 = 0.0;
                v99 = 0;
              }

              if (v99 && v98)
              {
                goto LABEL_113;
              }

              if (v97 <= -1.0)
              {
                goto LABEL_114;
              }

              if (v97 >= 256.0)
              {
                goto LABEL_115;
              }

              v100 = v89 + v90;
              if (__OFADD__(v89, v90))
              {
                goto LABEL_116;
              }

              v101 = v100 * a4;
              if ((v100 * a4) >> 64 != (v100 * a4) >> 63)
              {
                goto LABEL_117;
              }

              v87 = __OFADD__(v101, v82);
              v102 = v101 + v82;
              if (v87)
              {
                goto LABEL_118;
              }

              if ((v102 & 0x8000000000000000) != 0)
              {
                goto LABEL_119;
              }

              if (v102 >= *(v79 + 16))
              {
                goto LABEL_120;
              }

              ++v90;
              *(v79 + 32 + v102) = v97;
              if (v22 == v90)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_129;
        }
      }

      else
      {
LABEL_127:
        __break(1u);
      }

      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      v23 = sub_258428F10();
      goto LABEL_3;
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) == 0 && a4 > a1)
  {
    v105 = 1;
    a4 = 1;
    goto LABEL_59;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_25842CCB0;
  sub_258428FC0();

  v107 = 0xD000000000000025;
  v108 = 0x8000000258434A40;
  if (!__OFSUB__(a4, 1))
  {
    goto LABEL_122;
  }

  __break(1u);
  return result;
}

uint64_t MLMultiArray.toRawBytes<A>(min:max:channel:axes:clip:)(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), int a4, uint64_t a5, uint64_t a6, unint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, unsigned __int8 a18, SEL *a19, size_t a20)
{
  v13 = v12;
  LOBYTE(v14) = a8;
  LODWORD(v155) = a4;
  v153 = a3;
  v139 = a2;
  v138 = a1;
  v18 = a19;
  v154 = *(a19 - 1);
  v19 = MEMORY[0x28223BE20](a1);
  v137 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v136 = &v114 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v152 = &v114 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v114 - v26;
  MEMORY[0x28223BE20](v25);
  v140 = (&v114 - v28);
  v29 = [v12 shape];
  v30 = sub_25839E29C();
  v31 = sub_258428860();

  if (v31 >> 62)
  {
    goto LABEL_117;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {

    if (v32 <= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_25842CCB0;
      v156 = 0;
      v157 = 0xE000000000000000;
      sub_258428FC0();

      v156 = 0xD000000000000025;
      v157 = 0x8000000258434A70;
      v34 = [v13 shape];
      v35 = sub_258428860();

      v36 = MEMORY[0x259C7E180](v35, v30);
      v38 = v37;

      MEMORY[0x259C7DFF0](v36, v38);

      MEMORY[0x259C7DFF0](0x67616D69206F7420, 0xE900000000000065);
      goto LABEL_5;
    }

    if (v14)
    {
      v41 = [v13 shape];
      v42 = sub_258428860();

      if (v42 >> 62)
      {
        goto LABEL_128;
      }

      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_9;
    }

    if (a5 < 0)
    {
LABEL_43:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_25842CCB0;
      v156 = 0;
      v157 = 0xE000000000000000;
      sub_258428FC0();
      v159 = v156;
      v160 = v157;
      MEMORY[0x259C7DFF0](0x2064696C61766E49, 0xED00002073657861);
      v156 = a5;
      v157 = a6;
      v158 = a7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928328);
      sub_2584290D0();
      MEMORY[0x259C7DFF0](0x61687320726F6620, 0xEB00000000206570);
      v69 = [v13 shape];
      v70 = sub_258428860();

      v71 = MEMORY[0x259C7E180](v70, v30);
      v73 = v72;

      MEMORY[0x259C7DFF0](v71, v73);

      v74 = v159;
      v75 = v160;
      *(v68 + 56) = MEMORY[0x277D837D0];
      *(v68 + 32) = v74;
      *(v68 + 40) = v75;
      sub_2584293A0();
      goto LABEL_44;
    }

    v59 = [v13 shape];
    v60 = sub_258428860();

    if (!(v60 >> 62))
    {
      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_34;
    }

LABEL_134:
    v61 = sub_258428F10();
LABEL_34:

    if (v61 <= a5 || a6 < 0)
    {
      goto LABEL_43;
    }

    v62 = [v13 shape];
    v63 = sub_258428860();

    if (!(v63 >> 62))
    {
      v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_38;
    }

LABEL_141:
    v64 = sub_258428F10();
LABEL_38:

    if (v64 <= a6 || (a7 & 0x8000000000000000) != 0)
    {
      goto LABEL_43;
    }

    v65 = [v13 shape];
    v66 = sub_258428860();

    v67 = v66 >> 62 ? sub_258428F10() : *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v67 <= a7)
    {
      goto LABEL_43;
    }

    while (2)
    {
      v45 = [v13 shape];
      v14 = sub_258428860();

      if ((v14 & 0xC000000000000001) == 0)
      {
        if (a6 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v46 = *(v14 + 8 * a6 + 32);
          goto LABEL_18;
        }

        __break(1u);
LABEL_122:
        v52 = MEMORY[0x259C7E900](a6, v14);
        v47 = a5;
LABEL_24:

        v118 = [v52 integerValue];

        v53 = [v13 v18[292]];
        a6 = sub_258428860();

        if ((a6 & 0xC000000000000001) == 0)
        {
          if (a7 < *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v54 = *(a6 + 8 * a7 + 32);
            goto LABEL_27;
          }

          __break(1u);
LABEL_128:
          v43 = sub_258428F10();
LABEL_9:

          v44 = v43 == 2;
          a6 = v43 != 2;
          if (v44)
          {
            a5 = -1;
          }

          else
          {
            a5 = 0;
          }

          if (v44)
          {
            a7 = 1;
          }

          else
          {
            a7 = 2;
          }

          continue;
        }

LABEL_124:
        v54 = MEMORY[0x259C7E900](a7, a6);
LABEL_27:
        v55 = v54;

        v132 = [v55 integerValue];

        v56 = [v13 shape];
        v57 = sub_258428860();

        if (!(v57 >> 62))
        {
          v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_29;
        }

        goto LABEL_126;
      }

      break;
    }

    while (1)
    {
      v46 = MEMORY[0x259C7E900](a6, v14);
LABEL_18:
      v47 = v46;

      v121 = [v47 integerValue];

      v48 = [v13 shape];
      v49 = sub_258428860();

      v116 = v18;
      if ((v49 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x259C7E900](a7, v49);
      }

      else
      {
        if (a7 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_124;
        }

        v50 = *(v49 + 8 * a7 + 32);
      }

      v47 = v50;

      v134 = [v47 integerValue];

      v18 = &property descriptor for Transformer.viewToClip;
      v51 = [v13 strides];
      v14 = sub_258428860();

      if ((v14 & 0xC000000000000001) != 0)
      {
        goto LABEL_122;
      }

      if (a6 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v47 = a5;
        v52 = *(v14 + 8 * a6 + 32);
        goto LABEL_24;
      }

      __break(1u);
LABEL_126:
      v58 = sub_258428F10();
LABEL_29:

      a6 = v134;
      if (v58 == 2)
      {
        v117 = 0;
        v47 = 0;
        v115 = 1;
        v133 = 1;
        v30 = v116;
        v18 = v140;
        goto LABEL_61;
      }

      v77 = [v13 shape];
      v78 = sub_258428860();

      if ((v78 & 0xC000000000000001) != 0)
      {
        a5 = v47;
        v79 = MEMORY[0x259C7E900](v47, v78);
      }

      else
      {
        if (v47 < 0)
        {
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (v47 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_137;
        }

        a5 = v47;
        v79 = *(v78 + 8 * v47 + 32);
      }

      v80 = v79;

      v81 = [v80 integerValue];

      if ((v155 & 1) == 0)
      {
        v47 = v153;
        if (v153 < 0 || v81 <= v153)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_25842CCB0;
          v156 = 0;
          v157 = 0xE000000000000000;
          sub_258428FC0();

          v156 = 0xD000000000000025;
          v157 = 0x8000000258434A40;
          if (__OFSUB__(v81, 1))
          {
            __break(1u);
            return result;
          }

          v159 = v81 - 1;
LABEL_108:
          v113 = sub_2584292B0();
          MEMORY[0x259C7DFF0](v113);

LABEL_5:
          v39 = v156;
          v40 = v157;
          *(v33 + 56) = MEMORY[0x277D837D0];
          *(v33 + 32) = v39;
          *(v33 + 40) = v40;
          sub_2584293A0();
LABEL_44:

          return 0;
        }

        v115 = 1;
        v82 = 1;
        goto LABEL_55;
      }

      if ((v81 - 3) < 2)
      {
        v115 = v81;
        v47 = 0;
        v82 = 4;
LABEL_55:
        v133 = v82;
        goto LABEL_56;
      }

      if (v81 != 1)
      {
LABEL_107:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_25842CCB0;
        v156 = 0;
        v157 = 0xE000000000000000;
        sub_258428FC0();
        MEMORY[0x259C7DFF0](0xD00000000000003CLL, 0x8000000258434A00);
        v159 = v81;
        goto LABEL_108;
      }

      v47 = 0;
      v115 = 1;
      v133 = 1;
LABEL_56:
      v83 = [v13 v18[292]];
      v78 = sub_258428860();

      if ((v78 & 0xC000000000000001) == 0)
      {
        v30 = v116;
        if (a5 < 0)
        {
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        v18 = v140;
        if (a5 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_140;
        }

        v84 = *(v78 + 8 * a5 + 32);
        goto LABEL_60;
      }

LABEL_138:
      v84 = MEMORY[0x259C7E900](a5, v78);
      v30 = v116;
      v18 = v140;
LABEL_60:

      v117 = [v84 integerValue];

LABEL_61:
      v85 = v121 * a6;
      if ((v121 * a6) >> 64 != (v121 * a6) >> 63)
      {
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
        goto LABEL_134;
      }

      v14 = v85 * v133;
      if ((v85 * v133) >> 64 != (v85 * v133) >> 63)
      {
        goto LABEL_130;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_131;
      }

      if (v14)
      {
        v86 = sub_2584288E0();
        *(v86 + 16) = v14;
        v81 = v86;
        memset((v86 + 32), 255, v14);
      }

      else
      {
        v81 = MEMORY[0x277D84F90];
      }

      v87 = [v13 dataPointer];
      if ((v47 * v117) >> 64 != (v47 * v117) >> 63)
      {
        goto LABEL_132;
      }

      v88 = v121;
      if (v121 < 0)
      {
        goto LABEL_133;
      }

      v135 = 0;
      v131 = a18;
      v130 = *(v154 + 72);
      v129 = &v87[v130 * v47 * v117];
      v13 = (a20 + 56);
      v150 = (a20 + 40);
      v147 = (a20 + 48);
      v148 = (a20 + 32);
      v146 = (a20 + 64);
      v128 = (v154 + 16);
      v155 = (v154 + 8);
      v89 = a17 * 100.0;
      v123 = (v154 + 32);
      v124 = (a17 * 100.0);
      result = v81;
      v125 = v81 + 32;
      v126 = v81;
      v151 = (a20 + 56);
      v127 = v27;
      while (!v88)
      {
LABEL_70:
        if (++v135 == v115)
        {
          return result;
        }
      }

      if ((a6 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
    }

    v122 = 0;
    v119 = v135 * v117;
    v120 = (v135 * v117) >> 64 != (v135 * v117) >> 63;
    while (!a6)
    {
LABEL_74:
      v88 = v121;
      if (++v122 == v121)
      {
        goto LABEL_70;
      }
    }

    if (v120)
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      v32 = sub_258428F10();
      continue;
    }

    break;
  }

  v90 = v122 * v118;
  if ((v122 * v118) >> 64 != (v122 * v118) >> 63)
  {
    goto LABEL_114;
  }

  v145 = v119 + v90;
  if (__OFADD__(v119, v90))
  {
    goto LABEL_115;
  }

  v144 = v122 * a6;
  if ((v122 * a6) >> 64 != (v122 * a6) >> 63)
  {
    goto LABEL_116;
  }

  v91 = 0;
  v92 = *v148;
  a5 = *v13;
  v149 = *v150;
  v142 = *v147;
  v143 = v92;
  v141 = *v146;
  v153 = a5;
  while (2)
  {
    v93 = v91 * v132;
    if ((v91 * v132) >> 64 != (v91 * v132) >> 63)
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
      goto LABEL_107;
    }

    v94 = __OFADD__(v145, v93);
    v95 = v145 + v93;
    if (v94)
    {
      goto LABEL_101;
    }

    v154 = v91;
    (*v128)(v18, &v129[v95 * v130], v30);
    if (v131)
    {
LABEL_89:
      v101 = v136;
      v102 = v138;
      v103 = v143;
      v143(v18, v138, v30, a20);
      v104 = a5;
      v105 = v137;
      v104(255, v30, a20);
      v106 = v152;
      v149(v101, v105, v30, a20);
      v107 = *v155;
      (*v155)(v105, v30);
      v107(v101, v30);
      v103(v139, v102, v30, a20);
      v108 = v127;
      v142(v106, v101, v30, a20);
      v107(v101, v30);
      v107(v106, v30);
      v109 = v153;
      (v153)(0, v30, a20);
      v109(255, v30, a20);
      v110 = v108;
      clamp<A>(_:min:max:)(v108, v101, v105, v30, v106);
      v107(v105, v30);
      v107(v101, v30);
      v14 = a20;
      v81 = v141(v30, a20);
      v107(v106, v30);
      v111 = v144 + v154;
      if (__OFADD__(v144, v154))
      {
        goto LABEL_102;
      }

      v112 = v111 * v133;
      if ((v111 * v133) >> 64 != (v111 * v133) >> 63)
      {
        goto LABEL_103;
      }

      a7 = v112 + v135;
      if (__OFADD__(v112, v135))
      {
        goto LABEL_104;
      }

      v27 = v110;
      v107(v110, v30);
      v18 = v140;
      v107(v140, v30);
      if ((a7 & 0x8000000000000000) != 0)
      {
        goto LABEL_105;
      }

      result = v126;
      if (a7 >= *(v126 + 2))
      {
        goto LABEL_106;
      }

      a5 = v153;
      v91 = v154 + 1;
      v125[a7] = v81;
      a6 = v134;
      v13 = v151;
      if (v134 == v91)
      {
        goto LABEL_74;
      }

      continue;
    }

    break;
  }

  v96 = a5;
  v97 = v152;
  v96(100, v30, a20);
  v149(v18, v97, v30, a20);
  v98 = *v155;
  result = (*v155)(v97, v30);
  if (COERCE_UNSIGNED_INT64(fabs(a17 * 100.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v89 <= -9.22337204e18)
    {
      goto LABEL_110;
    }

    if (v89 >= 9.22337204e18)
    {
      goto LABEL_111;
    }

    v99 = v152;
    a5 = v153;
    (v153)(v124, v30, a20);
    v100 = sub_2584285D0();
    v98(v99, v30);
    v98(v27, v30);
    if (v100)
    {
      (a5)(0, v30, a20);
      v98(v18, v30);
      (*v123)(v18, v27, v30);
    }

    goto LABEL_89;
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
  return result;
}

CGImageRef_optional __swiftcall createCGImage(fromFloatArray:min:max:)(MLMultiArray fromFloatArray, Swift::Float min, Swift::Float max)
{
  isa = fromFloatArray.super.isa;
  v37 = *MEMORY[0x277D85DE8];
  v8 = [(objc_class *)fromFloatArray.super.isa dataPointer];
  v9 = &property descriptor for Transformer.viewToClip;
  v10 = [isa shape];
  sub_25839E29C();
  v11 = sub_258428860();

  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x259C7E900](1, v11);
  }

  else
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
LABEL_31:
      v18 = MEMORY[0x259C7E900](0, v9);
      goto LABEL_10;
    }

    v12 = *(v11 + 40);
  }

  v13 = v12;

  v3 = &selRef_kPersonHeightCoachingEnabled;
  v11 = [v13 integerValue];

  v14 = [isa shape];
  v10 = sub_258428860();

  if ((v10 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x259C7E900](2, v10);
  }

  else
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      __break(1u);
      goto LABEL_33;
    }

    v15 = *(v10 + 48);
  }

  v16 = v15;

  v10 = [v16 integerValue];

  v4 = &property descriptor for Transformer.viewToClip;
  v17 = [isa strides];
  v9 = sub_258428860();

  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_35;
  }

  v18 = *(v9 + 32);
LABEL_10:
  v19 = v18;

  v14 = [v19 v3[115]];

  v20 = [isa v4[292]];
  isa = sub_258428860();

  if ((isa & 0xC000000000000001) != 0)
  {
LABEL_33:
    v21 = MEMORY[0x259C7E900](1, isa);
    goto LABEL_13;
  }

  if (*((isa & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v21 = *(isa + 40);
LABEL_13:
  v22 = v21;

  v23 = [v22 v3[115]];

  if ((v23 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (((v10 | v11) & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  blue.data = v8;
  blue.height = v11;
  blue.width = v10;
  blue.rowBytes = 4 * v23;
  green.data = &v8[4 * v14];
  green.height = v11;
  green.width = v10;
  green.rowBytes = 4 * v23;
  if (v14 + 0x4000000000000000 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  red.data = &v8[8 * v14];
  red.height = v11;
  red.width = v10;
  red.rowBytes = 4 * v23;
  if ((v10 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v24 = v11 * 4 * v10;
  if ((v11 * (4 * v10)) >> 64 != v24 >> 63)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  if (v24 < 0)
  {
    goto LABEL_41;
  }

  if (v24)
  {
    v25 = sub_2584288E0();
    *(v25 + 16) = v24;
    bzero((v25 + 32), v11 * 4 * v10);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  dest.data = (v25 + 32);
  dest.height = v11;
  dest.width = v10;
  dest.rowBytes = 4 * v10;
  v32[0] = max;
  v32[1] = max;
  v32[2] = max;
  v31[0] = min;
  v31[1] = min;
  v31[2] = min;
  if (!vImageConvert_PlanarFToBGRX8888(&blue, &green, &red, 0xFFu, &dest, v32, v31, 0))
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v28 = __CGBitmapContextCreate_0((v25 + 32), v10, v11, 4 * v10, DeviceRGB, 1u);
    if (v28)
    {
      v29 = v28;
      Image = CGBitmapContextCreateImage(v29);

      goto LABEL_26;
    }
  }

  Image = 0;
LABEL_26:

  return Image;
}

UIImage_optional __swiftcall MLMultiArray.image(min:max:channel:axes:orientation:clip:)(Swift::Double min, Swift::Double max, Swift::Int_optional channel, Swift::tuple_Int_Int_Int_optional axes, UIImageOrientation orientation, Swift::Double_optional clip)
{
  v7 = sub_25839DF24(channel.value, channel.is_nil, axes.value._0, axes.value._1, axes.value._2, axes.is_nil, min, max);
  if (v7)
  {
    v9 = v7;
    v10 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v7 scale:orientation orientation:1.0];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  result.value.super.isa = v11;
  result.is_nil = v8;
  return result;
}

UIImage_optional __swiftcall createUIImage(fromFloatArray:min:max:)(MLMultiArray fromFloatArray, Swift::Float min, Swift::Float max)
{
  v3.value = createCGImage(fromFloatArray:min:max:)(fromFloatArray, min, max).value;
  if (v3.value)
  {
    value = v3.value;
    v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  result.value.super.isa = v7;
  result.is_nil = v4;
  return result;
}

char *sub_25839CDB4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *sub_25839CEB0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9283A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25839CFE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25839D0E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F927B80);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_25839D1EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928390);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 48 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_25839D310(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F927EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_25839D414(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928388);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_25839D518(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[22 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 176 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928340);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25839D664(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25839D770(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25839D874(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_25839D978(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928368);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928370);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25839DAC0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *sub_25839DBBC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928358);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25839DCF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E8);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_25839DDFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928348);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 304);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[304 * v8])
    {
      memmove(v12, v13, 304 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25839DF24(uint64_t a1, char a2, size_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8)
{
  v17 = [v8 dataType];
  if (v17 != 65568)
  {
    if (v17 != 131104)
    {
      goto LABEL_17;
    }

    if (a7 <= -2147483650.0)
    {
      __break(1u);
    }

    else if (a7 < 2147483650.0)
    {
      if ((*&a7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (a8 > -2147483650.0)
        {
          if (a8 < 2147483650.0)
          {
            v18 = sub_258398E74(a7, a8, a1, a2 & 1, a3, a4, a5, a6 & 1, 0, 1);
            if (!v18)
            {
              return 0;
            }

            a5 = v18;
            v8 = v20;
            if (v21 == 1)
            {
              goto LABEL_20;
            }

            if ((v19 - 0x2000000000000000) >> 62 == 3)
            {
              goto LABEL_24;
            }

            __break(1u);
            goto LABEL_13;
          }

LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_13:
  v22 = a7;
  v23 = a8;
  v17 = sub_258399B74(a1, a2 & 1, a3, a4, a5, a6 & 1, 0, 1, v22, v23);
  if (!v17)
  {
    return 0;
  }

  a5 = v17;
  v8 = v24;
  if (v25 == 1)
  {
    goto LABEL_20;
  }

  if ((v19 - 0x2000000000000000) >> 62 == 3)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_17:
  if (v17 == 65600)
  {
    v26 = sub_25839A848(a1, a2 & 1, a3, a4, a5, a6 & 1, 0, 1, a7, a8);
    if (v26)
    {
      a5 = v26;
      v8 = v27;
      if (v28 == 1)
      {
LABEL_20:
        v29 = v19;
        DeviceGray = CGColorSpaceCreateDeviceGray();
        v31 = __CGBitmapContextCreate_0((a5 + 32), v29, v8, v29, DeviceGray, 0);
        if (v31)
        {
LABEL_21:
          v32 = v31;
          Image = CGBitmapContextCreateImage(v32);

LABEL_26:

          return Image;
        }

LABEL_25:

        Image = 0;
        goto LABEL_26;
      }

      if ((v19 - 0x2000000000000000) >> 62 == 3)
      {
LABEL_24:
        v34 = 4 * v19;
        v35 = v19;
        DeviceGray = CGColorSpaceCreateDeviceRGB();
        v31 = __CGBitmapContextCreate_0((a5 + 32), v35, v8, v34, DeviceGray, 1u);
        if (v31)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }

      goto LABEL_33;
    }

    return 0;
  }

LABEL_34:
  sub_258428FC0();

  [v8 dataType];
  v37 = sub_2584292B0();
  MEMORY[0x259C7DFF0](v37);

  result = sub_258429100();
  __break(1u);
  return result;
}

unint64_t sub_25839E29C()
{
  result = qword_27F928320;
  if (!qword_27F928320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F928320);
  }

  return result;
}

uint64_t EdgeType.description.getter(unsigned __int8 a1)
{
  v1 = 0x6666696C63;
  v2 = 0x72616E616C70;
  if (a1 != 2)
  {
    v2 = 30323;
  }

  if (a1)
  {
    v1 = 1684828006;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25839E35C()
{
  v1 = 0x6666696C63;
  v2 = 0x72616E616C70;
  if (*v0 != 2)
  {
    v2 = 30323;
  }

  if (*v0)
  {
    v1 = 1684828006;
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

uint64_t EdgePlanesMetrics.EdgePlaneOrientation.description.getter(char a1)
{
  if (!a1)
  {
    return 0x746E6F7A69726F48;
  }

  if (a1 == 1)
  {
    return 0x6C61636974726556;
  }

  return 0;
}

uint64_t sub_25839E57C(unsigned __int8 a1)
{
  sub_2584293C0();
  MEMORY[0x259C7ECE0](a1);
  return sub_2584293F0();
}

MeasureFoundation::EdgePlanesMetrics __swiftcall EdgePlanesMetrics.init(bestPlaneType:otherPlaneType:bestPlaneOrientation:otherPlaneOrientation:bestPlaneConfidence:otherPlaneConfidence:)(MeasureFoundation::WorldPlaneType_optional bestPlaneType, MeasureFoundation::WorldPlaneType_optional otherPlaneType, MeasureFoundation::EdgePlanesMetrics::EdgePlaneOrientation bestPlaneOrientation, MeasureFoundation::EdgePlanesMetrics::EdgePlaneOrientation otherPlaneOrientation, Swift::Float bestPlaneConfidence, Swift::Float otherPlaneConfidence)
{
  v6 = bestPlaneType.value | (otherPlaneType.value << 8) | (bestPlaneOrientation << 16) | (otherPlaneOrientation << 24);
  result.otherPlaneConfidence = otherPlaneConfidence;
  result.bestPlaneConfidence = bestPlaneConfidence;
  result.bestPlaneType = v6;
  result.otherPlaneType = SBYTE1(v6);
  result.bestPlaneOrientation = BYTE2(v6);
  result.otherPlaneOrientation = HIBYTE(v6);
  return result;
}

Swift::String __swiftcall EdgePlanesMetrics.metricDescriptionForBestPlaneType()()
{
  if (v0 > 3u)
  {
    if (v0 > 5u)
    {
      if (v0 != 6)
      {
        v12 = 0xE400000000000000;
        v11 = 1701736270;
        goto LABEL_29;
      }

      v5 = 0x706544656C707061;
      v6 = 0xEA00000000006874;
    }

    else
    {
      v5 = 0x73756F6976657270;
      if (v0 == 4)
      {
        v6 = 0xE800000000000000;
      }

      else
      {
        v5 = 0x6863746170;
        v6 = 0xE500000000000000;
      }
    }
  }

  else
  {
    v1 = 0xE500000000000000;
    v2 = 0x74694B7261;
    v3 = 0xE800000000000000;
    v4 = 0x6B6361626C6C6166;
    if (v0 != 2)
    {
      v4 = 0x6C61636F6CLL;
      v3 = 0xE500000000000000;
    }

    if (v0)
    {
      v2 = 0x6465727265666E69;
      v1 = 0xE800000000000000;
    }

    if (v0 <= 1u)
    {
      v5 = v2;
    }

    else
    {
      v5 = v4;
    }

    if (v0 <= 1u)
    {
      v6 = v1;
    }

    else
    {
      v6 = v3;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x6C61636974726556;
  if (BYTE2(v0) != 1)
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  if (BYTE2(v0))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746E6F7A69726F48;
  }

  if (BYTE2(v0))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006C61;
  }

  v14 = v5;

  MEMORY[0x259C7DFF0](v9, v10);

  v11 = v14;
  v12 = v6;
LABEL_29:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String __swiftcall EdgePlanesMetrics.metricDescriptionForOtherPlaneType()()
{
  if (BYTE1(v0) > 3u)
  {
    if (BYTE1(v0) > 5u)
    {
      if (BYTE1(v0) != 6)
      {
        v13 = 0xE400000000000000;
        v12 = 1701736270;
        goto LABEL_29;
      }

      v5 = 0x706544656C707061;
      v6 = 0xEA00000000006874;
    }

    else
    {
      v5 = 0x73756F6976657270;
      if (BYTE1(v0) == 4)
      {
        v6 = 0xE800000000000000;
      }

      else
      {
        v5 = 0x6863746170;
        v6 = 0xE500000000000000;
      }
    }
  }

  else
  {
    v1 = 0xE500000000000000;
    v2 = 0x74694B7261;
    v3 = 0xE800000000000000;
    v4 = 0x6B6361626C6C6166;
    if (BYTE1(v0) != 2)
    {
      v4 = 0x6C61636F6CLL;
      v3 = 0xE500000000000000;
    }

    if (BYTE1(v0))
    {
      v2 = 0x6465727265666E69;
      v1 = 0xE800000000000000;
    }

    if (BYTE1(v0) <= 1u)
    {
      v5 = v2;
    }

    else
    {
      v5 = v4;
    }

    if (BYTE1(v0) <= 1u)
    {
      v6 = v1;
    }

    else
    {
      v6 = v3;
    }
  }

  v7 = HIBYTE(v0);
  v8 = 0xE800000000000000;
  v9 = 0x6C61636974726556;
  if (HIBYTE(v0) != 1)
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x746E6F7A69726F48;
  }

  if (v7)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xEA00000000006C61;
  }

  v15 = v5;

  MEMORY[0x259C7DFF0](v10, v11);

  v12 = v15;
  v13 = v6;
LABEL_29:
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

__n128 WorldEdge.transform.getter()
{
  v1 = v0 + OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_transform;
  swift_beginAccess();
  return *v1;
}

__n128 WorldEdge.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = (v4 + OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_transform);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  result = a4;
  v5[2] = a3;
  v5[3] = a4;
  return result;
}

uint64_t sub_25839EA94(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_25839EAE8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = v4 + *a4;
  result = swift_beginAccess();
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t WorldEdge.type.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorldEdge.type.setter(char a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float WorldEdge.typeConfidence.getter()
{
  v1 = v0 + OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_typeConfidence;
  swift_beginAccess();
  return *v1;
}

uint64_t WorldEdge.typeConfidence.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_typeConfidence);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_25839EE6C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t WorldEdge.edgePlanesMetrics.getter()
{
  v1 = v0 + OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_edgePlanesMetrics;
  swift_beginAccess();
  return *v1;
}

uint64_t WorldEdge.edgePlanesMetrics.setter(uint64_t a1, int a2)
{
  v5 = v2 + OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_edgePlanesMetrics;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

float WorldEdge.adVariance.getter()
{
  v1 = v0 + OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_adVariance;
  swift_beginAccess();
  return *v1;
}

uint64_t WorldEdge.adVariance.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_adVariance);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

id WorldEdge.__allocating_init(transform:p1:p2:type:adVariance:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, float a12)
{
  v19 = objc_allocWithZone(v12);
  v20 = &v19[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_p1];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = &v19[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_p2];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_type;
  v19[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_type] = 4;
  *&v19[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_typeConfidence] = 0;
  *&v19[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_connectedSurfaces] = MEMORY[0x277D84F90];
  v23 = &v19[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_edgePlanesMetrics];
  *v23 = 196608;
  *(v23 + 2) = 0;
  v24 = &v19[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_transform];
  *v24 = a8;
  v24[1] = a9;
  v24[2] = a10;
  v24[3] = a11;
  swift_beginAccess();
  *v20 = a1;
  *(v20 + 1) = a2;
  v20[16] = a3 & 1;
  swift_beginAccess();
  *v21 = a4;
  *(v21 + 1) = a5;
  v21[16] = a6 & 1;
  swift_beginAccess();
  v19[v22] = a7;
  *&v19[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_backingPlanes] = MEMORY[0x277D84F90];
  *&v19[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_adVariance] = a12;
  v32.receiver = v19;
  v32.super_class = v12;
  return objc_msgSendSuper2(&v32, sel_init);
}

id WorldEdge.init(transform:p1:p2:type:adVariance:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, float a12)
{
  ObjectType = swift_getObjectType();
  v20 = &v12[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_p1];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = &v12[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_p2];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_type;
  v12[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_type] = 4;
  *&v12[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_typeConfidence] = 0;
  *&v12[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_connectedSurfaces] = MEMORY[0x277D84F90];
  v23 = &v12[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_edgePlanesMetrics];
  *v23 = 196608;
  *(v23 + 2) = 0;
  v24 = &v12[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_transform];
  *v24 = a8;
  v24[1] = a9;
  v24[2] = a10;
  v24[3] = a11;
  swift_beginAccess();
  *v20 = a1;
  *(v20 + 1) = a2;
  v20[16] = a3 & 1;
  swift_beginAccess();
  *v21 = a4;
  *(v21 + 1) = a5;
  v21[16] = a6 & 1;
  swift_beginAccess();
  v12[v22] = a7;
  *&v12[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_backingPlanes] = MEMORY[0x277D84F90];
  *&v12[OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_adVariance] = a12;
  v32.receiver = v12;
  v32.super_class = ObjectType;
  return objc_msgSendSuper2(&v32, sel_init);
}

double WorldEdge.projected(for:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_p1;
  swift_beginAccess();
  result = 0.0;
  if ((*(v3 + 16) & 1) == 0)
  {
    v7 = v3;
    v5 = *v3;
    v6 = *(v7 + 8);
    v8 = (v1 + OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_p2);
    swift_beginAccess();
    if (v8[1].i8[0])
    {
      return 0.0;
    }

    else
    {
      v9.i64[0] = v5;
      v9.i64[1] = v6;
      v20 = v9;
      v22 = *v8;
      sub_2583EF3B4(a1, v23);
      v16 = v25;
      v18 = v24;
      v12 = v27;
      v14 = v26;
      sub_2583EF3B4(a1, v28);
      *v10.i8 = _s17MeasureFoundation0A6CameraC12projectPoint_14viewProjection12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(v20, v18, v16, v14, v12, v28[0]);
      v21 = v10;
      sub_2583EF3B4(a1, v29);
      v17 = v31;
      v19 = v30;
      v13 = v33;
      v15 = v32;
      sub_2583EF3B4(a1, v34);
      *v11.i8 = _s17MeasureFoundation0A6CameraC12projectPoint_14viewProjection12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(v22, v19, v17, v15, v13, v34[0]);
      *&result = vzip1q_s64(v21, v11).u64[0];
    }
  }

  return result;
}

uint64_t WorldEdge.getClosestScreenSpacePoint(from:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, float64_t a3@<D0>, float64_t a4@<D1>)
{
  v7 = v4 + OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_p1;
  swift_beginAccess();
  v8 = 0uLL;
  v9 = 0.0;
  if (*(v7 + 16))
  {
    result = 0;
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v14 = *v7;
    v13 = *(v7 + 8);
    v15 = (v4 + OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_p2);
    swift_beginAccess();
    if (v15[1].i8[0] & 1) != 0 || ((v16.i64[0] = v14, v16.i64[1] = v13, v47 = v16, v49 = *v15, sub_2583EF3B4(a1, v55), v41 = v57, v44 = v56, v36 = v59, v38 = v58, sub_2583EF3B4(a1, v60), *v47.f32 = _s17MeasureFoundation0A6CameraC12projectPoint_14viewProjection12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(v47, v44, v41, v38, v36, v60[0]), sub_2583EF3B4(a1, v61), v42 = v63, v45 = v62, v37 = v65, v39 = v64, sub_2583EF3B4(a1, v66), v17 = _s17MeasureFoundation0A6CameraC12projectPoint_14viewProjection12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(v49, v45, v42, v39, v37, v66[0]), v18.f64[0] = a3, v18.f64[1] = a4, v19 = vcvt_f32_f64(v18), *&v18.f64[0] = vsub_f32(v19, *v47.f32), LODWORD(v18.f64[1]) = 0, *v20.f32 = vsub_f32(v17, *v47.f32), v21 = vmlaq_f32(vmulq_f32(v20, xmmword_25842D470), xmmword_25842CBC0, vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL)), v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v23 = vmulq_f32(v21, v21), *&v24 = v23.f32[1] + (v23.f32[2] + v23.f32[0]), *v23.f32 = vrsqrte_f32(v24), *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))), v25 = vmulq_n_f32(v22, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]), v26 = vmulq_f32(v18, v25), v27 = v26.f32[2] + vaddv_f32(*v26.f32), v28 = vsub_f32(v19, vmul_n_f32(*v25.f32, v27)), v29 = vmul_f32(*v20.f32, *v20.f32), *v26.f32 = vsub_f32(*v47.f32, v28), v30 = vsub_f32(v17, v28), v31 = vmul_f32(v30, v30), v32 = vadd_f32(vzip1_s32(v31, v29), vzip2_s32(v31, v29)), vaddv_f32(vmul_f32(*v26.f32, *v26.f32)) < v32.f32[1]) ? (v33 = v32.f32[0] < v32.f32[1]) : (v33 = 0), !v33 || (v40 = v27, v34 = (v4 + OBJC_IVAR____TtC17MeasureFoundation9WorldEdge_transform), swift_beginAccess(), v52 = v34[3], v54 = v34[1], sub_2583EF3B4(a1, v67), v48 = v69, v50 = v68, v43 = v71, v46 = v70, sub_2583EF3B4(a1, v72), result = sub_2583B328C(*&v28, v54, v52, v50, v48, v46, v43, v72[0]), (v35)))
    {
      result = 0;
      v11 = 0;
      v12 = 1;
      v8 = 0uLL;
    }

    else
    {
      v12 = 0;
      v8 = vcvtq_f64_f32(v28);
      v9 = v40;
    }
  }

  *a2 = v8;
  *(a2 + 16) = result;
  *(a2 + 24) = v11;
  *(a2 + 32) = v9;
  *(a2 + 36) = v12;
  return result;
}

id WorldEdge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_25839F934()
{
}

id WorldEdge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25839F9FC()
{
  result = qword_27F9283F0;
  if (!qword_27F9283F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9283F0);
  }

  return result;
}

unint64_t sub_25839FA54()
{
  result = qword_27F9283F8;
  if (!qword_27F9283F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9283F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EdgeType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EdgeType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy49_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25839FC14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25839FC68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EdgePlanesMetrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 12))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 2);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EdgePlanesMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 2) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EdgePlanesMetrics.EdgePlaneOrientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EdgePlanesMetrics.EdgePlaneOrientation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 WorldPerson.face.getter()
{
  v1 = v0 + OBJC_IVAR____TtC17MeasureFoundation11WorldPerson_face;
  swift_beginAccess();
  return *v1;
}

unint64_t WorldPerson.height.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC17MeasureFoundation11WorldPerson_height);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t WorldPerson.timeSuggested.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation11WorldPerson_timeSuggested;
  swift_beginAccess();
  return sub_2583A000C(v1 + v3, a1);
}

uint64_t sub_2583A000C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorldPerson.timeSuggested.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation11WorldPerson_timeSuggested;
  swift_beginAccess();
  sub_2583A00DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2583A00DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *WorldPerson.__allocating_init(_:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC17MeasureFoundation11WorldPerson_height];
  *v6 = 0;
  v6[4] = 1;
  v7 = OBJC_IVAR____TtC17MeasureFoundation11WorldPerson_timeSuggested;
  v8 = sub_2584283A0();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  v9 = &v5[OBJC_IVAR____TtC17MeasureFoundation11WorldPerson_face];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v19.receiver = v5;
  v19.super_class = v4;
  v10 = objc_msgSendSuper2(&v19, sel_init);
  v11 = *&v10[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state];
  v12 = *(v11 + 24);
  v13 = v10;

  os_unfair_lock_lock(v12);
  swift_beginAccess();
  *(v11 + 16) = 0;
  os_unfair_lock_unlock(v12);

  return v13;
}

char *WorldPerson.init(_:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = &v4[OBJC_IVAR____TtC17MeasureFoundation11WorldPerson_height];
  *v5 = 0;
  v5[4] = 1;
  v6 = OBJC_IVAR____TtC17MeasureFoundation11WorldPerson_timeSuggested;
  v7 = sub_2584283A0();
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  v8 = &v4[OBJC_IVAR____TtC17MeasureFoundation11WorldPerson_face];
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for WorldPerson();
  v9 = objc_msgSendSuper2(&v18, sel_init);
  v10 = *&v9[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state];
  v11 = *(v10 + 24);
  v12 = v9;

  os_unfair_lock_lock(v11);
  swift_beginAccess();
  *(v10 + 16) = 0;
  os_unfair_lock_unlock(v11);

  return v12;
}

id WorldPerson.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorldPerson.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorldPerson();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorldPerson()
{
  result = qword_27F928410;
  if (!qword_27F928410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_2583A0530@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC17MeasureFoundation11WorldPerson_face;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v7 = *(v3 + 48);
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

__n128 sub_2583A058C(__n128 *a1, void *a2)
{
  v6 = a1[1];
  v7 = *a1;
  v4 = a1[3];
  v5 = a1[2];
  v2 = (*a2 + OBJC_IVAR____TtC17MeasureFoundation11WorldPerson_face);
  swift_beginAccess();
  *v2 = v7;
  v2[1] = v6;
  result = v4;
  v2[2] = v5;
  v2[3] = v4;
  return result;
}

uint64_t sub_2583A05F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC17MeasureFoundation11WorldPerson_height;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a2 = *v3;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_2583A0650(int *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2 + OBJC_IVAR____TtC17MeasureFoundation11WorldPerson_height;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3;
  return result;
}

void sub_2583A06B8()
{
  sub_2583A075C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2583A075C()
{
  if (!qword_27F928420[0])
  {
    sub_2584283A0();
    v0 = sub_258428DA0();
    if (!v1)
    {
      atomic_store(v0, qword_27F928420);
    }
  }
}

uint64_t sub_2583A07B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UncertainValue.init(value:confidence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a3;
  v37 = a1;
  v38 = a2;
  v36 = a6;
  v32 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v33 = &v29 - v9;
  v35 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v30 = &v29 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  v31 = *(type metadata accessor for UncertainValue() + 44);
  sub_258429140();
  sub_258429140();
  swift_getAssociatedConformanceWitness();
  sub_258429360();
  sub_258429300();
  v20 = v30;
  sub_258429120();
  v21 = *(v35 + 8);
  v21(v12, a4);
  v21(v15, a4);
  v22 = v36;
  Clamped.init(min:max:)(v19, v20, a4, v36 + v31);
  v23 = v34;
  v24 = *(v34 - 8);
  v25 = v37;
  (*(v24 + 16))(v22, v37, v34);
  v26 = type metadata accessor for Clamped();
  v27 = v38;
  sub_258382A9C(v38, v26);
  v21(v27, a4);
  return (*(v24 + 8))(v25, v23);
}

__n128 sub_2583A0CDC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_2583A0CF0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Clamped();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2583A0D7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v9 <= v5)
  {
    v12 = *(v4 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v9)
  {
    v13 = *(v7 + 64);
  }

  else
  {
    v13 = v11 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(*(a3 + 16) - 8) + 64) + v10;
  v15 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v16 = v13 + (v14 & ~v10) + ((v11 + v10 + ((v11 + v10) & ~v10)) & ~v10);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v12)
      {
LABEL_31:
        if (v5 >= v9)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v8 + 48))((a1 + v14) & ~v10, v9, v6);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_17:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_2583A0F74(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = (v11 + v10) & ~v10;
  v16 = ((v11 + v10 + v15) & ~v10) + v11;
  if (v8)
  {
    v17 = ((v11 + v10 + v15) & ~v10) + v11;
  }

  else
  {
    v17 = v16 + 1;
  }

  v18 = v17 + v14;
  v19 = a3 >= v12;
  v20 = a3 - v12;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v12 < a2)
  {
    v22 = ~v12 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = a1;
        bzero(a1, v18);
        a1 = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_60:
              if (v21 == 2)
              {
                *&a1[v18] = v24;
              }

              else
              {
                *&a1[v18] = v24;
              }

              return;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v23 = a1;
      bzero(a1, v18);
      a1 = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v21)
    {
      a1[v18] = v24;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v18] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v21)
  {
    goto LABEL_33;
  }

  a1[v18] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v6 >= v8)
  {
    v33 = *(v5 + 56);

    v33();
  }

  else
  {
    v29 = &a1[v13] & ~v10;
    if (v8 >= a2)
    {
      v34 = *(v7 + 56);
      v35 = &a1[v13] & ~v10;

      v34(v35);
    }

    else
    {
      if (v16 <= 3)
      {
        v30 = ~(-1 << (8 * v16));
      }

      else
      {
        v30 = -1;
      }

      if (v16)
      {
        v31 = v30 & (~v8 + a2);
        if (v16 <= 3)
        {
          v32 = v16;
        }

        else
        {
          v32 = 4;
        }

        bzero((&a1[v13] & ~v10), v16);
        if (v32 > 2)
        {
          if (v32 == 3)
          {
            *v29 = v31;
            *(v29 + 2) = BYTE2(v31);
          }

          else
          {
            *v29 = v31;
          }
        }

        else if (v32 == 1)
        {
          *v29 = v31;
        }

        else
        {
          *v29 = v31;
        }
      }
    }
  }
}

void Synchronized.wrappedValue.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock(*(v1 + *(*v1 + 96)));
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
  os_unfair_lock_unlock(*(v1 + *(*v1 + 96)));
}

uint64_t Synchronized.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  sub_2583A17FC(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*Synchronized.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  Synchronized.wrappedValue.getter(v9);
  return sub_2583A153C;
}

void sub_2583A153C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_2583A17FC(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_2583A17FC(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Synchronized.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Synchronized.init(wrappedValue:)(a1);
  return v2;
}

uint64_t *Synchronized.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = swift_slowAlloc();
  *(v1 + v4) = v5;
  *v5 = 0;
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 88), a1);
  return v1;
}

uint64_t *Synchronized.deinit()
{
  v1 = *v0;
  MEMORY[0x259C7FB80](*(v0 + *(*v0 + 96)), -1, -1);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  return v0;
}

uint64_t Synchronized.__deallocating_deinit()
{
  Synchronized.deinit();

  return swift_deallocClassInstance();
}

void sub_2583A17FC(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock(*(v1 + *(*v1 + 96)));
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  os_unfair_lock_unlock(*(v1 + *(*v1 + 96)));
}

uint64_t sub_2583A18E0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_2583A1A14(uint64_t a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_blendingEnabled] = 0;
  swift_weakInit();
  swift_weakInit();
  *&v5[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_adWindow] = 0;
  *&v5[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_scene] = 0;
  *&v5[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_demoModes] = 7;
  *&v5[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_currentDemoMode] = 0;
  *&v5[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_swipeUpRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_swipeDownRecognizer] = 0;
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    if (qword_27F9279B8 != -1)
    {
      swift_once();
    }

    v12 = static MetalBundle.device;
    swift_unknownObjectRetain();
  }

  v16.receiver = v5;
  v16.super_class = ObjectType;
  swift_unknownObjectRetain();
  v13 = objc_msgSendSuper2(&v16, sel_initWithFrame_device_, v12, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  v14 = v13;
  [v14 setOpaque_];
  [v14 setUserInteractionEnabled_];

  swift_unknownObjectRelease();
  return v14;
}

void OverlayMetalView.populateScene(depthProcessor:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_scene;
  swift_beginAccess();
  if (*&v1[v4])
  {
    sub_258429100();
    __break(1u);
  }

  else
  {
    v5 = *(a1 + 72);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);
    [v1 setFrame_];
    swift_weakAssign();
    swift_beginAccess();
    swift_weakAssign();
    swift_beginAccess();
    v7 = *(a1 + 224);
    v8 = objc_opt_self();
    v9 = &selRef_clearColor;
    if ((v7 & 0x80) != 0)
    {
      v9 = &selRef_blackColor;
    }

    v10 = [v8 *v9];
    [v1 setBackgroundColor_];

    [v1 setDepthStencilPixelFormat_];
    type metadata accessor for OverlayMetalScene();
    swift_allocObject();
    v11 = v1;

    v12 = sub_2583B9B58(v11, a1);

    *&v2[v4] = v12;

    if (v12)
    {
      swift_beginAccess();
      v13 = v12[2];
      swift_beginAccess();
      v14 = *(v13 + 24);
      if (v14 >> 62)
      {
        v15 = sub_258428F10();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v15 < 1;
    }

    else
    {
      v16 = 1;
    }

    [v11 setHidden_];
    [v11 setDelegate_];
    sub_258385DB0(0, &qword_27F928548);
    if (qword_27F927A58 != -1)
    {
      swift_once();
    }

    static NSUserDefaults.observe(observer:keys:)(v11, qword_27F92F228);
    v17 = [objc_opt_self() standardUserDefaults];
    KeyPath = swift_getKeyPath();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_258385DB0(0, &qword_27F928550);
    v20 = sub_258428CC0();
    sub_2583A2208(KeyPath, v20, sub_2583A3600, v19);
  }
}

id sub_2583A1FC0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kADDemoEnabled];
  *a2 = result;
  return result;
}

void sub_2583A2008(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong superview];
    if (!v4)
    {
      v5 = v3;
LABEL_11:

      return;
    }

    v5 = v4;
    if (v1)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v3 action:sel_didSwipeWithSender_];
      [v6 setNumberOfTouchesRequired_];
      [v6 setDirection_];
      v7 = *&v3[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_swipeUpRecognizer];
      *&v3[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_swipeUpRecognizer] = v6;
      v8 = v6;

      v9 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v3 action:sel_didSwipeWithSender_];
      [v9 setNumberOfTouchesRequired_];
      [v9 setDirection_];
      v10 = *&v3[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_swipeDownRecognizer];
      *&v3[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_swipeDownRecognizer] = v9;
      v11 = v9;

      [v5 addGestureRecognizer_];
      [v5 addGestureRecognizer_];
    }

    else
    {
      v12 = OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_swipeUpRecognizer;
      v13 = *&v3[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_swipeUpRecognizer];
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_swipeDownRecognizer;
      v15 = *&v3[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_swipeDownRecognizer];
      if (!v15)
      {
        goto LABEL_10;
      }

      v8 = v13;
      v11 = v15;
      [v5 removeGestureRecognizer_];
      [v5 removeGestureRecognizer_];
      v16 = *&v3[v14];
      *&v3[v14] = 0;

      v17 = *&v3[v12];
      *&v3[v12] = 0;

      sub_2583A3608();
    }

LABEL_10:
    goto LABEL_11;
  }
}

uint64_t sub_2583A2208(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_27F927B60 != -1)
  {
    swift_once();
  }

  v9 = static NSUserDefaults.standardStore;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;

  v11 = a2;
  result = sub_258428E30();
  if (!v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = result;
  v15 = v13;
  v31 = v11;
  v32 = a3;
  v16 = OBJC_IVAR____TtCE17MeasureFoundationCSo14NSUserDefaults14_DefaultsStore_actions;
  swift_beginAccess();
  v17 = *(v9 + v16);
  if (*(v17 + 16))
  {
    v18 = sub_258384364(v14, v15);
    v20 = v19;

    if (v20)
    {
      v21 = *(*(v17 + 56) + 8 * v18);
      swift_endAccess();

      goto LABEL_9;
    }
  }

  else
  {
  }

  swift_endAccess();
  v21 = MEMORY[0x277D84F90];
LABEL_9:
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2583A3E38;
  *(v22 + 24) = v10;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_25839CEB0(0, v21[2] + 1, 1, v21);
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_25839CEB0((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[2 * v24];
  v25[4] = sub_2583A3E7C;
  v25[5] = v22;
  result = sub_258428E30();
  if (v26)
  {
    v27 = result;
    v28 = v26;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v9 + v16);
    *(v9 + v16) = 0x8000000000000000;
    sub_258384F08(v21, v27, v28, isUniquelyReferenced_nonNull_native);

    *(v9 + v16) = v35;
    swift_endAccess();
    v35 = v5;
    v34 = MEMORY[0x277D839B0];
    v30 = v5;
    swift_getAtKeyPath();

    sub_2583A3094(v33, v31, v32, a4);

    return __swift_destroy_boxed_opaque_existential_0(v33);
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::Void __swiftcall OverlayMetalView.didUpdate(frame:)(ARFrame frame)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_weakLoadStrong())
    {
      v5 = OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_adWindow;
      if (!*&v1[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_adWindow])
      {
        swift_beginAccess();
        if ((*(v4 + 224) & 0x40) != 0)
        {
          v6 = v1;
          v7 = ADProcessor.transformer.getter();
          v8 = *(v7 + 1040);
          v9 = *(v7 + 1048);

          [v1 bounds];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v18 = type metadata accessor for Viewport();
          v19 = objc_allocWithZone(v18);
          v20 = OBJC_IVAR____TtC17MeasureFoundation8Viewport_portView;
          *&v19[v20] = _s17MeasureFoundation8ViewportC8portView33_7C22ACC4716B0FDE2A507783D80F08CBLLSo6UIViewCvpfi_0();
          v21 = &v19[OBJC_IVAR____TtC17MeasureFoundation8Viewport_portSize];
          *v21 = v8;
          *(v21 + 1) = v9;
          v35.receiver = v19;
          v35.super_class = v18;
          v22 = objc_msgSendSuper2(&v35, sel_initWithFrame_, v11, v13, v15, v17);
          sub_25838CA5C();
          v1 = v6;

          v23 = *&v6[v5];
          *&v6[v5] = v22;

          v24 = [v6 superview];
          if (v24)
          {
            if (!*&v6[v5])
            {
              __break(1u);
              return;
            }

            v25 = v24;
            [v24 addSubview_];
          }
        }
      }

      v26 = OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_scene;
      swift_beginAccess();
      v27 = *&v1[v26];
      if (v27)
      {
        swift_beginAccess();
        v28 = *(v27 + 16);
        swift_beginAccess();
        v29 = *(v28 + 24);
        if (v29 >> 62)
        {
          v30 = sub_258428F10();
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v31 = v30 < 1;
      }

      else
      {
        v31 = 1;
      }

      [v1 setHidden_];
      v32 = *&v1[v26];
      if (!v32)
      {
        goto LABEL_21;
      }

      swift_beginAccess();
      v33 = *(v32 + 16);
      swift_beginAccess();
      v34 = *(v33 + 24);
      if (v34 >> 62)
      {
        if (sub_258428F10() > 0)
        {
LABEL_19:
          if (*&v1[v26])
          {

            sub_2583B8EF0(frame.super.isa);
          }
        }
      }

      else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
      {
        goto LABEL_19;
      }

LABEL_21:

      return;
    }
  }
}

id OverlayMetalView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall OverlayMetalView.draw(in:)(MTKView *in)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_scene;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    swift_beginAccess();
    v5 = *(v4 + 16);
    swift_beginAccess();
    v6 = *(v5 + 24);
    if (v6 >> 62)
    {
      if (sub_258428F10() < 1)
      {
        return;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      return;
    }

    v7 = [(MTKView *)in superview];
    if (v7)
    {
      v8 = v7;
      [v7 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      [(MTKView *)in setFrame:v10, v12, v14, v16];
    }

    if (*(v1 + v3))
    {

      sub_2583DC184();
    }
  }
}

void sub_2583A2A74(void *a1)
{
  if ([a1 state] != 3)
  {
    return;
  }

  v3 = [a1 direction];
  if (v3 == 8)
  {
    v4 = OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_currentDemoMode;
    v9 = *(v1 + OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_currentDemoMode);
    v10 = v9 - 1;
    v11 = v9 <= 0;
    v8 = 6;
    if (!v11)
    {
      v8 = v10;
    }
  }

  else
  {
    if (v3 != 4)
    {
      return;
    }

    v4 = OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_currentDemoMode;
    v5 = *(v1 + OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_currentDemoMode);
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
      return;
    }

    v8 = v7 % 7;
  }

  *(v1 + v4) = v8;
  sub_2583A3608();
  v12 = *(v1 + OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_currentDemoMode);
  if (v12 > 3)
  {
    if (v12 != 4)
    {
      if (v12 != 5)
      {
        if (v12 != 6)
        {
          return;
        }

        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  else if (v12 != 1)
  {
    if (v12 != 2)
    {
      if (v12 != 3)
      {
        return;
      }

      goto LABEL_17;
    }

LABEL_18:
    v14 = objc_opt_self();
    v15 = [v14 standardUserDefaults];
    v16 = sub_258428630();
    [v15 setBool:1 forKey:v16];

    v13 = [v14 standardUserDefaults];
    goto LABEL_19;
  }

LABEL_17:
  v13 = [objc_opt_self() standardUserDefaults];
LABEL_19:
  v17 = sub_258428630();
  [v13 setBool:1 forKey:?];
}

id sub_2583A2EA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_258428630();
  v8 = [v6 BOOLForKey_];

  v9 = *a1;
  v10 = *a1 & a4;
  if (v8)
  {
    if (v10 != a4)
    {
      v11 = v9 | a4;
LABEL_6:
      *a1 = v11;
    }
  }

  else if (v10)
  {
    v11 = v9 & ~a4;
    goto LABEL_6;
  }

  return v8;
}

uint64_t sub_2583A3094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_258428470();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258428490();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25839783C(a1, v20);
  v15 = swift_allocObject();
  sub_2583897F8(v20, (v15 + 16));
  *(v15 + 48) = a3;
  *(v15 + 56) = a4;
  aBlock[4] = sub_2583A3EC4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258383428;
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);

  sub_258428480();
  v18[1] = MEMORY[0x277D84F90];
  sub_2583A3EE8(&qword_27F928600, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928608);
  sub_2583A3F30();
  sub_258428E70();
  MEMORY[0x259C7E5E0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2583A3358(void *a1, uint64_t (*a2)(id *))
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  swift_getDynamicType();
  sub_258385DB0(0, &qword_27F928320);
  if (swift_dynamicCastMetatype() || (sub_258385DB0(0, qword_27F928620), swift_dynamicCastMetatype()))
  {
    sub_25839783C(a1, v9);
    swift_dynamicCast();
    v4 = [v8 BOOLValue];

    v7 = v4;
    v5 = &v7;
  }

  else
  {
    sub_25839783C(a1, v9);
    swift_dynamicCast();
    v5 = &v8;
  }

  return a2(v5);
}

void sub_2583A3498()
{
  *(v0 + OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_blendingEnabled) = 0;
  swift_weakInit();
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_adWindow) = 0;
  *(v0 + OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_scene) = 0;
  *(v0 + OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_demoModes) = 7;
  *(v0 + OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_currentDemoMode) = 0;
  *(v0 + OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_swipeUpRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_swipeDownRecognizer) = 0;
  sub_258429100();
  __break(1u);
}

id sub_2583A3580@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kADDemoEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_2583A35C8()
{
  MEMORY[0x259C7FC20](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2583A3608()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_258428630();
  [v1 setBool:0 forKey:v2];

  v3 = [v0 standardUserDefaults];
  v4 = sub_258428630();
  [v3 setBool:0 forKey:v4];

  v5 = [v0 standardUserDefaults];
  v6 = sub_258428630();
  [v5 setBool:0 forKey:v6];

  v7 = [v0 standardUserDefaults];
  v8 = sub_258428630();
  [v7 setBool:0 forKey:v8];

  v9 = [v0 standardUserDefaults];
  v10 = sub_258428630();
  [v9 setBool:0 forKey:v10];

  v11 = [v0 standardUserDefaults];
  v12 = sub_258428630();
  [v11 setBool:0 forKey:v12];

  v13 = [v0 standardUserDefaults];
  v14 = sub_258428630();
  [v13 setBool:0 forKey:v14];

  v15 = [v0 standardUserDefaults];
  v16 = sub_258428630();
  [v15 setBool:0 forKey:v16];
}

uint64_t _s17MeasureFoundation16OverlayMetalViewC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyg6ChangeI0aypGSgSvSgtF_0(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      if (qword_27F927A50 != -1)
      {
        swift_once();
      }

      v9 = qword_27F92F220;
      if (*(qword_27F92F220 + 16))
      {
        v10 = sub_258384364(a1, a2);
        if (v11)
        {
          v12 = *(*(v9 + 56) + 8 * v10);
          swift_beginAccess();
          v13 = sub_2583A2EA0((v6 + 224), a1, a2, v12);
          swift_endAccess();
          v14 = *(v6 + 224);
          if (v12 > 15)
          {
            if (v12 > 127)
            {
              if (v12 == 128)
              {
                v21 = objc_opt_self();
                v22 = &selRef_blackColor;
                if ((v13 & 1) == 0)
                {
                  v22 = &selRef_clearColor;
                }

                v23 = [v21 *v22];
                [v2 setBackgroundColor_];
              }

              else if (v12 == 4096)
              {
                swift_beginAccess();
                *(v8 + 242) = v13 & 1;
              }

              goto LABEL_35;
            }

            if (v12 != 16)
            {
              if (v12 == 64)
              {
                v15 = *&v2[OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_adWindow];
                if (v15)
                {
                  [v15 setHidden_];
                }
              }

              goto LABEL_35;
            }

LABEL_21:
            v16 = OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_scene;
            swift_beginAccess();
            if (*&v2[v16])
            {

              v17 = sub_2583B9800();

              v18 = (v14 & 0x18) != 0;
              swift_beginAccess();
              v17[32] = v18;
              swift_beginAccess();
              v17[33] = v18;
              swift_beginAccess();
              v17[34] = v18;
LABEL_34:
            }

LABEL_35:
            v27 = OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_scene;
            swift_beginAccess();
            v28 = *&v2[v27];
            if (v28)
            {
              swift_beginAccess();
              v29 = *(v28 + 16);
              swift_beginAccess();
              v30 = *(v29 + 24);
              if (v30 >> 62)
              {
                v31 = sub_258428F10();
              }

              else
              {
                v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v32 = v31 < 1;
            }

            else
            {
              v32 = 1;
            }

            [v2 setHidden_];
          }

          switch(v12)
          {
            case 2:
              v19 = OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_scene;
              swift_beginAccess();
              if (!*&v2[v19])
              {
                goto LABEL_35;
              }

              v20 = sub_2583B973C();
              break;
            case 4:
              v24 = OBJC_IVAR____TtC17MeasureFoundation16OverlayMetalView_scene;
              swift_beginAccess();
              if (!*&v2[v24])
              {
                goto LABEL_35;
              }

              v20 = sub_2583B9678();
              break;
            case 8:
              goto LABEL_21;
            default:
              goto LABEL_35;
          }

          v25 = v20;

          swift_beginAccess();
          v26 = v13 & 1;
          v25[32] = v26;
          swift_beginAccess();
          v25[33] = v26;
          swift_beginAccess();
          v25[34] = v26;
          goto LABEL_34;
        }
      }
    }
  }
}

uint64_t sub_2583A3D90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9285F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2583A3DF8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2583A3E44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2583A3E84()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2583A3EE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2583A3F30()
{
  result = qword_27F928610;
  if (!qword_27F928610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F928608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928610);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t SIMD4<>.rgba.getter(float32x4_t a1)
{
  v1 = 255.0 * a1.f32[0];
  if ((255.0 * a1.f32[0]) <= -1.0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v1 >= 4295000000.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = vmuls_lane_f32(255.0, *a1.f32, 1);
  if (v2 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 >= 4295000000.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = vmuls_lane_f32(255.0, a1, 2);
  if (v3 <= -1.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v3 >= 4295000000.0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = COERCE_UNSIGNED_INT(fabs(255.0 * a1.f32[0])) > 0x7F7FFFFF;
  v5 = vmuls_lane_f32(255.0, a1, 3);
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF || v4 || (LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_20;
  }

  if (v5 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v5 < 4295000000.0)
  {
    return v5 | (v2 << 16) | (v1 << 24) | (v3 << 8);
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t static Graphics.blendARGB(srcColor:dstColor:)(unint64_t result, unsigned int a2)
{
  v2 = a2 / 255.0;
  v3 = result / 255.0;
  v4 = v3 + v2;
  if ((v3 + v2) > 1.0)
  {
    v4 = 1.0;
  }

  v5 = v4 * 255.0;
  if (COERCE_INT(fabs(v4 * 255.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = v3 * (1.0 - v2);
  v9 = lroundf(v8 * BYTE1(result));
  result = lroundf(v2 * BYTE1(a2));
  v10 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = lroundf(v8 * BYTE2(v7));
  result = lroundf(v2 * BYTE2(a2));
  v12 = __OFADD__(v11, result);
  v13 = v11 + result;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = lroundf(v8 * HIBYTE(v7));
  result = lroundf(v2 * HIBYTE(a2));
  if (__OFADD__(v14, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = v5 | (v10 << 8) | (v13 << 16) | ((v14 + result) << 24);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(result))
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t _s17MeasureFoundation8GraphicsC9blendBGRA8srcColor03dstG0s6UInt32VAH_AHtFZ_0(unint64_t result, unsigned int a2)
{
  v2 = HIBYTE(a2) / 255.0;
  v3 = BYTE3(result) / 255.0;
  v4 = v3 + v2;
  if ((v3 + v2) > 1.0)
  {
    v4 = 1.0;
  }

  v5 = v4 * 255.0;
  if (COERCE_INT(fabs(v4 * 255.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = v3 * (1.0 - v2);
  v9 = lroundf(v8 * BYTE2(result));
  result = lroundf(v2 * BYTE2(a2));
  v10 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = lroundf(v8 * HIBYTE(v7));
  result = lroundf(v2 * BYTE1(a2));
  v12 = __OFADD__(v11, result);
  v13 = v11 + result;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = lroundf(v8 * v7);
  result = lroundf(v2 * a2);
  if (__OFADD__(v14, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = (v10 << 16) | (v5 << 24) | (v13 << 8) | (v14 + result);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(result))
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t _s17MeasureFoundation8GraphicsC8multiply5color6normals6UInt32VAH_s5SIMD4VySfGtFZ_0(unsigned int a1, float32x4_t a2)
{
  if ((HIBYTE(a1) * a2.f32[0]) <= 255.0)
  {
    v3 = HIBYTE(a1) * a2.f32[0];
  }

  else
  {
    v3 = 255.0;
  }

  v4 = lroundf(v3);
  v5 = vmuls_lane_f32(BYTE2(a1), *a2.f32, 1);
  if (v5 > 255.0)
  {
    v5 = 255.0;
  }

  v6 = lroundf(v5);
  v7 = vmuls_lane_f32(BYTE1(a1), a2, 2);
  if (v7 > 255.0)
  {
    v7 = 255.0;
  }

  v8 = lroundf(v7);
  v9 = vmuls_lane_f32(a1, a2, 3);
  if (v9 > 255.0)
  {
    v9 = 255.0;
  }

  result = (v6 << 16) | (v4 << 24) | (v8 << 8) | lroundf(v9);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(result))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t Histogram.max.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getTupleTypeMetadata2();
  v5 = sub_258428DA0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Histogram.min.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  swift_getTupleTypeMetadata2();
  v5 = sub_258428DA0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

float Histogram.getValue(of:)()
{
  sub_258428560();
  result = v1;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2583A46B8()
{
  result = sub_258428540();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeMetadata2();
    result = sub_258428DA0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2583A4784(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v5)
  {
    v9 = 4;
  }

  else
  {
    v9 = 5;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v4 + 80) & 0xFCLL;
  v11 = v10 | 3;
  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  v12 = ((((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) + v9 + ((((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) + v9 + v11 + ((v10 + 11) & ~v11)) & ~v11) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v13 = a2 - v7;
  v14 = v12 & 0xFFFFFFFC;
  if ((v12 & 0xFFFFFFFC) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    if ((v6 & 0x80000000) == 0)
    {
      v21 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    if (v5)
    {
      v22 = (*(v4 + 48))((a1 + v11 + 8) & ~v11);
      v23 = v22 != 0;
      result = (v22 - 1);
      if (result != 0 && v23)
      {
        return result;
      }
    }

    return 0;
  }

  if (!v17)
  {
    goto LABEL_33;
  }

  v18 = *(a1 + v12);
  if (!v18)
  {
    goto LABEL_33;
  }

LABEL_29:
  v19 = v18 - 1;
  if (v14)
  {
    v19 = 0;
    LODWORD(v14) = *a1;
  }

  return v7 + (v14 | v19) + 1;
}

void sub_2583A491C(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80) & 0xFC;
  v11 = v10 | 3;
  v12 = (v10 + 11) & ~(v10 | 3);
  v13 = (*(*(*(a4 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v14 = v13 + 4;
  v15 = v13 + 5;
  if (v7)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v16 + ((v16 + v11 + v12) & ~v11) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v9 < a3)
  {
    v18 = a3 - v9;
    if (((v16 + ((v16 + v11 + v12) & ~v11) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v16 + ((v16 + v11 + v12) & ~v11) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v21 = a2 - v9;
    }

    else
    {
      v21 = 1;
    }

    if (((v16 + ((v16 + v11 + v12) & ~v11) + 3) & 0xFFFFFFFC) != 0xFFFFFFFC)
    {
      v22 = ~v9 + a2;
      v23 = a1;
      bzero(a1, v17);
      a1 = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v17) = v21;
      }

      else
      {
        *(a1 + v17) = v21;
      }
    }

    else if (v5)
    {
      *(a1 + v17) = v21;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v17) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v5)
  {
    goto LABEL_38;
  }

  *(a1 + v17) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if ((v8 & 0x80000000) != 0)
  {
    v25 = ((a1 + v11 + 8) & ~v11);
    if (v8 >= a2)
    {
      v28 = a2 - v7;
      if (a2 >= v7)
      {
        if (v14)
        {
          bzero(((a1 + v11 + 8) & ~v11), v14);
          *v25 = v28;
        }
      }

      else
      {
        v29 = *(v6 + 56);
        v30 = a2 + 1;
        v31 = (a1 + v11 + 8) & ~v11;

        v29(v31, v30);
      }
    }

    else
    {
      if (v16 < 4)
      {
        v26 = ~(-1 << (8 * v16));
      }

      else
      {
        v26 = -1;
      }

      if (v16)
      {
        v27 = v26 & (~v8 + a2);
        bzero(((a1 + v11 + 8) & ~v11), v16);
        if (v16 == 1)
        {
          *v25 = v27;
        }

        else
        {
          *v25 = v27;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v24 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v24 = a2 - 1;
    }

    *a1 = v24;
  }
}

uint64_t sub_2583A4BA0()
{
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2583A4C04()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2583A4C60()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  result = 80;
  *(v0 + 32) = 80;
  *(v0 + 40) = 0;
  return result;
}

uint64_t sub_2583A4C84()
{
  if (*(v0 + 48) != 1)
  {
    return *(v0 + 44);
  }

  result = 1111970369;
  strcpy((v0 + 44), "ARGB");
  return result;
}

id sub_2583A4CAC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CD7548]) initWithDevice:*(v0 + 128) kernelDiameter:3];
    v4 = *(v0 + 56);
    *(v0 + 56) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_2583A4D24()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CD7528]) initWithDevice:*(v0 + 128) kernelDiameter:9];
    v4 = *(v0 + 64);
    *(v0 + 64) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_2583A4D9C()
{
  if (*(v0 + 72))
  {
    goto LABEL_7;
  }

  v1 = *(v0 + 128);
  v2 = sub_2583A4C60();
  v3 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v3 setTextureType_];
  [v3 setPixelFormat_];
  [v3 setWidth_];
  [v3 setHeight_];
  [v3 setUsage_];
  [v3 setSampleCount_];
  v4 = bytesPerPixel(of:)(v2);
  if ((v4 - 0x80000000000000) >> 56 != 255)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9287D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25842CDA0;
  v8 = *MEMORY[0x277CD2B88];
  *(inited + 32) = *MEMORY[0x277CD2B88];
  v2 = (inited + 32);
  v9 = *MEMORY[0x277CD2A28];
  *(inited + 40) = 256;
  *(inited + 48) = v9;
  v10 = *MEMORY[0x277CD2968];
  *(inited + 56) = 192;
  *(inited + 64) = v10;
  v11 = *MEMORY[0x277CD2948];
  *(inited + 72) = AlignedBytesPerRow;
  *(inited + 80) = v11;
  v12 = 192 * AlignedBytesPerRow;
  if ((AlignedBytesPerRow * 192) >> 64 != (192 * AlignedBytesPerRow) >> 63)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = *MEMORY[0x277CD2960];
  *(inited + 88) = v12;
  *(inited + 96) = v13;
  *(inited + 104) = v5;
  v14 = inited;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v13;
  sub_2583890FC(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927FF8);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2583891E8();
  v2 = sub_258428500();

  v20 = IOSurfaceCreate(v2);
  if (!v20)
  {
LABEL_10:

    goto LABEL_11;
  }

  v21 = v20;
  v22 = [v1 newTextureWithDescriptor:v3 iosurface:v20 plane:0];

  if (v22)
  {
    *(v0 + 72) = v22;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
LABEL_7:
    swift_unknownObjectRetain();
    return;
  }

LABEL_11:
  __break(1u);
}

__CVBuffer *sub_2583A5050()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
LABEL_5:
    v7 = v1;
    return v2;
  }

  v3 = sub_2583A4C84();
  v8[0] = 0;
  result = CVPixelBufferCreate(*MEMORY[0x277CBECE8], 0x100uLL, 0xC0uLL, v3, 0, v8);
  v5 = v8[0];
  if (v8[0])
  {
    v6 = *(v0 + 80);
    *(v0 + 80) = v8[0];
    v2 = v5;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_2583A5110()
{
  if (*(v0 + 88))
  {
    goto LABEL_7;
  }

  v1 = *(v0 + 128);
  v2 = sub_2583A4C60();
  v3 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v3 setTextureType_];
  [v3 setPixelFormat_];
  [v3 setWidth_];
  [v3 setHeight_];
  [v3 setUsage_];
  [v3 setSampleCount_];
  v4 = bytesPerPixel(of:)(v2);
  if ((v4 - 0x40000000000000) >> 55 != 511)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9287D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25842CDA0;
  v8 = *MEMORY[0x277CD2B88];
  *(inited + 32) = *MEMORY[0x277CD2B88];
  v2 = (inited + 32);
  v9 = *MEMORY[0x277CD2A28];
  *(inited + 40) = 512;
  *(inited + 48) = v9;
  v10 = *MEMORY[0x277CD2968];
  *(inited + 56) = 384;
  *(inited + 64) = v10;
  v11 = *MEMORY[0x277CD2948];
  *(inited + 72) = AlignedBytesPerRow;
  *(inited + 80) = v11;
  v12 = 384 * AlignedBytesPerRow;
  if ((AlignedBytesPerRow * 384) >> 64 != (384 * AlignedBytesPerRow) >> 63)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = *MEMORY[0x277CD2960];
  *(inited + 88) = v12;
  *(inited + 96) = v13;
  *(inited + 104) = v5;
  v14 = inited;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v13;
  sub_2583890FC(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927FF8);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2583891E8();
  v2 = sub_258428500();

  v20 = IOSurfaceCreate(v2);
  if (!v20)
  {
LABEL_10:

    goto LABEL_11;
  }

  v21 = v20;
  v22 = [v1 newTextureWithDescriptor:v3 iosurface:v20 plane:0];

  if (v22)
  {
    *(v0 + 88) = v22;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
LABEL_7:
    swift_unknownObjectRetain();
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_2583A53C4()
{
  if (*(v0 + 96))
  {
    goto LABEL_7;
  }

  v1 = *(v0 + 128);
  v2 = sub_2583A4C60();
  v3 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v3 setTextureType_];
  [v3 setPixelFormat_];
  [v3 setWidth_];
  [v3 setHeight_];
  [v3 setUsage_];
  [v3 setSampleCount_];
  v4 = bytesPerPixel(of:)(v2);
  if ((v4 - 0x40000000000000) >> 55 != 511)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9287D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25842CDA0;
  v8 = *MEMORY[0x277CD2B88];
  *(inited + 32) = *MEMORY[0x277CD2B88];
  v2 = (inited + 32);
  v9 = *MEMORY[0x277CD2A28];
  *(inited + 40) = 512;
  *(inited + 48) = v9;
  v10 = *MEMORY[0x277CD2968];
  *(inited + 56) = 384;
  *(inited + 64) = v10;
  v11 = *MEMORY[0x277CD2948];
  *(inited + 72) = AlignedBytesPerRow;
  *(inited + 80) = v11;
  v12 = 384 * AlignedBytesPerRow;
  if ((AlignedBytesPerRow * 384) >> 64 != (384 * AlignedBytesPerRow) >> 63)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = *MEMORY[0x277CD2960];
  *(inited + 88) = v12;
  *(inited + 96) = v13;
  *(inited + 104) = v5;
  v14 = inited;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v13;
  sub_2583890FC(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927FF8);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2583891E8();
  v2 = sub_258428500();

  v20 = IOSurfaceCreate(v2);
  if (!v20)
  {
LABEL_10:

    goto LABEL_11;
  }

  v21 = v20;
  v22 = [v1 newTextureWithDescriptor:v3 iosurface:v20 plane:0];

  if (v22)
  {
    *(v0 + 96) = v22;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
LABEL_7:
    swift_unknownObjectRetain();
    return;
  }

LABEL_11:
  __break(1u);
}

__CVBuffer *sub_2583A5678()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v0 + 104);
LABEL_5:
    v7 = v1;
    return v2;
  }

  v3 = sub_2583A4C84();
  v8[0] = 0;
  result = CVPixelBufferCreate(*MEMORY[0x277CBECE8], 0x200uLL, 0x180uLL, v3, 0, v8);
  v5 = v8[0];
  if (v8[0])
  {
    v6 = *(v0 + 104);
    *(v0 + 104) = v8[0];
    v2 = v5;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_2583A5738()
{
  if (*(v0 + 112))
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 128);
  v2 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v2 setTextureType_];
  [v2 setPixelFormat_];
  [v2 setWidth_];
  [v2 setHeight_];
  [v2 setUsage_];
  [v2 setSampleCount_];
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9287D0);
  inited = swift_initStackObject();
  v5 = *MEMORY[0x277CD2B88];
  *(inited + 32) = *MEMORY[0x277CD2B88];
  v6 = (inited + 32);
  v7 = MEMORY[0x277CD2A28];
  *(inited + 16) = xmmword_25842CDA0;
  v8 = *v7;
  *(inited + 40) = 256;
  *(inited + 48) = v8;
  v9 = *MEMORY[0x277CD2968];
  *(inited + 56) = 192;
  *(inited + 64) = v9;
  v10 = *MEMORY[0x277CD2948];
  *(inited + 72) = AlignedBytesPerRow;
  *(inited + 80) = v10;
  if ((AlignedBytesPerRow * 192) >> 64 != (192 * AlignedBytesPerRow) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = *MEMORY[0x277CD2960];
  *(inited + 88) = 192 * AlignedBytesPerRow;
  *(inited + 96) = v11;
  *(inited + 104) = 16;
  v12 = inited;
  v13 = v5;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  sub_2583890FC(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927FF8);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2583891E8();
  v6 = sub_258428500();

  v18 = IOSurfaceCreate(v6);
  if (!v18)
  {
LABEL_8:

    goto LABEL_9;
  }

  v19 = v18;
  v20 = [v1 newTextureWithDescriptor:v2 iosurface:v18 plane:0];

  if (v20)
  {
    *(v0 + 112) = v20;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
LABEL_6:
    swift_unknownObjectRetain();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2583A59C4()
{
  if (*(v0 + 120))
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 128);
  v2 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v2 setTextureType_];
  [v2 setPixelFormat_];
  [v2 setWidth_];
  [v2 setHeight_];
  [v2 setUsage_];
  [v2 setSampleCount_];
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9287D0);
  inited = swift_initStackObject();
  v5 = *MEMORY[0x277CD2B88];
  *(inited + 32) = *MEMORY[0x277CD2B88];
  v6 = (inited + 32);
  v7 = MEMORY[0x277CD2A28];
  *(inited + 16) = xmmword_25842CDA0;
  v8 = *v7;
  *(inited + 40) = 512;
  *(inited + 48) = v8;
  v9 = *MEMORY[0x277CD2968];
  *(inited + 56) = 384;
  *(inited + 64) = v9;
  v10 = *MEMORY[0x277CD2948];
  *(inited + 72) = AlignedBytesPerRow;
  *(inited + 80) = v10;
  if ((AlignedBytesPerRow * 384) >> 64 != (384 * AlignedBytesPerRow) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = *MEMORY[0x277CD2960];
  *(inited + 88) = 384 * AlignedBytesPerRow;
  *(inited + 96) = v11;
  *(inited + 104) = 4;
  v12 = inited;
  v13 = v5;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  sub_2583890FC(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927FF8);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2583891E8();
  v6 = sub_258428500();

  v18 = IOSurfaceCreate(v6);
  if (!v18)
  {
LABEL_8:

    goto LABEL_9;
  }

  v19 = v18;
  v20 = [v1 newTextureWithDescriptor:v2 iosurface:v18 plane:0];

  if (v20)
  {
    *(v0 + 120) = v20;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
LABEL_6:
    swift_unknownObjectRetain();
    return;
  }

LABEL_9:
  __break(1u);
}

VTPixelTransferSessionRef sub_2583A5C50()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = v1;
  if (v1 == 1)
  {
    v6[0] = 0;
    VTPixelTransferSessionCreate(0, v6);
    v2 = v6[0];
    v3 = *(v0 + 152);
    *(v0 + 152) = v6[0];
    v4 = v2;
    sub_2583A620C(v3);
  }

  sub_2583A621C(v1);
  return v2;
}

uint64_t sub_2583A5CEC(uint64_t a1, uint64_t a2, __CVBuffer *a3, char a4)
{
  result = sub_2583A5C50();
  if (result)
  {
    v10 = result;
    v11 = sub_2583A5678();
    VTPixelTransferSessionTransferImage(v10, a3, v11);

    v12 = *(v4 + 104);
    v13 = sub_2583A5050();
    VTPixelTransferSessionTransferImage(v10, v12, v13);

    sub_2583A4D9C();
    v15 = [v14 iosurface];
    swift_unknownObjectRelease();
    if (!v15)
    {
LABEL_6:

      return 0;
    }

    v16 = *(v4 + 80);
    v17 = v15;
    if (CVPixelBufferLockBaseAddress(v16, 1uLL))
    {
      goto LABEL_4;
    }

    BaseAddress = CVPixelBufferGetBaseAddress(v16);
    if (!BaseAddress)
    {
      CVPixelBufferUnlockBaseAddress(v16, 1uLL);
LABEL_4:

LABEL_5:
      goto LABEL_6;
    }

    v19 = BaseAddress;
    v20 = IOSurfaceGetBaseAddress(v17);
    BytesPerRow = IOSurfaceGetBytesPerRow(v17);
    result = IOSurfaceGetHeight(v17);
    if ((BytesPerRow * result) >> 64 != (BytesPerRow * result) >> 63)
    {
      __break(1u);
      goto LABEL_26;
    }

    memcpy(v20, v19, BytesPerRow * result);
    CVPixelBufferUnlockBaseAddress(v16, 1uLL);

    v22 = *(v4 + 136);
    v23 = [v22 commandBuffer];
    if (!v23)
    {
      goto LABEL_5;
    }

    v24 = v23;
    v48 = v22;
    v25 = sub_2583A4D24();
    v26 = *(v4 + 72);
    swift_unknownObjectRetain();
    sub_2583A5738();
    [v25 encodeRegressionToCommandBuffer:v24 sourceTexture:a1 guidanceTexture:v26 weightsTexture:a2 destinationCoefficientsTexture:v27];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    [v24 commit];
    [v24 waitUntilCompleted];

    swift_unknownObjectRelease();
    sub_2583A5110();
    v29 = v28;
    if (a4)
    {
      v30 = [v22 commandBuffer];
      if (!v30)
      {
        goto LABEL_18;
      }

      v31 = v30;
      v32 = sub_2583A4CAC();
      v33 = *(v4 + 88);
      swift_unknownObjectRetain();
      sub_2583A53C4();
      [v32 encodeToCommandBuffer:v31 sourceTexture:v33 destinationTexture:v34];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      [v31 commit];
      [v31 waitUntilCompleted];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v29 = *(v4 + 96);
      swift_unknownObjectRetain();
    }

    v35 = [*(v4 + 88) iosurface];
    if (v35)
    {
      v36 = v35;
      v37 = *(v4 + 104);
      v38 = v36;
      if (CVPixelBufferLockBaseAddress(v37, 1uLL))
      {
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v39 = CVPixelBufferGetBaseAddress(v37);
      if (!v39)
      {
        CVPixelBufferUnlockBaseAddress(v37, 1uLL);
        goto LABEL_16;
      }

      v40 = v39;
      v41 = IOSurfaceGetBaseAddress(v38);
      v42 = IOSurfaceGetBytesPerRow(v38);
      result = IOSurfaceGetHeight(v38);
      if ((v42 * result) >> 64 == (v42 * result) >> 63)
      {
        memcpy(v41, v40, v42 * result);
        CVPixelBufferUnlockBaseAddress(v37, 1uLL);

        v43 = [v48 commandBuffer];
        if (v43)
        {
          v44 = v43;
          v45 = *(v4 + 112);
          v46 = *(v4 + 64);
          swift_unknownObjectRetain();
          sub_2583A59C4();
          [v46 encodeReconstructionToCommandBuffer:v44 guidanceTexture:v29 coefficientsTexture:v45 destinationTexture:v47];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          [v44 commit];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return swift_unknownObjectRetain();
        }

        goto LABEL_17;
      }

LABEL_26:
      __break(1u);
      return result;
    }

LABEL_18:
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return result;
}

id *sub_2583A6134()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_2583A620C(v0[19]);
  return v0;
}

uint64_t sub_2583A61B4()
{
  sub_2583A6134();

  return swift_deallocClassInstance();
}

void sub_2583A620C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_2583A621C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

id sub_2583A622C(uint64_t a1)
{
  *(v1 + 16) = 2;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 44) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0;
  if (qword_27F9279B8 != -1)
  {
    swift_once();
  }

  v3 = static MetalBundle.device;
  *(v1 + 128) = static MetalBundle.device;
  *(v1 + 144) = a1;
  *(v1 + 152) = 1;
  swift_unknownObjectRetain();

  result = [v3 newCommandQueue];
  if (result)
  {
    *(v1 + 136) = result;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CGAffineTransform *Transformer.cameraToView.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + 312);
  if (*(v1 + 360))
  {
    CGAffineTransformMakeScale(&t1, 1.0 / *(v1 + 40), 1.0 / *(v1 + 48));
    tx = t1.tx;
    ty = t1.ty;
    v20 = *&t1.c;
    v22 = *&t1.a;
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    ARCameraImageToViewTransform();
    v8 = *&t1.a;
    v9 = *&t1.c;
    v10 = *&t1.tx;
    *&t1.a = v22;
    *&t1.c = v20;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v8;
    *&t2.c = v9;
    *&t2.tx = v10;
    CGAffineTransformConcat(&v24, &t1, &t2);
    v11 = v24.tx;
    v12 = v24.ty;
    v21 = *&v24.c;
    v23 = *&v24.a;
    CGAffineTransformMakeScale(&t1, v6, v7);
    v13 = *&t1.a;
    v14 = *&t1.c;
    v15 = *&t1.tx;
    *&t1.a = v23;
    *&t1.c = v21;
    t1.tx = v11;
    t1.ty = v12;
    *&t2.a = v13;
    *&t2.c = v14;
    *&t2.tx = v15;
    result = CGAffineTransformConcat(&v24, &t1, &t2);
    v18 = *&v24.a;
    v17 = *&v24.c;
    v19 = *&v24.tx;
    *v3 = *&v24.a;
    *(v1 + 328) = v17;
    *(v1 + 344) = v19;
    *(v1 + 360) = 0;
  }

  else
  {
    v17 = *(v1 + 328);
    v19 = *(v1 + 344);
    v18 = *v3;
  }

  *a1 = v18;
  a1[1] = v17;
  a1[2] = v19;
  return result;
}

CGAffineTransform *Transformer.viewToCamera.getter@<X0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 416))
  {
    CGAffineTransformMakeScale(&t1, 1.0 / *(v1 + 16), 1.0 / *(v1 + 24));
    tx = t1.tx;
    ty = t1.ty;
    v19 = *&t1.c;
    v21 = *&t1.a;
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    ARViewToCameraImageTransform();
    v7 = *&t1.a;
    v8 = *&t1.c;
    v9 = *&t1.tx;
    *&t1.a = v21;
    *&t1.c = v19;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v7;
    *&t2.c = v8;
    *&t2.tx = v9;
    CGAffineTransformConcat(&v23, &t1, &t2);
    v10 = v23.tx;
    v11 = v23.ty;
    v20 = *&v23.c;
    v22 = *&v23.a;
    CGAffineTransformMakeScale(&t1, v5, v6);
    v12 = *&t1.a;
    v13 = *&t1.c;
    v14 = *&t1.tx;
    *&t1.a = v22;
    *&t1.c = v20;
    t1.tx = v10;
    t1.ty = v11;
    *&t2.a = v12;
    *&t2.c = v13;
    *&t2.tx = v14;
    result = CGAffineTransformConcat(&v23, &t1, &t2);
    v17 = *&v23.a;
    v16 = *&v23.c;
    v18 = *&v23.tx;
    *(v1 + 368) = *&v23.a;
    *(v1 + 384) = v16;
    *(v1 + 400) = v18;
    *(v1 + 416) = 0;
  }

  else
  {
    v16 = *(v1 + 384);
    v18 = *(v1 + 400);
    v17 = *(v1 + 368);
  }

  *a1 = v17;
  a1[1] = v16;
  a1[2] = v18;
  return result;
}

CGAffineTransform *Transformer.viewToCameraNormalized.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + 424);
  if (*(v1 + 472))
  {
    CGAffineTransformMakeScale(&t1, 1.0 / *(v1 + 16), 1.0 / *(v1 + 24));
    tx = t1.tx;
    ty = t1.ty;
    v13 = *&t1.c;
    v14 = *&t1.a;
    ARViewToCameraImageTransform();
    v6 = *&t1.a;
    v7 = *&t1.c;
    v8 = *&t1.tx;
    *&t1.a = v14;
    *&t1.c = v13;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v6;
    *&t2.c = v7;
    *&t2.tx = v8;
    result = CGAffineTransformConcat(&v15, &t1, &t2);
    v11 = *&v15.a;
    v10 = *&v15.c;
    v12 = *&v15.tx;
    *v3 = *&v15.a;
    *(v1 + 440) = v10;
    *(v1 + 456) = v12;
    *(v1 + 472) = 0;
  }

  else
  {
    v10 = *(v1 + 440);
    v12 = *(v1 + 456);
    v11 = *v3;
  }

  *a1 = v11;
  a1[1] = v10;
  a1[2] = v12;
  return result;
}

CGAffineTransform *Transformer.viewToClip.getter@<X0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 528))
  {
    CGAffineTransformMakeScale(&t1, 1.0 / *(v1 + 16), 1.0 / *(v1 + 24));
    tx = t1.tx;
    ty = t1.ty;
    v17 = *&t1.c;
    v19 = *&t1.a;
    CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
    v5 = *&t1.a;
    v6 = *&t1.c;
    v7 = *&t1.tx;
    *&t1.a = v19;
    *&t1.c = v17;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v5;
    *&t2.c = v6;
    *&t2.tx = v7;
    CGAffineTransformConcat(&v21, &t1, &t2);
    v8 = v21.tx;
    v9 = v21.ty;
    v18 = *&v21.c;
    v20 = *&v21.a;
    CGAffineTransformMakeScale(&t1, 2.0, -2.0);
    v10 = *&t1.a;
    v11 = *&t1.c;
    v12 = *&t1.tx;
    *&t1.a = v20;
    *&t1.c = v18;
    t1.tx = v8;
    t1.ty = v9;
    *&t2.a = v10;
    *&t2.c = v11;
    *&t2.tx = v12;
    result = CGAffineTransformConcat(&v21, &t1, &t2);
    v15 = *&v21.a;
    v14 = *&v21.c;
    v16 = *&v21.tx;
    *(v1 + 480) = *&v21.a;
    *(v1 + 496) = v14;
    *(v1 + 512) = v16;
    *(v1 + 528) = 0;
  }

  else
  {
    v14 = *(v1 + 496);
    v16 = *(v1 + 512);
    v15 = *(v1 + 480);
  }

  *a1 = v15;
  a1[1] = v14;
  a1[2] = v16;
  return result;
}

CGAffineTransform *Transformer.clipToView.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + 536);
  if (*(v1 + 584))
  {
    Transformer.viewToClip.getter(&v10);
    v9 = v10;
    result = CGAffineTransformInvert(&v8, &v9);
    v6 = *&v8.a;
    v5 = *&v8.c;
    v7 = *&v8.tx;
    *v3 = *&v8.a;
    *(v1 + 552) = v5;
    *(v1 + 568) = v7;
    *(v1 + 584) = 0;
  }

  else
  {
    v5 = *(v1 + 552);
    v7 = *(v1 + 568);
    v6 = *v3;
  }

  *a1 = v6;
  a1[1] = v5;
  a1[2] = v7;
  return result;
}

CGAffineTransform *Transformer.cameraToClip.getter@<X0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 640))
  {
    Transformer.cameraToView.getter(v12);
    v3 = v13;
    v4 = v14;
    Transformer.viewToClip.getter(&v15);
    *&t1.a = v12[0];
    *&t1.c = v12[1];
    t1.tx = v3;
    t1.ty = v4;
    t2 = v15;
    result = CGAffineTransformConcat(&v9, &t1, &t2);
    v7 = *&v9.a;
    v6 = *&v9.c;
    v8 = *&v9.tx;
    *(v1 + 592) = *&v9.a;
    *(v1 + 608) = v6;
    *(v1 + 624) = v8;
    *(v1 + 640) = 0;
  }

  else
  {
    v6 = *(v1 + 608);
    v8 = *(v1 + 624);
    v7 = *(v1 + 592);
  }

  *a1 = v7;
  a1[1] = v6;
  a1[2] = v8;
  return result;
}

CGAffineTransform *Transformer.clipToCamera.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + 648);
  if (*(v1 + 696))
  {
    Transformer.cameraToClip.getter(&v10);
    v9 = v10;
    result = CGAffineTransformInvert(&v8, &v9);
    v6 = *&v8.a;
    v5 = *&v8.c;
    v7 = *&v8.tx;
    *v3 = *&v8.a;
    *(v1 + 664) = v5;
    *(v1 + 680) = v7;
    *(v1 + 696) = 0;
  }

  else
  {
    v5 = *(v1 + 664);
    v7 = *(v1 + 680);
    v6 = *v3;
  }

  *a1 = v6;
  a1[1] = v5;
  a1[2] = v7;
  return result;
}

CGAffineTransform *Transformer.clipToCameraNormalized.getter@<X0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 752))
  {
    Transformer.clipToView.getter(v12);
    v3 = v13;
    v4 = v14;
    Transformer.viewToCameraNormalized.getter(&v15);
    *&t1.a = v12[0];
    *&t1.c = v12[1];
    t1.tx = v3;
    t1.ty = v4;
    t2 = v15;
    result = CGAffineTransformConcat(&v9, &t1, &t2);
    v7 = *&v9.a;
    v6 = *&v9.c;
    v8 = *&v9.tx;
    *(v1 + 704) = *&v9.a;
    *(v1 + 720) = v6;
    *(v1 + 736) = v8;
    *(v1 + 752) = 0;
  }

  else
  {
    v6 = *(v1 + 720);
    v8 = *(v1 + 736);
    v7 = *(v1 + 704);
  }

  *a1 = v7;
  a1[1] = v6;
  a1[2] = v8;
  return result;
}

void Transformer.cameraToViewRotation.getter()
{
  if (*(v0 + 832))
  {
    v1 = ARCameraToDisplayRotation() * 0.017453;
    if (qword_27F9279F8 != -1)
    {
      swift_once();
    }

    v8 = static SIMD3<>.forward;
    v2 = __sincosf_stret(v1 * 0.5);
    v3 = vmulq_n_f32(v8, v2.__sinval);
    v3.n128_u32[3] = LODWORD(v2.__cosval);
    *&v4 = MEMORY[0x259C7E590](v3);
    *(v0 + 768) = v4;
    *(v0 + 784) = v5;
    *(v0 + 800) = v6;
    *(v0 + 816) = v7;
    *(v0 + 832) = 0;
  }
}

void __swiftcall Transformer.cameraToWorld(of:)(simd_float4x4 *__return_ptr retstr, ARCamera of)
{
  [(objc_class *)of.super.isa viewMatrixForOrientation:*(v2 + 304)];

  __invert_f4(v3);
}

__n128 Transformer.cameraIntrinsics.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

__n128 Transformer.cameraIntrinsicsInversed.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 112);
  v3 = *(v1 + 128);
  v4 = *(v1 + 144);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

double sub_2583A6B2C@<D0>(_OWORD *a1@<X8>)
{
  Transformer.cameraToView.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_2583A6B70(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 + 312;
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v2 + 360) = 0;
  return result;
}

double sub_2583A6B90@<D0>(_OWORD *a1@<X8>)
{
  Transformer.viewToCamera.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_2583A6BD4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  *(v2 + 368) = *a1;
  *(v2 + 384) = v3;
  result = *(a1 + 32);
  *(v2 + 400) = result;
  *(v2 + 416) = 0;
  return result;
}

double sub_2583A6BF0@<D0>(_OWORD *a1@<X8>)
{
  Transformer.viewToCameraNormalized.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_2583A6C34(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 + 424;
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v2 + 472) = 0;
  return result;
}

double sub_2583A6C54@<D0>(_OWORD *a1@<X8>)
{
  Transformer.viewToClip.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_2583A6C98(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  *(v2 + 480) = *a1;
  *(v2 + 496) = v3;
  result = *(a1 + 32);
  *(v2 + 512) = result;
  *(v2 + 528) = 0;
  return result;
}

double sub_2583A6CB4@<D0>(_OWORD *a1@<X8>)
{
  Transformer.clipToView.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_2583A6CF8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 + 536;
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v2 + 584) = 0;
  return result;
}

double sub_2583A6D18@<D0>(_OWORD *a1@<X8>)
{
  Transformer.cameraToClip.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_2583A6D5C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  *(v2 + 592) = *a1;
  *(v2 + 608) = v3;
  result = *(a1 + 32);
  *(v2 + 624) = result;
  *(v2 + 640) = 0;
  return result;
}

double sub_2583A6D78@<D0>(_OWORD *a1@<X8>)
{
  Transformer.clipToCamera.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_2583A6DBC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 + 648;
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v2 + 696) = 0;
  return result;
}

double sub_2583A6DDC@<D0>(_OWORD *a1@<X8>)
{
  Transformer.clipToCameraNormalized.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_2583A6E20(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  *(v2 + 704) = *a1;
  *(v2 + 720) = v3;
  result = *(a1 + 32);
  *(v2 + 736) = result;
  *(v2 + 752) = 0;
  return result;
}

void sub_2583A6E3C(_OWORD *a1@<X8>)
{
  Transformer.cameraToViewRotation.getter();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

__n128 sub_2583A6E6C(uint64_t a1, uint64_t *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *a2;
  *(v6 + 768) = *a1;
  *(v6 + 784) = v3;
  *(v6 + 800) = v4;
  *(v6 + 816) = v5;
  *(v6 + 832) = 0;
  return result;
}

uint64_t sub_2583A6EB4(void *a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 296) = 0xBA8312773F800008;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 1;
  *(v4 + 368) = 0u;
  *(v4 + 384) = 0u;
  *(v4 + 400) = 0u;
  *(v4 + 416) = 1;
  *(v4 + 424) = 0u;
  *(v4 + 440) = 0u;
  *(v4 + 456) = 0u;
  *(v4 + 472) = 1;
  *(v4 + 480) = 0u;
  *(v4 + 496) = 0u;
  *(v4 + 512) = 0u;
  *(v4 + 528) = 1;
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 1;
  *(v4 + 592) = 0u;
  *(v4 + 608) = 0u;
  *(v4 + 624) = 0u;
  *(v4 + 640) = 1;
  *(v4 + 648) = 0u;
  *(v4 + 664) = 0u;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 1;
  *(v4 + 704) = 0u;
  *(v4 + 720) = 0u;
  *(v4 + 736) = 0u;
  *(v4 + 752) = 1;
  LOBYTE(v13) = 1;
  *(v4 + 768) = 0u;
  *(v4 + 784) = 0u;
  *(v4 + 800) = 0u;
  *(v4 + 816) = 0u;
  *(v4 + 832) = 1;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  [a1 imageResolution];
  *(v4 + 40) = v9;
  *(v4 + 48) = v10;
  [a1 intrinsics];
  *(v4 + 64) = v14;
  *(v4 + 112) = __invert_f3(v14);
  [a1 projectionMatrixForOrientation:a2 viewportSize:a3 zNear:a4 zFar:{0.00100000005, 0.0}];
  *(v4 + 160) = v15;
  *(v4 + 224) = __invert_f4(v15);
  ARCameraFieldOfViewFromIntrinsics();
  *(v4 + 288) = v11;
  *(v4 + 304) = a2;
  *(v4 + 32) = a3 / a4;
  return v4;
}

MLMultiArray __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLMultiArray.reshaped(to:)(Swift::OpaquePointer to)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = *(to._rawValue + 2);
  if (!v2)
  {
LABEL_23:
    if ([v1 count] == 1)
    {
      __break(1u);
    }

    goto LABEL_25;
  }

  v4 = 0;
  v5 = (to._rawValue + 32);
  v6 = 1;
  do
  {
    v7 = v5[v4];
    v8 = v6 * v7;
    if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
    {
      __break(1u);
      goto LABEL_21;
    }

    ++v4;
    v6 *= v7;
  }

  while (v2 != v4);
  if (v8 != [v1 count])
  {
LABEL_25:
    __break(1u);
  }

  v9 = sub_2584288E0();
  *(v9 + 16) = v2;
  v10 = (v9 + 16);
  v11 = (v9 + 32);
  bzero((v9 + 32), 8 * v2);
  *(8 * v2 + v9 + 32 - 8) = 1;
  if (v2 != 1)
  {
    v12 = 1;
    v13 = v2;
    while (1)
    {
      v14 = v13 - 1;
      if (v13 - 1 >= *v10)
      {
        break;
      }

      v15 = *(to._rawValue + v13 + 3);
      if ((v12 * v15) >> 64 != (v12 * v15) >> 63)
      {
        goto LABEL_22;
      }

      v10[v13--] = v12 * v15;
      v12 *= v15;
      if (v14 <= 1)
      {
        goto LABEL_11;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_11:
  v28[0] = MEMORY[0x277D84F90];
  sub_258429060();
  do
  {
    v16 = *v5++;
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    sub_258429030();
    sub_258429070();
    sub_258429080();
    sub_258429040();
    --v2;
  }

  while (v2);
  v17 = *v10;
  if (*v10)
  {
    v28[0] = MEMORY[0x277D84F90];
    sub_258429060();
    do
    {
      v18 = *v11++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_258429030();
      sub_258429070();
      sub_258429080();
      sub_258429040();
      --v17;
    }

    while (v17);
  }

  v19 = [v1 dataPointer];
  v20 = [v1 dataType];
  v21 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  sub_25839E29C();
  v22 = sub_258428850();

  v23 = sub_258428850();

  v28[0] = 0;
  v24 = [v21 initWithDataPointer:v19 shape:v22 dataType:v20 strides:v23 deallocator:0 error:v28];

  if (v24)
  {
    v25 = v28[0];
  }

  else
  {
    v26 = v28[0];
    sub_2584282A0();

    swift_willThrow();
  }

  return v24;
}

MLMultiArray __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLMultiArray.transposed(to:)(Swift::OpaquePointer to)
{
  v5 = v1;
  v7 = *(to._rawValue + 2);
  v8 = &property descriptor for Transformer.viewToClip;
  if ([v1 dataType] != 65600)
  {
    goto LABEL_32;
  }

  v9 = [v1 strides];
  sub_25839E29C();
  v3 = sub_258428860();

  if (v3 >> 62)
  {
LABEL_33:
    v10 = sub_258428F10();
  }

  else
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 == v10)
  {
    v4 = &property descriptor for Transformer.viewToClip;
    v74 = v5;
    v11 = [v5 shape];
    v3 = sub_258428860();

    if (!(v3 >> 62))
    {
      v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v12 = sub_258428F10();

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

LABEL_7:
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v78 = MEMORY[0x277D84F90];
    sub_258429060();
    if (v7)
    {
      if (v12 <= v7)
      {
        v8 = (to._rawValue + 32);
        while (1)
        {
          v3 = [v74 v4[291]];
          v14 = sub_258428860();

          v16 = *v8++;
          v15 = v16;
          if ((v14 & 0xC000000000000001) != 0)
          {
            MEMORY[0x259C7E900](v15, v14);
          }

          else
          {
            if ((v15 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            if (v15 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v17 = *(v14 + 8 * v15 + 32);
          }

          sub_258429030();
          v5 = *(v78 + 16);
          sub_258429070();
          sub_258429080();
          sub_258429040();
          if (!--v12)
          {
            v13 = v78;
            v8 = &property descriptor for Transformer.viewToClip;
            goto LABEL_18;
          }
        }
      }

      goto LABEL_38;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_18:
  v5 = v74;
  v18 = [v74 v8[296]];
  v19 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  result.super.isa = sub_2583A7AE0(v13, v18);
  if (v2)
  {
    return result;
  }

  v68 = 0;
  isa = result.super.isa;
  v72 = [v74 dataPointer];
  v70 = isa;
  v71 = [(objc_class *)isa dataPointer];
  v22 = [v74 v4[291]];
  v3 = sub_258428860();

  rawValue = to._rawValue;
  if (v3 >> 62)
  {
LABEL_39:
    v23 = sub_258428F10();
    if (!v23)
    {
      goto LABEL_40;
    }

    goto LABEL_21;
  }

  v23 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_40:

    v25 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

LABEL_21:
  v79 = MEMORY[0x277D84F90];
  result.super.isa = sub_258392154(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v24 = 0;
  v25 = v79;
  v26 = v3;
  v73 = v3 & 0xC000000000000001;
  v27 = v3;
  v28 = v23;
  do
  {
    if (v73)
    {
      v29 = MEMORY[0x259C7E900](v24, v26);
    }

    else
    {
      v29 = *(v26 + 8 * v24 + 32);
    }

    v30 = v29;
    v31 = [v29 integerValue];

    v33 = *(v79 + 16);
    v32 = *(v79 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_258392154((v32 > 1), v33 + 1, 1);
    }

    ++v24;
    *(v79 + 16) = v33 + 1;
    *(v79 + 8 * v33 + 32) = v31;
    v26 = v27;
  }

  while (v28 != v24);

  v5 = v74;
LABEL_41:
  v34 = [(objc_class *)v70 strides];
  v35 = sub_258428860();

  if (v35 >> 62)
  {
    v36 = sub_258428F10();
    if (v36)
    {
LABEL_43:
      v80 = MEMORY[0x277D84F90];
      result.super.isa = sub_258392154(0, v36 & ~(v36 >> 63), 0);
      if (v36 < 0)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v37 = 0;
      v38 = v80;
      v39 = v35;
      v76 = v35 & 0xC000000000000001;
      v40 = v35;
      v41 = v36;
      do
      {
        if (v76)
        {
          v42 = MEMORY[0x259C7E900](v37, v39);
        }

        else
        {
          v42 = *(v39 + 8 * v37 + 32);
        }

        v43 = v42;
        v44 = [v42 integerValue];

        v46 = *(v80 + 16);
        v45 = *(v80 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_258392154((v45 > 1), v46 + 1, 1);
        }

        ++v37;
        *(v80 + 16) = v46 + 1;
        *(v80 + 8 * v46 + 32) = v44;
        v39 = v40;
      }

      while (v41 != v37);

      v5 = v74;
      v47 = 8 * v7;
      if (v7)
      {
        goto LABEL_52;
      }

LABEL_55:
      v48 = MEMORY[0x277D84F90];
      goto LABEL_56;
    }
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_43;
    }
  }

  v38 = MEMORY[0x277D84F90];
  v47 = 8 * v7;
  if (!v7)
  {
    goto LABEL_55;
  }

LABEL_52:
  v48 = sub_2584288E0();
  *(v48 + 16) = v7;
  bzero((v48 + 32), v47);
LABEL_56:
  result.super.isa = [v5 count];
  if ((result.super.isa & 0x8000000000000000) != 0)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (result.super.isa)
  {
    if (!v7)
    {
LABEL_93:
      __break(1u);
      return result;
    }

    v49 = 0;
    v50 = v7 - 1;
    v75 = (v47 + 24);
    while (v7 <= *(v38 + 16))
    {
      v51 = 0;
      v52 = 0;
      v53 = v48 + 32;
      do
      {
        v54 = rawValue[v52 + 4];
        if (v54 >= *(v48 + 16))
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v55 = *(v53 + 8 * v54);
        v56 = *(v38 + 32 + 8 * v52);
        v57 = v55 * v56;
        if ((v55 * v56) >> 64 != (v55 * v56) >> 63)
        {
          goto LABEL_82;
        }

        v58 = __OFADD__(v51, v57);
        v51 += v57;
        if (v58)
        {
          goto LABEL_83;
        }

        ++v52;
      }

      while (v7 != v52);
      v71[v51] = v72[v49];
      if (v7 > *(v48 + 16))
      {
        goto LABEL_88;
      }

      v59 = *(v53 + 8 * v50);
      v58 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v58)
      {
        goto LABEL_89;
      }

      v77 = (v49 + 1);
      v61 = result.super.isa;
      v62 = v50;
      *(v53 + 8 * v50) = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_2583A7BD0(v48);
      }

      result.super.isa = v61;
      v50 = v62;
      v49 = v77;
      if (v7 != 1)
      {
        v63 = &v75[v48];
        v64 = v7;
        while (1)
        {
          v65 = v64 - 1;
          if (v64 - 1 >= *(v48 + 16))
          {
            goto LABEL_84;
          }

          if (v65 >= *(v25 + 16))
          {
            goto LABEL_85;
          }

          if (*v63 >= *(v25 + 24 + 8 * v64))
          {
            *v63 = 0;
            v66 = *(v63 - 1);
            v58 = __OFADD__(v66, 1);
            v67 = v66 + 1;
            if (v58)
            {
              goto LABEL_86;
            }

            *(v63 - 1) = v67;
            v63 -= 8;
            v64 = v65;
            if (v65 > 1)
            {
              continue;
            }
          }

          break;
        }
      }

      if (v77 == v61)
      {
        goto LABEL_79;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_79:

  return v70;
}