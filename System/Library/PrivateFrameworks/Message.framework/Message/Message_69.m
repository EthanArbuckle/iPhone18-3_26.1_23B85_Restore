BOOL sub_1B0C09520(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 24) == *(a2 + 24);
}

BOOL sub_1B0C09578(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  if (*(a1 + 8))
  {
    if (v2 == v4)
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 0;
    }

    if (v5 != 1)
    {
      return 0;
    }

    return v3 == *(a2 + 24);
  }

  result = 0;
  if ((*(a2 + 8) & 1) == 0 && *a1 == *a2 && v2 == v4)
  {
    return v3 == *(a2 + 24);
  }

  return result;
}

uint64_t sub_1B0C095D8(uint64_t result, char a2, uint64_t a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2 & 1;
  if (a2)
  {
    return 1;
  }

  v4 = *v3;
  v5 = __OFSUB__(a3, result);
  v6 = a3 - result;
  if (a3 >= result)
  {
LABEL_7:
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFSUB__(result, a3))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = __OFSUB__(0, result - a3);
  v6 = a3 - result;
  if (v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  if (v4 >= v6 / 1000000000.0)
  {
    return 1;
  }

  v7 = *(v3 + 24);
  if (v7 > a3)
  {
    if (!__OFSUB__(v7, a3))
    {
      v8 = a3 - v7;
      if (!__OFSUB__(0, v7 - a3))
      {
LABEL_15:
        if (v4 < v8 / 1000000000.0)
        {
          result = 0;
          *(v3 + 24) = a3;
          return result;
        }

        return 1;
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_14:
  v8 = a3 - v7;
  if (!__OFSUB__(a3, v7))
  {
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Action.UnreadCountOutsideWindowOfInterest(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for IdleTimer.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for IdleTimer.State(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0C09778(uint64_t a1)
{
  if (*(a1 + 32) <= 1u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1B0C09790(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1B0C097BC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (*(a1 + 32))
  {
    if (*(a1 + 32) != 1)
    {
      if (*(a2 + 32) != 2)
      {
        return 0;
      }

      v8 = vorrq_s8(*a2, *(a2 + 16));
      return !*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
    }

    if (*(a2 + 32) == 1)
    {
      v6 = *(a2 + 8);
      if (v3)
      {
        if ((*(a2 + 8) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*(a2 + 8))
        {
          return 0;
        }

        v9 = *a1;
        if (*a2 != *&v2)
        {
          return 0;
        }
      }

      v10 = *(a1 + 24);
      return (v4 | ((*(a1 + 17) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 32)) << 8)) == *(a2 + 16) && *(a2 + 24) == v5;
    }
  }

  else
  {
    if (*(a2 + 32) || v2 != *a2)
    {
      return 0;
    }

    v7 = *(a2 + 16);
    if (v4)
    {
      if ((*(a2 + 16) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 16) & 1) != 0 || v3 != *(a2 + 8))
    {
      return 0;
    }

    if (*&v5 == *(a2 + 24))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection7CommandO(uint64_t a1)
{
  if ((*(a1 + 64) & 7u) <= 4)
  {
    return *(a1 + 64) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1B0C09964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 145))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 144);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C099AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 144) = -a2;
    }
  }

  return result;
}

__n128 sub_1B0C09A34@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
  v9 = *(v1 + 112);
  v10 = v3;
  v11 = *(v1 + 144);
  v4 = *(v1 + 96);
  v8[0] = *(v1 + 80);
  v8[1] = v4;
  v14 = v9;
  v15 = v3;
  v16 = v11;
  v12 = v8[0];
  v13 = v4;
  sub_1B0BF7124(v8, v7);
  v5 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v5;
  *(a1 + 64) = v16;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B0C09AB8()
{
  sub_1B0BCD47C();
  swift_allocError();
  *v0 = xmmword_1B0ECD830;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1B0C09B10(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v10 = *(a1 + 96);
  v11 = *(a1 + 128);
  v28[2] = *(a1 + 112);
  v28[3] = v11;
  v29 = *(a1 + 144);
  v12 = *(a1 + 64);
  v28[0] = *(a1 + 80);
  v28[1] = v10;
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 40);
  v18 = *(a2 + 56);
  v19 = *(a2 + 128);
  v30[2] = *(a2 + 112);
  v30[3] = v19;
  v20 = *(a2 + 64);
  v21 = *(a2 + 80);
  v22 = *(a2 + 96);
  v31 = *(a2 + 144);
  v30[0] = v21;
  v30[1] = v22;
  if ((v9 & 0x1000000000000000) != 0)
  {
    v32[0] = v4;
    v32[1] = v5;
    v33 = v7;
    v34 = v8;
    v32[2] = v6;
    v35 = v9 & 0xEFFFFFFFFFFFFFFFLL;
    v36 = v12;
    if ((v18 & 0x1000000000000000) == 0 || (v37[0] = v13, v37[1] = v14, v38 = v16, v39 = v17, v37[2] = v15, v40 = v18 & 0xEFFFFFFFFFFFFFFFLL, v41 = v20, (sub_1B0C0FEBC(v32, v37) & 1) == 0))
    {
LABEL_13:
      v24 = 0;
      return v24 & 1;
    }
  }

  else
  {
    if ((v18 & 0x1000000000000000) != 0)
    {
      goto LABEL_13;
    }

    if (v4 != v13 || v5 != v14)
    {
      v26 = v16;
      v27 = v7;
      v23 = sub_1B0E46A78();
      *&v16 = v26;
      *&v7 = v27;
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if ((v6 != v15 || v7 != v16) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v24 = sub_1B0C2DC74(v28, v30);
  return v24 & 1;
}

uint64_t sub_1B0C09C68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
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

uint64_t sub_1B0C09CB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1B0C09D2C(unint64_t a1, uint64_t a2)
{
  v5 = _s6LoggerVMa_0();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v57 - v10;
  v12 = type metadata accessor for UntaggedResponse(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v57 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v57 - v21;
  v23 = *(v2 + 16);
  v24 = *(v2 + 88) | (*(v2 + 90) << 16);
  if (((1 << (a1 >> 60)) & 0x1E7) != 0)
  {
    return result;
  }

  if (a1 >> 60 == 3)
  {
    v25 = swift_projectBox();
    v26 = (v24 >> 21) & 7;
    if (v26)
    {
      if (v26 != 1)
      {
        return result;
      }

      sub_1B0C0B0FC(v25, v19, type metadata accessor for UntaggedResponse);
      sub_1B0C0B0FC(v19, v16, type metadata accessor for UntaggedResponse);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v27 = *v16;
        v28 = *(v16 + 2);
        v29 = *(v16 + 6);
        v59[4] = *(v16 + 5);
        v59[5] = v29;
        v30 = *(v16 + 8);
        v59[6] = *(v16 + 7);
        v59[7] = v30;
        v31 = *(v16 + 2);
        v59[0] = *(v16 + 1);
        v59[1] = v31;
        v32 = *(v16 + 4);
        v33 = *(v2 + 8) | (*(v2 + 8) << 32);
        v59[2] = *(v16 + 3);
        v59[3] = v32;
        if (v33 == (v28 | (v28 << 32)))
        {
          v34 = sub_1B04520BC(*v2, v27);
          sub_1B0C0B164(v19, type metadata accessor for UntaggedResponse);

          sub_1B0B11B9C(v59);
          if ((v34 & 1) != 0 && (BYTE8(v59[0]) & 1) == 0)
          {
            *(v2 + 104) = *&v59[0];
            *(v2 + 112) = 0;
          }
        }

        else
        {
          sub_1B0B11B9C(v59);
          sub_1B0C0B164(v19, type metadata accessor for UntaggedResponse);
        }

        return result;
      }

      v38 = type metadata accessor for UntaggedResponse;
      sub_1B0C0B164(v19, type metadata accessor for UntaggedResponse);
      v39 = v16;
    }

    else
    {
      v38 = type metadata accessor for UntaggedResponse;
      sub_1B0C0B0FC(v25, v22, type metadata accessor for UntaggedResponse);
      sub_1B0C0A424(v22);
      v39 = v22;
    }

LABEL_26:
    sub_1B0C0B164(v39, v38);
    return result;
  }

  v36 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v35 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x14);
  v37 = (v24 >> 21) & 7;
  if (v37)
  {
    if (v37 == 1 && __PAIR64__(v35, v36) == v23)
    {

      *&result = sub_1B0C0AE80().n128_u64[0];
      return result;
    }

LABEL_22:
    sub_1B0C0B0FC(a2, v11, _s6LoggerVMa_0);
    sub_1B0C0B0FC(a2, v9, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v44 = sub_1B0E43988();
    v45 = sub_1B0E45908();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v58 = v35;
      *&v59[0] = v47;
      v48 = v47;
      *v46 = 68158466;
      *(v46 + 4) = 2;
      *(v46 + 8) = 256;
      v49 = v9[*(v5 + 20)];
      sub_1B0C0B164(v9, _s6LoggerVMa_0);
      *(v46 + 10) = v49;
      *(v46 + 11) = 2082;
      v50 = *&v11[*(v5 + 20) + 4];
      sub_1B0C0B164(v11, _s6LoggerVMa_0);
      v51 = ConnectionID.debugDescription.getter(v50);
      v53 = sub_1B0399D64(v51, v52, v59);

      *(v46 + 13) = v53;
      *(v46 + 21) = 2082;
      v54 = Tag.debugDescription.getter(v36 | (v58 << 32));
      v56 = sub_1B0399D64(v54, v55, v59);

      *(v46 + 23) = v56;
      _os_log_impl(&dword_1B0389000, v44, v45, "[%.*hhx-%{public}s] Received command completion for command '%{public}s' unrelated to mailbox selection.", v46, 0x1Fu);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v48, -1, -1);
      MEMORY[0x1B272C230](v46, -1, -1);

      return result;
    }

    v38 = _s6LoggerVMa_0;
    sub_1B0C0B164(v9, _s6LoggerVMa_0);

    v39 = v11;
    goto LABEL_26;
  }

  if (__PAIR64__(v35, v36) != v23)
  {
    goto LABEL_22;
  }

  v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v41 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v42 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v43 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

  *&result = sub_1B0C0A6A8(v40, v41, v42, v43).n128_u64[0];
  return result;
}

uint64_t sub_1B0C0A2A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 11) = *(a1 + 59);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 11) = *(a2 + 59);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1B0C0A994(v7, v9) & 1;
}

BOOL sub_1B0C0A2FC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  result = (v4 & v3) == 255;
  if (v3 != 255 && v4 != 255)
  {
    v6 = *(a1 + 16);
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    if (v3)
    {
      if (v3 == 1)
      {
        if (v4 == 1)
        {
          goto LABEL_10;
        }
      }

      else if (v4 == 2)
      {
        goto LABEL_10;
      }
    }

    else if (!*(a2 + 24))
    {
LABEL_10:
      if (static ResponseText.__derived_struct_equals(_:_:)(*a1, *(a1 + 8)))
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B0C0A390(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v14 = *(a1 + 160);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v16 = *(a2 + 160);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_1B0C0AC10(v13, v15) & 1;
}

uint64_t sub_1B0C0A424(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0C0B0FC(a1, v6, type metadata accessor for UntaggedResponse);
  result = swift_getEnumCaseMultiPayload();
  if (result > 14)
  {
    if (result == 15)
    {
      *(v1 + 104) = *v6;
      *(v1 + 112) = 0;
    }

    else if (result != 16)
    {
      return sub_1B0C0B164(v6, type metadata accessor for UntaggedResponse);
    }
  }

  else
  {
    if (result)
    {
      if (result == 13)
      {
        v8 = *v6;
        v9 = *(v1 + 96);

        *(v1 + 96) = v8;
        return result;
      }

      return sub_1B0C0B164(v6, type metadata accessor for UntaggedResponse);
    }

    v10 = *v6;
    v11 = v6[2];
    if ((~v10 & 0xF000000000000007) == 0)
    {
    }

    v12 = (v10 >> 59) & 0x1E | (v10 >> 2) & 1;
    if (v12 > 4)
    {
      if (v12 == 5)
      {
        v20 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1B0447F00(v10);

        *(v1 + 116) = v20;
        *(v1 + 120) = 0;
      }

      else if (v12 == 11)
      {
        v22 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1B0447F00(v10);

        *(v1 + 152) = v22;
        *(v1 + 160) = 0;
      }

      else
      {
        if (v12 != 17 || v10 != 0x8000000000000054)
        {
          goto LABEL_23;
        }

        sub_1B0447F00(0x8000000000000054);

        *(v1 + 152) = 0;
        *(v1 + 160) = 1;
      }
    }

    else
    {
      switch(v12)
      {
        case 2:
          v15 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v16 = v10;
          v17 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v18 = sub_1B0B386A0(v17);

          v19 = *(v1 + 128);

          sub_1B0447F00(v16);

          *(v1 + 128) = v18;
          break;
        case 3:
          v21 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1B0447F00(v10);

          *(v1 + 136) = v21;
          *(v1 + 140) = 0;
          break;
        case 4:
          v13 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1B0447F00(v10);

          *(v1 + 144) = v13;
          *(v1 + 148) = 0;
          return result;
        default:
LABEL_23:
          sub_1B0447F00(v10);
      }
    }
  }

  return result;
}

__n128 sub_1B0C0A6A8(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4)
  {
    v5 = a4;
    v6 = *(v4 + 64);
    v67 = *(v4 + 48);
    v68[0] = v6;
    *(v68 + 11) = *(v4 + 75);
    v7 = *(v4 + 32);
    v65 = *(v4 + 16);
    v66 = v7;
    sub_1B0A91FD0(a1, a2, a3, a4);
    sub_1B0BF6CA4(&v65);
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    *(v4 + 32) = a3;
    *(v4 + 40) = v5;
    *(v4 + 48) = 0;
LABEL_3:
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    v12 = 96;
    goto LABEL_4;
  }

  if ((~a1 & 0xF000000000000007) != 0 && ((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0x11)
  {
    if (a1 == 0x800000000000001CLL)
    {
      v13 = 1;
    }

    else
    {
      if (a1 != 0x8000000000000024)
      {
        goto LABEL_13;
      }

      v13 = 0;
    }

    *(v4 + 91) = v13;
  }

LABEL_13:
  v14 = *(v4 + 96);
  if (!v14)
  {
    v17 = *(v4 + 64);
    v67 = *(v4 + 48);
    v68[0] = v17;
    *(v68 + 11) = *(v4 + 75);
    v18 = *(v4 + 32);
    v65 = *(v4 + 16);
    v66 = v18;
    sub_1B0BF6CA4(&v65);
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 16) = 0;
    result.n128_u64[0] = 255;
    *(v4 + 40) = xmmword_1B0ED4540;
    goto LABEL_3;
  }

  if ((*(v4 + 112) & 1) == 0)
  {
    v19 = *(v4 + 104);
    v20 = *(v4 + 8);
    v21 = *(v4 + 91);
    v22 = *(v4 + 116);
    v23 = *(v4 + 128);
    v24 = *(v4 + 136);
    v25 = *(v4 + 144);
    v26 = *(v4 + 152);
    v27 = *(v4 + 160);
    v41 = *(v4 + 120);
    v40 = *(v4 + 140);
    v39 = *(v4 + 148);
    v38 = *(v4 + 161);
    *&v42 = *v4;
    DWORD2(v42) = v20;
    *&v43 = v14;
    *(&v43 + 1) = v19;
    LODWORD(v44) = v22;
    BYTE4(v44) = v41;
    v45 = v23;
    v46.i32[0] = v24;
    v46.i8[4] = v40;
    v46.i32[2] = v25;
    v46.i8[12] = v39;
    v47 = v26;
    LOBYTE(v48) = v27;
    HIBYTE(v48) = v38;
    v49 = v21;
    v50 = v42;
    v51 = v20;
    v52 = v14;
    v53 = v19;
    v54 = v22;
    v55 = v41;
    v56 = v23;
    v57 = v24;
    v58 = v40;
    v59 = v25;
    v60 = v39;
    v61 = v26;
    v62 = v27;
    v63 = v38;
    v64 = v21;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B37A20(&v42, &v65);
    sub_1B0B37A7C(&v50);
    v28 = v45;
    v29 = v47;
    v30 = v44 & 0x1FFFFFFFFLL;
    v31 = v48 & 0x1FF;
    v32 = (v48 | (v49 << 16)) & 0x1FFFF | 0x400000;
    v33 = *(v4 + 64);
    v67 = *(v4 + 48);
    v68[0] = v33;
    *(v68 + 11) = *(v4 + 75);
    v34 = *(v4 + 32);
    v65 = *(v4 + 16);
    v66 = v34;
    v36 = v42;
    v37 = vandq_s8(v46, vdupq_n_s64(0x1FFFFFFFFuLL));
    v35 = v43;
    sub_1B0BF6CA4(&v65);
    *(v4 + 16) = v36;
    *(v4 + 32) = v35;
    *(v4 + 48) = v30;
    *(v4 + 56) = v28;
    result = v37;
    *(v4 + 64) = v37;
    *(v4 + 80) = v29;
    *(v4 + 90) = BYTE2(v32);
    *(v4 + 88) = v31;
    return result;
  }

  v15 = *(v4 + 64);
  v67 = *(v4 + 48);
  v68[0] = v15;
  *(v68 + 11) = *(v4 + 75);
  v16 = *(v4 + 32);
  v65 = *(v4 + 16);
  v66 = v16;
  sub_1B0BF6CA4(&v65);
  *(v4 + 16) = 1;
  result.n128_u64[0] = 0;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  v12 = 0x80;
LABEL_4:
  *(v4 + 90) = v12;
  *(v4 + 88) = 0;
  return result;
}

uint64_t sub_1B0C0A994(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 74);
  v5 = v4 >> 5;
  if (v5 <= 1)
  {
    if (v4 >> 5)
    {
      if (((*(a2 + 74) << 16) & 0xE00000) != 0x200000)
      {
        goto LABEL_36;
      }
    }

    else if (((*(a2 + 74) << 16) & 0xE00000) != 0)
    {
      goto LABEL_36;
    }

    v20 = v3 == *a2;
  }

  else
  {
    v6 = a1[1];
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    v9 = *(a1 + 3);
    v10 = a1[8];
    v11 = *(a1 + 36) | (*(a1 + 74) << 16);
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        if (((*(a2 + 74) << 16) & 0xE00000) == 0x600000)
        {
          v12 = *(a2 + 24);
          if (BYTE8(v7) == 0xFF)
          {
            if (v12 == 255)
            {
LABEL_35:
              v20 = 1;
              return v20 & 1;
            }
          }

          else if (v12 != 255)
          {
            v13 = *a2;
            v14 = a2[1];
            v15 = a2[2];
            if (BYTE8(v7))
            {
              if (BYTE8(v7) == 1)
              {
                if (v12 != 1)
                {
                  goto LABEL_36;
                }
              }

              else if (v12 != 2)
              {
                goto LABEL_36;
              }
            }

            else if (*(a2 + 24))
            {
              goto LABEL_36;
            }

            if (static ResponseText.__derived_struct_equals(_:_:)(v3, v6))
            {
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
        v21 = v7 | v6;
        v22 = *(&v7 + 1);
        v23 = vorrq_s8(v9, v8);
        if (v10 | *&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)) | v21 | v22 | v3 || v11 != 0x800000)
        {
          v26 = *(a2 + 36) | (*(a2 + 74) << 16);
          if ((v26 & 0xE00000) == 0x800000 && v26 == 0x800000 && *a2 == 1)
          {
            v27 = vorrq_s8(vorrq_s8(*(a2 + 1), *(a2 + 5)), vorrq_s8(*(a2 + 3), *(a2 + 7)));
            if (!*&vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)))
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          v24 = *(a2 + 36) | (*(a2 + 74) << 16);
          if ((v24 & 0xE00000) == 0x800000 && v24 == 0x800000)
          {
            v25 = vorrq_s8(vorrq_s8(*(a2 + 1), *(a2 + 5)), vorrq_s8(*(a2 + 3), *(a2 + 7)));
            if (!(*&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | *a2))
            {
              goto LABEL_35;
            }
          }
        }
      }

LABEL_36:
      v20 = 0;
      return v20 & 1;
    }

    v33[0] = v3;
    v33[1] = v6;
    v34 = v7;
    v35 = v8;
    v36 = v9;
    v37 = v10;
    v38 = v11;
    v39 = BYTE2(v11) & 0x1F;
    v16 = *(a2 + 36) | (*(a2 + 74) << 16);
    if ((v16 & 0xE00000) != 0x400000)
    {
      goto LABEL_36;
    }

    v17 = a2[8];
    v18 = *(a2 + 1);
    v29[0] = *a2;
    v29[1] = v18;
    v19 = *(a2 + 3);
    v29[2] = *(a2 + 2);
    v29[3] = v19;
    v30 = v17;
    v31 = v16;
    v32 = BYTE2(v16) & 0x1F;
    v20 = _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(v33, v29);
  }

  return v20 & 1;
}

uint64_t sub_1B0C0AC10(uint64_t result, unsigned __int8 *a2)
{
  if ((*(result + 8) | (*(result + 8) << 32)) != (*(a2 + 2) | (*(a2 + 2) << 32)))
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_40:
    if (*(v6 + 34) != *(v4 + 136))
    {
      LOBYTE(v7) = 1;
    }

    if (v7)
    {
      return 0;
    }

    goto LABEL_43;
  }

LABEL_11:
  v8 = *(result + 64);
  v30[2] = *(result + 48);
  v31[0] = v8;
  *(v31 + 11) = *(result + 75);
  v9 = *(result + 32);
  v10 = result;
  v30[0] = *(result + 16);
  v30[1] = v9;
  v11 = *(a2 + 4);
  v28[2] = *(a2 + 3);
  v29[0] = v11;
  *(v29 + 11) = *(a2 + 75);
  v12 = *(a2 + 2);
  v28[0] = *(a2 + 1);
  v28[1] = v12;
  result = sub_1B0C0A994(v30, v28);
  if (result & 1) == 0 || ((*(v10 + 91) ^ a2[91]))
  {
    return 0;
  }

  v4 = v10;
  v6 = a2;
  v14 = *(v10 + 96);
  v15 = *(a2 + 12);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *(a2 + 12);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = sub_1B0AFE1EC(v14, v15);

    v4 = v10;
    v6 = a2;
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v18 = v6[112];
  if (*(v4 + 112))
  {
    if (!v6[112])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 104) != *(v6 + 13))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = v6[120];
  if (*(v4 + 120))
  {
    if (!v6[120])
    {
      return 0;
    }
  }

  else
  {
    if (*(v6 + 29) != *(v4 + 116))
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = *(v4 + 128);
  v21 = *(v6 + 16);
  if (v20)
  {
    if (!v21)
    {
      return 0;
    }

    v22 = *(v6 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v23 = sub_1B0BE5598(v20, v21);

    v4 = v10;
    v6 = a2;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  LOBYTE(v7) = v6[140];
  if ((*(v4 + 140) & 1) == 0)
  {
    goto LABEL_40;
  }

  if (!v6[140])
  {
    return 0;
  }

LABEL_43:
  v24 = v6[148];
  if (*(v4 + 148))
  {
    if (!v6[148])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 144) != *(v6 + 36))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v6[161];
  if (*(v4 + 161))
  {
    return (v25 & 1) != 0;
  }

  if (v6[161])
  {
    return 0;
  }

  v25 = v6[160];
  if (*(v4 + 160))
  {
    return (v25 & 1) != 0;
  }

  if (v6[160])
  {
    return 0;
  }

  v26 = *(v4 + 152);
  v27 = *(v6 + 19);
  if (((v27 | v26) & 0x8000000000000000) == 0)
  {
    return v27 == v26;
  }

  __break(1u);
  return result;
}

__n128 sub_1B0C0AE80()
{
  v1 = *(v0 + 96);
  if (v1 && (*(v0 + 112) & 1) == 0)
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 8);
    v7 = *(v0 + 91);
    v8 = *(v0 + 116);
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v27 = *(v0 + 120);
    v26 = *(v0 + 140);
    v25 = *(v0 + 148);
    v24 = *(v0 + 161);
    *&v28 = *v0;
    DWORD2(v28) = v6;
    *&v29 = v1;
    *(&v29 + 1) = v5;
    LODWORD(v30) = v8;
    BYTE4(v30) = v27;
    v31 = v9;
    v32.i32[0] = v10;
    v32.i8[4] = v26;
    v32.i32[2] = v11;
    v32.i8[12] = v25;
    v33 = v12;
    LOBYTE(v34) = v13;
    HIBYTE(v34) = v24;
    v35 = v7;
    v36 = v28;
    v37 = v6;
    v38 = v1;
    v39 = v5;
    v40 = v8;
    v41 = v27;
    v42 = v9;
    v43 = v10;
    v44 = v26;
    v45 = v11;
    v46 = v25;
    v47 = v12;
    v48 = v13;
    v49 = v24;
    v50 = v7;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B37A20(&v28, &v51);
    sub_1B0B37A7C(&v36);
    v14 = v31;
    v15 = v33;
    v16 = v30 & 0x1FFFFFFFFLL;
    v17 = v34 & 0x1FF;
    v18 = (v34 | (v35 << 16)) & 0x1FFFF | 0x400000;
    v19 = *(v0 + 64);
    v53 = *(v0 + 48);
    v54[0] = v19;
    *(v54 + 11) = *(v0 + 75);
    v20 = *(v0 + 32);
    v51 = *(v0 + 16);
    v52 = v20;
    v22 = v28;
    v23 = vandq_s8(v32, vdupq_n_s64(0x1FFFFFFFFuLL));
    v21 = v29;
    sub_1B0BF6CA4(&v51);
    *(v0 + 16) = v22;
    *(v0 + 32) = v21;
    *(v0 + 48) = v16;
    *(v0 + 56) = v14;
    result = v23;
    *(v0 + 64) = v23;
    *(v0 + 80) = v15;
    *(v0 + 90) = BYTE2(v18);
    *(v0 + 88) = v17;
  }

  else
  {
    v2 = *(v0 + 64);
    v53 = *(v0 + 48);
    v54[0] = v2;
    *(v54 + 11) = *(v0 + 75);
    v3 = *(v0 + 32);
    v51 = *(v0 + 16);
    v52 = v3;
    sub_1B0BF6CA4(&v51);
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 16) = 0;
    result.n128_u64[0] = 255;
    *(v0 + 40) = xmmword_1B0ED4540;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 90) = 96;
    *(v0 + 88) = 0;
  }

  return result;
}

double sub_1B0C0B08C@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0x800000;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  *(a3 + 116) = 0;
  *(a3 + 120) = 1;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 140) = 1;
  *(a3 + 144) = 0;
  *(a3 + 148) = 1;
  *(a3 + 152) = 0;
  *(a3 + 160) = 256;
  return result;
}

uint64_t sub_1B0C0B0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0C0B164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy75_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B0C0B1E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 75))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 2) & 0x80000000 | (*(a1 + 32) >> 33);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B0C0B248(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 74) = 0;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 75) = 1;
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
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -a2 << 33;
      result = 0.0;
      *(a1 + 40) = xmmword_1B0ED4550;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 71) = 0;
      return result;
    }

    *(a1 + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C0B2C0(uint64_t a1)
{
  v2 = *(a1 + 72);
  result = a1 + 72;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x1F;
  *result = v2;
  return result;
}

int8x16_t sub_1B0C0B2DC(uint64_t a1, unsigned int a2)
{
  if (a2 < 4)
  {
    v4 = *(a1 + 72);
    v3 = a1 + 72;
    v5 = (v4 | (*(v3 + 2) << 16)) & 0x101FF;
    *(v3 - 40) &= 0x1FFFFFFFFuLL;
    result = vandq_s8(*(v3 - 24), vdupq_n_s64(0x1FFFFFFFFuLL));
    *(v3 - 24) = result;
    *v3 = v5;
    *(v3 + 2) = (v5 | (a2 << 21)) >> 16;
  }

  else
  {
    *a1 = a2 - 4;
    result.i64[0] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 74) = 0x80;
    *(a1 + 72) = 0;
  }

  return result;
}

uint64_t sub_1B0C0B364(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C0B3AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1B0C0B3F8(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
  }

  else if (a2)
  {
    *(result + 24) = -a2;
  }

  return result;
}

uint64_t sub_1B0C0B434@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C0DFDC(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = *(v9 + 32);
    result = memmove(v9, (v9 + 40), 40 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
  }

  return result;
}

size_t sub_1B0C0B4F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C0DFF0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(_s19CommandOutputBufferV7ElementOMa(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1B0C0E3A0(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0C0B618@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C0E03C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = *(v9 + 32);
    result = memmove(v9, (v9 + 40), 40 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
  }

  return result;
}

uint64_t sub_1B0C0B6DC@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C0DFC8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[6 * a1];
    v10 = v9[3];
    *a2 = v9[2];
    a2[1] = v10;
    a2[2] = v9[4];
    result = memmove(v9 + 2, v9 + 5, 48 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

BOOL static MailboxSelectionUsage.__derived_enum_equals(_:_:)(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (!a1)
  {
    return (a4 & 1) != 0 && !a3;
  }

  if (a1 == 1)
  {
    return (a4 & 1) != 0 && a3 == 1;
  }

  return (a4 & 1) != 0 && a3 > 1;
}

BOOL static MailboxSelectionUsage.__derived_enum_less_than(_:_:)(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 < a3;
    }

    v4 = 1;
LABEL_17:
    v6 = 2;
    if (a3 != 1)
    {
      v6 = 3;
    }

    if (!a3)
    {
      v6 = 0;
    }

    return v4 < v6;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 2;
      if ((a4 & 1) != 0 && a3 == 1)
      {
        return 0;
      }
    }

    else
    {
      v4 = 3;
      if ((a4 & 1) != 0 && a3 > 1)
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((a4 & 1) != 0 && !a3)
    {
      return 0;
    }
  }

  if (a4)
  {
    goto LABEL_17;
  }

  v6 = 1;
  return v4 < v6;
}

BOOL sub_1B0C0B92C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 < v3;
    }

    v6 = 1;
    goto LABEL_18;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 == 1)
      {
        v5 = *(a2 + 8);
      }

      else
      {
        v5 = 0;
      }

      if ((v5 & 1) == 0)
      {
        v6 = 2;
        if (!*(a2 + 8))
        {
          goto LABEL_29;
        }

LABEL_18:
        v9 = 2;
        if (v3 != 1)
        {
          v9 = 3;
        }

        if (v3)
        {
          v3 = v9;
        }

        return v6 < v3;
      }

      return 0;
    }

    if (v3 > 1)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v10 = 0;
    }

    if (v10 == 1)
    {
      return 0;
    }

    v6 = 3;
    if (*(a2 + 8))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v3)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a2 + 8);
    }

    if (v8)
    {
      return 0;
    }

    v6 = 0;
    if (*(a2 + 8))
    {
      goto LABEL_18;
    }
  }

LABEL_29:
  v3 = 1;
  return v6 < v3;
}

BOOL sub_1B0C0B9E0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if (*(a2 + 8) != 1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return v4 >= v2;
    }

    v6 = 1;
    goto LABEL_18;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v2 == 1)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        v5 = 0;
      }

      if ((v5 & 1) == 0)
      {
        v6 = 2;
        if (!*(a1 + 8))
        {
          goto LABEL_29;
        }

LABEL_18:
        v9 = 2;
        if (v2 != 1)
        {
          v9 = 3;
        }

        if (v2)
        {
          v2 = v9;
        }

        return v6 >= v2;
      }

      return 1;
    }

    if (v2 > 1)
    {
      v10 = *(a1 + 8);
    }

    else
    {
      v10 = 0;
    }

    if (v10 == 1)
    {
      return 1;
    }

    v6 = 3;
    if (*(a1 + 8))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v2)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 8);
    }

    if (v8)
    {
      return 1;
    }

    v6 = 0;
    if (*(a1 + 8))
    {
      goto LABEL_18;
    }
  }

LABEL_29:
  v2 = 1;
  return v6 >= v2;
}

BOOL sub_1B0C0BA9C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 >= v3;
    }

    v6 = 1;
    goto LABEL_18;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 == 1)
      {
        v5 = *(a2 + 8);
      }

      else
      {
        v5 = 0;
      }

      if ((v5 & 1) == 0)
      {
        v6 = 2;
        if (!*(a2 + 8))
        {
          goto LABEL_29;
        }

LABEL_18:
        v9 = 2;
        if (v3 != 1)
        {
          v9 = 3;
        }

        if (v3)
        {
          v3 = v9;
        }

        return v6 >= v3;
      }

      return 1;
    }

    if (v3 > 1)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v10 = 0;
    }

    if (v10 == 1)
    {
      return 1;
    }

    v6 = 3;
    if (*(a2 + 8))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v3)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a2 + 8);
    }

    if (v8)
    {
      return 1;
    }

    v6 = 0;
    if (*(a2 + 8))
    {
      goto LABEL_18;
    }
  }

LABEL_29:
  v3 = 1;
  return v6 >= v3;
}

BOOL sub_1B0C0BB58(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if (*(a2 + 8) != 1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return v4 < v2;
    }

    v6 = 1;
    goto LABEL_18;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v2 == 1)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        v5 = 0;
      }

      if ((v5 & 1) == 0)
      {
        v6 = 2;
        if (!*(a1 + 8))
        {
          goto LABEL_29;
        }

LABEL_18:
        v9 = 2;
        if (v2 != 1)
        {
          v9 = 3;
        }

        if (v2)
        {
          v2 = v9;
        }

        return v6 < v2;
      }

      return 0;
    }

    if (v2 > 1)
    {
      v10 = *(a1 + 8);
    }

    else
    {
      v10 = 0;
    }

    if (v10 == 1)
    {
      return 0;
    }

    v6 = 3;
    if (*(a1 + 8))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v2)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 8);
    }

    if (v8)
    {
      return 0;
    }

    v6 = 0;
    if (*(a1 + 8))
    {
      goto LABEL_18;
    }
  }

LABEL_29:
  v2 = 1;
  return v6 < v2;
}

BOOL sub_1B0C0BC0C(uint64_t *a1, uint64_t a2)
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

      return v8 == 1;
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

BOOL sub_1B0C0BC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1B0C0E404(v5, v7);
}

uint64_t MailboxesSelectionUsage.Value.mailbox.setter(uint64_t a1, int a2)
{
  v5 = *v2;

  *v2 = a1;
  *(v2 + 2) = a2;
  return result;
}

uint64_t MailboxesSelectionUsage.Value.usage.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

unint64_t MailboxesSelectionUsage.min.getter(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = (a1 + 64);
    v2 = 1;
    v3 = *(a1 + 16);
    result = 2;
    while (1)
    {
      v8 = *(v1 - 1);
      if (*v1 == 1)
      {
        if (v8)
        {
          if (v8 == 1)
          {
            if ((v2 & (result == 1)) == 0)
            {
              v5 = 2;
LABEL_27:
              if (v2)
              {
                goto LABEL_4;
              }

LABEL_30:
              v6 = 1;
              goto LABEL_9;
            }

            result = 1;
            v2 = 1;
          }

          else
          {
            if ((v2 & (result > 1)) != 1)
            {
              v5 = 3;
              if ((v2 & 1) == 0)
              {
                goto LABEL_30;
              }

LABEL_4:
              if (result == 1)
              {
                v6 = 2;
              }

              else
              {
                v6 = 3;
              }

              if (!result)
              {
                v6 = 0;
              }

LABEL_9:
              v7 = v5 < v6;
              goto LABEL_10;
            }

            v2 = 1;
            result = 2;
          }
        }

        else
        {
          v5 = 0;
          if ((v2 & (result == 0)) == 0)
          {
            goto LABEL_27;
          }

          v2 = 1;
          result = 0;
        }
      }

      else
      {
        if (v2)
        {
          v5 = 1;
          goto LABEL_4;
        }

        if (v8 != result)
        {
          v7 = v8 < result;
LABEL_10:
          if (v7)
          {
            result = *(v1 - 1);
            v2 = *v1;
          }

          goto LABEL_12;
        }

        v2 = 0;
      }

LABEL_12:
      v1 += 40;
      if (!--v3)
      {
        return result;
      }
    }
  }

  return 0;
}

void (*MailboxesSelectionUsage.subscript.modify(uint64_t *a1, int a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v2;
  *(v5 + 28) = a2;
  *v5 = MailboxesSelectionUsage.subscript.getter(a2, *v2);
  *(v6 + 8) = v7;
  *(v6 + 16) = v8;
  *(v6 + 24) = v9;
  return sub_1B0C0BF8C;
}

void sub_1B0C0BF8C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(v2 + 24);
  v7 = v2[4];
  v8 = *(v2 + 7);
  if (a2)
  {
    v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MailboxesSelectionUsage.subscript.setter(v9, v4, v5, v6, v8);
    v10 = *v2;
  }

  else
  {
    MailboxesSelectionUsage.subscript.setter(v3, v2[1], v2[2], *(v2 + 24), *(v2 + 7));
  }

  free(v2);
}

unint64_t sub_1B0C0C020(int *a1, uint64_t *a2)
{
  v3 = *a1;
  result = MailboxesSelectionUsage.subscript.getter(*a1, *a2);
  if (result)
  {
    if ((v7 & 1) != 0 && v6 >= 2)
    {
    }

    else
    {
      v12 = result;
      v13 = v5;
      sub_1B08A34FC();
      v8 = sub_1B0E450A8();

      if ((v8 & 1) == 0)
      {
        v9 = *(*a2 + 16);
        if (v9)
        {
          result = 0;
          v10 = (*a2 + 32);
          while (1)
          {
            v11 = *v10;
            v10 += 10;
            if (v11 == v3)
            {
              break;
            }

            if (v9 == ++result)
            {
              return result;
            }
          }

          sub_1B0C0B618(result, &v12);
          return sub_1B0C0E158(&v12);
        }
      }
    }
  }

  return result;
}

char *sub_1B0C0C114(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0C0C208(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5630, &qword_1B0ED5CF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0C0C328(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CB0, &unk_1B0ED5D30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

void *sub_1B0C0C434(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5700, &unk_1B0ED5D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5708, ",w\b");
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0C0C57C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56F0, &unk_1B0ED5CE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0C0C69C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56F8, &qword_1B0ED5CF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B0C0C7D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4718, &qword_1B0ED5CD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B0C0C8D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5718, &qword_1B0ED5D28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0C0C9F0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1B0C0CA64(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5650, &qword_1B0ED5D20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_1B0C0CAE8(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v5 = v4;
  v127 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_227:
    v7 = *v127;
    if (!*v127)
    {
      goto LABEL_265;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_229;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v10 = v8++;
    if (v8 >= v6)
    {
      goto LABEL_109;
    }

    v11 = *a3 + 32 * v8;
    v12 = *v11;
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *a3 + 32 * v10;
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v14 != 1)
    {
      if ((*(v15 + 24) & 1) == 0)
      {
        v24 = v13 < v16;
        if (v13 != v16)
        {
LABEL_45:
          v22 = v24;
          goto LABEL_48;
        }

        goto LABEL_44;
      }

      v19 = 1;
      goto LABEL_16;
    }

    if (!v13)
    {
      if (v16)
      {
        v25 = 0;
      }

      else
      {
        v25 = *(v15 + 24);
      }

      if (v25)
      {
        goto LABEL_44;
      }

      if (!*(v15 + 24))
      {
        v22 = 1;
        goto LABEL_48;
      }

      v19 = 0;
      goto LABEL_16;
    }

    if (v13 != 1)
    {
      if (v16 > 1)
      {
        v26 = *(v15 + 24);
      }

      else
      {
        v26 = 0;
      }

      if (v26 == 1)
      {
        goto LABEL_44;
      }

      v19 = 3;
      if ((*(v15 + 24) & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_16:
      v20 = qword_1B0ED5D40[v16];
      v21 = v19 >= v20;
      v22 = v19 < v20;
      if (!v21 || ((v14 ^ 1) & 1) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_19;
    }

    if (v16 == 1)
    {
      v18 = *(v15 + 24);
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      goto LABEL_44;
    }

    v19 = 2;
    if (*(v15 + 24))
    {
      goto LABEL_16;
    }

LABEL_19:
    if (!v13)
    {
      if (v16)
      {
        v27 = 0;
      }

      else
      {
        v27 = *(v15 + 24);
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_224;
      }

      goto LABEL_44;
    }

    if (v13 != 1)
    {
      if (v16 > 1)
      {
        v121 = *(v15 + 24);
      }

      else
      {
        v121 = 0;
      }

      if ((v121 & 1) == 0)
      {
        goto LABEL_224;
      }

      goto LABEL_44;
    }

    if (v16 == 1)
    {
      v23 = *(v15 + 24);
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
LABEL_44:
      v24 = v12 < *v15;
      goto LABEL_45;
    }

LABEL_224:
    v22 = 0;
LABEL_48:
    v8 = v10 + 2;
    if (v10 + 2 >= v6)
    {
      goto LABEL_96;
    }

    v28 = v15 + 48;
    do
    {
      v29 = v28;
      v31 = *(v28 + 32);
      v28 += 32;
      v30 = v31;
      v32 = *(v29 + 16);
      v33 = *(v29 + 40);
      v34 = *(v29 - 16);
      v35 = *v29;
      v36 = *(v29 + 8);
      if (v33 != 1)
      {
        if ((v36 & 1) == 0)
        {
          if (v30 == v35)
          {
            goto LABEL_50;
          }

          if (v30 < v35)
          {
            goto LABEL_75;
          }

          goto LABEL_93;
        }

        v38 = 1;
        goto LABEL_63;
      }

      if (!v30)
      {
        if (v35)
        {
          v39 = 0;
        }

        else
        {
          v39 = v36;
        }

        if (v39)
        {
          goto LABEL_50;
        }

        if (!v36)
        {
LABEL_75:
          if (!v22)
          {
            goto LABEL_109;
          }

          goto LABEL_51;
        }

        v38 = 0;
LABEL_63:
        if (v38 < qword_1B0ED5D40[v35])
        {
          goto LABEL_75;
        }

        if (!v33)
        {
          goto LABEL_93;
        }

        goto LABEL_82;
      }

      if (v30 == 1)
      {
        if (v35 == 1)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        if (v37)
        {
          goto LABEL_50;
        }

        v38 = 2;
        if (v36)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v35 > 1)
        {
          v40 = v36;
        }

        else
        {
          v40 = 0;
        }

        if (v40 == 1)
        {
          goto LABEL_50;
        }

        v38 = 3;
        if (v36)
        {
          goto LABEL_63;
        }
      }

LABEL_82:
      if (v30)
      {
        if (v30 != 1)
        {
          if (v35 <= 1)
          {
            LOBYTE(v36) = 0;
          }

          if (v36)
          {
LABEL_50:
            if (((v22 ^ (v32 >= v34)) & 1) == 0)
            {
              goto LABEL_96;
            }

            goto LABEL_51;
          }

          goto LABEL_93;
        }

        v41 = v35 == 1;
      }

      else
      {
        v41 = v35 == 0;
      }

      if (!v41)
      {
        LOBYTE(v36) = 0;
      }

      if (v36)
      {
        goto LABEL_50;
      }

LABEL_93:
      if (v22)
      {
        goto LABEL_97;
      }

LABEL_51:
      ++v8;
    }

    while (v6 != v8);
    v8 = v6;
LABEL_96:
    if (v22)
    {
LABEL_97:
      if (v8 >= v10)
      {
        if (v10 < v8)
        {
          v42 = 32 * v8 - 32;
          v43 = 32 * v10;
          v44 = v8;
          v45 = v10;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_262;
              }

              v49 = (v48 + v43);
              v50 = (v48 + v42);
              v51 = *(v48 + v43);
              v52 = *(v48 + v43 + 8);
              v53 = *(v48 + v43 + 16);
              v54 = *(v48 + v43 + 24);
              if (v43 != v42 || (result = (v50 + 2), v49 >= v50 + 2))
              {
                v46 = v50[1];
                *v49 = *v50;
                v49[1] = v46;
              }

              v47 = v48 + v42;
              *v47 = v51;
              *(v47 + 8) = v52;
              *(v47 + 16) = v53;
              *(v47 + 24) = v54;
            }

            ++v45;
            v42 -= 32;
            v43 += 32;
          }

          while (v45 < v44);
          v6 = a3[1];
        }

        goto LABEL_109;
      }

LABEL_258:
      __break(1u);
LABEL_259:
      result = sub_1B0B9443C(v9);
      v9 = result;
LABEL_229:
      v122 = *(v9 + 2);
      if (v122 >= 2)
      {
        while (*a3)
        {
          v123 = *&v9[16 * v122];
          v124 = *&v9[16 * v122 + 24];
          sub_1B0C0D948((*a3 + 32 * v123), (*a3 + 32 * *&v9[16 * v122 + 16]), (*a3 + 32 * v124), v7);
          if (v5)
          {
          }

          if (v124 < v123)
          {
            goto LABEL_252;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1B0B9443C(v9);
          }

          if (v122 - 2 >= *(v9 + 2))
          {
            goto LABEL_253;
          }

          v125 = &v9[16 * v122];
          *v125 = v123;
          *(v125 + 1) = v124;
          result = sub_1B0B943B0(v122 - 1);
          v122 = *(v9 + 2);
          if (v122 <= 1)
          {
          }
        }

        goto LABEL_263;
      }
    }

LABEL_109:
    if (v8 >= v6)
    {
      goto LABEL_170;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_255;
    }

    if (v8 - v10 >= v7)
    {
      goto LABEL_170;
    }

    if (__OFADD__(v10, v7))
    {
      goto LABEL_256;
    }

    if (v10 + v7 < v6)
    {
      v6 = v10 + v7;
    }

    if (v6 < v10)
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    if (v8 == v6)
    {
      goto LABEL_170;
    }

    v55 = *a3;
    v56 = *a3 + 32 * v8 + 24;
    v57 = v10 - v8;
LABEL_119:
    v58 = v57;
    v59 = v56;
LABEL_120:
    v60 = v59 - 24;
    v61 = *(v59 - 3);
    v62 = *(v59 - 1);
    v63 = *v59;
    result = *(v59 - 7);
    v64 = *(v59 - 5);
    v65 = *(v59 - 32);
    if (v63 == 1)
    {
      if (!v62)
      {
        if (v64)
        {
          v69 = 0;
        }

        else
        {
          v69 = *(v59 - 32);
        }

        if (v69)
        {
          goto LABEL_164;
        }

        if (!*(v59 - 32))
        {
          goto LABEL_165;
        }

        v67 = 0;
        goto LABEL_131;
      }

      if (v62 == 1)
      {
        if (v64 == 1)
        {
          v66 = *(v59 - 32);
        }

        else
        {
          v66 = 0;
        }

        if (v66)
        {
          goto LABEL_164;
        }

        v67 = 2;
        if ((v65 & 1) == 0)
        {
          goto LABEL_133;
        }

LABEL_131:
        if (v67 < qword_1B0ED5D40[v64])
        {
          goto LABEL_165;
        }

        if (!*v59)
        {
          goto LABEL_118;
        }

        goto LABEL_133;
      }

      if (v64 > 1)
      {
        v70 = *(v59 - 32);
      }

      else
      {
        v70 = 0;
      }

      if (v70 == 1)
      {
        goto LABEL_164;
      }

      v67 = 3;
      if (v65)
      {
        goto LABEL_131;
      }

LABEL_133:
      if (v62)
      {
        if (v62 == 1)
        {
          if (v64 != 1)
          {
            v65 = 0;
          }

          if (v65 != 1)
          {
            goto LABEL_118;
          }

LABEL_164:
          if (v61 >= result)
          {
            goto LABEL_118;
          }

          goto LABEL_165;
        }

        if (v64 <= 1)
        {
          v65 = 0;
        }

        if (v65 == 1)
        {
          goto LABEL_164;
        }

LABEL_118:
        ++v8;
        v56 += 32;
        --v57;
        if (v8 == v6)
        {
          v8 = v6;
LABEL_170:
          if (v8 < v10)
          {
            goto LABEL_254;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0AFF300(0, *(v9 + 2) + 1, 1, v9);
            v9 = result;
          }

          v76 = *(v9 + 2);
          v75 = *(v9 + 3);
          v77 = v76 + 1;
          if (v76 >= v75 >> 1)
          {
            result = sub_1B0AFF300((v75 > 1), v76 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 2) = v77;
          v78 = &v9[16 * v76];
          *(v78 + 4) = v10;
          *(v78 + 5) = v8;
          v79 = *v127;
          if (!*v127)
          {
            goto LABEL_264;
          }

          if (!v76)
          {
LABEL_3:
            v6 = a3[1];
            v7 = a4;
            if (v8 >= v6)
            {
              goto LABEL_227;
            }

            continue;
          }

          while (2)
          {
            v80 = v77 - 1;
            if (v77 >= 4)
            {
              v85 = &v9[16 * v77 + 32];
              v86 = *(v85 - 64);
              v87 = *(v85 - 56);
              v91 = __OFSUB__(v87, v86);
              v88 = v87 - v86;
              if (v91)
              {
                goto LABEL_241;
              }

              v90 = *(v85 - 48);
              v89 = *(v85 - 40);
              v91 = __OFSUB__(v89, v90);
              v83 = v89 - v90;
              v84 = v91;
              if (v91)
              {
                goto LABEL_242;
              }

              v92 = &v9[16 * v77];
              v94 = *v92;
              v93 = *(v92 + 1);
              v91 = __OFSUB__(v93, v94);
              v95 = v93 - v94;
              if (v91)
              {
                goto LABEL_244;
              }

              v91 = __OFADD__(v83, v95);
              v96 = v83 + v95;
              if (v91)
              {
                goto LABEL_247;
              }

              if (v96 >= v88)
              {
                v114 = &v9[16 * v80 + 32];
                v116 = *v114;
                v115 = *(v114 + 1);
                v91 = __OFSUB__(v115, v116);
                v117 = v115 - v116;
                if (v91)
                {
                  goto LABEL_251;
                }

                if (v83 < v117)
                {
                  v80 = v77 - 2;
                }
              }

              else
              {
LABEL_190:
                if (v84)
                {
                  goto LABEL_243;
                }

                v97 = &v9[16 * v77];
                v99 = *v97;
                v98 = *(v97 + 1);
                v100 = __OFSUB__(v98, v99);
                v101 = v98 - v99;
                v102 = v100;
                if (v100)
                {
                  goto LABEL_246;
                }

                v103 = &v9[16 * v80 + 32];
                v105 = *v103;
                v104 = *(v103 + 1);
                v91 = __OFSUB__(v104, v105);
                v106 = v104 - v105;
                if (v91)
                {
                  goto LABEL_249;
                }

                if (__OFADD__(v101, v106))
                {
                  goto LABEL_250;
                }

                if (v101 + v106 < v83)
                {
                  goto LABEL_204;
                }

                if (v83 < v106)
                {
                  v80 = v77 - 2;
                }
              }
            }

            else
            {
              if (v77 == 3)
              {
                v81 = *(v9 + 4);
                v82 = *(v9 + 5);
                v91 = __OFSUB__(v82, v81);
                v83 = v82 - v81;
                v84 = v91;
                goto LABEL_190;
              }

              v107 = &v9[16 * v77];
              v109 = *v107;
              v108 = *(v107 + 1);
              v91 = __OFSUB__(v108, v109);
              v101 = v108 - v109;
              v102 = v91;
LABEL_204:
              if (v102)
              {
                goto LABEL_245;
              }

              v110 = &v9[16 * v80];
              v112 = *(v110 + 4);
              v111 = *(v110 + 5);
              v91 = __OFSUB__(v111, v112);
              v113 = v111 - v112;
              if (v91)
              {
                goto LABEL_248;
              }

              if (v113 < v101)
              {
                goto LABEL_3;
              }
            }

            v7 = v80 - 1;
            if (v80 - 1 >= v77)
            {
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
LABEL_244:
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
LABEL_249:
              __break(1u);
LABEL_250:
              __break(1u);
LABEL_251:
              __break(1u);
LABEL_252:
              __break(1u);
LABEL_253:
              __break(1u);
LABEL_254:
              __break(1u);
LABEL_255:
              __break(1u);
LABEL_256:
              __break(1u);
              goto LABEL_257;
            }

            if (!*a3)
            {
              goto LABEL_261;
            }

            v118 = *&v9[16 * v7 + 32];
            v119 = *&v9[16 * v80 + 40];
            sub_1B0C0D948((*a3 + 32 * v118), (*a3 + 32 * *&v9[16 * v80 + 32]), (*a3 + 32 * v119), v79);
            if (v5)
            {
            }

            if (v119 < v118)
            {
              goto LABEL_239;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_1B0B9443C(v9);
            }

            if (v7 >= *(v9 + 2))
            {
              goto LABEL_240;
            }

            v120 = &v9[16 * v7];
            *(v120 + 4) = v118;
            *(v120 + 5) = v119;
            result = sub_1B0B943B0(v80);
            v77 = *(v9 + 2);
            if (v77 <= 1)
            {
              goto LABEL_3;
            }

            continue;
          }
        }

        goto LABEL_119;
      }

      if (v64)
      {
        v65 = 0;
      }

      v68 = v65 == 1;
    }

    else
    {
      if (v65)
      {
        v67 = 1;
        goto LABEL_131;
      }

      v68 = v62 == v64;
      if (v62 < v64)
      {
        goto LABEL_165;
      }
    }

    break;
  }

  if (!v68 || v61 >= result)
  {
    goto LABEL_118;
  }

LABEL_165:
  if (v55)
  {
    v73 = *(v59 - 56);
    v72 = *(v59 - 40);
    *(v59 - 32) = v63;
    v59 -= 32;
    v74 = *(v59 + 4);
    *v60 = v73;
    *(v60 + 1) = v72;
    *(v59 - 3) = v61;
    *(v59 - 4) = v74;
    *(v59 - 1) = v62;
    v21 = __CFADD__(v58++, 1);
    if (v21)
    {
      goto LABEL_118;
    }

    goto LABEL_120;
  }

  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
  return result;
}

uint64_t sub_1B0C0D358(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v92 = (v8 + 16);
    v93 = *(v8 + 16);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = (v8 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_1B0C0DD3C((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7);
      v11 = (*a3 + 40 * v9);
      v14 = *v11;
      v13 = v11 + 10;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[10];
        v13 += 10;
        ++v15;
        if (v10 < v12 == v17 >= v16)
        {
          v7 = v15 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 40 * v7 - 16;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v19);
            v23 = *(v30 + v19 - 32);
            v24 = (v30 + v18);
            v25 = *(v22 - 3);
            v26 = *(v22 - 4);
            v27 = *(v22 - 1);
            v28 = *v22;
            result = v24[1];
            v29 = *(v24 - 1);
            *(v22 - 2) = *(v24 - 3);
            *(v22 - 1) = v29;
            *v22 = result;
            *(v24 - 6) = v23;
            *(v24 - 2) = v25;
            *(v24 - 2) = v26;
            *v24 = v27;
            *(v24 + 8) = v28;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v45 = *(v8 + 16);
    v44 = *(v8 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1B0AFF300((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v46;
    v47 = v8 + 32;
    v48 = (v8 + 32 + 16 * v45);
    *v48 = v9;
    v48[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 32);
          v51 = *(v8 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = (v8 + 16 * v46);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = (v47 + 16 * v49);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = (v8 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = (v47 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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

        v87 = (v47 + 16 * (v49 - 1));
        v88 = *v87;
        v89 = (v47 + 16 * v49);
        v90 = v89[1];
        sub_1B0C0DD3C((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v8 + 16);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove((v47 + 16 * v49), v89 + 2, 16 * (v91 - 1 - v49));
        *(v8 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v47 + 16 * v46;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = (v8 + 16 * v46);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = (v47 + 16 * v49);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v7 - 40;
  v33 = v9 - v7;
LABEL_30:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = v35 + 40;
    v37 = *(v35 + 40);
    if (v37 >= *v35)
    {
LABEL_29:
      ++v7;
      v32 += 40;
      --v33;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v35 + 48);
    v39 = *(v35 + 56);
    v40 = *(v35 + 64);
    result = *(v35 + 72);
    v41 = *(v35 + 16);
    *v36 = *v35;
    *(v35 + 56) = v41;
    v42 = *(v35 + 32);
    *v35 = v37;
    *(v35 + 8) = v38;
    *(v35 + 16) = v39;
    *(v35 + 24) = v40;
    *(v35 + 32) = result;
    v35 -= 40;
    *(v36 + 32) = v42;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
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

uint64_t sub_1B0C0D948(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 32 * v10;
    if (a4 != __src || &__src[v14] <= a4)
    {
      memmove(a4, __src, v14);
    }

    v15 = &v4[v14];
    if (v8 < 32 || v6 >= v5)
    {
LABEL_130:
      v33 = v7;
      goto LABEL_132;
    }

    while (1)
    {
      v16 = *v6;
      v17 = *(v6 + 2);
      v18 = *v4;
      v19 = *(v4 + 2);
      v20 = v4[24];
      if (v6[24] == 1)
      {
        if (v17)
        {
          if (v17 == 1)
          {
            if (v19 == 1)
            {
              v21 = v4[24];
            }

            else
            {
              v21 = 0;
            }

            if (v21)
            {
              goto LABEL_58;
            }

            v22 = 2;
            if ((v20 & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          else
          {
            if (v19 > 1)
            {
              v25 = v4[24];
            }

            else
            {
              v25 = 0;
            }

            if (v25 == 1)
            {
              goto LABEL_58;
            }

            v22 = 3;
            if ((v20 & 1) == 0)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          if (v19)
          {
            v24 = 0;
          }

          else
          {
            v24 = v4[24];
          }

          if (v24)
          {
            goto LABEL_58;
          }

          if (!v4[24])
          {
            goto LABEL_59;
          }

          v22 = 0;
        }
      }

      else
      {
        if ((v20 & 1) == 0)
        {
          if (v17 < v19)
          {
            goto LABEL_59;
          }

          if (v17 == v19 && v16 < v18)
          {
            goto LABEL_59;
          }

          goto LABEL_64;
        }

        v22 = 1;
      }

      if (v22 < qword_1B0ED5D40[v19])
      {
        goto LABEL_59;
      }

      if (!v6[24])
      {
        goto LABEL_64;
      }

LABEL_42:
      if (v17)
      {
        if (v17 == 1)
        {
          if (v19 != 1)
          {
            v20 = 0;
          }

          if (v20 != 1)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v19 <= 1)
          {
            v20 = 0;
          }

          if (v20 != 1)
          {
            goto LABEL_64;
          }
        }

LABEL_58:
        if (v16 < v18)
        {
          goto LABEL_59;
        }

        goto LABEL_64;
      }

      if (v19)
      {
        v20 = 0;
      }

      if (v20 == 1 && v16 < v18)
      {
LABEL_59:
        v27 = v6;
        v28 = v7 == v6;
        v6 += 32;
        if (v28)
        {
          goto LABEL_61;
        }

LABEL_60:
        v29 = *(v27 + 1);
        *v7 = *v27;
        *(v7 + 1) = v29;
        goto LABEL_61;
      }

LABEL_64:
      v27 = v4;
      v28 = v7 == v4;
      v4 += 32;
      if (!v28)
      {
        goto LABEL_60;
      }

LABEL_61:
      v7 += 32;
      if (v4 >= v15 || v6 >= v5)
      {
        goto LABEL_130;
      }
    }
  }

  v30 = 32 * v13;
  if (a4 != __dst || &__dst[v30] <= a4)
  {
    memmove(a4, __dst, 32 * v13);
  }

  v15 = &v4[v30];
  if (v11 < 32 || v6 <= v7)
  {
LABEL_131:
    v33 = v6;
    goto LABEL_132;
  }

  do
  {
    v31 = 0;
    v32 = v15;
    v33 = v6 - 32;
    while (1)
    {
      v34 = *&v32[v31 - 32];
      v35 = *&v32[v31 - 16];
      v36 = *(v6 - 4);
      v37 = *(v6 - 2);
      v38 = *(v6 - 8);
      if (v32[v31 - 8] == 1)
      {
        break;
      }

      if (v38)
      {
        v40 = 1;
        goto LABEL_103;
      }

      if (v35 < v37)
      {
        goto LABEL_125;
      }

      if (v35 == v37 && v34 < v36)
      {
        goto LABEL_125;
      }

LABEL_123:
      if (&v5[v31] != &v32[v31])
      {
        v45 = &v5[v31 - 32];
        v46 = *&v32[v31 - 16];
        *v45 = *&v32[v31 - 32];
        *(v45 + 1) = v46;
      }

      v31 -= 32;
      v15 = &v32[v31];
      if (&v32[v31] <= v4)
      {
        goto LABEL_131;
      }
    }

    if (!v35)
    {
      if (v37)
      {
        v42 = 0;
      }

      else
      {
        v42 = *(v6 - 8);
      }

      if ((v42 & 1) == 0)
      {
        if (!*(v6 - 8))
        {
          goto LABEL_125;
        }

        v40 = 0;
        goto LABEL_103;
      }

LABEL_122:
      if (v34 < v36)
      {
        goto LABEL_125;
      }

      goto LABEL_123;
    }

    if (v35 == 1)
    {
      if (v37 == 1)
      {
        v39 = *(v6 - 8);
      }

      else
      {
        v39 = 0;
      }

      if (v39)
      {
        goto LABEL_122;
      }

      v40 = 2;
      if (v38)
      {
LABEL_103:
        if (v40 < qword_1B0ED5D40[v37])
        {
          goto LABEL_125;
        }

        if (!v32[v31 - 8])
        {
          goto LABEL_123;
        }
      }
    }

    else
    {
      if (v37 > 1)
      {
        v43 = *(v6 - 8);
      }

      else
      {
        v43 = 0;
      }

      if (v43 == 1)
      {
        goto LABEL_122;
      }

      v40 = 3;
      if (v38)
      {
        goto LABEL_103;
      }
    }

    if (v35)
    {
      if (v35 == 1)
      {
        if (v37 != 1)
        {
          v38 = 0;
        }

        if (v38 != 1)
        {
          goto LABEL_123;
        }
      }

      else
      {
        if (v37 <= 1)
        {
          v38 = 0;
        }

        if (v38 != 1)
        {
          goto LABEL_123;
        }
      }

      goto LABEL_122;
    }

    if (v37)
    {
      v38 = 0;
    }

    if (v38 != 1 || v34 >= v36)
    {
      goto LABEL_123;
    }

LABEL_125:
    v47 = &v5[v31];
    v5 = &v5[v31 - 32];
    if (v47 != v6)
    {
      v48 = *(v6 - 1);
      *v5 = *v33;
      *(v5 + 1) = v48;
    }

    v15 = &v32[v31];
    if (&v32[v31] <= v4)
    {
      break;
    }

    v6 -= 32;
  }

  while (v33 > v7);
  v15 = &v32[v31];
LABEL_132:
  v49 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v33 != v4 || v33 >= &v4[v49])
  {
    memmove(v33, v4, v49);
  }

  return 1;
}

uint64_t sub_1B0C0DD3C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 40;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 40;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    *(v7 + 4) = *(v14 + 4);
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 40 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v19 = v6 - 40;
    v5 -= 40;
    v20 = v13;
    do
    {
      v21 = (v5 + 40);
      v22 = *(v20 - 40);
      v20 -= 40;
      if (v22 < *v19)
      {
        if (v21 != v6)
        {
          v25 = *v19;
          v26 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v25;
          *(v5 + 16) = v26;
        }

        if (v13 <= v4 || (v6 -= 40, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v21 != v13)
      {
        v23 = *v20;
        v24 = *(v20 + 16);
        *(v5 + 32) = *(v20 + 32);
        *v5 = v23;
        *(v5 + 16) = v24;
      }

      v5 -= 40;
      v13 = v20;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v27 = 40 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

uint64_t sub_1B0C0E0A0(uint64_t result, int a2, uint64_t a3, char a4, uint64_t a5, int a6, unint64_t a7, char a8)
{
  if (a2 != a6)
  {
    return 0;
  }

  v8 = *(result + 16);
  if (v8 != *(a5 + 16))
  {
    return 0;
  }

  if (v8)
  {
    v9 = result == a5;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_11:
    if (a4)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          if ((a8 & 1) != 0 && a7 == 1)
          {
            return 1;
          }
        }

        else if ((a8 & 1) != 0 && a7 > 1)
        {
          return 1;
        }
      }

      else if ((a8 & 1) != 0 && !a7)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && a3 == a7)
    {
      return 1;
    }

    return 0;
  }

  v10 = (result + 32);
  v11 = (a5 + 32);
  while (v8)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0C0E18C()
{
  result = qword_1EB6E56C8;
  if (!qword_1EB6E56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E56C8);
  }

  return result;
}

unint64_t sub_1B0C0E1E4()
{
  result = qword_1EB6E56D0;
  if (!qword_1EB6E56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E56D0);
  }

  return result;
}

uint64_t sub_1B0C0E268(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1B0C0E2B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C0E304(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C0E34C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C0E3A0(uint64_t a1, uint64_t a2)
{
  v4 = _s19CommandOutputBufferV7ElementOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1B0C0E404(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (*(a1 + 16) | (*(a1 + 16) << 32)) != (*(a2 + 16) | (*(a2 + 16) << 32)))
  {
    return 0;
  }

  if ((sub_1B04520BC(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0)
  {
    return (*(a2 + 32) & 1) == 0 && v4 == v5;
  }

  if (!v4)
  {
    return (*(a2 + 32) & 1) != 0 && !v5;
  }

  if (v4 != 1)
  {
    return (*(a2 + 32) & 1) != 0 && v5 > 1;
  }

  return (*(a2 + 32) & 1) != 0 && v5 == 1;
}

uint64_t sub_1B0C0E4D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 7 && *(a1 + 80))
  {
    return (*a1 + 7);
  }

  v3 = (((*(a1 + 56) & 0x1000000000000000) != 0) | (*(a1 + 40) >> 59) & 6) ^ 7;
  if (v3 >= 6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0C0E52C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 7;
    if (a3 >= 7)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 1) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (((-a2 >> 1) & 3 | (4 * (-a2 & 7))) << 58) & 0x1000000000000000;
      *(result + 64) = 0;
      *(result + 72) = 0;
    }
  }

  return result;
}

uint64_t sub_1B0C0E5B8(uint64_t result, char a2)
{
  v2 = *(result + 56) & 0xEFFFFFFFFFFFFFFFLL | ((a2 & 1) << 60);
  *(result + 40) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 56) = v2;
  return result;
}

uint64_t sub_1B0C0E5E8()
{
  v1 = *(v0 + 56);
  if ((v1 & 0x1000000000000000) == 0)
  {
    return 0x4E49474F4CLL;
  }

  v3 = (*(v0 + 72) >> 59) & 6 | ((v1 & 0x2000000000000000) != 0);
  if (v3 > 2)
  {
    if ((v3 - 5) >= 2)
    {
      if (v3 == 3)
      {
        if (qword_1EB6E5378 != -1)
        {
          swift_once();
        }

        v4 = &qword_1EB738388;
      }

      else
      {
        if (qword_1EB6E5380 != -1)
        {
          swift_once();
        }

        v4 = &qword_1EB738398;
      }
    }

    else
    {
      if (qword_1EB6E5370 != -1)
      {
        swift_once();
      }

      v4 = &qword_1EB738378;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      if (qword_1EB6DE340 != -1)
      {
        swift_once();
      }

      v4 = &qword_1EB737E98;
    }

    else
    {
      if (qword_1EB6DE338 != -1)
      {
        swift_once();
      }

      v4 = &qword_1EB737E88;
    }
  }

  else
  {
    v4 = AuthenticationMechanism.plain.unsafeMutableAddressor();
  }

  v5 = *v4;
  v6 = v4[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](v5, v6);

  return 0x204C534153;
}

uint64_t sub_1B0C0E7D4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 56);
  v41 = *v1;
  if ((v5 & 0x1000000000000000) == 0)
  {
    a1[3] = &_s5LoginVN;
    a1[4] = &off_1F271E7A0;
    v6 = swift_allocObject();
    *a1 = v6;
    v7 = *(v1 + 48);
    *(v6 + 48) = *(v1 + 32);
    *(v6 + 64) = v7;
    v8 = *(v1 + 16);
    *(v6 + 16) = *v1;
    *(v6 + 32) = v8;
    *(v6 + 80) = *(v1 + 64);
    *(v6 + 96) = v41;
    *(v6 + 112) = v4;
    *(v6 + 120) = v3;
    *(v6 + 160) = 0;
LABEL_19:
    swift_bridgeObjectRetain_n();
    return swift_bridgeObjectRetain_n();
  }

  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v11 = *(v1 + 48);
  v13 = *(v1 + 64);
  v12 = *(v1 + 72);
  v14 = v5 & 0xEFFFFFFFFFFFFFFFLL;
  v15 = (v12 >> 59) & 6 | ((v5 & 0x2000000000000000) != 0);
  if (v15 <= 2)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        v35 = v5 & 0xCFFFFFFFFFFFFFFFLL;
        v36 = *(v1 + 72);
        v21 = v12 & 0xCFFFFFFFFFFFFFFFLL;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DB0, &qword_1B0EC9C70);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1B0EC4700;
        *(v22 + 32) = v41;
        *(v22 + 48) = v41;
        *(v22 + 64) = v4;
        *(v22 + 72) = v3;
        *(v22 + 80) = v10;
        *(v22 + 88) = v9;
        v37 = v10;
        *(v22 + 96) = v11;
        *(v22 + 104) = v35;
        *(v22 + 112) = v13;
        *(v22 + 120) = v21;
        sub_1B03B2000(v41, *(&v41 + 1));
        sub_1B03B2000(v41, *(&v41 + 1));
        sub_1B03B2000(v4, v3);
        sub_1B03B2000(v10, v9);
        sub_1B03B2000(v11, v35);
        sub_1B03B2000(v13, v21);
        sub_1B03B2000(v41, *(&v41 + 1));
        sub_1B03B2000(v4, v3);
        sub_1B03B2000(v10, v9);
        sub_1B03B2000(v11, v35);
        sub_1B03B2000(v13, v21);
        v23 = sub_1B0BCD5E0(v22);
        v25 = v24;
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        a1[3] = &_s10AppleTokenVN;
        a1[4] = &off_1F271BE98;
        result = swift_allocObject();
        *a1 = result;
        *(result + 16) = v41;
        *(result + 32) = v4;
        *(result + 40) = v3;
        *(result + 48) = v37;
        *(result + 56) = v9;
        *(result + 64) = v11;
        *(result + 72) = v14;
        *(result + 80) = v13;
        *(result + 88) = v36;
        *(result + 96) = v23;
        *(result + 104) = v25;
      }

      else
      {
        a1[3] = &_s11AppleToken2VN;
        a1[4] = &off_1F271BFE8;
        v31 = swift_allocObject();
        *a1 = v31;
        *(v31 + 16) = v41;
        *(v31 + 32) = v4;
        *(v31 + 40) = v3;
        *(v31 + 48) = v10;
        *(v31 + 56) = v9;
        *(v31 + 64) = v11;
        *(v31 + 72) = v14;
        *(v31 + 80) = v13;
        *(v31 + 88) = v12;
        *(v31 + 96) = v41;
        v32 = *(v1 + 48);
        v43[2] = *(v1 + 32);
        v44 = v32;
        v45 = *(v1 + 64);
        v33 = *(v1 + 16);
        v43[0] = *v1;
        v43[1] = v33;
        *(&v44 + 1) = *(&v32 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        sub_1B0BD6700(v1, v42);
        return sub_1B0BD1224(v43, v42);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DB0, &qword_1B0EC9C70);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1B0EC1E50;
      v38 = v13;
      *(v27 + 32) = xmmword_1B0ECF4A0;
      *(v27 + 48) = v41;
      v40 = v11;
      *(v27 + 64) = v4;
      *(v27 + 72) = v3;
      sub_1B03B2000(v41, *(&v41 + 1));
      sub_1B03B2000(v4, v3);
      sub_1B03B2000(v41, *(&v41 + 1));
      sub_1B03B2000(v4, v3);
      v28 = sub_1B0BCD5E0(v27);
      v30 = v29;
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      a1[3] = &_s5PlainVN;
      a1[4] = &off_1F271FD10;
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v41;
      *(result + 32) = v4;
      *(result + 40) = v3;
      *(result + 48) = v10;
      *(result + 56) = v9;
      *(result + 64) = v40;
      *(result + 72) = v14;
      *(result + 80) = v38;
      *(result + 88) = v12;
      *(result + 96) = v28;
      *(result + 104) = v30;
    }
  }

  else
  {
    if (v15 > 4)
    {
      a1[3] = &_s4NTLMVN;
      a1[4] = &off_1F271F668;
      if (v15 == 5)
      {
        v26 = swift_allocObject();
        *a1 = v26;
        *(v26 + 16) = 0;
      }

      else
      {
        v26 = swift_allocObject();
        *a1 = v26;
        *(v26 + 16) = 1;
      }

      *(v26 + 24) = v41;
      *(v26 + 40) = v4;
      *(v26 + 48) = v3;
      *(v26 + 56) = v41;
      *(v26 + 72) = v4;
      *(v26 + 80) = v3;
      *(v26 + 88) = v10;
      *(v26 + 96) = v9;
      *(v26 + 104) = v11;
      *(v26 + 112) = v14;
      *(v26 + 120) = v13;
      *(v26 + 128) = v12;
      *(v26 + 136) = 0u;
      *(v26 + 152) = 0u;
      *(v26 + 168) = 0u;
      *(v26 + 184) = 0;
      goto LABEL_19;
    }

    v39 = *(v1 + 48);
    if (v15 == 3)
    {
      v16 = *(v1 + 8) >> 64;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v17 = sub_1B0C19A8C(v41, v16, v4, v3);
      v19 = v18;
      a1[3] = &_s10OAuthTokenVN;
      a1[4] = &off_1F271F7D8;
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v41;
      *(result + 32) = v4;
      *(result + 40) = v3;
      *(result + 48) = v10;
      *(result + 56) = v9;
      *(result + 64) = v39;
      *(result + 72) = v14;
      *(result + 80) = v13;
      *(result + 88) = v12;
      *(result + 96) = v17;
      *(result + 104) = v19;
    }

    else
    {
      a1[3] = &_s7CRAMMD5VN;
      a1[4] = &off_1F271D928;
      v34 = swift_allocObject();
      *a1 = v34;
      *(v34 + 16) = v41;
      *(v34 + 32) = v4;
      *(v34 + 40) = v3;
      *(v34 + 48) = v10;
      *(v34 + 56) = v9;
      *(v34 + 64) = v39;
      *(v34 + 72) = v14;
      *(v34 + 80) = v13;
      *(v34 + 88) = v12;
      *(v34 + 96) = xmmword_1B0EC58F0;
      *(v34 + 112) = v41;
      *(v34 + 128) = v4;
      *(v34 + 136) = v3;
      sub_1B03B2000(v41, *(&v41 + 1));
      sub_1B03B2000(v4, v3);
      sub_1B03B2000(v41, *(&v41 + 1));

      return sub_1B03B2000(v4, v3);
    }
  }

  return result;
}

BOOL sub_1B0C0EE10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if ((v2 & 0x1000000000000000) != 0)
  {
    v3 = qword_1B0ED6968[(*(a2 + 72) >> 59) & 6 | (v2 >> 61) & 1];
    v4 = *(a1 + 56);
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 8;
    return v3 >= v5;
  }

  v3 = 8;
  v4 = *(a1 + 56);
  if ((v4 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = qword_1B0ED6968[(*(a1 + 72) >> 59) & 6 | (v4 >> 61) & 1];
  return v3 >= v5;
}

BOOL sub_1B0C0EE70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if ((v2 & 0x1000000000000000) != 0)
  {
    v3 = qword_1B0ED6968[(*(a1 + 72) >> 59) & 6 | (v2 >> 61) & 1];
    v4 = *(a2 + 56);
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 8;
    return v3 >= v5;
  }

  v3 = 8;
  v4 = *(a2 + 56);
  if ((v4 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = qword_1B0ED6968[(*(a2 + 72) >> 59) & 6 | (v4 >> 61) & 1];
  return v3 >= v5;
}

BOOL sub_1B0C0EED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if ((v2 & 0x1000000000000000) != 0)
  {
    v3 = qword_1B0ED6968[(*(a2 + 72) >> 59) & 6 | (v2 >> 61) & 1];
    v4 = *(a1 + 56);
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 8;
    return v3 < v5;
  }

  v3 = 8;
  v4 = *(a1 + 56);
  if ((v4 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = qword_1B0ED6968[(*(a1 + 72) >> 59) & 6 | (v4 >> 61) & 1];
  return v3 < v5;
}

uint64_t sub_1B0C0EF30()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = (v0[9] >> 59) & 6 | ((v0[7] & 0x2000000000000000) != 0);
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v7 = v0[6];
        v11 = v0[8];
        v8 = v0[4];
        MEMORY[0x1B2728D70](1);
        sub_1B0E42F48();
        sub_1B0E42F48();
        sub_1B0E42F48();
        sub_1B0E42F48();
      }

      else
      {
        MEMORY[0x1B2728D70](2);
      }

      goto LABEL_14;
    }

    v9 = 0;
  }

  else
  {
    if (v5 > 4)
    {
      if (v5 == 5)
      {
        v6 = 5;
      }

      else
      {
        v6 = 6;
      }

LABEL_18:
      MEMORY[0x1B2728D70](v6);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    if (v5 == 3)
    {
      v6 = 3;
      goto LABEL_18;
    }

    v9 = 4;
  }

  MEMORY[0x1B2728D70](v9);
  sub_1B0E42F48();
LABEL_14:

  return sub_1B0E42F48();
}

uint64_t sub_1B0C0F0F4()
{
  sub_1B0E46C28();
  sub_1B0C0EF30();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C0F138()
{
  sub_1B0E46C28();
  sub_1B0C0EF30();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C0F174(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1B0C0FEBC(v8, v9) & 1;
}

uint64_t sub_1B0C0F1D0()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  sub_1B0E46C28();
  if ((v8 & 0x1000000000000000) != 0)
  {
    MEMORY[0x1B2728D70](1);
    sub_1B0C0EF30();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C0F2A0()
{
  v1 = *v0;
  if ((v0[7] & 0x1000000000000000) != 0)
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = v0[2];
    v6 = v0[3];
    v7 = *(v0 + 2);
    v8 = v0[6];
    v9 = *(v0 + 4);
    MEMORY[0x1B2728D70](1);
    return sub_1B0C0EF30();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }
}

uint64_t sub_1B0C0F374()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  sub_1B0E46C28();
  if ((v8 & 0x1000000000000000) != 0)
  {
    MEMORY[0x1B2728D70](1);
    sub_1B0C0EF30();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C0F440(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 56);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 56);
  if ((v8 & 0x1000000000000000) != 0)
  {
    v16 = *(a2 + 40);
    v17 = *(a2 + 64);
    v18 = *(a1 + 48);
    v21[0] = v4;
    v21[1] = v5;
    v21[2] = v6;
    v21[3] = v7;
    v22 = *(a1 + 32);
    v23 = v18;
    v24 = v8 & 0xEFFFFFFFFFFFFFFFLL;
    v25 = *(a1 + 64);
    if ((v13 & 0x1000000000000000) != 0)
    {
      v26[0] = v9;
      v26[1] = v10;
      v26[2] = v11;
      v27 = v12;
      v28 = v16;
      v29 = v13 & 0xEFFFFFFFFFFFFFFFLL;
      v30 = v17;
      v15 = sub_1B0C0FEBC(v21, v26);
      return v15 & 1;
    }

    goto LABEL_10;
  }

  if ((v13 & 0x1000000000000000) != 0 || (v4 != v9 || v5 != v10) && (v20 = *(a2 + 24), v14 = sub_1B0E46A78(), *&v12 = v20, (v14 & 1) == 0))
  {
LABEL_10:
    v15 = 0;
    return v15 & 1;
  }

  if (v6 == v11 && v7 == v12)
  {
    v15 = 1;
    return v15 & 1;
  }

  return sub_1B0E46A78();
}

BOOL sub_1B0C0F574(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1B0C101A0(v8, v9);
}

BOOL sub_1B0C0F5D0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1B0C0EE10(v8, v9);
}

BOOL sub_1B0C0F62C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1B0C0EE70(v8, v9);
}

BOOL sub_1B0C0F688(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1B0C0EED0(v8, v9);
}

char *sub_1B0C0F6E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = v2[3];
    v16[2] = v2[2];
    v16[3] = v5;
    v16[4] = v2[4];
    v6 = v2[1];
    v16[0] = *v2;
    v16[1] = v6;
    sub_1B069506C(v16, v15);
    v7 = sub_1B0C10500(v16);
    result = v16;
    sub_1B070BB30(v16);
    v8 = *(v7 + 16);
    v9 = *(v3 + 2);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= *(v3 + 3) >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v11 = v9 + v8;
      }

      else
      {
        v11 = v9;
      }

      result = sub_1B0C0C208(result, v11, 1, v3);
      v3 = result;
      if (*(v7 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v8)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = *(v3 + 2);
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 5;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0C0F858(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    v58 = *(a2 + 16);
    v59 = result;
    v56 = a2 + 32;
    while (1)
    {
      v57 = v6;
      v7 = (v5 + 80 * v4);
      for (i = v4; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        v14 = v7[3];
        v69 = v7[2];
        v70 = v14;
        v71 = v7[4];
        v15 = v7[1];
        v67 = *v7;
        v68 = v15;
        if (__OFADD__(i, 1))
        {
          goto LABEL_42;
        }

        v60 = i + 1;
        if ((*(&v70 + 1) & 0x1000000000000000) != 0)
        {
          break;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v9 = Capability.loginDisabled.unsafeMutableAddressor();
        v10 = v9[1];
        v11 = v9[2];
        v12 = *(v9 + 24);
        *&v62 = *v9;
        *(&v62 + 1) = v10;
        *&v63 = v11;
        BYTE8(v63) = v12;
        MEMORY[0x1EEE9AC00](v9);
        v55 = &v62;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v13 = sub_1B0C32414(sub_1B0C10BD0, v54, v3);

        if ((v13 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_5:
        result = sub_1B0BD2F90(&v67);
        v7 += 5;
        if (v60 == v2)
        {
          return v57;
        }
      }

      v16 = (*(&v71 + 1) >> 59) & 6 | ((*(&v70 + 1) & 0x2000000000000000) != 0);
      if (v16 > 2)
      {
        if ((v16 - 5) >= 2)
        {
          if (v16 == 3)
          {
            v24 = v7[2];
            v25 = v7[4];
            v65 = v7[3];
            v66 = v25;
            v26 = *v7;
            v63 = v7[1];
            v64 = v24;
            v62 = v26;
            *(&v65 + 1) &= ~0x1000000000000000uLL;
            sub_1B0BD1224(&v62, v61);
            if (qword_1EB6E5378 != -1)
            {
              swift_once();
            }

            v20 = &qword_1EB738388;
          }

          else
          {
            v36 = v7[2];
            v37 = v7[4];
            v65 = v7[3];
            v66 = v37;
            v38 = *v7;
            v63 = v7[1];
            v64 = v36;
            v62 = v38;
            *(&v65 + 1) &= ~0x1000000000000000uLL;
            sub_1B0BD1224(&v62, v61);
            if (qword_1EB6E5380 != -1)
            {
              swift_once();
            }

            v20 = &qword_1EB738398;
          }
        }

        else
        {
          v21 = v7[2];
          v22 = v7[4];
          v65 = v7[3];
          v66 = v22;
          v23 = *v7;
          v63 = v7[1];
          v64 = v21;
          v62 = v23;
          *(&v65 + 1) &= ~0x1000000000000000uLL;
          sub_1B0BD1224(&v62, v61);
          if (qword_1EB6E5370 != -1)
          {
            swift_once();
          }

          v20 = &qword_1EB738378;
        }
      }

      else
      {
        if (!v16)
        {
          v27 = v7[2];
          v28 = v7[4];
          v65 = v7[3];
          v66 = v28;
          v29 = *v7;
          v63 = v7[1];
          v64 = v27;
          v62 = v29;
          *(&v65 + 1) &= ~0x1000000000000000uLL;
          sub_1B0BD1224(&v62, v61);
          v30 = AuthenticationMechanism.plain.unsafeMutableAddressor();
          v32 = *v30;
          v31 = v30[1];
          goto LABEL_31;
        }

        if (v16 == 1)
        {
          v17 = v7[2];
          v18 = v7[4];
          v65 = v7[3];
          v66 = v18;
          v19 = *v7;
          v63 = v7[1];
          v64 = v17;
          v62 = v19;
          *(&v65 + 1) &= ~0x1000000000000000uLL;
          sub_1B0BD1224(&v62, v61);
          if (qword_1EB6DE340 != -1)
          {
            swift_once();
          }

          v20 = &qword_1EB737E98;
        }

        else
        {
          v33 = v7[2];
          v34 = v7[4];
          v65 = v7[3];
          v66 = v34;
          v35 = *v7;
          v63 = v7[1];
          v64 = v33;
          v62 = v35;
          *(&v65 + 1) &= ~0x1000000000000000uLL;
          sub_1B0BD1224(&v62, v61);
          if (qword_1EB6DE338 != -1)
          {
            swift_once();
          }

          v20 = &qword_1EB737E88;
        }
      }

      v32 = *v20;
      v31 = v20[1];
LABEL_31:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v39 = static Capability.authenticate(_:)(v32, v31);
      v41 = v40;
      v43 = v42;
      v45 = v44;

      *&v62 = v39;
      *(&v62 + 1) = v41;
      *&v63 = v43;
      BYTE8(v63) = v45 & 1;
      MEMORY[0x1EEE9AC00](v46);
      v55 = &v62;
      v3 = v59;
      v47 = sub_1B0C32414(sub_1B0BD6614, v54, v59);

      v2 = v58;
      if ((v47 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_32:
      v6 = v57;
      result = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((result & 1) == 0)
      {
        result = sub_1B0BFE574(0, *(v6 + 16) + 1, 1);
        v6 = v72;
      }

      v5 = v56;
      v49 = *(v6 + 16);
      v48 = *(v6 + 24);
      if (v49 >= v48 >> 1)
      {
        result = sub_1B0BFE574((v48 > 1), v49 + 1, 1);
        v6 = v72;
      }

      *(v6 + 16) = v49 + 1;
      v50 = (v6 + 80 * v49);
      v50[2] = v67;
      v51 = v68;
      v52 = v69;
      v53 = v71;
      v50[5] = v70;
      v50[6] = v53;
      v50[3] = v51;
      v50[4] = v52;
      v4 = v60;
      if (v60 == v2)
      {
        return v6;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B0C0FDB0()
{
  result = sub_1B0E44BB8();
  qword_1EB737E98 = result;
  unk_1EB737EA0 = v1;
  return result;
}

uint64_t sub_1B0C0FDE4()
{
  result = sub_1B0E44BB8();
  qword_1EB737E88 = result;
  unk_1EB737E90 = v1;
  return result;
}

uint64_t sub_1B0C0FE1C()
{
  result = sub_1B0E44BB8();
  qword_1EB738378 = result;
  unk_1EB738380 = v1;
  return result;
}

uint64_t sub_1B0C0FE4C()
{
  result = sub_1B0E44BB8();
  qword_1EB738388 = result;
  unk_1EB738390 = v1;
  return result;
}

uint64_t sub_1B0C0FE84()
{
  result = sub_1B0E44BB8();
  qword_1EB738398 = result;
  unk_1EB7383A0 = v1;
  return result;
}

uint64_t sub_1B0C0FEBC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[7];
  v9 = a1[9];
  v10 = (v9 >> 59) & 6 | ((v8 & 0x2000000000000000) != 0);
  if (v10 > 2)
  {
    if (v10 > 4)
    {
      if (v10 == 5)
      {
        if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 5)
        {
          return 0;
        }
      }

      else if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 6)
      {
        return 0;
      }

LABEL_28:
      v22 = a2[2];
      v23 = a2[3];
      if (v4 == *a2 && v5 == a2[1] || (sub_1B0E46A78() & 1) != 0)
      {
        if (v6 == v22 && v7 == v23)
        {
          return 1;
        }

        return sub_1B0E46A78();
      }

      return 0;
    }

    if (v10 == 3)
    {
      if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 3)
      {
        return 0;
      }

      goto LABEL_28;
    }

    if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 4)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10)
  {
    if ((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0))
    {
      return 0;
    }

LABEL_22:
    v19 = a2[2];
    v20 = a2[3];
    if ((sub_1B0AB8858(v4, v5, *a2, a2[1]) & 1) == 0)
    {
      return 0;
    }

    v4 = v6;
    v5 = v7;
    v18 = v19;
    v17 = v20;
    goto LABEL_24;
  }

  if (v10 == 1)
  {
    v11 = a2[7];
    v12 = a2[9];
    if (((v12 >> 59) & 6 | ((v11 & 0x2000000000000000) != 0)) != 1)
    {
      return 0;
    }

    v28 = a1[5];
    v29 = a1[4];
    v13 = a2[2];
    v14 = a2[3];
    v15 = a2[4];
    v16 = a2[5];
    v26 = a2[6];
    v27 = a1[6];
    v24 = a2[8];
    v25 = a1[8];
    if ((sub_1B0AB8858(v4, v5, *a2, a2[1]) & 1) == 0 || (sub_1B0AB8858(v6, v7, v13, v14) & 1) == 0 || (sub_1B0AB8858(v29, v28, v15, v16) & 1) == 0 || (sub_1B0AB8858(v27, v8 & 0xDFFFFFFFFFFFFFFFLL, v26, v11 & 0xDFFFFFFFFFFFFFFFLL) & 1) == 0)
    {
      return 0;
    }

    v5 = v9 & 0xCFFFFFFFFFFFFFFFLL;
    v17 = v12 & 0xCFFFFFFFFFFFFFFFLL;
    v18 = v24;
    v4 = v25;
  }

  else
  {
    if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 2)
    {
      return 0;
    }

    v18 = *a2;
    v17 = a2[1];
  }

LABEL_24:

  return sub_1B0AB8858(v4, v5, v18, v17);
}

BOOL sub_1B0C101A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if ((v2 & 0x1000000000000000) != 0)
  {
    v3 = qword_1B0ED6968[(*(a1 + 72) >> 59) & 6 | (v2 >> 61) & 1];
    v4 = *(a2 + 56);
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 8;
    return v3 < v5;
  }

  v3 = 8;
  v4 = *(a2 + 56);
  if ((v4 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = qword_1B0ED6968[(*(a2 + 72) >> 59) & 6 | (v4 >> 61) & 1];
  return v3 < v5;
}

uint64_t sub_1B0C10200(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v12 = (a10 >> 59) & 6 | ((a8 & 0x2000000000000000) != 0);
  if (v12 > 3)
  {
    if (v12 > 5)
    {
      if (v12 != 6)
      {
        return result;
      }
    }

    else if (v12 == 4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v12 <= 1)
    {
      if (v12)
      {
        sub_1B0391D50(result, a2);
        sub_1B0391D50(a3, a4);
        sub_1B0391D50(a5, a6);
        sub_1B0391D50(a7, a8 & 0xDFFFFFFFFFFFFFFFLL);
        a2 = a10 & 0xCFFFFFFFFFFFFFFFLL;
        result = a9;
LABEL_9:

        return sub_1B0391D50(result, a2);
      }

LABEL_7:
      sub_1B0391D50(result, a2);
      result = a3;
      a2 = a4;
      goto LABEL_9;
    }

    if (v12 == 2)
    {
      goto LABEL_9;
    }
  }
}

uint64_t objectdestroy_10Tm()
{
  sub_1B0C10200(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11]);
  v1 = v0[13];
  if (v1 >> 60 != 15)
  {
    sub_1B0391D50(v0[12], v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1B0C103A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  if ((a8 & 0x1000000000000000) != 0)
  {
    v11 = a8 & 0xEFFFFFFFFFFFFFFFLL;

    return sub_1B0C10200(a1, a2, a3, a4, a5, a6, a7, v11, a9, a10);
  }

  else
  {
  }
}

uint64_t sub_1B0C1040C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 <= 1u)
  {
    if (!a9)
    {
      goto LABEL_13;
    }

    if (a9 != 1)
    {
      return result;
    }
  }

  else
  {
    if (a9 != 2)
    {
      if (a9 == 3)
      {
LABEL_14:
      }

      if (a9 != 4)
      {
        return result;
      }

LABEL_13:

      goto LABEL_14;
    }
  }
}

uint64_t sub_1B0C10500(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = sub_1B0E44B68();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[7];
  v9 = a1[9];
  v10 = (v9 >> 59) & 6 | ((v8 & 0x2000000000000000) != 0);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5630, &qword_1B0ED5CF0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1B0EC1E70;
      *(v11 + 32) = v3;
      *(v11 + 40) = v2;
      *(v11 + 72) = 0;
      *(v11 + 88) = 0x1000000000000000;
      *(v11 + 104) = 0x1000000000000000;
      sub_1B03B2000(v3, v2);
    }

    else if (v10 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5630, &qword_1B0ED5CF0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1B0EC1E70;
      *(v11 + 32) = v3;
      *(v11 + 40) = v2;
      *(v11 + 48) = v7;
      *(v11 + 56) = v6;
      *(v11 + 72) = 0;
      *(v11 + 88) = 0x3000000000000000;
      *(v11 + 104) = 0x1000000000000000;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }

    return v11;
  }

  if (v10)
  {
    v22 = a1[8];
    v23 = a1[5];
    v52 = a1[6];
    v24 = a1[2];
    v25 = v9 & 0xCFFFFFFFFFFFFFFFLL;
    v26 = a1[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5630, &qword_1B0ED5CF0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B0EC1E70;
    *(v11 + 32) = v3;
    *(v11 + 40) = v2;
    *(v11 + 48) = v24;
    *(v11 + 56) = v6;
    *(v11 + 64) = v26;
    *(v11 + 72) = v23 & 0xCFFFFFFFFFFFFFFFLL;
    *(v11 + 80) = v52;
    *(v11 + 88) = v8 | 0x3000000000000000;
    *(v11 + 96) = v22;
    *(v11 + 104) = v25;
    sub_1B03B2000(v3, v2);
    sub_1B03B2000(v24, v6);
    sub_1B03B2000(v26, v23);
    sub_1B03B2000(v52, v8 & 0xDFFFFFFFFFFFFFFFLL);
    sub_1B03B2000(v22, v25);
    return v11;
  }

  sub_1B0E44B38();
  v12 = sub_1B0E44AF8();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    sub_1B0E44B38();
    v16 = sub_1B0E44AF8();
    if (v17)
    {
      v18 = v17;
      v50 = v16;
      v51 = v14;
      v11 = sub_1B0C0C208(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        v11 = sub_1B0C0C208((v19 > 1), v20 + 1, 1, v11);
      }

      *(v11 + 16) = v20 + 1;
      v21 = (v11 + 80 * v20);
      v21[4] = v51;
      v21[5] = v15;
      v21[6] = v50;
      v21[7] = v18;
      v21[9] = 0;
      v21[11] = 0;
      goto LABEL_16;
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_16:
  sub_1B03B2000(v3, v2);
  sub_1B03B2000(v7, v6);
  sub_1B03B2000(v3, v2);
  sub_1B03B2000(v7, v6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1B0C0C208(0, *(v11 + 16) + 1, 1, v11);
  }

  v28 = *(v11 + 16);
  v27 = *(v11 + 24);
  v29 = v27 >> 1;
  v30 = v28 + 1;
  if (v27 >> 1 <= v28)
  {
    v11 = sub_1B0C0C208((v27 > 1), v28 + 1, 1, v11);
    v27 = *(v11 + 24);
    v29 = v27 >> 1;
  }

  *(v11 + 16) = v30;
  v31 = (v11 + 80 * v28);
  v31[4] = v3;
  v31[5] = v2;
  v31[6] = v7;
  v31[7] = v6;
  v31[9] = 0;
  v31[11] = 0x1000000000000000;
  v31[13] = 0x2000000000000000;
  v32 = v28 + 2;
  if (v29 < v32)
  {
    v11 = sub_1B0C0C208((v27 > 1), v32, 1, v11);
  }

  *(v11 + 16) = v32;
  v33 = (v11 + 80 * v30);
  v33[4] = v3;
  v33[5] = v2;
  v33[6] = v7;
  v33[7] = v6;
  v33[9] = 0;
  v33[11] = 0x1000000000000000;
  v33[13] = 0;
  sub_1B0E44B48();
  v34 = sub_1B0E44AF8();
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    sub_1B0E44B48();
    v38 = sub_1B0E44AF8();
    if (v39)
    {
      v40 = v38;
      v41 = v39;
      v42 = *(v11 + 16);
      v43 = *(v11 + 24);
      v44 = v43 >> 1;
      v45 = v42 + 1;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v43 >> 1 <= v42)
      {
        v11 = sub_1B0C0C208((v43 > 1), v42 + 1, 1, v11);
        v43 = *(v11 + 24);
        v44 = v43 >> 1;
      }

      *(v11 + 16) = v45;
      v46 = (v11 + 80 * v42);
      v46[4] = v36;
      v46[5] = v37;
      v46[6] = v40;
      v46[7] = v41;
      v46[9] = 0;
      v46[11] = 0x3000000000000000;
      v46[13] = 0x2000000000000000;
      v47 = v42 + 2;
      if (v44 < v47)
      {
        v11 = sub_1B0C0C208((v43 > 1), v47, 1, v11);
      }

      *(v11 + 16) = v47;
      v48 = (v11 + 80 * v45);
      v48[4] = v36;
      v48[5] = v37;
      v48[6] = v40;
      v48[7] = v41;
      v48[9] = 0;
      v48[11] = 0x1000000000000000;
      v48[13] = 0x3000000000000000;
    }

    else
    {
    }
  }

  return v11;
}

uint64_t sub_1B0C10A24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3A && *(a1 + 80))
  {
    return (*a1 + 58);
  }

  v3 = (*(a1 + 56) >> 58) & 0xC;
  v4 = (((*(a1 + 79) & 0x30 | v3) >> 3) & 0xFFFFFFC7 | (8 * (v3 & 7 | (*(a1 + 40) >> 60) & 3))) ^ 0x3F;
  if (v4 >= 0x39)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1B0C10A94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 58;
    if (a3 >= 0x3A)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3A)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      v3 = (-a2 >> 3) & 7 | (8 * (-a2 & 0x3F));
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 3) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_1B0C10B18(uint64_t result)
{
  v1 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 56) &= ~0x2000000000000000uLL;
  *(result + 72) = v1;
  return result;
}

void *sub_1B0C10B34(void *result, char a2)
{
  v2 = result[9];
  v3 = result[7] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
  result[5] &= 0xCFFFFFFFFFFFFFFFLL;
  result[7] = v3;
  result[9] = v2 & 0xCFFFFFFFFFFFFFFFLL | ((((a2 & 7) >> 1) & 3) << 60);
  return result;
}

unint64_t sub_1B0C10B7C()
{
  result = qword_1EB6E5720;
  if (!qword_1EB6E5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5720);
  }

  return result;
}

uint64_t sub_1B0C10BEC()
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = sub_1B0E45278();
  *(v1 + 16) = 32;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  sub_1B0C12FFC((v1 + 32));
  v16 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1B0C0DF68(v1);
  }

  if (*(v1 + 16) <= 0xBuLL)
  {
    goto LABEL_20;
  }

  *(v1 + 40) = 1;
  v2 = *(v0 + 32);
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1B0C0DF68(v1);
  }

  if (*(v1 + 16) <= 0xFuLL)
  {
LABEL_20:
    result = sub_1B0E465B8();
    __break(1u);
  }

  else
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v4) & 0xF;
    }

    if (v2)
    {
      v8 = 524807;
    }

    else
    {
      v8 = 519;
    }

    v9 = v5 & 0xFFFFFFFFFFFFLL;
    if ((v6 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v6) & 0xF;
    }

    if (v7)
    {
      v10 = v8 | 0x1000;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v10 |= 0x2000u;
    }

    *(v1 + 44) = v10;
    v11 = sub_1B0C12C10(v3, v4);
    sub_1B0C12034(v11, 16);

    v12 = sub_1B0C12C10(v5, v6);
    sub_1B0C12034(v12, 24);

    sub_1B0C31A28(v16);
    v13 = sub_1B0C05480(v1);

    v14 = *MEMORY[0x1E69E9840];
    return v13;
  }

  return result;
}

uint64_t sub_1B0C10E04(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (!v9)
    {
      if (v4 != v7 || v5 != v8)
      {
        return sub_1B0E46A78();
      }

      return 1;
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v9 == 1)
    {
      if (v4 != v7 || v5 != v8)
      {
        return sub_1B0E46A78();
      }

      return 1;
    }

    return 0;
  }

  return v9 == 2 && (v8 | v7) == 0;
}

BOOL sub_1B0C10EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1B0C14F44(v5, v7);
}

uint64_t sub_1B0C10EFC@<X0>(size_t a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B0C1126C(a1, a2);
  if (!v3)
  {
    if (a1)
    {
      v10 = a2 - a1;
    }

    else
    {
      v10 = 0;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (sub_1B0C11688(8, 0, v10, a1, a2) != 2)
      {
        sub_1B0C16BB4();
        swift_allocError();
        *v11 = 2;
        *(v11 + 8) = 2;
        return swift_willThrow();
      }

      v4 = sub_1B0C11688(20, 0, v10, a1, a2);
      v5 = sub_1B0C13148(0x18, 8, a1, a2);
      if ((v4 & 0x800000) != 0)
      {
        v12 = sub_1B0C11504(40, 0, v10, a1, a2);
        if (v12)
        {
          v17 = v12;
          v18 = sub_1B0C11504(44, 0, v10, a1, a2);
          v10 = 0;
          if (v17 <= 0x7CFu && v18 < 0x7D0u)
          {
            v10 = 0;
            if (a1)
            {
              v29 = 0;
              v19 = (v18 + v17);
              if ((a2 - a1) >= v19)
              {
                v20 = v18;
                v21 = v19 - v18;
                v10 = sub_1B0C0C9F0(v21, 0);
                result = sub_1B0C14C80(v28, (v10 + 32), v21, v20, v19, a1, a2);
                if (result != v21)
                {
                  __break(1u);
                  return result;
                }
              }

              v3 = v29;
            }
          }
        }

        else
        {
          v10 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v10 = 0;
      }

      if ((v4 & 0x2000000) == 0)
      {
        v13 = 0;
LABEL_16:
        v15 = 1;
        goto LABEL_17;
      }

      v14 = sub_1B0C13148(0x30, 8, a1, a2);
      if (v3)
      {

        v13 = 0;
        v3 = 0;
        goto LABEL_16;
      }

      v22 = v14[2];
      v29 = v14;
      if (v22 != 8)
      {
        sub_1B0C16DE4();
        v24 = swift_allocError();
        swift_willThrow();

        v13 = 0;
        v15 = 1;
        v3 = 0;
        goto LABEL_17;
      }

      v23 = (v14 + 4);
      v27 = sub_1B0C1180C(0, 0, 8uLL, (v14 + 4), (v14 + 5));
      v26 = sub_1B0C1180C(1, 0, 8uLL, v23, v23 + 8);
      v3 = 0;
      LODWORD(result) = sub_1B0C11504(2, 0, 8uLL, v23, v23 + 8);
    }

    v25 = result;

    v15 = 0;
    v13 = v27 | (v26 << 8) | (v25 << 16);
LABEL_17:
    result = sub_1B0C113A8(12, v4 & 1, a1, a2);
    if (v3)
    {
    }

    else
    {
      *a3 = v4;
      *(a3 + 8) = v5;
      *(a3 + 16) = result;
      *(a3 + 24) = v16;
      *(a3 + 32) = v10;
      *(a3 + 40) = v13;
      *(a3 + 44) = v15;
    }
  }

  return result;
}

uint64_t sub_1B0C1126C(uint64_t a1, uint64_t a2)
{
  v2 = a2 - a1;
  if (!a1)
  {
    v2 = 0;
  }

  if ((v2 & 0x8000000000000000) != 0 || (v3 = v2, v2 > 6))
  {
    v3 = 7;
  }

  *&v12 = 0;
  *(&v12 + 1) = v3;
  *&v13 = a1;
  *(&v13 + 1) = v2;
  v14 = xmmword_1B0ED69A0;
  *&v15 = 0xE700000000000000;
  *(&v15 + 1) = 15;
  v16 = 0;
  while (1)
  {
    v4 = sub_1B0C14AD0();
    if ((v4 & 0x10000) != 0)
    {
      break;
    }

    if ((v4 & 0x80) != 0 || v4 != BYTE1(v4))
    {
      v9 = v14;
      v10 = v15;
      v11 = v16;
      v7 = v12;
      v8 = v13;
      sub_1B0398EFC(&v7, &qword_1EB6E5788, &qword_1B0ED6C48);
      sub_1B0C16BB4();
      swift_allocError();
      *v5 = 0;
      *(v5 + 8) = 2;
      return swift_willThrow();
    }
  }

  v9 = v14;
  v10 = v15;
  v11 = v16;
  v7 = v12;
  v8 = v13;
  return sub_1B0398EFC(&v7, &qword_1EB6E5788, &qword_1B0ED6C48);
}

uint64_t sub_1B0C113A8(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (a3)
  {
    v6 = a4 - a3;
  }

  else
  {
    v6 = 0;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v10 = result;
  result = sub_1B0C11504(result, 0, v6, a3, a4);
  if (v4)
  {
    return result;
  }

  if (!result)
  {
    return 0;
  }

  v11 = result;
  result = v10 + 4;
  if (__OFADD__(v10, 4))
  {
    goto LABEL_20;
  }

  v12 = sub_1B0C11504(result, 0, v6, a3, a4);
  v13 = 2;
  v14 = 3;
  if (v11 <= 0x7CFu && v12 <= 0x7CFu)
  {
    v14 = 3;
    if (a3)
    {
      v15 = (v12 + v11);
      if (v5 >= v15)
      {
        v14 = v15 - v12;
        if ((a2 & 1) == 0)
        {
          return sub_1B0C15EEC((v12 + a3), v14);
        }

        if ((v14 & 1) == 0)
        {
          return sub_1B0C15FC4(v12 + a3, v11 >> 1);
        }

        v13 = 1;
      }
    }
  }

  sub_1B0C16BB4();
  swift_allocError();
  *v16 = v14;
  *(v16 + 8) = v13;
  return swift_willThrow();
}

uint64_t sub_1B0C11504(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1 + 2;
  if (__OFADD__(a1, 2))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = a5 - a4;
  if (!a4)
  {
    v6 = 0;
  }

  if ((a2 & 0x8000000000000000) != 0 || v6 < a2)
  {
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) != 0 || v6 < a3)
  {
    goto LABEL_23;
  }

  if ((a3 - a2) >= v5)
  {
    v9 = a2 + a1;
    if (!__OFADD__(a2, a1))
    {
      if ((v9 & 0x8000000000000000) == 0 && v6 >= v9)
      {
        v10 = __OFADD__(a2, v5);
        v11 = a2 + v5;
        if (!v10)
        {
          if ((v11 & 0x8000000000000000) == 0 && v6 >= v11)
          {
            if (v11 >= v9)
            {
              if (v9 >= a2)
              {
                if (v11 <= a3)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5770, &qword_1B0ED6C40);
                  sub_1B0C16D0C();
                  sub_1B0E429B8();
                  result = 0;
                  goto LABEL_20;
                }

LABEL_30:
                __break(1u);
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1B0C16BB4();
  swift_allocError();
  *v7 = 1;
  *(v7 + 8) = 2;
  result = swift_willThrow();
LABEL_20:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C11688(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1 + 4;
  if (__OFADD__(a1, 4))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = a5 - a4;
  if (!a4)
  {
    v6 = 0;
  }

  if ((a2 & 0x8000000000000000) != 0 || v6 < a2)
  {
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) != 0 || v6 < a3)
  {
    goto LABEL_23;
  }

  if ((a3 - a2) >= v5)
  {
    v9 = a2 + a1;
    if (!__OFADD__(a2, a1))
    {
      if ((v9 & 0x8000000000000000) == 0 && v6 >= v9)
      {
        v10 = __OFADD__(a2, v5);
        v11 = a2 + v5;
        if (!v10)
        {
          if ((v11 & 0x8000000000000000) == 0 && v6 >= v11)
          {
            if (v11 >= v9)
            {
              if (v9 >= a2)
              {
                if (v11 <= a3)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5770, &qword_1B0ED6C40);
                  sub_1B0C16D0C();
                  sub_1B0E429B8();
                  result = 0;
                  goto LABEL_20;
                }

LABEL_30:
                __break(1u);
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1B0C16BB4();
  swift_allocError();
  *v7 = 1;
  *(v7 + 8) = 2;
  result = swift_willThrow();
LABEL_20:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C1180C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = a5 - a4;
  if (!a4)
  {
    v6 = 0;
  }

  if ((a2 & 0x8000000000000000) != 0 || v6 < a2)
  {
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) != 0 || v6 < a3)
  {
    goto LABEL_23;
  }

  if ((a3 - a2) >= v5)
  {
    v9 = a2 + a1;
    if (!__OFADD__(a2, a1))
    {
      if ((v9 & 0x8000000000000000) == 0 && v6 >= v9)
      {
        v10 = __OFADD__(a2, v5);
        v11 = a2 + v5;
        if (!v10)
        {
          if ((v11 & 0x8000000000000000) == 0 && v6 >= v11)
          {
            if (v11 >= v9)
            {
              if (v9 >= a2)
              {
                if (v11 <= a3)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5770, &qword_1B0ED6C40);
                  sub_1B0C16D0C();
                  sub_1B0E429B8();
                  result = 0;
                  goto LABEL_20;
                }

LABEL_30:
                __break(1u);
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1B0C16BB4();
  swift_allocError();
  *v7 = 1;
  *(v7 + 8) = 2;
  result = swift_willThrow();
LABEL_20:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C11990(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v2, v3);
}

uint64_t sub_1B0C119EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_1B0E46A78()) && (v2 == v7 && v4 == v8 || (sub_1B0E46A78()) && (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v3, v10))
  {
    return _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v5, v9) & (v6 == v11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C11ACC()
{
  v1 = v0;
  v12 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0E45278();
  *(v2 + 16) = 64;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  sub_1B0C12FFC((v2 + 32));
  v11 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0C0DF68(v2);
  }

  if (*(v2 + 16) > 0xBuLL)
  {
    *(v2 + 40) = 3;
    v3 = sub_1B0C12C10(*(v1 + 16), *(v1 + 24));
    sub_1B0C12034(v3, 28);

    v4 = sub_1B0C12C10(*(v1 + 32), *(v1 + 40));
    sub_1B0C12034(v4, 36);

    v5 = sub_1B0C12C10(*(v1 + 48), *(v1 + 56));
    sub_1B0C12034(v5, 44);

    sub_1B0C11D00(*v1, 12);
    sub_1B0C11D00(*(v1 + 8), 20);
    v6 = *(v1 + 64);
    if (v6)
    {
      sub_1B0C11E9C(v6 + 32, *(v6 + 16), 52);
    }

    else
    {
      sub_1B0C11D00(MEMORY[0x1E69E7CC0], 52);
    }

    if (*(v1 + 76))
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 72);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B0C0DF68(v2);
    }

    if (*(v2 + 16) > 0x3FuLL)
    {
      *(v2 + 92) = v7;
LABEL_12:
      sub_1B0C31A28(v11);
      v8 = sub_1B0C05480(v2);

      v9 = *MEMORY[0x1E69E9840];
      return v8;
    }
  }

  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

uint64_t sub_1B0C11D00(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v20 = *MEMORY[0x1E69E9840];
  v6 = v2[1];
  v5 = v2 + 1;
  v7 = *(v6 + 16);
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v10))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = a2;
  v11 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C31A28(v11);
  v5 = (*(*v5 + 16) - v7);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  result = sub_1B0C0DF68(v8);
  v8 = result;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (v5 >> 16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v8 + 16);
  if (v14 < v13)
  {
    goto LABEL_31;
  }

  if (v13 < v3)
  {
    goto LABEL_25;
  }

  v15 = v8 + 32;
  *(v8 + 32 + v3) = v5;
  v16 = v3 + 4;
  if (__OFADD__(v13, 2))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 < v16)
  {
    goto LABEL_31;
  }

  if (v16 < v13)
  {
    goto LABEL_27;
  }

  *(v15 + v13) = v5;
  v17 = v3 + 4;
  if (__OFADD__(v3, 4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v3 + 8;
  if (__OFADD__(v17, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 >= v18)
  {
    if (v18 >= v17)
    {
      *(v15 + v17) = v10;
      *v4 = v8;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_30:
    __break(1u);
  }

LABEL_31:
  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

uint64_t sub_1B0C11E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v20 = *MEMORY[0x1E69E9840];
  v7 = v3[1];
  v6 = v3 + 1;
  v8 = *(v7 + 16);
  v9 = *v5;
  v10 = *(*v5 + 16);
  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v11))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = a3;
  sub_1B0C32170(a1, a2, 0);
  v6 = (*(*v6 + 16) - v8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  result = sub_1B0C0DF68(v9);
  v9 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (v6 >> 16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v4 + 2;
  if (__OFADD__(v4, 2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v9 + 16);
  if (v14 < v13)
  {
    goto LABEL_31;
  }

  if (v13 < v4)
  {
    goto LABEL_25;
  }

  v15 = v9 + 32;
  *(v9 + 32 + v4) = v6;
  v16 = v4 + 4;
  if (__OFADD__(v13, 2))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 < v16)
  {
    goto LABEL_31;
  }

  if (v16 < v13)
  {
    goto LABEL_27;
  }

  *(v15 + v13) = v6;
  v17 = v4 + 4;
  if (__OFADD__(v4, 4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v4 + 8;
  if (__OFADD__(v17, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 >= v18)
  {
    if (v18 >= v17)
    {
      *(v15 + v17) = v11;
      *v5 = v9;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_30:
    __break(1u);
  }

LABEL_31:
  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

uint64_t sub_1B0C12034(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v19 = *MEMORY[0x1E69E9840];
  v6 = v2[1];
  v5 = v2 + 1;
  v7 = *(v6 + 16);
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v10))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = a2;

  sub_1B0C31B14();
  v5 = (*(*v5 + 16) - v7);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  result = sub_1B0C0DF68(v8);
  v8 = result;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (v5 >> 16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = *(v8 + 16);
  if (v13 < v12)
  {
    goto LABEL_31;
  }

  if (v12 < v3)
  {
    goto LABEL_25;
  }

  v14 = v8 + 32;
  *(v8 + 32 + v3) = v5;
  v15 = v3 + 4;
  if (__OFADD__(v12, 2))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v13 < v15)
  {
    goto LABEL_31;
  }

  if (v15 < v12)
  {
    goto LABEL_27;
  }

  *(v14 + v12) = v5;
  v16 = v3 + 4;
  if (__OFADD__(v3, 4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = v3 + 8;
  if (__OFADD__(v16, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v13 >= v17)
  {
    if (v17 >= v16)
    {
      *(v14 + v16) = v10;
      *v4 = v8;
      v18 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_30:
    __break(1u);
  }

LABEL_31:
  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

uint64_t sub_1B0C121D0(uint64_t a1, uint64_t (*a2)(void))
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a2();
  v3 = *(v2 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_2:
  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1B0C0C114((v4 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v6;
  v2[v5 + 32] = 0x80;
  v24 = v2;
  if (v5 > 0xFFFFFFFFFFFFFFELL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if ((v6 & 0x100000000000003FLL) == 0x38)
  {
    goto LABEL_12;
  }

  v7 = v5 + 33;
  do
  {
    v8 = *(v2 + 3);
    v9 = v7 - 31;
    if (v7 - 32 >= v8 >> 1)
    {
      v2 = sub_1B0C0C114((v8 > 1), v7 - 31, 1, v2);
    }

    *(v2 + 2) = v9;
    v2[v7] = 0;
    if (v7 - 32 > 0xFFFFFFFFFFFFFFELL)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v2 = sub_1B0C0C114(0, v3 + 1, 1, v2);
      goto LABEL_2;
    }

    ++v7;
  }

  while ((v9 & 0x100000000000003FLL) != 0x38);
  v24 = v2;
LABEL_12:
  if (v3 >> 60)
  {
LABEL_26:
    __break(1u);
  }

  v23 = 8 * v3;
  sub_1B0C31CE8(&v23, &v24);
  v23 = v3 >> 29;
  sub_1B0C31CE8(&v23, &v24);
  v10 = 1732584193;
  v11 = -271733879;
  v22 = -271733879;
  v23 = 1732584193;
  v12 = -1732584194;
  v13 = 271733878;
  v20 = 271733878;
  v21 = -1732584194;
  v2 = v24;
  v14 = *(v24 + 2);
  if (v14 >= 4)
  {
    v15 = 0;
    v3 = v14 >> 2;
    do
    {
      v16 = &v2[4 * v15 + 32];
      v25[0] = *v16;
      v25[1] = v16[1];
      v25[2] = v16[2];
      v25[3] = v16[3];
      v25[4] = v16[4];
      v25[5] = v16[5];
      v25[6] = v16[6];
      v25[7] = v16[7];
      v25[8] = v16[8];
      v25[9] = v16[9];
      v25[10] = v16[10];
      v25[11] = v16[11];
      v25[12] = v16[12];
      v25[13] = v16[13];
      v25[14] = v16[14];
      v25[15] = v16[15];
      sub_1B0C174B8(&v23, &v22, &v21, &v20, v25);
      if (v3 - v15 >= 0x10)
      {
        v15 += 16;
      }

      else
      {
        v15 = v3;
      }

      if (v3 < v15)
      {
        goto LABEL_23;
      }
    }

    while (v15 != v3);
    v11 = v22;
    v10 = v23;
    v13 = v20;
    v12 = v21;
  }

  v17 = sub_1B0E45278();
  *(v17 + 16) = 16;
  *(v17 + 32) = v10;
  *(v17 + 36) = v11;
  *(v17 + 40) = v12;
  *(v17 + 44) = v13;

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t sub_1B0C124B8(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) != 16)
  {
LABEL_12:
    __break(1u);
  }

  swift_bridgeObjectRetain_n();
  sub_1B0C14438(a1, a1 + 32, 0, 0xFuLL);
  v6 = v5;
  v21 = v5;
  sub_1B0C14438(a1, a1 + 32, 7, 0x1DuLL);
  v8 = v7;

  v22 = v8;
  sub_1B0C14438(a1, a1 + 32, 14, 0x21uLL);
  v10 = v9;

  sub_1B0C31A28(&unk_1F271B6D8);
  v23 = v10;
  v19 = MEMORY[0x1E69E7CC0];
  if (*(v6 + 16) != 7)
  {
    goto LABEL_11;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C12730(key, 8uLL, v6, a2, &v18);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    swift_arrayDestroy();

    swift_willThrow();

    goto LABEL_9;
  }

  v11 = v18;

  sub_1B0C31A28(v11);
  v12 = v22;
  if (*(v22 + 16) != 7 || (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), sub_1B0C12730(key, 8uLL, v12, a2, &v18), v13 = v18, , sub_1B0C31A28(v13), v14 = v23, *(v23 + 16) != 7))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C12730(key, 8uLL, v14, a2, &v18);
  v17 = v18;

  sub_1B0C31A28(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  swift_arrayDestroy();
  result = v19;
LABEL_9:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C12730@<X0>(_BYTE *key@<X0>, size_t keyLength@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(a3 + 32);
  *key = v8;
  if (v7 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(a3 + 33);
  HIDWORD(v10) = v8;
  LODWORD(v10) = v9 << 24;
  key[1] = v10 >> 25;
  if (v7 < 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *(a3 + 34);
  HIDWORD(v12) = v9;
  LODWORD(v12) = v11 << 24;
  key[2] = v12 >> 26;
  if (v7 == 3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(a3 + 35);
  HIDWORD(v14) = v11;
  LODWORD(v14) = v13 << 24;
  key[3] = v14 >> 27;
  if (v7 < 5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(a3 + 36);
  HIDWORD(v16) = v13;
  LODWORD(v16) = v15 << 24;
  key[4] = v16 >> 28;
  if (v7 == 5)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v17 = *(a3 + 37);
  HIDWORD(v18) = v15;
  LODWORD(v18) = v17 << 24;
  key[5] = v18 >> 29;
  if (v7 < 7)
  {
    goto LABEL_18;
  }

  v19 = *(a3 + 38);
  HIDWORD(v20) = v17;
  LODWORD(v20) = v19 << 24;
  key[6] = v20 >> 30;
  key[7] = 2 * v19;
  result = sub_1B0C1288C(dataOut, key, keyLength, (a4 + 32), &v25, a4 + 32 + *(a4 + 16), &v23);
  if (v5)
  {
    result = swift_willThrow();
  }

  else
  {
    *a5 = v23;
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C1288C@<X0>(void *dataOut@<X0>, void *key@<X2>, size_t keyLength@<X3>, void *dataIn@<X4>, size_t a5@<X1>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (dataIn)
  {
    v10 = a6 - dataIn;
  }

  else
  {
    v10 = 0;
  }

  if (dataOut)
  {
    v11 = a5 - dataOut;
  }

  else
  {
    v11 = 0;
  }

  dataOutMoved = 0;
  result = CCCrypt(0, 1u, 2u, key, keyLength, 0, dataIn, v10, dataOut, v11, &dataOutMoved);
  if (!result)
  {
    if ((dataOutMoved & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= dataOutMoved)
      {
        v11 = dataOutMoved;
      }

      if (v11)
      {
        v15 = sub_1B0C0C9F0(v11, 0);
        result = sub_1B0C14C80(v18, v15 + 4, v11, 0, v11, dataOut, a5);
        if (result == v11)
        {
LABEL_17:
          *a7 = v15;
          goto LABEL_18;
        }

        __break(1u);
      }

      v15 = MEMORY[0x1E69E7CC0];
      goto LABEL_17;
    }

    __break(1u);
  }

  v13 = result;
  sub_1B0C16E48();
  swift_allocError();
  *v14 = v13;
  result = swift_willThrow();
LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C129E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1B0E44508();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B0C12C10(a3, a4);
  v16 = sub_1B0C121D0(v15, sub_1B0BE9024);

  v22 = sub_1B0E44BB8();
  v23 = v17;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](a5, a6);

  sub_1B0C12C10(v22, v23);

  v22 = sub_1B0C00F18(v18);
  v23 = v19;
  v21[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B039E3F8(&qword_1EB6DAE08, &qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B0E444F8();
  sub_1B0E44568();
  sub_1B0BF8F04();
  sub_1B08DEFE0();
  sub_1B0E44518();

  (*(v11 + 8))(v14, v10);
  return sub_1B0391D50(v22, v23);
}

uint64_t sub_1B0C12C10(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 256;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 0;
  *(v6 + 40) = v5;
  *(v6 + 48) = 0;
  *(v6 + 50) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5760, &qword_1B0ED6C38);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B0C16E38;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5790, &unk_1B0ED6C50);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B0C16E40;
  *(v9 + 24) = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v9;
}

uint64_t sub_1B0C12D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = sub_1B0E45278();
  v7 = v6;
  *(v6 + 16) = 28;
  *(v6 + 34) = 0;
  *(v6 + 42) = 0;
  *(v6 + 50) = 0;
  *(v6 + 58) = 0;
  *(v6 + 32) = 257;
  *(v6 + 40) = a1;
  if (*(a2 + 16) >= 8uLL)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  memmove((v6 + 48), (a2 + 32), v8);
  if (a3)
  {
    v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C31A28(v9);
  }

  v10 = sub_1B0E45278();
  *(v10 + 16) = 4;
  *(v10 + 32) = 0;
  sub_1B0C31A28(v10);
  result = v7;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C12E70()
{
  v3 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](46, 0xE100000000000000);
  v0 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v0);

  MEMORY[0x1B2726E80](46, 0xE100000000000000);
  v1 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v1);

  return v3;
}

uint64_t sub_1B0C12F58(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B0E46A78(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B0E46A78();
    }
  }

  return result;
}

uint64_t sub_1B0C12FFC(void *a1)
{
  v2 = sub_1B0E44BC8();
  v3 = *(v2 + 16);
  if (v3)
  {
    v11 = MEMORY[0x1E69E7CC0];
    v4 = v2;
    sub_1B03A4BAC(0, v3, 0);
    result = v4;
    v6 = 0;
    v7 = v11;
    do
    {
      if (v6 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v8 = aNtlmssp[v6];
      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1B03A4BAC((v9 > 1), v10 + 1, 1);
        result = v4;
      }

      ++v6;
      *(v11 + 16) = v10 + 1;
      *(v11 + v10 + 32) = v8;
    }

    while (v3 != v6);

    if (!a1)
    {
    }
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
    if (!a1)
    {
    }
  }

  memmove(a1, (v7 + 32), *(v7 + 16));
}

void *sub_1B0C13148(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    if (result <= 0)
    {
      v5 = result + a2;
      if (__OFADD__(result, a2))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v5 <= 0)
      {
        goto LABEL_11;
      }
    }

LABEL_9:
    sub_1B0C16BB4();
    swift_allocError();
    *v6 = 1;
    *(v6 + 8) = 2;
    swift_willThrow();
    return v4;
  }

  if (a4 - a3 < result)
  {
    goto LABEL_9;
  }

  v5 = result + a2;
  if (__OFADD__(result, a2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (a4 - a3 < v5)
  {
    goto LABEL_9;
  }

LABEL_11:
  v7 = v5 - result;
  if (v5 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 == result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = result;
  result = sub_1B0C0C9F0(v5 - result, 0);
  v10 = (v9 + v7);
  if (__OFADD__(v9, v7))
  {
    goto LABEL_28;
  }

  if (v10 >= v9)
  {
    v4 = result;
    if (v10 == v9)
    {
      if (v7)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      if (a3)
      {
        v11 = v9 + a3;
      }

      else
      {
        v11 = 0;
      }

      memcpy(result + 4, v11, v7);
    }

    return v4;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B0C1328C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 1;
  result = swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    if (v6 == *(a1 + 24))
    {
      LOWORD(v6) = 0;
      v4 = 1;
    }

    else
    {
      v4 = 0;
      *(a1 + 16) = v6 + 1;
      LOWORD(v6) = *v6;
    }
  }

  *a2 = v6;
  *(a2 + 2) = v4;
  return result;
}

double (*sub_1B0C13310(uint64_t *a1))(void)
{
  v2 = v1;
  LODWORD(v4) = *v1;
  v5 = *(v1 + 4);
  v22 = *v1;
  v23 = v5;
  if (!v5)
  {
    v6 = *a1;
    sub_1B0E466E8();
    if (v21)
    {
LABEL_3:
      v7 = 0;
      *v2 = v4;
      *(v2 + 4) = 0;
      v8 = 1;
LABEL_27:
      LOBYTE(v20) = v8;
      return (v7 | (v8 << 32));
    }

    LODWORD(v7) = v20;
    if ((v20 & 0xF800) != 0xD800)
    {
      v12 = 0;
      goto LABEL_26;
    }

    LODWORD(v4) = v4 & 0xFFFF0000 | v20;
    v5 = 16;
LABEL_6:
    v9 = *a1;
    sub_1B0E466E8();
    if (v21)
    {
      v10 = v5;
      goto LABEL_8;
    }

    LODWORD(v4) = ((-65535 << v5) - 1) & v4 | (v20 << v5);
    v10 = v5 + 16;
    if ((v5 + 16) <= 0x1Fu)
    {
      sub_1B0E466E8();
      if (v21)
      {
        goto LABEL_8;
      }

      LODWORD(v4) = ((-65535 << v10) - 1) & v4 | (v20 << v10);
      v10 = v5 + 32;
      if (v5 >= 0xE0)
      {
        sub_1B0E466E8();
        if ((v21 & 1) == 0)
        {
          v11 = ((-65535 << v5) - 1) & v4 | (v20 << v5);
          v10 = v5 + 48;
LABEL_17:
          v13 = v11 & 0xFC00FC00;
          if ((v11 & 0xFC00FC00) == 0xDC00D800)
          {
            v14 = 32;
          }

          else
          {
            v14 = 16;
          }

          v12 = v10 - v14;
          v15 = v13 == -603924480;
          if (v13 == -603924480)
          {
            v16 = 32;
          }

          else
          {
            v16 = 16;
          }

          v4 = v11 >> v16;
          if (!v15)
          {
            *v2 = v4;
            *(v2 + 4) = v12;
            v7 = 1;
            v8 = 1;
            goto LABEL_27;
          }

          LODWORD(v7) = (HIWORD(v11) & 0x3FF | ((v11 & 0x3FF) << 10)) + 0x10000;
LABEL_26:
          v8 = 0;
          *v2 = v4;
          *(v2 + 4) = v12;
          v7 = v7;
          goto LABEL_27;
        }

LABEL_8:
        v11 = v4;
        if (!v10)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    v11 = v4;
    goto LABEL_17;
  }

  if ((v4 & 0xF800) == 0xD800)
  {
    goto LABEL_6;
  }

  sub_1B0C16CB8();
  result = sub_1B0C14AB0();
  v19 = *(v18 + 4);
  if (v19)
  {
    *v18 = *(v18 + 2);
    *(v18 + 4) = v19 - 16;
    (result)(&v20, 0);
    LODWORD(v7) = v4;
    LODWORD(v4) = v22;
    v12 = v23;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}