uint64_t sub_1000E8284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseItem(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1000EB3B0(v14, v11, type metadata accessor for ResponseItem);
        sub_1000EB3B0(v15, v8, type metadata accessor for ResponseItem);
        v17 = _s22CloudKitImplementation12ResponseItemV2eeoiySbAC_ACtFZ_0(v11, v8);
        sub_1000EB418(v8, type metadata accessor for ResponseItem);
        sub_1000EB418(v11, type metadata accessor for ResponseItem);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1000E843C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadResource(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = (&v25 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v23 = 1;
      return v23 & 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1000EB3B0(v14, v11, type metadata accessor for UploadResource);
      sub_1000EB3B0(v15, v8, type metadata accessor for UploadResource);
      v17 = *v11;
      v18 = *v8;
      if (v8[8] == 1)
      {
        if (v18)
        {
          if (v18 == 1)
          {
            if (v17 != 1)
            {
              break;
            }
          }

          else if (v17 != 2)
          {
            break;
          }
        }

        else if (v17)
        {
          break;
        }
      }

      else if (v17 != v18)
      {
        break;
      }

      if ((v11[2] != *(v8 + 2) || v11[3] != *(v8 + 3)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v19 = v11[4];
      v20 = *(v8 + 4);
      if (v8[40] == 1)
      {
        v21 = *(v8 + 4);
        switch(v20)
        {
          case 13:
            if (v19 != 13)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 14:
            if (v19 != 14)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 15:
            if (v19 != 15)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 16:
            if (v19 != 16)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 17:
            if (v19 != 17)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 18:
            if (v19 != 18)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 19:
            if (v19 != 19)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 20:
            if (v19 != 20)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 21:
            if (v19 != 21)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 22:
            if (v19 != 22)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 23:
            if (v19 != 23)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 24:
            if (v19 != 24)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 25:
            if (v19 != 25)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 26:
            if (v19 != 26)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 27:
            if (v19 != 27)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 28:
            if (v19 != 28)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          default:
            break;
        }
      }

      if (v19 != v20)
      {
        break;
      }

LABEL_21:
      if ((sub_1000E93A0(v11[6], *(v8 + 6)) & 1) == 0)
      {
        break;
      }

      v22 = *(v4 + 32);
      type metadata accessor for UnknownStorage();
      sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000EB418(v8, type metadata accessor for UploadResource);
      sub_1000EB418(v11, type metadata accessor for UploadResource);
      if (v23)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v23 & 1;
    }

LABEL_56:
    sub_1000EB418(v8, type metadata accessor for UploadResource);
    sub_1000EB418(v11, type metadata accessor for UploadResource);
  }

  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1000E87F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestItem(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1000EB3B0(v14, v11, type metadata accessor for RequestItem);
      sub_1000EB3B0(v15, v8, type metadata accessor for RequestItem);
      v17 = *(v4 + 20);
      v18 = *&v11[v17];
      v19 = *&v8[v17];
      if (v18 != v19)
      {
        v20 = *&v11[v17];

        v21 = sub_1000E157C(v18, v19);

        if (!v21)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      sub_1000EB418(v8, type metadata accessor for RequestItem);
      sub_1000EB418(v11, type metadata accessor for RequestItem);
      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_1000EB418(v8, type metadata accessor for RequestItem);
    sub_1000EB418(v11, type metadata accessor for RequestItem);
  }

  return 0;
}

uint64_t sub_1000E8A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UntranscodableItem(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_30:
    v20 = 0;
    return v20 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1000EB3B0(v14, v11, type metadata accessor for UntranscodableItem);
      sub_1000EB3B0(v15, v8, type metadata accessor for UntranscodableItem);
      v17 = *v11 == *v8 && *(v11 + 1) == *(v8 + 1);
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v18 = *(v11 + 2) == *(v8 + 2) && *(v11 + 3) == *(v8 + 3);
      if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(v11 + 4) != *(v8 + 4) || *(v11 + 5) != *(v8 + 5)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (v11[48] != v8[48] || (*(v11 + 7) != *(v8 + 7) || *(v11 + 8) != *(v8 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(v11 + 9) != *(v8 + 9) || *(v11 + 10) != *(v8 + 10)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v19 = *(v4 + 40);
      type metadata accessor for UnknownStorage();
      sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000EB418(v8, type metadata accessor for UntranscodableItem);
      sub_1000EB418(v11, type metadata accessor for UntranscodableItem);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1000EB418(v8, type metadata accessor for UntranscodableItem);
    sub_1000EB418(v11, type metadata accessor for UntranscodableItem);
    goto LABEL_30;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1000E8D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v28 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v26 = 1;
      return v26 & 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1000EB3B0(v14, v11, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
      sub_1000EB3B0(v15, v8, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
      v17 = *v11 == *v8 && *(v11 + 1) == *(v8 + 1);
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v18 = *(v11 + 2) == *(v8 + 2) && *(v11 + 3) == *(v8 + 3);
      if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v19 = *(v8 + 4);
      v20 = v8[40];
      v21 = Rpcproto_ErrorInfo.Client.Code.rawValue.getter(*(v11 + 4), v11[40]);
      if (v21 != Rpcproto_ErrorInfo.Client.Code.rawValue.getter(v19, v20))
      {
        break;
      }

      v22 = *(v11 + 6);
      if (v11[56] == 1)
      {
        v22 = qword_100248450[v22];
      }

      v23 = *(v8 + 6);
      if (v8[56])
      {
        switch(v23)
        {
          case 1:
            if (v22 != 1)
            {
              goto LABEL_48;
            }

            goto LABEL_44;
          case 2:
            if (v22 != 2)
            {
              goto LABEL_48;
            }

            goto LABEL_44;
          case 3:
            if (v22 != 3)
            {
              goto LABEL_48;
            }

            goto LABEL_44;
          case 4:
            if (v22 != 4)
            {
              goto LABEL_48;
            }

            goto LABEL_44;
          case 5:
            if (v22 != 6)
            {
              goto LABEL_48;
            }

            goto LABEL_44;
          case 6:
            if (v22 != 7)
            {
              goto LABEL_48;
            }

            goto LABEL_44;
          case 7:
            if (v22 != 8)
            {
              goto LABEL_48;
            }

            goto LABEL_44;
          case 8:
            if (v22 != 9)
            {
              goto LABEL_48;
            }

            goto LABEL_44;
          case 9:
            v24 = 200001;
            break;
          case 10:
            v24 = 200002;
            break;
          case 11:
            v24 = 200003;
            break;
          case 12:
            v24 = 200004;
            break;
          case 13:
            v24 = 200005;
            break;
          default:
            if (v22)
            {
              goto LABEL_48;
            }

            goto LABEL_44;
        }

        if (v22 != v24)
        {
          break;
        }
      }

      else if (v22 != v23)
      {
        break;
      }

LABEL_44:
      v25 = *(v4 + 32);
      type metadata accessor for UnknownStorage();
      sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000EB418(v8, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
      sub_1000EB418(v11, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
      if (v26)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v26 & 1;
    }

LABEL_48:
    sub_1000EB418(v8, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
    sub_1000EB418(v11, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
  }

  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1000E911C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_20:
    v20 = 0;
    return v20 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1000EB3B0(v14, v11, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail);
      sub_1000EB3B0(v15, v8, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v18 = v11[2] == v8[2] && v11[3] == v8[3];
      if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v19 = *(v4 + 24);
      type metadata accessor for UnknownStorage();
      sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000EB418(v8, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail);
      sub_1000EB418(v11, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1000EB418(v8, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail);
    sub_1000EB418(v11, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail);
    goto LABEL_20;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1000E93A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(i - 1);
      if (*i == 1)
      {
        v8 = *(i - 1);
        switch(v7)
        {
          case 13:
            if (v5 != 13)
            {
              return 0;
            }

            goto LABEL_6;
          case 14:
            if (v5 != 14)
            {
              return 0;
            }

            goto LABEL_6;
          case 15:
            if (v5 != 15)
            {
              return 0;
            }

            goto LABEL_6;
          case 16:
            if (v5 != 16)
            {
              return 0;
            }

            goto LABEL_6;
          case 17:
            if (v5 != 17)
            {
              return 0;
            }

            goto LABEL_6;
          case 18:
            if (v5 != 18)
            {
              return 0;
            }

            goto LABEL_6;
          case 19:
            if (v5 != 19)
            {
              return 0;
            }

            goto LABEL_6;
          case 20:
            if (v5 != 20)
            {
              return 0;
            }

            goto LABEL_6;
          case 21:
            if (v5 != 21)
            {
              return 0;
            }

            goto LABEL_6;
          case 22:
            if (v5 != 22)
            {
              return 0;
            }

            goto LABEL_6;
          case 23:
            if (v5 != 23)
            {
              return 0;
            }

            goto LABEL_6;
          case 24:
            if (v5 != 24)
            {
              return 0;
            }

            goto LABEL_6;
          case 25:
            if (v5 != 25)
            {
              return 0;
            }

            goto LABEL_6;
          case 26:
            if (v5 != 26)
            {
              return 0;
            }

            goto LABEL_6;
          case 27:
            if (v5 != 27)
            {
              return 0;
            }

            goto LABEL_6;
          case 28:
            if (v5 != 28)
            {
              return 0;
            }

            goto LABEL_6;
          default:
            break;
        }
      }

      if (v5 != v7)
      {
        break;
      }

LABEL_6:
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000E94E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Ckcode_RecordTransport();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1000EB518(&qword_1002C2920, &type metadata accessor for Ckcode_RecordTransport);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E96FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _s22CloudKitImplementation36VideoHEVCProfileTierLevelInformationV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v2 = *(type metadata accessor for VideoHEVCProfileTierLevelInformation(0) + 28);
  type metadata accessor for UnknownStorage();
  sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _s22CloudKitImplementation24ResourceDownloadResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1000E8284(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    v4 = qword_1002484C0[v4];
  }

  v5 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 102)
        {
          return 0;
        }
      }

      else if (v4 != 201)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 101)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 40) == *(a2 + 40))
  {
    v6 = *(type metadata accessor for ResourceDownloadResponse(0) + 32);
    type metadata accessor for UnknownStorage();
    sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t _s22CloudKitImplementation23UploadResourcesResponseV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (sub_1000E843C(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for UploadResourcesResponse(0) + 28);
  type metadata accessor for UnknownStorage();
  sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _s22CloudKitImplementation23ResourceAnalyzeResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1000E8284(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    v4 = qword_1002484C0[v4];
  }

  v5 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 102)
        {
          return 0;
        }
      }

      else if (v4 != 201)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 101)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 40) == *(a2 + 40))
  {
    v6 = *(type metadata accessor for ResourceAnalyzeResponse(0) + 32);
    type metadata accessor for UnknownStorage();
    sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t _s22CloudKitImplementation22ResourceStreamResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1000E8284(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    v4 = qword_1002484C0[v4];
  }

  v5 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 102)
        {
          return 0;
        }
      }

      else if (v4 != 201)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 101)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 40) == *(a2 + 40))
  {
    v6 = *(type metadata accessor for ResourceStreamResponse(0) + 32);
    type metadata accessor for UnknownStorage();
    sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t _s22CloudKitImplementation18UntranscodableItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48) || (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for UntranscodableItem(0) + 40);
  type metadata accessor for UnknownStorage();
  sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _s22CloudKitImplementation14UploadResourceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = *(a2 + 40);
    if (sub_1000D543C(a1[4], *(a1 + 40), a2[4]) && (sub_1000E93A0(a1[6], a2[6]) & 1) != 0)
    {
      v8 = *(type metadata accessor for UploadResource(0) + 32);
      type metadata accessor for UnknownStorage();
      sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t _s22CloudKitImplementation13ResetIntervalV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (sub_1000E93A0(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for ResetInterval(0) + 28);
  type metadata accessor for UnknownStorage();
  sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _s22CloudKitImplementation12ResponseItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Ckcode_RecordTransport();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BB130(&qword_1002C0E30, &qword_100245080);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  v13 = sub_1000BB130(&qword_1002C2918, &unk_1002483E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_39;
  }

  v32 = v8;
  v31 = type metadata accessor for ResponseItem(0);
  v17 = *(v31 + 52);
  v18 = *(v13 + 48);
  sub_1000CC794(a1 + v17, v16, &qword_1002C0E30, &qword_100245080);
  sub_1000CC794(a2 + v17, &v16[v18], &qword_1002C0E30, &qword_100245080);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1000CC794(v16, v12, &qword_1002C0E30, &qword_100245080);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = &v16[v18];
      v21 = v32;
      (*(v5 + 32))(v32, v20, v4);
      sub_1000EB518(&qword_1002C2920, &type metadata accessor for Ckcode_RecordTransport);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v5 + 8);
      v23(v21, v4);
      v23(v12, v4);
      sub_1000CCDBC(v16, &qword_1002C0E30, &qword_100245080);
      if ((v22 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_17;
    }

    (*(v5 + 8))(v12, v4);
LABEL_15:
    sub_1000CCDBC(v16, &qword_1002C2918, &unk_1002483E0);
    goto LABEL_39;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_15;
  }

  sub_1000CCDBC(v16, &qword_1002C0E30, &qword_100245080);
LABEL_17:
  if ((*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    goto LABEL_39;
  }

  v24 = *(a1 + 72);
  v25 = *(a2 + 72);
  if (*(a2 + 80) == 1)
  {
    if (v25)
    {
      if (v25 == 1)
      {
        if (v24 != 1)
        {
          goto LABEL_39;
        }
      }

      else if (v24 != 2)
      {
        goto LABEL_39;
      }
    }

    else if (v24)
    {
      goto LABEL_39;
    }
  }

  else if (v24 != v25)
  {
    goto LABEL_39;
  }

  if (*(a1 + 88) == *(a2 + 88))
  {
    v26 = *(a1 + 96);
    if (*(a1 + 104) == 1)
    {
      v26 = qword_1002484E0[v26];
    }

    v27 = *(a2 + 96);
    if (*(a2 + 104))
    {
      if (v27 > 3)
      {
        if (v27 > 5)
        {
          if (v27 == 6)
          {
            if (v26 != 201)
            {
              goto LABEL_39;
            }
          }

          else if (v26 != 301)
          {
            goto LABEL_39;
          }
        }

        else if (v27 == 4)
        {
          if (v26 != 104)
          {
            goto LABEL_39;
          }
        }

        else if (v26 != 105)
        {
          goto LABEL_39;
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          if (v26 != 102)
          {
            goto LABEL_39;
          }
        }

        else if (v26 != 103)
        {
          goto LABEL_39;
        }
      }

      else if (v27)
      {
        if (v26 != 101)
        {
          goto LABEL_39;
        }
      }

      else if (v26)
      {
        goto LABEL_39;
      }
    }

    else if (v26 != v27)
    {
      goto LABEL_39;
    }

    v30 = *(v31 + 48);
    type metadata accessor for UnknownStorage();
    sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v28 & 1;
  }

LABEL_39:
  v28 = 0;
  return v28 & 1;
}

uint64_t _s22CloudKitImplementation11RequestItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for RequestItem(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_1000E157C(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000EA6A0(uint64_t a1)
{
  v3 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v110 = &v89 - v5;
  v6 = sub_1000BB130(&qword_1002C0F00, &qword_100246410);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v101 = &v89 - v8;
  v9 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v95 = &v89 - v11;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
  v89 = (v1 + 80);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v90 = (v1 + 96);
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  v91 = (v1 + 112);
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 128) = &_swiftEmptyArrayStorage;
  v92 = (v1 + 128);
  v12 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
  v93 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
  v13 = type metadata accessor for CMTimeRange(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v94 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
  *(v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint) = &_swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
  v96 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
  v15 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v97 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount;
  *(v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount) = 0;
  v98 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount;
  *(v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount) = 0;
  v99 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount;
  *(v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount) = 0;
  v16 = (v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
  v100 = (v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
  v102 = (v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
  v103 = (v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v104 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
  *(v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay) = 0;
  v19 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
  v105 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
  v20 = type metadata accessor for CMTime(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v106 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
  *(v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate) = 0;
  v107 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth;
  *(v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth) = 0;
  v108 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight;
  *(v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight) = 0;
  v109 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec;
  *(v1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec) = 0;
  swift_beginAccess();
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v22;
  *(v1 + 24) = v21;
  swift_beginAccess();
  v24 = *(a1 + 32);
  v23 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v24;
  *(v1 + 40) = v23;
  swift_beginAccess();
  v26 = *(a1 + 48);
  v25 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v26;
  *(v1 + 56) = v25;

  swift_beginAccess();
  v28 = *(a1 + 64);
  v27 = *(a1 + 72);
  swift_beginAccess();
  v29 = *(v1 + 72);
  *(v1 + 64) = v28;
  *(v1 + 72) = v27;

  swift_beginAccess();
  v31 = *(a1 + 80);
  v30 = *(a1 + 88);
  v32 = v89;
  swift_beginAccess();
  v33 = *(v1 + 88);
  *v32 = v31;
  *(v1 + 88) = v30;

  swift_beginAccess();
  v34 = *(a1 + 96);
  LOBYTE(v33) = *(a1 + 104);
  v35 = v90;
  swift_beginAccess();
  *v35 = v34;
  *(v1 + 104) = v33;
  swift_beginAccess();
  v37 = *(a1 + 112);
  v36 = *(a1 + 120);
  v38 = v91;
  swift_beginAccess();
  v39 = *(v1 + 120);
  *v38 = v37;
  *(v1 + 120) = v36;

  swift_beginAccess();
  v40 = *(a1 + 128);
  v41 = v92;
  swift_beginAccess();
  v42 = *v41;
  *v41 = v40;

  v43 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
  swift_beginAccess();
  v44 = v95;
  sub_1000CC794(a1 + v43, v95, &qword_1002C0E88, &qword_1002450B8);
  v45 = v93;
  swift_beginAccess();
  sub_1000CC968(v44, v1 + v45, &qword_1002C0E88, &qword_1002450B8);
  swift_endAccess();
  v46 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
  swift_beginAccess();
  v47 = *(a1 + v46);
  v48 = v94;
  swift_beginAccess();
  v49 = *(v1 + v48);
  *(v1 + v48) = v47;

  v50 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
  swift_beginAccess();
  v51 = v101;
  sub_1000CC794(a1 + v50, v101, &qword_1002C0F00, &qword_100246410);
  v52 = v96;
  swift_beginAccess();
  sub_1000CC968(v51, v1 + v52, &qword_1002C0F00, &qword_100246410);
  swift_endAccess();
  v53 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount;
  swift_beginAccess();
  LODWORD(v53) = *(a1 + v53);
  v54 = v97;
  swift_beginAccess();
  *(v1 + v54) = v53;
  v55 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount;
  swift_beginAccess();
  LODWORD(v55) = *(a1 + v55);
  v56 = v98;
  swift_beginAccess();
  *(v1 + v56) = v55;
  v57 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount;
  swift_beginAccess();
  LODWORD(v57) = *(a1 + v57);
  v58 = v99;
  swift_beginAccess();
  *(v1 + v58) = v57;
  v59 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
  swift_beginAccess();
  v61 = *v59;
  v60 = v59[1];
  v62 = v100;
  swift_beginAccess();
  v63 = v62[1];
  *v62 = v61;
  v62[1] = v60;

  v64 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
  swift_beginAccess();
  v66 = *v64;
  v65 = v64[1];
  v67 = v102;
  swift_beginAccess();
  v68 = v67[1];
  *v67 = v66;
  v67[1] = v65;

  v69 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
  swift_beginAccess();
  v71 = *v69;
  v70 = v69[1];
  v72 = v103;
  swift_beginAccess();
  v73 = v72[1];
  *v72 = v71;
  v72[1] = v70;

  v74 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
  swift_beginAccess();
  LOBYTE(v74) = *(a1 + v74);
  v75 = v104;
  swift_beginAccess();
  *(v1 + v75) = v74;
  v76 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
  swift_beginAccess();
  v77 = v110;
  sub_1000CC794(a1 + v76, v110, &qword_1002C0E90, &qword_1002450C0);
  v78 = v105;
  swift_beginAccess();
  sub_1000CC968(v77, v1 + v78, &qword_1002C0E90, &qword_1002450C0);
  swift_endAccess();
  v79 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
  swift_beginAccess();
  v80 = *(a1 + v79);
  v81 = v106;
  swift_beginAccess();
  *(v1 + v81) = v80;
  v82 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth;
  swift_beginAccess();
  LODWORD(v82) = *(a1 + v82);
  v83 = v107;
  swift_beginAccess();
  *(v1 + v83) = v82;
  v84 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight;
  swift_beginAccess();
  LODWORD(v84) = *(a1 + v84);
  v85 = v108;
  swift_beginAccess();
  *(v1 + v85) = v84;
  v86 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec;
  swift_beginAccess();
  LODWORD(a1) = *(a1 + v86);
  v87 = v109;
  swift_beginAccess();
  *(v1 + v87) = a1;
  return v1;
}

uint64_t sub_1000EB0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000EB1B8(uint64_t result)
{
  if (result > 103)
  {
    if (result > 200)
    {
      if (result == 201)
      {
        return 6;
      }

      else if (result == 301)
      {
        return 7;
      }
    }

    else if (result == 104)
    {
      return 4;
    }

    else if (result == 105)
    {
      return 5;
    }
  }

  else if (result > 101)
  {
    if (result == 102)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else if (result == 101)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1000EB28C(uint64_t result)
{
  if (result > 101)
  {
    if (result == 102)
    {
      return 2;
    }

    else if (result == 201)
    {
      return 3;
    }
  }

  else if (result == 101)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1000EB3B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000EB418(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000EB518(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000EB560()
{
  result = qword_1002C1828;
  if (!qword_1002C1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1828);
  }

  return result;
}

unint64_t sub_1000EB5B4()
{
  result = qword_1002C1870;
  if (!qword_1002C1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1870);
  }

  return result;
}

unint64_t sub_1000EB608()
{
  result = qword_1002C1878;
  if (!qword_1002C1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1878);
  }

  return result;
}

unint64_t sub_1000EB65C()
{
  result = qword_1002C1890;
  if (!qword_1002C1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1890);
  }

  return result;
}

unint64_t sub_1000EB6B0()
{
  result = qword_1002C18A0;
  if (!qword_1002C18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C18A0);
  }

  return result;
}

unint64_t sub_1000EB708()
{
  result = qword_1002C18E8;
  if (!qword_1002C18E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C18E8);
  }

  return result;
}

unint64_t sub_1000EB760()
{
  result = qword_1002C18F0;
  if (!qword_1002C18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C18F0);
  }

  return result;
}

unint64_t sub_1000EB7B8()
{
  result = qword_1002C18F8;
  if (!qword_1002C18F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C18F8);
  }

  return result;
}

unint64_t sub_1000EB840()
{
  result = qword_1002C1910;
  if (!qword_1002C1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1910);
  }

  return result;
}

unint64_t sub_1000EB898()
{
  result = qword_1002C1918;
  if (!qword_1002C1918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1918);
  }

  return result;
}

unint64_t sub_1000EB8F0()
{
  result = qword_1002C1920;
  if (!qword_1002C1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1920);
  }

  return result;
}

unint64_t sub_1000EB978()
{
  result = qword_1002C1938;
  if (!qword_1002C1938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1938);
  }

  return result;
}

unint64_t sub_1000EB9D0()
{
  result = qword_1002C1940;
  if (!qword_1002C1940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1940);
  }

  return result;
}

unint64_t sub_1000EBA28()
{
  result = qword_1002C1948;
  if (!qword_1002C1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1948);
  }

  return result;
}

unint64_t sub_1000EBAB0()
{
  result = qword_1002C1960;
  if (!qword_1002C1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1960);
  }

  return result;
}

unint64_t sub_1000EBB08()
{
  result = qword_1002C1968;
  if (!qword_1002C1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1968);
  }

  return result;
}

unint64_t sub_1000EBB60()
{
  result = qword_1002C1970;
  if (!qword_1002C1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1970);
  }

  return result;
}

unint64_t sub_1000EBBE8()
{
  result = qword_1002C1988;
  if (!qword_1002C1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1988);
  }

  return result;
}

unint64_t sub_1000EBC40()
{
  result = qword_1002C1990;
  if (!qword_1002C1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1990);
  }

  return result;
}

unint64_t sub_1000EBC98()
{
  result = qword_1002C1998;
  if (!qword_1002C1998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1998);
  }

  return result;
}

unint64_t sub_1000EBD20()
{
  result = qword_1002C19B0;
  if (!qword_1002C19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C19B0);
  }

  return result;
}

unint64_t sub_1000EBD78()
{
  result = qword_1002C19B8;
  if (!qword_1002C19B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C19B8);
  }

  return result;
}

unint64_t sub_1000EBDD0()
{
  result = qword_1002C19C0;
  if (!qword_1002C19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C19C0);
  }

  return result;
}

void sub_1000ED0F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000ED1E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1000ED2A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000ED348()
{
  sub_1000ED0F4(319, &unk_1002C1C10, type metadata accessor for ResponseItem, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000ED440()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000ED4EC()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RequestItem._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1000ED5A8()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000ED0F4(319, &unk_1002C2040, &type metadata accessor for Ckcode_RecordTransport, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000ED6BC()
{
  sub_1000ED750();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000ED750()
{
  if (!qword_1002C20F8)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1002C20F8);
    }
  }
}

void sub_1000ED7C8()
{
  sub_1000ED750();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000ED8E4()
{
  sub_1000ED0F4(319, &unk_1002C2238, type metadata accessor for UploadResource, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000ED9D0()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000EDA9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000EDB5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000EDC00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1000ED0F4(319, a4, a5, &type metadata accessor for Array);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000EDCA8()
{
  sub_1000ED0F4(319, &qword_1002C2508, type metadata accessor for CMTimeRange, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1000ED0F4(319, &qword_1002C2510, type metadata accessor for VideoHEVCProfileTierLevelInformation, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1000ED0F4(319, &qword_1002C2518, type metadata accessor for CMTime, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1000EDEA4()
{
  result = qword_1002C28F8;
  if (!qword_1002C28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C28F8);
  }

  return result;
}

uint64_t CMTime.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for CMTime(0) + 24);
  return UnknownStorage.init()();
}

uint64_t CMTimeRange.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CMTimeRange(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for CMTime(0);
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 24);

  return v7(v5, 1, 1, v4);
}

uint64_t CMTimeRange.start.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CMTimeRange(0) + 20);
  sub_1000CCDBC(v1 + v3, &qword_1002C0E90, &qword_1002450C0);
  sub_1000EE180(a1, v1 + v3);
  v4 = type metadata accessor for CMTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1000EE180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CMTime(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CMTimeRange.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CMTimeRange(0) + 24);
  sub_1000CCDBC(v1 + v3, &qword_1002C0E90, &qword_1002450C0);
  sub_1000EE180(a1, v1 + v3);
  v4 = type metadata accessor for CMTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t CMTime.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CMTime(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CMTime.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CMTime(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CMTimeRange.start.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for CMTimeRange(0);
  sub_1000EE504(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for CMTime(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000EE180(v6, a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C0E90, &qword_1002450C0);
  }

  return result;
}

uint64_t sub_1000EE504(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*CMTimeRange.start.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C0E90, &qword_1002450C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CMTime(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CMTimeRange(0) + 20);
  *(v4 + 12) = v14;
  sub_1000EE504(v1 + v14, v7);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    v16 = v13 + *(v8 + 24);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C0E90, &qword_1002450C0);
    }
  }

  else
  {
    sub_1000EE180(v7, v13);
  }

  return sub_1000EE768;
}

uint64_t sub_1000EE76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CMTime(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EE7D0(uint64_t a1)
{
  v2 = type metadata accessor for CMTime(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL CMTimeRange.hasStart.getter()
{
  v1 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CMTimeRange(0);
  sub_1000EE504(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for CMTime(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000CCDBC(v4, &qword_1002C0E90, &qword_1002450C0);
  return v7;
}

Swift::Void __swiftcall CMTimeRange.clearStart()()
{
  v1 = *(type metadata accessor for CMTimeRange(0) + 20);
  sub_1000CCDBC(v0 + v1, &qword_1002C0E90, &qword_1002450C0);
  v2 = type metadata accessor for CMTime(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CMTimeRange.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for CMTimeRange(0);
  sub_1000EE504(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for CMTime(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000EE180(v6, a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C0E90, &qword_1002450C0);
  }

  return result;
}

uint64_t (*CMTimeRange.duration.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C0E90, &qword_1002450C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CMTime(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CMTimeRange(0) + 24);
  *(v4 + 12) = v14;
  sub_1000EE504(v1 + v14, v7);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    v16 = v13 + *(v8 + 24);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C0E90, &qword_1002450C0);
    }
  }

  else
  {
    sub_1000EE180(v7, v13);
  }

  return sub_1000F0840;
}

void sub_1000EECD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1000EE76C((*a1)[5], v4);
    sub_1000CCDBC(v9 + v3, &qword_1002C0E90, &qword_1002450C0);
    sub_1000EE180(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000EE7D0(v5);
  }

  else
  {
    sub_1000CCDBC(v9 + v3, &qword_1002C0E90, &qword_1002450C0);
    sub_1000EE180(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL CMTimeRange.hasDuration.getter()
{
  v1 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CMTimeRange(0);
  sub_1000EE504(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for CMTime(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000CCDBC(v4, &qword_1002C0E90, &qword_1002450C0);
  return v7;
}

Swift::Void __swiftcall CMTimeRange.clearDuration()()
{
  v1 = *(type metadata accessor for CMTimeRange(0) + 24);
  sub_1000CCDBC(v0 + v1, &qword_1002C0E90, &qword_1002450C0);
  v2 = type metadata accessor for CMTime(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CMTime.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t CMTime.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 8) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for CMTime(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static CMTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(type metadata accessor for CMTime(0) + 24);
  type metadata accessor for UnknownStorage();
  sub_1000EF3FC(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000EF21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t sub_1000EF274(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EF3FC(&qword_1002C2AB8, type metadata accessor for CMTime);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000EF314()
{
  sub_1000EF3FC(&qword_1002C2940, type metadata accessor for CMTime);

  return Message.debugDescription.getter();
}

uint64_t sub_1000EF380()
{
  sub_1000EF3FC(&qword_1002C2940, type metadata accessor for CMTime);

  return Message.hash(into:)();
}

uint64_t sub_1000EF3FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000EF444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  sub_1000EF3FC(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000EF540(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v7, a2);
  sub_1000BA040(v7, a2);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v8 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100244120;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 5;
  *(v13 + 16) = 2;
  v14 = enum case for _NameMap.NameDescription.same(_:);
  v15 = type metadata accessor for _NameMap.NameDescription();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t CMTimeRange.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        v5 = *(type metadata accessor for CMTimeRange(0) + 24);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for CMTimeRange(0) + 20);
LABEL_5:
    type metadata accessor for CMTime(0);
    sub_1000EF3FC(&qword_1002C2940, type metadata accessor for CMTime);
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t CMTimeRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[2] = a2;
  v25[3] = a3;
  v25[1] = a1;
  v4 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v25 - v9;
  v11 = type metadata accessor for CMTime(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v25 - v17;
  v19 = type metadata accessor for CMTimeRange(0);
  v20 = *(v19 + 20);
  v25[0] = v3;
  sub_1000EE504(v3 + v20, v10);
  v21 = *(v12 + 48);
  if (v21(v10, 1, v11) == 1)
  {
    sub_1000CCDBC(v10, &qword_1002C0E90, &qword_1002450C0);
  }

  else
  {
    sub_1000EE180(v10, v18);
    sub_1000EF3FC(&qword_1002C2940, type metadata accessor for CMTime);
    v22 = v26;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_1000EE7D0(v18);
    if (v22)
    {
      return result;
    }

    v26 = 0;
  }

  sub_1000EE504(v25[0] + *(v19 + 24), v8);
  if (v21(v8, 1, v11) == 1)
  {
    sub_1000CCDBC(v8, &qword_1002C0E90, &qword_1002450C0);
  }

  else
  {
    sub_1000EE180(v8, v16);
    sub_1000EF3FC(&qword_1002C2940, type metadata accessor for CMTime);
    v24 = v26;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_1000EE7D0(v16);
    if (v24)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

Swift::Int sub_1000EFBB0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_1000EF3FC(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EFC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CMTime(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1000EFD20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EF3FC(&qword_1002C2AB0, type metadata accessor for CMTimeRange);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000EFDC0()
{
  sub_1000EF3FC(&qword_1002C2948, type metadata accessor for CMTimeRange);

  return Message.debugDescription.getter();
}

uint64_t sub_1000EFE2C()
{
  sub_1000EF3FC(&qword_1002C2948, type metadata accessor for CMTimeRange);

  return Message.hash(into:)();
}

uint64_t _s22CloudKitImplementation11CMTimeRangeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CMTime(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v39 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v39 - v9;
  v11 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v40 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v39 - v15;
  v17 = sub_1000BB130(&qword_1002C2928, &unk_100248840);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v42 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v39 - v21;
  v41 = type metadata accessor for CMTimeRange(0);
  v23 = *(v41 + 20);
  v24 = *(v17 + 48);
  v43 = a1;
  sub_1000EE504(a1 + v23, v22);
  v44 = a2;
  sub_1000EE504(a2 + v23, &v22[v24]);
  v25 = *(v5 + 48);
  if (v25(v22, 1, v4) == 1)
  {
    if (v25(&v22[v24], 1, v4) == 1)
    {
      sub_1000CCDBC(v22, &qword_1002C0E90, &qword_1002450C0);
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  sub_1000EE504(v22, v16);
  if (v25(&v22[v24], 1, v4) == 1)
  {
    sub_1000EE7D0(v16);
LABEL_10:
    v30 = &qword_1002C2928;
    v31 = &unk_100248840;
LABEL_16:
    v34 = v22;
    goto LABEL_17;
  }

  sub_1000EE180(&v22[v24], v10);
  if (*v16 != *v10 || *(v16 + 2) != *(v10 + 2))
  {
    sub_1000EE7D0(v10);
    sub_1000EE7D0(v16);
    v30 = &qword_1002C0E90;
    v31 = &qword_1002450C0;
    goto LABEL_16;
  }

  v32 = *(v4 + 24);
  type metadata accessor for UnknownStorage();
  sub_1000EF3FC(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1000EE7D0(v10);
  sub_1000EE7D0(v16);
  sub_1000CCDBC(v22, &qword_1002C0E90, &qword_1002450C0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  v26 = *(v41 + 24);
  v27 = *(v17 + 48);
  v28 = v42;
  sub_1000EE504(v43 + v26, v42);
  sub_1000EE504(v44 + v26, v28 + v27);
  if (v25(v28, 1, v4) != 1)
  {
    v36 = v40;
    sub_1000EE504(v28, v40);
    if (v25((v28 + v27), 1, v4) == 1)
    {
      sub_1000EE7D0(v36);
      goto LABEL_22;
    }

    v37 = v39;
    sub_1000EE180(v28 + v27, v39);
    if (*v36 == *v37 && *(v36 + 8) == *(v37 + 8))
    {
      v38 = *(v4 + 24);
      type metadata accessor for UnknownStorage();
      sub_1000EF3FC(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      LOBYTE(v38) = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000EE7D0(v37);
      sub_1000EE7D0(v36);
      sub_1000CCDBC(v28, &qword_1002C0E90, &qword_1002450C0);
      if (v38)
      {
        goto LABEL_7;
      }

LABEL_18:
      v29 = 0;
      return v29 & 1;
    }

    sub_1000EE7D0(v37);
    sub_1000EE7D0(v36);
    v30 = &qword_1002C0E90;
    v31 = &qword_1002450C0;
    v34 = v28;
LABEL_17:
    sub_1000CCDBC(v34, v30, v31);
    goto LABEL_18;
  }

  if (v25((v28 + v27), 1, v4) != 1)
  {
LABEL_22:
    v30 = &qword_1002C2928;
    v31 = &unk_100248840;
    v34 = v28;
    goto LABEL_17;
  }

  sub_1000CCDBC(v28, &qword_1002C0E90, &qword_1002450C0);
LABEL_7:
  type metadata accessor for UnknownStorage();
  sub_1000EF3FC(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v29 & 1;
}

uint64_t sub_1000F06B8()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000F0764()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000F07E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F07E8()
{
  if (!qword_1002C2518)
  {
    type metadata accessor for CMTime(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002C2518);
    }
  }
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsync.initiateExit(operationID:sharedZoneID:exitType:retentionPolicy:participantUserIdsToRemove:participantIdsToRemove:zoneTtlForIcplexit:exitSource:stopAtStage:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, __int16 a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, __int16 a13, uint64_t a14, __int16 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v34 = a8;
  v32 = a6;
  v30 = a4;
  v28 = a3;
  v37 = a16;
  v36 = a17;
  v38 = a18;
  v35 = a19;
  v33 = a14;
  v31 = a12;
  v29 = a11;
  v23 = type metadata accessor for Goldilocks_InitiateExitRequest(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v40 = a2;
  v41 = v28;
  v42 = v30;
  v43 = a5 & 0x1FF;
  v44 = v32;
  v45 = a7 & 0x1FF;
  v46 = v34;
  v47 = a9;
  v48 = a10;
  v49 = a11 & 1;
  v50 = a12;
  v51 = a13 & 0x1FF;
  v52 = a14;
  v53 = a15 & 0x1FF;
  sub_1000F115C(&qword_1002C40B0, type metadata accessor for Goldilocks_InitiateExitRequest);
  static Message.with(_:)();
  (*(v35 + 8))(v26, v37, v36, v38);
  return sub_1000F11A4(v26, type metadata accessor for Goldilocks_InitiateExitRequest);
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsync.checkDuplicates(operationID:zoneID:recordIds:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for Goldilocks_CheckDuplicatesRequest(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a4;
  sub_1000F115C(&qword_1002C2AC0, type metadata accessor for Goldilocks_CheckDuplicatesRequest);
  static Message.with(_:)();
  (*(a8 + 16))(v19, a5, a6, a7, a8);
  return sub_1000F11A4(v19, type metadata accessor for Goldilocks_CheckDuplicatesRequest);
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsync.exitMoveBatch(operationID:zoneID:batchSize:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for Goldilocks_ExitMoveBatchRequest(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = a3;
  v22 = a4;
  v23 = BYTE4(a4) & 1;
  sub_1000F115C(&qword_1002C40E0, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
  static Message.with(_:)();
  (*(a8 + 24))(v19, a5, a6, a7, a8);
  return sub_1000F11A4(v19, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsync.silentMoverRampingService(operationID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Goldilocks_SilentMoverRampingRequest(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  v19 = a2;
  sub_1000F115C(&qword_1002C2AC8, type metadata accessor for Goldilocks_SilentMoverRampingRequest);
  static Message.with(_:)();
  (*(a6 + 32))(v15, a3, a4, a5, a6);
  return sub_1000F11A4(v15, type metadata accessor for Goldilocks_SilentMoverRampingRequest);
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsync.exitMoveErrorFeedback(exitZoneID:items:moveBatchOperationID:moveBatchID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = a8;
  v22 = a7;
  v16 = type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  sub_1000F115C(&qword_1002C2AD0, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest);
  static Message.with(_:)();
  (*(a10 + 40))(v19, v22, v23, a9, a10);
  return sub_1000F11A4(v19, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest);
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsync.exitStatusFeedback(operationID:shareID:status:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a8;
  v16 = type metadata accessor for Goldilocks_ExitStatusFeedbackRequest(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5 & 0x1FF;
  sub_1000F115C(&qword_1002C2AD8, type metadata accessor for Goldilocks_ExitStatusFeedbackRequest);
  static Message.with(_:)();
  (*(a9 + 48))(v19, a6, a7, v22, a9);
  return sub_1000F11A4(v19, type metadata accessor for Goldilocks_ExitStatusFeedbackRequest);
}

uint64_t sub_1000F115C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F11A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void Goldilocks_CloudPhotosGoldilocksAPIAsyncClient.initiateExit(_:completion:)(uint64_t a1)
{
  v3 = sub_1000BB130(&qword_1002C2AE0, &qword_100248850);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Goldilocks_InitiateExitRequest(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = objc_allocWithZone(sub_1000BB130(&qword_1002C2AE8, &qword_100248858));
  v10 = CKCodeOperation.init(functionName:request:)();
  sub_1000F1B60(a1, v6, type metadata accessor for Goldilocks_InitiateExitRequest);
  v8(v6, 0, 1, v7);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v11 = *(v1 + 16);
  CKCodeService.add<A, B>(_:)();
}

void Goldilocks_CloudPhotosGoldilocksAPIAsyncClient.checkDuplicates(_:completion:)(uint64_t a1)
{
  v3 = sub_1000BB130(&qword_1002C2AF0, &qword_100248860);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Goldilocks_CheckDuplicatesRequest(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = objc_allocWithZone(sub_1000BB130(&qword_1002C2AF8, &qword_100248868));
  v10 = CKCodeOperation.init(functionName:request:)();
  sub_1000F1B60(a1, v6, type metadata accessor for Goldilocks_CheckDuplicatesRequest);
  v8(v6, 0, 1, v7);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v11 = *(v1 + 16);
  CKCodeService.add<A, B>(_:)();
}

void Goldilocks_CloudPhotosGoldilocksAPIAsyncClient.exitMoveBatch(_:completion:)(uint64_t a1)
{
  v3 = sub_1000BB130(&qword_1002C2B00, &qword_100248870);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Goldilocks_ExitMoveBatchRequest(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = objc_allocWithZone(sub_1000BB130(&qword_1002C2B08, &qword_100248878));
  v10 = CKCodeOperation.init(functionName:request:)();
  sub_1000F1B60(a1, v6, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
  v8(v6, 0, 1, v7);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v11 = *(v1 + 16);
  CKCodeService.add<A, B>(_:)();
}

void Goldilocks_CloudPhotosGoldilocksAPIAsyncClient.silentMoverRampingService(_:completion:)(uint64_t a1)
{
  v3 = sub_1000BB130(&unk_1002C4100, &qword_100248880);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Goldilocks_SilentMoverRampingRequest(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = objc_allocWithZone(sub_1000BB130(&qword_1002C2B10, &qword_100248888));
  v10 = CKCodeOperation.init(functionName:request:)();
  sub_1000F1B60(a1, v6, type metadata accessor for Goldilocks_SilentMoverRampingRequest);
  v8(v6, 0, 1, v7);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v11 = *(v1 + 16);
  CKCodeService.add<A, B>(_:)();
}

void Goldilocks_CloudPhotosGoldilocksAPIAsyncClient.exitMoveErrorFeedback(_:completion:)(uint64_t a1)
{
  v3 = sub_1000BB130(&unk_1002C4060, &qword_100248890);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = objc_allocWithZone(sub_1000BB130(&qword_1002C2B18, &qword_100248898));
  v10 = CKCodeOperation.init(functionName:request:)();
  sub_1000F1B60(a1, v6, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest);
  v8(v6, 0, 1, v7);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v11 = *(v1 + 16);
  CKCodeService.add<A, B>(_:)();
}

void Goldilocks_CloudPhotosGoldilocksAPIAsyncClient.exitStatusFeedback(_:completion:)(uint64_t a1)
{
  v3 = sub_1000BB130(&unk_1002C4020, &qword_1002488A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Goldilocks_ExitStatusFeedbackRequest(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = objc_allocWithZone(sub_1000BB130(&qword_1002C2B20, &qword_1002488A8));
  v10 = CKCodeOperation.init(functionName:request:)();
  sub_1000F1B60(a1, v6, type metadata accessor for Goldilocks_ExitStatusFeedbackRequest);
  v8(v6, 0, 1, v7);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v11 = *(v1 + 16);
  CKCodeService.add<A, B>(_:)();
}

uint64_t sub_1000F1B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsyncOperation.initiateExit(operationID:sharedZoneID:exitType:retentionPolicy:participantUserIdsToRemove:participantIdsToRemove:zoneTtlForIcplexit:exitSource:stopAtStage:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, __int16 a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, __int16 a13, uint64_t a14, __int16 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v35 = a8;
  v33 = a6;
  v31 = a4;
  v29 = a3;
  v38 = a16;
  v37 = a17;
  v39 = a18;
  v36 = a19;
  v34 = a14;
  v32 = a12;
  v30 = a11;
  v23 = type metadata accessor for Goldilocks_InitiateExitRequest(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v41 = a2;
  v42 = v29;
  v43 = v31;
  v44 = a5 & 0x1FF;
  v45 = v33;
  v46 = a7 & 0x1FF;
  v47 = v35;
  v48 = a9;
  v49 = a10;
  v50 = a11 & 1;
  v51 = a12;
  v52 = a13 & 0x1FF;
  v53 = a14;
  v54 = a15 & 0x1FF;
  sub_1000F115C(&qword_1002C40B0, type metadata accessor for Goldilocks_InitiateExitRequest);
  static Message.with(_:)();
  v27 = (*(v36 + 8))(v26, v38, v37, v39);
  sub_1000F11A4(v26, type metadata accessor for Goldilocks_InitiateExitRequest);
  return v27;
}

uint64_t sub_1000F1EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, __int16 a14, uint64_t a15, __int16 a16)
{
  v43 = a6;
  v44 = a8;
  v41 = a5;
  v42 = a7;
  v20 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v40 - v22;
  v24 = type metadata accessor for Goldilocks_ZoneID(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v40 - v30;
  if (a3)
  {
    v32 = *(a1 + 8);

    *a1 = a2;
    *(a1 + 8) = a3;
  }

  sub_1000F3C18(a4, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    result = sub_1000F3C88(v23);
  }

  else
  {
    sub_1000F3CF0(v23, v31);
    sub_1000F3CF0(v31, v29);
    v34 = *(type metadata accessor for Goldilocks_InitiateExitRequest(0) + 52);
    sub_1000F3C88(a1 + v34);
    sub_1000F3CF0(v29, a1 + v34);
    result = (*(v25 + 56))(a1 + v34, 0, 1, v24);
  }

  v35 = v43;
  v36 = v44;
  if ((v43 & 0x100) != 0)
  {
    v37 = a10;
    if ((v44 & 0x100) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(a1 + 16) = v41;
    *(a1 + 24) = v35 & 1;
    v37 = a10;
    if ((v36 & 0x100) != 0)
    {
LABEL_8:
      if (!*(a9 + 16))
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  *(a1 + 32) = v42;
  *(a1 + 40) = v36 & 1;
  if (*(a9 + 16))
  {
LABEL_9:
    v38 = *(a1 + 48);

    *(a1 + 48) = a9;
  }

LABEL_10:
  if (*(v37 + 16))
  {
    v39 = *(a1 + 56);

    *(a1 + 56) = v37;
  }

  if (a12)
  {
    if ((a14 & 0x100) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(a1 + 64) = a11;
    if ((a14 & 0x100) != 0)
    {
LABEL_14:
      if ((a16 & 0x100) != 0)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  *(a1 + 72) = a13;
  *(a1 + 80) = a14 & 1;
  if ((a16 & 0x100) != 0)
  {
    return result;
  }

LABEL_15:
  *(a1 + 88) = a15;
  *(a1 + 96) = a16 & 1;
  return result;
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsyncOperation.checkDuplicates(operationID:zoneID:recordIds:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for Goldilocks_CheckDuplicatesRequest(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a3;
  v22[7] = a4;
  sub_1000F115C(&qword_1002C2AC0, type metadata accessor for Goldilocks_CheckDuplicatesRequest);
  static Message.with(_:)();
  v20 = (*(a8 + 16))(v19, a5, a6, a7, a8);
  sub_1000F11A4(v19, type metadata accessor for Goldilocks_CheckDuplicatesRequest);
  return v20;
}

uint64_t sub_1000F23CC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  v9 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for Goldilocks_ZoneID(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v25 - v19;
  if (a3)
  {
    v21 = *(a1 + 1);

    *a1 = v26;
    *(a1 + 1) = a3;
  }

  sub_1000F3C18(a4, v12);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_1000F3CF0(v12, v20);
    sub_1000F3CF0(v20, v18);
    v23 = *(type metadata accessor for Goldilocks_CheckDuplicatesRequest(0) + 28);
    sub_1000F3C88(&a1[v23]);
    sub_1000F3CF0(v18, &a1[v23]);
    result = (*(v14 + 56))(&a1[v23], 0, 1, v13);
    if (!*(a5 + 16))
    {
      return result;
    }

    goto LABEL_7;
  }

  result = sub_1000F3C88(v12);
  if (*(a5 + 16))
  {
LABEL_7:
    v24 = *(a1 + 2);

    *(a1 + 2) = a5;
  }

  return result;
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsyncOperation.exitMoveBatch(operationID:zoneID:batchSize:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for Goldilocks_ExitMoveBatchRequest(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a3;
  v23 = a4;
  v24 = BYTE4(a4) & 1;
  sub_1000F115C(&qword_1002C40E0, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
  static Message.with(_:)();
  v20 = (*(a8 + 24))(v19, a5, a6, a7, a8);
  sub_1000F11A4(v19, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
  return v20;
}

uint64_t sub_1000F2780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v9 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for Goldilocks_ZoneID(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v25 - v19;
  if (a3)
  {
    v21 = *(a1 + 8);

    *a1 = a2;
    *(a1 + 8) = a3;
  }

  sub_1000F3C18(a4, v12);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_1000F3CF0(v12, v20);
    sub_1000F3CF0(v20, v18);
    v24 = *(type metadata accessor for Goldilocks_ExitMoveBatchRequest(0) + 28);
    sub_1000F3C88(a1 + v24);
    sub_1000F3CF0(v18, a1 + v24);
    result = (*(v14 + 56))(a1 + v24, 0, 1, v13);
    v23 = v26;
    if ((v26 & 0x100000000) != 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = sub_1000F3C88(v12);
  v23 = v26;
  if ((v26 & 0x100000000) == 0)
  {
LABEL_7:
    *(a1 + 16) = v23;
  }

  return result;
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsyncOperation.silentMoverRampingService(operationID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Goldilocks_SilentMoverRampingRequest(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a1;
  v20 = a2;
  sub_1000F115C(&qword_1002C2AC8, type metadata accessor for Goldilocks_SilentMoverRampingRequest);
  static Message.with(_:)();
  v16 = (*(a6 + 32))(v15, a3, a4, a5, a6);
  sub_1000F11A4(v15, type metadata accessor for Goldilocks_SilentMoverRampingRequest);
  return v16;
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsyncOperation.exitMoveErrorFeedback(exitZoneID:items:moveBatchOperationID:moveBatchID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a8;
  v23 = a7;
  v16 = type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  sub_1000F115C(&qword_1002C2AD0, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest);
  static Message.with(_:)();
  v20 = (*(a10 + 40))(v19, v23, v24, a9, a10);
  sub_1000F11A4(v19, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest);
  return v20;
}

uint64_t sub_1000F2C98(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v30 = a4;
  v11 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v29 - v13;
  v15 = type metadata accessor for Goldilocks_ZoneID(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v29 - v21;
  sub_1000F3C18(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    result = sub_1000F3C88(v14);
  }

  else
  {
    sub_1000F3CF0(v14, v22);
    sub_1000F3CF0(v22, v20);
    v24 = *(type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0) + 32);
    sub_1000F3C88(&a1[v24]);
    sub_1000F3CF0(v20, &a1[v24]);
    result = (*(v16 + 56))(&a1[v24], 0, 1, v15);
  }

  v25 = v32;
  if (*(a3 + 16))
  {
    v26 = *a1;

    *a1 = a3;
  }

  if (a5)
  {
    v27 = *(a1 + 2);

    *(a1 + 1) = v30;
    *(a1 + 2) = a5;
  }

  if (v25)
  {
    v28 = *(a1 + 4);

    *(a1 + 3) = v31;
    *(a1 + 4) = v25;
  }

  return result;
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsyncOperation.exitStatusFeedback(operationID:shareID:status:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = a8;
  v16 = type metadata accessor for Goldilocks_ExitStatusFeedbackRequest(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5 & 0x1FF;
  sub_1000F115C(&qword_1002C2AD8, type metadata accessor for Goldilocks_ExitStatusFeedbackRequest);
  static Message.with(_:)();
  v20 = (*(a9 + 48))(v19, a6, a7, v23, a9);
  sub_1000F11A4(v19, type metadata accessor for Goldilocks_ExitStatusFeedbackRequest);
  return v20;
}

uint64_t sub_1000F3080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v27 = a6;
  v26 = a5;
  v10 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for Goldilocks_ZoneID(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v26 - v20;
  if (a3)
  {
    v22 = *(a1 + 8);

    *a1 = a2;
    *(a1 + 8) = a3;
  }

  sub_1000F3C18(a4, v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_1000F3CF0(v13, v21);
    sub_1000F3CF0(v21, v19);
    v25 = *(type metadata accessor for Goldilocks_ExitStatusFeedbackRequest(0) + 28);
    sub_1000F3C88(a1 + v25);
    sub_1000F3CF0(v19, a1 + v25);
    result = (*(v15 + 56))(a1 + v25, 0, 1, v14);
    v24 = v27;
    if ((v27 & 0x100) != 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = sub_1000F3C88(v13);
  v24 = v27;
  if ((v27 & 0x100) == 0)
  {
LABEL_7:
    *(a1 + 16) = v26;
    *(a1 + 24) = v24 & 1;
  }

  return result;
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsyncOperationClient.initiateExit(_:completion:)(uint64_t a1)
{
  v2 = sub_1000BB130(&qword_1002C2AE0, &qword_100248850);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Goldilocks_InitiateExitRequest(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = objc_allocWithZone(sub_1000BB130(&qword_1002C2AE8, &qword_100248858));
  v9 = CKCodeOperation.init(functionName:request:)();
  sub_1000F1B60(a1, v5, type metadata accessor for Goldilocks_InitiateExitRequest);
  v7(v5, 0, 1, v6);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  return v9;
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsyncOperationClient.checkDuplicates(_:completion:)(uint64_t a1)
{
  v2 = sub_1000BB130(&qword_1002C2AF0, &qword_100248860);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Goldilocks_CheckDuplicatesRequest(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = objc_allocWithZone(sub_1000BB130(&qword_1002C2AF8, &qword_100248868));
  v9 = CKCodeOperation.init(functionName:request:)();
  sub_1000F1B60(a1, v5, type metadata accessor for Goldilocks_CheckDuplicatesRequest);
  v7(v5, 0, 1, v6);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  return v9;
}

uint64_t Goldilocks_CloudPhotosGoldilocksAPIAsyncOperationClient.exitMoveBatch(_:completion:)(uint64_t a1)
{
  v2 = sub_1000BB130(&qword_1002C2B00, &qword_100248870);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Goldilocks_ExitMoveBatchRequest(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = objc_allocWithZone(sub_1000BB130(&qword_1002C2B08, &qword_100248878));
  v9 = CKCodeOperation.init(functionName:request:)();
  sub_1000F1B60(a1, v5, type metadata accessor for Goldilocks_ExitMoveBatchRequest);
  v7(v5, 0, 1, v6);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  return v9;
}

uint64_t _s22CloudKitImplementation011Goldilocks_a6PhotosD23APIAsyncOperationClientC25silentMoverRampingService_10completion0aB4Code06CKCodeG0CyAA0d7_SilentjK7RequestVAA0d1_pjK8ResponseVGAJ_ys6ResultOyALs5Error_pGctF_0(uint64_t a1)
{
  v2 = sub_1000BB130(&unk_1002C4100, &qword_100248880);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Goldilocks_SilentMoverRampingRequest(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = objc_allocWithZone(sub_1000BB130(&qword_1002C2B10, &qword_100248888));
  v9 = CKCodeOperation.init(functionName:request:)();
  sub_1000F1B60(a1, v5, type metadata accessor for Goldilocks_SilentMoverRampingRequest);
  v7(v5, 0, 1, v6);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  return v9;
}

uint64_t _s22CloudKitImplementation011Goldilocks_a6PhotosD23APIAsyncOperationClientC21exitMoveErrorFeedback_10completion0aB4Code06CKCodeG0CyAA0d5_Exitj5BatchkL7RequestVAA0d1_pjqkL8ResponseVGAJ_ys6ResultOyALs0K0_pGctF_0(uint64_t a1)
{
  v2 = sub_1000BB130(&unk_1002C4060, &qword_100248890);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = objc_allocWithZone(sub_1000BB130(&qword_1002C2B18, &qword_100248898));
  v9 = CKCodeOperation.init(functionName:request:)();
  sub_1000F1B60(a1, v5, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest);
  v7(v5, 0, 1, v6);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  return v9;
}

uint64_t _s22CloudKitImplementation011Goldilocks_a6PhotosD23APIAsyncOperationClientC18exitStatusFeedback_10completion0aB4Code06CKCodeG0CyAA0d5_ExitjK7RequestVAA0d1_ojK8ResponseVGAJ_ys6ResultOyALs5Error_pGctF_0(uint64_t a1)
{
  v2 = sub_1000BB130(&unk_1002C4020, &qword_1002488A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Goldilocks_ExitStatusFeedbackRequest(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = objc_allocWithZone(sub_1000BB130(&qword_1002C2B20, &qword_1002488A8));
  v9 = CKCodeOperation.init(functionName:request:)();
  sub_1000F1B60(a1, v5, type metadata accessor for Goldilocks_ExitStatusFeedbackRequest);
  v7(v5, 0, 1, v6);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  return v9;
}

uint64_t sub_1000F3C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F3C88(uint64_t a1)
{
  v2 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F3CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Goldilocks_InitiateExitRequest.sharedZoneID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_InitiateExitRequest(0) + 52);
  sub_1000CCDBC(v1 + v3, &qword_1002C4050, &qword_1002483C0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ZoneID);
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Goldilocks_CheckDuplicatesRequest.zoneID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_CheckDuplicatesRequest(0) + 28);
  sub_1000CCDBC(v1 + v3, &qword_1002C4050, &qword_1002483C0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ZoneID);
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Goldilocks_ExitMoveBatchRequest.zoneID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_ExitMoveBatchRequest(0) + 28);
  sub_1000CCDBC(v1 + v3, &qword_1002C4050, &qword_1002483C0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ZoneID);
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackRequest.exitZoneID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0) + 32);
  sub_1000CCDBC(v1 + v3, &qword_1002C4050, &qword_1002483C0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ZoneID);
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Goldilocks_ExitStatusFeedbackRequest.shareID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_ExitStatusFeedbackRequest(0) + 28);
  sub_1000CCDBC(v1 + v3, &qword_1002C4050, &qword_1002483C0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ZoneID);
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Goldilocks_ExitStage.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_10024B560[result];
  }

  return result;
}

uint64_t sub_1000F4268()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_10024B560[result];
  }

  return result;
}

void sub_1000F42A0(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_10024B560[v2];
  }

  *a1 = v2;
}

uint64_t sub_1000F42C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C718();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_1000F4310(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_10024B560[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_10024B560[v3];
  }

  return v2 == v3;
}

uint64_t sub_1000F4454(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C76C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000F4564(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C814();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000F4674(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C7C0();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL Goldilocks_DuplicateType.rawValue.getter(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

unint64_t sub_1000F47AC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1000F47C4()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1000F47E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1000F47FC(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_1000F481C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C8B0();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_1000F4868(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t Goldilocks_InitiateExitRequest.sharedZoneID.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Goldilocks_InitiateExitRequest(0);
  sub_1000CC794(v1 + *(v7 + 52), v6, &qword_1002C4050, &qword_1002483C0);
  v8 = type metadata accessor for Goldilocks_ZoneID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10010C450(v6, a1, type metadata accessor for Goldilocks_ZoneID);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C4050, &qword_1002483C0);
  }

  return result;
}

uint64_t Goldilocks_ZoneID.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Goldilocks_ZoneID(0) + 24);
  return UnknownStorage.init()();
}

uint64_t (*Goldilocks_InitiateExitRequest.sharedZoneID.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C4050, &qword_1002483C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ZoneID(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_InitiateExitRequest(0) + 52);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C4050, &qword_1002483C0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C4050, &qword_1002483C0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ZoneID);
  }

  return sub_10010FD5C;
}

BOOL Goldilocks_InitiateExitRequest.hasSharedZoneID.getter()
{
  v1 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Goldilocks_InitiateExitRequest(0);
  sub_1000CC794(v0 + *(v5 + 52), v4, &qword_1002C4050, &qword_1002483C0);
  v6 = type metadata accessor for Goldilocks_ZoneID(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000CCDBC(v4, &qword_1002C4050, &qword_1002483C0);
  return v7;
}

Swift::Void __swiftcall Goldilocks_InitiateExitRequest.clearSharedZoneID()()
{
  v1 = *(type metadata accessor for Goldilocks_InitiateExitRequest(0) + 52);
  sub_1000CCDBC(v0 + v1, &qword_1002C4050, &qword_1002483C0);
  v2 = type metadata accessor for Goldilocks_ZoneID(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Goldilocks_InitiateExitRequest.stopAtStage.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t Goldilocks_InitiateExitRequest.stopAtStage.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t Goldilocks_InitiateExitRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Goldilocks_InitiateExitRequest(0) + 48);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Goldilocks_InitiateExitRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_InitiateExitRequest(0) + 48);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Goldilocks_InitiateExitRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = &_swiftEmptyArrayStorage;
  *(a1 + 56) = &_swiftEmptyArrayStorage;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  v2 = type metadata accessor for Goldilocks_InitiateExitRequest(0);
  v3 = a1 + *(v2 + 48);
  UnknownStorage.init()();
  v4 = *(v2 + 52);
  v5 = type metadata accessor for Goldilocks_ZoneID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t Goldilocks_ErrorInfo.ResultError.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = &_swiftEmptyArrayStorage;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  v2 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v3 = a1 + *(v2 + 44);
  UnknownStorage.init()();
  v4 = *(v2 + 48);
  v5 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t Goldilocks_InitiateExitResponse.batchError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_InitiateExitResponse(0) + 28);
  sub_1000CCDBC(v1 + v3, &qword_1002C2900, &qword_1002483B0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Goldilocks_InitiateExitResponse.batchError.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C2900, &qword_1002483B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_InitiateExitResponse(0) + 28);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C2900, &qword_1002483B0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    *(v13 + 48) = 0;
    *(v13 + 56) = &_swiftEmptyArrayStorage;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0xE000000000000000;
    v16 = v13 + *(v8 + 44);
    UnknownStorage.init()();
    v17 = *(v8 + 48);
    v18 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C2900, &qword_1002483B0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  }

  return sub_10010FD58;
}

uint64_t Goldilocks_ParticipantExitResult.resultError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Goldilocks_ParticipantExitResult(0);
  sub_1000CC794(v1 + *(v7 + 24), v6, &qword_1002C2900, &qword_1002483B0);
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10010C450(v6, a1, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = &_swiftEmptyArrayStorage;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  v10 = a1 + *(v8 + 44);
  UnknownStorage.init()();
  v11 = *(v8 + 48);
  v12 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C2900, &qword_1002483B0);
  }

  return result;
}

uint64_t Goldilocks_ParticipantExitResult.resultError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_ParticipantExitResult(0) + 24);
  sub_1000CCDBC(v1 + v3, &qword_1002C2900, &qword_1002483B0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Goldilocks_ParticipantExitResult.resultError.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C2900, &qword_1002483B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_ParticipantExitResult(0) + 24);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C2900, &qword_1002483B0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    *(v13 + 48) = 0;
    *(v13 + 56) = &_swiftEmptyArrayStorage;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0xE000000000000000;
    v16 = v13 + *(v8 + 44);
    UnknownStorage.init()();
    v17 = *(v8 + 48);
    v18 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C2900, &qword_1002483B0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  }

  return sub_10010FD58;
}

BOOL Goldilocks_ParticipantExitResult.hasResultError.getter()
{
  v1 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Goldilocks_ParticipantExitResult(0);
  sub_1000CC794(v0 + *(v5 + 24), v4, &qword_1002C2900, &qword_1002483B0);
  v6 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000CCDBC(v4, &qword_1002C2900, &qword_1002483B0);
  return v7;
}

Swift::Void __swiftcall Goldilocks_ParticipantExitResult.clearResultError()()
{
  v1 = *(type metadata accessor for Goldilocks_ParticipantExitResult(0) + 24);
  sub_1000CCDBC(v0 + v1, &qword_1002C2900, &qword_1002483B0);
  v2 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Goldilocks_ParticipantExitResult.exitZoneID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_ParticipantExitResult(0) + 28);
  sub_1000CCDBC(v1 + v3, &qword_1002C4050, &qword_1002483C0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ZoneID);
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Goldilocks_ParticipantExitResult.exitZoneID.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C4050, &qword_1002483C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ZoneID(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_ParticipantExitResult(0) + 28);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C4050, &qword_1002483C0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C4050, &qword_1002483C0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ZoneID);
  }

  return sub_10010FD5C;
}

BOOL sub_1000F5F9C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_1000BB130(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_1000CC794(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000CCDBC(v12, a1, a2);
  return v15;
}

uint64_t sub_1000F60D4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1000CCDBC(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Goldilocks_ParticipantExitResult.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Goldilocks_ParticipantExitResult(0);
  v3 = &a1[v2[5]];
  UnknownStorage.init()();
  v4 = v2[6];
  v5 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for Goldilocks_ZoneID(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

uint64_t (*Goldilocks_CheckDuplicatesRequest.zoneID.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C4050, &qword_1002483C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ZoneID(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_CheckDuplicatesRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C4050, &qword_1002483C0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C4050, &qword_1002483C0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ZoneID);
  }

  return sub_10010FD5C;
}

uint64_t sub_1000F6598@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000F6634(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000F6728@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  *(a3 + 2) = &_swiftEmptyArrayStorage;
  v5 = a1(0);
  v6 = &a3[*(v5 + 24)];
  UnknownStorage.init()();
  v7 = *(v5 + 28);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t Goldilocks_CheckDuplicatesResponse.batchError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_CheckDuplicatesResponse(0) + 28);
  sub_1000CCDBC(v1 + v3, &qword_1002C2900, &qword_1002483B0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Goldilocks_CheckDuplicatesResponse.batchError.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C2900, &qword_1002483B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_CheckDuplicatesResponse(0) + 28);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C2900, &qword_1002483B0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    *(v13 + 48) = 0;
    *(v13 + 56) = &_swiftEmptyArrayStorage;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0xE000000000000000;
    v16 = v13 + *(v8 + 44);
    UnknownStorage.init()();
    v17 = *(v8 + 48);
    v18 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C2900, &qword_1002483B0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  }

  return sub_10010FD58;
}

uint64_t Goldilocks_DuplicateState.resultError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_DuplicateState(0) + 28);
  sub_1000CCDBC(v1 + v3, &qword_1002C2900, &qword_1002483B0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Goldilocks_DuplicateState.resultError.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C2900, &qword_1002483B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_DuplicateState(0) + 28);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C2900, &qword_1002483B0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    *(v13 + 48) = 0;
    *(v13 + 56) = &_swiftEmptyArrayStorage;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0xE000000000000000;
    v16 = v13 + *(v8 + 44);
    UnknownStorage.init()();
    v17 = *(v8 + 48);
    v18 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C2900, &qword_1002483B0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  }

  return sub_1000F6FA0;
}

uint64_t Goldilocks_FoundDuplicate.duplicateZoneID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_FoundDuplicate(0) + 28);
  sub_1000CCDBC(v1 + v3, &qword_1002C4050, &qword_1002483C0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ZoneID);
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Goldilocks_FoundDuplicate.duplicateZoneID.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C4050, &qword_1002483C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ZoneID(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_FoundDuplicate(0) + 28);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C4050, &qword_1002483C0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C4050, &qword_1002483C0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ZoneID);
  }

  return sub_1000F73D0;
}

uint64_t (*Goldilocks_ExitMoveBatchRequest.zoneID.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C4050, &qword_1002483C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ZoneID(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_ExitMoveBatchRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C4050, &qword_1002483C0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C4050, &qword_1002483C0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ZoneID);
  }

  return sub_10010FD5C;
}

uint64_t Goldilocks_ExitMoveBatchRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v2 = type metadata accessor for Goldilocks_ExitMoveBatchRequest(0);
  v3 = a1 + *(v2 + 24);
  UnknownStorage.init()();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Goldilocks_ZoneID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t Goldilocks_ExitMoveBatchResponse.resultError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Goldilocks_ExitMoveBatchResponse(0);
  sub_1000CC794(v1 + *(v7 + 40), v6, &qword_1002C2900, &qword_1002483B0);
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10010C450(v6, a1, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = &_swiftEmptyArrayStorage;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  v10 = a1 + *(v8 + 44);
  UnknownStorage.init()();
  v11 = *(v8 + 48);
  v12 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C2900, &qword_1002483B0);
  }

  return result;
}

uint64_t Goldilocks_ExitMoveBatchResponse.resultError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_ExitMoveBatchResponse(0) + 40);
  sub_1000CCDBC(v1 + v3, &qword_1002C2900, &qword_1002483B0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Goldilocks_ExitMoveBatchResponse.resultError.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C2900, &qword_1002483B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_ExitMoveBatchResponse(0) + 40);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C2900, &qword_1002483B0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    *(v13 + 48) = 0;
    *(v13 + 56) = &_swiftEmptyArrayStorage;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0xE000000000000000;
    v16 = v13 + *(v8 + 44);
    UnknownStorage.init()();
    v17 = *(v8 + 48);
    v18 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C2900, &qword_1002483B0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  }

  return sub_10010FD58;
}

BOOL Goldilocks_ExitMoveBatchResponse.hasResultError.getter()
{
  v1 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Goldilocks_ExitMoveBatchResponse(0);
  sub_1000CC794(v0 + *(v5 + 40), v4, &qword_1002C2900, &qword_1002483B0);
  v6 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000CCDBC(v4, &qword_1002C2900, &qword_1002483B0);
  return v7;
}

Swift::Void __swiftcall Goldilocks_ExitMoveBatchResponse.clearResultError()()
{
  v1 = *(type metadata accessor for Goldilocks_ExitMoveBatchResponse(0) + 40);
  sub_1000CCDBC(v0 + v1, &qword_1002C2900, &qword_1002483B0);
  v2 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Goldilocks_ExitMoveBatchResponse.recordIdsToMove.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Goldilocks_ExitMoveBatchResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Goldilocks_ExitMoveBatchResponse(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Goldilocks_ExitMoveBatchResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_ExitMoveBatchResponse(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Goldilocks_ExitMoveBatchResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = &_swiftEmptyArrayStorage;
  *(a1 + 48) = 0;
  v2 = type metadata accessor for Goldilocks_ExitMoveBatchResponse(0);
  v3 = a1 + *(v2 + 36);
  UnknownStorage.init()();
  v4 = *(v2 + 40);
  v5 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t sub_1000F8208@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - v7;
  v9 = a1(0);
  sub_1000CC794(v2 + *(v9 + 28), v8, &qword_1002C2900, &qword_1002483B0);
  v10 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_10010C450(v8, a2, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = &_swiftEmptyArrayStorage;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0xE000000000000000;
  v12 = a2 + *(v10 + 44);
  UnknownStorage.init()();
  v13 = *(v10 + 48);
  v14 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1000CCDBC(v8, &qword_1002C2900, &qword_1002483B0);
  }

  return result;
}

uint64_t Goldilocks_ExitMoveBatchFeedbackItem.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem(0) + 28);
  sub_1000CCDBC(v1 + v3, &qword_1002C2900, &qword_1002483B0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Goldilocks_ExitMoveBatchFeedbackItem.error.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C2900, &qword_1002483B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem(0) + 28);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C2900, &qword_1002483B0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    *(v13 + 48) = 0;
    *(v13 + 56) = &_swiftEmptyArrayStorage;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0xE000000000000000;
    v16 = v13 + *(v8 + 44);
    UnknownStorage.init()();
    v17 = *(v8 + 48);
    v18 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C2900, &qword_1002483B0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  }

  return sub_10010FD58;
}

uint64_t Goldilocks_ExitMoveBatchFeedbackItem.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v2 = type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem(0);
  v3 = &a1[*(v2 + 24)];
  UnknownStorage.init()();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackRequest.exitZoneID.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0);
  sub_1000CC794(v1 + *(v7 + 32), v6, &qword_1002C4050, &qword_1002483C0);
  v8 = type metadata accessor for Goldilocks_ZoneID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10010C450(v6, a1, type metadata accessor for Goldilocks_ZoneID);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C4050, &qword_1002483C0);
  }

  return result;
}

uint64_t (*Goldilocks_ExitMoveBatchErrorFeedbackRequest.exitZoneID.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C4050, &qword_1002483C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ZoneID(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0) + 32);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C4050, &qword_1002483C0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C4050, &qword_1002483C0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ZoneID);
  }

  return sub_10010FD5C;
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackRequest.moveBatchOperationID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackRequest.moveBatchOperationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackRequest.init()@<X0>(char *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0xE000000000000000;
  *(a1 + 3) = 0;
  *(a1 + 4) = 0xE000000000000000;
  v2 = type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0);
  v3 = &a1[*(v2 + 28)];
  UnknownStorage.init()();
  v4 = *(v2 + 32);
  v5 = type metadata accessor for Goldilocks_ZoneID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackResponse.serviceError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse(0);
  sub_1000CC794(v1 + *(v7 + 20), v6, &qword_1002C2900, &qword_1002483B0);
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10010C450(v6, a1, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = &_swiftEmptyArrayStorage;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  v10 = a1 + *(v8 + 44);
  UnknownStorage.init()();
  v11 = *(v8 + 48);
  v12 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C2900, &qword_1002483B0);
  }

  return result;
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackResponse.serviceError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse(0) + 20);
  sub_1000CCDBC(v1 + v3, &qword_1002C2900, &qword_1002483B0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Goldilocks_ExitMoveBatchErrorFeedbackResponse.serviceError.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C2900, &qword_1002483B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse(0) + 20);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C2900, &qword_1002483B0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    *(v13 + 48) = 0;
    *(v13 + 56) = &_swiftEmptyArrayStorage;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0xE000000000000000;
    v16 = v13 + *(v8 + 44);
    UnknownStorage.init()();
    v17 = *(v8 + 48);
    v18 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C2900, &qword_1002483B0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  }

  return sub_10010FD58;
}

BOOL Goldilocks_ExitMoveBatchErrorFeedbackResponse.hasServiceError.getter()
{
  v1 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse(0);
  sub_1000CC794(v0 + *(v5 + 20), v4, &qword_1002C2900, &qword_1002483B0);
  v6 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000CCDBC(v4, &qword_1002C2900, &qword_1002483B0);
  return v7;
}

Swift::Void __swiftcall Goldilocks_ExitMoveBatchErrorFeedbackResponse.clearServiceError()()
{
  v1 = *(type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse(0) + 20);
  sub_1000CCDBC(v0 + v1, &qword_1002C2900, &qword_1002483B0);
  v2 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackResponse.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse(0) + 20);
  v3 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_1000F95F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000F9694(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Goldilocks_SilentMoverRampingRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Goldilocks_SilentMoverRampingRequest(0) + 20);
  return UnknownStorage.init()();
}

uint64_t Goldilocks_SilentMoverRampingResponse.operationControl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C2CF8, &qword_100248A10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Goldilocks_SilentMoverRampingResponse(0);
  sub_1000CC794(v1 + *(v7 + 28), v6, &qword_1002C2CF8, &qword_100248A10);
  v8 = type metadata accessor for Goldilocks_OperationControl(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10010C450(v6, a1, type metadata accessor for Goldilocks_OperationControl);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 0;
  *(a1 + 13) = 0;
  v10 = a1 + *(v8 + 44);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C2CF8, &qword_100248A10);
  }

  return result;
}

uint64_t Goldilocks_OperationControl.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Goldilocks_OperationControl(0);
  *(a1 + 9) = 0;
  *(a1 + 13) = 0;
  v3 = a1 + *(v2 + 44);
  return UnknownStorage.init()();
}

uint64_t Goldilocks_SilentMoverRampingResponse.operationControl.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_SilentMoverRampingResponse(0) + 28);
  sub_1000CCDBC(v1 + v3, &qword_1002C2CF8, &qword_100248A10);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_OperationControl);
  v4 = type metadata accessor for Goldilocks_OperationControl(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Goldilocks_SilentMoverRampingResponse.operationControl.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C2CF8, &qword_100248A10) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_OperationControl(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_SilentMoverRampingResponse(0) + 28);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C2CF8, &qword_100248A10);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 9) = 0;
    *(v13 + 13) = 0;
    v16 = v13 + *(v8 + 44);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C2CF8, &qword_100248A10);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_OperationControl);
  }

  return sub_1000F9C28;
}

uint64_t Goldilocks_SilentMoverRampingResponse.resultError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Goldilocks_SilentMoverRampingResponse(0);
  sub_1000CC794(v1 + *(v7 + 32), v6, &qword_1002C2900, &qword_1002483B0);
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10010C450(v6, a1, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = &_swiftEmptyArrayStorage;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  v10 = a1 + *(v8 + 44);
  UnknownStorage.init()();
  v11 = *(v8 + 48);
  v12 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C2900, &qword_1002483B0);
  }

  return result;
}

uint64_t Goldilocks_SilentMoverRampingResponse.resultError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_SilentMoverRampingResponse(0) + 32);
  sub_1000CCDBC(v1 + v3, &qword_1002C2900, &qword_1002483B0);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Goldilocks_SilentMoverRampingResponse.resultError.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C2900, &qword_1002483B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_SilentMoverRampingResponse(0) + 32);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C2900, &qword_1002483B0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    *(v13 + 48) = 0;
    *(v13 + 56) = &_swiftEmptyArrayStorage;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0xE000000000000000;
    v16 = v13 + *(v8 + 44);
    UnknownStorage.init()();
    v17 = *(v8 + 48);
    v18 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C2900, &qword_1002483B0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
  }

  return sub_10010FD58;
}

BOOL sub_1000FA20C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_1000BB130(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_1000CC794(v4 + *(v13 + 32), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000CCDBC(v12, a1, a2);
  return v15;
}

uint64_t sub_1000FA344(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_1000CCDBC(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Goldilocks_SilentMoverRampingResponse.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  v2 = type metadata accessor for Goldilocks_SilentMoverRampingResponse(0);
  v3 = &a1[v2[6]];
  UnknownStorage.init()();
  v4 = v2[7];
  v5 = type metadata accessor for Goldilocks_OperationControl(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[8];
  v7 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

double Goldilocks_OperationControl.unshareOperationPercentage.getter()
{
  result = *v0;
  if (*(v0 + 8))
  {
    return 0.0;
  }

  return result;
}

void *(*Goldilocks_OperationControl.unshareOperationPercentage.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1000FA5A8;
}

void *sub_1000FA5A8(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_1000FA7B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C924();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t Goldilocks_ErrorInfo.DatabaseFailure.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Goldilocks_ErrorInfo.DatabaseFailure.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Goldilocks_ErrorInfo.DatabaseFailure.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v1 = a1 + *(type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0) + 32);
  return UnknownStorage.init()();
}

uint64_t Goldilocks_ErrorInfo.ResultError.databaseFailure.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C2D00, &qword_100248A18);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  sub_1000CC794(v1 + *(v7 + 48), v6, &qword_1002C2D00, &qword_100248A18);
  v8 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10010C450(v6, a1, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v10 = a1 + *(v8 + 32);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C2D00, &qword_100248A18);
  }

  return result;
}

uint64_t Goldilocks_ErrorInfo.ResultError.databaseFailure.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Goldilocks_ErrorInfo.ResultError(0) + 48);
  sub_1000CCDBC(v1 + v3, &qword_1002C2D00, &qword_100248A18);
  sub_10010C450(a1, v1 + v3, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
  v4 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Goldilocks_ErrorInfo.ResultError.databaseFailure.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C2D00, &qword_100248A18) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_ErrorInfo.ResultError(0) + 48);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C2D00, &qword_100248A18);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0xE000000000000000;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    *(v13 + 48) = 0;
    *(v13 + 56) = 1;
    v16 = v13 + *(v8 + 32);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C2D00, &qword_100248A18);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure);
  }

  return sub_1000FADF8;
}

BOOL Goldilocks_ErrorInfo.ResultError.hasDatabaseFailure.getter()
{
  v1 = sub_1000BB130(&qword_1002C2D00, &qword_100248A18);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  sub_1000CC794(v0 + *(v5 + 48), v4, &qword_1002C2D00, &qword_100248A18);
  v6 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000CCDBC(v4, &qword_1002C2D00, &qword_100248A18);
  return v7;
}

Swift::Void __swiftcall Goldilocks_ErrorInfo.ResultError.clearDatabaseFailure()()
{
  v1 = *(type metadata accessor for Goldilocks_ErrorInfo.ResultError(0) + 48);
  sub_1000CCDBC(v0 + v1, &qword_1002C2D00, &qword_100248A18);
  v2 = type metadata accessor for Goldilocks_ErrorInfo.DatabaseFailure(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Goldilocks_ErrorInfo.ResultError.databaseFailures.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t Goldilocks_ErrorInfo.ResultError.learnMoreLink.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t Goldilocks_ErrorInfo.ResultError.learnMoreLink.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_1000FB064@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000FB100(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000FB2A4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v5 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0);
  sub_1000CC794(v2 + *(v9 + 28), v8, &qword_1002C4050, &qword_1002483C0);
  v10 = type metadata accessor for Goldilocks_ZoneID(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_10010C450(v8, a2, type metadata accessor for Goldilocks_ZoneID);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v12 = a2 + *(v10 + 24);
  UnknownStorage.init()();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1000CCDBC(v8, &qword_1002C4050, &qword_1002483C0);
  }

  return result;
}

uint64_t (*Goldilocks_ExitStatusFeedbackRequest.shareID.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C4050, &qword_1002483C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Goldilocks_ZoneID(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Goldilocks_ExitStatusFeedbackRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C4050, &qword_1002483C0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C4050, &qword_1002483C0);
    }
  }

  else
  {
    sub_10010C450(v7, v13, type metadata accessor for Goldilocks_ZoneID);
  }

  return sub_10010FD5C;
}

void sub_1000FB62C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_10010C4B8(v11, v10, a5);
    sub_1000CCDBC(v14 + v9, a3, a4);
    sub_10010C450(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_10010C520(v11, a5);
  }

  else
  {
    sub_1000CCDBC(v14 + v9, a3, a4);
    sub_10010C450(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

uint64_t Goldilocks_ExitStatusFeedbackRequest.ClientStatus.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_10024B5A8[result];
  }

  return result;
}

uint64_t sub_1000FB8C0@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1000FB8F8()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_10024B5A8[result];
  }

  return result;
}

uint64_t sub_1000FB930@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

void sub_1000FB96C(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_10024B5A8[v2];
  }

  *a1 = v2;
}

uint64_t sub_1000FB990(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C978();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_1000FB9DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_10024B5A8[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_10024B5A8[v3];
  }

  return v2 == v3;
}

uint64_t sub_1000FBA2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v3 = a1(0);
  v4 = a2 + *(v3 + 24);
  UnknownStorage.init()();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for Goldilocks_ZoneID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1000FBB94()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_ExitStage._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_ExitStage._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100245150;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = -1;
  *v5 = "UNKNOWN";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 0;
  *v9 = "NOT_IN_EXIT";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 1000;
  *v11 = "EXIT_INITIATED_COPY_IN_PROGRESS";
  *(v11 + 1) = 31;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 1100;
  *v13 = "EXIT_RECORD_COPY_COMPLETE";
  *(v13 + 1) = 25;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 1200;
  *v15 = "EXIT_ADDED_PARTICIPANT_TO_EXIT_SHARE";
  *(v15 + 1) = 36;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 1300;
  *v17 = "EXIT_REMOVE_PARTICIPANT_FROM_SHARED_ALBUM";
  *(v17 + 1) = 41;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 1400;
  *v19 = "EXIT_REMOVE_PARTICIPANT_FROM_EXIT_STATE";
  *(v19 + 1) = 39;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 2000;
  *v21 = "MOVE_RECORDS_OUT";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 3000;
  *v22 = "EXIT_COMPLETE_ZONE_NOT_IN_USE";
  *(v22 + 8) = 29;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000FBF88()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_ExitSource._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_ExitSource._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002489F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "USER_DRIVEN";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MANZANITA";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ICPL_DISABLE_AND_DELETE";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TRIGGER_EXIT_ENDPOINT";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "GROOMER_REENQUEUE";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000FC284()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_ExitType._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_ExitType._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PARTICIPANT_SELF_EXIT";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PARTICIPANT_REMOVAL";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "OWNER_DISMANTLE";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000FC500()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_RecordRetentionPolicy._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_RecordRetentionPolicy._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SERVER_CHOICE";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CONTRIBUTED_ONLY";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ALL";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000FC77C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_DuplicateType._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_DuplicateType._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100244120;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NOT_A_DUPLICATE";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EXACT_DUPLICATE";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000FC9D8()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_InitiateExitRequest._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_InitiateExitRequest._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100245150;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "operationID";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "sharedZoneID";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "exitType";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "retentionPolicy";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "participantUserIDsToRemove";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "participantIDsToRemove";
  *(v17 + 1) = 22;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "zoneTtlForICPLExit";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "exitSource";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 101;
  *v22 = "stopAtStage";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_InitiateExitRequest.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          v3 = v0;
          if (result == 3)
          {
            sub_10010C814();
          }

          else
          {
            sub_10010C7C0();
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 2)
        {
          v4 = *(type metadata accessor for Goldilocks_InitiateExitRequest(0) + 52);
          type metadata accessor for Goldilocks_ZoneID(0);
          sub_10010C868(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result <= 7)
      {
        if (result == 5 || result == 6)
        {
          dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 8:
            dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
            break;
          case 9:
            v3 = v0;
            sub_10010C76C();
            goto LABEL_5;
          case 101:
            v3 = v0;
            sub_10010C718();
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Goldilocks_InitiateExitRequest.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Goldilocks_ZoneID(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = v0[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  v26 = type metadata accessor for Goldilocks_InitiateExitRequest(0);
  sub_1000CC794(v0 + *(v26 + 52), v6, &qword_1002C4050, &qword_1002483C0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000CCDBC(v6, &qword_1002C4050, &qword_1002483C0);
    v16 = v0[2];
    if (!v16)
    {
      goto LABEL_8;
    }

LABEL_13:
    v20 = *(v0 + 24);
    v24 = v16;
    v25 = v20;
    sub_10010C814();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    v2 = 0;
    v17 = v0[4];
    if (v17)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  sub_10010C450(v6, v11, type metadata accessor for Goldilocks_ZoneID);
  sub_10010C868(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  result = sub_10010C520(v11, type metadata accessor for Goldilocks_ZoneID);
  if (v2)
  {
    return result;
  }

  v2 = 0;
  v16 = v0[2];
  if (v16)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v0[4];
  if (v17)
  {
LABEL_9:
    v18 = *(v0 + 40);
    v24 = v17;
    v25 = v18;
    sub_10010C7C0();
    v19 = v2;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_15:
  v19 = v2;
LABEL_16:
  if (!*(v0[6] + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v19))
  {
    if (!*(v0[7] + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v19))
    {
      if (!v0[8] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v19))
      {
        if (!v0[9] || (v21 = *(v0 + 80), v24 = v0[9], v25 = v21, sub_10010C76C(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v19))
        {
          if (!v0[11] || (v22 = *(v0 + 96), v24 = v0[11], v25 = v22, sub_10010C718(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v19))
          {
            v23 = v0 + *(v26 + 48);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000FD408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = &_swiftEmptyArrayStorage;
  *(a2 + 56) = &_swiftEmptyArrayStorage;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v4 = a2 + *(a1 + 48);
  UnknownStorage.init()();
  v5 = *(a1 + 52);
  v6 = type metadata accessor for Goldilocks_ZoneID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1000FD4F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E78, type metadata accessor for Goldilocks_InitiateExitRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000FD590()
{
  sub_10010C868(&qword_1002C40B0, type metadata accessor for Goldilocks_InitiateExitRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000FD5FC()
{
  sub_10010C868(&qword_1002C40B0, type metadata accessor for Goldilocks_InitiateExitRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000FD6A0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_InitiateExitResponse._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_InitiateExitResponse._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operationID";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "batchError";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "participantExitResult";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_InitiateExitResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Goldilocks_ParticipantExitResult(0);
          sub_10010C868(&qword_1002C2D38, type metadata accessor for Goldilocks_ParticipantExitResult);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for Goldilocks_InitiateExitResponse(0) + 28);
          type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
          sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Goldilocks_InitiateExitResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v7 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v3;
  v17 = v3[1];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v25 = a3;
    v5 = 0;
  }

  else
  {
    v25 = a3;
  }

  v20 = type metadata accessor for Goldilocks_InitiateExitResponse(0);
  sub_1000CC794(v3 + *(v20 + 28), v10, &qword_1002C2900, &qword_1002483B0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000CCDBC(v10, &qword_1002C2900, &qword_1002483B0);
    v21 = v5;
  }

  else
  {
    v24 = v20;
    sub_10010C450(v10, v15, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    v21 = v5;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_10010C520(v15, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    if (v5)
    {
      return result;
    }

    v20 = v24;
  }

  if (!*(v3[2] + 16) || (type metadata accessor for Goldilocks_ParticipantExitResult(0), sub_10010C868(&qword_1002C2D38, type metadata accessor for Goldilocks_ParticipantExitResult), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v21))
  {
    v22 = v3 + *(v20 + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000FDE4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E70, type metadata accessor for Goldilocks_InitiateExitResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000FDEEC()
{
  sub_10010C868(&qword_1002C2F50, type metadata accessor for Goldilocks_InitiateExitResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000FDF58()
{
  sub_10010C868(&qword_1002C2F50, type metadata accessor for Goldilocks_InitiateExitResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000FDFFC()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_ParticipantExitResult._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_ParticipantExitResult._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "participantUserID";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resultError";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "exitZoneID";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_ParticipantExitResult.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        v3 = *(type metadata accessor for Goldilocks_ParticipantExitResult(0) + 24);
        type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
        v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError;
        v5 = &qword_1002C4090;
LABEL_12:
        sub_10010C868(v5, v4);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_4;
      }

      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

LABEL_4:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = *(type metadata accessor for Goldilocks_ParticipantExitResult(0) + 28);
    type metadata accessor for Goldilocks_ZoneID(0);
    v4 = type metadata accessor for Goldilocks_ZoneID;
    v5 = &qword_1002C2D28;
    goto LABEL_12;
  }

  return result;
}

uint64_t Goldilocks_ParticipantExitResult.traverse<A>(visitor:)()
{
  v1 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for Goldilocks_ZoneID(0);
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  __chkstk_darwin(v5);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v0;
  v18 = v0[1];
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = v31;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v20)
    {
      return result;
    }

    v31 = 0;
  }

  v27 = type metadata accessor for Goldilocks_ParticipantExitResult(0);
  sub_1000CC794(v0 + *(v27 + 24), v11, &qword_1002C2900, &qword_1002483B0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000CCDBC(v11, &qword_1002C2900, &qword_1002483B0);
  }

  else
  {
    sub_10010C450(v11, v16, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    v22 = v31;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_10010C520(v16, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    if (v22)
    {
      return result;
    }

    v31 = 0;
  }

  v23 = v27;
  sub_1000CC794(v0 + *(v27 + 28), v4, &qword_1002C4050, &qword_1002483C0);
  if ((*(v29 + 48))(v4, 1, v30) == 1)
  {
    sub_1000CCDBC(v4, &qword_1002C4050, &qword_1002483C0);
  }

  else
  {
    v24 = v28;
    sub_10010C450(v4, v28, type metadata accessor for Goldilocks_ZoneID);
    sub_10010C868(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
    v25 = v31;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_10010C520(v24, type metadata accessor for Goldilocks_ZoneID);
    if (v25)
    {
      return result;
    }
  }

  v26 = v0 + *(v23 + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1000FE854@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[6];
  v6 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for Goldilocks_ZoneID(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_1000FE958(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E68, type metadata accessor for Goldilocks_ParticipantExitResult);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000FE9F8()
{
  sub_10010C868(&qword_1002C2D38, type metadata accessor for Goldilocks_ParticipantExitResult);

  return Message.debugDescription.getter();
}

uint64_t sub_1000FEA64()
{
  sub_10010C868(&qword_1002C2D38, type metadata accessor for Goldilocks_ParticipantExitResult);

  return Message.hash(into:)();
}

uint64_t sub_1000FEB0C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_CheckDuplicatesRequest._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_CheckDuplicatesRequest._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operationID";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zoneID";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "recordIDs";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_CheckDuplicatesRequest.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for Goldilocks_CheckDuplicatesRequest(0) + 28);
          type metadata accessor for Goldilocks_ZoneID(0);
          sub_10010C868(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Goldilocks_CheckDuplicatesRequest.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Goldilocks_ZoneID(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = v0[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  v19 = type metadata accessor for Goldilocks_CheckDuplicatesRequest(0);
  sub_1000CC794(v0 + *(v19 + 28), v6, &qword_1002C4050, &qword_1002483C0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000CCDBC(v6, &qword_1002C4050, &qword_1002483C0);
    v16 = v2;
  }

  else
  {
    sub_10010C450(v6, v11, type metadata accessor for Goldilocks_ZoneID);
    sub_10010C868(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
    v16 = v2;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_10010C520(v11, type metadata accessor for Goldilocks_ZoneID);
    if (v2)
    {
      return result;
    }
  }

  if (!*(v0[2] + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v16))
  {
    v17 = v0 + *(v19 + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000FF17C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  *(a3 + 2) = &_swiftEmptyArrayStorage;
  v6 = &a3[*(a1 + 24)];
  UnknownStorage.init()();
  v7 = *(a1 + 28);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t sub_1000FF250(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E60, type metadata accessor for Goldilocks_CheckDuplicatesRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000FF2F0()
{
  sub_10010C868(&qword_1002C2AC0, type metadata accessor for Goldilocks_CheckDuplicatesRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000FF35C()
{
  sub_10010C868(&qword_1002C2AC0, type metadata accessor for Goldilocks_CheckDuplicatesRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000FF400()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_CheckDuplicatesResponse._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_CheckDuplicatesResponse._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operationID";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "batchError";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "duplicateStates";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_CheckDuplicatesResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Goldilocks_DuplicateState(0);
          sub_10010C868(&qword_1002C2D58, type metadata accessor for Goldilocks_DuplicateState);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for Goldilocks_CheckDuplicatesResponse(0) + 28);
          type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
          sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Goldilocks_CheckDuplicatesResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v7 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v3;
  v17 = v3[1];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v25 = a3;
    v5 = 0;
  }

  else
  {
    v25 = a3;
  }

  v20 = type metadata accessor for Goldilocks_CheckDuplicatesResponse(0);
  sub_1000CC794(v3 + *(v20 + 28), v10, &qword_1002C2900, &qword_1002483B0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000CCDBC(v10, &qword_1002C2900, &qword_1002483B0);
    v21 = v5;
  }

  else
  {
    v24 = v20;
    sub_10010C450(v10, v15, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    v21 = v5;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_10010C520(v15, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    if (v5)
    {
      return result;
    }

    v20 = v24;
  }

  if (!*(v3[2] + 16) || (type metadata accessor for Goldilocks_DuplicateState(0), sub_10010C868(&qword_1002C2D58, type metadata accessor for Goldilocks_DuplicateState), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v21))
  {
    v22 = v3 + *(v20 + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000FFBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E58, type metadata accessor for Goldilocks_CheckDuplicatesResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000FFC4C()
{
  sub_10010C868(&qword_1002C2F88, type metadata accessor for Goldilocks_CheckDuplicatesResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000FFCB8()
{
  sub_10010C868(&qword_1002C2F88, type metadata accessor for Goldilocks_CheckDuplicatesResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000FFD5C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_DuplicateState._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_DuplicateState._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "recordID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resultError";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "foundDuplicates";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_DuplicateState.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Goldilocks_FoundDuplicate(0);
          sub_10010C868(&qword_1002C2D68, type metadata accessor for Goldilocks_FoundDuplicate);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for Goldilocks_DuplicateState(0) + 28);
          type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
          sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Goldilocks_DuplicateState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v7 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v3;
  v17 = v3[1];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v25 = a3;
    v5 = 0;
  }

  else
  {
    v25 = a3;
  }

  v20 = type metadata accessor for Goldilocks_DuplicateState(0);
  sub_1000CC794(v3 + *(v20 + 28), v10, &qword_1002C2900, &qword_1002483B0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000CCDBC(v10, &qword_1002C2900, &qword_1002483B0);
    v21 = v5;
  }

  else
  {
    v24 = v20;
    sub_10010C450(v10, v15, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    v21 = v5;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_10010C520(v15, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    if (v5)
    {
      return result;
    }

    v20 = v24;
  }

  if (!*(v3[2] + 16) || (type metadata accessor for Goldilocks_FoundDuplicate(0), sub_10010C868(&qword_1002C2D68, type metadata accessor for Goldilocks_FoundDuplicate), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v21))
  {
    v22 = v3 + *(v20 + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100100508(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E50, type metadata accessor for Goldilocks_DuplicateState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001005A8()
{
  sub_10010C868(&qword_1002C2D58, type metadata accessor for Goldilocks_DuplicateState);

  return Message.debugDescription.getter();
}

uint64_t sub_100100614()
{
  sub_10010C868(&qword_1002C2D58, type metadata accessor for Goldilocks_DuplicateState);

  return Message.hash(into:)();
}

uint64_t sub_1001006B8()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_FoundDuplicate._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_FoundDuplicate._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "duplicateRecordID";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "duplicateZoneID";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "duplicateType";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100100A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E48, type metadata accessor for Goldilocks_FoundDuplicate);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100100AC0()
{
  sub_10010C868(&qword_1002C2D68, type metadata accessor for Goldilocks_FoundDuplicate);

  return Message.debugDescription.getter();
}

uint64_t sub_100100B2C()
{
  sub_10010C868(&qword_1002C2D68, type metadata accessor for Goldilocks_FoundDuplicate);

  return Message.hash(into:)();
}

uint64_t sub_100100BD0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_ZoneID._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_ZoneID._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100244120;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ownerUserID";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_ZoneID.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v8 = v0 + *(type metadata accessor for Goldilocks_ZoneID(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100100F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E40, type metadata accessor for Goldilocks_ZoneID);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100100FA8()
{
  sub_10010C868(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);

  return Message.debugDescription.getter();
}

uint64_t sub_100101014()
{
  sub_10010C868(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);

  return Message.hash(into:)();
}

uint64_t sub_1001010B8()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_ExitMoveBatchRequest._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_ExitMoveBatchRequest._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operationID";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zoneID";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "batchSize";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_ExitMoveBatchRequest.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for Goldilocks_ExitMoveBatchRequest(0) + 28);
          type metadata accessor for Goldilocks_ZoneID(0);
          sub_10010C868(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Goldilocks_ExitMoveBatchRequest.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Goldilocks_ZoneID(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = v0[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  v19 = type metadata accessor for Goldilocks_ExitMoveBatchRequest(0);
  sub_1000CC794(v0 + *(v19 + 28), v6, &qword_1002C4050, &qword_1002483C0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000CCDBC(v6, &qword_1002C4050, &qword_1002483C0);
    v16 = v2;
  }

  else
  {
    sub_10010C450(v6, v11, type metadata accessor for Goldilocks_ZoneID);
    sub_10010C868(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
    v16 = v2;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_10010C520(v11, type metadata accessor for Goldilocks_ZoneID);
    if (v2)
    {
      return result;
    }
  }

  if (!*(v0 + 4) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v16))
  {
    v17 = v0 + *(v19 + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10010170C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v4 = a2 + *(a1 + 24);
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Goldilocks_ZoneID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1001017C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E38, type metadata accessor for Goldilocks_ExitMoveBatchRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100101868()
{
  sub_10010C868(&qword_1002C40E0, type metadata accessor for Goldilocks_ExitMoveBatchRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1001018D4()
{
  sub_10010C868(&qword_1002C40E0, type metadata accessor for Goldilocks_ExitMoveBatchRequest);

  return Message.hash(into:)();
}

uint64_t sub_100101978()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_ExitMoveBatchResponse._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_ExitMoveBatchResponse._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100245160;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "operationID";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "resultError";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "retryAfterSec";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "batchID";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "recordIDsToMove";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "movesComplete";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_ExitMoveBatchResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
LABEL_16:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
            break;
          case 6:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_16;
          case 2:
            v3 = *(type metadata accessor for Goldilocks_ExitMoveBatchResponse(0) + 40);
            type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
            sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 3:
            dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Goldilocks_ExitMoveBatchResponse.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = v0[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  v21 = type metadata accessor for Goldilocks_ExitMoveBatchResponse(0);
  sub_1000CC794(v0 + *(v21 + 40), v6, &qword_1002C2900, &qword_1002483B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000CCDBC(v6, &qword_1002C2900, &qword_1002483B0);
    v16 = v2;
  }

  else
  {
    sub_10010C450(v6, v11, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    v16 = v2;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_10010C520(v11, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    if (v2)
    {
      return result;
    }
  }

  if (!v0[2] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v16))
  {
    v17 = v0[4];
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v0[3] & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v16))
    {
      if (!*(v0[5] + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v16))
      {
        if (*(v0 + 48) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v16))
        {
          v19 = v0 + *(v21 + 36);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100102148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = &_swiftEmptyArrayStorage;
  *(a2 + 48) = 0;
  v4 = a2 + *(a1 + 36);
  UnknownStorage.init()();
  v5 = *(a1 + 40);
  v6 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1001021E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100102258(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1001022CC(uint64_t a1, uint64_t a2))(void, void)
{
  result = Goldilocks_RecordRetentionPolicy.rawValue.getter;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_100102320(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E30, type metadata accessor for Goldilocks_ExitMoveBatchResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001023C0()
{
  sub_10010C868(&qword_1002C2FE0, type metadata accessor for Goldilocks_ExitMoveBatchResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_10010242C()
{
  sub_10010C868(&qword_1002C2FE0, type metadata accessor for Goldilocks_ExitMoveBatchResponse);

  return Message.hash(into:)();
}

uint64_t sub_1001024D0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_ExitMoveBatchFeedbackItem._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_ExitMoveBatchFeedbackItem._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "originRecordID";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "destinationRecordID";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "error";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_ExitMoveBatchFeedbackItem.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        v3 = *(type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem(0) + 28);
        type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
        sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2 || result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Goldilocks_ExitMoveBatchFeedbackItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v25 - v9;
  v11 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v3;
  v17 = v3[1];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v20 = v3[3];
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v21 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v25[0] = v4;
      v25[1] = a2;
      v25[3] = a3;
      v22 = type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem(0);
      sub_1000CC794(v3 + *(v22 + 28), v10, &qword_1002C2900, &qword_1002483B0);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_1000CCDBC(v10, &qword_1002C2900, &qword_1002483B0);
      }

      else
      {
        sub_10010C450(v10, v15, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        v23 = v25[0];
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = sub_10010C520(v15, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        if (v23)
        {
          return result;
        }
      }

      v24 = v3 + *(v22 + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100102B34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = &a2[*(a1 + 24)];
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_100102BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E28, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100102C90()
{
  sub_10010C868(&qword_1002C2DA8, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);

  return Message.debugDescription.getter();
}

uint64_t sub_100102CFC()
{
  sub_10010C868(&qword_1002C2DA8, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);

  return Message.hash(into:)();
}

uint64_t sub_100102DA0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_ExitMoveBatchErrorFeedbackRequest._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_ExitMoveBatchErrorFeedbackRequest._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "exitZoneID";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "items";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "moveBatchOperationID";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 102;
  *v14 = "moveBatchID";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackRequest.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 100)
      {
        if (result == 101 || result == 102)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else if (result == 1)
      {
        v3 = *(type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0) + 32);
        type metadata accessor for Goldilocks_ZoneID(0);
        sub_10010C868(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem(0);
        sub_10010C868(&qword_1002C2DA8, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v4 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Goldilocks_ZoneID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest(0);
  v23 = v3;
  sub_1000CC794(v3 + *(v22 + 32), v7, &qword_1002C4050, &qword_1002483C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000CCDBC(v7, &qword_1002C4050, &qword_1002483C0);
    v13 = v25;
  }

  else
  {
    sub_10010C450(v7, v12, type metadata accessor for Goldilocks_ZoneID);
    sub_10010C868(&qword_1002C2D28, type metadata accessor for Goldilocks_ZoneID);
    v13 = v25;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_10010C520(v12, type metadata accessor for Goldilocks_ZoneID);
    if (v13)
    {
      return result;
    }
  }

  v15 = v23;
  if (!*(*v23 + 16) || (type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem(0), sub_10010C868(&qword_1002C2DA8, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v13))
  {
    v16 = v15[2];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v17 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v13))
    {
      v18 = v15[4];
      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = v15[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v19 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v13))
      {
        v20 = v15 + *(v22 + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_100103534@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0xE000000000000000;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0xE000000000000000;
  v4 = &a2[*(a1 + 28)];
  UnknownStorage.init()();
  v5 = *(a1 + 32);
  v6 = type metadata accessor for Goldilocks_ZoneID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1001035FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E20, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010369C()
{
  sub_10010C868(&qword_1002C2AD0, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_100103708()
{
  sub_10010C868(&qword_1002C2AD0, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackRequest);

  return Message.hash(into:)();
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse(0) + 20);
        type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
        sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a3;
  v4 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v16 - v6;
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse(0);
  sub_1000CC794(v3 + *(v13 + 20), v7, &qword_1002C2900, &qword_1002483B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000CCDBC(v7, &qword_1002C2900, &qword_1002483B0);
  }

  else
  {
    sub_10010C450(v7, v12, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    v14 = v16[3];
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_10010C520(v12, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    if (v14)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100103B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_100103C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E18, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100103CC4()
{
  sub_10010C868(&qword_1002C3018, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_100103D30()
{
  sub_10010C868(&qword_1002C3018, type metadata accessor for Goldilocks_ExitMoveBatchErrorFeedbackResponse);

  return Message.hash(into:)();
}

uint64_t Goldilocks_SilentMoverRampingRequest.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v6 = v0 + *(type metadata accessor for Goldilocks_SilentMoverRampingRequest(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static Goldilocks_SilentMoverRampingRequest.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Goldilocks_SilentMoverRampingRequest(0) + 20);
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100103FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E10, type metadata accessor for Goldilocks_SilentMoverRampingRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100104088()
{
  sub_10010C868(&qword_1002C2AC8, type metadata accessor for Goldilocks_SilentMoverRampingRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1001040F4()
{
  sub_10010C868(&qword_1002C2AC8, type metadata accessor for Goldilocks_SilentMoverRampingRequest);

  return Message.hash(into:)();
}

uint64_t sub_100104170(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  sub_10010C868(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100104254()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_SilentMoverRampingResponse._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_SilentMoverRampingResponse._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "operationID";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "retryAfterSec";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "operationControl";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "resultError";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_SilentMoverRampingResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v7 = *(type metadata accessor for Goldilocks_SilentMoverRampingResponse(0) + 28);
          type metadata accessor for Goldilocks_OperationControl(0);
          v5 = type metadata accessor for Goldilocks_OperationControl;
          v6 = &unk_1002C2DC8;
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

          v3 = v0;
          v4 = *(type metadata accessor for Goldilocks_SilentMoverRampingResponse(0) + 32);
          type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
          v5 = type metadata accessor for Goldilocks_ErrorInfo.ResultError;
          v6 = &qword_1002C4090;
        }

        sub_10010C868(v6, v5);
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Goldilocks_SilentMoverRampingResponse.traverse<A>(visitor:)()
{
  v2 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v32 = &v27 - v4;
  v33 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v31 = *(v33 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v33);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BB130(&qword_1002C2CF8, &qword_100248A10);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Goldilocks_OperationControl(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v0;
  v17 = v0[1];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    if (!v0[2])
    {
      goto LABEL_9;
    }
  }

  else if (!v0[2])
  {
    goto LABEL_9;
  }

  result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_9:
  v29 = v1;
  v20 = type metadata accessor for Goldilocks_SilentMoverRampingResponse(0);
  sub_1000CC794(v0 + *(v20 + 28), v10, &qword_1002C2CF8, &qword_100248A10);
  v21 = (*(v12 + 48))(v10, 1, v11);
  v28 = v20;
  if (v21 == 1)
  {
    sub_1000CCDBC(v10, &qword_1002C2CF8, &qword_100248A10);
  }

  else
  {
    sub_10010C450(v10, v15, type metadata accessor for Goldilocks_OperationControl);
    sub_10010C868(&qword_1002C2DC8, type metadata accessor for Goldilocks_OperationControl);
    v22 = v29;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_10010C520(v15, type metadata accessor for Goldilocks_OperationControl);
    if (v22)
    {
      return result;
    }

    v29 = 0;
    v20 = v28;
  }

  v23 = v32;
  sub_1000CC794(v0 + *(v20 + 32), v32, &qword_1002C2900, &qword_1002483B0);
  if ((*(v31 + 48))(v23, 1, v33) == 1)
  {
    sub_1000CCDBC(v23, &qword_1002C2900, &qword_1002483B0);
  }

  else
  {
    v24 = v30;
    sub_10010C450(v23, v30, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    sub_10010C868(&qword_1002C4090, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    v25 = v29;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_10010C520(v24, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
    if (v25)
    {
      return result;
    }
  }

  v26 = v0 + *(v28 + 24);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100104B48@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  v4 = &a2[a1[6]];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = type metadata accessor for Goldilocks_OperationControl(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_100104C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E08, type metadata accessor for Goldilocks_SilentMoverRampingResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100104CF0()
{
  sub_10010C868(&qword_1002C3040, type metadata accessor for Goldilocks_SilentMoverRampingResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_100104D5C()
{
  sub_10010C868(&qword_1002C3040, type metadata accessor for Goldilocks_SilentMoverRampingResponse);

  return Message.hash(into:)();
}

uint64_t sub_100104E00()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_OperationControl._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_OperationControl._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1002440E0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "unshareOperationPercentage";
  *(v4 + 8) = 26;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "allowClone";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "allowShare";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "allowUnshare";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "allowExit";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "allowCleanup";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "allowSharedLibrary";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_OperationControl.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while (1)
    {
      if (v3)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1)
        {
          if ((*(v0 + 8) & 1) == 0)
          {
            dispatch thunk of Decoder.handleConflictingOneOf()();
          }

          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }

        else if (result == 2 || result == 3)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result <= 6 || result == 7)
      {
        goto LABEL_4;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Goldilocks_OperationControl.traverse<A>(visitor:)()
{
  if ((v0[1] & 1) != 0 || (v2 = *v0, result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
  {
    if (*(v0 + 9) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
    {
      if (*(v0 + 10) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
      {
        if (*(v0 + 11) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
        {
          if (*(v0 + 12) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
          {
            if (*(v0 + 13) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
            {
              if (*(v0 + 14) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
              {
                v4 = v0 + *(type metadata accessor for Goldilocks_OperationControl(0) + 44);
                return UnknownStorage.traverse<A>(visitor:)();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100105448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 9) = 0;
  *(a2 + 13) = 0;
  v2 = a2 + *(a1 + 44);
  return UnknownStorage.init()();
}

uint64_t sub_1001054AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3E00, type metadata accessor for Goldilocks_OperationControl);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010554C()
{
  sub_10010C868(&qword_1002C2DC8, type metadata accessor for Goldilocks_OperationControl);

  return Message.debugDescription.getter();
}

uint64_t sub_1001055B8()
{
  sub_10010C868(&qword_1002C2DC8, type metadata accessor for Goldilocks_OperationControl);

  return Message.hash(into:)();
}

uint64_t sub_1001056F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010C868(&qword_1002C3DF8, type metadata accessor for Goldilocks_ErrorInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100105798()
{
  sub_10010C868(&qword_1002C3068, type metadata accessor for Goldilocks_ErrorInfo);

  return Message.debugDescription.getter();
}

uint64_t sub_100105804()
{
  sub_10010C868(&qword_1002C3068, type metadata accessor for Goldilocks_ErrorInfo);

  return Message.hash(into:)();
}

uint64_t sub_100105880()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_ErrorInfo.ResultErrorCode._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_ErrorInfo.ResultErrorCode._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100248A00;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 0;
  *v5 = "NO_ERROR";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "UNKNOWN";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "SERVER_ERROR";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "FAILED_CK_CALL";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MISSING_ARGUMENTS";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "INVALID_ARGUMENTS";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ZONE_NOT_FOUND";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "RECORD_NOT_FOUND";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "PERMISSION_DENIED";
  *(v22 + 8) = 17;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "MULTI_STATUS";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "NOT_YET_SUPPORTED";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ALL_RECORDS_IN_PROGRESS";
  *(v28 + 1) = 23;
  v28[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

void sub_100105D18()
{
  v0._object = 0x80000001002022C0;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);
  static Goldilocks_ErrorInfo.DatabaseFailure.protoMessageName = 0xD000000000000014;
  unk_1002D3350 = 0x8000000100203350;
}

uint64_t *Goldilocks_ErrorInfo.DatabaseFailure.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002C07E8 != -1)
  {
    swift_once();
  }

  return &static Goldilocks_ErrorInfo.DatabaseFailure.protoMessageName;
}

uint64_t sub_100105E04()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Goldilocks_ErrorInfo.DatabaseFailure._protobuf_nameMap);
  sub_1000BA040(v0, static Goldilocks_ErrorInfo.DatabaseFailure._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ckOperation";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "clientCode";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "serverCode";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}