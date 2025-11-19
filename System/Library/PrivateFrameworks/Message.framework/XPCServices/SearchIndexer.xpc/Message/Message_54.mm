uint64_t sub_100364EB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005DA5B0, &unk_1004F78C0);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_1004A6E84();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1003650A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_10000C9C0(a2, a3);
  result = sub_1004A6694();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
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
LABEL_17:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EF4(v19);
      result = sub_1004A6F14();
      v21 = -1 << *(v8 + 32);
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1003652BC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100367F68(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100365338(v6);
  return sub_1004A6834();
}

Swift::Int sub_100365338(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1004A6CC4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        _s7MailboxCMa();
        v6 = sub_1004A5C64();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10036596C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_10036543C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10036543C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = result;
  if (a3 == a2)
  {
    return result;
  }

  v4 = *a4;
  p_attr = (&stru_1005CAFF8 + 8);
  v6 = (&stru_1005CAFF8 + 8);
  v61 = *a4;
LABEL_5:
  v7 = *(v4 + 8 * a3);
  v60 = a3;
  while (1)
  {
    v66 = a3;
    v64 = a3 - 1;
    v8 = *(v4 + 8 * (a3 - 1));
    v9 = v7;
    v10 = v8;
    v11 = sub_1004A5734();
    [v9 p_attr[434]];

    v12 = [v9 v6[503]];
    v67 = v10;
    if (v12)
    {
      v13 = v9;
      v9 = v12;
      v14 = sub_1004A6294();
      v15 = v9;
      v16 = sub_1004A62A4();
      v17 = sub_1004A6294();
      v18 = sub_1004A62A4();
      if (v14 < v17 || v18 < v14)
      {
        goto LABEL_56;
      }

      v15 = v9;
      v20 = sub_1004A6294();
      v21 = sub_1004A62A4();
      if (v16 < v20 || v21 < v16)
      {
        goto LABEL_57;
      }

      v15 = v16 - v14;
      if (__OFSUB__(v16, v14))
      {
        goto LABEL_58;
      }

      if (v15)
      {
        if (v15 < 1)
        {
          goto LABEL_65;
        }

        sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
        v22 = swift_allocObject();
        v23 = j__malloc_size(v22);
        v22[2] = v15;
        v22[3] = 2 * v23 - 64;
        v15 = v9;
        v24 = sub_1004A6294();
        if (v24 != sub_1004A62A4())
        {
          v25 = v22 + 4;
          v26 = ~v14 + v16;
          while (1)
          {
            v27 = sub_1004A62B4();
            v28 = sub_1004A6294();
            v29 = sub_1004A62A4();
            if (v24 < v28 || v24 >= v29)
            {
              break;
            }

            *v25 = v27;
            if (!v26)
            {

              v4 = v61;
              p_attr = (&stru_1005CAFF8 + 8);
              v6 = (&stru_1005CAFF8 + 8);
              goto LABEL_26;
            }

            ++v25;
            ++v24;
            --v26;
            if (v24 == sub_1004A62A4())
            {
              goto LABEL_62;
            }
          }

          __break(1u);
          goto LABEL_55;
        }

        goto LABEL_62;
      }

      v22 = _swiftEmptyArrayStorage;
LABEL_26:

      v32 = MailboxName.init(_:)(v22);
      rawValue = v32.bytes._rawValue;
      value = v32._hashValue._value;

      v9 = v13;
      v10 = v67;
    }

    else
    {
      rawValue = 0;
      value = 0;
    }

    v33 = sub_1004A5734();
    [v9 didAccessValueForKey:v33];

    if (!rawValue)
    {
      v34 = MailboxName.inbox.unsafeMutableAddressor();
      rawValue = *v34;
      value = *(v34 + 2);
    }

    v35 = sub_1004A5734();
    [v10 p_attr[434]];

    v36 = [v10 v6[503]];
    v65 = value;
    if (!v36)
    {
      v51 = 0;
      v52 = 0;
      goto LABEL_48;
    }

    v63 = v9;
    v9 = v36;
    v37 = sub_1004A6294();
    v15 = v9;
    v38 = sub_1004A62A4();
    v39 = sub_1004A6294();
    v40 = sub_1004A62A4();
    if (v37 < v39 || v40 < v37)
    {
      goto LABEL_59;
    }

    v15 = v9;
    v41 = sub_1004A6294();
    v42 = sub_1004A62A4();
    if (v38 < v41 || v42 < v38)
    {
      goto LABEL_60;
    }

    v15 = v38 - v37;
    if (__OFSUB__(v38, v37))
    {
      goto LABEL_61;
    }

    if (v15)
    {
      break;
    }

    v43 = _swiftEmptyArrayStorage;
LABEL_47:

    v53 = MailboxName.init(_:)(v43);
    v51 = v53.bytes._rawValue;
    v52 = v53._hashValue._value;

    p_attr = &stru_1005CAFF8.attr;
    v6 = &stru_1005CAFF8.attr;
    v9 = v63;
LABEL_48:
    v54 = sub_1004A5734();
    [v10 didAccessValueForKey:v54];

    if (!v51)
    {
      v55 = MailboxName.inbox.unsafeMutableAddressor();
      v51 = *v55;
      v52 = *(v55 + 2);
    }

    v56 = static MailboxName.stableOrder(_:_:)(rawValue, v65, v51, v52);

    if (v56)
    {
      if (!v4)
      {
        goto LABEL_64;
      }

      v7 = *(v4 + 8 * v66);
      *(v4 + 8 * v66) = *(v4 + 8 * v64);
      *(v4 + 8 * v64) = v7;
      a3 = v64;
      if (v64 != v62)
      {
        continue;
      }
    }

    a3 = v60 + 1;
    if (v60 + 1 == a2)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v15 < 1)
  {
    goto LABEL_66;
  }

  sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
  v43 = swift_allocObject();
  v44 = j__malloc_size(v43);
  v43[2] = v15;
  v43[3] = 2 * v44 - 64;
  v15 = v9;
  v45 = sub_1004A6294();
  if (v45 != sub_1004A62A4())
  {
    v46 = v43 + 4;
    v47 = ~v37 + v38;
    while (1)
    {
      v48 = sub_1004A62B4();
      v49 = sub_1004A6294();
      v50 = sub_1004A62A4();
      if (v45 < v49 || v45 >= v50)
      {
        break;
      }

      *v46 = v48;
      if (!v47)
      {

        v4 = v61;
        v10 = v67;
        goto LABEL_47;
      }

      ++v46;
      ++v45;
      --v47;
      if (v45 == sub_1004A62A4())
      {
        goto LABEL_63;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:

    __break(1u);
  }

LABEL_63:

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  v57 = v9;
  sub_1004A6294();
  __break(1u);
LABEL_66:
  v58 = v9;
  result = sub_1004A6294();
  __break(1u);
  return result;
}

uint64_t sub_10036596C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v175 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_183:
    v5._rawValue = v175->_rawValue;
    if (!v175->_rawValue)
    {
      goto LABEL_245;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_185;
    }

    goto LABEL_228;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8 + 1;
    v187 = v9;
    v185 = v8;
    if (v8 + 1 < v7)
    {
      v176 = v7;
      v179 = *a3;
      v11 = *(*a3 + 8 * v8);
      v12 = *(*a3 + 8 * v10);
      v5._rawValue = v11;
      v13 = sub_10033A824();
      if (v13)
      {
        v15 = v13;
        v16 = v14;
      }

      else
      {
        v17 = MailboxName.inbox.unsafeMutableAddressor();
        v15 = *v17;
        v16 = *(v17 + 2);
      }

      v18 = sub_10033A824();
      if (v18)
      {
        v4 = v18;
        v20 = v19;
      }

      else
      {
        v21 = MailboxName.inbox.unsafeMutableAddressor();
        v4 = *v21;
        v20 = *(v21 + 2);
      }

      v181 = static MailboxName.stableOrder(_:_:)(v15, v16, v4, v20);

      v22 = 8 * v185 + 8;
      v23 = v176;
      do
      {
        v25 = v10;
        v24 = v22;
        ++v10;
        v177 = v25;
        if (v10 >= v23)
        {
          break;
        }

        v26 = *(v179 + 8 * v25);
        v27 = *(v179 + 8 * v10);
        v6 = v26;
        v28 = sub_1004A5734();
        [v27 willAccessValueForKey:v28];

        v29 = [v27 primitiveName];
        v196 = v10;
        v193 = v24;
        if (v29)
        {
          v190 = v6;
          v30 = v27;
          v5._rawValue = v29;
          v31 = sub_1004A6294();
          v6 = sub_1004A62A4();
          v32 = sub_1004A6294();
          v33 = sub_1004A62A4();
          v34 = v31 < v32 || v33 < v31;
          if (v34)
          {
            goto LABEL_207;
          }

          v35 = sub_1004A6294();
          v36 = sub_1004A62A4();
          if (v6 < v35 || v36 < v6)
          {
            goto LABEL_208;
          }

          v38 = &v6[-v31];
          if (__OFSUB__(v6, v31))
          {
            goto LABEL_209;
          }

          if (v38)
          {
            if (v38 < 1)
            {
              goto LABEL_240;
            }

            sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
            v39 = swift_allocObject();
            v40 = j__malloc_size(v39);
            v39[2] = v38;
            v39[3] = 2 * v40 - 64;
            v4 = v5._rawValue;
            v9 = sub_1004A6294();
            if (v9 == sub_1004A62A4())
            {
              goto LABEL_234;
            }

            v41 = v39 + 4;
            v6 += ~v31;
            while (1)
            {
              v42 = sub_1004A62B4();
              v43 = sub_1004A6294();
              v44 = sub_1004A62A4();
              if (v9 < v43 || v9 >= v44)
              {
                goto LABEL_196;
              }

              *v41 = v42;
              if (!v6)
              {
                break;
              }

              ++v41;
              v9 = (v9 + 1);
              --v6;
              if (v9 == sub_1004A62A4())
              {
                goto LABEL_234;
              }
            }

            v9 = v187;
            v23 = v176;
          }

          else
          {
            v39 = _swiftEmptyArrayStorage;
          }

          v47 = MailboxName.init(_:)(v39);
          rawValue = v47.bytes._rawValue;
          value = v47._hashValue._value;

          v27 = v30;
          v10 = v196;
          v6 = v190;
        }

        else
        {
          rawValue = 0;
          value = 0;
        }

        v48 = sub_1004A5734();
        [v27 didAccessValueForKey:v48];

        if (!rawValue)
        {
          v49 = MailboxName.inbox.unsafeMutableAddressor();
          rawValue = *v49;
          value = *(v49 + 2);
        }

        v191 = value;
        v50 = sub_1004A5734();
        [v6 willAccessValueForKey:v50];

        v51 = [v6 primitiveName];
        if (v51)
        {
          v183 = rawValue;
          v52 = v6;
          v188 = v27;
          v5._rawValue = v51;
          v53 = sub_1004A6294();
          v6 = sub_1004A62A4();
          v54 = sub_1004A6294();
          v55 = sub_1004A62A4();
          if (v53 < v54 || v55 < v53)
          {
            goto LABEL_210;
          }

          v56 = sub_1004A6294();
          v57 = sub_1004A62A4();
          if (v6 < v56 || v57 < v6)
          {
            goto LABEL_211;
          }

          v58 = &v6[-v53];
          if (__OFSUB__(v6, v53))
          {
            goto LABEL_212;
          }

          if (v58)
          {
            if (v58 < 1)
            {
              goto LABEL_241;
            }

            sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
            v9 = swift_allocObject();
            v59 = j__malloc_size(v9);
            v9[2] = v58;
            v9[3] = 2 * v59 - 64;
            v4 = v5._rawValue;
            v60 = sub_1004A6294();
            if (v60 == sub_1004A62A4())
            {
              goto LABEL_235;
            }

            v61 = v9 + 4;
            v62 = &v6[~v53];
            while (1)
            {
              v63 = sub_1004A62B4();
              v6 = sub_1004A6294();
              v64 = sub_1004A62A4();
              if (v60 < v6 || v60 >= v64)
              {
                goto LABEL_197;
              }

              *v61 = v63;
              if (!v62)
              {
                break;
              }

              ++v61;
              ++v60;
              --v62;
              if (v60 == sub_1004A62A4())
              {
                goto LABEL_235;
              }
            }

            v10 = v196;
            v23 = v176;
          }

          else
          {
            v9 = _swiftEmptyArrayStorage;
          }

          v6 = v52;

          v67 = MailboxName.init(_:)(v9);
          v65 = v67.bytes._rawValue;
          v66 = v67._hashValue._value;

          v9 = v187;
          v27 = v188;
          rawValue = v183;
        }

        else
        {
          v65 = 0;
          v66 = 0;
        }

        v5._rawValue = sub_1004A5734();
        [v6 didAccessValueForKey:v5._rawValue];

        if (!v65)
        {
          v68 = MailboxName.inbox.unsafeMutableAddressor();
          v65 = *v68;
          v66 = *(v68 + 2);
        }

        v4 = static MailboxName.stableOrder(_:_:)(rawValue, v191, v65, v66);

        v24 = v193;
        v22 = v193 + 8;
      }

      while (v181 == v4);
      if (v181)
      {
        v69 = v185;
        if (v10 < v185)
        {
          goto LABEL_231;
        }

        if (v185 < v10)
        {
          v70 = 8 * v185;
          v71 = v177;
          do
          {
            if (v69 != v71)
            {
              v72 = *a3;
              if (!*a3)
              {
                goto LABEL_243;
              }

              v73 = *(v72 + v70);
              *(v72 + v70) = *(v72 + v24);
              *(v72 + v24) = v73;
            }

            ++v69;
            v24 -= 8;
            v70 += 8;
            v34 = v69 < v71--;
          }

          while (v34);
        }
      }
    }

    v74 = a3[1];
    if (v10 >= v74)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v10, v185))
    {
      goto LABEL_227;
    }

    if (v10 - v185 >= a4)
    {
      goto LABEL_132;
    }

    v75 = v185 + a4;
    if (__OFADD__(v185, a4))
    {
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
      goto LABEL_232;
    }

    if (v75 >= v74)
    {
      v75 = a3[1];
    }

    if (v75 < v185)
    {
      goto LABEL_230;
    }

    if (v10 == v75)
    {
      if (v10 >= v185)
      {
        goto LABEL_133;
      }

      goto LABEL_226;
    }

    v76 = *a3;
    v178 = v75;
    v180 = *a3;
    while (2)
    {
      v77 = *(v76 + 8 * v10);
      v78 = v10;
      v197 = v10;
      while (1)
      {
        v189 = v78 - 1;
        v79 = *(v76 + 8 * (v78 - 1));
        v6 = v77;
        v80 = v79;
        v81 = sub_1004A5734();
        [v6 willAccessValueForKey:v81];

        v82 = [v6 primitiveName];
        v192 = v78;
        v194 = v80;
        if (v82)
        {
          v5._rawValue = v82;
          v83 = sub_1004A6294();
          v84 = sub_1004A62A4();
          v85 = sub_1004A6294();
          v86 = sub_1004A62A4();
          if (v83 < v85 || v86 < v83)
          {
            goto LABEL_201;
          }

          v88 = sub_1004A6294();
          v89 = sub_1004A62A4();
          if (v84 < v88 || v89 < v84)
          {
            goto LABEL_202;
          }

          v90 = v84 - v83;
          if (__OFSUB__(v84, v83))
          {
            goto LABEL_203;
          }

          if (v90)
          {
            if (v90 < 1)
            {
LABEL_238:
              v170 = v5._rawValue;
              sub_1004A6294();
              __break(1u);
LABEL_239:
              v171 = v6;
              sub_1004A6294();
              __break(1u);
LABEL_240:
              v172 = v5._rawValue;
              sub_1004A6294();
              __break(1u);
LABEL_241:
              v173 = v5._rawValue;
              result = sub_1004A6294();
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
              goto LABEL_244;
            }

            v9 = v6;
            sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
            v91 = swift_allocObject();
            v92 = j__malloc_size(v91);
            v91[2] = v90;
            v91[3] = 2 * v92 - 64;
            v4 = v5._rawValue;
            v93 = sub_1004A6294();
            if (v93 != sub_1004A62A4())
            {
              v6 = v91 + 4;
              v94 = ~v83 + v84;
              while (1)
              {
                v95 = sub_1004A62B4();
                v96 = sub_1004A6294();
                v97 = sub_1004A62A4();
                if (v93 < v96 || v93 >= v97)
                {
                  break;
                }

                *v6 = v95;
                if (!v94)
                {

                  v10 = v197;
                  v6 = v9;
                  v9 = v187;
                  goto LABEL_103;
                }

                ++v6;
                ++v93;
                --v94;
                if (v93 == sub_1004A62A4())
                {
                  goto LABEL_232;
                }
              }

              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
LABEL_200:
              __break(1u);
LABEL_201:
              __break(1u);
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
LABEL_204:
              __break(1u);
LABEL_205:
              __break(1u);
LABEL_206:
              __break(1u);
LABEL_207:
              __break(1u);
LABEL_208:
              __break(1u);
LABEL_209:
              __break(1u);
LABEL_210:
              __break(1u);
LABEL_211:
              __break(1u);
LABEL_212:
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
LABEL_215:
              __break(1u);
LABEL_216:
              __break(1u);
LABEL_217:
              __break(1u);
LABEL_218:
              __break(1u);
LABEL_219:
              __break(1u);
LABEL_220:
              __break(1u);
LABEL_221:
              __break(1u);
LABEL_222:
              __break(1u);
LABEL_223:
              __break(1u);
LABEL_224:
              __break(1u);
LABEL_225:
              __break(1u);
              goto LABEL_226;
            }

LABEL_232:

            __break(1u);
LABEL_233:

            __break(1u);
LABEL_234:

            __break(1u);
LABEL_235:

            __break(1u);
LABEL_236:
            __break(1u);
LABEL_237:
            __break(1u);
            goto LABEL_238;
          }

          v91 = _swiftEmptyArrayStorage;
LABEL_103:

          v100 = MailboxName.init(_:)(v91);
          v98 = v100.bytes._rawValue;
          v99 = v100._hashValue._value;

          v80 = v194;
        }

        else
        {
          v98 = 0;
          v99 = 0;
        }

        v101 = sub_1004A5734();
        [v6 didAccessValueForKey:v101];

        if (!v98)
        {
          v102 = MailboxName.inbox.unsafeMutableAddressor();
          v98 = *v102;
          v99 = *(v102 + 2);
        }

        v103 = sub_1004A5734();
        [v80 willAccessValueForKey:v103];

        v104 = [v80 primitiveName];
        if (v104)
        {
          v182 = v99;
          v184 = v6;
          v6 = v104;
          v105 = sub_1004A6294();
          v106 = sub_1004A62A4();
          v5._rawValue = sub_1004A6294();
          v107 = sub_1004A62A4();
          if (v105 < v5._rawValue || v107 < v105)
          {
            goto LABEL_204;
          }

          v5._rawValue = sub_1004A6294();
          v108 = sub_1004A62A4();
          if (v106 < v5._rawValue || v108 < v106)
          {
            goto LABEL_205;
          }

          v109 = v106 - v105;
          if (__OFSUB__(v106, v105))
          {
            goto LABEL_206;
          }

          if (v109)
          {
            if (v109 < 1)
            {
              goto LABEL_239;
            }

            sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
            v5._rawValue = swift_allocObject();
            v110 = j__malloc_size(v5._rawValue);
            *(v5._rawValue + 2) = v109;
            *(v5._rawValue + 3) = 2 * v110 - 64;
            v4 = v6;
            v111 = sub_1004A6294();
            if (v111 == sub_1004A62A4())
            {
              goto LABEL_233;
            }

            v112 = v5._rawValue + 32;
            v9 = (~v105 + v106);
            while (1)
            {
              v113 = sub_1004A62B4();
              v114 = sub_1004A6294();
              v115 = sub_1004A62A4();
              if (v111 < v114 || v111 >= v115)
              {
                goto LABEL_195;
              }

              *v112 = v113;
              if (!v9)
              {
                break;
              }

              ++v112;
              ++v111;
              v9 = (v9 - 1);
              if (v111 == sub_1004A62A4())
              {
                goto LABEL_233;
              }
            }

            v9 = v187;
            v10 = v197;
            v80 = v194;
          }

          else
          {
            v5._rawValue = _swiftEmptyArrayStorage;
          }

          v99 = v182;

          v118 = MailboxName.init(_:)(v5);
          v116 = v118.bytes._rawValue;
          v117 = v118._hashValue._value;

          v6 = v184;
        }

        else
        {
          v116 = 0;
          v117 = 0;
        }

        v5._rawValue = sub_1004A5734();
        [v80 didAccessValueForKey:v5._rawValue];

        if (!v116)
        {
          v119 = MailboxName.inbox.unsafeMutableAddressor();
          v116 = *v119;
          v117 = *(v119 + 2);
        }

        v120 = static MailboxName.stableOrder(_:_:)(v98, v99, v116, v117);

        if (!v120)
        {
          break;
        }

        v76 = v180;
        if (!v180)
        {
          goto LABEL_236;
        }

        v77 = *(v180 + 8 * v192);
        *(v180 + 8 * v192) = *(v180 + 8 * v189);
        *(v180 + 8 * v189) = v77;
        v78 = v189;
        if (v189 == v185)
        {
          goto LABEL_81;
        }
      }

      v76 = v180;
LABEL_81:
      if (++v10 != v178)
      {
        continue;
      }

      break;
    }

    v10 = v178;
LABEL_132:
    if (v10 < v185)
    {
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      result = sub_100141810(v9);
      v9 = result;
LABEL_185:
      v166 = v9[2];
      if (v166 < 2)
      {
      }

      while (*a3)
      {
        v167 = v9[2 * v166];
        v168 = v9[2 * v166 + 3];
        sub_1003668C0((*a3 + 8 * v167), (*a3 + 8 * v9[2 * v166 + 2]), (*a3 + 8 * v168), v5._rawValue);
        if (v195)
        {
        }

        if (v168 < v167)
        {
          goto LABEL_223;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100141810(v9);
        }

        if (v166 - 2 >= v9[2])
        {
          goto LABEL_224;
        }

        v169 = &v9[2 * v166];
        *v169 = v167;
        v169[1] = v168;
        result = sub_100141784(v166 - 1);
        v166 = v9[2];
        if (v166 <= 1)
        {
        }
      }

      goto LABEL_242;
    }

LABEL_133:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v9[2] + 1, 1, v9);
      v9 = result;
    }

    v122 = v9[2];
    v121 = v9[3];
    v4 = v122 + 1;
    if (v122 >= v121 >> 1)
    {
      result = sub_100085288((v121 > 1), v122 + 1, 1, v9);
      v9 = result;
    }

    v9[2] = v4;
    v123 = &v9[2 * v122];
    v123[4] = v185;
    v123[5] = v10;
    v124 = v175->_rawValue;
    if (!v175->_rawValue)
    {
      break;
    }

    v8 = v10;
    if (v122)
    {
      while (1)
      {
        v125 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v126 = v9[4];
          v127 = v9[5];
          v136 = __OFSUB__(v127, v126);
          v128 = v127 - v126;
          v129 = v136;
LABEL_152:
          if (v129)
          {
            goto LABEL_215;
          }

          v142 = &v9[2 * v4];
          v144 = *v142;
          v143 = v142[1];
          v145 = __OFSUB__(v143, v144);
          v146 = v143 - v144;
          v147 = v145;
          if (v145)
          {
            goto LABEL_218;
          }

          v148 = &v9[2 * v125 + 4];
          v150 = *v148;
          v149 = v148[1];
          v136 = __OFSUB__(v149, v150);
          v151 = v149 - v150;
          if (v136)
          {
            goto LABEL_221;
          }

          if (__OFADD__(v146, v151))
          {
            goto LABEL_222;
          }

          if (v146 + v151 >= v128)
          {
            if (v128 < v151)
            {
              v125 = v4 - 2;
            }

            goto LABEL_173;
          }

          goto LABEL_166;
        }

        v152 = &v9[2 * v4];
        v154 = *v152;
        v153 = v152[1];
        v136 = __OFSUB__(v153, v154);
        v146 = v153 - v154;
        v147 = v136;
LABEL_166:
        if (v147)
        {
          goto LABEL_217;
        }

        v155 = &v9[2 * v125];
        v157 = v155[4];
        v156 = v155[5];
        v136 = __OFSUB__(v156, v157);
        v158 = v156 - v157;
        if (v136)
        {
          goto LABEL_220;
        }

        if (v158 < v146)
        {
          goto LABEL_3;
        }

LABEL_173:
        v163 = v125 - 1;
        if (v125 - 1 >= v4)
        {
          goto LABEL_198;
        }

        if (!*a3)
        {
          goto LABEL_237;
        }

        v164 = v9[2 * v163 + 4];
        v5._rawValue = v9[2 * v125 + 5];
        sub_1003668C0((*a3 + 8 * v164), (*a3 + 8 * v9[2 * v125 + 4]), (*a3 + 8 * v5._rawValue), v124);
        if (v195)
        {
        }

        if (v5._rawValue < v164)
        {
          goto LABEL_199;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100141810(v9);
        }

        if (v163 >= v9[2])
        {
          goto LABEL_200;
        }

        v165 = &v9[2 * v163];
        v165[4]._rawValue = v164;
        v165[5]._rawValue = v5._rawValue;
        result = sub_100141784(v125);
        v4 = v9[2];
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v130 = &v9[2 * v4 + 4];
      v131 = *(v130 - 64);
      v132 = *(v130 - 56);
      v136 = __OFSUB__(v132, v131);
      v133 = v132 - v131;
      if (v136)
      {
        goto LABEL_213;
      }

      v135 = *(v130 - 48);
      v134 = *(v130 - 40);
      v136 = __OFSUB__(v134, v135);
      v128 = v134 - v135;
      v129 = v136;
      if (v136)
      {
        goto LABEL_214;
      }

      v137 = &v9[2 * v4];
      v139 = *v137;
      v138 = v137[1];
      v136 = __OFSUB__(v138, v139);
      v140 = v138 - v139;
      if (v136)
      {
        goto LABEL_216;
      }

      v136 = __OFADD__(v128, v140);
      v141 = v128 + v140;
      if (v136)
      {
        goto LABEL_219;
      }

      if (v141 >= v133)
      {
        v159 = &v9[2 * v125 + 4];
        v161 = *v159;
        v160 = v159[1];
        v136 = __OFSUB__(v160, v161);
        v162 = v160 - v161;
        if (v136)
        {
          goto LABEL_225;
        }

        if (v128 < v162)
        {
          v125 = v4 - 2;
        }

        goto LABEL_173;
      }

      goto LABEL_152;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_183;
    }
  }

LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
  return result;
}

uint64_t sub_1003668C0(void **__src, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[v13] <= a4)
    {
      memmove(a4, a2, 8 * v13);
      v6 = a2;
    }

    v148 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
      v143 = v4;
      v145 = v7;
      while (1)
      {
        __dsta = v6;
        v72 = v6 - 1;
        v73 = v5;
        v74 = v148;
        v131 = v72;
        while (1)
        {
          v75 = *v72;
          v76 = *(v74 - 1);
          v77 = v75;
          v78 = sub_1004A5734();
          [v76 willAccessValueForKey:v78];

          v147 = v76;
          v79 = [v76 primitiveName];
          v134 = v74 - 1;
          v138 = v73;
          if (v79)
          {
            v20 = v79;
            v80 = sub_1004A6294();
            v22 = v20;
            v81 = sub_1004A62A4();
            v82 = sub_1004A6294();
            v83 = sub_1004A62A4();
            if (v80 < v82 || v83 < v80)
            {
              goto LABEL_135;
            }

            v22 = v20;
            v85 = sub_1004A6294();
            v86 = sub_1004A62A4();
            if (v81 < v85 || v86 < v81)
            {
              goto LABEL_137;
            }

            v87 = v77;
            v88 = v81 - v80;
            if (__OFSUB__(v81, v80))
            {
              goto LABEL_139;
            }

            if (v88)
            {
              if (v88 < 1)
              {
                goto LABEL_151;
              }

              sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
              v89 = swift_allocObject();
              v90 = j__malloc_size(v89);
              v89[2] = v88;
              v89[3] = 2 * v90 - 64;
              v22 = v20;
              v91 = sub_1004A6294();
              if (v91 != sub_1004A62A4())
              {
                v92 = v89 + 4;
                v93 = ~v80 + v81;
                while (1)
                {
                  v94 = sub_1004A62B4();
                  v95 = sub_1004A6294();
                  v96 = sub_1004A62A4();
                  if (v91 < v95 || v91 >= v96)
                  {
                    break;
                  }

                  *v92 = v94;
                  if (!v93)
                  {

                    v7 = v145;
                    goto LABEL_92;
                  }

                  ++v92;
                  ++v91;
                  --v93;
                  if (v91 == sub_1004A62A4())
                  {
                    goto LABEL_146;
                  }
                }

                __break(1u);
LABEL_131:
                __break(1u);
LABEL_132:
                __break(1u);
LABEL_133:
                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
LABEL_142:
                __break(1u);
LABEL_143:
                __break(1u);
LABEL_144:
                __break(1u);
LABEL_145:
                __break(1u);
              }

LABEL_146:

              __break(1u);
              goto LABEL_147;
            }

            v89 = _swiftEmptyArrayStorage;
LABEL_92:
            v73 = v138;

            v99 = MailboxName.init(_:)(v89);
            rawValue = v99.bytes._rawValue;
            value = v99._hashValue._value;

            v97 = v143;
            v77 = v87;
          }

          else
          {
            v97 = v4;
            rawValue = 0;
            value = 0;
          }

          v100 = sub_1004A5734();
          [v147 didAccessValueForKey:v100];

          if (!rawValue)
          {
            v101 = MailboxName.inbox.unsafeMutableAddressor();
            rawValue = *v101;
            value = *(v101 + 2);
          }

          v4 = v97;
          v102 = sub_1004A5734();
          [v77 willAccessValueForKey:v102];

          v103 = [v77 primitiveName];
          if (v103)
          {
            v20 = v103;
            v104 = sub_1004A6294();
            v22 = v20;
            v105 = sub_1004A62A4();
            v106 = sub_1004A6294();
            v107 = sub_1004A62A4();
            if (v104 < v106 || v107 < v104)
            {
              goto LABEL_141;
            }

            v22 = v20;
            v108 = sub_1004A6294();
            v109 = sub_1004A62A4();
            if (v105 < v108 || v109 < v105)
            {
              goto LABEL_143;
            }

            v132 = rawValue;
            v110 = v77;
            v111 = v105 - v104;
            if (__OFSUB__(v105, v104))
            {
              goto LABEL_144;
            }

            if (v111)
            {
              if (v111 < 1)
              {
                goto LABEL_153;
              }

              sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
              v112 = swift_allocObject();
              v113 = j__malloc_size(v112);
              v112[2] = v111;
              v112[3] = 2 * v113 - 64;
              v22 = v20;
              v114 = sub_1004A6294();
              if (v114 == sub_1004A62A4())
              {
                goto LABEL_148;
              }

              v115 = v112 + 4;
              v116 = ~v104 + v105;
              while (1)
              {
                v117 = sub_1004A62B4();
                v118 = sub_1004A6294();
                v119 = sub_1004A62A4();
                if (v114 < v118 || v114 >= v119)
                {
                  goto LABEL_133;
                }

                *v115 = v117;
                if (!v116)
                {
                  break;
                }

                ++v115;
                ++v114;
                --v116;
                if (v114 == sub_1004A62A4())
                {
                  goto LABEL_148;
                }
              }

              v4 = v143;
              v7 = v145;
            }

            else
            {
              v112 = _swiftEmptyArrayStorage;
            }

            v73 = v138;

            v122 = MailboxName.init(_:)(v112);
            v120 = v122.bytes._rawValue;
            v121 = v122._hashValue._value;

            v77 = v110;
            rawValue = v132;
          }

          else
          {
            v120 = 0;
            v121 = 0;
          }

          v123 = sub_1004A5734();
          [v77 didAccessValueForKey:v123];

          if (!v120)
          {
            v124 = MailboxName.inbox.unsafeMutableAddressor();
            v120 = *v124;
            v121 = *(v124 + 2);
          }

          v5 = v73 - 1;
          v125 = static MailboxName.stableOrder(_:_:)(rawValue, value, v120, v121);

          if (v125)
          {
            break;
          }

          v72 = v131;
          v74 = v134;
          if (v73 != v148)
          {
            *v5 = *v134;
          }

          v148 = v134;
          --v73;
          if (v134 <= v4)
          {
            v148 = v134;
            v70 = __dsta;
LABEL_126:
            if (v70 != v4 || v70 >= (v4 + ((v148 - v4 + (v148 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(v70, v4, 8 * (v148 - v4));
            }

            return 1;
          }
        }

        v70 = v131;
        if (v73 != __dsta)
        {
          *v5 = *v131;
        }

        if (v148 > v4)
        {
          v6 = v131;
          if (v131 > v7)
          {
            continue;
          }
        }

        goto LABEL_126;
      }
    }

    v70 = v6;
    goto LABEL_126;
  }

  if (a4 != __src || &__src[v10] <= a4)
  {
    memmove(a4, __src, 8 * v10);
    v6 = a2;
  }

  v148 = &v4[v10];
  if (v8 < 8 || v6 >= v5)
  {
LABEL_63:
    v70 = v7;
    goto LABEL_126;
  }

  v133 = v5;
  while (1)
  {
    __dst = v6;
    v15 = *v4;
    v16 = *v6;
    v17 = v15;
    v18 = sub_1004A5734();
    [v16 willAccessValueForKey:v18];

    v19 = [v16 primitiveName];
    v144 = v7;
    v146 = v16;
    if (!v19)
    {
      v39 = 0;
      v40 = 0;
      goto LABEL_33;
    }

    v20 = v19;
    v21 = sub_1004A6294();
    v22 = v20;
    v23 = sub_1004A62A4();
    v24 = sub_1004A6294();
    v25 = sub_1004A62A4();
    if (v21 < v24 || v25 < v21)
    {
      goto LABEL_134;
    }

    v22 = v20;
    v27 = sub_1004A6294();
    v28 = sub_1004A62A4();
    if (v23 < v27 || v28 < v23)
    {
      goto LABEL_136;
    }

    v29 = v17;
    v30 = v23 - v21;
    if (__OFSUB__(v23, v21))
    {
      goto LABEL_138;
    }

    if (v30)
    {
      break;
    }

    v31 = _swiftEmptyArrayStorage;
    v16 = v146;
    v17 = v29;
LABEL_32:

    v41 = MailboxName.init(_:)(v31);
    v39 = v41.bytes._rawValue;
    v40 = v41._hashValue._value;

    v5 = v133;
LABEL_33:
    v42 = sub_1004A5734();
    [v16 didAccessValueForKey:v42];

    if (!v39)
    {
      v43 = MailboxName.inbox.unsafeMutableAddressor();
      v39 = *v43;
      v40 = *(v43 + 2);
    }

    v139 = v40;
    v44 = sub_1004A5734();
    [v17 willAccessValueForKey:v44];

    v45 = [v17 primitiveName];
    if (v45)
    {
      v20 = v45;
      v46 = sub_1004A6294();
      v22 = v20;
      v47 = sub_1004A62A4();
      v48 = sub_1004A6294();
      v49 = sub_1004A62A4();
      if (v46 < v48 || v49 < v46)
      {
        goto LABEL_140;
      }

      v22 = v20;
      v50 = sub_1004A6294();
      v51 = sub_1004A62A4();
      if (v47 < v50 || v51 < v47)
      {
        goto LABEL_142;
      }

      v137 = v39;
      v52 = v17;
      v53 = v47 - v46;
      if (__OFSUB__(v47, v46))
      {
        goto LABEL_145;
      }

      if (v53)
      {
        v142 = v4;
        if (v53 < 1)
        {
          goto LABEL_152;
        }

        sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
        v54 = swift_allocObject();
        v55 = j__malloc_size(v54);
        v54[2] = v53;
        v54[3] = 2 * v55 - 64;
        v22 = v20;
        v56 = sub_1004A6294();
        if (v56 != sub_1004A62A4())
        {
          v57 = v54 + 4;
          v58 = ~v46 + v47;
          while (1)
          {
            v59 = sub_1004A62B4();
            v60 = sub_1004A6294();
            v61 = sub_1004A62A4();
            if (v56 < v60 || v56 >= v61)
            {
              goto LABEL_132;
            }

            *v57 = v59;
            if (!v58)
            {

              v4 = v142;
              v7 = v144;
              v5 = v133;
              goto LABEL_53;
            }

            ++v57;
            ++v56;
            --v58;
            if (v56 == sub_1004A62A4())
            {
              goto LABEL_149;
            }
          }
        }

        goto LABEL_149;
      }

      v54 = _swiftEmptyArrayStorage;
      v7 = v144;
LABEL_53:
      v16 = v146;

      v64 = MailboxName.init(_:)(v54);
      v62 = v64.bytes._rawValue;
      v63 = v64._hashValue._value;

      v17 = v52;
      v39 = v137;
    }

    else
    {
      v62 = 0;
      v63 = 0;
    }

    v65 = sub_1004A5734();
    [v17 didAccessValueForKey:v65];

    if (!v62)
    {
      v66 = MailboxName.inbox.unsafeMutableAddressor();
      v62 = *v66;
      v63 = *(v66 + 2);
    }

    v67 = static MailboxName.stableOrder(_:_:)(v39, v139, v62, v63);

    if (!v67)
    {
      v68 = v4;
      v69 = v7 == v4++;
      v6 = __dst;
      if (v69)
      {
        goto LABEL_61;
      }

LABEL_60:
      *v7 = *v68;
      goto LABEL_61;
    }

    v68 = __dst;
    v6 = __dst + 1;
    if (v7 != __dst)
    {
      goto LABEL_60;
    }

LABEL_61:
    ++v7;
    if (v4 >= v148 || v6 >= v5)
    {
      goto LABEL_63;
    }
  }

  v141 = v4;
  if (v30 < 1)
  {
    goto LABEL_150;
  }

  sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
  v31 = swift_allocObject();
  v32 = j__malloc_size(v31);
  v31[2] = v30;
  v31[3] = 2 * v32 - 64;
  v22 = v20;
  v33 = sub_1004A6294();
  if (v33 != sub_1004A62A4())
  {
    v17 = v29;
    v34 = v31 + 4;
    v35 = ~v21 + v23;
    do
    {
      v36 = sub_1004A62B4();
      v37 = sub_1004A6294();
      v38 = sub_1004A62A4();
      if (v33 < v37 || v33 >= v38)
      {
        goto LABEL_131;
      }

      *v34 = v36;
      if (!v35)
      {

        v4 = v141;
        v7 = v144;
        v16 = v146;
        goto LABEL_32;
      }

      ++v34;
      ++v33;
      --v35;
    }

    while (v33 != sub_1004A62A4());
  }

LABEL_147:

  __break(1u);
LABEL_148:

  __break(1u);
LABEL_149:

  __break(1u);
LABEL_150:
  v127 = v20;
  sub_1004A6294();
  __break(1u);
LABEL_151:
  v128 = v20;
  sub_1004A6294();
  __break(1u);
LABEL_152:
  v129 = v20;
  sub_1004A6294();
  __break(1u);
LABEL_153:
  v130 = v20;
  result = sub_1004A6294();
  __break(1u);
  return result;
}

uint64_t sub_10036742C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v7 = sub_1004A6F14();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100363E00();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_100367758(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_100367568(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v35 = a4 | (a4 << 32);
  sub_1004A6EB4(v35);
  v12 = sub_1004A6F14();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  v16 = *(v10 + 48);
  v34 = v5;
  while (1)
  {
    v17 = v16 + 32 * v14;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    v20 = *v17 == a1 && *(v17 + 8) == a2;
    if (v20 || (sub_1004A6D34()) && (v19 | (v19 << 32)) == v35)
    {
      v21 = v18[2];
      if (v21 == *(a3 + 16))
      {
        break;
      }
    }

LABEL_3:
    v14 = (v14 + 1) & v15;
    if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  if (v21)
  {
    v22 = v18 == a3;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = (v18 + 4);
    v24 = (a3 + 32);
    while (v21)
    {
      if (*v23 != *v24)
      {
        goto LABEL_3;
      }

      ++v23;
      ++v24;
      if (!--v21)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_19:
  v18 = v34;
  v25 = *v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v34;
  v36 = *v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_24:
    sub_10036409C();
    v27 = v36;
  }

  v28 = *(v27 + 48) + 32 * v14;
  v29 = *v28;
  v30 = *(v28 + 8);
  v31 = *(v28 + 16);
  v32 = *(v28 + 24);
  sub_10036791C(v14);
  *v18 = v36;
  return v29;
}

unint64_t sub_100367758(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1004A6564();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1004A6E94();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v15 = sub_1004A6F14();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10036791C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1004A6564();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      v30 = v4;
      do
      {
        v12 = 32 * v6;
        v13 = *(v3 + 40);
        v14 = v3;
        v15 = *(v3 + 48) + 32 * v6;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = v7;
        v19 = *(v15 + 16);
        v20 = *(v15 + 24);
        v21 = v10;
        sub_1004A6E94();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        sub_1004A6EB4(v20 | (v20 << 32));
        v22 = sub_1004A6F14();
        v7 = v18;

        v10 = v21;
        v23 = v22 & v18;
        if (v2 >= v21)
        {
          if (v23 < v21)
          {
            v4 = v30;
            v3 = v14;
          }

          else
          {
            v4 = v30;
            v3 = v14;
            if (v2 >= v23)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v30;
          v3 = v14;
          if (v23 >= v10 || v2 >= v23)
          {
LABEL_12:
            v24 = *(v3 + 48);
            v25 = (v24 + 32 * v2);
            v26 = (v24 + v12);
            if (32 * v2 != v12 || (v2 = v6, v25 >= v26 + 2))
            {
              v11 = v26[1];
              *v25 = *v26;
              v25[1] = v11;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v18;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v27 = *(v3 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v29;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_100367B54(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1004A6A34();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10035E0BC(v3, 0);
  sub_100367BE8((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100367BE8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004A6A34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004A6A34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000DF44(&qword_1005DA5A0, &qword_1005DA598, &qword_1004F78B0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C9C0(&qword_1005DA598, &qword_1004F78B0);
            v9 = sub_100359B7C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        _s7MailboxCMa();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100367D8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004A6A34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004A6A34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000DF44(&qword_1005DA640, &qword_1005DA638, &unk_1004F7990);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C9C0(&qword_1005DA638, &unk_1004F7990);
            v9 = sub_100359CAC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10019A8E4(0, &qword_1005DA288, CSSearchableItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100367F90(uint64_t a1, uint64_t a2)
{
  v4 = _s6LoggerVMa_0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100367FF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100368240();
  result = sub_1004A5D64();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100361EC4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10036808C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10000C9C0(&qword_1005DA5B8, &qword_1004F78D8);
  sub_10000DF44(&qword_1005DA658, &qword_1005DA5B8, &qword_1004F78D8);
  result = sub_1004A5D64();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1003625D0(&v6, v5, &qword_1005DA5C0, &qword_1004F78E0, &qword_1005DA5B8, &qword_1004F78D8);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100368180(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100368294();
  result = sub_1004A5D64();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 56);
    do
    {
      v5 = *v4;
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      v8 = *(v4 - 3);

      sub_100362130(v9, v8, v7, v6, v5);

      v4 += 8;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_100368240()
{
  result = qword_1005DA5F8;
  if (!qword_1005DA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA5F8);
  }

  return result;
}

unint64_t sub_100368294()
{
  result = qword_1005DA630;
  if (!qword_1005DA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA630);
  }

  return result;
}

uint64_t sub_1003682F8()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005DA670);
  sub_1001C203C(v0, qword_1005DA670);
  return sub_1004A4A64();
}

uint64_t sub_100368370()
{
  v1 = sub_1004A4AB4();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v36 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004A6074();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A6064();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = sub_1004A5274();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  *(v0 + 24) = 0;
  v33[2] = sub_100255DBC();
  v33[0] = "dler";
  sub_1004A5254();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10036C34C(&qword_1005D50B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000C9C0(&qword_1005D3250, &qword_1004F5CA0);
  sub_1000CBB00(&qword_1005D50C0, &qword_1005D3250, &qword_1004F5CA0);
  sub_1004A6544();
  (*(v34 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
  v12 = v33[1];
  v13 = sub_1004A6094();
  *(v12 + 16) = v13;
  v14 = type metadata accessor for Indexer();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = v13;
  v18 = sub_100320230(v17);
  v19 = SearchIndexerXPC.serviceName.unsafeMutableAddressor();
  v20 = *v19;
  v21 = v19[1];
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  v23 = v17;

  sub_1004A4AA4();
  v24 = sub_1004A4AE4();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = aBlock[7];
  v28 = sub_1004A4AD4();
  if (v27)
  {
  }

  else
  {
    v29 = *(v12 + 24);
    *(v12 + 24) = v28;

    v30 = *(v18 + 4);
    aBlock[4] = sub_10036C33C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B5840;
    v31 = _Block_copy(aBlock);

    [v30 performBlock:v31];
    _Block_release(v31);
  }

  return v12;
}

uint64_t sub_1003687BC()
{
  type metadata accessor for Service.SessionHandler();
  sub_10036C34C(&qword_1005DA820, type metadata accessor for Service.SessionHandler);
  return sub_1004A4AC4();
}

void *sub_10036885C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for Service.SessionHandler();
  swift_allocObject();

  v8 = a2;

  result = sub_1003689B4(a1, v8, a3);
  *a4 = result;
  return result;
}

uint64_t Service.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t Service.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t static Service.main()()
{
  swift_initStackObject();
  result = sub_100368370();
  if (!v0)
  {
    dispatch_main();
  }

  return result;
}

void *sub_1003689B4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 48) = 0;
  if (qword_1005D87A8 != -1)
  {
    swift_once();
  }

  v8 = off_1005DA688;

  os_unfair_lock_lock(v8 + 6);
  v9 = *&v8[4]._os_unfair_lock_opaque;
  *&v8[4]._os_unfair_lock_opaque = v9 + 1;
  os_unfair_lock_unlock(v8 + 6);

  v4[2] = v9;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  swift_allocObject();
  v10 = swift_weakInit();
  v11 = *(*(a3 + 80) + 200);
  __chkstk_darwin(v10);

  v12 = a2;

  os_unfair_lock_lock((v11 + 32));
  sub_10036C3D4((v11 + 16));
  os_unfair_lock_unlock((v11 + 32));

  if (qword_1005D87A0 != -1)
  {
    swift_once();
  }

  v13 = sub_1004A4A74();
  sub_1001C203C(v13, qword_1005DA670);

  v14 = sub_1004A4A54();
  v15 = sub_1004A6034();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v4[2];

    _os_log_impl(&_mh_execute_header, v14, v15, "[%llu] New session.", v16, 0xCu);
  }

  else
  {
  }

  return v4;
}

uint64_t sub_100368C3C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100368CC8();
  }

  return result;
}

void sub_100368CC8()
{
  v1 = v0;
  v2 = *(v0 + 24);
  sub_10036BE80();
  sub_1004A4A94();
  if (qword_1005D87A0 != -1)
  {
    swift_once();
  }

  v3 = sub_1004A4A74();
  sub_1001C203C(v3, qword_1005DA670);

  v4 = sub_1004A4A54();
  v5 = sub_1004A6034();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "[%llu] Sending indexing stats to maild.", v6, 0xCu);
  }

  else
  {
  }
}

uint64_t sub_100368F6C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (qword_1005D87A0 != -1)
  {
    swift_once();
  }

  v3 = sub_1004A4A74();
  sub_1001C203C(v3, qword_1005DA670);
  v4 = sub_1004A4A54();
  v5 = sub_1004A6034();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%llu] Session deinit.", v6, 0xCu);
  }

  v7 = *(v1 + 24);

  v8 = *(v1 + 40);

  return v1;
}

uint64_t sub_10036907C()
{
  sub_100368F6C();

  return swift_deallocClassInstance();
}

unint64_t sub_1003690E4()
{
  result = qword_1005DA7F8;
  if (!qword_1005DA7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA7F8);
  }

  return result;
}

uint64_t sub_100369138()
{
  sub_10000C9C0(&qword_1005DA828, &qword_1004F7B38);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 1;
  off_1005DA688 = result;
  return result;
}

double sub_100369180@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v4 = sub_1004A4B34();
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  __chkstk_darwin(v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v66 - v8;
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = sub_1004A53F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = (&v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = v2;
  v18 = *(v2 + 32);
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12, v15);
  v19 = v18;
  LOBYTE(v18) = sub_1004A5404();
  (*(v13 + 8))(v17, v12);
  if (v18)
  {
    sub_10036B9D8();
    sub_1004A4B24();
    v26 = v78;
    v27 = v81;
    LODWORD(v28) = v82;
    v29 = v82 >> 6;
    if (!v29)
    {
      v70 = v79;
      v71 = v80;
      v68 = v77;
      sub_10036BC00(v77, v78, v79 & 1);
      if (qword_1005D87A0 != -1)
      {
        swift_once();
      }

      v72 = v27;
      v36 = sub_1004A4A74();
      sub_1001C203C(v36, qword_1005DA670);
      v37 = v75;
      v66 = *(v75 + 16);
      v66(v11, a1, v4);
      v38 = sub_1004A4A54();
      v39 = sub_1004A6034();
      v40 = os_log_type_enabled(v38, v39);
      v69 = v26;
      if (v40)
      {
        v41 = swift_slowAlloc();
        v67 = v28;
        v28 = v41;
        *v41 = 67109120;
        v42 = sub_1004A4B04() & 1;
        (*(v75 + 8))(v11, v4);
        *(v28 + 1) = v42;
        v37 = v75;
        _os_log_impl(&_mh_execute_header, v38, v39, "Index request. Expects reply: %{BOOL}d", v28, 8u);
        LOBYTE(v28) = v67;
      }

      else
      {
        (*(v37 + 8))(v11, v4);
      }

      v58 = v73;
      v66(v73, a1, v4);
      v59 = v37;
      v60 = (*(v37 + 80) + 16) & ~*(v37 + 80);
      v61 = swift_allocObject();
      (*(v59 + 32))(v61 + v60, v58, v4);
      v53 = v69;
      v57 = v70;
      v54 = v68;
      sub_100369B34(v68, v69, v70 & 1, sub_10036BC98, v61);
      v55 = v54;
      v56 = v53;
      goto LABEL_24;
    }

    if (v29 == 1)
    {
      v82 &= 0x3Fu;
      v68 = v77;
      v69 = v78;
      v70 = v79;
      v71 = v80;
      sub_10036BAFC(v77, v78, v79, v80, v81, v28 & 0x3F);
      if (qword_1005D87A0 != -1)
      {
        swift_once();
      }

      v72 = v27;
      v30 = sub_1004A4A74();
      sub_1001C203C(v30, qword_1005DA670);
      v31 = v75;
      v66 = *(v75 + 16);
      v66(v6, a1, v4);
      v32 = sub_1004A4A54();
      v33 = sub_1004A6034();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v67 = v28;
        v28 = v34;
        *v34 = 67109120;
        v35 = sub_1004A4B04() & 1;
        (*(v75 + 8))(v6, v4);
        *(v28 + 1) = v35;
        v31 = v75;
        _os_log_impl(&_mh_execute_header, v32, v33, "Search request. Expects reply: %{BOOL}d", v28, 8u);
        LOBYTE(v28) = v67;
      }

      else
      {
        (*(v31 + 8))(v6, v4);
      }

      v49 = v73;
      v66(v73, a1, v4);
      v50 = v31;
      v51 = (*(v31 + 80) + 16) & ~*(v31 + 80);
      v52 = swift_allocObject();
      (*(v50 + 32))(v52 + v51, v49, v4);
      sub_10036A1BC(&v77, sub_10036BB90, v52);
      v54 = v68;
      v53 = v69;
      v55 = v68;
      v56 = v69;
      v57 = v70;
LABEL_24:
      v63 = v71;
      v62 = v72;
      sub_10036BA2C(v55, v56, v57, v71, v72, v28);

      sub_10036BA2C(v54, v53, v57, v63, v62, v28);
      goto LABEL_27;
    }

    v43 = v77;
    v44 = v79;
    v45 = v80;
    if (qword_1005D87A0 != -1)
    {
      swift_once();
    }

    v46 = sub_1004A4A74();
    sub_1001C203C(v46, qword_1005DA670);
    v21 = sub_1004A4A54();
    v47 = sub_1004A6014();
    if (os_log_type_enabled(v21, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v21, v47, "Received invalid 'credentials' message from maild.", v48, 2u);
    }

    sub_10036BA2C(v43, v26, v44, v45, v27, v28);
LABEL_26:

    goto LABEL_27;
  }

  __break(1u);
  swift_once();
  v20 = sub_1004A4A74();
  sub_1001C203C(v20, qword_1005DA670);
  swift_errorRetain();
  v21 = sub_1004A4A54();
  v22 = sub_1004A6014();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = sub_1004A4264();
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "Received invalid message from maild: %@", v23, 0xCu);
    sub_100025F40(v24, &qword_1005D51A0, &qword_1004D0940);

    goto LABEL_26;
  }

LABEL_27:
  v64 = v76;
  *(v76 + 32) = 0;
  result = 0.0;
  *v64 = 0u;
  v64[1] = 0u;
  return result;
}

uint64_t sub_100369A14()
{
  if (qword_1005D87A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1004A4A74();
  sub_1001C203C(v0, qword_1005DA670);
  v1 = sub_1004A4A54();
  v2 = sub_1004A6034();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Sending index task reply.", v3, 2u);
  }

  sub_10036BE80();
  return sub_1004A4B14();
}

uint64_t sub_100369B34(uint64_t a1, int64_t *a2, char a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v47 = a4;
  v48 = a5;
  v10 = sub_1004A53F4();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v6 + 32);
  *v15 = v16;
  v17 = v11[13];
  v46 = enum case for DispatchPredicate.onQueue(_:);
  v45 = v17;
  v17(v15, v13);
  v18 = v16;
  v19 = sub_1004A5404();
  v20 = v11[1];
  v20(v15, v10);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (a3)
  {
    v19 = a1;
    if ((*(v6 + 48) & 1) == 0)
    {
      if (qword_1005D87A0 != -1)
      {
        swift_once();
      }

      v29 = sub_1004A4A74();
      sub_1001C203C(v29, qword_1005DA670);

      v30 = sub_1004A4A54();
      v31 = sub_1004A6014();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134218240;
        *(v32 + 4) = *(v6 + 16);

        *(v32 + 12) = 2048;
        *(v32 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v30, v31, "[%llu] {%ld} Stopping download & index, but not in downloading state.", v32, 0x16u);
      }

      else
      {
      }

      goto LABEL_25;
    }

    if (qword_1005D87A0 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v21 = sub_1004A4A74();
      sub_1001C203C(v21, qword_1005DA670);

      v22 = sub_1004A4A54();
      v23 = sub_1004A6034();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134218240;
        *(v24 + 4) = *(v6 + 16);

        *(v24 + 12) = 2048;
        *(v24 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v22, v23, "[%llu] {%ld} Stopping download & index.", v24, 0x16u);
      }

      else
      {
      }

      *(v6 + 48) = 0;
LABEL_25:
      v6 = *(v6 + 40);
      v38 = *(v6 + 16);
      *v15 = v38;
      v45(v15, v46, v10);
      v39 = v38;
      LOBYTE(v38) = sub_1004A5404();
      v20(v15, v10);
      if (v38)
      {
        break;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
    }

    v40 = *(v6 + 80);
    return sub_1003101BC(v19);
  }

  else if (*(v6 + 48))
  {
    if (qword_1005D87A0 != -1)
    {
      swift_once();
    }

    v25 = sub_1004A4A74();
    sub_1001C203C(v25, qword_1005DA670);

    v26 = sub_1004A4A54();
    v27 = sub_1004A6034();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134218240;
      *(v28 + 4) = *(v6 + 16);

      *(v28 + 12) = 2048;
      *(v28 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%llu] {%ld} Trying to start download & index, but already running.", v28, 0x16u);
    }

    else
    {
    }

    return v47(4);
  }

  else
  {
    if (qword_1005D87A0 != -1)
    {
      swift_once();
    }

    v33 = sub_1004A4A74();
    sub_1001C203C(v33, qword_1005DA670);

    v34 = sub_1004A4A54();
    v35 = sub_1004A6034();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134218240;
      *(v36 + 4) = *(v6 + 16);

      *(v36 + 12) = 2048;
      *(v36 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%llu] {%ld} Starting download & index.", v36, 0x16u);
    }

    else
    {
    }

    *(v6 + 48) = 1;
    v41 = *(v6 + 40);
    v42 = swift_allocObject();
    *(v42 + 16) = sub_10036BD08;
    *(v42 + 24) = v6;
    v43 = swift_allocObject();
    v43[2] = v6;
    v43[3] = a1;
    v44 = v48;
    v43[4] = v47;
    v43[5] = v44;
    swift_retain_n();

    sub_100320D44(a1, a2, sub_10036BD44, v42, sub_10036BDAC, v43);
  }
}

uint64_t sub_10036A168(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 32) | 0x40;
  sub_10036BE80();
  return sub_1004A4B14();
}

uint64_t sub_10036A1BC(uint64_t a1, void *a2, uint64_t a3)
{
  v65 = a2;
  v66 = a3;
  v5 = sub_1004A4A74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A53F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + 32);
  *v14 = v15;
  (*(v10 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v9, v12);
  v16 = v15;
  LOBYTE(v15) = sub_1004A5404();
  result = (*(v10 + 8))(v14, v9);
  if (v15)
  {
    v18 = *(a1 + 8);
    v64 = *a1;
    v19 = *(a1 + 16);
    v20 = *(a1 + 40);
    if (v20 <= 1)
    {
      v35 = *(*(v3 + 40) + 72);
      if (*(a1 + 40))
      {
        v55 = swift_allocObject();
        *(v55 + 16) = v65;
        *(v55 + 24) = v66;

        sub_100343948(v64, sub_10036C26C, v55);
      }

      else
      {
        v36 = v18;
        v37 = swift_allocObject();
        v38 = v66;
        *(v37 + 16) = v65;
        *(v37 + 24) = v38;

        sub_100342F78(v64, v36, v19, sub_10036C2B4, v37);
      }
    }

    v21 = *(a1 + 24);
    v22 = *(a1 + 28);
    v23 = *(a1 + 32);
    if (v20 == 2)
    {
      v39 = *(v3 + 40);
      v61 = v18;
      v62 = v21;
      v63 = v23;
      v40 = swift_allocObject();
      v41 = v66;
      *(v40 + 16) = v65;
      *(v40 + 24) = v41;
      v65 = *(v39 + 32);
      (*(v6 + 16))(&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + OBJC_IVAR____TtC17IMAPSearchIndexer7Indexer_logger, v5);
      v42 = (*(v6 + 80) + 48) & ~*(v6 + 80);
      v43 = (v7 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
      v44 = v64;
      v59 = (v43 + 31) & 0xFFFFFFFFFFFFFFF8;
      v60 = (v43 + 19) & 0xFFFFFFFFFFFFFFF8;
      v45 = swift_allocObject();
      *(v45 + 2) = v65;
      *(v45 + 3) = v44;
      *(v45 + 4) = v61;
      *(v45 + 5) = v19;
      (*(v6 + 32))(&v45[v42], v8, v5);
      v46 = &v45[v43];
      *v46 = sub_10036BFD8;
      v46[1] = v40;
      v47 = &v45[v60];
      *v47 = v62;
      v47[4] = v22 & 1;
      *&v45[v59] = v63;
      v71 = sub_10036C118;
      v72 = v45;
      aBlock = _NSConcreteStackBlock;
      v68 = 1107296256;
      v69 = sub_10019C778;
      v70 = &unk_1005B5728;
      v33 = _Block_copy(&aBlock);

      v34 = v65;
    }

    else
    {
      v24 = v21 | (v22 << 32) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 40);
      if (v20 != 3)
      {
        v49 = *(v3 + 40);
        if (v19 | v18 | v64 | v23 | v24)
        {
          v50 = swift_allocObject();
          v51 = v66;
          *(v50 + 16) = v65;
          *(v50 + 24) = v51;
          v52 = *(v49 + 32);
          v53 = swift_allocObject();
          *(v53 + 2) = v49;
          *(v53 + 3) = sub_10036BED4;
          *(v53 + 4) = v50;
          v71 = sub_10036BF58;
          v72 = v53;
          aBlock = _NSConcreteStackBlock;
          v68 = 1107296256;
          v69 = sub_10019C778;
          v70 = &unk_1005B5638;
        }

        else
        {
          v56 = swift_allocObject();
          v57 = v66;
          *(v56 + 16) = v65;
          *(v56 + 24) = v57;
          v52 = *(v49 + 32);
          v58 = swift_allocObject();
          *(v58 + 2) = sub_10036C1DC;
          *(v58 + 3) = v56;
          *(v58 + 4) = v49;
          v71 = sub_10036C260;
          v72 = v58;
          aBlock = _NSConcreteStackBlock;
          v68 = 1107296256;
          v69 = sub_10019C778;
          v70 = &unk_1005B57A0;
        }

        v54 = _Block_copy(&aBlock);

        [v52 performBlock:v54];
        v48 = v54;
        goto LABEL_16;
      }

      v25 = *(v3 + 40);
      v26 = v18;
      v27 = swift_allocObject();
      v28 = v19;
      v29 = v66;
      *(v27 + 16) = v65;
      *(v27 + 24) = v29;
      v30 = *(v25 + 32);
      v31 = swift_allocObject();
      v32 = v64;
      *(v31 + 2) = v30;
      *(v31 + 3) = v32;
      *(v31 + 4) = v26;
      *(v31 + 5) = v28;
      *(v31 + 6) = sub_10036BF64;
      *(v31 + 7) = v27;
      *(v31 + 8) = v24;
      v71 = sub_10036BFC4;
      v72 = v31;
      aBlock = _NSConcreteStackBlock;
      v68 = 1107296256;
      v69 = sub_10019C778;
      v70 = &unk_1005B56B0;
      v33 = _Block_copy(&aBlock);

      v34 = v30;
    }

    [v34 performBlock:v33];
    v48 = v33;
LABEL_16:
    _Block_release(v48);
  }

  __break(1u);
  return result;
}

void sub_10036A930(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A4AF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A53F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 32);
  *v14 = v15;
  (*(v10 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v9, v12);
  v16 = v15;
  LOBYTE(v15) = sub_1004A5404();
  (*(v10 + 8))(v14, v9);
  if (v15)
  {
    if (qword_1005D87A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = sub_1004A4A74();
  sub_1001C203C(v17, qword_1005DA670);
  v18 = *(v5 + 16);
  v18(v8, a1, v4);

  v19 = sub_1004A4A54();
  v20 = sub_1004A6014();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 134218242;
    *(v21 + 4) = *(v2 + 16);

    *(v21 + 12) = 2112;
    sub_10036C34C(&qword_1005DA800, &type metadata accessor for XPCRichError);
    swift_allocError();
    v18(v23, v8, v4);
    v24 = sub_1004A4264();
    (*(v5 + 8))(v8, v4);

    *(v21 + 14) = v24;
    *v22 = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "[%llu] Cancelled: %@", v21, 0x16u);
    sub_100025F40(v22, &qword_1005D51A0, &qword_1004D0940);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10036AD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v16 = sub_1004A5244();
  v10 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v11 = sub_1004A5274();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v13 = *(v4 + 24);
  *&v17 = a1;
  *(&v17 + 1) = a2;
  v18 = 0;
  v19 = 0;
  v20 = 0x80;
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = a3;
  v14[4] = a4;

  XPCSession.sendToMaild(_:replyHandler:)(&v17, sub_10036BDBC, v14);
}

uint64_t sub_10036B1D8(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_1005D87A0 != -1)
      {
        swift_once();
      }

      v12 = sub_1004A4A74();
      sub_1001C203C(v12, qword_1005DA670);

      v13 = sub_1004A4A54();
      v14 = sub_1004A6034();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134218240;
        *(v15 + 4) = *(a2 + 16);

        *(v15 + 12) = 2048;
        *(v15 + 14) = a3;
        _os_log_impl(&_mh_execute_header, v13, v14, "[%llu] {%ld} Download & index did not complete.", v15, 0x16u);
      }

      else
      {
      }

      v11 = 1;
    }

    else
    {
      if (qword_1005D87A0 != -1)
      {
        swift_once();
      }

      v20 = sub_1004A4A74();
      sub_1001C203C(v20, qword_1005DA670);

      v21 = sub_1004A4A54();
      v22 = sub_1004A6034();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134218240;
        *(v23 + 4) = *(a2 + 16);

        *(v23 + 12) = 2048;
        *(v23 + 14) = a3;
        _os_log_impl(&_mh_execute_header, v21, v22, "[%llu] {%ld} Download & index did complete.", v23, 0x16u);
      }

      else
      {
      }

      v11 = 3;
    }
  }

  else if (a1)
  {
    if (qword_1005D87A0 != -1)
    {
      swift_once();
    }

    v16 = sub_1004A4A74();
    sub_1001C203C(v16, qword_1005DA670);

    v17 = sub_1004A4A54();
    v18 = sub_1004A6034();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218240;
      *(v19 + 4) = *(a2 + 16);

      *(v19 + 12) = 2048;
      *(v19 + 14) = a3;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%llu] {%ld} Download & index is currently unavailable.", v19, 0x16u);
    }

    else
    {
    }

    v11 = 2;
  }

  else
  {
    if (qword_1005D87A0 != -1)
    {
      swift_once();
    }

    v7 = sub_1004A4A74();
    sub_1001C203C(v7, qword_1005DA670);

    v8 = sub_1004A4A54();
    v9 = sub_1004A6034();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134218240;
      *(v10 + 4) = *(a2 + 16);

      *(v10 + 12) = 2048;
      *(v10 + 14) = a3;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%llu] {%ld} Download & index did defer work.", v10, 0x16u);
    }

    else
    {
    }

    v11 = 0;
  }

  return a4(v11);
}

uint64_t sub_10036B60C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v6 = *a1;
  if (*(a1 + 41))
  {
    if (qword_1005D87A0 != -1)
    {
      swift_once();
    }

    v7 = sub_1004A4A74();
    sub_1001C203C(v7, qword_1005DA670);

    sub_10036BE10(a1, v22);
    v8 = sub_1004A4A54();
    v9 = sub_1004A6014();
    sub_100025F40(a1, &qword_1005DA810, &unk_1004F7B28);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 134218242;
      *(v10 + 4) = *(a2 + 16);

      *(v10 + 12) = 2112;
      v12 = sub_1004A4264();
      *(v10 + 14) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%llu] Failed getting credentials from maild: %@", v10, 0x16u);
      sub_100025F40(v11, &qword_1005D51A0, &qword_1004D0940);

LABEL_16:

LABEL_18:
      v17 = _swiftEmptyArrayStorage;
      return a3(v17);
    }

    goto LABEL_17;
  }

  if ((*(a1 + 40) & 0xC0) != 0x80)
  {
    if (qword_1005D87A0 != -1)
    {
      swift_once();
    }

    v18 = sub_1004A4A74();
    sub_1001C203C(v18, qword_1005DA670);

    v8 = sub_1004A4A54();
    v19 = sub_1004A6014();
    if (os_log_type_enabled(v8, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = *(a2 + 16);

      _os_log_impl(&_mh_execute_header, v8, v19, "[%llu] Invalid response for credential request from maild.", v20, 0xCu);
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (qword_1005D87A0 != -1)
  {
    swift_once();
  }

  v13 = sub_1004A4A74();
  sub_1001C203C(v13, qword_1005DA670);

  sub_10036BE10(a1, v22);
  v14 = sub_1004A4A54();
  v15 = sub_1004A6034();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = *(a2 + 16);

    *(v16 + 12) = 2048;
    *(v16 + 14) = v6[2];
    sub_100025F40(a1, &qword_1005DA810, &unk_1004F7B28);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%llu] Got %ld credentials from maild.", v16, 0x16u);
  }

  else
  {
    sub_100025F40(a1, &qword_1005DA810, &unk_1004F7B28);
  }

  v17 = v6;
  return a3(v17);
}

unint64_t sub_10036B9D8()
{
  result = qword_1005DA808;
  if (!qword_1005DA808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA808);
  }

  return result;
}

void *sub_10036BA2C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if ((a6 >> 6) > 1u)
  {
    if (a6 >> 6 == 2)
    {
    }
  }

  else if (a6 >> 6)
  {
    return sub_10036BA6C(result, a2, a3, a4, a5, a6 & 0x3F);
  }

  else
  {
    return sub_10036BA5C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10036BA5C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void *sub_10036BA6C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
    }

    else
    {
      if (a6 != 3)
      {
        return result;
      }
    }
  }

  else if (a6)
  {
    if (a6 != 1)
    {
      return result;
    }
  }

  else
  {
  }
}

void *sub_10036BAFC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
    }

    else
    {
      if (a6 != 3)
      {
        return result;
      }
    }
  }

  else if (a6)
  {
    if (a6 != 1)
    {
      return result;
    }
  }

  else
  {
    v6 = result;
  }
}

uint64_t sub_10036BB90(__int128 *a1)
{
  v2 = *(*(sub_1004A4B34() - 8) + 80);

  return sub_10036A168(a1);
}

uint64_t sub_10036BC00(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10036BC10()
{
  v1 = sub_1004A4B34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10036BC98()
{
  v0 = *(*(sub_1004A4B34() - 8) + 80);

  return sub_100369A14();
}

uint64_t sub_10036BD0C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10036BD44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10036BD6C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10036BDC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(&_swiftEmptyArrayStorage);
}

uint64_t sub_10036BDF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10036BE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DA810, &unk_1004F7B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10036BE80()
{
  result = qword_1005DA818;
  if (!qword_1005DA818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA818);
  }

  return result;
}

uint64_t sub_10036BED4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  memset(v4, 0, sizeof(v4));
  v5 = 5;
  return v1(v4);
}

uint64_t sub_10036BF18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10036BF6C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10036BFD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = 0;
  v6[3] = 0;
  v7 = 2;
  return v3(v6);
}

uint64_t sub_10036C01C()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_10036C118()
{
  v1 = *(sub_1004A4A74() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1003214A4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 19) & 0xFFFFFFFFFFFFFFF8)) | (*(v0 + ((v3 + 19) & 0xFFFFFFFFFFFFFFF8) + 4) << 32), *(v0 + ((v3 + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10036C1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v9 = 3;
  return v5(v8);
}

uint64_t sub_10036C220()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10036C274(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  memset(&v6[1], 0, 24);
  v7 = a2;
  return v3(v6);
}

uint64_t sub_10036C2B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5[0] = a1;
  memset(&v5[1], 0, 24);
  v6 = 0;
  return v2(v5);
}

uint64_t sub_10036C2F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10036C334()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1003687BC();
}

uint64_t sub_10036C34C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10036C394()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10036C43C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 47))
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

uint64_t sub_10036C484(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 46) = 0;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 47) = 1;
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

    *(result + 47) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_10036C4E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  sub_1004A6ED4(v1);
  sub_1004A6ED4(v2);
  sub_1004A6ED4(v3);
  return sub_1004A6F14();
}

void sub_10036C558()
{
  v1 = v0[1];
  v2 = v0[2];
  sub_1004A6ED4(*v0);
  sub_1004A6ED4(v1);
  sub_1004A6ED4(v2);
}

Swift::Int sub_10036C5A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  sub_1004A6ED4(v1);
  sub_1004A6ED4(v2);
  sub_1004A6ED4(v3);
  return sub_1004A6F14();
}

Swift::Int sub_10036C648()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 46);
  v7 = *(v0 + 40);
  v8 = *(v0 + 42);
  v9 = *(v0 + 44);
  sub_1004A6E94();
  sub_1004A6EF4(v1);
  sub_1004A6EF4(v2);
  sub_10036CEA8(v11, v3);
  sub_10036CEA8(v11, v4);
  sub_10036CD4C(v11, v5);
  sub_1004A6ED4(v7);
  sub_1004A6ED4(v8);
  sub_1004A6ED4(v9);
  sub_1004A6EB4(v6);
  return sub_1004A6F14();
}

void sub_10036C728(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 46);
  v8 = *(v1 + 40);
  v9 = *(v1 + 42);
  v10 = *(v1 + 44);
  sub_1004A6EF4(*v1);
  sub_1004A6EF4(v3);
  sub_10036CEA8(a1, v4);
  sub_10036CEA8(a1, v5);
  sub_10036CD4C(a1, v6);
  sub_1004A6ED4(v8);
  sub_1004A6ED4(v9);
  sub_1004A6ED4(v10);
  sub_1004A6EB4(v7);
}

Swift::Int sub_10036C7D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 46);
  v7 = *(v0 + 40);
  v8 = *(v0 + 42);
  v9 = *(v0 + 44);
  sub_1004A6E94();
  sub_1004A6EF4(v1);
  sub_1004A6EF4(v2);
  sub_10036CEA8(v11, v3);
  sub_10036CEA8(v11, v4);
  sub_10036CD4C(v11, v5);
  sub_1004A6ED4(v7);
  sub_1004A6ED4(v8);
  sub_1004A6ED4(v9);
  sub_1004A6EB4(v6);
  return sub_1004A6F14();
}

uint64_t sub_10036C8B4(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return sub_10036CFD8(&v5, &v7) & 1;
}

unint64_t sub_10036C904()
{
  result = qword_1005DA830;
  if (!qword_1005DA830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA830);
  }

  return result;
}

uint64_t sub_10036C958()
{
  sub_1004A6724(38);

  v3 = *v0;
  v4._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v4);

  sub_1004A5844();

  v1 = os_transaction_create();

  if (v1)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10036CA24(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v17 = sub_1004A6F14();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1004A6D34() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10036CBDC(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_1004A6E94();
    sub_1004A6EF4(v13);
    result = sub_1004A6F14();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 8 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_10036CD4C(__int128 *a1, uint64_t a2)
{
  v17 = a1[2];
  v18 = a1[3];
  v19 = *(a1 + 8);
  v15 = *a1;
  v16 = a1[1];
  sub_1004A6F14();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v14)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v14 = sub_1004A6F14();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_1004A6EB4(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10036CEA8(__int128 *a1, uint64_t a2)
{
  v14 = a1[2];
  v15 = a1[3];
  v16 = *(a1 + 8);
  v12 = *a1;
  v13 = a1[1];
  sub_1004A6F14();
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  for (i = (v5 + 63) >> 6; v7; v3 ^= sub_1004A6F14())
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * v10)));
    sub_1004A6E94();
    sub_1004A6EF4(v11);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      sub_1004A6EB4(v3);
      return;
    }

    v7 = *(a2 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10036CFD8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if ((sub_10036CBDC(*(a1 + 16), *(a2 + 16)) & 1) != 0 && (sub_10036CBDC(*(a1 + 24), *(a2 + 24)) & 1) != 0 && (sub_10036CA24(*(a1 + 32), *(a2 + 32)) & 1) != 0 && *(a1 + 40) == *(a2 + 40))
  {
    v4 = 0;
    if (*(a1 + 42) == *(a2 + 42) && *(a1 + 44) == *(a2 + 44))
    {
      v4 = *(a1 + 46) ^ *(a2 + 46) ^ 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t _s5BatchV6CountsVwCP(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

unint64_t sub_10036D0E0()
{
  result = qword_1005DA838;
  if (!qword_1005DA838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA838);
  }

  return result;
}

unint64_t sub_10036D138()
{
  result = qword_1005DA840;
  if (!qword_1005DA840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA840);
  }

  return result;
}

uint64_t sub_10036D18C(uint64_t a1)
{
  v1 = *(a1 + 56) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10036D1A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 40) >> 49) & 0x7FFF | (*(a1 + 56) >> 1 << 15);
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

double sub_10036D204(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      v4 = -a2;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = v4 << 49;
      *(a1 + 48) = 0;
      *(a1 + 56) = (v4 >> 14) & 0x3FFFE;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10036D284(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 56) & 1 | (a2 << 62);
    *(result + 40) &= 0x1FFFFFFFFFFFFuLL;
    *(result + 56) = v2;
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 56) = 0xC000000000000000;
  }

  return result;
}

void sub_10036D2E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a4 & 1) == 0)
  {
    v8 = sub_1004A4A54();
    v9 = sub_1004A6034();
    if (!os_log_type_enabled(v8, v9))
    {
LABEL_10:

      goto LABEL_11;
    }

    v10 = swift_slowAlloc();
    *v10 = 134217984;
    v11 = __OFSUB__(a1, a3);
    v12 = a1 - a3;
    if (a1 < a3)
    {
      if (__OFSUB__(a3, a1))
      {
        __break(1u);
        goto LABEL_16;
      }

      v11 = __OFSUB__(0, a3 - a1);
      v12 = a1 - a3;
      if (!v11)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    if (!v11)
    {
LABEL_9:
      *(v10 + 4) = v12 / 1000000000.0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Did wait %f s for pausing.", v10, 0xCu);

      goto LABEL_10;
    }

LABEL_16:
    __break(1u);
    return;
  }

LABEL_11:
  v13 = *(a5 + 16);
  if (v13)
  {
    v14 = (a5 + 40);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;

      v16(v17);

      v14 += 2;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_10036D40C(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 61) | (*(v1 + 63) << 16);
  v5 = v4 >> 22;
  if (v4 >> 22 <= 1)
  {
    if (!v5)
    {
      return result;
    }

    v6 = *(v1 + 3);
    *v29 = *(v1 + 2);
    *&v29[16] = v6;
    v30 = *(v1 + 4);
    v7 = *(v1 + 1);
    v27 = *v1;
    v28 = v7;
    result = sub_10036D95C(&v27);
    LOBYTE(v26[0]) = 1;
    *v1 = v2;
    v1[1] = v3;
    goto LABEL_12;
  }

  v8 = *(v1 + 1);
  v9 = v1[4];
  v10 = *(v1 + 5);
  v11 = *(v1 + 56);
  v12 = *(v1 + 57) | ((*&v4 & 0xFFFFFFLL) << 32);
  v13 = *(v1 + 4);
  if (v5 == 2)
  {
    v14 = *(v1 + 3);
    v26[2] = *(v1 + 2);
    v26[3] = v14;
    v26[4] = *(v1 + 4);
    v15 = *(v1 + 1);
    v26[0] = *v1;
    v26[1] = v15;
    *&v27 = v2;
    *(&v27 + 1) = v3;
    v28 = v8;
    *v29 = v9;
    *&v29[8] = v10;
    v29[24] = v11;
    *&v29[25] = v12;
    v29[31] = BYTE6(v12);
    *&v29[29] = WORD2(v12);
    *&v29[24] &= 0x3FFFFFFFFFFFFFFFuLL;
    v30 = v13;
    v23 = v10;
    v24 = v13;
    v22 = v8;
    sub_10036D8EC(&v27, v25);
    result = sub_10036D95C(v26);
    v25[0] = v11 & 1;
    *v1 = v2;
    v1[1] = v3;
    *(v1 + 1) = v22;
    v1[4] = v9;
    v1[5] = v23.i64[0] & 0xFFFFFFFFFFFFLL;
    v1[6] = v23.i64[1];
    v1[7] = v11 & 1 | 0x8000000000000000;
    *(v1 + 4) = v24;
    return result;
  }

  v16 = v11 | (v12 << 8);
  v17 = vorrq_s8(v13, v10);
  if (v9 | *&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | v8 | v3 | *(&v8 + 1) | v2)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16 == 0xC000000000000000;
  }

  if (v18)
  {
    v19 = *(v1 + 3);
    *v29 = *(v1 + 2);
    *&v29[16] = v19;
    v30 = *(v1 + 4);
    v20 = *(v1 + 1);
    v27 = *v1;
    v28 = v20;
    v21 = result;
    result = sub_10036D95C(&v27);
    LOBYTE(v26[0]) = 1;
    *v1 = 0;
    v1[1] = v21;
LABEL_12:
    v1[2] = 0;
    *(v1 + 24) = 1;
    v1[4] = _swiftEmptyArrayStorage;
    v1[5] = 0;
    v1[7] = 0;
  }

  return result;
}

uint64_t sub_10036D5F0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v8 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v10 = *(v3 + 3);
  v11 = v3[7];
  v12 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = v3[3];
      v15 = *(v3 + 3);
      *&v46[16] = *(v3 + 2);
      v14 = *&v46[16];
      *&v46[32] = v15;
      v47 = *(v3 + 4);
      v16 = *(v3 + 1);
      v45 = *v3;
      *v46 = v16;

      sub_10036D95C(&v45);
      v17 = v14[2];
      v18 = v17 != 0;
      if (!v17)
      {
        v9 = a1;
      }

      v19 = swift_allocObject();
      *(v19 + 16) = a2;
      *(v19 + 24) = a3;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10035DF74(0, v14[2] + 1, 1, v14);
        v14 = result;
      }

      v21 = v18 & v13;
      v23 = v14[2];
      v22 = v14[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_10035DF74((v22 > 1), v23 + 1, 1, v14);
        v14 = result;
      }

      v14[2] = v23 + 1;
      v24 = &v14[2 * v23];
      v24[4] = sub_10036E138;
      v24[5] = v19;
      LOBYTE(v44[0]) = v21;
      *v3 = v8;
      v3[1] = v7;
      v3[2] = v9;
      *(v3 + 24) = v21;
      v3[4] = v14;
      v3[5] = 0;
      v3[7] = 0;
      return result;
    }

    return a2();
  }

  if (v12 != 2)
  {
    return a2();
  }

  v39 = v3[3];
  v25 = *(v3 + 3);
  v41 = *(v3 + 5);
  v42 = *(v3 + 4);
  v44[2] = *(v3 + 2);
  v44[3] = v25;
  v44[4] = *(v3 + 4);
  v26 = *(v3 + 1);
  v44[0] = *v3;
  v44[1] = v26;
  *&v45 = v8;
  *(&v45 + 1) = v7;
  v40 = *(&v10 + 1);
  *&v46[8] = v10;
  *&v46[24] = v41;
  *v46 = v9;
  *&v46[40] = v11 & 0x3FFFFFFFFFFFFFFFLL;
  v47 = v42;
  sub_10036D8EC(&v45, v43);
  sub_10036D95C(v44);
  v27 = v42;
  v28 = *(v42 + 16);
  v29 = v28 == 0;
  v30 = v28 != 0;
  v31 = *(&v41 + 1);
  if (v29)
  {
    v31 = a1;
  }

  v38 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10035DF74(0, *(v42 + 16) + 1, 1, v42);
    v27 = result;
  }

  v33 = v30 & v11;
  v35 = v27[2];
  v34 = v27[3];
  v36 = v40;
  if (v35 >= v34 >> 1)
  {
    result = sub_10035DF74((v34 > 1), v35 + 1, 1, v27);
    v36 = v40;
    v27 = result;
  }

  v27[2] = v35 + 1;
  v37 = &v27[2 * v35];
  v37[4] = sub_1002344B8;
  v37[5] = v32;
  v43[0] = v33;
  *v3 = v8;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v39;
  v3[4] = v36;
  v3[5] = v41 & 0x1FFFFFFFFFFFFLL;
  v3[6] = v38;
  v3[7] = v33 & 1 | 0x8000000000000000;
  v3[8] = v27;
  v3[9] = *(&v42 + 1);
  return result;
}

uint64_t sub_10036D8EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DA850, &qword_1004F7D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10036D98C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10036D9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a1;
  v40 = a3;
  v41 = a2;
  v4 = type metadata accessor for PendingItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = sub_10000C9C0(&qword_1005DA858, &qword_1004F7D90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v36 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v17 = Strong;
  v18 = *(Strong + 40);

  os_unfair_lock_lock((v18 + 20));
  v19 = *(v18 + 16);
  os_unfair_lock_unlock((v18 + 20));
  if (v19 == 1)
  {
    AssociatedTypeWitness = sub_10000C9C0(&qword_1005DA860, &qword_1004F7ED0);
    AssociatedConformanceWitness = sub_10000DF44(&qword_1005DA868, &qword_1005DA860, &qword_1004F7ED0);
    swift_unknownObjectRelease();
    v20 = 0;
    *&v46 = _swiftEmptyArrayStorage;
  }

  else
  {
    swift_beginAccess();
    v21 = *(v17 + 48);

    os_unfair_lock_lock((v21 + 48));
    if (*(v21 + 32))
    {
      v37 = sub_10000C9C0(&qword_1005DA860, &qword_1004F7ED0);
      v22 = sub_10000DF44(&qword_1005DA868, &qword_1005DA860, &qword_1004F7ED0);
      v20 = 0;
      v23 = _swiftEmptyArrayStorage;
    }

    else
    {
      v20 = *(v21 + 24);
      v36 = *(v21 + 16);
      v37 = sub_10000C9C0(&qword_1005DA870, &qword_1004F7D98);
      v22 = sub_10000DF44(&qword_1005DA878, &qword_1005DA870, &qword_1004F7D98);
      *(&v42 + 1) = sub_1003260F8;
      v43 = 0;
    }

    v44 = v37;
    v45 = v22;
    *&v42 = v23;
    os_unfair_lock_unlock((v21 + 48));
    sub_1000B364C(&v42, &v46);
    swift_unknownObjectRelease();
  }

  v49 = v20;

  if (!AssociatedTypeWitness)
  {
    return 1;
  }

  v37 = v49;
  sub_1000B364C(&v46, &v42);
  v24 = v44;
  v25 = sub_10002587C(&v42, v44);
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v25);
  (*(v28 + 16))(&v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1000B3774(&v46);
  sub_1004A5AC4();
  for (i = _swiftEmptyArrayStorage; ; sub_10036DFF0(v9, i + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v32))
  {
    sub_100025928(&v46, AssociatedTypeWitness);
    sub_1004A6414();
    if ((*(v5 + 48))(v15, 1, v4) == 1)
    {
      break;
    }

    sub_10036DFF0(v15, v11);
    v30 = i[2];
    if (v30 > 0x27)
    {
      sub_10036E054(v11);
      break;
    }

    sub_10036E0B0(v11, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_10035DD70(0, v30 + 1, 1, i);
    }

    v32 = i[2];
    v31 = i[3];
    if (v32 >= v31 >> 1)
    {
      i = sub_10035DD70(v31 > 1, v32 + 1, 1, i);
    }

    sub_10036E054(v11);
    i[2] = v32 + 1;
  }

  result = sub_1000197E0(&v46);
  v34 = i[2];
  if (!v34)
  {
LABEL_26:

    sub_1000197E0(&v42);
    return 1;
  }

  if (v34 >= v41)
  {
LABEL_32:
    sub_1000197E0(&v42);
    return i;
  }

  if (v34 != v40)
  {

    sub_1000197E0(&v42);
    return v34;
  }

  v35 = v39 - v38;
  if (v39 >= v38)
  {
    if (!__OFSUB__(v39, v38))
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (!__OFSUB__(v38, v39))
    {
      v35 = v39 - v38;
      if (!__OFSUB__(0, v38 - v39))
      {
LABEL_30:
        if (v35 / 1000000000.0 < 4.0)
        {

          sub_1000197E0(&v42);
          return v40;
        }

        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10036DFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10036E054(uint64_t a1)
{
  v2 = type metadata accessor for PendingItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10036E0B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10036E13C(uint64_t a1)
{
  v3 = sub_1004A5244();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004A5274();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + 32);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100371640;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B5D08;
  v13 = _Block_copy(aBlock);

  sub_1004A5254();
  v17 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_10036E3DC()
{
  v1 = sub_1004A5244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004A5274();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 32);
  aBlock[4] = sub_100371600;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B5CB8;
  v10 = _Block_copy(aBlock);

  sub_1004A5254();
  v14 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_10036E660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1004A5244();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004A5274();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 32);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1003715DC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B5C90;
  v16 = _Block_copy(aBlock);

  sub_1004A5254();
  v20 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_10036E914()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005DA880);
  sub_1001C203C(v0, qword_1005DA880);
  return sub_1004A4A64();
}

uint64_t sub_10036E994()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = static MonotonicTime.now()();
    sub_10036EBBC(v1);
  }

  return result;
}

uint64_t sub_10036E9F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  sub_100372990(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  sub_1001AD0E0(v0 + 144);
  v2 = *(v0 + 160);

  return swift_deallocClassInstance();
}

void sub_10036EA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 32);
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1004A5404();
  (*(v5 + 8))(v9, v4);
  if (v10)
  {
    swift_beginAccess();
    sub_10036D40C(a2);
    swift_endAccess();
    sub_10036EBBC(a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_10036EBBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 32);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = sub_1004A5404();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v11 = *(v2 + 48);
  swift_beginAccess();
  if (*(v2 + 112) >> 62)
  {
LABEL_19:
    swift_endAccess();
    return;
  }

  v13 = *(v2 + 56);
  v12 = *(v2 + 64);
  swift_retain_n();
  v14 = sub_10036D9C4(a1, v11, v13, v12);
  v4 = v14;
  v17 = v15;
  if (!(v16 >> 6))
  {
    v34 = *(v2 + 72);
    v35 = *(v2 + 104);
    v56 = *(v2 + 88);
    v57 = v35;
    v58 = *(v2 + 120);
    v54 = *(v2 + 56);
    v55 = v34;
    sub_10036D95C(&v54);

    v53[0] = 1;
    *(v2 + 56) = v4;
    *(v2 + 64) = v17;
    *(v2 + 72) = 0;
    *(v2 + 80) = 1;
    *(v2 + 88) = _swiftEmptyArrayStorage;
    *(v2 + 96) = 0;
    *(v2 + 112) = 0;

    swift_endAccess();
    if (qword_1005D87B0 == -1)
    {
LABEL_12:
      v36 = sub_1004A4A74();
      sub_1001C203C(v36, qword_1005DA880);
      v37 = sub_1004A4A54();
      v38 = sub_1004A6034();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = v4;
        _os_log_impl(&_mh_execute_header, v37, v38, "Source only has %ld items. Waiting for more.", v39, 0xCu);
      }

      if (!*(v2 + 160))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v40 = *(v2 + 160);

      RestartableTimer.start()();
      goto LABEL_26;
    }

LABEL_31:
    swift_once();
    goto LABEL_12;
  }

  v18 = v16;
  if (v16 >> 6 != 1)
  {
    if (v16 == 128 && !(v14 | v15))
    {

      goto LABEL_19;
    }

    swift_endAccess();
    if (qword_1005D87B0 != -1)
    {
      swift_once();
    }

    v41 = sub_1004A4A74();
    sub_1001C203C(v41, qword_1005DA880);
    v42 = sub_1004A4A54();
    v43 = sub_1004A6004();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Got no items from source. Not starting new batch.", v44, 2u);
    }

    if (!*(v2 + 160))
    {
      goto LABEL_34;
    }

    v45 = *(v2 + 160);

    RestartableTimer.stop()();
LABEL_26:

    return;
  }

  swift_endAccess();
  if ((v18 & 1) == 0)
  {
    if (*(v2 + 160))
    {
      v19 = *(v2 + 160);

      RestartableTimer.stop()();

      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_8:
  sub_10036F67C(v4, v17, &v59);
  v20 = v59;
  v21 = v60;
  v51 = v61;
  v52 = v62;
  v22 = v65;
  v23 = v64;
  v24 = v63;
  swift_beginAccess();
  v25 = *(v2 + 112) >> 62;
  if (v25 <= 1)
  {
    v26 = v24 | ((v23 | (v22 << 16)) << 32);
    if (v25)
    {
      v46 = *(v2 + 72);
      v47 = *(v2 + 104);
      v56 = *(v2 + 88);
      v57 = v47;
      v58 = *(v2 + 120);
      v54 = *(v2 + 56);
      v55 = v46;
      sub_10036D95C(&v54);
      sub_1003724D4(&v59, v53);
      v31 = sub_10036C958();
      v53[0] = 1;
      *(v2 + 56) = v20;
      v48 = v51;
      *(v2 + 72) = v21;
      *(v2 + 80) = v48;
      *(v2 + 88) = v52;
      *(v2 + 96) = v26 & 0x1FFFFFFFFFFFFLL;
      *(v2 + 104) = 0;
      *(v2 + 112) = 0x8000000000000001;
      *(v2 + 120) = _swiftEmptyArrayStorage;
    }

    else
    {
      v49 = v26;
      v27 = *(v2 + 80);
      v50 = *(v2 + 72);
      v29 = *(v2 + 72);
      v30 = *(v2 + 104);
      v56 = *(v2 + 88);
      v28 = v56;
      v57 = v30;
      v58 = *(v2 + 120);
      v54 = *(v2 + 56);
      v55 = v29;

      sub_10036D95C(&v54);
      sub_1003724D4(&v59, v53);
      v31 = sub_10036C958();
      v53[0] = v27 & 1;
      v32 = v49 & 0x1FFFFFFFFFFFFLL;
      *(v2 + 56) = v20;
      v33 = v51;
      *(v2 + 72) = v21;
      *(v2 + 80) = v33;
      *(v2 + 88) = v52;
      *(v2 + 96) = v32;
      *(v2 + 104) = v50;
      *(v2 + 112) = v27 & 1 | 0x8000000000000000;
      *(v2 + 120) = v28;
    }

    *(v2 + 128) = v31;
  }

  swift_endAccess();
  sub_100372530(v4, v17, v18);
  sub_100372544(&v59);
}

void sub_10036F19C(uint64_t a1)
{
  if (!a1)
  {
    oslog = sub_1004A4A54();
    v5 = sub_1004A6034();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Did delete all searchable items.", v6, 2u);
    }

    goto LABEL_6;
  }

  swift_errorRetain();
  oslog = sub_1004A4A54();
  v1 = sub_1004A6014();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Failed to delete all searchable items: %@", v2, 0xCu);
    sub_100190D30(v3);

LABEL_6:

    return;
  }
}

uint64_t sub_10036F340(uint64_t a1)
{
  [v1 setIndexDelegate:a1];

  return swift_unknownObjectRelease();
}

void sub_10036F398(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7.super.isa = sub_1004A4404().super.isa;
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100346E74;
    v8[3] = &unk_1005B5FB0;
    a3 = _Block_copy(v8);
  }

  [v4 endIndexBatchWithClientState:v7.super.isa completionHandler:a3];
  _Block_release(a3);
}

void sub_10036F46C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1003725DC();
  v6.super.isa = sub_1004A5C04().super.isa;
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100346E74;
    v7[3] = &unk_1005B5F88;
    a2 = _Block_copy(v7);
  }

  [v3 indexSearchableItems:v6.super.isa completionHandler:a2];
  _Block_release(a2);
}

void sub_10036F554(uint64_t a1, void *a2, uint64_t a3)
{
  v6.super.isa = sub_1004A5C04().super.isa;
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100346E74;
    v7[3] = &unk_1005B5F60;
    a2 = _Block_copy(v7);
  }

  [v3 deleteSearchableItemsWithIdentifiers:v6.super.isa completionHandler:a2];
  _Block_release(a2);
}

void sub_10036F67C(unint64_t a1@<X0>, NSObject *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = v4[2];
  v9 = v4[3];
  ObjectType = swift_getObjectType();
  v11 = v4[17];
  v4[17] = v11 + 1;
  v12 = swift_allocObject();
  swift_weakInit();

  sub_10036FBD8(v11, a2, a1, sub_1003725D0, v12, ObjectType, v9, &v22);

  if (v4[20])
  {
    v13 = v4[20];

    RestartableTimer.start()();

    if (qword_1005D87B0 != -1)
    {
      swift_once();
    }

    v14 = sub_1004A4A74();
    sub_1001C203C(v14, qword_1005DA880);
    sub_1003724D4(&v22, &v21);
    v15 = sub_1004A4A54();
    v16 = sub_1004A6034();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218752;
      *(v17 + 4) = v22;
      *(v17 + 12) = 512;
      v18 = *&v23[26];
      v19 = *&v23[28];
      *(v17 + 14) = *&v23[24];
      *(v17 + 16) = 512;
      *(v17 + 18) = v18;
      *(v17 + 20) = 512;
      *(v17 + 22) = v19;
      sub_100372544(&v22);
      _os_log_impl(&_mh_execute_header, v15, v16, "Started batch ID %llu, adding %hu, updating %hu, deleting %hu message(s).", v17, 0x18u);
    }

    else
    {
      sub_100372544(&v22);
    }

    v20 = *v23;
    *a3 = v22;
    a3[1] = v20;
    *(a3 + 31) = *&v23[15];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10036F898(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10036F914(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10036F914(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1004A5244();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1004A5274();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + 32);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  LOBYTE(a1) = a3 & 1;
  *(v17 + 40) = a3 & 1;
  aBlock[4] = sub_1003727EC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B5DA8;
  v18 = _Block_copy(aBlock);

  sub_10037281C(a2, a1);
  sub_1004A5254();
  v22 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_10036FBD8@<X0>(unint64_t a1@<X0>, NSObject *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v157 = a7;
  v156 = a6;
  v152 = a5;
  v151 = a4;
  v154 = a2;
  v158 = a1;
  v153 = a8;
  v9 = sub_1004A44E4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v164 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PendingItem.AddMessage(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v159 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v165 = (&v147 - v16);
  v167 = type metadata accessor for PendingItem.Info(0);
  v17 = *(*(v167 - 8) + 64);
  v18 = __chkstk_darwin(v167);
  v20 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v169 = &v147 - v22;
  __chkstk_darwin(v21);
  v24 = &v147 - v23;
  v160 = type metadata accessor for PendingItem(0);
  v25 = *(*(v160 - 8) + 64);
  v26 = __chkstk_darwin(v160);
  v28 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v168 = &v147 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v147 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = (&v147 - v35);
  __chkstk_darwin(v34);
  v39 = &v147 - v38;
  *&v177 = _swiftEmptySetSingleton;
  v40 = *(a3 + 16);
  v171 = v20;
  v166 = v28;
  v170 = v40;
  v161 = a3;
  v150 = v37;
  if (v40)
  {
    v41 = a3 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v42 = *(v37 + 72);
    v43 = v41;
    v44 = v40;
    do
    {
      sub_100372690(v43, v39, type metadata accessor for PendingItem);
      sub_10036210C(&v175, *(v39 + 1));
      sub_1003726F8(v39, type metadata accessor for PendingItem);
      v43 += v42;
      --v44;
    }

    while (v44);
    v149 = v177;
    *&v177 = _swiftEmptySetSingleton;
    v45 = v41;
    v46 = v170;
    do
    {
      sub_100372690(v45, v36, type metadata accessor for PendingItem);
      sub_1003625AC(&v175, *v36);
      sub_1003726F8(v36, type metadata accessor for PendingItem);
      v45 += v42;
      --v46;
    }

    while (v46);
    v162 = v177;
    v175 = _swiftEmptySetSingleton;
    v47 = v41;
    v48 = v170;
    v49 = *(v160 + 24);
    v50 = v167;
    do
    {
      sub_100372690(v47, v33, type metadata accessor for PendingItem);
      sub_100372690(&v33[v49], v24, type metadata accessor for PendingItem.Info);
      if (!swift_getEnumCaseMultiPayload())
      {
        v51 = v165;
        sub_100372628(v24, v165, type metadata accessor for PendingItem.AddMessage);
        v52 = *v51;
        v53 = v51[1];

        sub_1003726F8(v51, type metadata accessor for PendingItem.AddMessage);
        v54 = v53;
        v50 = v167;
        sub_100361EC4(&v177, v52, v54);
      }

      sub_1003726F8(v33, type metadata accessor for PendingItem);
      v47 += v42;
      --v48;
    }

    while (v48);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v163 = v175;
    v58 = *(v160 + 24);
    v59 = v170;
    v28 = v166;
    do
    {
      v60 = v168;
      sub_100372690(v41, v168, type metadata accessor for PendingItem);
      sub_100372628(v60 + v58, v169, type metadata accessor for PendingItem.Info);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          ++v56;
        }

        else
        {
          ++v55;
        }
      }

      else
      {
        ++v57;
        sub_1003726F8(v169, type metadata accessor for PendingItem.Info);
      }

      v41 += v42;
      --v59;
    }

    while (v59);
    a3 = v161;
    v62 = v163;
    v63 = v162;
    v64 = v149;
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v62 = _swiftEmptySetSingleton;
    v64 = _swiftEmptySetSingleton;
    v63 = _swiftEmptySetSingleton;
    v50 = v167;
  }

  *&v177 = v158;
  *(&v177 + 1) = v154;
  *v178 = v64;
  *&v178[8] = v63;
  *&v178[16] = v62;
  v65 = v57;
  *&v178[24] = v57;
  *&v178[26] = v56;
  *&v178[28] = v55;
  v178[30] = 0;
  v66 = qword_1005D87B0;
  v163 = v62;

  v162 = v63;

  if (v66 != -1)
  {
    swift_once();
  }

  v67 = sub_1004A4A74();
  sub_1001C203C(v67, qword_1005DA880);
  sub_1003724D4(&v177, &v175);
  sub_1003724D4(&v177, &v175);
  sub_1003724D4(&v177, &v175);
  sub_1003724D4(&v177, &v175);
  sub_1003724D4(&v177, &v175);

  sub_1003724D4(&v177, &v175);

  v68 = sub_1004A4A54();
  v69 = sub_1004A6034();
  v70 = os_log_type_enabled(v68, v69);
  v71 = _swiftEmptyArrayStorage;
  v72 = v171;
  if (v70)
  {
    LODWORD(v149) = v69;
    v154 = v68;
    LODWORD(v168) = v56;
    LODWORD(v169) = v55;
    v73 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v174 = v148;
    *v73 = 134219522;
    *(v73 + 4) = v158;
    *(v73 + 12) = 2048;

    *(v73 + 14) = v170;

    *(v73 + 22) = 2080;
    v74 = sub_100371648(v162);
    v76 = v75;

    v172 = v76;
    v173 = v74;
    v175 = 0;
    v176 = 0xE000000000000000;
    sub_1004A6934();
    v179._countAndFlagsBits = 3026478;
    v179._object = 0xE300000000000000;
    sub_1004A5994(v179);
    sub_1004A6934();
    v77 = sub_10015BA6C(v175, v176, &v174);

    *(v73 + 24) = v77;
    *(v73 + 32) = 512;
    sub_100372544(&v177);
    *(v73 + 34) = v65;
    sub_100372544(&v177);
    v162 = v73;
    *(v73 + 36) = 2080;
    v78 = v163;
    v79 = *(v163 + 16);
    if (v79)
    {
      v80 = sub_10035E0A8(*(v163 + 16), 0);
      v81 = sub_100139548(&v175, v80 + 4, v79, v78);

      sub_10031C0D0();
      if (v81 != v79)
      {
        __break(1u);
        sub_100372544(&v177);
        sub_100372544(&v177);
        sub_100372544(&v177);
        sub_100372544(&v177);

        __break(1u);
        return result;
      }

      v50 = v167;
      v72 = v171;
    }

    else
    {

      v80 = _swiftEmptyArrayStorage;
    }

    v175 = v80;
    sub_1003171EC(&v175);
    v82 = v170;
    v84 = v175;
    v85 = *(v175 + 16);
    if (v85)
    {
      v175 = _swiftEmptyArrayStorage;
      sub_10034F5D0(0, v85, 0);
      v86 = v175;
      v163 = v84;
      v87 = (v84 + 40);
      do
      {
        v88 = *(v87 - 1);
        if ((*v87 & 0x2000000000000000) == 0)
        {
          v89 = *(v87 - 1);
        }

        v90 = *v87;

        sub_1004A5954();
        v91 = sub_1004A5AB4();
        v93 = v92;
        v95 = v94;
        v97 = v96;

        v175 = v86;
        v99 = *(v86 + 2);
        v98 = *(v86 + 3);
        if (v99 >= v98 >> 1)
        {
          sub_10034F5D0((v98 > 1), v99 + 1, 1);
          v86 = v175;
        }

        *(v86 + 2) = v99 + 1;
        v100 = &v86[32 * v99];
        *(v100 + 4) = v91;
        *(v100 + 5) = v93;
        *(v100 + 6) = v95;
        *(v100 + 7) = v97;
        v87 += 2;
        --v85;
      }

      while (v85);

      v50 = v167;
      v82 = v170;
      v72 = v171;
      v28 = v166;
    }

    else
    {

      v86 = _swiftEmptyArrayStorage;
    }

    v175 = v86;
    sub_10000C9C0(&unk_1005DA980, &unk_1004F5F00);
    sub_10000DF44(&qword_1005D6C10, &unk_1005DA980, &unk_1004F5F00);
    sub_1002AACE0();
    v101 = sub_1004A5BC4();
    v103 = v102;

    v104 = sub_10015BA6C(v101, v103, &v174);

    v105 = v162;
    *(v162 + 38) = v104;
    *(v105 + 46) = 512;
    sub_100372544(&v177);
    *(v105 + 48) = v168;
    sub_100372544(&v177);
    *(v105 + 50) = 512;
    sub_100372544(&v177);
    *(v105 + 52) = v169;
    sub_100372544(&v177);
    v106 = v154;
    _os_log_impl(&_mh_execute_header, v154, v149, "Starting batch %llu with %ld items (%s). Adding %hu {%s}. Updating %hu. Deleting %hu.", v105, 0x36u);
    swift_arrayDestroy();

    v83 = v160;
    a3 = v161;
    v71 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_100372544(&v177);
    sub_100372544(&v177);
    sub_100372544(&v177);

    sub_100372544(&v177);
    sub_100372544(&v177);
    sub_100372544(&v177);

    v82 = v170;
    v83 = v160;
  }

  (*(v157 + 32))(v156);
  v175 = _swiftEmptyArrayStorage;
  if (v82)
  {
    v107 = a3 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
    v168 = *(v150 + 72);
    v108 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100372690(v107, v28, type metadata accessor for PendingItem);
      sub_100372690(&v28[*(v83 + 24)], v72, type metadata accessor for PendingItem.Info);
      v113 = swift_getEnumCaseMultiPayload();
      if (v113)
      {
        v170 = v82;
        if (v113 != 1)
        {
          v169 = v108;
          v131 = v50;
          v174 = *(v28 + 1);
          v132 = sub_1004A6CE4();
          v134 = v133;
          v135 = v83;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_100085070(0, *(v71 + 2) + 1, 1, v71);
          }

          v137 = *(v71 + 2);
          v136 = *(v71 + 3);
          v138 = v71;
          if (v137 >= v136 >> 1)
          {
            v138 = sub_100085070((v136 > 1), v137 + 1, 1, v71);
          }

          sub_1003726F8(v28, type metadata accessor for PendingItem);
          *(v138 + 2) = v137 + 1;
          v71 = v138;
          v139 = &v138[16 * v137];
          *(v139 + 4) = v132;
          *(v139 + 5) = v134;
          v83 = v135;
          v50 = v131;
          v108 = v169;
          v82 = v170;
          goto LABEL_43;
        }

        v169 = v71;
        v114 = *v72;
        v115 = v28;
        v116 = v72[1];
        v117 = v72[2];
        v118 = v72[3];
        v119 = v72[4];
        v120 = v171[5];
        v121 = v171[6];
        v162 = v171[7];
        LODWORD(v163) = v171[8];
        v161 = sub_1003725DC();
        v122 = *(v115 + 1);
        v123 = v164;
        sub_1004A44D4();
        v124 = 256;
        if ((v116 & 1) == 0)
        {
          v124 = 0;
        }

        v125 = 0x10000;
        if ((v117 & 1) == 0)
        {
          v125 = 0;
        }

        v126 = 0x1000000;
        if ((v118 & 1) == 0)
        {
          v126 = 0;
        }

        v127 = (v119 & 1) == 0;
        v83 = v160;
        v128 = &_mh_execute_header;
        if (v127)
        {
          v128 = 0;
        }

        v127 = (v120 & 1) == 0;
        v72 = v171;
        v129 = 0x10000000000;
        if (v127)
        {
          v129 = 0;
        }

        v130 = v114 & 1 | (v121 << 48);
        v50 = v167;
        sub_100348A18(v122, v130 | v124 | v125 | v126 | v128 | v129 | (v162 << 56), v163 & 1, v123);
        v82 = v170;
      }

      else
      {
        v169 = v71;
        v109 = v165;
        sub_100372628(v72, v165, type metadata accessor for PendingItem.AddMessage);
        sub_1003725DC();
        v110 = *(v28 + 1);
        v111 = v159;
        sub_100372690(v109, v159, type metadata accessor for PendingItem.AddMessage);
        v112 = v164;
        sub_1004A44D4();
        sub_100348658(v110, v111, v112);
        sub_1003726F8(v109, type metadata accessor for PendingItem.AddMessage);
      }

      sub_1004A5BF4();
      if (*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v140 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1004A5C44();
      }

      sub_1004A5C84();
      v28 = v166;
      sub_1003726F8(v166, type metadata accessor for PendingItem);
      v108 = v175;
      v71 = v169;
LABEL_43:
      v107 += v168;
      if (!--v82)
      {
        goto LABEL_65;
      }
    }
  }

  v108 = _swiftEmptyArrayStorage;
LABEL_65:
  v141 = v157;
  v142 = v155;
  v143 = v156;
  (*(v157 + 48))(v108, 0, 0, v156, v157);

  (*(v141 + 56))(v71, 0, 0, v143, v141);

  result = sub_100371864(v158, v142, v151, v152, v143, v141);
  v145 = *v178;
  v146 = v153;
  *v153 = v177;
  v146[1] = v145;
  *(v146 + 31) = *&v178[15];
  return result;
}

void sub_100370CD8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1004A53F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + 32);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = sub_1004A5404();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  swift_beginAccess();
  v14 = *(v3 + 104);
  v15 = *(v3 + 72);
  v69 = *(v3 + 88);
  v70 = v14;
  v71 = *(v3 + 120);
  v67 = *(v3 + 56);
  v68 = v15;
  if (*(&v14 + 1) >> 62 != 2)
  {
    if (qword_1005D87B0 == -1)
    {
LABEL_10:
      v30 = sub_1004A4A74();
      sub_1001C203C(v30, qword_1005DA880);
      v31 = sub_1004A4A54();
      v32 = sub_1004A6024();
      if (!os_log_type_enabled(v31, v32))
      {
LABEL_18:

        return;
      }

      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = a1;
      v34 = "Did finish processing batch %llu, but not currently processing.";
      v35 = v32;
      v36 = v31;
      v37 = v33;
      v38 = 12;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v36, v35, v34, v37, v38);

      goto LABEL_18;
    }

LABEL_31:
    swift_once();
    goto LABEL_10;
  }

  *(&v70 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
  v16 = *(v3 + 104);
  v17 = *(v3 + 72);
  v64[2] = *(v3 + 88);
  v65 = v16;
  v66 = *(v3 + 120);
  v64[0] = *(v3 + 56);
  v64[1] = v17;
  *(&v65 + 1) = *(&v16 + 1) & 0x3FFFFFFFFFFFFFFFLL;
  sub_10036D8EC(v64, v60);

  swift_unknownObjectRelease();
  v18 = v67;
  if (v67 != a1)
  {
    if (qword_1005D87B0 != -1)
    {
      swift_once();
    }

    v39 = sub_1004A4A74();
    sub_1001C203C(v39, qword_1005DA880);
    sub_1003724D4(&v67, v60);
    v31 = sub_1004A4A54();
    v40 = sub_1004A6024();
    if (!os_log_type_enabled(v31, v40))
    {
      sub_100372544(&v67);
      sub_100372544(&v67);
      goto LABEL_18;
    }

    v41 = swift_slowAlloc();
    *v41 = 134218240;
    *(v41 + 4) = a1;
    *(v41 + 12) = 2048;
    sub_100372544(&v67);
    *(v41 + 14) = v18;
    sub_100372544(&v67);
    v34 = "Did finish processing batch %llu, but currently processing batch %llu.";
    v35 = v40;
    v36 = v31;
    v37 = v41;
    v38 = 22;
    goto LABEL_16;
  }

  v19 = static MonotonicTime.now()();
  if (qword_1005D87B0 != -1)
  {
    swift_once();
  }

  v20 = sub_1004A4A74();
  v21 = sub_1001C203C(v20, qword_1005DA880);
  swift_beginAccess();
  v22 = *(v3 + 104);
  v23 = *(v3 + 72);
  v61 = *(v3 + 88);
  v62 = v22;
  v63 = *(v3 + 120);
  v60[0] = *(v3 + 56);
  v60[1] = v23;
  v24 = BYTE8(v22);
  if (*(&v22 + 1) >> 62 == 2)
  {
    *(&v62 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
    v25 = *(v3 + 88);
    v52 = *(v3 + 72);
    v53 = v25;
    v26 = *(v3 + 120);
    v54 = *(v3 + 104);
    v55 = v26;
    v51 = *(v3 + 56);
    v56[2] = v25;
    v57 = v54;
    v59 = v26;
    v56[0] = v51;
    v56[1] = v52;
    v58 = *(&v54 + 1) & 0x3FFFFFFFFFFFFFFFLL;
    sub_10036D8EC(v56, v50);
    sub_10036D95C(&v51);
    v27 = v62;
    v28 = v63;
    swift_unknownObjectRelease();
    if (BYTE14(v61))
    {
      v29 = static MonotonicTime.now()();
      sub_10036D2E0(v29, v21, v27, v24 & 1, v28);

      sub_100372544(v60);
      *(v3 + 56) = 0;
      *(v3 + 64) = v19;
      *(v3 + 96) = 0;
      *(v3 + 112) = 0x4000000000000000;
    }

    else
    {
      sub_100372544(v60);
      v50[0] = v24 & 1;
      *(v3 + 56) = 0;
      *(v3 + 64) = v19;
      *(v3 + 72) = v27;
      *(v3 + 80) = v24 & 1;
      *(v3 + 88) = v28;
      *(v3 + 96) = 0;
      *(v3 + 112) = 0;
    }
  }

  swift_endAccess();
  if (a3)
  {
    swift_errorRetain();
    v42 = sub_1004A4A54();
    v43 = sub_1004A6014();
    sub_1003727E0(a2, 1);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 134218242;
      *(v44 + 4) = a1;
      *(v44 + 12) = 2112;
      v46 = sub_1004A4264();
      *(v44 + 14) = v46;
      *v45 = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "Did fail processing batch %llu: %@", v44, 0x16u);
      sub_100190D30(v45);

LABEL_25:
    }
  }

  else
  {
    v42 = sub_1004A4A54();
    v47 = sub_1004A6034();
    if (os_log_type_enabled(v42, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v42, v47, "Did finish processing batch %llu.", v48, 0xCu);
      goto LABEL_25;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100328E08(*(&v68 + 1), *(&v67 + 1));
    sub_100372544(&v67);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100372544(&v67);
  }

  sub_10036EBBC(v19);
}

uint64_t sub_100371354(uint64_t a1)
{
  if (qword_1005D87B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1004A4A74();
  v3 = sub_1001C203C(v2, qword_1005DA880);
  swift_beginAccess();
  v4 = static MonotonicTime.now()();
  v5 = *(a1 + 72);
  v35 = *(a1 + 56);
  v36 = v5;
  v6 = *(a1 + 104);
  v37 = *(a1 + 88);
  v38 = v6;
  v39 = *(a1 + 120);
  v7 = v35;
  v8 = v36;
  v9 = BYTE8(v36);
  v10 = v37;
  v11 = HIBYTE(v6) >> 6;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v15 = *(&v37 + 1);
      v16 = BYTE8(v38);
      v17 = *(&v39 + 1);
      v23 = v39;
      v24 = v38;
      v18 = (*(&v36 + 9) << 8) | ((*(&v36 + 13) | (HIBYTE(v36) << 16)) << 40);
      v19 = *(a1 + 72);
      v20 = *(a1 + 104);
      v27 = *(a1 + 88);
      v28 = v20;
      v21 = *(a1 + 120);
      v26[0] = *(a1 + 56);
      v26[1] = v19;
      v32 = v27;
      *&v33 = v20;
      v34 = v21;
      v31 = v19;
      v29 = v21;
      v30 = v26[0];
      *(&v33 + 1) = *(&v20 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      sub_10036D8EC(&v30, v25);
      sub_10036D95C(v26);
      v25[0] = v16 & 1;
      *(a1 + 56) = v7;
      *(a1 + 72) = v8;
      *(a1 + 80) = v18 | v9;
      *(a1 + 88) = v10;
      *(a1 + 96) = v15 & 0xFFFFFFFFFFFFLL | 0x1000000000000;
      *(a1 + 104) = v24;
      *(a1 + 112) = v16 & 1 | 0x8000000000000000;
      *(a1 + 120) = v23;
      *(a1 + 128) = v17;
    }
  }

  else if (!v11)
  {
    v12 = *(a1 + 72);
    v13 = *(a1 + 104);
    v32 = *(a1 + 88);
    v33 = v13;
    v34 = *(a1 + 120);
    v30 = *(a1 + 56);
    v31 = v12;
    v14 = v4;

    sub_10036D95C(&v30);
    LOBYTE(v26[0]) = v9 & 1;
    sub_10036D2E0(v14, v3, v8, v9 & 1, v10);
    sub_10036D95C(&v35);
    *(a1 + 56) = v7;
    *(a1 + 96) = 0;
    *(a1 + 112) = 0x4000000000000000;
  }

  return swift_endAccess();
}

uint64_t sub_100371570(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  v5 = static MonotonicTime.now()();
  sub_10036D5F0(v5, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1003715E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100371608()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100371648(unint64_t result)
{
  v2 = result + 56;
  v1 = *(result + 56);
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & v1;
  if ((v4 & v1) != 0)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
LABEL_9:
    v13 = *(result + 48);
    v14 = *(v13 + 8 * v7);
    v15 = v14;
    if (!v8)
    {
      goto LABEL_11;
    }

    do
    {
      v16 = v6;
LABEL_15:
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v18 = *(v13 + ((v16 << 9) | (8 * v17)));
      if (v18 < v15)
      {
        v14 = v18;
        v15 = v18;
      }
    }

    while (v8);
    while (1)
    {
LABEL_11:
      v16 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

      if (v16 >= v9)
      {
        break;
      }

      v8 = *(v2 + 8 * v16);
      ++v6;
      if (v8)
      {
        v6 = v16;
        goto LABEL_15;
      }
    }

    v19 = 1 << *(result + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(result + 56);
    if (v21)
    {
      v22 = 0;
      v23 = __clz(__rbit64(v21));
      v24 = (v21 - 1) & v21;
      v25 = (v19 + 63) >> 6;
LABEL_27:
      v29 = *(result + 48);
      v30 = *(v29 + 8 * v23);
      v31 = v30;
      if (!v24)
      {
        goto LABEL_29;
      }

      do
      {
        v32 = v22;
LABEL_33:
        v33 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v34 = *(v29 + ((v32 << 9) | (8 * v33)));
        if (v31 < v34)
        {
          v30 = v34;
        }

        if (v31 <= v34)
        {
          v31 = v34;
        }
      }

      while (v24);
LABEL_29:
      while (1)
      {
        v32 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_43;
        }

        if (v32 >= v25)
        {
          if (v30 < v14)
          {
            goto LABEL_44;
          }

          return v14;
        }

        v24 = *(v2 + 8 * v32);
        ++v22;
        if (v24)
        {
          v22 = v32;
          goto LABEL_33;
        }
      }
    }

    v26 = 0;
    v27 = 0;
    v25 = (v19 + 63) >> 6;
    while (v25 - 1 != v27)
    {
      v22 = v27 + 1;
      v28 = *(result + 64 + 8 * v27);
      v26 -= 64;
      ++v27;
      if (v28)
      {
        v24 = (v28 - 1) & v28;
        v23 = __clz(__rbit64(v28)) - v26;
        goto LABEL_27;
      }
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v9 = (v3 + 63) >> 6;
    while (v9 - 1 != v11)
    {
      v6 = v11 + 1;
      v12 = *(result + 64 + 8 * v11);
      v10 -= 64;
      ++v11;
      if (v12)
      {
        v8 = (v12 - 1) & v12;
        v7 = __clz(__rbit64(v12)) - v10;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

uint64_t sub_100371864(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = bswap64(a1);
  v11 = sub_10035BC04(&v17, &v18);
  v13 = v12;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  v15 = *(a6 + 40);

  v15(v11, v13, sub_100372790, v14, a5, a6);

  return sub_100014D40(v11, v13);
}

uint64_t sub_100371988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1005D87B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1004A4A74();
  sub_1001C203C(v6, qword_1005DA880);
  v7 = sub_1004A4A54();
  v8 = sub_1004A6014();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Spotlight is requesting a re-index of all items.", v9, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = swift_allocObject();
    v12[2] = v3;
    v12[3] = a1;
    v12[4] = a2;
    v13 = *(v11 + 16);
    v14 = swift_allocObject();
    v14[2] = v11;
    v14[3] = sub_10037291C;
    v14[4] = v12;
    v16[4] = sub_100372960;
    v16[5] = v14;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10019C778;
    v16[3] = &unk_1005B5EE8;
    v15 = _Block_copy(v16);

    swift_unknownObjectRetain();

    [v13 performBlock:v15];
    _Block_release(v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100371BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1005D87B0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v6 = sub_1004A4A74();
  sub_1001C203C(v6, qword_1005DA880);

  v7 = sub_1004A4A54();
  v8 = sub_1004A5FF4();

  v43 = v4;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446210;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
    v11 = sub_1004A5614();
    v4 = v12;
    v13 = sub_10015BA6C(v11, v12, aBlock);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Spotlight is requesting a re-donation of %{public}s", v9, 0xCu);
    sub_1000197E0(v10);
  }

  v14 = 0;
  v15 = *(a1 + 16);
  v16 = _swiftEmptyArrayStorage;
LABEL_5:
  v17 = (a1 + 40 + 16 * v14);
  while (v15 != v14)
  {
    if (v14 >= v15)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_28;
    }

    v19 = *(v17 - 1);
    v4 = *v17;

    v20 = sub_100325504(v19, v4);
    ++v14;
    v17 += 2;
    if ((v21 & 1) == 0)
    {
      v4 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_10035DB38(0, *(v16 + 2) + 1, 1, v16);
      }

      v23 = *(v16 + 2);
      v22 = *(v16 + 3);
      if (v23 >= v22 >> 1)
      {
        v16 = sub_10035DB38((v22 > 1), v23 + 1, 1, v16);
      }

      *(v16 + 2) = v23 + 1;
      *&v16[8 * v23 + 32] = v4;
      v14 = v18;
      goto LABEL_5;
    }
  }

  if (*(v16 + 2) == v15)
  {

    v24 = sub_1004A4A54();
    v25 = sub_1004A6014();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = *(v16 + 2);

      v27 = "Spotlight is requesting a re-donation of %ld items.";
      v28 = v25;
      v29 = v24;
      v30 = v26;
      v31 = 12;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v29, v28, v27, v30, v31);

      goto LABEL_24;
    }
  }

  else
  {

    v24 = sub_1004A4A54();
    v32 = sub_1004A6014();
    if (os_log_type_enabled(v24, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134218240;
      *(v33 + 4) = v15;

      *(v33 + 12) = 2048;
      *(v33 + 14) = *(v16 + 2);

      v27 = "Spotlight is requesting a re-donation of %ld items, but only %ld identifiers were valid.";
      v28 = v32;
      v29 = v24;
      v30 = v33;
      v31 = 22;
      goto LABEL_20;
    }
  }

LABEL_24:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v35 = Strong;
  v36 = swift_allocObject();
  v36[2] = v43;
  v36[3] = a2;
  v36[4] = a3;
  v37 = *(v35 + 16);
  v38 = swift_allocObject();
  v38[2] = v35;
  v38[3] = v16;
  v38[4] = sub_100372828;
  v38[5] = v36;
  aBlock[4] = sub_1003728B4;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B5E20;
  v39 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [v37 performBlock:v39];
  _Block_release(v39);

  return swift_unknownObjectRelease();
}

uint64_t sub_1003720C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1004A5244();
  v25 = *(v11 - 8);
  v12 = *(v25 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1004A5274();
  v15 = *(v24 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v24);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 40);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  aBlock[4] = a5;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = a6;
  v21 = _Block_copy(aBlock);

  sub_1004A5254();
  v26 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v21);
  (*(v25 + 8))(v14, v11);
  (*(v15 + 8))(v18, v24);
}

uint64_t sub_100372358(uint64_t (*a1)(void), uint64_t a2, const char *a3)
{
  if (qword_1005D87B0 != -1)
  {
    swift_once();
  }

  v5 = sub_1004A4A74();
  sub_1001C203C(v5, qword_1005DA880);
  v6 = sub_1004A4A54();
  v7 = sub_1004A6034();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a3, v8, 2u);
  }

  return a1();
}

uint64_t sub_10037244C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return a2(a4, 0, 0);
  }

  swift_errorRetain();
  a2(a4, a1, 1);
}

uint64_t sub_100372530(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
  }

  return result;
}

uint64_t sub_100372598()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1003725DC()
{
  result = qword_1005DA288;
  if (!qword_1005DA288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005DA288);
  }

  return result;
}

uint64_t sub_100372628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100372690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003726F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100372758()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10037279C()
{
  v1 = *(v0 + 16);

  sub_1003727E0(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1003727E0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1003727EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  sub_100370CD8(v1, v2, v3);
}

uint64_t sub_10037281C(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10037286C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003728C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100372990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a8 >> 62 == 2)
  {

    return swift_unknownObjectRelease();
  }

  else if (!(a8 >> 62))
  {
  }

  return result;
}

uint64_t sub_100372CAC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

Swift::Int sub_100372D0C()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6304();
  return sub_1004A6F14();
}

Swift::Int sub_100372D74()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6304();
  return sub_1004A6F14();
}

uint64_t sub_100372DB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1003428B4();
  return sub_1004A62F4() & 1;
}

unint64_t sub_100372DFC()
{
  result = qword_1005DAA40;
  if (!qword_1005DAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAA40);
  }

  return result;
}

void *sub_100372E50(void *a1)
{
  v1 = a1;
  v2 = [a1 entity];
  v3 = [v2 name];

  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = sub_1004A5764();
  v6 = v5;

  if (v4 == 0x786F626C69616DLL && v6 == 0xE700000000000000)
  {
  }

  else
  {
    v8 = sub_1004A6D34();

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v1 isTemporaryID])
  {
LABEL_10:

    return 0;
  }

  return v1;
}

void sub_100372F50()
{
  *&xmmword_1005DAA48 = 0xD000000000000012;
  *(&xmmword_1005DAA48 + 1) = 0x80000001004B00E0;
  qword_1005DAA58 = 0xD00000000000001ALL;
  unk_1005DAA60 = 0x80000001004B0100;
  *&xmmword_1005DAA68 = sub_100323DCC;
  *(&xmmword_1005DAA68 + 1) = 0;
  qword_1005DAA78 = sub_100372FCC;
  unk_1005DAA80 = 0;
  *&xmmword_1005DAA88 = sub_100373000;
  *(&xmmword_1005DAA88 + 1) = 0;
}

id sub_100372FCC@<X0>(id result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = [result longLongValue];
  }

  *a2 = result;
  return result;
}

void sub_100373000(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1005D8778 != -1)
  {
    swift_once();
  }

  v2 = sub_1004A4A74();
  sub_1001C203C(v2, qword_1005DE2D0);
  oslog = sub_1004A4A54();
  v3 = sub_1004A6004();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Saving current Spotlight message ID %llu.", v4, 0xCu);
  }
}

id sub_100373100(uint64_t *a1)
{
  if (a1[1])
  {
    v2 = *a1;
    v3 = a1[1];

    v4 = sub_1004A5734();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004CEAA0;
  v7 = a1[3];
  *(v6 + 32) = a1[2];
  *(v6 + 40) = v7;

  sub_1002755F4(a1);
  isa = sub_1004A5C04().super.isa;

  v9 = [v5 initWithDisplayName:v4 handles:isa handleIdentifier:CNContactEmailAddressesKey];

  return v9;
}

uint64_t sub_100373204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = *(a1 + 16);
  sub_10034F6A0(0, v1, 0);
  v3 = -1 << *(a1 + 32);
  result = sub_1004A6554();
  v5 = v34;
  if (result < 0 || result >= 1 << *(a1 + 32))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v6 = a1 + 64;
    v7 = *(a1 + 36);
    v8 = 1;
    v35 = v7;
    while (1)
    {
      v9 = result >> 6;
      v10 = 1 << result;
      if ((*(v6 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        break;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v11 = *(*(a1 + 48) + 8 * result);
      v12 = *(a1 + 56) + 72 * result;
      v13 = *v12;
      v14 = *(v12 + 16);
      v15 = *(v12 + 32);
      v16 = *(v12 + 48);
      v17 = *(v12 + 64);
      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (v19 >= v18 >> 1)
      {
        v33 = result;
        v31 = v14;
        v32 = v13;
        v29 = v16;
        v30 = v15;
        sub_10034F6A0((v18 > 1), v19 + 1, 1);
        v16 = v29;
        v15 = v30;
        v14 = v31;
        v13 = v32;
        v5 = v34;
        v7 = v35;
        v6 = a1 + 64;
        result = v33;
      }

      _swiftEmptyArrayStorage[2] = v19 + 1;
      v20 = &_swiftEmptyArrayStorage[12 * v19];
      v20[4] = v11;
      *(v20 + 5) = v13;
      *(v20 + 7) = v14;
      *(v20 + 9) = v15;
      *(v20 + 11) = v16;
      *(v20 + 104) = 0;
      *(v20 + 27) = *&v36[3];
      *(v20 + 105) = *v36;
      v20[14] = v17;
      *(v20 + 120) = 0;
      v21 = 1 << *(a1 + 32);
      if (result >= v21)
      {
        goto LABEL_27;
      }

      v22 = *(v6 + 8 * v9);
      if ((v22 & v10) == 0)
      {
        goto LABEL_28;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v23 = v22 & (-2 << (result & 0x3F));
      if (v23)
      {
        result = __clz(__rbit64(v23)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v9 << 6;
        v25 = v9 + 1;
        v26 = (a1 + 72 + 8 * v9);
        while (v25 < (v21 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_100020944(result, v7, 0);
            v6 = a1 + 64;
            v5 = v34;
            result = __clz(__rbit64(v27)) + v24;
            goto LABEL_19;
          }
        }

        sub_100020944(result, v7, 0);
        v6 = a1 + 64;
        v5 = v34;
        result = v21;
      }

LABEL_19:
      if (v8 == v5)
      {
        return _swiftEmptyArrayStorage;
      }

      v7 = v35;
      if ((result & 0x8000000000000000) == 0)
      {
        ++v8;
        if (result < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1003734D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A44E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  sub_1004A4464();
  v10 = round(v9 / 21600.0);
  (*(v5 + 8))(v8, v4);
  result = 0;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return result;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v12 = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  KeyPath = swift_getKeyPath();
  v15 = -1 << *(a2 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a2 + 64);
  v36 = -1 << *(a2 + 32);
  v18 = (63 - v15) >> 6;
  v33 = v12 - 4;
  v19 = __OFSUB__(v12, 4);
  v20 = __OFADD__(v12, 1);
  v21 = v12 + 1;
  v22 = v20;
  v34 = v22;
  v35 = v19;
  swift_bridgeObjectRetain_n();
  v31[0] = KeyPath;
  swift_retain_n();
  v31[1] = v13;

  v32 = 0;
  v23 = 0;
  while (2)
  {
    v24 = v23;
    do
    {
      v25 = v17;
      if (!v17)
      {
        v26 = v24;
        while (1)
        {
          v23 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v23 >= v18)
          {
            goto LABEL_30;
          }

          v25 = *(a2 + 64 + 8 * v23);
          ++v26;
          if (v25)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_20:
      v27 = __clz(__rbit64(v25)) | (v23 << 6);
      v28 = *(*(a2 + 48) + 8 * v27);
      v29 = *(*(a2 + 56) + 72 * v27 + 56);

      result = sub_10031C0D0();
      if (v35)
      {
        goto LABEL_33;
      }

      if (v34)
      {
        goto LABEL_34;
      }

      if (v21 <= v33)
      {
        goto LABEL_35;
      }

      v17 = (v25 - 1) & v25;
      v30 = v28 <= v33 || v21 < v28;
      v24 = v23;
    }

    while (v30);
    v20 = __OFADD__(v32, v29);
    v32 += v29;
    if (!v20)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_30:

  sub_10031C0D0();
  sub_10031C0D0();

  return v32;
}

uint64_t sub_10037382C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A44E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  sub_1004A4464();
  v10 = round(v9 / 21600.0);
  result = (*(v5 + 8))(v8, v4);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (v10 <= -9.22337204e18)
  {
    goto LABEL_34;
  }

  if (v10 < 9.22337204e18)
  {
    v12 = 0;
    v13 = v10;
    v14 = 1 << *(a2 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a2 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v13 - 3;
    v19 = __OFSUB__(v13, 3);
    v20 = __OFADD__(v13, 1);
    v21 = v13 + 1;
    v22 = v20;
    while (1)
    {
      if (!v16)
      {
        do
        {
          v28 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_32;
          }

          if (v28 >= v17)
          {
            return 0;
          }

          v16 = *(a2 + 64 + 8 * v28);
          ++v12;
        }

        while (!v16);
        v12 = v28;
        if (!v19)
        {
          goto LABEL_15;
        }

LABEL_29:
        __break(1u);
        return 1;
      }

      if (v19)
      {
        goto LABEL_29;
      }

LABEL_15:
      if (v22)
      {
        break;
      }

      if (v21 <= v18)
      {
        goto LABEL_33;
      }

      result = v16 - 1;
      v23 = __clz(__rbit64(v16)) | (v12 << 6);
      v24 = *(*(a2 + 48) + 8 * v23);
      v16 &= v16 - 1;
      v25 = *(*(a2 + 56) + 72 * v23 + 64);
      if (v24 > v18 && v21 >= v24 && v25 >= 1)
      {
        return 1;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100373A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_getKeyPath();
  v50 = a3 + 64;
  v8 = -1 << *(a3 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v48 = -1 << *(a3 + 32);
  v39 = (63 - v8) >> 6;
  v45 = a2 - a1;
  v11 = __OFSUB__(a2, a1);
  v47 = v11;
  v44 = a2 - 1;
  v12 = __OFSUB__(a2, 1);
  v46 = v12;
  v49 = a3;
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v14 = v10;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v15 = 0;
LABEL_11:
  v16 = v15;
  while (1)
  {
    v17 = v14;
    if (!v14)
    {
      break;
    }

LABEL_17:
    v19 = __clz(__rbit64(v17)) | (v15 << 6);
    v20 = *(*(v49 + 48) + 8 * v19);
    v21 = (*(v49 + 56) + 72 * v19);
    v22 = *v21;
    v23 = v21[1];
    v25 = v21[2];
    v24 = v21[3];
    v26 = v21[4];
    v42 = v21[6];
    v43 = v21[5];
    v40 = v21[8];
    v41 = v21[7];

    result = sub_10031C0D0();
    if (v47)
    {
      goto LABEL_36;
    }

    if (v46)
    {
      goto LABEL_37;
    }

    if (v44 < v45)
    {
      goto LABEL_38;
    }

    v14 = (v17 - 1) & v17;
    v27 = v20 < v45 || v44 < v20;
    v16 = v15;
    if (!v27)
    {
      if (__OFADD__(v38, v22))
      {
        goto LABEL_39;
      }

      if (__OFADD__(v37, v23))
      {
        goto LABEL_40;
      }

      if (__OFADD__(v36, v25))
      {
        goto LABEL_41;
      }

      if (__OFADD__(v35, v24))
      {
        goto LABEL_42;
      }

      if (__OFADD__(v34, v26))
      {
        goto LABEL_43;
      }

      if (__OFADD__(v33, v43))
      {
        goto LABEL_44;
      }

      if (__OFADD__(v32, v42))
      {
        goto LABEL_45;
      }

      if (__OFADD__(v31, v41))
      {
        goto LABEL_46;
      }

      result = v40;
      v28 = __OFADD__(v30, v40);
      v30 += v40;
      if (v28)
      {
        goto LABEL_47;
      }

      v31 += v41;
      v32 += v42;
      v33 += v43;
      v34 += v26;
      v35 += v24;
      v36 += v25;
      v37 += v23;
      v38 += v22;
      goto LABEL_11;
    }
  }

  v18 = v16;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= v39)
    {

      sub_10031C0D0();
      sub_10031C0D0();

      *a4 = v38;
      a4[1] = v37;
      a4[2] = v36;
      a4[3] = v35;
      a4[4] = v34;
      a4[5] = v33;
      a4[6] = v32;
      a4[7] = v31;
      a4[8] = v30;
      return result;
    }

    v17 = *(v50 + 8 * v15);
    ++v18;
    if (v17)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
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
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_100373DA8(uint64_t a1)
{
  v2 = sub_1004A3F84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v14 = sub_100373204(a1);

  sub_100376F80(&v14);

  v5 = v14;
  v6 = sub_1004A4004();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1004A3FF4();
  sub_10000C9C0(&qword_1005D32D0, &unk_1004F7FB0);
  v9 = *(v3 + 72);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004CEAA0;
  sub_1004A3F64();
  v14 = v11;
  sub_100377D24();
  sub_10000C9C0(&qword_1005D32E0, &qword_1004DD0C0);
  sub_1001AD108();
  sub_1004A6544();
  sub_1004A3F94();
  v14 = v5;
  sub_10000C9C0(&qword_1005DAA98, &unk_1004F7FC0);
  sub_1003787DC(&qword_1005DAAA0, sub_100377D7C);
  v12 = sub_1004A3FE4();

  return v12;
}

uint64_t sub_100374128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A44E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  if (sub_10037382C(a1, a2))
  {
    return 0;
  }

  sub_1004A44D4();
  (*(v5 + 16))(v9, v11, v4);
  sub_1004A4464();
  v14 = round(v13 / 21600.0);
  v15 = *(v5 + 8);
  result = v15(v9, v4);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v12 = 0;
LABEL_34:
    v15(v11, v4);
    return v12;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
  }

  else if (v14 < 9.22337204e18)
  {
    v17 = v14;
    result = swift_allocObject();
    v12 = 0;
    v18 = 0;
    *(result + 16) = v14;
    v19 = -1 << *(a2 + 32);
    if (-v19 < 64)
    {
      v20 = ~(-1 << -v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(a2 + 64);
    v22 = v17 - 4;
    v23 = __OFSUB__(v17, 4);
    v24 = v17 + 1;
    v25 = __OFADD__(v17, 1);
    while (v21)
    {
      if (v23)
      {
        goto LABEL_32;
      }

LABEL_18:
      if (v25)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v24 <= v22)
      {
        goto LABEL_38;
      }

      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = v26 | (v18 << 6);
      v28 = *(*(a2 + 48) + 8 * v27);
      if (v28 > v22 && v24 >= v28)
      {
        v30 = *(*(a2 + 56) + 72 * v27);
        v31 = __OFADD__(v12, v30);
        v12 += v30;
        if (v31)
        {
          goto LABEL_41;
        }
      }
    }

    v32 = v18;
    do
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v33 >= ((63 - v19) >> 6))
      {
        goto LABEL_33;
      }

      v21 = *(a2 + 64 + 8 * v33);
      ++v32;
    }

    while (!v21);
    v18 = v33;
    if (!v23)
    {
      goto LABEL_18;
    }

LABEL_32:
    __break(1u);
LABEL_33:

    sub_10031C0D0();

    goto LABEL_34;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

Swift::Int sub_100374430()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_100377DD0(v3, v1);
  return sub_1004A6F14();
}

Swift::Int sub_100374480()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_100377DD0(v3, v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003744D0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  if (v3 == 1)
  {
    sub_1004A6EB4(1uLL);
    v4 = v1;
    v1 = v2;
LABEL_4:
    sub_1004A6EB4(v4);
    v4 = v1;
  }

  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

void sub_100374550()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (!*(v0 + 16))
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    v3 = *(v0 + 8);
    sub_1004A6EB4(1uLL);
    v2 = v1;
    v1 = v3;
LABEL_4:
    sub_1004A6EB4(v2);
    v2 = v1;
  }

  sub_1004A6EB4(v2);
}

Swift::Int sub_1003745B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  if (v3 == 1)
  {
    sub_1004A6EB4(1uLL);
    v4 = v1;
    v1 = v2;
LABEL_4:
    sub_1004A6EB4(v4);
    v4 = v1;
  }

  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

BOOL sub_10037462C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v5 = a2[1];
    if (*(a1 + 16) == 1)
    {
      return v4 == 1 && v2 == v3 && a1[1] == v5;
    }

    else
    {
      v10 = v5 | v3;
      return v4 == 2 && v10 == 0;
    }
  }

  else
  {
    return !*(a2 + 16) && v2 == v3;
  }
}

void *sub_100374688(uint64_t a1)
{
  v26 = sub_1004A44E4();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v26);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v27 = _swiftEmptyArrayStorage;
    sub_10034F630(0, v5, 0);
    v6 = v27;
    v24 = (v2 + 8);
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      v10 = sub_1003070C0(v8, v9);
      v11 = sub_10033A6CC();

      v12 = v25;
      sub_1004A44D4();
      v13 = sub_100374128(v12, v11);
      v15 = v14;
      v17 = v16;

      (*v24)(v12, v26);
      v27 = v6;
      v19 = v6[2];
      v18 = v6[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_10034F630((v18 > 1), v19 + 1, 1);
        v20 = v19 + 1;
        v6 = v27;
      }

      v6[2] = v20;
      v21 = &v6[5 * v19];
      v21[4] = v8;
      v21[5] = v9;
      v21[6] = v13;
      v21[7] = v15;
      *(v21 + 64) = v17;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      v22 = _swiftEmptyDictionarySingleton;
      goto LABEL_9;
    }
  }

  sub_10000C9C0(&qword_1005DA5E8, &qword_1004F7918);
  v22 = sub_1004A6A74();
LABEL_9:
  v27 = v22;
  sub_100378980(v6, 1, &v27);

  return v27;
}

Swift::Int sub_1003748E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  sub_1004A6EB4(v6);
  sub_1004A6EB4(v7);
  sub_1004A6EB4(v8);
  sub_1004A6EB4(v9);
  return sub_1004A6F14();
}

void sub_1003749BC()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  sub_1004A6EB4(v6);
  sub_1004A6EB4(v7);
  sub_1004A6EB4(v8);
}

Swift::Int sub_100374A58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  sub_1004A6EB4(v6);
  sub_1004A6EB4(v7);
  sub_1004A6EB4(v8);
  sub_1004A6EB4(v9);
  return sub_1004A6F14();
}

BOOL sub_100374B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_100377FCC(v7, v9);
}

Swift::Int sub_100374B88()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  return sub_1004A6F14();
}

void sub_100374C18()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
}

Swift::Int sub_100374C7C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  return sub_1004A6F14();
}

Swift::Int sub_100374D4C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

void sub_100374DA8()
{
  v1 = v0[1];
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
}

Swift::Int sub_100374DE8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

uint64_t sub_100374E40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *v1 + 64;
  v5 = 1 << *(*v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a1 - 56;
  v10 = __OFSUB__(a1, 56);
  v11 = a1 + 1;
  v12 = __OFADD__(a1, 1);

  v14 = v12;
  v15 = 0;
  v36 = &_swiftEmptyArrayStorage;
  while (v7)
  {
    if (v10)
    {
      goto LABEL_40;
    }

LABEL_12:
    if (v14)
    {
      goto LABEL_41;
    }

    if (v11 <= v9)
    {
      goto LABEL_42;
    }

    v16 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * v16)));
    if (v17 <= v9 || v11 < v17)
    {
      v34 = v10;
      v35 = v14;
      v19 = v36;
      result = swift_isUniquelyReferenced_nonNull_native();
      v38 = v36;
      if ((result & 1) == 0)
      {
        result = sub_10034F570(0, v36[2] + 1, 1);
        v19 = v36;
      }

      v21 = v19[2];
      v20 = v19[3];
      v22 = v21 + 1;
      v14 = v35;
      if (v21 >= v20 >> 1)
      {
        v37 = v21 + 1;
        v33 = v19[2];
        result = sub_10034F570((v20 > 1), v21 + 1, 1);
        v22 = v37;
        v19 = v38;
        v21 = v33;
        v14 = v35;
      }

      v19[2] = v22;
      v36 = v19;
      v19[v21 + 4] = v17;
      v10 = v34;
    }
  }

  do
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v23 >= v8)
    {

      v24 = v36[2];
      if (v24)
      {
        v25 = v36 + 4;
        do
        {
          v26 = *v25++;
          v27 = sub_10035E144(v26);
          if (v28)
          {
            v29 = v27;
            v30 = *v2;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v32 = *v2;
            v39 = *v2;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_100360AC8();
              v32 = v39;
            }

            sub_100358E80(v29, v32);
            *v2 = v32;
          }

          --v24;
        }

        while (v24);
      }
    }

    v7 = *(v4 + 8 * v23);
    ++v15;
  }

  while (!v7);
  v15 = v23;
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_100375070(Swift::UInt a1, uint64_t **a2)
{
  v5 = sub_1004A44E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  sub_1004A44D4();
  sub_100374128(v9, v10);
  v12 = v11;
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = *a2;
  v16 = v38[0];
  result = sub_10035E144(a1);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_21;
  }

  v2 = v18;
  if (v16[3] < v22)
  {
    sub_10035E71C(v22, isUniquelyReferenced_nonNull_native);
    v16 = v38[0];
    result = sub_10035E144(a1);
    if ((v2 & 1) == (v23 & 1))
    {
      goto LABEL_6;
    }

    result = sub_1004A6E24();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  *a2 = v16;
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v16[(result >> 6) + 8] |= 1 << result;
  *(v16[6] + 8 * result) = a1;
  v24 = v16[7] + 72 * result;
  *(v24 + 64) = 0;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = v16[2];
  v21 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v16[2] = v26;
LABEL_9:
    while (1)
    {
      v27 = v16[7] + 72 * result;
      v29 = *(v27 + 32);
      v28 = (v27 + 32);
      v30 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
        break;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      v37 = result;
      sub_100360AC8();
      result = v37;
      v16 = v38[0];
      *a2 = v38[0];
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *v28 = v30;
    sub_1004A44D4();
    sub_100374128(v9, v16);
    v32 = v31;
    v13(v9, v5);
    if (v12)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32 == 1;
    }

    if (!v33)
    {
      return sub_100374E40(a1);
    }

    result = sub_10037614C(v38, a1);
    if (*(v34 + 72))
    {
      (result)(v38, 0);
      return sub_100374E40(a1);
    }

    v35 = *(v34 + 56);
    v21 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (!v21)
    {
      *(v34 + 56) = v36;
      (result)(v38, 0);
      return sub_100374E40(a1);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100375338(Swift::UInt a1, uint64_t **a2, void (*a3)(unint64_t), uint64_t a4)
{
  v37 = a4;
  v38 = a3;
  v7 = sub_1004A44E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  sub_1004A44D4();
  sub_100374128(v11, v12);
  v36 = v13;
  v14 = *(v8 + 8);
  v14(v11, v7);
  v15 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39[0] = *a2;
  v17 = v39[0];
  result = sub_10035E144(a1);
  v20 = v17[2];
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    v4 = v19;
    if (v17[3] < v23)
    {
      sub_10035E71C(v23, isUniquelyReferenced_nonNull_native);
      v17 = v39[0];
      result = sub_10035E144(a1);
      if ((v4 & 1) == (v24 & 1))
      {
        goto LABEL_6;
      }

      result = sub_1004A6E24();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_6:
      *a2 = v17;
      if (v4)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v34 = result;
  sub_100360AC8();
  result = v34;
  v17 = v39[0];
  *a2 = v39[0];
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17[(result >> 6) + 8] |= 1 << result;
  *(v17[6] + 8 * result) = a1;
  v25 = v17[7] + 72 * result;
  *(v25 + 64) = 0;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  v26 = v17[2];
  v22 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_23;
  }

  v17[2] = v27;
LABEL_9:
  v38(v17[7] + 72 * result + 16);
  sub_1004A44D4();
  sub_100374128(v11, v17);
  v29 = v28;
  v14(v11, v7);
  if (v36)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29 == 1;
  }

  if (!v30)
  {
    return sub_100374E40(a1);
  }

  result = sub_10037614C(v39, a1);
  if (*(v31 + 72))
  {
    (result)(v39, 0);
    return sub_100374E40(a1);
  }

  v32 = *(v31 + 56);
  v22 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (!v22)
  {
    *(v31 + 56) = v33;
    (result)(v39, 0);
    return sub_100374E40(a1);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_10037560C(Swift::UInt a1, uint64_t **a2)
{
  v5 = sub_1004A44E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  sub_1004A44D4();
  sub_100374128(v9, v10);
  v12 = v11;
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = *a2;
  v16 = v38[0];
  result = sub_10035E144(a1);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_21;
  }

  v2 = v18;
  if (v16[3] < v22)
  {
    sub_10035E71C(v22, isUniquelyReferenced_nonNull_native);
    v16 = v38[0];
    result = sub_10035E144(a1);
    if ((v2 & 1) == (v23 & 1))
    {
      goto LABEL_6;
    }

    result = sub_1004A6E24();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  *a2 = v16;
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v16[(result >> 6) + 8] |= 1 << result;
  *(v16[6] + 8 * result) = a1;
  v24 = v16[7] + 72 * result;
  *(v24 + 64) = 0;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = v16[2];
  v21 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v16[2] = v26;
LABEL_9:
    while (1)
    {
      v27 = v16[7] + 72 * result;
      v29 = *(v27 + 40);
      v28 = (v27 + 40);
      v30 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
        break;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      v37 = result;
      sub_100360AC8();
      result = v37;
      v16 = v38[0];
      *a2 = v38[0];
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *v28 = v30;
    sub_1004A44D4();
    sub_100374128(v9, v16);
    v32 = v31;
    v13(v9, v5);
    if (v12)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32 == 1;
    }

    if (!v33)
    {
      return sub_100374E40(a1);
    }

    result = sub_10037614C(v38, a1);
    if (*(v34 + 72))
    {
      (result)(v38, 0);
      return sub_100374E40(a1);
    }

    v35 = *(v34 + 56);
    v21 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (!v21)
    {
      *(v34 + 56) = v36;
      (result)(v38, 0);
      return sub_100374E40(a1);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003758D4(Swift::UInt a1, uint64_t **a2)
{
  v5 = sub_1004A44E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  sub_1004A44D4();
  sub_100374128(v9, v10);
  v12 = v11;
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = *a2;
  v16 = v38[0];
  result = sub_10035E144(a1);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_21;
  }

  v2 = v18;
  if (v16[3] < v22)
  {
    sub_10035E71C(v22, isUniquelyReferenced_nonNull_native);
    v16 = v38[0];
    result = sub_10035E144(a1);
    if ((v2 & 1) == (v23 & 1))
    {
      goto LABEL_6;
    }

    result = sub_1004A6E24();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  *a2 = v16;
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v16[(result >> 6) + 8] |= 1 << result;
  *(v16[6] + 8 * result) = a1;
  v24 = v16[7] + 72 * result;
  *(v24 + 64) = 0;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = v16[2];
  v21 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v16[2] = v26;
LABEL_9:
    while (1)
    {
      v27 = v16[7] + 72 * result;
      v29 = *(v27 + 48);
      v28 = (v27 + 48);
      v30 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
        break;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      v37 = result;
      sub_100360AC8();
      result = v37;
      v16 = v38[0];
      *a2 = v38[0];
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *v28 = v30;
    sub_1004A44D4();
    sub_100374128(v9, v16);
    v32 = v31;
    v13(v9, v5);
    if (v12)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32 == 1;
    }

    if (!v33)
    {
      return sub_100374E40(a1);
    }

    result = sub_10037614C(v38, a1);
    if (*(v34 + 72))
    {
      (result)(v38, 0);
      return sub_100374E40(a1);
    }

    v35 = *(v34 + 56);
    v21 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (!v21)
    {
      *(v34 + 56) = v36;
      (result)(v38, 0);
      return sub_100374E40(a1);
    }
  }

  __break(1u);
  return result;
}