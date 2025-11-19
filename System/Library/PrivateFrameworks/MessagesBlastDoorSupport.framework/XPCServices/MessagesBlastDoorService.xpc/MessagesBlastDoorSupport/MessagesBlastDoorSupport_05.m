unint64_t sub_100092DB4()
{
  result = qword_1000FDA88;
  if (!qword_1000FDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDA88);
  }

  return result;
}

double sub_100092E08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100099FF8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10001D804(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_100092E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100099FF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v8 = *v6;
  v7 = v6[1];

  return v8;
}

uint64_t _AttributedString.init(fromNSAttributedString:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C3D24();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 string];
  if (!v8)
  {
    sub_1000C5224();
    v8 = sub_1000C51F4();
  }

  sub_1000C5224();
  v22 = &_swiftEmptyArrayStorage;
  v21 = 0;
  result = [v8 length];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  v16 = v4;
  v17 = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = &v21;
  *(v11 + 24) = &v22;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100046D10;
  *(v12 + 24) = v11;
  aBlock[4] = sub_100099F44;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009771C;
  aBlock[3] = &unk_1000F56D8;
  v13 = _Block_copy(aBlock);

  [a1 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v13}];
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v21)
  {
    swift_errorRetain();

    swift_willThrow();
  }

  else
  {

    v14 = v19;
    sub_1000C3D14();

    if (!v14)
    {
      (*(v18 + 32))(v17, v7, v16);
    }
  }
}

uint64_t sub_1000931CC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1000C5984();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_10009A3F4(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1000934CC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1000C5984();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10009A978(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1000937CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v168 = a6;
  v162 = a5;
  v161 = a4;
  v166 = a1;
  v8 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v137 - v10;
  v12 = sub_1000C14E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v137 - v18;
  v20 = sub_1000124CC(&qword_1000FD9F0, &qword_1000CF478);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v137 - v22;
  result = sub_1000C1324();
  if (result != a2)
  {
    v165 = a2 + a3;
    if (!__OFADD__(a2, a3))
    {
      v163 = v23;
      v144 = v19;
      v145 = v17;
      v148 = v12;
      v149 = v11;
      v164 = a2;
      v26 = v166 + 64;
      v25 = *(v166 + 64);
      v27 = 1 << *(v166 + 32);
      v167 = MBDIMFileTransferAttributeName;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v160 = MBDIMLivePhotoAttributeName;
      v29 = v28 & v25;
      v30 = (v27 + 63) >> 6;
      v159 = MBDIMBaseWritingDirectionAttributeName;
      v158 = MBDIMMessagePartAttributeName;
      v157 = MBDIMBreadcrumbTextOptionFlags;
      v156 = MBDIMBreadcrumbTextMarkerAttributeName;
      v155 = MBDIMMentionConfirmedMention;
      v154 = MBDIMTextEffectAttributeName;
      v153 = MBDIMTextBoldAttributeName;
      v152 = MBDIMTextItalicAttributeName;
      v151 = MBDIMTextUnderlineAttributeName;
      v150 = MBDIMTextStrikethroughAttributeName;
      v147 = (v13 + 56);
      v146 = MBDIMLinkAttributeName;
      v143 = (v13 + 32);
      v142 = (v13 + 16);
      v141 = (v13 + 8);
      v140 = MBDIMLinkIsRichLinkAttributeName;

      v31 = 0;
      v139 = xmmword_1000CACB0;
      if (!v29)
      {
        goto LABEL_10;
      }

      while (1)
      {
        v32 = v31;
LABEL_18:
        v35 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v36 = v35 | (v32 << 6);
        v37 = *(*(v166 + 48) + 8 * v36);
        sub_10001D804(*(v166 + 56) + 32 * v36, &v170);
        *&v174 = v37;
        sub_10001D8C8(&v170, (&v174 + 8));
        v38 = v37;
LABEL_19:
        v177[0] = v174;
        v177[1] = v175;
        v178 = v176;
        v39 = v174;
        if (!v174)
        {
        }

        sub_10001D8C8((v177 + 8), &v173);
        v176 = 0;
        v174 = 0u;
        v175 = 0u;
        v40 = sub_1000C5224();
        v42 = v41;
        if (v40 == sub_1000C5224() && v42 == v43)
        {
          break;
        }

        v44 = sub_1000C5C04();

        if (v44)
        {
          goto LABEL_24;
        }

        v52 = sub_1000C5224();
        v54 = v53;
        if (v52 == sub_1000C5224() && v54 == v55)
        {
          break;
        }

        v56 = sub_1000C5C04();

        if (v56)
        {
          goto LABEL_24;
        }

        v57 = sub_1000C5224();
        v59 = v58;
        if (v57 == sub_1000C5224() && v59 == v60)
        {

LABEL_47:
          sub_10001D804(&v173, &v170);
          sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_26;
          }

          v65 = v169;
          sub_1000C54B4();
          *(&v171 + 1) = sub_1000C4A14();
          v172 = sub_10009B540(&qword_1000FDB28, &type metadata accessor for BaseWritingDirectionAttribute);
          sub_10002E5DC(&v170);
          sub_1000C4A04();
          sub_100018F90(&v174, &qword_1000FDAC8, &qword_1000CF6C8);

          goto LABEL_45;
        }

        v64 = sub_1000C5C04();

        if (v64)
        {
          goto LABEL_47;
        }

        v66 = sub_1000C5224();
        v68 = v67;
        if (v66 == sub_1000C5224() && v68 == v69)
        {

LABEL_53:
          sub_10001D804(&v173, &v170);
          sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
          if (swift_dynamicCast())
          {
            v71 = v169;
            sub_1000C58A4();
            *(&v171 + 1) = sub_1000C40C4();
            v172 = sub_10009B540(&qword_1000FDB20, &type metadata accessor for MessagePartAttribute);
            sub_10002E5DC(&v170);
            sub_1000C40B4();
            goto LABEL_55;
          }

          goto LABEL_26;
        }

        v70 = sub_1000C5C04();

        if (v70)
        {
          goto LABEL_53;
        }

        v72 = sub_1000C5224();
        v74 = v73;
        if (v72 == sub_1000C5224() && v74 == v75)
        {

LABEL_61:
          sub_10001D804(&v173, &v170);
          sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_26;
          }

          v71 = v169;
          sub_1000C58A4();
          *(&v171 + 1) = sub_1000C4B84();
          v172 = sub_10009B540(&qword_1000FDB18, &type metadata accessor for BreadcrumbTextOptionFlagsAttribute);
          sub_10002E5DC(&v170);
          sub_1000C4B74();
          goto LABEL_55;
        }

        v76 = sub_1000C5C04();

        if (v76)
        {
          goto LABEL_61;
        }

        v77 = sub_1000C5224();
        v79 = v78;
        if (v77 == sub_1000C5224() && v79 == v80)
        {

LABEL_67:
          sub_10001D804(&v173, &v170);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_26;
          }

          *(&v171 + 1) = sub_1000C4A34();
          v172 = sub_10009B540(&qword_1000FDB10, &type metadata accessor for BreadcrumbTextMarkerAttribute);
          sub_10002E5DC(&v170);
          sub_1000C4A24();
          goto LABEL_56;
        }

        v81 = sub_1000C5C04();

        if (v81)
        {
          goto LABEL_67;
        }

        v83 = sub_1000C5224();
        v85 = v84;
        if (v83 == sub_1000C5224() && v85 == v86)
        {

LABEL_73:
          sub_10001D804(&v173, &v170);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_26;
          }

          *(&v171 + 1) = sub_1000C3B44();
          v172 = sub_10009B540(&qword_1000FDB08, &type metadata accessor for MentionAttribute);
          sub_10002E5DC(&v170);
          sub_1000C3B34();
          goto LABEL_56;
        }

        v87 = sub_1000C5C04();

        if (v87)
        {
          goto LABEL_73;
        }

        v88 = sub_1000C5224();
        v90 = v89;
        if (v88 == sub_1000C5224() && v90 == v91)
        {

LABEL_79:
          sub_10001D804(&v173, &v170);
          sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_26;
          }

          v71 = v169;
          sub_1000C58A4();
          *(&v171 + 1) = sub_1000C4014();
          v172 = sub_10009B540(&qword_1000FDB00, &type metadata accessor for TextEffectAttribute);
          sub_10002E5DC(&v170);
          sub_1000C4004();
LABEL_55:

LABEL_56:
          sub_100018F90(&v174, &qword_1000FDAC8, &qword_1000CF6C8);
          sub_100018E0C(&v170, &v174);
          goto LABEL_26;
        }

        v92 = sub_1000C5C04();

        if (v92)
        {
          goto LABEL_79;
        }

        v93 = sub_1000C5224();
        v95 = v94;
        if (v93 == sub_1000C5224() && v95 == v96)
        {

LABEL_85:
          *(&v171 + 1) = sub_1000C3CF4();
          v172 = sub_10009B540(&qword_1000FDAF8, &type metadata accessor for TextBoldAttribute);
          sub_10002E5DC(&v170);
          sub_1000C3CE4();
          goto LABEL_44;
        }

        v97 = sub_1000C5C04();

        if (v97)
        {
          goto LABEL_85;
        }

        v98 = sub_1000C5224();
        v100 = v99;
        if (v98 == sub_1000C5224() && v100 == v101)
        {

LABEL_90:
          *(&v171 + 1) = sub_1000C4034();
          v172 = sub_10009B540(&qword_1000FDAF0, &type metadata accessor for TextItalicAttribute);
          sub_10002E5DC(&v170);
          sub_1000C4024();
          goto LABEL_44;
        }

        v102 = sub_1000C5C04();

        if (v102)
        {
          goto LABEL_90;
        }

        v103 = sub_1000C5224();
        v105 = v104;
        if (v103 == sub_1000C5224() && v105 == v106)
        {

LABEL_95:
          *(&v171 + 1) = sub_1000C4364();
          v172 = sub_10009B540(&qword_1000FDAE8, &type metadata accessor for TextUnderlineAttribute);
          sub_10002E5DC(&v170);
          sub_1000C4354();
          goto LABEL_44;
        }

        v107 = sub_1000C5C04();

        if (v107)
        {
          goto LABEL_95;
        }

        v108 = sub_1000C5224();
        v110 = v109;
        if (v108 == sub_1000C5224() && v110 == v111)
        {

LABEL_100:
          *(&v171 + 1) = sub_1000C4694();
          v172 = sub_10009B540(&qword_1000FDAE0, &type metadata accessor for TextStrikethroughAttribute);
          sub_10002E5DC(&v170);
          sub_1000C4684();
LABEL_44:
          sub_100018F90(&v174, &qword_1000FDAC8, &qword_1000CF6C8);
LABEL_45:
          v174 = v170;
          v175 = v171;
          v176 = v172;
          goto LABEL_26;
        }

        v112 = sub_1000C5C04();

        if (v112)
        {
          goto LABEL_100;
        }

        v113 = sub_1000C5224();
        v115 = v114;
        if (v113 == sub_1000C5224() && v115 == v116)
        {

LABEL_105:
          sub_10001D804(&v173, &v170);
          v118 = swift_dynamicCast();
          v119 = *v147;
          if ((v118 & 1) == 0)
          {
            v123 = v149;
            v119(v149, 1, 1, v148);
            sub_100018F90(v123, &qword_1000FC3E8, &unk_1000C9E10);
            goto LABEL_26;
          }

          v120 = v149;
          v121 = v148;
          v119(v149, 0, 1, v148);
          v122 = v144;
          (*v143)(v144, v120, v121);
          (*v142)(v145, v122, v121);
          *(&v171 + 1) = sub_1000C2854();
          v172 = sub_10009B540(&qword_1000FDAD8, &type metadata accessor for LinkAttribute);
          sub_10002E5DC(&v170);
          sub_1000C2844();
          (*v141)(v122, v121);
          goto LABEL_56;
        }

        v117 = sub_1000C5C04();

        if (v117)
        {
          goto LABEL_105;
        }

        v124 = sub_1000C5224();
        v126 = v125;
        if (v124 == sub_1000C5224() && v126 == v127)
        {
        }

        else
        {
          v128 = sub_1000C5C04();

          if ((v128 & 1) == 0)
          {
            sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
            v138 = sub_1000C5714();
            sub_1000124CC(&qword_1000FC348, qword_1000C9550);
            v129 = swift_allocObject();
            *(v129 + 16) = v139;
            v130 = sub_1000C5224();
            v132 = v131;
            *(v129 + 56) = &type metadata for String;
            v133 = sub_100014FBC();
            *(v129 + 32) = v130;
            *(v129 + 40) = v132;
            *(v129 + 96) = &type metadata for Int;
            v134 = v164;
            *(v129 + 64) = v133;
            *(v129 + 72) = v134;
            *(v129 + 136) = &type metadata for Int;
            *(v129 + 144) = &protocol witness table for Int;
            v135 = v165;
            *(v129 + 104) = &protocol witness table for Int;
            *(v129 + 112) = v135;
            sub_1000C5554();
            v136 = v138;
            sub_1000C1A44();

            goto LABEL_26;
          }
        }

        sub_10001D804(&v173, &v170);
        sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v71 = v169;
          [v169 BOOLValue];
          *(&v171 + 1) = sub_1000C1CB4();
          v172 = sub_10009B540(&qword_1000FDAD0, &type metadata accessor for LinkIsRichLinkAttribute);
          sub_10002E5DC(&v170);
          sub_1000C1CA4();
          goto LABEL_55;
        }

LABEL_26:
        sub_100018F28(&v174, &v170, &qword_1000FDAC8, &qword_1000CF6C8);
        if (*(&v171 + 1))
        {
          sub_100018F90(&v170, &qword_1000FDAC8, &qword_1000CF6C8);
          result = sub_100018F28(&v174, &v170, &qword_1000FDAC8, &qword_1000CF6C8);
          if (!*(&v171 + 1))
          {
            goto LABEL_119;
          }

          v46 = v168;
          v47 = *v168;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v46 = v47;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v47 = sub_10004576C(0, v47[2] + 1, 1, v47);
            *v168 = v47;
          }

          v50 = v47[2];
          v49 = v47[3];
          if (v50 >= v49 >> 1)
          {
            v82 = sub_10004576C((v49 > 1), v50 + 1, 1, v47);
            *v168 = v82;
          }

          sub_100018F90(&v174, &qword_1000FDAC8, &qword_1000CF6C8);
          sub_100015F68(&v173);
          v51 = *v168;
          *(v51 + 16) = v50 + 1;
          result = sub_100018E0C(&v170, v51 + 40 * v50 + 32);
          if (!v29)
          {
LABEL_10:
            if (v30 <= v31 + 1)
            {
              v33 = v31 + 1;
            }

            else
            {
              v33 = v30;
            }

            v34 = v33 - 1;
            while (1)
            {
              v32 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                break;
              }

              if (v32 >= v30)
              {
                v29 = 0;
                v176 = 0;
                v31 = v34;
                v174 = 0u;
                v175 = 0u;
                goto LABEL_19;
              }

              v29 = *(v26 + 8 * v32);
              ++v31;
              if (v29)
              {
                v31 = v32;
                goto LABEL_18;
              }
            }

            __break(1u);
            goto LABEL_118;
          }
        }

        else
        {

          sub_100018F90(&v174, &qword_1000FDAC8, &qword_1000CF6C8);
          sub_100015F68(&v173);
          result = sub_100018F90(&v170, &qword_1000FDAC8, &qword_1000CF6C8);
          if (!v29)
          {
            goto LABEL_10;
          }
        }
      }

LABEL_24:
      sub_10001D804(&v173, &v170);
      sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
      if (swift_dynamicCast())
      {
        v45 = v163;
        FileTransferAttribute.init(fileTransferDict:range:)(v169, v164, v165, v163);
        v61 = sub_1000C41D4();
        v62 = *(v61 - 8);
        if ((*(*(v61 - 8) + 48))(v45, 1, v61) != 1)
        {
          *(&v171 + 1) = v61;
          v172 = sub_10009B540(&qword_1000FDB30, &type metadata accessor for FileTransferAttribute);
          v63 = sub_10002E5DC(&v170);
          (*(v62 + 32))(v63, v45, v61);
          goto LABEL_44;
        }

        sub_100018F90(&v174, &qword_1000FDAC8, &qword_1000CF6C8);
        sub_100018F90(v45, &qword_1000FD9F0, &qword_1000CF478);
        v170 = 0u;
        v171 = 0u;
        v172 = 0;
        goto LABEL_45;
      }

      goto LABEL_26;
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
  }

  return result;
}

uint64_t FileTransferAttribute.init(fileTransferDict:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v297 = a3;
  v296 = a2;
  v326 = sub_1000C41D4();
  v322 = *(v326 - 8);
  v7 = *(v322 + 64);
  __chkstk_darwin(v326);
  v298 = &v264 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000124CC(&qword_1000FDA90, &qword_1000CF698);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v295 = &v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v288 = &v264 - v14;
  __chkstk_darwin(v13);
  v299 = &v264 - v15;
  v287 = sub_1000C41F4();
  v286 = *(v287 - 8);
  v16 = *(v286 + 64);
  __chkstk_darwin(v287);
  v289 = &v264 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = sub_1000C43B4();
  v311 = *(v313 - 8);
  v18 = *(v311 + 64);
  __chkstk_darwin(v313);
  v293 = &v264 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C4274();
  v308 = *(v20 - 8);
  v309 = v20;
  v21 = *(v308 + 64);
  __chkstk_darwin(v20);
  v292 = &v264 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = sub_1000C44D4();
  v307 = *(v310 - 8);
  v23 = *(v307 + 64);
  __chkstk_darwin(v310);
  v301 = &v264 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000124CC(&qword_1000FDA98, &qword_1000CF6A0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v303 = &v264 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v304 = &v264 - v30;
  __chkstk_darwin(v29);
  v305 = &v264 - v31;
  v32 = sub_1000124CC(&qword_1000FDAA0, &qword_1000CF6A8);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v300 = &v264 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v264 - v37;
  __chkstk_darwin(v36);
  v312 = &v264 - v39;
  v40 = sub_1000124CC(&qword_1000FDAA8, &qword_1000CF6B0);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v291 = &v264 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v46 = &v264 - v45;
  __chkstk_darwin(v44);
  v315 = &v264 - v47;
  v48 = sub_1000124CC(&qword_1000FDAB0, &qword_1000CF6B8);
  v49 = *(*(v48 - 8) + 64);
  v50 = __chkstk_darwin(v48 - 8);
  v306 = &v264 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v290 = &v264 - v53;
  v54 = __chkstk_darwin(v52);
  v314 = &v264 - v55;
  __chkstk_darwin(v54);
  v57 = &v264 - v56;
  v58 = sub_1000C4674();
  v318 = *(v58 - 8);
  v319 = v58;
  v59 = *(v318 + 64);
  v60 = __chkstk_darwin(v58);
  v302 = &v264 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v60);
  v64 = &v264 - v63;
  __chkstk_darwin(v62);
  v66 = &v264 - v65;
  v316 = sub_1000C4184();
  v67 = *(v316 - 8);
  v68 = *(v67 + 64);
  v69 = __chkstk_darwin(v316);
  v294 = &v264 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v317 = &v264 - v71;
  v72 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_15;
  }

  v285 = v67;
  v320 = a4;
  v321 = v4;
  v74 = sub_100099FF8(v72, v73);
  v76 = v75;

  if ((v76 & 1) == 0 || (sub_10001D804(*(a1 + 56) + 32 * v74, v325), sub_1000124CC(&qword_1000FDAB8, &qword_1000CF6C0), (swift_dynamicCast() & 1) == 0))
  {

    a4 = v320;
LABEL_15:
    sub_1000C5534();
    sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
    v89 = sub_1000C5714();
    sub_1000C1A54();

    v90 = 1;
    v91 = v326;
    v92 = v322;
    return (*(v92 + 56))(a4, v90, 1, v91);
  }

  if (!*(v323 + 16))
  {

    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  v283 = a1;
  v275 = "GeneratePreviewImage";
  v277 = v323;
  v77 = *(v323 + 32);
  v78 = sub_1000C5224();
  v80 = v79;
  if (*(v77 + 16))
  {
    v81 = v78;

    v82 = v77;
    v83 = sub_100099FF8(v81, v80);
    v85 = v84;

    if (v85)
    {
      sub_10001D804(*(v82 + 56) + 32 * v83, v325);
      v86 = swift_dynamicCast();
      v87 = v323;
      if (!v86)
      {
        v87 = 0;
      }

      v273 = v87;
      if (v86)
      {
        v88 = v324;
      }

      else
      {
        v88 = 0;
      }

      v278 = v88;
    }

    else
    {
      v273 = 0;
      v278 = 0;
    }

    v77 = v82;
  }

  else
  {

    v273 = 0;
    v278 = 0;
  }

  v94 = sub_1000C5224();
  if (*(v77 + 16))
  {
    v96 = v77;
    v97 = sub_100099FF8(v94, v95);
    v99 = v98;

    if (v99)
    {
      sub_10001D804(*(v96 + 56) + 32 * v97, v325);
      v100 = swift_dynamicCast();
      v101 = v323;
      if (!v100)
      {
        v101 = 0;
      }

      v270 = v101;
      if (v100)
      {
        v102 = v324;
      }

      else
      {
        v102 = 0;
      }

      v280 = v102;
    }

    else
    {
      v270 = 0;
      v280 = 0;
    }

    v77 = v96;
  }

  else
  {

    v270 = 0;
    v280 = 0;
  }

  v103 = sub_1000C5224();
  if (*(v77 + 16))
  {
    v105 = v77;
    v106 = sub_100099FF8(v103, v104);
    v108 = v107;

    if (v108)
    {
      sub_10001D804(*(v105 + 56) + 32 * v106, v325);
      v109 = swift_dynamicCast();
      v110 = v323;
      if (!v109)
      {
        v110 = 0;
      }

      v269 = v110;
      if (v109)
      {
        v111 = v324;
      }

      else
      {
        v111 = 0;
      }

      v279 = v111;
    }

    else
    {
      v269 = 0;
      v279 = 0;
    }

    v77 = v105;
  }

  else
  {

    v269 = 0;
    v279 = 0;
  }

  v112 = sub_1000C5224();
  if (*(v77 + 16))
  {
    v114 = v77;
    v115 = sub_100099FF8(v112, v113);
    v117 = v116;

    if (v117)
    {
      sub_10001D804(*(v114 + 56) + 32 * v115, v325);
      v118 = swift_dynamicCast();
      v119 = v323;
      if (!v118)
      {
        v119 = 0;
      }

      v274 = v119;
      if (v118)
      {
        v120 = v324;
      }

      else
      {
        v120 = 0;
      }

      v276 = v120;
    }

    else
    {
      v274 = 0;
      v276 = 0;
    }

    v77 = v114;
  }

  else
  {

    v274 = 0;
    v276 = 0;
  }

  v121 = sub_1000C5224();
  v123 = v283;
  v124 = *(v283 + 16);
  v284 = v77;
  if (v124)
  {
    v125 = sub_100099FF8(v121, v122);
    v127 = v126;

    if (v127)
    {
      sub_10001D804(*(v123 + 56) + 32 * v125, v325);
      v128 = swift_dynamicCast();
      v129 = v323;
      if (!v128)
      {
        v129 = 0;
      }

      v272 = v129;
      if (v128)
      {
        v130 = v324;
      }

      else
      {
        v130 = 0;
      }

      v282 = v130;
    }

    else
    {
      v272 = 0;
      v282 = 0;
    }

    v77 = v284;
  }

  else
  {

    v272 = 0;
    v282 = 0;
  }

  v131 = sub_1000C5224();
  if (*(v123 + 16))
  {
    v133 = sub_100099FF8(v131, v132);
    v135 = v134;

    if (v135)
    {
      sub_10001D804(*(v123 + 56) + 32 * v133, v325);
      v136 = swift_dynamicCast();
      v137 = v323;
      if (!v136)
      {
        v137 = 0;
      }

      v271 = v137;
      if (v136)
      {
        v138 = v324;
      }

      else
      {
        v138 = 0;
      }

      v281 = v138;
    }

    else
    {
      v271 = 0;
      v281 = 0;
    }

    v77 = v284;
  }

  else
  {

    v271 = 0;
    v281 = 0;
  }

  v139 = sub_1000C5224();
  if (!*(v77 + 16))
  {

    goto LABEL_85;
  }

  v141 = v77;
  v142 = sub_100099FF8(v139, v140);
  v144 = v143;

  if ((v144 & 1) == 0)
  {
LABEL_85:
    v146 = 0;
    v147 = 0;
    goto LABEL_86;
  }

  sub_10001D804(*(v141 + 56) + 32 * v142, v325);
  v145 = swift_dynamicCast();
  if (v145)
  {
    v146 = v323;
  }

  else
  {
    v146 = 0;
  }

  if (v145)
  {
    v147 = v324;
  }

  else
  {
    v147 = 0;
  }

LABEL_86:

  v149 = v321;
  AudioMessageAttachmentInfo.init(audioMessageDict:)(v148, v57);
  v150 = v149;
  if (v149)
  {
  }

  v151 = v285;
  v265 = v146;
  v268 = v147;
  v152 = v318;
  v153 = v319;
  v154 = *(v318 + 48);
  v267 = v318 + 48;
  v266 = v154;
  if (v154(v57, 1, v319) != 1)
  {

    (*(v152 + 32))(v66, v57, v153);
    v158 = v317;
    (*(v152 + 16))(v317, v66, v153);
    v159 = v316;
    (*(v151 + 104))(v158, enum case for FileTransferAttribute.AttachmentSubtype.audioMessage(_:), v316);
    (*(v152 + 8))(v66, v153);
    v160 = &_swiftEmptyArrayStorage;
    goto LABEL_92;
  }

  sub_100018F90(v57, &qword_1000FDAB0, &qword_1000CF6B8);
  v155 = sub_100097A60(v277);
  v321 = 0;
  v264 = v155;

  v171 = *(v311 + 56);
  v172 = v315;
  v171(v315, 1, 1, v313);
  if (v276)
  {
    v173 = v321;
    sub_1000C43A4();
    v321 = v173;
    if (v173)
    {
      sub_100018F90(v172, &qword_1000FDAA8, &qword_1000CF6B0);

      v156 = &v310;
LABEL_90:
      v157 = *(v156 - 32);
    }

    sub_100018F90(v172, &qword_1000FDAA8, &qword_1000CF6B0);
    v171(v46, 0, 1, v313);
    sub_10001D860(v46, v172, &qword_1000FDAA8, &qword_1000CF6B0);
  }

  v176 = v312;
  (*(v308 + 56))(v312, 1, 1, v309);
  v177 = MBDIMFileTransferStickerInfoKey;
  v178 = sub_1000C5224();
  v180 = v319;
  if (!*(v283 + 16))
  {

    v184 = v318;
LABEL_115:
    v188 = v314;
    v189 = v284;
    goto LABEL_116;
  }

  v181 = sub_100099FF8(v178, v179);
  v183 = v182;

  v184 = v318;
  if ((v183 & 1) == 0)
  {
    goto LABEL_115;
  }

  sub_10001D804(*(v283 + 56) + 32 * v181, v325);
  sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_115;
  }

  v185 = v321;
  StickerAttachmentInfo.init(stickerDict:)(v323, v38);
  v321 = v185;
  v186 = v314;
  if (!v185)
  {
    sub_100018F90(v176, &qword_1000FDAA0, &qword_1000CF6A8);
    v189 = v284;
    v184 = v318;
    sub_10001D860(v38, v176, &qword_1000FDAA0, &qword_1000CF6A8);
    v188 = v186;
LABEL_116:
    v190 = *(v184 + 56);
    v190(v188, 1, 1, v180);
    v191 = sub_1000C5224();
    v193 = *(v189 + 16);
    v277 = v177;
    if (v193)
    {
      v194 = sub_100099FF8(v191, v192);
      v196 = v195;

      if (v196)
      {
        sub_10001D804(*(v189 + 56) + 32 * v194, v325);

        v197 = swift_dynamicCast();
        v198 = v307;
        if (v197)
        {
          v199 = v321;
          sub_1000C4664();
          v321 = v199;
          v200 = v314;
          if (v199)
          {

            sub_100018F90(v200, &qword_1000FDAB0, &qword_1000CF6B8);
            v187 = v312;
            goto LABEL_121;
          }

          sub_100018F90(v314, &qword_1000FDAB0, &qword_1000CF6B8);
          v254 = v290;
          (*(v318 + 32))(v290, v64, v180);
          v190(v254, 0, 1, v180);
          v198 = v307;
          sub_10001D860(v254, v200, &qword_1000FDAB0, &qword_1000CF6B8);
        }

LABEL_126:
        v202 = *(v198 + 56);
        v203 = v305;
        v202(v305, 1, 1, v310);
        v151 = v285;
        v158 = v317;
        v204 = v306;
        if (v282)
        {
          if (v281)
          {
            v205 = sub_1000C5224();
            v207 = v283;
            if (*(v283 + 16))
            {
              v208 = sub_100099FF8(v205, v206);
              v210 = v209;

              if (v210)
              {
                sub_10001D804(*(v207 + 56) + 32 * v208, v325);
                sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
                if (swift_dynamicCast())
                {
                  v211 = v323;
                }

                else
                {
                  v211 = 0;
                }
              }

              else
              {
                v211 = 0;
              }

              v198 = v307;
            }

            else
            {

              v211 = 0;
            }

            v239 = v304;
            v240 = v321;
            EmojiImageAttachmentInfo.init(contentIdentifier:shortDescription:stickerDict:)(v272, v282, v271, v281, v211);
            v321 = v240;
            v241 = v315;
            if (v240)
            {

              sub_100018F90(v203, &qword_1000FDA98, &qword_1000CF6A0);
              sub_100018F90(v314, &qword_1000FDAB0, &qword_1000CF6B8);
              sub_100018F90(v312, &qword_1000FDAA0, &qword_1000CF6A8);
              v201 = v241;
              return sub_100018F90(v201, &qword_1000FDAA8, &qword_1000CF6B0);
            }

            sub_100018F90(v203, &qword_1000FDA98, &qword_1000CF6A0);
            v202(v239, 0, 1, v310);
            v212 = v203;
            v151 = v285;
            sub_10001D860(v239, v203, &qword_1000FDA98, &qword_1000CF6A0);
            v204 = v306;
            goto LABEL_139;
          }

          v212 = v203;
          v213 = &v314;
        }

        else
        {
          v212 = v203;
          v213 = &v313;
        }

        v217 = *(v213 - 32);

LABEL_139:
        v218 = v314;
        sub_100018F28(v314, v204, &qword_1000FDAB0, &qword_1000CF6B8);
        v219 = v319;
        v220 = v266(v204, 1, v319);
        v221 = v315;
        v159 = v316;
        if (v220 == 1)
        {
          sub_100018F90(v204, &qword_1000FDAB0, &qword_1000CF6B8);
          v222 = v212;
          v223 = v303;
          sub_100018F28(v212, v303, &qword_1000FDA98, &qword_1000CF6A0);
          v224 = *(v198 + 48);
          v225 = v198;
          v226 = v310;
          v227 = v224(v223, 1, v310);
          v150 = v321;
          if (v227 == 1)
          {
            sub_100018F90(v223, &qword_1000FDA98, &qword_1000CF6A0);
            v228 = v312;
            v229 = v300;
            sub_100018F28(v312, v300, &qword_1000FDAA0, &qword_1000CF6A8);
            v230 = (*(v308 + 48))(v229, 1, v309);
            v161 = v283;
            if (v230 == 1)
            {
              sub_100018F90(v229, &qword_1000FDAA0, &qword_1000CF6A8);
              v231 = v315;
              v232 = v291;
              sub_100018F28(v315, v291, &qword_1000FDAA8, &qword_1000CF6B0);
              v233 = v311;
              if ((*(v311 + 48))(v232, 1, v313) == 1)
              {
                sub_100018F90(v232, &qword_1000FDAA8, &qword_1000CF6B0);
                v234 = v289;
                sub_1000C41E4();
                if (v150)
                {

                  sub_100018F90(v305, &qword_1000FDA98, &qword_1000CF6A0);
                  sub_100018F90(v314, &qword_1000FDAB0, &qword_1000CF6B8);
                  sub_100018F90(v312, &qword_1000FDAA0, &qword_1000CF6A8);
                  return sub_100018F90(v315, &qword_1000FDAA8, &qword_1000CF6B0);
                }

                sub_100018F90(v305, &qword_1000FDA98, &qword_1000CF6A0);
                sub_100018F90(v314, &qword_1000FDAB0, &qword_1000CF6B8);
                sub_100018F90(v312, &qword_1000FDAA0, &qword_1000CF6A8);
                sub_100018F90(v315, &qword_1000FDAA8, &qword_1000CF6B0);
                (*(v286 + 32))(v158, v234, v287);
                v245 = &enum case for FileTransferAttribute.AttachmentSubtype.unspecified(_:);
              }

              else
              {
                sub_100018F90(v305, &qword_1000FDA98, &qword_1000CF6A0);
                sub_100018F90(v314, &qword_1000FDAB0, &qword_1000CF6B8);
                sub_100018F90(v312, &qword_1000FDAA0, &qword_1000CF6A8);
                sub_100018F90(v231, &qword_1000FDAA8, &qword_1000CF6B0);
                v261 = *(v233 + 32);
                v262 = v232;
                v263 = v313;
                v261(v293, v262, v313);
                v261(v158, v293, v263);
                v245 = &enum case for FileTransferAttribute.AttachmentSubtype.livePhoto(_:);
              }
            }

            else
            {
              sub_100018F90(v222, &qword_1000FDA98, &qword_1000CF6A0);
              sub_100018F90(v314, &qword_1000FDAB0, &qword_1000CF6B8);
              sub_100018F90(v228, &qword_1000FDAA0, &qword_1000CF6A8);
              sub_100018F90(v315, &qword_1000FDAA8, &qword_1000CF6B0);
              v242 = v309;
              v319 = *(v308 + 32);
              v243 = v229;
              v244 = v292;
              v319(v292, v243, v309);
              v319(v158, v244, v242);
              v245 = &enum case for FileTransferAttribute.AttachmentSubtype.sticker(_:);
            }

            (*(v151 + 104))(v158, *v245, v159);
            v160 = v264;
LABEL_93:
            v162 = sub_1000C5224();
            if (*(v161 + 16))
            {
              v164 = sub_100099FF8(v162, v163);
              v166 = v165;

              if (v166)
              {
                sub_10001D804(*(v161 + 56) + 32 * v164, v325);
                if (swift_dynamicCast())
                {
                  v167 = v161;
                  v168 = v285;
                  if (!v278 || (v321 = v150, v169 = sub_1000931CC(v273, v278), (v170 & 1) != 0))
                  {

                    sub_1000C4FC4();
                    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion);
                    swift_allocError();
LABEL_124:
                    sub_1000C4FB4();
                    swift_willThrow();
                    return (*(v168 + 8))(v158, v159);
                  }

                  v214 = v169;
                  if (v268)
                  {
                    v215 = sub_1000934CC(v265, v268);
                    if (v216)
                    {

                      sub_1000C4FC4();
                      sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion);
                      swift_allocError();
                      goto LABEL_124;
                    }

                    v318 = v215;
                  }

                  else
                  {
                    v318 = 0;
                  }

                  v246 = sub_1000C5224();
                  v248 = *(v167 + 16);
                  v264 = v160;
                  v319 = v214;
                  if (v248)
                  {
                    v249 = sub_100099FF8(v246, v247);
                    v251 = v250;

                    if (v251)
                    {
                      sub_10001D804(*(v167 + 56) + 32 * v249, v325);

                      sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
                      if (swift_dynamicCast())
                      {
                        v252 = v288;
                        v253 = v321;
                        FileTransferAttribute.ImageInfo.init(imageDict:)(v323, v288);
                        v321 = v253;
                        if (v253)
                        {
                          (*(v285 + 8))(v317, v316);

                          v156 = &v312;
                          goto LABEL_90;
                        }

                        v256 = v299;
                        sub_10001D860(v252, v299, &qword_1000FDA90, &qword_1000CF698);
                        v159 = v316;
                        v158 = v317;
                        goto LABEL_169;
                      }
                    }

                    else
                    {
                    }

                    v159 = v316;
                    v158 = v317;
                  }

                  else
                  {

                    v159 = v316;
                  }

                  v255 = sub_1000C41C4();
                  v256 = v299;
                  (*(*(v255 - 8) + 56))(v299, 1, 1, v255);
LABEL_169:
                  sub_100018F28(v256, v295, &qword_1000FDA90, &qword_1000CF698);
                  v151 = v285;
                  (*(v285 + 16))(v294, v158, v159);
                  v257 = v298;
                  v258 = v321;
                  sub_1000C41A4();
                  if (v258)
                  {
                    sub_100018F90(v256, &qword_1000FDA90, &qword_1000CF698);
                    return (*(v151 + 8))(v158, v159);
                  }

                  sub_100018F90(v256, &qword_1000FDA90, &qword_1000CF698);
                  (*(v151 + 8))(v158, v159);
                  v92 = v322;
                  a4 = v320;
                  v259 = v257;
                  v260 = v326;
                  (*(v322 + 32))(v320, v259, v326);
                  v91 = v260;
                  v90 = 0;
                  return (*(v92 + 56))(a4, v90, 1, v91);
                }

                v174 = &v310;
              }

              else
              {

                v174 = &v300;
              }

              v175 = *(v174 - 32);

              v151 = v285;
            }

            else
            {
            }

            sub_1000C4FC4();
            sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion);
            swift_allocError();
            sub_1000C4FB4();
            swift_willThrow();
            return (*(v151 + 8))(v158, v159);
          }

          sub_100018F90(v222, &qword_1000FDA98, &qword_1000CF6A0);
          sub_100018F90(v314, &qword_1000FDAB0, &qword_1000CF6B8);
          sub_100018F90(v312, &qword_1000FDAA0, &qword_1000CF6A8);
          sub_100018F90(v315, &qword_1000FDAA8, &qword_1000CF6B0);
          v237 = *(v225 + 32);
          v238 = v301;
          v237(v301, v223, v226);
          v237(v158, v238, v226);
          (*(v151 + 104))(v158, enum case for FileTransferAttribute.AttachmentSubtype.emojiImage(_:), v159);
        }

        else
        {
          sub_100018F90(v212, &qword_1000FDA98, &qword_1000CF6A0);
          sub_100018F90(v218, &qword_1000FDAB0, &qword_1000CF6B8);
          sub_100018F90(v312, &qword_1000FDAA0, &qword_1000CF6A8);
          sub_100018F90(v221, &qword_1000FDAA8, &qword_1000CF6B0);
          v235 = *(v318 + 32);
          v236 = v302;
          v235(v302, v204, v219);
          v235(v158, v236, v219);
          (*(v151 + 104))(v158, enum case for FileTransferAttribute.AttachmentSubtype.audioMessage(_:), v159);
          v150 = v321;
        }

        v160 = v264;
LABEL_92:
        v161 = v283;
        goto LABEL_93;
      }
    }

    else
    {
    }

    v198 = v307;
    goto LABEL_126;
  }

  v187 = v176;
LABEL_121:
  sub_100018F90(v187, &qword_1000FDAA0, &qword_1000CF6A8);
  v201 = v315;
  return sub_100018F90(v201, &qword_1000FDAA8, &qword_1000CF6B0);
}

uint64_t sub_10009771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for Key(0);
  sub_10009B540(&qword_1000FC280, type metadata accessor for Key);
  v10 = sub_1000C5194();
  v9(v10, a3, a4, a5);
}

uint64_t AudioMessageAttachmentInfo.init(audioMessageDict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C4674();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C5224();
  if (!*(a1 + 16))
  {

LABEL_8:

    v22 = 1;
    return (*(v6 + 56))(a2, v22, 1, v5);
  }

  v12 = sub_100099FF8(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_10001D804(*(a1 + 56) + 32 * v12, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = v24[2];
  v16 = v24[3];
  v17 = sub_1000C5224();
  if (*(a1 + 16))
  {
    v24[1] = v16;
    v26 = v15;
    v19 = sub_100099FF8(v17, v18);
    v21 = v20;

    if (v21)
    {
      sub_10001D804(*(a1 + 56) + 32 * v19, v25);

      swift_dynamicCast();
    }

    else
    {
    }
  }

  else
  {
  }

  result = sub_1000C4664();
  if (!v2)
  {
    (*(v6 + 32))(a2, v9, v5);
    v22 = 0;
    return (*(v6 + 56))(a2, v22, 1, v5);
  }

  return result;
}

void *sub_100097A60(uint64_t a1)
{
  v3 = sub_1000C4174();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return &_swiftEmptyArrayStorage;
  }

  v12 = (a1 + 32);
  v20[2] = v4 + 8;
  v21 = (v4 + 16);
  v20[1] = v4 + 32;
  v13 = &_swiftEmptyArrayStorage;
  v22 = v8;
  while (1)
  {
    v14 = *v12;

    FileTransferAttribute.AttachmentInfo.init(attributes:)(v15, v10);
    if (v1)
    {
      break;
    }

    (*v21)(v8, v10, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_100045568(0, v13[2] + 1, 1, v13);
    }

    v17 = v13[2];
    v16 = v13[3];
    if (v17 >= v16 >> 1)
    {
      v13 = sub_100045568(v16 > 1, v17 + 1, 1, v13);
    }

    (*(v4 + 8))(v10, v3);
    v13[2] = v17 + 1;
    v18 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17;
    v8 = v22;
    (*(v4 + 32))(v18, v22, v3);
    ++v12;
    if (!--v11)
    {
      return v13;
    }
  }

  return v13;
}

uint64_t StickerAttachmentInfo.init(stickerDict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C4274();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return (*(v6 + 56))(a2, 1, 1, v5);
  }

  v10 = sub_1000C5224();
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v139 = v9;
  v135 = a2;
  v12 = sub_100099FF8(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_10001D804(*(a1 + 56) + 32 * v12, v138);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v16 = v136;
  v15 = v137;
  v17 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_22;
  }

  v133 = v16;
  v134 = v15;
  v19 = sub_100099FF8(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0 || (sub_10001D804(*(a1 + 56) + 32 * v19, v138), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:

LABEL_22:

    sub_1000C5224();
    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  v23 = v136;
  v22 = v137;
  v24 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_21;
  }

  v131 = v23;
  v132 = v22;
  v26 = sub_100099FF8(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_10001D804(*(a1 + 56) + 32 * v26, v138);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  v129 = v137;
  v130 = v136;
  v29 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_31;
  }

  v31 = sub_100099FF8(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_31:
    v127 = 0;
    v128 = 0;
    goto LABEL_32;
  }

  sub_10001D804(*(a1 + 56) + 32 * v31, v138);
  v34 = swift_dynamicCast();
  if (v34)
  {
    v35 = v136;
  }

  else
  {
    v35 = 0;
  }

  if (v34)
  {
    v36 = v137;
  }

  else
  {
    v36 = 0;
  }

  v127 = v36;
  v128 = v35;
LABEL_32:
  v38 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_42;
  }

  v40 = sub_100099FF8(v38, v39);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
LABEL_42:
    v125 = 0;
    v126 = 0;
    goto LABEL_43;
  }

  sub_10001D804(*(a1 + 56) + 32 * v40, v138);
  v43 = swift_dynamicCast();
  if (v43)
  {
    v44 = v136;
  }

  else
  {
    v44 = 0;
  }

  if (v43)
  {
    v45 = v137;
  }

  else
  {
    v45 = 0;
  }

  v125 = v45;
  v126 = v44;
LABEL_43:
  v46 = sub_1000C5224();
  if (*(a1 + 16))
  {
    v48 = sub_100099FF8(v46, v47);
    v50 = v49;

    if (v50)
    {
      sub_10001D804(*(a1 + 56) + 32 * v48, v138);
      if (swift_dynamicCast())
      {
        v124 = sub_1000931CC(v136, v137);
        v123 = v51;
        goto LABEL_49;
      }
    }
  }

  else
  {
  }

  v124 = 0;
  v123 = 1;
LABEL_49:
  v52 = sub_1000C5224();
  if (*(a1 + 16))
  {
    v54 = sub_100099FF8(v52, v53);
    v56 = v55;

    if (v56)
    {
      sub_10001D804(*(a1 + 56) + 32 * v54, v138);
      if (swift_dynamicCast())
      {
        v122 = sub_1000931CC(v136, v137);
        v121 = v57;
        goto LABEL_55;
      }
    }
  }

  else
  {
  }

  v122 = 0;
  v121 = 1;
LABEL_55:
  v58 = sub_1000C5224();
  if (!*(a1 + 16))
  {

LABEL_62:
    v120 = 0;
    v65 = 1;
    goto LABEL_63;
  }

  v60 = sub_100099FF8(v58, v59);
  v62 = v61;

  if ((v62 & 1) == 0)
  {
    goto LABEL_62;
  }

  sub_10001D804(*(a1 + 56) + 32 * v60, v138);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_62;
  }

  v138[0] = 0;
  v63 = sub_10009B378(v136, v137);

  v64 = v138[0];
  if (!v63)
  {
    v64 = 0;
  }

  v120 = v64;
  v65 = !v63;
LABEL_63:
  v119 = v65;
  v66 = sub_1000C5224();
  if (!*(a1 + 16))
  {

LABEL_71:
    v72 = 0;
    v73 = 1;
    goto LABEL_72;
  }

  v68 = sub_100099FF8(v66, v67);
  v70 = v69;

  if ((v70 & 1) == 0)
  {
    goto LABEL_71;
  }

  sub_10001D804(*(a1 + 56) + 32 * v68, v138);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_71;
  }

  v138[0] = 0;
  v71 = sub_10009B378(v136, v137);

  if (v71)
  {
    v72 = v138[0];
  }

  else
  {
    v72 = 0;
  }

  v73 = !v71;
LABEL_72:
  v74 = sub_1000C5224();
  if (!*(a1 + 16))
  {

LABEL_79:
    v80 = 0;
    v81 = 1;
    goto LABEL_80;
  }

  v76 = sub_100099FF8(v74, v75);
  v78 = v77;

  if ((v78 & 1) == 0)
  {
    goto LABEL_79;
  }

  sub_10001D804(*(a1 + 56) + 32 * v76, v138);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_79;
  }

  v138[0] = 0;
  v79 = sub_10009B378(v136, v137);

  v80 = v138[0];
  if (!v79)
  {
    v80 = 0;
  }

  v81 = !v79;
LABEL_80:
  v116 = v73 | v81;
  v82 = ((v73 | v81) & 1) == 0;
  if ((v73 | v81))
  {
    v83 = 0;
  }

  else
  {
    v83 = v72;
  }

  v118 = v83;
  if (!v82)
  {
    v80 = 0;
  }

  v117 = v80;
  v84 = sub_1000C5224();
  if (!*(a1 + 16))
  {

LABEL_92:
    v90 = 0;
    v91 = 1;
    goto LABEL_93;
  }

  v86 = sub_100099FF8(v84, v85);
  v88 = v87;

  if ((v88 & 1) == 0)
  {
    goto LABEL_92;
  }

  sub_10001D804(*(a1 + 56) + 32 * v86, v138);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_92;
  }

  v138[0] = 0;
  v89 = sub_10009B378(v136, v137);

  v90 = v138[0];
  if (!v89)
  {
    v90 = 0;
  }

  v91 = !v89;
LABEL_93:
  v114 = v91;
  v115 = v90;
  v92 = sub_1000C5224();
  if (*(a1 + 16))
  {
    v94 = sub_100099FF8(v92, v93);
    v96 = v95;

    if (v96)
    {
      sub_10001D804(*(a1 + 56) + 32 * v94, v138);
      if (swift_dynamicCast())
      {
        v138[0] = 0;
        v97 = sub_10009B378(v136, v137);

        v98 = !v97;
        goto LABEL_99;
      }
    }
  }

  else
  {
  }

  v98 = 1;
LABEL_99:
  v113 = v98;
  v99 = sub_1000C5224();
  if (*(a1 + 16))
  {
    v101 = sub_100099FF8(v99, v100);
    v103 = v102;

    if (v103)
    {
      sub_10001D804(*(a1 + 56) + 32 * v101, v138);
      if (swift_dynamicCast())
      {
        sub_1000931CC(v136, v137);
        HIDWORD(v112) = v104;
        goto LABEL_105;
      }
    }
  }

  else
  {
  }

  HIDWORD(v112) = 1;
LABEL_105:
  v105 = sub_1000C5224();
  if (*(a1 + 16))
  {
    v107 = sub_100099FF8(v105, v106);
    v109 = v108;

    if (v109)
    {
      sub_10001D804(*(a1 + 56) + 32 * v107, v138);

      if (swift_dynamicCast())
      {
        v110 = v139;
        if (v136 == 49 && v137 == 0xE100000000000000)
        {
        }

        else
        {
          sub_1000C5C04();
        }
      }

      else
      {
        v110 = v139;
      }

      goto LABEL_113;
    }
  }

  else
  {
  }

  v110 = v139;
LABEL_113:
  result = sub_1000C4264();
  if (!v2)
  {
    v111 = v135;
    (*(v6 + 32))(v135, v110, v5);
    return (*(v6 + 56))(v111, 0, 1, v5);
  }

  return result;
}

uint64_t AudioMessageAttachmentInfo.init(transcription:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C4674();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000C4664();
  if (!v1)
  {
    (*(v4 + 32))(a1, v7, v3);
    return (*(v4 + 56))(a1, 0, 1, v3);
  }

  return result;
}

uint64_t EmojiImageAttachmentInfo.init(contentIdentifier:shortDescription:stickerDict:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {

    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
LABEL_19:
    sub_1000C4FB4();
    return swift_willThrow();
  }

  v6 = sub_1000C5224();
  if (!*(a5 + 16))
  {

    goto LABEL_16;
  }

  v8 = sub_100099FF8(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_16:

LABEL_17:

LABEL_18:
    sub_1000C5224();
    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    goto LABEL_19;
  }

  sub_10001D804(*(a5 + 56) + 32 * v8, v32);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v11 = sub_1000C5224();
  if (!*(a5 + 16))
  {
LABEL_24:

    goto LABEL_17;
  }

  v13 = sub_100099FF8(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0 || (sub_10001D804(*(a5 + 56) + 32 * v13, v32), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_17;
  }

  v16 = sub_1000C5224();
  if (!*(a5 + 16))
  {

    goto LABEL_18;
  }

  v18 = sub_100099FF8(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_10001D804(*(a5 + 56) + 32 * v18, v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v21 = sub_1000C5224();
  if (*(a5 + 16))
  {
    v23 = sub_100099FF8(v21, v22);
    v25 = v24;

    if (v25)
    {
      sub_10001D804(*(a5 + 56) + 32 * v23, v32);
      swift_dynamicCast();
    }
  }

  else
  {
  }

  v27 = sub_1000C5224();
  if (!*(a5 + 16))
  {

    goto LABEL_30;
  }

  v29 = sub_100099FF8(v27, v28);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
LABEL_30:

    return sub_1000C44C4();
  }

  sub_10001D804(*(a5 + 56) + 32 * v29, v32);

  swift_dynamicCast();
  return sub_1000C44C4();
}

uint64_t FileTransferAttribute.ImageInfo.init(imageDict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C41C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_12;
  }

  v12 = sub_100099FF8(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_10001D804(*(a1 + 56) + 32 * v12, v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = v30;
  v15 = v31;
  v17 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_12;
  }

  v28 = v16;
  v29 = v15;
  v19 = sub_100099FF8(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {

    goto LABEL_12;
  }

  sub_10001D804(*(a1 + 56) + 32 * v19, v32);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v27 = 1;
    return (*(v6 + 56))(a2, v27, 1, v5);
  }

  v23 = v30;
  v22 = v31;
  v32[0] = 0;
  v24 = sub_10009B378(v28, v29);

  if (!v24)
  {

    goto LABEL_19;
  }

  v32[0] = 0;
  v25 = sub_10009B378(v23, v22);

  if (!v25)
  {
LABEL_19:
    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  result = sub_1000C41B4();
  if (v2)
  {
    return result;
  }

  (*(v6 + 32))(a2, v9, v5);
  v27 = 0;
  return (*(v6 + 56))(a2, v27, 1, v5);
}

unsigned __int8 *FileTransferAttribute.AttachmentInfo.init(attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v67 - v7;
  v9 = sub_1000C14E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v67 - v15;
  v80 = "FileTransferAttribute.ImageInfo";
  v17 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_7;
  }

  v72 = a2;
  v73 = v2;
  v74 = v10;
  v19 = sub_100099FF8(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    sub_1000C5224();
    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  sub_10001D804(*(a1 + 56) + 32 * v19, v78);
  sub_10001D8C8(v78, v79);
  sub_10001D804(v79, v78);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  sub_1000C14C4();

  v22 = v74;
  if ((*(v74 + 48))(v8, 1, v9) == 1)
  {

    sub_100018F90(v8, &qword_1000FC3E8, &unk_1000C9E10);
LABEL_9:
    sub_1000C5224();
    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    return sub_100015F68(v79);
  }

  (*(v22 + 32))(v16, v8, v9);
  v24 = sub_1000C5224();
  if (!*(a1 + 16))
  {
    goto LABEL_39;
  }

  v26 = sub_100099FF8(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_10001D804(*(a1 + 56) + 32 * v26, v78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  v29 = *(&v77[0] + 1);
  v30 = *&v77[0];
  v31 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_40;
  }

  v70 = v30;
  v71 = v29;
  v33 = sub_100099FF8(v31, v32);
  v35 = v34;

  if ((v35 & 1) == 0 || (sub_10001D804(*(a1 + 56) + 32 * v33, v78), (swift_dynamicCast() & 1) == 0))
  {
LABEL_39:

LABEL_40:

LABEL_41:
    sub_1000C5224();
    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
LABEL_42:
    (*(v74 + 8))(v16, v9);
    return sub_100015F68(v79);
  }

  v36 = *(&v77[0] + 1);
  v37 = *&v77[0];
  v38 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_47;
  }

  v67[1] = v37;
  v69 = v36;
  v40 = sub_100099FF8(v38, v39);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
LABEL_47:

    goto LABEL_41;
  }

  sub_10001D804(*(a1 + 56) + 32 * v40, v77);
  sub_10001D8C8(v77, v78);
  sub_10001D804(v78, v77);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_97:

    sub_1000C5224();
    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
LABEL_106:
    sub_1000C4FB4();
    swift_willThrow();
    goto LABEL_107;
  }

  result = v75;
  v43 = HIBYTE(v76) & 0xF;
  v44 = v75 & 0xFFFFFFFFFFFFLL;
  if ((v76 & 0x2000000000000000) != 0)
  {
    v45 = HIBYTE(v76) & 0xF;
  }

  else
  {
    v45 = v75 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {

    goto LABEL_97;
  }

  if ((v76 & 0x1000000000000000) != 0)
  {
    v68 = sub_10009A3F4(v75, v76, 10);
    v61 = v60;

    if (v61)
    {
      goto LABEL_97;
    }

    goto LABEL_99;
  }

  if ((v76 & 0x2000000000000000) == 0)
  {
    if ((v75 & 0x1000000000000000) != 0)
    {
      result = ((v76 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1000C5984();
    }

    v46 = *result;
    if (v46 == 43)
    {
      if (v44 >= 1)
      {
        v43 = v44 - 1;
        if (v44 != 1)
        {
          if (result)
          {
            v68 = 0;
            v52 = result + 1;
            while (1)
            {
              v53 = *v52 - 48;
              if (v53 > 9)
              {
                goto LABEL_93;
              }

              if (!is_mul_ok(v68, 0xAuLL))
              {
                goto LABEL_93;
              }

              v49 = __CFADD__(10 * v68, v53);
              v68 = 10 * v68 + v53;
              if (v49)
              {
                goto LABEL_93;
              }

              ++v52;
              if (!--v43)
              {
                goto LABEL_94;
              }
            }
          }

          goto LABEL_84;
        }

        goto LABEL_93;
      }

      goto LABEL_111;
    }

    if (v46 != 45)
    {
      if (v44)
      {
        if (result)
        {
          v68 = 0;
          while (1)
          {
            v56 = *result - 48;
            if (v56 > 9)
            {
              goto LABEL_93;
            }

            if (!is_mul_ok(v68, 0xAuLL))
            {
              goto LABEL_93;
            }

            v49 = __CFADD__(10 * v68, v56);
            v68 = 10 * v68 + v56;
            if (v49)
            {
              goto LABEL_93;
            }

            ++result;
            if (!--v44)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }

LABEL_93:
      v68 = 0;
      LOBYTE(v43) = 1;
      goto LABEL_94;
    }

    if (v44 >= 1)
    {
      v43 = v44 - 1;
      if (v44 != 1)
      {
        if (result)
        {
          v68 = 0;
          v47 = result + 1;
          while (1)
          {
            v48 = *v47 - 48;
            if (v48 > 9)
            {
              goto LABEL_93;
            }

            if (!is_mul_ok(v68, 0xAuLL))
            {
              goto LABEL_93;
            }

            v49 = 10 * v68 >= v48;
            v68 = 10 * v68 - v48;
            if (!v49)
            {
              goto LABEL_93;
            }

            ++v47;
            if (!--v43)
            {
              goto LABEL_94;
            }
          }
        }

LABEL_84:
        v68 = 0;
LABEL_85:
        LOBYTE(v43) = 0;
LABEL_94:
        LOBYTE(v75) = v43;
        v59 = v43;

        if (v59)
        {
          goto LABEL_97;
        }

LABEL_99:
        v62 = sub_1000C5224();
        if (*(a1 + 16))
        {
          v64 = sub_100099FF8(v62, v63);
          v66 = v65;

          if (v66)
          {
            sub_10001D804(*(a1 + 56) + 32 * v64, v77);

            if (swift_dynamicCast())
            {
              (*(v74 + 16))(v14, v16, v9);
              sub_1000C4164();
LABEL_107:
              sub_100015F68(v78);
              goto LABEL_42;
            }

            goto LABEL_105;
          }
        }

        else
        {
        }

LABEL_105:

        sub_1000C5224();
        sub_1000C4FC4();
        sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion);
        swift_allocError();
        goto LABEL_106;
      }

      goto LABEL_93;
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  *&v77[0] = v75;
  *(&v77[0] + 1) = v76 & 0xFFFFFFFFFFFFFFLL;
  if (v75 != 43)
  {
    if (v75 != 45)
    {
      if (v43)
      {
        v68 = 0;
        v57 = v77;
        while (1)
        {
          v58 = *v57 - 48;
          if (v58 > 9)
          {
            break;
          }

          if (!is_mul_ok(v68, 0xAuLL))
          {
            break;
          }

          v49 = __CFADD__(10 * v68, v58);
          v68 = 10 * v68 + v58;
          if (v49)
          {
            break;
          }

          ++v57;
          if (!--v43)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_93;
    }

    if (v43)
    {
      if (--v43)
      {
        v68 = 0;
        v50 = v77 + 1;
        while (1)
        {
          v51 = *v50 - 48;
          if (v51 > 9)
          {
            break;
          }

          if (!is_mul_ok(v68, 0xAuLL))
          {
            break;
          }

          v49 = 10 * v68 >= v51;
          v68 = 10 * v68 - v51;
          if (!v49)
          {
            break;
          }

          ++v50;
          if (!--v43)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_93;
    }

    goto LABEL_110;
  }

  if (v43)
  {
    if (--v43)
    {
      v68 = 0;
      v54 = v77 + 1;
      while (1)
      {
        v55 = *v54 - 48;
        if (v55 > 9)
        {
          break;
        }

        if (!is_mul_ok(v68, 0xAuLL))
        {
          break;
        }

        v49 = __CFADD__(10 * v68, v55);
        v68 = 10 * v68 + v55;
        if (v49)
        {
          break;
        }

        ++v54;
        if (!--v43)
        {
          goto LABEL_94;
        }
      }
    }

    goto LABEL_93;
  }

LABEL_112:
  __break(1u);
  return result;
}

uint64_t sub_100099F44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100099F6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_100099F84(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000124CC(&qword_1000FD870, &qword_1000CEEF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_100099FF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000C5CB4();
  sub_1000C52C4();
  v6 = sub_1000C5CD4();

  return sub_10009A168(a1, a2, v6);
}

unint64_t sub_10009A070(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1000C5CB4();
  type metadata accessor for CFString(0);
  sub_10009B540(&qword_1000FDAC0, type metadata accessor for CFString);
  sub_1000C16D4();
  v4 = sub_1000C5CD4();

  return sub_10009A220(a1, v4);
}

unint64_t sub_10009A124(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C58F4(*(v2 + 40));

  return sub_10009A32C(a1, v4);
}

unint64_t sub_10009A168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000C5C04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10009A220(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10009B540(&qword_1000FDAC0, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000C16C4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10009A32C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100046C50(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000C5904();
      sub_100046CAC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unsigned __int8 *sub_10009A3F4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1000C5364();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10009AF04();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_1000C5984();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10009A978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1000C5364();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10009AF04();
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
      result = sub_1000C5984();
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

uint64_t sub_10009AF04()
{
  v0 = sub_1000C5374();
  v4 = sub_10009AF84(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10009AF84(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1000C52B4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1000C5874();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100099F84(v9, 0);
  v12 = sub_10009B0DC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1000C52B4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1000C5984();
LABEL_4:

  return sub_1000C52B4();
}

unint64_t sub_10009B0DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_10009B2FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000C5324();
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
          result = sub_1000C5984();
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

    result = sub_10009B2FC(v12, a6, a7);
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

    result = sub_1000C5304();
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

uint64_t sub_10009B2FC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000C5334();
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
    v5 = sub_1000C5314();
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

BOOL sub_10009B378(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1000C5934();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_10009B470@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

uint64_t *sub_10009B4F0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t sub_10009B540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009B58C(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0xD000000000000012 && 0x80000001000D4EC0 == a2;
  if (v2 || (sub_1000C5C04() & 1) != 0 || a1 == 0x702E63696C627570 && a2 == 0xEA0000000000676ELL)
  {
    return 1;
  }

  if ((sub_1000C5C04() & 1) != 0 || a1 == 0xD000000000000014 && 0x80000001000D4E60 == a2)
  {
    return 1;
  }

  if ((sub_1000C5C04() & 1) != 0 || a1 == 0x682E63696C627570 && a2 == 0xEB00000000666965)
  {
    return 1;
  }

  v6 = sub_1000C5C04();
  v7 = a1 == 0x682E63696C627570 && a2 == 0xEB00000000636965;
  v8 = v7;
  if ((v6 & 1) != 0 || v8)
  {
    return 1;
  }

  v9 = sub_1000C5C04();
  v10 = a1 == 0x682E63696C627570 && a2 == 0xEC00000073636965;
  v11 = v10;
  if ((v9 & 1) != 0 || v11 || (sub_1000C5C04() & 1) != 0 || a1 == 0xD000000000000014 && 0x80000001000D81E0 == a2)
  {
    return 1;
  }

  return sub_1000C5C04();
}

uint64_t sub_10009B77C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v171 = a2;
  v166 = a5;
  v159 = a4;
  v162 = a6;
  v8 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v132 - v10;
  v12 = sub_1000124CC(&qword_1000FD720, &qword_1000CEA48);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v161 = v132 - v14;
  v15 = sub_1000124CC(&qword_1000FD728, &qword_1000CEA50);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v160 = v132 - v17;
  v18 = sub_1000124CC(&qword_1000FD730, &qword_1000CEA58);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v164 = v132 - v20;
  v21 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v165 = v132 - v23;
  v24 = sub_1000C4E14();
  v167 = *(v24 - 8);
  v168 = v24;
  v25 = *(v167 + 64);
  __chkstk_darwin(v24);
  v27 = v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000124CC(&qword_1000FD718, &unk_1000CEA30);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = v132 - v33;
  v35 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = v132 - v37;
  v39 = sub_1000C21D4();
  v163 = *(v39 - 8);
  v40 = *(v163 + 64);
  __chkstk_darwin(v39);
  v170 = v132 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000C4ED4();
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v46 = v132 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = a1;
  if (!*a1)
  {
    sub_100014F70();
    v50 = sub_1000C5714();
    sub_1000C5554();
    sub_1000C1A44();

    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();
LABEL_7:
    sub_1000C4FB4();
    return swift_willThrow();
  }

  v156 = v11;
  v157 = v44;
  v169 = v46;

  v158 = a3;
  v47 = *(sub_1000C4DD4() + 16);

  if (!v47)
  {

    sub_100014F70();
    v51 = sub_1000C5714();
    sub_1000C5554();
    sub_1000C1A44();

    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();
    goto LABEL_7;
  }

  v48 = v172;
  sub_1000C1994();
  v172 = v48;
  if (v48)
  {
  }

  sub_100018F28(v166, v38, &qword_1000FC3B8, &qword_1000C9788);
  v150 = type metadata accessor for MessageDictionary();
  v52 = (v173 + v150[54]);
  v53 = v52[1];
  v171 = *v52;
  v166 = v53;

  sub_10006CB0C(v34);
  v54 = _s14descr1000F0171O17AssociatedMessageVMa();
  v55 = *(v54 - 8);
  v152 = *(v55 + 48);
  v151 = v55 + 48;
  LODWORD(v153) = v152(v34, 1, v54);
  if (v153 == 1)
  {
    sub_10009C704(v34);
    v155 = 0;
    v154 = 0;
  }

  else
  {
    v56 = &v34[*(v54 + 28)];
    v58 = *v56;
    v57 = *(v56 + 1);
    v155 = v58;
    v154 = v57;
    sub_10009C76C(v34);
  }

  sub_10006CB0C(v32);
  v59 = v152(v32, 1, v54);
  v60 = v158;
  if (v59 == 1)
  {
    sub_10009C704(v32);
  }

  else
  {
    v61 = &v32[*(v54 + 24)];
    v62 = *v61;
    v63 = *(v61 + 1);

    sub_10009C76C(v32);
  }

  (*(v167 + 16))(v27, v60, v168);
  v64 = v170;
  v65 = v172;
  sub_1000C4E24();
  if (v65)
  {
    return (*(v157 + 8))(v169, v42);
  }

  (*(v163 + 104))(v64, enum case for TextMessage.MessageType.sticker(_:), v39);
  v66 = v150;
  v67 = v173;
  sub_100018F28(v173 + v150[18], v165, &qword_1000FC520, &qword_1000C9D20);
  v68 = (v67 + v66[31]);
  v69 = v68[1];
  v70 = (v67 + v66[32]);
  v71 = v70[1];
  v72 = (v67 + v66[33]);
  v73 = (v67 + v66[23]);
  v74 = (v67 + v66[24]);
  v75 = v67 + v66[21];
  v76 = (v67 + v66[22]);
  result = v76[1];
  if (result)
  {
    v77 = *v76;
    v78 = v76[1];
  }

  else
  {
    v78 = 0xE100000000000000;
    v77 = 56;
  }

  v79 = *v68;
  v80 = *v70;
  v81 = *v72;
  v82 = v72[1];
  v83 = v73[1];
  v154 = *v73;
  v171 = v83;
  v84 = v74[1];
  v153 = *v74;
  v168 = v84;
  v85 = (HIBYTE(v78) & 0xF);
  v152 = *v75;
  v86 = v77 & 0xFFFFFFFFFFFFLL;
  if ((v78 & 0x2000000000000000) != 0)
  {
    v87 = HIBYTE(v78) & 0xF;
  }

  else
  {
    v87 = v77 & 0xFFFFFFFFFFFFLL;
  }

  v88 = *(v75 + 8);
  v172 = 0;
  v166 = v71;
  v167 = v69;
  v163 = v81;
  v157 = v79;
  v158 = v80;
  v155 = v82;
  LODWORD(v151) = v88;
  if (!v87)
  {

    v149 = 0;
    v176 = 1;
LABEL_87:
    v107 = v150;
    v108 = v173;
    v109 = v173 + v150[25];
    v148 = *v109;
    v147 = v109[8];
    v110 = v173 + v150[35];
    v146 = *v110;
    v145 = v110[8];
    sub_100018F28(v159, v164, &qword_1000FD730, &qword_1000CEA58);
    v111 = v107[48];
    v112 = (v108 + v107[47]);
    v113 = v112[1];
    v159 = *v112;
    v142 = v113;
    v114 = *(v108 + v111 + 8);
    v144 = *(v108 + v111);
    v140 = v114;
    v115 = v107[50];
    v116 = (v108 + v107[49]);
    v117 = v116[1];
    v143 = *v116;
    v138 = v117;
    v118 = *(v108 + v115 + 8);
    v141 = *(v108 + v115);
    v136 = v118;
    v119 = v107[52];
    v139 = *(v108 + v107[51]);
    v120 = *(v108 + v119 + 8);
    v137 = *(v108 + v119);

    sub_10008B5E0(v160);
    v121 = (v108 + v107[45]);
    v122 = v121[1];
    v134 = *v121;
    v135 = *(v108 + 97);
    v133 = v108[13];
    v132[3] = *(v108 + 112);
    v123 = (v108 + v107[19]);
    v124 = *v123;
    v125 = *(v123 + 8);

    sub_1000C21E4();
    sub_100018F28(v108 + v107[20], v156, &qword_1000FC5A8, &qword_1000CEA40);
    v126 = *(v108 + v107[59]);
    LOBYTE(v118) = *(v108 + v107[60]);
    v127 = (v108 + v107[61]);
    v128 = *v127;
    v129 = v127[1];

    return sub_1000C2204();
  }

  if ((v78 & 0x1000000000000000) != 0)
  {

    v91 = sub_10009A3F4(v77, v78, 10);
    v105 = v130;
    goto LABEL_83;
  }

  if ((v78 & 0x2000000000000000) == 0)
  {
    if ((v77 & 0x1000000000000000) != 0)
    {
      v85 = ((v78 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v131 = result;
      v85 = sub_1000C5984();
      result = v131;
    }

    v89 = *v85;
    if (v89 == 43)
    {
      if (v86 >= 1)
      {
        v97 = v86 - 1;
        if (v86 != 1)
        {
          v91 = 0;
          if (v85)
          {
            v98 = v85 + 1;
            while (1)
            {
              v99 = *v98 - 48;
              if (v99 > 9)
              {
                goto LABEL_81;
              }

              if (!is_mul_ok(v91, 0xAuLL))
              {
                goto LABEL_81;
              }

              v94 = __CFADD__(10 * v91, v99);
              v91 = 10 * v91 + v99;
              if (v94)
              {
                goto LABEL_81;
              }

              ++v98;
              if (!--v97)
              {
LABEL_73:
                LOBYTE(v85) = 0;
                goto LABEL_82;
              }
            }
          }

          goto LABEL_82;
        }

        goto LABEL_81;
      }

      goto LABEL_93;
    }

    if (v89 != 45)
    {
      if (v86)
      {
        v91 = 0;
        if (v85)
        {
          while (1)
          {
            v102 = *v85 - 48;
            if (v102 > 9)
            {
              goto LABEL_81;
            }

            if (!is_mul_ok(v91, 0xAuLL))
            {
              goto LABEL_81;
            }

            v94 = __CFADD__(10 * v91, v102);
            v91 = 10 * v91 + v102;
            if (v94)
            {
              goto LABEL_81;
            }

            ++v85;
            if (!--v86)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_82;
      }

LABEL_81:
      v91 = 0;
      LOBYTE(v85) = 1;
      goto LABEL_82;
    }

    if (v86 >= 1)
    {
      v90 = v86 - 1;
      if (v86 != 1)
      {
        v91 = 0;
        if (v85)
        {
          v92 = v85 + 1;
          while (1)
          {
            v93 = *v92 - 48;
            if (v93 > 9)
            {
              goto LABEL_81;
            }

            if (!is_mul_ok(v91, 0xAuLL))
            {
              goto LABEL_81;
            }

            v94 = 10 * v91 >= v93;
            v91 = 10 * v91 - v93;
            if (!v94)
            {
              goto LABEL_81;
            }

            ++v92;
            if (!--v90)
            {
              goto LABEL_73;
            }
          }
        }

LABEL_82:
        v175 = v85;
        v105 = v85;

LABEL_83:

        v176 = v105;
        if (v105)
        {
          v106 = 0;
        }

        else
        {
          v106 = v91;
        }

        v149 = v106;
        goto LABEL_87;
      }

      goto LABEL_81;
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v174[0] = v77;
  v174[1] = v78 & 0xFFFFFFFFFFFFFFLL;
  if (v77 != 43)
  {
    if (v77 != 45)
    {
      if (v85)
      {
        v91 = 0;
        v103 = v174;
        while (1)
        {
          v104 = *v103 - 48;
          if (v104 > 9)
          {
            break;
          }

          if (!is_mul_ok(v91, 0xAuLL))
          {
            break;
          }

          v94 = __CFADD__(10 * v91, v104);
          v91 = 10 * v91 + v104;
          if (v94)
          {
            break;
          }

          ++v103;
          if (!--v85)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v85)
    {
      if (--v85)
      {
        v91 = 0;
        v95 = v174 + 1;
        while (1)
        {
          v96 = *v95 - 48;
          if (v96 > 9)
          {
            break;
          }

          if (!is_mul_ok(v91, 0xAuLL))
          {
            break;
          }

          v94 = 10 * v91 >= v96;
          v91 = 10 * v91 - v96;
          if (!v94)
          {
            break;
          }

          ++v95;
          if (!--v85)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    goto LABEL_92;
  }

  if (v85)
  {
    if (--v85)
    {
      v91 = 0;
      v100 = v174 + 1;
      while (1)
      {
        v101 = *v100 - 48;
        if (v101 > 9)
        {
          break;
        }

        if (!is_mul_ok(v91, 0xAuLL))
        {
          break;
        }

        v94 = __CFADD__(10 * v91, v101);
        v91 = 10 * v91 + v101;
        if (v94)
        {
          break;
        }

        ++v100;
        if (!--v85)
        {
          goto LABEL_82;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_10009C704(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FD718, &unk_1000CEA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009C76C(uint64_t a1)
{
  v2 = _s14descr1000F0171O17AssociatedMessageVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009C820@<X0>(void (*a1)(uint64_t *, uint64_t *)@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a3 >> 60 == 15)
  {
    v6 = sub_1000C3054();
    return (*(*(v6 - 8) + 56))(a4, 1, 1, v6);
  }

  else
  {
    v11 = a2;
    v12 = a3;
    sub_100018C68(a2, a3);
    a1(&v11, &v10);
    result = sub_100018CD0(v11, v12);
    if (!v4)
    {
      v9 = sub_1000C3054();
      return (*(*(v9 - 8) + 56))(a4, 0, 1, v9);
    }
  }

  return result;
}

uint64_t sub_10009C934@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v350 = a5;
  v342 = sub_1000C3574();
  v333 = *(v342 - 8);
  v9 = *(v333 + 64);
  v10 = __chkstk_darwin(v342);
  v332 = v277 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v277 - v12;
  v14 = sub_1000124CC(&qword_1000FDB40, &qword_1000CF730);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v337 = v277 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v336 = v277 - v19;
  __chkstk_darwin(v18);
  v338 = v277 - v20;
  v21 = sub_1000124CC(&qword_1000FDB48, &qword_1000CF738);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v335 = v277 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v339 = v277 - v25;
  v26 = sub_1000124CC(&qword_1000FD810, &unk_1000CF740);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v334 = v277 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = v277 - v31;
  __chkstk_darwin(v30);
  v340 = v277 - v33;
  v34 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v331 = v277 - v36;
  v37 = sub_1000C4D84();
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v329 = v277 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v325 = v277 - v41;
  v42 = sub_1000C4D54();
  v327 = *(v42 - 8);
  v328 = v42;
  v43 = *(v327 + 64);
  __chkstk_darwin(v42);
  v326 = v277 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = sub_1000C20D4();
  v345 = *(v344 - 8);
  v45 = *(v345 + 64);
  v46 = __chkstk_darwin(v344);
  v341 = v277 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v343 = v277 - v48;
  v49 = sub_1000124CC(&qword_1000FDB50, &qword_1000CF750);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v348 = v277 - v51;
  v52 = sub_1000124CC(&qword_1000FDB58, &qword_1000CF758);
  v53 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52 - 8);
  v347 = v277 - v54;
  v55 = sub_1000124CC(&qword_1000FDB60, &qword_1000CF760);
  v56 = *(*(v55 - 8) + 64);
  v57 = __chkstk_darwin(v55 - 8);
  v330 = v277 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v346 = v277 - v59;
  v60 = sub_1000124CC(&qword_1000FDB68, &qword_1000CF768);
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60 - 8);
  v349 = v277 - v62;
  v63 = sub_1000C5124();
  v353 = *(v63 - 8);
  v64 = *(v353 + 64);
  __chkstk_darwin(v63);
  v66 = v277 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = sub_1000124CC(&qword_1000FDB70, &qword_1000CF770);
  v351 = *(v352 - 8);
  v67 = *(v351 + 64);
  __chkstk_darwin(v352);
  v354 = v277 - v68;
  v69 = sub_1000C4F54();
  v71 = v70 >> 62;
  if ((v70 >> 62) > 1)
  {
    if (v71 != 2)
    {
      sub_100018CD0(v69, v70);
      goto LABEL_32;
    }

    v323 = v32;
    v324 = v13;
    v73 = a1;
    v74 = a4;
    a4 = *(v69 + 16);
    a1 = *(v69 + 24);
    v69 = sub_100018CD0(v69, v70);
    v75 = a1 - a4;
    if (!__OFSUB__(a1, a4))
    {
LABEL_11:
      a4 = v74;
      a1 = v73;
      if (v75 != 16)
      {
        goto LABEL_32;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_9:
    v73 = a1;
    v74 = a4;
    a4 = HIDWORD(v69);
    v76 = v69;
    v77 = sub_100018CD0(v69, v70);
    LODWORD(v75) = a4 - v76;
    if (__OFSUB__(a4, v76))
    {
      __break(1u);
LABEL_99:
      sub_1000A4104(28023, 0xE200000000000000, a2, a3, v77, v78, v390);
      v314 = v73;
      if (v73)
      {
        sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v383, &qword_1000FDB90, &unk_1000CF780);
        sub_1000A485C(v387);
        sub_100018CD0(v297, v355);
        sub_100018CD0(v299, v300);

        sub_100018CBC(v302, v304);
        sub_100018CBC(v307, v306);
        sub_100018CBC(v308, v315);
        sub_100018CBC(a2, v303);
        sub_100018CBC(v318, v309);
        sub_100018CBC(v316, v310);
        sub_100018CD0(v313, v317);

        result = sub_100018CBC(v322, v301);
        *a4 = v314;
        return result;
      }

      v375 = v390[0];
      v376 = v390[1];
      v377 = v390[2];
      v378 = v390[3];
      v146 = v313;
      goto LABEL_87;
    }

    v75 = v75;
    goto LABEL_11;
  }

  v323 = v32;
  v324 = v13;
  if (v71)
  {
    goto LABEL_9;
  }

  v72 = BYTE6(v70);
  sub_100018CD0(v69, v70);
  if (v72 != 16)
  {
    goto LABEL_32;
  }

LABEL_12:
  v321 = a1;
  sub_1000C4F64();
  v322 = sub_1000C1514();
  v80 = v79;

  if (v80 >> 60 == 15)
  {
LABEL_32:
    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
    v102 = swift_allocError();
    sub_1000C4FB4();
    result = swift_willThrow();
LABEL_33:
    *a4 = v102;
    return result;
  }

  v81 = v80 >> 62;
  if ((v80 >> 62) > 1)
  {
    if (v81 != 2)
    {
      goto LABEL_31;
    }

    v83 = *(v322 + 16);
    v82 = *(v322 + 24);
    v84 = __OFSUB__(v82, v83);
    v85 = v82 - v83;
    if (!v84)
    {
      if (v85 == 16)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v81)
  {
    if (!__OFSUB__(HIDWORD(v322), v322))
    {
      if (HIDWORD(v322) - v322 == 16)
      {
        goto LABEL_22;
      }

LABEL_31:
      sub_100018CBC(v322, v80);
      goto LABEL_32;
    }

    goto LABEL_115;
  }

  if (BYTE6(v80) != 16)
  {
    goto LABEL_31;
  }

LABEL_22:
  v86 = objc_opt_self();
  isa = sub_1000C1544().super.isa;
  *&v383 = 0;
  v88 = [v86 propertyListWithData:isa options:0 format:0 error:&v383];

  if (!v88)
  {
    v104 = v383;
    v105 = sub_1000C1474();

    swift_willThrow();
    result = sub_100018CBC(v322, v80);
    *a4 = v105;
    return result;
  }

  v320 = v86;
  v89 = v383;
  sub_1000C58C4();
  swift_unknownObjectRelease();
  sub_1000124CC(&qword_1000FDB78, &qword_1000CF778);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
    v102 = swift_allocError();
LABEL_37:
    sub_1000C4FB4();
    swift_willThrow();
LABEL_38:
    result = sub_100018CBC(v322, v80);
    goto LABEL_33;
  }

  v90 = v379;
  if (!*(v379 + 16) || (v91 = sub_100099FF8(110, 0xE100000000000000), (v92 & 1) == 0))
  {

    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
    v102 = swift_allocError();
    goto LABEL_37;
  }

  v93 = (*(v90 + 56) + 16 * v91);
  v94 = *v93;
  v95 = *(v90 + 16);
  v96 = *v93;
  v317 = v93[1];
  sub_100018C68(v96, v317);
  v319 = v90;
  if (v95 && (v97 = sub_100099FF8(28001, 0xE200000000000000), (v98 & 1) != 0))
  {
    v99 = (*(v90 + 56) + 16 * v97);
    v100 = *v99;
    v101 = v99[1];
    sub_100018C68(*v99, v101);
  }

  else
  {
    v100 = 0;
    v101 = 0xF000000000000000;
  }

  v316 = v100;
  v106 = v319;
  if (*(v319 + 16) && (v107 = sub_100099FF8(25697, 0xE200000000000000), (v108 & 1) != 0))
  {
    v109 = (*(v106 + 56) + 16 * v107);
    v110 = v109[1];
    v318 = *v109;
    sub_100018C68(v318, v110);
  }

  else
  {
    v318 = 0;
    v110 = 0xF000000000000000;
  }

  v314 = v101 >> 60;
  v312 = (v110 >> 60);
  if ((v101 >> 60 == 15) != (v110 >> 60 == 15))
  {

    sub_1000C4FC4();
    v111 = v110;
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
    v102 = swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    sub_100018CBC(v318, v111);
    sub_100018CBC(v316, v101);
    v112 = v94;
LABEL_46:
    sub_100018CD0(v112, v317);
    goto LABEL_38;
  }

  v309 = v110;
  v310 = v101;
  v113 = v319;
  v114 = *(v319 + 16);
  v313 = v94;
  if (!v114)
  {
    v119 = 0;
    v311 = 0;
    v308 = 0;
    v120 = 0xF000000000000000;
    v121 = 1;
    v118 = 0xF000000000000000;
LABEL_68:
    v315 = 0xF000000000000000;
    goto LABEL_69;
  }

  v115 = sub_100099FF8(28023, 0xE200000000000000);
  if (v116)
  {
    v117 = (*(v113 + 56) + 16 * v115);
    v118 = v117[1];
    v311 = *v117;
    sub_100018C68(v311, v118);
    if (!*(v113 + 16))
    {
      v119 = 0;
      v120 = 0xF000000000000000;
      if (v118 >> 60 == 15)
      {
        v121 = 1;
LABEL_67:
        v308 = 0;
        goto LABEL_68;
      }

      v308 = 0;
      v315 = 0xF000000000000000;
      goto LABEL_79;
    }
  }

  else
  {
    v119 = 0;
    v122 = *(v113 + 16);
    v120 = 0xF000000000000000;
    if (!v122)
    {
      v121 = 1;
      v118 = 0xF000000000000000;
      v311 = 0;
      goto LABEL_67;
    }

    v118 = 0xF000000000000000;
    v311 = 0;
    v113 = v319;
  }

  v123 = sub_100099FF8(25719, 0xE200000000000000);
  if (v124)
  {
    v125 = (*(v113 + 56) + 16 * v123);
    v126 = *v125;
    v127 = *v125;
    v315 = v125[1];
    sub_100018C68(v127, v315);
  }

  else
  {
    v126 = 0;
    v315 = 0xF000000000000000;
  }

  v128 = *(v113 + 16);
  v308 = v126;
  if (v128 && (v129 = sub_100099FF8(1685549676, 0xE400000000000000), (v130 & 1) != 0))
  {
    v131 = (*(v113 + 56) + 16 * v129);
    v119 = *v131;
    v120 = v131[1];
    sub_100018C68(*v131, v120);
  }

  else
  {
    v119 = 0;
    v120 = 0xF000000000000000;
  }

  if (v118 >> 60 == 15)
  {
    if (v315 >> 60 != 15 || v120 >> 60 != 15)
    {
      goto LABEL_81;
    }

    v121 = 1;
    goto LABEL_69;
  }

LABEL_79:
  v121 = 0;
  if (v315 >> 60 == 15 && v120 >> 60 == 15)
  {
LABEL_81:
    v307 = v119;

    sub_1000C4FC4();
    v149 = v120;
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
    v102 = swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    sub_100018CBC(v307, v149);
    sub_100018CBC(v308, v315);
    sub_100018CBC(v311, v118);
    sub_100018CBC(v318, v309);
    sub_100018CBC(v316, v310);
    v112 = v313;
    goto LABEL_46;
  }

LABEL_69:
  LODWORD(v298) = v121;
  v306 = v120;
  v307 = v119;
  v132 = v319;
  v133 = *(v319 + 16);
  v301 = v80;
  v303 = v118;
  if (v133 && (v134 = sub_100099FF8(6582881, 0xE300000000000000), (v135 & 1) != 0))
  {
    v136 = (*(v132 + 56) + 16 * v134);
    v137 = v136[1];
    v302 = *v136;
    v304 = v137;
    sub_100018C68(v302, v137);
  }

  else
  {
    v302 = 0;
    v304 = 0xF000000000000000;
  }

  v138 = sub_1000C4F54();
  v140 = v139;
  sub_1000A3D7C(v138, v139, &v383);
  v299 = *(&v383 + 1);
  v305 = v383;
  v141 = *(&v384 + 1);
  v300 = v384;
  v142 = v385;
  sub_100018CD0(v138, v140);
  v143 = v313;
  v144 = v317;
  sub_100018C68(v313, v317);
  v145 = v355;
  sub_1000A4104(110, 0xE100000000000000, v143, v144, 0, 0xF000000000000000, v387);
  v73 = v145;
  if (v145)
  {
    sub_100018CD0(v141, v142);
    sub_100018CD0(v299, v300);

    sub_100018CBC(v302, v304);
    sub_100018CBC(v307, v306);
    sub_100018CBC(v308, v315);
    sub_100018CBC(v311, v303);
    sub_100018CBC(v318, v309);
    sub_100018CBC(v316, v310);
    sub_100018CD0(v143, v144);

    result = sub_100018CBC(v322, v301);
    *a4 = v145;
    return result;
  }

  v146 = v143;
  v297 = v141;
  v355 = v142;
  if (v314 <= 0xE)
  {
    v147 = v316;
    v148 = v310;
    sub_100018C68(v316, v310);
    sub_1000A4104(28001, 0xE200000000000000, v147, v148, 0, 0xF000000000000000, v388);
    v383 = v388[0];
    v384 = v388[1];
    v385 = v388[2];
    v386 = v388[3];
    v73 = 0;
  }

  else
  {
    v386 = 0u;
    v385 = 0u;
    v384 = 0u;
    v383 = 0u;
  }

  if (v312 < 0xF)
  {
    v150 = v309;
    v151 = v318;
    sub_100018C68(v318, v309);
    v318 = v151;
    sub_1000A4104(25697, 0xE200000000000000, v151, v150, 0, 0xF000000000000000, v389);
    v73 = 0;
    v379 = v389[0];
    v380 = v389[1];
    v381 = v389[2];
    v382 = v389[3];
    v146 = v313;
  }

  else
  {
    v382 = 0u;
    v381 = 0u;
    v380 = 0u;
    v379 = 0u;
  }

  a2 = v311;
  if (!v298)
  {
    a3 = v303;
    sub_100018C68(v311, v303);
    v77 = sub_1000C4F24();
    if (v78 >> 60 == 15)
    {
      sub_100018CBC(a2, a3);

      *&v371 = 0xD000000000000064;
      *(&v371 + 1) = 0x80000001000D84C0;
      *&v367 = 111;
      v400._countAndFlagsBits = sub_1000C5BE4();
      sub_1000C52E4(v400);

      v401._countAndFlagsBits = 58;
      v401._object = 0xE100000000000000;
      sub_1000C52E4(v401);
      v402._countAndFlagsBits = 0xD000000000000014;
      v402._object = 0x80000001000D8570;
      sub_1000C52E4(v402);
      sub_1000C4FC4();
      sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
      v102 = swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CBC(v322, v301);
      sub_100018CBC(v318, v309);
      sub_100018CBC(v316, v310);
      sub_100018CD0(v313, v317);
      sub_100018CBC(v307, v306);
      sub_100018CBC(v308, v315);
      sub_100018CBC(a2, a3);
      sub_100018CBC(v302, v304);
      sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
      v155 = &v383;
LABEL_104:
      sub_100018F90(v155, &qword_1000FDB90, &unk_1000CF780);
      sub_100018CD0(v297, v355);
      sub_100018CD0(v299, v300);

      result = sub_1000A485C(v387);
      goto LABEL_33;
    }

    goto LABEL_99;
  }

  v377 = 0u;
  v378 = 0u;
  v375 = 0u;
  v376 = 0u;
LABEL_87:
  v152 = v306;
  v153 = v315;
  if (v315 >> 60 == 15)
  {
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
  }

  else
  {
    v156 = v308;
    sub_100018C68(v308, v315);
    v157 = sub_1000C4EF4();
    if (v158 >> 60 == 15)
    {
      sub_100018CBC(v156, v153);

      *&v367 = 0xD000000000000064;
      *(&v367 + 1) = 0x80000001000D84C0;
      *&v363 = 112;
      v403._countAndFlagsBits = sub_1000C5BE4();
      sub_1000C52E4(v403);

      v404._countAndFlagsBits = 58;
      v404._object = 0xE100000000000000;
      sub_1000C52E4(v404);
      v405._countAndFlagsBits = 0xD000000000000010;
      v405._object = 0x80000001000D8550;
      sub_1000C52E4(v405);
      sub_1000C4FC4();
      sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
      v102 = swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CBC(v322, v301);
      sub_100018CBC(v318, v309);
      sub_100018CBC(v316, v310);
      sub_100018CD0(v313, v317);
      sub_100018CBC(v307, v306);
      sub_100018CBC(v156, v153);
      sub_100018CBC(v311, v303);
      sub_100018CBC(v302, v304);
      sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
      v159 = &v383;
LABEL_103:
      sub_100018F90(v159, &qword_1000FDB90, &unk_1000CF780);
      v155 = &v375;
      goto LABEL_104;
    }

    sub_1000A4104(25719, 0xE200000000000000, v156, v153, v157, v158, v391);
    v314 = 0;
    v371 = v391[0];
    v372 = v391[1];
    v373 = v391[2];
    v374 = v391[3];
    v146 = v313;
    v152 = v306;
  }

  v314 = 0;
  if (v152 >> 60 == 15)
  {
    v312 = a4;
    v369 = 0u;
    v370 = 0u;
    v367 = 0u;
    v368 = 0u;
    goto LABEL_91;
  }

  v160 = v307;
  sub_100018C68(v307, v152);
  v161 = sub_1000C4F34();
  if (v162 >> 60 == 15)
  {
    sub_100018CBC(v160, v152);

    v354 = "portraitLayerStack";
    *&v363 = 0xD000000000000064;
    *(&v363 + 1) = 0x80000001000D84C0;
    *&v357 = 113;
    v406._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v406);

    v407._countAndFlagsBits = 58;
    v407._object = 0xE100000000000000;
    sub_1000C52E4(v407);
    v408._countAndFlagsBits = 0xD000000000000016;
    v408._object = 0x80000001000D8530;
    sub_1000C52E4(v408);
    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
    v102 = swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    sub_100018CBC(v322, v301);
    sub_100018CBC(v318, v309);
    sub_100018CBC(v316, v310);
    sub_100018CD0(v146, v317);
    sub_100018CBC(v160, v152);
    sub_100018CBC(v308, v315);
    sub_100018CBC(v311, v303);
    sub_100018CBC(v302, v304);
    sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v383, &qword_1000FDB90, &unk_1000CF780);
    v159 = &v371;
    goto LABEL_103;
  }

  v312 = a4;
  v168 = v314;
  sub_1000A4104(1685549676, 0xE400000000000000, v160, v152, v161, v162, v392);
  v314 = v168;
  if (v168)
  {
    goto LABEL_113;
  }

LABEL_116:
  v367 = v392[0];
  v368 = v392[1];
  v369 = v392[2];
  v370 = v392[3];
LABEL_91:
  if (v304 >> 60 != 15)
  {
    sub_100018C68(v302, v304);
    v163 = sub_1000C4F14();
    if (v164 >> 60 == 15)
    {
      v165 = v302;
      v166 = v304;
      sub_100018CBC(v302, v304);

      *&v357 = 0xD000000000000064;
      *(&v357 + 1) = 0x80000001000D84C0;
      *&v356[0] = 115;
      v409._countAndFlagsBits = sub_1000C5BE4();
      sub_1000C52E4(v409);

      v410._countAndFlagsBits = 58;
      v410._object = 0xE100000000000000;
      sub_1000C52E4(v410);
      v411._countAndFlagsBits = 0xD000000000000013;
      v411._object = 0x80000001000D84A0;
      sub_1000C52E4(v411);
      sub_1000C4FC4();
      sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
      v167 = swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CBC(v322, v301);
      sub_100018CBC(v318, v309);
      sub_100018CBC(v316, v310);
      sub_100018CD0(v313, v317);
      sub_100018CBC(v307, v306);
      sub_100018CBC(v308, v315);
      sub_100018CBC(v311, v303);
      sub_100018CBC(v165, v166);
      sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v383, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v371, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v367, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v375, &qword_1000FDB90, &unk_1000CF780);
      sub_100018CD0(v297, v355);
      sub_100018CD0(v299, v300);

      result = sub_1000A485C(v387);
LABEL_128:
      *v312 = v167;
      return result;
    }

    v169 = v314;
    sub_1000A4104(6582881, 0xE300000000000000, v302, v304, v163, v164, v393);
    v314 = v169;
    if (!v169)
    {
      v363 = v393[0];
      v364 = v393[1];
      v365 = v393[2];
      v366 = v393[3];
      if (*(&v379 + 1))
      {
        goto LABEL_93;
      }

      goto LABEL_118;
    }

    sub_100018F90(&v367, &qword_1000FDB90, &unk_1000CF780);
LABEL_113:
    sub_100018F90(&v371, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v375, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v383, &qword_1000FDB90, &unk_1000CF780);
    sub_1000A485C(v387);
    sub_100018CD0(v297, v355);
    sub_100018CD0(v299, v300);

    sub_100018CBC(v302, v304);
    sub_100018CBC(v307, v306);
    sub_100018CBC(v308, v315);
    sub_100018CBC(v311, v303);
    sub_100018CBC(v318, v309);
    sub_100018CBC(v316, v310);
    sub_100018CD0(v313, v317);

    result = sub_100018CBC(v322, v301);
    *v312 = v314;
    return result;
  }

  v365 = 0u;
  v366 = 0u;
  v363 = 0u;
  v364 = 0u;
  if (*(&v379 + 1))
  {
LABEL_93:
    v154 = *(&v382 + 1);
    v298 = v382;
    sub_100018C68(v382, *(&v382 + 1));
    goto LABEL_119;
  }

LABEL_118:
  v298 = 0;
  v154 = 0xF000000000000000;
LABEL_119:
  if (*(&v383 + 1))
  {
    v170 = *(&v386 + 1);
    v296 = v386;
    sub_100018C68(v386, *(&v386 + 1));
  }

  else
  {
    v296 = 0;
    v170 = 0xF000000000000000;
  }

  v295 = v387[6];
  v357 = xmmword_1000CF6D0;
  if (v154 >> 60 != 15)
  {
    v171 = v298;
    sub_100018C68(v298, v154);
    sub_1000C1574();
    sub_100018CBC(v171, v154);
  }

  if (v170 >> 60 != 15)
  {
    v172 = v296;
    sub_100018C68(v296, v170);
    sub_1000C1574();
    sub_100018CBC(v172, v170);
  }

  sub_1000C1574();
  v356[0] = v357;
  v173 = v297;
  v361 = v297;
  v174 = v355;
  v362 = v355;
  sub_100018C68(v357, *(&v357 + 1));
  sub_100018C68(v173, v174);
  sub_1000C5114();
  sub_1000C5164();
  sub_1000A4600(&qword_1000FDB80, &type metadata accessor for SHA256);
  sub_1000A4648();
  v175 = v354;
  sub_1000C5154();
  (*(v353 + 8))(v66, v63);
  sub_100018CD0(*&v356[0], *(&v356[0] + 1));
  v176 = v314;
  sub_1000A469C(v175, v322, v301, 16);
  v167 = v176;
  if (v176)
  {
    sub_100018CD0(v299, v300);

    sub_1000A485C(v387);
    sub_100018CBC(v296, v170);
    sub_100018CBC(v298, v154);

    sub_100018CBC(v322, v301);
    sub_100018CBC(v316, v310);
    sub_100018CBC(v318, v309);
    sub_100018CBC(v311, v303);
    sub_100018CBC(v308, v315);
    sub_100018CBC(v307, v306);
    sub_100018CBC(v302, v304);
    sub_100018F90(&v371, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v367, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v375, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v363, &qword_1000FDB90, &unk_1000CF780);
    sub_100018CD0(v297, v355);
    sub_100018F90(&v383, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
    sub_100018CD0(v313, v317);
    (*(v351 + 8))(v354, v352);
    result = sub_100018CD0(v357, *(&v357 + 1));
    goto LABEL_128;
  }

  sub_100018CBC(v296, v170);
  sub_100018CBC(v298, v154);
  (*(v351 + 8))(v354, v352);
  sub_100018CD0(v357, *(&v357 + 1));
  v353 = sub_1000A49E4(v387, v305, v299, v300);
  v354 = v177;
  if (sub_1000C4F04())
  {
    if (*(&v383 + 1))
    {
      v399[0] = v383;
      v399[1] = v384;
      v399[2] = v385;
      v399[3] = v386;
      v357 = v383;
      v358 = v384;
      v359 = v385;
      v360 = v386;
      sub_1000A4F44(&v357, v356);
      v351 = sub_1000A49E4(v399, v305, v299, v300);
      v352 = v178;
      sub_100018F90(&v383, &qword_1000FDB90, &unk_1000CF780);
    }

    else
    {
      v351 = 0;
      v352 = 0xF000000000000000;
    }

    if (*(&v379 + 1))
    {
      v398[0] = v379;
      v398[1] = v380;
      v398[2] = v381;
      v398[3] = v382;
      v357 = v379;
      v358 = v380;
      v359 = v381;
      v360 = v382;
      sub_1000A4F44(&v357, v356);
      v298 = sub_1000A49E4(v398, v305, v299, v300);
      v314 = v186;
      sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
    }

    else
    {
      v298 = 0;
      v314 = 0xF000000000000000;
    }

    if (*(&v371 + 1))
    {
      v397[0] = v371;
      v397[1] = v372;
      v397[2] = v373;
      v397[3] = v374;
      v357 = v371;
      v358 = v372;
      v359 = v373;
      v360 = v374;
      sub_1000A4F44(&v357, v356);
      v295 = sub_1000A49E4(v397, v305, v299, v300);
      v296 = v187;
      sub_100018F90(&v371, &qword_1000FDB90, &unk_1000CF780);
    }

    else
    {
      v295 = 0;
      v296 = 0xF000000000000000;
    }

    if (*(&v367 + 1))
    {
      v396[0] = v367;
      v396[1] = v368;
      v396[2] = v369;
      v396[3] = v370;
      v357 = v367;
      v358 = v368;
      v359 = v369;
      v360 = v370;
      sub_1000A4F44(&v357, v356);
      v292 = sub_1000A49E4(v396, v305, v299, v300);
      v293 = v213;
      sub_100018F90(&v367, &qword_1000FDB90, &unk_1000CF780);
    }

    else
    {
      v292 = 0;
      v293 = 0xF000000000000000;
    }

    if (*(&v375 + 1))
    {
      v395[0] = v375;
      v395[1] = v376;
      v395[2] = v377;
      v395[3] = v378;
      v357 = v375;
      v358 = v376;
      v359 = v377;
      v360 = v378;
      sub_1000A4F44(&v357, v356);
      v291 = sub_1000A49E4(v395, v305, v299, v300);
      v294 = v217;
      sub_100018F90(&v375, &qword_1000FDB90, &unk_1000CF780);
    }

    else
    {
      v291 = 0;
      v294 = 0xF000000000000000;
    }

    if (*(&v363 + 1))
    {
      v394[0] = v363;
      v394[1] = v364;
      v394[2] = v365;
      v394[3] = v366;
      v357 = v363;
      v358 = v364;
      v359 = v365;
      v360 = v366;
      sub_1000A4F44(&v357, v356);
      v289 = sub_1000A49E4(v394, v305, v299, v300);
      v290 = v218;
      sub_100018F90(&v363, &qword_1000FDB90, &unk_1000CF780);
    }

    else
    {
      v289 = 0;
      v290 = 0xF000000000000000;
    }

    if ((v352 >> 60 == 15) != (v314 >> 60 == 15))
    {
      goto LABEL_142;
    }

    v244 = v296 >> 60 == 15 && v293 >> 60 == 15;
    if (v294 >> 60 == 15)
    {
      if (!v244)
      {
        goto LABEL_142;
      }
    }

    else if (v244)
    {
      goto LABEL_142;
    }
  }

  else
  {
    v291 = 0;
    v292 = 0;
    v298 = 0;
    v351 = 0;
    v289 = 0;
    v290 = 0xF000000000000000;
    v294 = 0xF000000000000000;
    v295 = 0;
    v293 = 0xF000000000000000;
    v296 = 0xF000000000000000;
    v314 = 0xF000000000000000;
    v352 = 0xF000000000000000;
  }

  v179 = sub_1000C1544().super.isa;
  *&v357 = 0;
  v180 = [v320 propertyListWithData:v179 options:0 format:0 error:&v357];

  if (!v180)
  {
    v183 = v357;

    v167 = sub_1000C1474();

LABEL_143:
    swift_willThrow();
    sub_100018CBC(v289, v290);
    sub_100018CBC(v322, v301);
    sub_100018CBC(v318, v309);
    sub_100018CBC(v316, v310);
    sub_100018CD0(v313, v317);
    sub_100018CBC(v308, v315);
    sub_100018CBC(v307, v306);
    sub_100018CBC(v311, v303);
    sub_100018CBC(v302, v304);
    sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v383, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v371, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v367, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v375, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v363, &qword_1000FDB90, &unk_1000CF780);
    sub_100018CD0(v353, v354);
    sub_100018CD0(v297, v355);
    sub_100018CD0(v299, v300);

    sub_1000A485C(v387);
    sub_100018CBC(v291, v294);
    sub_100018CBC(v292, v293);
    sub_100018CBC(v295, v296);
    sub_100018CBC(v298, v314);
    v184 = v351;
    v185 = v352;
LABEL_144:
    result = sub_100018CBC(v184, v185);
    goto LABEL_128;
  }

  v181 = v357;
  sub_1000C58C4();
  swift_unknownObjectRelease();
  v285 = sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_142:

    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
    v167 = swift_allocError();
    sub_1000C4FB4();
    goto LABEL_143;
  }

  v288 = *&v356[0];
  sub_100092E08(28262, 0xE200000000000000, *&v356[0], &v357);
  if (*(&v358 + 1))
  {
    if (swift_dynamicCast())
    {
      v182 = *(&v356[0] + 1);
    }

    else
    {
      v182 = 0;
    }

    v287 = v182;
  }

  else
  {
    sub_100018F90(&v357, &qword_1000FC828, &qword_1000CF790);
    v287 = 0;
  }

  sub_100092E08(28268, 0xE200000000000000, v288, &v357);
  if (*(&v358 + 1))
  {
    if (swift_dynamicCast())
    {
      v188 = *(&v356[0] + 1);
    }

    else
    {
      v188 = 0;
    }

    v286 = v188;
  }

  else
  {
    sub_100018F90(&v357, &qword_1000FC828, &qword_1000CF790);
    v286 = 0;
  }

  v189 = sub_1000C1FF4();
  v190 = *(v189 - 8);
  v283 = *(v190 + 56);
  v284 = v189;
  v282 = v190 + 56;
  v283(v349, 1, 1);
  v191 = sub_1000C50F4();
  v192 = *(v191 - 8);
  v280 = *(v192 + 56);
  v281 = v191;
  v279 = v192 + 56;
  v280(v346, 1, 1);
  v193 = sub_1000C1DF4();
  (*(*(v193 - 8) + 56))(v347, 1, 1, v193);
  v194 = sub_1000C2244();
  (*(*(v194 - 8) + 56))(v348, 1, 1, v194);

  sub_1000C4F94();
  if (v352 >> 60 != 15 && v314 >> 60 != 15)
  {
    sub_100018C54(v351, v352);
    sub_100018C54(v298, v314);
    v195 = sub_1000C1544().super.isa;
    *&v357 = 0;
    v196 = [v320 propertyListWithData:v195 options:0 format:0 error:&v357];

    if (!v196)
    {
      v214 = v357;
      v215 = v351;
      v211 = v352;
      sub_100018CBC(v351, v352);

      v167 = sub_1000C1474();

      swift_willThrow();
      sub_100018CD0(v299, v300);

      sub_100018CBC(v289, v290);
      sub_100018CD0(v353, v354);
      v212 = v215;
      goto LABEL_170;
    }

    v197 = v357;
    sub_1000C58C4();
    swift_unknownObjectRelease();
    sub_1000124CC(&qword_1000FDB98, &qword_1000CF798);
    if ((swift_dynamicCast() & 1) == 0 || (v277[1] = sub_100092E6C(0x6D614E6567616D69, 0xE900000000000065, *&v356[0]), v199 = v198, , (v348 = v199) == 0))
    {
      sub_100018CBC(v351, v352);

      sub_1000C4FC4();
      sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
      v167 = swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CD0(v299, v300);

      sub_100018CBC(v289, v290);
      sub_100018CD0(v353, v354);
      v212 = v351;
      v216 = v352;
      goto LABEL_205;
    }

    v200 = v345;
    v202 = (v345 + 104);
    v201 = *(v345 + 104);
    v203 = v343;
    v204 = v344;
    (v201)(v343, enum case for ImageHeader.png(_:), v344);
    v278 = sub_1000C1594();
    v205 = *(v200 + 8);
    v205(v203, v204);
    v347 = v202;
    v346 = v201;
    (v201)(v203, enum case for ImageHeader.jpeg(_:), v204);
    v206 = sub_1000C1594();
    v207 = v203;
    v345 = v200 + 8;
    v208 = v205;
    v205(v207, v204);
    v209 = v278;
    if ((v278 & 1) != 0 && sub_1000C1584())
    {
      v210 = v351;
      v211 = v352;
      sub_100018CBC(v351, v352);

      sub_1000C4FC4();
      sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
      v167 = swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CD0(v299, v300);

      sub_100018CBC(v289, v290);
      sub_100018CD0(v353, v354);
      v212 = v210;
LABEL_170:
      v216 = v211;
LABEL_205:
      sub_100018CBC(v212, v216);
      sub_1000A485C(v387);
      sub_100018CBC(v322, v301);
      sub_100018CBC(v316, v310);
      sub_100018CBC(v318, v309);
      sub_100018CBC(v311, v303);
      sub_100018CBC(v308, v315);
      sub_100018CBC(v307, v306);
      sub_100018CBC(v302, v304);
      sub_100018F90(&v371, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v367, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v375, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v363, &qword_1000FDB90, &unk_1000CF780);
      v245 = v298;
      v246 = v314;
      sub_100018CBC(v298, v314);
      sub_100018CBC(v292, v293);
      sub_100018CBC(v295, v296);
      sub_100018CBC(v291, v294);
      sub_100018CD0(v297, v355);
      sub_100018F90(&v383, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
      sub_100018CD0(v313, v317);
      v247 = sub_1000C4F84();
      (*(*(v247 - 8) + 8))(v350, v247);
      v184 = v245;
      v185 = v246;
      goto LABEL_144;
    }

    v219 = v343;
    v220 = v344;
    (v346)(v343, enum case for ImageHeader.heif_jpeg(_:), v344);
    v221 = sub_1000C1594();
    v208(v219, v220);
    if (v221 & 1) != 0 || (v222 = v343, v223 = v344, (v346)(v343, enum case for ImageHeader.mpo(_:), v344), v224 = sub_1000C1594(), v208(v222, v223), ((v209 | v206) & 1) == 0) || (v224)
    {

      sub_1000C15A4();
      *&v357 = 0;
      *(&v357 + 1) = 0xE000000000000000;
      sub_1000C5944(41);

      *&v357 = 0xD000000000000027;
      *(&v357 + 1) = 0x80000001000D8400;
      v249 = v341;
      v412._countAndFlagsBits = sub_1000C20C4();
      sub_1000C52E4(v412);

      sub_1000C4FC4();
      sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
      v167 = swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      v208(v249, v344);
      *&v356[0] = v167;
      swift_errorRetain();
      sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
      if (swift_dynamicCast())
      {
        v250 = v351;
        v251 = v352;
        sub_100018CBC(v351, v352);

        v252 = v332;
        v253 = v333;
        (*(v333 + 32))(v332, v324, v342);
        *&v357 = 0;
        *(&v357 + 1) = 0xE000000000000000;
        sub_1000C5944(41);

        *&v357 = 0xD000000000000027;
        *(&v357 + 1) = 0x80000001000D8400;
        v413._countAndFlagsBits = sub_1000C3564();
        sub_1000C52E4(v413);

        sub_1000C4FC4();
        sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
        v167 = swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        sub_100018CD0(v299, v300);

        sub_100018CBC(v289, v290);
        sub_100018CD0(v353, v354);
        sub_100018CBC(v250, v251);
        sub_1000A485C(v387);
        sub_100018CBC(v322, v301);
        sub_100018CBC(v316, v310);
        sub_100018CBC(v318, v309);
        sub_100018CBC(v311, v303);
        sub_100018CBC(v308, v315);
        sub_100018CBC(v307, v306);
        sub_100018CBC(v302, v304);
        sub_100018F90(&v371, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v367, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v375, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v363, &qword_1000FDB90, &unk_1000CF780);
        v254 = v298;
        v255 = v314;
        sub_100018CBC(v298, v314);
        sub_100018CBC(v292, v293);
        sub_100018CBC(v295, v296);
        sub_100018CBC(v291, v294);
        sub_100018CD0(v297, v355);
        sub_100018F90(&v383, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
        sub_100018CD0(v313, v317);
        (*(v253 + 8))(v252, v342);
        v256 = sub_1000C4F84();
        (*(*(v256 - 8) + 8))(v350, v256);
        v257 = v254;
        v258 = v255;
      }

      else
      {
        v259 = sub_1000C4F84();
        (*(*(v259 - 8) + 8))(v350, v259);
        sub_100018CBC(v289, v290);
        sub_100018CBC(v322, v301);
        sub_100018CBC(v318, v309);
        sub_100018CBC(v316, v310);
        sub_100018CD0(v313, v317);
        sub_100018CBC(v308, v315);
        sub_100018CBC(v307, v306);
        sub_100018CBC(v311, v303);
        sub_100018CBC(v302, v304);
        sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v383, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v371, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v367, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v375, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v363, &qword_1000FDB90, &unk_1000CF780);
        sub_100018CD0(v353, v354);
        sub_100018CD0(v297, v355);
        sub_100018CD0(v299, v300);

        v260 = v351;
        v261 = v352;
        sub_100018CBC(v351, v352);
        v262 = v298;
        v263 = v314;
        sub_100018CBC(v298, v314);
        sub_1000A485C(v387);
        sub_100018CBC(v291, v294);
        sub_100018CBC(v292, v293);
        sub_100018CBC(v295, v296);
        sub_100018CBC(v262, v263);
        v257 = v260;
        v258 = v261;
      }

      sub_100018CBC(v257, v258);

      goto LABEL_128;
    }

    v226 = v326;
    v225 = v327;
    v227 = &enum case for Image.Encoding.png(_:);
    if ((v209 & 1) == 0)
    {
      v227 = &enum case for Image.Encoding.jpeg(_:);
    }

    v228 = v328;
    (*(v327 + 104))(v326, *v227, v328);
    *(&v358 + 1) = &type metadata for Data;
    *&v359 = &protocol witness table for Data;
    v229 = v298;
    *&v357 = v298;
    v230 = v314;
    *(&v357 + 1) = v314;
    v231 = v331;
    (*(v225 + 16))(v331, v226, v228);
    (*(v225 + 56))(v231, 0, 1, v228);
    sub_100018C68(v229, v230);
    sub_1000C4D64();
    v232 = v349;
    sub_1000C2004();
    (v283)(v232, 0, 1, v284);
    sub_1000C4EE4();
    sub_100018CBC(v351, v352);
    sub_100018CBC(v298, v314);
    (*(v225 + 8))(v226, v228);
  }

  if (v294 >> 60 != 15)
  {
    sub_100018C68(v291, v294);
    v233 = sub_1000C1544().super.isa;
    *&v357 = 0;
    v234 = [v320 propertyListWithData:v233 options:0 format:0 error:&v357];

    if (!v234)
    {
      v238 = v357;
      v239 = v291;
      v240 = v294;
      sub_100018CBC(v291, v294);

      v167 = sub_1000C1474();

      swift_willThrow();
      sub_100018CD0(v299, v300);

      sub_100018CBC(v289, v290);
      sub_100018CD0(v353, v354);
      v241 = v239;
      v242 = v240;
LABEL_213:
      sub_100018CBC(v241, v242);
      sub_1000A485C(v387);
      sub_100018CBC(v322, v301);
      sub_100018CBC(v316, v310);
      sub_100018CBC(v318, v309);
      sub_100018CBC(v311, v303);
      sub_100018CBC(v308, v315);
      sub_100018CBC(v307, v306);
      sub_100018CBC(v302, v304);
      sub_100018F90(&v371, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v367, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v375, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v363, &qword_1000FDB90, &unk_1000CF780);
      sub_100018CBC(v292, v293);
      sub_100018CBC(v295, v296);
      sub_100018CD0(v297, v355);
      sub_100018F90(&v383, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
      sub_100018CD0(v313, v317);
      v248 = sub_1000C4F84();
      (*(*(v248 - 8) + 8))(v350, v248);
      sub_100018CBC(v351, v352);
      v184 = v298;
      v185 = v314;
      goto LABEL_144;
    }

    v235 = v357;
    sub_1000C58C4();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      v236 = *&v356[0];
      sub_100092E08(0xD000000000000013, 0x80000001000D8350, *&v356[0], &v357);
      if (!*(&v358 + 1))
      {
        sub_100018CBC(v291, v294);

        sub_100018F90(&v357, &qword_1000FC828, &qword_1000CF790);
LABEL_212:
        sub_1000C4FC4();
        sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
        v167 = swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        sub_100018CD0(v299, v300);

        sub_100018CBC(v289, v290);
        sub_100018CD0(v353, v354);
        v241 = v291;
        v242 = v294;
        goto LABEL_213;
      }

      v237 = swift_dynamicCast();
      if (v237)
      {
        v349 = *&v356[0];
        __chkstk_darwin(v237);
        sub_10009C820(sub_1000A4EB4, v295, v296, v323);
        sub_1000A4ED4(v323, v340);
        sub_100092E08(0xD000000000000014, 0x80000001000D8370, v236, &v357);
        if (*(&v358 + 1))
        {
          v264 = swift_dynamicCast();
          v265 = *&v356[0];
          if (!v264)
          {
            v265 = 0;
          }

          v346 = v265;
          if (v264)
          {
            v266 = *(&v356[0] + 1);
          }

          else
          {
            v266 = 0;
          }

          v348 = v266;
        }

        else
        {
          sub_100018F90(&v357, &qword_1000FC828, &qword_1000CF790);
          v346 = 0;
          v348 = 0;
        }

        sub_100092E08(0xD00000000000001ALL, 0x80000001000D8390, v236, &v357);
        if (*(&v358 + 1))
        {
          v267 = swift_dynamicCast();
          v268 = *&v356[0];
          if (!v267)
          {
            v268 = 0;
          }

          v345 = v268;
          if (v267)
          {
            v269 = *(&v356[0] + 1);
          }

          else
          {
            v269 = 0;
          }

          v347 = v269;
        }

        else
        {
          sub_100018F90(&v357, &qword_1000FC828, &qword_1000CF790);
          v345 = 0;
          v347 = 0;
        }

        sub_100092E08(0xD000000000000014, 0x80000001000D83B0, v236, &v357);
        if (*(&v358 + 1))
        {
          if (swift_dynamicCast())
          {
            v270 = *&v356[0];
          }

          else
          {
            v270 = 0;
          }
        }

        else
        {
          sub_100018F90(&v357, &qword_1000FC828, &qword_1000CF790);
          v270 = 0;
        }

        sub_1000A2054(v270, v339);
        sub_100018CBC(v291, v294);

        if (v293 >> 60 == 15)
        {

          v271 = 1;
        }

        else
        {
          v273 = v292;
          v272 = v293;
          sub_100018C68(v292, v293);

          *(&v358 + 1) = &type metadata for Data;
          *&v359 = &protocol witness table for Data;
          *&v357 = v273;
          *(&v357 + 1) = v272;
          (*(v327 + 56))(v331, 1, 1, v328);
          sub_1000C4D64();
          sub_1000C50A4();
          v271 = 0;
        }

        v274 = sub_1000C50B4();
        v275 = *(*(v274 - 8) + 56);
        v276 = v338;
        v275(v338, v271, 1, v274);
        sub_100018F28(v340, v334, &qword_1000FD810, &unk_1000CF740);
        v275(v336, 1, 1, v274);
        sub_100018F28(v276, v337, &qword_1000FDB40, &qword_1000CF730);
        sub_100018F28(v339, v335, &qword_1000FDB48, &qword_1000CF738);
        sub_1000C50E4();
        (v280)(v330, 0, 1, v281);
        sub_1000C4F74();
        sub_100018CD0(v299, v300);

        sub_100018CD0(v353, v354);
        sub_100018CBC(v291, v294);
        sub_1000A485C(v387);
        sub_100018CBC(v322, v301);
        sub_100018CBC(v316, v310);
        sub_100018CBC(v318, v309);
        sub_100018CBC(v311, v303);
        sub_100018CBC(v308, v315);
        sub_100018CBC(v307, v306);
        sub_100018CBC(v302, v304);
        sub_100018F90(&v371, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v367, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v375, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v363, &qword_1000FDB90, &unk_1000CF780);
        sub_100018CBC(v292, v293);
        sub_100018CBC(v295, v296);
        sub_100018CD0(v297, v355);
        sub_100018F90(&v383, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
        sub_100018CD0(v313, v317);
        sub_100018F90(v338, &qword_1000FDB40, &qword_1000CF730);
        sub_100018F90(v339, &qword_1000FDB48, &qword_1000CF738);
        sub_100018F90(v340, &qword_1000FD810, &unk_1000CF740);
        goto LABEL_186;
      }

      sub_100018CBC(v291, v294);
    }

    else
    {
      sub_100018CBC(v291, v294);
    }

    goto LABEL_212;
  }

  sub_100018CD0(v299, v300);

  sub_100018CD0(v353, v354);
  sub_1000A485C(v387);
  sub_100018CBC(v322, v301);
  sub_100018CBC(v292, v293);
  sub_100018CBC(v295, v296);
  sub_100018CD0(v297, v355);
  sub_100018CD0(v313, v317);
  sub_100018CBC(v316, v310);
  sub_100018CBC(v318, v309);
  sub_100018CBC(v311, v303);
  sub_100018CBC(v308, v315);
  sub_100018CBC(v307, v306);
  sub_100018CBC(v302, v304);
  sub_100018F90(&v383, &qword_1000FDB90, &unk_1000CF780);
  sub_100018F90(&v379, &qword_1000FDB90, &unk_1000CF780);
  sub_100018F90(&v371, &qword_1000FDB90, &unk_1000CF780);
  sub_100018F90(&v367, &qword_1000FDB90, &unk_1000CF780);
  sub_100018F90(&v375, &qword_1000FDB90, &unk_1000CF780);
  sub_100018F90(&v363, &qword_1000FDB90, &unk_1000CF780);

LABEL_186:
  sub_100018CBC(v289, v290);
  sub_100018CBC(v298, v314);
  return sub_100018CBC(v351, v352);
}

uint64_t *sub_1000A1EDC@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v19 = a2;
  v6 = sub_1000C2E34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000C4CC4();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v15 = *(a1 + 8);
  sub_100018C68(v16, v15);
  sub_1000C4F44();
  (*(v7 + 104))(v10, enum case for PosterArchive.PosterKitPosterRole.incomingCall(_:), v6);
  result = PosterArchive.init(posterArchiveData:workingDirectory:role:)(v16, v15, v14, v10, a3);
  if (v3)
  {
    *v19 = v3;
  }

  return result;
}

uint64_t sub_1000A2054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = sub_1000C30B4();
  v48 = *(v52 - 8);
  v5 = *(v48 + 64);
  v6 = __chkstk_darwin(v52);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v43 - v9;
  v11 = sub_1000124CC(&qword_1000FC608, qword_1000CA058);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v43 - v17;
  __chkstk_darwin(v16);
  v20 = v43 - v19;
  v21 = sub_1000C4D24();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  if (!a1)
  {
    v36 = sub_1000C50D4();
    return (*(*(v36 - 8) + 56))(a2, 1, 1, v36);
  }

  v44 = a2;
  v45 = v43 - v27;
  v46 = v28;
  v47 = v26;
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v29 = sub_100099FF8(0x656D614E746E6F66, 0xEB0000000079654BLL);
  if ((v30 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_10001D804(*(a1 + 56) + 32 * v29, v51);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!*(a1 + 16) || (v43[1] = v49, v43[2] = v50, v31 = sub_100099FF8(0x657A6953746E6F66, 0xEB0000000079654BLL), (v32 & 1) == 0) || (sub_10001D804(*(a1 + 56) + 32 * v31, v51), (swift_dynamicCast() & 1) == 0))
  {

LABEL_18:
    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    goto LABEL_19;
  }

  if (!*(a1 + 16) || (v33 = sub_100099FF8(0x67696557746E6F66, 0xED000079654B7468), (v34 & 1) == 0) || (sub_10001D804(*(a1 + 56) + 32 * v33, v51), (swift_dynamicCast() & 1) == 0))
  {

    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
LABEL_19:
    sub_1000C4FB4();
    return swift_willThrow();
  }

  sub_1000A2948(a1, 0x6F6C6F43746E6F66, 0xEC00000079654B72, v20);
  if (v2)
  {
  }

  v37 = v46;
  if ((*(v46 + 48))(v20, 1, v47) == 1)
  {

    sub_100018F90(v20, &qword_1000FC608, qword_1000CA058);
    goto LABEL_18;
  }

  (*(v37 + 32))(v45, v20, v47);
  if (*(a1 + 16))
  {
    v38 = sub_100099FF8(0x6369747265567369, 0xED000079654B6C61);
    if (v39)
    {
      sub_10001D804(*(a1 + 56) + 32 * v38, v51);
      swift_dynamicCast();
    }
  }

  if (*(a1 + 16) && (v40 = sub_100099FF8(0x79654B65707974, 0xE700000000000000), (v41 & 1) != 0) && (sub_10001D804(*(a1 + 56) + 32 * v40, v51), (swift_dynamicCast() & 1) != 0))
  {
    sub_1000C30C4();
    sub_1000A2948(a1, 0xD000000000000012, 0x80000001000D86B0, v18);
    (*(v46 + 16))(v25, v45, v47);
    (*(v48 + 16))(v8, v10, v52);
    sub_100018F28(v18, v15, &qword_1000FC608, qword_1000CA058);
    sub_1000C50C4();
    sub_100018F90(v18, &qword_1000FC608, qword_1000CA058);
    (*(v48 + 8))(v10, v52);
    (*(v46 + 8))(v45, v47);
    v42 = sub_1000C50D4();
    return (*(*(v42 - 8) + 56))(v44, 0, 1, v42);
  }

  else
  {

    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    return (*(v46 + 8))(v45, v47);
  }
}

uint64_t sub_1000A2948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a1 || !*(a1 + 16) || (v7 = sub_100099FF8(a2, a3), (v8 & 1) == 0) || (sub_10001D804(*(a1 + 56) + 32 * v7, &v28), sub_1000124CC(&qword_1000FDBA0, &qword_1000CF7A0), (swift_dynamicCast() & 1) == 0))
  {
    v27 = sub_1000C4D24();
    return (*(*(v27 - 8) + 56))(a4, 1, 1, v27);
  }

  v9 = v30;
  if (!*(v30 + 16))
  {
    goto LABEL_21;
  }

  v10 = sub_100099FF8(6579570, 0xE300000000000000);
  if ((v11 & 1) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  v28 = 0;
  v29 = 1;
  v13 = v12;
  sub_1000C5444();

  if (v29)
  {
    goto LABEL_21;
  }

  if (!*(v9 + 16))
  {
    goto LABEL_21;
  }

  v14 = sub_100099FF8(0x6E65657267, 0xE500000000000000);
  if ((v15 & 1) == 0)
  {
    goto LABEL_21;
  }

  v16 = *(*(v9 + 56) + 8 * v14);
  v28 = 0;
  v29 = 1;
  v17 = v16;
  sub_1000C5444();

  if (v29)
  {
    goto LABEL_21;
  }

  if (!*(v9 + 16))
  {
    goto LABEL_21;
  }

  v18 = sub_100099FF8(1702194274, 0xE400000000000000);
  if (v19 & 1) == 0 || (v20 = *(*(v9 + 56) + 8 * v18), v28 = 0, v29 = 1, v21 = v20, sub_1000C5444(), v21, (v29) || !*(v9 + 16) || (v22 = sub_100099FF8(0x6168706C61, 0xE500000000000000), (v23 & 1) == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v24 = *(*(v9 + 56) + 8 * v22);

  v28 = 0;
  v29 = 1;
  sub_1000C5444();

  if (v29)
  {
LABEL_22:
    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  result = sub_1000C4D04();
  if (!v4)
  {
    v26 = sub_1000C4D24();
    return (*(*(v26 - 8) + 56))(a4, 0, 1, v26);
  }

  return result;
}

void sub_1000A2CA0(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t *a5)
{
  v9 = [objc_allocWithZone(NSData) initWithBytes:a1 length:16];
  v10 = *a3;
  *a3 = v9;

  if (a1)
  {
    v11 = sub_1000A5018((a1 + 16), 16);
    v12 = *a4;
    v13 = a4[1];
    *a4 = v11;
    a4[1] = v14;
    sub_100018CD0(v12, v13);
    v15 = sub_1000A5018((a1 + 32), 16);
    v16 = *a5;
    v17 = a5[1];
    *a5 = v15;
    a5[1] = v18;
    sub_100018CD0(v16, v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000A2D58(const void *a1, uint64_t a2, uint64_t a3, unint64_t a4, size_t a5)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(__b2, 0, 14);
      goto LABEL_15;
    }

    v7 = a1;
    v8 = *(a3 + 16);
    v9 = sub_1000C13F4();
    if (!v9)
    {
      goto LABEL_13;
    }

    a1 = sub_1000C1424();
    v10 = v8 - a1;
    if (!__OFSUB__(v8, a1))
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_9:
    v11 = a3;
    if (a3 > a3 >> 32)
    {
      __break(1u);
      goto LABEL_20;
    }

    v7 = a1;
    v9 = sub_1000C13F4();
    if (v9)
    {
      v12 = sub_1000C1424();
      v10 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {
LABEL_12:
        v9 += v10;
        goto LABEL_13;
      }

LABEL_20:
      __break(1u);
    }

LABEL_13:
    sub_1000C1414();
    a1 = v7;
    v13 = v9;
    goto LABEL_16;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  __b2[0] = a3;
  LOWORD(__b2[1]) = a4;
  BYTE2(__b2[1]) = BYTE2(a4);
  BYTE3(__b2[1]) = BYTE3(a4);
  BYTE4(__b2[1]) = BYTE4(a4);
  BYTE5(__b2[1]) = BYTE5(a4);
LABEL_15:
  v13 = __b2;
LABEL_16:
  result = timingsafe_bcmp(a1, v13, a5);
  if (result)
  {
    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000A2F9C(const void *a1, int a2, id a3, uint64_t a4, uint64_t *a5)
{
  cryptorRef = 0;
  v9 = a3;
  v10 = [a3 bytes];
  v11 = sub_1000C5664();
  v12 = sub_1000C5674();
  v13 = sub_1000C5664();
  v14 = sub_1000C5674();
  if (v11 < v13 || v14 < v11)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = sub_1000C5664();
  v16 = sub_1000C5674();
  if (v12 < v15 || v16 < v12)
  {
    goto LABEL_21;
  }

  if (__OFSUB__(v12, v11))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (CCCryptorCreateWithMode(1u, 4u, 0, 0, a1, v10, v12 - v11, 0, 0, 0, 0, &cryptorRef) || (v18 = cryptorRef) == 0)
  {
    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  v19 = *(a4 + 16);
  v20 = *(a4 + 24);
  v21 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v21 != 2)
    {
      v22 = 0;
      goto LABEL_19;
    }

    v24 = v19 + 16;
    v19 = *(v19 + 16);
    v23 = *(v24 + 8);
    v22 = v23 - v19;
    if (!__OFSUB__(v23, v19))
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_16:
    v25 = __OFSUB__(HIDWORD(v19), v19);
    v26 = HIDWORD(v19) - v19;
    if (!v25)
    {
      v22 = v26;
      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
  }

  if (v21)
  {
    goto LABEL_16;
  }

  v22 = BYTE6(v20);
LABEL_19:
  OutputLength = CCCryptorGetOutputLength(v18, v22, 1);
  dataOutMoved = 0;
  v28 = sub_1000A4944(OutputLength);
  v29 = *a5;
  v30 = a5[1];
  *a5 = v28;
  a5[1] = v31;
  sub_100018CD0(v29, v30);
  sub_1000A4F44(a4, v33);
  return sub_1000A3928(a5, a4, &cryptorRef, OutputLength, &dataOutMoved);
}

uint64_t sub_1000A323C(void *dataOut, int a2, uint64_t a3, CCCryptorRef *a4, size_t dataOutAvailable, size_t *dataOutMoved)
{
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      memset(dataIn, 0, 14);
      v14 = *a4;
      v13 = 0;
LABEL_25:
      result = CCCryptorUpdate(v14, dataIn, v13, dataOut, dataOutAvailable, dataOutMoved);
      if (!result)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    v17 = sub_1000C13F4();
    if (v17)
    {
      v18 = sub_1000C1424();
      if (__OFSUB__(v16, v18))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v17 += v16 - v18;
    }

    v19 = __OFSUB__(v15, v16);
    v20 = v15 - v16;
    if (!v19)
    {
      v21 = sub_1000C1414();
      if (v21 >= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      goto LABEL_19;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v12)
  {
    v13 = BYTE6(v11);
    dataIn[0] = v10;
    LODWORD(dataIn[1]) = v11;
    WORD2(dataIn[1]) = WORD2(v11);
    v14 = *a4;
    goto LABEL_25;
  }

  v23 = v10;
  v24 = v10 >> 32;
  v25 = v24 - v23;
  if (v24 < v23)
  {
    __break(1u);
    goto LABEL_30;
  }

  v17 = sub_1000C13F4();
  if (!v17)
  {
    goto LABEL_16;
  }

  v26 = sub_1000C1424();
  if (__OFSUB__(v23, v26))
  {
LABEL_32:
    __break(1u);
  }

  v17 += v23 - v26;
LABEL_16:
  v27 = sub_1000C1414();
  if (v27 >= v25)
  {
    v22 = v25;
  }

  else
  {
    v22 = v27;
  }

LABEL_19:
  if (v17)
  {
    v28 = v22;
  }

  else
  {
    v28 = 0;
  }

  result = CCCryptorUpdate(*a4, v17, v28, dataOut, dataOutAvailable, dataOutMoved);
  if (!result)
  {
LABEL_26:
    if (*dataOutMoved == dataOutAvailable)
    {
      return result;
    }
  }

LABEL_27:
  sub_1000C4FC4();
  sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
  swift_allocError();
  sub_1000C4FB4();
  return swift_willThrow();
}

void sub_1000A34BC(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_autoreleasePoolPush();
  sub_10009C934(a3, a1, a2, &v9, a4);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1000A3544(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1000C1534();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000A3894(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_1000A3894(v3, v4);
  }

  return sub_1000C1534();
}

uint64_t sub_1000A367C(uint64_t a1, unint64_t a2, id a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v25[0] = a1;
      LOWORD(v25[1]) = a2;
      BYTE2(v25[1]) = BYTE2(a2);
      BYTE3(v25[1]) = BYTE3(a2);
      BYTE4(v25[1]) = BYTE4(a2);
      BYTE5(v25[1]) = BYTE5(a2);
      v8 = v25 + BYTE6(a2);
      v9 = v25;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a5;
      v13 = sub_1000C13F4();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1000C1424();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1000C1414();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v7 != 2)
  {
    memset(v25, 0, 14);
    v9 = v25;
    v8 = v25;
    goto LABEL_24;
  }

  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1000C13F4();
  if (v13)
  {
    v14 = sub_1000C1424();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1000C1414();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = v18 + v13;
  if (v13)
  {
    LODWORD(v8) = v23;
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v9 = v13;
  a3 = v6;
  a4 = v5;
  a5 = v10;
LABEL_24:
  sub_1000A2F9C(v9, v8, a3, a4, a5);

  return sub_1000A485C(v5);
}

uint64_t sub_1000A3894(uint64_t a1, uint64_t a2)
{
  result = sub_1000C13F4();
  if (!result || (result = sub_1000C1424(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1000C1414();
      return sub_1000C1534();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A3928(uint64_t *a1, uint64_t a2, CCCryptorRef *a3, size_t dataOutAvailable, size_t *dataOutMoved)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
      sub_1000A4F44(a2, dataOut);
      sub_100018CD0(v9, v8);
      *&dataOut[0] = v9;
      WORD4(dataOut[0]) = v8;
      BYTE10(dataOut[0]) = BYTE2(v8);
      BYTE11(dataOut[0]) = BYTE3(v8);
      BYTE12(dataOut[0]) = BYTE4(v8);
      BYTE13(dataOut[0]) = BYTE5(v8);
      BYTE14(dataOut[0]) = BYTE6(v8);
      sub_1000A323C(dataOut, dataOut + BYTE6(v8), a2, a3, dataOutAvailable, dataOutMoved);
      v11 = *&dataOut[0];
      v12 = DWORD2(dataOut[0]) | ((WORD6(dataOut[0]) | (BYTE14(dataOut[0]) << 16)) << 32);
      sub_1000A485C(a2);
      result = sub_1000A485C(a2);
      *a1 = v11;
      a1[1] = v12;
      return result;
    }

    v25 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1000A4F44(a2, dataOut);
    sub_100018C68(v9, v8);
    sub_100018CD0(v9, v8);
    *a1 = xmmword_1000CF6D0;
    sub_100018CD0(0, 0xC000000000000000);
    sub_1000A4F44(a2, dataOut);
    v26 = v9 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v26 < v9)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (sub_1000C13F4() && __OFSUB__(v9, sub_1000C1424()))
      {
LABEL_31:
        __break(1u);
      }

      v27 = sub_1000C1434();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_1000C13D4();

      v25 = v30;
    }

    v31 = v26 < v9;
    v32 = v26 - v9;
    if (!v31)
    {

      result = sub_1000C13F4();
      if (result)
      {
        v33 = result;
        v34 = sub_1000C1424();
        v35 = v9 - v34;
        if (!__OFSUB__(v9, v34))
        {
          v36 = sub_1000C1414();
          if (v36 >= v32)
          {
            v37 = v32;
          }

          else
          {
            v37 = v36;
          }

          sub_1000A323C((v33 + v35), v33 + v35 + v37, a2, a3, dataOutAvailable, dataOutMoved);

          sub_1000A485C(a2);
          sub_1000A485C(a2);
          result = sub_1000A485C(a2);
          *a1 = v9;
          a1[1] = v25 | 0x4000000000000000;
          return result;
        }

        goto LABEL_29;
      }

LABEL_33:
      __break(1u);
      return result;
    }

    goto LABEL_27;
  }

  if (v10 != 2)
  {
    *(dataOut + 7) = 0;
    *&dataOut[0] = 0;
    sub_1000A323C(dataOut, dataOut, a2, a3, dataOutAvailable, dataOutMoved);
    return sub_1000A485C(a2);
  }

  sub_1000A4F44(a2, dataOut);

  sub_100018CD0(v9, v8);
  *&dataOut[0] = v9;
  *(&dataOut[0] + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1000CF6D0;
  sub_100018CD0(0, 0xC000000000000000);
  sub_1000C14F4();
  v14 = dataOut[0];
  v15 = *(*&dataOut[0] + 16);
  v16 = *(*&dataOut[0] + 24);
  v17 = sub_1000C13F4();
  if (!v17)
  {
    result = sub_1000A485C(a2);
    __break(1u);
    goto LABEL_33;
  }

  v18 = v17;
  v19 = sub_1000C1424();
  v20 = v15 - v19;
  if (__OFSUB__(v15, v19))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = __OFSUB__(v16, v15);
  v22 = v16 - v15;
  if (v21)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = sub_1000C1414();
  if (v23 >= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  sub_1000A323C((v18 + v20), v18 + v20 + v24, a2, a3, dataOutAvailable, dataOutMoved);
  sub_1000A485C(a2);
  result = sub_1000A485C(a2);
  *a1 = v14;
  a1[1] = *(&v14 + 1) | 0x8000000000000000;
  return result;
}

void sub_1000A3D7C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = a3;
  v31 = sub_1000C5124();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v31);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = sub_1000C5274();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5264();
  v17 = sub_1000C5234();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  if (v19 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *&v35 = a1;
    *(&v35 + 1) = a2;
    sub_100018C68(a1, a2);
    sub_1000C5114();
    *&v35 = v17;
    *(&v35 + 1) = v19;
    *&v34 = v17;
    *(&v34 + 1) = v19;
    sub_1000C5164();
    sub_1000A4600(&qword_1000FDB80, &type metadata accessor for SHA256);
    v30 = sub_1000A4648();
    sub_1000C5144();
    v33 = [objc_allocWithZone(NSData) init];
    v34 = xmmword_1000CF6D0;
    v35 = xmmword_1000CF6D0;
    __chkstk_darwin(v33);
    *(&v31 - 4) = &v33;
    *(&v31 - 3) = &v35;
    v29 = &v34;
    sub_1000C5104();
    sub_100018CBC(v17, v19);
    v20 = *(v5 + 8);
    v21 = v9;
    v22 = v31;
    v20(v21, v31);
    v20(v11, v22);
    v23 = v34;
    v24 = v35;
    v25 = *(&v34 + 1);
    v26 = v33;
    sub_100018C68(v24, *(&v24 + 1));
    sub_100018C68(v23, v25);
    sub_100018CD0(v23, v25);
    sub_100018CD0(v35, *(&v35 + 1));

    v27 = v32;
    *v32 = v26;
    *&v28 = v23;
    *(&v28 + 1) = v25;
    *(v27 + 3) = v28;
    *(v27 + 1) = v24;
  }
}

uint64_t sub_1000A4104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = objc_opt_self();
  isa = sub_1000C1544().super.isa;
  *&v34[0] = 0;
  v14 = [v12 propertyListWithData:isa options:0 format:0 error:v34];

  if (!v14)
  {
    v19 = *&v34[0];

    sub_1000C1474();

LABEL_26:
    swift_willThrow();
    sub_100018CBC(a5, a6);
    return sub_100018CD0(a3, a4);
  }

  v15 = *&v34[0];
  sub_1000C58C4();
  swift_unknownObjectRelease();
  sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(v32 + 16))
  {
    v16 = sub_100099FF8(118, 0xE100000000000000);
    if (v17)
    {
      v18 = v16;

      sub_10001D804(*(v32 + 56) + 32 * v18, v34);

      sub_100018F90(v34, &qword_1000FC828, &qword_1000CF790);
      sub_1000C4FC4();
      sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
LABEL_25:
      sub_1000C4FB4();
      goto LABEL_26;
    }
  }

  memset(v34, 0, sizeof(v34));
  sub_100018F90(v34, &qword_1000FC828, &qword_1000CF790);
  if (!*(v32 + 16))
  {
    goto LABEL_23;
  }

  v20 = sub_100099FF8(105, 0xE100000000000000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_10001D804(*(v32 + 56) + 32 * v20, v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v22 = v32;
  if (!*(v32 + 16) || (v23 = sub_100099FF8(100, 0xE100000000000000), v22 = v32, (v24 & 1) == 0))
  {
    sub_100018CD0(v22, v33);
    goto LABEL_23;
  }

  sub_10001D804(*(v32 + 56) + 32 * v23, v34);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v28 = v32;
    v29 = v33;
LABEL_21:
    sub_100018CD0(v28, v29);
LABEL_24:

    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    goto LABEL_25;
  }

  if (!*(v32 + 16) || (v25 = sub_100099FF8(116, 0xE100000000000000), (v26 & 1) == 0))
  {
    sub_100018CD0(v32, v33);
    sub_100018CD0(v32, v33);
LABEL_23:

    goto LABEL_24;
  }

  sub_10001D804(*(v32 + 56) + 32 * v25, v34);

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100018CD0(v32, v33);
    v28 = v32;
    v29 = v33;
    goto LABEL_21;
  }

  sub_100018CD0(a3, a4);
  result = v32;
  if (a6 >> 60 == 15)
  {
    a6 = v33;
  }

  else
  {
    sub_100018CD0(v32, v33);
    result = a5;
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = v32;
  a7[3] = v33;
  a7[4] = v32;
  a7[5] = v33;
  a7[6] = result;
  a7[7] = a6;
  return result;
}

uint64_t sub_1000A4600(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000A4648()
{
  result = qword_1000FDB88;
  if (!qword_1000FDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDB88);
  }

  return result;
}

uint64_t sub_1000A469C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v4)
    {
      if (BYTE6(a3) != a4)
      {
        goto LABEL_13;
      }

LABEL_8:
      __chkstk_darwin(result);
      sub_1000124CC(&qword_1000FDB70, &qword_1000CF770);
      return sub_1000C5134();
    }

    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 != a4)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  if (v4 == 2)
  {
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (v7)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v8 == a4)
    {
      goto LABEL_8;
    }
  }

  else if (!a4)
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_1000C4FC4();
  sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion);
  swift_allocError();
  sub_1000C4FB4();
  return swift_willThrow();
}

uint64_t sub_1000A488C(_BYTE *__src, _BYTE *a2)
{
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
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000A4944(uint64_t result)
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
      v2 = sub_1000C1434();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1000C1404();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1000C1524();
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

uint64_t sub_1000A49E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(&v37 + 1) = a4;
  *&v37 = a3;
  v35 = a2;
  v39 = sub_1000C5124();
  v38 = *(v39 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v39);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000124CC(&qword_1000FDB70, &qword_1000CF770);
  v40 = *(v49 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v49);
  v10 = &v34 - v9;
  v11 = sub_1000C5274();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(a1 + 8);
  sub_1000C5254();
  v18 = sub_1000C5234();
  v20 = v19;
  result = (*(v12 + 8))(v15, v11);
  if (v20 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v48 = *(a1 + 32);
    *&v45 = v18;
    *(&v45 + 1) = v20;
    v42 = &type metadata for Data;
    v43 = &protocol witness table for Data;
    v41 = *(a1 + 32);
    v22 = sub_10001530C(&v41, &type metadata for Data);
    v24 = *v22;
    v23 = v22[1];
    sub_100018C54(v18, v20);
    sub_1000A4F7C(&v48, &v46);
    v25 = v36;
    sub_1000A3544(v24, v23);
    sub_100018CBC(v18, v20);
    sub_100015F68(&v41);
    v26 = v45;
    v47 = *(a1 + 16);
    v46 = v45;
    v42 = &type metadata for Data;
    v43 = &protocol witness table for Data;
    v41 = *(a1 + 16);
    v27 = sub_10001530C(&v41, &type metadata for Data);
    v29 = *v27;
    v28 = v27[1];
    sub_100018C68(v26, *(&v26 + 1));
    sub_1000A4F7C(&v47, v44);
    sub_1000A3544(v29, v28);
    sub_100018CD0(v26, *(&v26 + 1));
    sub_100015F68(&v41);
    v30 = v46;
    v41 = v46;
    v46 = v37;
    sub_100018C68(v37, *(&v37 + 1));
    sub_1000C5114();
    sub_1000C5164();
    sub_1000A4600(&qword_1000FDB80, &type metadata accessor for SHA256);
    sub_1000A4648();
    sub_1000C5154();
    (*(v38 + 8))(v7, v39);
    sub_1000A469C(v10, *(a1 + 48), *(a1 + 56), 32);
    if (v25)
    {
      (*(v40 + 8))(v10, v49);
      sub_100018CD0(v30, *(&v30 + 1));
    }

    else
    {
      v46 = xmmword_1000CF6D0;
      v31 = v48;
      v32 = v35;
      sub_1000A4F44(a1, &v41);
      sub_1000A367C(v31, *(&v31 + 1), v32, a1, &v46);
      sub_100018CD0(v30, *(&v30 + 1));
      (*(v40 + 8))(v10, v49);
      v33 = *(&v46 + 1);
      a1 = v46;
      sub_100018C68(v46, *(&v46 + 1));
      sub_100018CD0(a1, v33);
    }

    return a1;
  }

  return result;
}

uint64_t sub_1000A4ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD810, &unk_1000CF740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A5018(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1000A488C(a1, &a1[a2]);
  }

  v3 = sub_1000C1434();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1000C13E4();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1000C1524();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

__n128 sub_1000A50C8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000A50DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1000A5124(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000A5194(uint64_t a1)
{
  result = sub_100012BEC();
  *(a1 + 8) = result;
  return result;
}

void sub_1000A5204(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v3 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v148 = &v133 - v5;
  v152 = sub_1000C5974();
  v159 = *(v152 - 8);
  v6 = *(v159 + 64);
  v7 = __chkstk_darwin(v152);
  v149 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v162 = &v133 - v10;
  __chkstk_darwin(v9);
  v151 = &v133 - v11;
  v12 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v155 = &v133 - v14;
  v161 = sub_1000C1614();
  v156 = *(v161 - 8);
  v15 = *(v156 + 64);
  __chkstk_darwin(v161);
  v146 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for CrossServiceAssociationMessageContents();
  v17 = *(*(v154 - 8) + 64);
  v18 = __chkstk_darwin(v154);
  v145 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  *&v153 = &v133 - v21;
  __chkstk_darwin(v20);
  v150 = (&v133 - v22);
  v23 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v158 = &v133 - v25;
  v26 = sub_1000C1974();
  v157 = *(v26 - 8);
  v27 = *(v157 + 64);
  __chkstk_darwin(v26);
  v29 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000C4FC4();
  v160 = *(v30 - 8);
  v31 = *(v160 + 64);
  __chkstk_darwin(v30);
  v33 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000C4ED4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v39 = &v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v133 - v40;
  v42 = v163;
  sub_1000C1994();
  if (!v42)
  {
    v137 = v39;
    v140 = v29;
    v141 = v26;
    v138 = 0;
    v43 = v162;
    v142 = v33;
    v143 = v41;
    v144 = v34;
    v163 = v35;
    v44 = sub_1000C1984();
    if (v45 >> 60 == 15)
    {
      sub_100014F70();
      v46 = sub_1000C57E4();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1000C94D0;
      v48 = v155;
      v49 = v143;
      sub_1000C4EC4();
      (*(v156 + 56))(v48, 0, 1, v161);
      v50 = sub_1000C4A84();
      v52 = v51;
      sub_100018F90(v48, &qword_1000FC520, &qword_1000C9D20);
      *(v47 + 56) = &type metadata for String;
      *(v47 + 64) = sub_100014FBC();
      *(v47 + 32) = v50;
      *(v47 + 40) = v52;
      sub_1000C5554();
      sub_1000C1A44();

      sub_1000A681C();
      swift_allocError();
      swift_willThrow();
      (*(v163 + 8))(v49, v144);
      return;
    }

    v133 = a1;
    v135 = v44;
    v136 = v45;
    isa = sub_1000C1544().super.isa;
    v54 = [(objc_class *)isa _imOptionallyDecompressData];

    v155 = sub_1000C1564();
    v56 = v55;

    v139 = v56;
    v57 = v56 >> 62;
    if ((v56 >> 62) > 1)
    {
      v58 = v30;
      v66 = v159;
      v60 = v160;
      v61 = v142;
      v62 = v43;
      v64 = v157;
      v67 = v158;
      v63 = v141;
      v65 = v140;
      v59 = v161;
      if (v57 != 2)
      {
        goto LABEL_16;
      }

      v69 = *(v155 + 16);
      v68 = *(v155 + 24);
      v70 = __OFSUB__(v68, v69);
      v71 = v68 - v69;
      if (!v70)
      {
        if (v71 > 0)
        {
          goto LABEL_11;
        }

LABEL_16:
        v134 = v58;
        v109 = v61;
        (*(v64 + 104))(v65, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v63);
        sub_1000C1964();
        (*(v64 + 8))(v65, v63);
        sub_1000C4FB4();
        sub_100014F70();
        v110 = sub_1000C57E4();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1000C94D0;
        v112 = v60;
        v113 = v60;
        v114 = v109;
        v115 = *(v112 + 16);
        v116 = v109;
        v117 = v134;
        v115(v67, v116, v134);
        (*(v113 + 56))(v67, 0, 1, v117);
        v118 = sub_1000C4A84();
        v119 = v67;
        v121 = v120;
        sub_100018F90(v119, &qword_1000FC438, &unk_1000C9DC0);
        *(v111 + 56) = &type metadata for String;
        *(v111 + 64) = sub_100014FBC();
        *(v111 + 32) = v118;
        *(v111 + 40) = v121;
        sub_1000C5554();
        sub_1000C1A44();

        sub_1000A6ED0(&qword_1000FC360, &type metadata accessor for Explosion);
        swift_allocError();
        v115(v122, v114, v117);
        swift_willThrow();
        sub_100018CBC(v135, v136);
        sub_100018CD0(v155, v139);
        (*(v113 + 8))(v114, v117);
LABEL_19:
        (*(v163 + 8))(v143, v144);
        return;
      }

      __break(1u);
    }

    else
    {
      v58 = v30;
      v60 = v160;
      v59 = v161;
      v61 = v142;
      v62 = v43;
      v63 = v141;
      v64 = v157;
      v65 = v140;
      if (!v57)
      {
        v67 = v158;
        v66 = v159;
        if (!BYTE6(v139))
        {
          goto LABEL_16;
        }

LABEL_11:
        v72 = sub_1000C1464();
        v73 = *(v72 + 48);
        v74 = *(v72 + 52);
        swift_allocObject();
        v75 = sub_1000C1454();
        sub_1000A6ED0(&qword_1000FDBB8, type metadata accessor for CrossServiceAssociationMessageContents);
        v76 = v153;
        v77 = v138;
        sub_1000C1444();
        if (!v77)
        {
          v123 = v150;
          sub_1000A6870(v76, v150);
          sub_1000C1994();
          v129 = v145;
          sub_1000A6930(v123, v145);
          (*(v156 + 32))(v146, v129, v59);
          sub_1000C4A94();
          v130 = v163;
          v131 = v144;
          v132 = v143;
          sub_100018CBC(v135, v136);

          sub_100018CD0(v155, v139);
          sub_1000A68D4(v123);
          (*(v130 + 8))(v132, v131);
          return;
        }

        v134 = v58;
        v161 = v75;
        v164 = v77;
        swift_errorRetain();
        sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
        v79 = v151;
        v78 = v152;
        if (swift_dynamicCast())
        {

          (*(v66 + 32))(v62, v79, v78);
          v156 = sub_100014F70();
          v80 = v78;
          v81 = sub_1000C57E4();
          v154 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
          v82 = swift_allocObject();
          v153 = xmmword_1000C94D0;
          *(v82 + 16) = xmmword_1000C94D0;
          v83 = v66;
          v84 = v62;
          v150 = *(v66 + 16);
          v85 = v148;
          v86 = v62;
          v87 = v80;
          (v150)(v148, v86, v80);
          (*(v83 + 56))(v85, 0, 1, v80);
          v88 = sub_1000C4A84();
          v89 = v134;
          v91 = v90;
          sub_100018F90(v85, &qword_1000FC430, &unk_1000C9B00);
          *(v82 + 56) = &type metadata for String;
          v151 = sub_100014FBC();
          *(v82 + 64) = v151;
          *(v82 + 32) = v88;
          *(v82 + 40) = v91;
          sub_1000C5554();
          sub_1000C1A44();

          v92 = v157;
          v93 = v140;
          v94 = v141;
          (*(v157 + 104))(v140, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v141);
          sub_1000C1964();
          (*(v92 + 8))(v93, v94);
          (v150)(v149, v84, v87);
          v95 = v142;
          sub_1000C4FA4();
          v96 = sub_1000C57E4();
          v97 = swift_allocObject();
          *(v97 + 16) = v153;
          v98 = v160;
          v99 = *(v160 + 16);
          v100 = v158;
          v99(v158, v95, v89);
          v101 = v99;
          v102 = v98;
          (*(v98 + 56))(v100, 0, 1, v89);
          v103 = sub_1000C4A84();
          v105 = v104;
          sub_100018F90(v100, &qword_1000FC438, &unk_1000C9DC0);
          v106 = v151;
          *(v97 + 56) = &type metadata for String;
          *(v97 + 64) = v106;
          *(v97 + 32) = v103;
          *(v97 + 40) = v105;
          sub_1000C5554();
          sub_1000C1A44();

          sub_1000A6ED0(&qword_1000FC360, &type metadata accessor for Explosion);
          swift_allocError();
          v107 = v142;
          v101(v108, v142, v89);
          swift_willThrow();
          sub_100018CBC(v135, v136);

          sub_100018CD0(v155, v139);
          (*(v102 + 8))(v107, v89);
          (*(v159 + 8))(v162, v152);
          (*(v163 + 8))(v143, v144);

          return;
        }

        sub_100014F70();
        v124 = sub_1000C57E4();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_1000C94D0;
        v164 = v77;
        v126 = sub_1000C4A84();
        v128 = v127;
        *(v125 + 56) = &type metadata for String;
        *(v125 + 64) = sub_100014FBC();
        *(v125 + 32) = v126;
        *(v125 + 40) = v128;
        sub_1000C5554();
        sub_1000C1A44();

        swift_getErrorValue();
        swift_getDynamicType();
        v164 = 0;
        v165 = 0xE000000000000000;
        sub_1000C5944(22);

        v164 = 0xD000000000000014;
        v165 = 0x80000001000D5330;
        v166._countAndFlagsBits = sub_1000C5D34();
        sub_1000C52E4(v166);

        sub_1000A6ED0(&qword_1000FC360, &type metadata accessor for Explosion);
        swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        sub_100018CBC(v135, v136);

        sub_100018CD0(v155, v139);

        goto LABEL_19;
      }

      v67 = v158;
      v66 = v159;
      if (!__OFSUB__(HIDWORD(v155), v155))
      {
        if (HIDWORD(v155) - v155 > 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000A63D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1000C1614();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000124CC(&qword_1000FDC50, &qword_1000CFA98);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CrossServiceAssociationMessageContents();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000A6E7C();
  sub_1000C5CF4();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1000A6ED0(&qword_1000FDC60, &type metadata accessor for UUID);
    sub_1000C5AC4();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1000A6870(v14, v17);
  }

  return sub_100015F68(a1);
}

uint64_t sub_1000A665C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C19B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C1464();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_1000A6ED0(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();

  if (!v1)
  {
    sub_1000A5204(v7, a1);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t type metadata accessor for CrossServiceAssociationMessageContents()
{
  result = qword_1000FDC18;
  if (!qword_1000FDC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000A681C()
{
  result = qword_1000FDBB0;
  if (!qword_1000FDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDBB0);
  }

  return result;
}

uint64_t sub_1000A6870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrossServiceAssociationMessageContents();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A68D4(uint64_t a1)
{
  v2 = type metadata accessor for CrossServiceAssociationMessageContents();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A6930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrossServiceAssociationMessageContents();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A69B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1614();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A6A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1614();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000A6AA8()
{
  result = sub_1000C1614();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_1000A6B14()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

Swift::Int sub_1000A6B68()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

uint64_t sub_1000A6BAC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F2088;
  v7._object = v3;
  v5 = sub_1000C59F4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000A6C1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F20C0;
  v8._object = a2;
  v6 = sub_1000C59F4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_1000A6C74(uint64_t a1)
{
  v2 = sub_1000A6E7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A6CB0(uint64_t a1)
{
  v2 = sub_1000A6E7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A6D04(void *a1)
{
  v2 = sub_1000124CC(&qword_1000FDC68, &qword_1000CFAA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000A6E7C();
  sub_1000C5D04();
  sub_1000C1614();
  sub_1000A6ED0(&qword_1000FDC70, &type metadata accessor for UUID);
  sub_1000C5BB4();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1000A6E7C()
{
  result = qword_1000FDC58;
  if (!qword_1000FDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDC58);
  }

  return result;
}

uint64_t sub_1000A6ED0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000A6F2C()
{
  result = qword_1000FDC78;
  if (!qword_1000FDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDC78);
  }

  return result;
}

unint64_t sub_1000A6F84()
{
  result = qword_1000FDC80;
  if (!qword_1000FDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDC80);
  }

  return result;
}

unint64_t sub_1000A6FDC()
{
  result = qword_1000FDC88;
  if (!qword_1000FDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDC88);
  }

  return result;
}

unint64_t sub_1000A7040(uint64_t a1)
{
  result = sub_10001270C();
  *(a1 + 8) = result;
  return result;
}

void sub_1000A70B0(unint64_t a1@<X8>)
{
  v123 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v117 = &v104 - v3;
  v127 = sub_1000C5974();
  v125 = *(v127 - 1);
  v4 = *(v125 + 64);
  v5 = __chkstk_darwin(v127);
  v118 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v120 = &v104 - v8;
  __chkstk_darwin(v7);
  v119 = &v104 - v9;
  v10 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v122 = &v104 - v12;
  v13 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v121 = &v104 - v15;
  v16 = sub_1000C1974();
  v124 = *(v16 - 8);
  v17 = *(v124 + 64);
  __chkstk_darwin(v16);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C4FC4();
  v126 = *(v20 - 8);
  v21 = *(v126 + 64);
  __chkstk_darwin(v20);
  v23 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000C4ED4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v104 - v30;
  v32 = v128;
  sub_1000C1994();
  if (!v32)
  {
    v110 = v29;
    v112 = v19;
    v111 = 0;
    v113 = v16;
    v114 = v23;
    v33 = v127;
    v115 = v31;
    v116 = v24;
    v128 = v25;
    v34 = sub_1000C1984();
    if (v35 >> 60 == 15)
    {
      sub_100014F70();
      v36 = sub_1000C5744();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1000C94D0;
      v38 = v122;
      v39 = v115;
      sub_1000C4EC4();
      v40 = sub_1000C1614();
      (*(*(v40 - 8) + 56))(v38, 0, 1, v40);
      v41 = sub_1000C4A84();
      v43 = v42;
      sub_100018F90(v38, &qword_1000FC520, &qword_1000C9D20);
      *(v37 + 56) = &type metadata for String;
      *(v37 + 64) = sub_100014FBC();
      *(v37 + 32) = v41;
      *(v37 + 40) = v43;
      sub_1000C5554();
      sub_1000C1A44();

      sub_1000A8378();
      swift_allocError();
      swift_willThrow();
      (*(v128 + 8))(v39, v116);
      return;
    }

    v109 = v34;
    v122 = v35;
    isa = sub_1000C1544().super.isa;
    v45 = [(objc_class *)isa _imOptionallyDecompressData];

    v46 = sub_1000C1564();
    v48 = v47;

    v49 = v48 >> 62;
    v108 = v20;
    if ((v48 >> 62) > 1)
    {
      v55 = v125;
      v50 = v126;
      v51 = v113;
      v52 = v114;
      v53 = v124;
      v54 = v112;
      if (v49 != 2)
      {
        goto LABEL_16;
      }

      v57 = *(v46 + 16);
      v56 = *(v46 + 24);
      v58 = __OFSUB__(v56, v57);
      v59 = v56 - v57;
      if (!v58)
      {
        if (v59 > 0)
        {
          goto LABEL_11;
        }

LABEL_16:
        v89 = v51;
        v90 = v53;
        (*(v53 + 104))(v54, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v51);
        sub_1000C1964();
        v111 = v46;
        (*(v90 + 8))(v54, v89);
        sub_1000C4FB4();
        sub_100014F70();
        v91 = sub_1000C5744();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1000C94D0;
        v127 = *(v50 + 16);
        v93 = v121;
        v94 = v108;
        (v127)(v121, v52, v108);
        (*(v50 + 56))(v93, 0, 1, v94);
        v95 = sub_1000C4A84();
        v123 = v48;
        v97 = v96;
        sub_100018F90(v93, &qword_1000FC438, &unk_1000C9DC0);
        *(v92 + 56) = &type metadata for String;
        *(v92 + 64) = sub_100014FBC();
        *(v92 + 32) = v95;
        *(v92 + 40) = v97;
        sub_1000C5554();
        sub_1000C1A44();

        sub_1000A83CC(&qword_1000FC360, &type metadata accessor for Explosion);
        swift_allocError();
        (v127)(v98, v52, v94);
        swift_willThrow();
        sub_100018CBC(v109, v122);
        sub_100018CD0(v111, v123);
        (*(v50 + 8))(v52, v94);
LABEL_19:
        (*(v128 + 8))(v115, v116);
        return;
      }

      __break(1u);
    }

    else
    {
      v50 = v126;
      v51 = v113;
      v52 = v114;
      v53 = v124;
      v54 = v112;
      if (!v49)
      {
        v55 = v125;
        if (!BYTE6(v48))
        {
          goto LABEL_16;
        }

LABEL_11:
        v60 = sub_1000C1464();
        v61 = *(v60 + 48);
        v62 = *(v60 + 52);
        swift_allocObject();
        v63 = sub_1000C1454();
        sub_1000A8414();
        v64 = v111;
        sub_1000C1444();
        if (!v64)
        {
          sub_1000C1994();
          sub_1000C4204();
          (*(v128 + 8))(v115, v116);
          sub_100018CBC(v109, v122);
          sub_100018CD0(v46, v48);

          return;
        }

        v110 = v63;
        v111 = v46;
        v123 = v48;
        v129 = v64;
        swift_errorRetain();
        sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
        v65 = v119;
        if (swift_dynamicCast())
        {

          v66 = v120;
          (*(v55 + 32))(v120, v65, v33);
          v119 = sub_100014F70();
          v67 = sub_1000C5744();
          v107 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
          v68 = swift_allocObject();
          v106 = xmmword_1000C94D0;
          *(v68 + 16) = xmmword_1000C94D0;
          v105 = *(v55 + 16);
          v69 = v117;
          v105(v117, v66, v33);
          (*(v55 + 56))(v69, 0, 1, v33);
          v70 = sub_1000C4A84();
          v72 = v71;
          sub_100018F90(v69, &qword_1000FC430, &unk_1000C9B00);
          *(v68 + 56) = &type metadata for String;
          v117 = sub_100014FBC();
          *(v68 + 64) = v117;
          *(v68 + 32) = v70;
          *(v68 + 40) = v72;
          sub_1000C5554();
          sub_1000C1A44();

          v73 = v124;
          v74 = v112;
          v75 = v113;
          (*(v124 + 104))(v112, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v113);
          sub_1000C1964();
          (*(v73 + 8))(v74, v75);
          v105(v118, v66, v33);
          v76 = v114;
          sub_1000C4FA4();
          v77 = sub_1000C5744();
          v78 = swift_allocObject();
          *(v78 + 16) = v106;
          v79 = v126;
          v80 = *(v126 + 16);
          v81 = v121;
          v82 = v108;
          v80(v121, v76, v108);
          (*(v79 + 56))(v81, 0, 1, v82);
          v83 = sub_1000C4A84();
          v85 = v84;
          sub_100018F90(v81, &qword_1000FC438, &unk_1000C9DC0);
          v86 = v117;
          *(v78 + 56) = &type metadata for String;
          *(v78 + 64) = v86;
          *(v78 + 32) = v83;
          *(v78 + 40) = v85;
          sub_1000C5554();
          sub_1000C1A44();

          sub_1000A83CC(&qword_1000FC360, &type metadata accessor for Explosion);
          swift_allocError();
          v87 = v114;
          v80(v88, v114, v82);
          swift_willThrow();
          sub_100018CBC(v109, v122);

          sub_100018CD0(v111, v123);
          (*(v79 + 8))(v87, v82);
          (*(v125 + 8))(v120, v127);
          (*(v128 + 8))(v115, v116);

          return;
        }

        sub_100014F70();
        v99 = sub_1000C5744();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_1000C94D0;
        v129 = v64;
        v101 = sub_1000C4A84();
        v103 = v102;
        *(v100 + 56) = &type metadata for String;
        *(v100 + 64) = sub_100014FBC();
        *(v100 + 32) = v101;
        *(v100 + 40) = v103;
        sub_1000C5554();
        sub_1000C1A44();

        swift_getErrorValue();
        swift_getDynamicType();
        v129 = 0;
        v130 = 0xE000000000000000;
        sub_1000C5944(22);

        v129 = 0xD000000000000014;
        v130 = 0x80000001000D5330;
        v131._countAndFlagsBits = sub_1000C5D34();
        sub_1000C52E4(v131);

        sub_1000A83CC(&qword_1000FC360, &type metadata accessor for Explosion);
        swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        sub_100018CBC(v109, v122);

        sub_100018CD0(v111, v123);

        goto LABEL_19;
      }

      v55 = v125;
      if (!__OFSUB__(HIDWORD(v46), v46))
      {
        if (HIDWORD(v46) - v46 > 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    __break(1u);
  }
}