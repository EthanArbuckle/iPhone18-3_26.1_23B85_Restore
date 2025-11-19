unint64_t sub_1D1A1BB78()
{
  result = qword_1EC648F78;
  if (!qword_1EC648F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F78);
  }

  return result;
}

unint64_t sub_1D1A1BBCC()
{
  result = qword_1EC648F80;
  if (!qword_1EC648F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F80);
  }

  return result;
}

unint64_t sub_1D1A1BC20()
{
  result = qword_1EC648F88;
  if (!qword_1EC648F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F88);
  }

  return result;
}

unint64_t sub_1D1A1BC74()
{
  result = qword_1EC648F90;
  if (!qword_1EC648F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F90);
  }

  return result;
}

unint64_t sub_1D1A1BCC8()
{
  result = qword_1EC648F98;
  if (!qword_1EC648F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F98);
  }

  return result;
}

unint64_t sub_1D1A1BD1C()
{
  result = qword_1EC648FA0;
  if (!qword_1EC648FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648FA0);
  }

  return result;
}

unint64_t sub_1D1A1BD70()
{
  result = qword_1EC648FC8;
  if (!qword_1EC648FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648FC8);
  }

  return result;
}

unint64_t sub_1D1A1BDC4()
{
  result = qword_1EC648FD0;
  if (!qword_1EC648FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648FD0);
  }

  return result;
}

BOOL _s13HomeDataModel18MatterCommandErrorV0F4CodeO2eeoiySbAE_AEtFZ_0(_WORD *a1, _WORD *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 >> 10;
  if (v2 >> 10 <= 0x3E)
  {
    if (v4 > 0x3E)
    {
      return 0;
    }

    if (v2 >> 14)
    {
      if (v2 >> 14 == 1)
      {
        if ((v3 & 0xC000) != 0x4000)
        {
          return 0;
        }

        if ((v2 & 0x100) != 0)
        {
          v6 = *a1;
          if (v6 > 4)
          {
            if (*a1 > 7u)
            {
              if (v6 == 8)
              {
                if ((v3 & 0x100) != 0 && *a2 == 8)
                {
                  return 1;
                }
              }

              else if (v6 == 9)
              {
                if ((v3 & 0x100) != 0 && *a2 == 9)
                {
                  return 1;
                }
              }

              else if ((v3 & 0x100) != 0 && *a2 >= 0xAu)
              {
                return 1;
              }
            }

            else if (v6 == 5)
            {
              if ((v3 & 0x100) != 0 && *a2 == 5)
              {
                return 1;
              }
            }

            else if (v6 == 6)
            {
              if ((v3 & 0x100) != 0 && *a2 == 6)
              {
                return 1;
              }
            }

            else if ((v3 & 0x100) != 0 && *a2 == 7)
            {
              return 1;
            }

            return 0;
          }

          if (*a1 > 1u)
          {
            if (v6 != 2)
            {
              if (v6 == 3)
              {
                if ((v3 & 0x100) != 0 && *a2 == 3)
                {
                  return 1;
                }
              }

              else if ((v3 & 0x100) != 0 && *a2 == 4)
              {
                return 1;
              }

              return 0;
            }

            return (v3 & 0x100) != 0 && *a2 == 2;
          }

          goto LABEL_42;
        }
      }

      else
      {
        if ((v3 & 0xC000) != 0x8000)
        {
          return 0;
        }

        if ((v2 & 0x100) != 0)
        {
          v6 = *a1;
          if (v6 > 1)
          {
            if (v6 != 2)
            {
              return (v3 & 0x100) != 0 && *a2 >= 3u;
            }

            return (v3 & 0x100) != 0 && *a2 == 2;
          }

LABEL_42:
          if (v6)
          {
            if ((v3 & 0x100) != 0 && *a2 == 1)
            {
              return 1;
            }
          }

          else if ((v3 & 0x100) != 0 && !*a2)
          {
            return 1;
          }

          return 0;
        }
      }

      if ((v3 & 0x100) != 0)
      {
        return 0;
      }
    }

    else
    {
      if (v3 >= 0x4000)
      {
        return 0;
      }

      if (v2 >> 8)
      {
        if (v2 >> 8 == 1)
        {
          if (v3 >> 8 != 1)
          {
            return 0;
          }
        }

        else if (v3 >> 8 != 2)
        {
          return 0;
        }
      }

      else if ((v3 & 0xFF00) != 0)
      {
        return 0;
      }
    }

    return *a1 == v3;
  }

  return v4 > 0x3E;
}

unint64_t sub_1D1A1C028()
{
  result = qword_1EC648FF0;
  if (!qword_1EC648FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648FF0);
  }

  return result;
}

unint64_t sub_1D1A1C07C()
{
  result = qword_1EC648FF8;
  if (!qword_1EC648FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648FF8);
  }

  return result;
}

unint64_t sub_1D1A1C0D0()
{
  result = qword_1EC649000;
  if (!qword_1EC649000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649000);
  }

  return result;
}

unint64_t sub_1D1A1C124()
{
  result = qword_1EC649008;
  if (!qword_1EC649008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649008);
  }

  return result;
}

unint64_t sub_1D1A1C178()
{
  result = qword_1EC649028;
  if (!qword_1EC649028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649028);
  }

  return result;
}

BOOL _s13HomeDataModel18MatterCommandErrorV2eeoiySbAC_ACtFZ_0(_WORD *a1, _WORD *a2)
{
  v4 = type metadata accessor for StaticEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649150, &qword_1D1E927B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  v18 = *a1;
  v19 = *a2;
  v20 = v19 >> 10;
  if (v18 >> 10 > 0x3E)
  {
    if (v20 <= 0x3E)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v20 > 0x3E)
  {
    return 0;
  }

  if (!(v18 >> 14))
  {
    if (v19 >= 0x4000)
    {
      return 0;
    }

    v33 = v18 >> 8;
    if (v33)
    {
      if (v33 == 1)
      {
        v33 = 0;
        if (v19 >> 8 != 1)
        {
          return v33;
        }
      }

      else
      {
        v33 = 0;
        if (v19 >> 8 != 2)
        {
          return v33;
        }
      }
    }

    else if ((v19 & 0xFF00) != 0)
    {
      return v33;
    }

    goto LABEL_45;
  }

  if (v18 >> 14 != 1)
  {
    if ((v19 & 0xC000) != 0x8000)
    {
      return 0;
    }

    if ((v18 & 0x100) != 0)
    {
      v33 = *a1;
      if (*a1 > 1u)
      {
        if (v33 != 2)
        {
          v33 = 0;
          if ((v19 & 0x100) != 0 && *a2 >= 3u)
          {
            goto LABEL_3;
          }

          return v33;
        }

        goto LABEL_57;
      }

LABEL_53:
      if (v33)
      {
        v33 = 0;
        if ((v19 & 0x100) != 0 && *a2 == 1)
        {
          goto LABEL_3;
        }
      }

      else if ((v19 & 0x100) != 0 && !*a2)
      {
        goto LABEL_3;
      }

      return v33;
    }

    goto LABEL_35;
  }

  if ((v19 & 0xC000) != 0x4000)
  {
    return 0;
  }

  if ((v18 & 0x100) == 0)
  {
LABEL_35:
    v33 = 0;
    if ((v19 & 0x100) != 0)
    {
      return v33;
    }

LABEL_45:
    if (*a1 != v19)
    {
      return v33;
    }

    goto LABEL_3;
  }

  v33 = *a1;
  if (*a1 <= 4u)
  {
    if (*a1 > 1u)
    {
      if (v33 != 2)
      {
        if (v33 == 3)
        {
          v33 = 0;
          if ((v19 & 0x100) != 0 && *a2 == 3)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v33 = 0;
          if ((v19 & 0x100) != 0 && *a2 == 4)
          {
            goto LABEL_3;
          }
        }

        return v33;
      }

LABEL_57:
      v33 = 0;
      if ((v19 & 0x100) != 0 && *a2 == 2)
      {
        goto LABEL_3;
      }

      return v33;
    }

    goto LABEL_53;
  }

  if (*a1 > 7u)
  {
    if (v33 == 8)
    {
      v33 = 0;
      if ((v19 & 0x100) != 0 && *a2 == 8)
      {
        goto LABEL_3;
      }
    }

    else if (v33 == 9)
    {
      v33 = 0;
      if ((v19 & 0x100) != 0 && *a2 == 9)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v33 = 0;
      if ((v19 & 0x100) != 0 && *a2 >= 0xAu)
      {
        goto LABEL_3;
      }
    }
  }

  else if (v33 == 5)
  {
    v33 = 0;
    if ((v19 & 0x100) != 0 && *a2 == 5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v33 == 6)
    {
      v33 = 0;
      if ((v19 & 0x100) == 0 || *a2 != 6)
      {
        return v33;
      }

LABEL_3:
      v40 = v5;
      v21 = v15;
      v22 = type metadata accessor for MatterCommandError();
      v23 = v22[5];
      v24 = a1 + v23;
      v25 = a2 + v23;
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        return 0;
      }

      v26 = type metadata accessor for EndpointPath(0);
      if (*&v24[*(v26 + 20)] != *&v25[*(v26 + 20)])
      {
        return 0;
      }

      if (*&v24[*(v26 + 24)] != *&v25[*(v26 + 24)])
      {
        return 0;
      }

      v27 = type metadata accessor for ClusterPath(0);
      if (dword_1D1E927BC[v24[*(v27 + 20)]] != dword_1D1E927BC[v25[*(v27 + 20)]] || *(a1 + v22[6]) != *(a2 + v22[6]))
      {
        return 0;
      }

      v28 = v22[7];
      v29 = *(a1 + v28 + 8);
      v30 = *(a2 + v28 + 8);
      if (v29)
      {
        if (!v30)
        {
          return 0;
        }

        if (*(a1 + v28) != *(a2 + v28) || (v31 = v21, v29 != v30))
        {
          v32 = sub_1D1E6904C();
          v31 = v21;
          if ((v32 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        v31 = v21;
        if (v30)
        {
          return 0;
        }
      }

      v35 = v22[8];
      v36 = *(v31 + 48);
      sub_1D1741C08(a1 + v35, v17, &qword_1EC644780, &qword_1D1E91AA0);
      sub_1D1741C08(a2 + v35, &v17[v36], &qword_1EC644780, &qword_1D1E91AA0);
      v37 = *(v40 + 48);
      if (v37(v17, 1, v4) == 1)
      {
        if (v37(&v17[v36], 1, v4) == 1)
        {
          sub_1D1741A30(v17, &qword_1EC644780, &qword_1D1E91AA0);
          return 1;
        }
      }

      else
      {
        sub_1D1741C08(v17, v12, &qword_1EC644780, &qword_1D1E91AA0);
        if (v37(&v17[v36], 1, v4) != 1)
        {
          sub_1D1A1EB60(&v17[v36], v8, type metadata accessor for StaticEndpoint);
          v38 = static StaticEndpoint.== infix(_:_:)(v12, v8);
          sub_1D1A1EBC8(v8, type metadata accessor for StaticEndpoint);
          sub_1D1A1EBC8(v12, type metadata accessor for StaticEndpoint);
          sub_1D1741A30(v17, &qword_1EC644780, &qword_1D1E91AA0);
          return (v38 & 1) != 0;
        }

        sub_1D1A1EBC8(v12, type metadata accessor for StaticEndpoint);
      }

      sub_1D1741A30(v17, &qword_1EC649150, &qword_1D1E927B0);
      return 0;
    }

    v33 = 0;
    if ((v19 & 0x100) != 0 && *a2 == 7)
    {
      goto LABEL_3;
    }
  }

  return v33;
}

unint64_t sub_1D1A1C7F8()
{
  result = qword_1EC649038;
  if (!qword_1EC649038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649038);
  }

  return result;
}

unint64_t sub_1D1A1C84C()
{
  result = qword_1EC649040;
  if (!qword_1EC649040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649040);
  }

  return result;
}

unint64_t sub_1D1A1C8A0()
{
  result = qword_1EC649050;
  if (!qword_1EC649050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649050);
  }

  return result;
}

unint64_t sub_1D1A1C8F8()
{
  result = qword_1EC649058;
  if (!qword_1EC649058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649058);
  }

  return result;
}

unint64_t sub_1D1A1C950()
{
  result = qword_1EC649060;
  if (!qword_1EC649060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649060);
  }

  return result;
}

uint64_t sub_1D1A1C9EC(uint64_t a1)
{
  result = sub_1D1A1EC28(&qword_1EC649070, type metadata accessor for MatterCommandError);
  *(a1 + 8) = result;
  return result;
}

void sub_1D1A1CAB4()
{
  type metadata accessor for ClusterPath(319);
  if (v0 <= 0x3F)
  {
    sub_1D17786E4();
    if (v1 <= 0x3F)
    {
      sub_1D1A1CB68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D1A1CB68()
{
  if (!qword_1EC649088)
  {
    type metadata accessor for StaticEndpoint();
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC649088);
    }
  }
}

uint64_t getEnumTagSinglePayload for MatterCommandError.ErrorCode(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3D)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65475;
  if (a2 + 65475 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65475;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65475;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65475;
    }
  }

LABEL_20:
  v7 = (HIBYTE(*a1) & 0x3C | (*a1 >> 14)) ^ 0x3F;
  if (v7 >= 0x3D)
  {
    v7 = -1;
  }

  if (v7 + 1 >= 2)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for MatterCommandError.ErrorCode(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65475;
  if (a3 + 65475 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0x3D)
  {
    v5 = 0;
  }

  if (a2 > 0x3C)
  {
    v6 = ((a2 - 61) >> 16) + 1;
    *result = a2 - 61;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = ((a2 ^ 0x3F) << 8) & 0xFC00 | ((a2 ^ 0x3F) << 14);
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D1A1CD34(unsigned __int16 *a1)
{
  v1 = HIBYTE(*a1) & 0x3C | (*a1 >> 14);
  v2 = v1 ^ 0x3F;
  v3 = 64 - v1;
  if (v2 >= 0x3D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

_WORD *sub_1D1A1CD5C(_WORD *result, unsigned int a2)
{
  if (a2 > 0x3D)
  {
    LOWORD(v2) = a2 - 62;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (((-a2 >> 2) & 0xF) - 16 * a2) << 10;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MatterCommandError.ErrorCode.RVC(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 65474 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65474 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65474;
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

      return (*a1 | (v4 << 16)) - 65474;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65474;
    }
  }

LABEL_17:
  v6 = (HIBYTE(*a1) & 0x3C | (*a1 >> 14)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for MatterCommandError.ErrorCode.RVC(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65474 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65474 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 16) + 1;
    *result = a2 - 62;
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
    *result = (((-a2 >> 2) & 0xF) - 16 * a2) << 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1A1CFBC()
{
  result = qword_1EC649090;
  if (!qword_1EC649090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649090);
  }

  return result;
}

unint64_t sub_1D1A1D014()
{
  result = qword_1EC649098;
  if (!qword_1EC649098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649098);
  }

  return result;
}

unint64_t sub_1D1A1D06C()
{
  result = qword_1EC6490A0;
  if (!qword_1EC6490A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490A0);
  }

  return result;
}

unint64_t sub_1D1A1D0C4()
{
  result = qword_1EC6490A8;
  if (!qword_1EC6490A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490A8);
  }

  return result;
}

unint64_t sub_1D1A1D11C()
{
  result = qword_1EC6490B0;
  if (!qword_1EC6490B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490B0);
  }

  return result;
}

unint64_t sub_1D1A1D174()
{
  result = qword_1EC6490B8;
  if (!qword_1EC6490B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490B8);
  }

  return result;
}

unint64_t sub_1D1A1D1CC()
{
  result = qword_1EC6490C0;
  if (!qword_1EC6490C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490C0);
  }

  return result;
}

unint64_t sub_1D1A1D224()
{
  result = qword_1EC6490C8;
  if (!qword_1EC6490C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490C8);
  }

  return result;
}

unint64_t sub_1D1A1D27C()
{
  result = qword_1EC6490D0;
  if (!qword_1EC6490D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490D0);
  }

  return result;
}

unint64_t sub_1D1A1D2D4()
{
  result = qword_1EC6490D8;
  if (!qword_1EC6490D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490D8);
  }

  return result;
}

unint64_t sub_1D1A1D32C()
{
  result = qword_1EC6490E0;
  if (!qword_1EC6490E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490E0);
  }

  return result;
}

unint64_t sub_1D1A1D384()
{
  result = qword_1EC6490E8;
  if (!qword_1EC6490E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490E8);
  }

  return result;
}

unint64_t sub_1D1A1D3DC()
{
  result = qword_1EC6490F0;
  if (!qword_1EC6490F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490F0);
  }

  return result;
}

unint64_t sub_1D1A1D434()
{
  result = qword_1EC6490F8;
  if (!qword_1EC6490F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490F8);
  }

  return result;
}

unint64_t sub_1D1A1D48C()
{
  result = qword_1EC649100;
  if (!qword_1EC649100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649100);
  }

  return result;
}

unint64_t sub_1D1A1D4E4()
{
  result = qword_1EC649108;
  if (!qword_1EC649108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649108);
  }

  return result;
}

unint64_t sub_1D1A1D53C()
{
  result = qword_1EC649110;
  if (!qword_1EC649110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649110);
  }

  return result;
}

unint64_t sub_1D1A1D594()
{
  result = qword_1EC649118;
  if (!qword_1EC649118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649118);
  }

  return result;
}

unint64_t sub_1D1A1D5EC()
{
  result = qword_1EC649120;
  if (!qword_1EC649120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649120);
  }

  return result;
}

unint64_t sub_1D1A1D644()
{
  result = qword_1EC649128;
  if (!qword_1EC649128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649128);
  }

  return result;
}

unint64_t sub_1D1A1D69C()
{
  result = qword_1EC649130;
  if (!qword_1EC649130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649130);
  }

  return result;
}

unint64_t sub_1D1A1D6F4()
{
  result = qword_1EC649138;
  if (!qword_1EC649138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649138);
  }

  return result;
}

unint64_t sub_1D1A1D74C()
{
  result = qword_1EC649140;
  if (!qword_1EC649140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649140);
  }

  return result;
}

uint64_t sub_1D1A1D7A0(void *a1)
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE07A0B0);
  v3 = a1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v9 = sub_1D1E678BC();
    v11 = sub_1D1B1312C(v9, v10, &v20);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Unexpected error '%{public}s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v20 = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
    v21 = v12;

    MEMORY[0x1D3890F70](0x6E7265746E495B20, 0xEC000000203A6C61);

    v14 = v20;
    v13 = v21;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1D1E6884C();

    v20 = 0xD000000000000016;
    v21 = 0x80000001D1EC32B0;
    v15 = StaticRVCClusterGroup.OperationalErrorState.description.getter();
    MEMORY[0x1D3890F70](v15);

    v16 = v20;
    v17 = v21;
    v20 = v14;
    v21 = v13;

    MEMORY[0x1D3890F70](v16, v17);

    MEMORY[0x1D3890F70](93, 0xE100000000000000);

    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
  }

  else
  {
    if (qword_1EC6422A0 != -1)
    {
      swift_once();
    }

    v19 = qword_1EC6BE140;

    return v19;
  }
}

uint64_t sub_1D1A1DAE8(void *a1)
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE07A0B0);
  v3 = a1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v9 = sub_1D1E678BC();
    v11 = sub_1D1B1312C(v9, v10, &v20);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Unexpected error '%{public}s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v20 = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
    v21 = v12;

    MEMORY[0x1D3890F70](0x6E7265746E495B20, 0xEC000000203A6C61);

    v14 = v20;
    v13 = v21;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1D1E6884C();

    v20 = 0xD000000000000014;
    v21 = 0x80000001D1EC32D0;
    v15 = StaticRVCClusterGroup.RunModeCommandError.description.getter();
    MEMORY[0x1D3890F70](v15);

    v16 = v20;
    v17 = v21;
    v20 = v14;
    v21 = v13;

    MEMORY[0x1D3890F70](v16, v17);

    MEMORY[0x1D3890F70](93, 0xE100000000000000);

    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
  }

  else
  {
    if (qword_1EC6422A0 != -1)
    {
      swift_once();
    }

    v19 = qword_1EC6BE140;

    return v19;
  }
}

uint64_t sub_1D1A1DE40(void *a1)
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE07A0B0);
  v3 = a1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v9 = sub_1D1E678BC();
    v11 = sub_1D1B1312C(v9, v10, &v20);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Unexpected error '%{public}s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v20 = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
    v21 = v12;

    MEMORY[0x1D3890F70](0x6E7265746E495B20, 0xEC000000203A6C61);

    v14 = v20;
    v13 = v21;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1D1E6884C();

    v20 = 0xD000000000000016;
    v21 = 0x80000001D1EC32F0;
    v15 = StaticRVCClusterGroup.CleanModeCommandError.description.getter();
    MEMORY[0x1D3890F70](v15);

    v16 = v20;
    v17 = v21;
    v20 = v14;
    v21 = v13;

    MEMORY[0x1D3890F70](v16, v17);

    MEMORY[0x1D3890F70](93, 0xE100000000000000);

    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
  }

  else
  {
    if (qword_1EC6422A0 != -1)
    {
      swift_once();
    }

    v19 = qword_1EC6BE140;

    return v19;
  }
}

uint64_t sub_1D1A1E198(void *a1)
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE07A0B0);
  v3 = a1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21[0] = v7;
    *v6 = 136446210;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v9 = sub_1D1E678BC();
    v11 = sub_1D1B1312C(v9, v10, v21);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Unexpected error '%{public}s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v21[0] = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
    v21[1] = v12;

    MEMORY[0x1D3890F70](0x6E7265746E495B20, 0xEC000000203A6C61);

    v14 = v21[0];
    v13 = v21[1];
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_1D1E6884C();

    strcpy(v21, "MTRError.Code.");
    HIBYTE(v21[1]) = -18;
    type metadata accessor for MTRError(0);
    sub_1D1A1EC28(&qword_1EC642838, type metadata accessor for MTRError);
    sub_1D1E6651C();
    v15 = MTRErrorCode.description.getter(v20);
    MEMORY[0x1D3890F70](v15);

    v16 = v21[0];
    v17 = v21[1];
    v21[0] = v14;
    v21[1] = v13;

    MEMORY[0x1D3890F70](v16, v17);

    MEMORY[0x1D3890F70](93, 0xE100000000000000);

    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
  }

  else
  {
    if (qword_1EC6422A0 != -1)
    {
      swift_once();
    }

    v19 = qword_1EC6BE140;

    return v19;
  }
}

uint64_t sub_1D1A1E548(uint64_t (*a1)(uint64_t), uint64_t a2, void *a3)
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EE07A0B0);
  v6 = a3;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446210;
    v11 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v12 = sub_1D1E678BC();
    v14 = sub_1D1B1312C(v12, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1D16EC000, v7, v8, "Unexpected error '%{public}s'", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v24 = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
    v25 = v15;

    MEMORY[0x1D3890F70](0x6E7265746E495B20, 0xEC000000203A6C61);

    v18 = v24;
    v17 = v25;
    v19 = a1(v16);
    v21 = v20;
    v24 = v18;
    v25 = v17;

    MEMORY[0x1D3890F70](v19, v21);

    MEMORY[0x1D3890F70](93, 0xE100000000000000);

    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
  }

  else
  {
    if (qword_1EC6422A0 != -1)
    {
      swift_once();
    }

    v23 = qword_1EC6BE140;

    return v23;
  }
}

uint64_t sub_1D1A1E858(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D1EC08C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D6E7572 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F4D6E61656C63 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D1A1E984(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5072657473756C63 && a2 == 0xEB00000000687461 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49646E616D6D6F63 && a2 == 0xE900000000000044 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6554737574617473 && a2 == 0xEA00000000007478 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D1A1EB60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A1EBC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A1EC28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1A1EC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t MatterCommandError.MatterError.init(error:clusterPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for MatterCommandError.MatterError();
  v7 = v6[7];
  v8 = type metadata accessor for StaticEndpoint();
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  *a3 = a1;
  sub_1D1A2198C(a2, &a3[v6[5]], type metadata accessor for EndpointPath);
  LOBYTE(a1) = *(a2 + *(type metadata accessor for ClusterPath(0) + 20));
  result = sub_1D1A21D00(a2, type metadata accessor for ClusterPath);
  a3[v6[6]] = a1;
  return result;
}

uint64_t type metadata accessor for MatterCommandError.MatterError()
{
  result = qword_1EC649180;
  if (!qword_1EC649180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MatterCommandError.MatterError.init(error:endpointPath:clusterKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for MatterCommandError.MatterError();
  v9 = v8[7];
  v10 = type metadata accessor for StaticEndpoint();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *a4 = a1;
  result = sub_1D1A21924(a2, &a4[v8[5]], type metadata accessor for EndpointPath);
  a4[v8[6]] = v7;
  return result;
}

uint64_t MatterCommandError.MatterError.clusterKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MatterCommandError.MatterError();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t MatterCommandError.MatterError.code.getter()
{
  v3 = *v0;
  type metadata accessor for MTRError(0);
  sub_1D1A21B24(&qword_1EC642838, type metadata accessor for MTRError);
  sub_1D1E6651C();
  return v2;
}

uint64_t MatterCommandError.MatterError.endpoint.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MatterCommandError.MatterError() + 28);

  return sub_1D1A16064(a1, v3);
}

uint64_t MatterCommandError.MatterError.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for StaticEndpoint();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v19 - v10;
  v19[1] = *v1;
  type metadata accessor for MTRError(0);
  sub_1D1A21B24(&qword_1EC6428C0, type metadata accessor for MTRError);
  sub_1D1E676EC();
  v12 = type metadata accessor for MatterCommandError.MatterError();
  v13 = v1 + v12[5];
  sub_1D1E66A7C();
  sub_1D1A21B24(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v14 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*&v13[*(v14 + 20)]);
  v15 = *&v13[*(v14 + 24)];
  sub_1D1E6923C();
  v16 = *(v1 + v12[6]);
  sub_1D1E6922C();
  if (v16 != 30)
  {
    v17 = dword_1D1E92A4C[v16];
    sub_1D1E6924C();
  }

  sub_1D1741C08(v1 + v12[7], v11, &qword_1EC644780, &qword_1D1E91AA0);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return sub_1D1E6922C();
  }

  sub_1D1A21924(v11, v7, type metadata accessor for StaticEndpoint);
  sub_1D1E6922C();
  StaticEndpoint.hash(into:)(a1);
  return sub_1D1A21D00(v7, type metadata accessor for StaticEndpoint);
}

uint64_t MatterCommandError.MatterError.hashValue.getter()
{
  v1 = type metadata accessor for StaticEndpoint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  sub_1D1E6920C();
  v17 = *v0;
  type metadata accessor for MTRError(0);
  sub_1D1A21B24(&qword_1EC6428C0, type metadata accessor for MTRError);
  sub_1D1E676EC();
  v10 = type metadata accessor for MatterCommandError.MatterError();
  v11 = v0 + v10[5];
  sub_1D1E66A7C();
  sub_1D1A21B24(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v12 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*&v11[*(v12 + 20)]);
  v13 = *&v11[*(v12 + 24)];
  sub_1D1E6923C();
  v14 = *(v0 + v10[6]);
  sub_1D1E6922C();
  if (v14 != 30)
  {
    v15 = dword_1D1E92A4C[v14];
    sub_1D1E6924C();
  }

  sub_1D1741C08(v0 + v10[7], v9, &qword_1EC644780, &qword_1D1E91AA0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A21924(v9, v5, type metadata accessor for StaticEndpoint);
    sub_1D1E6922C();
    StaticEndpoint.hash(into:)(v18);
    sub_1D1A21D00(v5, type metadata accessor for StaticEndpoint);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1A1F684(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for StaticEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  sub_1D1E6920C();
  v19 = *v2;
  type metadata accessor for MTRError(0);
  sub_1D1A21B24(&qword_1EC6428C0, type metadata accessor for MTRError);
  sub_1D1E676EC();
  v13 = v2 + a2[5];
  sub_1D1E66A7C();
  sub_1D1A21B24(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v14 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*&v13[*(v14 + 20)]);
  v15 = *&v13[*(v14 + 24)];
  sub_1D1E6923C();
  v16 = *(v2 + a2[6]);
  sub_1D1E6922C();
  if (v16 != 30)
  {
    v17 = dword_1D1E92A4C[v16];
    sub_1D1E6924C();
  }

  sub_1D1741C08(v2 + a2[7], v12, &qword_1EC644780, &qword_1D1E91AA0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A21924(v12, v8, type metadata accessor for StaticEndpoint);
    sub_1D1E6922C();
    StaticEndpoint.hash(into:)(v20);
    sub_1D1A21D00(v8, type metadata accessor for StaticEndpoint);
  }

  return sub_1D1E6926C();
}

uint64_t MatterCommandError.MatterError.contextualize()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10) - 8) + 64) + 15;
  v4 = swift_task_alloc();
  *(v1 + 32) = v4;
  v5 = type metadata accessor for MatterStateSnapshot();
  *(v1 + 40) = v5;
  v6 = *(v5 - 8);
  *(v1 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  v8 = type metadata accessor for MatterCommandError.MatterError();
  *(v1 + 64) = v8;
  v9 = *(v8 + 20);
  *(v1 + 80) = v9;
  v10 = swift_task_alloc();
  *(v1 + 72) = v10;
  *v10 = v1;
  v10[1] = sub_1D1A1FAE8;

  return sub_1D1A19514(v4, v0 + v9);
}

uint64_t sub_1D1A1FAE8()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1A1FBE4, 0, 0);
}

uint64_t sub_1D1A1FBE4()
{
  v1 = *(v0 + 32);
  if ((*(*(v0 + 48) + 48))(v1, 1, *(v0 + 40)) == 1)
  {
    sub_1D1741A30(v1, &unk_1EC64F390, &qword_1D1E92B10);
  }

  else
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    sub_1D1A21924(v1, v3, type metadata accessor for MatterStateSnapshot);
    sub_1D1A19BD8(v6 + v2, v3, v5);
    sub_1D1A21D00(v3, type metadata accessor for MatterStateSnapshot);
    sub_1D1A16064(v5, v6 + *(v4 + 28));
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t MatterCommandError.MatterError.contextualize(matterSnapshot:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for MatterCommandError.MatterError();
  sub_1D1A19BD8(v1 + *(v7 + 20), a1, v6);
  return sub_1D1A16064(v6, v1 + *(v7 + 28));
}

uint64_t sub_1D1A1FDBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4BFC;

  return MatterCommandError.MatterError.contextualize()();
}

uint64_t sub_1D1A1FE48(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v10 - v7;
  sub_1D1A19BD8(v2 + *(a2 + 20), a1, &v10 - v7);
  return sub_1D1A16064(v8, v2 + *(a2 + 28));
}

id MatterCommandError.MatterError.errorDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - v3;
  v5 = *v0;
  sub_1D1A2198C(v0, &v11 - v3, type metadata accessor for MatterCommandError.MatterError);
  v6 = type metadata accessor for MatterCommandError.MatterError();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = sub_1D1A2014C(v4, v5);
  v9 = v8;
  sub_1D1741A30(v4, &qword_1EC649158, &qword_1D1E92840);
  if (!v9)
  {
    return 0;
  }

  return v7;
}

uint64_t MatterCommandError.MatterError.failureReason.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - v3;
  v5 = *v0;
  sub_1D1A2198C(v0, &v12 - v3, type metadata accessor for MatterCommandError.MatterError);
  v6 = type metadata accessor for MatterCommandError.MatterError();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  sub_1D1A2014C(v4, v5);
  v8 = v7;
  v10 = v9;
  sub_1D1741A30(v4, &qword_1EC649158, &qword_1D1E92840);
  if (!v8)
  {
    return 0;
  }

  return v10;
}

id sub_1D1A2014C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v73 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v73 - v16;
  v80 = a2;
  type metadata accessor for MTRError(0);
  sub_1D1A21B24(&qword_1EC642838, type metadata accessor for MTRError);
  sub_1D1E6651C();
  if (v79 > 0x13)
  {
    goto LABEL_15;
  }

  if (((1 << v79) & 0x805FC) != 0)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D1E6709C();
    __swift_project_value_buffer(v20, qword_1EE07A0B0);
    v21 = a2;
    v22 = sub_1D1E6707C();
    v23 = sub_1D1E6834C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v75 = v26;
      *v24 = 136315394;
      v79 = v21;
      sub_1D1E6651C();
      v27 = MTRErrorCode.description.getter(v80);
      v29 = sub_1D1B1312C(v27, v28, &v75);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2112;
      v30 = v21;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v31;
      *v25 = v31;
      _os_log_impl(&dword_1D16EC000, v22, v23, "Encountered MTRError.Code.%s which indicates a programming error in error %@", v24, 0x16u);
      sub_1D1741A30(v25, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1D3893640](v26, -1, -1);
      MEMORY[0x1D3893640](v24, -1, -1);
    }

LABEL_9:

    v18 = v21;
    v19 = sub_1D1A1ECE4(v18, v18);
    goto LABEL_10;
  }

  if (((1 << v79) & 0x7F800) != 0)
  {
    v18 = a2;
    v19 = sub_1D1A1ECE4(v18, v18);
LABEL_10:
    v32 = v19;

    return v32;
  }

  if (v79 != 9)
  {
LABEL_15:
    if (v79 == 1)
    {
      if (qword_1EC6422A0 != -1)
      {
        swift_once();
      }

      v32 = qword_1EC6BE140;

      return v32;
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v38 = sub_1D1E6709C();
    __swift_project_value_buffer(v38, qword_1EE07A0B0);
    v21 = a2;
    v22 = sub_1D1E6707C();
    v39 = sub_1D1E6833C();

    if (os_log_type_enabled(v22, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v75 = v42;
      *v40 = 136315394;
      v77 = v21;
      sub_1D1E6651C();
      v43 = MTRErrorCode.description.getter(v78);
      v45 = sub_1D1B1312C(v43, v44, &v75);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      v46 = v21;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v47;
      *v41 = v47;
      _os_log_impl(&dword_1D16EC000, v22, v39, "Encountered unknown MTRErrorCode.%s in error %@", v40, 0x16u);
      sub_1D1741A30(v41, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1D3893640](v42, -1, -1);
      MEMORY[0x1D3893640](v40, -1, -1);
    }

    goto LABEL_9;
  }

  sub_1D1741C08(a1, v10, &qword_1EC649158, &qword_1D1E92840);
  v34 = type metadata accessor for MatterCommandError.MatterError();
  v74 = *(*(v34 - 8) + 48);
  if (v74(v10, 1, v34) == 1)
  {
    v35 = &qword_1EC649158;
    v36 = &qword_1D1E92840;
    v37 = v10;
LABEL_26:
    sub_1D1741A30(v37, v35, v36);
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v49 = result;
      wapiCapability = MobileGestalt_get_wapiCapability();

      if (wapiCapability)
      {
        v51 = 1312902231;
      }

      else
      {
        v51 = 1229343063;
      }

      v75 = 0xD000000000000032;
      v76 = 0x80000001D1EC33D0;
      MEMORY[0x1D3890F70](95, 0xE100000000000000);
      MEMORY[0x1D3890F70](v51, 0xE400000000000000);

      static String.hfLocalized(_:)(v75, v76);
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_44;
  }

  sub_1D1741C08(&v10[*(v34 + 28)], v17, &qword_1EC644780, &qword_1D1E91AA0);
  sub_1D1A21D00(v10, type metadata accessor for MatterCommandError.MatterError);
  v48 = type metadata accessor for StaticEndpoint();
  if ((*(*(v48 - 8) + 48))(v17, 1, v48) == 1)
  {
    v35 = &qword_1EC644780;
    v36 = &qword_1D1E91AA0;
    v37 = v17;
    goto LABEL_26;
  }

  v52 = &v17[*(v48 + 24)];
  v53 = *(v52 + 1);
  v73 = *v52;

  sub_1D1A21D00(v17, type metadata accessor for StaticEndpoint);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v54 = result;
    v55 = MobileGestalt_get_wapiCapability();

    if (v55)
    {
      v56 = 1312902231;
    }

    else
    {
      v56 = 1229343063;
    }

    v75 = 0xD00000000000002BLL;
    v76 = 0x80000001D1EC3470;
    MEMORY[0x1D3890F70](95, 0xE100000000000000);
    MEMORY[0x1D3890F70](v56, 0xE400000000000000);

    v57 = v75;
    v58 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1D1E739C0;
    *(v59 + 56) = MEMORY[0x1E69E6158];
    *(v59 + 64) = sub_1D1757D20();
    *(v59 + 32) = v73;
    *(v59 + 40) = v53;
    static String.hfLocalized(_:)(v57, v58);

    sub_1D1E6784C();
LABEL_36:

    sub_1D1741C08(a1, v8, &qword_1EC649158, &qword_1D1E92840);
    if (v74(v8, 1, v34) == 1)
    {
      v60 = &qword_1EC649158;
      v61 = &qword_1D1E92840;
      v62 = v8;
    }

    else
    {
      sub_1D1741C08(&v8[*(v34 + 28)], v15, &qword_1EC644780, &qword_1D1E91AA0);
      sub_1D1A21D00(v8, type metadata accessor for MatterCommandError.MatterError);
      v63 = type metadata accessor for StaticEndpoint();
      if ((*(*(v63 - 8) + 48))(v15, 1, v63) != 1)
      {
        v67 = &v15[*(v63 + 24)];
        v69 = *v67;
        v68 = *(v67 + 1);

        sub_1D1A21D00(v15, type metadata accessor for StaticEndpoint);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_1D1E739C0;
        *(v70 + 56) = MEMORY[0x1E69E6158];
        *(v70 + 64) = sub_1D1757D20();
        *(v70 + 32) = v69;
        *(v70 + 40) = v68;
        static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC3440);
        v71 = sub_1D1E6784C();
        v66 = v72;

        v64 = v71;
        goto LABEL_42;
      }

      v60 = &qword_1EC644780;
      v61 = &qword_1D1E91AA0;
      v62 = v15;
    }

    sub_1D1741A30(v62, v60, v61);
    v64 = static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EC3410);
    v66 = v65;
LABEL_42:
    v32 = static String.hfLocalized(_:)(v64, v66);

    return v32;
  }

LABEL_44:
  __break(1u);
  return result;
}

id sub_1D1A20BA0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = *v1;
  sub_1D1A2198C(v1, &v12 - v5, type metadata accessor for MatterCommandError.MatterError);
  (*(*(a1 - 8) + 56))(v6, 0, 1, a1);
  v8 = sub_1D1A2014C(v6, v7);
  v10 = v9;
  sub_1D1741A30(v6, &qword_1EC649158, &qword_1D1E92840);
  if (!v10)
  {
    return 0;
  }

  return v8;
}

uint64_t sub_1D1A20CC8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *v1;
  sub_1D1A2198C(v1, &v13 - v5, type metadata accessor for MatterCommandError.MatterError);
  (*(*(a1 - 8) + 56))(v6, 0, 1, a1);
  sub_1D1A2014C(v6, v7);
  v9 = v8;
  v11 = v10;
  sub_1D1741A30(v6, &qword_1EC649158, &qword_1D1E92840);
  if (!v9)
  {
    return 0;
  }

  return v11;
}

id related decl e for MTRErrorCode.errorDescription.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for MatterCommandError.MatterError();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_1D1A2014C(v5, a1);
  v9 = v8;
  sub_1D1741A30(v5, &qword_1EC649158, &qword_1D1E92840);
  if (!v9)
  {
    return 0;
  }

  return v7;
}

uint64_t related decl e for MTRErrorCode.failureReason.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for MatterCommandError.MatterError();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D1A2014C(v5, a1);
  v8 = v7;
  v10 = v9;
  sub_1D1741A30(v5, &qword_1EC649158, &qword_1D1E92840);
  if (!v8)
  {
    return 0;
  }

  return v10;
}

id sub_1D1A21010()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - v3;
  v5 = *v0;
  v6 = type metadata accessor for MatterCommandError.MatterError();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_1D1A2014C(v4, v5);
  v9 = v8;
  sub_1D1741A30(v4, &qword_1EC649158, &qword_1D1E92840);
  if (!v9)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_1D1A2111C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - v3;
  v5 = *v0;
  v6 = type metadata accessor for MatterCommandError.MatterError();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1D1A2014C(v4, v5);
  v8 = v7;
  v10 = v9;
  sub_1D1741A30(v4, &qword_1EC649158, &qword_1D1E92840);
  if (!v8)
  {
    return 0;
  }

  return v10;
}

unint64_t MTRErrorCode.description.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x456C6172656E6567;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x4164696C61766E69;
      break;
    case 4:
    case 7:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x5364696C61766E69;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x74756F656D6974;
      break;
    case 9:
      result = 0x6F54726566667562;
      break;
    case 10:
      result = 0x7845636972626166;
      break;
    case 11:
      result = 0x536E776F6E6B6E75;
      break;
    case 12:
      result = 0x694D616D65686373;
      break;
    case 13:
      result = 0x646F636544766C74;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x656C6C65636E6163;
      break;
    case 16:
      result = 0x6544737365636361;
      break;
    case 17:
      result = 2037609826;
      break;
    case 18:
      result = 0x646E756F46746F6ELL;
      break;
    default:
      v3 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v3);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      result = 0x286E776F6E6B6E75;
      break;
  }

  return result;
}

BOOL _s13HomeDataModel18MatterCommandErrorV0dF0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for StaticEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649150, &qword_1D1E927B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  type metadata accessor for MTRError(0);
  v17 = *a1;
  v33 = *a2;
  v34 = v17;
  sub_1D1A21B24(&qword_1EC642838, type metadata accessor for MTRError);
  if ((sub_1D1E6650C() & 1) == 0)
  {
    return 0;
  }

  v32 = v5;
  v18 = type metadata accessor for MatterCommandError.MatterError();
  v19 = v18[5];
  v20 = a1 + v19;
  v21 = a2 + v19;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v22 = type metadata accessor for EndpointPath(0);
  if (*&v20[*(v22 + 20)] != *&v21[*(v22 + 20)] || *&v20[*(v22 + 24)] != *&v21[*(v22 + 24)])
  {
    return 0;
  }

  v23 = v18[6];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 30)
  {
    if (v25 != 30)
    {
      return 0;
    }
  }

  else if (v25 == 30 || dword_1D1E92A4C[v24] != dword_1D1E92A4C[v25])
  {
    return 0;
  }

  v26 = v18[7];
  v27 = *(v13 + 48);
  sub_1D1741C08(a1 + v26, v16, &qword_1EC644780, &qword_1D1E91AA0);
  sub_1D1741C08(a2 + v26, &v16[v27], &qword_1EC644780, &qword_1D1E91AA0);
  v28 = *(v32 + 48);
  if (v28(v16, 1, v4) == 1)
  {
    if (v28(&v16[v27], 1, v4) == 1)
    {
      sub_1D1741A30(v16, &qword_1EC644780, &qword_1D1E91AA0);
      return 1;
    }

    goto LABEL_15;
  }

  sub_1D1741C08(v16, v12, &qword_1EC644780, &qword_1D1E91AA0);
  if (v28(&v16[v27], 1, v4) == 1)
  {
    sub_1D1A21D00(v12, type metadata accessor for StaticEndpoint);
LABEL_15:
    sub_1D1741A30(v16, &qword_1EC649150, &qword_1D1E927B0);
    return 0;
  }

  sub_1D1A21924(&v16[v27], v8, type metadata accessor for StaticEndpoint);
  v30 = static StaticEndpoint.== infix(_:_:)(v12, v8);
  sub_1D1A21D00(v8, type metadata accessor for StaticEndpoint);
  sub_1D1A21D00(v12, type metadata accessor for StaticEndpoint);
  sub_1D1741A30(v16, &qword_1EC644780, &qword_1D1E91AA0);
  return (v30 & 1) != 0;
}

uint64_t sub_1D1A21924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A2198C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A21A3C(uint64_t a1)
{
  result = sub_1D1A21B24(&qword_1EC649168, type metadata accessor for MatterCommandError.MatterError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1A21B24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1A21B70()
{
  result = qword_1EC649170;
  if (!qword_1EC649170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649178, &qword_1D1E929D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649170);
  }

  return result;
}

void sub_1D1A21BFC()
{
  type metadata accessor for MTRError(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for EndpointPath(319);
    if (v1 <= 0x3F)
    {
      sub_1D1A21CB0();
      if (v2 <= 0x3F)
      {
        sub_1D1A1CB68();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D1A21CB0()
{
  if (!qword_1EC649190)
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC649190);
    }
  }
}

uint64_t sub_1D1A21D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A21D60()
{
  v0 = sub_1D1E683AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E6845C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1D1E6753C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1D1A21F60();
  sub_1D1E6751C();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1D1A21FAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FE30, &qword_1D1E92AC8);
  sub_1D1A22004();
  sub_1D1E6868C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8098], v0);
  result = sub_1D1E6846C();
  qword_1EC6BE160 = result;
  return result;
}

unint64_t sub_1D1A21F60()
{
  result = qword_1EE079CA0;
  if (!qword_1EE079CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079CA0);
  }

  return result;
}

unint64_t sub_1D1A21FAC()
{
  result = qword_1EE079CA8;
  if (!qword_1EE079CA8)
  {
    sub_1D1E6845C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE079CA8);
  }

  return result;
}

unint64_t sub_1D1A22004()
{
  result = qword_1EE079E20;
  if (!qword_1EE079E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64FE30, &qword_1D1E92AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE079E20);
  }

  return result;
}

uint64_t static NSUserDefaults.recommendationUILastOpenedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1D1E677EC();
  v4 = [v2 initWithSuiteName_];

  if (!v4)
  {
    v4 = [objc_opt_self() standardUserDefaults];
  }

  v5 = sub_1D1E677EC();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_1D1741A30(v12, &qword_1EC649700, &qword_1D1E6E910);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  sub_1D1E6698C();
  v7 = 0;
LABEL_11:
  v8 = sub_1D1E669FC();
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

id static NSUserDefaults.homeAppGroup.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    return v2;
  }

  v4 = [objc_opt_self() standardUserDefaults];

  return v4;
}

id sub_1D1A222DC()
{
  result = sub_1D1A22300();
  byte_1EC649198 = result & 1;
  return result;
}

id sub_1D1A22300()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1D1E677EC();
  v4 = [v2 BOOLForKey_];

  return v4;
}

id sub_1D1A22404()
{
  result = sub_1D1A22428();
  byte_1EC649199 = result & 1;
  return result;
}

id sub_1D1A22428()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1D1E677EC();
  v4 = [v2 BOOLForKey_];

  return v4;
}

id sub_1D1A2252C()
{
  result = sub_1D1A22550();
  byte_1EC64919A = result & 1;
  return result;
}

id sub_1D1A22550()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1D1E677EC();
  v4 = [v2 BOOLForKey_];

  return v4;
}

id sub_1D1A22654()
{
  result = sub_1D1A22678();
  byte_1EC64919B = result & 1;
  return result;
}

id sub_1D1A22678()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1D1E677EC();
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t sub_1D1A2277C()
{
  result = sub_1D1A227A0();
  byte_1EC64919C = result & 1;
  return result;
}

uint64_t sub_1D1A227A0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1D1E677EC();
  v4 = [v2 BOOLForKey_];

  v5 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v6 = sub_1D1E677EC();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = sub_1D1E677EC();
    v9 = [v7 BOOLForKey_];
  }

  else
  {
    v9 = 0;
  }

  return (v4 | v9) & 1;
}

void sub_1D1A22948()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1D1E677EC();
  v4 = [v2 BOOLForKey_];

  byte_1EC64919D = v4;
}

uint64_t sub_1D1A22A58(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_1D1A22AA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - v4;
  sub_1D174A548(a1, &v7 - v4);
  return _sSo14NSUserDefaultsC13HomeDataModelE30recommendationUILastOpenedDate10Foundation0I0VSgvsZ_0(v5);
}

void (*static NSUserDefaults.recommendationUILastOpenedDate.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v2);
    v3 = malloc(v2);
  }

  a1[1] = v3;
  static NSUserDefaults.recommendationUILastOpenedDate.getter(v3);
  return sub_1D1A22BD8;
}

void sub_1D1A22BD8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    sub_1D174A548(v3, v2);
    _sSo14NSUserDefaultsC13HomeDataModelE30recommendationUILastOpenedDate10Foundation0I0VSgvsZ_0(v2);
    sub_1D1741A30(v3, &qword_1EC642570, &qword_1D1E6C6A0);
  }

  else
  {
    _sSo14NSUserDefaultsC13HomeDataModelE30recommendationUILastOpenedDate10Foundation0I0VSgvsZ_0(v3);
  }

  free(v3);

  free(v2);
}

uint64_t _sSo14NSUserDefaultsC13HomeDataModelE30recommendationUILastOpenedDate10Foundation0I0VSgvsZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v15 - v4;
  v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v7 = sub_1D1E677EC();
  v8 = [v6 initWithSuiteName_];

  if (!v8)
  {
    v8 = [objc_opt_self() standardUserDefaults];
  }

  sub_1D174A548(a1, v5);
  v9 = sub_1D1E669FC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC642570, &qword_1D1E6C6A0);
    v11 = 0;
  }

  else
  {
    sub_1D1E6699C();
    v15[1] = v12;
    (*(v10 + 8))(v5, v9);
    v11 = sub_1D1E6903C();
  }

  v13 = sub_1D1E677EC();
  [v8 setObject:v11 forKey:v13];

  swift_unknownObjectRelease();
  return sub_1D1741A30(a1, &qword_1EC642570, &qword_1D1E6C6A0);
}

uint64_t sub_1D1A22F40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A0, &unk_1D1E92AF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D1A22FC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for MatterStateSnapshot() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491E0, &qword_1D1E92C20);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A230BC, v1, 0);
}

uint64_t sub_1D1A230BC()
{
  if (*(v0[3] + OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_forDataModel) == 1)
  {
    v0[8] = sub_1D1E67E1C();
    v0[9] = sub_1D1E67E0C();
    v2 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1A23238, v2, v1);
  }

  else
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[5];
    sub_1D1A28BEC(v0[2], v0[4], type metadata accessor for MatterStateSnapshot);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A8, &unk_1D1EB1930);
    sub_1D1E67ECC();
    (*(v4 + 8))(v3, v5);
    v6 = v0[7];
    v7 = v0[4];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D1A23238()
{
  v1 = *(v0 + 72);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D1A232D0, v2, 0);
}

uint64_t sub_1D1A232D0()
{
  v1 = *(v0 + 64);
  *(v0 + 80) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A2335C, v3, v2);
}

uint64_t sub_1D1A2335C()
{
  v1 = v0[10];
  v2 = v0[3];

  v0[11] = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1A233D4, v2, 0);
}

uint64_t sub_1D1A233D4()
{
  v1 = *(v0 + 64);
  *(v0 + 96) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A23460, v3, v2);
}

uint64_t sub_1D1A23460()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[2];

  sub_1D1DE2C6C(v3);
  v4 = v0[7];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t MatterSnapshotModerator.deinit()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsStream;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A0, &unk_1D1E92AF0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A8, &unk_1D1EB1930);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MatterSnapshotModerator.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsStream;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A0, &unk_1D1E92AF0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A8, &unk_1D1EB1930);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t MatterSnapshotModerator.rebuildSnapshot(updateType:home:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 64) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491B0, &qword_1D1E92B08);
  *(v5 + 88) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v10 = type metadata accessor for MatterStateSnapshot();
  *(v5 + 104) = v10;
  v11 = *(v10 - 8);
  *(v5 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v13 = sub_1D1E66A7C();
  *(v5 + 136) = v13;
  v14 = *(v13 - 8);
  *(v5 + 144) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10) - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = *a2;
  *(v5 + 240) = *(a2 + 16);
  *(v5 + 216) = *a4;
  *(v5 + 241) = *(a4 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1D1A2388C, v4, 0);
}

uint64_t sub_1D1A2388C()
{
  v113 = v0;
  v1 = *(v0 + 241);
  v2 = *(v0 + 216);
  if (v1 == 255)
  {
    sub_1D186145C(*(v0 + 216), 255);
    sub_1D1861470(v2, 255);
    sub_1D1861470(0, 3);
  }

  else
  {
    v111 = *(v0 + 216);
    v112 = v1;
    v108 = 0;
    LOBYTE(v109) = 3;
    sub_1D186145C(v2, v1);
    sub_1D186145C(v2, v1);
    v3 = _s13HomeDataModel19MatterStateSnapshotV6FilterO2eeoiySbAE_AEtFZ_0(&v111, &v108);

    sub_1D1861470(v2, v1);
    if (v3)
    {
      v4 = *(v0 + 216);
      v5 = *(v0 + 152);
      v6 = *(v0 + 64);
      v7 = *(v0 + 72);
      v8 = *(v0 + 241);
      v9 = [v7 matterControllerID];
      v10 = sub_1D1E6781C();
      v12 = v11;

      v13 = [v7 uniqueIdentifier];
      sub_1D1E66A5C();

      v14 = sub_1D18D677C(MEMORY[0x1E69E7CC0]);
      v108 = v4;
      LOBYTE(v109) = v8;
      sub_1D186145C(v4, v8);
      sub_1D1A28CB8(v10, v12, v5, v14, &v108, v6);
LABEL_24:
      v78 = *(v0 + 184);
      v77 = *(v0 + 192);
      v80 = *(v0 + 168);
      v79 = *(v0 + 176);
      v82 = *(v0 + 152);
      v81 = *(v0 + 160);
      v84 = *(v0 + 120);
      v83 = *(v0 + 128);
      v85 = *(v0 + 96);

      v86 = *(v0 + 8);

      return v86();
    }
  }

  v15 = *(v0 + 160);
  v16 = *(v0 + 80);
  v17 = [*(v0 + 72) uniqueIdentifier];
  sub_1D1E66A5C();

  swift_beginAccess();
  v18 = *(v16 + 112);
  v19 = *(v0 + 160);
  if (*(v18 + 16))
  {
    v20 = *(v16 + 112);

    v21 = sub_1D1742188(v19);
    if (v22)
    {
      v23 = *(v0 + 160);
      v24 = *(v0 + 136);
      v25 = *(v0 + 144);
      sub_1D1A28BEC(*(v18 + 56) + *(*(v0 + 112) + 72) * v21, *(v0 + 192), type metadata accessor for MatterStateSnapshot);
      (*(v25 + 8))(v23, v24);

      v26 = 0;
      goto LABEL_11;
    }

    v27 = *(v0 + 160);
    v28 = *(v0 + 136);
    v29 = *(v0 + 144);

    (*(v29 + 8))(v27, v28);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));
  }

  v26 = 1;
LABEL_11:
  v30 = *(v0 + 208);
  v96 = *(v0 + 216);
  v32 = *(v0 + 192);
  v31 = *(v0 + 200);
  v33 = *(v0 + 184);
  v100 = *(v0 + 128);
  v34 = *(v0 + 104);
  v98 = *(v0 + 152);
  v99 = *(v0 + 112);
  v101 = v34;
  v102 = *(v0 + 176);
  v103 = *(v0 + 96);
  v105 = *(v0 + 88);
  v35 = *(v0 + 72);
  v107 = *(v99 + 56);
  v36 = *(v0 + 240);
  v37 = *(v0 + 241);
  v107(v32, v26, 1);
  v38 = sub_1D1A2725C(v35, v31, v30, v36);
  *(v0 + 224) = v38;
  v97 = v33;
  sub_1D1741C08(v32, v33, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D186145C(v96, v37);
  v39 = sub_1D1A2B978(v33, v31, v30, v36, v35, v96, v37);
  v40 = [v35 matterControllerID];
  v41 = sub_1D1E6781C();
  v43 = v42;

  v44 = [v35 uniqueIdentifier];
  sub_1D1E66A5C();

  v108 = v96;
  LOBYTE(v109) = v37;
  sub_1D1A28CB8(v41, v43, v98, v39, &v108, v100);
  sub_1D1741A30(v97, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1A27A08(v38, v100);
  sub_1D1A28BEC(v100, v102, type metadata accessor for MatterStateSnapshot);
  (v107)(v102, 0, 1, v101);
  v45 = *(v105 + 48);
  sub_1D1741C08(v32, v103, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1741C08(v102, v103 + v45, &unk_1EC64F390, &qword_1D1E92B10);
  v46 = *(v99 + 48);
  if (v46(v103, 1, v101) == 1)
  {
    v47 = *(v0 + 104);
    sub_1D1741A30(*(v0 + 176), &unk_1EC64F390, &qword_1D1E92B10);
    if (v46(v103 + v45, 1, v47) == 1)
    {
      sub_1D1741A30(*(v0 + 96), &unk_1EC64F390, &qword_1D1E92B10);
      v48 = 1;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v49 = *(v0 + 104);
  sub_1D1741C08(*(v0 + 96), *(v0 + 168), &unk_1EC64F390, &qword_1D1E92B10);
  v50 = v46(v103 + v45, 1, v49);
  v51 = *(v0 + 168);
  v52 = *(v0 + 176);
  if (v50 == 1)
  {
    sub_1D1741A30(*(v0 + 176), &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1A28C54(v51, type metadata accessor for MatterStateSnapshot);
LABEL_16:
    sub_1D1741A30(*(v0 + 96), &qword_1EC6491B0, &qword_1D1E92B08);
    v48 = 0;
    goto LABEL_18;
  }

  v53 = *(v0 + 120);
  v54 = *(v0 + 96);
  sub_1D1A28448(v103 + v45, v53);
  v48 = _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0(v51, v53);
  sub_1D1A28C54(v53, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v52, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1A28C54(v51, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v54, &unk_1EC64F390, &qword_1D1E92B10);
LABEL_18:
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v56 = *(v0 + 200);
  v55 = *(v0 + 208);
  v57 = *(v0 + 72);
  v58 = *(v0 + 240);
  v59 = sub_1D1E6709C();
  __swift_project_value_buffer(v59, qword_1EE07A0B0);
  v60 = v57;
  sub_1D1A28388(v56, v55, v58);
  v61 = sub_1D1E6707C();
  v62 = sub_1D1E6835C();

  sub_1D1A283E8(v56, v55, v58);
  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 200);
    v64 = *(v0 + 208);
    v106 = v48;
    v65 = *(v0 + 72);
    v66 = *(v0 + 240);
    v67 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v111 = v104;
    *v67 = 136446722;
    v68 = [v65 matterControllerID];
    v69 = sub_1D1E6781C();
    v71 = v70;

    v48 = v106;
    v72 = sub_1D1B1312C(v69, v71, &v111);

    *(v67 + 4) = v72;
    *(v67 + 12) = 2082;
    v108 = v63;
    v109 = v64;
    v110 = v66;
    sub_1D1A28388(v63, v64, v66);
    updated = MatterStateSnapshot.UpdateType.description.getter();
    v75 = v74;
    sub_1D1A283E8(v108, v109, v110);
    v76 = sub_1D1B1312C(updated, v75, &v111);

    *(v67 + 14) = v76;
    *(v67 + 22) = 1026;
    *(v67 + 24) = !v106;
    _os_log_impl(&dword_1D16EC000, v61, v62, "new matter snapshot for '%{public}s', updateType:%{public}s, didChange:%{BOOL,public}d", v67, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v104, -1, -1);
    MEMORY[0x1D3893640](v67, -1, -1);
  }

  if (v48)
  {
    sub_1D1741A30(*(v0 + 192), &unk_1EC64F390, &qword_1D1E92B10);

    sub_1D1A28448(*(v0 + 128), *(v0 + 64));
    goto LABEL_24;
  }

  v88 = *(v0 + 184);
  v89 = *(v0 + 152);
  v90 = *(v0 + 128);
  v91 = *(v0 + 104);
  v92 = [*(v0 + 72) uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1A28BEC(v90, v88, type metadata accessor for MatterStateSnapshot);
  (v107)(v88, 0, 1, v91);
  swift_beginAccess();
  sub_1D1B0E5E8(v88, v89);
  swift_endAccess();
  v93 = swift_task_alloc();
  *(v0 + 232) = v93;
  *v93 = v0;
  v93[1] = sub_1D1A24294;
  v94 = *(v0 + 128);
  v95 = *(v0 + 80);

  return sub_1D1A22FC4(v94);
}

uint64_t sub_1D1A24294()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1A243A4, v2, 0);
}

uint64_t sub_1D1A243A4()
{
  v1 = v0[28];
  v2 = v0[24];

  sub_1D1741A30(v2, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1A28448(v0[16], v0[8]);
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t MatterSnapshotModerator.rebuildSnapshotConcurrently(updateType:homes:filter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 64) = *v3;
  v7 = sub_1D1E66A7C();
  *(v4 + 72) = v7;
  v8 = *(v7 - 8);
  *(v4 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v10 = *(*(type metadata accessor for MatterStateSnapshot() - 8) + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = *a1;
  *(v4 + 160) = *(a1 + 16);
  *(v4 + 128) = *a3;
  *(v4 + 161) = *(a3 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1D1A245EC, v3, 0);
}

uint64_t sub_1D1A245EC()
{
  v56 = v0;
  v1 = *(v0 + 161);
  v2 = *(v0 + 128);
  if (v1 == 255)
  {
    sub_1D186145C(*(v0 + 128), 255);
    sub_1D1861470(v2, 255);
    sub_1D1861470(0, 3);
    goto LABEL_14;
  }

  v52 = *(v0 + 128);
  v53 = v1;
  v54 = 0;
  v55 = 3;
  sub_1D186145C(v2, v1);
  sub_1D186145C(v2, v1);
  v3 = _s13HomeDataModel19MatterStateSnapshotV6FilterO2eeoiySbAE_AEtFZ_0(&v52, &v54);

  sub_1D1861470(v2, v1);
  if ((v3 & 1) == 0)
  {
LABEL_14:
    v51 = *(v47 + 161);
    v23 = *(v47 + 120);
    v49 = *(v47 + 128);
    v24 = *(v47 + 160);
    v25 = *(v47 + 112);
    v26 = *(v47 + 56);
    v27 = *(v47 + 64);
    v28 = *(v47 + 48);
    swift_beginAccess();
    v29 = *(v26 + 112);
    *(v47 + 136) = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860);
    v59 = sub_1D1A28BA4(&qword_1EC6491B8, type metadata accessor for MatterSnapshotModerator);
    v31 = swift_task_alloc();
    *(v47 + 144) = v31;
    *(v31 + 16) = v28;
    *(v31 + 24) = v29;
    *(v31 + 32) = v25;
    *(v31 + 40) = v23;
    *(v31 + 48) = v24;
    *(v31 + 56) = v49;
    *(v31 + 64) = v51;
    *(v31 + 72) = v26;
    *(v31 + 80) = v27;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491C0, &qword_1D1E92B40);
    v33 = *(MEMORY[0x1E69E87D8] + 4);

    v34 = swift_task_alloc();
    *(v47 + 152) = v34;
    *v34 = v47;
    v34[1] = sub_1D1A24AE8;
    v58 = v32;
    v35 = v59;

    return MEMORY[0x1EEE6DBF8](v47 + 40, v30, v32, v26, v35, &unk_1D1E92B38, v31, v30);
  }

  v4 = *(v47 + 48);
  v5 = sub_1D18D72DC(MEMORY[0x1E69E7CC0]);
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v7 = 0;
    v45 = v4 & 0xFFFFFFFFFFFFFF8;
    v46 = v4 & 0xC000000000000001;
    v42 = *(v47 + 48) + 32;
    v43 = (*(v47 + 80) + 8);
    v44 = i;
    while (1)
    {
      if (v46)
      {
        v8 = MEMORY[0x1D3891EF0](v7, *(v47 + 48));
      }

      else
      {
        if (v7 >= *(v45 + 16))
        {
          goto LABEL_18;
        }

        v8 = *(v42 + 8 * v7);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v50 = v5;
      v11 = *(v47 + 128);
      v12 = *(v47 + 104);
      v48 = *(v47 + 96);
      v13 = *(v47 + 88);
      v59 = *(v47 + 72);
      v14 = *(v47 + 161);
      v15 = [v8 matterControllerID];
      v16 = sub_1D1E6781C();
      v18 = v17;

      v19 = [v9 uniqueIdentifier];
      sub_1D1E66A5C();

      v20 = sub_1D18D677C(MEMORY[0x1E69E7CC0]);
      v54 = v11;
      v55 = v14;
      sub_1D186145C(v11, v14);
      sub_1D1A28CB8(v16, v18, v13, v20, &v54, v12);
      v21 = [v9 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1A28BEC(v12, v48, type metadata accessor for MatterStateSnapshot);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v50;
      v4 = &v54;
      sub_1D1755254(v48, v13, isUniquelyReferenced_nonNull_native);

      (*v43)(v13, v59);
      sub_1D1A28C54(v12, type metadata accessor for MatterStateSnapshot);
      v5 = v54;
      ++v7;
      if (v10 == v44)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (*(v47 + 48) < 0)
    {
      v36 = *(v47 + 48);
    }
  }

LABEL_22:
  v38 = *(v47 + 96);
  v37 = *(v47 + 104);
  v39 = *(v47 + 88);

  v40 = *(v47 + 8);

  return v40(v5);
}

uint64_t sub_1D1A24AE8()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 56);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1A24C38, v4, 0);
}

uint64_t sub_1D1A24C38()
{
  v1 = v0[5];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_1D1A24CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 168) = v24;
  *(v8 + 176) = v25;
  *(v8 + 449) = v23;
  *(v8 + 152) = a6;
  *(v8 + 160) = a8;
  *(v8 + 448) = a7;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491B0, &qword_1D1E92B08);
  *(v8 + 184) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10) - 8) + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = type metadata accessor for MatterStateSnapshot();
  *(v8 + 224) = v12;
  v13 = *(v12 - 8);
  *(v8 + 232) = v13;
  *(v8 + 240) = *(v13 + 64);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  v14 = sub_1D1E66A7C();
  *(v8 + 272) = v14;
  v15 = *(v14 - 8);
  *(v8 + 280) = v15;
  *(v8 + 288) = *(v15 + 64);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491D0, &qword_1D1E92BD8) - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491D8, &unk_1D1E92BE0);
  *(v8 + 328) = v17;
  v18 = *(v17 - 8);
  *(v8 + 336) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A24FC4, v24, 0);
}

uint64_t sub_1D1A24FC4()
{
  v1 = *(v0 + 128);
  v35 = sub_1D18D72DC(MEMORY[0x1E69E7CC0]);
  if (v1 >> 62)
  {
    if (*(v0 + 128) < 0)
    {
      v26 = *(v0 + 128);
    }

    v5 = sub_1D1E6873C();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6D8A8](v5, v2, v3, v4);
  }

  v6 = 0;
  v36 = *(v0 + 128) + 32;
  v37 = **(v0 + 120);
  v38 = v1 & 0xC000000000000001;
  v39 = v5;
  do
  {
    v48 = v6;
    if (v38)
    {
      v8 = MEMORY[0x1D3891EF0](v6, *(v0 + 128));
    }

    else
    {
      v8 = *(v36 + 8 * v6);
    }

    v46 = v8;
    v9 = *(v0 + 376);
    v43 = *(v0 + 176);
    v44 = *(v0 + 368);
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v41 = v13;
    v40 = v9;
    v14 = *(v0 + 449);
    v42 = *(v0 + 448);
    v15 = sub_1D1E67E7C();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v9, 1, 1, v15);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v45 = (v17 + 16);
    *(v17 + 24) = 0;
    *(v17 + 32) = v46;
    *(v17 + 40) = v12;
    *(v17 + 48) = v13;
    *(v17 + 56) = v10;
    *(v17 + 64) = v42;
    *(v17 + 72) = v11;
    *(v17 + 80) = v14;
    *(v17 + 88) = v43;
    sub_1D1741C08(v40, v44, &unk_1EC6442C0, &qword_1D1E741A0);
    LODWORD(v13) = (*(v16 + 48))(v44, 1, v15);
    v47 = v46;

    sub_1D1A28388(v41, v10, v42);
    sub_1D186145C(v11, v14);
    v18 = *(v0 + 368);
    if (v13 == 1)
    {
      sub_1D1741A30(*(v0 + 368), &unk_1EC6442C0, &qword_1D1E741A0);
    }

    else
    {
      sub_1D1E67E6C();
      (*(v16 + 8))(v18, v15);
    }

    if (*v45)
    {
      v19 = *(v17 + 24);
      v20 = *v45;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v21 = sub_1D1E67D4C();
      v23 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = swift_allocObject();
    *(v24 + 16) = &unk_1D1E92BF8;
    *(v24 + 24) = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860);
    v25 = v23 | v21;
    if (v23 | v21)
    {
      v25 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v21;
      *(v0 + 40) = v23;
    }

    v6 = v48 + 1;
    v7 = *(v0 + 376);
    *(v0 + 80) = 1;
    *(v0 + 88) = v25;
    *(v0 + 96) = v37;
    swift_task_create();

    sub_1D1741A30(v7, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  while (v39 != v48 + 1);
LABEL_20:
  v27 = *(v0 + 344);
  v28 = **(v0 + 120);
  *(v0 + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860);
  sub_1D1E67DBC();
  v29 = sub_1D1A28BA4(&qword_1EC6491B8, type metadata accessor for MatterSnapshotModerator);
  *(v0 + 392) = v29;
  *(v0 + 400) = v35;
  v30 = *(v0 + 168);
  v31 = *(MEMORY[0x1E69E8588] + 4);
  v32 = swift_task_alloc();
  *(v0 + 408) = v32;
  *v32 = v0;
  v32[1] = sub_1D1A25464;
  v33 = *(v0 + 344);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v2 = v30;
  v3 = v29;

  return MEMORY[0x1EEE6D8A8](v5, v2, v3, v4);
}

uint64_t sub_1D1A25464()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1A25574, v2, 0);
}

uint64_t sub_1D1A25574()
{
  v1 = v0[48];
  v2 = v0[40];
  v3 = (*(*(v1 - 8) + 48))(v2, 1, v1);
  v4 = v0[50];
  if (v3 == 1)
  {
    v6 = v0[46];
    v5 = v0[47];
    v8 = v0[44];
    v7 = v0[45];
    v9 = v0[39];
    v106 = v0[38];
    v108 = v0[37];
    v110 = v0[33];
    v112 = v0[32];
    v114 = v0[31];
    v116 = v0[27];
    v118 = v0[26];
    v119 = v0[25];
    v121 = v0[24];
    v10 = v0[14];
    (*(v0[42] + 8))(v0[43], v0[41]);
    *v10 = v4;

    v11 = v0[1];

    return v11();
  }

  v14 = v0[38];
  v13 = v0[39];
  v15 = v0[34];
  v16 = v0[35];
  v18 = v0[32];
  v17 = v0[33];
  v19 = *(v1 + 48);
  v117 = *(v16 + 32);
  v117(v13, v2, v15);
  sub_1D1A28448(v2 + v19, v17);
  v120 = *(v16 + 16);
  v120(v14, v13, v15);
  sub_1D1A28BEC(v17, v18, type metadata accessor for MatterStateSnapshot);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[13] = v4;
  v21 = sub_1D1742188(v14);
  v23 = *(v4 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
LABEL_42:
    v103 = v21;
    sub_1D173A304();
    v21 = v103;
    goto LABEL_12;
  }

  LOBYTE(v19) = v22;
  if (*(v0[50] + 24) >= v26)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

  v27 = v0[38];
  sub_1D172AA04(v26, isUniquelyReferenced_nonNull_native);
  v28 = v0[13];
  v21 = sub_1D1742188(v27);
  if ((v19 & 1) != (v29 & 1))
  {
    v30 = v0[34];

    return sub_1D1E690FC();
  }

LABEL_12:
  v31 = v0[13];
  v0[52] = v31;
  v32 = v0[38];
  v33 = v0[34];
  v34 = v0[35];
  v35 = v0[32];
  v36 = v0[29];
  v37 = (v34 + 8);
  if (v19)
  {
    v38 = *(v36 + 72);
    sub_1D1A28B40(v0[32], v31[7] + v38 * v21);
    v39 = *v37;
    (*v37)(v32, v33);
  }

  else
  {
    v31[(v21 >> 6) + 8] |= 1 << v21;
    v40 = v21;
    v120(v31[6] + *(v34 + 72) * v21, v32, v33);
    v38 = *(v36 + 72);
    sub_1D1A28448(v35, v31[7] + v38 * v40);
    v39 = *(v34 + 8);
    v41 = v39(v32, v33);
    v45 = v31[2];
    v25 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v25)
    {
      __break(1u);
      return MEMORY[0x1EEE6D8A8](v41, v42, v43, v44);
    }

    v31[2] = v46;
  }

  v0[53] = v39;
  if (*(v0[17] + 16) && (v47 = sub_1D1742188(v0[39]), (v48 & 1) != 0))
  {
    sub_1D1A28BEC(*(v0[17] + 56) + v47 * v38, v0[27], type metadata accessor for MatterStateSnapshot);
    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = v0[33];
  v51 = v0[28];
  v52 = v0[29];
  v54 = v0[26];
  v53 = v0[27];
  v56 = v0[23];
  v55 = v0[24];
  v57 = *(v52 + 56);
  v57(v53, v49, 1, v51);
  sub_1D1A28BEC(v50, v54, type metadata accessor for MatterStateSnapshot);
  v57(v54, 0, 1, v51);
  v58 = *(v56 + 48);
  sub_1D1741C08(v53, v55, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1741C08(v54, v55 + v58, &unk_1EC64F390, &qword_1D1E92B10);
  v59 = *(v52 + 48);
  v60 = v59(v55, 1, v51);
  v61 = v0[28];
  if (v60 == 1)
  {
    v62 = v0[27];
    sub_1D1741A30(v0[26], &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1741A30(v62, &unk_1EC64F390, &qword_1D1E92B10);
    if (v59(v55 + v58, 1, v61) == 1)
    {
      sub_1D1741A30(v0[24], &unk_1EC64F390, &qword_1D1E92B10);
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  sub_1D1741C08(v0[24], v0[25], &unk_1EC64F390, &qword_1D1E92B10);
  if (v59(v55 + v58, 1, v61) == 1)
  {
    v63 = v0[27];
    v64 = v0[25];
    sub_1D1741A30(v0[26], &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1741A30(v63, &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1A28C54(v64, type metadata accessor for MatterStateSnapshot);
LABEL_25:
    sub_1D1741A30(v0[24], &qword_1EC6491B0, &qword_1D1E92B08);
    goto LABEL_26;
  }

  v83 = v0[31];
  v85 = v0[26];
  v84 = v0[27];
  v87 = v0[24];
  v86 = v0[25];
  sub_1D1A28448(v55 + v58, v83);
  v88 = _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0(v86, v83);
  sub_1D1A28C54(v83, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v85, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1741A30(v84, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1A28C54(v86, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v87, &unk_1EC64F390, &qword_1D1E92B10);
  if (v88)
  {
LABEL_32:
    v89 = v0[53];
    v90 = v0[39];
    v91 = v0[34];
    v92 = v0[35] + 8;
    sub_1D1A28C54(v0[33], type metadata accessor for MatterStateSnapshot);
    v89(v90, v91);
    v0[50] = v0[52];
    v93 = v0[49];
    v94 = v0[21];
    v95 = *(MEMORY[0x1E69E8588] + 4);
    v96 = swift_task_alloc();
    v0[51] = v96;
    *v96 = v0;
    v96[1] = sub_1D1A25464;
    v97 = v0[43];
    v41 = v0[40];
    v44 = v0[41];
    v42 = v94;
    v43 = v93;

    return MEMORY[0x1EEE6D8A8](v41, v42, v43, v44);
  }

LABEL_26:
  v65 = v0[45];
  v111 = v65;
  v113 = v0[49];
  v115 = v0[44];
  v66 = v0[39];
  v67 = v0[37];
  v68 = v0[34];
  v105 = v0[35];
  v107 = v0[36];
  v69 = v0[33];
  v70 = v0[31];
  v109 = v0[30];
  v104 = v0[29];
  v71 = v0[21];
  v72 = sub_1D1E67E7C();
  v73 = *(v72 - 8);
  (*(v73 + 56))(v65, 1, 1, v72);
  v120(v67, v66, v68);
  sub_1D1A28BEC(v69, v70, type metadata accessor for MatterStateSnapshot);
  v74 = (*(v105 + 80) + 40) & ~*(v105 + 80);
  v75 = (v107 + *(v104 + 80) + v74) & ~*(v104 + 80);
  v76 = swift_allocObject();
  v76[2] = v71;
  v76[3] = v113;
  v76[4] = v71;
  v117(v76 + v74, v67, v68);
  sub_1D1A28448(v70, v76 + v75);
  sub_1D1741C08(v111, v115, &unk_1EC6442C0, &qword_1D1E741A0);
  LODWORD(v75) = (*(v73 + 48))(v115, 1, v72);
  swift_retain_n();

  v77 = v0[44];
  if (v75 == 1)
  {
    sub_1D1741A30(v0[44], &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v73 + 8))(v77, v72);
  }

  v79 = v76[2];
  v78 = v76[3];
  swift_unknownObjectRetain();

  if (v79)
  {
    swift_getObjectType();
    v80 = sub_1D1E67D4C();
    v82 = v81;
    swift_unknownObjectRelease();
  }

  else
  {
    v80 = 0;
    v82 = 0;
  }

  sub_1D1741A30(v0[45], &unk_1EC6442C0, &qword_1D1E741A0);
  v98 = swift_allocObject();
  *(v98 + 16) = &unk_1D1E92C10;
  *(v98 + 24) = v76;
  if (v82 | v80)
  {
    v0[6] = 0;
    v0[7] = 0;
    v0[8] = v80;
    v0[9] = v82;
  }

  v99 = MEMORY[0x1E69E7CA8];
  v100 = swift_task_create();
  v0[54] = v100;
  v101 = *(MEMORY[0x1E69E86C0] + 4);
  v102 = swift_task_alloc();
  v0[55] = v102;
  *v102 = v0;
  v102[1] = sub_1D1A26014;

  return MEMORY[0x1EEE6DA40](v102, v100, v99 + 8);
}

uint64_t sub_1D1A26014()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 168);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1A26140, v3, 0);
}

uint64_t sub_1D1A26140()
{
  v1 = v0[53];
  v2 = v0[39];
  v3 = v0[34];
  v4 = v0[35] + 8;
  sub_1D1A28C54(v0[33], type metadata accessor for MatterStateSnapshot);
  v1(v2, v3);
  v0[50] = v0[52];
  v5 = v0[49];
  v6 = v0[21];
  v7 = *(MEMORY[0x1E69E8588] + 4);
  v8 = swift_task_alloc();
  v0[51] = v8;
  *v8 = v0;
  v8[1] = sub_1D1A25464;
  v9 = v0[43];
  v10 = v0[40];
  v11 = v0[41];

  return MEMORY[0x1EEE6D8A8](v10, v6, v5, v11);
}

uint64_t sub_1D1A2623C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 177) = v21;
  *(v8 + 176) = a8;
  *(v8 + 48) = a7;
  *(v8 + 56) = v20;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491B0, &qword_1D1E92B08);
  *(v8 + 64) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v11 = type metadata accessor for MatterStateSnapshot();
  *(v8 + 80) = v11;
  v12 = *(v11 - 8);
  *(v8 + 88) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10) - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  v15 = sub_1D1E66A7C();
  *(v8 + 144) = v15;
  v16 = *(v15 - 8);
  *(v8 + 152) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A26424, 0, 0);
}

uint64_t sub_1D1A26424()
{
  v91 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 32);
  v3 = [*(v0 + 24) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v2 + 16) && (v4 = *(v0 + 32), v5 = sub_1D1742188(*(v0 + 168)), (v6 & 1) != 0))
  {
    sub_1D1A28BEC(*(*(v0 + 32) + 56) + *(*(v0 + 88) + 72) * v5, *(v0 + 136), type metadata accessor for MatterStateSnapshot);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
  v72 = *(v0 + 160);
  v73 = *(v0 + 104);
  v10 = *(v0 + 80);
  v70 = *(v0 + 88);
  v76 = *(v0 + 120);
  v79 = *(v0 + 72);
  v82 = *(v0 + 64);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 40);
  v14 = *(v0 + 24);
  v74 = v10;
  v75 = *(v70 + 56);
  v15 = *(v0 + 176);
  v16 = *(v0 + 177);
  v75(v9, v7, 1);
  v85 = sub_1D1A2725C(v14, v13, v11, v15);
  v71 = v8;
  sub_1D1741C08(v9, v8, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D186145C(v12, v16);
  v17 = sub_1D1A2B978(v8, v13, v11, v15, v14, v12, v16);
  v18 = [v14 matterControllerID];
  v19 = sub_1D1E6781C();
  v21 = v20;

  v22 = [v14 uniqueIdentifier];
  sub_1D1E66A5C();

  v88 = v12;
  LOBYTE(v89) = v16;
  sub_1D1A28CB8(v19, v21, v72, v17, &v88, v73);
  sub_1D1741A30(v71, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1A27A08(v85, v73);
  sub_1D1A28BEC(v73, v76, type metadata accessor for MatterStateSnapshot);
  (v75)(v76, 0, 1, v74);
  v23 = *(v82 + 48);
  sub_1D1741C08(v9, v79, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1741C08(v76, v79 + v23, &unk_1EC64F390, &qword_1D1E92B10);
  v24 = *(v70 + 48);
  if (v24(v79, 1, v74) == 1)
  {
    v25 = *(v0 + 80);
    sub_1D1741A30(*(v0 + 120), &unk_1EC64F390, &qword_1D1E92B10);
    if (v24(v79 + v23, 1, v25) == 1)
    {
      sub_1D1741A30(*(v0 + 72), &unk_1EC64F390, &qword_1D1E92B10);
      v26 = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v27 = *(v0 + 80);
  sub_1D1741C08(*(v0 + 72), *(v0 + 112), &unk_1EC64F390, &qword_1D1E92B10);
  v28 = v24(v79 + v23, 1, v27);
  v29 = *(v0 + 112);
  v30 = *(v0 + 120);
  if (v28 == 1)
  {
    sub_1D1741A30(*(v0 + 120), &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1A28C54(v29, type metadata accessor for MatterStateSnapshot);
LABEL_10:
    sub_1D1741A30(*(v0 + 72), &qword_1EC6491B0, &qword_1D1E92B08);
    v26 = 1;
    goto LABEL_12;
  }

  v31 = *(v0 + 96);
  v32 = *(v0 + 72);
  sub_1D1A28448(v79 + v23, v31);
  v33 = _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0(v29, v31);
  sub_1D1A28C54(v31, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v30, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1A28C54(v29, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v32, &unk_1EC64F390, &qword_1D1E92B10);
  v26 = !v33;
LABEL_12:
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 40);
  v34 = *(v0 + 48);
  v36 = *(v0 + 24);
  v37 = *(v0 + 176);
  v38 = sub_1D1E6709C();
  __swift_project_value_buffer(v38, qword_1EE07A0B0);
  v39 = v36;
  sub_1D1A28388(v35, v34, v37);
  v40 = sub_1D1E6707C();
  v41 = sub_1D1E6835C();

  sub_1D1A283E8(v35, v34, v37);
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 136);
  if (v42)
  {
    v83 = *(v0 + 136);
    v45 = *(v0 + 40);
    v44 = *(v0 + 48);
    v46 = *(v0 + 24);
    v77 = v26;
    v47 = *(v0 + 176);
    v48 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v87 = v80;
    *v48 = 136446722;
    v49 = [v46 matterControllerID];
    v50 = sub_1D1E6781C();
    v52 = v51;

    v53 = sub_1D1B1312C(v50, v52, &v87);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2082;
    v88 = v45;
    v89 = v44;
    v90 = v47;
    sub_1D1A28388(v45, v44, v47);
    updated = MatterStateSnapshot.UpdateType.description.getter();
    v56 = v55;
    sub_1D1A283E8(v88, v89, v90);
    v57 = sub_1D1B1312C(updated, v56, &v87);

    *(v48 + 14) = v57;
    *(v48 + 22) = 1026;
    *(v48 + 24) = v77;
    _os_log_impl(&dword_1D16EC000, v40, v41, "new matter snapshot for '%{public}s', updateType:%{public}s, didChange:%{BOOL,public}d", v48, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v80, -1, -1);
    MEMORY[0x1D3893640](v48, -1, -1);

    v58 = v83;
  }

  else
  {

    v58 = v43;
  }

  sub_1D1741A30(v58, &unk_1EC64F390, &qword_1D1E92B10);
  v59 = *(v0 + 160);
  v60 = *(v0 + 168);
  v61 = *(v0 + 144);
  v62 = *(v0 + 152);
  v64 = *(v0 + 128);
  v63 = *(v0 + 136);
  v78 = *(v0 + 120);
  v81 = *(v0 + 112);
  v65 = *(v0 + 104);
  v84 = *(v0 + 96);
  v86 = *(v0 + 72);
  v66 = *(v0 + 16);
  v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860) + 48);
  (*(v62 + 32))(v66, v60, v61);
  sub_1D1A28448(v65, v66 + v67);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1D1A26B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v9 = sub_1D1E66A7C();
  v6[9] = v9;
  v10 = *(v9 - 8);
  v6[10] = v10;
  v11 = *(v10 + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A26C94, a4, 0);
}

uint64_t sub_1D1A26C94()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[7];
  v4 = v0[5];
  (*(v0[10] + 16))(v1, v0[6], v0[9]);
  sub_1D1A28BEC(v3, v2, type metadata accessor for MatterStateSnapshot);
  v5 = type metadata accessor for MatterStateSnapshot();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  swift_beginAccess();
  sub_1D1B0E5E8(v2, v1);
  swift_endAccess();
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1D1A26DE4;
  v7 = v0[7];
  v8 = v0[5];

  return sub_1D1A22FC4(v7);
}

uint64_t sub_1D1A26DE4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 64);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D1A26F10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D1E6884C();

  v12 = 3829371;
  v13 = 0xE300000000000000;
  v4 = type metadata accessor for StaticMatterDevice();
  MEMORY[0x1D3890F70](*(a1 + v4[6]), *(a1 + v4[6] + 8));
  MEMORY[0x1D3890F70](0x3A65707974202CLL, 0xE700000000000000);
  static MatterDeviceType.primaryDeviceType(for:)(*(a1 + v4[8]), &v11);
  if (v11 == 28)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = sub_1D1E6789C();
    v5 = v7;
  }

  MEMORY[0x1D3890F70](v6, v5);

  MEMORY[0x1D3890F70](0xD000000000000011, 0x80000001D1EC3610);
  v11 = *(*(a1 + v4[14]) + 16);
  v8 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v8);

  result = MEMORY[0x1D3890F70](125, 0xE100000000000000);
  v10 = v13;
  *a2 = v12;
  a2[1] = v10;
  return result;
}

uint64_t sub_1D1A27088@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for MatterStateSnapshot();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = sub_1D1A2B978(v11, 0, 0, 4, a1, 0, 255);
  v14 = [a1 matterControllerID];
  v15 = sub_1D1E6781C();
  v17 = v16;

  v18 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v20 = 0;
  v21 = -1;
  sub_1D1A28CB8(v15, v17, v7, v13, &v20, a2);
  return sub_1D1741A30(v11, &unk_1EC64F390, &qword_1D1E92B10);
}

uint64_t sub_1D1A2725C(void *a1, void *a2, void *a3, int a4)
{
  v8 = sub_1D1E66A7C();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D1E66FDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v51 - v17;
  if (qword_1EE07A050 != -1)
  {
    swift_once();
  }

  v19 = sub_1D1E6701C();
  __swift_project_value_buffer(v19, qword_1EE07A058);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  v20 = a1;
  sub_1D1A28388(a2, a3, a4);
  v21 = sub_1D1E66FFC();
  v22 = sub_1D1E683EC();

  sub_1D1A283E8(a2, a3, a4);
  if (sub_1D1E6855C())
  {
    v23 = swift_slowAlloc();
    v54 = v21;
    v53 = v22;
    v24 = v23;
    v55 = swift_slowAlloc();
    v63 = v55;
    *v24 = 136315650;
    v25 = [v20 name];
    v26 = sub_1D1E6781C();
    v56 = v11;
    v27 = v26;
    v52 = a4;
    v28 = v16;
    v29 = v12;
    v31 = v30;

    v32 = sub_1D1B1312C(v27, v31, &v63);
    v12 = v29;
    v16 = v28;

    *(v24 + 4) = v32;
    *(v24 + 12) = 2082;
    v33 = [v20 uniqueIdentifier];
    v34 = v57;
    sub_1D1E66A5C();

    sub_1D1A28BA4(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v35 = v59;
    v36 = sub_1D1E68FAC();
    v38 = v37;
    (*(v58 + 8))(v34, v35);
    v39 = sub_1D1B1312C(v36, v38, &v63);

    *(v24 + 14) = v39;
    *(v24 + 22) = 2082;
    v11 = v56;
    v60 = a2;
    v61 = a3;
    v62 = v52;
    sub_1D1A28388(a2, a3, v52);
    updated = MatterStateSnapshot.UpdateType.description.getter();
    v42 = v41;
    sub_1D1A283E8(v60, v61, v62);
    v43 = sub_1D1B1312C(updated, v42, &v63);

    *(v24 + 24) = v43;
    v44 = sub_1D1E66FBC();
    v21 = v54;
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v54, v53, v44, "MatterSnapshot", "home: %s (%{public}s) updating %{public}s", v24, 0x20u);
    v45 = v55;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v45, -1, -1);
    MEMORY[0x1D3893640](v24, -1, -1);
  }

  (*(v12 + 16))(v16, v18, v11);
  v46 = sub_1D1E6705C();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = sub_1D1E6704C();
  (*(v12 + 8))(v18, v11);
  return v49;
}

uint64_t sub_1D1A276F8(uint64_t a1)
{
  v31 = a1;
  v1 = type metadata accessor for StaticMatterDevice();
  v30 = *(v1 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07B280 != -1)
  {
    goto LABEL_21;
  }

  while (byte_1EE07B288 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491E8, &qword_1D1E92C28);
    v5 = v31;
    v6 = sub_1D1E68BAC();
    v7 = v6;
    v8 = 0;
    v11 = *(v5 + 64);
    v10 = v5 + 64;
    v9 = v11;
    v12 = 1 << *(v10 - 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v9;
    v15 = (v12 + 63) >> 6;
    v16 = v6 + 64;
    if ((v13 & v9) != 0)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_12:
        v20 = v17 | (v8 << 6);
        v21 = *(*(v31 + 48) + 8 * v20);
        sub_1D1A28BEC(*(v31 + 56) + *(v30 + 72) * v20, v4, type metadata accessor for StaticMatterDevice);
        sub_1D1A26F10(v4, v32);
        sub_1D1A28C54(v4, type metadata accessor for StaticMatterDevice);
        *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(v7[6] + 8 * v20) = v21;
        v22 = (v7[7] + 16 * v20);
        v23 = v32[1];
        *v22 = v32[0];
        v22[1] = v23;
        v24 = v7[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          break;
        }

        v7[2] = v26;
        if (!v14)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v18 = v8;
      while (1)
      {
        v8 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v8 >= v15)
        {
          v28 = sub_1D1E6760C();

          return v28;
        }

        v19 = *(v10 + 8 * v8);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v14 = (v19 - 1) & v19;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  return sub_1D1E6762C();
}

uint64_t sub_1D1A27A08(uint64_t a1, unint64_t a2)
{
  v87 = a1;
  v3 = sub_1D1E6702C();
  v83 = *(v3 - 8);
  v4 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1D1E66FDC();
  v6 = *(v84 - 8);
  v7 = *(v6 + 8);
  MEMORY[0x1EEE9AC00](v84);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticMatterDevice();
  v86 = *(v10 - 8);
  v11 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for MatterStateSnapshot();
  v13 = *(*(v85 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v85);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v70 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v70 - v20;
  if (qword_1EE07A0A8 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v22 = sub_1D1E6709C();
    __swift_project_value_buffer(v22, qword_1EE07A0B0);
    sub_1D1A28BEC(a2, v21, type metadata accessor for MatterStateSnapshot);
    sub_1D1A28BEC(a2, v19, type metadata accessor for MatterStateSnapshot);
    v23 = sub_1D1E6707C();
    v24 = sub_1D1E6835C();
    if (!os_log_type_enabled(v23, v24))
    {

      sub_1D1A28C54(v21, type metadata accessor for MatterStateSnapshot);
      sub_1D1A28C54(v19, type metadata accessor for MatterStateSnapshot);
      goto LABEL_22;
    }

    v75 = v24;
    v81 = v3;
    v77 = v23;
    v78 = a2;
    v79 = v6;
    v25 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v90[0] = v74;
    *v25 = 136315394;
    v26 = v85;
    a2 = *(v85 + 20);
    sub_1D1E66A7C();
    sub_1D1A28BA4(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v27 = sub_1D1E68FAC();
    v29 = v28;
    sub_1D1A28C54(v21, type metadata accessor for MatterStateSnapshot);
    v30 = sub_1D1B1312C(v27, v29, v90);

    *(v25 + 4) = v30;
    v76 = v25;
    *(v25 + 12) = 2082;
    v21 = *&v19[*(v26 + 24)];
    if (qword_1EE07B280 != -1)
    {
      swift_once();
    }

    v3 = v81;
    if (byte_1EE07B288 != 1)
    {
      break;
    }

    v71 = v19;
    v72 = v16;
    v73 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491E8, &qword_1D1E92C28);
    v31 = sub_1D1E68BAC();
    v32 = v31;
    v9 = 0;
    v6 = v21 + 64;
    v33 = 1 << v21[32];
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v3 = v34 & *(v21 + 8);
    v19 = ((v33 + 63) >> 6);
    v80 = v31 + 64;
    v35 = v88;
    if (v3)
    {
      while (1)
      {
        v36 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
LABEL_15:
        a2 = v36 | (v9 << 6);
        v16 = *(*(v21 + 6) + 8 * a2);
        sub_1D1A28BEC(*(v21 + 7) + *(v86 + 72) * a2, v35, type metadata accessor for StaticMatterDevice);
        sub_1D1A26F10(v35, v89);
        sub_1D1A28C54(v35, type metadata accessor for StaticMatterDevice);
        *(v80 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
        *(v32[6] + 8 * a2) = v16;
        v39 = (v32[7] + 16 * a2);
        v40 = v89[1];
        *v39 = v89[0];
        v39[1] = v40;
        v41 = v32[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          break;
        }

        v32[2] = v43;
        v35 = v88;
        if (!v3)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v37 = v9;
      v3 = v81;
      while (1)
      {
        v9 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v9 >= v19)
        {
          v44 = sub_1D1E6760C();
          v46 = v47;

          v6 = v79;
          v16 = v72;
          v9 = v73;
          v19 = v71;
          goto LABEL_21;
        }

        v38 = *&v6[8 * v9];
        ++v37;
        if (v38)
        {
          v36 = __clz(__rbit64(v38));
          v3 = (v38 - 1) & v38;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v44 = sub_1D1E6762C();
  v46 = v45;
  v6 = v79;
LABEL_21:
  v48 = v77;
  sub_1D1A28C54(v19, type metadata accessor for MatterStateSnapshot);
  v49 = sub_1D1B1312C(v44, v46, v90);

  v50 = v76;
  *(v76 + 14) = v49;
  _os_log_impl(&dword_1D16EC000, v48, v75, "MatterSnapshotModerator: produced snapshot for home %s with devices: %{public}s", v50, 0x16u);
  v51 = v74;
  swift_arrayDestroy();
  MEMORY[0x1D3893640](v51, -1, -1);
  MEMORY[0x1D3893640](v50, -1, -1);

  a2 = v78;
LABEL_22:
  if (qword_1EE07A050 != -1)
  {
    swift_once();
  }

  v52 = sub_1D1E6701C();
  __swift_project_value_buffer(v52, qword_1EE07A058);
  sub_1D1A28BEC(a2, v16, type metadata accessor for MatterStateSnapshot);
  v53 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v54 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v55 = v9;

    v56 = v82;
    sub_1D1E6706C();

    v57 = v83;
    if ((*(v83 + 88))(v56, v3) == *MEMORY[0x1E69E93E8])
    {
      v58 = 0;
      v59 = 0;
      v60 = "[Error] Interval already ended";
    }

    else
    {
      (*(v57 + 8))(v56, v3);
      v60 = "produced devices %{public}s";
      v59 = 2;
      v58 = 1;
    }

    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v89[0] = v63;
    *v62 = v59;
    *(v62 + 1) = v58;
    *(v62 + 2) = 2082;
    v64 = v16;
    v65 = sub_1D1A276F8(*&v16[*(v85 + 24)]);
    v67 = v66;
    sub_1D1A28C54(v64, type metadata accessor for MatterStateSnapshot);
    v68 = sub_1D1B1312C(v65, v67, v89);

    *(v62 + 4) = v68;
    v69 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v53, v54, v69, "MatterSnapshot", v60, v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x1D3893640](v63, -1, -1);
    MEMORY[0x1D3893640](v62, -1, -1);

    return (*(v6 + 1))(v55, v84);
  }

  else
  {

    (*(v6 + 1))(v9, v84);
    return sub_1D1A28C54(v16, type metadata accessor for MatterStateSnapshot);
  }
}

id sub_1D1A28388(id result, void *a2, unsigned __int8 a3)
{
  if (a3 - 1 < 2)
  {

    result = a2;

    return result;
  }

  if (!a3)
  {

    return result;
  }

  return result;
}

void sub_1D1A283E8(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 - 1 < 2)
  {

    a1 = a2;

LABEL_4:

    return;
  }

  if (!a3)
  {

    goto LABEL_4;
  }
}

uint64_t sub_1D1A28448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterStateSnapshot();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MatterSnapshotModerator()
{
  result = qword_1EE07A5B8;
  if (!qword_1EE07A5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1A284F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v15 = *(v2 + 56);
  v9 = *(v2 + 64);
  v10 = *(v2 + 72);
  v11 = *(v2 + 80);
  v12 = *(v2 + 48);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1A24CBC(a1, a2, v5, v6, v7, v8, v12, v15);
}

void sub_1D1A28600()
{
  sub_1D1A2875C(319, &qword_1EE079DF8, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1D1A2875C(319, &qword_1EE079E08, MEMORY[0x1E69E8660]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D1A2875C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MatterStateSnapshot();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D1A287BC()
{
  result = qword_1EC6491C8;
  if (!qword_1EC6491C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6491A0, &unk_1D1E92AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6491C8);
  }

  return result;
}

uint64_t sub_1D1A28820(uint64_t a1)
{
  v16 = *(v1 + 16);
  v14 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D17C4BFC;

  return sub_1D1A2623C(a1, v16, v14, v4, v5, v6, v7, v11);
}

uint64_t sub_1D1A28928(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4BFC;

  return sub_1D1B2258C(a1, v5);
}

uint64_t sub_1D1A289E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D1E66A7C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MatterStateSnapshot() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1A26B94(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1D1A28B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterStateSnapshot();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1A28BA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1A28BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A28C54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A28CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v131 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v98 - v17;
  v118 = type metadata accessor for EndpointPath(0);
  v113 = *(v118 - 8);
  v18 = *(v113 + 64);
  v19 = MEMORY[0x1EEE9AC00](v118);
  v129 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v98 - v21;
  v116 = type metadata accessor for MatterTilePath(0);
  v22 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v130 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
  v24 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v115);
  v128 = (&v98 - v25);
  v109 = type metadata accessor for StaticMatterDevice();
  v108 = *(v109 - 8);
  v26 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v28 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *a5;
  v101 = *(a5 + 8);
  *a6 = a1;
  a6[1] = a2;
  v29 = type metadata accessor for MatterStateSnapshot();
  v30 = *(v13 + 16);
  v31 = a6 + *(v29 + 20);
  v103 = a3;
  v123 = v30;
  v124 = v13 + 16;
  v30(v31, a3, v12);
  v100 = v29;
  v32 = *(v29 + 24);
  v104 = a6;
  *(a6 + v32) = a4;

  v33 = sub_1D18D6954(MEMORY[0x1E69E7CC0]);
  v34 = a4 + 64;
  v35 = 1 << *(a4 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & *(a4 + 64);
  v38 = (v35 + 63) >> 6;
  v112 = v13;
  v132 = (v13 + 8);
  v110 = a4;
  v39 = v33;

  v40 = 0;
  v114 = xmmword_1D1E739C0;
  v106 = v34;
  v105 = v38;
  v119 = v12;
  v107 = v28;
LABEL_6:
  if (v37)
  {
    v41 = v40;
LABEL_11:
    v111 = (v37 - 1) & v37;
    sub_1D1A30E90(*(v110 + 56) + *(v108 + 72) * (__clz(__rbit64(v37)) | (v41 << 6)), v28, type metadata accessor for StaticMatterDevice);
    v42 = *&v28[*(v109 + 56)];
    v45 = *(v42 + 64);
    v44 = v42 + 64;
    v43 = v45;
    v46 = 1 << *(*&v28[*(v109 + 56)] + 32);
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & v43;
    v49 = (v46 + 63) >> 6;
    v122 = *&v28[*(v109 + 56)];
    swift_bridgeObjectRetain_n();
    v50 = 0;
    v120 = v49;
    for (i = v44; ; v44 = i)
    {
      if (!v48)
      {
        while (1)
        {
          v51 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            break;
          }

          if (v51 >= v49)
          {

            v28 = v107;
            sub_1D1A30EF8(v107, type metadata accessor for StaticMatterDevice);

            v40 = v41;
            v34 = v106;
            v38 = v105;
            v37 = v111;
            goto LABEL_6;
          }

          v48 = *(v44 + 8 * v51);
          ++v50;
          if (v48)
          {
            v127 = v39;
            v50 = v51;
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

      v127 = v39;
LABEL_23:
      v52 = __clz(__rbit64(v48)) | (v50 << 6);
      v53 = *(v122 + 56);
      v54 = *(*(v122 + 48) + 2 * v52);
      v55 = (type metadata accessor for StaticEndpoint() - 8);
      v56 = v128;
      v57 = v128 + *(v115 + 48);
      sub_1D1A30E90(v53 + *(*v55 + 72) * v52, v57, type metadata accessor for StaticEndpoint);
      *v56 = v54;
      v125 = v55[7];
      v126 = v57;
      v58 = v117;
      sub_1D1A30E90(v57 + v125, v117, type metadata accessor for EndpointPath);
      v59 = v130;
      v60 = v123;
      v123(v130, v58, v12);
      v61 = *(v58 + *(v118 + 20));
      v62 = *(v58 + *(v118 + 24));
      sub_1D1A30EF8(v58, type metadata accessor for EndpointPath);
      v63 = v59 + *(v116 + 24);
      *(v59 + *(v116 + 20)) = v61;
      *v63 = v62;
      *(v63 + 2) = 0;
      v60(v131, v59, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434A8, &qword_1D1E8EC00);
      v64 = swift_allocObject();
      *(v64 + 16) = v114;
      v134 = v61;
      *(v64 + 32) = sub_1D1E68FAC();
      *(v64 + 40) = v65;
      LOWORD(v134) = v62;
      v66 = sub_1D1E68FAC();
      v69 = *(v64 + 16);
      v68 = *(v64 + 24);
      if (v69 >= v68 >> 1)
      {
        v99 = v66;
        v91 = v67;
        v92 = sub_1D177CF00((v68 > 1), v69 + 1, 1, v64);
        v67 = v91;
        v64 = v92;
        v66 = v99;
      }

      *(v64 + 16) = v69 + 1;
      v70 = v64 + 16 * v69;
      *(v70 + 32) = v66;
      *(v70 + 40) = v67;
      v71 = objc_opt_self();
      v72 = v131;
      v73 = sub_1D1E66A2C();
      v74 = sub_1D1E67BFC();

      v75 = [v71 hmf:v73 UUIDWithNamespace:0 data:v74 salts:?];

      v76 = v133;
      sub_1D1E66A5C();

      v77 = *v132;
      v12 = v119;
      (*v132)(v72, v119);
      sub_1D1A30EF8(v130, type metadata accessor for MatterTilePath);
      sub_1D1A30E90(v126 + v125, v129, type metadata accessor for EndpointPath);
      v78 = v127;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v134 = v78;
      v80 = sub_1D1742188(v76);
      v82 = v78[2];
      v83 = (v81 & 1) == 0;
      v84 = __OFADD__(v82, v83);
      v85 = v82 + v83;
      if (v84)
      {
        goto LABEL_38;
      }

      v86 = v81;
      if (v78[3] < v85)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_30;
      }

      v93 = v80;
      sub_1D173B260();
      v80 = v93;
      v39 = v134;
      if (v86)
      {
LABEL_15:
        sub_1D1A32128(v129, v39[7] + *(v113 + 72) * v80, type metadata accessor for EndpointPath);
        goto LABEL_16;
      }

LABEL_31:
      v39[(v80 >> 6) + 8] |= 1 << v80;
      v88 = v80;
      v123((v39[6] + *(v112 + 72) * v80), v133, v12);
      sub_1D1A320C0(v129, v39[7] + *(v113 + 72) * v88, type metadata accessor for EndpointPath);
      v89 = v39[2];
      v84 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v84)
      {
        goto LABEL_39;
      }

      v39[2] = v90;
LABEL_16:
      v48 &= v48 - 1;
      v77(v133, v12);
      sub_1D1741A30(v128, &qword_1EC6448D0, &qword_1D1E76600);
      v49 = v120;
    }

    sub_1D172C524(v85, isUniquelyReferenced_nonNull_native);
    v80 = sub_1D1742188(v133);
    if ((v86 & 1) != (v87 & 1))
    {
      goto LABEL_40;
    }

LABEL_30:
    v39 = v134;
    if (v86)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v38)
    {
      (*v132)(v103, v12);

      v95 = v100;
      v96 = v104;
      *(v104 + *(v100 + 28)) = v39;
      v97 = v96 + *(v95 + 32);
      *v97 = v102;
      *(v97 + 8) = v101;
      return result;
    }

    v37 = *(v34 + 8 * v41);
    ++v40;
    if (v37)
    {
      goto LABEL_11;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t MatterStateSnapshot.controllerID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MatterStateSnapshot.homeID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MatterStateSnapshot() + 20);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MatterStateSnapshot.staticDevices.getter()
{
  v1 = *(v0 + *(type metadata accessor for MatterStateSnapshot() + 24));
}

uint64_t MatterStateSnapshot.endpointPathsDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for MatterStateSnapshot() + 28));
}

uint64_t MatterStateSnapshot.endpointPathsDictionary.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MatterStateSnapshot() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MatterStateSnapshot.filter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MatterStateSnapshot() + 32);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_1D186145C(v4, v5);
}

uint64_t sub_1D1A298AC()
{
  v1 = *v0;
  v2 = 0x6C6C6F72746E6F63;
  v3 = 0x6544636974617473;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0x7265746C6966;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449656D6F68;
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

uint64_t sub_1D1A29958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1A31D14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1A29980(uint64_t a1)
{
  v2 = sub_1D1A2FFBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A299BC(uint64_t a1)
{
  v2 = sub_1D1A2FFBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterStateSnapshot.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491F0, &qword_1D1E92C40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A2FFBC();
  sub_1D1E6930C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  sub_1D1E68ECC();
  if (!v2)
  {
    v13 = type metadata accessor for MatterStateSnapshot();
    v14 = v13[5];
    LOBYTE(v18) = 1;
    sub_1D1E66A7C();
    sub_1D1A3124C(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1E68F1C();
    v18 = *(v3 + v13[6]);
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649200, &qword_1D1E92C48);
    sub_1D1A30010();
    sub_1D1E68F1C();
    v18 = *(v3 + v13[7]);
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649218, &qword_1D1E92C50);
    sub_1D1A300CC();
    sub_1D1E68F1C();
    v15 = v3 + v13[8];
    v16 = v15[8];
    v18 = *v15;
    v19 = v16;
    v20 = 4;
    sub_1D186145C(v18, v16);
    sub_1D1A301B8();
    sub_1D1E68E5C();
    sub_1D1861470(v18, v19);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MatterStateSnapshot.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_1D1E678EC();
  v6 = type metadata accessor for MatterStateSnapshot();
  v7 = v6[5];
  sub_1D1E66A7C();
  sub_1D1A3124C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  sub_1D185A4EC(a1, *(v2 + v6[6]));
  sub_1D185893C(a1, *(v2 + v6[7]));
  v8 = v2 + v6[8];
  v9 = v8[8];
  if (v9 == 255)
  {
    return sub_1D1E6922C();
  }

  v11 = *v8;
  sub_1D1E6922C();
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      MEMORY[0x1D3892850](2);

      sub_1D176DB8C(a1, v11);
      v12 = v11;
      v13 = 2;
    }

    else
    {
      MEMORY[0x1D3892850](3);
      v12 = v11;
      v13 = 3;
    }
  }

  else if (v9)
  {
    MEMORY[0x1D3892850](1);

    sub_1D176DCC0(a1, v11);
    v12 = v11;
    v13 = 1;
  }

  else
  {
    MEMORY[0x1D3892850](0);

    sub_1D176D4E8(a1, v11);
    v12 = v11;
    v13 = 0;
  }

  return sub_1D1861470(v12, v13);
}

uint64_t MatterStateSnapshot.hashValue.getter()
{
  sub_1D1E6920C();
  MatterStateSnapshot.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t MatterStateSnapshot.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = sub_1D1E66A7C();
  v25 = *(v23 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649230, &qword_1D1E92C58);
  v24 = *(v26 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v22 - v7;
  v9 = type metadata accessor for MatterStateSnapshot();
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A2FFBC();
  v14 = v27;
  sub_1D1E692FC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v12;
  v16 = v25;
  v17 = v23;
  LOBYTE(v28) = 0;
  *v15 = sub_1D1E68D2C();
  v15[1] = v18;
  v27 = v18;
  LOBYTE(v28) = 1;
  sub_1D1A3124C(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  sub_1D1E68D7C();
  (*(v16 + 32))(v15 + v9[5], v5, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649200, &qword_1D1E92C48);
  v30 = 2;
  sub_1D1A3020C();
  sub_1D1E68D7C();
  *(v15 + v9[6]) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649218, &qword_1D1E92C50);
  v30 = 3;
  sub_1D1A302C8();
  sub_1D1E68D7C();
  *(v15 + v9[7]) = v28;
  v30 = 4;
  sub_1D1A303B4();
  sub_1D1E68CBC();
  (*(v24 + 8))(v8, v26);
  v19 = v29;
  v20 = v15 + v9[8];
  *v20 = v28;
  v20[8] = v19;
  sub_1D1A30E90(v15, v22, type metadata accessor for MatterStateSnapshot);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1A30EF8(v15, type metadata accessor for MatterStateSnapshot);
}

uint64_t sub_1D1A2A408()
{
  sub_1D1E6920C();
  MatterStateSnapshot.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A2A44C()
{
  sub_1D1E6920C();
  MatterStateSnapshot.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t MatterStateSnapshot.UpdateType.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 1)
  {
    if (*(v0 + 16))
    {
      sub_1D1E6884C();

      v18 = 0x2873656369766564;
      v13 = sub_1D1E6817C();
      MEMORY[0x1D3890F70](v13);

      MEMORY[0x1D3890F70](0x206E69202CLL, 0xE500000000000000);
      v6 = [v1 name];
    }

    else
    {
      v18 = 0x28656D6F68;
      v6 = [v2 name];
    }

    v14 = v6;
    v15 = sub_1D1E6781C();
    v17 = v16;

    MEMORY[0x1D3890F70](v15, v17);
LABEL_17:

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return v18;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      return 7105633;
    }

    sub_1D1E6884C();

    v18 = 0xD000000000000019;
    if (v2)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x1D3890F70](v4, v5);
    goto LABEL_17;
  }

  sub_1D1E6884C();

  v18 = 0xD000000000000011;
  v7 = sub_1D1E6817C();
  MEMORY[0x1D3890F70](v7);

  MEMORY[0x1D3890F70](0x206E69202CLL, 0xE500000000000000);
  v8 = [v1 name];
  v9 = sub_1D1E6781C();
  v11 = v10;

  MEMORY[0x1D3890F70](v9, v11);

  return v18;
}

const char *MatterStateSnapshot.UpdateType.metricsID.getter()
{
  v1 = *(v0 + 16);
  v2 = "MatterStateSnapshot.all";
  if (v1 == 3)
  {
    v2 = "MatterStateSnapshot.snapshotStreamDisabled";
  }

  if (v1 == 2)
  {
    v2 = "MatterStateSnapshot.devicesWithReads";
  }

  v3 = "MatterStateSnapshot.home";
  if (*(v0 + 16))
  {
    v3 = "MatterStateSnapshot.devices";
  }

  if (*(v0 + 16) <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D1A2A7C8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 <= 1)
  {
    if (!*(v0 + 16))
    {
      v4 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1D1E73FA0;
      *(v5 + 32) = v4;
      v6 = v4;
      return v5;
    }

    goto LABEL_7;
  }

  if (v2 == 2)
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D1E73FA0;
    *(v7 + 32) = v1;
    v8 = v1;
    return v7;
  }

  if (v2 == 3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
  }
}

uint64_t sub_1D1A2A8B0(uint64_t a1, int64_t a2, void *a3, void *a4)
{
  v167 = a4;
  v166 = type metadata accessor for MatterTilePath(0);
  v8 = *(*(v166 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v166);
  v11 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v149 - v12;
  v14 = sub_1D1E66A7C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v168 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v149 - v21;
  v23 = *v4;
  if (*(v4 + 8) > 1u)
  {
    if (*(v4 + 8) != 2)
    {
      return 0;
    }

    v41 = *v4;
    ObjectType = swift_getObjectType();
    MatterDevice.primaryDeviceType.getter(a2, &v169);
    v43 = v169;
    if (v169 == 28)
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v44 = sub_1D1E6709C();
      __swift_project_value_buffer(v44, qword_1EE07A0B0);
      swift_unknownObjectRetain();
      v45 = a3;
      v46 = sub_1D1E6707C();
      v47 = sub_1D1E6831C();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v169 = v49;
        *v48 = 134218242;
        *(v48 + 4) = (*(a2 + 8))(ObjectType, a2);
        swift_unknownObjectRelease();
        *(v48 + 12) = 2080;
        v50 = [v45 name];
        v51 = sub_1D1E6781C();
        v53 = v52;

        v54 = sub_1D1B1312C(v51, v53, &v169);

        *(v48 + 14) = v54;
        _os_log_impl(&dword_1D16EC000, v46, v47, "Skipping device %llu (named %s) because there is a device type filter but device doesn't have a primary type", v48, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v49);
        v55 = v49;
LABEL_38:
        MEMORY[0x1D3893640](v55, -1, -1);
        MEMORY[0x1D3893640](v48, -1, -1);

        return 0;
      }

      goto LABEL_42;
    }

    if (!sub_1D1719A64(v169, v41))
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v117 = sub_1D1E6709C();
      __swift_project_value_buffer(v117, qword_1EE07A0B0);
      swift_unknownObjectRetain();
      v118 = a3;

      v119 = sub_1D1E6707C();
      v120 = sub_1D1E6831C();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v123 = a2;
        v124 = v122;
        v175[0] = v122;
        *v121 = 134218754;
        *(v121 + 4) = (*(v123 + 8))(ObjectType);
        swift_unknownObjectRelease();
        *(v121 + 12) = 2080;
        v125 = [v118 name];
        v126 = sub_1D1E6781C();
        v128 = v127;

        v129 = sub_1D1B1312C(v126, v128, v175);

        *(v121 + 14) = v129;
        *(v121 + 22) = 2080;
        v169 = v41;
        LOBYTE(v170) = 2;
        v130 = MatterStateSnapshot.Filter.description.getter();
        v132 = sub_1D1B1312C(v130, v131, v175);

        *(v121 + 24) = v132;
        *(v121 + 32) = 2080;
        LOBYTE(v169) = v43;
        v133 = sub_1D1E6789C();
        v135 = sub_1D1B1312C(v133, v134, v175);

        *(v121 + 34) = v135;
        _os_log_impl(&dword_1D16EC000, v119, v120, "Skipping device %llu (named %s) because filter is %s which doesn't contain device type %s", v121, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v124, -1, -1);
        MEMORY[0x1D3893640](v121, -1, -1);

        return 0;
      }

LABEL_48:
      swift_unknownObjectRelease();
      return 0;
    }

    return 1;
  }

  if (*(v4 + 8))
  {
    v56 = swift_getObjectType();
    v57 = a2;
    v58 = *(a2 + 8);
    v59 = v57;
    v60 = v58();
    if (!sub_1D17199BC(v60, v23))
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v61 = sub_1D1E6709C();
      __swift_project_value_buffer(v61, qword_1EE07A0B0);
      swift_unknownObjectRetain();
      v62 = a3;

      v46 = sub_1D1E6707C();
      v63 = sub_1D1E6831C();

      if (os_log_type_enabled(v46, v63))
      {
        v48 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v175[0] = v168;
        *v48 = 134218498;
        LODWORD(v167) = v63;
        *(v48 + 4) = (v58)(v56, v59);
        swift_unknownObjectRelease();
        *(v48 + 12) = 2080;
        v64 = [v62 name];
        v65 = sub_1D1E6781C();
        v67 = v66;

        v68 = sub_1D1B1312C(v65, v67, v175);

        *(v48 + 14) = v68;
        *(v48 + 22) = 2080;
        v169 = v23;
        LOBYTE(v170) = 1;
        v69 = MatterStateSnapshot.Filter.description.getter();
        v71 = sub_1D1B1312C(v69, v70, v175);

        *(v48 + 24) = v71;
        _os_log_impl(&dword_1D16EC000, v46, v167, "Skipping device %llu (named %s) because filter is %s", v48, 0x20u);
        v72 = v168;
        swift_arrayDestroy();
        v55 = v72;
        goto LABEL_38;
      }

LABEL_42:

      goto LABEL_48;
    }

    return 1;
  }

  v162 = v20;
  v24 = [v167 uniqueIdentifier];
  sub_1D1E66A5C();

  v25 = swift_getObjectType();
  v26 = *(a2 + 8);
  v163 = v25;
  v164 = v26;
  v165 = a2 + 8;
  v27 = v26(v25, a2);
  v28 = &v13[*(v166 + 24)];
  *&v13[*(v166 + 20)] = v27;
  *v28 = 1;
  v28[2] = 0;
  MatterTilePath.uuid.getter();
  sub_1D1A30EF8(v13, type metadata accessor for MatterTilePath);
  LOBYTE(v24) = sub_1D1719534(v22, v23);
  v160 = *(v15 + 8);
  v161 = v15 + 8;
  v160(v22, v14);
  if (v24)
  {
    if (qword_1EE07A0A8 != -1)
    {
LABEL_56:
      swift_once();
    }

    v29 = sub_1D1E6709C();
    __swift_project_value_buffer(v29, qword_1EE07A0B0);
    swift_unknownObjectRetain();
    v30 = a3;
    v31 = sub_1D1E6707C();
    v32 = sub_1D1E6831C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v169 = v34;
      *v33 = 134218242;
      *(v33 + 4) = v164(v163, a2);
      swift_unknownObjectRelease();
      *(v33 + 12) = 2080;
      v35 = [v30 name];
      v36 = sub_1D1E6781C();
      v38 = v37;

      v39 = sub_1D1B1312C(v36, v38, &v169);

      *(v33 + 14) = v39;
      _os_log_impl(&dword_1D16EC000, v31, v32, "Endpoint ID filter passed for device %llu (named %s) in fast path", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1D3893640](v34, -1, -1);
      MEMORY[0x1D3893640](v33, -1, -1);

      return 1;
    }
  }

  else
  {
    v151 = a3;
    v156 = v23;
    v73 = qword_1EC642248;
    swift_unknownObjectRetain();
    if (v73 != -1)
    {
      swift_once();
    }

    v169 = qword_1EC6BE118;
    v170 = unk_1EC6BE120;
    v171 = 0;
    v172 = 0;
    v173 = a1;
    v174 = a2;
    v157 = a2;

    v74 = DescriptorClusterDecoder.endpointIDs.getter();
    v158 = a1;
    swift_unknownObjectRelease();

    v75 = 0;
    a3 = v74 + 56;
    v76 = *(v74 + 7);
    v159 = v74;
    v77 = 1 << v74[32];
    v78 = -1;
    if (v77 < 64)
    {
      v78 = ~(-1 << v77);
    }

    v79 = v78 & v76;
    a2 = (v77 + 63) >> 6;
    v154 = (v15 + 16);
    v153 = xmmword_1D1E739C0;
    v155 = v14;
    do
    {
      if (!v79)
      {
        while (1)
        {
          v80 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            __break(1u);
            goto LABEL_56;
          }

          if (v80 >= a2)
          {
            break;
          }

          v79 = *(a3 + v80);
          ++v75;
          if (v79)
          {
            v75 = v80;
            goto LABEL_28;
          }
        }

        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v102 = sub_1D1E6709C();
        __swift_project_value_buffer(v102, qword_1EE07A0B0);
        swift_unknownObjectRetain();
        v103 = v151;
        v104 = v156;

        v46 = sub_1D1E6707C();
        v105 = sub_1D1E6831C();

        v106 = os_log_type_enabled(v46, v105);
        v107 = v157;
        if (v106)
        {
          v48 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v175[0] = v108;
          *v48 = 134218498;
          *(v48 + 4) = v164(v163, v107);
          swift_unknownObjectRelease();
          *(v48 + 12) = 2080;
          v109 = [v103 name];
          v110 = sub_1D1E6781C();
          v112 = v111;

          v113 = sub_1D1B1312C(v110, v112, v175);

          *(v48 + 14) = v113;
          *(v48 + 22) = 2080;
          v169 = v104;
          LOBYTE(v170) = 0;
          v114 = MatterStateSnapshot.Filter.description.getter();
          v116 = sub_1D1B1312C(v114, v115, v175);

          *(v48 + 24) = v116;
          _os_log_impl(&dword_1D16EC000, v46, v105, "Skipping device %llu (named %s) because filter is %s", v48, 0x20u);
          swift_arrayDestroy();
          v55 = v108;
          goto LABEL_38;
        }

        goto LABEL_42;
      }

LABEL_28:
      v81 = *(*(v159 + 6) + ((v75 << 7) | (2 * __clz(__rbit64(v79)))));
      v82 = [v167 uniqueIdentifier];
      sub_1D1E66A5C();

      v83 = v164(v163, v157);
      v84 = &v11[*(v166 + 24)];
      *&v11[*(v166 + 20)] = v83;
      *v84 = v81;
      v84[2] = 0;
      (*v154)(v168, v11, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434A8, &qword_1D1E8EC00);
      v85 = swift_allocObject();
      *(v85 + 16) = v153;
      v169 = v83;
      *(v85 + 32) = sub_1D1E68FAC();
      *(v85 + 40) = v86;
      v152 = v81;
      LOWORD(v169) = v81;
      v87 = sub_1D1E68FAC();
      v90 = *(v85 + 16);
      v89 = *(v85 + 24);
      if (v90 >= v89 >> 1)
      {
        v150 = v87;
        v100 = v88;
        v101 = sub_1D177CF00((v89 > 1), v90 + 1, 1, v85);
        v88 = v100;
        v85 = v101;
        v87 = v150;
      }

      v79 &= v79 - 1;
      *(v85 + 16) = v90 + 1;
      v91 = v85 + 16 * v90;
      *(v91 + 32) = v87;
      *(v91 + 40) = v88;
      v92 = objc_opt_self();
      v93 = v168;
      v94 = sub_1D1E66A2C();
      v95 = sub_1D1E67BFC();

      v96 = [v92 hmf:v94 UUIDWithNamespace:0 data:v95 salts:?];

      v97 = v162;
      sub_1D1E66A5C();

      v98 = v93;
      v14 = v155;
      v99 = v160;
      v160(v98, v155);
      sub_1D1A30EF8(v11, type metadata accessor for MatterTilePath);
      LOBYTE(v94) = sub_1D1719534(v97, v156);
      v99(v97, v14);
    }

    while ((v94 & 1) == 0);
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v136 = sub_1D1E6709C();
    __swift_project_value_buffer(v136, qword_1EE07A0B0);
    swift_unknownObjectRetain();
    v137 = v151;
    v138 = sub_1D1E6707C();
    v139 = sub_1D1E6831C();

    v140 = os_log_type_enabled(v138, v139);
    v141 = v157;
    if (v140)
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v169 = v143;
      *v142 = 134218498;
      *(v142 + 4) = v164(v163, v141);
      swift_unknownObjectRelease();
      *(v142 + 12) = 2080;
      v144 = [v137 name];
      v145 = sub_1D1E6781C();
      v147 = v146;

      v148 = sub_1D1B1312C(v145, v147, &v169);

      *(v142 + 14) = v148;
      *(v142 + 22) = 512;
      *(v142 + 24) = v152;
      _os_log_impl(&dword_1D16EC000, v138, v139, "Endpoint ID filter passed for device %llu (named %s) for endpoint %hu", v142, 0x1Au);
      __swift_destroy_boxed_opaque_existential_1(v143);
      MEMORY[0x1D3893640](v143, -1, -1);
      MEMORY[0x1D3893640](v142, -1, -1);

      return 1;
    }
  }

  swift_unknownObjectRelease();
  return 1;
}

unint64_t sub_1D1A2B978(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, uint64_t a6, int a7)
{
  LODWORD(v7) = a7;
  v73 = a6;
  v74 = a5;
  LODWORD(v8) = a4;
  *&v71 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v69 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v67 - v19;
  v21 = type metadata accessor for MatterStateSnapshot();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v67 - v27;
  v72 = a1;
  sub_1D1A32050(a1, v20);
  v29 = *(v22 + 48);
  if (v29(v20, 1, v21) == 1)
  {
    sub_1D1741A30(v20, &unk_1EC64F390, &qword_1D1E92B10);
  }

  else
  {
    sub_1D1A320C0(v20, v28, type metadata accessor for MatterStateSnapshot);
    if (v8 == 1)
    {
      v75 = v73;
      LOBYTE(v76) = v7;
      LODWORD(v68) = v8;
      v8 = a3;
      v30 = v71;

      v31 = v8;
      v70 = v7;
      v7 = v31;
      v32 = sub_1D1A307D8(v74, v28, v30, v31, &v75);
      a3 = v8;
      LOBYTE(v8) = v68;

      LODWORD(v7) = v70;
      sub_1D1A30EF8(v28, type metadata accessor for MatterStateSnapshot);
      if (v32)
      {
        return v32;
      }
    }

    else
    {
      sub_1D1A30EF8(v28, type metadata accessor for MatterStateSnapshot);
    }
  }

  sub_1D1A32050(v72, v18);
  if (v29(v18, 1, v21) == 1)
  {
    sub_1D1741A30(v18, &unk_1EC64F390, &qword_1D1E92B10);
  }

  else
  {
    sub_1D1A320C0(v18, v26, type metadata accessor for MatterStateSnapshot);
    if (v8 == 2)
    {
      v75 = v73;
      LOBYTE(v76) = v7;
      v33 = a3;
      v34 = v71;

      v35 = v33;
      v32 = sub_1D1A307D8(v74, v26, v34, v35, &v75);

      sub_1D1A30EF8(v26, type metadata accessor for MatterStateSnapshot);
      if (v32)
      {
        return v32;
      }
    }

    else
    {
      sub_1D1A30EF8(v26, type metadata accessor for MatterStateSnapshot);
    }
  }

  v36 = HMHome.matterAccessories.getter();
  v32 = sub_1D18D677C(MEMORY[0x1E69E7CC0]);
  v77 = v32;
  if (v36 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v70 = v7;
    v39 = 0;
    v7 = (v36 & 0xC000000000000001);
    *&v37 = 134218242;
    v71 = v37;
    while (1)
    {
      if (v7)
      {
        v40 = MEMORY[0x1D3891EF0](v39, v36);
      }

      else
      {
        if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v40 = *(v36 + 8 * v39 + 32);
      }

      v41 = v40;
      v32 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (_s13HomeDataModel19MatterStateSnapshotV17allowSnapshotting9accessorySbSo11HMAccessoryC_tFZ_0(v40))
      {
        v42 = sub_1D1E682DC();
        if ((v43 & 1) == 0)
        {
          v44 = v42;
          v45 = sub_1D1E682DC();
          if ((v46 & 1) == 0)
          {
            if (v45)
            {
              v72 = v45;
              v47 = HMAccessory.matterDevice.getter();
              if (!v47)
              {
                if (qword_1EE07A0A8 != -1)
                {
                  swift_once();
                }

                v56 = sub_1D1E6709C();
                __swift_project_value_buffer(v56, qword_1EE07A0B0);
                v57 = v41;
                v58 = sub_1D1E6707C();
                v59 = sub_1D1E6835C();

                if (os_log_type_enabled(v58, v59))
                {
                  v60 = swift_slowAlloc();
                  v61 = swift_slowAlloc();
                  v68 = v58;
                  v62 = v61;
                  *v60 = v71;
                  *(v60 + 4) = v72;
                  *(v60 + 12) = 2112;
                  *(v60 + 14) = v57;
                  *v61 = v57;
                  v63 = v57;
                  v64 = v59;
                  v65 = v68;
                  _os_log_impl(&dword_1D16EC000, v68, v64, "HMAccessory had a matter node ID (%llu) but didn't return a device: (%@)", v60, 0x16u);
                  sub_1D1741A30(v62, &unk_1EC644000, &unk_1D1E75B00);
                  MEMORY[0x1D3893640](v62, -1, -1);
                  MEMORY[0x1D3893640](v60, -1, -1);
                }

                else
                {
                }

                goto LABEL_29;
              }

              v49 = v47;
              v72 = v48;
              if (!*(v77 + 16) || (sub_1D17420B0(v44), (v50 & 1) == 0))
              {
                if (v70 == 0xFF || (v75 = v73, LOBYTE(v76) = v70, , v51 = sub_1D1A2A8B0(v49, v72, v41, v74), , (v51 & 1) != 0))
                {
                  ObjectType = swift_getObjectType();
                  MatterDevice.readAllSupportedAttributes()(ObjectType, v72);
                  v53 = v41;
                  v68 = v53;
                  v54 = swift_unknownObjectRetain();
                  v55 = v69;
                  StaticMatterDevice.init(device:valueSource:accessory:)(v54, v72, &v75, v53, v69);
                  sub_1D1B0E394(v55, v44);
                  swift_unknownObjectRelease();
                }

                else
                {

                  swift_unknownObjectRelease();
                }

                goto LABEL_29;
              }

              swift_unknownObjectRelease();
            }
          }
        }
      }

LABEL_29:
      ++v39;
      if (v32 == i)
      {
        v32 = v77;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

LABEL_41:

  return v32;
}

void MatterStateSnapshot.tileInfo(for:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v84 = a2;
  v4 = type metadata accessor for MatterTilePath(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v74 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v74 - v18;
  v80 = type metadata accessor for StaticEndpoint();
  v83 = *(v80 - 8);
  v19 = *(v83 + 64);
  v20 = MEMORY[0x1EEE9AC00](v80);
  v77 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v74 - v22;
  v82 = type metadata accessor for StaticMatterDevice();
  v23 = *(v82 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v82);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v74 - v28;
  v30 = *(v2 + *(type metadata accessor for MatterStateSnapshot() + 24));
  if (*(v30 + 16))
  {
    v31 = sub_1D17420B0(*(a1 + *(v4 + 20)));
    if (v32)
    {
      sub_1D1A30E90(*(v30 + 56) + *(v23 + 72) * v31, v27, type metadata accessor for StaticMatterDevice);
      sub_1D1A320C0(v27, v29, type metadata accessor for StaticMatterDevice);
      v33 = (a1 + *(v4 + 24));
      if ((v33[1] & 1) == 0)
      {
        v76 = *v33;
        v8 = *&v29[*(v82 + 56)];
        v34 = 1 << v8[32];
        v35 = -1;
        if (v34 < 64)
        {
          v35 = ~(-1 << v34);
        }

        v36 = v35 & *(v8 + 8);
        v37 = (v34 + 63) >> 6;
        v38 = *&v29[*(v82 + 56)];

        v39 = 0;
        v75 = v29;
        if (v36)
        {
          while (1)
          {
            v40 = v39;
LABEL_11:
            v41 = __clz(__rbit64(v36)) | (v40 << 6);
            v42 = *(*(v8 + 6) + 2 * v41);
            sub_1D1A30E90(*(v8 + 7) + *(v83 + 72) * v41, v17 + *(v10 + 48), type metadata accessor for StaticEndpoint);
            *v17 = v42;
            sub_1D1820EE8(v17, v14);
            if (*v14 == v76)
            {
              break;
            }

            v36 &= v36 - 1;
            sub_1D1741A30(v14, &qword_1EC6448D0, &qword_1D1E76600);
            v39 = v40;
            if (!v36)
            {
              goto LABEL_8;
            }
          }

          v68 = v78;
          sub_1D1820EE8(v14, v78);
          v69 = v68 + *(v10 + 48);
          v70 = v77;
          sub_1D1A320C0(v69, v77, type metadata accessor for StaticEndpoint);
          v71 = v79;
          sub_1D1A320C0(v70, v79, type metadata accessor for StaticEndpoint);
          v72 = v84;
          v84[3] = v80;
          v72[4] = sub_1D1A3124C(&qword_1EC649260, type metadata accessor for StaticEndpoint);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
          sub_1D1A320C0(v71, boxed_opaque_existential_1, type metadata accessor for StaticEndpoint);
          sub_1D1A30EF8(v75, type metadata accessor for StaticMatterDevice);
          return;
        }

        while (1)
        {
LABEL_8:
          v40 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            __break(1u);
            goto LABEL_28;
          }

          if (v40 >= v37)
          {
            break;
          }

          v36 = *&v8[8 * v40 + 64];
          ++v39;
          if (v36)
          {
            goto LABEL_11;
          }
        }

        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v53 = sub_1D1E6709C();
        __swift_project_value_buffer(v53, qword_1EE07A0B0);
        v54 = v81;
        sub_1D1A30E90(a1, v81, type metadata accessor for MatterTilePath);

        v55 = sub_1D1E6707C();
        v56 = sub_1D1E6833C();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v85 = v58;
          *v57 = 136315650;
          *(v57 + 4) = sub_1D1B1312C(0x6F666E49656C6974, 0xEE00293A726F6628, &v85);
          *(v57 + 12) = 2082;
          v59 = MatterTilePath.description.getter();
          v61 = v60;
          sub_1D1A30EF8(v54, type metadata accessor for MatterTilePath);
          v62 = sub_1D1B1312C(v59, v61, &v85);

          *(v57 + 14) = v62;
          *(v57 + 22) = 2080;
          v63 = sub_1D1E6760C();
          v65 = sub_1D1B1312C(v63, v64, &v85);

          *(v57 + 24) = v65;
          _os_log_impl(&dword_1D16EC000, v55, v56, "%s Failed to find static endpoint for path %{public}s in endpoints %s", v57, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v58, -1, -1);
          MEMORY[0x1D3893640](v57, -1, -1);
        }

        else
        {

          sub_1D1A30EF8(v54, type metadata accessor for MatterTilePath);
        }

        v29 = v75;
      }

      v66 = v84;
      v84[3] = v82;
      v66[4] = sub_1D1A3124C(&qword_1EC649258, type metadata accessor for StaticMatterDevice);
      v67 = __swift_allocate_boxed_opaque_existential_1(v66);
      sub_1D1A320C0(v29, v67, type metadata accessor for StaticMatterDevice);
      return;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v43 = sub_1D1E6709C();
  __swift_project_value_buffer(v43, qword_1EE07A0B0);
  sub_1D1A30E90(a1, v8, type metadata accessor for MatterTilePath);
  v44 = sub_1D1E6707C();
  v45 = sub_1D1E6833C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v85 = v47;
    *v46 = 136315394;
    *(v46 + 4) = sub_1D1B1312C(0x6F666E49656C6974, 0xEE00293A726F6628, &v85);
    *(v46 + 12) = 2082;
    v48 = MatterTilePath.description.getter();
    v50 = v49;
    sub_1D1A30EF8(v8, type metadata accessor for MatterTilePath);
    v51 = sub_1D1B1312C(v48, v50, &v85);

    *(v46 + 14) = v51;
    _os_log_impl(&dword_1D16EC000, v44, v45, "%s Failed to get static device for path %{public}s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v47, -1, -1);
    MEMORY[0x1D3893640](v46, -1, -1);
  }

  else
  {

    sub_1D1A30EF8(v8, type metadata accessor for MatterTilePath);
  }

  v52 = v84;
  v84[4] = 0;
  *v52 = 0u;
  *(v52 + 1) = 0u;
}

uint64_t MatterStateSnapshot.accessoryDetails(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AccessoryDetails(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t MatterStateSnapshot.tilePaths.getter()
{
  v1 = *(v0 + *(type metadata accessor for MatterStateSnapshot() + 24));
  v6 = v0;

  v2 = sub_1D1892A20(sub_1D1A30408, &v5, v1);

  v3 = sub_1D178547C(v2);

  return v3;
}

uint64_t sub_1D1A2CAC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(type metadata accessor for MatterStateSnapshot() + 20);
  v7 = sub_1D1E66A7C();
  (*(*(v7 - 8) + 16))(a3, a2 + v6, v7);
  result = type metadata accessor for MatterTilePath(0);
  v9 = a3 + *(result + 24);
  *(a3 + *(result + 20)) = v5;
  *v9 = 0;
  *(v9 + 2) = 1;
  return result;
}

uint64_t MatterStateSnapshot.staticEndpoint(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v5 = type metadata accessor for StaticMatterDevice();
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EndpointPath(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = type metadata accessor for MatterStateSnapshot();
  v18 = *(v2 + *(v17 + 28));
  if (*(v18 + 16) && (v19 = v17, v20 = sub_1D1742188(a1), (v21 & 1) != 0))
  {
    sub_1D1A30E90(*(v18 + 56) + *(v10 + 72) * v20, v14, type metadata accessor for EndpointPath);
    sub_1D1A320C0(v14, v16, type metadata accessor for EndpointPath);
    v22 = *(v3 + *(v19 + 24));
    if (*(v22 + 16))
    {
      v23 = sub_1D17420B0(*&v16[*(v9 + 20)]);
      if (v24)
      {
        sub_1D1A30E90(*(v22 + 56) + *(v40 + 72) * v23, v8, type metadata accessor for StaticMatterDevice);
        v25 = *&v8[*(v5 + 56)];

        sub_1D1A30EF8(v8, type metadata accessor for StaticMatterDevice);
        if (*(v25 + 16))
        {
          v26 = sub_1D171D15C(*&v16[*(v9 + 24)]);
          if (v27)
          {
            v28 = v26;
            v29 = *(v25 + 56);
            v30 = type metadata accessor for StaticEndpoint();
            v31 = *(v30 - 8);
            v32 = v29 + *(v31 + 72) * v28;
            v33 = v41;
            sub_1D1A30E90(v32, v41, type metadata accessor for StaticEndpoint);
            sub_1D1A30EF8(v16, type metadata accessor for EndpointPath);

            return (*(v31 + 56))(v33, 0, 1, v30);
          }
        }
      }
    }

    sub_1D1A30EF8(v16, type metadata accessor for EndpointPath);
    v39 = type metadata accessor for StaticEndpoint();
    return (*(*(v39 - 8) + 56))(v41, 1, 1, v39);
  }

  else
  {
    v35 = type metadata accessor for StaticEndpoint();
    v36 = *(*(v35 - 8) + 56);
    v37 = v35;
    v38 = v41;

    return v36(v38, 1, 1, v37);
  }
}

{
  v5 = type metadata accessor for StaticMatterDevice();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + *(type metadata accessor for MatterStateSnapshot() + 24));
  v11 = type metadata accessor for EndpointPath(0);
  if (*(v10 + 16) && (v12 = v11, v13 = sub_1D17420B0(*(a1 + *(v11 + 20))), (v14 & 1) != 0))
  {
    sub_1D1A30E90(*(v10 + 56) + *(v6 + 72) * v13, v9, type metadata accessor for StaticMatterDevice);
    v15 = *&v9[*(v5 + 56)];

    sub_1D1A30EF8(v9, type metadata accessor for StaticMatterDevice);
    if (*(v15 + 16) && (v16 = sub_1D171D15C(*(a1 + *(v12 + 24))), (v17 & 1) != 0))
    {
      v18 = v16;
      v19 = *(v15 + 56);
      v20 = type metadata accessor for StaticEndpoint();
      v21 = *(v20 - 8);
      sub_1D1A30E90(v19 + *(v21 + 72) * v18, a2, type metadata accessor for StaticEndpoint);

      return (*(v21 + 56))(a2, 0, 1, v20);
    }

    else
    {

      v25 = type metadata accessor for StaticEndpoint();
      return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
    }
  }

  else
  {
    v23 = type metadata accessor for StaticEndpoint();
    v24 = *(*(v23 - 8) + 56);

    return v24(a2, 1, 1, v23);
  }
}

uint64_t MatterStateSnapshot.staticMatterDevice(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for EndpointPath(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = type metadata accessor for MatterStateSnapshot();
  v15 = *(v2 + *(v14 + 28));
  if (*(v15 + 16) && (v16 = v14, v17 = sub_1D1742188(a1), (v18 & 1) != 0))
  {
    sub_1D1A30E90(*(v15 + 56) + *(v7 + 72) * v17, v11, type metadata accessor for EndpointPath);
    sub_1D1A320C0(v11, v13, type metadata accessor for EndpointPath);
    v19 = *(v3 + *(v16 + 24));
    if (*(v19 + 16) && (v20 = sub_1D17420B0(*&v13[*(v6 + 20)]), (v21 & 1) != 0))
    {
      v22 = v20;
      v23 = *(v19 + 56);
      v24 = type metadata accessor for StaticMatterDevice();
      v25 = *(v24 - 8);
      sub_1D1A30E90(v23 + *(v25 + 72) * v22, a2, type metadata accessor for StaticMatterDevice);
      sub_1D1A30EF8(v13, type metadata accessor for EndpointPath);
      return (*(v25 + 56))(a2, 0, 1, v24);
    }

    else
    {
      sub_1D1A30EF8(v13, type metadata accessor for EndpointPath);
      v29 = type metadata accessor for StaticMatterDevice();
      return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
    }
  }

  else
  {
    v27 = type metadata accessor for StaticMatterDevice();
    v28 = *(*(v27 - 8) + 56);

    return v28(a2, 1, 1, v27);
  }
}

uint64_t MatterStateSnapshot.tileInfoFromStaticEndpointId(id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for EndpointPath(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MatterTilePath(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for StaticEndpoint();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MatterStateSnapshot.staticEndpoint(for:)(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    result = sub_1D1741A30(v14, &qword_1EC644780, &qword_1D1E91AA0);
    v21 = v27;
    *v27 = 0u;
    *(v21 + 1) = 0u;
    v21[4] = 0;
  }

  else
  {
    sub_1D1A320C0(v14, v19, type metadata accessor for StaticEndpoint);
    sub_1D1A30E90(&v19[*(v15 + 20)], v6, type metadata accessor for EndpointPath);
    v22 = sub_1D1E66A7C();
    (*(*(v22 - 8) + 16))(v10, v6, v22);
    v23 = *&v6[*(v3 + 20)];
    v24 = *&v6[*(v3 + 24)];
    sub_1D1A30EF8(v6, type metadata accessor for EndpointPath);
    v25 = &v10[*(v7 + 24)];
    *&v10[*(v7 + 20)] = v23;
    *v25 = v24;
    v25[2] = 0;
    MatterStateSnapshot.tileInfo(for:)(v10, v27);
    sub_1D1A30EF8(v10, type metadata accessor for MatterTilePath);
    return sub_1D1A30EF8(v19, type metadata accessor for StaticEndpoint);
  }

  return result;
}

uint64_t MatterStateSnapshot.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for StaticMatterDevice();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v13 = *(v2 + *(type metadata accessor for MatterStateSnapshot() + 24));
  v14 = type metadata accessor for EndpointPath(0);
  if (*(v13 + 16) && (v15 = v14, v16 = sub_1D17420B0(*(a1 + *(v14 + 20))), (v17 & 1) != 0))
  {
    sub_1D1A30E90(*(v13 + 56) + *(v6 + 72) * v16, v10, type metadata accessor for StaticMatterDevice);
    sub_1D1A320C0(v10, v12, type metadata accessor for StaticMatterDevice);
    v18 = *&v12[*(v5 + 56)];
    if (*(v18 + 16) && (v19 = sub_1D171D15C(*(a1 + *(v15 + 24))), (v20 & 1) != 0))
    {
      v21 = v19;
      v22 = *(v18 + 56);
      v23 = type metadata accessor for StaticEndpoint();
      v24 = *(v23 - 8);
      sub_1D1A30E90(v22 + *(v24 + 72) * v21, a2, type metadata accessor for StaticEndpoint);
      (*(v24 + 56))(a2, 0, 1, v23);
    }

    else
    {
      v28 = type metadata accessor for StaticEndpoint();
      (*(*(v28 - 8) + 56))(a2, 1, 1, v28);
    }

    return sub_1D1A30EF8(v12, type metadata accessor for StaticMatterDevice);
  }

  else
  {
    v25 = type metadata accessor for StaticEndpoint();
    v26 = *(*(v25 - 8) + 56);

    return v26(a2, 1, 1, v25);
  }
}

uint64_t sub_1D1A2DAD8()
{
  v1 = 0x746E696F70646E65;
  v2 = 0x7954656369766564;
  if (*v0 != 2)
  {
    v2 = 0x6563697665446F6ELL;
  }

  if (*v0)
  {
    v1 = 0x4449656369766564;
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

uint64_t sub_1D1A2DB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1A31ED0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1A2DB90(uint64_t a1)
{
  v2 = sub_1D1A30F58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A2DBCC(uint64_t a1)
{
  v2 = sub_1D1A30F58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A2DC08(uint64_t a1)
{
  v2 = sub_1D1A31054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A2DC44(uint64_t a1)
{
  v2 = sub_1D1A31054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A2DC80(uint64_t a1)
{
  v2 = sub_1D1A31000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A2DCBC(uint64_t a1)
{
  v2 = sub_1D1A31000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A2DCF8(uint64_t a1)
{
  v2 = sub_1D1A310A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A2DD34(uint64_t a1)
{
  v2 = sub_1D1A310A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A2DD70(uint64_t a1)
{
  v2 = sub_1D1A30FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A2DDAC(uint64_t a1)
{
  v2 = sub_1D1A30FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterStateSnapshot.Filter.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649268, &qword_1D1E92C60);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649270, &qword_1D1E92C68);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649278, &qword_1D1E92C70);
  v34 = *(v11 - 8);
  v35 = v11;
  v12 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649280, &qword_1D1E92C78);
  v33 = *(v15 - 8);
  v16 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649288, &unk_1D1E92C80);
  v42 = *(v19 - 8);
  v43 = v19;
  v20 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - v21;
  v41 = *v2;
  v23 = *(v2 + 8);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A30F58();
  sub_1D1E6930C();
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      LOBYTE(v44) = 2;
      sub_1D1A31000();
      v27 = v43;
      sub_1D1E68DFC();
      v44 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
      sub_1D1904180(&qword_1EC646B30, sub_1D18F16D8);
      v28 = v40;
      sub_1D1E68F1C();
      (*(v39 + 8))(v10, v28);
      return (*(v42 + 8))(v22, v27);
    }

    else
    {
      LOBYTE(v44) = 3;
      sub_1D1A30FAC();
      v31 = v36;
      v32 = v43;
      sub_1D1E68DFC();
      (*(v37 + 8))(v31, v38);
      return (*(v42 + 8))(v22, v32);
    }
  }

  else if (v23)
  {
    LOBYTE(v44) = 1;
    sub_1D1A31054();
    v29 = v43;
    sub_1D1E68DFC();
    v44 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492B0, &unk_1D1E92C90);
    sub_1D1A31198(&qword_1EC6492B8);
    v30 = v35;
    sub_1D1E68F1C();
    (*(v34 + 8))(v14, v30);
    return (*(v42 + 8))(v22, v29);
  }

  else
  {
    LOBYTE(v44) = 0;
    sub_1D1A310A8();
    v25 = v43;
    sub_1D1E68DFC();
    v44 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1A310FC(&qword_1EC646B10, &qword_1EE07B258);
    sub_1D1E68F1C();
    (*(v33 + 8))(v18, v15);
    return (*(v42 + 8))(v22, v25);
  }
}

uint64_t MatterStateSnapshot.Filter.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  if (*(v1 + 8) > 1u)
  {
    if (*(v1 + 8) == 2)
    {
      MEMORY[0x1D3892850](2);

      return sub_1D176DB8C(a1, v3);
    }

    else
    {
      return MEMORY[0x1D3892850](3);
    }
  }

  else if (*(v1 + 8))
  {
    MEMORY[0x1D3892850](1);

    return sub_1D176DCC0(a1, v3);
  }

  else
  {
    MEMORY[0x1D3892850](0);

    return sub_1D176D4E8(a1, v3);
  }
}

uint64_t MatterStateSnapshot.Filter.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D1E6920C();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x1D3892850](2);
      sub_1D176DB8C(v4, v1);
    }

    else
    {
      MEMORY[0x1D3892850](3);
    }
  }

  else if (v2)
  {
    MEMORY[0x1D3892850](1);
    sub_1D176DCC0(v4, v1);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    sub_1D176D4E8(v4, v1);
  }

  return sub_1D1E6926C();
}

uint64_t MatterStateSnapshot.Filter.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492C8, &qword_1D1E92CA0);
  v53 = *(v46 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v52 = &v41[-v4];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492D0, &qword_1D1E92CA8);
  v49 = *(v45 - 8);
  v5 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v51 = &v41[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492D8, &qword_1D1E92CB0);
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492E0, &qword_1D1E92CB8);
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492E8, &unk_1D1E92CC0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41[-v18];
  v21 = a1[3];
  v20 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D1A30F58();
  v22 = v54;
  sub_1D1E692FC();
  if (!v22)
  {
    v54 = v14;
    v43 = v11;
    v24 = v52;
    v23 = v53;
    v25 = v51;
    v26 = sub_1D1E68DDC();
    v27 = (2 * *(v26 + 16)) | 1;
    v56 = v26;
    v57 = v26 + 32;
    v58 = 0;
    v59 = v27;
    v28 = sub_1D18085BC();
    if (v28 == 4 || v58 != v59 >> 1)
    {
      v31 = sub_1D1E688EC();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v33 = &type metadata for MatterStateSnapshot.Filter;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      (*(v16 + 8))(v19, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v28;
      if (v28 > 1u)
      {
        if (v28 == 2)
        {
          LOBYTE(v60) = 2;
          sub_1D1A31000();
          sub_1D1E68C4C();
          v36 = v50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
          sub_1D1904180(&qword_1EC646B98, sub_1D18F1924);
          v37 = v45;
          sub_1D1E68D7C();
          (*(v49 + 8))(v25, v37);
          (*(v16 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v39 = v60;
          v40 = v36;
        }

        else
        {
          LOBYTE(v60) = 3;
          sub_1D1A30FAC();
          sub_1D1E68C4C();
          v40 = v50;
          (*(v23 + 8))(v24, v46);
          (*(v16 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v39 = 0;
        }
      }

      else
      {
        if (v28)
        {
          LOBYTE(v60) = 1;
          sub_1D1A31054();
          sub_1D1E68C4C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492B0, &unk_1D1E92C90);
          sub_1D1A31198(&qword_1EC6492F0);
          v38 = v48;
          sub_1D1E68D7C();
          (*(v47 + 8))(v10, v38);
        }

        else
        {
          LOBYTE(v60) = 0;
          sub_1D1A310A8();
          v29 = v54;
          sub_1D1E68C4C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
          sub_1D1A310FC(&qword_1EC646B78, &qword_1EC644B20);
          v30 = v43;
          sub_1D1E68D7C();
          (*(v44 + 8))(v29, v30);
        }

        (*(v16 + 8))(v19, v15);
        swift_unknownObjectRelease();
        v39 = v60;
        v40 = v50;
      }

      *v40 = v39;
      *(v40 + 8) = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_1D1A2EDE8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D1E6920C();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x1D3892850](2);
      sub_1D176DB8C(v4, v1);
    }

    else
    {
      MEMORY[0x1D3892850](3);
    }
  }

  else if (v2)
  {
    MEMORY[0x1D3892850](1);
    sub_1D176DCC0(v4, v1);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    sub_1D176D4E8(v4, v1);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1A2EE9C(__int128 *a1)
{
  v3 = *v1;
  if (*(v1 + 8) > 1u)
  {
    if (*(v1 + 8) == 2)
    {
      MEMORY[0x1D3892850](2);

      return sub_1D176DB8C(a1, v3);
    }

    else
    {
      return MEMORY[0x1D3892850](3);
    }
  }

  else if (*(v1 + 8))
  {
    MEMORY[0x1D3892850](1);

    return sub_1D176DCC0(a1, v3);
  }

  else
  {
    MEMORY[0x1D3892850](0);

    return sub_1D176D4E8(a1, v3);
  }
}

uint64_t sub_1D1A2EF88()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D1E6920C();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x1D3892850](2);
      sub_1D176DB8C(v4, v1);
    }

    else
    {
      MEMORY[0x1D3892850](3);
    }
  }

  else if (v2)
  {
    MEMORY[0x1D3892850](1);
    sub_1D176DCC0(v4, v1);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    sub_1D176D4E8(v4, v1);
  }

  return sub_1D1E6926C();
}

uint64_t MatterStateSnapshot.Filter.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) <= 1u)
  {
    if (*(v0 + 8))
    {
      strcpy(v4, "deviceIDs(");
      BYTE3(v4[1]) = 0;
      HIDWORD(v4[1]) = -369098752;
    }

    else
    {
      sub_1D1E6884C();

      strcpy(v4, "endpointUUIDs(");
      HIBYTE(v4[1]) = -18;
      sub_1D1E66A7C();
      sub_1D1A3124C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    }

    goto LABEL_7;
  }

  if (*(v0 + 8) == 2)
  {
    strcpy(v4, "deviceTypes(");
    BYTE5(v4[1]) = 0;
    HIWORD(v4[1]) = -5120;
    sub_1D1785A60();
LABEL_7:
    v2 = sub_1D1E6817C();
    MEMORY[0x1D3890F70](v2);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return v4[0];
  }

  return 0x6563697665446F6ELL;
}

uint64_t sub_1D1A2F1EC()
{
  v0 = sub_1D1E66A7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MatterStateSnapshot();
  __swift_allocate_value_buffer(v5, qword_1EE07D4A0);
  v6 = __swift_project_value_buffer(v5, qword_1EE07D4A0);
  if (qword_1EE07DD70 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EE081518);
  (*(v1 + 16))(v4, v7, v0);
  v8 = sub_1D18D677C(MEMORY[0x1E69E7CC0]);
  v10 = 0;
  v11 = -1;
  return sub_1D1A28CB8(0x7974706D65, 0xE500000000000000, v4, v8, &v10, v6);
}

uint64_t static MatterStateSnapshot.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE07D498 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MatterStateSnapshot();
  v3 = __swift_project_value_buffer(v2, qword_1EE07D4A0);
  return sub_1D1A30E90(v3, a1, type metadata accessor for MatterStateSnapshot);
}

uint64_t sub_1D1A2F3DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646210, &unk_1D1E7E870);
  v6 = *a1;
  result = sub_1D1A30E90(a1 + v4, a2 + *(v5 + 48), type metadata accessor for StaticMatterDevice);
  *a2 = v6;
  return result;
}

uint64_t _s13HomeDataModel19MatterStateSnapshotV10UpdateTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (!*(a1 + 16))
    {
      v9 = *a1;
      if (!*(a2 + 16))
      {
        sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
        sub_1D1A28388(v5, v6, 0);
        sub_1D1A28388(v2, v3, 0);
        v10 = sub_1D1E684FC();
        sub_1D1A283E8(v2, v3, 0);
        v11 = v5;
        v12 = v6;
        v13 = 0;
        goto LABEL_21;
      }

LABEL_23:
      v17 = v9;
      goto LABEL_24;
    }

    if (v7 == 1)
    {
      if ((sub_1D17A7DC0(*a1, *a2) & 1) == 0)
      {
        sub_1D1A28388(v5, v6, 1u);
        sub_1D1A28388(v2, v3, 1u);
        sub_1D1A283E8(v2, v3, 1u);
        v18 = v5;
        v19 = v6;
        v20 = 1;
        goto LABEL_25;
      }

      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
      sub_1D1A28388(v5, v6, 1u);
      sub_1D1A28388(v2, v3, 1u);
      LOBYTE(v10) = sub_1D1E684FC();
      sub_1D1A283E8(v2, v3, 1u);
      v11 = v5;
      v12 = v6;
      v13 = 1;
      goto LABEL_21;
    }

LABEL_22:
    v16 = *a1;

    v9 = v3;
    goto LABEL_23;
  }

  if (v4 == 2)
  {
    if (v7 == 2)
    {
      if ((sub_1D17A7DC0(*a1, *a2) & 1) == 0)
      {
        sub_1D1A28388(v5, v6, 2u);
        sub_1D1A28388(v2, v3, 2u);
        sub_1D1A283E8(v2, v3, 2u);
        v18 = v5;
        v19 = v6;
        v20 = 2;
        goto LABEL_25;
      }

      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
      sub_1D1A28388(v5, v6, 2u);
      sub_1D1A28388(v2, v3, 2u);
      LOBYTE(v10) = sub_1D1E684FC();
      sub_1D1A283E8(v2, v3, 2u);
      v11 = v5;
      v12 = v6;
      v13 = 2;
LABEL_21:
      sub_1D1A283E8(v11, v12, v13);
      return v10 & 1;
    }

    goto LABEL_22;
  }

  if (v4 != 3)
  {
    if (v7 == 4 && (v6 | v5) == 0)
    {
      sub_1D1A283E8(*a1, v3, 4u);
      sub_1D1A283E8(0, 0, 4u);
      v8 = 1;
      return v8 & 1;
    }

    goto LABEL_24;
  }

  if (v7 != 3)
  {
LABEL_24:
    sub_1D1A28388(v5, v6, v7);
    sub_1D1A283E8(v2, v3, v4);
    v18 = v5;
    v19 = v6;
    v20 = v7;
LABEL_25:
    sub_1D1A283E8(v18, v19, v20);
    v8 = 0;
    return v8 & 1;
  }

  sub_1D1A283E8(*a1, v3, 3u);
  sub_1D1A283E8(v5, v6, 3u);
  v8 = v5 ^ v2 ^ 1;
  return v8 & 1;
}

BOOL _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {
    v5 = type metadata accessor for MatterStateSnapshot();
    v6 = v5[5];
    if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (sub_1D184A234(*(a1 + v5[6]), *(a2 + v5[6])) & 1) != 0 && (sub_1D184A6D8(*(a1 + v5[7]), *(a2 + v5[7])))
    {
      v7 = v5[8];
      v8 = a1 + v7;
      v9 = *(a1 + v7);
      v10 = v8[8];
      v11 = a2 + v7;
      v12 = *v11;
      v13 = v11[8];
      if (v10 == 255)
      {
        sub_1D186145C(v9, 255);
        if (v13 == 255)
        {
          sub_1D186145C(v12, 255);
          sub_1D1861470(v9, 255);
          return 1;
        }

        sub_1D186145C(v12, v13);
      }

      else
      {
        v18 = v9;
        v19 = v10;
        if (v13 != 255)
        {
          v16 = v12;
          v17 = v13;
          sub_1D186145C(v9, v10);
          sub_1D186145C(v12, v13);
          sub_1D186145C(v9, v10);
          v14 = _s13HomeDataModel19MatterStateSnapshotV6FilterO2eeoiySbAE_AEtFZ_0(&v18, &v16);

          sub_1D1861470(v9, v10);
          return (v14 & 1) != 0;
        }

        sub_1D186145C(v9, v10);
        sub_1D186145C(v12, 255);
        sub_1D186145C(v9, v10);
      }

      sub_1D1861470(v9, v10);
      sub_1D1861470(v12, v13);
    }
  }

  return 0;
}

uint64_t _s13HomeDataModel19MatterStateSnapshotV6FilterO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 8) <= 1u)
  {
    if (!*(a1 + 8))
    {
      if (!v5)
      {
        v6 = v4;

        v8 = sub_1D17A6E98(v7, v6);

        return v8 & 1;
      }

      return 0;
    }

    if (v5 == 1)
    {
      v11 = *a1;

      return sub_1D17A7DC0(v11, v4);
    }

    return 0;
  }

  if (*(a1 + 8) != 2)
  {
    if (v5 == 3 && v4 == 0)
    {

      return 1;
    }

    return 0;
  }

  if (v5 != 2)
  {
    return 0;
  }

  v10 = *a1;

  return sub_1D17A7F14(v10, v4);
}

uint64_t _s13HomeDataModel19MatterStateSnapshotV17allowSnapshotting9accessorySbSo11HMAccessoryC_tFZ_0(id a1)
{
  if (qword_1EC6422B0 != -1)
  {
    swift_once();
  }

  if (byte_1EC649198)
  {
    LODWORD(v2) = 1;
  }

  else
  {
    LODWORD(v2) = [a1 supportsNativeMatter];
  }

  v3 = [a1 category];
  v4 = [v3 categoryType];

  v5 = sub_1D1E6781C();
  v7 = v6;

  v8 = *MEMORY[0x1E696C990];
  if (v5 == sub_1D1E6781C() && v7 == v9)
  {
    v33 = 1;
  }

  else
  {
    v33 = sub_1D1E6904C();
  }

  v34[3] = &type metadata for HomeKitFeatures;
  v34[4] = sub_1D18076E8();
  LOBYTE(v34[0]) = 3;
  v11 = sub_1D1E66D5C();
  __swift_destroy_boxed_opaque_existential_1(v34);
  if (v11)
  {
    v12 = [a1 category];
    v13 = [v12 categoryType];

    v14 = sub_1D1E6781C();
    v16 = v15;

    v17 = *MEMORY[0x1E696CA38];
    if (v14 == sub_1D1E6781C() && v16 == v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = sub_1D1E6904C();
    }
  }

  else
  {
    v19 = 0;
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D1E6709C();
  __swift_project_value_buffer(v20, qword_1EE07A0B0);
  v21 = a1;
  v22 = sub_1D1E6707C();
  v23 = sub_1D1E6832C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34[0] = v26;
    *v24 = 136316674;
    *(v24 + 4) = sub_1D1B1312C(0xD00000000000001DLL, 0x80000001D1EC3750, v34);
    *(v24 + 12) = 1026;
    *(v24 + 14) = v2;
    *(v24 + 18) = 1026;
    *(v24 + 20) = v33 & 1;
    *(v24 + 24) = 1026;
    *(v24 + 26) = 0;
    *(v24 + 30) = 1026;
    *(v24 + 32) = v19 & 1;
    *(v24 + 36) = 2114;
    v27 = [v21 &selRef_setIdentifyTime_];
    *(v24 + 38) = v27;
    *(v24 + 46) = 2112;
    *(v24 + 48) = v21;
    *v25 = v27;
    v25[1] = v21;
    v28 = v21;
    _os_log_impl(&dword_1D16EC000, v22, v23, "%s: allowRVC:%{BOOL,public}d isLock:%{BOOL,public}d isLight:%{BOOL,public}d allowHomeActivityState:%{BOOL,public}d accessory category:%{public}@ accessory:%@", v24, 0x38u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1D3893640](v26, -1, -1);
    MEMORY[0x1D3893640](v24, -1, -1);
  }

  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 <= 7)
  {
    if (((1 << qword_1EE07AE40) & 0x1C) != 0)
    {
      return v2 & 1;
    }

    if (((1 << qword_1EE07AE40) & 3) != 0)
    {
      LOBYTE(v2) = v2 | v33 | v19;
      return v2 & 1;
    }

    if (((1 << qword_1EE07AE40) & 0xC0) != 0)
    {
      LOBYTE(v2) = v2 | v19;
      return v2 & 1;
    }
  }

  v2 = sub_1D1E6707C();
  v29 = sub_1D1E6833C();
  if (os_log_type_enabled(v2, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1D1B1312C(0xD00000000000001DLL, 0x80000001D1EC3750, v34);
    _os_log_impl(&dword_1D16EC000, v2, v29, "%s Unsupported context. Cannot get supported devices.", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1D3893640](v31, -1, -1);
    MEMORY[0x1D3893640](v30, -1, -1);
  }

  LOBYTE(v2) = 0;
  return v2 & 1;
}

uint64_t type metadata accessor for MatterStateSnapshot()
{
  result = qword_1EE07C628;
  if (!qword_1EE07C628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1A2FFBC()
{
  result = qword_1EC6491F8;
  if (!qword_1EC6491F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6491F8);
  }

  return result;
}

unint64_t sub_1D1A30010()
{
  result = qword_1EC649208;
  if (!qword_1EC649208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649200, &qword_1D1E92C48);
    sub_1D1A3124C(&qword_1EC649210, type metadata accessor for StaticMatterDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649208);
  }

  return result;
}

unint64_t sub_1D1A300CC()
{
  result = qword_1EC649220;
  if (!qword_1EC649220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649218, &qword_1D1E92C50);
    sub_1D1A3124C(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1A3124C(&qword_1EC646B18, type metadata accessor for EndpointPath);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649220);
  }

  return result;
}

unint64_t sub_1D1A301B8()
{
  result = qword_1EC649228;
  if (!qword_1EC649228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649228);
  }

  return result;
}

unint64_t sub_1D1A3020C()
{
  result = qword_1EC649238;
  if (!qword_1EC649238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649200, &qword_1D1E92C48);
    sub_1D1A3124C(&qword_1EC649240, type metadata accessor for StaticMatterDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649238);
  }

  return result;
}

unint64_t sub_1D1A302C8()
{
  result = qword_1EC649248;
  if (!qword_1EC649248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649218, &qword_1D1E92C50);
    sub_1D1A3124C(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1A3124C(&qword_1EC646B80, type metadata accessor for EndpointPath);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649248);
  }

  return result;
}

unint64_t sub_1D1A303B4()
{
  result = qword_1EC649250;
  if (!qword_1EC649250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649250);
  }

  return result;
}

uint64_t sub_1D1A30428(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for StaticMatterDevice();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649390, &qword_1D1E936B8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = (v44 - v19);
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v44[3] = a1;
  v44[4] = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v44[5] = v22;
  v44[6] = 0;
  v44[7] = v25 & v23;
  v44[8] = a2;
  v44[9] = a3;

  v44[1] = a3;

  while (1)
  {
    sub_1D1ABFF5C(v20);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646210, &unk_1D1E7E870);
    if ((*(*(v27 - 8) + 48))(v20, 1, v27) == 1)
    {
      sub_1D1716918();
    }

    v28 = *v20;
    sub_1D1A320C0(v20 + *(v27 + 48), v16, type metadata accessor for StaticMatterDevice);
    v29 = *a5;
    v31 = sub_1D17420B0(v28);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v29[3] >= v34)
    {
      if (a4)
      {
        v39 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D173A0D0();
        v39 = *a5;
        if ((v35 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v26 = *(v45 + 72) * v31;
      sub_1D1A30E90(v39[7] + v26, v14, type metadata accessor for StaticMatterDevice);
      sub_1D1A30EF8(v16, type metadata accessor for StaticMatterDevice);
      sub_1D1A32128(v14, v39[7] + v26, type metadata accessor for StaticMatterDevice);
      a4 = 1;
    }

    else
    {
      sub_1D172A6BC(v34, a4 & 1);
      v36 = *a5;
      v37 = sub_1D17420B0(v28);
      if ((v35 & 1) != (v38 & 1))
      {
        goto LABEL_21;
      }

      v31 = v37;
      v39 = *a5;
      if (v35)
      {
        goto LABEL_5;
      }

LABEL_14:
      v39[(v31 >> 6) + 8] |= 1 << v31;
      *(v39[6] + 8 * v31) = v28;
      sub_1D1A320C0(v16, v39[7] + *(v45 + 72) * v31, type metadata accessor for StaticMatterDevice);
      v40 = v39[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_20;
      }

      v39[2] = v42;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1A307D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v76 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v77 = &v72 - v11;
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v72 - v18;
  v75 = *a5;
  v78 = *(a5 + 8);
  v20 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v21 = [a4 uniqueIdentifier];
  sub_1D1E66A5C();

  LOBYTE(v21) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v22 = *(v13 + 8);
  v22(v17, v12);
  v22(v19, v12);
  result = 0;
  if ((v21 & 1) == 0)
  {
    return result;
  }

  v81 = MEMORY[0x1E69E7CC8];
  v24 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v25 = sub_1D1E67C1C();

  v79 = MEMORY[0x1E69E7CC0];
  if (v25 >> 62)
  {
    goto LABEL_25;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a1; v26; i = a1)
  {
    a1 = 0;
    v27 = v25 & 0xC000000000000001;
    v28 = v25 & 0xFFFFFFFFFFFFFF8;
    *&v74 = v25;
    v29 = v25 + 32;
    v30 = a3 + 56;
    while (1)
    {
      if (v27)
      {
        v31 = MEMORY[0x1D3891EF0](a1, v74);
      }

      else
      {
        if (a1 >= *(v28 + 16))
        {
          goto LABEL_24;
        }

        v31 = *(v29 + 8 * a1);
      }

      v32 = v31;
      if (__OFADD__(a1++, 1))
      {
        break;
      }

      v34 = sub_1D1E682DC();
      if (v35)
      {
        v25 = 0;
      }

      else
      {
        v25 = v34;
      }

      if (*(a3 + 16) && (v36 = *(a3 + 40), v37 = sub_1D1E691FC(), v38 = -1 << *(a3 + 32), v39 = v37 & ~v38, ((*(v30 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
      {
        v40 = ~v38;
        while (*(*(a3 + 48) + 8 * v39) != v25)
        {
          v39 = (v39 + 1) & v40;
          if (((*(v30 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        v25 = &v79;
        sub_1D1E6896C();
        v41 = *(v79 + 16);
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
        if (a1 == v26)
        {
LABEL_22:
          v42 = v79;
          goto LABEL_27;
        }
      }

      else
      {
LABEL_5:

        if (a1 == v26)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v26 = sub_1D1E6873C();
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_27:

  if (v42 < 0 || (v42 & 0x4000000000000000) != 0)
  {
    result = sub_1D1E6873C();
    v44 = result;
    if (result)
    {
      goto LABEL_30;
    }

LABEL_54:

    v69 = *(v76 + *(type metadata accessor for MatterStateSnapshot() + 24));

    v70 = v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v70;
    sub_1D1A30428(v69, sub_1D1A2F3DC, 0, isUniquelyReferenced_nonNull_native, &v79);

    return v79;
  }

  v44 = *(v42 + 16);
  if (!v44)
  {
    goto LABEL_54;
  }

LABEL_30:
  if (v44 >= 1)
  {
    v45 = 0;
    *&v43 = 134218242;
    v74 = v43;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x1D3891EF0](v45, v42);
      }

      else
      {
        v46 = *(v42 + 8 * v45 + 32);
      }

      v47 = v46;
      v48 = sub_1D1E682DC();
      if ((v49 & 1) == 0 && v48)
      {
        v50 = v48;
        v51 = HMAccessory.matterDevice.getter();
        if (!v51)
        {
          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v63 = sub_1D1E6709C();
          __swift_project_value_buffer(v63, qword_1EE07A0B0);
          v64 = v47;
          v65 = sub_1D1E6707C();
          v66 = sub_1D1E6835C();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            *v67 = v74;
            *(v67 + 4) = v50;
            *(v67 + 12) = 2112;
            *(v67 + 14) = v64;
            *v68 = v64;
            v64 = v64;
            _os_log_impl(&dword_1D16EC000, v65, v66, "HMAccessory had a matter node ID (%llu) but didn't return a device: (%@)", v67, 0x16u);
            sub_1D1741A30(v68, &unk_1EC644000, &unk_1D1E75B00);
            MEMORY[0x1D3893640](v68, -1, -1);
            MEMORY[0x1D3893640](v67, -1, -1);
          }

          goto LABEL_34;
        }

        v53 = v51;
        v54 = v52;
        v55 = sub_1D1E682DC();
        if ((v56 & 1) == 0)
        {
          v57 = v55;
          if (*(v81 + 16))
          {
            sub_1D17420B0(v55);
            if (v58)
            {
              goto LABEL_47;
            }
          }

          if (v78 == 255 || (v79 = v75, LOBYTE(v80) = v78, , v59 = sub_1D1A2A8B0(v53, v54, v47, i), , (v59 & 1) != 0))
          {
            ObjectType = swift_getObjectType();
            MatterDevice.readAllSupportedAttributes()(ObjectType, v54);
            v47 = v47;
            v61 = swift_unknownObjectRetain();
            v62 = v77;
            StaticMatterDevice.init(device:valueSource:accessory:)(v61, v54, &v79, v47, v77);
            sub_1D1B0E394(v62, v57);
LABEL_47:

            swift_unknownObjectRelease();
            goto LABEL_34;
          }
        }

        swift_unknownObjectRelease();
      }

LABEL_34:
      if (v44 == ++v45)
      {
        goto LABEL_54;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1A30E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A30EF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1A30F58()
{
  result = qword_1EC649290;
  if (!qword_1EC649290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649290);
  }

  return result;
}

unint64_t sub_1D1A30FAC()
{
  result = qword_1EC649298;
  if (!qword_1EC649298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649298);
  }

  return result;
}

unint64_t sub_1D1A31000()
{
  result = qword_1EC6492A0;
  if (!qword_1EC6492A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6492A0);
  }

  return result;
}

unint64_t sub_1D1A31054()
{
  result = qword_1EC6492A8;
  if (!qword_1EC6492A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6492A8);
  }

  return result;
}

unint64_t sub_1D1A310A8()
{
  result = qword_1EC6492C0;
  if (!qword_1EC6492C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6492C0);
  }

  return result;
}

uint64_t sub_1D1A310FC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1A3124C(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1A31198(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6492B0, &unk_1D1E92C90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1A3124C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1A31298()
{
  result = qword_1EC649300;
  if (!qword_1EC649300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649300);
  }

  return result;
}

void sub_1D1A31314()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1A313D8();
    if (v1 <= 0x3F)
    {
      sub_1D1A31440();
      if (v2 <= 0x3F)
      {
        sub_1D1A314EC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D1A313D8()
{
  if (!qword_1EE07B760)
  {
    type metadata accessor for StaticMatterDevice();
    v0 = sub_1D1E6769C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B760);
    }
  }
}

void sub_1D1A31440()
{
  if (!qword_1EE07B7E0)
  {
    sub_1D1E66A7C();
    type metadata accessor for EndpointPath(255);
    sub_1D1A3124C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v0 = sub_1D1E6769C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B7E0);
    }
  }
}

void sub_1D1A314EC()
{
  if (!qword_1EE07C638[0])
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, qword_1EE07C638);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel19MatterStateSnapshotV10UpdateTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1D1A31558(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D1A315A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1D1A315E4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel19MatterStateSnapshotV6FilterO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1D1A31628(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D1A31670(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D1A316B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1D1A31740()
{
  result = qword_1EC649308;
  if (!qword_1EC649308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649308);
  }

  return result;
}

unint64_t sub_1D1A31798()
{
  result = qword_1EC649310;
  if (!qword_1EC649310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649310);
  }

  return result;
}

unint64_t sub_1D1A317F0()
{
  result = qword_1EC649318;
  if (!qword_1EC649318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649318);
  }

  return result;
}

unint64_t sub_1D1A31848()
{
  result = qword_1EC649320;
  if (!qword_1EC649320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649320);
  }

  return result;
}

unint64_t sub_1D1A318A0()
{
  result = qword_1EC649328;
  if (!qword_1EC649328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649328);
  }

  return result;
}

unint64_t sub_1D1A318F8()
{
  result = qword_1EC649330;
  if (!qword_1EC649330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649330);
  }

  return result;
}

unint64_t sub_1D1A31950()
{
  result = qword_1EC649338;
  if (!qword_1EC649338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649338);
  }

  return result;
}

unint64_t sub_1D1A319A8()
{
  result = qword_1EC649340;
  if (!qword_1EC649340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649340);
  }

  return result;
}

unint64_t sub_1D1A31A00()
{
  result = qword_1EC649348;
  if (!qword_1EC649348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649348);
  }

  return result;
}

unint64_t sub_1D1A31A58()
{
  result = qword_1EC649350;
  if (!qword_1EC649350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649350);
  }

  return result;
}

unint64_t sub_1D1A31AB0()
{
  result = qword_1EC649358;
  if (!qword_1EC649358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649358);
  }

  return result;
}

unint64_t sub_1D1A31B08()
{
  result = qword_1EC649360;
  if (!qword_1EC649360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649360);
  }

  return result;
}

unint64_t sub_1D1A31B60()
{
  result = qword_1EC649368;
  if (!qword_1EC649368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649368);
  }

  return result;
}

unint64_t sub_1D1A31BB8()
{
  result = qword_1EC649370;
  if (!qword_1EC649370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649370);
  }

  return result;
}

unint64_t sub_1D1A31C10()
{
  result = qword_1EC649378;
  if (!qword_1EC649378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649378);
  }

  return result;
}

unint64_t sub_1D1A31C68()
{
  result = qword_1EC649380;
  if (!qword_1EC649380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649380);
  }

  return result;
}

unint64_t sub_1D1A31CC0()
{
  result = qword_1EC649388;
  if (!qword_1EC649388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649388);
  }

  return result;
}

uint64_t sub_1D1A31D14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6C6F72746E6F63 && a2 == 0xEC00000044497265;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6544636974617473 && a2 == 0xED00007365636976 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC3730 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D1A31ED0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xED00007344495555;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE900000000000073 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6563697665446F6ELL && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1A32050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1A320C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A32128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t StaticRVCClusterGroup.actionStatusString.getter()
{
  v1 = type metadata accessor for StaticRVCClusterGroup();
  v2 = 0;
  v3 = *(v0 + *(v1 + 20));
  if (v3 <= 6)
  {
    v4 = v1;
    v5 = 0xD000000000000014;
    if (((1 << v3) & 0x76) != 0)
    {
      v6 = "HFRVCAutomation_VacuumAndMop";
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }

    if (v3)
    {
      return v2;
    }

    v8 = (v0 + *(v4 + 28));
    if (v8[2])
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[3];
      v12 = v8[2];
      if (StaticRVCClusterGroup.CleanMode.isVacuumAndMop.getter())
      {
        v6 = "HFRVCAutomation_Vacuum";
        v5 = 0xD00000000000001CLL;
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
      }

      if (StaticRVCClusterGroup.CleanMode.isVacuum.getter())
      {
        v6 = "HFRVCAutomation_Mop";
        v5 = 0xD000000000000016;
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
      }

      if (StaticRVCClusterGroup.CleanMode.isMop.getter())
      {
        v6 = "allowSnapshotting(accessory:)";
        v5 = 0xD000000000000013;
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
      }
    }

    v6 = "HFStatusVacuumStateCharging";
    v5 = 0xD00000000000001BLL;
    return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
  }

  return v2;
}

uint64_t StaticCluster.copyApplying(overridingAttributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for StaticColorControlCluster();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticCluster();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1A386E0(v3, v13, type metadata accessor for StaticCluster);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1D1A377A0(v13, v9, type metadata accessor for StaticColorControlCluster);
    StaticColorControlCluster.copyApplying(overridingAttributes:)(a1, a2);
    sub_1D1A38680(v9, type metadata accessor for StaticColorControlCluster);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1D1A386E0(v3, a2, type metadata accessor for StaticCluster);
    return sub_1D1A38680(v13, type metadata accessor for StaticCluster);
  }
}

uint64_t type metadata accessor for StaticCluster()
{
  result = qword_1EE07CD10;
  if (!qword_1EE07CD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1A324EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for StaticColorControlCluster() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(type metadata accessor for StaticOnOffCluster() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for StaticCluster();
  v2[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649588, &unk_1D1E940A0);
  v2[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A32620, 0, 0);
}

uint64_t sub_1D1A32620()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(*(v0 + 72) + 48);
  *(v0 + 128) = v5;
  sub_1D1A386E0(v3, v1, type metadata accessor for StaticCluster);
  sub_1D17419CC(v4, v1 + v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_15:
      sub_1D1741A30(*(v0 + 80), &qword_1EC649588, &unk_1D1E940A0);
      v18 = *(v0 + 80);
      v19 = *(v0 + 56);
      v20 = *(v0 + 64);
      v22 = *(v0 + 32);
      v21 = *(v0 + 40);

      v23 = *(v0 + 8);

      return v23();
    }

    sub_1D1A386E0(*(v0 + 80), *(v0 + 64), type metadata accessor for StaticCluster);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
    v7 = swift_dynamicCast();
    v8 = *(v0 + 64);
    if (v7)
    {
      v9 = *(v0 + 137);
      sub_1D1A377A0(v8, *(v0 + 40), type metadata accessor for StaticOnOffCluster);
      if (v9)
      {
        v10 = swift_task_alloc();
        *(v0 + 96) = v10;
        *v10 = v0;
        v10[1] = sub_1D1A32AD0;
        v11 = *(v0 + 40);

        return StaticOnOffCluster.off()();
      }

      else
      {
        v24 = swift_task_alloc();
        *(v0 + 88) = v24;
        *v24 = v0;
        v24[1] = sub_1D1A329B0;
        v25 = *(v0 + 40);

        return StaticOnOffCluster.on()();
      }
    }

    v17 = type metadata accessor for StaticOnOffCluster;
LABEL_14:
    sub_1D1A38680(v8, v17);
    goto LABEL_15;
  }

  sub_1D1A386E0(*(v0 + 80), *(v0 + 56), type metadata accessor for StaticCluster);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (!swift_dynamicCast())
  {
    v8 = *(v0 + 56);
    v17 = type metadata accessor for StaticColorControlCluster;
    goto LABEL_14;
  }

  v13 = *(v0 + 132);
  v14 = *(v0 + 136);
  sub_1D1A377A0(*(v0 + 56), *(v0 + 32), type metadata accessor for StaticColorControlCluster);
  *(v0 + 138) = v13;
  *(v0 + 142) = v14;
  v15 = swift_task_alloc();
  *(v0 + 112) = v15;
  *v15 = v0;
  v15[1] = sub_1D1A32DB0;
  v16 = *(v0 + 32);

  return StaticColorControlCluster.run(command:)(v0 + 138);
}