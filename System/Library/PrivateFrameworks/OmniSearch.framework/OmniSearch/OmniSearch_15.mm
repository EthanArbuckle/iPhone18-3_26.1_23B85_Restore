uint64_t storeEnumTagSinglePayload for SearchGlobalEntity.Timestamp(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchGlobalEntity.Temperature(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchGlobalEntity.Temperature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchGlobalEntity.GeneralAttributes(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchGlobalEntity.GeneralAttributes(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchGlobalEntity.CustomAttribute(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchGlobalEntity.CustomAttribute(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * -a2;
      *(result + 32) = 0;
      *(result + 40) = 0;
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchGlobalEntity.EventAttributes(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[33])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchGlobalEntity.EventAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchGlobalEntity.PlaceAttributes(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 185))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchGlobalEntity.PlaceAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 184) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for SearchGlobalEntity.Builder()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?);
    if (v4 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for String?(319, &lazy cache variable for type metadata for SearchGlobalEntity.EntityType?);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for SearchGlobalEntity.GeneralAttributes?);
      v1 = v6;
      if (v7 <= 0x3F)
      {
        type metadata accessor for [SearchGlobalEntity.CustomAttribute]?();
        v1 = v8;
        if (v9 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for SearchGlobalEntity.EventAttributes?);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for SearchGlobalEntity.PlaceAttributes?);
            v1 = v12;
            if (v13 <= 0x3F)
            {
              type metadata accessor for String?(319, &lazy cache variable for type metadata for SearchGlobalEntity.IDAttributes?);
              v1 = v14;
              if (v15 <= 0x3F)
              {
                type metadata accessor for String?(319, &lazy cache variable for type metadata for SearchGlobalEntity.ContactAttributes?);
                v1 = v16;
                if (v17 <= 0x3F)
                {
                  type metadata accessor for String?(319, &lazy cache variable for type metadata for SearchGlobalEntity.AppStoreAttributes?);
                  v1 = v18;
                  if (v19 <= 0x3F)
                  {
                    type metadata accessor for GlobalDialog?();
                    v1 = v20;
                    if (v21 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for SearchGlobalEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchGlobalEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchGlobalEntity.ContactAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchGlobalEntity.PlaceAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchGlobalEntity.PlaceAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchGlobalEntity.Query(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return getEnumTag for EagerResolutionError(a1);
}

_BYTE *storeEnumTagSinglePayload for SearchGlobalEntity.Query(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchGlobalEntity.GeneralAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchGlobalEntity.IDAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_112_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchGlobalEntity.EntityType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_112_6(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_2_21()
{
  v0[20] = 0;
  v0[21] = 0;
  v0[22] = 0;
  v0[10] = 0;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[17] = 0;
}

void OUTLINED_FUNCTION_7_17()
{
  v0[20] = 0;
  v0[21] = 0;
  v0[22] = 0;
  v0[10] = 0;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
}

uint64_t OUTLINED_FUNCTION_8_16()
{
  *(v3 - 72) = v0;
  v4 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return swift_once();
}

void OUTLINED_FUNCTION_33_12()
{
  v1 = v0[19];
  v0[55] = v0[18];
  v0[56] = v1;
  v2 = v0[17];
  v0[57] = v0[16];
  v0[58] = v2;
  v3 = v0[15];
  v0[59] = v0[14];
  v0[60] = v3;
  v4 = v0[13];
  v0[61] = v0[12];
  v0[62] = v4;
  v5 = v0[11];
  v0[63] = v0[10];
  v0[64] = v5;
  v6 = v0[22];
  v0[65] = v0[21];
  v0[66] = v6;
  v0[67] = v0[20];
}

uint64_t OUTLINED_FUNCTION_55_6()
{

  return outlined destroy of SearchGlobalEntity();
}

uint64_t OUTLINED_FUNCTION_67_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return outlined copy of SearchGlobalEntity.IDAttributes?(a1, a2);
}

__n128 OUTLINED_FUNCTION_72_7()
{
  *(v1 + 8) = *(v0 + 56);
  *(v1 + 24) = *(v0 + 72);
  *(v1 + 40) = *(v0 + 88);
  result = *(v0 + 104);
  *(v1 + 56) = result;
  return result;
}

double OUTLINED_FUNCTION_73_6(__n128 a1)
{
  *(v1 + 384) = a1;
  *(v1 + 400) = 0;
  *(v1 + 408) = 0;
  *(v1 + 416) = 0;
  *(v1 + 424) = 1;
  result = 0.0;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 480) = 0;
  *(v1 + 488) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return outlined copy of SearchGlobalEntity.AppStoreAttributes?(a1, a2);
}

void OUTLINED_FUNCTION_75_6(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v2 + 88) = a2;
  *(v2 + 104) = a2;
  *(v2 + 120) = a2;
  *(v2 + 136) = a2;
  *(v2 + 152) = a1;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
}

uint64_t OUTLINED_FUNCTION_78_8()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_79_7()
{

  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_93_7()
{
  result = type metadata accessor for SearchGlobalEntity(0);
  v2 = *(v0 + *(result + 80));
  return result;
}

uint64_t OUTLINED_FUNCTION_95_5()
{

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_98_5()
{
  *(v0 - 288) = 0;
  *(v0 - 296) = 0;
  return v0 - 296;
}

__n128 OUTLINED_FUNCTION_100_5()
{
  v1 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v1;
  result = *(v0 + 160);
  v3 = *(v0 + 176);
  *(v0 + 80) = result;
  *(v0 + 96) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_109_6@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = *a1;
  v3 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_110_5()
{
  v2 = *v0;
  v3 = v0[1];
}

uint64_t OUTLINED_FUNCTION_111_4()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_113_6(uint64_t a1, uint64_t a2)
{

  return outlined copy of SearchGlobalEntity.CustomAttribute(a1, a2, v2, v3);
}

void *OUTLINED_FUNCTION_121_4(void *a1)
{

  return memcpy(a1, (v1 + 1408), 0xB9uLL);
}

uint64_t OUTLINED_FUNCTION_149_3()
{
  v2 = *(v0 - 208);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_150_3()
{
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_151_1()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_152_2()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_155_3()
{

  return Hasher.init(_seed:)();
}

uint64_t SearchGlobalEntity.asNLGEntity.getter@<X0>(uint64_t *a1@<X8>)
{
  SearchNLGEntity.init()(a1);
  v3 = *(v1 + 8);
  EntityProperty.wrappedValue.getter();
  v4 = *a1;
  return EntityProperty.wrappedValue.setter();
}

uint64_t SearchGlobalEntity.asCATEntity.getter@<X0>(uint64_t a1@<X8>)
{
  SearchCATEntity.init()(a1);
  v3 = *(v1 + 8);
  EntityProperty.wrappedValue.getter();
  v4 = type metadata accessor for SearchCATEntity();
  v5 = *(a1 + *(v4 + 20));
  EntityProperty.wrappedValue.setter();
  v6 = *(a1 + *(v4 + 68));
  return EntityProperty.wrappedValue.setter();
}

uint64_t protocol witness for SearchCATEntityConvertible.asCATEntity.getter in conformance SearchGlobalEntity(uint64_t a1)
{
  SearchGlobalEntity.asCATEntity.getter(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t SearchPreExtractedCardStandardRepresentation.init(subType:sourceResult:cardData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v9 = type metadata accessor for SearchPreExtractedCardStandardRepresentation();
  result = outlined init with take of SearchResult?(a2, &a5[*(v9 + 20)]);
  v11 = &a5[*(v9 + 24)];
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t type metadata accessor for SearchPreExtractedCardStandardRepresentation()
{
  result = type metadata singleton initialization cache for SearchPreExtractedCardStandardRepresentation;
  if (!type metadata singleton initialization cache for SearchPreExtractedCardStandardRepresentation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchPreExtractedCardStandardRepresentation.sourceResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchPreExtractedCardStandardRepresentation() + 20);

  return outlined init with copy of SearchResult?(v3, a1);
}

uint64_t outlined init with copy of SearchResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SearchPreExtractedCardStandardRepresentation.cardData.getter()
{
  v1 = v0 + *(type metadata accessor for SearchPreExtractedCardStandardRepresentation() + 24);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t SearchPreExtractedCardStandardRepresentation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954627573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6552656372756F73 && a2 == 0xEC000000746C7573;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6174614464726163 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t SearchPreExtractedCardStandardRepresentation.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x65707954627573;
  }

  if (a1 == 1)
  {
    return 0x6552656372756F73;
  }

  return 0x6174614464726163;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchPreExtractedCardStandardRepresentation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchPreExtractedCardStandardRepresentation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchPreExtractedCardStandardRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchPreExtractedCardStandardRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchPreExtractedCardStandardRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E38PreExtractedCardStandardRepresentationV10CodingKeys33_554E815B51293ED60ECE76C465D8D580LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E38PreExtractedCardStandardRepresentationV10CodingKeys33_554E815B51293ED60ECE76C465D8D580LLOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = *v3;
  v24 = 0;
  lazy protocol witness table accessor for type CardSubType and conformance CardSubType();
  OUTLINED_FUNCTION_8_17();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = type metadata accessor for SearchPreExtractedCardStandardRepresentation();
    v15 = *(v14 + 20);
    LOBYTE(v22) = 1;
    type metadata accessor for SearchResult(0);
    OUTLINED_FUNCTION_1_34();
    _s10OmniSearch0B6ResultVACSEAAWlTm_1(v16, v17);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = &v3[*(v14 + 24)];
    v19 = v18[1];
    v22 = *v18;
    v23 = v19;
    v24 = 2;
    outlined copy of Data?(v22, v19);
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_8_17();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v22, v23);
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys);
  }

  return result;
}

uint64_t SearchPreExtractedCardStandardRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E38PreExtractedCardStandardRepresentationV10CodingKeys33_554E815B51293ED60ECE76C465D8D580LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E38PreExtractedCardStandardRepresentationV10CodingKeys33_554E815B51293ED60ECE76C465D8D580LLOGMR);
  v11 = OUTLINED_FUNCTION_14(v10);
  v45 = v12;
  v46 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for SearchPreExtractedCardStandardRepresentation();
  OUTLINED_FUNCTION_51(v18);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36();
  v24 = (v23 - v22);
  v25 = a1[3];
  v26 = a1[4];
  v27 = OUTLINED_FUNCTION_72_2();
  __swift_project_boxed_opaque_existential_1(v27, v28);
  lazy protocol witness table accessor for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v43 = v18;
  v29 = v24;
  v30 = v45;
  v48 = 0;
  lazy protocol witness table accessor for type CardSubType and conformance CardSubType();
  v31 = v46;
  OUTLINED_FUNCTION_9_20();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v29 = v47;
  type metadata accessor for SearchResult(0);
  LOBYTE(v47) = 1;
  OUTLINED_FUNCTION_1_34();
  _s10OmniSearch0B6ResultVACSEAAWlTm_1(v32, v33);
  v34 = v9;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v29;
  v36 = v30;
  v37 = v43;
  v38 = *(v43 + 20);
  v42 = v35;
  outlined init with take of SearchResult?(v34, &v35[v38]);
  v48 = 2;
  lazy protocol witness table accessor for type Data and conformance Data();
  OUTLINED_FUNCTION_9_20();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v36 + 8))(v17, v31);
  v39 = v42;
  *(v42 + *(v37 + 24)) = v47;
  outlined init with copy of SearchPreExtractedCardStandardRepresentation(v39, v44);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of SearchPreExtractedCardStandardRepresentation(v39);
}

uint64_t outlined init with copy of SearchPreExtractedCardStandardRepresentation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchPreExtractedCardStandardRepresentation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchPreExtractedCardStandardRepresentation(uint64_t a1)
{
  v2 = type metadata accessor for SearchPreExtractedCardStandardRepresentation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SearchPreExtractedCardStandardRepresentation.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_33();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchPreExtractedCardStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  OUTLINED_FUNCTION_51(v2);
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static SearchPreExtractedCardStandardRepresentation.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_33();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchPreExtractedCardStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchPreExtractedCardStandardRepresentation.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_33();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchPreExtractedCardStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t one-time initialization function for defaultResolverSpecification()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G38PreExtractedCardStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G38PreExtractedCardStandardRepresentationVGMR);
  __swift_allocate_value_buffer(v0, static SearchPreExtractedCardStandardRepresentation.defaultResolverSpecification);
  __swift_project_value_buffer(v0, static SearchPreExtractedCardStandardRepresentation.defaultResolverSpecification);
  type metadata accessor for SearchPreExtractedCardStandardRepresentation();
  _s10OmniSearch0B6ResultVACSEAAWlTm_1(&lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation and conformance SearchPreExtractedCardStandardRepresentation, type metadata accessor for SearchPreExtractedCardStandardRepresentation);
  return EmptyResolverSpecification.init()();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G39PreExtractedEventStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G39PreExtractedEventStandardRepresentationVGMR);
  __swift_allocate_value_buffer(v0, static SearchPreExtractedEventStandardRepresentation.defaultResolverSpecification);
  __swift_project_value_buffer(v0, static SearchPreExtractedEventStandardRepresentation.defaultResolverSpecification);
  type metadata accessor for SearchPreExtractedEventStandardRepresentation();
  _s10OmniSearch0B6ResultVACSEAAWlTm_2(&lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation and conformance SearchPreExtractedEventStandardRepresentation, type metadata accessor for SearchPreExtractedEventStandardRepresentation);
  return EmptyResolverSpecification.init()();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G31SpotlightStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G31SpotlightStandardRepresentationVGMR);
  __swift_allocate_value_buffer(v0, static SearchSpotlightStandardRepresentation.defaultResolverSpecification);
  __swift_project_value_buffer(v0, static SearchSpotlightStandardRepresentation.defaultResolverSpecification);
  type metadata accessor for SearchSpotlightStandardRepresentation();
  _s10OmniSearch0B6ResultVACSEAAWlTm_3(&lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation and conformance SearchSpotlightStandardRepresentation, type metadata accessor for SearchSpotlightStandardRepresentation);
  return EmptyResolverSpecification.init()();
}

uint64_t static SearchPreExtractedCardStandardRepresentation.defaultResolverSpecification.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultResolverSpecification != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G38PreExtractedCardStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G38PreExtractedCardStandardRepresentationVGMR);
  __swift_project_value_buffer(v2, static SearchPreExtractedCardStandardRepresentation.defaultResolverSpecification);
  OUTLINED_FUNCTION_51(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchPreExtractedCardStandardRepresentation(uint64_t a1)
{
  v2 = _s10OmniSearch0B6ResultVACSEAAWlTm_1(&lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation and conformance SearchPreExtractedCardStandardRepresentation, type metadata accessor for SearchPreExtractedCardStandardRepresentation);

  return MEMORY[0x28210C4B8](a1, v2);
}

void SearchPreExtractedCardStandardRepresentation.convertToEntity()()
{
  v1 = type metadata accessor for SearchPreExtractedCardStandardRepresentation();
  v2 = OUTLINED_FUNCTION_114(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  outlined init with copy of SearchPreExtractedCardStandardRepresentation(v0, v6 - v5);
  IdCardEntity.init(_:)();
}

unint64_t lazy protocol witness table accessor for type EmptyResolverSpecification<SearchPreExtractedCardStandardRepresentation> and conformance EmptyResolverSpecification<A>()
{
  result = lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchPreExtractedCardStandardRepresentation> and conformance EmptyResolverSpecification<A>;
  if (!lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchPreExtractedCardStandardRepresentation> and conformance EmptyResolverSpecification<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G38PreExtractedCardStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G38PreExtractedCardStandardRepresentationVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchPreExtractedCardStandardRepresentation> and conformance EmptyResolverSpecification<A>);
  }

  return result;
}

uint64_t _s10OmniSearch0B6ResultVACSEAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for SearchPreExtractedCardStandardRepresentation()
{
  type metadata accessor for SearchResult?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Data?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchPreExtractedCardStandardRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_33()
{

  return swift_once();
}

uint64_t SearchPreExtractedEventStandardRepresentation.init(subType:sourceResult:cardData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v9 = type metadata accessor for SearchPreExtractedEventStandardRepresentation();
  result = outlined init with take of SearchResult?(a2, &a5[*(v9 + 20)]);
  v11 = &a5[*(v9 + 24)];
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t type metadata accessor for SearchPreExtractedEventStandardRepresentation()
{
  result = type metadata singleton initialization cache for SearchPreExtractedEventStandardRepresentation;
  if (!type metadata singleton initialization cache for SearchPreExtractedEventStandardRepresentation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchPreExtractedEventStandardRepresentation.sourceResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchPreExtractedEventStandardRepresentation() + 20);

  return outlined init with copy of SearchResult?(v3, a1);
}

uint64_t SearchPreExtractedEventStandardRepresentation.cardData.getter()
{
  v1 = v0 + *(type metadata accessor for SearchPreExtractedEventStandardRepresentation() + 24);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchPreExtractedEventStandardRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchPreExtractedEventStandardRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchPreExtractedEventStandardRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E39PreExtractedEventStandardRepresentationV10CodingKeys33_109F7CBEB96C7A4DBA6DC32A76248C77LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E39PreExtractedEventStandardRepresentationV10CodingKeys33_109F7CBEB96C7A4DBA6DC32A76248C77LLOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = *v3;
  v24 = 0;
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_8_17();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = type metadata accessor for SearchPreExtractedEventStandardRepresentation();
    v15 = *(v14 + 20);
    LOBYTE(v22) = 1;
    type metadata accessor for SearchResult(0);
    OUTLINED_FUNCTION_1_35();
    _s10OmniSearch0B6ResultVACSEAAWlTm_2(v16, v17);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = &v3[*(v14 + 24)];
    v19 = v18[1];
    v22 = *v18;
    v23 = v19;
    v24 = 2;
    outlined copy of Data?(v22, v19);
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_8_17();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v22, v23);
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys);
  }

  return result;
}

uint64_t SearchPreExtractedEventStandardRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E39PreExtractedEventStandardRepresentationV10CodingKeys33_109F7CBEB96C7A4DBA6DC32A76248C77LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E39PreExtractedEventStandardRepresentationV10CodingKeys33_109F7CBEB96C7A4DBA6DC32A76248C77LLOGMR);
  v11 = OUTLINED_FUNCTION_14(v10);
  v41 = v12;
  v42 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = type metadata accessor for SearchPreExtractedEventStandardRepresentation();
  OUTLINED_FUNCTION_51(v18);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v39 = v18;
  v25 = v23;
  v26 = v41;
  v44 = 0;
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  v27 = v42;
  OUTLINED_FUNCTION_9_20();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v25 = v43;
  type metadata accessor for SearchResult(0);
  LOBYTE(v43) = 1;
  OUTLINED_FUNCTION_1_35();
  _s10OmniSearch0B6ResultVACSEAAWlTm_2(v28, v29);
  v30 = v9;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = v25;
  v32 = v26;
  v33 = v39;
  v34 = *(v39 + 20);
  v38 = v31;
  outlined init with take of SearchResult?(v30, &v31[v34]);
  v44 = 2;
  lazy protocol witness table accessor for type Data and conformance Data();
  OUTLINED_FUNCTION_9_20();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v32 + 8))(v17, v27);
  v35 = v38;
  *(v38 + *(v33 + 24)) = v43;
  outlined init with copy of SearchPreExtractedEventStandardRepresentation(v35, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of SearchPreExtractedEventStandardRepresentation(v35);
}

uint64_t outlined init with copy of SearchPreExtractedEventStandardRepresentation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchPreExtractedEventStandardRepresentation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchPreExtractedEventStandardRepresentation(uint64_t a1)
{
  v2 = type metadata accessor for SearchPreExtractedEventStandardRepresentation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SearchPreExtractedEventStandardRepresentation.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchPreExtractedEventStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  OUTLINED_FUNCTION_51(v2);
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static SearchPreExtractedEventStandardRepresentation.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchPreExtractedEventStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchPreExtractedEventStandardRepresentation.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchPreExtractedEventStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t static SearchPreExtractedEventStandardRepresentation.defaultResolverSpecification.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultResolverSpecification != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G39PreExtractedEventStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G39PreExtractedEventStandardRepresentationVGMR);
  __swift_project_value_buffer(v2, static SearchPreExtractedEventStandardRepresentation.defaultResolverSpecification);
  OUTLINED_FUNCTION_51(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t SearchPreExtractedEventStandardRepresentation.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v8 = v74 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  v14 = v74 - v13;
  v15 = type metadata accessor for SearchPreExtractedEventStandardRepresentation();
  OUTLINED_FUNCTION_51(v15);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v78 = v74 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v26);
  v28 = v74 - v27;
  v81 = type metadata accessor for LocalizedStringResource();
  v29 = OUTLINED_FUNCTION_14(v81);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_39_0();
  v79 = v34;
  MEMORY[0x28223BE20](v35);
  v37 = v74 - v36;
  LocalizedStringResource.init(stringLiteral:)();
  v77 = v15;
  v38 = v1;
  v39 = (v1 + *(v15 + 24));
  v40 = v39[1] >> 60;
  v80 = a1;
  if (v40 != 15)
  {
    v76 = v14;
    v41 = *v39;
    type metadata accessor for SFCard();
    v42 = OUTLINED_FUNCTION_3_26();
    outlined copy of Data._Representation(v42, v43);
    v44 = OUTLINED_FUNCTION_3_26();
    outlined copy of Data._Representation(v44, v45);
    v46 = OUTLINED_FUNCTION_3_26();
    v48 = SFCard.init(data:)(v46, v47);
    if (v48)
    {
      v49 = v48;
      v75 = v8;
      SFCard.snippetPluginModel.getter(v28);
      v50 = type metadata accessor for RGPluginModel();
      if (__swift_getEnumTagSinglePayload(v28, 1, v50) == 1)
      {

        v51 = OUTLINED_FUNCTION_3_26();
        outlined consume of Data?(v51, v52);
        outlined destroy of ResourceBundle?(v28, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
      }

      else
      {
        _s10OmniSearch0B6ResultVACSEAAWlTm_2(&lazy protocol witness table cache variable for type RGPluginModel and conformance RGPluginModel, MEMORY[0x277D1C540]);
        v74[1] = SnippetPluginModel.data.getter();
        v56 = v55;
        OUTLINED_FUNCTION_51(v50);
        (*(v57 + 8))(v28, v50);
        if (v56 >> 60 != 15)
        {
          v31[2](v79, v37, v81);
          static RGPluginModel.bundleName.getter();
          DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();

          v72 = OUTLINED_FUNCTION_3_26();
          outlined consume of Data?(v72, v73);
          return (v31[1])(v37, v81);
        }

        v58 = OUTLINED_FUNCTION_3_26();
        outlined consume of Data?(v58, v59);
      }

      v8 = v75;
    }

    else
    {
      v53 = OUTLINED_FUNCTION_3_26();
      outlined consume of Data?(v53, v54);
    }

    v14 = v76;
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static Logging.search);
  v61 = v78;
  outlined init with copy of SearchPreExtractedEventStandardRepresentation(v38, v78);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v82 = v65;
    *v64 = 136315138;
    outlined init with copy of SearchPreExtractedEventStandardRepresentation(v61, v20);
    String.init<A>(describing:)();
    v76 = v31;
    v77 = v37;
    v66 = v14;
    v67 = v8;
    outlined destroy of SearchPreExtractedEventStandardRepresentation(v61);
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v64 + 4) = v68;
    v8 = v67;
    v14 = v66;
    v31 = v76;
    v37 = v77;
    _os_log_impl(&dword_25D85C000, v62, v63, "Unexpected fallback to use title only displayRepresentation for entity: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    MEMORY[0x25F8A1050](v65, -1, -1);
    MEMORY[0x25F8A1050](v64, -1, -1);
  }

  else
  {

    outlined destroy of SearchPreExtractedEventStandardRepresentation(v61);
  }

  v69 = v81;
  v31[2](v79, v37, v81);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v69);
  v70 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v70);
  DisplayRepresentation.init(title:subtitle:image:)();
  return (v31[1])(v37, v81);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchPreExtractedEventStandardRepresentation(uint64_t a1)
{
  v2 = _s10OmniSearch0B6ResultVACSEAAWlTm_2(&lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation and conformance SearchPreExtractedEventStandardRepresentation, type metadata accessor for SearchPreExtractedEventStandardRepresentation);

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t lazy protocol witness table accessor for type EmptyResolverSpecification<SearchPreExtractedEventStandardRepresentation> and conformance EmptyResolverSpecification<A>()
{
  result = lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchPreExtractedEventStandardRepresentation> and conformance EmptyResolverSpecification<A>;
  if (!lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchPreExtractedEventStandardRepresentation> and conformance EmptyResolverSpecification<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G39PreExtractedEventStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G39PreExtractedEventStandardRepresentationVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchPreExtractedEventStandardRepresentation> and conformance EmptyResolverSpecification<A>);
  }

  return result;
}

uint64_t _s10OmniSearch0B6ResultVACSEAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for SearchPreExtractedEventStandardRepresentation()
{
  type metadata accessor for SearchResult?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Data?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchPreExtractedEventStandardRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return swift_once();
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV20decodeSearchableItemySo012CSSearchableG0CxKAA0cG9ProvidingRzlFZAA0bC6EntityV_Tt0g5(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v28 - v6;
  v8 = type metadata accessor for IntentFile();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 48);
  EntityProperty.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of IntentApplication?(v7, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logging.search);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_25D85C000, v15, v16, "SearchSpotlightEntity missing data of the underlying CSSearchableItem", v17, 2u);
      MEMORY[0x25F8A1050](v17, -1, -1);
    }

    lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v19 = IntentFile.data.getter();
    v21 = v20;
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    v22 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v1)
    {
      (*(v9 + 8))(v12, v8);
      outlined consume of Data._Representation(v19, v21);
    }

    else
    {
      v2 = v22;
      outlined consume of Data._Representation(v19, v21);
      if (v2)
      {
        (*(v9 + 8))(v12, v8);
      }

      else
      {
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Logging.search);
        v25 = Logger.logObject.getter();
        v2 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v25, v2))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_25D85C000, v25, v2, "NSKeyedUnarchiver returning nil when unarchiving CSSearchableItem data", v26, 2u);
          MEMORY[0x25F8A1050](v26, -1, -1);
        }

        lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
        swift_allocError();
        *v27 = 2;
        swift_willThrow();
        (*(v9 + 8))(v12, v8);
      }
    }
  }

  return v2;
}

uint64_t static CSSearchableItem.makeFrom(data:)()
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  return static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
}

uint64_t SFCommand.asIntentFile()()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_114(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59_4();
  v14[0] = 0;
  v5 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v14];
  v6 = v14[0];
  if (v5)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UTType();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    result = IntentFile.init(data:filename:type:)();
  }

  else
  {
    v12 = v6;
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CSSearchableItem.senderNames.getter()
{
  if ((CSSearchableItem.isMailMessageItem.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = [v0 attributeSet];

  return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorNames.getter(v1);
}

uint64_t CSSearchableItem.contentCreationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 attributeSet];
  v4 = [v3 contentCreationDate];

  if (v4)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

uint64_t CSSearchableItem.title.getter()
{
  v1 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v0);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    OUTLINED_FUNCTION_98_2();
    v6 = v3 == 0xD000000000000015 && v5 == v4;
    if (v6 || (OUTLINED_FUNCTION_26_10() & 1) != 0 || ((OUTLINED_FUNCTION_98_2(), v3 == 0xD000000000000023) ? (v8 = v7 == v4) : (v8 = 0), v8 || (OUTLINED_FUNCTION_26_10() & 1) != 0))
    {

      v9 = [v0 attributeSet];
      v10 = &selRef_title;
      return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v9, v10);
    }

    OUTLINED_FUNCTION_98_2();
    v13 = v3 == 0xD000000000000014 && v12 == v4;
    if (v13 || (OUTLINED_FUNCTION_26_10() & 1) != 0 || ((OUTLINED_FUNCTION_98_2(), v3 == 0xD00000000000001DLL) ? (v15 = v14 == v4) : (v15 = 0), v15 || (OUTLINED_FUNCTION_26_10() & 1) != 0))
    {

      v9 = [v0 attributeSet];
      v10 = &selRef_subject;
      return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v9, v10);
    }

    OUTLINED_FUNCTION_98_2();
    v17 = v3 == 0xD000000000000013 && v16 == v4;
    if (v17 || (OUTLINED_FUNCTION_26_10() & 1) != 0 || ((OUTLINED_FUNCTION_98_2(), v3 == 0xD000000000000012) ? (v19 = v18 == v4) : (v19 = 0), v19 || (OUTLINED_FUNCTION_26_10() & 1) != 0))
    {

      v9 = [v0 attributeSet];
LABEL_43:
      v10 = &selRef_displayName;
      return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v9, v10);
    }

    OUTLINED_FUNCTION_98_2();
    if (v3 == 0xD000000000000019 && v20 == v4)
    {
    }

    else
    {
      v22 = OUTLINED_FUNCTION_26_10();

      if ((v22 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v9 = [v0 attributeSet];
    v10 = &selRef_photosContentDescription;
    return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v9, v10);
  }

LABEL_41:
  result = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v0 attributeSet], &selRef_title);
  if (!v23)
  {
    v9 = [v0 attributeSet];
    goto LABEL_43;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchSpotlightEntity.validateParameters()()
{
  v1 = (v0 + *(type metadata accessor for SearchSpotlightEntity(0) + 56));
  v3 = *v1;
  v2 = v1[1];
  v4 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = v4;
  }

  if (!v5)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    v7 = __swift_project_value_buffer(v6, static Logging.search);
    v8 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    v9 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_25D85C000, v8, v7, "Attempting to create SearchSpotlightEntity without id", v11, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    lazy protocol witness table accessor for type SearchToolError and conformance SearchToolError();
    swift_allocError();
    *v12 = xmmword_25DBC9A70;
    swift_willThrow();
  }
}

void SearchSpotlightEntity.init(result:card:)()
{
  OUTLINED_FUNCTION_155();
  v142 = v0;
  v2 = v1;
  v148 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_49_3();
  v147 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_49_3();
  v138 = v13;
  OUTLINED_FUNCTION_78_0();
  v14 = type metadata accessor for URL();
  v15 = OUTLINED_FUNCTION_14(v14);
  v129 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  v128 = v20 - v19;
  v21 = OUTLINED_FUNCTION_78_0();
  v144 = type metadata accessor for SearchResultItem(v21);
  v22 = OUTLINED_FUNCTION_17(v144);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_36();
  v146 = v26 - v25;
  OUTLINED_FUNCTION_78_0();
  v27 = type metadata accessor for FileDocument();
  v28 = OUTLINED_FUNCTION_14(v27);
  v134 = v29;
  v135 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_36();
  v133 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  OUTLINED_FUNCTION_114(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_49_3();
  v137 = v38;
  OUTLINED_FUNCTION_78_0();
  v39 = type metadata accessor for IntentFile();
  v40 = OUTLINED_FUNCTION_14(v39);
  v132 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_36();
  v131 = v45 - v44;
  v46 = OUTLINED_FUNCTION_78_0();
  v47 = type metadata accessor for SearchSpotlightEntity.Builder(v46);
  v48 = OUTLINED_FUNCTION_17(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_39_0();
  v145 = v51;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v52);
  v54 = (&v127 - v53);
  v55 = type metadata accessor for SearchResult(0);
  v56 = *(v55 + 24);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v141 = v56;
  v57 = CodableNSSecureCoding.wrappedValue.getter();
  v58 = CSSearchableItem.title.getter();
  v139 = v59;
  v130 = v47[6];
  OUTLINED_FUNCTION_92();
  v143 = v39;
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v39);
  v63 = v47[10];
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v55);
  *(v54 + v47[11]) = MEMORY[0x277D84F90];
  v127 = v47[12];
  OUTLINED_FUNCTION_92();
  v136 = v14;
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v14);
  v70 = [v57 uniqueIdentifier];
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  *v54 = v71;
  v54[1] = v73;
  v74 = v2;
  v75 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v57);
  v76 = (v54 + v47[7]);
  v77 = (v54 + v47[8]);
  v78 = v47[9];
  v54[2] = v75;
  v54[3] = v79;
  v80 = v139;
  *v77 = v58;
  v77[1] = v80;
  v81 = v57;
  *v76 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.contentType.getter([v57 attributeSet]);
  v76[1] = v82;
  outlined destroy of IntentApplication?(v54 + v63, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  _s10OmniSearch0B6ResultVWOcTm_5(v2, v54 + v63, type metadata accessor for SearchResult);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v55);
  v86 = v142;
  *(v54 + v78) = v142;
  if (!v86)
  {
    v88 = 0;
    goto LABEL_8;
  }

  v87 = outlined bridged method (ob) of @objc SFCard.cardSections.getter(v86);
  v88 = v87;
  if (!v87)
  {
LABEL_8:
    v92 = v137;
    v91 = v138;
    goto LABEL_11;
  }

  if (specialized Array.count.getter(v87))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v88 & 0xC000000000000001) == 0, v88);
    if ((v88 & 0xC000000000000001) != 0)
    {
      v89 = MEMORY[0x25F89FFD0](0, v88);
    }

    else
    {
      v89 = *(v88 + 32);
    }

    v90 = v89;
  }

  else
  {
    v90 = 0;
  }

  v92 = v137;
  v91 = v138;

  v88 = [v90 command];

LABEL_11:
  *(v54 + v47[13]) = v88;
  v93 = CodableNSSecureCoding.wrappedValue.getter();
  CSSearchableItem.asIntentFile()();

  OUTLINED_FUNCTION_44_0();
  v94 = v143;
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v143);
  v98 = v131;
  v99 = *(v132 + 32);
  v99(v131, v92, v94);
  v100 = v130;
  outlined destroy of IntentApplication?(v54 + v130, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v99(v54 + v100, v98, v94);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v94);
  v104 = v148;
  _s10OmniSearch0B6ResultVWOcTm_5(v74, v146, type metadata accessor for SearchResultItem);
  if (swift_getEnumCaseMultiPayload() == 11)
  {
    v105 = v134;
    v106 = *(v134 + 32);
    v107 = OUTLINED_FUNCTION_107();
    v108(v107);
    FileDocument.contentUrl.getter(v91);
    v109 = *(v105 + 8);
    v110 = OUTLINED_FUNCTION_107();
    v111(v110);
    v112 = v136;
    OUTLINED_FUNCTION_166(v91, 1, v136);
    if (v113)
    {
      outlined destroy of IntentApplication?(v91, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      v114 = *(v129 + 32);
      v115 = v128;
      v114(v128, v91, v112);
      v116 = v127;
      outlined destroy of IntentApplication?(v54 + v127, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v114(v54 + v116, v115, v112);
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v117, v118, v119, v112);
    }
  }

  else
  {
    _s10OmniSearch0B10ResultItemOWOhTm_4();
  }

  v120 = v147;
  OUTLINED_FUNCTION_25_14();
  _s10OmniSearch0B6ResultVWOcTm_5(v54, v145, v121);
  SearchSpotlightEntity.init(builder:)();

  OUTLINED_FUNCTION_0_35();
  _s10OmniSearch0B10ResultItemOWOhTm_4();
  v122 = type metadata accessor for SearchSpotlightEntity(0);
  if (__swift_getEnumTagSinglePayload(v120, 1, v122))
  {
    outlined destroy of IntentApplication?(v120, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
    v123 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_24_13();
    v124 = OUTLINED_FUNCTION_88();
    _s10OmniSearch0B15SpotlightEntityVWObTm_0(v124, v125, v126);
    v123 = 0;
  }

  OUTLINED_FUNCTION_4_22();
  _s10OmniSearch0B10ResultItemOWOhTm_4();
  __swift_storeEnumTagSinglePayload(v104, v123, 1, v122);
  OUTLINED_FUNCTION_148();
}

void SearchSpotlightEntity.validTypeIdentifiers.getter()
{
  OUTLINED_FUNCTION_155();
  v4 = v0;
  v5 = type metadata accessor for TransferRepresentationVisibility();
  v6 = OUTLINED_FUNCTION_14(v5);
  v64 = v7;
  v65 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v63 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_61_8();
  v16 = type metadata accessor for UTType();
  v17 = OUTLINED_FUNCTION_14(v16);
  v67 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39_0();
  v66 = v21;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_59_7();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  OUTLINED_FUNCTION_114(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_59_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  v28 = *(v0 + 40);
  EntityProperty.wrappedValue.getter();
  v29 = type metadata accessor for IntentFile();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v29);
  outlined destroy of IntentApplication?(v1, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v31 = 0;
  if (EnumTagSinglePayload != 1)
  {
    if (one-time initialization token for searchToolExportedExperiences != -1)
    {
      OUTLINED_FUNCTION_38_11();
    }

    v32 = __swift_project_value_buffer(v16, static UTType.searchToolExportedExperiences);
    swift_beginAccess();
    (*(v67 + 16))(v3, v32, v16);
    v31 = v3;
    UTType.identifier.getter();
    OUTLINED_FUNCTION_67_8();
    (*(v67 + 8))(v3, v16);
  }

  *(inited + 32) = v31;
  *(inited + 40) = 0;
  v33 = MEMORY[0x277D84F90];
  v34 = *(inited + 40);
  if (v34)
  {
    v35 = *(inited + 32);
    v36 = *(inited + 40);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_71_7();
      v33 = v39;
    }

    v37 = *(v33 + 16);
    if (v37 >= *(v33 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v33 = v40;
    }

    *(v33 + 16) = v37 + 1;
    v38 = v33 + 16 * v37;
    *(v38 + 32) = v35;
    *(v38 + 40) = v34;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v41 = *(v4 + 80);
  if (v41)
  {
    v42 = *(v4 + 72);
    v43 = *(v4 + 80);
    swift_bridgeObjectRetain_n();
    UTType.init(_:)();
    OUTLINED_FUNCTION_166(v2, 1, v16);
    if (v44)
    {

      outlined destroy of IntentApplication?(v2, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    }

    else
    {
      v45 = v67;
      (*(v67 + 32))(v66, v2, v16);
      static TransferRepresentationVisibility.all.getter();
      type metadata accessor for SearchSpotlightEntity(0);
      OUTLINED_FUNCTION_1_36();
      lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(v46);
      OUTLINED_FUNCTION_37_5();
      v47 = v66;
      v48 = Transferable.exportedContentTypes(_:)();
      v49 = (*(v64 + 8))(v63, v65);
      MEMORY[0x28223BE20](v49);
      *(&v62 - 2) = v47;
      v50 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v62 - 4), v48);

      if (v50)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_71_7();
          v33 = v60;
        }

        v51 = v67;
        v52 = *(v33 + 16);
        if (v52 >= *(v33 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v33 = v61;
        }

        *(v33 + 16) = v52 + 1;
        v53 = v33 + 16 * v52;
        *(v53 + 32) = v42;
        *(v53 + 40) = v41;
        v54 = *(v51 + 8);
        v55 = OUTLINED_FUNCTION_53_3();
        v56(v55);
      }

      else
      {
        v57 = *(v45 + 8);
        v58 = OUTLINED_FUNCTION_53_3();
        v59(v58);
      }
    }
  }

  OUTLINED_FUNCTION_148();
}

uint64_t SearchSpotlightEntity.bundleId.getter()
{
  v1 = *v0;
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchSpotlightEntity.bundleId.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchSpotlightEntity.experienceSourceType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D37088];
  v3 = type metadata accessor for SearchResultType();
  v4 = OUTLINED_FUNCTION_17(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

id SearchSpotlightEntity.card.getter()
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_62_3();
  outlined copy of Data?(v3, v4);
  v5 = OUTLINED_FUNCTION_62_3();
  return SFCard.init(data:)(v5, v6);
}

uint64_t key path setter for SearchSpotlightEntity.card : SearchSpotlightEntity(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return SearchSpotlightEntity.card.setter(v1);
}

uint64_t SearchSpotlightEntity.card.setter(void *a1)
{
  v3 = v1;
  if (a1)
  {
    v5 = a1;
    SFCard.data.getter();
    OUTLINED_FUNCTION_67_8();
  }

  else
  {
    v5 = 0;
    v2 = 0xF000000000000000;
  }

  result = outlined consume of Data?(*(v3 + 8), *(v3 + 16));
  *(v3 + 8) = v5;
  *(v3 + 16) = v2;
  return result;
}

void (*SearchSpotlightEntity.card.modify(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  v4 = v1[1];
  v3 = v1[2];
  v5 = OUTLINED_FUNCTION_37_5();
  outlined copy of Data?(v5, v6);
  v7 = OUTLINED_FUNCTION_37_5();
  *a1 = SFCard.init(data:)(v7, v8);
  return SearchSpotlightEntity.card.modify;
}

void SearchSpotlightEntity.card.modify(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_6(a1);
  if (v4)
  {
    v9 = v3;
    if (v3)
    {
      v5 = v3;
      SFCard.data.getter();
      OUTLINED_FUNCTION_67_8();
    }

    else
    {
      v5 = 0;
      v2 = 0xF000000000000000;
    }

    v7 = *(v1 + 8);
    outlined consume of Data?(*(v7 + 8), *(v7 + 16));
    *(v7 + 8) = v5;
    *(v7 + 16) = v2;
  }

  else
  {
    if (v3)
    {
      v6 = v3;
      SFCard.data.getter();
      OUTLINED_FUNCTION_67_8();
    }

    else
    {
      v6 = 0;
      v2 = 0xF000000000000000;
    }

    v8 = *(v1 + 8);
    outlined consume of Data?(*(v8 + 8), *(v8 + 16));
    *(v8 + 8) = v6;
    *(v8 + 16) = v2;
  }
}

uint64_t SearchSpotlightEntity.documentSource.getter()
{
  v1 = *(v0 + 24);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchSpotlightEntity.documentSource.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchSpotlightEntity.title.getter()
{
  v1 = *(v0 + 32);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchSpotlightEntity.bundleId : SearchSpotlightEntity(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  v8 = OUTLINED_FUNCTION_34_11();
  return a5(v8);
}

uint64_t (*SearchSpotlightEntity.title.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchSpotlightEntity.experienceFile.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 40);
  OUTLINED_FUNCTION_50_7();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v8, v9, &_s10AppIntents10IntentFileVSgMR);
}

uint64_t (*SearchSpotlightEntity.experienceFile.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchSpotlightEntity.experienceFile : SearchSpotlightEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v18 - v15;
  outlined init with copy of SpotlightRankingItem?(a1, &v18 - v15, a5, a6);
  return a7(v16);
}

uint64_t SearchSpotlightEntity.encodedSearchableItem.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 48);
  OUTLINED_FUNCTION_50_7();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v8, v9, &_s10AppIntents10IntentFileVSgMR);
}

uint64_t (*SearchSpotlightEntity.encodedSearchableItem.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchSpotlightEntity.fileURL.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 56);
  OUTLINED_FUNCTION_50_7();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v8, v9, &_s10Foundation3URLVSgMR);
}

uint64_t (*SearchSpotlightEntity.fileURL.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchSpotlightEntity.openCommand.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 64);
  OUTLINED_FUNCTION_50_7();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v8, v9, &_s10AppIntents10IntentFileVSgMR);
}

uint64_t (*SearchSpotlightEntity.openCommand.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t SearchSpotlightEntity.searchableItemType.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightEntity.sourceResult.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchSpotlightEntity(v0);
  return OUTLINED_FUNCTION_108_3(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, *(v1 + 52));
}

uint64_t SearchSpotlightEntity.sourceResult.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchSpotlightEntity(v0);
  return OUTLINED_FUNCTION_107_3(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, *(v1 + 52));
}

uint64_t SearchSpotlightEntity.sourceResult.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchSpotlightEntity(v0) + 52);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchSpotlightEntity.init(_:)@<X0>(void (*a1)(_OWORD *)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for SearchSpotlightEntity.Builder(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_109();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = (&v41 - v17);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v11[8];
  type metadata accessor for IntentFile();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = (v18 + v11[9]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v18 + v11[10]);
  *v25 = 0;
  v25[1] = 0;
  *(v18 + v11[11]) = 0;
  v26 = v11[12];
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  *(v18 + v11[13]) = MEMORY[0x277D84F90];
  v31 = v11[14];
  type metadata accessor for URL();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  *(v18 + v11[15]) = 0;
  a1(v18);
  OUTLINED_FUNCTION_25_14();
  _s10OmniSearch0B6ResultVWOcTm_5(v18, v15, v36);
  SearchSpotlightEntity.init(builder:)();
  OUTLINED_FUNCTION_4_22();
  _s10OmniSearch0B10ResultItemOWOhTm_4();
  v37 = type metadata accessor for SearchSpotlightEntity(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v37))
  {
    outlined destroy of IntentApplication?(v9, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
    v38 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_24_13();
    _s10OmniSearch0B15SpotlightEntityVWObTm_0(v9, a2, v39);
    v38 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v38, 1, v37);
}

uint64_t SearchSpotlightEntity.Builder.init()()
{
  v1 = OUTLINED_FUNCTION_113();
  v2 = type metadata accessor for SearchSpotlightEntity.Builder(v1);
  *v0 = 0u;
  v0[1] = 0u;
  v3 = v2[6];
  type metadata accessor for IntentFile();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = (v0 + v2[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + v2[8]);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + v2[9]) = 0;
  v10 = v2[10];
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  *(v0 + v2[11]) = MEMORY[0x277D84F90];
  v15 = v2[12];
  type metadata accessor for URL();
  OUTLINED_FUNCTION_92();
  result = __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  *(v0 + v2[13]) = 0;
  return result;
}

void SearchSpotlightEntity.init(builder:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v80 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39_0();
  v76 = v7;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_2();
  v75 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39_0();
  v74 = v14;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_2();
  v18 = v17;
  OUTLINED_FUNCTION_78_0();
  v19 = type metadata accessor for LocalizedStringResource();
  v20 = OUTLINED_FUNCTION_114(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  v23 = OUTLINED_FUNCTION_61_8();
  v24 = type metadata accessor for SearchSpotlightEntity(v23);
  v25 = OUTLINED_FUNCTION_17(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_36();
  v30 = (v29 - v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *v30 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_32_16(xmmword_25DBC9410);
  LocalizedStringResource.init(stringLiteral:)();
  v78 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_75_7(v78);
  LocalizedStringResource.init(stringLiteral:)();
  v30[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_98_2();
  LocalizedStringResource.init(stringLiteral:)();
  v30[5] = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v30[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_66_6();
  LocalizedStringResource.init(stringLiteral:)();
  v79 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_43_9(v79);
  LocalizedStringResource.init(stringLiteral:)();
  v30[8] = EntityProperty<>.init(title:)();
  v31 = v24[13];
  type metadata accessor for SearchResult(0);
  v77 = v31;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v36 = v24[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(v30 + v36) = EntityProperty<>.init(title:)();
  v37 = v1[1];
  if (v37)
  {
    v73 = v24;
    v38 = (v30 + v24[14]);
    *v38 = *v1;
    v38[1] = v37;
    v39 = type metadata accessor for SearchSpotlightEntity.Builder(0);
    v40 = (v1 + v39[7]);
    v41 = v40[1];
    v30[9] = *v40;
    v30[10] = v41;
    outlined init with copy of SpotlightRankingItem?(v1 + v39[6], v18, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    v42 = OUTLINED_FUNCTION_32_0();
    outlined init with copy of SpotlightRankingItem?(v42, v43, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);

    EntityProperty.wrappedValue.setter();
    outlined destroy of IntentApplication?(v18, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    v44 = v1[2];
    v45 = v1[3];

    EntityProperty.wrappedValue.setter();
    type metadata accessor for LocalIndexClient();
    static LocalIndexClient.displayName(for:)(v44, v45);
    EntityProperty.wrappedValue.setter();
    v46 = (v1 + v39[8]);
    v81 = *v46;
    v82 = v46[1];

    EntityProperty.wrappedValue.setter();
    outlined assign with copy of SearchResult?(v1 + v39[10], v30 + v77);
    v47 = *(v1 + v39[11]);

    IntentFile.init(experiences:)(v48, v18);
    v49 = OUTLINED_FUNCTION_32_0();
    outlined init with copy of SpotlightRankingItem?(v49, v50, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    EntityProperty.wrappedValue.setter();
    outlined destroy of IntentApplication?(v18, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    if (*(v1 + v39[13]))
    {
      v51 = v74;
      SFCommand.asIntentFile()();
      v61 = 0;
      v62 = v80;
    }

    else
    {
      v61 = 1;
      v62 = v80;
      v51 = v74;
    }

    v63 = type metadata accessor for IntentFile();
    __swift_storeEnumTagSinglePayload(v51, v61, 1, v63);
    outlined init with copy of SpotlightRankingItem?(v51, v18, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    EntityProperty.wrappedValue.setter();
    outlined destroy of IntentApplication?(v51, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    SearchSpotlightEntity.validTypeIdentifiers.getter();
    EntityProperty.wrappedValue.setter();
    v64 = *(v1 + v39[9]);
    if (v64)
    {
      v65 = v64;
      v66 = SFCard.data.getter();
      v68 = v67;
    }

    else
    {
      v66 = 0;
      v68 = 0xF000000000000000;
    }

    outlined consume of Data?(v30[1], v30[2]);
    v30[1] = v66;
    v30[2] = v68;
    outlined init with copy of SpotlightRankingItem?(v1 + v39[12], v75, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with copy of SpotlightRankingItem?(v75, v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    EntityProperty.wrappedValue.setter();
    outlined destroy of IntentApplication?(v75, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_4_22();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    OUTLINED_FUNCTION_12_18();
    _s10OmniSearch0B6ResultVWOcTm_5(v30, v62, v69);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
    OUTLINED_FUNCTION_11_17();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logging.search);
    v53 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    v54 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v54, v55))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_84_5(&dword_25D85C000, v56, v57, "Missing fields to create SearchSpotlightEntity");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_4_22();
    _s10OmniSearch0B10ResultItemOWOhTm_4();

    outlined consume of Data?(v30[1], v30[2]);

    outlined destroy of IntentApplication?(v30 + v77, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);

    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v24);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t SearchSpotlightEntity.supportedTypeIdentifiersForExport.setter()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v2 = *(v0 + *(type metadata accessor for SearchSpotlightEntity(v1) + 60));
  return EntityProperty.wrappedValue.setter();
}

void SearchSpotlightEntity.init()()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39_0();
  v54 = v7;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_2();
  v53 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39_0();
  v52 = v14;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v50 = type metadata accessor for UUID();
  v18 = OUTLINED_FUNCTION_14(v50);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_61_8();
  v23 = type metadata accessor for LocalizedStringResource();
  v24 = OUTLINED_FUNCTION_114(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v51 = EntityProperty<>.init(title:)();
  *v2 = v51;
  OUTLINED_FUNCTION_32_16(xmmword_25DBC9410);
  LocalizedStringResource.init(stringLiteral:)();
  v27 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_75_7(v27);
  LocalizedStringResource.init(stringLiteral:)();
  v2[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_98_2();
  LocalizedStringResource.init(stringLiteral:)();
  v2[5] = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v2[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_66_6();
  LocalizedStringResource.init(stringLiteral:)();
  v28 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_43_9(v28);
  LocalizedStringResource.init(stringLiteral:)();
  v2[8] = EntityProperty<>.init(title:)();
  v29 = type metadata accessor for SearchSpotlightEntity(0);
  v30 = v29[13];
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v35 = v29[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(v2 + v35) = EntityProperty<>.init(title:)();
  UUID.init()();
  v36 = UUID.uuidString.getter();
  v38 = v37;
  (*(v20 + 8))(v0, v50);
  v39 = (v2 + v29[14]);
  *v39 = v36;
  v39[1] = v38;
  type metadata accessor for IntentFile();
  v2[9] = 0;
  v2[10] = 0;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  outlined init with copy of SpotlightRankingItem?(v17, v52, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v17, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  type metadata accessor for URL();
  v44 = v53;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  outlined init with copy of SpotlightRankingItem?(v44, v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v44, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v55 = 0;
  v56 = 0;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_148();
}

uint64_t SearchSpotlightEntity.Builder.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightEntity.Builder.id.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SearchSpotlightEntity.Builder.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightEntity.Builder.bundleId.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SearchSpotlightEntity.Builder.encodedSearchableItem.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR, *(v1 + 24));
}

uint64_t SearchSpotlightEntity.Builder.encodedSearchableItem.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR, *(v1 + 24));
}

uint64_t SearchSpotlightEntity.Builder.encodedSearchableItem.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchSpotlightEntity.Builder(v0) + 24);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchSpotlightEntity.Builder.spotlightContentTypeIdentifier.getter()
{
  v0 = type metadata accessor for SearchSpotlightEntity.Builder(0);
  OUTLINED_FUNCTION_60_5(*(v0 + 28));
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightEntity.Builder.spotlightContentTypeIdentifier.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = (v1 + *(type metadata accessor for SearchSpotlightEntity.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SearchSpotlightEntity.Builder.spotlightContentTypeIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchSpotlightEntity.Builder(v0) + 28);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchSpotlightEntity.Builder.title.getter()
{
  v0 = type metadata accessor for SearchSpotlightEntity.Builder(0);
  OUTLINED_FUNCTION_60_5(*(v0 + 32));
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightEntity.Builder.title.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = (v1 + *(type metadata accessor for SearchSpotlightEntity.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SearchSpotlightEntity.Builder.title.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchSpotlightEntity.Builder(v0) + 32);
  return OUTLINED_FUNCTION_35_3();
}

void *SearchSpotlightEntity.Builder.card.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchSpotlightEntity.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void SearchSpotlightEntity.Builder.card.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for SearchSpotlightEntity.Builder(v2) + 36);

  *(v1 + v3) = v0;
}

uint64_t SearchSpotlightEntity.Builder.card.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchSpotlightEntity.Builder(v0) + 36);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchSpotlightEntity.Builder.sourceResult.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, *(v1 + 40));
}

uint64_t SearchSpotlightEntity.Builder.sourceResult.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, *(v1 + 40));
}

uint64_t SearchSpotlightEntity.Builder.sourceResult.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchSpotlightEntity.Builder(v0) + 40);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchSpotlightEntity.Builder.experiences.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchSpotlightEntity.Builder(0) + 44));
}

uint64_t SearchSpotlightEntity.Builder.experiences.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for SearchSpotlightEntity.Builder(v2) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SearchSpotlightEntity.Builder.experiences.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchSpotlightEntity.Builder(v0) + 44);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchSpotlightEntity.Builder.fileURL.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR, *(v1 + 48));
}

uint64_t SearchSpotlightEntity.Builder.fileURL.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR, *(v1 + 48));
}

uint64_t SearchSpotlightEntity.Builder.fileURL.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchSpotlightEntity.Builder(v0) + 48);
  return OUTLINED_FUNCTION_35_3();
}

void *SearchSpotlightEntity.Builder.openCommand.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchSpotlightEntity.Builder(0) + 52));
  v2 = v1;
  return v1;
}

void SearchSpotlightEntity.Builder.openCommand.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for SearchSpotlightEntity.Builder(v2) + 52);

  *(v1 + v3) = v0;
}

uint64_t SearchSpotlightEntity.Builder.openCommand.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchSpotlightEntity.Builder(v0) + 52);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchSpotlightEntity.Builder.init(id:bundleId:encodedSearchableItem:spotlightContentTypeIdentifier:title:card:sourceResult:experiences:fileURL:openCommand:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v20 = type metadata accessor for SearchSpotlightEntity.Builder(0);
  outlined init with take of SearchResultItem?(a5, a9 + v20[6], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v21 = (a9 + v20[7]);
  *v21 = a6;
  v21[1] = a7;
  v22 = (a9 + v20[8]);
  *v22 = a8;
  v22[1] = a10;
  *(a9 + v20[9]) = a11;
  outlined init with take of SearchResultItem?(a12, a9 + v20[10], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  *(a9 + v20[11]) = a13;
  result = outlined init with take of SearchResultItem?(a14, a9 + v20[12], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(a9 + v20[13]) = a15;
  return result;
}

uint64_t SearchSpotlightEntity.id.getter()
{
  v0 = type metadata accessor for SearchSpotlightEntity(0);
  OUTLINED_FUNCTION_60_5(*(v0 + 56));
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_7_18();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static SearchSpotlightEntity.typeDisplayRepresentation);
}

uint64_t static SearchSpotlightEntity.typeDisplayRepresentation.getter()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_7_18();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchSpotlightEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v1 = *(*(v0 - 8) + 16);
  v2 = OUTLINED_FUNCTION_32_0();
  return v3(v2);
}

uint64_t static SearchSpotlightEntity.typeDisplayRepresentation.setter()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_7_18();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchSpotlightEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v1 = *(v0 - 8);
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_33_13();
  v3();
  swift_endAccess();
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_94();
  return v6(v5);
}

uint64_t (*static SearchSpotlightEntity.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_7_18();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchSpotlightEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchSpotlightEntity.typeDisplayRepresentation : SearchSpotlightEntity.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchSpotlightEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchSpotlightEntity.typeDisplayRepresentation : SearchSpotlightEntity.Type(uint64_t a1)
{
  v2 = SearchSpotlightEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t protocol witness for EntityQuery.entities(for:) in conformance SearchSpotlightEntity.Query()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for EntityQuery.entities(for:) in conformance SearchEntity.Query;

  return SearchSpotlightEntity.Query.entities(for:)();
}

uint64_t protocol witness for EntityQuery.suggestedEntities() in conformance SearchSpotlightEntity.Query(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CB9C98] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in SmartChunkingPreprocessing.preprocess(data:query:);

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t protocol witness for DynamicOptionsProvider.results() in conformance SearchSpotlightEntity.Query(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = lazy protocol witness table accessor for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query();
  *v6 = v2;
  v6[1] = protocol witness for DynamicOptionsProvider.results() in conformance SearchSpotlightEntity.Query;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t protocol witness for DynamicOptionsProvider.defaultResult() in conformance SearchSpotlightEntity.Query(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for DynamicOptionsProvider.results() in conformance SearchSpotlightEntity.Query;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t SearchSpotlightEntity.supportedTypeIdentifiersForExport.getter()
{
  OUTLINED_FUNCTION_57_6();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for SearchSpotlightEntity.supportedTypeIdentifiersForExport : SearchSpotlightEntity(uint64_t *a1)
{
  v1 = *a1;

  return SearchSpotlightEntity.supportedTypeIdentifiersForExport.setter();
}

uint64_t (*SearchSpotlightEntity.supportedTypeIdentifiersForExport.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  OUTLINED_FUNCTION_57_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t static SearchSpotlightEntity.performTransfer(to:entity:)(uint64_t a1, uint64_t a2)
{
  v77 = a1;
  v75 = type metadata accessor for UTType();
  v71 = *(v75 - 8);
  v3 = *(v71 + 64);
  v4 = MEMORY[0x28223BE20](v75);
  v70 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = &v61 - v6;
  v7 = type metadata accessor for SearchResultType();
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchTransferabilityError.Code();
  v74 = *(v11 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IntentFile();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v61 - v22;
  v24 = v78;
  v25 = _s10OmniSearch0B15SpotlightOpenerV20decodeSearchableItemySo012CSSearchableG0CxKAA0cG9ProvidingRzlFZAA0bC6EntityV_Tt0g5(a2);
  if (!v24)
  {
    v62 = v23;
    v64 = v19;
    v65 = v16;
    v63 = v15;
    v66 = a2;
    v67 = v14;
    v26 = v76;
    v68 = v10;
    v69 = v11;
    v78 = v25;
    v27 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.contentType.getter([v25 attributeSet]);
    v29 = v28;
    v30 = UTType.identifier.getter();
    if (v29)
    {
      if (v27 == v30 && v29 == v31)
      {

        v37 = v26;
        v35 = v65;
        v34 = v66;
        v36 = v64;
        goto LABEL_15;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v35 = v65;
      v34 = v66;
      v36 = v64;
      if (v33)
      {

        v37 = v76;
LABEL_15:
        v49 = v34[6];
        v50 = v62;
        EntityProperty.wrappedValue.getter();
        v51 = v63;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v63);
        v53 = v74;
        a2 = v75;
        v54 = v69;
        if (!EnumTagSinglePayload)
        {
          (*(v35 + 16))(v36, v50, v51);
          outlined destroy of IntentApplication?(v50, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
          a2 = IntentFile.data.getter();

          (*(v35 + 8))(v36, v51);
          return a2;
        }

        outlined destroy of IntentApplication?(v50, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
        (*(v53 + 104))(v67, *MEMORY[0x277D370A8], v54);
        (*(v72 + 104))(v68, *MEMORY[0x277D37088], v73);
        (*(v71 + 16))(v37, v77, a2);
        goto LABEL_19;
      }
    }

    else
    {
    }

    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logging.search);
    v40 = v70;
    v39 = v71;
    v41 = v75;
    v66 = *(v71 + 16);
    (v66)(v70, v77, v75);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v79 = v65;
      *v44 = 136315394;
      v45 = v40;
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v44 + 4) = v46;
      *(v44 + 12) = 2080;
      lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type UTType and conformance UTType);
      dispatch thunk of CustomStringConvertible.description.getter();
      (*(v39 + 8))(v45, v41);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v44 + 14) = v47;
      _os_log_impl(&dword_25D85C000, v42, v43, "Transferable: Spotlight %s does not match requested contentType %s", v44, 0x16u);
      v48 = v65;
      swift_arrayDestroy();
      MEMORY[0x25F8A1050](v48, -1, -1);
      MEMORY[0x25F8A1050](v44, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v40, v41);
    }

    v55 = v76;
    v56 = v68;
    v58 = v72;
    v57 = v73;
    (*(v74 + 104))(v67, *MEMORY[0x277D370B0], v69);
    v59 = *(v58 + 104);
    a2 = v58 + 104;
    v59(v56, *MEMORY[0x277D37088], v57);
    (v66)(v55, v77, v41);
LABEL_19:
    type metadata accessor for SearchTransferabilityError();
    lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type SearchTransferabilityError and conformance SearchTransferabilityError);
    swift_allocError();
    SearchTransferabilityError.init(code:sourceResultType:targetTransferType:)();
    swift_willThrow();
  }

  return a2;
}

void static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_155();
  v50 = v1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10OmniSearch0F15SpotlightEntityVG_A4GtMd, &_s16CoreTransferable18DataRepresentationVy10OmniSearch0F15SpotlightEntityVG_A4GtMR);
  OUTLINED_FUNCTION_17(v53);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_49_3();
  v49 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for UTType();
  v11 = OUTLINED_FUNCTION_17(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10OmniSearch0F15SpotlightEntityVGMd, &_s16CoreTransferable18DataRepresentationVy10OmniSearch0F15SpotlightEntityVGMR);
  v15 = OUTLINED_FUNCTION_14(v14);
  v52 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_109();
  v45 = v19 - v20;
  v22 = MEMORY[0x28223BE20](v21);
  v46 = &v44 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v47 = &v44 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v48 = &v44 - v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_59_7();
  v51 = v0;
  static UTType.data.getter();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v10);
  UTType.init(exportedAs:conformingTo:)();
  type metadata accessor for SearchSpotlightEntity(0);
  OUTLINED_FUNCTION_1_36();
  lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(v31);
  OUTLINED_FUNCTION_19_12();
  static UTType.emailMessage.getter();
  OUTLINED_FUNCTION_19_12();
  static UTType.message.getter();
  OUTLINED_FUNCTION_19_12();
  static UTType.calendarEvent.getter();
  OUTLINED_FUNCTION_19_12();
  static UTType.contact.getter();
  OUTLINED_FUNCTION_19_12();
  v32 = v53[12];
  v33 = v53[16];
  v34 = v53[20];
  v44 = v53[24];
  v35 = *(v52 + 16);
  v36 = v49;
  v35(v49, v51, v14);
  v37 = v48;
  v35(v36 + v32, v48, v14);
  v38 = v36 + v33;
  v39 = v47;
  v35(v38, v47, v14);
  v40 = v36 + v34;
  v41 = v46;
  v35(v40, v46, v14);
  v42 = v45;
  v35(v36 + v44, v45, v14);
  OUTLINED_FUNCTION_107();
  TupleTransferRepresentation.init(_:)();
  v43 = *(v52 + 8);
  v43(v42, v14);
  v43(v41, v14);
  v43(v39, v14);
  v43(v37, v14);
  v43(v51, v14);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in static SearchSpotlightEntity.transferRepresentation.getter(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for UTType();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for SearchResultType();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = type metadata accessor for SearchTransferabilityError.Code();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = type metadata accessor for IntentFile();
  v1[15] = v11;
  v12 = *(v11 - 8);
  v1[16] = v12;
  v13 = *(v12 + 64) + 15;
  v1[17] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static SearchSpotlightEntity.transferRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(v0[5] + 40);
  EntityProperty.wrappedValue.getter();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v5 = v0[18];
  if (EnumTagSinglePayload)
  {
    v7 = v0[13];
    v6 = v0[14];
    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[9];
    v11 = v0[10];
    outlined destroy of IntentApplication?(v0[18], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    (*(v7 + 104))(v6, *MEMORY[0x277D370A8], v8);
    (*(v11 + 104))(v9, *MEMORY[0x277D37088], v10);
    if (one-time initialization token for searchToolExportedExperiences != -1)
    {
      OUTLINED_FUNCTION_38_11();
    }

    v12 = v0[17];
    v13 = v0[18];
    v14 = v0[14];
    v15 = v0[11];
    v17 = v0[7];
    v16 = v0[8];
    v18 = v0[6];
    v19 = __swift_project_value_buffer(v18, static UTType.searchToolExportedExperiences);
    swift_beginAccess();
    (*(v17 + 16))(v16, v19, v18);
    type metadata accessor for SearchTransferabilityError();
    lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type SearchTransferabilityError and conformance SearchTransferabilityError);
    swift_allocError();
    OUTLINED_FUNCTION_33_13();
    SearchTransferabilityError.init(code:sourceResultType:targetTransferType:)();
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[16];
    v24 = v0[14];
    v23 = v0[15];
    v25 = v0[11];
    v26 = v0[8];
    v27 = *(v22 + 16);
    v28 = OUTLINED_FUNCTION_107();
    v29(v28);
    outlined destroy of IntentApplication?(v5, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    v30 = IntentFile.data.getter();
    v32 = v31;
    v33 = *(v22 + 8);
    v34 = OUTLINED_FUNCTION_88();
    v35(v34);

    v36 = v0[1];

    return v36(v30, v32);
  }
}

uint64_t closure #2 in static SearchSpotlightEntity.transferRepresentation.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UTType();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in static SearchSpotlightEntity.transferRepresentation.getter, 0, 0);
}

void closure #2 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_38_14();
  static UTType.emailMessage.getter();
  v0 = OUTLINED_FUNCTION_107();
  static SearchSpotlightEntity.performTransfer(to:entity:)(v0, v1);
  OUTLINED_FUNCTION_34_16();
  v3 = OUTLINED_FUNCTION_37_9(v2);
  v4(v3);

  OUTLINED_FUNCTION_14_12();
  OUTLINED_FUNCTION_85_7();

  __asm { BRAA            X3, X16 }
}

uint64_t closure #3 in static SearchSpotlightEntity.transferRepresentation.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UTType();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #3 in static SearchSpotlightEntity.transferRepresentation.getter, 0, 0);
}

void closure #3 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_38_14();
  static UTType.message.getter();
  v0 = OUTLINED_FUNCTION_107();
  static SearchSpotlightEntity.performTransfer(to:entity:)(v0, v1);
  OUTLINED_FUNCTION_34_16();
  v3 = OUTLINED_FUNCTION_37_9(v2);
  v4(v3);

  OUTLINED_FUNCTION_14_12();
  OUTLINED_FUNCTION_85_7();

  __asm { BRAA            X3, X16 }
}

uint64_t closure #4 in static SearchSpotlightEntity.transferRepresentation.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UTType();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #4 in static SearchSpotlightEntity.transferRepresentation.getter, 0, 0);
}

void closure #4 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_38_14();
  static UTType.calendarEvent.getter();
  v0 = OUTLINED_FUNCTION_107();
  static SearchSpotlightEntity.performTransfer(to:entity:)(v0, v1);
  OUTLINED_FUNCTION_34_16();
  v3 = OUTLINED_FUNCTION_37_9(v2);
  v4(v3);

  OUTLINED_FUNCTION_14_12();
  OUTLINED_FUNCTION_85_7();

  __asm { BRAA            X3, X16 }
}

uint64_t closure #5 in static SearchSpotlightEntity.transferRepresentation.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UTType();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #5 in static SearchSpotlightEntity.transferRepresentation.getter, 0, 0);
}

void closure #5 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_38_14();
  static UTType.contact.getter();
  v0 = OUTLINED_FUNCTION_107();
  static SearchSpotlightEntity.performTransfer(to:entity:)(v0, v1);
  OUTLINED_FUNCTION_34_16();
  v3 = OUTLINED_FUNCTION_37_9(v2);
  v4(v3);

  OUTLINED_FUNCTION_14_12();
  OUTLINED_FUNCTION_85_7();

  __asm { BRAA            X3, X16 }
}

uint64_t SearchSpotlightEntity.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6174614464726163 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746E656D75636F64 && a2 == 0xEE00656372756F53;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65697265707865 && a2 == 0xEE00656C69466563;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x800000025DBF21C0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6D6D6F436E65706FLL && a2 == 0xEB00000000646E61;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x800000025DBF21E0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6552656372756F73 && a2 == 0xEC000000746C7573;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 25705 && a2 == 0xE200000000000000;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000021 && 0x800000025DBF1950 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t SearchSpotlightEntity.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x6174614464726163;
      break;
    case 2:
      result = 0x746E656D75636F64;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x6E65697265707865;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x4C5255656C6966;
      break;
    case 7:
      result = 0x6D6D6F436E65706FLL;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6552656372756F73;
      break;
    case 10:
      result = 25705;
      break;
    case 11:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchSpotlightEntity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchSpotlightEntity.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchSpotlightEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchSpotlightEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchSpotlightEntity.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E15SpotlightEntityV10CodingKeys33_0679578E6E16257B977A964AA59C93FBLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E15SpotlightEntityV10CodingKeys33_0679578E6E16257B977A964AA59C93FBLLOGMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_59_4();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  lazy protocol witness table accessor for type EntityProperty<String?> and conformance <> EntityProperty<A>();
  OUTLINED_FUNCTION_8_18();
  if (!v2)
  {
    v22 = v4[1];
    v30 = v4[2];
    outlined copy of Data?(v22, v30);
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v22, v30);
    v23 = v4[3];
    OUTLINED_FUNCTION_8_18();
    v24 = v4[4];
    OUTLINED_FUNCTION_8_18();
    v25 = v4[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
    lazy protocol witness table accessor for type EntityProperty<IntentFile?> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_8_18();
    v26 = v4[6];
    OUTLINED_FUNCTION_8_18();
    v27 = v4[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
    lazy protocol witness table accessor for type EntityProperty<URL?> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v28 = v4[8];
    OUTLINED_FUNCTION_8_18();
    v13 = v4[9];
    v14 = v4[10];
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = type metadata accessor for SearchSpotlightEntity(0);
    v16 = v15[13];
    type metadata accessor for SearchResult(0);
    lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type SearchResult and conformance SearchResult);
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = (v4 + v15[14]);
    v18 = *v17;
    v19 = v17[1];
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = *(v4 + v15[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
    lazy protocol witness table accessor for type EntityProperty<[String]> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

void static SearchSpotlightEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_2();
  v4 = type metadata accessor for URL();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v168 = v11 - v10;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_17(v171);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v165 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v18 = OUTLINED_FUNCTION_114(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  v169 = v21;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v22);
  v177 = &v165 - v23;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_2();
  v178 = v25;
  v26 = OUTLINED_FUNCTION_78_0();
  v175 = type metadata accessor for SearchResult(v26);
  v27 = OUTLINED_FUNCTION_17(v175);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_36();
  v170 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_49_3();
  v172 = v36;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSg_ADtMd, &_s10OmniSearch0B6ResultVSg_ADtMR);
  OUTLINED_FUNCTION_17(v174);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_49_3();
  v176 = v40;
  OUTLINED_FUNCTION_78_0();
  v41 = type metadata accessor for IntentFile();
  v42 = OUTLINED_FUNCTION_14(v41);
  v179 = v43;
  v180 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_36();
  v48 = v47 - v46;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSg_ADtMd, &_s10AppIntents10IntentFileVSg_ADtMR);
  OUTLINED_FUNCTION_17(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_49_3();
  v181 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v55 = OUTLINED_FUNCTION_114(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_109();
  v60 = v58 - v59;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v62);
  v173 = type metadata accessor for SearchSpotlightEntity(0);
  v63 = *(v173 + 56);
  v182 = v0;
  v183 = v3;
  v64 = *(v0 + v63);
  v65 = *(v0 + v63 + 8);
  v66 = (v3 + v63);
  v67 = v64 == *v66 && v65 == v66[1];
  if (!v67 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_39;
  }

  v166 = v4;
  v167 = v7;
  v165 = v16;
  v68 = v182;
  v69 = *v182;
  EntityProperty.wrappedValue.getter();
  v71 = v184;
  v70 = v185;
  v72 = *v183;
  EntityProperty.wrappedValue.getter();
  if (v70)
  {
    if (!v185)
    {
      goto LABEL_38;
    }

    if (v71 == v184 && v70 == v185)
    {
    }

    else
    {
      v74 = OUTLINED_FUNCTION_53_8();

      if ((v74 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v185)
  {
    goto LABEL_38;
  }

  v75 = v68[4];
  EntityProperty.wrappedValue.getter();
  v77 = v184;
  v76 = v185;
  v78 = v183[4];
  EntityProperty.wrappedValue.getter();
  if (v76)
  {
    if (!v185)
    {
      goto LABEL_38;
    }

    if (v77 == v184 && v76 == v185)
    {
    }

    else
    {
      v80 = OUTLINED_FUNCTION_53_8();

      if ((v80 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v185)
  {
    goto LABEL_38;
  }

  v81 = v68[3];
  EntityProperty.wrappedValue.getter();
  v83 = v184;
  v82 = v185;
  v84 = v183[3];
  EntityProperty.wrappedValue.getter();
  if (!v82)
  {
    if (!v185)
    {
      goto LABEL_41;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (!v185)
  {
    goto LABEL_38;
  }

  if (v83 == v184 && v82 == v185)
  {
  }

  else
  {
    v86 = OUTLINED_FUNCTION_53_8();

    if ((v86 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_41:
  v87 = v68[10];
  v88 = v183[10];
  if (v87)
  {
    v89 = v167;
    if (!v88)
    {
      goto LABEL_39;
    }

    v90 = v68[9] == v183[9] && v87 == v88;
    if (!v90 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v89 = v167;
    if (v88)
    {
      goto LABEL_39;
    }
  }

  v91 = v68[6];
  EntityProperty.wrappedValue.getter();
  v92 = v183[6];
  EntityProperty.wrappedValue.getter();
  v93 = *(v49 + 48);
  v94 = v181;
  OUTLINED_FUNCTION_33_13();
  outlined init with copy of SpotlightRankingItem?(v95, v96, v97, &_s10AppIntents10IntentFileVSgMR);
  outlined init with copy of SpotlightRankingItem?(v1, v94 + v93, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v98 = v180;
  OUTLINED_FUNCTION_166(v94, 1, v180);
  if (v67)
  {
    outlined destroy of IntentApplication?(v1, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    v99 = OUTLINED_FUNCTION_62_3();
    v100 = v181;
    outlined destroy of IntentApplication?(v99, v101, &_s10AppIntents10IntentFileVSgMR);
    OUTLINED_FUNCTION_166(v100 + v93, 1, v98);
    if (v67)
    {
      outlined destroy of IntentApplication?(v100, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
      goto LABEL_60;
    }

LABEL_58:
    v109 = &_s10AppIntents10IntentFileVSg_ADtMd;
    v110 = &_s10AppIntents10IntentFileVSg_ADtMR;
    v111 = v100;
LABEL_79:
    outlined destroy of IntentApplication?(v111, v109, v110);
    goto LABEL_39;
  }

  outlined init with copy of SpotlightRankingItem?(v94, v60, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  OUTLINED_FUNCTION_166(v94 + v93, 1, v98);
  if (v102)
  {
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v103, v104, v105);
    OUTLINED_FUNCTION_33_13();
    v100 = v181;
    outlined destroy of IntentApplication?(v106, v107, v108);
    (*(v179 + 8))(v60, v98);
    goto LABEL_58;
  }

  v112 = v179;
  (*(v179 + 32))(v48, v94 + v93, v98);
  lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type IntentFile and conformance IntentFile);
  v113 = dispatch thunk of static Equatable.== infix(_:_:)();
  v114 = *(v112 + 8);
  v114(v48, v98);
  outlined destroy of IntentApplication?(v1, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v115 = OUTLINED_FUNCTION_34_11();
  outlined destroy of IntentApplication?(v115, v116, &_s10AppIntents10IntentFileVSgMR);
  v117 = OUTLINED_FUNCTION_53_3();
  (v114)(v117);
  v89 = v167;
  outlined destroy of IntentApplication?(v181, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  if ((v113 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_60:
  v118 = *(v173 + 52);
  v119 = *(v174 + 48);
  v120 = v176;
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of SpotlightRankingItem?(v121, v122, v123, v124);
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of SpotlightRankingItem?(v125, v126, v127, v128);
  v129 = v175;
  OUTLINED_FUNCTION_166(v120, 1, v175);
  if (!v67)
  {
    outlined init with copy of SpotlightRankingItem?(v120, v172, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    OUTLINED_FUNCTION_166(v120 + v119, 1, v129);
    v131 = v165;
    v130 = v166;
    v133 = v177;
    v132 = v178;
    if (!v134)
    {
      _s10OmniSearch0B15SpotlightEntityVWObTm_0(v120 + v119, v170, type metadata accessor for SearchResult);
      static SearchResult.== infix(_:_:)();
      v136 = v135;
      _s10OmniSearch0B10ResultItemOWOhTm_4();
      OUTLINED_FUNCTION_37_5();
      _s10OmniSearch0B10ResultItemOWOhTm_4();
      outlined destroy of IntentApplication?(v120, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      if ((v136 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_70;
    }

    OUTLINED_FUNCTION_0_35();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_166(v120 + v119, 1, v129);
  v131 = v165;
  v130 = v166;
  v133 = v177;
  v132 = v178;
  if (!v67)
  {
LABEL_68:
    v109 = &_s10OmniSearch0B6ResultVSg_ADtMd;
    v110 = &_s10OmniSearch0B6ResultVSg_ADtMR;
    v111 = v120;
    goto LABEL_79;
  }

  outlined destroy of IntentApplication?(v120, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
LABEL_70:
  v137 = v182[7];
  EntityProperty.wrappedValue.getter();
  v138 = v183[7];
  EntityProperty.wrappedValue.getter();
  v139 = *(v171 + 48);
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of SpotlightRankingItem?(v140, v141, v142, v143);
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of SpotlightRankingItem?(v144, v145, v146, v147);
  OUTLINED_FUNCTION_166(v131, 1, v130);
  if (!v67)
  {
    v154 = v169;
    outlined init with copy of SpotlightRankingItem?(v131, v169, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_166(v131 + v139, 1, v130);
    if (!v155)
    {
      v162 = v131 + v139;
      v163 = v168;
      (*(v89 + 32))(v168, v162, v130);
      lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type URL and conformance URL);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v164 = *(v89 + 8);
      v164(v163, v130);
      outlined destroy of IntentApplication?(v133, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of IntentApplication?(v132, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v164(v154, v130);
      outlined destroy of IntentApplication?(v131, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v156, v157, v158);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v159, v160, v161);
    (*(v89 + 8))(v154, v130);
    goto LABEL_78;
  }

  OUTLINED_FUNCTION_33_13();
  outlined destroy of IntentApplication?(v148, v149, v150);
  OUTLINED_FUNCTION_33_13();
  outlined destroy of IntentApplication?(v151, v152, v153);
  OUTLINED_FUNCTION_166(v131 + v139, 1, v130);
  if (!v67)
  {
LABEL_78:
    v109 = &_s10Foundation3URLVSg_ADtMd;
    v110 = &_s10Foundation3URLVSg_ADtMR;
    v111 = v131;
    goto LABEL_79;
  }

  outlined destroy of IntentApplication?(v131, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_39:
  OUTLINED_FUNCTION_148();
}

uint64_t (*protocol witness for SpotlightItemProviding.encodedSearchableItem.modify in conformance SearchSpotlightEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 48);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*protocol witness for SpotlightItemProviding.openCommand.modify in conformance SearchSpotlightEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 64);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchSpotlightEntity@<X0>(uint64_t *a1@<X8>)
{
  result = SearchSpotlightEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchSpotlightEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type SearchSpotlightEntity and conformance SearchSpotlightEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for InstanceDisplayRepresentable.displayRepresentation(with:) in conformance SearchSpotlightEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in SmartChunkingPreprocessing.preprocess(data:query:);

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchSpotlightEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type SearchSpotlightEntity and conformance SearchSpotlightEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

Swift::Int SearchSpotlightEntity.SearchSpotlightEntityError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](v1);
  return Hasher._finalize()();
}

uint64_t CSSearchableItem.isMailMessageItem.getter()
{
  v1 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v0);
  if (!v2)
  {
    goto LABEL_7;
  }

  if (v1 == 0xD000000000000014 && v2 == 0x800000025DBF1CF0)
  {
    goto LABEL_20;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v4 & 1) == 0)
  {
LABEL_7:
    v5 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v0);
    if (v6)
    {
      if (v5 == 0xD00000000000001DLL && v6 == 0x800000025DBF2150)
      {
        goto LABEL_20;
      }

      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        goto LABEL_13;
      }
    }

    v10 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v0);
    if (!v11)
    {
      v9 = 0;
      return v9 & 1;
    }

    if (v10 != 0xD000000000000013 || v11 != 0x800000025DBF1D10)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_21:

      return v9 & 1;
    }

LABEL_20:
    v9 = 1;
    goto LABEL_21;
  }

LABEL_13:
  v9 = 1;
  return v9 & 1;
}

void SearchSpotlightEntity.asNLGEntity.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = OUTLINED_FUNCTION_114(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_109();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v16 = OUTLINED_FUNCTION_114(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v19);
  v21 = v40 - v20;
  SearchNLGEntity.init()(v4);
  v22 = *(v0 + 32);
  EntityProperty.wrappedValue.getter();
  v23 = v4[1];
  EntityProperty.wrappedValue.setter();
  v24 = *(v2 + 24);
  EntityProperty.wrappedValue.getter();
  v25 = *v4;
  EntityProperty.wrappedValue.setter();
  v26 = *(type metadata accessor for SearchSpotlightEntity(0) + 52);
  outlined init with copy of SpotlightRankingItem?(v2 + v26, v21, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v27 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_166(v21, 1, v27);
  if (v28)
  {
    outlined destroy of IntentApplication?(v21, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v31 = 0;
  }

  else
  {
    v29 = *(v27 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v30 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_0_35();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    v31 = CSSearchableItem.senderNames.getter();
  }

  v32 = v4[2];
  v40[0] = v31;
  EntityProperty.wrappedValue.setter();
  outlined init with copy of SpotlightRankingItem?(v2 + v26, v1, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_166(v1, 1, v27);
  if (v28)
  {
    outlined destroy of IntentApplication?(v1, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }

  else
  {
    v37 = *(v27 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v38 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_0_35();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    CSSearchableItem.contentCreationDate.getter(v14);
  }

  v39 = v4[3];
  outlined init with copy of SpotlightRankingItem?(v14, v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_148();
}

void SearchSpotlightEntity.asCATEntity.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = OUTLINED_FUNCTION_114(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_39_0();
  v50 = v9;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_2();
  v49 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v13 = OUTLINED_FUNCTION_114(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  SearchCATEntity.init()(v4);
  v22 = *(v0 + 24);
  EntityProperty.wrappedValue.getter();
  v24 = v51;
  v23 = v52;
  v25 = type metadata accessor for SearchCATEntity();
  v26 = *(v4 + v25[5]);
  v51 = v24;
  v52 = v23;
  EntityProperty.wrappedValue.setter();
  v27 = *(type metadata accessor for SearchSpotlightEntity(0) + 52);
  outlined init with copy of SpotlightRankingItem?(v2 + v27, v21, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v28 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_166(v21, 1, v28);
  if (v29)
  {
    outlined destroy of IntentApplication?(v21, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    SearchResultItem.type.getter(&v51);
    OUTLINED_FUNCTION_0_35();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    SearchResultKey.rawValue.getter();
  }

  v32 = *(v4 + v25[17]);
  v51 = v30;
  v52 = v31;
  EntityProperty.wrappedValue.setter();
  v33 = *(v2 + 32);
  EntityProperty.wrappedValue.getter();
  v34 = *(v4 + v25[6]);
  EntityProperty.wrappedValue.setter();
  outlined init with copy of SpotlightRankingItem?(v2 + v27, v19, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_166(v19, 1, v28);
  if (v29)
  {
    outlined destroy of IntentApplication?(v19, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v37 = 0;
  }

  else
  {
    v35 = *(v28 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v36 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_0_35();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    v37 = CSSearchableItem.senderNames.getter();
  }

  v38 = *(v4 + v25[8]);
  v51 = v37;
  EntityProperty.wrappedValue.setter();
  outlined init with copy of SpotlightRankingItem?(v2 + v27, v1, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_166(v1, 1, v28);
  if (v29)
  {
    outlined destroy of IntentApplication?(v1, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    type metadata accessor for Date();
    v45 = v49;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  }

  else
  {
    v43 = *(v28 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v44 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_0_35();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    v45 = v49;
    CSSearchableItem.contentCreationDate.getter(v49);
  }

  v46 = *(v4 + v25[7]);
  outlined init with copy of SpotlightRankingItem?(v45, v50, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  v47 = OUTLINED_FUNCTION_53_3();
  outlined destroy of IntentApplication?(v47, v48, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_148();
}

uint64_t protocol witness for SearchCATEntityConvertible.asCATEntity.getter in conformance SearchSpotlightEntity()
{
  SearchSpotlightEntity.asCATEntity.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)()
{
  type metadata accessor for UTType();
  lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type UTType and conformance UTType);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorNames.getter(void *a1)
{
  v2 = [a1 authorNames];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_67_8();
  }

  return OUTLINED_FUNCTION_88();
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_5(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_4()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v3 = v2(v1);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t partial apply for closure #2 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_73(v1);

  return closure #2 in static SearchSpotlightEntity.transferRepresentation.getter(v3);
}

{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_52();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v1, v0);
}

uint64_t partial apply for closure #3 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_73(v1);

  return closure #3 in static SearchSpotlightEntity.transferRepresentation.getter(v3);
}

uint64_t partial apply for closure #4 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_73(v1);

  return closure #4 in static SearchSpotlightEntity.transferRepresentation.getter(v3);
}

uint64_t partial apply for closure #5 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_73(v1);

  return closure #5 in static SearchSpotlightEntity.transferRepresentation.getter(v3);
}

unint64_t lazy protocol witness table accessor for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityProperty<URL?> and conformance <> EntityProperty<A>()
{
  result = lazy protocol witness table cache variable for type EntityProperty<URL?> and conformance <> EntityProperty<A>;
  if (!lazy protocol witness table cache variable for type EntityProperty<URL?> and conformance <> EntityProperty<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
    lazy protocol witness table accessor for type URL? and conformance <A> A?();
    lazy protocol witness table accessor for type URL? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityProperty<URL?> and conformance <> EntityProperty<A>);
  }

  return result;
}

uint64_t _s10OmniSearch0B15SpotlightEntityVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query()
{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SearchSpotlightEntity] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SearchSpotlightEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchSpotlightEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B15SpotlightEntityVGMd, &_sSay10OmniSearch0B15SpotlightEntityVGMR);
    lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type SearchSpotlightEntity and conformance SearchSpotlightEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchSpotlightEntity] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchSpotlightEntity.SearchSpotlightEntityError and conformance SearchSpotlightEntity.SearchSpotlightEntityError()
{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.SearchSpotlightEntityError and conformance SearchSpotlightEntity.SearchSpotlightEntityError;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.SearchSpotlightEntityError and conformance SearchSpotlightEntity.SearchSpotlightEntityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.SearchSpotlightEntityError and conformance SearchSpotlightEntity.SearchSpotlightEntityError);
  }

  return result;
}

uint64_t type metadata completion function for SearchSpotlightEntity()
{
  type metadata accessor for EntityProperty<String?>();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?);
    if (v4 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for EntityProperty<URL?>(319, &lazy cache variable for type metadata for EntityProperty<IntentFile?>, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR, lazy protocol witness table accessor for type IntentFile? and conformance <A> A?);
    v1 = v5;
    if (v6 > 0x3F)
    {
      return v1;
    }

    type metadata accessor for EntityProperty<URL?>(319, &lazy cache variable for type metadata for EntityProperty<URL?>, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR, lazy protocol witness table accessor for type URL? and conformance <A> A?);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
      v1 = v8;
      if (v9 <= 0x3F)
      {
        _s10OmniSearch0B6ResultVSgMaTm_0(319, &lazy cache variable for type metadata for SearchResult?, type metadata accessor for SearchResult, MEMORY[0x277D83D88]);
        v1 = v10;
        if (v11 <= 0x3F)
        {
          type metadata accessor for EntityProperty<[String]>();
          v1 = v12;
          if (v13 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void type metadata accessor for EntityProperty<URL?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for EntityProperty();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata completion function for SearchSpotlightEntity.Builder()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _s10OmniSearch0B6ResultVSgMaTm_0(319, &lazy cache variable for type metadata for IntentFile?, MEMORY[0x277CB9C50], MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      type metadata accessor for SFCommand?(319, &lazy cache variable for type metadata for SFCard?, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        _s10OmniSearch0B6ResultVSgMaTm_0(319, &lazy cache variable for type metadata for SearchResult?, type metadata accessor for SearchResult, MEMORY[0x277D83D88]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          _s10OmniSearch0B6ResultVSgMaTm_0(319, &lazy cache variable for type metadata for [DialogExperience], type metadata accessor for DialogExperience, MEMORY[0x277D83940]);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            _s10OmniSearch0B6ResultVSgMaTm_0(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              type metadata accessor for SFCommand?(319, &lazy cache variable for type metadata for SFCommand?, &lazy cache variable for type metadata for SFCommand, 0x277D4C2A8);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void _s10OmniSearch0B6ResultVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for SFCommand?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for TRIClient(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchSpotlightEntity.Query(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchSpotlightEntity.SearchSpotlightEntityError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchSpotlightEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_19_12()
{

  return DataRepresentation.init(exportedContentType:exporting:)();
}

uint64_t OUTLINED_FUNCTION_26_10()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_34_16()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
}

uint64_t OUTLINED_FUNCTION_53_8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_57_6()
{
  result = type metadata accessor for SearchSpotlightEntity(0);
  v2 = *(v0 + *(result + 60));
  return result;
}

void OUTLINED_FUNCTION_71_7()
{
  v2 = *(v0 + 16) + 1;

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void OUTLINED_FUNCTION_84_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t SearchSpotlightStandardRepresentation.init(bundleIdentifier:typeName:instanceIdentifier:title:sourceResult:cardData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v13 = type metadata accessor for SearchSpotlightStandardRepresentation();
  result = outlined init with take of SearchResult?(a10, a9 + *(v13 + 32));
  v15 = (a9 + *(v13 + 36));
  *v15 = a11;
  v15[1] = a12;
  return result;
}

uint64_t type metadata accessor for SearchSpotlightStandardRepresentation()
{
  result = type metadata singleton initialization cache for SearchSpotlightStandardRepresentation;
  if (!type metadata singleton initialization cache for SearchSpotlightStandardRepresentation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchSpotlightStandardRepresentation.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightStandardRepresentation.typeName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightStandardRepresentation.instanceIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightStandardRepresentation.title.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightStandardRepresentation.sourceResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchSpotlightStandardRepresentation() + 32);

  return outlined init with copy of SearchResult?(v3, a1);
}

uint64_t SearchSpotlightStandardRepresentation.cardData.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchSpotlightStandardRepresentation() + 36));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v4, v5);
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightStandardRepresentation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000025DBF2260 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x800000025DBF2280 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6552656372756F73 && a2 == 0xEC000000746C7573;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6174614464726163 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t SearchSpotlightStandardRepresentation.CodingKeys.stringValue.getter(char a1)
{
  result = 0x656D614E65707974;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x6552656372756F73;
      break;
    case 5:
      result = 0x6174614464726163;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchSpotlightStandardRepresentation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchSpotlightStandardRepresentation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SearchSpotlightStandardRepresentation.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SearchSpotlightStandardRepresentation.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchSpotlightStandardRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchSpotlightStandardRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchSpotlightStandardRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E31SpotlightStandardRepresentationV10CodingKeys33_124B88CE2B1BA6126962FF5F71B57CFALLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E31SpotlightStandardRepresentationV10CodingKeys33_124B88CE2B1BA6126962FF5F71B57CFALLOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = v3[1];
  OUTLINED_FUNCTION_1_37();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    OUTLINED_FUNCTION_1_37();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[4];
    v17 = v3[5];
    OUTLINED_FUNCTION_1_37();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[6];
    v19 = v3[7];
    OUTLINED_FUNCTION_1_37();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = type metadata accessor for SearchSpotlightStandardRepresentation();
    v21 = *(v20 + 32);
    type metadata accessor for SearchResult(0);
    OUTLINED_FUNCTION_3_27();
    _s10OmniSearch0B6ResultVACSEAAWlTm_3(v22, v23);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24 = (v3 + *(v20 + 36));
    v29 = *v24;
    v30 = v24[1];
    outlined copy of Data?(*v24, v30);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v29, v30);
  }

  v25 = *(v7 + 8);
  v26 = OUTLINED_FUNCTION_1_28();
  return v27(v26);
}

unint64_t lazy protocol witness table accessor for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys);
  }

  return result;
}

uint64_t SearchSpotlightStandardRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E31SpotlightStandardRepresentationV10CodingKeys33_124B88CE2B1BA6126962FF5F71B57CFALLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E31SpotlightStandardRepresentationV10CodingKeys33_124B88CE2B1BA6126962FF5F71B57CFALLOGMR);
  OUTLINED_FUNCTION_14(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  v40 = type metadata accessor for SearchSpotlightStandardRepresentation();
  OUTLINED_FUNCTION_51(v40);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v21 = (v20 - v19);
  v23 = a1[3];
  v22 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  lazy protocol witness table accessor for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  v38 = v9;
  v24 = v12;
  LOBYTE(v42) = 0;
  OUTLINED_FUNCTION_2_22();
  *v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v21[1] = v25;
  LOBYTE(v42) = 1;
  OUTLINED_FUNCTION_2_22();
  v21[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v21[3] = v26;
  LOBYTE(v42) = 2;
  OUTLINED_FUNCTION_2_22();
  v21[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v21[5] = v27;
  LOBYTE(v42) = 3;
  OUTLINED_FUNCTION_2_22();
  v21[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21[7] = v28;
  type metadata accessor for SearchResult(0);
  LOBYTE(v42) = 4;
  OUTLINED_FUNCTION_3_27();
  _s10OmniSearch0B6ResultVACSEAAWlTm_3(v29, v30);
  v31 = v38;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v32 = v31;
  v33 = v40;
  outlined init with take of SearchResult?(v32, v21 + *(v40 + 32));
  v43 = 5;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v34 = *(v24 + 8);
  v35 = OUTLINED_FUNCTION_10_16();
  v36(v35);
  *(v21 + *(v33 + 36)) = v42;
  outlined init with copy of SearchSpotlightStandardRepresentation(v21, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  return outlined destroy of SearchSpotlightStandardRepresentation(v21);
}

uint64_t outlined init with copy of SearchSpotlightStandardRepresentation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchSpotlightStandardRepresentation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchSpotlightStandardRepresentation(uint64_t a1)
{
  v2 = type metadata accessor for SearchSpotlightStandardRepresentation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SearchSpotlightStandardRepresentation.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchSpotlightStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  OUTLINED_FUNCTION_51(v2);
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static SearchSpotlightStandardRepresentation.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchSpotlightStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_94();
  return v7(v6);
}

uint64_t (*static SearchSpotlightStandardRepresentation.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchSpotlightStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t static SearchSpotlightStandardRepresentation.defaultResolverSpecification.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultResolverSpecification != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G31SpotlightStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G31SpotlightStandardRepresentationVGMR);
  __swift_project_value_buffer(v2, static SearchSpotlightStandardRepresentation.defaultResolverSpecification);
  OUTLINED_FUNCTION_51(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t SearchSpotlightStandardRepresentation.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v84 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  v89 = &v84 - v14;
  v15 = type metadata accessor for SearchSpotlightStandardRepresentation();
  OUTLINED_FUNCTION_51(v15);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  v87 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v84 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v26);
  v86 = &v84 - v27;
  v28 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v29 = OUTLINED_FUNCTION_114(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_36();
  v92 = type metadata accessor for LocalizedStringResource();
  v32 = OUTLINED_FUNCTION_14(v92);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_39_0();
  v91 = v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v84 - v39;
  v41 = *(v1 + 56);
  if (v41)
  {
    v42 = v22;
    v43 = v15;
    v44 = a1;
    v45 = &v84 - v39;
    v46 = *(v1 + 48);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v47);
    v48._countAndFlagsBits = v46;
    v40 = v45;
    a1 = v44;
    v15 = v43;
    v22 = v42;
    v48._object = v41;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v48);
    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v49);
    LocalizedStringResource.init(stringInterpolation:)();
  }

  else
  {
    LocalizedStringResource.init(stringLiteral:)();
  }

  v50 = (v1 + *(v15 + 36));
  v51 = v50[1];
  v90 = v40;
  if (v51 >> 60 != 15)
  {
    v85 = v9;
    v52 = *v50;
    type metadata accessor for SFCard();
    v53 = OUTLINED_FUNCTION_1_28();
    outlined copy of Data._Representation(v53, v54);
    v55 = OUTLINED_FUNCTION_1_28();
    outlined copy of Data._Representation(v55, v56);
    v57 = OUTLINED_FUNCTION_1_28();
    v59 = SFCard.init(data:)(v57, v58);
    if (v59)
    {
      v60 = v59;
      v88 = a1;
      v61 = v86;
      SFCard.snippetPluginModel.getter(v86);
      v62 = type metadata accessor for RGPluginModel();
      if (__swift_getEnumTagSinglePayload(v61, 1, v62) == 1)
      {

        v63 = OUTLINED_FUNCTION_1_28();
        outlined consume of Data?(v63, v64);
        outlined destroy of ResourceBundle?(v61, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
      }

      else
      {
        _s10OmniSearch0B6ResultVACSEAAWlTm_3(&lazy protocol witness table cache variable for type RGPluginModel and conformance RGPluginModel, MEMORY[0x277D1C540]);
        v84 = SnippetPluginModel.data.getter();
        v68 = v67;
        OUTLINED_FUNCTION_51(v62);
        (*(v69 + 8))(v61, v62);
        if (v68 >> 60 != 15)
        {
          v82 = v90;
          (*(v34 + 16))(v91, v90, v92);
          static RGPluginModel.bundleName.getter();
          DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();

          v83 = v52;
          v40 = v82;
          outlined consume of Data?(v83, v51);
          return (*(v34 + 8))(v40, v92);
        }

        v70 = OUTLINED_FUNCTION_1_28();
        outlined consume of Data?(v70, v71);
      }

      a1 = v88;
    }

    else
    {
      v65 = OUTLINED_FUNCTION_1_28();
      outlined consume of Data?(v65, v66);
    }

    v9 = v85;
    v40 = v90;
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  __swift_project_value_buffer(v72, static Logging.search);
  outlined init with copy of SearchSpotlightStandardRepresentation(v2, v22);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v93 = v76;
    *v75 = 136315138;
    outlined init with copy of SearchSpotlightStandardRepresentation(v22, v87);
    String.init<A>(describing:)();
    v88 = a1;
    outlined destroy of SearchSpotlightStandardRepresentation(v22);
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v75 + 4) = v77;
    _os_log_impl(&dword_25D85C000, v73, v74, "Unexpected fallback to use title only displayRepresentation for entity: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    v78 = v76;
    v40 = v90;
    MEMORY[0x25F8A1050](v78, -1, -1);
    MEMORY[0x25F8A1050](v75, -1, -1);
  }

  else
  {

    outlined destroy of SearchSpotlightStandardRepresentation(v22);
  }

  v79 = v92;
  (*(v34 + 16))(v91, v40, v92);
  __swift_storeEnumTagSinglePayload(v89, 1, 1, v79);
  v80 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v80);
  DisplayRepresentation.init(title:subtitle:image:)();
  return (*(v34 + 8))(v40, v92);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchSpotlightStandardRepresentation(uint64_t a1)
{
  v2 = _s10OmniSearch0B6ResultVACSEAAWlTm_3(&lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation and conformance SearchSpotlightStandardRepresentation, type metadata accessor for SearchSpotlightStandardRepresentation);

  return MEMORY[0x28210C4B8](a1, v2);
}

void SearchSpotlightStandardRepresentation.convertToEntity()()
{
  v1 = type metadata accessor for SearchSpotlightStandardRepresentation();
  v2 = OUTLINED_FUNCTION_114(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  outlined init with copy of SearchSpotlightStandardRepresentation(v0, v6 - v5);
  SearchAppEntity.init(_:)();
}

unint64_t lazy protocol witness table accessor for type EmptyResolverSpecification<SearchSpotlightStandardRepresentation> and conformance EmptyResolverSpecification<A>()
{
  result = lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchSpotlightStandardRepresentation> and conformance EmptyResolverSpecification<A>;
  if (!lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchSpotlightStandardRepresentation> and conformance EmptyResolverSpecification<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G31SpotlightStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G31SpotlightStandardRepresentationVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchSpotlightStandardRepresentation> and conformance EmptyResolverSpecification<A>);
  }

  return result;
}

uint64_t _s10OmniSearch0B6ResultVACSEAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for SearchSpotlightStandardRepresentation()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SearchResult?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchSpotlightStandardRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_36()
{

  return swift_once();
}

uint64_t static FeatureStoreDonationManager.donateSearchToolInvocation(searchToolRequest:)(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for SearchToolIntentRequest(0) + 64);
  v2 = type metadata accessor for AssistantSystemContext(0);
  result = static FeatureStoreDonationManager.validateLoggingConditions(requestId:)(*(v1 + *(v2 + 28)), *(v1 + *(v2 + 28) + 8));
  if (v4)
  {
    type metadata accessor for FeatureStoreService();
    lazy protocol witness table accessor for type SearchToolIntentRequest and conformance SearchToolIntentRequest(&lazy protocol witness table cache variable for type SearchToolIntentRequest and conformance SearchToolIntentRequest, type metadata accessor for SearchToolIntentRequest);
    lazy protocol witness table accessor for type SearchToolIntentRequest and conformance SearchToolIntentRequest(&lazy protocol witness table cache variable for type SearchToolIntentRequest and conformance SearchToolIntentRequest, type metadata accessor for SearchToolIntentRequest);
    static FeatureStoreService.insert<A>(interactionId:item:)();
  }

  return result;
}

uint64_t static FeatureStoreDonationManager.validateLoggingConditions(requestId:)(uint64_t a1, uint64_t a2)
{
  if (!AFIsInternalInstall() || (type metadata accessor for NSUserDefaults(), (static NSUserDefaults.featureStoreLogging.getter() & 1) == 0))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logging.search);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_10;
    }

    v7 = swift_slowAlloc();
    *v7 = 67109120;
    type metadata accessor for NSUserDefaults();
    *(v7 + 4) = static NSUserDefaults.featureStoreLogging.getter() & 1;
    _os_log_impl(&dword_25D85C000, v5, v6, "Skipping feature store donation because user is not internal, and/or feature store logging default is disabled: %{BOOL}d", v7, 8u);
    v8 = v7;
    goto LABEL_9;
  }

  if (!a2)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logging.search);
    v5 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v11))
    {
      goto LABEL_10;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25D85C000, v5, v11, "Skipping feature store donation because requestId is nil", v12, 2u);
    v8 = v12;
LABEL_9:
    MEMORY[0x25F8A1050](v8, -1, -1);
LABEL_10:

    return 0;
  }

  return a1;
}

uint64_t static FeatureStoreDonationManager.donateSearchToolResponse(searchToolResponse:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static FeatureStoreDonationManager.validateLoggingConditions(requestId:)(a2, a3);
  if (v4)
  {
    type metadata accessor for FeatureStoreService();
    type metadata accessor for SearchToolIntentResponse(0);
    lazy protocol witness table accessor for type SearchToolIntentRequest and conformance SearchToolIntentRequest(&lazy protocol witness table cache variable for type SearchToolIntentResponse and conformance SearchToolIntentResponse, type metadata accessor for SearchToolIntentResponse);
    lazy protocol witness table accessor for type SearchToolIntentRequest and conformance SearchToolIntentRequest(&lazy protocol witness table cache variable for type SearchToolIntentResponse and conformance SearchToolIntentResponse, type metadata accessor for SearchToolIntentResponse);
    static FeatureStoreService.insert<A>(interactionId:item:)();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SearchToolIntentRequest and conformance SearchToolIntentRequest(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SearchInAppUtil.makeSearchInAppSection(results:perAppSearchStrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v70 - v8);
  v10 = type metadata accessor for SearchEntity(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = *(a1 + 16);
  if (v17 < 7)
  {
    return v16;
  }

  v71 = a3;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v79 = 0;
  v80 = MEMORY[0x277D84F90];
  v78 = MEMORY[0x277D84F90];
  v20 = *(v12 + 84);
  v21 = *(v13 + 72);
  v74 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v75 = MEMORY[0x277D84F90];
  v76 = v21;
  v77 = a2;
  v72 = v20;
  v73 = v17;
  do
  {
    _s10OmniSearch0B6EntityVWOcTm_1();
    outlined init with copy of SearchResult?(&v15[v20], v9);
    v22 = type metadata accessor for SearchResult(0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v22) == 1)
    {
      OUTLINED_FUNCTION_0_37();
      outlined destroy of IntentApplication?(v9, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      goto LABEL_33;
    }

    v23 = *(v22 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v24 = CodableNSSecureCoding.wrappedValue.getter();
    _s10OmniSearch0B6EntityVWOhTm_1(v9, type metadata accessor for SearchResult);
    v25 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v24);
    if (!v26)
    {
      OUTLINED_FUNCTION_0_37();
      a2 = v77;
      goto LABEL_33;
    }

    v27 = v25;
    v28 = v26;
    v29 = v79;
    v30 = v75;
    v31 = *(v75 + 16);
    if (v79)
    {
      v32 = v19;

      v33 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v27, v28, v30 + 32, v31, (v29 + 16));
      v35 = v34;
      v37 = v36;

      if ((v35 & 1) == 0)
      {

        v19 = v32;
LABEL_20:
        v17 = v73;
        goto LABEL_27;
      }

      v19 = v32;
    }

    else
    {
      v33 = 0;
      v38 = (v75 + 40);
      while (v31 != v33)
      {
        v39 = *(v38 - 1) == v27 && v28 == *v38;
        if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_20;
        }

        ++v33;
        v38 += 2;
      }

      v37 = 0;
    }

    v17 = v73;
    specialized OrderedSet._appendNew(_:in:)(v27, v28, v37);

    v40 = v80;
    v41 = *(v80 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = *(v19 + 16);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v19 = v78;
    }

    v75 = v40;
    v44 = *(v19 + 16);
    if (v44 >= *(v19 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v19 = v78;
    }

    v33 = v41 - 1;
    *(v19 + 16) = v44 + 1;
    *(v19 + 8 * v44 + 32) = 0;
LABEL_27:
    v45 = swift_isUniquelyReferenced_nonNull_native();
    a2 = v77;
    if ((v45 & 1) == 0)
    {
      specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v19);
      v19 = v46;
    }

    v47 = *(v19 + 8 * v33 + 32);
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_50;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v19);
      v19 = v49;
    }

    *(v19 + 8 * v33 + 32) = v48;
    OUTLINED_FUNCTION_0_37();
    v20 = v72;
LABEL_33:
    ++v18;
  }

  while (v18 != v17);
  v50 = v79;
  v75 = v80;
  v76 = v19;
  specialized _copySequenceToContiguousArray<A>(_:)(v79, v80, v19);
  v79 = v51;
  specialized MutableCollection<>.sort(by:)(&v79);
  v52 = 0;
  v53 = v79;
  v54 = *(v79 + 16);
  v55 = v79 + 40;
  v9 = MEMORY[0x277D84F90];
LABEL_35:
  for (i = (v55 + 24 * v52); ; i += 3)
  {
    if (v54 == v52)
    {

      v16 = SearchInAppUtil.makeSearchInAppSection(_:)(v9, v71);

      return v16;
    }

    if (v52 >= *(v53 + 16))
    {
      break;
    }

    if (*(a2 + 16))
    {
      v58 = *(i - 1);
      v57 = *i;

      v59 = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v60)
      {
        v61 = (*(a2 + 56) + 16 * v59);
        v62 = v61[1];
        v73 = *v61;
        v74 = v55;

        v63 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = v9[2];
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v9 = v67;
        }

        v64 = v9[2];
        if (v64 >= v9[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v9 = v68;
        }

        ++v52;
        v9[2] = v64 + 1;
        v65 = &v9[4 * v64];
        v65[4] = v58;
        v65[5] = v57;
        v65[6] = v73;
        v65[7] = v62;
        a2 = v77;
        v50 = v63;
        v55 = v74;
        goto LABEL_35;
      }
    }

    ++v52;
  }

  __break(1u);
LABEL_50:
  __break(1u);

  __break(1u);
  return result;
}

id SearchInAppUtil.makeSearchInAppSection(_:)(int64_t *a1, uint64_t a2)
{
  v3 = 0;
  if (((*(*a2 + 80))(31) & 1) == 0)
  {
    return v3;
  }

  v4 = a1[2];
  if (!v4)
  {
    return 0;
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logging.search);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v37 = v7;
    log = v6;
    v10 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41[0] = v35;
    buf = v10;
    *v10 = 136315138;
    v42 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v11 = v9;
    v39 = a1;
    v12 = a1 + 5;
    v13 = v4;
    do
    {
      v15 = *(v12 - 1);
      v14 = *v12;
      v42 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);

      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1);
        v11 = v42;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v12 += 4;
      --v13;
    }

    while (v13);
    MEMORY[0x25F89F8A0](v11, MEMORY[0x277D837D0]);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(buf + 4) = v19;
    _os_log_impl(&dword_25D85C000, log, v37, "Attempting to generate SearchInApp section for bundles: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x25F8A1050](v35, -1, -1);
    MEMORY[0x25F8A1050](buf, -1, -1);

    v9 = MEMORY[0x277D84F90];
    a1 = v39;
  }

  else
  {
  }

  v20 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v42 = v9;
  v21 = a1 + 7;
  do
  {
    v22 = *(v21 - 1);
    v23 = *v21;
    v24 = *(v21 - 2);
    v41[0] = *(v21 - 3);
    v41[1] = v24;
    v41[2] = v22;
    v41[3] = v23;

    closure #1 in SearchInAppUtil.makeSearchInAppSection(_:)(v41, v20, &v40);

    if (v40)
    {
      MEMORY[0x25F89F850](v25);
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = v42;
    }

    v21 += 4;
    --v4;
  }

  while (v4);
  if (!specialized Array.count.getter(v9))
  {

    return 0;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = specialized Array.count.getter(v9);

    _os_log_impl(&dword_25D85C000, v26, v27, "Created SearchInApp section with %ld rows", v28, 0xCu);
    MEMORY[0x25F8A1050](v28, -1, -1);
  }

  else
  {
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D4C278]) init];
  v29 = [objc_allocWithZone(MEMORY[0x277D4C598]) init];
  [v3 setTitle_];

  v30 = [v3 title];
  if (v30)
  {
    v31 = v30;
    type metadata accessor for LocalizedString();
    v32 = static LocalizedString.localizedString(forKey:)(0xD000000000000014, 0x800000025DBF2300);
    outlined bridged method (mbnn) of @objc SFText.text.setter(v32, v33, v31);
  }

  outlined bridged method (mbnn) of @objc SFCollectionCardSection.cardSections.setter();

  return v3;
}

void closure #1 in SearchInAppUtil.makeSearchInAppSection(_:)(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v61[6] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v11 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v7, v6, 1);
  if (v3)
  {

    v12 = 0;
    goto LABEL_33;
  }

  v13 = v11;
  if (!v11)
  {
LABEL_32:
    v12 = 0;
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8190;
  *(inited + 32) = [objc_opt_self() showInAppStringSearchResultsProtocol];
  v60 = v8;
  if (specialized Array.count.getter(inited))
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16LNSystemProtocolC_Tt0g5(inited);
  }

  else
  {
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
  lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v61[0] = 0;
  v16 = outlined bridged method (mnnbgnnn) of @objc LNMetadataProvider.actionsConforming(to:logicalType:bundleIdentifier:)(isa, 1, v7, v6, v61, a2);

  v17 = v61[0];
  if (!v16)
  {
    v29 = v61[0];
    v30 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo16LNActionMetadataCGMd, &_sSDySSSo16LNActionMetadataCGMR);
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v17;

  if (!*(v18 + 16))
  {

LABEL_22:
    if (one-time initialization token for search == -1)
    {
LABEL_23:
      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logging.search);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v32, v33))
      {
LABEL_31:

        goto LABEL_32;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v61[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      v36 = "Ignoring punchout for %s because it does not have a ShowInAppStringSearchResults action";
LABEL_30:
      _os_log_impl(&dword_25D85C000, v32, v33, v36, v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x25F8A1050](v35, -1, -1);
      MEMORY[0x25F8A1050](v34, -1, -1);
      goto LABEL_31;
    }

LABEL_38:
    swift_once();
    goto LABEL_23;
  }

  v59 = v9;
  v20 = specialized Dictionary.subscript.getter(v7, v6, v18);

  if (!v20)
  {
LABEL_26:
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logging.search);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_31;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v61[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    v36 = "Ignoring punchout for %s because it is not visible for .assistant";
    goto LABEL_30;
  }

  v56 = v7;
  v57 = v13;
  v58 = a3;
  v21 = 1 << *(v20 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v20 + 64);
  a3 = ((v21 + 63) >> 6);

  v24 = 0;
  if (!v23)
  {
LABEL_14:
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v13 >= a3)
      {

        v13 = v57;
        a3 = v58;
        goto LABEL_26;
      }

      v23 = *(v20 + 64 + 8 * v13);
      ++v24;
      if (v23)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  while (1)
  {
    v13 = v24;
LABEL_17:
    v25 = __clz(__rbit64(v23)) | (v13 << 6);
    v26 = *(*(v20 + 48) + 16 * v25 + 8);
    v27 = *(*(v20 + 56) + 8 * v25);

    v28 = v27;
    if ([v28 visibleForUse_])
    {
      break;
    }

    v23 &= v23 - 1;

    v24 = v13;
    if (!v23)
    {
      goto LABEL_14;
    }
  }

  v39 = [objc_allocWithZone(MEMORY[0x277D4C328]) init];
  [v39 setShouldUseCompactDisplay_];
  v40 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
  outlined bridged method (mbgnn) of @objc SFAppIconImage.bundleIdentifier.setter(v56, v6, v40);
  [v39 setThumbnail_];
  v41 = [objc_allocWithZone(MEMORY[0x277D4C598]) init];
  [v39 setTitle_];

  v42 = [v39 title];
  v43 = v57;
  if (v42)
  {
    v55 = v42;
    type metadata accessor for LocalizedString();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_25DBC8180;
    v45 = [v57 localizedName];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v47;

    *(v44 + 56) = MEMORY[0x277D837D0];
    *(v44 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v44 + 32) = v46;
    *(v44 + 40) = v54;
    static LocalizedString.localizedString(forKey:)(0xD000000000000011, 0x800000025DBF2320);
    v48 = String.init(format:_:)();
    v50 = v49;

    v51 = v50;
    v43 = v57;
    outlined bridged method (mbnn) of @objc SFText.text.setter(v48, v51, v55);
  }

  v52 = [objc_allocWithZone(MEMORY[0x277D4C5C8]) init];
  outlined bridged method (mbgnn) of @objc SFSearchInAppCommand.applicationBundleIdentifier.setter(v56, v6, v52);
  outlined bridged method (mbgnn) of @objc SFSearchInAppCommand.searchString.setter(v60, v59, v52);
  v12 = v39;
  v53 = v52;
  [v12 setCommand_];

  a3 = v58;
LABEL_33:
  *a3 = v12;
  v38 = *MEMORY[0x277D85DE8];
}

uint64_t SearchInAppUtil.SearchInAppPunchout.bundleId.getter()
{
  OUTLINED_FUNCTION_134();

  return v0;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v4 + 2) >= *(v6 + 2))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v17 = v6 - 24;
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v68 = &v62 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v62 - v14;
  MEMORY[0x28223BE20](v13);
  v67 = &v62 - v17;
  v18 = (a2 - a1) / 40;
  v19 = (a3 - a2) / 40;
  if (v18 < v19)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 40, a4);
    v75 = &a4[40 * v18];
    for (i = a3; ; a3 = i)
    {
      if (a4 >= v75 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_31;
      }

      v21 = v15;
      v22 = a1;
      outlined init with copy of ChatMessageRecord(a2, v72);
      outlined init with copy of ChatMessageRecord(a4, v69);
      v23 = v73;
      v24 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v25 = v67;
      (*(v24 + 24))(v23, v24);
      v26 = type metadata accessor for Date();
      result = __swift_getEnumTagSinglePayload(v25, 1, v26);
      if (result == 1)
      {
        __break(1u);
        goto LABEL_39;
      }

      v28 = a2;
      v29 = a4;
      v31 = v70;
      v30 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v32 = v31;
      v15 = v21;
      (*(v30 + 24))(v32, v30);
      result = __swift_getEnumTagSinglePayload(v21, 1, v26);
      if (result == 1)
      {
        goto LABEL_40;
      }

      lazy protocol witness table accessor for type Date and conformance Date();
      v33 = v67;
      v34 = dispatch thunk of static Comparable.< infix(_:_:)();
      v35 = *(*(v26 - 8) + 8);
      v35(v15, v26);
      v35(v33, v26);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      if ((v34 & 1) == 0)
      {
        break;
      }

      v36 = v29;
      a4 = v29 + 40;
      v37 = v22;
      if (v22 != v29)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 = v37 + 40;
    }

    v36 = a2;
    a2 += 40;
    v37 = v22;
    a4 = v29;
    if (v22 == v28)
    {
      goto LABEL_14;
    }

LABEL_13:
    v38 = *v36;
    v39 = *(v36 + 1);
    *(v37 + 4) = *(v36 + 4);
    *v37 = v38;
    *(v37 + 1) = v39;
    goto LABEL_14;
  }

  v66 = v16;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 40, a4);
  v40 = &a4[40 * v19];
  v64 = a4;
  v65 = a1;
LABEL_16:
  v41 = (a2 - 40);
  a3 -= 40;
  v42 = (v40 - 40);
  v67 = a2;
  while (1)
  {
    v75 = (v42 + 40);
    if (v42 + 40 <= a4 || a2 <= a1)
    {
      break;
    }

    outlined init with copy of ChatMessageRecord(v42, v72);
    v44 = v41;
    outlined init with copy of ChatMessageRecord(v41, v69);
    v45 = v73;
    v46 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v47 = v68;
    (*(v46 + 24))(v45, v46);
    v48 = type metadata accessor for Date();
    result = __swift_getEnumTagSinglePayload(v47, 1, v48);
    if (result == 1)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v49 = v70;
    v50 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    v51 = v66;
    (*(v50 + 24))(v49, v50);
    result = __swift_getEnumTagSinglePayload(v51, 1, v48);
    if (result == 1)
    {
      goto LABEL_41;
    }

    lazy protocol witness table accessor for type Date and conformance Date();
    v52 = v68;
    v53 = dispatch thunk of static Comparable.< infix(_:_:)();
    v54 = *(*(v48 - 8) + 8);
    v54(v51, v48);
    v54(v52, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    if ((v53 & 1) == 0)
    {
      v40 = (v42 + 40);
      v57 = v44;
      a2 = v44;
      a4 = v64;
      a1 = v65;
      if ((a3 + 40) != v67)
      {
        v58 = *v57;
        v59 = v57[1];
        *(a3 + 32) = *(v57 + 4);
        *a3 = v58;
        *(a3 + 16) = v59;
        a2 = v57;
      }

      goto LABEL_16;
    }

    a4 = v64;
    a2 = v67;
    v41 = v44;
    if (v75 != (a3 + 40))
    {
      v55 = *v42;
      v56 = *(v42 + 16);
      *(a3 + 32) = *(v42 + 32);
      *a3 = v55;
      *(a3 + 16) = v56;
    }

    a3 -= 40;
    v42 -= 40;
    a1 = v65;
  }

LABEL_31:
  v60 = (v75 - a4) / 40;
  if (a2 != a4 || a2 >= &a4[40 * v60])
  {
    memmove(a2, a4, 40 * v60);
  }

  return 1;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  OUTLINED_FUNCTION_5_19(a1);
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_5_19(a1);
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_5_19(a1);
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_5_19(a1);
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  v1 = *(a1 + 16);
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  v1 = *(a1 + 16);
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_5_19(a1);
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_5_19(a1);
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_5_19(a1);
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_5_19(a1);
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_5_19(a1);
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v9;
  v15 = *v4;
  if (!*v4)
  {
    if (v13 <= 0xE)
    {
      return result;
    }

    v16 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  if (MEMORY[0x25F89D920](*(v15 + 16) & 0x3FLL) <= v13)
  {
    v16 = *(v15 + 24) & 0x3FLL;
    if (v13 <= 0xE && v16 == 0)
    {

      *v4 = 0;
      return result;
    }

LABEL_15:
    v18 = MEMORY[0x25F89D940](v13 + 1);
    return specialized OrderedSet._regenerateHashTable(scale:reservedScale:)(v18, v16);
  }

  result = specialized OrderedSet._ensureUnique()();
  if (*v4)
  {
    return specialized closure #1 in OrderedSet._appendNew(_:in:)((*v4 + 16), *v4 + 32, a3, v4);
  }

  __break(1u);
  return result;
}

uint64_t specialized OrderedSet._ensureUnique()()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = *v0;
        v3 = _HashTable.copy()();

        *v0 = v3;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t specialized closure #1 in OrderedSet._appendNew(_:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 + 8) + 16) + ~(a1[1] >> 6);
  v5 = (-1 << *a1) ^ ~(((v4 >> 63) & ~(-1 << *a1)) + v4);
  return _HashTable.UnsafeHandle.subscript.setter();
}

uint64_t specialized OrderedSet._regenerateHashTable(scale:reservedScale:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = v2[1];
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v5 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5(v2[1], a2, 0, v3);
  v6 = *v2;

  *v2 = v5;
  return result;
}

uint64_t _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x25F89D940](v6);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x25F89D950]();
    specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(a1, (v9 + 16));
  }

  return v9;
}

Swift::Int specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(Swift::Int result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v10)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v11 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

void outlined bridged method (mbnn) of @objc SFCollectionCardSection.cardSections.setter()
{
  OUTLINED_FUNCTION_134();
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setCardSections_];
}

void outlined bridged method (mbnn) of @objc SFText.text.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();

  [a3 setText_];
}

id outlined bridged method (mnnbgnnn) of @objc LNMetadataProvider.actionsConforming(to:logicalType:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = MEMORY[0x25F89F4C0](a3, a4);
  v11 = [a6 actionsConformingToSystemProtocols:a1 logicalType:a2 bundleIdentifier:v10 error:a5];

  return v11;
}

void outlined bridged method (mbgnn) of @objc SFAppIconImage.bundleIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();
  [a3 setBundleIdentifier_];
}

void outlined bridged method (mbgnn) of @objc SFSearchInAppCommand.applicationBundleIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();
  [a3 setApplicationBundleIdentifier_];
}

void outlined bridged method (mbgnn) of @objc SFSearchInAppCommand.searchString.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();
  [a3 setSearchString_];
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 4 * v4);
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_Sf7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_Sf7elementtGMR);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 16;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v2[3];
        v15 = v14 >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= &v2[2 * v15 + 4])
          {
            memmove(v11 + 4, v2 + 4, 16 * v15);
          }

          v2[2] = 0;
        }

        v5 = v13 + 16 * v15;
        v3 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - (v14 >> 1);

        v2 = v11;
      }

      v17 = __OFSUB__(v3--, 1);
      if (v17)
      {
        break;
      }

      *v5 = v4;
      *(v5 + 8) = v7;
      v5 += 16;
      if (v1 == ++v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v3);
  v20 = v19 - v3;
  if (!v17)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_25:
  __break(1u);
  return result;
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_Si5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_Si5valuetGMR);
    v6 = swift_allocObject();
    v7 = 0;
    v8 = (_swift_stdlib_malloc_size(v6) - 32) / 24;
    v6[2] = v3;
    v6[3] = 2 * v8;
    v9 = v8 & 0x7FFFFFFFFFFFFFFFLL;
    v10 = a3 + 32;
    v11 = *(a2 + 16);
    v12 = v3 - 1;
    v13 = (a2 + 40);
    v14 = 4;
    while (v11 != v7)
    {
      v15 = &v6[v14];
      v16 = *v13;
      v17 = *(v10 + 8 * v7);
      *v15 = *(v13 - 1);
      v15[1] = v16;
      v15[2] = v17;
      if (v12 == v7)
      {

        v18 = ~v7 + v9;
        goto LABEL_8;
      }

      v14 += 3;
      v13 += 2;
      ++v7;
    }

    __break(1u);
    goto LABEL_13;
  }

  v18 = 0;
  v6 = MEMORY[0x277D84F90];
LABEL_8:
  v19 = v6[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v21 = __OFSUB__(v20, v18);
    v22 = v20 - v18;
    if (v21)
    {
LABEL_13:
      __break(1u);
      return;
    }

    v6[2] = v22;
  }
}

uint64_t _s10OmniSearch0B6EntityVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchInAppUtil.SearchInAppPunchout(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchInAppUtil.SearchInAppPunchout(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v6);
  v42 = v11;
  v43 = &v38 - v10;
  v12 = 0;
  v13 = 0;
  v39 = *(v11 + 80);
  v14 = MEMORY[0x277D84F90];
  v40 = (v39 + 32) & ~v39;
  v15 = MEMORY[0x277D84F90] + v40;
  v41 = *(a1 + 16);
  while (1)
  {
    if (v41 == v13)
    {
      v35 = v14[3];
      if (v35 >= 2)
      {
        v36 = v35 >> 1;
        v34 = __OFSUB__(v36, v12);
        v37 = v36 - v12;
        if (v34)
        {
          goto LABEL_35;
        }

        v14[2] = v37;
      }

      return v14;
    }

    v16 = *(type metadata accessor for SearchResult(0) - 8);
    v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v18 = *(v16 + 72);
    v19 = *(v2 + 48);
    *v8 = v13;
    _s10OmniSearch0B6EntityVWOcTm_1();
    result = outlined init with take of (offset: Int, element: SearchResult)();
    if (v12)
    {
      v20 = v14;
    }

    else
    {
      v21 = v14[3];
      if (((v21 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v22 = a1;
      v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_10OmniSearch0F6ResultV7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_10OmniSearch0F6ResultV7elementtGMR);
      v25 = *(v42 + 72);
      v26 = v40;
      v20 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v20);
      if (!v25)
      {
        goto LABEL_33;
      }

      v27 = result - v26;
      if (result - v26 == 0x8000000000000000 && v25 == -1)
      {
        goto LABEL_34;
      }

      v29 = v27 / v25;
      v20[2] = v24;
      v20[3] = 2 * (v27 / v25);
      v30 = v20 + v26;
      v31 = v14[3];
      v32 = (v31 >> 1) * v25;
      if (v14[2])
      {
        if (v20 < v14 || v30 >= v14 + v40 + v32)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v20 != v14)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v14[2] = 0;
      }

      v15 = &v30[v32];
      v12 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - (v31 >> 1);

      a1 = v22;
    }

    v34 = __OFSUB__(v12--, 1);
    if (v34)
    {
      break;
    }

    result = outlined init with take of (offset: Int, element: SearchResult)();
    v15 += *(v42 + 72);
    ++v13;
    v14 = v20;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t _s10OmniSearch0B6EntityVWOcTm_1()
{
  OUTLINED_FUNCTION_134();
  v3 = v2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

unint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = &_s10PegasusAPI28Searchfoundation_CardSectionVSgMd;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI28Searchfoundation_CardSectionVSgMd, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = v49 - v8;
  v9 = type metadata accessor for Searchfoundation_CardSection();
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  result = MEMORY[0x28223BE20](v10);
  v57 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0;
  v60 = 0;
  v17 = 0;
  v51 = *(v18 + 80);
  v61 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90] + ((v51 + 32) & ~v51);
  v52 = v18 + 16;
  v53 = v18;
  v55 = (v51 + 32) & ~v51;
  v56 = (v18 + 32);
  while (1)
  {
    while (1)
    {
      if (!v16)
      {
        goto LABEL_5;
      }

      v19 = *(v16 + 16);
      if (v15 == v19)
      {
        break;
      }

      if (v15 >= v19)
      {
        goto LABEL_41;
      }

      v54 = *(v53 + 72);
      (*(v53 + 16))(v7, v16 + v55 + v54 * v15, v9);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
      v23 = v59;
      outlined init with take of (offset: Int, element: SearchResult)();
      if (__swift_getEnumTagSinglePayload(v23, 1, v9) == 1)
      {
        goto LABEL_36;
      }

      v50 = *v56;
      result = v50(v57, v23, v9);
      v24 = v60;
      if (v60)
      {
        v25 = v61;
        goto LABEL_33;
      }

      v26 = *(v61 + 3);
      if (((v26 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_44;
      }

      v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
      if (v27 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI28Searchfoundation_CardSectionVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI28Searchfoundation_CardSectionVGMR);
      v29 = v55;
      v60 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v60);
      v30 = v54;
      if (!v54)
      {
        goto LABEL_45;
      }

      v31 = result - v29;
      v32 = result - v29 == 0x8000000000000000 && v54 == -1;
      result = v61;
      if (v32)
      {
        goto LABEL_46;
      }

      v33 = v28;
      v34 = v29;
      v35 = v31 / v54;
      v36 = v60;
      *(v60 + 2) = v33;
      v36[3] = 2 * (v31 / v30);
      v37 = v36 + v29;
      v38 = *(result + 24);
      v39 = (v38 >> 1) * v30;
      if (*(result + 16))
      {
        if (v36 >= result && v37 < result + v34 + v39)
        {
          if (v36 != result)
          {
            OUTLINED_FUNCTION_4_23();
            swift_arrayInitWithTakeBackToFront();
LABEL_30:
            v39 = v49[1];
            v37 = v58;
            result = v61;
          }

          *(result + 16) = 0;
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_4_23();
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_30;
      }

LABEL_32:
      v58 = &v37[v39];

      v24 = ((v35 & 0x7FFFFFFFFFFFFFFFLL) - (v38 >> 1));
      v25 = v60;
LABEL_33:
      v41 = __OFSUB__(v24, 1);
      v42 = v24 - 1;
      if (v41)
      {
        goto LABEL_42;
      }

      v60 = v42;
      ++v15;
      v43 = v2;
      v44 = v25;
      v45 = v58;
      result = v50(v58, v57, v9);
      v58 = v45 + v54;
      v61 = v44;
      v2 = v43;
    }

    __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
    result = outlined destroy of IntentApplication?(v7, v2, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
LABEL_5:
    v20 = *(a1 + 16);
    if (v17 == v20)
    {
      break;
    }

    if (v17 >= v20)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v21 = v17 + 1;
    v22 = *(a1 + 32 + 8 * v17);

    v15 = 0;
    v16 = v22;
    v17 = v21;
  }

  v23 = v59;
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v9);
LABEL_36:

  outlined destroy of IntentApplication?(v23, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMd, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
  result = v61;
  v46 = *(v61 + 3);
  if (v46 < 2)
  {
    return result;
  }

  v47 = v46 >> 1;
  v41 = __OFSUB__(v47, v60);
  v48 = v47 - v60;
  if (!v41)
  {
    *(v61 + 2) = v48;
    return result;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t outlined init with take of (offset: Int, element: SearchResult)()
{
  OUTLINED_FUNCTION_134();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_17(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

unint64_t lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject;
  if (!lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject)
  {
    type metadata accessor for TRIClient(255, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_37()
{

  return _s10OmniSearch0B6EntityVWOhTm_1(v0, type metadata accessor for SearchEntity);
}

uint64_t OUTLINED_FUNCTION_4_23()
{
  result = v1;
  *(v2 - 112) = v1;
  *(v2 - 184) = v0;
  return result;
}

double SearchNLGEntity.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = OUTLINED_FUNCTION_114(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *a1 = OUTLINED_FUNCTION_80_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 16) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 24) = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 32) = OUTLINED_FUNCTION_80_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 40) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 56) = OUTLINED_FUNCTION_80_4();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 64) = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 72) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 88) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 96) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 104) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 112) = OUTLINED_FUNCTION_80_4();
  result = 0.0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

uint64_t SearchNLGEntity.flightDepartureDate.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 48);
  OUTLINED_FUNCTION_6_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t specialized SearchNLGEntityConvertible.sourceResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SearchResult(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t SearchNLGEntityConvertible.sourceResult.getter()
{
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t SearchNLGEntity.startDate.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 96);
  OUTLINED_FUNCTION_6_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t SearchNLGEntity.endDate.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 104);
  OUTLINED_FUNCTION_6_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t SearchNLGEntity.contentCreationDate.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 24);
  OUTLINED_FUNCTION_6_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t SearchNLGEntity.documentSource.getter()
{
  v1 = *v0;
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t SearchNLGEntityConvertible.documentSource.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_10_17();
  v7(v6);
  type metadata accessor for SearchResult(0);
  v8 = OUTLINED_FUNCTION_112_2();
  if (__swift_getEnumTagSinglePayload(v8, 1, v1) == 1)
  {
    outlined destroy of IntentApplication?(v0, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  }

  else
  {
    v9 = *(v1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v10 = CodableNSSecureCoding.wrappedValue.getter();
    outlined destroy of SearchResult(v0);
    v11 = [v10 bundleID];

    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      goto LABEL_6;
    }
  }

  v12 = 0;
  v14 = 0xE000000000000000;
LABEL_6:
  type metadata accessor for LocalIndexClient();
  OUTLINED_FUNCTION_112_2();

  v15 = static LocalIndexClient.displayName(for:)(v12, v14);
  v17 = v16;

  if (v17)
  {
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logging.search);
    OUTLINED_FUNCTION_112_2();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v21 = 136315138;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v21 + 4) = v22;
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
    }

    return 0;
  }

  return v15;
}

uint64_t SearchNLGEntity.sentFrom.getter()
{
  v1 = *(v0 + 16);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t SearchNLGEntityConvertible.senderNames.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_10_17();
  v7(v6);
  type metadata accessor for SearchResult(0);
  v8 = OUTLINED_FUNCTION_112_2();
  if (__swift_getEnumTagSinglePayload(v8, 1, v1) == 1)
  {
    outlined destroy of IntentApplication?(v0, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    return 0;
  }

  else
  {
    v10 = *(v1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v11 = (v0 + v10);
    CodableNSSecureCoding.wrappedValue.getter();
    v12 = OUTLINED_FUNCTION_112_2();
    outlined destroy of SearchResult(v12);
    v9 = CSSearchableItem.senderNames.getter();
  }

  return v9;
}

uint64_t SearchNLGEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_38();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static SearchNLGEntity.typeDisplayRepresentation);
}

uint64_t static SearchNLGEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_38();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchNLGEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SearchNLGEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_38();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchNLGEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchNLGEntity.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_38();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchNLGEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchNLGEntity.typeDisplayRepresentation : SearchNLGEntity.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchNLGEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchNLGEntity.typeDisplayRepresentation : SearchNLGEntity.Type(uint64_t a1)
{
  v2 = SearchNLGEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t SearchNLGEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_90_0();
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = OUTLINED_FUNCTION_17(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  outlined init with copy of Date?(v0 + 120, v29, &_s10AppIntents0A6Entity_pSgMd, &_s10AppIntents0A6Entity_pSgMR);
  if (v29[3])
  {
    outlined init with take of EntityCardBuilding(v29, v30);
    v13 = v30[4];
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v14 = *(*(v13 + 16) + 8);
    dispatch thunk of InstanceDisplayRepresentable.displayRepresentation.getter();
    return __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  else
  {
    outlined destroy of IntentApplication?(v29, &_s10AppIntents0A6Entity_pSgMd, &_s10AppIntents0A6Entity_pSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logging.search);
    outlined init with copy of SearchNLGEntity(v0, v30);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29[20] = v28;
      *v19 = 136315138;
      outlined init with copy of SearchNLGEntity(v30, v29);
      String.init<A>(describing:)();
      outlined destroy of SearchNLGEntity(v30);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v19 + 4) = v20;
      _os_log_impl(&dword_25D85C000, v17, v18, "Unexpected nil representedEntity for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      outlined destroy of SearchNLGEntity(v30);
    }

    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v9);
    type metadata accessor for DisplayRepresentation.Image();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    return DisplayRepresentation.init(title:subtitle:image:)();
  }
}