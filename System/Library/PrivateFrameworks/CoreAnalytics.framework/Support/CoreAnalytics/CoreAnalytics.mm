void sub_100001668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + 8;
  v5[0] = a3;
  v5[1] = a1;
  v4 = *(a1 + 24);
  v5[2] = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100001C10;
  block[3] = &unk_100187B40;
  block[4] = v3;
  block[5] = v5;
  dispatch_sync(v4, block);
}

void sub_100001710(void *a1, void *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_28:
        sub_10000786C(v7);
        return;
      }

      v8 = a1[7];
      if (v8)
      {
        xpc_retain(v8);
        if (a2)
        {
LABEL_6:
          xpc_retain(a2);
          v9 = a2;
LABEL_9:
          type = xpc_get_type(a2);
          if (type == &_xpc_type_dictionary)
          {
            v18[0] = v8;
            if (v8 && xpc_get_type(v8) == &_xpc_type_connection)
            {
              xpc_retain(v8);
            }

            else
            {
              v18[0] = xpc_null_create();
            }

            object = v9;
            if (v9 && xpc_get_type(v9) == &_xpc_type_dictionary)
            {
              xpc_retain(v9);
            }

            else
            {
              object = xpc_null_create();
            }

            (*(*v5 + 64))(v5, v18, &object);
            xpc_release(object);
            xpc_release(v18[0]);
          }

          else if (type == &_xpc_type_error)
          {
            v18[0] = v8;
            if (v8 && xpc_get_type(v8) == &_xpc_type_connection)
            {
              xpc_retain(v8);
            }

            else
            {
              v18[0] = xpc_null_create();
            }

            (*(*v5 + 56))(v5, v18);
            xpc_release(v18[0]);
            v18[0] = v8;
            if (v8 && xpc_get_type(v8) == &_xpc_type_connection)
            {
              xpc_retain(v8);
            }

            else
            {
              v18[0] = xpc_null_create();
            }

            v13 = sub_1000B2A20(*(v5 + 72), *(v5 + 80), v18);
            sub_1000B2ABC(v5 + 72, v13, *(v5 + 80));
            xpc_release(v18[0]);
            if (a2 == &_xpc_error_connection_invalid)
            {
              if (os_log_type_enabled(qword_100192DA0, OS_LOG_TYPE_DEBUG))
              {
                if (*(v5 + 55) < 0)
                {
                  v15 = *(v5 + 32);
                }

                xpc_dictionary_get_string(&_xpc_error_connection_invalid, _xpc_error_key_description);
                sub_100124514();
              }

              dispatch_group_leave(*(v5 + 64));
            }

            else if (a2 == &_xpc_error_connection_interrupted)
            {
              if (os_log_type_enabled(qword_100192DA0, OS_LOG_TYPE_DEBUG))
              {
                if (*(v5 + 55) < 0)
                {
                  v16 = *(v5 + 32);
                }

                xpc_dictionary_get_string(&_xpc_error_connection_interrupted, _xpc_error_key_description);
                sub_1001244D0();
              }
            }

            else if (os_log_type_enabled(qword_100192DA0, OS_LOG_TYPE_ERROR))
            {
              if (*(v5 + 55) < 0)
              {
                v14 = *(v5 + 32);
              }

              xpc_dictionary_get_string(a2, _xpc_error_key_description);
              sub_10012448C();
            }
          }

          else if (os_log_type_enabled(qword_100192DA0, OS_LOG_TYPE_ERROR))
          {
            sub_10012440C(v5);
          }

          reply = xpc_dictionary_create_reply(a2);
          if (reply)
          {
            remote_connection = xpc_dictionary_get_remote_connection(a2);
            xpc_connection_send_message(remote_connection, reply);
            xpc_release(reply);
          }

          xpc_release(v9);
          xpc_release(v8);
          goto LABEL_28;
        }
      }

      else
      {
        v8 = xpc_null_create();
        if (a2)
        {
          goto LABEL_6;
        }
      }

      v9 = xpc_null_create();
      goto LABEL_9;
    }
  }
}

void sub_100001AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object)
{
  xpc_release(v13);
  xpc_release(v12);
  sub_10000786C(v11);
  _Unwind_Resume(a1);
}

xpc_object_t sub_100001BC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void sub_100001C10(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 8);
  memset(v104, 170, sizeof(v104));
  *buf = *v1;
  *&buf[8] = "command";
  sub_100001BC8(buf, &object);
  __p[0] = 0;
  __p[1] = 0;
  v106 = 0;
  applesauce::xpc::dyn_cast_or_default();
  if (SHIBYTE(v106) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  if ((HIBYTE(v104[2]) & 0x80) == 0)
  {
    if (HIBYTE(v104[2]) <= 0xDu)
    {
      if (HIBYTE(v104[2]) <= 7u)
      {
        if (HIBYTE(v104[2]) != 4)
        {
          if (HIBYTE(v104[2]) != 7)
          {
            goto LABEL_141;
          }

          if (LODWORD(v104[0]) != 1667590243 || *(v104 + 3) != 1852402531)
          {
            goto LABEL_141;
          }

LABEL_132:
          sub_1000B8FC8(v2, *(v1 + 16), *v1);
          goto LABEL_199;
        }

        v25 = v104[0];
        goto LABEL_92;
      }

      if (HIBYTE(v104[2]) != 8)
      {
        if (HIBYTE(v104[2]) != 9)
        {
          goto LABEL_141;
        }

        if (v104[0] != 0x65732D7366657270 || LOBYTE(v104[1]) != 116)
        {
          v16 = v104;
LABEL_114:
          v33 = *v16;
          v34 = *(v16 + 8);
          if (v33 == 0x65672D7366657270 && v34 == 116)
          {
            v36 = *(v1 + 16);
            v37 = *v1;
            v38 = sub_10000459C(__p, "com.apple.private.CoreAnalytics.Preferences.read");
            v39 = sub_1000B3CC8(v38, v36, v37, __p);
            v41 = v39;
            if (SHIBYTE(v106) < 0)
            {
              operator delete(__p[0]);
            }

            if (v41)
            {
              sub_1000B70D0(v39, v40, *v1);
              goto LABEL_199;
            }
          }

          goto LABEL_141;
        }

LABEL_133:
        v48 = *(v1 + 16);
        v49 = *v1;
        v50 = sub_10000459C(__p, "com.apple.private.CoreAnalytics.Preferences.write");
        v51 = sub_1000B3CC8(v50, v48, v49, __p);
        v53 = v51;
        if (SHIBYTE(v106) < 0)
        {
          operator delete(__p[0]);
        }

        if (v53)
        {
          sub_1000B6F40(v51, v52, *v1);
          goto LABEL_199;
        }

        goto LABEL_141;
      }

      v14 = v104[0];
LABEL_80:
      if (v14 == 0x74756F6B63656863)
      {
        sub_1000B90F0(v3, *(v1 + 16), *v1);
        goto LABEL_199;
      }

      goto LABEL_141;
    }

    if (HIBYTE(v104[2]) <= 0x10u)
    {
      if (HIBYTE(v104[2]) != 14)
      {
        if (HIBYTE(v104[2]) != 16)
        {
          goto LABEL_141;
        }

        if (v104[0] != 0x2D656C6261736964 || v104[1] != 0x676E696C706D6173)
        {
          goto LABEL_141;
        }

LABEL_32:
        v9 = *(v1 + 16);
        v10 = *v1;
        v11 = sub_10000459C(__p, "com.apple.private.CoreAnalytics.TransformSampling.manage");
        v13 = sub_1000B3CC8(v11, v9, v10, __p);
        if (SHIBYTE(v106) < 0)
        {
          operator delete(__p[0]);
        }

        if (v13)
        {
          sub_1000B55F0(v2, v12, *v1);
        }

        goto LABEL_141;
      }

      if (v104[0] != 0x2D676E696B736174 || *(v104 + 6) != 0x796669746F6E2D67)
      {
        goto LABEL_141;
      }

LABEL_123:
      v42 = *(v1 + 16);
      v43 = *v1;
      v44 = sub_10000459C(__p, "com.apple.private.CoreAnalytics.Tasking.notify");
      v46 = sub_1000B3CC8(v44, v42, v43, __p);
      if (SHIBYTE(v106) < 0)
      {
        operator delete(__p[0]);
      }

      if (v46)
      {
        sub_1000B6C84(v2, v45, *v1);
        goto LABEL_199;
      }

      goto LABEL_141;
    }

    if (HIBYTE(v104[2]) != 17)
    {
      if (HIBYTE(v104[2]) != 21)
      {
        goto LABEL_141;
      }

      v17 = v104[0] == 0x652D657461657263 && v104[1] == 0x73626F2D746E6576;
      if (!v17 || *(&v104[1] + 5) != 0x726576726573626FLL)
      {
        goto LABEL_141;
      }

LABEL_68:
      v21 = *(v1 + 16);
      v22 = *v1;
      v23 = sub_10000459C(__p, "com.apple.private.CoreAnalytics.ObserveEvents.allow");
      v24 = sub_1000B3CC8(v23, v21, v22, __p);
      if (SHIBYTE(v106) < 0)
      {
        operator delete(__p[0]);
      }

      if (v24)
      {
        sub_1000B5DC8(v2, *(v1 + 16), *v1);
        goto LABEL_199;
      }

      goto LABEL_141;
    }

    if (v104[0] != 0x656C62616E656572 || v104[1] != 0x6E696C706D61732DLL || LOBYTE(v104[2]) != 103)
    {
      goto LABEL_141;
    }

LABEL_137:
    v54 = *(v1 + 16);
    v55 = *v1;
    v56 = sub_10000459C(__p, "com.apple.private.CoreAnalytics.TransformSampling.manage");
    v58 = sub_1000B3CC8(v56, v54, v55, __p);
    if (SHIBYTE(v106) < 0)
    {
      operator delete(__p[0]);
    }

    if (v58)
    {
      sub_1000B59DC(v2, v57, *v1);
    }

    goto LABEL_141;
  }

  v6 = v104[1];
  if (v104[1] > 13)
  {
    if (v104[1] > 16)
    {
      if (v104[1] == 17)
      {
        if (*v104[0] == 0x656C62616E656572 && *(v104[0] + 1) == 0x6E696C706D61732DLL && *(v104[0] + 16) == 103)
        {
          goto LABEL_137;
        }
      }

      else if (v104[1] == 21)
      {
        if (*v104[0] != 0x652D657461657263 || *(v104[0] + 1) != 0x73626F2D746E6576 || *(v104[0] + 13) != 0x726576726573626FLL)
        {
          goto LABEL_141;
        }

        goto LABEL_68;
      }
    }

    else if (v104[1] == 14)
    {
      if (*v104[0] == 0x2D676E696B736174 && *(v104[0] + 6) == 0x796669746F6E2D67)
      {
        goto LABEL_123;
      }

      v6 = v104[1];
    }

    else if (v104[1] == 16)
    {
      if (*v104[0] != 0x2D656C6261736964 || *(v104[0] + 1) != 0x676E696C706D6173)
      {
        goto LABEL_141;
      }

      goto LABEL_32;
    }

LABEL_107:
    if (v6 != 9 || (*v104[0] == 0x65732D7366657270 ? (v32 = *(v104[0] + 8) == 116) : (v32 = 0), !v32))
    {
      if (v104[1] != 9)
      {
        goto LABEL_141;
      }

      v16 = v104[0];
      goto LABEL_114;
    }

    goto LABEL_133;
  }

  if (v104[1] == 4)
  {
    v25 = *v104[0];
LABEL_92:
    if (v25 == 1684956531)
    {
      sub_100002A44(v2, v4, *v1);
      goto LABEL_199;
    }

    goto LABEL_141;
  }

  if (v104[1] != 7)
  {
    if (v104[1] == 8)
    {
      v14 = *v104[0];
      goto LABEL_80;
    }

    goto LABEL_107;
  }

  if (*v104[0] == 1667590243 && *(v104[0] + 3) == 1852402531)
  {
    goto LABEL_132;
  }

LABEL_141:
  v59 = *(v1 + 16);
  v60 = *v1;
  v61 = sub_10000459C(__p, "com.apple.private.CoreAnalytics.ManagementCommands.allow");
  v62 = sub_1000B3CC8(v61, v59, v60, __p);
  v64 = v62;
  if (SHIBYTE(v106) < 0)
  {
    operator delete(__p[0]);
    if ((v64 & 1) == 0)
    {
      goto LABEL_199;
    }
  }

  else if ((v62 & 1) == 0)
  {
    goto LABEL_199;
  }

  if (SHIBYTE(v104[2]) < 0)
  {
    if (v104[1] == 8 && *v104[0] == 0x706D75642D676F6CLL)
    {
      goto LABEL_182;
    }

    if (v104[1] == 20)
    {
      v67 = *v104[0] == 0x6E6172742D676F6CLL && *(v104[0] + 1) == 0x6F632D6D726F6673;
      if (v67 && *(v104[0] + 4) == 1937010293)
      {
        goto LABEL_185;
      }
    }

    if (v104[1] == 11)
    {
      v69 = v104[0];
      goto LABEL_174;
    }

    if (v104[1] != 8 || *v104[0] != 0x676F6C2D65766173)
    {
      goto LABEL_178;
    }

    goto LABEL_188;
  }

  if (HIBYTE(v104[2]) == 8)
  {
    if (v104[0] == 0x706D75642D676F6CLL)
    {
LABEL_182:
      sub_1000B3F68(v2, v63, *v1);
      goto LABEL_199;
    }

    if (v104[0] != 0x676F6C2D65766173)
    {
      goto LABEL_178;
    }

LABEL_188:
    v75 = v2[12];
    sub_10000459C(__p, "api");
    buf[0] = 0;
    *&buf[8] = 0;
    sub_10000298C(buf);
    sub_10000298C(buf);
    (*(*v75 + 24))(v75, __p, buf);
    sub_10000298C(buf);
    sub_1000048FC(&buf[8], buf[0]);
LABEL_189:
    if (SHIBYTE(v106) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_199;
  }

  if (HIBYTE(v104[2]) != 11)
  {
    if (HIBYTE(v104[2]) != 20)
    {
      goto LABEL_178;
    }

    v65 = v104[0] == 0x6E6172742D676F6CLL && v104[1] == 0x6F632D6D726F6673;
    if (!v65 || LODWORD(v104[2]) != 1937010293)
    {
      goto LABEL_178;
    }

LABEL_185:
    sub_1000B4358(v2, v63, *v1);
    goto LABEL_199;
  }

  v69 = v104;
LABEL_174:
  v70 = *v69;
  v71 = *(v69 + 3);
  if (v70 == 0x6C2D6769666E6F63 && v71 == 0x7473696C2D676966)
  {
    sub_1000B4A10(v2, v63, *v1);
    goto LABEL_199;
  }

LABEL_178:
  if (sub_100026CC4(v104, "config-info") || sub_100026CC4(v104, "config-dump"))
  {
    sub_1000B4C8C(v2, v73, *v1);
    goto LABEL_199;
  }

  if (sub_100026CC4(v104, "commit"))
  {
    sub_1000B4F6C(v2, v74, *v1);
    goto LABEL_199;
  }

  if (sub_100026CC4(v104, "config-reload"))
  {
    sub_1000B50F4(v2, v76, *v1);
  }

  v77 = sub_100026CC4(v104, "set-tasking");
  if (v77)
  {
    sub_1000B736C(v77, v78, *v1);
    goto LABEL_199;
  }

  v79 = sub_100026CC4(v104, "set-tasking-old");
  if (v79)
  {
    sub_1000B65E8(v79, v80, *v1);
    goto LABEL_199;
  }

  v81 = sub_100026CC4(v104, "set-clear-config-after-reboot");
  if (v81)
  {
    sub_1000B7700(v81, v82, *v1);
    goto LABEL_199;
  }

  if (sub_100026CC4(v104, "rollover"))
  {
    v83 = *(v1 + 16);
    v84 = *v1;
    v85 = sub_10000459C(__p, "com.apple.private.CoreAnalytics.RolloverEvents.allow");
    v87 = sub_1000B3CC8(v85, v83, v84, __p);
    if (SHIBYTE(v106) < 0)
    {
      operator delete(__p[0]);
    }

    if (v87)
    {
      sub_1000BA470(v2, v86, *v1);
    }

    goto LABEL_199;
  }

  if (sub_100026CC4(v104, "insert-query-state"))
  {
    sub_1000B780C(v2, *(v1 + 16), *v1);
    goto LABEL_199;
  }

  if (sub_100026CC4(v104, "query-state"))
  {
    sub_1000B7E48(v2, *(v1 + 16), *v1);
    goto LABEL_199;
  }

  if (sub_100026CC4(v104, "query-list"))
  {
    sub_1000B8650(v2, v88, *v1);
    goto LABEL_199;
  }

  if (sub_100026CC4(v104, "query-clear"))
  {
    sub_1000B8AEC(v2, v89, *v1);
    goto LABEL_199;
  }

  if (sub_100026CC4(v104, "list-transforms-in-cache"))
  {
    sub_1000B8D7C(v2, v90, *v1);
  }

  if (sub_100026CC4(v104, "transform-info"))
  {
    sub_1000B91E4(v2, v91, *v1);
    goto LABEL_199;
  }

  if (sub_100026CC4(v104, "event-used"))
  {
    sub_1000B94C4(v2, v92, *v1);
    goto LABEL_199;
  }

  if (sub_100026CC4(v104, "transform-evict"))
  {
    sub_1000B9B84(v2, v93, *v1);
    goto LABEL_199;
  }

  if (sub_100026CC4(v104, "transform-persist"))
  {
    sub_1000B9754(v2, v94, *v1);
    goto LABEL_199;
  }

  v95 = sub_100026CC4(v104, "store-locale-info");
  if (v95)
  {
    sub_1000B99C4(v95, v96, *v1);
    goto LABEL_199;
  }

  if (sub_100026CC4(v104, "app-usage-sync"))
  {
    sub_1000B9FE0(v2, v97, *v1);
    goto LABEL_199;
  }

  v98 = qword_100192D60;
  if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    v99 = SHIBYTE(v104[2]);
    v100 = v104[0];
    applesauce::xpc::object::to_string(__p, *v1);
    v101 = v104;
    if (v99 < 0)
    {
      v101 = v100;
    }

    if (v106 >= 0)
    {
      v102 = __p;
    }

    else
    {
      v102 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = v101;
    *&buf[12] = 2080;
    *&buf[14] = v102;
    _os_log_error_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "[ClientManager] ERROR: Unrecognized command: %s (message=%s)", buf, 0x16u);
    goto LABEL_189;
  }

LABEL_199:
  if (SHIBYTE(v104[2]) < 0)
  {
    operator delete(v104[0]);
  }
}

void sub_1000028C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_10000298C(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if (*(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::string or m_value.string != nullptr";
      v3 = 1222;
    }

    else
    {
      if (v1 != 8 || *(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::binary or m_value.binary != nullptr";
      v3 = 1223;
    }

LABEL_15:
    __assert_rtn("assert_invariant", "json.hpp", v3, v2);
  }

  if (v1 == 1)
  {
    if (*(result + 1))
    {
      return result;
    }

    v2 = "m_type != value_t::object or m_value.object != nullptr";
    v3 = 1220;
    goto LABEL_15;
  }

  if (v1 == 2 && !*(result + 1))
  {
    v2 = "m_type != value_t::array or m_value.array != nullptr";
    v3 = 1221;
    goto LABEL_15;
  }

  return result;
}

void sub_100002A44(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  memset(v32, 170, sizeof(v32));
  __p[0] = a3;
  __p[1] = "event";
  sub_100001BC8(__p, &object);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  applesauce::xpc::dyn_cast_or_default();
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

  xpc_release(object);
  object = 0xAAAAAAAAAAAAAA00;
  *v31 = 0;
  sub_10000298C(&object);
  sub_10000298C(&object);
  v33 = a3;
  v34 = "json";
  sub_100001BC8(&v33, &v29);
  if (xpc_get_type(v29) != &_xpc_type_null)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v33);
    }

    v36 = 0;
    sub_1000039AC(__p, &v33, 1, v27);
    sub_100004FBC(&v33);
    sub_10000298C(v27);
    v5 = object;
    LOBYTE(object) = v27[0];
    v27[0] = v5;
    v6 = *v31;
    *v31 = v28;
    v28 = v6;
    sub_10000298C(&object);
    sub_10000298C(v27);
    sub_1000048FC(&v28, v27[0]);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_10;
  }

  v33 = a3;
  v34 = "xpc";
  sub_100001BC8(&v33, &v24);
  if (xpc_get_type(v24) != &_xpc_type_null)
  {
    sub_1000E525C(&v24, v22);
    sub_10000298C(v22);
    v7 = object;
    LOBYTE(object) = v22[0];
    v22[0] = v7;
    v8 = *v31;
    *v31 = v23;
    v23 = v8;
    sub_10000298C(&object);
    sub_10000298C(v22);
    sub_1000048FC(&v23, v22[0]);
    xpc_release(v24);
LABEL_10:
    xpc_release(v29);
    if (object == 1)
    {
      if (!sub_1000061C8(*v31, "timestamp"))
      {
        v33 = a3;
        v34 = "timestamp";
        sub_100001BC8(&v33, __p);
        v10 = applesauce::xpc::dyn_cast_or_default(__p, 0, v9);
        xpc_release(__p[0]);
        if (v10)
        {
          v18[0] = 6;
          v19 = v10;
          sub_10000298C(v18);
          sub_10000298C(v18);
          v11 = sub_1000071E4(&object, "timestamp");
          sub_10000298C(v18);
          v12 = *v11;
          *v11 = v18[0];
          v18[0] = v12;
          v13 = *(v11 + 8);
          *(v11 + 8) = v19;
          v19 = v13;
          sub_10000298C(v11);
          sub_10000298C(v18);
          sub_1000048FC(&v19, v18[0]);
        }
      }

      v33 = a3;
      v34 = "priority";
      sub_100001BC8(&v33, __p);
      if (xpc_get_type(__p[0]) == &_xpc_type_null)
      {
        v15 = 0;
      }

      else
      {
        v15 = applesauce::xpc::dyn_cast_or_default(__p, 0, v14);
      }

      xpc_release(__p[0]);
      v33 = a3;
      v34 = "format";
      sub_100001BC8(&v33, __p);
      if (xpc_get_type(__p[0]) == &_xpc_type_null)
      {
        v17 = 0;
      }

      else
      {
        v17 = applesauce::xpc::dyn_cast_or_default(__p, 0, v16);
      }

      xpc_release(__p[0]);
      if (*(a1 + 48))
      {
        sub_100006094(v32, &object, v17, v15);
      }

      if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_ERROR))
      {
        sub_10012477C(v32);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_ERROR))
      {
        sub_10012470C(v32);
      }

      if (*(a1 + 48))
      {
        sub_10000459C(&v33, "com.apple.coreanalytics.DroppedEvents");
        sub_10000459C(__p, "Non-ObjectPayload");
        sub_1000353B0(v20);
      }
    }

    goto LABEL_34;
  }

  if (!xpc_dictionary_get_value(*a3, "xpc"))
  {
    sub_100013CA0(v21, 0, 0, 0, 1);
  }

  if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_ERROR))
  {
    sub_10012469C(v32);
  }

  if (*(a1 + 48))
  {
    sub_10000459C(&v33, "com.apple.coreanalytics.DroppedEvents");
    sub_10000459C(__p, "MissingPayload");
    sub_1000353B0(v20);
  }

  xpc_release(v24);
  xpc_release(v29);
LABEL_34:
  sub_10000298C(&object);
  sub_1000048FC(v31, object);
  if ((v32[23] & 0x80000000) != 0)
  {
    operator delete(*v32);
  }
}

void sub_1000030E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, xpc_object_t a29, xpc_object_t a30)
{
  if (a15)
  {
    sub_10000786C(a15);
  }

  sub_10002C5F4(&a12);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 81) < 0)
  {
    operator delete(*(v30 - 104));
  }

  xpc_release(object);
  xpc_release(a29);
  sub_10002C5F4(&a30);
  if (*(v30 - 105) < 0)
  {
    operator delete(*(v30 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100003320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  sub_1000035D0(v9, a3);
  sub_1000033B8(a5, &v8, v9, a4);
  return sub_100004FBC(v9);
}

void sub_1000033A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100004FBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000033B8(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  v7 = sub_100003538(a1, a3);
  *(v7 + 32) = 0;
  *(v7 + 40) = *a2;
  *(v7 + 56) = -1;
  *(v7 + 60) = 0;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0;
  *(v7 + 136) = "";
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 144) = 0;
  *(a1 + 168) = sub_100003AE0();
  *(a1 + 176) = a4;
  *(a1 + 32) = sub_100003740(a1 + 40);
  return a1;
}

void sub_100003444(_Unwind_Exception *a1)
{
  sub_10000797C(v1 + 40);
  sub_100004FBC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100003460(unsigned __int8 **a1)
{
  *(a1 + 3) = vaddq_s64(*(a1 + 3), vdupq_n_s64(1uLL));
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
    v2 = *(a1 + 4);
  }

  else
  {
    v3 = *a1;
    if (*a1 == a1[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      *a1 = v3 + 1;
    }

    *(a1 + 4) = v2;
  }

  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v2;
  sub_100003650((a1 + 6), &v6);
  result = *(a1 + 4);
  if (result == 10)
  {
    v5 = (a1[5] + 1);
    a1[4] = 0;
    a1[5] = v5;
  }

  return result;
}

uint64_t sub_100003538(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1000035D0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_100003650(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_10002C63C();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_100003740(uint64_t a1)
{
  if (!*(a1 + 24) && !sub_100004830(a1))
  {
    v4 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
LABEL_22:
    *(a1 + 96) = v4;
    return 14;
  }

  while (1)
  {
    while (1)
    {
      sub_100003460(a1);
      v2 = *(a1 + 16);
      if (v2 > 47)
      {
        if (v2 < 58)
        {
          goto LABEL_13;
        }

        if (v2 > 109)
        {
          if (v2 > 122)
          {
            if (v2 == 123)
            {
              return 9;
            }

            if (v2 == 125)
            {
              return 11;
            }

            goto LABEL_47;
          }

          if (v2 == 110)
          {
            v8[0] = 1819047278;
            v5 = a1;
            v6 = 4;
            v7 = 3;
          }

          else
          {
            if (v2 != 116)
            {
              goto LABEL_47;
            }

            v8[0] = 1702195828;
            v5 = a1;
            v6 = 4;
            v7 = 1;
          }
        }

        else
        {
          if (v2 <= 92)
          {
            if (v2 == 58)
            {
              return 12;
            }

            if (v2 == 91)
            {
              return 8;
            }

LABEL_47:
            v4 = "invalid literal";
            goto LABEL_22;
          }

          if (v2 == 93)
          {
            return 10;
          }

          if (v2 != 102)
          {
            goto LABEL_47;
          }

          qmemcpy(v8, "false", 5);
          v5 = a1;
          v6 = 5;
          v7 = 2;
        }

        return sub_100006A38(v5, v8, v6, v7);
      }

      if (v2 > 12)
      {
        break;
      }

      if ((v2 - 9) >= 2)
      {
        if ((v2 + 1) < 2)
        {
          return 15;
        }

        goto LABEL_47;
      }
    }

    if (v2 > 33)
    {
      break;
    }

    if (v2 != 13 && v2 != 32)
    {
      goto LABEL_47;
    }
  }

  switch(v2)
  {
    case '""':

      return sub_100003C58(a1);
    case ',':
      return 13;
    case '-':
LABEL_13:

      return sub_1000062EC(a1);
    default:
      goto LABEL_47;
  }
}

uint64_t sub_1000039AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  *(a4 + 8) = 0;
  *a4 = 0;
  sub_10000298C(a4);
  sub_10000298C(a4);
  v8 = *(a1 + 23);
  v9 = *a1;
  v10 = *(a1 + 8);
  sub_100003538(v14, a2);
  if ((v8 & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = v9;
  }

  if ((v8 & 0x80u) == 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  sub_100003320(v11, v11 + v12, v14, a3, v15);
  sub_100005A24(v15, 1, a4);
  sub_10000797C(&v16);
  sub_100004FBC(v15);
  return sub_100004FBC(v14);
}

void sub_100003AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_10000797C(v14 + 40);
  sub_100004FBC(&a13);
  sub_100004FBC(&a9);
  sub_10002C5F4(v13);
  _Unwind_Resume(a1);
}

uint64_t sub_100003AE0()
{
  v0 = localeconv();
  if (!v0)
  {
    __assert_rtn("get_decimal_point", "lexer.hpp", 136, "loc != nullptr");
  }

  if (v0->decimal_point)
  {
    return *v0->decimal_point;
  }

  else
  {
    return 46;
  }
}

void sub_100003BF4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100030F3C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100003C10(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100025BBC();
}

uint64_t sub_100003C58(uint64_t a1)
{
  sub_100004510(a1);
  if (*(a1 + 16) != 34)
  {
    sub_10011B1D8();
  }

  while (2)
  {
    v2 = sub_100003460(a1) + 1;
    result = 4;
    v4 = "invalid string: missing closing quote";
    switch(v2)
    {
      case 0:
        goto LABEL_83;
      case 1:
        v4 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
        goto LABEL_83;
      case 2:
        v4 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
        goto LABEL_83;
      case 3:
        v4 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
        goto LABEL_83;
      case 4:
        v4 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
        goto LABEL_83;
      case 5:
        v4 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
        goto LABEL_83;
      case 6:
        v4 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
        goto LABEL_83;
      case 7:
        v4 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
        goto LABEL_83;
      case 8:
        v4 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
        goto LABEL_83;
      case 9:
        v4 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
        goto LABEL_83;
      case 10:
        v4 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
        goto LABEL_83;
      case 11:
        v4 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
        goto LABEL_83;
      case 12:
        v4 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
        goto LABEL_83;
      case 13:
        v4 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
        goto LABEL_83;
      case 14:
        v4 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
        goto LABEL_83;
      case 15:
        v4 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
        goto LABEL_83;
      case 16:
        v4 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
        goto LABEL_83;
      case 17:
        v4 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
        goto LABEL_83;
      case 18:
        v4 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
        goto LABEL_83;
      case 19:
        v4 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
        goto LABEL_83;
      case 20:
        v4 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
        goto LABEL_83;
      case 21:
        v4 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
        goto LABEL_83;
      case 22:
        v4 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
        goto LABEL_83;
      case 23:
        v4 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
        goto LABEL_83;
      case 24:
        v4 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
        goto LABEL_83;
      case 25:
        v4 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
        goto LABEL_83;
      case 26:
        v4 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
        goto LABEL_83;
      case 27:
        v4 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
        goto LABEL_83;
      case 28:
        v4 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
        goto LABEL_83;
      case 29:
        v4 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
        goto LABEL_83;
      case 30:
        v4 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
        goto LABEL_83;
      case 31:
        v4 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
        goto LABEL_83;
      case 32:
        v4 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
        goto LABEL_83;
      case 33:
      case 34:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
        v8 = *(a1 + 16);
        goto LABEL_7;
      case 35:
        return result;
      case 93:
        v10 = sub_100003460(a1);
        v4 = "invalid string: forbidden character after backslash";
        if (v10 <= 113)
        {
          if (v10 > 97)
          {
            switch(v10)
            {
              case 'b':
                LOBYTE(v8) = 8;
                break;
              case 'f':
                LOBYTE(v8) = 12;
                break;
              case 'n':
                LOBYTE(v8) = 10;
                break;
              default:
                goto LABEL_83;
            }
          }

          else
          {
            switch(v10)
            {
              case '""':
                LOBYTE(v8) = 34;
                break;
              case '/':
                LOBYTE(v8) = 47;
                break;
              case '\\':
                LOBYTE(v8) = 92;
                break;
              default:
                goto LABEL_83;
            }
          }

          goto LABEL_7;
        }

        if (v10 != 117)
        {
          if (v10 == 114)
          {
            LOBYTE(v8) = 13;
          }

          else
          {
            if (v10 != 116)
            {
              goto LABEL_83;
            }

            LOBYTE(v8) = 9;
          }

          goto LABEL_7;
        }

        v11 = sub_10003EB14(a1);
        if (v11 == -1)
        {
          goto LABEL_86;
        }

        v8 = v11;
        if ((v11 & 0xFFFFFC00) != 0xD800)
        {
          if ((v11 & 0xFFFFFC00) == 0xDC00)
          {
            v4 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
            goto LABEL_83;
          }

          if (v11 >= 0x110000)
          {
            sub_10011B274();
          }

          if (v11 > 0x7F)
          {
            if (v11 > 0x7FF)
            {
              if (HIWORD(v11))
              {
                goto LABEL_25;
              }

              std::string::push_back((a1 + 72), (v11 >> 12) | 0xE0);
              std::string::push_back((a1 + 72), (v8 >> 6) & 0x3F | 0x80);
              LOBYTE(v8) = v8 & 0x3F | 0x80;
            }

            else
            {
              std::string::push_back((a1 + 72), (v11 >> 6) | 0xC0);
              LOBYTE(v8) = v8 & 0x3F | 0x80;
            }
          }

LABEL_7:
          std::string::push_back((a1 + 72), v8);
          continue;
        }

        if (sub_100003460(a1) != 92 || sub_100003460(a1) != 117)
        {
LABEL_87:
          v4 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
          goto LABEL_83;
        }

        v12 = sub_10003EB14(a1);
        if (v12 != -1)
        {
          if (v12 >> 10 != 55)
          {
            goto LABEL_87;
          }

          v8 = v12 + (v8 << 10) - 56613888;
LABEL_25:
          sub_10011B204(v8, (a1 + 72), &v13);
          LOBYTE(v8) = v13;
          goto LABEL_7;
        }

LABEL_86:
        v4 = "invalid string: '\\u' must be followed by 4 hex digits";
LABEL_83:
        *(a1 + 96) = v4;
        return 14;
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
        *&v13 = 0xBF00000080;
        v5 = a1;
        v6 = 2;
        goto LABEL_14;
      case 225:
        v7 = xmmword_100140990;
        goto LABEL_5;
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 239:
      case 240:
        v7 = xmmword_100140980;
        goto LABEL_5;
      case 238:
        v7 = xmmword_100140970;
LABEL_5:
        v13 = v7;
        v5 = a1;
        v6 = 4;
        goto LABEL_14;
      case 241:
        v14 = 0xBF00000080;
        v9 = &xmmword_100140C9C;
        goto LABEL_13;
      case 242:
      case 243:
      case 244:
        v14 = 0xBF00000080;
        v9 = &xmmword_100140CB4;
        goto LABEL_13;
      case 245:
        v14 = 0xBF00000080;
        v9 = &xmmword_100140CCC;
LABEL_13:
        v13 = *v9;
        v5 = a1;
        v6 = 6;
LABEL_14:
        if ((sub_10002B17C(v5, &v13, v6) & 1) == 0)
        {
          return 14;
        }

        continue;
      default:
        v4 = "invalid string: ill-formed UTF-8 byte";
        goto LABEL_83;
    }
  }
}

void sub_100004510(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    **(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  else
  {
    *(a1 + 72) = 0;
    *(a1 + 95) = 0;
  }

  v2 = *(a1 + 48);
  v1 = a1 + 48;
  *(v1 + 8) = v2;
  v3 = *(v1 - 32);
  sub_100003650(v1, &v3);
}

void sub_100004590(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

_BYTE *sub_10000459C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000173E4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_100004654(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_10002C63C();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_100003C10(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *sub_100004728(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

BOOL sub_100004830(unsigned __int8 **a1)
{
  if (sub_100003460(a1) == 239)
  {
    return sub_100003460(a1) == 187 && sub_100003460(a1) == 191;
  }

  else
  {
    sub_100004894(a1);
    return 1;
  }
}

uint64_t sub_100004894(uint64_t result)
{
  v1 = (result + 32);
  v2 = *(result + 32);
  *(result + 20) = 1;
  --*(result + 24);
  if (v2 || (v1 = (result + 40), (v2 = *(result + 40)) != 0))
  {
    *v1 = v2 - 1;
  }

  if (*(result + 16) != -1)
  {
    v3 = *(result + 56);
    if (*(result + 48) == v3)
    {
      sub_10011B350();
    }

    *(result + 56) = v3 - 1;
  }

  return result;
}

void sub_1000048FC(uint64_t *a1, int a2)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (a2 == 1)
  {
    sub_10000F7BC(&v28, *(*a1 + 16));
    v7 = *a1 + 8;
    v8 = **a1;
    v4 = v29;
    if (v8 != v7)
    {
      do
      {
        if (v4 >= v30)
        {
          v4 = sub_10001D0FC(&v28, (v8 + 7));
        }

        else
        {
          *v4 = *(v8 + 56);
          *(v4 + 8) = v8[8];
          sub_10000298C(v8 + 56);
          *(v8 + 56) = 0;
          v8[8] = 0;
          sub_10000298C(v4);
          v4 += 16;
        }

        v29 = v4;
        v9 = v8[1];
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
            v10 = v8[2];
            v11 = *v10 == v8;
            v8 = v10;
          }

          while (!v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
    }
  }

  else
  {
    v4 = 0;
    if (a2 == 2)
    {
      sub_10000F7BC(&v28, (*(*a1 + 8) - **a1) >> 4);
      v5 = **a1;
      v6 = *(*a1 + 8);
      while (v5 != v6)
      {
        sub_10000F8A4(&v28, v5);
        v5 += 16;
      }

      v4 = v29;
    }
  }

  if (v28 != v4)
  {
    do
    {
      v26 = 0xAAAAAAAAAAAAAAAALL;
      v27 = 0xAAAAAAAAAAAAAAAALL;
      v13 = *(v4 - 16);
      v12 = v4 - 16;
      LOBYTE(v26) = v13;
      v27 = *(v12 + 8);
      sub_10000298C(v12);
      *v12 = 0;
      *(v12 + 8) = 0;
      sub_10000298C(&v26);
      sub_100013F0C(&v28, (v29 - 16));
      if (v26 == 1)
      {
        v17 = v27;
        v18 = (v27 + 1);
        v19 = *v27;
        if (*v27 != (v27 + 1))
        {
          v20 = v29;
          do
          {
            if (v20 >= v30)
            {
              v20 = sub_10001D0FC(&v28, (v19 + 56));
            }

            else
            {
              *v20 = v19[56];
              *(v20 + 8) = *(v19 + 8);
              sub_10000298C(v19 + 56);
              v19[56] = 0;
              *(v19 + 8) = 0;
              sub_10000298C(v20);
              v20 += 16;
            }

            v29 = v20;
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
                v11 = *v22 == v19;
                v19 = v22;
              }

              while (!v11);
            }

            v19 = v22;
          }

          while (v22 != v18);
          v17 = v27;
        }

        sub_100010440(v17, *(v17 + 8));
        *v17 = v17 + 8;
        *(v17 + 16) = 0;
        *(v17 + 8) = 0;
      }

      else if (v26 == 2)
      {
        v14 = v27;
        v15 = *v27;
        v16 = v27[1];
        if (*v27 != v16)
        {
          do
          {
            sub_10000F8A4(&v28, v15);
            v15 += 16;
          }

          while (v15 != v16);
          v14 = v27;
          v15 = *v27;
        }

        sub_100013F0C(v14, v15);
      }

      sub_10000298C(&v26);
      sub_1000048FC(&v27, v26);
      v4 = v29;
    }

    while (v28 != v29);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v23 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v25 = *v23;
        goto LABEL_50;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_53;
      }

      v23 = *a1;
      v24 = **a1;
      if (v24)
      {
        v23[1] = v24;
        v25 = v24;
LABEL_50:
        operator delete(v25);
        goto LABEL_51;
      }
    }

LABEL_52:
    operator delete(v23);
    goto LABEL_53;
  }

  if (a2 == 1)
  {
    sub_100010440(*a1, *(*a1 + 8));
    goto LABEL_51;
  }

  if (a2 == 2)
  {
    v26 = *a1;
    sub_100004E54(&v26);
LABEL_51:
    v23 = *a1;
    goto LABEL_52;
  }

LABEL_53:
  v26 = &v28;
  sub_100004E54(&v26);
}

void sub_100004C88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100004CB0(void *a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v20[0] = v9;
    sub_100004EA8(&v21, v9);
    sub_10000298C(v20);
    v10 = *a1;
    sub_10000298C(v20);
    v11 = *v10;
    *v10 = v20[0];
    v20[0] = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v21;
    v21 = v12;
    sub_10000298C(v10);
    sub_10000298C(v20);
    sub_1000048FC(&v21, v20[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v8 = sub_10000A370(v6, a2);
      }

      else
      {
        sub_100007FF0(v6, a2);
        v8 = v7 + 16;
      }

      *(v6 + 8) = v8;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        sub_10011B6A0();
      }

      if (!a1[4])
      {
        sub_100025A08();
      }

      v14 = *a2;
      v18[0] = v14;
      sub_100004EA8(&v19, v14);
      sub_10000298C(v18);
      v15 = a1[4];
      sub_10000298C(v18);
      v16 = *v15;
      *v15 = v18[0];
      v18[0] = v16;
      v17 = *(v15 + 8);
      *(v15 + 8) = v19;
      v19 = v17;
      sub_10000298C(v15);
      sub_10000298C(v18);
      sub_1000048FC(&v19, v18[0]);
      return a1[4];
    }
  }
}

void sub_100004E54(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100013F0C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_100004EA8(void *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        sub_10003E204();
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 != 4)
  {
LABEL_11:
    *result = 0;
    return result;
  }

  *result = 0;
  return result;
}

uint64_t sub_100004FBC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10000503C(uint64_t a1, void *a2)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v4 = (a1 + 112);
  while (1)
  {
    v5 = *(a1 + 32);
    if (v5 <= 5)
    {
      break;
    }

    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        v38.__vftable = *(a1 + 144);
        sub_10002739C(a2, &v38);
      }

      else
      {
        if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v29 = *(a1 + 64);
          sub_10003F688(a1 + 40, &v40);
          sub_10003F688(a1 + 40, &v34);
          v30 = std::string::insert(&v34, 0, "number overflow parsing '");
          v31 = *&v30->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          v32 = std::string::append(&__p, "'");
          v33 = *&v32->__r_.__value_.__l.__data_;
          v37 = v32->__r_.__value_.__r.__words[2];
          *v36 = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          sub_100040A24(406, v36, &v38);
          v18 = sub_10003FED4(a2, v29, &v40, &v38);
          sub_100040B9C(&v38);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[0]);
          }

          goto LABEL_51;
        }

        v38.__vftable = *(a1 + 160);
        sub_10001B2A0(a2, &v38);
      }

      goto LABEL_26;
    }

    switch(v5)
    {
      case 8:
        v40.__r_.__value_.__s.__data_[0] = 2;
        v38.__vftable = sub_100004CB0(a2, &v40);
        sub_100004654((a2 + 1), &v38);
        v10 = sub_100003740(a1 + 40);
        *(a1 + 32) = v10;
        if (v10 == 10)
        {
LABEL_23:
          a2[2] -= 8;
          goto LABEL_26;
        }

        LOBYTE(v38.__vftable) = 1;
        sub_1000077C4(&v41, &v38);
        break;
      case 9:
        v40.__r_.__value_.__s.__data_[0] = 1;
        v38.__vftable = sub_100004CB0(a2, &v40);
        sub_100004654((a2 + 1), &v38);
        v6 = sub_100003740(a1 + 40);
        *(a1 + 32) = v6;
        if (v6 == 11)
        {
          goto LABEL_23;
        }

        if (v6 != 4)
        {
LABEL_59:
          v27 = *(a1 + 64);
          sub_10003F688(a1 + 40, &v40);
          *v36 = *(a1 + 64);
          v37 = *(a1 + 80);
          sub_10000459C(&v34, "object key");
          sub_10003FA40(a1, 4u, &v34, &__p);
          sub_10003F76C(101, v36, &__p, &v38);
          v24 = sub_10003FED4(a2, v27, &v40, &v38);
          goto LABEL_63;
        }

        v7 = *(*(a2[2] - 8) + 8);
        v38.__vftable = v4;
        a2[4] = sub_100005F50(v7, &v4->~runtime_error) + 56;
        v8 = sub_100003740(a1 + 40);
        *(a1 + 32) = v8;
        if (v8 != 12)
        {
          goto LABEL_62;
        }

        LOBYTE(v38.__vftable) = 0;
        sub_1000077C4(&v41, &v38);
        v9 = sub_100003740(a1 + 40);
LABEL_41:
        *(a1 + 32) = v9;
        break;
      case 14:
        v20 = *(a1 + 64);
        sub_10003F688(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        sub_10000459C(&v34, "value");
        sub_10003FA40(a1, 0, &v34, &__p);
        sub_10003F76C(101, v36, &__p, &v38);
        v21 = sub_10003FED4(a2, v20, &v40, &v38);
LABEL_50:
        v18 = v21;
        v38.__vftable = off_100181438;
        std::runtime_error::~runtime_error(&v39);
        std::exception::~exception(&v38);
        goto LABEL_51;
      default:
LABEL_49:
        v22 = *(a1 + 64);
        sub_10003F688(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        sub_10000459C(&v34, "value");
        sub_10003FA40(a1, 0x10u, &v34, &__p);
        sub_10003F76C(101, v36, &__p, &v38);
        v21 = sub_10003FED4(a2, v22, &v40, &v38);
        goto LABEL_50;
    }
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v38.__vftable = 0;
      sub_100025844(a2);
    }

    else
    {
      if (v5 == 4)
      {
        sub_100006D64(a2);
      }

      v38.__vftable = *(a1 + 152);
      sub_1000079C0(a2, &v38);
    }

    goto LABEL_26;
  }

  if (v5 == 1)
  {
    LOBYTE(v38.__vftable) = 1;
    sub_100006ABC(a2, &v38);
    goto LABEL_26;
  }

  if (v5 != 2)
  {
    goto LABEL_49;
  }

  LOBYTE(v38.__vftable) = 0;
  sub_100006ABC(a2, &v38);
LABEL_26:
  v11 = v42;
  if (!v42)
  {
LABEL_43:
    v18 = 1;
    goto LABEL_44;
  }

  while (1)
  {
    if ((*&v41[((v11 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v11 - 1)))
    {
      v12 = sub_100003740(a1 + 40);
      *(a1 + 32) = v12;
      if (v12 == 13)
      {
        goto LABEL_40;
      }

      if (v12 != 10)
      {
        v23 = *(a1 + 64);
        sub_10003F688(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        sub_10000459C(&v34, "array");
        sub_10003FA40(a1, 0xAu, &v34, &__p);
        sub_10003F76C(101, v36, &__p, &v38);
        v24 = sub_10003FED4(a2, v23, &v40, &v38);
        goto LABEL_63;
      }

      a2[2] -= 8;
      v13 = v42;
      if (!v42)
      {
        v25 = 383;
        goto LABEL_61;
      }

      goto LABEL_35;
    }

    v14 = sub_100003740(a1 + 40);
    *(a1 + 32) = v14;
    if (v14 == 13)
    {
      break;
    }

    if (v14 != 11)
    {
      v26 = *(a1 + 64);
      sub_10003F688(a1 + 40, &v40);
      *v36 = *(a1 + 64);
      v37 = *(a1 + 80);
      sub_10000459C(&v34, "object");
      sub_10003FA40(a1, 0xBu, &v34, &__p);
      sub_10003F76C(101, v36, &__p, &v38);
      v24 = sub_10003FED4(a2, v26, &v40, &v38);
      goto LABEL_63;
    }

    a2[2] -= 8;
    v13 = v42;
    if (!v42)
    {
      v25 = 439;
LABEL_61:
      __assert_rtn("sax_parse_internal", "parser.hpp", v25, "not states.empty()");
    }

LABEL_35:
    v11 = v13 - 1;
    v42 = v11;
    if (!v11)
    {
      goto LABEL_43;
    }
  }

  v15 = sub_100003740(a1 + 40);
  *(a1 + 32) = v15;
  if (v15 != 4)
  {
    goto LABEL_59;
  }

  v16 = *(*(a2[2] - 8) + 8);
  v38.__vftable = v4;
  a2[4] = sub_100005F50(v16, &v4->~runtime_error) + 56;
  v17 = sub_100003740(a1 + 40);
  *(a1 + 32) = v17;
  if (v17 == 12)
  {
LABEL_40:
    v9 = sub_100003740(a1 + 40);
    goto LABEL_41;
  }

LABEL_62:
  v28 = *(a1 + 64);
  sub_10003F688(a1 + 40, &v40);
  *v36 = *(a1 + 64);
  v37 = *(a1 + 80);
  sub_10000459C(&v34, "object separator");
  sub_10003FA40(a1, 0xCu, &v34, &__p);
  sub_10003F76C(101, v36, &__p, &v38);
  v24 = sub_10003FED4(a2, v28, &v40, &v38);
LABEL_63:
  v18 = v24;
  sub_10003FE80(&v38);
LABEL_51:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

LABEL_44:
  if (v41)
  {
    operator delete(v41);
  }

  return v18;
}

void sub_1000058D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::runtime_error a30)
{
  sub_10003FE80(&a30);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v30 - 97) < 0)
  {
    operator delete(*(v30 - 120));
  }

  v32 = *(v30 - 96);
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void sub_100005A24(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v42 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v6;
    v41 = v6;
    v38 = v6;
    v39 = v6;
    v36 = v6;
    v37 = v6;
    *&v35[16] = v6;
    *&v35[32] = v6;
    *v35 = v6;
    sub_100003538(v34, a1);
    sub_100040040(v35, a3, v34, *(a1 + 176));
    sub_100004FBC(v34);
    sub_10003EB7C(a1, v35);
    sub_10000298C(a3);
    if (a2)
    {
      v7 = sub_100003740(a1 + 40);
      *(a1 + 32) = v7;
      if (v7 != 15)
      {
        v8 = *(a1 + 64);
        sub_10003F688(a1 + 40, &v33);
        v29 = *(a1 + 64);
        v30 = *(a1 + 80);
        sub_10000459C(v26, "value");
        sub_10003FA40(a1, 0xFu, v26, &__p);
        sub_10003F76C(101, &v29, &__p, &v31);
        sub_10003F51C(v35, v8, &v33, &v31);
        v31.__vftable = off_100181438;
        std::runtime_error::~runtime_error(&v32);
        std::exception::~exception(&v31);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }
    }

    if (BYTE8(v38) == 1)
    {
      v24[0] = 9;
      v9 = v24;
      v25 = 0;
      sub_10000298C(v24);
      sub_10000298C(v24);
      v10 = *a3;
      *a3 = v24[0];
      v24[0] = v10;
      v11 = *(a3 + 8);
      *(a3 + 8) = v25;
      v25 = v11;
      sub_10000298C(a3);
      sub_10000298C(v24);
      v12 = v24[0];
    }

    else
    {
      if (*a3 != 9)
      {
LABEL_27:
        sub_100042FE8(v35);
        return;
      }

      v22[0] = 0;
      v9 = v22;
      v23 = 0;
      sub_10000298C(v22);
      sub_10000298C(v22);
      sub_10000298C(v22);
      v18 = *a3;
      *a3 = v22[0];
      v22[0] = v18;
      v19 = *(a3 + 8);
      *(a3 + 8) = v23;
      v23 = v19;
      sub_10000298C(a3);
      sub_10000298C(v22);
      v12 = v22[0];
    }

    sub_1000048FC(v9 + 1, v12);
    goto LABEL_27;
  }

  v13 = *(a1 + 176);
  *&v35[40] = 0xAAAAAAAAAAAAAA00;
  *v35 = a3;
  memset(&v35[8], 0, 32);
  v35[41] = v13;
  sub_10000503C(a1, v35);
  sub_10000298C(a3);
  if (a2)
  {
    v14 = sub_100003740(a1 + 40);
    *(a1 + 32) = v14;
    if (v14 != 15)
    {
      v15 = *(a1 + 64);
      sub_10003F688(a1 + 40, &v33);
      v29 = *(a1 + 64);
      v30 = *(a1 + 80);
      sub_10000459C(v26, "value");
      sub_10003FA40(a1, 0xFu, v26, &__p);
      sub_10003F76C(101, &v29, &__p, &v31);
      sub_10003FED4(v35, v15, &v33, &v31);
      v31.__vftable = off_100181438;
      std::runtime_error::~runtime_error(&v32);
      std::exception::~exception(&v31);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v35[40] == 1)
  {
    v20[0] = 9;
    v21 = 0;
    sub_10000298C(v20);
    sub_10000298C(v20);
    v16 = *a3;
    *a3 = v20[0];
    v20[0] = v16;
    v17 = *(a3 + 8);
    *(a3 + 8) = v21;
    v21 = v17;
    sub_10000298C(a3);
    sub_10000298C(v20);
    sub_1000048FC(&v21, v20[0]);
  }

  if (*&v35[8])
  {
    *&v35[16] = *&v35[8];
    operator delete(*&v35[8]);
  }
}

void sub_100005E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  sub_10003FE80(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  v43 = *(v41 - 200);
  if (v43)
  {
    *(v41 - 192) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100005F50(uint64_t a1, const void **a2)
{
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  result = *sub_100004728(a1, v3, a2);
  if (!result)
  {
    memset(&v3[1], 170, 24);
    sub_100003B3C();
  }

  return result;
}

void *sub_100006028(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_10002A958();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_100006094(__int128 *a1, uint64_t a2, char a3, char a4)
{
  v8[0] = *a2;
  v9 = *(a2 + 8);
  sub_10000298C(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_10000298C(v8);
  sub_100006F04(v10, a1, v8, a3, a4);
  sub_100006FC0();
}

void sub_1000061A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_1000B0E98(&a12);
  sub_10002C5F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1000061C8(uint64_t a1, std::string::value_type *__s)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  while (std::string::compare((v3 + 4), __s) > 0)
  {
    v2 = v3;
LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  if (std::string::compare((v3 + 4), __s) < 0)
  {
    ++v3;
    goto LABEL_6;
  }

  v6 = *v3;
  v7 = v3;
  if (*v3)
  {
    v7 = v3;
    do
    {
      v8 = std::string::compare((v6 + 4), __s);
      if (v8 >= 0)
      {
        v7 = v6;
      }

      v6 = *(v6 + ((v8 >> 28) & 8));
    }

    while (v6);
  }

  for (i = v3[1]; i; i = *(i + 8 * (v10 < 1)))
  {
    v10 = std::string::compare((i + 32), __s);
    if (v10 > 0)
    {
      v2 = i;
    }
  }

  if (v7 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v11 = v7[1];
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = v7[2];
        v13 = *v12 == v7;
        v7 = v12;
      }

      while (!v13);
    }

    ++result;
    v7 = v12;
  }

  while (v12 != v2);
  return result;
}

uint64_t sub_1000062EC(uint64_t a1)
{
  sub_100004510(a1);
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if ((v2 - 49) >= 9)
  {
    if (v2 == 48)
    {
      std::string::push_back((a1 + 72), 48);
      v5 = 5;
    }

    else
    {
      if (v2 != 45)
      {
        sub_10011B324();
      }

      v4 = (a1 + 72);
      std::string::push_back((a1 + 72), 45);
      v16 = sub_100003460(a1);
      if ((v16 - 49) < 9)
      {
        v2 = *v3;
        v5 = 6;
        goto LABEL_3;
      }

      if (v16 != 48)
      {
        v19 = "invalid number; expected digit after '-'";
        goto LABEL_55;
      }

      std::string::push_back((a1 + 72), *v3);
      v5 = 6;
    }

    v17 = sub_100003460(a1);
    if (v17 == 101 || v17 == 69)
    {
      v6 = (a1 + 72);
      goto LABEL_42;
    }

    if (v17 != 46)
    {
      goto LABEL_9;
    }

    v6 = (a1 + 72);
    goto LABEL_34;
  }

  v4 = (a1 + 72);
  v5 = 5;
LABEL_3:
  std::string::push_back(v4, v2);
  v6 = (a1 + 72);
  while (1)
  {
    v7 = sub_100003460(a1);
    if ((v7 - 48) >= 0xA)
    {
      break;
    }

    std::string::push_back((a1 + 72), *v3);
  }

  if (v7 != 46)
  {
    if (v7 != 69 && v7 != 101)
    {
LABEL_9:
      sub_100004894(a1);
      v25 = 0;
      *__error() = 0;
      v8 = (a1 + 72);
      v9 = *(a1 + 95);
      v10 = (a1 + 72);
      if (v5 == 5)
      {
        if (v9 < 0)
        {
          v10 = *v8;
        }

        v11 = strtoull(v10, &v25, 10);
        v12 = *(a1 + 95);
        if (v12 < 0)
        {
          v8 = *(a1 + 72);
          v12 = *(a1 + 80);
        }

        if (v25 != v8 + v12)
        {
          sub_10011B2CC();
        }

        if (!*__error())
        {
          result = 5;
          v14 = 112;
LABEL_24:
          *(a1 + v14) = v11;
          return result;
        }
      }

      else
      {
        if (v9 < 0)
        {
          v10 = *v8;
        }

        v11 = strtoll(v10, &v25, 10);
        v15 = *(a1 + 95);
        if (v15 < 0)
        {
          v8 = *(a1 + 72);
          v15 = *(a1 + 80);
        }

        if (v25 != v8 + v15)
        {
          sub_10011B2A0();
        }

        if (!*__error())
        {
          result = 6;
          v14 = 104;
          goto LABEL_24;
        }
      }

      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_34:
  std::string::push_back(v6, *(a1 + 128));
  if (sub_100003460(a1) - 48 > 9)
  {
    v19 = "invalid number; expected digit after '.'";
    goto LABEL_55;
  }

  v6 = (a1 + 72);
  do
  {
    std::string::push_back((a1 + 72), *(a1 + 16));
    v18 = sub_100003460(a1);
  }

  while ((v18 - 48) < 0xA);
  if (v18 != 101 && v18 != 69)
  {
    goto LABEL_45;
  }

LABEL_42:
  std::string::push_back(v6, *(a1 + 16));
  v20 = sub_100003460(a1);
  if ((v20 - 48) >= 0xA)
  {
    if (v20 == 45 || v20 == 43)
    {
      v21 = (a1 + 72);
      std::string::push_back((a1 + 72), *(a1 + 16));
      if (sub_100003460(a1) - 48 < 0xA)
      {
        goto LABEL_44;
      }

      v19 = "invalid number; expected digit after exponent sign";
    }

    else
    {
      v19 = "invalid number; expected '+', '-', or digit after exponent";
    }

LABEL_55:
    *(a1 + 96) = v19;
    return 14;
  }

  v21 = (a1 + 72);
LABEL_44:
  sub_10002B07C(a1, (a1 + 16), v21);
LABEL_45:
  sub_100004894(a1);
  v25 = 0;
  *__error() = 0;
LABEL_46:
  v22 = (a1 + 72);
  v23 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v23 = *v22;
  }

  *(a1 + 120) = strtod(v23, &v25);
  v24 = *(a1 + 95);
  if (v24 < 0)
  {
    v22 = *(a1 + 72);
    v24 = *(a1 + 80);
  }

  if (v25 != v22 + v24)
  {
    sub_10011B2F8();
  }

  return 7;
}

void sub_100006678(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100006690(uint64_t a1, uint64_t *a2)
{
  if ((*(**(a1 + 80) + 40))(*(a1 + 80)))
  {
    sub_10000459C(&__p, "scheduled");
    v25[0] = 0;
    v26 = 0;
    sub_10000298C(v25);
    sub_10000298C(v25);
    sub_10004B958(a1, &__p, &object);
    if (object)
    {
      dispatch_release(object);
    }

    sub_10000298C(v25);
    sub_1000048FC(&v26, v25[0]);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }

    sub_1000AD068();
  }

  v4 = *(a1 + 216);
  v5 = *a2;
  v6 = (*a2 + 16);
  v7 = strlen("com.apple.coreanalytics.heartbeat.2hours");
  v8 = *(*a2 + 39);
  if (!v4)
  {
    if ((v8 & 0x80) != 0)
    {
      if (v7 != *(v5 + 24))
      {
LABEL_38:
        sub_10000C22C(a1, a2);
        return;
      }

      if (v7 == -1)
      {
        sub_10002EAB0();
      }

      v6 = *v6;
    }

    else if (v7 != v8)
    {
      goto LABEL_38;
    }

    if (!memcmp(v6, "com.apple.coreanalytics.heartbeat.2hours", v7))
    {
      v18 = qword_100192DC0;
      if (os_log_type_enabled(qword_100192DC0, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p) = 136446210;
        *(&__p + 4) = "com.apple.coreanalytics.heartbeat.2hours";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[EventBroker] Posting event %{public}s.", &__p, 0xCu);
      }
    }

    goto LABEL_38;
  }

  if ((v8 & 0x80) == 0)
  {
    if (v7 != v8)
    {
      goto LABEL_20;
    }

LABEL_17:
    if (!memcmp(v6, "com.apple.coreanalytics.heartbeat.2hours", v7))
    {
      v9 = qword_100192DC0;
      if (os_log_type_enabled(qword_100192DC0, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p) = 136446210;
        *(&__p + 4) = "com.apple.coreanalytics.heartbeat.2hours";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[EventBroker] Queuing %{public}s onto the paused event queue.", &__p, 0xCu);
        v4 = *(a1 + 216);
      }
    }

    goto LABEL_20;
  }

  if (v7 == *(v5 + 24))
  {
    if (v7 == -1)
    {
      sub_10002EAB0();
    }

    v6 = *v6;
    goto LABEL_17;
  }

LABEL_20:
  v10 = *(v4 + 8);
  v11 = *(v4 + 16);
  if (v10 >= v11)
  {
    v14 = (v10 - *v4) >> 4;
    v15 = v14 + 1;
    if ((v14 + 1) >> 60)
    {
      sub_10002C63C();
    }

    v16 = v11 - *v4;
    if (v16 >> 3 > v15)
    {
      v15 = v16 >> 3;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF0)
    {
      v17 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    v31 = v4;
    if (v17)
    {
      sub_10000BED4(v4, v17);
    }

    v19 = 16 * v14;
    v20 = *a2;
    *(16 * v14) = *a2;
    if (*(&v20 + 1))
    {
      atomic_fetch_add_explicit((*(&v20 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v13 = (v19 + 16);
    v21 = *(v4 + 8) - *v4;
    v22 = v19 - v21;
    memcpy((v19 - v21), *v4, v21);
    v23 = *v4;
    *v4 = v22;
    *&__p = v23;
    *(&__p + 1) = v23;
    *(v4 + 8) = v13;
    v29 = v23;
    v24 = *(v4 + 16);
    *(v4 + 16) = 0;
    v30 = v24;
    sub_10000BF70(&__p);
  }

  else
  {
    *v10 = *a2;
    v12 = a2[1];
    v10[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v10 + 2;
  }

  *(v4 + 8) = v13;
}

void sub_1000069F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_10002C628(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100006A38(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  if (*a2 != *(a1 + 16))
  {
    sub_10011B1AC();
  }

  if (a3 >= 2)
  {
    v6 = a3 - 1;
    v7 = a2 + 1;
    while (1)
    {
      v8 = sub_100003460(a1);
      v9 = *v7++;
      if (v9 != v8)
      {
        break;
      }

      if (!--v6)
      {
        return a4;
      }
    }

    *(a1 + 96) = "invalid literal";
    return 14;
  }

  return a4;
}

uint64_t sub_100006ABC(void *a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 4;
    v22 = v10;
    sub_10000298C(v21);
    sub_10000298C(v21);
    v11 = *a1;
    sub_10000298C(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22;
    v22 = v13;
    sub_10000298C(v11);
    sub_10000298C(v21);
    sub_1000048FC(&v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = sub_100043050(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 4;
        *(v7 + 8) = v8;
        sub_10000298C(v7);
        sub_10000298C(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        sub_10011B6A0();
      }

      if (!a1[4])
      {
        sub_100025A08();
      }

      v15 = *a2;
      v19[0] = 4;
      v20 = v15;
      sub_10000298C(v19);
      sub_10000298C(v19);
      v16 = a1[4];
      sub_10000298C(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      sub_10000298C(v16);
      sub_10000298C(v19);
      sub_1000048FC(&v20, v19[0]);
      return a1[4];
    }
  }
}

void sub_100006C9C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_100006CE8();
}

void sub_100006D64(void *a1)
{
  v1 = a1[2];
  if (a1[1] != v1)
  {
    v2 = *(v1 - 8);
    v3 = *v2;
    if (v3 == 2)
    {
      v4 = *(v2 + 1);
      if (v4[1] < v4[2])
      {
        sub_100006C9C(v4[1]);
      }

      sub_1000088CC(v4);
    }

    if (v3 == 1)
    {
      if (a1[4])
      {
        sub_100006C9C(v5);
      }

      sub_100025A08();
    }

    sub_10011B6A0();
  }

  sub_100006C9C(v6);
}

uint64_t sub_100006F04(uint64_t a1, __int128 *a2, uint64_t a3, char a4, char a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v9;
  }

  *(a1 + 40) = *a3;
  *(a1 + 48) = *(a3 + 8);
  sub_10000298C(a3);
  *a3 = 0;
  *(a3 + 8) = 0;
  sub_10000298C((a1 + 40));
  *(a1 + 56) = a4;
  *(a1 + 57) = a5;
  return a1;
}

void sub_100006FA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100007044(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 24;
  v4 = *a2;
  v3 = a2[1];
  v6[0] = a1;
  v6[1] = v4;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100006684;
  block[3] = &unk_100183470;
  block[4] = v2;
  block[5] = v6;
  dispatch_sync(v5, block);
  if (v7)
  {
    sub_10000786C(v7);
  }
}

uint64_t sub_100007110(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_100181928;
  *(a1 + 24) = 0u;
  if (*(a2 + 39) < 0)
  {
    sub_1000078D8((a1 + 40), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 56) = *(a2 + 32);
    *(a1 + 40) = v4;
  }

  v6 = *(a2 + 40);
  v5 = a2 + 40;
  *(a1 + 64) = v6;
  *(a1 + 72) = *(v5 + 8);
  sub_10000298C(v5);
  *v5 = 0;
  *(v5 + 8) = 0;
  sub_10000298C((a1 + 64));
  *(a1 + 80) = *(v5 + 16);
  return a1;
}

void sub_1000071C4(_Unwind_Exception *a1)
{
  shared_owners = v1[1].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_weak(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000071E4(uint64_t a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_10002CB3C(a1);
    sub_10000459C(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use operator[] with a string argument with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(305, __p, exception);
  }

  v3 = *(a1 + 8);
  sub_10000459C(__p, __s);
  v10.__r_.__value_.__r.__words[0] = __p;
  v4 = sub_1000073E8(v3, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return v4 + 56;
}

void sub_100007368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000073E8(uint64_t a1, const void **a2)
{
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  result = *sub_100004728(a1, v3, a2);
  if (!result)
  {
    memset(&v3[1], 170, 24);
    sub_100007540();
  }

  return result;
}

void sub_1000074B8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_10000786C(v5);
      }
    }
  }
}

uint64_t *sub_1000075D0(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_100007628(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_100007628(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_1000077C4(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_10002C63C();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_100007C2C(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void sub_10000786C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *sub_1000078D8(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1000173E4();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_10000797C(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1000079C0(void *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 6;
    v22 = v10;
    sub_10000298C(v21);
    sub_10000298C(v21);
    v11 = *a1;
    sub_10000298C(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22;
    v22 = v13;
    sub_10000298C(v11);
    sub_10000298C(v21);
    sub_1000048FC(&v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = sub_100012AA4(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 6;
        *(v7 + 8) = v8;
        sub_10000298C(v7);
        sub_10000298C(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        sub_10011B6A0();
      }

      if (!a1[4])
      {
        sub_100025A08();
      }

      v15 = *a2;
      v19[0] = 6;
      v20 = v15;
      sub_10000298C(v19);
      sub_10000298C(v19);
      v16 = a1[4];
      sub_10000298C(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      sub_10000298C(v16);
      sub_10000298C(v19);
      sub_1000048FC(&v20, v19[0]);
      return a1[4];
    }
  }
}

void sub_100007BA0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100025BBC();
}

void sub_100007BE8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_100007BA0(a1, v2);
  }

  sub_10002C63C();
}

uint64_t sub_100007C2C(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_100007BE8(&v2, a2);
    }

    sub_10002C63C();
  }

  return result;
}

void sub_100007CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100007D14(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = *a2;
  v8 = *(a2 + 2);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v9;
  v21 = v9;
  v18 = v5;
  v19 = v6;
  v16 = v7;
  v17 = v8;
  v10 = *(a3 + 2);
  v14 = *a3;
  v15 = v10;
  sub_100007EB4(&v18, &v16, &v14, &v20);
  v11 = DWORD2(v20);
  v12 = v21;
  v13 = DWORD2(v21);
  *a4 = v20;
  *(a4 + 8) = v11;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
}

void sub_100007DE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = v4 + a4;
  a1[1] = v4 + a4;
  if (!v4 || ((v5 - 1) ^ (v4 - 1)) >= 0x40)
  {
    if (v5 >= 0x41)
    {
      v6 = (v5 - 1) >> 6;
    }

    else
    {
      v6 = 0;
    }

    *(*a1 + 8 * v6) = 0;
  }

  v7 = *(a2 + 8);
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *a1 + 8 * (v4 >> 6);
  v16 = *a2;
  v17 = v7;
  v14 = v8;
  v15 = v9;
  v12 = v10;
  v13 = v4 & 0x3F;
  sub_100007D14(&v16, &v14, &v12, v11);
}

void sub_100007EB4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

_BYTE *sub_100007F84(_BYTE *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_1000078D8(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  __dst[24] = 0;
  *(__dst + 4) = 0;
  sub_10000298C(__dst + 24);
  sub_10000298C(__dst + 24);
  return __dst;
}

unsigned __int8 *sub_100007FF0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v3 = *(a1 + 8);
  *v3 = v4;
  sub_100004EA8((v3 + 8), v4);
  result = sub_10000298C(v3);
  *(a1 + 8) = v3 + 16;
  return result;
}

void sub_10000803C(unsigned __int8 **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a2 != 1)
  {
    if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_ERROR))
    {
      sub_100119E24(a2);
    }

    goto LABEL_31;
  }

  v39 = "name";
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v6;
  v41 = v6;
  sub_10000BD10(a2, &v39, __p);
  v34 = a2;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0x8000000000000000;
  sub_10000DCFC(&v34);
  if (sub_10000DD7C(__p, &v34))
  {
    v7 = sub_100016CD8();
    if (!v7)
    {
LABEL_13:
      if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_ERROR))
      {
        sub_10011A0E0(a2);
      }

LABEL_31:
      *a3 = 0;
      a3[1] = 0;
      return;
    }
  }

  else
  {
    v7 = sub_10000DB44(__p);
  }

  if (*v7 != 3)
  {
    goto LABEL_13;
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    goto LABEL_13;
  }

  v39 = "uuid";
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v9;
  v41 = v9;
  sub_10000BD10(a2, &v39, __p);
  v34 = a2;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0x8000000000000000;
  sub_10000DCFC(&v34);
  if (sub_10000DD7C(__p, &v34))
  {
    v10 = sub_100016CD8();
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v10 = sub_10000DB44(__p);
  }

  if (*v10 != 3 || !*(v10 + 8))
  {
LABEL_21:
    if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_ERROR))
    {
      sub_10011A050(a2);
    }

    goto LABEL_31;
  }

  v39 = "type";
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v11;
  v41 = v11;
  sub_10000BD10(a2, &v39, __p);
  v34 = a2;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0x8000000000000000;
  sub_10000DCFC(&v34);
  if (sub_10000DD7C(__p, &v34))
  {
    v12 = sub_100016CD8();
    if (!v12)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v12 = sub_10000DB44(__p);
  }

  if (*v12 != 3 || (v13 = *(v12 + 8)) == 0)
  {
LABEL_29:
    if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_ERROR))
    {
      sub_100119FC0(a2);
    }

    goto LABEL_31;
  }

  v39 = "aggPeriod";
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v14;
  v41 = v14;
  sub_10000BD10(a2, &v39, __p);
  v34 = a2;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0x8000000000000000;
  sub_10000DCFC(&v34);
  if (sub_10000DD7C(__p, &v34))
  {
    v15 = sub_100016CD8();
    if (!v15)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v15 = sub_10000DB44(__p);
  }

  if (*v15 != 3 || !*(v15 + 8))
  {
LABEL_36:
    v16 = qword_100192D68;
    if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A538(v16);
    }

    sub_10000459C(__p, "Daily");
    v33 = 0;
    v32 = 3;
    operator new();
  }

  v17 = *a1;
  v18 = a1[1];
  v34 = *a1;
  v35 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v17)
  {
    v22 = qword_100192D68;
    if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_ERROR))
    {
      sub_100119F3C(v8, v22);
    }

    goto LABEL_67;
  }

  v19 = *(v13 + 23);
  if (v19 < 0)
  {
    if (v13[1] == 9 && **v13 == 0x7461676572676761 && *(*v13 + 8) == 101)
    {
      goto LABEL_68;
    }

    if (v13[1] == 9)
    {
      v21 = *v13;
      goto LABEL_59;
    }
  }

  else if (v19 == 9)
  {
    v20 = *v13 == 0x7461676572676761 && *(v13 + 8) == 101;
    v21 = v13;
    if (!v20)
    {
LABEL_59:
      v24 = *v21;
      v25 = *(v21 + 8);
      if (v24 == 0x696F767265736572 && v25 == 114)
      {
        v28 = a1[3];
        v29 = a1[2];
        if (v28)
        {
          atomic_fetch_add_explicit(v28 + 1, 1uLL, memory_order_relaxed);
        }

        sub_100025A34();
      }

      goto LABEL_63;
    }

LABEL_68:
    v30[0] = *a2;
    v31 = *(a2 + 8);
    sub_10000298C(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    sub_10000298C(v30);
    sub_100015ACC();
  }

LABEL_63:
  if (sub_100026CC4(v13, "identity"))
  {
    sub_1000DDDBC();
  }

  v27 = qword_100192D68;
  if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_ERROR))
  {
    sub_100119EB4(v13 + 23, v13, v27);
  }

LABEL_67:
  *a3 = 0;
  a3[1] = 0;
  if (v35)
  {
    sub_10000786C(v35);
  }
}

void sub_100008770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a12)
  {
    sub_10000786C(a12);
  }

  if (a18)
  {
    sub_10000786C(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000087DC(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_100008818(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_100008854(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_100008890(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void sub_1000088CC(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    v6 = a1;
    if (v4)
    {
      sub_10000BC18(a1, v4);
    }

    v5 = (16 * v1);
    sub_100006C9C(16 * v1);
  }

  sub_10002C63C();
}

void sub_1000089FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

void sub_100008B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  if (a2)
  {
    std::locale::~locale(&a10);
    __cxa_begin_catch(exception_object);
    std::ios_base::__set_badbit_and_consider_rethrow((v10 + *(*v10 - 24)));
    __cxa_end_catch();
    JUMPOUT(0x100008B1CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100008BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = a3;
  v9 = a2;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_10002B200();
  }

  return (*(*v5 + 48))(v5, &v9, &v8, &v7, a4);
}

void sub_100008C60(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sub_100008D68(uint64_t a1, char **a2, const char **a3, uint64_t *a4)
{
  sub_10000459C(__p, *a2);
  v7 = *a4;
  v24 = *a3;
  v8 = *(a1 + 8);
  ++**(a1 + 24);
  ++**(a1 + 40);
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v9 = *(v8 + 48);
  v30 = 0;
  sub_10000ACE4(&v24, buf, 1, v20);
  sub_100004FBC(buf);
  v10 = *(a1 + 56);
  sub_10000803C(v9, v20, &v22);
  sub_10000298C(v20);
  sub_1000048FC(&v21, v20[0]);
  v11 = v22;
  if (v22)
  {
    v12 = qword_100192D70;
    if (os_log_type_enabled(qword_100192D70, OS_LOG_TYPE_DEBUG))
    {
      v13 = sub_10001C33C(v11);
      if (*(v13 + 23) >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = *v13;
      }

      v15 = __p;
      if (v19 < 0)
      {
        v15 = __p[0];
      }

      v16 = **(a1 + 16);
      v17 = (v16 + 16);
      if (*(v16 + 39) < 0)
      {
        v17 = *v17;
      }

      *buf = 136315650;
      v26 = v14;
      v27 = 2080;
      v28 = v15;
      v29 = 2080;
      v30 = v17;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[Transform Cache] Cache miss. Loading %s - %s for input event %s", buf, 0x20u);
      v11 = v22;
    }

    (*(*v11 + 16))(v11, *(a1 + 16));
    ++**(a1 + 32);
    sub_10001D2DC((v8 + 176), (**(a1 + 16) + 16), &v22);
  }

  if (v23)
  {
    sub_10000786C(v23);
  }

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100008FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_10002C5F4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10000903C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 != 100)
  {
    if (v3 != 101)
    {
      v4 = *(v2 + 32);
      v5 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v5)
        {
          sub_10010DEA0(v4);
        }
      }

      else if (v5)
      {
        sub_10010DF18();
      }
    }

    return 0;
  }

  **(v1 + 16) = sub_10000A5D0(v2, *(v1 + 8), 0);
  if (!**(v1 + 16))
  {
    v11 = qword_100192D80;
    v12 = 1;
    if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
    {
      return v12;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v13 = "[Config Store] WARNING: Event query weirdness: got a row but no transform uuid? (transforms-for-event)";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v13, &__p, 2u);
    return v12;
  }

  **(v1 + 24) = sub_10000A5D0(v2, *(v1 + 8), 1);
  if (!**(v1 + 24))
  {
    v11 = qword_100192D80;
    v12 = 1;
    if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
    {
      return v12;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v13 = "[Config Store] WARNING: Event query weirdness: got a row but no transform definition? (transforms-for-event)";
    goto LABEL_19;
  }

  sub_10000927C(v2, *(v1 + 8), 2);
  **(v1 + 32) = v6;
  v7 = sub_10000A5D0(v2, *(v1 + 8), 3);
  if (v7)
  {
    sub_10000459C(&__p, v7);
    v8 = sub_100009600(&__p);
    v9 = *(v1 + 40);
    *v9 = v8;
    *(v9 + 8) = v10;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = *(v1 + 40);
    if ((*(v15 + 8) & 1) == 0)
    {
      *(v15 + 8) = 1;
    }

    *v15 = 0x8000000000000000;
  }

  return 1;
}

void sub_100009258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000092B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_100192F28, memory_order_acquire) & 1) == 0)
  {
    sub_100106D10();
  }

  std::mutex::lock(&stru_100192930);
  v10 = a1 + 120;
  v11 = a1;
  v12 = a2;
  v5 = *(a1 + 24);
  v19 = _NSConcreteStackBlock;
  v20 = 0x40000000;
  v21 = sub_10000A4C8;
  v22 = &unk_10018B628;
  v23 = a1 + 8;
  v24 = &v10;
  v33 = &v19;
  LOBYTE(v25) = -86;
  block = _NSConcreteStackBlock;
  v28 = 0x40000000;
  v29 = sub_100008890;
  v30 = &unk_10018B278;
  v31 = &v25;
  v32 = &v33;
  dispatch_sync(v5, &block);
  if (v25 == 1)
  {
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A2BC(a2);
    }

    do
    {
      v17 = 0;
      v18 = 0;
      v33 = 0xAAAAAAAAAAAAAA00;
      v34 = 0xAAAAAAAAAAAAAA00;
      v10 = a1;
      v11 = a1 + 120;
      v12 = &v18;
      v13 = &v17;
      v14 = &v16;
      v15 = &v33;
      v16 = 100.0;
      v6 = *(a1 + 24);
      v19 = _NSConcreteStackBlock;
      v20 = 0x40000000;
      v21 = sub_10000903C;
      v22 = &unk_10018B648;
      v23 = a1 + 8;
      v24 = &v10;
      v25 = &v19;
      v26 = -86;
      block = _NSConcreteStackBlock;
      v28 = 0x40000000;
      v29 = sub_100008890;
      v30 = &unk_10018B278;
      v31 = &v26;
      v32 = &v25;
      dispatch_sync(v6, &block);
      v7 = v26;
      if (v26 == 1 && v18 && v17 && v34 == 1)
      {
        sub_100008BD0(a3, v18, v17, &v33, v16);
      }
    }

    while ((v7 & 1) != 0);
  }

  v19 = (a1 + 120);
  v8 = *(a1 + 24);
  block = _NSConcreteStackBlock;
  v28 = 0x40000000;
  v29 = sub_10001B1B4;
  v30 = &unk_10018B668;
  v31 = (a1 + 8);
  v32 = &v19;
  dispatch_sync(v8, &block);
  std::mutex::unlock(&stru_100192930);
}

void sub_1000095F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_100009600(const std::string *a1)
{
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v1;
  v22 = v1;
  v19 = v1;
  v20 = v1;
  v17 = v1;
  v18 = v1;
  v15 = v1;
  v16 = v1;
  v13 = v1;
  v14 = v1;
  *__p = v1;
  v12 = v1;
  v10[1] = v1;
  v10[2] = v1;
  v9 = v1;
  v10[0] = v1;
  v8 = v1;
  sub_100009860(&v8, a1, 8);
  memset(&v7, 0, sizeof(v7));
  sub_100008A10(&v8);
  if ((*(v10 + *(v8 - 24)) & 5) != 0)
  {
    rep_low = 0;
    v3 = 0;
  }

  else
  {
    v4 = mktime(&v7);
    v5.__d_.__rep_ = std::chrono::system_clock::from_time_t(v4 - timezone).__d_.__rep_;
    v3 = v5.__d_.__rep_ & 0xFFFFFFFFFFFFFF00;
    rep_low = LOBYTE(v5.__d_.__rep_);
  }

  if (SBYTE7(v12) < 0)
  {
    operator delete(__p[0]);
  }

  std::locale::~locale(&v9 + 1);
  std::istream::~istream();
  std::ios::~ios();
  return v3 | rep_low;
}

void sub_10000982C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100009860(void (__cdecl ***a1)(std::istringstream *__hidden this), const std::string *a2, int a3))(std::istringstream *__hidden this)
{
  a1[21] = 0;
  *a1 = v7;
  *(*(v7 - 3) + a1) = v6;
  a1[1] = 0;
  v8 = (*(*a1 - 3) + a1);
  std::ios_base::init(v8, a1 + 2);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  sub_1000099E4((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_1000099BC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000099E4(uint64_t a1, const std::string *a2, int a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_100008C60(a1);
  return a1;
}

void sub_100009A90(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_100009AB8(uint64_t a1)
{
  sub_10000AC58(a1);
  if (*(a1 + 16) != 34)
  {
    sub_10011B1D8();
  }

  while (2)
  {
    v2 = sub_100003460(a1) + 1;
    result = 4;
    v4 = "invalid string: missing closing quote";
    switch(v2)
    {
      case 0:
        goto LABEL_83;
      case 1:
        v4 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
        goto LABEL_83;
      case 2:
        v4 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
        goto LABEL_83;
      case 3:
        v4 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
        goto LABEL_83;
      case 4:
        v4 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
        goto LABEL_83;
      case 5:
        v4 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
        goto LABEL_83;
      case 6:
        v4 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
        goto LABEL_83;
      case 7:
        v4 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
        goto LABEL_83;
      case 8:
        v4 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
        goto LABEL_83;
      case 9:
        v4 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
        goto LABEL_83;
      case 10:
        v4 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
        goto LABEL_83;
      case 11:
        v4 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
        goto LABEL_83;
      case 12:
        v4 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
        goto LABEL_83;
      case 13:
        v4 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
        goto LABEL_83;
      case 14:
        v4 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
        goto LABEL_83;
      case 15:
        v4 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
        goto LABEL_83;
      case 16:
        v4 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
        goto LABEL_83;
      case 17:
        v4 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
        goto LABEL_83;
      case 18:
        v4 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
        goto LABEL_83;
      case 19:
        v4 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
        goto LABEL_83;
      case 20:
        v4 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
        goto LABEL_83;
      case 21:
        v4 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
        goto LABEL_83;
      case 22:
        v4 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
        goto LABEL_83;
      case 23:
        v4 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
        goto LABEL_83;
      case 24:
        v4 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
        goto LABEL_83;
      case 25:
        v4 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
        goto LABEL_83;
      case 26:
        v4 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
        goto LABEL_83;
      case 27:
        v4 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
        goto LABEL_83;
      case 28:
        v4 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
        goto LABEL_83;
      case 29:
        v4 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
        goto LABEL_83;
      case 30:
        v4 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
        goto LABEL_83;
      case 31:
        v4 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
        goto LABEL_83;
      case 32:
        v4 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
        goto LABEL_83;
      case 33:
      case 34:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
        v8 = *(a1 + 16);
        goto LABEL_7;
      case 35:
        return result;
      case 93:
        v10 = sub_100003460(a1);
        v4 = "invalid string: forbidden character after backslash";
        if (v10 <= 113)
        {
          if (v10 > 97)
          {
            switch(v10)
            {
              case 'b':
                LOBYTE(v8) = 8;
                break;
              case 'f':
                LOBYTE(v8) = 12;
                break;
              case 'n':
                LOBYTE(v8) = 10;
                break;
              default:
                goto LABEL_83;
            }
          }

          else
          {
            switch(v10)
            {
              case '""':
                LOBYTE(v8) = 34;
                break;
              case '/':
                LOBYTE(v8) = 47;
                break;
              case '\\':
                LOBYTE(v8) = 92;
                break;
              default:
                goto LABEL_83;
            }
          }

          goto LABEL_7;
        }

        if (v10 != 117)
        {
          if (v10 == 114)
          {
            LOBYTE(v8) = 13;
          }

          else
          {
            if (v10 != 116)
            {
              goto LABEL_83;
            }

            LOBYTE(v8) = 9;
          }

          goto LABEL_7;
        }

        v11 = sub_10003EB14(a1);
        if (v11 == -1)
        {
          goto LABEL_86;
        }

        v8 = v11;
        if ((v11 & 0xFFFFFC00) != 0xD800)
        {
          if ((v11 & 0xFFFFFC00) == 0xDC00)
          {
            v4 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
            goto LABEL_83;
          }

          if (v11 >= 0x110000)
          {
            sub_10011B274();
          }

          if (v11 > 0x7F)
          {
            if (v11 > 0x7FF)
            {
              if (HIWORD(v11))
              {
                goto LABEL_25;
              }

              std::string::push_back((a1 + 72), (v11 >> 12) | 0xE0);
              std::string::push_back((a1 + 72), (v8 >> 6) & 0x3F | 0x80);
              LOBYTE(v8) = v8 & 0x3F | 0x80;
            }

            else
            {
              std::string::push_back((a1 + 72), (v11 >> 6) | 0xC0);
              LOBYTE(v8) = v8 & 0x3F | 0x80;
            }
          }

LABEL_7:
          std::string::push_back((a1 + 72), v8);
          continue;
        }

        if (sub_100003460(a1) != 92 || sub_100003460(a1) != 117)
        {
LABEL_87:
          v4 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
          goto LABEL_83;
        }

        v12 = sub_10003EB14(a1);
        if (v12 != -1)
        {
          if (v12 >> 10 != 55)
          {
            goto LABEL_87;
          }

          v8 = v12 + (v8 << 10) - 56613888;
LABEL_25:
          sub_10011B204(v8, (a1 + 72), &v13);
          LOBYTE(v8) = v13;
          goto LABEL_7;
        }

LABEL_86:
        v4 = "invalid string: '\\u' must be followed by 4 hex digits";
LABEL_83:
        *(a1 + 96) = v4;
        return 14;
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
        *&v13 = 0xBF00000080;
        v5 = a1;
        v6 = 2;
        goto LABEL_14;
      case 225:
        v7 = xmmword_100140990;
        goto LABEL_5;
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 239:
      case 240:
        v7 = xmmword_100140980;
        goto LABEL_5;
      case 238:
        v7 = xmmword_100140970;
LABEL_5:
        v13 = v7;
        v5 = a1;
        v6 = 4;
        goto LABEL_14;
      case 241:
        v14 = 0xBF00000080;
        v9 = &xmmword_100141AA0;
        goto LABEL_13;
      case 242:
      case 243:
      case 244:
        v14 = 0xBF00000080;
        v9 = &xmmword_100141AB8;
        goto LABEL_13;
      case 245:
        v14 = 0xBF00000080;
        v9 = &xmmword_100141AD0;
LABEL_13:
        v13 = *v9;
        v5 = a1;
        v6 = 6;
LABEL_14:
        if ((sub_10002B17C(v5, &v13, v6) & 1) == 0)
        {
          return 14;
        }

        continue;
      default:
        v4 = "invalid string: ill-formed UTF-8 byte";
        goto LABEL_83;
    }
  }
}

uint64_t sub_10000A370(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_10002C63C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_10000BC18(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  v18 = v8;
  v9 = *a2;
  *v8 = v9;
  sub_100004EA8((v8 + 8), v9);
  sub_10000298C(v8);
  *&v18 = v18 + 16;
  v10 = *(a1 + 8);
  v11 = v17 + *a1 - v10;
  sub_10000BB08(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_10000BC60(&v16);
  return v15;
}

void sub_10000A4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A4C8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (**v1 || (sub_10007F8D4(*(v1 + 8), "SELECT DISTINCT transform_uuid, transform_def, derived_sampling_perc, transform_started_aggregating_timestamp FROM enabled_transforms_by_event_view WHERE event_name=?1;", 1, &v11), v4 = *v1, v5 = v11, v11 = 0, sub_10007FC24(v4, v5), sub_10007FC24(&v11, 0), v2 = *v1, **v1))
  {
    v6 = *(v1 + 16);
    v7 = 1;
    sub_10000BE00(v3, v2, 1, v6);
  }

  else
  {
    v9 = *(v3 + 32);
    v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v10)
      {
        sub_10010DDC8(v9);
      }
    }

    else if (v10)
    {
      sub_10010DE40();
    }

    return 0;
  }

  return v7;
}

const unsigned __int8 *sub_10000A5D0(uint64_t a1, sqlite3_stmt **a2, int iCol)
{
  v6 = sqlite3_column_text(*a2, iCol);
  if (v6)
  {
    v7 = sqlite3_column_bytes(*a2, iCol);
    *(a1 + 88) += v7 & ~(v7 >> 31);
  }

  return v6;
}

uint64_t sub_10000A638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  sub_1000035D0(v9, a3);
  sub_10000AE0C(a5, &v8, v9, a4);
  return sub_100004FBC(v9);
}

void sub_10000A6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100004FBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A6D0()
{
  v0 = localeconv();
  if (!v0)
  {
    __assert_rtn("get_decimal_point", "lexer.hpp", 136, "loc != nullptr");
  }

  if (v0->decimal_point)
  {
    return *v0->decimal_point;
  }

  else
  {
    return 46;
  }
}

void sub_10000A72C(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v42 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v6;
    v41 = v6;
    v38 = v6;
    v39 = v6;
    v36 = v6;
    v37 = v6;
    *&v35[16] = v6;
    *&v35[32] = v6;
    *v35 = v6;
    sub_100003538(v34, a1);
    sub_100040040(v35, a3, v34, *(a1 + 176));
    sub_100004FBC(v34);
    sub_100046C70(a1, v35);
    sub_10000298C(a3);
    if (a2)
    {
      v7 = sub_10000AEB4(a1 + 40);
      *(a1 + 32) = v7;
      if (v7 != 15)
      {
        v8 = *(a1 + 64);
        sub_100047610(a1 + 40, &v33);
        v29 = *(a1 + 64);
        v30 = *(a1 + 80);
        sub_10000459C(v26, "value");
        sub_1000476F4(a1, 0xFu, v26, &__p);
        sub_10003F76C(101, &v29, &__p, &v31);
        sub_10003F51C(v35, v8, &v33, &v31);
        v31.__vftable = off_100181438;
        std::runtime_error::~runtime_error(&v32);
        std::exception::~exception(&v31);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }
    }

    if (BYTE8(v38) == 1)
    {
      v24[0] = 9;
      v9 = v24;
      v25 = 0;
      sub_10000298C(v24);
      sub_10000298C(v24);
      v10 = *a3;
      *a3 = v24[0];
      v24[0] = v10;
      v11 = *(a3 + 8);
      *(a3 + 8) = v25;
      v25 = v11;
      sub_10000298C(a3);
      sub_10000298C(v24);
      v12 = v24[0];
    }

    else
    {
      if (*a3 != 9)
      {
LABEL_27:
        sub_100042FE8(v35);
        return;
      }

      v22[0] = 0;
      v9 = v22;
      v23 = 0;
      sub_10000298C(v22);
      sub_10000298C(v22);
      sub_10000298C(v22);
      v18 = *a3;
      *a3 = v22[0];
      v22[0] = v18;
      v19 = *(a3 + 8);
      *(a3 + 8) = v23;
      v23 = v19;
      sub_10000298C(a3);
      sub_10000298C(v22);
      v12 = v22[0];
    }

    sub_1000048FC(v9 + 1, v12);
    goto LABEL_27;
  }

  v13 = *(a1 + 176);
  *&v35[40] = 0xAAAAAAAAAAAAAA00;
  *v35 = a3;
  memset(&v35[8], 0, 32);
  v35[41] = v13;
  sub_10000B120(a1, v35);
  sub_10000298C(a3);
  if (a2)
  {
    v14 = sub_10000AEB4(a1 + 40);
    *(a1 + 32) = v14;
    if (v14 != 15)
    {
      v15 = *(a1 + 64);
      sub_100047610(a1 + 40, &v33);
      v29 = *(a1 + 64);
      v30 = *(a1 + 80);
      sub_10000459C(v26, "value");
      sub_1000476F4(a1, 0xFu, v26, &__p);
      sub_10003F76C(101, &v29, &__p, &v31);
      sub_10003FED4(v35, v15, &v33, &v31);
      v31.__vftable = off_100181438;
      std::runtime_error::~runtime_error(&v32);
      std::exception::~exception(&v31);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v35[40] == 1)
  {
    v20[0] = 9;
    v21 = 0;
    sub_10000298C(v20);
    sub_10000298C(v20);
    v16 = *a3;
    *a3 = v20[0];
    v20[0] = v16;
    v17 = *(a3 + 8);
    *(a3 + 8) = v21;
    v21 = v17;
    sub_10000298C(a3);
    sub_10000298C(v20);
    sub_1000048FC(&v21, v20[0]);
  }

  if (*&v35[8])
  {
    *&v35[16] = *&v35[8];
    operator delete(*&v35[8]);
  }
}

void sub_10000AB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  sub_10003FE80(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  v43 = *(v41 - 200);
  if (v43)
  {
    *(v41 - 192) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

void sub_10000AC58(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    **(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  else
  {
    *(a1 + 72) = 0;
    *(a1 + 95) = 0;
  }

  v2 = *(a1 + 48);
  v1 = a1 + 48;
  *(v1 + 8) = v2;
  v3 = *(v1 - 32);
  sub_100003650(v1, &v3);
}

void sub_10000ACD8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_10000ACE4@<X0>(const char **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  *(a4 + 8) = 0;
  *a4 = 0;
  sub_10000298C(a4);
  sub_10000298C(a4);
  v8 = *a1;
  v9 = strlen(v8);
  sub_100003538(v11, a2);
  sub_10000A638(v8, &v8[v9], v11, a3, v12);
  sub_10000A72C(v12, 1, a4);
  sub_10000797C(&v13);
  sub_100004FBC(v12);
  return sub_100004FBC(v11);
}

void sub_10000ADD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_10000797C(v14 + 40);
  sub_100004FBC(&a13);
  sub_100004FBC(&a9);
  sub_10002C5F4(v13);
  _Unwind_Resume(a1);
}

uint64_t sub_10000AE0C(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  v7 = sub_100003538(a1, a3);
  *(v7 + 32) = 0;
  *(v7 + 40) = *a2;
  *(v7 + 56) = -1;
  *(v7 + 60) = 0;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0;
  *(v7 + 136) = "";
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 144) = 0;
  *(a1 + 168) = sub_10000A6D0();
  *(a1 + 176) = a4;
  *(a1 + 32) = sub_10000AEB4(a1 + 40);
  return a1;
}

void sub_10000AE98(_Unwind_Exception *a1)
{
  sub_10000797C(v1 + 40);
  sub_100004FBC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10000AEB4(uint64_t a1)
{
  if (!*(a1 + 24) && !sub_100004830(a1))
  {
    v4 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
LABEL_22:
    *(a1 + 96) = v4;
    return 14;
  }

  while (1)
  {
    while (1)
    {
      sub_100003460(a1);
      v2 = *(a1 + 16);
      if (v2 > 47)
      {
        if (v2 < 58)
        {
          goto LABEL_13;
        }

        if (v2 > 109)
        {
          if (v2 > 122)
          {
            if (v2 == 123)
            {
              return 9;
            }

            if (v2 == 125)
            {
              return 11;
            }

            goto LABEL_47;
          }

          if (v2 == 110)
          {
            v8[0] = 1819047278;
            v5 = a1;
            v6 = 4;
            v7 = 3;
          }

          else
          {
            if (v2 != 116)
            {
              goto LABEL_47;
            }

            v8[0] = 1702195828;
            v5 = a1;
            v6 = 4;
            v7 = 1;
          }
        }

        else
        {
          if (v2 <= 92)
          {
            if (v2 == 58)
            {
              return 12;
            }

            if (v2 == 91)
            {
              return 8;
            }

LABEL_47:
            v4 = "invalid literal";
            goto LABEL_22;
          }

          if (v2 == 93)
          {
            return 10;
          }

          if (v2 != 102)
          {
            goto LABEL_47;
          }

          qmemcpy(v8, "false", 5);
          v5 = a1;
          v6 = 5;
          v7 = 2;
        }

        return sub_100006A38(v5, v8, v6, v7);
      }

      if (v2 > 12)
      {
        break;
      }

      if ((v2 - 9) >= 2)
      {
        if ((v2 + 1) < 2)
        {
          return 15;
        }

        goto LABEL_47;
      }
    }

    if (v2 > 33)
    {
      break;
    }

    if (v2 != 13 && v2 != 32)
    {
      goto LABEL_47;
    }
  }

  switch(v2)
  {
    case '""':

      return sub_100009AB8(a1);
    case ',':
      return 13;
    case '-':
LABEL_13:

      return sub_10001270C(a1);
    default:
      goto LABEL_47;
  }
}

uint64_t sub_10000B120(uint64_t a1, void *a2)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v4 = (a1 + 112);
  while (1)
  {
    v5 = *(a1 + 32);
    if (v5 <= 5)
    {
      break;
    }

    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        v38.__vftable = *(a1 + 144);
        sub_10002739C(a2, &v38);
      }

      else
      {
        if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v29 = *(a1 + 64);
          sub_100047610(a1 + 40, &v40);
          sub_100047610(a1 + 40, &v34);
          v30 = std::string::insert(&v34, 0, "number overflow parsing '");
          v31 = *&v30->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          v32 = std::string::append(&__p, "'");
          v33 = *&v32->__r_.__value_.__l.__data_;
          v37 = v32->__r_.__value_.__r.__words[2];
          *v36 = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          sub_100040A24(406, v36, &v38);
          v18 = sub_10003FED4(a2, v29, &v40, &v38);
          sub_100040B9C(&v38);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[0]);
          }

          goto LABEL_51;
        }

        v38.__vftable = *(a1 + 160);
        sub_10001B2A0(a2, &v38);
      }

      goto LABEL_26;
    }

    switch(v5)
    {
      case 8:
        v40.__r_.__value_.__s.__data_[0] = 2;
        v38.__vftable = sub_100004CB0(a2, &v40);
        sub_100004654((a2 + 1), &v38);
        v10 = sub_10000AEB4(a1 + 40);
        *(a1 + 32) = v10;
        if (v10 == 10)
        {
LABEL_23:
          a2[2] -= 8;
          goto LABEL_26;
        }

        LOBYTE(v38.__vftable) = 1;
        sub_1000077C4(&v41, &v38);
        break;
      case 9:
        v40.__r_.__value_.__s.__data_[0] = 1;
        v38.__vftable = sub_100004CB0(a2, &v40);
        sub_100004654((a2 + 1), &v38);
        v6 = sub_10000AEB4(a1 + 40);
        *(a1 + 32) = v6;
        if (v6 == 11)
        {
          goto LABEL_23;
        }

        if (v6 != 4)
        {
LABEL_59:
          v27 = *(a1 + 64);
          sub_100047610(a1 + 40, &v40);
          *v36 = *(a1 + 64);
          v37 = *(a1 + 80);
          sub_10000459C(&v34, "object key");
          sub_1000476F4(a1, 4u, &v34, &__p);
          sub_10003F76C(101, v36, &__p, &v38);
          v24 = sub_10003FED4(a2, v27, &v40, &v38);
          goto LABEL_63;
        }

        v7 = *(*(a2[2] - 8) + 8);
        v38.__vftable = v4;
        a2[4] = sub_100005F50(v7, &v4->~runtime_error) + 56;
        v8 = sub_10000AEB4(a1 + 40);
        *(a1 + 32) = v8;
        if (v8 != 12)
        {
          goto LABEL_62;
        }

        LOBYTE(v38.__vftable) = 0;
        sub_1000077C4(&v41, &v38);
        v9 = sub_10000AEB4(a1 + 40);
LABEL_41:
        *(a1 + 32) = v9;
        break;
      case 14:
        v20 = *(a1 + 64);
        sub_100047610(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        sub_10000459C(&v34, "value");
        sub_1000476F4(a1, 0, &v34, &__p);
        sub_10003F76C(101, v36, &__p, &v38);
        v21 = sub_10003FED4(a2, v20, &v40, &v38);
LABEL_50:
        v18 = v21;
        v38.__vftable = off_100181438;
        std::runtime_error::~runtime_error(&v39);
        std::exception::~exception(&v38);
        goto LABEL_51;
      default:
LABEL_49:
        v22 = *(a1 + 64);
        sub_100047610(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        sub_10000459C(&v34, "value");
        sub_1000476F4(a1, 0x10u, &v34, &__p);
        sub_10003F76C(101, v36, &__p, &v38);
        v21 = sub_10003FED4(a2, v22, &v40, &v38);
        goto LABEL_50;
    }
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v38.__vftable = 0;
      sub_100025844(a2);
    }

    else
    {
      if (v5 == 4)
      {
        sub_100006D64(a2);
      }

      v38.__vftable = *(a1 + 152);
      sub_1000079C0(a2, &v38);
    }

    goto LABEL_26;
  }

  if (v5 == 1)
  {
    LOBYTE(v38.__vftable) = 1;
    sub_100006ABC(a2, &v38);
    goto LABEL_26;
  }

  if (v5 != 2)
  {
    goto LABEL_49;
  }

  LOBYTE(v38.__vftable) = 0;
  sub_100006ABC(a2, &v38);
LABEL_26:
  v11 = v42;
  if (!v42)
  {
LABEL_43:
    v18 = 1;
    goto LABEL_44;
  }

  while (1)
  {
    if ((*&v41[((v11 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v11 - 1)))
    {
      v12 = sub_10000AEB4(a1 + 40);
      *(a1 + 32) = v12;
      if (v12 == 13)
      {
        goto LABEL_40;
      }

      if (v12 != 10)
      {
        v23 = *(a1 + 64);
        sub_100047610(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        sub_10000459C(&v34, "array");
        sub_1000476F4(a1, 0xAu, &v34, &__p);
        sub_10003F76C(101, v36, &__p, &v38);
        v24 = sub_10003FED4(a2, v23, &v40, &v38);
        goto LABEL_63;
      }

      a2[2] -= 8;
      v13 = v42;
      if (!v42)
      {
        v25 = 383;
        goto LABEL_61;
      }

      goto LABEL_35;
    }

    v14 = sub_10000AEB4(a1 + 40);
    *(a1 + 32) = v14;
    if (v14 == 13)
    {
      break;
    }

    if (v14 != 11)
    {
      v26 = *(a1 + 64);
      sub_100047610(a1 + 40, &v40);
      *v36 = *(a1 + 64);
      v37 = *(a1 + 80);
      sub_10000459C(&v34, "object");
      sub_1000476F4(a1, 0xBu, &v34, &__p);
      sub_10003F76C(101, v36, &__p, &v38);
      v24 = sub_10003FED4(a2, v26, &v40, &v38);
      goto LABEL_63;
    }

    a2[2] -= 8;
    v13 = v42;
    if (!v42)
    {
      v25 = 439;
LABEL_61:
      __assert_rtn("sax_parse_internal", "parser.hpp", v25, "not states.empty()");
    }

LABEL_35:
    v11 = v13 - 1;
    v42 = v11;
    if (!v11)
    {
      goto LABEL_43;
    }
  }

  v15 = sub_10000AEB4(a1 + 40);
  *(a1 + 32) = v15;
  if (v15 != 4)
  {
    goto LABEL_59;
  }

  v16 = *(*(a2[2] - 8) + 8);
  v38.__vftable = v4;
  a2[4] = sub_100005F50(v16, &v4->~runtime_error) + 56;
  v17 = sub_10000AEB4(a1 + 40);
  *(a1 + 32) = v17;
  if (v17 == 12)
  {
LABEL_40:
    v9 = sub_10000AEB4(a1 + 40);
    goto LABEL_41;
  }

LABEL_62:
  v28 = *(a1 + 64);
  sub_100047610(a1 + 40, &v40);
  *v36 = *(a1 + 64);
  v37 = *(a1 + 80);
  sub_10000459C(&v34, "object separator");
  sub_1000476F4(a1, 0xCu, &v34, &__p);
  sub_10003F76C(101, v36, &__p, &v38);
  v24 = sub_10003FED4(a2, v28, &v40, &v38);
LABEL_63:
  v18 = v24;
  sub_10003FE80(&v38);
LABEL_51:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

LABEL_44:
  if (v41)
  {
    operator delete(v41);
  }

  return v18;
}

void sub_10000B9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::runtime_error a30)
{
  sub_10003FE80(&a30);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v30 - 97) < 0)
  {
    operator delete(*(v30 - 120));
  }

  v32 = *(v30 - 96);
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10000BB08(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v13[0] = a1;
  v13[1] = &v11;
  v13[2] = &v12;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (a2 == a3)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      *(v4 + 8) = *(v7 + 1);
      sub_10000298C(v7);
      *v7 = 0;
      *(v7 + 1) = 0;
      sub_10000298C(v4);
      v7 += 16;
      v4 = v12 + 16;
      v12 += 16;
    }

    while (v7 != a3);
    LOBYTE(v14) = 1;
    if (v6 != a3)
    {
      v8 = v6;
      do
      {
        sub_10000298C(v6);
        v9 = *v8;
        v8 += 16;
        sub_1000048FC(v6 + 8, v9);
        v6 = v8;
      }

      while (v8 != a3);
    }
  }

  return sub_10000BCC4(v13);
}

void sub_10000BC18(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100025BBC();
}

uint64_t sub_10000BC60(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    sub_10000298C((i - 16));
    sub_1000048FC(i - 8, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10000BCC4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10002C688(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t sub_10000BD10@<X0>(uint64_t a1@<X0>, const std::string::value_type **a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v6;
  *(a3 + 16) = v6;
  v7 = sub_10000DEC4(a3, a1);
  result = sub_10000DCFC(v7);
  if (*a1 == 1)
  {
    result = sub_10000E890(*(a1 + 8), a2);
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t sub_10000BD80(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10000BE00(int a1, sqlite3_stmt **a2, int a3, uint64_t a4)
{
  v5 = *(a4 + 23);
  if (v5 >= 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = *a4;
  }

  if (v5 >= 0)
  {
    v7 = *(a4 + 23);
  }

  else
  {
    v7 = *(a4 + 8);
  }

  return sqlite3_bind_text(*a2, a3, v6, v7, 0);
}

uint64_t sub_10000BE48(uint64_t a1, sqlite3_stmt **a2)
{
  v4 = sqlite3_expanded_sql(*a2);
  sqlite3_free(v4);
  result = sqlite3_step(*a2);
  if (result == 101)
  {
    ++*(a1 + 96);
  }

  return result;
}

uint64_t *sub_10000BE9C(uint64_t *a1)
{
  v2 = os_transaction_create();
  *a1 = v2;
  if (!v2)
  {
    sub_100123EE0();
  }

  return a1;
}

void sub_10000BED4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100025BBC();
}

void sub_10000BF1C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_10000786C(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void **sub_10000BF70(void **a1)
{
  sub_10000BF1C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_10000BFA4(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t *sub_10000C010(uint64_t **a1, const void **a2, const void **a3, uint64_t a4, char a5, char a6)
{
  v6 = *a1;
  v7 = **a1;
  if (!v7)
  {
    return *a1;
  }

  while (1)
  {
    if (sub_10000BFA4(&v26, (v7 + 32), a2))
    {
      if (!sub_10000BFA4(&v26, (v7 + 32), a3))
      {
        sub_10011B798();
      }

      v12 = 16;
      goto LABEL_7;
    }

    if (!sub_10000BFA4(&v26, a3, (v7 + 32)))
    {
      break;
    }

    v12 = 8;
    v6 = v7;
LABEL_7:
    v7 = *(v7 + v12);
    v13 = v6;
    if (!v7)
    {
      return v13;
    }
  }

  if ((a5 & 1) == 0 && (a6 & 1) == 0 && !sub_10000BFA4(&v26, a2, (v7 + 32)) && !sub_10000BFA4(&v26, (v7 + 32), a3))
  {
    sub_10011B76C();
  }

  if (a5)
  {
    v14 = *(v7 + 8);
    v13 = v7;
    if (v14)
    {
      v13 = v7;
      do
      {
        v15 = sub_10000BFA4(&v26, (v14 + 32), a2);
        if (v15)
        {
          v16 = 16;
        }

        else
        {
          v16 = 8;
        }

        if (!v15)
        {
          v13 = v14;
        }

        v14 = *(v14 + v16);
      }

      while (v14);
    }
  }

  else
  {
    v13 = v6;
    v17 = v7;
    do
    {
      v18 = sub_10000BFA4(&v26, a2, (v17 + 32));
      if (v18)
      {
        v19 = 8;
      }

      else
      {
        v19 = 16;
      }

      if (v18)
      {
        v13 = v17;
      }

      v17 = *(v17 + v19);
    }

    while (v17);
  }

  if (a6)
  {
    for (i = *(v7 + 16); i; i = *(i + v22))
    {
      if (sub_10000BFA4(&v26, a3, (i + 32)))
      {
        v22 = 8;
      }

      else
      {
        v22 = 16;
      }
    }
  }

  else
  {
    do
    {
      if (sub_10000BFA4(&v26, (v7 + 32), a3))
      {
        v24 = 16;
      }

      else
      {
        v24 = 8;
      }

      v7 = *(v7 + v24);
    }

    while (v7);
  }

  return v13;
}

uint64_t sub_10000C22C(uint64_t a1, uint64_t *a2)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  sub_10000BE98(&v27, "com.apple.analyticsd.post-event");
  (*(**(a1 + 112) + 16))(*(a1 + 112), a2);
  memset(v26, 170, sizeof(v26));
  sub_10000C940(*a2, v26);
  v4 = v26[0];
  v5 = v26[1];
  while (v4 != v5)
  {
    v7 = *v4;
    v6 = v4[1];
    v24 = *v4;
    v25 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(v7 + 39);
    v9 = *(v7 + 39);
    v10 = *(v7 + 24);
    if (v8 >= 0)
    {
      v10 = *(v7 + 39);
    }

    if (v10)
    {
      if (v8 >= 0)
      {
        v11 = (v7 + 16);
      }

      else
      {
        v11 = *(v7 + 16);
      }

      v12 = v10 - 1;
      v13 = (v10 - 1) >= 0x17;
      v14 = 23;
      if (!v13)
      {
        v14 = v12;
      }

      v15 = v14 + 1;
      v16 = "com.apple.coreanalytics.";
      v17 = v11;
      while (1)
      {
        v18 = *v16++;
        if (*v17 != v18)
        {
          break;
        }

        ++v17;
        if (!--v15)
        {
          if (v12 >= 0x17 && os_log_type_enabled(qword_100192D58, OS_LOG_TYPE_DEBUG))
          {
            sub_100017DF0(buf);
          }

          break;
        }
      }
    }

    v19 = (v7 + 16);
    v20 = strlen("com.apple.coreanalytics.heartbeat.2hours");
    v21 = v20;
    if ((v9 & 0x80) != 0)
    {
      if (v20 == *(v7 + 24))
      {
        if (v20 == -1)
        {
          sub_10002EAB0();
        }

        v19 = *v19;
LABEL_23:
        if (!memcmp(v19, "com.apple.coreanalytics.heartbeat.2hours", v20))
        {
          v22 = qword_100192DC0;
          if (os_log_type_enabled(qword_100192DC0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *&buf[4] = "com.apple.coreanalytics.heartbeat.2hours";
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[EventBroker] Loading event handlers for %{public}s.", buf, 0xCu);
          }
        }
      }
    }

    else if (v20 == v9)
    {
      goto LABEL_23;
    }

    (*(**(a1 + 48) + 16))(*(a1 + 48), &v24, v21);
    if (*(v24 + 57) == 1)
    {
      (*(**(a1 + 64) + 16))(*(a1 + 64));
    }

    sub_10001C7A8(a1, &v24);
    if (v25)
    {
      sub_10000786C(v25);
    }

    v4 += 2;
  }

  *buf = v26;
  sub_1000131F8(buf);
  return sub_10001C368(&v27);
}

void sub_10000C594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10001C368(va);
  _Unwind_Resume(a1);
}

void sub_10000C5E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = v1[1];
  v5 = 0;
  v6 = 0;
  v4 = *v3;
  operator new();
}

void sub_10000C824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000BD80(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10000C840(uint64_t a1, const void **a2, uint64_t a3)
{
  v8 = (a1 + 184);
  v9[0] = a1 + 184;
  result = sub_10000C010(&v8, a2, a2, v9, 1, 1);
  if (result == v7)
  {
    ++*(a1 + 16);
  }

  else
  {
    ++*(a1 + 20);
    v9[0] = off_100182568;
    v9[1] = a3;
    v9[3] = v9;
    sub_10001237C(a1, a2, v9);
    return sub_10001DB04(v9);
  }

  return result;
}

void sub_10000C924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001DB04(va);
  _Unwind_Resume(a1);
}

void sub_10000C940(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a1 + 40);
  if (*(a1 + 40) == 1 && !sub_1000061C8(*(a1 + 48), "timestamp"))
  {
    v64[0] = 5;
    rep = std::chrono::system_clock::now().__d_.__rep_;
    sub_10000298C(v64);
    sub_10000298C(v64);
    v5 = sub_1000071E4(v4, "timestamp");
    sub_10000298C(v64);
    v6 = *v5;
    *v5 = v64[0];
    v64[0] = v6;
    v7 = *(v5 + 8);
    *(v5 + 8) = rep;
    rep = v7;
    sub_10000298C(v5);
    sub_10000298C(v64);
    sub_1000048FC(&rep, v64[0]);
  }

  if (*(a1 + 56) != 1)
  {
    if (*(a1 + 56))
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v8 = *(a1 + 8);
      v53 = *a1;
      v54 = v8;
      if (v8 && (atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed), v9 = a2[1], v9 < a2[2]))
      {
        sub_100006028(a2[1], &v53);
        v10 = v9 + 16;
      }

      else
      {
        v10 = sub_10000D394(a2, &v53);
      }

      a2[1] = v10;
      if (v54)
      {
        std::__shared_weak_count::__release_weak(v54);
      }
    }

    return;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v62 = 0xAAAAAAAAAAAAAA00;
  v63 = 0;
  sub_10000298C(&v62);
  sub_10000298C(&v62);
  v60 = 0xAAAAAAAAAAAAAA00;
  v61 = 0;
  sub_10000298C(&v60);
  sub_10000298C(&v60);
  v66[0] = v4;
  sub_100023420(v66, &v53);
  sub_100023508(v66, v48);
  while (!sub_100013878(&v53, v48))
  {
    if (*sub_10001CF44(&v53) == 2)
    {
      v11 = sub_10001CF44(&v53);
      sub_10000FF70(v46, v11);
      v12 = sub_100024F24(&v53);
      v13 = sub_10002325C(&v60, v12);
      sub_10000298C(v46);
      v14 = *v13;
      *v13 = v46[0];
      v46[0] = v14;
      v15 = *(v13 + 8);
      *(v13 + 8) = v47;
      v47 = v15;
      sub_10000298C(v13);
      sub_10000298C(v46);
      v16 = v46[0];
      v17 = &v47;
    }

    else
    {
      v18 = sub_10001CF44(&v53);
      sub_10000FF70(v44, v18);
      v19 = sub_100024F24(&v53);
      v20 = sub_10002325C(&v62, v19);
      sub_10000298C(v44);
      v21 = *v20;
      *v20 = v44[0];
      v44[0] = v21;
      v22 = *(v20 + 8);
      *(v20 + 8) = v45;
      v45 = v22;
      sub_10000298C(v20);
      sub_10000298C(v44);
      v16 = v44[0];
      v17 = &v45;
    }

    sub_1000048FC(v17, v16);
    sub_100012BFC(&v53);
    ++v55;
  }

  if (v52 < 0)
  {
    operator delete(__p);
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (v59 < 0)
  {
    operator delete(v58);
  }

  if (v57 < 0)
  {
    operator delete(v56);
  }

  if (!v60)
  {
LABEL_28:
    sub_100006094((a1 + 16), &v62, 0, *(a1 + 57));
  }

  if (v60 == 1)
  {
    if (!v61[2])
    {
      goto LABEL_28;
    }
  }

  else if (v60 == 2 && !((v61[1] - *v61) >> 4))
  {
    goto LABEL_28;
  }

  v43 = &v60;
  sub_100023420(&v43, &v53);
  sub_100023508(&v43, v48);
  while (!sub_100013878(&v53, v48))
  {
    v23 = sub_100024F24(&v53);
    v24 = sub_10001CF44(&v53);
    for (i = 0; ; ++i)
    {
      v26 = *v24;
      if (*v24)
      {
        if (v26 == 1)
        {
          v26 = *(*(v24 + 1) + 16);
        }

        else if (v26 == 2)
        {
          v26 = (*(*(v24 + 1) + 8) - **(v24 + 1)) >> 4;
        }

        else
        {
          v26 = 1;
        }
      }

      if (i >= v26)
      {
        break;
      }

      v41 = 0xAAAAAAAAAAAAAAAALL;
      v42 = 0xAAAAAAAAAAAAAAAALL;
      sub_10000FF70(&v41, &v62);
      if (*sub_1000239C8(v24, i))
      {
        v39[0] = 6;
        v40 = i;
        sub_10000298C(v39);
        sub_10000298C(v39);
        v27 = sub_10002325C(&v41, v23);
        sub_10000298C(v39);
        v28 = *v27;
        *v27 = v39[0];
        v39[0] = v28;
        v29 = *(v27 + 8);
        *(v27 + 8) = v40;
        v40 = v29;
        sub_10000298C(v27);
        sub_10000298C(v39);
        sub_1000048FC(&v40, v39[0]);
        v30 = sub_1000239C8(v24, i);
        sub_10000FF70(v37, v30);
        if (*(v23 + 23) >= 0)
        {
          v31 = *(v23 + 23);
        }

        else
        {
          v31 = *(v23 + 8);
        }

        memset(v66, 170, 24);
        sub_100048378(v66, v31 + 6);
        if (SHIBYTE(v66[2]) >= 0)
        {
          v32 = v66;
        }

        else
        {
          v32 = v66[0];
        }

        if (v31)
        {
          if (*(v23 + 23) >= 0)
          {
            v33 = v23;
          }

          else
          {
            v33 = *v23;
          }

          memmove(v32, v33, v31);
        }

        strcpy(v32 + v31, "_value");
        v34 = sub_10002325C(&v41, v66);
        sub_10000298C(v37);
        v35 = *v34;
        *v34 = v37[0];
        v37[0] = v35;
        v36 = *(v34 + 8);
        *(v34 + 8) = v38;
        v38 = v36;
        sub_10000298C(v34);
        if (SHIBYTE(v66[2]) < 0)
        {
          operator delete(v66[0]);
        }

        sub_10000298C(v37);
        sub_1000048FC(&v38, v37[0]);
        sub_100006094((a1 + 16), &v41, 0, *(a1 + 57));
      }

      sub_10000298C(&v41);
      sub_1000048FC(&v42, v41);
    }

    sub_100012BFC(&v53);
    ++v55;
  }

  if (v52 < 0)
  {
    operator delete(__p);
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (v59 < 0)
  {
    operator delete(v58);
  }

  if (v57 < 0)
  {
    operator delete(v56);
  }

  sub_10000298C(&v60);
  sub_1000048FC(&v61, v60);
  sub_10000298C(&v62);
  sub_1000048FC(&v63, v62);
}

void sub_10000D188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  *(v38 + 8) = v39;
  if (a38)
  {
    std::__shared_weak_count::__release_weak(a38);
  }

  a37 = v38;
  sub_1000131F8(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_10000D2A0(uint64_t a1, char *a2)
{
  v2 = a2[23];
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 1);
  }

  if (!v2)
  {
    return 13;
  }

  v4 = 0;
  do
  {
    v5 = *v3++;
    v6 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))) ^ v4);
    v4 = v6 + 3864292196u;
    --v2;
  }

  while (v2);
  return v6 + 3864292209u;
}

uint64_t sub_10000D310(uint64_t a1, char *a2)
{
  v4 = sub_10000DAE8(a1, a2);
  if ((*(*(a1 + 8) + (((v4 % *(a1 + 32)) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v4 % *(a1 + 32))))
  {
    return 1;
  }

  v6 = sub_10000D2A0(a1 + 1, a2);
  return (*(*(a1 + 8) + (((v6 % *(a1 + 32)) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v6 % *(a1 + 32))) & 1;
}

uint64_t sub_10000D394(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_10002C63C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_10000BED4(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  v16 = (16 * v2);
  sub_100006028((16 * v2), a2);
  v8 = 16 * v2 + 16;
  v9 = *(a1 + 8) - *a1;
  v10 = 16 * v2 - v9;
  memcpy((v15 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(&v16 + 1);
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v14 = v11;
  v15 = v11;
  sub_10000BF70(&v14);
  return v8;
}

void sub_10000D4C8(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  v6[0] = a1;
  v6[1] = __p;
  v4 = sub_100006020((a1 + 56));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D6DC;
  block[3] = &unk_1001818D8;
  block[4] = a1 + 40;
  block[5] = v6;
  dispatch_sync(v4, block);

  v5 = qword_100192D40;
  if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A354(__p, v5);
  }

  sub_10000D604(*(a1 + 64), a2, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10000D5F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10000D604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + 8;
  v5[0] = a1;
  v5[1] = a2;
  v4 = *(a1 + 24);
  v5[2] = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10000C5E8;
  block[3] = &unk_1001824A8;
  block[4] = v3;
  block[5] = v5;
  dispatch_sync(v4, block);
}

BOOL sub_10000D6AC(uint64_t a1)
{
  v2.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v3 = sub_10000D6F8(*(a1 + 32));
  return v2.__d_.__rep_ >= v3 || v2.__d_.__rep_ < v3 - 86400000000;
}

uint64_t sub_10000D6F8(uint64_t a1)
{
  v6 = a1;
  v2 = sub_100006020((a1 + 16));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D870;
  v7[3] = &unk_100181AD0;
  v7[4] = a1;
  v7[5] = &v6;
  v3 = objc_retainBlock(v7);
  v10 = 0;
  v8 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D834;
  block[3] = &unk_1001818D8;
  block[4] = &v10;
  block[5] = &v8;
  dispatch_sync(v2, block);
  v4 = v10;

  return v4;
}

void sub_10000D828(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10000D834(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void sub_10000D880(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v4[0] = a1;
  v4[1] = a2;
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10000D930;
  block[3] = &unk_100186250;
  block[4] = v2;
  block[5] = v4;
  dispatch_sync(v3, block);
}

uint64_t sub_10000D930(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (*(*v1 + 128) != 1 || (result = sub_10000D310(v2 + 88, (*v1[1] + 16)), result))
  {
    v4 = v1[1];
    v5 = *v4;
    v6 = (*v4 + 16);
    v7 = strlen("com.apple.coreanalytics.heartbeat.2hours");
    v8 = *(*v4 + 39);
    if (v8 < 0)
    {
      if (v7 != *(v5 + 24))
      {
LABEL_12:
        v10 = *(v2 + 40);
        *&v11 = off_100186280;
        *(&v11 + 1) = v2;
        v12 = v4;
        v13 = &v11;
        (*(*v10 + 216))(v10, v5 + 16, &v11);
        return sub_100029708(&v11);
      }

      if (v7 == -1)
      {
        sub_10002EAB0();
      }

      v6 = *v6;
    }

    else if (v7 != v8)
    {
      goto LABEL_12;
    }

    if (!memcmp(v6, "com.apple.coreanalytics.heartbeat.2hours", v7))
    {
      v9 = qword_100192DC0;
      if (os_log_type_enabled(qword_100192DC0, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v11) = 136446210;
        *(&v11 + 4) = "com.apple.coreanalytics.heartbeat.2hours";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ModifyEventManager] Retrieving Modify Event Definitions for %{public}s.", &v11, 0xCu);
        v4 = v1[1];
        v5 = *v4;
      }
    }

    goto LABEL_12;
  }

  return result;
}

void sub_10000DADC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

unint64_t sub_10000DAE8(uint64_t a1, char *a2)
{
  v2 = a2[23];
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  result = 0;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 1);
  }

  for (; v2; --v2)
  {
    v5 = *v3++;
    result = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))) ^ result);
  }

  return result;
}

unsigned __int8 *sub_10000DB44(unsigned __int8 **a1)
{
  result = *a1;
  if (!result)
  {
    sub_10011A984();
  }

  v3 = *result;
  if (v3 == 1)
  {
    v6 = a1[1];
    if (v6 == (*(result + 1) + 8))
    {
      sub_10011A958();
    }

    return v6 + 56;
  }

  else if (v3 == 2)
  {
    v5 = *(*(result + 1) + 8);
    result = a1[2];
    if (result == v5)
    {
      sub_10011A92C();
    }
  }

  else
  {
    if (!*result)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_10000459C(v8, "cannot get value");
      sub_10002E87C(214, v8, exception);
    }

    if (a1[4])
    {
      v4 = __cxa_allocate_exception(0x20uLL);
      sub_10000459C(v8, "cannot get value");
      sub_10002E87C(214, v8, v4);
    }
  }

  return result;
}

void sub_10000DCBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    __cxa_free_exception(v14);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 **sub_10000DCFC(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_end", "iter_impl.hpp", 211, "m_object != nullptr");
  }

  v2 = *v1;
  if (v2 == 2)
  {
    result[2] = *(*(v1 + 1) + 8);
  }

  else if (v2 == 1)
  {
    result[1] = (*(v1 + 1) + 8);
  }

  else
  {
    result[4] = 1;
  }

  return result;
}

BOOL sub_10000DD7C(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_10000459C(v8, "cannot compare iterators of different containers");
    sub_10002E87C(212, v8, exception);
  }

  if (!v2)
  {
    sub_10011A900();
  }

  v3 = *v2;
  if (v3 == 2)
  {
    v4 = a1[2];
    v5 = a2[2];
  }

  else if (v3 == 1)
  {
    v4 = a1[1];
    v5 = a2[1];
  }

  else
  {
    v4 = a1[4];
    v5 = a2[4];
  }

  return v4 == v5;
}

void sub_10000DE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void *sub_10000DEC4(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0x8000000000000000;
  if (!a2)
  {
    __assert_rtn("iter_impl", "iter_impl.hpp", 88, "m_object != nullptr");
  }

  return result;
}

unsigned __int8 **sub_10000DF14(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_begin", "iter_impl.hpp", 174, "m_object != nullptr");
  }

  v2 = *v1;
  if (*v1)
  {
    if (v2 == 2)
    {
      result[2] = **(v1 + 1);
    }

    else if (v2 == 1)
    {
      result[1] = **(v1 + 1);
    }

    else
    {
      result[4] = 0;
    }
  }

  else
  {
    result[4] = 1;
  }

  return result;
}

uint64_t sub_10000DFA0(uint64_t a1, const std::string::value_type *a2)
{
  v12 = a2;
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_10002CB3C(a1);
    sub_10000459C(&v9, v6);
    v7 = std::string::insert(&v9, 0, "cannot use operator[] with a string argument with ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(305, &v10, exception);
  }

  v3 = (a1 + 8);
  if (*(a1 + 8) + 8 == sub_10000E890(*(a1 + 8), &v12))
  {
    sub_10011ACE0();
  }

  return sub_10000E890(*v3, &v12) + 56;
}

void sub_10000E0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_10000E130(uint64_t a1)
{
  if (sub_10000E870(a1))
  {
    v2 = *(a1 + 184);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_10000E168(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  (*(*a1 + 64))(a1);
  v5 = (*a3 + 16);
  v6 = strlen("com.apple.coreanalytics.heartbeat.2hours");
  v7 = *(*a3 + 39);
  if (v7 < 0)
  {
    if (v6 != *(*a3 + 24))
    {
      goto LABEL_10;
    }

    if (v6 == -1)
    {
      sub_10002EAB0();
    }

    v5 = *v5;
  }

  else if (v6 != v7)
  {
    goto LABEL_10;
  }

  if (!memcmp(v5, "com.apple.coreanalytics.heartbeat.2hours", v6))
  {
    v8 = qword_100192DC0;
    if (os_log_type_enabled(qword_100192DC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "com.apple.coreanalytics.heartbeat.2hours";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[AggregatingTransform] Applying aggregation for %{public}s.", buf, 0xCu);
    }
  }

LABEL_10:
  if (!sub_100012C84(a1) && !sub_1000140A4(a1, a1[3], a3))
  {
    (*(*a1 + 88))(a1);
    memset(v16, 170, sizeof(v16));
    sub_1000139C0(a1[18], buf);
    sub_1000149BC(v16);
  }

  v9 = qword_100192D68;
  v10 = os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v10)
  {
    v12 = *a3;
    v13 = (*a3 + 16);
    if (*(v12 + 39) < 0)
    {
      v13 = *v13;
    }

    v14 = sub_100012C84(a1);
    v15 = "Config";
    if (v14)
    {
      v15 = "Budget Exceeded";
    }

    *buf = 136315394;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[AggregatingTransform] Ignoring event %s. Reason: %s", buf, 0x16u);
    return 0;
  }

  return result;
}

void sub_10000E650(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10000E668(uint64_t *a1, __int128 *a2)
{
  v4 = a1[3];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v16 = v5;
  *&v16[16] = v5;
  *&v16[32] = 0xAAAAAAAAAAAAAAAALL;
  sub_10000DEC4(v16, v4);
  sub_10000DF14(v16);
  v6 = a1[3];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v15 = v7;
  *&v15[16] = v7;
  *&v15[32] = 0xAAAAAAAAAAAAAAAALL;
  sub_10000DEC4(v15, v6);
  sub_10000DCFC(v15);
  *buf = *v16;
  *&buf[8] = *&v16[8];
  v21 = *&v16[24];
  __p = *v15;
  v18 = *&v15[8];
  v19 = *&v15[24];
  while (!sub_10000DD7C(buf, &__p))
  {
    v8 = sub_10000DB44(buf);
    if (sub_10000EFB0(a1, v8, a2))
    {
      return (*(**(a1[5] + 56) + 24))(*(a1[5] + 56));
    }

    sub_100012BFC(buf);
  }

  v9 = qword_100192D68;
  if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_DEBUG))
  {
    p_p = &__p;
    sub_1000C7D60(a1, &__p);
    if (v18 < 0)
    {
      p_p = __p;
    }

    v12 = sub_10001C33C(a1);
    if (*(v12 + 23) >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = *v12;
    }

    v14 = (*a2 + 16);
    if (*(*a2 + 39) < 0)
    {
      v14 = *v14;
    }

    *buf = 136446722;
    *&buf[4] = p_p;
    *&buf[12] = 2080;
    *&buf[14] = v13;
    *&buf[22] = 2080;
    *&v21 = v14;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}sTransform] WARNING: transform '%s' received event '%s' but did not handle it", buf, 0x20u);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }
  }

  return (*(**(a1[5] + 56) + 24))(*(a1[5] + 56));
}

uint64_t sub_10000E870(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    v1 = *(a1 + 136);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_10000E890(uint64_t a1, const std::string::value_type **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::string::compare((v3 + 32), *a2);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || std::string::compare((v5 + 32), *a2) >= 1)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_10000E910(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

std::string *sub_10000E990@<X0>(unsigned __int8 *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_10002CB3C(a1);
    sub_10000459C(v15, v12);
    v13 = std::string::insert(v15, 0, "cannot use value() with ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    *&v18 = *(&v13->__r_.__value_.__l + 2);
    v17 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(306, &v17, exception);
  }

  v19 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17 = v7;
  v18 = v7;
  sub_10000F1F4(a1, a2, &v17);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[0] = v8;
  v15[1] = v8;
  sub_10000DEC4(v15, a1);
  sub_10000DCFC(v15);
  result = sub_10000DD7C(&v17, v15);
  if (result)
  {
    if (*(a3 + 23) < 0)
    {
      return sub_1000078D8(a4, *a3, *(a3 + 8));
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = *a3;
      a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
    }
  }

  else
  {
    v10 = sub_10000DB44(&v17);
    return sub_100010390(v10, a4);
  }

  return result;
}

uint64_t sub_10000EB78(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = (*(*v1 + 72))(v1);
  if ((result & 1) == 0)
  {
    v3 = *(*(v1 + 40) + 72);
    v4 = sub_100016734(v1);
    result = (*(*v3 + 88))(v3, v4, v1 + 72);
    *(v1 + 124) = result;
    *(v1 + 128) = 1;
    *(v1 + 132) = HIDWORD(result);
    *(v1 + 136) = 1;
  }

  return result;
}

uint64_t sub_10000EC1C(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != v4)
  {
    v7 = v3 == 5 && v4 == 7;
    if (v7)
    {
      v12 = *(a1 + 1);
    }

    else
    {
      if (v3 == 7 && v4 == 5)
      {
        v10 = *(a1 + 1);
        v11 = a2[1];
        return v10 == v11;
      }

      if (v3 != 6 || v4 != 7)
      {
        if (v3 != 7 || v4 != 6)
        {
          if (v3 == 6 && v4 == 5)
          {
            return *(a1 + 1) == a2[1];
          }

          result = 0;
          if (v3 == 5 && v4 == 6)
          {
            return *(a1 + 1) == a2[1];
          }

          return result;
        }

        v10 = *(a1 + 1);
        v11 = a2[1];
        return v10 == v11;
      }

      v12 = *(a1 + 1);
    }

    return *(a2 + 1) == v12;
  }

  if (*a1 > 3u)
  {
    if (*a1 <= 5u)
    {
      if (v3 == 4)
      {
        return a1[8] == *(a2 + 8);
      }
    }

    else if (v3 != 6)
    {
      if (v3 != 7)
      {
        if (v3 == 8)
        {
          v5 = a2[1];
          v44[0] = *(a1 + 1);
          v44[1] = v44[0] + 24;
          v44[2] = v44[0] + 25;
          v43[0] = v5;
          v43[1] = v5 + 24;
          v43[2] = v5 + 25;
          return sub_1000497CC(&v45, v44, v43);
        }

        return 0;
      }

      v10 = *(a1 + 1);
      v11 = *(a2 + 1);
      return v10 == v11;
    }

    return *(a1 + 1) == a2[1];
  }

  if (*a1 <= 1u)
  {
    if (!*a1)
    {
      return 1;
    }

    v14 = *(a1 + 1);
    v15 = a2[1];
    if (v14[2] == v15[2])
    {
      v18 = *v14;
      v16 = v14 + 1;
      v17 = v18;
      if (v18 != v16)
      {
        v19 = *v15;
        while (1)
        {
          v20 = *(v17 + 55);
          if (v20 >= 0)
          {
            v21 = *(v17 + 55);
          }

          else
          {
            v21 = v17[5];
          }

          v22 = *(v19 + 55);
          v23 = v22;
          if ((v22 & 0x80u) != 0)
          {
            v22 = v19[5];
          }

          if (v21 != v22)
          {
            break;
          }

          v24 = v20 >= 0 ? v17 + 4 : v17[4];
          v25 = v23 >= 0 ? v19 + 4 : v19[4];
          if (memcmp(v24, v25, v21))
          {
            break;
          }

          result = sub_10000EC1C(v17 + 7, v19 + 7);
          if (result)
          {
            v26 = v17[1];
            v27 = v17;
            if (v26)
            {
              do
              {
                v17 = v26;
                v26 = *v26;
              }

              while (v26);
            }

            else
            {
              do
              {
                v17 = v27[2];
                v7 = *v17 == v27;
                v27 = v17;
              }

              while (!v7);
            }

            v28 = v19[1];
            if (v28)
            {
              do
              {
                v29 = v28;
                v28 = *v28;
              }

              while (v28);
            }

            else
            {
              do
              {
                v29 = v19[2];
                v7 = *v29 == v19;
                v19 = v29;
              }

              while (!v7);
            }

            result = 1;
            v19 = v29;
            if (v17 != v16)
            {
              continue;
            }
          }

          return result;
        }

        return 0;
      }

      return 1;
    }

    return 0;
  }

  if (v3 != 2)
  {
    v30 = *(a1 + 1);
    v31 = a2[1];
    v32 = *(v30 + 23);
    if (v32 >= 0)
    {
      v33 = *(v30 + 23);
    }

    else
    {
      v33 = *(v30 + 8);
    }

    v34 = *(v31 + 23);
    v35 = v34;
    if ((v34 & 0x80u) != 0)
    {
      v34 = *(v31 + 8);
    }

    if (v33 == v34)
    {
      if (v32 >= 0)
      {
        v36 = *(a1 + 1);
      }

      else
      {
        v36 = *v30;
      }

      if (v35 >= 0)
      {
        v37 = a2[1];
      }

      else
      {
        v37 = *v31;
      }

      return memcmp(v36, v37, v33) == 0;
    }

    return 0;
  }

  v38 = *(a1 + 1);
  v39 = a2[1];
  v40 = *v38;
  v41 = v38[1];
  v42 = *v39;
  if (v41 - *v38 != v39[1] - *v39)
  {
    return 0;
  }

  if (v40 == v41)
  {
    return 1;
  }

  do
  {
    result = sub_10000EC1C(v40, v42);
    if (!result)
    {
      break;
    }

    v40 += 16;
    v42 += 16;
  }

  while (v40 != v41);
  return result;
}

void sub_10000EFA4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_10000EFB0(uint64_t *a1, unsigned __int8 *a2, __int128 *a3)
{
  sub_10000459C(__p, "matching");
  sub_10000F13C("", a2, __p, &v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v14.__r_.__value_.__l.__size_ == 5 && *v14.__r_.__value_.__l.__data_ == 1701274994 && *(v14.__r_.__value_.__r.__words[0] + 4) == 120;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v8 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) == 5 && LODWORD(v14.__r_.__value_.__l.__data_) == 1701274994 && v14.__r_.__value_.__s.__data_[4] == 120;
  }

  if ((v13 & 0x80000000) == 0)
  {
    if (v8)
    {
      return sub_10000E168(a1, v6, a3);
    }

LABEL_23:
    sub_10000DFA0(a2, "event");
    v10 = *a3;
    sub_100006C9C(&v14);
  }

  operator delete(__p[0]);
  if (!v8)
  {
    goto LABEL_23;
  }

  return sub_10000E168(a1, v6, a3);
}

void sub_10000F130(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10000F13C(char *__s@<X2>, unsigned __int8 *a2@<X0>, const void **a3@<X1>, std::string *a4@<X8>)
{
  sub_10000459C(__p, __s);
  sub_10000E990(a2, a3, __p, a4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10000F1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000F1F4@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v6;
  *(a3 + 16) = v6;
  v7 = sub_10000DEC4(a3, a1);
  result = sub_10000DCFC(v7);
  if (*a1 == 1)
  {
    result = sub_10000F260(*(a1 + 8), a2);
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t sub_10000F260(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_10000BFA4(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_10000BFA4(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void sub_10000F2F0(uint64_t a1)
{
  sub_10000F3B0(a1);
  sub_10000459C(__p, "initialize statistics");
  v4[0] = off_100189250;
  v4[1] = a1;
  v4[3] = v4;
  sub_10000F46C(a1, __p, v4);
  sub_10000E910(v4);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10000F3A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10000F3B0(uint64_t a1)
{
  sub_10000459C(__p, "initialize metadata");
  v4[0] = off_1001882C8;
  v4[1] = a1;
  v4[3] = v4;
  sub_10000F46C(a1, __p, v4);
  sub_10000E910(v4);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10000F460(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_10000F46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_10002B200();
  }

  return (*(*v3 + 48))(v3);
}

void *sub_10000F7BC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_10000BC18(result, a2);
    }

    sub_10002C63C();
  }

  return result;
}

uint64_t sub_10000F8A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = sub_10001D0FC(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    sub_10000298C(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    sub_10000298C(v4);
    result = v4 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

BOOL sub_10000F91C(void **a1, uint64_t a2, _BYTE *a3)
{
  if (*a3 != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Evaluator::run requires an array of operations");
  }

  if (!*(a2 + 48))
  {
    *(a2 + 48) = a1;
  }

  ++*(a2 + 72);
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v6;
  v13[1] = v6;
  sub_10000DEC4(v13, a3);
  sub_10000DF14(v13);
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v7;
  v11[1] = v7;
  sub_10000DEC4(v11, a3);
  sub_10000DCFC(v11);
  for (result = sub_10000DD7C(v13, v11); !result; result = sub_10000DD7C(v13, v11))
  {
    v9 = sub_10000DB44(v13);
    sub_100014C9C(a1, a2, v9);
    sub_100012BFC(v13);
  }

  --*(a2 + 72);
  return result;
}

void sub_10000FAE8(void *a1, uint64_t *a2, unsigned __int8 **a3, uint64_t *a4)
{
  sub_100017468(a1);
  v8 = sub_100010054(a1, a3);
  v10 = v9;
  v11 = (*a2 + 16);
  v12 = strlen("com.apple.coreanalytics.heartbeat.2hours");
  v13 = *(*a2 + 39);
  if (v13 < 0)
  {
    if (v12 != *(*a2 + 24))
    {
      goto LABEL_18;
    }

    if (v12 == -1)
    {
      sub_10002EAB0();
    }

    v11 = *v11;
  }

  else if (v12 != v13)
  {
    goto LABEL_18;
  }

  if (!memcmp(v11, "com.apple.coreanalytics.heartbeat.2hours", v12))
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&buf[16] = v14;
    v42 = v14;
    *buf = v14;
    sub_1000E2550(v8, v8 + 3, buf);
    v15 = qword_100192DC0;
    if (os_log_type_enabled(qword_100192DC0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = &buf[24];
      v17 = buf;
      if (buf[23] < 0)
      {
        v17 = *buf;
      }

      if (v42 < 0)
      {
        v16 = *&buf[24];
      }

      *v36 = 136446722;
      *&v36[4] = "com.apple.coreanalytics.heartbeat.2hours";
      v37 = 2080;
      v38 = v17;
      v39 = 2080;
      v40 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[AggregatingTransform: %{public}s] Before accumulation: dimensions: %s, measures: %s", v36, 0x20u);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(*&buf[24]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_18:
  if (v8[3] == v8[4])
  {
    sub_10001BA24(v8 + 24, (a4[1] - *a4) >> 4);
  }

  v18 = *a4;
  v19 = a4[1];
  v20 = v19 - *a4;
  if (v20 >> 4 == (a1[25] - a1[24]) >> 2 && v20 == v8[4] - v8[3])
  {
    if (v19 != v18)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        sub_10001DFD4(*(a1[24] + 4 * v22++), (v8[3] + v21), (v18 + v21));
        v18 = *a4;
        v21 += 16;
      }

      while (v22 < (a4[1] - *a4) >> 4);
    }

    v23 = *a2;
    v24 = (v23 + 16);
    v25 = strlen("com.apple.coreanalytics.heartbeat.2hours");
    v26 = *(v23 + 39);
    if (v26 < 0)
    {
      if (v25 != *(v23 + 24))
      {
        goto LABEL_44;
      }

      if (v25 == -1)
      {
        sub_10002EAB0();
      }

      v24 = *v24;
    }

    else if (v25 != v26)
    {
LABEL_44:
      if (v10)
      {
        sub_10001BA54(a1, v8);
        sub_10001BFF4(a1);
      }

      return;
    }

    if (!memcmp(v24, "com.apple.coreanalytics.heartbeat.2hours", v25))
    {
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&buf[16] = v28;
      v42 = v28;
      *buf = v28;
      sub_1000E2550(v8, v8 + 3, buf);
      v29 = qword_100192DC0;
      if (os_log_type_enabled(qword_100192DC0, OS_LOG_TYPE_DEFAULT))
      {
        v30 = &buf[24];
        v31 = buf;
        if (buf[23] < 0)
        {
          v31 = *buf;
        }

        if (v42 < 0)
        {
          v30 = *&buf[24];
        }

        *v36 = 136446722;
        *&v36[4] = "com.apple.coreanalytics.heartbeat.2hours";
        v37 = 2080;
        v38 = v31;
        v39 = 2080;
        v40 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[AggregatingTransform: %{public}s] After accumulation: dimensions: %s, measures: %s", v36, 0x20u);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(*&buf[24]);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_44;
  }

  v27 = qword_100192D68;
  if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_ERROR))
  {
    sub_1000C7D60(a1, v36);
    v32 = v39 >= 0 ? v36 : *v36;
    v33 = (a1[25] - a1[24]) >> 2;
    v34 = (v8[4] - v8[3]) >> 4;
    v35 = (a4[1] - *a4) >> 4;
    *buf = 136446978;
    *&buf[4] = v32;
    *&buf[12] = 2048;
    *&buf[14] = v33;
    *&buf[22] = 2048;
    *&buf[24] = v34;
    LOWORD(v42) = 2048;
    *(&v42 + 2) = v35;
    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[%{public}sTransform] Error: transform has a size mismatch between extracted measures, aggregating measures, and aggregation functions { functions=%zd, running_measures=%zd, extracted_measures=%zd} ", buf, 0x2Au);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(*v36);
    }
  }
}

void sub_10000FF50(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_10000FF70(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = *a2;
  *(a1 + 1) = 0;
  sub_10000298C(a2);
  v4 = *a1;
  if (v4 > 4)
  {
    if (*a1 > 6u)
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v7 = *(a2 + 1);
          sub_100030FB4();
        }

        goto LABEL_20;
      }
    }

    else if (v4 != 5 && v4 != 6)
    {
      goto LABEL_20;
    }

    v6 = *(a2 + 1);
    goto LABEL_19;
  }

  if (*a1 <= 2u)
  {
    if (v4 == 1)
    {
      v8 = *(a2 + 1);
      sub_100016D78();
    }

    if (v4 == 2)
    {
      v5 = *(a2 + 1);
      sub_100013A3C();
    }

    goto LABEL_20;
  }

  if (v4 == 3)
  {
    v9 = *(a2 + 1);
    sub_100006CE8();
  }

  if (v4 == 4)
  {
    v6 = a2[8];
LABEL_19:
    *(a1 + 1) = v6;
  }

LABEL_20:
  sub_10000298C(a1);
  return a1;
}

unsigned __int8 **sub_100010054(void *a1, unsigned __int8 **a2)
{
  if (((*(*a1 + 72))(a1) & 1) == 0)
  {
    sub_10012784C();
  }

  v5 = a1[20];
  v4 = a1[21];
  v6 = a1 + 20;
  if (v4 == v5)
  {
    v5 = a1[21];
  }

  else
  {
    v23 = a1 + 20;
    v24 = a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4);
    do
    {
      v8 = v7 >> 1;
      v9 = *a2;
      v10 = a2[1];
      if (*a2 != v10)
      {
        v11 = &v5[6 * v8];
        v13 = *v11;
        v12 = v11[1];
        while (v13 != v12 && (sub_10001D7F8(v13, v9) & 1) == 0)
        {
          if ((sub_10001D7F8(v9, v13) & 1) == 0)
          {
            v13 += 16;
            v9 += 16;
            if (v9 != v10)
            {
              continue;
            }
          }

          goto LABEL_12;
        }

        v5 = v11 + 6;
        v8 = v7 + ~v8;
      }

LABEL_12:
      v7 = v8;
    }

    while (v8);
    v6 = v23;
    v4 = v24[21];
  }

  if (v4 == v5 || (v14 = *v5, v15 = v5[1], v16 = *a2, v17 = a2[1], v15 - *v5 != v17 - *a2))
  {
LABEL_29:
    memset(v26, 0, 48);
    v19 = sub_100017B44(v6, v5, v26);
    v25[0] = &v26[3];
    sub_100004E54(v25);
    v25[0] = v26;
    sub_100004E54(v25);
    v21 = *a2;
    v20 = a2[1];
    v26[0] = v19;
    while (v21 != v20)
    {
      sub_1000103DC(v26, v21);
      v21 += 16;
    }

    sub_100017D9C(v26);
  }

  if (v14 != v15 && v16 != v17)
  {
    while (sub_10000EC1C(v14, v16))
    {
      v14 += 16;
      v16 += 2;
      if (v14 == v15 || v16 == v17)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_29;
  }

LABEL_22:
  if (v14 != v15 || v16 != v17)
  {
    goto LABEL_29;
  }

  return v5;
}

void sub_100010364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

std::string *sub_100010390@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return sub_100013410(a1, a2);
}

void sub_1000103C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1000103DC(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  if (v4 >= *(*a1 + 16))
  {
    v5 = sub_100016F28(*a1, a2);
  }

  else
  {
    sub_10000FF70(*(*a1 + 8), a2);
    v5 = v4 + 16;
    *(v3 + 8) = v4 + 16;
  }

  *(v3 + 8) = v5;
  return a1;
}

void sub_100010440(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100010440(a1, *a2);
    sub_100010440(a1, *(a2 + 1));
    sub_10000298C(a2 + 56);
    sub_1000048FC(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_1000104B8(void (****a1)(void), uint64_t **a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  if (v10 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v10 != 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4)
          {
            v12 = *a1;
            v13 = (**a1)[1];
            *(a2 + 8);
            goto LABEL_71;
          }

LABEL_148:
          sub_10011A278();
        }

        v25 = *a1;
        (***a1)();
        sub_1000180F0(a1, a2[1], a4);
        v13 = ***a1;
LABEL_134:

        return v13();
      }

      v33 = *a1;
      v34 = **a1;
      if (*a2[1] != a2[1][1])
      {
        if (!a3)
        {
          (*v34)();
          v56 = a2[1];
          v58 = *v56;
          v57 = v56[1];
          if (v58 != v57 - 16)
          {
            do
            {
              sub_1000104B8(a1, v58, 0, a4, a5, a6);
              (***a1)();
              v58 += 16;
              v59 = a2[1];
              v57 = v59[1];
            }

            while (v58 != v57 - 16);
            v58 = *v59;
          }

          if (v58 == v57)
          {
            sub_10011A170();
          }

          sub_1000104B8(a1, v57 - 16, 0, a4, a5, a6);
          goto LABEL_117;
        }

        v34[1]();
        v35 = a6 + a5;
        v36 = a1 + 76;
        v37 = *(a1 + 631);
        if ((v37 & 0x80000000) != 0)
        {
          v38 = a1[77];
          if (v38 < v35)
          {
            goto LABEL_144;
          }
        }

        else if (v35 > v37)
        {
          v38 = *(a1 + 631);
LABEL_144:
          std::string::resize((a1 + 76), 2 * v38, 32);
        }

        v78 = a2[1];
        v80 = *v78;
        v79 = v78[1];
        if (v80 != v79 - 16)
        {
          do
          {
            v81 = a1 + 76;
            if (*(a1 + 631) < 0)
            {
              v81 = *v36;
            }

            ((**a1)[1])(*a1, v81, (a6 + a5));
            sub_1000104B8(a1, v80, 1, a4, a5, (a6 + a5));
            ((**a1)[1])(*a1, ",\n", 2);
            v80 += 16;
            v82 = a2[1];
            v79 = v82[1];
          }

          while (v80 != v79 - 16);
          v80 = *v82;
        }

        if (v80 == v79)
        {
          sub_10011A19C();
        }

        v83 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v83 = *v36;
        }

        ((**a1)[1])(*a1, v83, (a6 + a5));
        sub_1000104B8(a1, a2[1][1] - 16, 1, a4, a5, (a6 + a5));
        (***a1)();
        if (*(a1 + 631) < 0)
        {
          v36 = *v36;
        }

        ((**a1)[1])(*a1, v36, a6);
LABEL_117:
        v13 = ***a1;
        goto LABEL_134;
      }

      v44 = v34[1];
      goto LABEL_45;
    }

    if (*a2)
    {
      v15 = *a1;
      v16 = **a1;
      if (!a2[1][2])
      {
        v44 = v16[1];
LABEL_45:

        return v44();
      }

      if (!a3)
      {
        (*v16)();
        v47 = a2[1];
        v48 = *v47;
        if (v47[2] != 1)
        {
          v49 = 0;
          do
          {
            (***a1)(*a1, 34);
            sub_1000180F0(a1, v48 + 4, a4);
            ((**a1)[1])(*a1, ":", 2);
            sub_1000104B8(a1, v48 + 7, 0, a4, a5, a6);
            (***a1)();
            v50 = v48[1];
            v51 = v48;
            if (v50)
            {
              do
              {
                v48 = v50;
                v50 = *v50;
              }

              while (v50);
            }

            else
            {
              do
              {
                v48 = v51[2];
                v52 = *v48 == v51;
                v51 = v48;
              }

              while (!v52);
            }

            ++v49;
            v47 = a2[1];
          }

          while (v49 < v47[2] - 1);
        }

        v53 = v47 + 1;
        if (v48 == v53)
        {
          sub_10011A1F4();
        }

        v54 = v48[1];
        if (v54)
        {
          do
          {
            v55 = v54;
            v54 = *v54;
          }

          while (v54);
        }

        else
        {
          v84 = v48;
          do
          {
            v55 = v84[2];
            v52 = *v55 == v84;
            v84 = v55;
          }

          while (!v52);
        }

        if (v55 != v53)
        {
          sub_10011A1C8();
        }

        (***a1)(*a1, 34);
        sub_1000180F0(a1, v48 + 4, a4);
        ((**a1)[1])(*a1, ":", 2);
        sub_1000104B8(a1, v48 + 7, 0, a4, a5, a6);
        goto LABEL_133;
      }

      v16[1]();
      v17 = a6 + a5;
      v18 = a1 + 76;
      v19 = *(a1 + 631);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = a1[77];
        if (v20 < v17)
        {
          goto LABEL_142;
        }
      }

      else if (v17 > v19)
      {
        v20 = *(a1 + 631);
LABEL_142:
        std::string::resize((a1 + 76), 2 * v20, 32);
      }

      v69 = a2[1];
      v70 = *v69;
      if (v69[2] == 1)
      {
        v71 = *v69;
      }

      else
      {
        v72 = 0;
        do
        {
          v73 = a1 + 76;
          if (*(a1 + 631) < 0)
          {
            v73 = *v18;
          }

          ((**a1)[1])(*a1, v73, (a6 + a5));
          (***a1)();
          sub_1000180F0(a1, v70 + 4, a4);
          ((**a1)[1])(*a1, ": ", 3);
          sub_1000104B8(a1, v70 + 7, 1, a4, a5, (a6 + a5));
          ((**a1)[1])(*a1, ",\n", 2);
          v74 = v70[1];
          if (v74)
          {
            do
            {
              v71 = v74;
              v74 = *v74;
            }

            while (v74);
          }

          else
          {
            do
            {
              v71 = v70[2];
              v52 = *v71 == v70;
              v70 = v71;
            }

            while (!v52);
          }

          ++v72;
          v69 = a2[1];
          v70 = v71;
        }

        while (v72 < v69[2] - 1);
      }

      v75 = v69 + 1;
      if (v71 == v75)
      {
        sub_10011A24C();
      }

      v76 = v71[1];
      if (v76)
      {
        do
        {
          v77 = v76;
          v76 = *v76;
        }

        while (v76);
      }

      else
      {
        v85 = v71;
        do
        {
          v77 = v85[2];
          v52 = *v77 == v85;
          v85 = v77;
        }

        while (!v52);
      }

      if (v77 != v75)
      {
        sub_10011A220();
      }

      v86 = a1 + 76;
      if (*(a1 + 631) < 0)
      {
        v86 = *v18;
      }

      ((**a1)[1])(*a1, v86, (a6 + a5));
      (***a1)();
      sub_1000180F0(a1, v71 + 4, a4);
      ((**a1)[1])(*a1, ": ", 3);
      sub_1000104B8(a1, v71 + 7, 1, a4, a5, (a6 + a5));
      (***a1)();
      if (*(a1 + 631) < 0)
      {
        v87 = *v18;
      }

      v68 = (**a1)[1];
LABEL_132:
      v68();
LABEL_133:
      v13 = ***a1;
      goto LABEL_134;
    }

    v23 = *a1;
    v13 = (**a1)[1];
LABEL_71:

    return v13();
  }

  if (*a2 <= 6u)
  {
    if (v10 == 5)
    {
      v24 = a2[1];

      return sub_10001E6DC(a1, v24);
    }

    else
    {
      if (v10 != 6)
      {
        goto LABEL_148;
      }

      v21 = a2[1];

      return sub_10001EF14(a1, v21);
    }
  }

  else
  {
    switch(v10)
    {
      case 7u:
        v39 = *(a2 + 1);

        return sub_10002757C(a1, v39);
      case 8u:
        v26 = *a1;
        v27 = (**a1)[1];
        if (a3)
        {
          v27();
          v28 = (a6 + a5);
          v29 = a1 + 76;
          v30 = *(a1 + 631);
          if ((v30 & 0x80000000) != 0)
          {
            v60 = a1[77];
            if (v60 >= v28)
            {
              v31 = *a1;
LABEL_76:
              v32 = *v29;
              goto LABEL_77;
            }
          }

          else
          {
            if (v28 <= v30)
            {
              v31 = *a1;
              v32 = a1 + 76;
LABEL_77:
              ((*v31)[1])(v31, v32, v28);
              ((**a1)[1])(*a1, "bytes: [", 10);
              v61 = *a2[1];
              v62 = a2[1][1];
              v63 = *a2[1];
              if (v63 != v62)
              {
                for (; v63 != v62 - 1; v62 = a2[1][1])
                {
                  v64 = *v63++;
                  sub_10002E7A4(a1, v64);
                  ((**a1)[1])(*a1, ", ", 2);
                }

                sub_10002E7A4(a1, *(v62 - 1));
              }

              ((**a1)[1])(*a1, "],\n", 3);
              v65 = a1 + 76;
              if (*(a1 + 631) < 0)
              {
                v65 = *v29;
              }

              ((**a1)[1])(*a1, v65, v28);
              ((**a1)[1])(*a1, "subtype: ", 11);
              v66 = a2[1];
              if (*(v66 + 25) == 1)
              {
                sub_10002E7A4(a1, *(v66 + 24));
              }

              else
              {
                ((**a1)[1])(*a1, "null", 4);
              }

              (***a1)(*a1, 10);
              if (*(a1 + 631) < 0)
              {
                v67 = *v29;
              }

              v68 = (**a1)[1];
              goto LABEL_132;
            }

            v60 = *(a1 + 631);
          }

          std::string::resize((a1 + 76), 2 * v60, 32);
          v31 = *a1;
          v32 = a1 + 76;
          if ((*(a1 + 631) & 0x80000000) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        v27();
        v40 = *a2[1];
        v41 = a2[1][1];
        v42 = *a2[1];
        if (v42 != v41)
        {
          while (v42 != v41 - 1)
          {
            v43 = *v42++;
            sub_10002E7A4(a1, v43);
            (***a1)(*a1, 44);
            v41 = a2[1][1];
          }

          sub_10002E7A4(a1, *(v41 - 1));
        }

        ((**a1)[1])(*a1, "],subtype:", 12);
        v45 = a2[1];
        if (*(v45 + 25) != 1)
        {
          v13 = (**a1)[1];
          goto LABEL_71;
        }

        sub_10002E7A4(a1, *(v45 + 24));
        v46 = ***a1;

        return v46();
      case 9u:
        v14 = *a1;
        v13 = (**a1)[1];
        goto LABEL_71;
      default:
        goto LABEL_148;
    }
  }
}