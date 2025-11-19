uint64_t sub_100048120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100013EC0(&qword_10007C6E0, qword_100055798);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for BaaCertificateChain(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BaaSignedDonation(0);
  sub_100045FB4(a1 + *(v14 + 28), v8, &qword_10007C6E0, qword_100055798);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100014204(v8, &qword_10007C6E0, qword_100055798);
  }

  sub_100044CB0(v8, v13, type metadata accessor for BaaCertificateChain);
  sub_10004B574(&qword_10007C6D8, type metadata accessor for BaaCertificateChain);
  sub_100050550();
  return sub_100046400(v13, type metadata accessor for BaaCertificateChain);
}

uint64_t sub_10004837C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_1000557D0;
  *(a2 + 1) = xmmword_1000557D0;
  v4 = &a2[*(a1 + 24)];
  _s19DPSubmissionService5EmptyVACycfC_0();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for BaaCertificateChain(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*sub_100048410(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = PPM_0_2_1.Extension.extensionType.getter;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_100048464(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B574(&qword_10007E718, type metadata accessor for BaaSignedDonation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100048504(uint64_t a1)
{
  v2 = sub_10004B574(&qword_10007C6B8, type metadata accessor for BaaSignedDonation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100048570()
{
  sub_10004B574(&qword_10007C6B8, type metadata accessor for BaaSignedDonation);

  return sub_1000504D0();
}

uint64_t sub_100048614()
{
  v0 = sub_100050590();
  sub_1000142C8(v0, static BaaCertificateChain._protobuf_nameMap);
  sub_100012CA8(v0, static BaaCertificateChain._protobuf_nameMap);
  sub_100013EC0(&qword_10007C7F8, &unk_1000559D0);
  v1 = (sub_100013EC0(&qword_10007C800, &qword_100059780) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100057D90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "intermediate_certificate";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100050560();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "leaf_certificate";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_100050570();
}

uint64_t BaaCertificateChain.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_100050420();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_100050430();
    }
  }

  return result;
}

uint64_t BaaCertificateChain.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_1000504F0();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = v0[2];
  v9 = v0[3];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = sub_1000504F0();
      if (v1)
      {
        return result;
      }

      goto LABEL_19;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_18;
  }

LABEL_19:
  v13 = v0 + *(type metadata accessor for BaaCertificateChain(0) + 24);
  return sub_1000503C0();
}

uint64_t static BaaCertificateChain.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for BaaCertificateChain(0) + 24);
  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage);
  return sub_100050740() & 1;
}

uint64_t sub_100048AC0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1000557D0;
  a2[1] = xmmword_1000557D0;
  v2 = a2 + *(a1 + 24);
  return _s19DPSubmissionService5EmptyVACycfC_0();
}

uint64_t sub_100048AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100048B60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100048C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B574(&qword_10007E710, type metadata accessor for BaaCertificateChain);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100048CA4(uint64_t a1)
{
  v2 = sub_10004B574(&qword_10007C6D8, type metadata accessor for BaaCertificateChain);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100048D10()
{
  sub_10004B574(&qword_10007C6D8, type metadata accessor for BaaCertificateChain);

  return sub_1000504D0();
}

uint64_t sub_100048D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage);
  return sub_100050740() & 1;
}

uint64_t sub_100048E78()
{
  v0 = sub_100050590();
  sub_1000142C8(v0, static DediscoDonation._protobuf_nameMap);
  sub_100012CA8(v0, static DediscoDonation._protobuf_nameMap);
  sub_100013EC0(&qword_10007C7F8, &unk_1000559D0);
  v1 = (sub_100013EC0(&qword_10007C800, &qword_100059780) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100058B20;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "collection_id";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100050560();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "algorithm";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "algorithm_parameters";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "fs_encrypted_share";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ds_encrypted_share";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "fs_public_key";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "ds_public_key";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "version_hash";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "report";
  *(v22 + 8) = 6;
  *(v22 + 16) = 2;
  v8();
  return sub_100050570();
}

uint64_t DediscoDonation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_100050420();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_100049378();
        }

        else
        {
LABEL_21:
          sub_100050430();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result <= 6)
    {
      if (result == 5)
      {
        goto LABEL_21;
      }

LABEL_2:
      sub_100050470();
    }

    else
    {
      if (result == 7 || result == 8)
      {
        goto LABEL_2;
      }

      if (result == 9)
      {
        goto LABEL_21;
      }
    }
  }
}

uint64_t sub_100049378()
{
  v0 = *(type metadata accessor for DediscoDonation(0) + 52);
  type metadata accessor for DediscoDonation.AlgorithmParameters(0);
  sub_10004B574(&qword_10007D610, type metadata accessor for DediscoDonation.AlgorithmParameters);
  return sub_100050490();
}

uint64_t DediscoDonation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_100050530(), !v4))
  {
    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_100050530(), !v4))
    {
      result = sub_1000496A4(v3, a1, a2, a3);
      if (!v4)
      {
        v14 = v3[4];
        v15 = v3[5];
        v16 = v15 >> 62;
        if ((v15 >> 62) > 1)
        {
          if (v16 != 2)
          {
            goto LABEL_20;
          }

          v17 = *(v14 + 16);
          v18 = *(v14 + 24);
        }

        else
        {
          if (!v16)
          {
            if ((v15 & 0xFF000000000000) == 0)
            {
LABEL_20:
              v19 = v3[6];
              v20 = v3[7];
              v21 = v20 >> 62;
              if ((v20 >> 62) > 1)
              {
                if (v21 != 2)
                {
                  goto LABEL_29;
                }

                v22 = *(v19 + 16);
                v23 = *(v19 + 24);
              }

              else
              {
                if (!v21)
                {
                  if ((v20 & 0xFF000000000000) == 0)
                  {
LABEL_29:
                    v24 = v3[9];
                    v25 = HIBYTE(v24) & 0xF;
                    if ((v24 & 0x2000000000000000) == 0)
                    {
                      v25 = v3[8] & 0xFFFFFFFFFFFFLL;
                    }

                    if (v25)
                    {
                      sub_100050530();
                    }

                    v26 = v3[11];
                    v27 = HIBYTE(v26) & 0xF;
                    if ((v26 & 0x2000000000000000) == 0)
                    {
                      v27 = v3[10] & 0xFFFFFFFFFFFFLL;
                    }

                    if (v27)
                    {
                      sub_100050530();
                    }

                    v28 = v3[13];
                    v29 = HIBYTE(v28) & 0xF;
                    if ((v28 & 0x2000000000000000) == 0)
                    {
                      v29 = v3[12] & 0xFFFFFFFFFFFFLL;
                    }

                    if (v29)
                    {
                      sub_100050530();
                    }

                    v30 = v3[14];
                    v31 = v3[15];
                    v32 = v31 >> 62;
                    if ((v31 >> 62) > 1)
                    {
                      if (v32 != 2)
                      {
                        goto LABEL_50;
                      }

                      v33 = *(v30 + 16);
                      v34 = *(v30 + 24);
                    }

                    else
                    {
                      if (!v32)
                      {
                        if ((v31 & 0xFF000000000000) == 0)
                        {
                          goto LABEL_50;
                        }

                        goto LABEL_49;
                      }

                      v33 = v30;
                      v34 = v30 >> 32;
                    }

                    if (v33 != v34)
                    {
LABEL_49:
                      sub_1000504F0();
                    }

LABEL_50:
                    v35 = v3 + *(type metadata accessor for DediscoDonation(0) + 48);
                    return sub_1000503C0();
                  }

LABEL_28:
                  sub_1000504F0();
                  goto LABEL_29;
                }

                v22 = v19;
                v23 = v19 >> 32;
              }

              if (v22 == v23)
              {
                goto LABEL_29;
              }

              goto LABEL_28;
            }

LABEL_19:
            sub_1000504F0();
            goto LABEL_20;
          }

          v17 = v14;
          v18 = v14 >> 32;
        }

        if (v17 == v18)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }
  }

  return result;
}

uint64_t sub_1000496A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100013EC0(&qword_10007D618, &qword_100056ED8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for DediscoDonation.AlgorithmParameters(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DediscoDonation(0);
  sub_100045FB4(a1 + *(v14 + 52), v8, &qword_10007D618, &qword_100056ED8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100014204(v8, &qword_10007D618, &qword_100056ED8);
  }

  sub_100044CB0(v8, v13, type metadata accessor for DediscoDonation.AlgorithmParameters);
  sub_10004B574(&qword_10007D610, type metadata accessor for DediscoDonation.AlgorithmParameters);
  sub_100050550();
  return sub_100046400(v13, type metadata accessor for DediscoDonation.AlgorithmParameters);
}

uint64_t sub_100049900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = xmmword_1000557D0;
  *(a2 + 48) = xmmword_1000557D0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0xE000000000000000;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0xE000000000000000;
  *(a2 + 112) = xmmword_1000557D0;
  v4 = a2 + *(a1 + 48);
  _s19DPSubmissionService5EmptyVACycfC_0();
  v5 = *(a1 + 52);
  v6 = type metadata accessor for DediscoDonation.AlgorithmParameters(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1000499A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100049A1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_100049A90(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = PPM_0_2_1.Extension.extensionType.getter;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_100049AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B574(&qword_10007E708, type metadata accessor for DediscoDonation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100049B84(uint64_t a1)
{
  v2 = sub_10004B574(&qword_10007D5E0, type metadata accessor for DediscoDonation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100049BF0()
{
  sub_10004B574(&qword_10007D5E0, type metadata accessor for DediscoDonation);

  return sub_1000504D0();
}

uint64_t sub_100049C94()
{
  v0 = sub_100050590();
  sub_1000142C8(v0, static DediscoDonation.AlgorithmParameters._protobuf_nameMap);
  sub_100012CA8(v0, static DediscoDonation.AlgorithmParameters._protobuf_nameMap);
  sub_100013EC0(&qword_10007C7F8, &unk_1000559D0);
  v1 = (sub_100013EC0(&qword_10007C800, &qword_100059780) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100058B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dimension";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100050560();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "epsilon";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "other_params";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_100050570();
}

uint64_t DediscoDonation.AlgorithmParameters.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_100050420();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_100050430();
        break;
      case 2:
        sub_100050460();
        break;
      case 1:
        sub_100050450();
        break;
    }
  }

  return result;
}

uint64_t DediscoDonation.AlgorithmParameters.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_100050510(), !v1))
  {
    if (*(v0 + 8) == 0.0 || (result = sub_100050520(), !v1))
    {
      v3 = *(v0 + 16);
      v4 = *(v0 + 24);
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 != 2)
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 16);
        v7 = *(v3 + 24);
      }

      else
      {
        if (!v5)
        {
          if ((v4 & 0xFF000000000000) == 0)
          {
            goto LABEL_15;
          }

LABEL_14:
          result = sub_1000504F0();
          if (v1)
          {
            return result;
          }

          goto LABEL_15;
        }

        v6 = v3;
        v7 = v3 >> 32;
      }

      if (v6 != v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v8 = v0 + *(type metadata accessor for DediscoDonation.AlgorithmParameters(0) + 28);
      return sub_1000503C0();
    }
  }

  return result;
}

uint64_t sub_10004A0F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0xC000000000000000;
  v2 = a2 + *(a1 + 28);
  return _s19DPSubmissionService5EmptyVACycfC_0();
}

uint64_t sub_10004A124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10004A19C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10004A240(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B574(&qword_10007E700, type metadata accessor for DediscoDonation.AlgorithmParameters);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004A2E0(uint64_t a1)
{
  v2 = sub_10004B574(&qword_10007D610, type metadata accessor for DediscoDonation.AlgorithmParameters);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004A34C()
{
  sub_10004B574(&qword_10007D610, type metadata accessor for DediscoDonation.AlgorithmParameters);

  return sub_1000504D0();
}

uint64_t sub_10004A40C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100050590();
  sub_1000142C8(v7, a2);
  sub_100012CA8(v7, a2);
  sub_100013EC0(&qword_10007C7F8, &unk_1000559D0);
  v8 = (sub_100013EC0(&qword_10007C800, &qword_100059780) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000557C0;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = enum case for _NameMap.NameDescription.standard(_:);
  v14 = sub_100050560();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_100050570();
}

uint64_t CollectionID.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_100050420();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100050470();
    }
  }

  return result;
}

uint64_t CollectionID.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_100050530(), !v1))
  {
    v6 = v0 + *(type metadata accessor for CollectionID(0) + 20);
    return sub_1000503C0();
  }

  return result;
}

uint64_t static CollectionID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_100050980() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for CollectionID(0) + 20);
  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage);
  return sub_100050740() & 1;
}

uint64_t sub_10004A7CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return _s19DPSubmissionService5EmptyVACycfC_0();
}

uint64_t sub_10004A7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10004A868(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_10004A8DC(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = PPM_0_2_1.Extension.extensionType.getter;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_10004A930(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B574(&qword_10007E6F8, type metadata accessor for CollectionID);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004A9D0(uint64_t a1)
{
  v2 = sub_10004B574(&qword_10007E1F0, type metadata accessor for CollectionID);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004AA3C()
{
  sub_10004B574(&qword_10007E1F0, type metadata accessor for CollectionID);

  return sub_1000504D0();
}

uint64_t sub_10004AAB8(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_100050980() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage);
  return sub_100050740() & 1;
}

uint64_t sub_10004AB94()
{
  v0 = sub_100050590();
  sub_1000142C8(v0, static Empty._protobuf_nameMap);
  sub_100012CA8(v0, static Empty._protobuf_nameMap);
  return sub_100050580();
}

uint64_t sub_10004AC04(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_100050590();

  return sub_100012CA8(v3, a2);
}

uint64_t sub_10004AC7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_100050590();
  v6 = sub_100012CA8(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Empty.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_100050420();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t static Empty.== infix(_:_:)()
{
  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage);
  return sub_100050740() & 1;
}

Swift::Int sub_10004AE40(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1000509E0();
  a1(0);
  sub_10004B574(a2, a3);
  sub_100050700();
  return sub_100050A00();
}

uint64_t sub_10004AEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B574(&qword_10007E6F0, type metadata accessor for Empty);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004AF98@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_100050590();
  v6 = sub_100012CA8(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_10004B034(uint64_t a1)
{
  v2 = sub_10004B574(&qword_10007E208, type metadata accessor for Empty);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004B0A0()
{
  sub_10004B574(&qword_10007E208, type metadata accessor for Empty);

  return sub_1000504D0();
}

uint64_t _s19DPSubmissionService25LoadTestExperimentalSetupV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v2 = *(type metadata accessor for LoadTestExperimentalSetup(0) + 28);
  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage);
  return sub_100050740() & 1;
}

uint64_t _s19DPSubmissionService17ProtectedDonationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100050390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100013EC0(&qword_10007C6D0, &qword_100055790);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_100013EC0(&qword_10007E740, &qword_100059798);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(type metadata accessor for ProtectedDonation(0) + 20);
  v18 = *(v13 + 56);
  v27 = a1;
  sub_100045FB4(a1 + v17, v16, &qword_10007C6D0, &qword_100055790);
  v28 = a2;
  sub_100045FB4(a2 + v17, &v16[v18], &qword_10007C6D0, &qword_100055790);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_100014204(v16, &qword_10007C6D0, &qword_100055790);
LABEL_9:
      sub_1000503E0();
      sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage);
      v20 = sub_100050740();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_100045FB4(v16, v11, &qword_10007C6D0, &qword_100055790);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_100014204(v16, &qword_10007E740, &qword_100059798);
    goto LABEL_7;
  }

  v21 = v26;
  (*(v5 + 32))(v26, &v16[v18], v4);
  sub_10004B574(&qword_10007E748, &type metadata accessor for Ckcode_ProtectedEnvelope);
  v22 = sub_100050740();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v11, v4);
  sub_100014204(v16, &qword_10007C6D0, &qword_100055790);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10004B574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s19DPSubmissionService17BaaSignedDonationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaaCertificateChain(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100013EC0(&qword_10007C6E0, qword_100055798);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  v13 = sub_100013EC0(&qword_10007E738, &qword_100059790);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v29 = v8;
  v30 = type metadata accessor for BaaSignedDonation(0);
  v17 = *(v30 + 28);
  v18 = *(v13 + 48);
  sub_100045FB4(a1 + v17, v16, &qword_10007C6E0, qword_100055798);
  sub_100045FB4(a2 + v17, &v16[v18], &qword_10007C6E0, qword_100055798);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_100045FB4(v16, v12, &qword_10007C6E0, qword_100055798);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = &v16[v18];
      v25 = v29;
      sub_100044CB0(v24, v29, type metadata accessor for BaaCertificateChain);
      if (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*v12, *(v12 + 1), *v25, *(v25 + 8)) & 1) != 0 && (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(v12 + 2), *(v12 + 3), *(v25 + 16), *(v25 + 24)))
      {
        v26 = *(v4 + 24);
        sub_1000503E0();
        sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage);
        v27 = sub_100050740();
        sub_100046400(v25, type metadata accessor for BaaCertificateChain);
        sub_100046400(v12, type metadata accessor for BaaCertificateChain);
        sub_100014204(v16, &qword_10007C6E0, qword_100055798);
        if (v27)
        {
          goto LABEL_6;
        }

LABEL_16:
        v21 = 0;
        return v21 & 1;
      }

      sub_100046400(v25, type metadata accessor for BaaCertificateChain);
      sub_100046400(v12, type metadata accessor for BaaCertificateChain);
      v22 = &qword_10007C6E0;
      v23 = qword_100055798;
LABEL_15:
      sub_100014204(v16, v22, v23);
      goto LABEL_16;
    }

    sub_100046400(v12, type metadata accessor for BaaCertificateChain);
LABEL_9:
    v22 = &qword_10007E738;
    v23 = &qword_100059790;
    goto LABEL_15;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_100014204(v16, &qword_10007C6E0, qword_100055798);
LABEL_6:
  v20 = *(v30 + 24);
  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage);
  v21 = sub_100050740();
  return v21 & 1;
}

uint64_t _s19DPSubmissionService15DediscoDonationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for DediscoDonation.AlgorithmParameters(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100013EC0(&qword_10007D618, &qword_100056ED8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_100013EC0(&qword_10007E730, &qword_100059788);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_100050980() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_100050980() & 1) == 0)
  {
    goto LABEL_33;
  }

  v29 = v8;
  v28 = type metadata accessor for DediscoDonation(0);
  v17 = *(v28 + 52);
  v18 = *(v13 + 48);
  sub_100045FB4(a1 + v17, v16, &qword_10007D618, &qword_100056ED8);
  sub_100045FB4(a2 + v17, &v16[v18], &qword_10007D618, &qword_100056ED8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_100045FB4(v16, v12, &qword_10007D618, &qword_100056ED8);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = v29;
      sub_100044CB0(&v16[v18], v29, type metadata accessor for DediscoDonation.AlgorithmParameters);
      if (*v12 == *v24 && *(v12 + 1) == *(v24 + 8) && (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(v12 + 2), *(v12 + 3), *(v24 + 16), *(v24 + 24)) & 1) != 0)
      {
        v25 = *(v4 + 28);
        sub_1000503E0();
        sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage);
        v26 = sub_100050740();
        sub_100046400(v24, type metadata accessor for DediscoDonation.AlgorithmParameters);
        sub_100046400(v12, type metadata accessor for DediscoDonation.AlgorithmParameters);
        sub_100014204(v16, &qword_10007D618, &qword_100056ED8);
        if (v26)
        {
          goto LABEL_10;
        }

LABEL_33:
        v21 = 0;
        return v21 & 1;
      }

      sub_100046400(v24, type metadata accessor for DediscoDonation.AlgorithmParameters);
      sub_100046400(v12, type metadata accessor for DediscoDonation.AlgorithmParameters);
      v22 = &qword_10007D618;
      v23 = &qword_100056ED8;
LABEL_32:
      sub_100014204(v16, v22, v23);
      goto LABEL_33;
    }

    sub_100046400(v12, type metadata accessor for DediscoDonation.AlgorithmParameters);
LABEL_25:
    v22 = &qword_10007E730;
    v23 = &qword_100059788;
    goto LABEL_32;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_25;
  }

  sub_100014204(v16, &qword_10007D618, &qword_100056ED8);
LABEL_10:
  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[4], a1[5], a2[4], a2[5]) & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[6], a1[7], a2[6], a2[7]) & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_100050980() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (sub_100050980() & 1) == 0 || (a1[12] != a2[12] || a1[13] != a2[13]) && (sub_100050980() & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[14], a1[15], a2[14], a2[15]) & 1) == 0)
  {
    goto LABEL_33;
  }

  v20 = *(v28 + 48);
  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage);
  v21 = sub_100050740();
  return v21 & 1;
}

uint64_t _s19DPSubmissionService15DediscoDonationV19AlgorithmParametersV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for DediscoDonation.AlgorithmParameters(0) + 28);
  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage);
  return sub_100050740() & 1;
}

uint64_t sub_10004BFE4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004C930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1000503E0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10004C9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1000503E0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10004CA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000503E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100013EC0(&qword_10007C6D0, &qword_100055790);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10004CB70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000503E0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100013EC0(&qword_10007C6D0, &qword_100055790);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10004CC78()
{
  sub_1000503E0();
  if (v0 <= 0x3F)
  {
    sub_10004D064(319, &unk_10007E318, &type metadata accessor for Ckcode_ProtectedEnvelope);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10004CD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1000503E0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100013EC0(&qword_10007C6E0, qword_100055798);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10004CE7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_1000503E0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100013EC0(&qword_10007C6E0, qword_100055798);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10004CFB4()
{
  sub_1000503E0();
  if (v0 <= 0x3F)
  {
    sub_10004D064(319, &unk_10007E3B0, type metadata accessor for BaaCertificateChain);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10004D064(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100050850();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10004D0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1000503E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10004D198(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1000503E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004D244()
{
  result = sub_1000503E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004D2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000503E0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100013EC0(&qword_10007D618, &qword_100056ED8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10004D418(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000503E0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100013EC0(&qword_10007D618, &qword_100056ED8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10004D548()
{
  sub_1000503E0();
  if (v0 <= 0x3F)
  {
    sub_10004D064(319, &unk_10007E4E8, type metadata accessor for DediscoDonation.AlgorithmParameters);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10004D624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1000503E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004D6F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1000503E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004D7B8()
{
  result = sub_1000503E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004D848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000503E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004D908(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000503E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004D9AC()
{
  result = sub_1000503E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004DA3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000503E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10004DABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000503E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10004DB2C()
{
  result = sub_1000503E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10004DC34(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = 134218242;
  v6 = [a1 statusCode];
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Client failed to download config file; status: %ld, error: %@", &v5, 0x16u);
}

void sub_10004DD10()
{
  sub_1000079DC();
  sub_1000079E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004DD80(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  sub_1000079DC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to read the JSON token fields with error %@.", v4, 0xCu);
}

void sub_10004DE88()
{
  sub_1000079DC();
  sub_1000079E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004E030(os_log_t log)
{
  v1 = 138412290;
  v2 = @"Cannot encode DAP extension - total length exceeds UINT16_MAX";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
}

void sub_10004E0C8(os_log_t log)
{
  v1 = 134217984;
  v2 = 15;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to download config: timeout on client (%lld sec)", &v1, 0xCu);
}

void sub_10004E18C(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error in reading config file: %@", &v4, 0xCu);
}

void sub_10004E378(os_log_t log)
{
  v1 = 138412290;
  v2 = @"Failed to upload DAP payload: leader URL is empty";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
}

void sub_10004E3FC()
{
  sub_10000AD28();
  sub_1000079E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004E4F8()
{
  sub_10000AD28();
  sub_1000079E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004E5F4()
{
  sub_10000AD28();
  sub_1000079E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004E670()
{
  sub_10000AD28();
  sub_1000079E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004E9EC(void **a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  sub_100009974(&_mh_execute_header, a2, a3, "Failed to sign data: %@", a5, a6, a7, a8, 2u);
}

void sub_10004EB38(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000079DC();
  sub_10000CC00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004EBC4(void *a1)
{
  v1 = [a1 path];
  sub_1000079DC();
  sub_10000CC00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004EC50(void *a1)
{
  v1 = [a1 tokensDirectoryPath];
  sub_1000079DC();
  sub_10000CC00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004ECDC(void *a1)
{
  v1 = [a1 tokensDirectoryPath];
  sub_1000079DC();
  sub_10000CC00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004EE38(uint64_t a1, void *a2)
{
  v7 = [a2 localizedDescription];
  sub_10000CC00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004F2AC(void *a1, NSObject *a2)
{
  v3 = [a1 key];
  sub_1000079DC();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Submitting via V1 for key=%@", v4, 0xCu);
}

void sub_10004F594(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = @"Unable to serialize payload dictionary.";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@ error: %@", &v2, 0x16u);
}

void sub_10004F918(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@ error: %@", &v3, 0x16u);
}

void sub_10004FDB0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 40);
  sub_1000079DC();
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to upload\tDAP report to %@, error: %@", v5, 0x16u);
}

void sub_1000500D0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

void sub_10005018C(os_log_t log)
{
  v1 = 138412290;
  v2 = @"Issuer URL length must be positive and not exceed 64KB.";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
}