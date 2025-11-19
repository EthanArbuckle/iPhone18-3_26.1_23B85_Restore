uint64_t sub_10005AABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    v8 = *v1;
    v7 = (v1 + 1);
    v6 = v8;
    if (v8 == v7)
    {
      return 1;
    }

    else
    {
      do
      {
        v4 = sub_10005AB90(v6 + 40);
        if (!v4)
        {
          break;
        }

        v9 = *(v6 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v6 + 2);
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != v7);
    }
  }

  else
  {
    while (1)
    {
      v3 = *(a1 + 16) + 32 * *(a1 + 10);
      v4 = v1 == v3;
      if (v1 == v3)
      {
        break;
      }

      v5 = (v1 + 1);
      if (!sub_10005AB90(v5))
      {
        break;
      }

      v1 = v5 + 24;
      if (*(a1 + 8) > 0x100u)
      {
        sub_1000639F0();
      }
    }
  }

  return v4;
}

uint64_t sub_10005AB90(unsigned __int8 *a1)
{
  v2 = a1[8];
  if ((v2 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v3 = sub_10004FD04(v10, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v9, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
  }

  if (dword_100092BB0[v2] != 10)
  {
    return 1;
  }

  if (a1[9] == 1)
  {
    v4 = *a1;
    if (*(*a1 + 8) >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = sub_100061FB0(v4, v5);
        if (((*(*v6 + 48))(v6) & 1) == 0)
        {
          break;
        }

        ++v5;
        v4 = *a1;
        if (v5 >= *(*a1 + 8))
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  if (a1[10])
  {
    return 1;
  }

  v8 = **a1;
  if ((a1[10] & 0x10) != 0)
  {
    return ((*(v8 + 72))() & 1) != 0;
  }

  result = (*(v8 + 48))();
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_10005ACEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005AD04(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4, unsigned __int8 *a5, _BYTE *a6)
{
  v7 = a2 >> 3;
  *a4 = v7;
  return sub_10005AD1C(a1, a2 & 7, v7, a3, a5, a6);
}

uint64_t sub_10005AD1C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, _BYTE *a6)
{
  result = (*(*a4 + 16))(a4, a3, a5);
  if (result)
  {
    v10 = *a5;
    if ((v10 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_10004FD04(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
      sub_10004FE48(v15);
    }

    v12 = dword_100092BFC[v10];
    *a6 = 0;
    if (a2 == 2 && (a5[1] & 1) != 0)
    {
      if (v12 > 5)
      {
        sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 82);
        v13 = sub_10004FD04(v15, "can't reach here.");
        sub_10004FE40(&v14, &v13->__r_.__value_.__l.__data_);
        sub_10004FE48(v15);
      }

      else
      {
        result = 1;
        if (((1 << v12) & 0x1C) == 0)
        {
          *a6 = 1;
          return result;
        }
      }
    }

    return v12 == a2;
  }

  return result;
}

void sub_10005AE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005AE78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  v9 = a2 >> 3;
  if (sub_10005AD1C(a1, a2 & 7, v9, a4, v11, &v12))
  {
    return sub_10005AF2C(a1, v9, v12, v11, a3, a5);
  }

  else
  {
    return (*(*a5 + 16))(a5, a3, a2);
  }
}

uint64_t sub_10005AF2C(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v11 = *a5;
    if (*a5 >= *(a5 + 8))
    {
      v12 = 0;
    }

    else
    {
      v12 = *v11;
      if ((*v11 & 0x80000000) == 0)
      {
        *a5 = v11 + 1;
        goto LABEL_110;
      }
    }

    v105 = sub_10004DFA4(a5, v12);
    v12 = v105;
    if ((v105 & 0x8000000000000000) == 0)
    {
LABEL_110:
      v106 = sub_10008D52C(a5, v12);
      switch(*a4)
      {
        case 1:
          if (sub_10004D404(a5) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            v149[0].__r_.__value_.__r.__words[0] = 0;
            v132 = *a5;
            if ((*(a5 + 8) - *a5) >= 8)
            {
              v133 = *v132;
              *a5 = v132 + 8;
              goto LABEL_179;
            }

            result = sub_10004DC3C(a5, v149);
            if (result)
            {
              v133 = *&v149[0].__r_.__value_.__l.__data_;
LABEL_179:
              sub_100055408(a1, a2, 1, *(a4 + 2), *(a4 + 24), v133);
              if (sub_10004D404(a5) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 2:
          if (sub_10004D404(a5) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
            v134 = *a5;
            if ((*(a5 + 8) - *a5) >= 4)
            {
              v135 = *v134;
              *a5 = v134 + 4;
              goto LABEL_186;
            }

            result = sub_10004DBD4(a5, v149);
            if (result)
            {
              v135 = *&v149[0].__r_.__value_.__l.__data_;
LABEL_186:
              sub_100054A34(a1, a2, 2, *(a4 + 2), *(a4 + 24), v135);
              if (sub_10004D404(a5) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 3:
          if (sub_10004D404(a5) < 1)
          {
            goto LABEL_112;
          }

          do
          {
            v119 = *a5;
            if (*a5 >= *(a5 + 8) || (v120 = *v119, v120 < 0))
            {
              v121 = sub_10004DCFC(a5);
              if ((v122 & 1) == 0)
              {
                return 0;
              }

              v120 = v121;
            }

            else
            {
              *a5 = v119 + 1;
            }

            sub_100052CF0(a1, a2, 3, *(a4 + 2), v120, *(a4 + 24));
          }

          while (sub_10004D404(a5) > 0);
          goto LABEL_112;
        case 4:
          if (sub_10004D404(a5) < 1)
          {
            goto LABEL_112;
          }

          do
          {
            v125 = *a5;
            if (*a5 >= *(a5 + 8) || (v126 = *v125, v126 < 0))
            {
              v127 = sub_10004DCFC(a5);
              if ((v128 & 1) == 0)
              {
                return 0;
              }

              v126 = v127;
            }

            else
            {
              *a5 = v125 + 1;
            }

            sub_100054068(a1, a2, 4, *(a4 + 2), v126, *(a4 + 24));
          }

          while (sub_10004D404(a5) > 0);
          goto LABEL_112;
        case 5:
          if (sub_10004D404(a5) < 1)
          {
            goto LABEL_112;
          }

          while (1)
          {
            v113 = *a5;
            if (*a5 >= *(a5 + 8))
            {
              break;
            }

            v114 = *v113;
            if (*v113 < 0)
            {
              goto LABEL_135;
            }

            *a5 = v113 + 1;
LABEL_136:
            sub_100052334(a1, a2, 5, *(a4 + 2), v114, *(a4 + 24));
            if (sub_10004D404(a5) <= 0)
            {
              goto LABEL_112;
            }
          }

          v114 = 0;
LABEL_135:
          v115 = sub_10004DFA4(a5, v114);
          v114 = v115;
          if (v115 < 0)
          {
            return 0;
          }

          goto LABEL_136;
        case 6:
          if (sub_10004D404(a5) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            v149[0].__r_.__value_.__r.__words[0] = 0;
            v141 = *a5;
            if ((*(a5 + 8) - *a5) >= 8)
            {
              v142 = *v141;
              v149[0].__r_.__value_.__r.__words[0] = *v141;
              *a5 = v141 + 8;
              goto LABEL_211;
            }

            result = sub_10004DC3C(a5, v149);
            if (result)
            {
              v142 = v149[0].__r_.__value_.__r.__words[0];
LABEL_211:
              sub_100054068(a1, a2, 6, *(a4 + 2), v142, *(a4 + 24));
              if (sub_10004D404(a5) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 7:
          if (sub_10004D404(a5) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
            v143 = *a5;
            if ((*(a5 + 8) - *a5) >= 4)
            {
              data = *v143;
              LODWORD(v149[0].__r_.__value_.__l.__data_) = *v143;
              *a5 = v143 + 4;
              goto LABEL_218;
            }

            result = sub_10004DBD4(a5, v149);
            if (result)
            {
              data = v149[0].__r_.__value_.__l.__data_;
LABEL_218:
              sub_1000536AC(a1, a2, 7, *(a4 + 2), data, *(a4 + 24));
              if (sub_10004D404(a5) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 8:
          if (sub_10004D404(a5) < 1)
          {
            goto LABEL_112;
          }

          do
          {
            v129 = *a5;
            if (*a5 >= *(a5 + 8) || (v130 = *v129, (v130 & 0x8000000000000000) != 0))
            {
              v130 = sub_10004DCFC(a5);
              if ((v131 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              *a5 = v129 + 1;
            }

            sub_100055DCC(a1, a2, 8, *(a4 + 2), v130 != 0, *(a4 + 24));
          }

          while (sub_10004D404(a5) > 0);
          goto LABEL_112;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          sub_10004FCEC(v149, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1277);
          v107 = sub_10004FD04(v149, "Non-primitive types can't be packed.");
          sub_10004FE40(&v148, &v107->__r_.__value_.__l.__data_);
          sub_10004FE48(v149);
          goto LABEL_112;
        case 0xD:
          if (sub_10004D404(a5) < 1)
          {
            goto LABEL_112;
          }

          while (1)
          {
            v116 = *a5;
            if (*a5 >= *(a5 + 8))
            {
              break;
            }

            v117 = *v116;
            if (*v116 < 0)
            {
              goto LABEL_143;
            }

            *a5 = v116 + 1;
LABEL_144:
            sub_1000536AC(a1, a2, 13, *(a4 + 2), v117, *(a4 + 24));
            if (sub_10004D404(a5) <= 0)
            {
              goto LABEL_112;
            }
          }

          v117 = 0;
LABEL_143:
          v118 = sub_10004DFA4(a5, v117);
          v117 = v118;
          if (v118 < 0)
          {
            return 0;
          }

          goto LABEL_144;
        case 0xE:
          if (sub_10004D404(a5) < 1)
          {
            goto LABEL_112;
          }

          while (1)
          {
            v139 = *a5;
            if (*a5 >= *(a5 + 8))
            {
              break;
            }

            v140 = *v139;
            if (*v139 < 0)
            {
              goto LABEL_202;
            }

            *a5 = v139 + 1;
LABEL_203:
            if ((*(a4 + 8))(*(a4 + 16), v140))
            {
              sub_100056B3C(a1, a2, 14, *(a4 + 2), v140, *(a4 + 24));
            }

            else
            {
              (*(*a6 + 32))(a6, a2, v140);
            }

            if (sub_10004D404(a5) <= 0)
            {
              goto LABEL_112;
            }
          }

          LODWORD(v140) = 0;
LABEL_202:
          v140 = sub_10004DFA4(a5, v140);
          if (v140 < 0)
          {
            return 0;
          }

          goto LABEL_203;
        case 0xF:
          if (sub_10004D404(a5) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
            v111 = *a5;
            if ((*(a5 + 8) - *a5) >= 4)
            {
              v112 = *v111;
              *a5 = v111 + 4;
              goto LABEL_126;
            }

            result = sub_10004DBD4(a5, v149);
            if (result)
            {
              v112 = v149[0].__r_.__value_.__l.__data_;
LABEL_126:
              sub_100052334(a1, a2, 15, *(a4 + 2), v112, *(a4 + 24));
              if (sub_10004D404(a5) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 0x10:
          if (sub_10004D404(a5) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            v149[0].__r_.__value_.__r.__words[0] = 0;
            v123 = *a5;
            if ((*(a5 + 8) - *a5) >= 8)
            {
              v124 = *v123;
              *a5 = v123 + 8;
              goto LABEL_157;
            }

            result = sub_10004DC3C(a5, v149);
            if (result)
            {
              v124 = v149[0].__r_.__value_.__r.__words[0];
LABEL_157:
              sub_100052CF0(a1, a2, 16, *(a4 + 2), v124, *(a4 + 24));
              if (sub_10004D404(a5) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 0x11:
          if (sub_10004D404(a5) < 1)
          {
            goto LABEL_112;
          }

          break;
        case 0x12:
          if (sub_10004D404(a5) < 1)
          {
            goto LABEL_112;
          }

          do
          {
            v136 = *a5;
            if (*a5 >= *(a5 + 8) || (v137 = *v136, (v137 & 0x8000000000000000) != 0))
            {
              v137 = sub_10004DCFC(a5);
              if ((v138 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              *a5 = v136 + 1;
            }

            sub_100052CF0(a1, a2, 18, *(a4 + 2), -(v137 & 1) ^ (v137 >> 1), *(a4 + 24));
          }

          while (sub_10004D404(a5) > 0);
LABEL_112:
          sub_10004D28C(a5, v106);
          return 1;
        default:
          goto LABEL_112;
      }

      while (1)
      {
        v108 = *a5;
        if (*a5 >= *(a5 + 8))
        {
          break;
        }

        v109 = *v108;
        if (*v108 < 0)
        {
          goto LABEL_120;
        }

        *a5 = v108 + 1;
LABEL_121:
        sub_100052334(a1, a2, 17, *(a4 + 2), -(v109 & 1) ^ (v109 >> 1), *(a4 + 24));
        if (sub_10004D404(a5) <= 0)
        {
          goto LABEL_112;
        }
      }

      v109 = 0;
LABEL_120:
      v110 = sub_10004DFA4(a5, v109);
      v109 = v110;
      if (v110 < 0)
      {
        return 0;
      }

      goto LABEL_121;
    }

    return 0;
  }

  else
  {
    switch(*a4)
    {
      case 1:
        v149[0].__r_.__value_.__r.__words[0] = 0;
        v13 = *a5;
        if ((*(a5 + 8) - *a5) < 8)
        {
          result = sub_10004DC3C(a5, v149);
          if (!result)
          {
            return result;
          }

          v14 = *&v149[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v14 = *v13;
          *a5 = v13 + 8;
        }

        if (*(a4 + 1) == 1)
        {
          sub_100055408(a1, a2, 1, *(a4 + 2), *(a4 + 24), v14);
        }

        else
        {
          sub_100054EA0(a1, a2, 1, *(a4 + 24), v14);
        }

        return 1;
      case 2:
        LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
        v47 = *a5;
        if ((*(a5 + 8) - *a5) < 4)
        {
          result = sub_10004DBD4(a5, v149);
          if (!result)
          {
            return result;
          }

          v48 = *&v149[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v48 = *v47;
          *a5 = v47 + 4;
        }

        if (*(a4 + 1) == 1)
        {
          sub_100054A34(a1, a2, 2, *(a4 + 2), *(a4 + 24), v48);
        }

        else
        {
          sub_1000544CC(a1, a2, 2, *(a4 + 24), v48);
        }

        return 1;
      case 3:
        v35 = *a5;
        if (*a5 >= *(a5 + 8) || (v36 = *v35, v36 < 0))
        {
          v97 = sub_10004DCFC(a5);
          if ((v98 & 1) == 0)
          {
            return 0;
          }

          v36 = v97;
        }

        else
        {
          *a5 = v35 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = a1;
          v41 = a2;
          v42 = 3;
          goto LABEL_100;
        }

        v83 = *(a4 + 24);
        v84 = a1;
        v85 = a2;
        v86 = 3;
        goto LABEL_102;
      case 4:
        v43 = *a5;
        if (*a5 >= *(a5 + 8) || (v44 = *v43, (v44 & 0x8000000000000000) != 0))
        {
          v99 = sub_10004DCFC(a5);
          if ((v100 & 1) == 0)
          {
            return 0;
          }

          v44 = v99;
        }

        else
        {
          *a5 = v43 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v52 = *(a4 + 2);
          v54 = *(a4 + 24);
          v55 = a1;
          v56 = a2;
          v57 = 4;
          v53 = v44;
          goto LABEL_90;
        }

        v88 = *(a4 + 24);
        v89 = a1;
        v90 = a2;
        v91 = 4;
        v87 = v44;
        goto LABEL_92;
      case 5:
        v27 = *a5;
        if (*a5 >= *(a5 + 8))
        {
          LODWORD(v28) = 0;
        }

        else
        {
          LODWORD(v28) = *v27;
          if ((*v27 & 0x80000000) == 0)
          {
            *a5 = v27 + 1;
            goto LABEL_233;
          }
        }

        v28 = sub_10004DFA4(a5, v28);
        if (v28 < 0)
        {
          return 0;
        }

LABEL_233:
        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = a1;
          v22 = a2;
          v23 = 5;
          v146 = v28;
          goto LABEL_235;
        }

        v79 = *(a4 + 24);
        v80 = a1;
        v81 = a2;
        v82 = 5;
        v147 = v28;
        goto LABEL_237;
      case 6:
        v149[0].__r_.__value_.__r.__words[0] = 0;
        v51 = *a5;
        if ((*(a5 + 8) - *a5) < 8)
        {
          result = sub_10004DC3C(a5, v149);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v149[0].__r_.__value_.__r.__words[0] = *v51;
          *a5 = v51 + 8;
        }

        if (*(a4 + 1) == 1)
        {
          v52 = *(a4 + 2);
          v53 = v149[0].__r_.__value_.__r.__words[0];
          v54 = *(a4 + 24);
          v55 = a1;
          v56 = a2;
          v57 = 6;
LABEL_90:
          sub_100054068(v55, v56, v57, v52, v53, v54);
        }

        else
        {
          v87 = v149[0].__r_.__value_.__r.__words[0];
          v88 = *(a4 + 24);
          v89 = a1;
          v90 = a2;
          v91 = 6;
LABEL_92:
          sub_100053B08(v89, v90, v91, v87, v88);
        }

        return 1;
      case 7:
        LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
        v60 = *a5;
        if ((*(a5 + 8) - *a5) < 4)
        {
          result = sub_10004DBD4(a5, v149);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          LODWORD(v149[0].__r_.__value_.__l.__data_) = *v60;
          *a5 = v60 + 4;
        }

        if (*(a4 + 1) == 1)
        {
          v61 = *(a4 + 2);
          v62 = v149[0].__r_.__value_.__l.__data_;
          v63 = *(a4 + 24);
          v64 = a1;
          v65 = a2;
          v66 = 7;
          goto LABEL_242;
        }

        v92 = v149[0].__r_.__value_.__l.__data_;
        v93 = *(a4 + 24);
        v94 = a1;
        v95 = a2;
        v96 = 7;
        goto LABEL_244;
      case 8:
        v45 = *a5;
        if (*a5 >= *(a5 + 8) || (v46 = *v45, (v46 & 0x8000000000000000) != 0))
        {
          v46 = sub_10004DCFC(a5);
          if ((v101 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          *a5 = v45 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          sub_100055DCC(a1, a2, 8, *(a4 + 2), v46 != 0, *(a4 + 24));
        }

        else
        {
          sub_10005586C(a1, a2, 8, v46 != 0, *(a4 + 24));
        }

        return 1;
      case 9:
        v24 = *(a4 + 1);
        v25 = *(a4 + 24);
        v26 = 9;
        goto LABEL_60;
      case 0xA:
        v31 = *(a4 + 1);
        v32 = *(a4 + 8);
        v33 = *(a4 + 24);
        if (v31 == 1)
        {
          v34 = sub_100058B1C(a1, a2, 10, v32, v33);
        }

        else
        {
          v34 = sub_100057A18(a1, a2, 10, v32, v33);
        }

        v72 = *(a5 + 52);
        v73 = __OFSUB__(v72--, 1);
        *(a5 + 52) = v72;
        if (v72 < 0 != v73)
        {
          return 0;
        }

        result = sub_10006B844(v34, a5);
        if (!result)
        {
          return result;
        }

        v75 = *(a5 + 52);
        if (v75 >= *(a5 + 56))
        {
          sub_100063A1C();
        }

        *(a5 + 52) = v75 + 1;
        return *(a5 + 32) == ((8 * a2) | 4);
      case 0xB:
        v67 = *(a4 + 1);
        v68 = *(a4 + 8);
        v69 = *(a4 + 24);
        if (v67 == 1)
        {
          v70 = sub_100058B1C(a1, a2, 11, v68, v69);
        }

        else
        {
          v70 = sub_100057A18(a1, a2, 11, v68, v69);
        }

        v76 = v70;
        v77 = *a5;
        if (*a5 >= *(a5 + 8) || (v78 = *v77, (v78 & 0x80000000) != 0))
        {
          v78 = sub_10004E1DC(a5);
          if ((v78 & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          *a5 = v77 + 1;
        }

        v103 = sub_10008D5A4(a5, v78);
        if ((v103 & 0x8000000000000000) != 0)
        {
          return 0;
        }

        v104 = v103;
        result = sub_10006B844(v76, a5);
        if (!result)
        {
          return result;
        }

        result = sub_10004D2D4(a5, v104);
        if (!result)
        {
          return result;
        }

        return 1;
      case 0xC:
        v24 = *(a4 + 1);
        v25 = *(a4 + 24);
        v26 = 12;
LABEL_60:
        if (v24 == 1)
        {
          v71 = sub_10005754C(a1, a2, v26, v25);
        }

        else
        {
          v71 = sub_100056F98(a1, a2, v26, v25);
        }

        return sub_100086D7C(a5, v71);
      case 0xD:
        v29 = *a5;
        if (*a5 >= *(a5 + 8))
        {
          LODWORD(v30) = 0;
        }

        else
        {
          LODWORD(v30) = *v29;
          if ((*v29 & 0x80000000) == 0)
          {
            *a5 = v29 + 1;
            goto LABEL_240;
          }
        }

        v30 = sub_10004DFA4(a5, v30);
        if (v30 < 0)
        {
          return 0;
        }

LABEL_240:
        if (*(a4 + 1) == 1)
        {
          v61 = *(a4 + 2);
          v63 = *(a4 + 24);
          v64 = a1;
          v65 = a2;
          v66 = 13;
          v62 = v30;
LABEL_242:
          sub_1000536AC(v64, v65, v66, v61, v62, v63);
        }

        else
        {
          v93 = *(a4 + 24);
          v94 = a1;
          v95 = a2;
          v96 = 13;
          v92 = v30;
LABEL_244:
          sub_10005314C(v94, v95, v96, v92, v93);
        }

        return 1;
      case 0xE:
        v58 = *a5;
        if (*a5 >= *(a5 + 8))
        {
          LODWORD(v59) = 0;
        }

        else
        {
          v59 = *v58;
          if ((*v58 & 0x80000000) == 0)
          {
            *a5 = v58 + 1;
            goto LABEL_255;
          }
        }

        v59 = sub_10004DFA4(a5, v59);
        if (v59 < 0)
        {
          return 0;
        }

LABEL_255:
        if ((*(a4 + 8))(*(a4 + 16), v59))
        {
          if (*(a4 + 1) == 1)
          {
            sub_100056B3C(a1, a2, 14, *(a4 + 2), v59, *(a4 + 24));
          }

          else
          {
            sub_1000565DC(a1, a2, 14, v59, *(a4 + 24));
          }
        }

        else
        {
          (*(*a6 + 32))(a6, a2, v59);
        }

        return 1;
      case 0xF:
        LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
        v17 = *a5;
        if ((*(a5 + 8) - *a5) < 4)
        {
          result = sub_10004DBD4(a5, v149);
          if (!result)
          {
            return result;
          }

          v18 = v149[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v18 = *v17;
          *a5 = v17 + 4;
        }

        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = a1;
          v22 = a2;
          v23 = 15;
          goto LABEL_226;
        }

        v79 = *(a4 + 24);
        v80 = a1;
        v81 = a2;
        v82 = 15;
        goto LABEL_228;
      case 0x10:
        v149[0].__r_.__value_.__r.__words[0] = 0;
        v37 = *a5;
        if ((*(a5 + 8) - *a5) < 8)
        {
          result = sub_10004DC3C(a5, v149);
          if (!result)
          {
            return result;
          }

          v36 = v149[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          v36 = *v37;
          *a5 = v37 + 8;
        }

        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = a1;
          v41 = a2;
          v42 = 16;
          goto LABEL_100;
        }

        v83 = *(a4 + 24);
        v84 = a1;
        v85 = a2;
        v86 = 16;
        goto LABEL_102;
      case 0x11:
        v15 = *a5;
        if (*a5 >= *(a5 + 8))
        {
          v16 = 0;
        }

        else
        {
          v16 = *v15;
          if ((*v15 & 0x80000000) == 0)
          {
            *a5 = v15 + 1;
            goto LABEL_224;
          }
        }

        v145 = sub_10004DFA4(a5, v16);
        v16 = v145;
        if (v145 < 0)
        {
          return 0;
        }

LABEL_224:
        v18 = -(v16 & 1) ^ (v16 >> 1);
        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = a1;
          v22 = a2;
          v23 = 17;
LABEL_226:
          v146 = v18;
LABEL_235:
          sub_100052334(v21, v22, v23, v19, v146, v20);
        }

        else
        {
          v79 = *(a4 + 24);
          v80 = a1;
          v81 = a2;
          v82 = 17;
LABEL_228:
          v147 = v18;
LABEL_237:
          sub_100051DA0(v80, v81, v82, v147, v79);
        }

        return 1;
      case 0x12:
        v49 = *a5;
        if (*a5 >= *(a5 + 8) || (v50 = *v49, (v50 & 0x8000000000000000) != 0))
        {
          v50 = sub_10004DCFC(a5);
          if ((v102 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          *a5 = v49 + 1;
        }

        v36 = -(v50 & 1) ^ (v50 >> 1);
        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = a1;
          v41 = a2;
          v42 = 18;
LABEL_100:
          sub_100052CF0(v40, v41, v42, v38, v36, v39);
        }

        else
        {
          v83 = *(a4 + 24);
          v84 = a1;
          v85 = a2;
          v86 = 18;
LABEL_102:
          sub_100052790(v84, v85, v86, v36, v83);
        }

        break;
      default:
        return 1;
    }

    return 1;
  }
}

void sub_10005BF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10005C01C(uint64_t *a1, unint64_t a2, char *a3, uint64_t a4, unint64_t *a5, int32x2_t *a6)
{
  v9 = a2;
  v16[0] = off_1000AE240;
  v16[1] = a4;
  v11 = a2 >> 3;
  v15 = 0;
  if (sub_10005AD1C(a1, a2 & 7, a2 >> 3, v16, v14, &v15))
  {
    return sub_10005C0FC(a1, v11, v15, v14, a5, a3, a6);
  }

  if (*a5)
  {
    v13 = (*a5 & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    v13 = sub_10003CF68(a5);
  }

  return sub_10006E88C(v9, v13, a3, a6);
}

char *sub_10005C0FC(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, char *a6, int32x2_t *a7)
{
  v8 = a6;
  v11 = a2;
  v12 = a1;
  if (a3)
  {
    switch(*a4)
    {
      case 1:
        v46 = sub_10005610C(a1, a2, 1, *(a4 + 2), *(a4 + 24));

        result = sub_10006E6FC(v46, v8, a7);
        break;
      case 2:
        v47 = sub_10005610C(a1, a2, 2, *(a4 + 2), *(a4 + 24));

        result = sub_10006E680(v47, v8, a7);
        break;
      case 3:
        v36 = sub_10005610C(a1, a2, 3, *(a4 + 2), *(a4 + 24));

        result = sub_10006E440(v36, v8, a7);
        break;
      case 4:
        v42 = sub_10005610C(a1, a2, 4, *(a4 + 2), *(a4 + 24));

        result = sub_10006E450(v42, v8, a7);
        break;
      case 5:
        v28 = sub_10005610C(a1, a2, 5, *(a4 + 2), *(a4 + 24));

        result = sub_10006E420(v28, v8, a7);
        break;
      case 6:
        v53 = sub_10005610C(a1, a2, 6, *(a4 + 2), *(a4 + 24));

        result = sub_10006E588(v53, v8, a7);
        break;
      case 7:
        v61 = sub_10005610C(a1, a2, 7, *(a4 + 2), *(a4 + 24));

        result = sub_10006E490(v61, v8, a7);
        break;
      case 8:
        v44 = sub_10005610C(a1, a2, 8, *(a4 + 2), *(a4 + 24));

        result = sub_10006E480(v44, v8, a7);
        break;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        sub_10004FCEC(&v92, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/extension_set_inl.h", 79);
        v13 = sub_10004FD04(&v92, "Non-primitive types can't be packed.");
        sub_10004FE40(&v91, &v13->__r_.__value_.__l.__data_);
        sub_10004FE48(&v92);
        goto LABEL_170;
      case 0xD:
        v29 = sub_10005610C(a1, a2, 13, *(a4 + 2), *(a4 + 24));

        result = sub_10006E430(v29, v8, a7);
        break;
      case 0xE:
        v92.__r_.__value_.__r.__words[0] = sub_10005610C(a1, a2, 14, *(a4 + 2), *(a4 + 24));
        *&v92.__r_.__value_.__r.__words[1] = *(a4 + 8);
        v93 = a5;
        v94 = v11;
        v8 = sub_100062530(a7, v8, &v92);
        goto LABEL_170;
      case 0xF:
        v19 = sub_10005610C(a1, a2, 15, *(a4 + 2), *(a4 + 24));

        result = sub_10006E50C(v19, v8, a7);
        break;
      case 0x10:
        v38 = sub_10005610C(a1, a2, 16, *(a4 + 2), *(a4 + 24));

        result = sub_10006E604(v38, v8, a7);
        break;
      case 0x11:
        v16 = sub_10005610C(a1, a2, 17, *(a4 + 2), *(a4 + 24));

        result = sub_10006E460(v16, v8, a7);
        break;
      case 0x12:
        v50 = sub_10005610C(a1, a2, 18, *(a4 + 2), *(a4 + 24));

        result = sub_10006E470(v50, v8, a7);
        break;
      default:
        goto LABEL_170;
    }
  }

  else
  {
    switch(*a4)
    {
      case 1:
        v8 = a6 + 8;
        v48 = *a6;
        if (*(a4 + 1) == 1)
        {
          sub_100055408(a1, a2, 1, *(a4 + 2), *(a4 + 24), v48);
        }

        else
        {
          sub_100054EA0(a1, a2, 1, *(a4 + 24), v48);
        }

        goto LABEL_170;
      case 2:
        v8 = a6 + 4;
        v49 = *a6;
        if (*(a4 + 1) == 1)
        {
          sub_100054A34(a1, a2, 2, *(a4 + 2), *(a4 + 24), v49);
        }

        else
        {
          sub_1000544CC(a1, a2, 2, *(a4 + 24), v49);
        }

        goto LABEL_170;
      case 3:
        v37 = *a6;
        if (v37 < 0)
        {
          v37 = (a6[1] << 7) + v37 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_10006E2A0(a6, v37);
            if (!v8)
            {
              goto LABEL_170;
            }

            v37 = v87;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v41 = 3;
          goto LABEL_158;
        }

        v71 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v72 = 3;
        goto LABEL_160;
      case 4:
        v43 = *a6;
        if (v43 < 0)
        {
          v43 = (a6[1] << 7) + v43 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_10006E2A0(a6, v43);
            if (!v8)
            {
              goto LABEL_170;
            }

            v43 = v88;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v54 = *(a4 + 2);
          v55 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v56 = 4;
          goto LABEL_148;
        }

        v73 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v74 = 4;
        goto LABEL_150;
      case 5:
        v31 = *a6;
        if (v31 < 0)
        {
          v31 = (a6[1] << 7) + v31 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_10006E2A0(a6, v31);
            if (!v8)
            {
              goto LABEL_170;
            }

            LODWORD(v31) = v86;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v23 = 5;
          v83 = v31;
          goto LABEL_136;
        }

        v69 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v70 = 5;
        v84 = v31;
        goto LABEL_138;
      case 6:
        v8 = a6 + 8;
        v43 = *a6;
        if (*(a4 + 1) == 1)
        {
          v54 = *(a4 + 2);
          v55 = *(a4 + 24);
          v56 = 6;
LABEL_148:
          sub_100054068(a1, a2, v56, v54, v43, v55);
        }

        else
        {
          v73 = *(a4 + 24);
          v74 = 6;
LABEL_150:
          sub_100053B08(a1, a2, v74, v43, v73);
        }

        goto LABEL_170;
      case 7:
        v8 = a6 + 4;
        v62 = *a6;
        if (*(a4 + 1) == 1)
        {
          v63 = *(a4 + 2);
          v64 = *(a4 + 24);
          v65 = 7;
          v66 = v62;
          goto LABEL_129;
        }

        v79 = *(a4 + 24);
        v80 = 7;
        v81 = *a6;
        goto LABEL_131;
      case 8:
        v45 = *a6;
        if (v45 < 0)
        {
          v45 = (a6[1] << 7) + v45 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_10006E2A0(a6, v45);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          sub_100055DCC(v12, v11, 8, *(a4 + 2), v45 != 0, *(a4 + 24));
        }

        else
        {
          sub_10005586C(v12, v11, 8, v45 != 0, *(a4 + 24));
        }

        goto LABEL_170;
      case 9:
      case 0xC:
        v14 = *(a4 + 1);
        v15 = *(a4 + 24);
        if (v14 == 1)
        {
          v32 = sub_10005754C(a1, a2, 9, v15);
        }

        else
        {
          v32 = sub_100056F98(a1, a2, 9, v15);
        }

        v33 = v32;
        v34 = *v8;
        if (*v8 < 0)
        {
          v67 = sub_10008E2F8(v8, *v8);
          if (!v67)
          {
LABEL_101:
            v8 = 0;
            goto LABEL_170;
          }

          v35 = v67;
          v34 = v68;
        }

        else
        {
          v35 = v8 + 1;
        }

        return sub_1000624C4(a7, v35, v34, v33);
      case 0xA:
        v57 = *(a4 + 1);
        v58 = *(a4 + 8);
        v59 = *(a4 + 24);
        if (v57 == 1)
        {
          v60 = sub_100058B1C(a1, a2, 10, v58, v59);
        }

        else
        {
          v60 = sub_100057A18(a1, a2, 10, v58, v59);
        }

        v75 = a7[11].i32[0];
        v76 = __OFSUB__(v75--, 1);
        a7[11].i32[0] = v75;
        if (v75 < 0 != v76)
        {
          goto LABEL_101;
        }

        ++a7[11].i32[1];
        v77 = (*(*v60 + 88))(v60, v8, a7);
        a7[11] = vadd_s32(a7[11], 0xFFFFFFFF00000001);
        v78 = a7[10].i32[0];
        a7[10].i32[0] = 0;
        if (v78 == ((8 * v11) | 3))
        {
          v8 = v77;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_170;
      case 0xB:
        v24 = *(a4 + 1);
        v25 = *(a4 + 8);
        v26 = *(a4 + 24);
        if (v24 == 1)
        {
          v27 = sub_100058B1C(a1, a2, 11, v25, v26);
        }

        else
        {
          v27 = sub_100057A18(a1, a2, 11, v25, v26);
        }

        return sub_10006E0BC(a7, v27, v8);
      case 0xD:
        v30 = *a6;
        if (v30 < 0)
        {
          v30 = (a6[1] << 7) + v30 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_10006E2A0(a6, v30);
            if (!v8)
            {
              goto LABEL_170;
            }

            LODWORD(v30) = v85;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v63 = *(a4 + 2);
          v64 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v65 = 13;
          v66 = v30;
LABEL_129:
          sub_1000536AC(a1, a2, v65, v63, v66, v64);
        }

        else
        {
          v79 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v80 = 13;
          v81 = v30;
LABEL_131:
          sub_10005314C(a1, a2, v80, v81, v79);
        }

        goto LABEL_170;
      case 0xE:
        v52 = *a6;
        if ((v52 & 0x8000000000000000) != 0)
        {
          v82 = (a6[1] << 7) + v52;
          v52 = (v82 - 128);
          if (a6[1] < 0)
          {
            v8 = sub_10006E2A0(a6, (v82 - 128));
            if (!v8)
            {
              goto LABEL_170;
            }

            v52 = v89;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if ((*(a4 + 8))(*(a4 + 16), v52))
        {
          if (*(a4 + 1) == 1)
          {
            sub_100056B3C(v12, v11, 14, *(a4 + 2), v52, *(a4 + 24));
          }

          else
          {
            sub_1000565DC(v12, v11, 14, v52, *(a4 + 24));
          }
        }

        else
        {
          if (*a5)
          {
            v90 = ((*a5 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v90 = sub_10003CF68(a5);
          }

          sub_10006E0C0(v11, v52, v90);
        }

        goto LABEL_170;
      case 0xF:
        v8 = a6 + 4;
        v20 = *a6;
        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          v23 = 15;
          goto LABEL_122;
        }

        v69 = *(a4 + 24);
        v70 = 15;
        goto LABEL_124;
      case 0x10:
        v8 = a6 + 8;
        v37 = *a6;
        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          v41 = 16;
          goto LABEL_158;
        }

        v71 = *(a4 + 24);
        v72 = 16;
        goto LABEL_160;
      case 0x11:
        v18 = *a6;
        if (v18 < 0)
        {
          v18 = (a6[1] << 7) + v18 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_10006E2A0(a6, v18);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        v20 = -(v18 & 1) ^ (v18 >> 1);
        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v23 = 17;
LABEL_122:
          v83 = v20;
LABEL_136:
          sub_100052334(a1, a2, v23, v21, v83, v22);
        }

        else
        {
          v69 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v70 = 17;
LABEL_124:
          v84 = v20;
LABEL_138:
          sub_100051DA0(a1, a2, v70, v84, v69);
        }

        goto LABEL_170;
      case 0x12:
        v51 = *a6;
        if ((v51 & 0x8000000000000000) != 0)
        {
          v51 = (a6[1] << 7) + v51 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_10006E2A0(a6, v51);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        v37 = -(v51 & 1) ^ (v51 >> 1);
        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v41 = 18;
LABEL_158:
          sub_100052CF0(a1, a2, v41, v39, v37, v40);
        }

        else
        {
          v71 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v72 = 18;
LABEL_160:
          sub_100052790(a1, a2, v72, v37, v71);
        }

LABEL_170:
        result = v8;
        break;
      default:
        goto LABEL_170;
    }
  }

  return result;
}

void sub_10005CDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10005CE64(uint64_t *a1, char *a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v9 = 0;
  LODWORD(v10) = 0;
  v40 = a2;
  memset(&__p, 0, sizeof(__p));
LABEL_2:
  while (2)
  {
    v11 = v9;
    while (1)
    {
      v12 = sub_10003CE28(a5, &v40, *(a5 + 92));
      v13 = v40;
      if (v12)
      {
        v14 = v40;
        goto LABEL_53;
      }

      v14 = ++v40;
      v15 = *v13;
      if (v15 != 26)
      {
        break;
      }

      if (!v10)
      {
        v27 = *v14;
        if (*v14 < 0)
        {
          v28 = sub_10008E2F8((v13 + 1), *v14);
          v40 = v28;
          if (!v28)
          {
            goto LABEL_51;
          }

          v27 = v29;
        }

        else
        {
          v28 = v13 + 2;
          v40 = v13 + 2;
        }

        LODWORD(v10) = 0;
        v40 = sub_1000624C4(a5, v28, v27, &__p);
        v9 = 1;
        if (!v40)
        {
          goto LABEL_51;
        }

        goto LABEL_2;
      }

      v17 = sub_10005C01C(a1, (8 * v10) | 2, v14, a3, a4, a5);
      LODWORD(v10) = 0;
LABEL_15:
      v40 = v17;
      if (!v17)
      {
        goto LABEL_51;
      }
    }

    if (v15 == 16)
    {
      v18 = *v14;
      v19 = v18 + v18;
      v20 = v19 & (2 * v18);
      v10 = v20 >> 1;
      if ((v20 & 0x8000) != 0)
      {
        v14 = v13 + 3;
        v30 = 13;
        while (1)
        {
          v31 = *v14;
          v32 = v31 + v31;
          v10 += ((v32 & (2 * v31)) - 2) << v30;
          if ((v32 & (2 * v31) & 0x8000) == 0)
          {
            break;
          }

          v30 += 14;
          v14 += 2;
          if (v30 == 69)
          {
            v14 = 0;
            v40 = 0;
            goto LABEL_53;
          }
        }

        v21 = v32 >= v31;
      }

      else
      {
        v21 = v19 >= v18;
      }

      v22 = !v21;
      v9 = 0;
      if (v22)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      v40 = &v14[v23];
      if (v11)
      {
        v41 = off_1000AE240;
        v42 = a3;
        if (sub_10005AD1C(v13, 2, v10, &v41, v36, &v35))
        {
          if (v36[1] == 1)
          {
            v24 = sub_100058B1C(a1, v10, 11, v37, v38);
          }

          else
          {
            v24 = sub_100057A18(a1, v10, 11, v37, v38);
          }

          v26 = v24;
          v34 = 0;
          sub_1000628AC(&v41, *(a5 + 88), 0, &v34, &__p);
          v44 = *(a5 + 96);
          if (!(*(*v26 + 88))(v26, v34, &v41) || v43)
          {
LABEL_51:
            v14 = 0;
            goto LABEL_53;
          }
        }

        else
        {
          sub_1000468AC(&v41, &__p);
          if (*a4)
          {
            v25 = ((*a4 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v25 = sub_10003CF68(a4);
          }

          sub_10006E16C(v10, v41, v42, v25);
        }

        LODWORD(v10) = 0;
        v9 = 1;
        continue;
      }

      continue;
    }

    break;
  }

  if ((v15 & 0x80) != 0)
  {
    v15 = v15 + (*v14 << 7) - 128;
    if (*v14 < 0)
    {
      v14 = sub_10006E2E8(v13, v15);
    }

    else
    {
      v14 = v13 + 2;
    }
  }

  v40 = v14;
  if (v15)
  {
    v16 = (v15 & 7) == 4;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = sub_10005C01C(a1, v15, v14, a3, a4, a5);
    goto LABEL_15;
  }

  *(a5 + 80) = v15 - 1;
LABEL_53:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_10005D1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10005D230(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = off_1000AE690;
  v5[0] = off_1000AE240;
  v5[1] = a4;
  return sub_10005AE78(a1, a2, a3, v5, &v6);
}

uint64_t sub_10005D298(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = off_1000AE6D8;
  v7[1] = a5;
  v6[0] = off_1000AE240;
  v6[1] = a4;
  return sub_10005AE78(a1, a2, a3, v6, v7);
}

uint64_t sub_10005D300(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  while (1)
  {
    while (1)
    {
      v9 = *a2;
      if (*a2 >= *(a2 + 8))
      {
        LODWORD(v10) = 0;
      }

      else
      {
        v10 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          *a2 = v9 + 1;
          goto LABEL_6;
        }
      }

      v10 = sub_10004E524(a2, v10);
LABEL_6:
      *(a2 + 32) = v10;
      if (v10 != 11)
      {
        break;
      }

      if ((sub_10005D3B8(a1, a2, a3, a4, a5) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v10)
    {
      return 1;
    }

    if ((sub_10005AE78(a1, v10, a2, a3, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10005D3B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v9 = 0;
  memset(&v41, 0, sizeof(v41));
  a5.n128_u64[0] = 0xFFFFFFFF00000000;
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v10 = *a2;
          if (*a2 >= *(a2 + 8))
          {
            v11 = 0;
          }

          else
          {
            v11 = *v10;
            if ((*v10 & 0x80000000) == 0)
            {
              *a2 = v10 + 1;
              goto LABEL_7;
            }
          }

          v11 = sub_10004E524(a2, v11);
LABEL_7:
          if (v11 <= 25)
          {
            break;
          }

          if (v11 != 26)
          {
            goto LABEL_14;
          }

          if (v9)
          {
            v12 = sub_10005AE78(a1, (8 * v9) | 2u, a2, a3, a4);
LABEL_15:
            if ((v12 & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v14 = *a2;
            if (*a2 >= *(a2 + 8))
            {
              v15 = 0;
LABEL_36:
              v19 = sub_10004DFA4(a2, v15);
              v15 = v19;
              if ((v19 & 0x8000000080000000) != 0)
              {
                goto LABEL_56;
              }

              goto LABEL_37;
            }

            v15 = *v14;
            if (*v14 < 0)
            {
              goto LABEL_36;
            }

            *a2 = v14 + 1;
LABEL_37:
            std::string::resize(&v41, v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6), 0);
            v20 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
            v21 = v41.__r_.__value_.__r.__words[0];
            if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v22 = &v41;
            }

            else
            {
              v22 = v41.__r_.__value_.__r.__words[0];
            }

            if (v15 > 0x7F)
            {
              v22->__r_.__value_.__s.__data_[0] = v15 | 0x80;
              v25 = v15 >> 7;
              if (v20 >= 0)
              {
                v21 = &v41;
              }

              if (v15 >> 14)
              {
                v24 = &v21->__r_.__value_.__s.__data_[2];
                do
                {
                  *(v24 - 1) = v25 | 0x80;
                  v26 = v25 >> 7;
                  ++v24;
                  v27 = v25 >> 14;
                  v25 >>= 7;
                }

                while (v27);
                *(v24 - 1) = v26;
              }

              else
              {
                v21->__r_.__value_.__s.__data_[1] = v25;
                v24 = &v21->__r_.__value_.__s.__data_[2];
              }
            }

            else
            {
              v22->__r_.__value_.__s.__data_[0] = v15;
              if (v20 >= 0)
              {
                v23 = &v41;
              }

              else
              {
                v23 = v21;
              }

              v24 = &v23->__r_.__value_.__s.__data_[1];
            }

            v28 = sub_10004D8F8(a2, v24, v15);
            v9 = 0;
            if (!v28)
            {
              goto LABEL_56;
            }
          }
        }

        if (!v11)
        {
          goto LABEL_56;
        }

        if (v11 == 12)
        {
          v29 = 1;
          goto LABEL_57;
        }

        if (v11 != 16)
        {
LABEL_14:
          v12 = (*(*a4 + 16))(a4, a2, a5);
          goto LABEL_15;
        }

        v13 = *a2;
        if (*a2 >= *(a2 + 8))
        {
          v9 = 0;
        }

        else
        {
          v9 = *v13;
          if ((*v13 & 0x80000000) == 0)
          {
            *a2 = v13 + 1;
            goto LABEL_25;
          }
        }

        v16 = sub_10004DFA4(a2, v9);
        v9 = v16;
        if (v16 < 0)
        {
          goto LABEL_56;
        }

LABEL_25:
        v17 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          break;
        }

        if (*(&v41.__r_.__value_.__s + 23))
        {
          v18 = &v41;
          goto LABEL_30;
        }
      }

      v17 = v41.__r_.__value_.__r.__words[1];
    }

    while (!v41.__r_.__value_.__l.__size_);
    v18 = v41.__r_.__value_.__r.__words[0];
LABEL_30:
    v31[0] = v18;
    v31[1] = v18 + v17;
    v31[2] = 0;
    v33 = 0;
    v34 = 0;
    v32 = v17;
    v35 = v17;
    v36 = -NAN;
    v39 = 0;
    v40 = 0;
    v37 = *(a2 + 52);
    v38 = v37;
    if ((sub_10005AE78(a1, (8 * v9) | 2u, v31, a3, a4) & 1) == 0)
    {
      break;
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      *v41.__r_.__value_.__l.__data_ = 0;
      v41.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v41.__r_.__value_.__s.__data_[0] = 0;
      *(&v41.__r_.__value_.__s + 23) = 0;
    }

    sub_10004D288(v31);
  }

  sub_10004D288(v31);
LABEL_56:
  v29 = 0;
LABEL_57:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  return v29;
}

void sub_10005D6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10005D710(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100087808(v12, a4);
  sub_10004F828(v13, v12, 1);
  v11[0] = off_1000AE6D8;
  v11[1] = v13;
  v10[0] = off_1000AE240;
  v10[1] = a3;
  v8 = sub_10005D300(a1, a2, v10, v11, v7);
  sub_10004F860(v13);
  return v8;
}

void sub_10005D7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10004F860(va);
  _Unwind_Resume(a1);
}

char *sub_10005D814(uint64_t a1, signed int a2, int a3, char *a4, uint64_t *a5)
{
  v7 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    v18 = *(v7 + 1);
    v17 = v7 + 2;
    v16 = v18;
    if (v18)
    {
      v19 = v17;
      do
      {
        if (*(v16 + 32) >= a2)
        {
          v19 = v16;
        }

        v16 = *(v16 + 8 * (*(v16 + 32) < a2));
      }

      while (v16);
      if (v19 != v17)
      {
        do
        {
          v20 = *(v19 + 8);
          if (v20 >= a3)
          {
            break;
          }

          a4 = sub_10005D940(v19 + 40, v20, a4, a5);
          v21 = *(v19 + 1);
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = *(v19 + 2);
              v23 = *v22 == v19;
              v19 = v22;
            }

            while (!v23);
          }

          v19 = v22;
        }

        while (v22 != v17);
      }
    }
  }

  else
  {
    v8 = *(a1 + 10);
    v9 = &v7[8 * v8];
    while (v8)
    {
      v10 = v8 >> 1;
      v11 = &v7[8 * (v8 >> 1)];
      v13 = *v11;
      v12 = v11 + 8;
      v8 += ~(v8 >> 1);
      if (v13 < a2)
      {
        v7 = v12;
      }

      else
      {
        v8 = v10;
      }
    }

    while (v7 != v9)
    {
      v14 = *v7;
      if (v14 >= a3)
      {
        break;
      }

      a4 = sub_10005D940(v7 + 8, v14, a4, a5);
      v7 += 8;
    }
  }

  return a4;
}

char *sub_10005D940(unsigned __int8 *a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v5 = a3;
  if (a1[9] == 1)
  {
    if (a1[11] == 1)
    {
      if (*(a1 + 3))
      {
        if (*a4 <= a3)
        {
          v5 = sub_10004F000(a4, a3);
        }

        v8 = 8 * a2;
        if ((8 * a2) > 0x7F)
        {
          *v5 = v8 | 0x82;
          v33 = v8 >> 7;
          if (v8 >> 14)
          {
            v9 = v5 + 2;
            do
            {
              *(v9 - 1) = v33 | 0x80;
              v34 = v33 >> 7;
              ++v9;
              v35 = v33 >> 14;
              v33 >>= 7;
            }

            while (v35);
            *(v9 - 1) = v34;
          }

          else
          {
            v5[1] = v33;
            v9 = v5 + 2;
          }
        }

        else
        {
          *v5 = v8 | 2;
          v9 = v5 + 1;
        }

        v36 = *(a1 + 3);
        if (v36 > 0x7F)
        {
          *v9 = v36 | 0x80;
          v37 = v36 >> 7;
          if (v36 >> 14)
          {
            v5 = v9 + 2;
            do
            {
              *(v5 - 1) = v37 | 0x80;
              v38 = v37 >> 7;
              ++v5;
              v39 = v37 >> 14;
              v37 >>= 7;
            }

            while (v39);
            *(v5 - 1) = v38;
          }

          else
          {
            v9[1] = v37;
            v5 = v9 + 2;
          }
        }

        else
        {
          *v9 = v36;
          v5 = v9 + 1;
        }

        v40 = a1[8];
        if ((v40 - 19) <= 0xFFFFFFED)
        {
          sub_10004FCEC(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
          v41 = sub_10004FD04(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
          sub_10004FE40(&v426, &v41->__r_.__value_.__l.__data_);
          sub_10004FE48(v427);
        }

        switch(v40)
        {
          case 1:
            v343 = *a1;
            if (**a1 >= 1)
            {
              v344 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_10004F000(a4, v5);
                  v343 = *a1;
                }

                *v5 = *sub_100079E98(v343, v344);
                v5 += 8;
                ++v344;
                v343 = *a1;
              }

              while (v344 < **a1);
            }

            break;
          case 2:
            v345 = *a1;
            if (**a1 >= 1)
            {
              v346 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_10004F000(a4, v5);
                  v345 = *a1;
                }

                *v5 = *sub_100078690(v345, v346);
                v5 += 4;
                ++v346;
                v345 = *a1;
              }

              while (v346 < **a1);
            }

            break;
          case 3:
            v327 = *a1;
            if (**a1 >= 1)
            {
              v328 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_10004F000(a4, v5);
                  v327 = *a1;
                }

                v329 = *sub_1000756EC(v327, v328);
                if (v329 > 0x7F)
                {
                  *v5 = v329 | 0x80;
                  v330 = v329 >> 7;
                  if (v329 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v330 | 0x80;
                      v331 = v330 >> 7;
                      ++v5;
                      v332 = v330 >> 14;
                      v330 >>= 7;
                    }

                    while (v332);
                    *(v5 - 1) = v331;
                  }

                  else
                  {
                    v5[1] = v330;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v329;
                }

                ++v328;
                v327 = *a1;
              }

              while (v328 < **a1);
            }

            break;
          case 4:
            v335 = *a1;
            if (**a1 >= 1)
            {
              v336 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_10004F000(a4, v5);
                  v335 = *a1;
                }

                v337 = *sub_100076EDC(v335, v336);
                if (v337 > 0x7F)
                {
                  *v5 = v337 | 0x80;
                  v338 = v337 >> 7;
                  if (v337 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v338 | 0x80;
                      v339 = v338 >> 7;
                      ++v5;
                      v340 = v338 >> 14;
                      v338 >>= 7;
                    }

                    while (v340);
                    *(v5 - 1) = v339;
                  }

                  else
                  {
                    v5[1] = v338;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v337;
                }

                ++v336;
                v335 = *a1;
              }

              while (v336 < **a1);
            }

            break;
          case 5:
            v315 = *a1;
            if (**a1 >= 1)
            {
              v316 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_10004F000(a4, v5);
                  v315 = *a1;
                }

                v317 = *sub_1000726BC(v315, v316);
                if (v317 > 0x7F)
                {
                  *v5 = v317 | 0x80;
                  v318 = v317 >> 7;
                  if (v317 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v318 | 0x80;
                      v319 = v318 >> 7;
                      ++v5;
                      v320 = v318 >> 14;
                      v318 >>= 7;
                    }

                    while (v320);
                    *(v5 - 1) = v319;
                  }

                  else
                  {
                    v5[1] = v318;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v317;
                }

                ++v316;
                v315 = *a1;
              }

              while (v316 < **a1);
            }

            break;
          case 6:
            v360 = *a1;
            if (**a1 >= 1)
            {
              v361 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_10004F000(a4, v5);
                  v360 = *a1;
                }

                *v5 = *sub_100076EDC(v360, v361);
                v5 += 8;
                ++v361;
                v360 = *a1;
              }

              while (v361 < **a1);
            }

            break;
          case 7:
            v362 = *a1;
            if (**a1 >= 1)
            {
              v363 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_10004F000(a4, v5);
                  v362 = *a1;
                }

                *v5 = *sub_100073EE8(v362, v363);
                v5 += 4;
                ++v363;
                v362 = *a1;
              }

              while (v363 < **a1);
            }

            break;
          case 8:
            v341 = *a1;
            if (**a1 >= 1)
            {
              v342 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_10004F000(a4, v5);
                  v341 = *a1;
                }

                *v5++ = *sub_100070EE4(v341, v342++);
                v341 = *a1;
              }

              while (v342 < **a1);
            }

            break;
          case 9:
          case 10:
          case 11:
          case 12:
            sub_10004FCEC(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1966);
            v42 = sub_10004FD04(v427, "Non-primitive types can't be packed.");
            sub_10004FE40(&v426, &v42->__r_.__value_.__l.__data_);
            sub_10004FE48(v427);
            break;
          case 13:
            v321 = *a1;
            if (**a1 >= 1)
            {
              v322 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_10004F000(a4, v5);
                  v321 = *a1;
                }

                v323 = *sub_100073EE8(v321, v322);
                if (v323 > 0x7F)
                {
                  *v5 = v323 | 0x80;
                  v324 = v323 >> 7;
                  if (v323 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v324 | 0x80;
                      v325 = v324 >> 7;
                      ++v5;
                      v326 = v324 >> 14;
                      v324 >>= 7;
                    }

                    while (v326);
                    *(v5 - 1) = v325;
                  }

                  else
                  {
                    v5[1] = v324;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v323;
                }

                ++v322;
                v321 = *a1;
              }

              while (v322 < **a1);
            }

            break;
          case 14:
            v354 = *a1;
            if (**a1 >= 1)
            {
              v355 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_10004F000(a4, v5);
                  v354 = *a1;
                }

                v356 = *sub_1000726BC(v354, v355);
                if (v356 > 0x7F)
                {
                  *v5 = v356 | 0x80;
                  v357 = v356 >> 7;
                  if (v356 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v357 | 0x80;
                      v358 = v357 >> 7;
                      ++v5;
                      v359 = v357 >> 14;
                      v357 >>= 7;
                    }

                    while (v359);
                    *(v5 - 1) = v358;
                  }

                  else
                  {
                    v5[1] = v357;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v356;
                }

                ++v355;
                v354 = *a1;
              }

              while (v355 < **a1);
            }

            break;
          case 15:
            v313 = *a1;
            if (**a1 >= 1)
            {
              v314 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_10004F000(a4, v5);
                  v313 = *a1;
                }

                *v5 = *sub_1000726BC(v313, v314);
                v5 += 4;
                ++v314;
                v313 = *a1;
              }

              while (v314 < **a1);
            }

            break;
          case 16:
            v333 = *a1;
            if (**a1 >= 1)
            {
              v334 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_10004F000(a4, v5);
                  v333 = *a1;
                }

                *v5 = *sub_1000756EC(v333, v334);
                v5 += 8;
                ++v334;
                v333 = *a1;
              }

              while (v334 < **a1);
            }

            break;
          case 17:
            v306 = *a1;
            if (**a1 >= 1)
            {
              v307 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_10004F000(a4, v5);
                  v306 = *a1;
                }

                v308 = sub_1000726BC(v306, v307);
                v309 = (2 * *v308) ^ (*v308 >> 31);
                if (v309 > 0x7F)
                {
                  *v5 = v309 | 0x80;
                  v310 = v309 >> 7;
                  if (v309 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v310 | 0x80;
                      v311 = v310 >> 7;
                      ++v5;
                      v312 = v310 >> 14;
                      v310 >>= 7;
                    }

                    while (v312);
                    *(v5 - 1) = v311;
                  }

                  else
                  {
                    v5[1] = v310;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v309;
                }

                ++v307;
                v306 = *a1;
              }

              while (v307 < **a1);
            }

            break;
          case 18:
            v347 = *a1;
            if (**a1 >= 1)
            {
              v348 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_10004F000(a4, v5);
                  v347 = *a1;
                }

                v349 = sub_1000756EC(v347, v348);
                v350 = (2 * *v349) ^ (*v349 >> 63);
                if (v350 > 0x7F)
                {
                  *v5 = v350 | 0x80;
                  v351 = v350 >> 7;
                  if (v350 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v351 | 0x80;
                      v352 = v351 >> 7;
                      ++v5;
                      v353 = v351 >> 14;
                      v351 >>= 7;
                    }

                    while (v353);
                    *(v5 - 1) = v352;
                  }

                  else
                  {
                    v5[1] = v351;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v350;
                }

                ++v348;
                v347 = *a1;
              }

              while (v348 < **a1);
            }

            break;
          default:
            return v5;
        }
      }
    }

    else
    {
      v11 = a1[8];
      if ((v11 - 19) <= 0xFFFFFFED)
      {
        sub_10004FCEC(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v12 = sub_10004FD04(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v426, &v12->__r_.__value_.__l.__data_);
        sub_10004FE48(v427);
      }

      switch(v11)
      {
        case 1:
          v13 = *a1;
          if (**a1 >= 1)
          {
            v14 = 0;
            v15 = 8 * a2;
            v16 = (8 * a2) | 0x81;
            v17 = (a2 >> 4) & 0x1FFFFFF;
            v18 = (8 * a2) | 1;
            v19 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v13 = *a1;
              }

              v20 = *sub_100079E98(v13, v14);
              if (v15 > 0x7F)
              {
                *v5 = v16;
                if (v15 >= 0x4000)
                {
                  v21 = v5 + 2;
                  v22 = v17;
                  do
                  {
                    *(v21 - 1) = v22 | 0x80;
                    v23 = v22 >> 7;
                    v21 = (v21 + 1);
                    v24 = v22 >> 14;
                    v22 >>= 7;
                  }

                  while (v24);
                  *(v21 - 1) = v23;
                }

                else
                {
                  v5[1] = v19;
                  v21 = v5 + 2;
                }
              }

              else
              {
                *v5 = v18;
                v21 = v5 + 1;
              }

              *v21 = v20;
              v5 = (v21 + 1);
              ++v14;
              v13 = *a1;
            }

            while (v14 < **a1);
          }

          break;
        case 2:
          v205 = *a1;
          if (**a1 >= 1)
          {
            v206 = 0;
            v207 = 8 * a2;
            v208 = (a2 >> 4) & 0x1FFFFFF;
            v209 = (8 * a2) | 5;
            v210 = (8 * a2) >> 7;
            v211 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v205 = *a1;
              }

              v212 = *sub_100078690(v205, v206);
              if (v207 > 0x7F)
              {
                *v5 = v211;
                if (v207 >= 0x4000)
                {
                  v213 = v5 + 2;
                  v214 = v208;
                  do
                  {
                    *(v213 - 1) = v214 | 0x80;
                    v215 = v214 >> 7;
                    v213 = (v213 + 1);
                    v216 = v214 >> 14;
                    v214 >>= 7;
                  }

                  while (v216);
                  *(v213 - 1) = v215;
                }

                else
                {
                  v5[1] = v210;
                  v213 = v5 + 2;
                }
              }

              else
              {
                *v5 = v209;
                v213 = v5 + 1;
              }

              *v213 = v212;
              v5 = (v213 + 1);
              ++v206;
              v205 = *a1;
            }

            while (v206 < **a1);
          }

          break;
        case 3:
          v153 = *a1;
          if (**a1 >= 1)
          {
            v154 = 0;
            v155 = 8 * a2;
            v156 = (8 * a2) | 0x80;
            v157 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v153 = *a1;
              }

              v158 = *sub_1000756EC(v153, v154);
              if (v155 > 0x7F)
              {
                *v5 = v156;
                if (v155 >= 0x4000)
                {
                  v159 = v5 + 2;
                  v160 = v157;
                  do
                  {
                    *(v159 - 1) = v160 | 0x80;
                    v161 = v160 >> 7;
                    ++v159;
                    v162 = v160 >> 14;
                    v160 >>= 7;
                  }

                  while (v162);
                  *(v159 - 1) = v161;
                }

                else
                {
                  v5[1] = v155 >> 7;
                  v159 = v5 + 2;
                }
              }

              else
              {
                v159 = v5 + 1;
                *v5 = v155;
              }

              if (v158 > 0x7F)
              {
                *v159 = v158 | 0x80;
                v163 = v158 >> 7;
                if (v158 >> 14)
                {
                  v5 = v159 + 2;
                  do
                  {
                    *(v5 - 1) = v163 | 0x80;
                    v164 = v163 >> 7;
                    ++v5;
                    v165 = v163 >> 14;
                    v163 >>= 7;
                  }

                  while (v165);
                  *(v5 - 1) = v164;
                }

                else
                {
                  v159[1] = v163;
                  v5 = v159 + 2;
                }
              }

              else
              {
                *v159 = v158;
                v5 = v159 + 1;
              }

              ++v154;
              v153 = *a1;
            }

            while (v154 < **a1);
          }

          break;
        case 4:
          v180 = *a1;
          if (**a1 >= 1)
          {
            v181 = 0;
            v182 = 8 * a2;
            v183 = (8 * a2) | 0x80;
            v184 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v180 = *a1;
              }

              v185 = *sub_100076EDC(v180, v181);
              if (v182 > 0x7F)
              {
                *v5 = v183;
                if (v182 >= 0x4000)
                {
                  v186 = v5 + 2;
                  v187 = v184;
                  do
                  {
                    *(v186 - 1) = v187 | 0x80;
                    v188 = v187 >> 7;
                    ++v186;
                    v189 = v187 >> 14;
                    v187 >>= 7;
                  }

                  while (v189);
                  *(v186 - 1) = v188;
                }

                else
                {
                  v5[1] = v182 >> 7;
                  v186 = v5 + 2;
                }
              }

              else
              {
                v186 = v5 + 1;
                *v5 = v182;
              }

              if (v185 > 0x7F)
              {
                *v186 = v185 | 0x80;
                v190 = v185 >> 7;
                if (v185 >> 14)
                {
                  v5 = v186 + 2;
                  do
                  {
                    *(v5 - 1) = v190 | 0x80;
                    v191 = v190 >> 7;
                    ++v5;
                    v192 = v190 >> 14;
                    v190 >>= 7;
                  }

                  while (v192);
                  *(v5 - 1) = v191;
                }

                else
                {
                  v186[1] = v190;
                  v5 = v186 + 2;
                }
              }

              else
              {
                *v186 = v185;
                v5 = v186 + 1;
              }

              ++v181;
              v180 = *a1;
            }

            while (v181 < **a1);
          }

          break;
        case 5:
          v103 = *a1;
          if (**a1 >= 1)
          {
            v104 = 0;
            v105 = 8 * a2;
            v106 = (8 * a2) | 0x80;
            v107 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v103 = *a1;
              }

              v108 = *sub_1000726BC(v103, v104);
              if (v105 > 0x7F)
              {
                *v5 = v106;
                if (v105 >= 0x4000)
                {
                  v109 = v5 + 2;
                  v110 = v107;
                  do
                  {
                    *(v109 - 1) = v110 | 0x80;
                    v111 = v110 >> 7;
                    ++v109;
                    v112 = v110 >> 14;
                    v110 >>= 7;
                  }

                  while (v112);
                  *(v109 - 1) = v111;
                }

                else
                {
                  v5[1] = v105 >> 7;
                  v109 = v5 + 2;
                }
              }

              else
              {
                v109 = v5 + 1;
                *v5 = v105;
              }

              if (v108 > 0x7F)
              {
                *v109 = v108 | 0x80;
                v113 = v108 >> 7;
                if (v108 >> 14)
                {
                  v5 = v109 + 2;
                  do
                  {
                    *(v5 - 1) = v113 | 0x80;
                    v114 = v113 >> 7;
                    ++v5;
                    v115 = v113 >> 14;
                    v113 >>= 7;
                  }

                  while (v115);
                  *(v5 - 1) = v114;
                }

                else
                {
                  v109[1] = v113;
                  v5 = v109 + 2;
                }
              }

              else
              {
                *v109 = v108;
                v5 = v109 + 1;
              }

              ++v104;
              v103 = *a1;
            }

            while (v104 < **a1);
          }

          break;
        case 6:
          v234 = *a1;
          if (**a1 >= 1)
          {
            v235 = 0;
            v236 = 8 * a2;
            v237 = (8 * a2) | 0x81;
            v238 = (a2 >> 4) & 0x1FFFFFF;
            v239 = (8 * a2) | 1;
            v240 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v234 = *a1;
              }

              v241 = *sub_100076EDC(v234, v235);
              if (v236 > 0x7F)
              {
                *v5 = v237;
                if (v236 >= 0x4000)
                {
                  v242 = v5 + 2;
                  v243 = v238;
                  do
                  {
                    *(v242 - 1) = v243 | 0x80;
                    v244 = v243 >> 7;
                    v242 = (v242 + 1);
                    v245 = v243 >> 14;
                    v243 >>= 7;
                  }

                  while (v245);
                  *(v242 - 1) = v244;
                }

                else
                {
                  v5[1] = v240;
                  v242 = v5 + 2;
                }
              }

              else
              {
                *v5 = v239;
                v242 = v5 + 1;
              }

              *v242 = v241;
              v5 = (v242 + 1);
              ++v235;
              v234 = *a1;
            }

            while (v235 < **a1);
          }

          break;
        case 7:
          v260 = *a1;
          if (**a1 >= 1)
          {
            v261 = 0;
            v262 = 8 * a2;
            v263 = (a2 >> 4) & 0x1FFFFFF;
            v264 = (8 * a2) | 5;
            v265 = (8 * a2) >> 7;
            v266 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v260 = *a1;
              }

              v267 = *sub_100073EE8(v260, v261);
              if (v262 > 0x7F)
              {
                *v5 = v266;
                if (v262 >= 0x4000)
                {
                  v268 = v5 + 2;
                  v269 = v263;
                  do
                  {
                    *(v268 - 1) = v269 | 0x80;
                    v270 = v269 >> 7;
                    v268 = (v268 + 1);
                    v271 = v269 >> 14;
                    v269 >>= 7;
                  }

                  while (v271);
                  *(v268 - 1) = v270;
                }

                else
                {
                  v5[1] = v265;
                  v268 = v5 + 2;
                }
              }

              else
              {
                *v5 = v264;
                v268 = v5 + 1;
              }

              *v268 = v267;
              v5 = (v268 + 1);
              ++v261;
              v260 = *a1;
            }

            while (v261 < **a1);
          }

          break;
        case 8:
          v194 = *a1;
          if (**a1 >= 1)
          {
            v195 = 0;
            v196 = 8 * a2;
            v197 = (8 * a2) | 0x80;
            v198 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v194 = *a1;
              }

              v199 = *sub_100070EE4(v194, v195);
              if (v196 > 0x7F)
              {
                *v5 = v197;
                if (v196 >= 0x4000)
                {
                  v200 = v5 + 2;
                  v201 = v198;
                  do
                  {
                    *(v200 - 1) = v201 | 0x80;
                    v202 = v201 >> 7;
                    ++v200;
                    v203 = v201 >> 14;
                    v201 >>= 7;
                  }

                  while (v203);
                  *(v200 - 1) = v202;
                }

                else
                {
                  v5[1] = v196 >> 7;
                  v200 = v5 + 2;
                }
              }

              else
              {
                *v5 = v196;
                v200 = v5 + 1;
              }

              *v200 = v199;
              v5 = v200 + 1;
              ++v195;
              v194 = *a1;
            }

            while (v195 < **a1);
          }

          break;
        case 9:
          v292 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v293 = 0;
            v294 = 8 * a2;
            v295 = -3;
            if ((8 * a2) < 0x80)
            {
              v295 = -2;
            }

            v296 = -6;
            if (((a2 >> 25) & 0xF) == 0)
            {
              v296 = -5;
            }

            if (v294 < 0x200000)
            {
              v296 = -4;
            }

            if (v294 >= 0x4000)
            {
              v297 = v296;
            }

            else
            {
              v297 = v295;
            }

            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v292 = *a1;
              }

              v298 = sub_1000469CC(v292, v293);
              v299 = *(v298 + 23);
              if (v299 < 0 && (v299 = *(v298 + 8), v299 > 127) || *a4 + v297 - v5 + 16 < v299)
              {
                v5 = sub_10004F578(a4, a2, v298, v5);
              }

              else
              {
                if (v294 > 0x7F)
                {
                  *v5 = (8 * a2) | 0x82;
                  if (v294 >= 0x4000)
                  {
                    v300 = v5 + 2;
                    v301 = (a2 >> 4) & 0x1FFFFFF;
                    do
                    {
                      *(v300 - 1) = v301 | 0x80;
                      v302 = v301 >> 7;
                      ++v300;
                      v303 = v301 >> 14;
                      v301 >>= 7;
                    }

                    while (v303);
                    *(v300 - 1) = v302;
                  }

                  else
                  {
                    v5[1] = v294 >> 7;
                    v300 = v5 + 2;
                  }
                }

                else
                {
                  v300 = v5 + 1;
                  *v5 = (8 * a2) | 2;
                }

                *v300 = v299;
                v304 = v300 + 1;
                if (*(v298 + 23) >= 0)
                {
                  v305 = v298;
                }

                else
                {
                  v305 = *v298;
                }

                memcpy(v304, v305, v299);
                v5 = &v304[v299];
              }

              ++v293;
              v292 = *a1;
            }

            while (v293 < *(*a1 + 8));
          }

          break;
        case 10:
          v133 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v134 = 0;
            v135 = 8 * a2;
            v425 = (8 * a2) | 0x83;
            v136 = (a2 >> 4) & 0x1FFFFFF;
            v137 = (8 * a2) | 3;
            v138 = (8 * a2) | 4;
            v139 = (8 * a2) >> 7;
            v140 = (8 * a2) | 0x84;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v133 = *a1;
              }

              v141 = sub_100061FB0(v133, v134);
              if (v135 > 0x7F)
              {
                *v5 = v425;
                if (v135 >= 0x4000)
                {
                  v142 = v5 + 2;
                  v143 = v136;
                  do
                  {
                    *(v142 - 1) = v143 | 0x80;
                    v144 = v143 >> 7;
                    ++v142;
                    v145 = v143 >> 14;
                    v143 >>= 7;
                  }

                  while (v145);
                  *(v142 - 1) = v144;
                }

                else
                {
                  v5[1] = v139;
                  v142 = v5 + 2;
                }
              }

              else
              {
                v142 = v5 + 1;
                *v5 = v137;
              }

              v146 = (*(*v141 + 96))(v141, v142, a4);
              if (*a4 <= v146)
              {
                v146 = sub_10004F000(a4, v146);
              }

              if (v135 > 0x7F)
              {
                *v146 = v140;
                if (v135 >= 0x4000)
                {
                  v5 = v146 + 2;
                  v147 = v136;
                  do
                  {
                    *(v5 - 1) = v147 | 0x80;
                    v148 = v147 >> 7;
                    ++v5;
                    v149 = v147 >> 14;
                    v147 >>= 7;
                  }

                  while (v149);
                  *(v5 - 1) = v148;
                }

                else
                {
                  v146[1] = v139;
                  v5 = v146 + 2;
                }
              }

              else
              {
                v5 = v146 + 1;
                *v146 = v138;
              }

              ++v134;
              v133 = *a1;
            }

            while (v134 < *(*a1 + 8));
          }

          break;
        case 11:
          v272 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v273 = 0;
            v274 = 8 * a2;
            v275 = (a2 >> 4) & 0x1FFFFFF;
            v276 = (8 * a2) | 2;
            v277 = (8 * a2) | 0x82;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v272 = *a1;
              }

              v278 = sub_100061FB0(v272, v273);
              v279 = v278;
              if (v274 > 0x7F)
              {
                *v5 = v277;
                if (v274 >= 0x4000)
                {
                  v280 = v5 + 2;
                  v281 = v275;
                  do
                  {
                    *(v280 - 1) = v281 | 0x80;
                    v282 = v281 >> 7;
                    ++v280;
                    v283 = v281 >> 14;
                    v281 >>= 7;
                  }

                  while (v283);
                  *(v280 - 1) = v282;
                }

                else
                {
                  v5[1] = v274 >> 7;
                  v280 = v5 + 2;
                }
              }

              else
              {
                v280 = v5 + 1;
                *v5 = v276;
              }

              v284 = (*(*v278 + 80))(v278);
              if (v284 > 0x7F)
              {
                *v280 = v284 | 0x80;
                v286 = v284 >> 7;
                if (v284 >> 14)
                {
                  v285 = v280 + 2;
                  do
                  {
                    *(v285 - 1) = v286 | 0x80;
                    v287 = v286 >> 7;
                    ++v285;
                    v288 = v286 >> 14;
                    v286 >>= 7;
                  }

                  while (v288);
                  *(v285 - 1) = v287;
                }

                else
                {
                  v280[1] = v286;
                  v285 = v280 + 2;
                }
              }

              else
              {
                *v280 = v284;
                v285 = v280 + 1;
              }

              v5 = (*(*v279 + 96))(v279, v285, a4);
              ++v273;
              v272 = *a1;
            }

            while (v273 < *(*a1 + 8));
          }

          break;
        case 12:
          v78 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v79 = 0;
            v80 = 8 * a2;
            v81 = -3;
            if ((8 * a2) < 0x80)
            {
              v81 = -2;
            }

            v82 = -6;
            if (((a2 >> 25) & 0xF) == 0)
            {
              v82 = -5;
            }

            if (v80 < 0x200000)
            {
              v82 = -4;
            }

            if (v80 >= 0x4000)
            {
              v83 = v82;
            }

            else
            {
              v83 = v81;
            }

            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v78 = *a1;
              }

              v84 = sub_1000469CC(v78, v79);
              v85 = *(v84 + 23);
              if (v85 < 0 && (v85 = *(v84 + 8), v85 > 127) || *a4 + v83 - v5 + 16 < v85)
              {
                v5 = sub_10004F578(a4, a2, v84, v5);
              }

              else
              {
                if (v80 > 0x7F)
                {
                  *v5 = (8 * a2) | 0x82;
                  if (v80 >= 0x4000)
                  {
                    v86 = v5 + 2;
                    v87 = (a2 >> 4) & 0x1FFFFFF;
                    do
                    {
                      *(v86 - 1) = v87 | 0x80;
                      v88 = v87 >> 7;
                      ++v86;
                      v89 = v87 >> 14;
                      v87 >>= 7;
                    }

                    while (v89);
                    *(v86 - 1) = v88;
                  }

                  else
                  {
                    v5[1] = v80 >> 7;
                    v86 = v5 + 2;
                  }
                }

                else
                {
                  v86 = v5 + 1;
                  *v5 = (8 * a2) | 2;
                }

                *v86 = v85;
                v90 = v86 + 1;
                if (*(v84 + 23) >= 0)
                {
                  v91 = v84;
                }

                else
                {
                  v91 = *v84;
                }

                memcpy(v90, v91, v85);
                v5 = &v90[v85];
              }

              ++v79;
              v78 = *a1;
            }

            while (v79 < *(*a1 + 8));
          }

          break;
        case 13:
          v118 = *a1;
          if (**a1 >= 1)
          {
            v119 = 0;
            v120 = 8 * a2;
            v121 = (8 * a2) | 0x80;
            v122 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v118 = *a1;
              }

              v123 = *sub_100073EE8(v118, v119);
              if (v120 > 0x7F)
              {
                *v5 = v121;
                if (v120 >= 0x4000)
                {
                  v124 = v5 + 2;
                  v125 = v122;
                  do
                  {
                    *(v124 - 1) = v125 | 0x80;
                    v126 = v125 >> 7;
                    ++v124;
                    v127 = v125 >> 14;
                    v125 >>= 7;
                  }

                  while (v127);
                  *(v124 - 1) = v126;
                }

                else
                {
                  v5[1] = v120 >> 7;
                  v124 = v5 + 2;
                }
              }

              else
              {
                v124 = v5 + 1;
                *v5 = v120;
              }

              if (v123 > 0x7F)
              {
                *v124 = v123 | 0x80;
                v128 = v123 >> 7;
                if (v123 >> 14)
                {
                  v5 = v124 + 2;
                  do
                  {
                    *(v5 - 1) = v128 | 0x80;
                    v129 = v128 >> 7;
                    ++v5;
                    v130 = v128 >> 14;
                    v128 >>= 7;
                  }

                  while (v130);
                  *(v5 - 1) = v129;
                }

                else
                {
                  v124[1] = v128;
                  v5 = v124 + 2;
                }
              }

              else
              {
                *v124 = v123;
                v5 = v124 + 1;
              }

              ++v119;
              v118 = *a1;
            }

            while (v119 < **a1);
          }

          break;
        case 14:
          v246 = *a1;
          if (**a1 >= 1)
          {
            v247 = 0;
            v248 = 8 * a2;
            v249 = (8 * a2) | 0x80;
            v250 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v246 = *a1;
              }

              v251 = *sub_1000726BC(v246, v247);
              if (v248 > 0x7F)
              {
                *v5 = v249;
                if (v248 >= 0x4000)
                {
                  v252 = v5 + 2;
                  v253 = v250;
                  do
                  {
                    *(v252 - 1) = v253 | 0x80;
                    v254 = v253 >> 7;
                    ++v252;
                    v255 = v253 >> 14;
                    v253 >>= 7;
                  }

                  while (v255);
                  *(v252 - 1) = v254;
                }

                else
                {
                  v5[1] = v248 >> 7;
                  v252 = v5 + 2;
                }
              }

              else
              {
                v252 = v5 + 1;
                *v5 = v248;
              }

              if (v251 > 0x7F)
              {
                *v252 = v251 | 0x80;
                v256 = v251 >> 7;
                if (v251 >> 14)
                {
                  v5 = v252 + 2;
                  do
                  {
                    *(v5 - 1) = v256 | 0x80;
                    v257 = v256 >> 7;
                    ++v5;
                    v258 = v256 >> 14;
                    v256 >>= 7;
                  }

                  while (v258);
                  *(v5 - 1) = v257;
                }

                else
                {
                  v252[1] = v256;
                  v5 = v252 + 2;
                }
              }

              else
              {
                *v252 = v251;
                v5 = v252 + 1;
              }

              ++v247;
              v246 = *a1;
            }

            while (v247 < **a1);
          }

          break;
        case 15:
          v60 = *a1;
          if (**a1 >= 1)
          {
            v61 = 0;
            v62 = 8 * a2;
            v63 = (a2 >> 4) & 0x1FFFFFF;
            v64 = (8 * a2) | 5;
            v65 = (8 * a2) >> 7;
            v66 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v60 = *a1;
              }

              v67 = *sub_1000726BC(v60, v61);
              if (v62 > 0x7F)
              {
                *v5 = v66;
                if (v62 >= 0x4000)
                {
                  v68 = v5 + 2;
                  v69 = v63;
                  do
                  {
                    *(v68 - 1) = v69 | 0x80;
                    v70 = v69 >> 7;
                    v68 = (v68 + 1);
                    v71 = v69 >> 14;
                    v69 >>= 7;
                  }

                  while (v71);
                  *(v68 - 1) = v70;
                }

                else
                {
                  v5[1] = v65;
                  v68 = v5 + 2;
                }
              }

              else
              {
                *v5 = v64;
                v68 = v5 + 1;
              }

              *v68 = v67;
              v5 = (v68 + 1);
              ++v61;
              v60 = *a1;
            }

            while (v61 < **a1);
          }

          break;
        case 16:
          v167 = *a1;
          if (**a1 >= 1)
          {
            v168 = 0;
            v169 = 8 * a2;
            v170 = (8 * a2) | 0x81;
            v171 = (a2 >> 4) & 0x1FFFFFF;
            v172 = (8 * a2) | 1;
            v173 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v167 = *a1;
              }

              v174 = *sub_1000756EC(v167, v168);
              if (v169 > 0x7F)
              {
                *v5 = v170;
                if (v169 >= 0x4000)
                {
                  v175 = v5 + 2;
                  v176 = v171;
                  do
                  {
                    *(v175 - 1) = v176 | 0x80;
                    v177 = v176 >> 7;
                    v175 = (v175 + 1);
                    v178 = v176 >> 14;
                    v176 >>= 7;
                  }

                  while (v178);
                  *(v175 - 1) = v177;
                }

                else
                {
                  v5[1] = v173;
                  v175 = v5 + 2;
                }
              }

              else
              {
                *v5 = v172;
                v175 = v5 + 1;
              }

              *v175 = v174;
              v5 = (v175 + 1);
              ++v168;
              v167 = *a1;
            }

            while (v168 < **a1);
          }

          break;
        case 17:
          v43 = *a1;
          if (**a1 >= 1)
          {
            v44 = 0;
            v45 = 8 * a2;
            v46 = (8 * a2) | 0x80;
            v47 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v43 = *a1;
              }

              v48 = *sub_1000726BC(v43, v44);
              if (v45 > 0x7F)
              {
                *v5 = v46;
                if (v45 >= 0x4000)
                {
                  v49 = v5 + 2;
                  v50 = v47;
                  do
                  {
                    *(v49 - 1) = v50 | 0x80;
                    v51 = v50 >> 7;
                    ++v49;
                    v52 = v50 >> 14;
                    v50 >>= 7;
                  }

                  while (v52);
                  *(v49 - 1) = v51;
                }

                else
                {
                  v5[1] = v45 >> 7;
                  v49 = v5 + 2;
                }
              }

              else
              {
                v49 = v5 + 1;
                *v5 = v45;
              }

              v53 = (2 * v48) ^ (v48 >> 31);
              if (v53 > 0x7F)
              {
                *v49 = v53 | 0x80;
                v54 = v53 >> 7;
                if (v53 >> 14)
                {
                  v5 = v49 + 2;
                  do
                  {
                    *(v5 - 1) = v54 | 0x80;
                    v55 = v54 >> 7;
                    ++v5;
                    v56 = v54 >> 14;
                    v54 >>= 7;
                  }

                  while (v56);
                  *(v5 - 1) = v55;
                }

                else
                {
                  v49[1] = v54;
                  v5 = v49 + 2;
                }
              }

              else
              {
                *v49 = v53;
                v5 = v49 + 1;
              }

              ++v44;
              v43 = *a1;
            }

            while (v44 < **a1);
          }

          break;
        case 18:
          v218 = *a1;
          if (**a1 >= 1)
          {
            v219 = 0;
            v220 = 8 * a2;
            v221 = (8 * a2) | 0x80;
            v222 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_10004F000(a4, v5);
                v218 = *a1;
              }

              v223 = *sub_1000756EC(v218, v219);
              if (v220 > 0x7F)
              {
                *v5 = v221;
                if (v220 >= 0x4000)
                {
                  v224 = v5 + 2;
                  v225 = v222;
                  do
                  {
                    *(v224 - 1) = v225 | 0x80;
                    v226 = v225 >> 7;
                    ++v224;
                    v227 = v225 >> 14;
                    v225 >>= 7;
                  }

                  while (v227);
                  *(v224 - 1) = v226;
                }

                else
                {
                  v5[1] = v220 >> 7;
                  v224 = v5 + 2;
                }
              }

              else
              {
                v224 = v5 + 1;
                *v5 = v220;
              }

              v228 = (2 * v223) ^ (v223 >> 63);
              if (v228 > 0x7F)
              {
                *v224 = v228 | 0x80;
                v229 = v228 >> 7;
                if (v228 >> 14)
                {
                  v5 = v224 + 2;
                  do
                  {
                    *(v5 - 1) = v229 | 0x80;
                    v230 = v229 >> 7;
                    ++v5;
                    v231 = v229 >> 14;
                    v229 >>= 7;
                  }

                  while (v231);
                  *(v5 - 1) = v230;
                }

                else
                {
                  v224[1] = v229;
                  v5 = v224 + 2;
                }
              }

              else
              {
                *v224 = v228;
                v5 = v224 + 1;
              }

              ++v219;
              v218 = *a1;
            }

            while (v219 < **a1);
          }

          break;
        default:
          return v5;
      }
    }

    return v5;
  }

  if (a1[10])
  {
    return v5;
  }

  v25 = a1[8];
  if ((v25 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v26 = sub_10004FD04(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v426, &v26->__r_.__value_.__l.__data_);
    sub_10004FE48(v427);
  }

  switch(v25)
  {
    case 1:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v27 = *a1;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_360;
      }

      *v5 = v28 | 0x81;
      v29 = v28 >> 7;
      if (!(v28 >> 14))
      {
        goto LABEL_613;
      }

      v30 = (v5 + 2);
      do
      {
        *(v30 - 1) = v29 | 0x80;
        v31 = v29 >> 7;
        v30 = (v30 + 1);
        v32 = v29 >> 14;
        v29 >>= 7;
      }

      while (v32);
      goto LABEL_698;
    case 2:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v72 = *a1;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_401;
      }

      *v5 = v73 | 0x85;
      v74 = v73 >> 7;
      if (!(v73 >> 14))
      {
        goto LABEL_617;
      }

      v75 = v5 + 2;
      do
      {
        *(v75 - 1) = v74 | 0x80;
        v76 = v74 >> 7;
        v75 = (v75 + 1);
        v217 = v74 >> 14;
        v74 >>= 7;
      }

      while (v217);
      goto LABEL_713;
    case 3:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v116 = *a1;
      v166 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v166 | 0x80;
        v368 = v166 >> 7;
        if (v166 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v368 | 0x80;
            v396 = v368 >> 7;
            ++v59;
            v397 = v368 >> 14;
            v368 >>= 7;
          }

          while (v397);
          *(v59 - 1) = v396;
        }

        else
        {
          v5[1] = v368;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v166;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v398 = v385 >> 14;
        v385 >>= 7;
      }

      while (v398);
      goto LABEL_710;
    case 4:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v116 = *a1;
      v193 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v193 | 0x80;
        v369 = v193 >> 7;
        if (v193 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v369 | 0x80;
            v399 = v369 >> 7;
            ++v59;
            v400 = v369 >> 14;
            v369 >>= 7;
          }

          while (v400);
          *(v59 - 1) = v399;
        }

        else
        {
          v5[1] = v369;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v193;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v401 = v385 >> 14;
        v385 >>= 7;
      }

      while (v401);
      goto LABEL_710;
    case 5:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v116 = *a1;
      v117 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v117 | 0x80;
        v365 = v117 >> 7;
        if (v117 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v365 | 0x80;
            v383 = v365 >> 7;
            ++v59;
            v384 = v365 >> 14;
            v365 >>= 7;
          }

          while (v384);
          *(v59 - 1) = v383;
        }

        else
        {
          v5[1] = v365;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v117;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v387 = v385 >> 14;
        v385 >>= 7;
      }

      while (v387);
      goto LABEL_710;
    case 6:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v27 = *a1;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_360;
      }

      *v5 = v28 | 0x81;
      v29 = v28 >> 7;
      if (!(v28 >> 14))
      {
        goto LABEL_613;
      }

      v30 = (v5 + 2);
      do
      {
        *(v30 - 1) = v29 | 0x80;
        v31 = v29 >> 7;
        v30 = (v30 + 1);
        v410 = v29 >> 14;
        v29 >>= 7;
      }

      while (v410);
      goto LABEL_698;
    case 7:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v72 = *a1;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_401;
      }

      *v5 = v73 | 0x85;
      v74 = v73 >> 7;
      if (!(v73 >> 14))
      {
        goto LABEL_617;
      }

      v75 = v5 + 2;
      do
      {
        *(v75 - 1) = v74 | 0x80;
        v76 = v74 >> 7;
        v75 = (v75 + 1);
        v414 = v74 >> 14;
        v74 >>= 7;
      }

      while (v414);
      goto LABEL_713;
    case 8:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      LOBYTE(v131) = *a1;
      v204 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v204 | 0x80;
        v370 = v204 >> 7;
        if (v204 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v370 | 0x80;
            v402 = v370 >> 7;
            ++v59;
            v403 = v370 >> 14;
            v370 >>= 7;
          }

          while (v403);
          *(v59 - 1) = v402;
        }

        else
        {
          v5[1] = v370;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v204;
        v59 = v5 + 1;
      }

      goto LABEL_685;
    case 9:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v92 = *a1;
      v93 = *(*a1 + 23);
      if (v93 < 0)
      {
        v93 = *(v92 + 1);
        if (v93 > 127)
        {
          return sub_10004F578(a4, a2, v92, v5);
        }
      }

      v94 = *a4;
      v95 = 8 * a2;
      if ((8 * a2) < 0x80)
      {
        goto LABEL_461;
      }

      v374 = 2;
      v375 = 3;
      v376 = 4;
      if (v95 >> 28)
      {
        v376 = 5;
      }

      if (v95 >= 0x200000)
      {
        v375 = v376;
      }

      if (v95 >= 0x4000)
      {
        v374 = v375;
      }

      if ((v94 + ~&v5[v374] + 16) < v93)
      {
        return sub_10004F578(a4, a2, v92, v5);
      }

      *v5 = v95 | 0x82;
      v99 = v95 >> 7;
      if (!(v95 >> 14))
      {
        goto LABEL_627;
      }

      v100 = v5 + 2;
      do
      {
        *(v100 - 1) = v99 | 0x80;
        v101 = v99 >> 7;
        ++v100;
        v416 = v99 >> 14;
        v99 >>= 7;
      }

      while (v416);
      goto LABEL_719;
    case 10:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v150 = *a1;
      v151 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v151 | 0x83;
        v367 = v151 >> 7;
        if (v151 >> 14)
        {
          v152 = v5 + 2;
          do
          {
            *(v152 - 1) = v367 | 0x80;
            v393 = v367 >> 7;
            ++v152;
            v394 = v367 >> 14;
            v367 >>= 7;
          }

          while (v394);
          *(v152 - 1) = v393;
        }

        else
        {
          v5[1] = v367;
          v152 = v5 + 2;
        }
      }

      else
      {
        *v5 = v151 | 3;
        v152 = v5 + 1;
      }

      v59 = (*(*v150 + 96))(v150, v152, a4);
      if (*a4 <= v59)
      {
        v59 = sub_10004F000(a4, v59);
      }

      if (v151 <= 0x7F)
      {
        LOBYTE(v131) = v151 | 4;
LABEL_685:
        *v59 = v131;
        return v59 + 1;
      }

      *v59 = v151 | 0x84;
      v380 = v151 >> 7;
      if (!(v151 >> 14))
      {
        goto LABEL_662;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v380 | 0x80;
        v381 = v380 >> 7;
        ++v5;
        v395 = v380 >> 14;
        v380 >>= 7;
      }

      while (v395);
      goto LABEL_665;
    case 11:
      if ((a1[10] & 0x10) != 0)
      {
        return (*(**a1 + 136))(*a1, a2, v5, a4);
      }

      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v289 = *a1;
      v290 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v290 | 0x82;
        v415 = v290 >> 7;
        if (v290 >> 14)
        {
          v291 = v5 + 2;
          do
          {
            *(v291 - 1) = v415 | 0x80;
            v418 = v415 >> 7;
            ++v291;
            v419 = v415 >> 14;
            v415 >>= 7;
          }

          while (v419);
          *(v291 - 1) = v418;
        }

        else
        {
          v5[1] = v415;
          v291 = v5 + 2;
        }
      }

      else
      {
        *v5 = v290 | 2;
        v291 = v5 + 1;
      }

      v420 = (*(*v289 + 80))(v289);
      if (v420 > 0x7F)
      {
        *v291 = v420 | 0x80;
        v422 = v420 >> 7;
        if (v420 >> 14)
        {
          v421 = v291 + 2;
          do
          {
            *(v421 - 1) = v422 | 0x80;
            v423 = v422 >> 7;
            ++v421;
            v424 = v422 >> 14;
            v422 >>= 7;
          }

          while (v424);
          *(v421 - 1) = v423;
        }

        else
        {
          v291[1] = v422;
          v421 = v291 + 2;
        }
      }

      else
      {
        *v291 = v420;
        v421 = v291 + 1;
      }

      return (*(*v289 + 96))(v289, v421, a4);
    case 12:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v92 = *a1;
      v93 = *(*a1 + 23);
      if (v93 < 0)
      {
        v93 = *(v92 + 1);
        if (v93 > 127)
        {
          return sub_10004F578(a4, a2, v92, v5);
        }
      }

      v94 = *a4;
      v95 = 8 * a2;
      if ((8 * a2) < 0x80)
      {
LABEL_461:
        if (v94 - v5 + 14 >= v93)
        {
          *v5 = v95 | 2;
          v100 = v5 + 1;
LABEL_720:
          *v100 = v93;
          v417 = v100 + 1;
          if (*(v92 + 23) < 0)
          {
            v92 = *v92;
          }

          memcpy(v417, v92, v93);
          return &v417[v93];
        }
      }

      else
      {
        v96 = 2;
        v97 = 3;
        v98 = 4;
        if (v95 >> 28)
        {
          v98 = 5;
        }

        if (v95 >= 0x200000)
        {
          v97 = v98;
        }

        if (v95 >= 0x4000)
        {
          v96 = v97;
        }

        if ((v94 + ~&v5[v96] + 16) >= v93)
        {
          *v5 = v95 | 0x82;
          v99 = v95 >> 7;
          if (v95 >> 14)
          {
            v100 = v5 + 2;
            do
            {
              *(v100 - 1) = v99 | 0x80;
              v101 = v99 >> 7;
              ++v100;
              v102 = v99 >> 14;
              v99 >>= 7;
            }

            while (v102);
LABEL_719:
            *(v100 - 1) = v101;
          }

          else
          {
LABEL_627:
            v5[1] = v99;
            v100 = v5 + 2;
          }

          goto LABEL_720;
        }
      }

      return sub_10004F578(a4, a2, v92, v5);
    case 13:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v131 = *a1;
      v132 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v132 | 0x80;
        v366 = v132 >> 7;
        if (v132 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v366 | 0x80;
            v388 = v366 >> 7;
            ++v59;
            v389 = v366 >> 14;
            v366 >>= 7;
          }

          while (v389);
          *(v59 - 1) = v388;
        }

        else
        {
          v5[1] = v366;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v132;
        v59 = v5 + 1;
      }

      if (v131 <= 0x7F)
      {
        goto LABEL_685;
      }

      *v59 = v131 | 0x80;
      v390 = v131 >> 7;
      if (!(v131 >> 14))
      {
        v59[1] = v390;
        return v59 + 2;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v390 | 0x80;
        v391 = v390 >> 7;
        ++v5;
        v392 = v390 >> 14;
        v390 >>= 7;
      }

      while (v392);
      *(v5 - 1) = v391;
      return v5;
    case 14:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v116 = *a1;
      v259 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v259 | 0x80;
        v372 = v259 >> 7;
        if (v259 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v372 | 0x80;
            v411 = v372 >> 7;
            ++v59;
            v412 = v372 >> 14;
            v372 >>= 7;
          }

          while (v412);
          *(v59 - 1) = v411;
        }

        else
        {
          v5[1] = v372;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v259;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
LABEL_704:
        *v59 = v116;
        return v59 + 1;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
LABEL_706:
        v59[1] = v385;
        return v59 + 2;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v413 = v385 >> 14;
        v385 >>= 7;
      }

      while (v413);
LABEL_710:
      *(v5 - 1) = v386;
      return v5;
    case 15:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v72 = *a1;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
LABEL_401:
        *v5 = v73 | 5;
        v75 = v5 + 1;
      }

      else
      {
        *v5 = v73 | 0x85;
        v74 = v73 >> 7;
        if (v73 >> 14)
        {
          v75 = v5 + 2;
          do
          {
            *(v75 - 1) = v74 | 0x80;
            v76 = v74 >> 7;
            v75 = (v75 + 1);
            v77 = v74 >> 14;
            v74 >>= 7;
          }

          while (v77);
LABEL_713:
          *(v75 - 1) = v76;
        }

        else
        {
LABEL_617:
          v5[1] = v74;
          v75 = v5 + 2;
        }
      }

      *v75 = v72;
      return (v75 + 1);
    case 16:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v27 = *a1;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
LABEL_360:
        *v5 = v28 | 1;
        v30 = (v5 + 1);
      }

      else
      {
        *v5 = v28 | 0x81;
        v29 = v28 >> 7;
        if (v28 >> 14)
        {
          v30 = (v5 + 2);
          do
          {
            *(v30 - 1) = v29 | 0x80;
            v31 = v29 >> 7;
            v30 = (v30 + 1);
            v179 = v29 >> 14;
            v29 >>= 7;
          }

          while (v179);
LABEL_698:
          *(v30 - 1) = v31;
        }

        else
        {
LABEL_613:
          v5[1] = v29;
          v30 = (v5 + 2);
        }
      }

      *v30 = v27;
      return (v30 + 1);
    case 17:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v57 = *a1;
      v58 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v58 | 0x80;
        v364 = v58 >> 7;
        if (v58 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v364 | 0x80;
            v377 = v364 >> 7;
            ++v59;
            v378 = v364 >> 14;
            v364 >>= 7;
          }

          while (v378);
          *(v59 - 1) = v377;
        }

        else
        {
          v5[1] = v364;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v58;
        v59 = v5 + 1;
      }

      v379 = (2 * v57) ^ (v57 >> 31);
      if (v379 <= 0x7F)
      {
        *v59 = v379;
        return v59 + 1;
      }

      *v59 = v379 | 0x80;
      v380 = v379 >> 7;
      if (!(v379 >> 14))
      {
LABEL_662:
        v59[1] = v380;
        return v59 + 2;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v380 | 0x80;
        v381 = v380 >> 7;
        ++v5;
        v382 = v380 >> 14;
        v380 >>= 7;
      }

      while (v382);
LABEL_665:
      *(v5 - 1) = v381;
      return v5;
    case 18:
      if (*a4 <= v5)
      {
        v5 = sub_10004F000(a4, v5);
      }

      v232 = *a1;
      v233 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v233 | 0x80;
        v371 = v233 >> 7;
        if (v233 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v371 | 0x80;
            v404 = v371 >> 7;
            ++v59;
            v405 = v371 >> 14;
            v371 >>= 7;
          }

          while (v405);
          *(v59 - 1) = v404;
        }

        else
        {
          v5[1] = v371;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v233;
        v59 = v5 + 1;
      }

      v406 = (2 * v232) ^ (v232 >> 63);
      if (v406 > 0x7F)
      {
        *v59 = v406 | 0x80;
        v407 = v406 >> 7;
        if (v406 >> 14)
        {
          v5 = v59 + 2;
          do
          {
            *(v5 - 1) = v407 | 0x80;
            v408 = v407 >> 7;
            ++v5;
            v409 = v407 >> 14;
            v407 >>= 7;
          }

          while (v409);
          *(v5 - 1) = v408;
        }

        else
        {
          v59[1] = v407;
          return v59 + 2;
        }
      }

      else
      {
        *v59 = v406;
        return v59 + 1;
      }

      return v5;
    default:
      return v5;
  }
}

void sub_100060404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10006050C(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = a2;
  v10 = a2;
  v5 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    sub_1000629D4(*v5, v5 + 8, &v10, a3);
    return v10;
  }

  else if (*(a1 + 10))
  {
    v6 = &v5[32 * *(a1 + 10)];
    v7 = *(a1 + 16);
    do
    {
      v8 = *v7;
      v7 += 32;
      v4 = sub_100061854(v5 + 8, v8, v4, a3);
      v5 = v7;
    }

    while (v7 != v6);
  }

  return v4;
}

uint64_t sub_1000605A4(uint64_t a1)
{
  v7 = 0;
  v1 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    sub_100062A6C(*v1, v1 + 1, &v7);
    return v7;
  }

  else if (*(a1 + 10))
  {
    v2 = 0;
    v3 = &v1[8 * *(a1 + 10)];
    v4 = *(a1 + 16);
    do
    {
      v5 = *v4;
      v4 += 8;
      v2 += sub_100060638(v1 + 1, v5);
      v1 = v4;
    }

    while (v4 != v3);
  }

  else
  {
    return 0;
  }

  return v2;
}

unint64_t sub_100060638(_DWORD **a1, int a2)
{
  if (*(a1 + 9) == 1)
  {
    v4 = *(a1 + 8);
    v5 = v4 - 19;
    if (*(a1 + 11) == 1)
    {
      if (v5 <= 0xFFFFFFED)
      {
        sub_10004FCEC(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v6 = sub_10004FD04(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v102, &v6->__r_.__value_.__l.__data_);
        sub_10004FE48(v103);
      }

      switch(v4)
      {
        case 1:
        case 6:
        case 16:
          v22 = 8 * **a1;
          goto LABEL_71;
        case 2:
        case 7:
        case 15:
          v22 = 4 * **a1;
          goto LABEL_71;
        case 3:
          v45 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v46 = 0;
          do
          {
            v22 += (9 * (__clz(*sub_1000756EC(v45, v46++) | 1) ^ 0x3F) + 73) >> 6;
            v45 = *a1;
          }

          while (v46 < **a1);
          goto LABEL_71;
        case 4:
          v47 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v48 = 0;
          do
          {
            v22 += (9 * (__clz(*sub_100076EDC(v47, v48++) | 1) ^ 0x3F) + 73) >> 6;
            v47 = *a1;
          }

          while (v48 < **a1);
          goto LABEL_71;
        case 5:
          v37 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v38 = 0;
          do
          {
            v39 = sub_1000726BC(v37, v38);
            v40 = (9 * (__clz(*v39 | 1) ^ 0x1F) + 73) >> 6;
            if (*v39 >= 0)
            {
              v41 = v40;
            }

            else
            {
              v41 = 10;
            }

            v22 += v41;
            ++v38;
            v37 = *a1;
          }

          while (v38 < **a1);
          goto LABEL_71;
        case 8:
          v22 = **a1;
          goto LABEL_71;
        case 9:
        case 10:
        case 11:
        case 12:
          sub_10004FCEC(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1599);
          v7 = sub_10004FD04(v103, "Non-primitive types can't be packed.");
          sub_10004FE40(&v102, &v7->__r_.__value_.__l.__data_);
          sub_10004FE48(v103);
          goto LABEL_7;
        case 13:
          v30 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v31 = 0;
          do
          {
            v22 += (9 * (__clz(*sub_100073EE8(v30, v31++) | 1) ^ 0x1F) + 73) >> 6;
            v30 = *a1;
          }

          while (v31 < **a1);
          goto LABEL_71;
        case 14:
          v32 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v33 = 0;
          do
          {
            v34 = sub_1000726BC(v32, v33);
            v35 = (9 * (__clz(*v34 | 1) ^ 0x1F) + 73) >> 6;
            if (*v34 >= 0)
            {
              v36 = v35;
            }

            else
            {
              v36 = 10;
            }

            v22 += v36;
            ++v33;
            v32 = *a1;
          }

          while (v33 < **a1);
          goto LABEL_71;
        case 17:
          v27 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v28 = 0;
          do
          {
            v29 = sub_1000726BC(v27, v28);
            v22 += (9 * (__clz((2 * *v29) ^ (*v29 >> 31) | 1) ^ 0x1F) + 73) >> 6;
            ++v28;
            v27 = *a1;
          }

          while (v28 < **a1);
          goto LABEL_71;
        case 18:
          v42 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v43 = 0;
          do
          {
            v44 = sub_1000756EC(v42, v43);
            v22 += (9 * (__clz((2 * *v44) ^ (*v44 >> 63) | 1) ^ 0x3F) + 73) >> 6;
            ++v43;
            v42 = *a1;
          }

          while (v43 < **a1);
LABEL_71:
          *(a1 + 3) = v22;
          v49 = v22 + ((9 * (__clz((8 * a2) | 3) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
          if (v22)
          {
            v8 = v49;
          }

          else
          {
            v8 = 0;
          }

          break;
        default:
LABEL_7:
          v8 = 0;
          *(a1 + 3) = 0;
          break;
      }
    }

    else
    {
      if (v5 > 0xFFFFFFED)
      {
        v11 = 0;
        v10 = *(a1 + 8);
      }

      else
      {
        sub_10004FCEC(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v9 = sub_10004FD04(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v102, &v9->__r_.__value_.__l.__data_);
        sub_10004FE48(v103);
        v10 = *(a1 + 8);
        v11 = (v10 - 19) < 0xFFFFFFEE;
      }

      v16 = v4 == 10;
      if (v11)
      {
        sub_10004FCEC(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v17 = sub_10004FD04(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v102, &v17->__r_.__value_.__l.__data_);
        sub_10004FE48(v103);
      }

      v18 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << v16;
      switch(v10)
      {
        case 1:
        case 6:
        case 16:
          v19 = v18 + 8;
          goto LABEL_27;
        case 2:
        case 7:
        case 15:
          v19 = v18 + 4;
LABEL_27:
          v8 = v19 * **a1;
          break;
        case 3:
          v85 = *a1;
          v86 = **a1;
          v8 = v18 * v86;
          if (v86 >= 1)
          {
            v87 = 0;
            do
            {
              v8 += (9 * (__clz(*sub_1000756EC(v85, v87++) | 1) ^ 0x3F) + 73) >> 6;
              v85 = *a1;
            }

            while (v87 < **a1);
          }

          break;
        case 4:
          v88 = *a1;
          v89 = **a1;
          v8 = v18 * v89;
          if (v89 >= 1)
          {
            v90 = 0;
            do
            {
              v8 += (9 * (__clz(*sub_100076EDC(v88, v90++) | 1) ^ 0x3F) + 73) >> 6;
              v88 = *a1;
            }

            while (v90 < **a1);
          }

          break;
        case 5:
          v75 = *a1;
          v76 = **a1;
          v8 = v18 * v76;
          if (v76 >= 1)
          {
            v77 = 0;
            do
            {
              v78 = sub_1000726BC(v75, v77);
              v79 = (9 * (__clz(*v78 | 1) ^ 0x1F) + 73) >> 6;
              if (*v78 >= 0)
              {
                v80 = v79;
              }

              else
              {
                v80 = 10;
              }

              v8 += v80;
              ++v77;
              v75 = *a1;
            }

            while (v77 < **a1);
          }

          break;
        case 8:
          v8 = **a1 + **a1 * v18;
          break;
        case 9:
          v96 = *a1;
          v97 = (*a1)[2];
          v8 = v18 * v97;
          if (v97 >= 1)
          {
            v98 = 0;
            do
            {
              v99 = sub_1000469CC(v96, v98);
              v100 = *(v99 + 23);
              if ((v100 & 0x80u) != 0)
              {
                v100 = *(v99 + 8);
              }

              v8 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6);
              ++v98;
              v96 = *a1;
            }

            while (v98 < (*a1)[2]);
          }

          break;
        case 10:
          v58 = *a1;
          v59 = (*a1)[2];
          v8 = v18 * v59;
          if (v59 >= 1)
          {
            v60 = 0;
            do
            {
              v61 = sub_100061FB0(v58, v60);
              v8 += (*(*v61 + 72))(v61);
              ++v60;
              v58 = *a1;
            }

            while (v60 < (*a1)[2]);
          }

          break;
        case 11:
          v64 = *a1;
          v65 = (*a1)[2];
          v8 = v18 * v65;
          if (v65 >= 1)
          {
            v66 = 0;
            do
            {
              v67 = sub_100061FB0(v64, v66);
              v68 = (*(*v67 + 72))(v67);
              v8 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6);
              ++v66;
              v64 = *a1;
            }

            while (v66 < (*a1)[2]);
          }

          break;
        case 12:
          v91 = *a1;
          v92 = (*a1)[2];
          v8 = v18 * v92;
          if (v92 >= 1)
          {
            v93 = 0;
            do
            {
              v94 = sub_1000469CC(v91, v93);
              v95 = *(v94 + 23);
              if ((v95 & 0x80u) != 0)
              {
                v95 = *(v94 + 8);
              }

              v8 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6);
              ++v93;
              v91 = *a1;
            }

            while (v93 < (*a1)[2]);
          }

          break;
        case 13:
          v55 = *a1;
          v56 = **a1;
          v8 = v18 * v56;
          if (v56 >= 1)
          {
            v57 = 0;
            do
            {
              v8 += (9 * (__clz(*sub_100073EE8(v55, v57++) | 1) ^ 0x1F) + 73) >> 6;
              v55 = *a1;
            }

            while (v57 < **a1);
          }

          break;
        case 14:
          v69 = *a1;
          v70 = **a1;
          v8 = v18 * v70;
          if (v70 >= 1)
          {
            v71 = 0;
            do
            {
              v72 = sub_1000726BC(v69, v71);
              v73 = (9 * (__clz(*v72 | 1) ^ 0x1F) + 73) >> 6;
              if (*v72 >= 0)
              {
                v74 = v73;
              }

              else
              {
                v74 = 10;
              }

              v8 += v74;
              ++v71;
              v69 = *a1;
            }

            while (v71 < **a1);
          }

          break;
        case 17:
          v50 = *a1;
          v51 = **a1;
          v8 = v18 * v51;
          if (v51 >= 1)
          {
            v52 = 0;
            do
            {
              v53 = sub_1000726BC(v50, v52);
              v8 += (9 * (__clz((2 * *v53) ^ (*v53 >> 31) | 1) ^ 0x1F) + 73) >> 6;
              ++v52;
              v50 = *a1;
            }

            while (v52 < **a1);
          }

          break;
        case 18:
          v81 = *a1;
          v82 = **a1;
          v8 = v18 * v82;
          if (v82 >= 1)
          {
            v83 = 0;
            do
            {
              v84 = sub_1000756EC(v81, v83);
              v8 += (9 * (__clz((2 * *v84) ^ (*v84 >> 63) | 1) ^ 0x3F) + 73) >> 6;
              ++v83;
              v81 = *a1;
            }

            while (v83 < **a1);
          }

          break;
        default:
          return 0;
      }
    }
  }

  else if (*(a1 + 10))
  {
    return 0;
  }

  else
  {
    v12 = *(a1 + 8);
    if ((v12 - 19) > 0xFFFFFFED)
    {
      v15 = 0;
      v14 = *(a1 + 8);
    }

    else
    {
      sub_10004FCEC(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v13 = sub_10004FD04(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v102, &v13->__r_.__value_.__l.__data_);
      sub_10004FE48(v103);
      v14 = *(a1 + 8);
      v15 = (v14 - 19) < 0xFFFFFFEE;
    }

    v20 = v12 == 10;
    if (v15)
    {
      sub_10004FCEC(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v21 = sub_10004FD04(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v102, &v21->__r_.__value_.__l.__data_);
      sub_10004FE48(v103);
    }

    v8 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << v20;
    switch(v14)
    {
      case 1:
      case 6:
      case 16:
        v8 += 8;
        return v8;
      case 2:
      case 7:
      case 15:
        v8 += 4;
        return v8;
      case 3:
      case 4:
        v23 = *a1;
        goto LABEL_116;
      case 5:
      case 14:
        v24 = (9 * (__clz(*a1 | 1) ^ 0x1F) + 73) >> 6;
        if (*a1 >= 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = 10;
        }

        v8 += v25;
        return v8;
      case 8:
        return ++v8;
      case 9:
      case 12:
        v26 = *(*a1 + 1);
        if (*(*a1 + 23) >= 0)
        {
          v26 = *(*a1 + 23);
        }

        v8 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
        return v8;
      case 10:
        v8 += (*(**a1 + 72))();
        return v8;
      case 11:
        v62 = **a1;
        if ((*(a1 + 10) & 0x10) != 0)
        {
          v63 = (*(v62 + 88))();
        }

        else
        {
          v63 = (*(v62 + 72))();
        }

        v8 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6);
        return v8;
      case 13:
        v54 = *a1;
        goto LABEL_103;
      case 17:
        v54 = (2 * *a1) ^ (*a1 >> 31);
LABEL_103:
        v8 += (9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6;
        break;
      case 18:
        v23 = (2 * *a1) ^ (*a1 >> 63);
LABEL_116:
        v8 += (9 * (__clz(v23 | 1) ^ 0x3F) + 73) >> 6;
        break;
      default:
        return v8;
    }
  }

  return v8;
}

void sub_100061238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_100061350(unsigned __int8 *result)
{
  v1 = result;
  v2 = result[8];
  v3 = v2 - 19;
  if (result[9] == 1)
  {
    if (v3 <= 0xFFFFFFED)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v4 = sub_10004FD04(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v10, &v4->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v11);
    }

    v5 = dword_100092BB0[v2];
    if (v5 > 5)
    {
      if (v5 <= 7)
      {
        if (v5 == 6)
        {
          result = *v1;
          if (!*v1)
          {
            return result;
          }

          sub_1000787D8();
        }

        else
        {
          result = *v1;
          if (!*v1)
          {
            return result;
          }

          sub_100071044();
        }

        goto LABEL_44;
      }

      if (v5 != 8)
      {
        if (v5 == 9)
        {
          result = *v1;
          if (!*v1)
          {
            return result;
          }

          sub_10007B360();
        }

        else
        {
          if (v5 != 10)
          {
            return result;
          }

          v9 = *v1;
          if (!v9)
          {
            return result;
          }

          sub_100062BC8(v9);
          sub_10003D264(v9);
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v5 > 2)
      {
        if (v5 == 3)
        {
          result = *v1;
          if (!*v1)
          {
            return result;
          }

          sub_100074030();
        }

        else
        {
          if (v5 != 4)
          {
            result = *v1;
            if (*v1)
            {
              sub_100079FE0();
              goto LABEL_44;
            }

            return result;
          }

          result = *v1;
          if (!*v1)
          {
            return result;
          }

          sub_100077024();
        }

LABEL_44:
        operator delete();
      }

      if (v5 != 1)
      {
        if (v5 != 2)
        {
          return result;
        }

        result = *v1;
        if (!*v1)
        {
          return result;
        }

        sub_100075834();
        goto LABEL_44;
      }
    }

    result = *v1;
    if (!*v1)
    {
      return result;
    }

    sub_100072804();
    goto LABEL_44;
  }

  if (v3 <= 0xFFFFFFED)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v6 = sub_10004FD04(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v10, &v6->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v11);
  }

  v7 = dword_100092BB0[v2];
  if (v7 == 10)
  {
    result = *v1;
    if ((v1[10] & 0x10) != 0)
    {
      if (!result)
      {
        return result;
      }
    }

    else if (!result)
    {
      return result;
    }

    return (*(*result + 8))(result);
  }

  if (v7 == 9)
  {
    v8 = *v1;
    if (v8)
    {
      if (v8[23] < 0)
      {
        operator delete(*v8);
      }

      goto LABEL_44;
    }
  }

  return result;
}

void sub_1000615F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100061618(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= 0x100u)
  {
    sub_100063A48();
  }

  v2 = *(a1 + 16);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 == v3)
  {
    return 0;
  }

  v7 = *(v6 + 32);
  v8 = v6 + 40;
  if (v7 <= a2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100061684(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= 0x100u)
  {
    sub_100063A74();
  }

  v2 = *(a1 + 16);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 == v3)
  {
    return 0;
  }

  v7 = *(v6 + 32);
  v8 = v6 + 40;
  if (v7 <= a2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000616F0()
{
  if ((atomic_load_explicit(&qword_1000B65B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B65B8))
  {
    operator new();
  }

  return qword_1000B65B0;
}

uint64_t sub_1000617A8()
{
  if ((atomic_load_explicit(&qword_1000B65C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B65C8))
  {
    operator new();
  }

  return qword_1000B65C0;
}

char *sub_100061854(unsigned __int8 *a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v5 = a3;
  if (a1[8] == 11 && a1[9] != 1)
  {
    if ((a1[10] & 1) == 0)
    {
      if (*a4 <= a3)
      {
        v5 = sub_10004F000(a4, a3);
      }

      *v5 = 4107;
      if (a2 > 0x7F)
      {
        v5[2] = a2 | 0x80;
        v11 = a2 >> 7;
        if (a2 >> 14)
        {
          v10 = v5 + 4;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          v5[3] = v11;
          v10 = v5 + 4;
        }
      }

      else
      {
        v5[2] = a2;
        v10 = v5 + 3;
      }

      v14 = *a1;
      if ((a1[10] & 0x10) != 0)
      {
        v17 = (*(*v14 + 136))(*a1, 3, v10, a4);
      }

      else
      {
        *v10 = 26;
        v15 = (*(*v14 + 80))(v14);
        if (v15 > 0x7F)
        {
          v10[1] = v15 | 0x80;
          v18 = v15 >> 7;
          if (v15 >> 14)
          {
            v16 = v10 + 3;
            do
            {
              *(v16 - 1) = v18 | 0x80;
              v19 = v18 >> 7;
              ++v16;
              v20 = v18 >> 14;
              v18 >>= 7;
            }

            while (v20);
            *(v16 - 1) = v19;
          }

          else
          {
            v10[2] = v18;
            v16 = v10 + 3;
          }
        }

        else
        {
          v10[1] = v15;
          v16 = v10 + 2;
        }

        v17 = (*(*v14 + 96))(v14, v16, a4);
      }

      v21 = v17;
      if (*a4 <= v17)
      {
        v21 = sub_10004F000(a4, v17);
      }

      *v21 = 12;
      return v21 + 1;
    }
  }

  else
  {
    sub_10004FCEC(v23, 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 2076);
    v8 = sub_10004FD04(v23, "Invalid message set extension.");
    sub_10004FE40(&v22, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v23);
    return sub_10005D940(a1, a2, v5, a4);
  }

  return v5;
}

void sub_100061AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unint64_t sub_100061AC8(uint64_t **a1, int a2)
{
  if (*(a1 + 8) == 11 && *(a1 + 9) != 1)
  {
    if (*(a1 + 10))
    {
      return 0;
    }

    else
    {
      v4 = ((9 * (__clz(a2 | 1) ^ 0x1F) + 73) >> 6) + 4;
      v5 = **a1;
      if ((*(a1 + 10) & 0x10) != 0)
      {
        v6 = (*(v5 + 88))();
      }

      else
      {
        v6 = (*(v5 + 72))();
      }

      return v4 + v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
    }
  }

  else
  {

    return sub_100060638(a1, a2);
  }
}

uint64_t sub_100061BB8(uint64_t a1)
{
  v7 = 0;
  v1 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    sub_1000634A0(*v1, v1 + 1, &v7);
    return v7;
  }

  else if (*(a1 + 10))
  {
    v2 = 0;
    v3 = &v1[8 * *(a1 + 10)];
    v4 = *(a1 + 16);
    do
    {
      v5 = *v4;
      v4 += 8;
      v2 += sub_100061AC8(v1 + 1, v5);
      v1 = v4;
    }

    while (v4 != v3);
  }

  else
  {
    return 0;
  }

  return v2;
}

unint64_t sub_100061C60(uint64_t a1)
{
  v1 = (*(*a1 + 88))(a1);
  if (v1 >> 31)
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v2 = sub_10004FD04(v5, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    sub_10004FE40(&v4, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v5);
  }

  return v1;
}

void sub_100061CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100061D0C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      do
      {
        v3 = *v2;
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

unsigned __int8 *sub_100061D80(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = sub_100061350(v3 + 40);
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

_DWORD *sub_100061DF0(void *a1, void *a2, _DWORD *a3)
{
  if (a1 != a2)
  {
    do
    {
      if ((*(a1 + 50) & 1) == 0)
      {
        ++*a3;
      }

      v3 = a1[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = a1[2];
          v5 = *v4 == a1;
          a1 = v4;
        }

        while (!v5);
      }

      a1 = v4;
    }

    while (v4 != a2);
  }

  return a3;
}

uint64_t *sub_100061E6C(uint64_t *a1)
{
  sub_100062BC8(a1);

  return sub_10003D264(a1);
}

uint64_t sub_100061EA4(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_100061F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100061F84(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100061FB0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_100062070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100062090(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_100062150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100062170(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return sub_1000621C4(result, a2);
  }

  v3 = *v2;
  if (v3 >= *(result + 12))
  {
    return sub_1000621C4(result, a2);
  }

  v4 = v2 + 2;
  v5 = *(result + 8);
  if (v5 < v3)
  {
    *&v4[2 * v3] = *&v4[2 * v5];
  }

  *&v4[2 * v5] = a2;
  *(result + 8) = v5 + 1;
  ++**(result + 16);
  return result;
}

uint64_t sub_1000621C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {
    v5 = *(result + 12);
    goto LABEL_11;
  }

  v5 = *(result + 8);
  v6 = *(result + 12);
  if (v5 == v6)
  {
LABEL_11:
    result = sub_10007BCC0(result, v5 + 1);
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 != v6)
  {
    if (v5 >= v7)
    {
      v9 = v7 + 1;
      goto LABEL_13;
    }

    *&v4[2 * v7 + 2] = *&v4[2 * v5 + 2];
LABEL_12:
    v4 = *(v3 + 16);
    v9 = *v4 + 1;
LABEL_13:
    *v4 = v9;
    goto LABEL_14;
  }

  result = *&v4[2 * v5 + 2];
  if (result)
  {
    v8 = *v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    result = (*(*result + 8))(result);
    v4 = *(v3 + 16);
  }

LABEL_14:
  v10 = *(v3 + 8);
  *(v3 + 8) = v10 + 1;
  *&v4[2 * v10 + 2] = a2;
  return result;
}

uint64_t sub_1000622A4(uint64_t a1)
{
  if (*a1)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2030);
    v2 = sub_10004FD04(v15, "CHECK failed: GetArena() == NULL: ");
    v3 = sub_10004FD04(v2, "ReleaseLast() called on a RepeatedPtrField that is on an arena, ");
    v4 = sub_10004FD04(v3, "with a type that does not implement MergeFrom. This is unsafe; ");
    v5 = sub_10004FD04(v4, "please implement MergeFrom for your type.");
    sub_10004FE40(&v14, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  v6 = *(a1 + 8);
  if (v6 <= 0)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2040);
    v7 = sub_10004FD04(v15, "CHECK failed: (current_size_) > (0): ");
    sub_10004FE40(&v14, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
    v6 = *(a1 + 8);
  }

  v8 = *(a1 + 16);
  v9 = *v8;
  v10 = *v8 - 1;
  *v8 = v10;
  v11 = v8 + 2;
  v12 = v6 - 1;
  *(a1 + 8) = v12;
  result = *&v11[2 * v12];
  if (v6 < v9)
  {
    *&v11[2 * v12] = *&v11[2 * v10];
  }

  return result;
}

void sub_1000623B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1000623D0(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = sub_100051A18(v3 + 40);
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t *sub_100062440(void *a1, void *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_100059A88(a3, *(v5 + 8), v5 + 5);
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

std::string::value_type *sub_1000624C4(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 >= a3)
  {
    v6 = a3;
    std::string::assign(this, __s, a3);
    return &__s[v6];
  }

  else
  {

    return sub_10008DFD8();
  }
}

char *sub_100062530(uint64_t a1, char *a2, __int128 *a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v7;
  }

  else
  {
    result = a2 + 1;
  }

  v8 = *(a1 + 8);
  v9 = v8 - result;
  if (v5 <= v8 - result)
  {
LABEL_15:
    v15 = &result[v5];
    v16 = a3[1];
    v18 = *a3;
    v19 = v16;
    v20 = *(a3 + 4);
    result = sub_100062780(result, v15, &v18);
    if (v15 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      v10 = a3[1];
      v18 = *a3;
      v19 = v10;
      v20 = *(a3 + 4);
      result = sub_100062780(result, v8, &v18);
      if (!result)
      {
        break;
      }

      v11 = result - *(a1 + 8);
      if (v11 >= 0x11)
      {
        sub_10004FCEC(&v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v12 = sub_10004FD04(&v18, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_10004FE40(&v21, &v12->__r_.__value_.__l.__data_);
        sub_10004FE48(&v18);
      }

      v13 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        v23 = 0;
        v22 = 0;
        v21 = **(a1 + 8);
        v17 = a3[1];
        v18 = *a3;
        v19 = v17;
        v20 = *(a3 + 4);
        if (sub_100062780(&v21 + v11, &v21 + v13, &v18) != &v21 + v13)
        {
          return 0;
        }

        return (*(a1 + 8) + v13);
      }

      v5 = v5 - v9 - v11;
      if (v5 <= 0)
      {
        sub_10004FCEC(&v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v14 = sub_10004FD04(&v18, "CHECK failed: (size) > (0): ");
        sub_10004FE40(&v21, &v14->__r_.__value_.__l.__data_);
        sub_10004FE48(&v18);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_10006D6B8(a1);
      if (!result)
      {
        return result;
      }

      result += v11;
      v8 = *(a1 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        goto LABEL_15;
      }
    }
  }

  return result;
}

char *sub_100062780(char *a1, unint64_t a2, unsigned int **a3)
{
  v3 = a1;
  while (v3 < a2)
  {
    v6 = *v3;
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = (v3[1] << 7) + v6;
      v6 = (v7 - 128);
      if (v3[1] < 0)
      {
        v3 = sub_10006E2A0(v3, (v7 - 128));
        if (!v3)
        {
          return v3;
        }

        v6 = v8;
      }

      else
      {
        v3 += 2;
      }
    }

    else
    {
      ++v3;
    }

    if ((a3[1])(a3[2], v6))
    {
      v9 = *a3;
      v10 = **a3;
      if (v10 == (*a3)[1])
      {
        v11 = v10 + 1;
        sub_100072364(*a3, v10 + 1);
        *(sub_100072B4C(v9) + 4 * v10) = v6;
      }

      else
      {
        *(sub_100072B4C(*a3) + 4 * v10) = v6;
        v11 = v10 + 1;
      }

      *v9 = v11;
    }

    else
    {
      v12 = *(a3 + 8);
      v13 = a3[3];
      if (*v13)
      {
        v14 = ((*v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v14 = sub_10003CF68(v13);
      }

      sub_10006E0C0(v12, v6, v14);
    }
  }

  return v3;
}

uint64_t sub_1000628AC(uint64_t a1, int a2, unsigned int a3, char **a4, uint64_t *a5)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  *(a1 + 80) = -NAN;
  *(a1 + 88) = a2;
  *(a1 + 92) = 0x80000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_1000468AC(v8, a5);
  *a4 = sub_100062920(a1, v8[0], v8[1]);
  return a1;
}

char *sub_100062920(uint64_t a1, char *__src, int64_t __n)
{
  *(a1 + 84) = 0;
  if (__n >= 17)
  {
    *(a1 + 28) = 16;
    v6 = &__src[__n - 16];
    *a1 = v6;
    *(a1 + 8) = v6;
    *(a1 + 16) = a1 + 40;
    if (*(a1 + 72) != 1)
    {
      return __src;
    }

    v7 = 2;
    v8 = __src;
    goto LABEL_6;
  }

  v8 = (a1 + 40);
  memcpy((a1 + 40), __src, __n);
  *(a1 + 28) = 0;
  *a1 = &v8[__n];
  *(a1 + 8) = &v8[__n];
  *(a1 + 16) = 0;
  if (*(a1 + 72) == 1)
  {
    v7 = __src - v8;
LABEL_6:
    *(a1 + 72) = v7;
  }

  return v8;
}

char **sub_1000629D4(unsigned __int8 *a1, unsigned __int8 *a2, char **a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    v8 = *a3;
    do
    {
      v8 = sub_100061854(v7 + 40, *(v7 + 8), v8, a4);
      *a3 = v8;
      v9 = *(v7 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != a2);
  }

  return a3;
}

void *sub_100062A6C(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += sub_100060638(v5 + 5, *(v5 + 8));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_100062AF8(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_10004FD04(v7, "CHECK failed: (n) >= (0): ");
    sub_10004FE40(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_10004FE48(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 16) + 8);
    do
    {
      v4 = *v3++;
      result = (*(*v4 + 40))(v4);
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_100062BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100062BC8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          (*(**v3 + 8))(*v3);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_100062C54(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100062D28(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_100062DC0(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_100062DC0(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_100062F68(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_100062FEC(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *sub_100062FEC(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_100063060(v6, a2);
  return v3;
}

uint64_t *sub_100063060(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t sub_1000633E0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100071044(result + 96);
    sub_1000787D8(v1 + 80);
    sub_100079FE0(v1 + 64);
    sub_100077024(v1 + 48);
    sub_100074030(v1 + 32);
    sub_100075834(v1 + 16);
    sub_100072804(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_100063460(uint64_t result)
{
  if (result)
  {
    sub_10007B360(result);

    operator delete();
  }

  return result;
}

void *sub_1000634A0(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += sub_100061AC8(v5 + 5, *(v5 + 8));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_10006353C(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    sub_100019B78(a2, *(a2 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_100063ACC(uint64_t a1, unint64_t a2, void *__s2, int64_t __n, _DWORD *a5)
{
  v8 = a1;
  v9 = a1 + 24 * a2;
  if (a2)
  {
    v10 = a2;
    do
    {
      v11 = v10 >> 1;
      v12 = v8 + 24 * (v10 >> 1);
      v13 = *(v12 + 8);
      if (v13 >= __n)
      {
        v14 = __n;
      }

      else
      {
        v14 = *(v12 + 8);
      }

      v15 = memcmp(*v12, __s2, v14);
      if (v15 < 0 || (!v15 ? (v16 = v13 < __n) : (v16 = 0), v16))
      {
        v11 = v10 + ~v11;
        v8 = v12 + 24;
      }

      v10 = v11;
    }

    while (v11);
  }

  if (v8 == v9 || *(v8 + 8) != __n || __n >= 1 && *v8 != __s2 && memcmp(*v8, __s2, __n))
  {
    return 0;
  }

  *a5 = *(v8 + 16);
  return 1;
}

uint64_t sub_100063BB8(uint64_t a1, int *a2, unint64_t a3, int a4)
{
  v4 = &a2[a3];
  v5 = a2;
  if (a3)
  {
    v5 = a2;
    do
    {
      v6 = &v5[a3 >> 1];
      v7 = a4;
      if (*v6 != -1)
      {
        v7 = *(a1 + 24 * *v6 + 16);
      }

      v8 = v6 + 1;
      if (v7 >= a4)
      {
        a3 >>= 1;
      }

      else
      {
        a3 += ~(a3 >> 1);
      }

      if (v7 < a4)
      {
        v5 = v8;
      }
    }

    while (a3);
  }

  if (v5 == v4 || *(a1 + 24 * *v5 + 16) != a4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v5 - a2) >> 2;
  }
}

uint64_t sub_100063C3C(uint64_t a1, int *a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v8 = *a2++;
      sub_10004FF88((a1 + 24 * v8), a4);
      sub_10006CFB0(sub_100063CE0, a4);
      a4 += 24;
      --v5;
    }

    while (v5);
  }

  return 1;
}

void sub_100063CE0(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_100063CF4()
{
  if ((atomic_load_explicit(&qword_1000B65E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B65E8))
  {
    qword_1000B6A48 = 0;
    unk_1000B6A50 = 0;
    qword_1000B6A58 = 0;
    sub_10006CFB0(sub_100063CE0, &qword_1000B6A48);
    atomic_store(1u, byte_1000B6A60);

    __cxa_guard_release(&qword_1000B65E8);
  }
}

uint64_t sub_100063DA0(unint64_t a1)
{
  if (*(a1 + 23) < 0 && (*a1 >= a1 ? (v1 = *a1 >= a1 + 24) : (v1 = 1), v1))
  {
    return (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100063DD4(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 96))(a1, *(a2 + 64), a2);
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_100063E24(uint64_t a1, uint64_t a2)
{
  sub_100087640(v6, *a2, 0x7FFFFFFF, -1);
  sub_10004F828(v7, v6, 1);
  v7[58] = *(a2 + 8);
  v8 = (*(*a1 + 96))(a1, v8, v7);
  v4 = sub_10004E88C(v7, v8);
  *a2 += v4 - v9;
  return sub_10004F860(v7);
}

void sub_100063F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004F860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100063F28(uint64_t result, unsigned int *a2, int a3, void *a4)
{
  if (a3 >= 1)
  {
    v23 = v4;
    v24 = v5;
    v8 = result;
    v9 = a3;
    do
    {
      result = a2[3];
      v10 = *a2;
      v11 = (v8 + v10);
      switch(result)
      {
        case 0:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_108;
          }

          break;
        case 1:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_134;
          }

          break;
        case 2:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_124;
          }

          break;
        case 3:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_80;
          }

          break;
        case 4:
        case 13:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_14;
          }

          break;
        case 5:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_108;
          }

          break;
        case 6:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_134;
          }

          break;
        case 7:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_71;
          }

          break;
        case 8:
        case 11:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_12;
          }

          break;
        case 9:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_90;
          }

          break;
        case 10:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_103;
          }

          break;
        case 12:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_75;
          }

          break;
        case 14:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_134;
          }

          break;
        case 15:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_108;
          }

          break;
        case 16:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_119;
          }

          break;
        case 17:
          if ((*(v8 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_128;
          }

          break;
        case 20:
          if (*v11 != 0.0)
          {
            goto LABEL_108;
          }

          break;
        case 21:
          if (*v11 != 0.0)
          {
            goto LABEL_134;
          }

          break;
        case 22:
          if (*v11)
          {
LABEL_124:
            v20 = a2[1];
            goto LABEL_81;
          }

          break;
        case 23:
          if (*v11)
          {
LABEL_80:
            v20 = a2[1];
            goto LABEL_81;
          }

          break;
        case 24:
        case 33:
          if (*v11)
          {
LABEL_14:
            v15 = a2[1];
            goto LABEL_19;
          }

          break;
        case 25:
          if (*v11)
          {
            goto LABEL_108;
          }

          break;
        case 26:
          if (*v11)
          {
            goto LABEL_134;
          }

          break;
        case 27:
          if (*v11)
          {
            goto LABEL_71;
          }

          break;
        case 28:
        case 31:
          v12 = *v11 & 0xFFFFFFFFFFFFFFFELL;
          v13 = *(v12 + 23);
          if (v13 < 0)
          {
            v13 = *(v12 + 8);
          }

          if (v13)
          {
LABEL_12:
            v14 = a2[1];
            goto LABEL_17;
          }

          break;
        case 29:
          if (*v11)
          {
            goto LABEL_90;
          }

          break;
        case 30:
          if (*v11)
          {
LABEL_103:
            result = sub_1000669A4((v8 + v10), a2, a4);
          }

          break;
        case 32:
          if (*v11)
          {
LABEL_75:
            v16 = a2[1];
            goto LABEL_76;
          }

          break;
        case 34:
          if (*v11)
          {
            goto LABEL_134;
          }

          break;
        case 35:
          if (*v11)
          {
            goto LABEL_108;
          }

          break;
        case 36:
          if (*v11)
          {
LABEL_119:
            v19 = a2[1];
            goto LABEL_120;
          }

          break;
        case 37:
          if (*v11)
          {
LABEL_128:
            v21 = a2[1];
            goto LABEL_129;
          }

          break;
        case 40:
          result = sub_100065BD4((v8 + v10), a2, a4);
          break;
        case 41:
          result = sub_100065DB8((v8 + v10), a2, a4);
          break;
        case 42:
          result = sub_100065F30((v8 + v10), a2, a4);
          break;
        case 43:
          result = sub_100066050((v8 + v10), a2, a4);
          break;
        case 44:
        case 53:
          result = sub_100066170((v8 + v10), a2, a4);
          break;
        case 45:
          result = sub_100066290((v8 + v10), a2, a4);
          break;
        case 46:
          result = sub_100066408((v8 + v10), a2, a4);
          break;
        case 47:
          result = sub_1000665EC((v8 + v10), a2, a4);
          break;
        case 48:
        case 51:
          result = sub_100066764((v8 + v10), a2, a4);
          break;
        case 49:
          result = sub_1000668FC((v8 + v10), a2, a4);
          break;
        case 50:
          result = sub_100066A00(v8 + v10, a2, a4);
          break;
        case 52:
          result = sub_100066A90((v8 + v10), a2, a4);
          break;
        case 54:
          result = sub_100066BB0((v8 + v10), a2, a4);
          break;
        case 55:
          result = sub_100066D28((v8 + v10), a2, a4);
          break;
        case 56:
          result = sub_100066EA0((v8 + v10), a2, a4);
          break;
        case 57:
          result = sub_100066FC0((v8 + v10), a2, a4);
          break;
        case 60:
          result = sub_100065C88((v8 + v10), a2, a4);
          break;
        case 61:
          result = sub_100065E6C((v8 + v10), a2, a4);
          break;
        case 62:
          result = sub_100065FB4((v8 + v10), a2, a4);
          break;
        case 63:
          result = sub_1000660D4((v8 + v10), a2, a4);
          break;
        case 64:
        case 73:
          result = sub_1000661F4((v8 + v10), a2, a4);
          break;
        case 65:
          result = sub_100066344((v8 + v10), a2, a4);
          break;
        case 66:
          result = sub_1000664BC((v8 + v10), a2, a4);
          break;
        case 67:
          result = sub_1000666A0((v8 + v10), a2, a4);
          break;
        case 68:
        case 69:
        case 70:
        case 71:
          result = sub_1000667F0(v8 + v10, a2);
          break;
        case 72:
          result = sub_100066B14((v8 + v10), a2, a4);
          break;
        case 74:
          result = sub_100066C64((v8 + v10), a2, a4);
          break;
        case 75:
          result = sub_100066DDC((v8 + v10), a2, a4);
          break;
        case 76:
          result = sub_100066F24((v8 + v10), a2, a4);
          break;
        case 77:
          result = sub_100067044((v8 + v10), a2, a4);
          break;
        case 80:
          if (*(v8 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_108;
          }

          break;
        case 81:
          if (*(v8 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_134;
          }

          break;
        case 82:
          v20 = a2[1];
          if (*(v8 + a2[2]) == v20 >> 3)
          {
            goto LABEL_81;
          }

          break;
        case 83:
          v20 = a2[1];
          if (*(v8 + a2[2]) == v20 >> 3)
          {
LABEL_81:
            v22 = v20;
            sub_100069858(&v22, a4);
            result = sub_1000698F4(v11, a4);
          }

          break;
        case 84:
        case 93:
          v15 = a2[1];
          if (*(v8 + a2[2]) == v15 >> 3)
          {
LABEL_19:
            v22 = v15;
            sub_100069858(&v22, a4);
            result = sub_100069990(v11, a4);
          }

          break;
        case 85:
          if (*(v8 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_108;
          }

          break;
        case 86:
          if (*(v8 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_134;
          }

          break;
        case 87:
          if (*(v8 + a2[2]) == a2[1] >> 3)
          {
LABEL_71:
            result = sub_100066580((v8 + v10), a2, a4);
          }

          break;
        case 88:
        case 91:
          v14 = a2[1];
          if (*(v8 + a2[2]) == v14 >> 3)
          {
LABEL_17:
            v22 = v14;
            sub_100069858(&v22, a4);
            result = sub_100069A2C(*v11 & 0xFFFFFFFFFFFFFFFELL, a4);
          }

          break;
        case 89:
          if (*(v8 + a2[2]) == a2[1] >> 3)
          {
LABEL_90:
            result = sub_100066888((v8 + v10), a2, a4);
          }

          break;
        case 90:
          if (*(v8 + a2[2]) == a2[1] >> 3)
          {
            v22 = a2[1];
            sub_100069858(&v22, a4);
            result = sub_100069B80(*v11, *(a2 + 2), a4);
          }

          break;
        case 92:
          v16 = a2[1];
          if (*(v8 + a2[2]) == v16 >> 3)
          {
LABEL_76:
            v22 = v16;
            sub_100069858(&v22, a4);
            result = sub_100069858(v11, a4);
          }

          break;
        case 94:
          if (*(v8 + a2[2]) == a2[1] >> 3)
          {
LABEL_134:
            result = sub_100065D4C((v8 + v10), a2, a4);
          }

          break;
        case 95:
          if (*(v8 + a2[2]) == a2[1] >> 3)
          {
LABEL_108:
            result = sub_100065B68((v8 + v10), a2, a4);
          }

          break;
        case 96:
          v19 = a2[1];
          if (*(v8 + a2[2]) == v19 >> 3)
          {
LABEL_120:
            v22 = v19;
            sub_100069858(&v22, a4);
            result = sub_100069C60(v11, a4);
          }

          break;
        case 97:
          v21 = a2[1];
          if (*(v8 + a2[2]) == v21 >> 3)
          {
LABEL_129:
            v22 = v21;
            sub_100069858(&v22, a4);
            result = sub_100069D04(v11, a4);
          }

          break;
        case 100:
          v17 = a2[1];
          v18 = a2[2];
          result = (*(a2 + 2))(v8);
          break;
        default:
          result = sub_100065AA4(result);
          break;
      }

      a2 += 6;
      --v9;
    }

    while (v9);
  }

  return result;
}

int *sub_100064958(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_100064988(a1, a2, a3, *(a5 + 8), *a5);
  *a5 = result;
  return result;
}

int *sub_100064988(uint64_t a1, uint64_t a2, int a3, unsigned __int8 a4, int *a5)
{
  v54[0] = a5;
  v54[1] = a4;
  if (a3 >= 1)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      v10 = (a2 + 24 * v8);
      v11 = (a1 + *v10);
      switch(v10[3])
      {
        case 0u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v12 = v10[1];
            v13 = v54[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v54[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = (v13 + 2);
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v17 = v14 >> 14;
                v14 >>= 7;
              }

              while (v17);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 1u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v27 = v10[1];
            v28 = v54[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v54[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v43 = v29 >> 14;
                v29 >>= 7;
              }

              while (v43);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 2u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_202;
          }

          break;
        case 3u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_202;
          }

          break;
        case 4u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_219;
          }

          break;
        case 5u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v12 = v10[1];
            v13 = v54[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v54[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = (v13 + 2);
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v41 = v14 >> 14;
                v14 >>= 7;
              }

              while (v41);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 6u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v27 = v10[1];
            v28 = v54[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v54[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v42 = v29 >> 14;
                v29 >>= 7;
              }

              while (v42);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 7u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v18 = v10[1];
            v19 = v54[0];
            if (v18 <= 0x7F)
            {
              goto LABEL_113;
            }

            *v54[0] = v18 | 0x80;
            v20 = v18 >> 7;
            if (v18 >> 14)
            {
              v21 = v19 + 2;
              do
              {
                *(v21 - 1) = v20 | 0x80;
                v22 = v20 >> 7;
                ++v21;
                v48 = v20 >> 14;
                v20 >>= 7;
              }

              while (v48);
              goto LABEL_233;
            }

            goto LABEL_226;
          }

          break;
        case 8u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_224;
          }

          break;
        case 9u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_206;
          }

          break;
        case 0xAu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_174;
          }

          break;
        case 0xBu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_224;
          }

          break;
        case 0xCu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_179;
          }

          break;
        case 0xDu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_219;
          }

          break;
        case 0xEu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v27 = v10[1];
            v28 = v54[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v54[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v47 = v29 >> 14;
                v29 >>= 7;
              }

              while (v47);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0xFu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v12 = v10[1];
            v13 = v54[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v54[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = (v13 + 2);
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v50 = v14 >> 14;
                v14 >>= 7;
              }

              while (v50);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x10u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_197;
          }

          break;
        case 0x11u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_209;
          }

          break;
        case 0x14u:
          if (*v11 != 0.0)
          {
            v12 = v10[1];
            v13 = v54[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v54[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = (v13 + 2);
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v35 = v14 >> 14;
                v14 >>= 7;
              }

              while (v35);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x15u:
          if (*v11 != 0.0)
          {
            v27 = v10[1];
            v28 = v54[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v54[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v45 = v29 >> 14;
                v29 >>= 7;
              }

              while (v45);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x16u:
          if (*v11)
          {
            goto LABEL_202;
          }

          break;
        case 0x17u:
          if (*v11)
          {
            goto LABEL_202;
          }

          break;
        case 0x18u:
          if (*v11)
          {
            goto LABEL_219;
          }

          break;
        case 0x19u:
          if (*v11)
          {
            v12 = v10[1];
            v13 = v54[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v54[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = (v13 + 2);
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v40 = v14 >> 14;
                v14 >>= 7;
              }

              while (v40);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x1Au:
          if (*v11)
          {
            v27 = v10[1];
            v28 = v54[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v54[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v46 = v29 >> 14;
                v29 >>= 7;
              }

              while (v46);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x1Bu:
          if (*v11)
          {
            v18 = v10[1];
            v19 = v54[0];
            if (v18 <= 0x7F)
            {
              goto LABEL_113;
            }

            *v54[0] = v18 | 0x80;
            v20 = v18 >> 7;
            if (v18 >> 14)
            {
              v21 = v19 + 2;
              do
              {
                *(v21 - 1) = v20 | 0x80;
                v22 = v20 >> 7;
                ++v21;
                v39 = v20 >> 14;
                v20 >>= 7;
              }

              while (v39);
              goto LABEL_233;
            }

            goto LABEL_226;
          }

          break;
        case 0x1Cu:
          v33 = *v11 & 0xFFFFFFFFFFFFFFFELL;
          if ((*(v33 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v33 + 8))
            {
              goto LABEL_224;
            }
          }

          else if (*(v33 + 23))
          {
            goto LABEL_224;
          }

          break;
        case 0x1Du:
          if (*v11)
          {
            goto LABEL_206;
          }

          break;
        case 0x1Eu:
          if (*v11)
          {
            goto LABEL_174;
          }

          break;
        case 0x1Fu:
          v44 = *v11 & 0xFFFFFFFFFFFFFFFELL;
          if ((*(v44 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v44 + 8))
            {
              goto LABEL_224;
            }
          }

          else if (*(v44 + 23))
          {
            goto LABEL_224;
          }

          break;
        case 0x20u:
          if (*v11)
          {
            goto LABEL_179;
          }

          break;
        case 0x21u:
          if (*v11)
          {
            goto LABEL_219;
          }

          break;
        case 0x22u:
          if (*v11)
          {
            v27 = v10[1];
            v28 = v54[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v54[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v32 = v29 >> 14;
                v29 >>= 7;
              }

              while (v32);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x23u:
          if (*v11)
          {
            v12 = v10[1];
            v13 = v54[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v54[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = (v13 + 2);
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v38 = v14 >> 14;
                v14 >>= 7;
              }

              while (v38);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x24u:
          if (*v11)
          {
            goto LABEL_197;
          }

          break;
        case 0x25u:
          if (*v11)
          {
            goto LABEL_209;
          }

          break;
        case 0x28u:
          sub_1000670E0(v11, a2 + 24 * v8, v54);
          break;
        case 0x29u:
          sub_1000672DC(v11, a2 + 24 * v8, v54);
          break;
        case 0x2Au:
          sub_100067540(v11, a2 + 24 * v8, v54);
          break;
        case 0x2Bu:
          sub_10006772C(v11, a2 + 24 * v8, v54);
          break;
        case 0x2Cu:
        case 0x35u:
          sub_100067980(v11, a2 + 24 * v8, v54);
          break;
        case 0x2Du:
          sub_100067B6C(v11, a2 + 24 * v8, v54);
          break;
        case 0x2Eu:
          sub_100067D68(v11, a2 + 24 * v8, v54);
          break;
        case 0x2Fu:
          sub_100067F64(v11, a2 + 24 * v8, v54);
          break;
        case 0x30u:
        case 0x33u:
          sub_1000681F0(v11, a2 + 24 * v8, v54);
          break;
        case 0x31u:
          sub_100068454(v11, a2 + 24 * v8, v54);
          break;
        case 0x32u:
          sub_1000685F8(v11, a2 + 24 * v8, v54);
          break;
        case 0x34u:
          sub_100068734(v11, a2 + 24 * v8, v54);
          break;
        case 0x36u:
          sub_100068920(v11, a2 + 24 * v8, v54);
          break;
        case 0x37u:
          sub_100068B1C(v11, a2 + 24 * v8, v54);
          break;
        case 0x38u:
          sub_100068DA0(v11, a2 + 24 * v8, v54);
          break;
        case 0x39u:
          sub_10006901C(v11, a2 + 24 * v8, v54);
          break;
        case 0x3Cu:
          sub_1000671B0(v11, a2 + 24 * v8, v54);
          break;
        case 0x3Du:
          sub_1000673AC(v11, a2 + 24 * v8, v54);
          break;
        case 0x3Eu:
          sub_100067608(v11, a2 + 24 * v8, v54);
          break;
        case 0x3Fu:
          sub_1000677F4(v11, a2 + 24 * v8, v54);
          break;
        case 0x40u:
        case 0x49u:
          sub_100067A48(v11, a2 + 24 * v8, v54);
          break;
        case 0x41u:
          sub_100067C3C(v11, a2 + 24 * v8, v54);
          break;
        case 0x42u:
          sub_100067E38(v11, a2 + 24 * v8, v54);
          break;
        case 0x43u:
          sub_100068034(v11, a2 + 24 * v8, v54);
          break;
        case 0x44u:
        case 0x45u:
        case 0x46u:
        case 0x47u:
          sub_1000682C4(v11, a2 + 24 * v8);
          break;
        case 0x48u:
          sub_1000687FC(v11, a2 + 24 * v8, v54);
          break;
        case 0x4Au:
          sub_1000689F0(v11, a2 + 24 * v8, v54);
          break;
        case 0x4Bu:
          sub_100068BEC(v11, a2 + 24 * v8, v54);
          break;
        case 0x4Cu:
          sub_100068E6C(v11, a2 + 24 * v8, v54);
          break;
        case 0x4Du:
          sub_1000690E8(v11, a2 + 24 * v8, v54);
          break;
        case 0x50u:
          v12 = v10[1];
          if (*(a1 + v10[2]) == v12 >> 3)
          {
            v13 = v54[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v54[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = (v13 + 2);
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v26 = v14 >> 14;
                v14 >>= 7;
              }

              while (v26);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x51u:
          v27 = v10[1];
          if (*(a1 + v10[2]) == v27 >> 3)
          {
            v28 = v54[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v54[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v34 = v29 >> 14;
                v29 >>= 7;
              }

              while (v34);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x52u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
            goto LABEL_202;
          }

          break;
        case 0x53u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_202:
            sub_1000674D8(v11, a2 + 24 * v8, v54);
          }

          break;
        case 0x54u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
            goto LABEL_219;
          }

          break;
        case 0x55u:
          v12 = v10[1];
          if (*(a1 + v10[2]) == v12 >> 3)
          {
            v13 = v54[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v54[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = (v13 + 2);
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v25 = v14 >> 14;
                v14 >>= 7;
              }

              while (v25);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x56u:
          v27 = v10[1];
          if (*(a1 + v10[2]) == v27 >> 3)
          {
            v28 = v54[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v54[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v37 = v29 >> 14;
                v29 >>= 7;
              }

              while (v37);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x57u:
          v18 = v10[1];
          if (*(a1 + v10[2]) == v18 >> 3)
          {
            v19 = v54[0];
            if (v18 <= 0x7F)
            {
LABEL_113:
              *v19 = v18;
              v21 = v19 + 1;
            }

            else
            {
              *v54[0] = v18 | 0x80;
              v20 = v18 >> 7;
              if (v18 >> 14)
              {
                v21 = v19 + 2;
                do
                {
                  *(v21 - 1) = v20 | 0x80;
                  v22 = v20 >> 7;
                  ++v21;
                  v23 = v20 >> 14;
                  v20 >>= 7;
                }

                while (v23);
LABEL_233:
                *(v21 - 1) = v22;
              }

              else
              {
LABEL_226:
                *(v19 + 1) = v20;
                v21 = v19 + 2;
              }
            }

            *v21 = *v11;
            v49 = (v21 + 1);
            goto LABEL_243;
          }

          break;
        case 0x58u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
            goto LABEL_224;
          }

          break;
        case 0x59u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_206:
            sub_10006835C(v11, a2 + 24 * v8, v54);
          }

          break;
        case 0x5Au:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_174:
            sub_10006858C(v11, a2 + 24 * v8, v54);
          }

          break;
        case 0x5Bu:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_224:
            sub_100068160(v11, a2 + 24 * v8, v54);
          }

          break;
        case 0x5Cu:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_179:
            sub_1000686CC(v11, a2 + 24 * v8, v54);
          }

          break;
        case 0x5Du:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_219:
            sub_100067918(v11, a2 + 24 * v8, v54);
          }

          break;
        case 0x5Eu:
          v27 = v10[1];
          if (*(a1 + v10[2]) == v27 >> 3)
          {
            v28 = v54[0];
            if (v27 > 0x7F)
            {
              *v54[0] = v27 | 0x80;
              v29 = v27 >> 7;
              if (v27 >> 14)
              {
                v30 = (v28 + 2);
                do
                {
                  *(v30 - 1) = v29 | 0x80;
                  v31 = v29 >> 7;
                  v30 = (v30 + 1);
                  v51 = v29 >> 14;
                  v29 >>= 7;
                }

                while (v51);
LABEL_241:
                *(v30 - 1) = v31;
              }

              else
              {
LABEL_230:
                *(v28 + 1) = v29;
                v30 = (v28 + 2);
              }
            }

            else
            {
LABEL_214:
              *v28 = v27;
              v30 = (v28 + 1);
            }

            *v30 = *v11;
            v49 = v30 + 1;
            goto LABEL_243;
          }

          break;
        case 0x5Fu:
          v12 = v10[1];
          if (*(a1 + v10[2]) == v12 >> 3)
          {
            v13 = v54[0];
            if (v12 <= 0x7F)
            {
LABEL_188:
              *v13 = v12;
              v15 = (v13 + 1);
            }

            else
            {
              *v54[0] = v12 | 0x80;
              v14 = v12 >> 7;
              if (v12 >> 14)
              {
                v15 = (v13 + 2);
                do
                {
                  *(v15 - 1) = v14 | 0x80;
                  v16 = v14 >> 7;
                  v15 = (v15 + 1);
                  v36 = v14 >> 14;
                  v14 >>= 7;
                }

                while (v36);
LABEL_237:
                *(v15 - 1) = v16;
              }

              else
              {
LABEL_228:
                *(v13 + 1) = v14;
                v15 = (v13 + 2);
              }
            }

            *v15 = *v11;
            v49 = (v15 + 1);
LABEL_243:
            v54[0] = v49;
          }

          break;
        case 0x60u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_197:
            sub_100068D18(v11, a2 + 24 * v8, v54);
          }

          break;
        case 0x61u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_209:
            sub_100068F94(v11, a2 + 24 * v8, v54);
          }

          break;
        case 0x64u:
          sub_100087640(v53, v54[0], 0x7FFFFFFF, -1);
          sub_10004F828(v55, v53, 1);
          v55[58] = a4;
          (*(v10 + 2))(a1, *v10, v10[1], v10[2], v55);
          v24 = sub_10004E88C(v55, v56);
          v54[0] = (v54[0] + v24 - v57);
          sub_10004F860(v55);
          break;
        default:
          sub_100065AA4(v10[3]);
          break;
      }

      ++v8;
    }

    while (v8 != v9);
    return v54[0];
  }

  return a5;
}