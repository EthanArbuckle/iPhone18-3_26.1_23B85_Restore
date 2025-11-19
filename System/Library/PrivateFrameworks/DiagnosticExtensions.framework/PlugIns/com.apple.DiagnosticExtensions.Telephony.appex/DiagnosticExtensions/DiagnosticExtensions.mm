void logs::convertToTraceProperties(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_null_create();
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v5 = xpc_array_create(0, 0);
  v6 = v5;
  if (v5)
  {
    *a2 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    *a2 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v6) == &_xpc_type_array)
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  *a2 = v7;
LABEL_9:
  xpc_release(v6);
  value = xpc_dictionary_get_value(*a1, "EnableBasebandLogging");
  v9 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v9 = xpc_null_create();
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    xpc_retain(v9);
    v10 = v9;
  }

  else
  {
    v10 = xpc_null_create();
  }

LABEL_16:
  xpc_release(v9);
  if (xpc_get_type(v10) != &_xpc_type_dictionary)
  {
    goto LABEL_287;
  }

  v11 = xpc_dictionary_get_value(v10, "Exclude");
  object.__r_.__value_.__r.__words[0] = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  v13 = xpc::dyn_cast_or_default(&object, 4, v12);
  xpc_release(object.__r_.__value_.__l.__data_);
  if (v13 > 3 || ((v13 & 1) == 0 || (v14 = capabilities::radio::maverick(v14), (v14 & 1) == 0)) && (v13 < 2 || !capabilities::radio::ice(v14)))
  {
    v18 = 1;
    goto LABEL_48;
  }

  if ((atomic_load_explicit(&qword_100034678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100034678))
  {
    qword_100034680 = 0;
    qword_100034688 = 0;
    __cxa_guard_release(&qword_100034678);
  }

  if (qword_100034670 == -1)
  {
    v15 = qword_100034688;
    if (!os_log_type_enabled(qword_100034688, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  dispatch_once(&qword_100034670, &stru_100030A28);
  v15 = qword_100034688;
  if (os_log_type_enabled(qword_100034688, OS_LOG_TYPE_DEFAULT))
  {
LABEL_28:
    LODWORD(object.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(object.__r_.__value_.__r.__words[0]) = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not enabling baseband logging for this vendor: %d", &object, 8u);
  }

LABEL_29:
  v16 = xpc_dictionary_create(0, 0, 0);
  if (v16 || (v16 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v16) == &_xpc_type_dictionary)
    {
      xpc_retain(v16);
      v17 = v16;
    }

    else
    {
      v17 = xpc_null_create();
    }
  }

  else
  {
    v17 = xpc_null_create();
    v16 = 0;
  }

  xpc_release(v16);
  v19 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v19);
  v20 = xpc_string_create(abm::kTraceBaseband);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v17, abm::kKeyTraceName, v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  v22 = xpc_string_create(abm::kKeyEnabled);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v17, abm::kKeyTracePropertyName, v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  std::to_string(&object, 0);
  __p = object;
  if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v25 = xpc_string_create(p_p);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v17, abm::kKeyTracePropertyValue, v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(*a2, v17);
  v18 = 0;
  v4 = v17;
LABEL_48:
  v27 = xpc_dictionary_get_value(v10, "Profile");
  object.__r_.__value_.__r.__words[0] = v27;
  if (v27)
  {
    xpc_retain(v27);
  }

  else
  {
    object.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  v29 = xpc::dyn_cast_or_default(&object, 1, v28);
  xpc_release(object.__r_.__value_.__l.__data_);
  if (v29 > 0x11)
  {
    v30 = v18;
  }

  else
  {
    v30 = 0;
  }

  if (v30 == 1)
  {
    if ((atomic_load_explicit(&qword_100034678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100034678))
    {
      qword_100034680 = 0;
      qword_100034688 = 0;
      __cxa_guard_release(&qword_100034678);
    }

    if (qword_100034670 == -1)
    {
      v31 = qword_100034688;
      if (!os_log_type_enabled(qword_100034688, OS_LOG_TYPE_ERROR))
      {
LABEL_58:
        v18 = 0;
        goto LABEL_59;
      }
    }

    else
    {
      dispatch_once(&qword_100034670, &stru_100030A28);
      v31 = qword_100034688;
      if (!os_log_type_enabled(qword_100034688, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    LODWORD(object.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(object.__r_.__value_.__r.__words[0]) = v29;
    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Invalid profile index: %d", &object, 8u);
    goto LABEL_58;
  }

LABEL_59:
  v32 = xpc_dictionary_get_value(v10, "History");
  object.__r_.__value_.__r.__words[0] = v32;
  if (v32)
  {
    xpc_retain(v32);
  }

  else
  {
    object.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  v34 = xpc::dyn_cast_or_default(&object, 8, v33);
  xpc_release(object.__r_.__value_.__l.__data_);
  v36 = capabilities::abs::profileBasebandHistoryMB(v35);
  v37 = capabilities::radio::dal(v36);
  v38 = 1;
  if ((v37 & 1) == 0)
  {
    v38 = sub_10001B520() ^ 1;
  }

  v39 = (1 << (v38 + v34));
  if (v36 > v39)
  {
    if ((atomic_load_explicit(&qword_100034678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100034678))
    {
      qword_100034680 = 0;
      qword_100034688 = 0;
      __cxa_guard_release(&qword_100034678);
    }

    if (qword_100034670 == -1)
    {
      v40 = qword_100034688;
      if (!os_log_type_enabled(qword_100034688, OS_LOG_TYPE_DEFAULT))
      {
LABEL_69:
        LODWORD(v39) = v36;
        goto LABEL_70;
      }
    }

    else
    {
      dispatch_once(&qword_100034670, &stru_100030A28);
      v40 = qword_100034688;
      if (!os_log_type_enabled(qword_100034688, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_69;
      }
    }

    LODWORD(object.__r_.__value_.__l.__data_) = 134217984;
    *(object.__r_.__value_.__r.__words + 4) = v36;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Setting to minimum history size %lu", &object, 0xCu);
    goto LABEL_69;
  }

LABEL_70:
  v41 = xpc_dictionary_get_value(v10, "Sleep");
  object.__r_.__value_.__r.__words[0] = v41;
  if (v41)
  {
    xpc_retain(v41);
  }

  else
  {
    object.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  v43 = xpc::dyn_cast_or_default(&object, 0, v42);
  xpc_release(object.__r_.__value_.__l.__data_);
  if (v43 > 2)
  {
    v44 = v18;
  }

  else
  {
    v44 = 0;
  }

  if (v44 == 1)
  {
    if ((atomic_load_explicit(&qword_100034678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100034678))
    {
      qword_100034680 = 0;
      qword_100034688 = 0;
      __cxa_guard_release(&qword_100034678);
    }

    if (qword_100034670 != -1)
    {
      dispatch_once(&qword_100034670, &stru_100030A28);
      v45 = qword_100034688;
      if (!os_log_type_enabled(qword_100034688, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_287;
      }

      goto LABEL_80;
    }

    v45 = qword_100034688;
    if (os_log_type_enabled(qword_100034688, OS_LOG_TYPE_ERROR))
    {
LABEL_80:
      LODWORD(object.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(object.__r_.__value_.__r.__words[0]) = v43;
      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Invalid sleep index: %d", &object, 8u);
    }

LABEL_287:
    v115 = v4;
    goto LABEL_288;
  }

  if (!v18)
  {
    goto LABEL_287;
  }

  v46 = xpc_dictionary_create(0, 0, 0);
  if (v46 || (v46 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v46) == &_xpc_type_dictionary)
    {
      xpc_retain(v46);
      v47 = v46;
    }

    else
    {
      v47 = xpc_null_create();
    }
  }

  else
  {
    v47 = xpc_null_create();
    v46 = 0;
  }

  xpc_release(v46);
  v48 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v48);
  string = abm::kTraceBaseband;
  v49 = xpc_string_create(abm::kTraceBaseband);
  if (!v49)
  {
    v49 = xpc_null_create();
  }

  key = abm::kKeyTraceName;
  xpc_dictionary_set_value(v47, abm::kKeyTraceName, v49);
  v50 = xpc_null_create();
  xpc_release(v49);
  xpc_release(v50);
  v51 = xpc_string_create(abm::kKeyTracePrimaryConfigFile);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  v169 = abm::kKeyTracePropertyName;
  xpc_dictionary_set_value(v47, abm::kKeyTracePropertyName, v51);
  v52 = xpc_null_create();
  xpc_release(v51);
  xpc_release(v52);
  v53 = &(&off_1000308E8)[2 * v29];
  v54 = xpc_string_create(*v53);
  if (!v54)
  {
    v54 = xpc_null_create();
  }

  v168 = abm::kKeyTracePropertyValue;
  xpc_dictionary_set_value(v47, abm::kKeyTracePropertyValue, v54);
  v55 = xpc_null_create();
  xpc_release(v54);
  xpc_release(v55);
  xpc_array_append_value(*a2, v47);
  v56 = xpc_dictionary_create(0, 0, 0);
  if (v56 || (v56 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v56) == &_xpc_type_dictionary)
    {
      xpc_retain(v56);
      v57 = v56;
    }

    else
    {
      v57 = xpc_null_create();
    }
  }

  else
  {
    v57 = xpc_null_create();
    v56 = 0;
  }

  xpc_release(v56);
  v58 = xpc_null_create();
  xpc_release(v47);
  xpc_release(v58);
  v59 = xpc_string_create(string);
  if (!v59)
  {
    v59 = xpc_null_create();
  }

  xpc_dictionary_set_value(v57, key, v59);
  v60 = xpc_null_create();
  xpc_release(v59);
  xpc_release(v60);
  v61 = xpc_string_create(abm::kKeyTraceSecondaryConfigFile);
  if (!v61)
  {
    v61 = xpc_null_create();
  }

  xpc_dictionary_set_value(v57, v169, v61);
  v62 = xpc_null_create();
  xpc_release(v61);
  xpc_release(v62);
  v63 = xpc_string_create(v53[1]);
  if (!v63)
  {
    v63 = xpc_null_create();
  }

  xpc_dictionary_set_value(v57, v168, v63);
  v64 = xpc_null_create();
  xpc_release(v63);
  xpc_release(v64);
  xpc_array_append_value(*a2, v57);
  v65 = xpc_dictionary_create(0, 0, 0);
  if (v65 || (v65 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v65) == &_xpc_type_dictionary)
    {
      xpc_retain(v65);
      v66 = v65;
    }

    else
    {
      v66 = xpc_null_create();
    }
  }

  else
  {
    v66 = xpc_null_create();
    v65 = 0;
  }

  xpc_release(v65);
  v67 = xpc_null_create();
  xpc_release(v57);
  xpc_release(v67);
  v68 = xpc_string_create(string);
  if (!v68)
  {
    v68 = xpc_null_create();
  }

  xpc_dictionary_set_value(v66, key, v68);
  v69 = xpc_null_create();
  xpc_release(v68);
  xpc_release(v69);
  v70 = xpc_string_create(abm::kKeyTraceHistory);
  if (!v70)
  {
    v70 = xpc_null_create();
  }

  xpc_dictionary_set_value(v66, v169, v70);
  v71 = xpc_null_create();
  xpc_release(v70);
  xpc_release(v71);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&object, v39);
  __p = object;
  if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = &__p;
  }

  else
  {
    v72 = __p.__r_.__value_.__r.__words[0];
  }

  v73 = xpc_string_create(v72);
  if (!v73)
  {
    v73 = xpc_null_create();
  }

  xpc_dictionary_set_value(v66, v168, v73);
  v74 = xpc_null_create();
  xpc_release(v73);
  xpc_release(v74);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(*a2, v66);
  v75 = xpc_dictionary_create(0, 0, 0);
  if (v75 || (v75 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v75) == &_xpc_type_dictionary)
    {
      xpc_retain(v75);
      v76 = v75;
    }

    else
    {
      v76 = xpc_null_create();
    }
  }

  else
  {
    v76 = xpc_null_create();
    v75 = 0;
  }

  xpc_release(v75);
  v77 = xpc_null_create();
  xpc_release(v66);
  xpc_release(v77);
  v78 = xpc_string_create(string);
  if (!v78)
  {
    v78 = xpc_null_create();
  }

  xpc_dictionary_set_value(v76, key, v78);
  v79 = xpc_null_create();
  xpc_release(v78);
  xpc_release(v79);
  v80 = xpc_string_create(diag::config::kEnabledDuringSleepKey);
  if (!v80)
  {
    v80 = xpc_null_create();
  }

  xpc_dictionary_set_value(v76, v169, v80);
  v81 = xpc_null_create();
  xpc_release(v80);
  xpc_release(v81);
  v83 = capabilities::radio::initium(v82);
  if (v83)
  {
    defaults::bbtrace::trace_sleep_mode(v83);
    capabilities::trace::asString();
    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_object = &object;
    }

    else
    {
      p_object = object.__r_.__value_.__r.__words[0];
    }

    v85 = xpc_string_create(p_object);
    if (!v85)
    {
      v85 = xpc_null_create();
    }

    xpc_dictionary_set_value(v76, v168, v85);
    v86 = xpc_null_create();
    xpc_release(v85);
    xpc_release(v86);
    if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(object.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v87 = diag::config::toString();
    v88 = xpc_string_create(v87);
    if (!v88)
    {
      v88 = xpc_null_create();
    }

    xpc_dictionary_set_value(v76, v168, v88);
    v89 = xpc_null_create();
    xpc_release(v88);
    xpc_release(v89);
  }

  xpc_array_append_value(*a2, v76);
  v90 = xpc_dictionary_create(0, 0, 0);
  if (v90 || (v90 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v90) == &_xpc_type_dictionary)
    {
      xpc_retain(v90);
      v91 = v90;
    }

    else
    {
      v91 = xpc_null_create();
    }
  }

  else
  {
    v91 = xpc_null_create();
    v90 = 0;
  }

  xpc_release(v90);
  v92 = xpc_null_create();
  xpc_release(v76);
  xpc_release(v92);
  v93 = xpc_string_create(string);
  if (!v93)
  {
    v93 = xpc_null_create();
  }

  xpc_dictionary_set_value(v91, key, v93);
  v94 = xpc_null_create();
  xpc_release(v93);
  xpc_release(v94);
  v95 = abm::kKeyEnabled;
  v96 = xpc_string_create(abm::kKeyEnabled);
  if (!v96)
  {
    v96 = xpc_null_create();
  }

  xpc_dictionary_set_value(v91, v169, v96);
  v97 = xpc_null_create();
  xpc_release(v96);
  xpc_release(v97);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&object, 1);
  __p = object;
  if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v98 = &__p;
  }

  else
  {
    v98 = __p.__r_.__value_.__r.__words[0];
  }

  v99 = xpc_string_create(v98);
  if (!v99)
  {
    v99 = xpc_null_create();
  }

  xpc_dictionary_set_value(v91, v168, v99);
  v100 = xpc_null_create();
  xpc_release(v99);
  xpc_release(v100);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(*a2, v91);
  v102 = capabilities::diag::supportsQDSS(v101);
  if (v102)
  {
    v103 = xpc_dictionary_create(0, 0, 0);
    if (v103 || (v103 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v103) == &_xpc_type_dictionary)
      {
        xpc_retain(v103);
        v104 = v103;
      }

      else
      {
        v104 = xpc_null_create();
      }
    }

    else
    {
      v104 = xpc_null_create();
      v103 = 0;
    }

    xpc_release(v103);
    v105 = xpc_null_create();
    xpc_release(v91);
    xpc_release(v105);
    v106 = xpc_string_create(string);
    if (!v106)
    {
      v106 = xpc_null_create();
    }

    xpc_dictionary_set_value(v104, key, v106);
    v107 = xpc_null_create();
    xpc_release(v106);
    xpc_release(v107);
    v108 = xpc_string_create(abm::kKeyTraceHighTput);
    if (!v108)
    {
      v108 = xpc_null_create();
    }

    xpc_dictionary_set_value(v104, v169, v108);
    v109 = xpc_null_create();
    xpc_release(v108);
    xpc_release(v109);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&object, 1);
    __p = object;
    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v110 = &__p;
    }

    else
    {
      v110 = __p.__r_.__value_.__r.__words[0];
    }

    v111 = xpc_string_create(v110);
    if (!v111)
    {
      v111 = xpc_null_create();
    }

    xpc_dictionary_set_value(v104, v168, v111);
    v112 = xpc_null_create();
    xpc_release(v111);
    xpc_release(v112);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a2, v104);
  }

  else
  {
    v104 = v91;
  }

  v113 = capabilities::diag::supportsADPL(v102);
  if (v113)
  {
    v114 = xpc_dictionary_create(0, 0, 0);
    if (v114 || (v114 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v114) == &_xpc_type_dictionary)
      {
        xpc_retain(v114);
        v115 = v114;
      }

      else
      {
        v115 = xpc_null_create();
      }
    }

    else
    {
      v115 = xpc_null_create();
      v114 = 0;
    }

    xpc_release(v114);
    v116 = xpc_null_create();
    xpc_release(v104);
    xpc_release(v116);
    v117 = xpc_string_create(string);
    if (!v117)
    {
      v117 = xpc_null_create();
    }

    xpc_dictionary_set_value(v115, key, v117);
    v118 = xpc_null_create();
    xpc_release(v117);
    xpc_release(v118);
    v119 = xpc_string_create(abm::kKeyTraceDataLogging);
    if (!v119)
    {
      v119 = xpc_null_create();
    }

    xpc_dictionary_set_value(v115, v169, v119);
    v120 = xpc_null_create();
    xpc_release(v119);
    xpc_release(v120);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&object, 1);
    __p = object;
    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v121 = &__p;
    }

    else
    {
      v121 = __p.__r_.__value_.__r.__words[0];
    }

    v122 = xpc_string_create(v121);
    if (!v122)
    {
      v122 = xpc_null_create();
    }

    xpc_dictionary_set_value(v115, v168, v122);
    v123 = xpc_null_create();
    xpc_release(v122);
    xpc_release(v123);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a2, v115);
  }

  else
  {
    v115 = v104;
  }

  if (capabilities::radio::initium(v113))
  {
    v124 = xpc_dictionary_get_value(v10, "PrivacyLevel");
    object.__r_.__value_.__r.__words[0] = v124;
    if (v124)
    {
      xpc_retain(v124);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v126 = xpc::dyn_cast_or_default(&object, 0xFFFFFFFFFFFFFFFFLL, v125);
    xpc_release(object.__r_.__value_.__l.__data_);
    if (v126 < 4)
    {
      v129 = xpc_dictionary_create(0, 0, 0);
      if (v129 || (v129 = xpc_null_create()) != 0)
      {
        if (xpc_get_type(v129) == &_xpc_type_dictionary)
        {
          xpc_retain(v129);
          v128 = v129;
        }

        else
        {
          v128 = xpc_null_create();
        }
      }

      else
      {
        v128 = xpc_null_create();
        v129 = 0;
      }

      xpc_release(v129);
      v130 = xpc_null_create();
      xpc_release(v115);
      xpc_release(v130);
      v131 = xpc_string_create(string);
      if (!v131)
      {
        v131 = xpc_null_create();
      }

      xpc_dictionary_set_value(v128, key, v131);
      v132 = xpc_null_create();
      xpc_release(v131);
      xpc_release(v132);
      v133 = xpc_string_create(abm::kKeyTracePrivacyLevel);
      if (!v133)
      {
        v133 = xpc_null_create();
      }

      xpc_dictionary_set_value(v128, v169, v133);
      v134 = xpc_null_create();
      xpc_release(v133);
      xpc_release(v134);
      memset(&__p, 0, sizeof(__p));
      std::to_string(&object, v126);
      __p = object;
      if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v135 = &__p;
      }

      else
      {
        v135 = __p.__r_.__value_.__r.__words[0];
      }

      v136 = xpc_string_create(v135);
      if (!v136)
      {
        v136 = xpc_null_create();
      }

      xpc_dictionary_set_value(v128, v168, v136);
      v137 = xpc_null_create();
      xpc_release(v136);
      xpc_release(v137);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      xpc_array_append_value(*a2, v128);
      goto LABEL_228;
    }

    if ((atomic_load_explicit(&qword_100034678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100034678))
    {
      qword_100034680 = 0;
      qword_100034688 = 0;
      __cxa_guard_release(&qword_100034678);
    }

    if (qword_100034670 == -1)
    {
      v127 = qword_100034688;
      if (!os_log_type_enabled(qword_100034688, OS_LOG_TYPE_ERROR))
      {
LABEL_209:
        v128 = v115;
LABEL_228:
        v138 = xpc_dictionary_create(0, 0, 0);
        if (v138 || (v138 = xpc_null_create()) != 0)
        {
          if (xpc_get_type(v138) == &_xpc_type_dictionary)
          {
            xpc_retain(v138);
            v115 = v138;
          }

          else
          {
            v115 = xpc_null_create();
          }
        }

        else
        {
          v115 = xpc_null_create();
          v138 = 0;
        }

        xpc_release(v138);
        v139 = xpc_null_create();
        xpc_release(v128);
        xpc_release(v139);
        v140 = xpc_string_create(abm::kTraceCoreDump);
        if (!v140)
        {
          v140 = xpc_null_create();
        }

        xpc_dictionary_set_value(v115, key, v140);
        v141 = xpc_null_create();
        xpc_release(v140);
        xpc_release(v141);
        v142 = xpc_string_create(v95);
        if (!v142)
        {
          v142 = xpc_null_create();
        }

        xpc_dictionary_set_value(v115, v169, v142);
        v143 = xpc_null_create();
        xpc_release(v142);
        xpc_release(v143);
        memset(&__p, 0, sizeof(__p));
        std::to_string(&object, 1);
        __p = object;
        if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v144 = &__p;
        }

        else
        {
          v144 = __p.__r_.__value_.__r.__words[0];
        }

        v145 = xpc_string_create(v144);
        if (!v145)
        {
          v145 = xpc_null_create();
        }

        xpc_dictionary_set_value(v115, v168, v145);
        v146 = xpc_null_create();
        xpc_release(v145);
        xpc_release(v146);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        xpc_array_append_value(*a2, v115);
        goto LABEL_246;
      }
    }

    else
    {
      dispatch_once(&qword_100034670, &stru_100030A28);
      v127 = qword_100034688;
      if (!os_log_type_enabled(qword_100034688, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_209;
      }
    }

    LODWORD(object.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(object.__r_.__value_.__r.__words[0]) = v126;
    _os_log_error_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "Invalid privacy level: %d", &object, 8u);
    goto LABEL_209;
  }

LABEL_246:
  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && (TelephonyUtilIsCarrierBuild() & 1) == 0)
  {
    v147 = xpc_dictionary_create(0, 0, 0);
    if (v147 || (v147 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v147) == &_xpc_type_dictionary)
      {
        xpc_retain(v147);
        v148 = v147;
      }

      else
      {
        v148 = xpc_null_create();
      }
    }

    else
    {
      v148 = xpc_null_create();
      v147 = 0;
    }

    xpc_release(v147);
    v149 = xpc_null_create();
    xpc_release(v115);
    xpc_release(v149);
    v150 = xpc_string_create(abm::kTraceSystemLogs);
    if (!v150)
    {
      v150 = xpc_null_create();
    }

    xpc_dictionary_set_value(v148, key, v150);
    v151 = xpc_null_create();
    xpc_release(v150);
    xpc_release(v151);
    v152 = abm::kKeyTraceMode;
    v153 = xpc_string_create(abm::kKeyTraceMode);
    if (!v153)
    {
      v153 = xpc_null_create();
    }

    xpc_dictionary_set_value(v148, v169, v153);
    v154 = xpc_null_create();
    xpc_release(v153);
    xpc_release(v154);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&object, 1);
    __p = object;
    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v155 = &__p;
    }

    else
    {
      v155 = __p.__r_.__value_.__r.__words[0];
    }

    v156 = xpc_string_create(v155);
    if (!v156)
    {
      v156 = xpc_null_create();
    }

    xpc_dictionary_set_value(v148, v168, v156);
    v157 = xpc_null_create();
    xpc_release(v156);
    xpc_release(v157);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a2, v148);
    v158 = xpc_dictionary_create(0, 0, 0);
    if (v158 || (v158 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v158) == &_xpc_type_dictionary)
      {
        xpc_retain(v158);
        v115 = v158;
      }

      else
      {
        v115 = xpc_null_create();
      }
    }

    else
    {
      v115 = xpc_null_create();
      v158 = 0;
    }

    xpc_release(v158);
    v159 = xpc_null_create();
    xpc_release(v148);
    xpc_release(v159);
    v160 = xpc_string_create(abm::kTraceCompression);
    if (!v160)
    {
      v160 = xpc_null_create();
    }

    xpc_dictionary_set_value(v115, key, v160);
    v161 = xpc_null_create();
    xpc_release(v160);
    xpc_release(v161);
    v162 = xpc_string_create(v152);
    if (!v162)
    {
      v162 = xpc_null_create();
    }

    xpc_dictionary_set_value(v115, v169, v162);
    v163 = xpc_null_create();
    xpc_release(v162);
    xpc_release(v163);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&object, 2);
    __p = object;
    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v164 = &__p;
    }

    else
    {
      v164 = __p.__r_.__value_.__r.__words[0];
    }

    v165 = xpc_string_create(v164);
    if (!v165)
    {
      v165 = xpc_null_create();
    }

    xpc_dictionary_set_value(v115, v168, v165);
    v166 = xpc_null_create();
    xpc_release(v165);
    xpc_release(v166);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_288:
  xpc_release(v10);
  xpc_release(v115);
}

void sub_100002A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, xpc_object_t object)
{
  if (a2)
  {
    sub_100004D3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t *sub_1000034AC(xpc_object_t *a1)
{
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void logs::getDefaultTraceProperties(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v3 = xpc_array_create(0, 0);
  v4 = v3;
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    *a1 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) != &_xpc_type_array)
  {
    v5 = xpc_null_create();
LABEL_8:
    *a1 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v6) == &_xpc_type_dictionary)
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v8 = abm::kTraceBaseband;
  v9 = xpc_string_create(abm::kTraceBaseband);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v10 = abm::kKeyTraceName;
  xpc_dictionary_set_value(v7, abm::kKeyTraceName, v9);
  v11 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v11);
  v12 = abm::kKeyEnabled;
  v13 = xpc_string_create(abm::kKeyEnabled);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v14 = abm::kKeyTracePropertyName;
  xpc_dictionary_set_value(v7, abm::kKeyTracePropertyName, v13);
  v15 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v15);
  v17 = defaults::bbtrace::enabled(v16);
  std::to_string(&v145, v17);
  __p = v145;
  if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v19 = xpc_string_create(p_p);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v20 = abm::kKeyTracePropertyValue;
  xpc_dictionary_set_value(v7, abm::kKeyTracePropertyValue, v19);
  v21 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(*a1, v7);
  v22 = xpc_dictionary_create(0, 0, 0);
  if (v22 || (v22 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v22) == &_xpc_type_dictionary)
    {
      xpc_retain(v22);
      v23 = v22;
    }

    else
    {
      v23 = xpc_null_create();
    }
  }

  else
  {
    v23 = xpc_null_create();
    v22 = 0;
  }

  xpc_release(v22);
  v24 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v24);
  v25 = xpc_string_create(v8);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v23, v10, v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = xpc_string_create(abm::kKeyTraceHighTput);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(v23, v14, v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  v30 = defaults::bbtrace::high_tput(v29);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&v145, v30);
  __p = v145;
  if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &__p;
  }

  else
  {
    v31 = __p.__r_.__value_.__r.__words[0];
  }

  v32 = xpc_string_create(v31);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  xpc_dictionary_set_value(v23, v20, v32);
  v33 = xpc_null_create();
  xpc_release(v32);
  xpc_release(v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(*a1, v23);
  v34 = xpc_dictionary_create(0, 0, 0);
  if (v34 || (v34 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v34) == &_xpc_type_dictionary)
    {
      xpc_retain(v34);
      v35 = v34;
    }

    else
    {
      v35 = xpc_null_create();
    }
  }

  else
  {
    v35 = xpc_null_create();
    v34 = 0;
  }

  xpc_release(v34);
  v36 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v36);
  v37 = xpc_string_create(v8);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v35, v10, v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  v39 = xpc_string_create(abm::kKeyTraceDataLogging);
  if (!v39)
  {
    v39 = xpc_null_create();
  }

  xpc_dictionary_set_value(v35, v14, v39);
  v40 = xpc_null_create();
  xpc_release(v39);
  xpc_release(v40);
  v42 = defaults::bbtrace::data_logging(v41);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&v145, v42);
  __p = v145;
  if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &__p;
  }

  else
  {
    v43 = __p.__r_.__value_.__r.__words[0];
  }

  v44 = xpc_string_create(v43);
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  xpc_dictionary_set_value(v35, v20, v44);
  v45 = xpc_null_create();
  xpc_release(v44);
  xpc_release(v45);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(*a1, v35);
  v46 = xpc_dictionary_create(0, 0, 0);
  if (v46 || (v46 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v46) == &_xpc_type_dictionary)
    {
      xpc_retain(v46);
      v47 = v46;
    }

    else
    {
      v47 = xpc_null_create();
    }
  }

  else
  {
    v47 = xpc_null_create();
    v46 = 0;
  }

  xpc_release(v46);
  v48 = xpc_null_create();
  xpc_release(v35);
  xpc_release(v48);
  v49 = xpc_string_create(v8);
  if (!v49)
  {
    v49 = xpc_null_create();
  }

  xpc_dictionary_set_value(v47, v10, v49);
  v50 = xpc_null_create();
  xpc_release(v49);
  xpc_release(v50);
  v51 = xpc_string_create(abm::kKeyTracePrimaryConfigFile);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  xpc_dictionary_set_value(v47, v14, v51);
  v52 = xpc_null_create();
  xpc_release(v51);
  xpc_release(v52);
  v54 = defaults::bbtrace::primary_dmc(v53);
  v55 = xpc_string_create(v54);
  if (!v55)
  {
    v55 = xpc_null_create();
  }

  xpc_dictionary_set_value(v47, v20, v55);
  v56 = xpc_null_create();
  xpc_release(v55);
  xpc_release(v56);
  xpc_array_append_value(*a1, v47);
  v57 = xpc_dictionary_create(0, 0, 0);
  if (v57 || (v57 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v57) == &_xpc_type_dictionary)
    {
      xpc_retain(v57);
      v58 = v57;
    }

    else
    {
      v58 = xpc_null_create();
    }
  }

  else
  {
    v58 = xpc_null_create();
    v57 = 0;
  }

  xpc_release(v57);
  v59 = xpc_null_create();
  xpc_release(v47);
  xpc_release(v59);
  v60 = xpc_string_create(v8);
  if (!v60)
  {
    v60 = xpc_null_create();
  }

  xpc_dictionary_set_value(v58, v10, v60);
  v61 = xpc_null_create();
  xpc_release(v60);
  xpc_release(v61);
  v62 = xpc_string_create(abm::kKeyTraceSecondaryConfigFile);
  if (!v62)
  {
    v62 = xpc_null_create();
  }

  xpc_dictionary_set_value(v58, v14, v62);
  v63 = xpc_null_create();
  xpc_release(v62);
  xpc_release(v63);
  v65 = defaults::bbtrace::secondary_dmc(v64);
  v66 = xpc_string_create(v65);
  if (!v66)
  {
    v66 = xpc_null_create();
  }

  xpc_dictionary_set_value(v58, v20, v66);
  v67 = xpc_null_create();
  xpc_release(v66);
  xpc_release(v67);
  xpc_array_append_value(*a1, v58);
  v68 = xpc_dictionary_create(0, 0, 0);
  if (v68 || (v68 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v68) == &_xpc_type_dictionary)
    {
      xpc_retain(v68);
      v69 = v68;
    }

    else
    {
      v69 = xpc_null_create();
    }
  }

  else
  {
    v69 = xpc_null_create();
    v68 = 0;
  }

  xpc_release(v68);
  v70 = xpc_null_create();
  xpc_release(v58);
  xpc_release(v70);
  v71 = xpc_string_create(v8);
  if (!v71)
  {
    v71 = xpc_null_create();
  }

  xpc_dictionary_set_value(v69, v10, v71);
  v72 = xpc_null_create();
  xpc_release(v71);
  xpc_release(v72);
  v73 = xpc_string_create(abm::kKeyTraceHistory);
  if (!v73)
  {
    v73 = xpc_null_create();
  }

  xpc_dictionary_set_value(v69, v14, v73);
  v74 = xpc_null_create();
  xpc_release(v73);
  xpc_release(v74);
  v76 = defaults::bbtrace::history(v75);
  std::to_string(&v145, v76);
  if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v77 = &v145;
  }

  else
  {
    v77 = v145.__r_.__value_.__r.__words[0];
  }

  v78 = xpc_string_create(v77);
  if (!v78)
  {
    v78 = xpc_null_create();
  }

  xpc_dictionary_set_value(v69, v20, v78);
  v79 = xpc_null_create();
  xpc_release(v78);
  xpc_release(v79);
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(*a1, v69);
  v80 = xpc_dictionary_create(0, 0, 0);
  if (v80 || (v80 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v80) == &_xpc_type_dictionary)
    {
      xpc_retain(v80);
      v81 = v80;
    }

    else
    {
      v81 = xpc_null_create();
    }
  }

  else
  {
    v81 = xpc_null_create();
    v80 = 0;
  }

  xpc_release(v80);
  v82 = xpc_null_create();
  xpc_release(v69);
  xpc_release(v82);
  v83 = xpc_string_create(v8);
  if (!v83)
  {
    v83 = xpc_null_create();
  }

  xpc_dictionary_set_value(v81, v10, v83);
  v84 = xpc_null_create();
  xpc_release(v83);
  xpc_release(v84);
  v85 = xpc_string_create(diag::config::kEnabledDuringSleepKey);
  if (!v85)
  {
    v85 = xpc_null_create();
  }

  xpc_dictionary_set_value(v81, v14, v85);
  v86 = xpc_null_create();
  xpc_release(v85);
  xpc_release(v86);
  defaults::bbtrace::enabled_during_sleep(v87);
  v88 = diag::config::toString();
  v89 = xpc_string_create(v88);
  if (!v89)
  {
    v89 = xpc_null_create();
  }

  xpc_dictionary_set_value(v81, v20, v89);
  v90 = xpc_null_create();
  xpc_release(v89);
  xpc_release(v90);
  v92 = capabilities::radio::initium(v91);
  if (v92)
  {
    defaults::bbtrace::trace_sleep_mode(v92);
    capabilities::trace::asString();
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v93 = &v145;
    }

    else
    {
      v93 = v145.__r_.__value_.__r.__words[0];
    }

    v94 = xpc_string_create(v93);
    if (!v94)
    {
      v94 = xpc_null_create();
    }

    xpc_dictionary_set_value(v81, v20, v94);
    v95 = xpc_null_create();
    xpc_release(v94);
    xpc_release(v95);
    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }
  }

  xpc_array_append_value(*a1, v81);
  if (capabilities::radio::initium(v96))
  {
    v97 = xpc_dictionary_create(0, 0, 0);
    if (v97 || (v97 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v97) == &_xpc_type_dictionary)
      {
        xpc_retain(v97);
        v98 = v97;
      }

      else
      {
        v98 = xpc_null_create();
      }
    }

    else
    {
      v98 = xpc_null_create();
      v97 = 0;
    }

    xpc_release(v97);
    v99 = xpc_null_create();
    xpc_release(v81);
    xpc_release(v99);
    v100 = xpc_string_create(v8);
    if (!v100)
    {
      v100 = xpc_null_create();
    }

    xpc_dictionary_set_value(v98, v10, v100);
    v101 = xpc_null_create();
    xpc_release(v100);
    xpc_release(v101);
    v102 = xpc_string_create(abm::kKeyTracePrivacyLevel);
    if (!v102)
    {
      v102 = xpc_null_create();
    }

    xpc_dictionary_set_value(v98, v14, v102);
    v103 = xpc_null_create();
    xpc_release(v102);
    xpc_release(v103);
    v105 = defaults::bbtrace::privacyLevel(v104);
    std::to_string(&v145, v105);
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v106 = &v145;
    }

    else
    {
      v106 = v145.__r_.__value_.__r.__words[0];
    }

    v107 = xpc_string_create(v106);
    if (!v107)
    {
      v107 = xpc_null_create();
    }

    xpc_dictionary_set_value(v98, v20, v107);
    v108 = xpc_null_create();
    xpc_release(v107);
    xpc_release(v108);
    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a1, v98);
    v109 = xpc_dictionary_create(0, 0, 0);
    if (v109 || (v109 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v109) == &_xpc_type_dictionary)
      {
        xpc_retain(v109);
        v81 = v109;
      }

      else
      {
        v81 = xpc_null_create();
      }
    }

    else
    {
      v81 = xpc_null_create();
      v109 = 0;
    }

    xpc_release(v109);
    v110 = xpc_null_create();
    xpc_release(v98);
    xpc_release(v110);
    v111 = xpc_string_create(abm::kTraceCoreDump);
    if (!v111)
    {
      v111 = xpc_null_create();
    }

    xpc_dictionary_set_value(v81, v10, v111);
    v112 = xpc_null_create();
    xpc_release(v111);
    xpc_release(v112);
    v113 = xpc_string_create(v12);
    if (!v113)
    {
      v113 = xpc_null_create();
    }

    xpc_dictionary_set_value(v81, v14, v113);
    v114 = xpc_null_create();
    xpc_release(v113);
    xpc_release(v114);
    v116 = capabilities::trace::allowed(v115);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&v145, v116);
    __p = v145;
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v117 = &__p;
    }

    else
    {
      v117 = __p.__r_.__value_.__r.__words[0];
    }

    v118 = xpc_string_create(v117);
    if (!v118)
    {
      v118 = xpc_null_create();
    }

    xpc_dictionary_set_value(v81, v20, v118);
    v119 = xpc_null_create();
    xpc_release(v118);
    xpc_release(v119);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a1, v81);
  }

  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && (TelephonyUtilIsCarrierBuild() & 1) == 0)
  {
    v120 = xpc_dictionary_create(0, 0, 0);
    if (v120 || (v120 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v120) == &_xpc_type_dictionary)
      {
        xpc_retain(v120);
        v121 = v120;
      }

      else
      {
        v121 = xpc_null_create();
      }
    }

    else
    {
      v121 = xpc_null_create();
      v120 = 0;
    }

    xpc_release(v120);
    v122 = xpc_null_create();
    xpc_release(v81);
    xpc_release(v122);
    v123 = xpc_string_create(abm::kTraceSystemLogs);
    if (!v123)
    {
      v123 = xpc_null_create();
    }

    xpc_dictionary_set_value(v121, v10, v123);
    v124 = xpc_null_create();
    xpc_release(v123);
    xpc_release(v124);
    v125 = abm::kKeyTraceMode;
    v126 = xpc_string_create(abm::kKeyTraceMode);
    if (!v126)
    {
      v126 = xpc_null_create();
    }

    xpc_dictionary_set_value(v121, v14, v126);
    v127 = xpc_null_create();
    xpc_release(v126);
    xpc_release(v127);
    v129 = defaults::systemlogs::mode(v128);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&v145, v129);
    __p = v145;
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v130 = &__p;
    }

    else
    {
      v130 = __p.__r_.__value_.__r.__words[0];
    }

    v131 = xpc_string_create(v130);
    if (!v131)
    {
      v131 = xpc_null_create();
    }

    xpc_dictionary_set_value(v121, v20, v131);
    v132 = xpc_null_create();
    xpc_release(v131);
    xpc_release(v132);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a1, v121);
    v133 = xpc_dictionary_create(0, 0, 0);
    if (v133 || (v133 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v133) == &_xpc_type_dictionary)
      {
        xpc_retain(v133);
        v81 = v133;
      }

      else
      {
        v81 = xpc_null_create();
      }
    }

    else
    {
      v81 = xpc_null_create();
      v133 = 0;
    }

    xpc_release(v133);
    v134 = xpc_null_create();
    xpc_release(v121);
    xpc_release(v134);
    v135 = xpc_string_create(abm::kTraceCompression);
    if (!v135)
    {
      v135 = xpc_null_create();
    }

    xpc_dictionary_set_value(v81, v10, v135);
    v136 = xpc_null_create();
    xpc_release(v135);
    xpc_release(v136);
    v137 = xpc_string_create(v125);
    if (!v137)
    {
      v137 = xpc_null_create();
    }

    xpc_dictionary_set_value(v81, v14, v137);
    v138 = xpc_null_create();
    xpc_release(v137);
    xpc_release(v138);
    v140 = defaults::compression::mode(v139);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&v145, v140);
    __p = v145;
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v141 = &__p;
    }

    else
    {
      v141 = __p.__r_.__value_.__r.__words[0];
    }

    v142 = xpc_string_create(v141);
    if (!v142)
    {
      v142 = xpc_null_create();
    }

    xpc_dictionary_set_value(v81, v20, v142);
    v143 = xpc_null_create();
    xpc_release(v142);
    xpc_release(v143);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a1, v81);
  }

  xpc_release(v81);
}

void sub_100004754(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x100004664);
}

void sub_100004760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  sub_1000034AC(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_100004C60(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_100004D50(id a1)
{
  ctu::OsLogContext::OsLogContext(v1, "com.apple.telephony.abm", "logging.profile");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v1);
}

uint64_t sub_100004D9C()
{
  if ((byte_100034668 & 1) == 0)
  {
    byte_100034668 = 1;
    return __cxa_atexit(sub_100004C60, &unk_1000345C8, &_mh_execute_header);
  }

  return result;
}

void ***sub_100004DD8(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void (__cdecl ***sub_100004E4C(void (__cdecl ***a1)(std::ifstream *__hidden this), uint64_t *a2))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  a1[1] = 0;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 2);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_100004FE4(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100005028(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

uint64_t sub_1000050C0(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *__error() = 0;
  if (a1[23] < 0)
  {
    v7 = opendir(*a1);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_83:
    if ((atomic_load_explicit(&qword_100034698, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100034698))
    {
      qword_1000346A0 = 0;
      qword_1000346A8 = 0;
      __cxa_guard_release(&qword_100034698);
    }

    if (qword_100034690 == -1)
    {
      v40 = qword_1000346A8;
      if (!os_log_type_enabled(qword_1000346A8, OS_LOG_TYPE_ERROR))
      {
LABEL_86:
        v41 = 0;
        return v41 & 1;
      }
    }

    else
    {
      dispatch_once(&qword_100034690, &stru_100030A68);
      v40 = qword_1000346A8;
      if (!os_log_type_enabled(qword_1000346A8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_86;
      }
    }

    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v43 = __error();
    v44 = strerror(*v43);
    v54.st_dev = 136315394;
    *&v54.st_mode = a1;
    WORD2(v54.st_ino) = 2080;
    *(&v54.st_ino + 6) = v44;
    _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to open base directory %s (%s)", &v54, 0x16u);
    goto LABEL_86;
  }

  v7 = opendir(a1);
  if (!v7)
  {
    goto LABEL_83;
  }

LABEL_3:
  v8 = v7;
  v9 = readdir(v7);
  if (v9)
  {
    v10 = v9;
    v45 = a3;
    v46 = 0;
    while (1)
    {
      memset(__dst, 170, sizeof(__dst));
      v11 = strlen(v10->d_name);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100005880();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v16 = 25;
        }

        else
        {
          v16 = (v11 | 7) + 1;
        }

        v13 = operator new(v16);
        *&__dst[8] = v12;
        *&__dst[16] = v16 | 0x8000000000000000;
        *__dst = v13;
      }

      else
      {
        __dst[23] = v11;
        v13 = __dst;
        if (!v11)
        {
          __dst[0] = 0;
          v14 = __dst[23];
          v15 = __dst[23];
          if ((__dst[23] & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_18;
        }
      }

      memmove(v13, v10->d_name, v12);
      v13[v12] = 0;
      v14 = __dst[23];
      v15 = __dst[23];
      if ((__dst[23] & 0x80000000) == 0)
      {
LABEL_9:
        if (v15 == 1)
        {
          if (__dst[0] == 46)
          {
            goto LABEL_78;
          }
        }

        else if (v15 == 2 && *__dst == 11822)
        {
          goto LABEL_78;
        }

        goto LABEL_25;
      }

LABEL_18:
      if (*&__dst[8] == 1)
      {
        if (**__dst == 46)
        {
          goto LABEL_78;
        }
      }

      else if (*&__dst[8] == 2 && **__dst == 11822)
      {
        goto LABEL_78;
      }

LABEL_25:
      if (a4)
      {
        goto LABEL_56;
      }

      v17 = v8;
      v18 = a4;
      v19.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v19.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v54.st_blksize = v19;
      *v54.st_qspare = v19;
      v54.st_birthtimespec = v19;
      *&v54.st_size = v19;
      v54.st_mtimespec = v19;
      v54.st_ctimespec = v19;
      *&v54.st_uid = v19;
      v54.st_atimespec = v19;
      *&v54.st_dev = v19;
      v20 = a1[23];
      v21 = a1;
      if (v20 >= 0)
      {
        v22 = *(a1 + 23);
      }

      else
      {
        v22 = *(a1 + 1);
      }

      v23 = v22 + 1;
      if (v22 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100005880();
      }

      if (v23 < 0x17)
      {
        memset(&v48, 0, sizeof(v48));
        v25 = &v48;
        *(&v48.__r_.__value_.__s + 23) = v22 + 1;
        if (!v22)
        {
          a1 = v21;
          goto LABEL_40;
        }
      }

      else
      {
        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        v25 = operator new(v24);
        v48.__r_.__value_.__l.__size_ = v22 + 1;
        v48.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
        v48.__r_.__value_.__r.__words[0] = v25;
      }

      a1 = v21;
      v26 = *v21;
      if (v20 >= 0)
      {
        v27 = v21;
      }

      else
      {
        v27 = *v21;
      }

      memmove(v25, v27, v22);
LABEL_40:
      *&v25[v22] = 47;
      if (v14 >= 0)
      {
        v28 = __dst;
      }

      else
      {
        v28 = *__dst;
      }

      if (v14 >= 0)
      {
        v29 = v15;
      }

      else
      {
        v29 = *&__dst[8];
      }

      v30 = std::string::append(&v48, v28, v29);
      a4 = v18;
      v31 = *&v30->__r_.__value_.__l.__data_;
      v51[0] = *(&v30->__r_.__value_.__l + 2);
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if (v51[0] >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      lstat(v32, &v54);
      v8 = v17;
      if (SHIBYTE(v51[0]) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_51:
          if ((v54.st_mode & 0xF000) != 0xA000)
          {
            goto LABEL_55;
          }

          goto LABEL_78;
        }
      }

      else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(v48.__r_.__value_.__l.__data_);
      if ((v54.st_mode & 0xF000) != 0xA000)
      {
LABEL_55:
        v15 = __dst[23];
LABEL_56:
        if ((v15 & 0x80u) == 0)
        {
          v33 = __dst;
        }

        else
        {
          v33 = *__dst;
        }

        if ((v15 & 0x80u) == 0)
        {
          v34 = v15;
        }

        else
        {
          v34 = *&__dst[8];
        }

        *&v35 = 0xAAAAAAAAAAAAAAAALL;
        *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v52 = v35;
        v51[6] = 0xAAAAAAAAAAAAAA00;
        v51[3] = 0xAAAAAAAAAAAAAAAALL;
        v51[4] = 0;
        v51[5] = 0;
        v51[7] = 0;
        v51[8] = 0;
        LOBYTE(v52) = 0;
        BYTE8(v52) = 0;
        v53 = 0;
        *__p = 0u;
        memset(v51, 0, 24);
        *&v54.st_birthtimespec.tv_nsec = v35;
        v54.st_ctimespec.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v54.st_atimespec.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        memset(&v54.st_mtimespec, 0, 17);
        memset(&v54.st_ctimespec.tv_nsec, 0, 17);
        LOBYTE(v54.st_size) = 0;
        v54.st_blocks = 0;
        memset(&v54, 0, 40);
        v36 = sub_10000FD5C(a2, v33, &v33[v34], &v54, 4160);
        sub_100010068(__p, v33, &v33[v34], &v54.st_dev, 0);
        if (*&v54.st_dev)
        {
          v54.st_ino = *&v54.st_dev;
          operator delete(*&v54.st_dev);
        }

        if (v36 && (v52 & 1) != 0)
        {
          v36 = 0;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v36)
        {
          v37 = *(v45 + 8);
          if (v37 >= *(v45 + 16))
          {
            v39 = sub_100005AFC(v45, __dst);
          }

          else
          {
            if ((__dst[23] & 0x80000000) != 0)
            {
              sub_10000595C(*(v45 + 8), *__dst, *&__dst[8]);
            }

            else
            {
              v38 = *__dst;
              *(v37 + 16) = *&__dst[16];
              *v37 = v38;
            }

            v39 = (v37 + 24);
            *(v45 + 8) = v37 + 24;
          }

          *(v45 + 8) = v39;
          v46 = 1;
        }
      }

LABEL_78:
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      v10 = readdir(v8);
      if (!v10)
      {
        goto LABEL_88;
      }
    }
  }

  v46 = 0;
LABEL_88:
  closedir(v8);
  v41 = v46;
  return v41 & 1;
}

void sub_100005680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43)
{
  *(v43 + 8) = v44;
  if (a24 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100005718@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::istream::tellg();
  v3 = v8;
  if (v8 >= 2)
  {
    do
    {
      std::istream::seekg();
      if (std::istream::peek() == 10)
      {
        break;
      }
    }

    while (v3-- > 1);
  }

  std::istream::seekg();
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v5 = std::locale::use_facet(v7, &std::ctype<char>::id);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(v7);
  return sub_10001620C(a1);
}

void sub_100005858(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100005898(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000058F4(exception, a1);
}

std::logic_error *sub_1000058F4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100005928()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_10000595C(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100005880();
    }

    v6 = a1;
    v7 = a2;
    if ((a3 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a3 | 7) + 1;
    }

    a1 = operator new(v8);
    v6[1] = a3;
    v6[2] = v8 | 0x8000000000000000;
    *v6 = a1;
    a2 = v7;
    v4 = a3 + 1;
  }

  else
  {
    a1[23] = a3;
    v4 = a3 + 1;
  }

  return memmove(a1, a2, v4);
}

void sub_100005A20(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100005A7C(exception, a1);
}

std::logic_error *sub_100005A7C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100005AB0(id a1)
{
  ctu::OsLogContext::OsLogContext(v1, "com.apple.telephony.abm", "supports.fs");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v1);
}

char *sub_100005AFC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100005C50();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v2) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v2) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100005928();
    }

    v8 = operator new(24 * v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[8 * (v3 >> 3)];
  v16 = v9;
  v10 = &v8[24 * v7];
  v17 = v9;
  if (*(a2 + 23) < 0)
  {
    sub_10000595C(v9, *a2, *(a2 + 8));
    v9 = v16;
    v11 = v17;
    v2 = *a1;
    v3 = *(a1 + 8) - *a1;
  }

  else
  {
    *v9 = *a2;
    *(v9 + 2) = *(a2 + 16);
    v11 = &v8[8 * (v3 >> 3)];
  }

  v12 = v11 + 24;
  v13 = &v9[-v3];
  memcpy(&v9[-v3], v2, v3);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v12;
  *(a1 + 16) = v10;
  if (v14)
  {
    operator delete(v14);
  }

  return v12;
}

void sub_100005C3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005C68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100005C68(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100005CD0(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_100005D48(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      sub_100005880();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **sub_100005E08(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      sub_100005880();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(v7 + __len) = 0;
  return a1;
}

uint64_t sub_100005F20(uint64_t a1, char *a2, int a3)
{
  v6 = std::locale::locale(a1);
  *(a1 + 8) = std::locale::use_facet(v6, &std::ctype<char>::id);
  *(a1 + 16) = std::locale::use_facet(a1, &std::collate<char>::id);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = strlen(a2);
  if (sub_100005FEC(a1, a2, &a2[v7]) != &a2[v7])
  {
    sub_1000064AC();
  }

  return a1;
}

void sub_100005FBC(_Unwind_Exception *a1)
{
  sub_100005CD0(&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_100005FEC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &off_100030A98;
  v7 = operator new(0x10uLL);
  *v7 = off_100030B40;
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &off_100030AF0;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = *(a1 + 40);
    *(a1 + 56) = v10;
    v11 = *(a1 + 24) & 0x1F0;
    if (v11 <= 0x3F)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (v11 != 64)
    {
      if (v11 == 128)
      {

        return sub_100006A8C(a1, a2, a3);
      }

      if (v11 == 256)
      {

        return sub_100006C6C(a1, a2, a3);
      }

LABEL_44:
      sub_100006E4C();
    }

LABEL_15:

    return sub_100006918(a1, a2, a3);
  }

  v10 = *(a1 + 40);
  *(a1 + 56) = v10;
  v11 = *(a1 + 24) & 0x1F0;
  if (v11 > 0x3F)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v11)
  {
    if (v11 == 16)
    {

      return sub_100006784(a1, a2, a3);
    }

    if (v11 != 32)
    {
      goto LABEL_44;
    }

    goto LABEL_15;
  }

  v13 = a2;
  while (1)
  {
    result = sub_100007188(a1, v13, a3);
    if (result == v13)
    {
      break;
    }

LABEL_25:
    v14 = result == v13;
    v13 = result;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  v15 = *(a1 + 56);
  v16 = *(a1 + 28);
  v17 = sub_100007544(a1, v13, a3);
  if (v17 != v13)
  {
    result = sub_10000790C(a1, v17, a3, v15, v16 + 1, *(a1 + 28) + 1);
    goto LABEL_25;
  }

  result = v13;
LABEL_30:
  if (result == a2)
  {
    v18 = result;
    v19 = operator new(0x10uLL);
    result = v18;
    v20 = *(a1 + 56);
    v21 = *(v20 + 8);
    *v19 = off_100030B40;
    v19[1] = v21;
    *(v20 + 8) = v19;
    *(a1 + 56) = v19;
  }

  if (result != a3)
  {
LABEL_35:
    if (*result != 124)
    {
      return result;
    }

    v29 = *(a1 + 56);
    v30 = result + 1;
    v31 = result + 1;
    while (1)
    {
      v32 = sub_100007188(a1, v31, a3);
      if (v32 == v31)
      {
        v33 = *(a1 + 56);
        v34 = *(a1 + 28);
        v35 = sub_100007544(a1, v31, a3);
        if (v35 == v31)
        {
          v32 = v31;
LABEL_42:
          v36 = v32;
          if (v32 == v30)
          {
            v37 = operator new(0x10uLL);
            v38 = *(a1 + 56);
            v39 = *(v38 + 8);
            *v37 = off_100030B40;
            v37[1] = v39;
            *(v38 + 8) = v37;
            *(a1 + 56) = v37;
          }

          v22 = operator new(0x18uLL);
          v23 = *(v29 + 8);
          v22[1] = *(v10 + 8);
          v22[2] = v23;
          *v22 = &off_1000310B0;
          *(v10 + 8) = v22;
          *(v29 + 8) = 0;
          v24 = operator new(0x10uLL);
          v25 = *(a1 + 56);
          v26 = *(v25 + 8);
          *v24 = off_100030B40;
          v24[1] = v26;
          *(v29 + 8) = v24;
          *(v25 + 8) = 0;
          v27 = operator new(0x10uLL);
          v28 = *(v29 + 8);
          *v27 = &off_1000310F8;
          v27[1] = v28;
          *(v25 + 8) = v27;
          *(a1 + 56) = *(v29 + 8);
          result = v36;
          if (v36 == a3)
          {
            return result;
          }

          goto LABEL_35;
        }

        v32 = sub_10000790C(a1, v35, a3, v33, v34 + 1, *(a1 + 28) + 1);
      }

      v14 = v32 == v31;
      v31 = v32;
      if (v14)
      {
        goto LABEL_42;
      }
    }
  }

  return result;
}

void sub_100006464(_Unwind_Exception *a1)
{
  sub_100007000(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_1000064AC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_parse);
}

unsigned __int8 *sub_100006504(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = a2;
  while (1)
  {
    v8 = result;
    result = sub_100007188(a1, result, a3);
    if (result == v8)
    {
      break;
    }

LABEL_2:
    if (result == v8)
    {
      goto LABEL_7;
    }
  }

  v9 = *(a1 + 56);
  v10 = *(a1 + 28);
  v11 = sub_100007544(a1, v8, a3);
  if (v11 != v8)
  {
    result = sub_10000790C(a1, v11, a3, v9, v10 + 1, *(a1 + 28) + 1);
    goto LABEL_2;
  }

  result = v8;
LABEL_7:
  if (v8 == a2)
  {
    v12 = result;
    v13 = operator new(0x10uLL);
    result = v12;
    v14 = *(a1 + 56);
    v15 = *(v14 + 8);
    *v13 = off_100030B40;
    v13[1] = v15;
    *(v14 + 8) = v13;
    *(a1 + 56) = v13;
  }

  if (v8 != a3)
  {
LABEL_12:
    if (*result != 124)
    {
      return result;
    }

    v23 = *(a1 + 56);
    v24 = result + 1;
    v25 = result + 1;
    while (1)
    {
      v26 = v25;
      v25 = sub_100007188(a1, v25, a3);
      if (v25 == v26)
      {
        v27 = *(a1 + 56);
        v28 = *(a1 + 28);
        v29 = sub_100007544(a1, v26, a3);
        if (v29 == v26)
        {
          v25 = v26;
LABEL_19:
          v30 = v25;
          if (v26 == v24)
          {
            v31 = operator new(0x10uLL);
            v32 = *(a1 + 56);
            v33 = *(v32 + 8);
            *v31 = off_100030B40;
            v31[1] = v33;
            *(v32 + 8) = v31;
            *(a1 + 56) = v31;
          }

          v16 = operator new(0x18uLL);
          v17 = *(v23 + 8);
          v16[1] = *(v6 + 8);
          v16[2] = v17;
          *v16 = &off_1000310B0;
          *(v6 + 8) = v16;
          *(v23 + 8) = 0;
          v18 = operator new(0x10uLL);
          v19 = *(a1 + 56);
          v20 = *(v19 + 8);
          *v18 = off_100030B40;
          v18[1] = v20;
          *(v23 + 8) = v18;
          *(v19 + 8) = 0;
          v21 = operator new(0x10uLL);
          v22 = *(v23 + 8);
          *v21 = &off_1000310F8;
          v21[1] = v22;
          *(v19 + 8) = v21;
          *(a1 + 56) = *(v23 + 8);
          result = v30;
          if (v26 == a3)
          {
            return result;
          }

          goto LABEL_12;
        }

        v25 = sub_10000790C(a1, v29, a3, v27, v28 + 1, *(a1 + 28) + 1);
      }

      if (v25 == v26)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

unsigned __int8 *sub_100006784(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  if (*a2 == 94)
  {
    v6 = operator new(0x18uLL);
    v7 = (*(a1 + 24) & 0x5F0) == 1024;
    v8 = *(a1 + 56);
    v9 = *(v8 + 8);
    *v6 = off_100030BE8;
    v6[1] = v9;
    *(v6 + 16) = v7;
    *(v8 + 8) = v6;
    *(a1 + 56) = v6;
    ++v3;
  }

  if (v3 != a3)
  {
    while (1)
    {
      if (v3 == a3)
      {
        v13 = v3;
LABEL_11:
        if (v13 == a3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v10 = *(a1 + 56);
      v11 = *(a1 + 28);
      v12 = sub_10000F1F4(a1, v3, a3);
      if (v12 == v3)
      {
        break;
      }

      v13 = sub_10000F3FC(a1, v12, a3, v10, v11 + 1, *(a1 + 28) + 1);
      v14 = v13 == v3;
      v3 = v13;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    v13 = v3;
    if (v3 == a3)
    {
      goto LABEL_18;
    }

LABEL_14:
    v3 = v13 + 1;
    if (v13 + 1 != a3 || *v13 != 36)
    {
      goto LABEL_18;
    }

    v15 = operator new(0x18uLL);
    v16 = (*(a1 + 24) & 0x5F0) == 1024;
    v17 = *(a1 + 56);
    v18 = *(v17 + 8);
    *v15 = off_100030C30;
    v15[1] = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(a1 + 56) = v15;
  }

  v13 = v3;
LABEL_18:
  v3 = v13;
  if (v13 != a3)
  {
    sub_10000F19C();
  }

  return v3;
}

unsigned __int8 *sub_100006918(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = sub_10000F93C(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_11;
  }

  do
  {
    v8 = v7;
    v7 = sub_10000F93C(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
LABEL_11:
    sub_10000F19C();
  }

  if (v8 != a3)
  {
    while (*v8 == 124)
    {
      v9 = *(a1 + 56);
      v10 = v8 + 1;
      v11 = sub_10000F93C(a1, v8 + 1, a3);
      if (v11 == v8 + 1)
      {
        goto LABEL_11;
      }

      do
      {
        v8 = v11;
        v11 = sub_10000F93C(a1, v11, a3);
      }

      while (v11 != v8);
      if (v8 == v10)
      {
        goto LABEL_11;
      }

      v12 = operator new(0x18uLL);
      v13 = *(v9 + 8);
      v12[1] = *(v6 + 8);
      v12[2] = v13;
      *v12 = &off_1000310B0;
      *(v6 + 8) = v12;
      *(v9 + 8) = 0;
      v14 = operator new(0x10uLL);
      v15 = *(a1 + 56);
      v16 = *(v15 + 8);
      *v14 = off_100030B40;
      v14[1] = v16;
      *(v9 + 8) = v14;
      *(v15 + 8) = 0;
      v17 = operator new(0x10uLL);
      v18 = *(v9 + 8);
      *v17 = &off_1000310F8;
      v17[1] = v18;
      *(v15 + 8) = v17;
      *(a1 + 56) = *(v9 + 8);
      if (v8 == a3)
      {
        return v8;
      }
    }
  }

  return v8;
}

unsigned __int8 *sub_100006A8C(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    *v11 = off_100030B40;
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    sub_100006784(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      *v14 = off_100030B40;
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      sub_100006784(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &off_1000310B0;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    *v18 = off_100030B40;
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &off_1000310F8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return v10;
}

unsigned __int8 *sub_100006C6C(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    *v11 = off_100030B40;
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    sub_100006918(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      *v14 = off_100030B40;
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      sub_100006918(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &off_1000310B0;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    *v18 = off_100030B40;
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &off_1000310F8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return v10;
}

void sub_100006E4C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_grammar);
}

void sub_100006EC4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_100006EEC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100006F1C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000100027CD1)
  {
    if (((v2 & 0x8000000100027CD1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000100027CD1))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000100027CD1 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_100006F8C(void *result)
{
  *result = off_100030BB8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_100007000(void *a1)
{
  *a1 = off_100030BB8;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_100007080(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_100007094(void *result)
{
  *result = off_100030BB8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_100007108(void *a1)
{
  *a1 = off_100030BB8;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

unsigned __int8 *sub_100007188(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x5B)
  {
    if (v3 == 92)
    {
      if (a2 + 1 != a3)
      {
        v13 = a2[1];
        if (v13 == 66)
        {
          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          v28 = *(*(v14 + 56) + 8);
          *v16 = off_100030C78;
          *(v16 + 1) = v28;
          std::locale::locale(v16 + 2, v14);
          *(v16 + 24) = *(v14 + 8);
          v16[40] = 1;
        }

        else
        {
          if (v13 != 98)
          {
            return a2;
          }

          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          v17 = *(*(v14 + 56) + 8);
          *v16 = off_100030C78;
          *(v16 + 1) = v17;
          std::locale::locale(v16 + 2, v14);
          *(v16 + 24) = *(v14 + 8);
          v16[40] = 0;
        }

        *(*(v14 + 56) + 8) = v16;
        *(v14 + 56) = v16;
        return v15 + 2;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (*(v7 + 24) & 0x5F0) == 1024;
    v11 = *(v7 + 56);
    v9[1] = *(v11 + 8);
    v12 = off_100030BE8;
LABEL_14:
    *v9 = v12;
    *(v9 + 16) = v10;
    *(v11 + 8) = v9;
    *(v7 + 56) = v9;
    return v8 + 1;
  }

  if (v3 == 36)
  {
    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (*(v7 + 24) & 0x5F0) == 1024;
    v11 = *(v7 + 56);
    v9[1] = *(v11 + 8);
    v12 = off_100030C30;
    goto LABEL_14;
  }

  v5 = v3 == 40;
  v4 = a2 + 1;
  v5 = !v5 || v4 == a3;
  if (v5)
  {
    return a2;
  }

  v5 = *v4 == 63;
  v18 = a2 + 2;
  if (!v5 || v18 == a3)
  {
    return a2;
  }

  v20 = *v18;
  if (v20 == 33)
  {
    *&v29 = 0xAAAAAAAAAAAAAAAALL;
    *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v29;
    v38 = v29;
    v35 = v29;
    v36 = v29;
    v31 = a2;
    sub_100007D70(&v35);
    v33 = a1;
    DWORD2(v36) = *(a1 + 24);
    v34 = a3;
    v27 = sub_100005FEC(&v35, v31 + 3, a3);
    LODWORD(v31) = HIDWORD(v36);
    sub_100007DE0(v33, &v35, 1, *(v33 + 28));
    *(v33 + 28) += v31;
    if (v27 == v34 || *v27 != 41)
    {
      sub_100007E98();
    }

    goto LABEL_32;
  }

  if (v20 != 61)
  {
    return a2;
  }

  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v21;
  v38 = v21;
  v35 = v21;
  v36 = v21;
  v23 = a2;
  sub_100007D70(&v35);
  v25 = a1;
  DWORD2(v36) = *(a1 + 24);
  v26 = a3;
  v27 = sub_100005FEC(&v35, v23 + 3, a3);
  LODWORD(v23) = HIDWORD(v36);
  sub_100007DE0(v25, &v35, 0, *(v25 + 28));
  *(v25 + 28) += v23;
  if (v27 == v26 || *v27 != 41)
  {
    sub_100007E98();
  }

LABEL_32:
  sub_100005028(&v35);
  return v27 + 1;
}

unsigned __int8 *sub_100007544(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 <= 0x3E)
  {
    if (v3 != 40)
    {
      if (v3 == 46)
      {
        v4 = a1;
        v6 = operator new(0x10uLL);
        v7 = *(v4 + 56);
        v8 = *(v7 + 8);
        *v6 = off_100030D08;
        v6[1] = v8;
        *(v7 + 8) = v6;
        *(v4 + 56) = v6;
        return a2 + 1;
      }

      if (v3 - 42 >= 2)
      {
        goto LABEL_27;
      }

LABEL_47:
      sub_100009878();
    }

    v14 = a2 + 1;
    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && *v14 == 63 && a2[2] == 58)
      {
        v15 = (a1 + 36);
        ++*(a1 + 36);
        v16 = a3;
        v17 = sub_100006504(a1, a2 + 3, a3);
        if (v17 == v16)
        {
          goto LABEL_56;
        }

        v18 = v17;
        if (*v17 != 41)
        {
          goto LABEL_56;
        }

LABEL_43:
        --*v15;
        return v18 + 1;
      }

      if ((*(a1 + 24) & 2) != 0)
      {
        v23 = *(a1 + 28);
      }

      else
      {
        v19 = a1;
        v20 = a3;
        v21 = operator new(0x18uLL);
        a3 = v20;
        v22 = v21;
        a1 = v19;
        v23 = *(v19 + 28) + 1;
        *(v19 + 28) = v23;
        v24 = *(v19 + 56);
        v25 = *(v24 + 8);
        *v22 = off_100030F48;
        v22[1] = v25;
        *(v22 + 4) = v23;
        *(v24 + 8) = v22;
        *(v19 + 56) = v22;
      }

      v15 = (a1 + 36);
      ++*(a1 + 36);
      v29 = a1;
      v30 = a3;
      v31 = sub_100006504(a1, v14, a3);
      if (v31 != v30)
      {
        v18 = v31;
        if (*v31 == 41)
        {
          if ((*(v29 + 24) & 2) == 0)
          {
            v32 = operator new(0x18uLL);
            v33 = *(v29 + 56);
            v34 = *(v33 + 8);
            *v32 = off_100030F90;
            v32[1] = v34;
            *(v32 + 4) = v23;
            *(v33 + 8) = v32;
            *(v29 + 56) = v32;
          }

          goto LABEL_43;
        }
      }
    }

LABEL_56:
    sub_100007E98();
  }

  if (*a2 > 0x5Bu)
  {
    if (v3 != 92)
    {
      if (v3 == 123)
      {
        goto LABEL_47;
      }

      goto LABEL_27;
    }

    v11 = a2 + 1;
    if (a2 + 1 == a3)
    {
      sub_100009A44();
    }

    v13 = *v11;
    if (v13 == 48)
    {
      sub_10000A1F0(a1, 0);
      return a2 + 2;
    }

    if ((v13 - 49) <= 8)
    {
      v26 = (v13 - 48);
      v9 = a2 + 2;
      if (a2 + 2 == a3)
      {
        v28 = a3;
      }

      else
      {
        while (1)
        {
          v27 = *v9;
          if ((v27 - 48) > 9)
          {
            break;
          }

          if (v26 >= 0x19999999)
          {
            goto LABEL_57;
          }

          v26 = v27 + 10 * v26 - 48;
          if (++v9 == a3)
          {
            v9 = a3;
            break;
          }
        }

        v28 = a3;
        if (!v26)
        {
LABEL_57:
          sub_10000A39C();
        }
      }

      if (v26 > *(a1 + 28))
      {
        goto LABEL_57;
      }

      v35 = a1;
      sub_10000A3F4(a1, v26);
      a1 = v35;
      a3 = v28;
      if (v9 != v11)
      {
        return v9;
      }
    }

    v36 = a1;
    v37 = a3;
    v38 = sub_100009A9C(a1, v11, a3);
    v39 = v37;
    v9 = v38;
    if (v38 == v11)
    {
      v40 = sub_100009CFC(v36, v11, v39, 0);
      if (v40 == v11)
      {
        return a2;
      }

      else
      {
        return v40;
      }
    }

    return v9;
  }

  if (v3 != 91)
  {
    if (v3 == 63)
    {
      goto LABEL_47;
    }

LABEL_27:

    return sub_1000098D0(a1, a2, a3);
  }

  return sub_100009714(a1, a2, a3);
}

unsigned __int8 *sub_10000790C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5, int a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *(a1 + 24) & 0x1F0;
  v7 = *a2;
  if (v7 <= 0x3E)
  {
    if (v7 == 42)
    {
      v8 = a2 + 1;
      if (v6)
      {
        v19 = 1;
      }

      else
      {
        v19 = v8 == a3;
      }

      if (!v19 && *v8 == 63)
      {
        v9 = a2 + 2;
        v10 = 0;
        goto LABEL_34;
      }

      v23 = 0;
      goto LABEL_43;
    }

    if (v7 == 43)
    {
      v8 = a2 + 1;
      if (!v6 && v8 != a3 && *v8 == 63)
      {
        v9 = a2 + 2;
        v10 = 1;
LABEL_34:
        sub_10000E83C(a1, v10, -1, a4, a5, a6, 0);
        return v9;
      }

      v23 = 1;
      goto LABEL_43;
    }

    return a2;
  }

  if (v7 == 63)
  {
    v20 = a2 + 1;
    if (v6)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (v21 || *v20 != 63)
    {
      sub_10000E83C(a1, 0, 1, a4, a5, a6, 1);
      return v20;
    }

    else
    {
      v22 = a2 + 2;
      sub_10000E83C(a1, 0, 1, a4, a5, a6, 0);
      return v22;
    }
  }

  else
  {
    if (v7 != 123)
    {
      return a2;
    }

    if (a2 + 1 == a3)
    {
      goto LABEL_69;
    }

    v11 = a2[1];
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      goto LABEL_69;
    }

    v12 = v11 - 48;
    v13 = a2 + 2;
    if (a2 + 2 != a3)
    {
      while (1)
      {
        v14 = *v13;
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          break;
        }

        if (v12 >= 214748364)
        {
          goto LABEL_69;
        }

        v12 = v14 + 10 * v12 - 48;
        if (++v13 == a3)
        {
          v13 = a3;
          break;
        }
      }
    }

    if (v13 == a3)
    {
      goto LABEL_70;
    }

    v15 = *v13;
    if (v15 != 44)
    {
      if (v15 == 125)
      {
        v16 = v13 + 1;
        if (v6 || v16 == a3 || *v16 != 63)
        {
          sub_10000E83C(a1, v12, v12, a4, a5, a6, 1);
          return v16;
        }

        else
        {
          v17 = v13 + 2;
          sub_10000E83C(a1, v12, v12, a4, a5, a6, 0);
          return v17;
        }
      }

LABEL_69:
      sub_10000E97C();
    }

    if (v13 + 1 == a3)
    {
      goto LABEL_69;
    }

    v24 = v13[1];
    if (v24 == 125)
    {
      v8 = v13 + 2;
      if (!v6 && v8 != a3 && *v8 == 63)
      {
        v10 = v12;
        v9 = v13 + 3;
        goto LABEL_34;
      }

      v23 = v12;
LABEL_43:
      sub_10000E83C(a1, v23, -1, a4, a5, a6, 1);
      return v8;
    }

    if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
    {
      goto LABEL_70;
    }

    v25 = v24 - 48;
    v26 = v13 + 2;
    if (v26 != a3)
    {
      while (1)
      {
        v27 = *v26;
        if ((v27 & 0xF8) != 0x30 && (v27 & 0xFE) != 0x38)
        {
          break;
        }

        if (v25 >= 214748364)
        {
          goto LABEL_69;
        }

        v25 = v27 + 10 * v25 - 48;
        if (++v26 == a3)
        {
          v26 = a3;
          break;
        }
      }
    }

    if (v26 == a3 || *v26 != 125)
    {
LABEL_70:
      sub_10000E9D4();
    }

    if (v25 < v12)
    {
      goto LABEL_69;
    }

    v28 = v26 + 1;
    if (v6 || v28 == a3 || *v28 != 63)
    {
      sub_10000E83C(a1, v12, v25, a4, a5, a6, 1);
      return v28;
    }

    else
    {
      v29 = v26 + 2;
      sub_10000E83C(a1, v12, v25, a4, a5, a6, 0);
      return v29;
    }
  }
}

__n128 sub_100007CF4(uint64_t a1, char a2)
{
  v4 = operator new(0x30uLL);
  v5 = *(*(a1 + 56) + 8);
  *v4 = off_100030C78;
  *(v4 + 1) = v5;
  std::locale::locale(v4 + 2, a1);
  result = *(a1 + 8);
  *(v4 + 24) = result;
  v4[40] = a2;
  *(*(a1 + 56) + 8) = v4;
  *(a1 + 56) = v4;
  return result;
}

uint64_t sub_100007D70(uint64_t a1)
{
  v2 = std::locale::locale(a1);
  *(a1 + 8) = std::locale::use_facet(v2, &std::ctype<char>::id);
  *(a1 + 16) = std::locale::use_facet(a1, &std::collate<char>::id);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return a1;
}

std::locale *sub_100007DE0(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v8 = operator new(0x58uLL);
  v9 = *(*(a1 + 56) + 8);
  *v8 = off_100030CC0;
  *(v8 + 1) = v9;
  result = std::locale::locale(v8 + 2, a2);
  *(v8 + 24) = *(a2 + 8);
  *(v8 + 40) = *(a2 + 24);
  v11 = *(a2 + 48);
  *(v8 + 7) = *(a2 + 40);
  *(v8 + 8) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(v8 + 9) = *(a2 + 56);
  *(v8 + 20) = a4;
  v8[84] = a3;
  *(*(a1 + 56) + 8) = v8;
  *(a1 + 56) = v8;
  return result;
}

void sub_100007E98()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_paren);
}

void *sub_100007EF0(void *result)
{
  *result = off_100030BB8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_100007F64(void *a1)
{
  *a1 = off_100030BB8;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_100007FE4(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) != 1)
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
    return result;
  }

  if (*(a2 + 16) == *(a2 + 8) && (*(a2 + 88) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a2 = -993;
  *(a2 + 80) = 0;
  return result;
}

void *sub_10000804C(void *result)
{
  *result = off_100030BB8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1000080C0(void *a1)
{
  *a1 = off_100030BB8;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_100008140(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

std::locale *sub_100008194(std::locale *a1)
{
  a1->__locale_ = off_100030C78;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030BB8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_100008220(std::locale *a1)
{
  a1->__locale_ = off_100030C78;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030BB8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_1000082BC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_19;
  }

  v4 = *(a2 + 16);
  if (v4 != v3)
  {
    if (v4 == v2)
    {
      v5 = *(a2 + 88);
      if ((v5 & 0x80) == 0)
      {
        if ((v5 & 4) == 0)
        {
          v6 = *v4;
          if (v6 == 95)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v7 = *(v4 - 1);
    v8 = *v4;
    if (v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0)
    {
      v9 = 1;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v9 = 0;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    if ((v8 & 0x80) != 0 || (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) == 0)
    {
      if (*(result + 40) == (v9 != 0))
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_24:
    if (*(result + 40) != (v9 != 1))
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if ((*(a2 + 88) & 8) == 0)
  {
    v6 = *(v4 - 1);
    if (v6 == 95)
    {
      goto LABEL_17;
    }

LABEL_15:
    if ((v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
    {
LABEL_17:
      if (*(result + 40) != 1)
      {
        goto LABEL_27;
      }

LABEL_20:
      *a2 = -993;
      *(a2 + 80) = 0;
      return result;
    }
  }

LABEL_19:
  if (!*(result + 40))
  {
    goto LABEL_20;
  }

LABEL_27:
  v10 = *(result + 8);
  *a2 = -994;
  *(a2 + 80) = v10;
  return result;
}

std::locale *sub_100008410(std::locale *a1)
{
  a1->__locale_ = off_100030CC0;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030BB8;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1000084E8(std::locale *a1)
{
  a1->__locale_ = off_100030CC0;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030BB8;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(a1);
}

void sub_1000085D0(uint64_t a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAA00;
  v27 = v4;
  v24 = 0;
  v26 = 0uLL;
  LOBYTE(v27) = 0;
  BYTE8(v27) = 0;
  v28 = 0;
  __p = 0;
  v20 = 0;
  v5 = (*(a1 + 44) + 1);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v21 = 0;
  *&v22 = v6;
  *(&v22 + 1) = v6;
  LOBYTE(v23) = 0;
  sub_100008C44(&__p, v5, &v22);
  *(&v23 + 1) = v7;
  v24 = v7;
  LOBYTE(v25) = 0;
  v26 = v22;
  LOBYTE(v27) = v23;
  v28 = v7;
  BYTE8(v27) = 1;
  v8 = *(a2 + 88) & 0xFFF;
  v9 = *(a2 + 16);
  if (v9 == *(a2 + 8))
  {
    v10 = *(a2 + 92);
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 84) == sub_10000876C(a1 + 16, v9, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v10))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v11 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v11 = __p;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v20 - __p) >> 3);
  if (v12 < 2)
  {
LABEL_10:
    if (!v11)
    {
      return;
    }

    goto LABEL_11;
  }

  v13 = *(a1 + 80);
  v14 = *(a2 + 32);
  v15 = 2;
  v16 = 1;
  do
  {
    v17 = &v11[24 * v16];
    v18 = v14 + 24 * v13;
    *v18 = *v17;
    *(v18 + 16) = v17[16];
    v16 = v15;
    ++v13;
    ++v15;
  }

  while (v12 > v16);
LABEL_11:
  v20 = v11;
  operator delete(v11);
}

void sub_10000874C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  *(&v49 + 1) = a3;
  v50 = 0xAAAAAAAAAAAAAA00;
  *&v49 = a3;
  *v48 = 0;
  memset(&v48[8], 0, 85);
  v52 = sub_100008F90(&v51, v48);
  if (*&v48[56])
  {
    *&v48[64] = *&v48[56];
    operator delete(*&v48[56]);
  }

  if (*&v48[32])
  {
    *&v48[40] = *&v48[32];
    operator delete(*&v48[32]);
  }

  v13 = v52;
  *(v52 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    sub_1000092AC(v13 - 8, v15 - v16, &v49);
    v13 = v52;
  }

  v18 = *(v13 - 5);
  v19 = *(a1 + 32);
  v20 = (*(v13 - 4) - v18) >> 4;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      *(v13 - 4) = v18 + 16 * v19;
    }
  }

  else
  {
    sub_100009470(v13 - 40, v19 - v20);
    v13 = v52;
  }

  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  v21 = 1;
  *(v13 - 4) = a6;
  while (1)
  {
    if ((v21 & 0xFFF) == 0 && (v21 >> 12) >= a3 - a2)
    {
      sub_100008E5C();
    }

    v23 = (v13 - 6);
    v24 = *(v13 - 2);
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 6);
    }

    v25 = *v23;
    if (*v23 > -994)
    {
      if (v25 != -993)
      {
        if (v25 == -992)
        {
          *&v30 = 0xAAAAAAAAAAAAAAAALL;
          *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v48[64] = v30;
          *&v48[80] = v30;
          *&v48[32] = v30;
          *&v48[48] = v30;
          *v48 = v30;
          *&v48[16] = v30;
          sub_1000095A4(v48, v13 - 6);
          (*(**(v13 - 2) + 24))(*(v13 - 2), 1, v13 - 6);
          (*(**&v48[80] + 24))(*&v48[80], 0, v48);
          v31 = v52;
          if (v52 >= v53)
          {
            v52 = sub_100008F90(&v51, v48);
            if (*&v48[56])
            {
              *&v48[64] = *&v48[56];
              operator delete(*&v48[56]);
            }
          }

          else
          {
            v32 = *&v48[16];
            *v52 = *v48;
            v31[1] = v32;
            *(v31 + 6) = 0;
            *(v31 + 7) = 0;
            *(v31 + 4) = 0;
            *(v31 + 5) = 0;
            v31[2] = *&v48[32];
            *(v31 + 6) = *&v48[48];
            *&v48[32] = 0;
            *&v48[40] = 0;
            *(v31 + 8) = 0;
            *(v31 + 9) = 0;
            *(v31 + 56) = *&v48[56];
            *(v31 + 9) = *&v48[72];
            memset(&v48[48], 0, 32);
            v33 = *&v48[80];
            *(v31 + 85) = *&v48[85];
            *(v31 + 10) = v33;
            v52 = v31 + 6;
          }

          if (*&v48[32])
          {
            *&v48[40] = *&v48[32];
            operator delete(*&v48[32]);
          }
        }

        else if (v25 != -991)
        {
          goto LABEL_60;
        }

        goto LABEL_17;
      }

      goto LABEL_32;
    }

    if ((v25 + 995) >= 2)
    {
      break;
    }

LABEL_17:
    v22 = v51;
    v13 = v52;
    ++v21;
    if (v51 == v52)
    {
      v17 = 0;
      if (!v51)
      {
        return v17;
      }

      goto LABEL_44;
    }
  }

  if (v25 != -1000)
  {
LABEL_60:
    sub_100008EB4();
  }

  v26 = *(v13 - 10);
  if ((a5 & 0x20) != 0 && v26 == a2 || (a5 & 0x1000) != 0 && v26 != a3)
  {
LABEL_32:
    v27 = v52;
    v28 = *(v52 - 5);
    if (v28)
    {
      *(v52 - 4) = v28;
      operator delete(v28);
    }

    v29 = *(v27 - 8);
    if (v29)
    {
      *(v27 - 7) = v29;
      operator delete(v29);
    }

    v52 = v27 - 6;
    goto LABEL_17;
  }

  v39 = *a4;
  *v39 = a2;
  *(v39 + 8) = v26;
  *(v39 + 16) = 1;
  v40 = *(v13 - 8);
  v41 = *(v13 - 7) - v40;
  if (v41)
  {
    v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    v43 = (v40 + 16);
    v44 = 1;
    do
    {
      v45 = v39 + 24 * v44;
      *v45 = *(v43 - 1);
      v46 = *v43;
      v43 += 24;
      *(v45 + 16) = v46;
    }

    while (v42 > v44++);
  }

  v17 = 1;
  v22 = v51;
  if (v51)
  {
LABEL_44:
    v34 = v52;
    v35 = v22;
    if (v52 != v22)
    {
      do
      {
        v36 = *(v34 - 5);
        if (v36)
        {
          *(v34 - 4) = v36;
          operator delete(v36);
        }

        v37 = *(v34 - 8);
        if (v37)
        {
          *(v34 - 7) = v37;
          operator delete(v37);
        }

        v34 -= 6;
      }

      while (v34 != v22);
      v35 = v51;
    }

    v52 = v22;
    operator delete(v35);
  }

  return v17;
}

void sub_100008BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100008E18(&a9);
  sub_100008F0C((v9 - 104));
  _Unwind_Resume(a1);
}

char *sub_100008C44(char **a1, unint64_t a2, uint64_t *a3)
{
  v6 = a1[2];
  v7 = *a1;
  result = v7;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) < a2)
  {
    if (v7)
    {
      a1[1] = v7;
      operator delete(v7);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_29;
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= a2)
    {
      v10 = a2;
    }

    v11 = v9 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v10;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_29:
      sub_100005C50();
    }

    v12 = 24 * v11;
    result = operator new(24 * v11);
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v12];
    v13 = 24 * a2;
    v14 = &result[24 * a2];
    do
    {
      *result = *a3;
      *(result + 2) = a3[2];
      result += 24;
      v13 -= 24;
    }

    while (v13);
    goto LABEL_28;
  }

  v15 = a1[1];
  v16 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v7) >> 3);
  if (v16 >= a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v7) >> 3);
  }

  if (v17)
  {
    v18 = *a3;
    v19 = a3[1];
    v20 = v17;
    v21 = *(a3 + 16);
    if (v17 == 1)
    {
      goto LABEL_32;
    }

    result = &v7[24 * (v17 & 0xFFFFFFFFFFFFFFFELL)];
    v20 = v17 & 1;
    v22 = v7 + 24;
    v23 = v17 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v22 - 3) = v18;
      *(v22 - 2) = v19;
      *v22 = v18;
      *(v22 + 1) = v19;
      *(v22 - 8) = v21;
      v22[16] = v21;
      v22 += 48;
      v23 -= 2;
    }

    while (v23);
    if (v17 != (v17 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_32:
      do
      {
        *result = v18;
        *(result + 1) = v19;
        result[16] = v21;
        result += 24;
        --v20;
      }

      while (v20);
    }
  }

  if (a2 <= v16)
  {
    v14 = &v7[24 * a2];
LABEL_28:
    a1[1] = v14;
    return result;
  }

  v24 = &v15[24 * (a2 - v16)];
  v25 = 24 * a2 - 24 * v16;
  do
  {
    v26 = *a3;
    *(v15 + 2) = a3[2];
    *v15 = v26;
    v15 += 24;
    v25 -= 24;
  }

  while (v25);
  a1[1] = v24;
  return result;
}

void *sub_100008E18(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_100008E5C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_complexity);
}

void sub_100008EB4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_unknown);
}

void **sub_100008F0C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_100008F90(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_100005C50();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    if (v6 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_100005928();
    }

    v7 = operator new(96 * v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[96 * v2];
  __p = v7;
  v19 = v8;
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 1) = v9;
  *(v8 + 2) = *(a2 + 32);
  *(v8 + 6) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v8 + 56) = *(a2 + 56);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 9) = v10;
  *(v8 + 10) = v11;
  v20 = v8 + 96;
  v21 = &v7[96 * v6];
  sub_10000910C(a1, &__p);
  v12 = a1[1];
  v13 = v19;
  while (1)
  {
    v14 = v20;
    if (v20 == v13)
    {
      break;
    }

    v20 -= 96;
    v15 = *(v14 - 5);
    if (v15)
    {
      *(v14 - 4) = v15;
      operator delete(v15);
    }

    v16 = *(v14 - 8);
    if (v16)
    {
      *(v14 - 7) = v16;
      operator delete(v16);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v12;
}

void sub_1000090F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100009234(va);
  _Unwind_Resume(a1);
}

void sub_10000910C(void *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *(v7 + 1);
      *v8 = *v7;
      *(v8 + 16) = v9;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v8 + 32) = *(v7 + 2);
      *(v8 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = *(v7 + 7);
      *(v8 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v10 = v7[10];
      *(v8 + 85) = *(v7 + 85);
      *(v8 + 80) = v10;
      v7 += 12;
      v8 += 96;
    }

    while (v7 != v5);
    do
    {
      v11 = v4[7];
      if (v11)
      {
        v4[8] = v11;
        operator delete(v11);
      }

      v12 = v4[4];
      if (v12)
      {
        v4[5] = v12;
        operator delete(v12);
      }

      v4 += 12;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_100009234(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }

    v5 = *(i - 64);
    if (v5)
    {
      *(i - 56) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000092AC(char **a1, unint64_t a2, __int128 *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v13 = &v4[24 * a2];
      v14 = 24 * a2;
      do
      {
        v15 = *a3;
        *(v4 + 2) = *(a3 + 2);
        *v4 = v15;
        v4 += 24;
        v14 -= 24;
      }

      while (v14);
      v4 = v13;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100005C50();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100005928();
      }

      v9 = a2;
      v10 = a3;
      v11 = a1;
      v12 = operator new(24 * v8);
      a1 = v11;
      a3 = v10;
      a2 = v9;
    }

    else
    {
      v12 = 0;
    }

    v16 = &v12[24 * v5];
    v17 = 24 * a2;
    v18 = &v16[24 * a2];
    v19 = v16;
    do
    {
      v20 = *a3;
      *(v19 + 2) = *(a3 + 2);
      *v19 = v20;
      v19 += 24;
      v17 -= 24;
    }

    while (v17);
    v21 = &v12[24 * v8];
    v22 = *a1;
    v23 = &v16[*a1 - v4];
    if (v4 != *a1)
    {
      v24 = v23;
      do
      {
        v25 = *v22;
        *(v24 + 2) = *(v22 + 2);
        *v24 = v25;
        v24 += 24;
        v22 += 24;
      }

      while (v22 != v4);
      v22 = *a1;
    }

    *a1 = v23;
    a1[1] = v18;
    a1[2] = v21;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

void sub_100009470(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v12;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_100005C50();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 >> 60)
      {
        sub_100005928();
      }

      v10 = a2;
      v11 = operator new(16 * v9);
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = 16 * a2;
    bzero(&v11[16 * (v6 >> 4)], 16 * a2);
    memcpy(v11, v5, v6);
    *a1 = v11;
    *(a1 + 8) = &v11[16 * (v6 >> 4) + v13];
    *(a1 + 16) = &v11[16 * v9];
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_1000095A4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = 0;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(a2 + 4);
  v6 = *(a2 + 5);
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_100005C50();
    }

    v9 = operator new(v8);
    *(a1 + 32) = v9;
    *(a1 + 40) = v9;
    *(a1 + 48) = &v9[v8];
    v10 = 24 * ((v8 - 24) / 0x18uLL) + 24;
    memcpy(v9, v7, v10);
    *(a1 + 40) = &v9[v10];
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v12 = *(a2 + 7);
  v11 = *(a2 + 8);
  v13 = v11 - v12;
  if (v11 != v12)
  {
    if (v13 < 0)
    {
      sub_100005C50();
    }

    v14 = operator new(v11 - v12);
    *(a1 + 56) = v14;
    *(a1 + 64) = v14;
    *(a1 + 72) = &v14[v13];
    v15 = v13 & 0x7FFFFFFFFFFFFFF0;
    memcpy(v14, v12, v15);
    *(a1 + 64) = &v14[v15];
  }

  v16 = *(a2 + 10);
  *(a1 + 85) = *(a2 + 85);
  *(a1 + 80) = v16;
  return a1;
}

void sub_1000096E0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_100009714(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = v5 == 94 ? a2 + 2 : a2 + 1;
    v8 = operator new(0xB0uLL);
    sub_10000B0EC(v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_23;
    }

    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      sub_10000AF44(v8, 93);
      ++v7;
    }

    if (v7 == a3)
    {
      goto LABEL_23;
    }

    do
    {
      sub_10000C3C4(a1, v7, a3, v8);
      v10 = v9 == v7;
      v7 = v9;
    }

    while (!v10);
    if (v9 == a3)
    {
      goto LABEL_23;
    }

    if (*v9 == 45)
    {
      v11 = v9;
      sub_10000AF44(v8, 45);
      v9 = v11 + 1;
    }

    if (v9 == a3 || *v9 != 93)
    {
LABEL_23:
      sub_10000C36C();
    }

    return v9 + 1;
  }

  return a2;
}

void sub_100009878()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badrepeat);
}

unsigned __int8 *sub_1000098D0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
  if (!v5 || (v4 - 123) < 3)
  {
    return a2;
  }

  sub_10000A1F0(a1, v4);
  return a2 + 1;
}

void *sub_100009950(void *result)
{
  *result = off_100030BB8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1000099C4(void *a1)
{
  *a1 = off_100030BB8;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_100009A44()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_escape);
}

unsigned __int8 *sub_100009A9C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v5 = *a2;
  if (v5 > 0x63)
  {
    if (v5 == 119)
    {
      v6 = operator new(0xB0uLL);
      sub_10000B0EC(v6, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_14;
    }

    if (v5 == 115)
    {
      v7 = operator new(0xB0uLL);
      sub_10000B0EC(v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_17;
    }

    if (v5 != 100)
    {
      return v3;
    }

    v7 = operator new(0xB0uLL);
    sub_10000B0EC(v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_12:
    *(*(a1 + 56) + 8) = v7;
    *(a1 + 56) = v7;
    v8 = v7[40] | 0x400;
LABEL_18:
    v7[40] = v8;
    goto LABEL_19;
  }

  switch(v5)
  {
    case 'D':
      v7 = operator new(0xB0uLL);
      sub_10000B0EC(v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_12;
    case 'S':
      v7 = operator new(0xB0uLL);
      sub_10000B0EC(v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_17:
      *(*(a1 + 56) + 8) = v7;
      *(a1 + 56) = v7;
      v8 = v7[40] | 0x4000;
      goto LABEL_18;
    case 'W':
      v6 = operator new(0xB0uLL);
      sub_10000B0EC(v6, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_14:
      *(*(a1 + 56) + 8) = v6;
      *(a1 + 56) = v6;
      v6[40] |= 0x500u;
      sub_10000AF44(v6, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *sub_100009CFC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          v17 = a2;
          v18 = 12;
          goto LABEL_80;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      if (v4 == 110)
      {
        if (!a4)
        {
          v17 = a2;
          v18 = 10;
          goto LABEL_80;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }
    }

    else
    {
      switch(v4)
      {
        case '0':
          if (!a4)
          {
            v17 = a2;
            v18 = 0;
            goto LABEL_80;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 0;
          return a2 + 1;
        case 'c':
          if (a2 + 1 == a3 || ((a2[1] & 0xDF) - 65) > 0x19u)
          {
            goto LABEL_96;
          }

          v6 = a2[1] & 0x1F;
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = v6;
            *(a4 + 1) = 0;
            return a2 + 2;
          }

          else
          {
            v19 = a2;
            sub_10000A1F0(a1, v6);
            return v19 + 2;
          }

        case '_':
          goto LABEL_96;
      }
    }

    goto LABEL_74;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v17 = a2;
        v18 = 13;
        goto LABEL_80;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 13;
      return a2 + 1;
    }

    if (v4 == 116)
    {
      if (!a4)
      {
        v17 = a2;
        v18 = 9;
        goto LABEL_80;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 9;
      return a2 + 1;
    }

LABEL_74:
    if ((v4 & 0x80000000) == 0 && (*(*(*(a1 + 8) + 16) + 4 * *a2) & 0x500) != 0)
    {
      goto LABEL_96;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    v17 = a2;
    v18 = v4;
LABEL_80:
    sub_10000A1F0(a1, v18);
    return v17 + 1;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_96;
    }

    v8 = a2[1];
    if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
    {
      goto LABEL_96;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_96;
    }

    v9 = *a2;
    v10 = -48;
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
    {
      v9 |= 0x20u;
      if ((v9 - 97) >= 6)
      {
        goto LABEL_96;
      }

      v10 = -87;
    }

    v5 = 16 * (v10 + v9);
LABEL_46:
    if (a2 + 1 == a3)
    {
      goto LABEL_96;
    }

    v11 = a2[1];
    v12 = -48;
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      v11 |= 0x20u;
      if ((v11 - 97) >= 6)
      {
        goto LABEL_96;
      }

      v12 = -87;
    }

    if (a2 + 2 != a3)
    {
      v13 = a2[2];
      v14 = -48;
      if ((v13 & 0xF8) == 0x30 || (v13 & 0xFE) == 0x38)
      {
        goto LABEL_56;
      }

      v13 |= 0x20u;
      if ((v13 - 97) < 6)
      {
        v14 = -87;
LABEL_56:
        v15 = v13 + 16 * (v5 + v12 + v11) + v14;
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v15;
          *(a4 + 1) = 0;
          return a2 + 3;
        }

        v16 = a2;
        sub_10000A1F0(a1, v15);
        return v16 + 3;
      }
    }

LABEL_96:
    sub_100009A44();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_46;
    }

    goto LABEL_74;
  }

  if (!a4)
  {
    v17 = a2;
    v18 = 11;
    goto LABEL_80;
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = 11;
  return a2 + 1;
}

void *sub_10000A1F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v8 = operator new(0x30uLL);
    v9 = *(*(a1 + 56) + 8);
    *v8 = off_100030D50;
    *(v8 + 1) = v9;
    std::locale::locale(v8 + 2, a1);
    *(v8 + 24) = *(a1 + 8);
    result = (*(**(a1 + 8) + 40))(*(a1 + 8), a2);
    v8[40] = result;
  }

  else
  {
    if ((v4 & 8) == 0)
    {
      result = operator new(0x18uLL);
      v6 = *(a1 + 56);
      v7 = *(v6 + 8);
      *result = off_100030DE0;
      result[1] = v7;
      *(result + 16) = a2;
      *(v6 + 8) = result;
      *(a1 + 56) = result;
      return result;
    }

    v8 = operator new(0x30uLL);
    v10 = *(*(a1 + 56) + 8);
    *v8 = off_100030D98;
    *(v8 + 1) = v10;
    result = std::locale::locale(v8 + 2, a1);
    *(v8 + 24) = *(a1 + 8);
    v8[40] = a2;
  }

  *(*(a1 + 56) + 8) = v8;
  *(a1 + 56) = v8;
  return result;
}

void sub_10000A334(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = off_100030BB8;
  locale = v1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_10000A39C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_backref);
}

__n128 sub_10000A3F4(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v9 = operator new(0x30uLL);
    v10 = v9;
    v9[1].__locale_ = *(*(a1 + 56) + 8);
    v11 = off_100030E28;
  }

  else
  {
    if ((v4 & 8) == 0)
    {
      v5 = operator new(0x18uLL);
      v7 = *(a1 + 56);
      v8 = *(v7 + 8);
      *v5 = off_100030EB8;
      v5[1] = v8;
      *(v5 + 4) = a2;
      *(v7 + 8) = v5;
      *(a1 + 56) = v5;
      return result;
    }

    v9 = operator new(0x30uLL);
    v10 = v9;
    v9[1].__locale_ = *(*(a1 + 56) + 8);
    v11 = off_100030E70;
  }

  v9->__locale_ = v11;
  std::locale::locale(v9 + 2, a1);
  result = *(a1 + 8);
  *&v10[3].__locale_ = result;
  LODWORD(v10[5].__locale_) = a2;
  *(*(a1 + 56) + 8) = v10;
  *(a1 + 56) = v10;
  return result;
}

std::locale *sub_10000A4FC(std::locale *a1)
{
  a1->__locale_ = off_100030D50;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030BB8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_10000A588(std::locale *a1)
{
  a1->__locale_ = off_100030D50;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030BB8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_10000A624(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    *(a2 + 80) = *(v4 + 8);
  }

  return result;
}

std::locale *sub_10000A6C4(std::locale *a1)
{
  a1->__locale_ = off_100030D98;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030BB8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_10000A750(std::locale *a1)
{
  a1->__locale_ = off_100030D98;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030BB8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_10000A7EC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void *sub_10000A834(void *result)
{
  *result = off_100030BB8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_10000A8A8(void *a1)
{
  *a1 = off_100030BB8;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_10000A928(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

std::locale *sub_10000A970(std::locale *a1)
{
  a1->__locale_ = off_100030E28;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030BB8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_10000A9FC(std::locale *a1)
{
  a1->__locale_ = off_100030E28;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030BB8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_10000AA98(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) != 1 || (v4 = *(v3 + 8) - *v3, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  v6 = result;
  v7 = *(v3 + 8) != *v3;
  if (v4 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*v3 + v8));
      result = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*(a2 + 16) + v8));
      if (v9 != result)
      {
        goto LABEL_3;
      }

      if (v4 == ++v8)
      {
        v5 = *(a2 + 16);
        break;
      }
    }
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(v6 + 8);
  return result;
}

std::locale *sub_10000ABC8(std::locale *a1)
{
  a1->__locale_ = off_100030E70;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030BB8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_10000AC54(std::locale *a1)
{
  a1->__locale_ = off_100030E70;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030BB8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_10000ACF0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) != 1 || (v3 = *v2, v4 = *(v2 + 8) - *v2, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  if (v4 >= 1)
  {
    v6 = v4;
    v7 = *(a2 + 16);
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = *v7++;
      if (v8 != v10)
      {
        goto LABEL_3;
      }
    }

    while (--v6);
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_10000AD7C(void *result)
{
  *result = off_100030BB8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_10000ADF0(void *a1)
{
  *a1 = off_100030BB8;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_10000AE70(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_10000A39C();
  }

  v4 = v3 + 24 * (v2 - 1);
  if (*(v4 + 16) != 1)
  {
    goto LABEL_5;
  }

  v6 = v4;
  v5 = *v4;
  v7 = *(v6 + 8) - v5;
  v8 = *(a2 + 16);
  if (*(a2 + 24) - v8 < v7)
  {
    goto LABEL_5;
  }

  v9 = result;
  v10 = a2;
  result = memcmp(v5, *(a2 + 16), v7);
  a2 = v10;
  if (!result)
  {
    *v10 = -994;
    *(v10 + 16) = v8 + v7;
    *(v10 + 80) = *(v9 + 8);
  }

  else
  {
LABEL_5:
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

void sub_10000AF44(uint64_t a1, char a2)
{
  if (*(a1 + 169) == 1)
  {
    v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    if (v5 < v4)
    {
      *v5 = v3;
      v6 = (v5 + 1);
      goto LABEL_28;
    }

    v10 = *(a1 + 40);
    v11 = v5 - v10;
    v12 = v5 - v10 + 1;
    if (v12 >= 0)
    {
      v13 = v4 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        v15 = v3;
        v16 = operator new(v14);
        v3 = v15;
      }

      else
      {
        v16 = 0;
      }

      v22 = &v16[v14];
      v16[v11] = v3;
      v6 = &v16[v11 + 1];
      goto LABEL_26;
    }

LABEL_29:
    sub_100005C50();
  }

  v7 = *(a1 + 170);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (v9 < v8)
  {
    *v9 = a2;
    *(a1 + 48) = v9 + 1;
    return;
  }

  v10 = *(a1 + 40);
  v11 = v9 - v10;
  v17 = v9 - v10 + 1;
  if (v17 < 0)
  {
    goto LABEL_29;
  }

  v18 = v8 - v10;
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    v20 = a2;
    v21 = operator new(v19);
    a2 = v20;
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  v22 = &v16[v19];
  v16[v11] = a2;
  v6 = &v16[v11 + 1];
LABEL_26:
  memcpy(v16, v10, v11);
  *(a1 + 40) = v16;
  *(a1 + 48) = v6;
  *(a1 + 56) = v22;
  if (v10)
  {
    operator delete(v10);
    *(a1 + 48) = v6;
    return;
  }

LABEL_28:
  *(a1 + 48) = v6;
}

uint64_t sub_10000B0EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = off_100030F00;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_10000B22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  sub_100004DD8((v9 + 136));
  v14 = *(v9 + 112);
  if (v14)
  {
    *(v9 + 120) = v14;
    operator delete(v14);
    sub_10000BC84(v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
LABEL_3:
      v16 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    sub_10000BC84(v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  *(v9 + 72) = v15;
  operator delete(v15);
  v16 = *v12;
  if (!*v12)
  {
LABEL_4:
    std::locale::~locale((v9 + 16));
    *v9 = v10;
    v17 = *(v9 + 8);
    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v9 + 48) = v16;
  operator delete(v16);
  std::locale::~locale((v9 + 16));
  *v9 = v10;
  v17 = *(v9 + 8);
  if (!v17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  (*(*v17 + 8))(v17);
  _Unwind_Resume(a1);
}

void sub_10000B2F0(std::locale *a1)
{
  v1 = sub_10000BD78(a1);

  operator delete(v1);
}

void sub_10000B318(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v23 = 0;
    v24 = *(a1 + 168);
    goto LABEL_59;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_34;
  }

  LOBYTE(v112) = *v4;
  v6 = v4[1];
  HIBYTE(v112) = v4[1];
  if (*(a1 + 169) == 1)
  {
    LOBYTE(v112) = (*(**(a1 + 24) + 40))(*(a1 + 24));
    HIBYTE(v112) = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_10000BEF4(a1 + 16, &v112, __p, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    v25 = __p[1];
    operator delete(__p[0]);
    if (v25)
    {
      goto LABEL_8;
    }

LABEL_34:
    v24 = 0;
    v23 = 1;
    goto LABEL_35;
  }

  if (!HIBYTE(__p[2]))
  {
    goto LABEL_34;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (v112 != *(v10 - 1) || HIBYTE(v112) != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_225;
  }

LABEL_17:
  if (*(a1 + 170) != 1 || *(a1 + 88) == *(a1 + 96))
  {
LABEL_179:
    if (*(a1 + 136) == *(a1 + 144))
    {
      v86 = 0;
      goto LABEL_207;
    }

    memset(__p, 170, sizeof(__p));
    sub_10000C1A8(a1 + 16, &v112, __p, __p);
    v87 = *(a1 + 136);
    v88 = HIBYTE(__p[2]);
    v89 = *(a1 + 144) - v87;
    if (v89)
    {
      v90 = v2;
      v91 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v92 = HIBYTE(__p[2]);
      }

      else
      {
        v92 = __p[1];
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v93 = __p;
      }

      else
      {
        v93 = __p[0];
      }

      if (v91 <= 1)
      {
        v94 = 1;
      }

      else
      {
        v94 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3);
      }

      v95 = 1;
      v96 = 1;
      do
      {
        v97 = *(v87 + 23);
        v98 = v97;
        if ((v97 & 0x80u) != 0)
        {
          v97 = *(v87 + 8);
        }

        if (v92 == v97)
        {
          v99 = v98 >= 0 ? v87 : *v87;
          if (!memcmp(v93, v99, v92))
          {
            v86 = 1;
            v70 = 5;
            v2 = v90;
            if ((v88 & 0x80) == 0)
            {
              goto LABEL_204;
            }

            goto LABEL_203;
          }
        }

        v96 = v95++ < v91;
        v87 += 24;
        --v94;
      }

      while (v94);
      v70 = 0;
      v86 = 0;
      v2 = v90;
      if ((v88 & 0x80) == 0)
      {
        goto LABEL_204;
      }
    }

    else
    {
      v96 = 0;
      v70 = 0;
      v86 = 0;
      if ((HIBYTE(__p[2]) & 0x80) == 0)
      {
LABEL_204:
        if (v96)
        {
          goto LABEL_205;
        }

LABEL_207:
        if (v112 < 0)
        {
          v103 = *(a1 + 164);
        }

        else
        {
          v100 = *(a1 + 160);
          v101 = *(*(a1 + 24) + 16);
          v102 = *(v101 + 4 * v112);
          if (((v102 & v100) != 0 || v112 == 95 && (v100 & 0x80) != 0) && (SHIBYTE(v112) & 0x8000000000000000) == 0 && ((*(v101 + 4 * SHIBYTE(v112)) & v100) != 0 || (v100 & 0x80) != 0 && SHIBYTE(v112) == 95))
          {
            goto LABEL_225;
          }

          v103 = *(a1 + 164);
          if ((v103 & v102) != 0 || v112 == 95 && (v103 & 0x80) != 0)
          {
LABEL_224:
            v24 = v86;
LABEL_226:
            v23 = 2;
            goto LABEL_59;
          }
        }

        if ((SHIBYTE(v112) & 0x8000000000000000) == 0)
        {
          if ((*(*(*(a1 + 24) + 16) + 4 * SHIBYTE(v112)) & v103) == 0)
          {
            v24 = 1;
            if (SHIBYTE(v112) != 95 || (v103 & 0x80) == 0)
            {
              goto LABEL_226;
            }
          }

          goto LABEL_224;
        }

LABEL_225:
        v24 = 1;
        goto LABEL_226;
      }
    }

LABEL_203:
    operator delete(__p[0]);
    goto LABEL_204;
  }

  memset(v111, 170, sizeof(v111));
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  __p[2] = 0x2AAAAAAAAAAAAAALL;
  __p[0] = 0xAAAAAAAAAA00AAAALL;
  LOWORD(__p[0]) = v112;
  (*(**(a1 + 32) + 32))(v111);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *(a1 + 88);
  v13 = HIBYTE(v111[2]);
  v14 = *(a1 + 96) - v12;
  if (!v14)
  {
    v22 = 0;
    v70 = 0;
    goto LABEL_175;
  }

  v106 = v2;
  v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
  if (SHIBYTE(v111[2]) >= 0)
  {
    v16 = v111;
  }

  else
  {
    v16 = v111[0];
  }

  v17 = HIBYTE(v111[2]);
  if (SHIBYTE(v111[2]) >= 0)
  {
    v18 = HIBYTE(v111[2]);
  }

  else
  {
    v18 = v111[1];
  }

  if (v15 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
  }

  v20 = (v12 + 47);
  v21 = 1;
  v22 = 1;
  do
  {
    v60 = *(v20 - 24);
    if (v60 >= 0)
    {
      v61 = (v20 - 47);
    }

    else
    {
      v61 = *(v20 - 47);
    }

    if (v60 >= 0)
    {
      v62 = *(v20 - 24);
    }

    else
    {
      v62 = *(v20 - 39);
    }

    if (v18 >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = v18;
    }

    v64 = memcmp(v61, v16, v63);
    if (v64)
    {
      if ((v64 & 0x80000000) == 0)
      {
        goto LABEL_109;
      }
    }

    else if (v62 > v18)
    {
      goto LABEL_109;
    }

    v65 = *v20;
    if (v65 >= 0)
    {
      v66 = (v20 - 23);
    }

    else
    {
      v66 = *(v20 - 23);
    }

    if (v65 >= 0)
    {
      v67 = *v20;
    }

    else
    {
      v67 = *(v20 - 15);
    }

    if (v67 >= v18)
    {
      v68 = v18;
    }

    else
    {
      v68 = v67;
    }

    v69 = memcmp(v16, v66, v68);
    if (v69)
    {
      if (v69 < 0)
      {
LABEL_134:
        v70 = 5;
        goto LABEL_173;
      }
    }

    else if (v18 <= v67)
    {
      goto LABEL_134;
    }

LABEL_109:
    v22 = v21++ < v15;
    v20 += 48;
    --v19;
  }

  while (v19);
  v70 = 0;
LABEL_173:
  v2 = v106;
  v13 = v17;
LABEL_175:
  if (v13 < 0)
  {
    operator delete(v111[0]);
  }

  if (!v22)
  {
    goto LABEL_179;
  }

  v86 = 1;
LABEL_205:
  v23 = 2;
  v24 = v86;
  if (v70)
  {
    goto LABEL_59;
  }

LABEL_35:
  v26 = **(v2 + 16);
  LOBYTE(v112) = **(v2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v26) = (*(**(a1 + 24) + 40))(*(a1 + 24), v26);
    LOBYTE(v112) = v26;
  }

  v27 = *(a1 + 40);
  v28 = *(a1 + 48) - v27;
  if (v28)
  {
    if (v28 <= 1)
    {
      v28 = 1;
    }

    do
    {
      v29 = *v27++;
      if (v29 == v26)
      {
        goto LABEL_58;
      }

      --v28;
    }

    while (v28);
  }

  v30 = *(a1 + 164);
  if (v30 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v26 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v26) & v30) == 0)
    {
      v32 = (v30 >> 7) & 1;
      v31 = v26 == 95 ? v32 : 0;
    }

    else
    {
      v31 = 1;
    }

    v33 = *(a1 + 72);
    v34 = memchr(*(a1 + 64), v26, v33 - *(a1 + 64));
    v35 = !v34 || v34 == v33;
    v36 = !v35;
    if ((v31 & 1) == 0 && !v36)
    {
      goto LABEL_58;
    }
  }

  v39 = *(a1 + 88);
  v40 = *(a1 + 96);
  if (v39 == v40)
  {
    goto LABEL_139;
  }

  memset(v111, 170, sizeof(v111));
  v109 = v24;
  if (*(a1 + 170) == 1)
  {
    __p[1] = 0xAAAAAAAAAAAAAAAALL;
    __p[2] = 0x1AAAAAAAAAAAAAALL;
    __p[0] = 0xAAAAAAAAAAAAAAAALL;
    LOWORD(__p[0]) = v26;
    (*(**(a1 + 32) + 32))(v111);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v39 = *(a1 + 88);
    v41 = HIBYTE(v111[2]);
    v42 = *(a1 + 96) - v39;
    if (!v42)
    {
LABEL_68:
      v43 = 0;
      if ((v41 & 0x80) != 0)
      {
        goto LABEL_137;
      }

      goto LABEL_138;
    }
  }

  else
  {
    v41 = 1;
    HIBYTE(v111[2]) = 1;
    LOWORD(v111[0]) = v26;
    v42 = v40 - v39;
    if (!v42)
    {
      goto LABEL_68;
    }
  }

  v105 = v23;
  v107 = v2;
  v44 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 4);
  v104 = v41;
  if ((v41 & 0x80u) == 0)
  {
    v45 = v111;
  }

  else
  {
    v45 = v111[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v46 = v41;
  }

  else
  {
    v46 = v111[1];
  }

  if (v44 <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 4);
  }

  v48 = (v39 + 47);
  v49 = 1;
  v43 = 1;
  while (2)
  {
    v50 = *(v48 - 24);
    if (v50 >= 0)
    {
      v51 = (v48 - 47);
    }

    else
    {
      v51 = *(v48 - 47);
    }

    if (v50 >= 0)
    {
      v52 = *(v48 - 24);
    }

    else
    {
      v52 = *(v48 - 39);
    }

    if (v46 >= v52)
    {
      v53 = v52;
    }

    else
    {
      v53 = v46;
    }

    v54 = memcmp(v51, v45, v53);
    if (v54)
    {
      if (v54 < 0)
      {
        goto LABEL_96;
      }
    }

    else if (v52 <= v46)
    {
LABEL_96:
      v55 = *v48;
      if (v55 >= 0)
      {
        v56 = (v48 - 23);
      }

      else
      {
        v56 = *(v48 - 23);
      }

      if (v55 >= 0)
      {
        v57 = *v48;
      }

      else
      {
        v57 = *(v48 - 15);
      }

      if (v57 >= v46)
      {
        v58 = v46;
      }

      else
      {
        v58 = v57;
      }

      v59 = memcmp(v45, v56, v58);
      if (v59)
      {
        if (v59 < 0)
        {
LABEL_107:
          v24 = 1;
          v2 = v107;
          goto LABEL_136;
        }
      }

      else if (v46 <= v57)
      {
        goto LABEL_107;
      }
    }

    v43 = v49++ < v44;
    v48 += 48;
    if (--v47)
    {
      continue;
    }

    break;
  }

  v2 = v107;
  v24 = v109;
LABEL_136:
  v23 = v105;
  if (v104 < 0)
  {
LABEL_137:
    operator delete(v111[0]);
  }

LABEL_138:
  if (!v43)
  {
LABEL_139:
    if (*(a1 + 136) != *(a1 + 144))
    {
      v71 = v23;
      memset(__p, 170, sizeof(__p));
      v72 = __p;
      sub_10000C1A8(a1 + 16, &v112, &v112 + 1, __p);
      v73 = *(a1 + 136);
      v74 = HIBYTE(__p[2]);
      v75 = *(a1 + 144) - v73;
      if (v75)
      {
        v110 = v24;
        v108 = v2;
        v76 = 0xAAAAAAAAAAAAAAABLL * (v75 >> 3);
        if (SHIBYTE(__p[2]) >= 0)
        {
          v77 = HIBYTE(__p[2]);
        }

        else
        {
          v77 = __p[1];
        }

        if (SHIBYTE(__p[2]) < 0)
        {
          v72 = __p[0];
        }

        if (v76 <= 1)
        {
          v78 = 1;
        }

        else
        {
          v78 = 0xAAAAAAAAAAAAAAABLL * (v75 >> 3);
        }

        v79 = 1;
        v80 = 1;
        do
        {
          v81 = *(v73 + 23);
          v82 = v81;
          if ((v81 & 0x80u) != 0)
          {
            v81 = *(v73 + 8);
          }

          if (v77 == v81)
          {
            v83 = v82 >= 0 ? v73 : *v73;
            if (!memcmp(v72, v83, v77))
            {
              v24 = 1;
              v2 = v108;
              if ((v74 & 0x80) == 0)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            }
          }

          v80 = v79++ < v76;
          v73 += 24;
          --v78;
        }

        while (v78);
        v2 = v108;
        v24 = v110;
        if ((v74 & 0x80) == 0)
        {
          goto LABEL_162;
        }

LABEL_161:
        operator delete(__p[0]);
      }

      else
      {
        v80 = 0;
        if ((HIBYTE(__p[2]) & 0x80) != 0)
        {
          goto LABEL_161;
        }
      }

LABEL_162:
      if (v80)
      {
        v23 = v71;
        goto LABEL_59;
      }

      LOBYTE(v26) = v112;
      v23 = v71;
    }

    v84 = *(a1 + 160);
    if ((v26 & 0x80) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v26) & v84) == 0)
    {
      v85 = (v84 >> 7) & 1;
      if (v26 != 95)
      {
        LOBYTE(v85) = 0;
      }

      v24 |= v85;
      goto LABEL_59;
    }

LABEL_58:
    v24 = 1;
  }

LABEL_59:
  if (*(a1 + 168) == (v24 & 1))
  {
    v37 = 0;
    v38 = -993;
  }

  else
  {
    *(v2 + 16) += v23;
    v37 = *(a1 + 8);
    v38 = -995;
  }

  *v2 = v38;
  *(v2 + 80) = v37;
}

void sub_10000BC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_10000BC84(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_10000BD1C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

std::locale *sub_10000BD78(std::locale *a1)
{
  a1->__locale_ = off_100030F00;
  locale = a1[17].__locale_;
  if (locale)
  {
    v3 = a1[18].__locale_;
    v4 = a1[17].__locale_;
    if (v3 != locale)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != locale);
      v4 = a1[17].__locale_;
    }

    a1[18].__locale_ = locale;
    operator delete(v4);
  }

  v6 = a1[14].__locale_;
  if (v6)
  {
    a1[15].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[11].__locale_;
  if (v7)
  {
    v8 = a1[12].__locale_;
    v9 = a1[11].__locale_;
    if (v8 == v7)
    {
LABEL_21:
      a1[12].__locale_ = v7;
      operator delete(v9);
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
LABEL_19:
          operator delete(*v10);
        }
      }

      else
      {
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v8 = v10;
      if (v10 == v7)
      {
        v9 = a1[11].__locale_;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v11 = a1[8].__locale_;
  if (v11)
  {
    a1[9].__locale_ = v11;
    operator delete(v11);
  }

  v12 = a1[5].__locale_;
  if (v12)
  {
    a1[6].__locale_ = v12;
    operator delete(v12);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030BB8;
  v13 = a1[1].__locale_;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

void sub_10000BEF4(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100005880();
  }

  if (v5 <= 0x16)
  {
    __dst[23] = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  *&__dst[8] = v5;
  *&__dst[16] = v9 | 0x8000000000000000;
  *__dst = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v8[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    v12 = *__dst;
    if (!*&__dst[8])
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!__dst[23])
    {
      return;
    }

    v12 = __dst;
  }

  std::__get_collation_name(&v19, v12);
  *a4 = *&v19.__r_.__value_.__l.__data_;
  v13 = v19.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v19.__r_.__value_.__l + 2);
  v14 = HIBYTE(v13);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 8);
  }

  if (v14)
  {
LABEL_17:
    if ((__dst[23] & 0x80000000) == 0)
    {
      return;
    }

    v12 = *__dst;
LABEL_23:
    operator delete(v12);
    return;
  }

  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v12 = *__dst;
    if (*&__dst[8] >= 3uLL)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (__dst[23] < 3)
  {
LABEL_25:
    (*(**(a1 + 16) + 32))(&v19);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v19;
    if (*(a4 + 23) < 0)
    {
      v16 = *(a4 + 8);
      if (v16 == 1 || v16 == 12)
      {
        if (__dst != a4)
        {
          if (__dst[23] >= 0)
          {
            v17 = __dst;
          }

          else
          {
            v17 = *__dst;
          }

          if (__dst[23] >= 0)
          {
            v18 = __dst[23];
          }

          else
          {
            v18 = *&__dst[8];
          }

          sub_100005E08(a4, v17, v18);
        }
      }

      else
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }
    }

    else
    {
      v15 = *(a4 + 23);
      if (v15 == 1 || v15 == 12)
      {
        if (__dst != a4)
        {
          if ((__dst[23] & 0x80000000) != 0)
          {
            sub_100005D48(a4, *__dst, *&__dst[8]);
          }

          else
          {
            *a4 = *__dst;
            *(a4 + 16) = *&__dst[16];
          }
        }
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }
    }

    goto LABEL_17;
  }
}

void sub_10000C164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_10000C1A8(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE **a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100005880();
  }

  if (v5 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v5;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v5) = 0;
  memset(a4, 170, 24);
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v13, &v12[v13]);
  v14 = *(a4 + 23);
  v15 = v14;
  if (v14 < 0)
  {
    v14 = a4[1];
  }

  if (v14 == 1)
  {
    goto LABEL_26;
  }

  if (v14 != 12)
  {
    if (v15 < 0)
    {
      **a4 = 0;
      a4[1] = 0;
      if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_26:
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v15 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  v16[11] = v16[3];
  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_29;
  }
}

void sub_10000C350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000C36C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brack);
}

void sub_10000C3C4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return;
  }

  v4 = *a2;
  if (v4 == 93)
  {
    return;
  }

  v7 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v36 = 0;
  if (a2 + 1 == a3 || v4 != 91)
  {
    goto LABEL_23;
  }

  v8 = a2[1];
  if (v8 != 46)
  {
    if (v8 != 58)
    {
      if (v8 == 61)
      {
        sub_10000C994(a1, a2 + 2, a3, a4);
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

      v7 = 0;
LABEL_23:
      v17 = *(a1 + 24) & 0x1F0;
      goto LABEL_35;
    }

    if (a3 - (a2 + 2) >= 2)
    {
      v9 = a3 - a2 - 4;
      v10 = a2 + 2;
      v11 = a2 + 3;
      if (a2[2] != 58)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (*v11 == 93)
      {
        if (v10 != a3)
        {
          v25 = sub_10000DFAC(a1, a2 + 2, v10, *(a1 + 24) & 1);
          if (!v25)
          {
            sub_10000DF54();
          }

          *(a4 + 160) |= v25;
          if (SHIBYTE(v36) < 0)
          {
            goto LABEL_70;
          }

          return;
        }
      }

      else
      {
LABEL_13:
        while (v9)
        {
          --v9;
          v10 = v11;
          v12 = *v11++;
          if (v12 == 58)
          {
            goto LABEL_12;
          }
        }
      }
    }

LABEL_88:
    sub_10000C36C();
  }

  if (a3 - (a2 + 2) < 2)
  {
    goto LABEL_88;
  }

  v13 = a3 - a2 - 4;
  v14 = a2 + 2;
  v15 = a2 + 3;
  if (a2[2] != 46)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (*v15 != 93)
  {
LABEL_19:
    while (v13)
    {
      --v13;
      v14 = v15;
      v16 = *v15++;
      if (v16 == 46)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_88;
  }

  if (v14 == a3)
  {
    goto LABEL_88;
  }

  v19 = a1;
  sub_10000DADC(a1, a2 + 2, v14, &v37);
  a1 = v19;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    a1 = v19;
  }

  v36 = v38;
  *__p = v37;
  v20 = HIBYTE(v38);
  v7 = SHIBYTE(v38);
  v21 = *(&v37 + 1);
  if (v38 < 0)
  {
    v20 = __p[1];
  }

  if ((v20 - 1) >= 2)
  {
    sub_10000DA84();
  }

  a2 = v14 + 2;
  v17 = *(a1 + 24) & 0x1F0;
  if (v38 >= 0)
  {
    v21 = SHIBYTE(v38);
  }

  if (v21)
  {
    v18 = v14 + 2;
    if (a2 == a3)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_35:
  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v22) = *a2;
LABEL_44:
    if (v7 < 0)
    {
      v26 = __p[0];
      __p[1] = 1;
      *__p[0] = v22;
      v26[1] = 0;
      v18 = a2 + 1;
      if (a2 + 1 == a3)
      {
        goto LABEL_52;
      }
    }

    else
    {
      HIBYTE(v36) = 1;
      LOWORD(__p[0]) = v22;
      v18 = a2 + 1;
      if (a2 + 1 == a3)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_51;
  }

  v22 = *a2;
  if (v22 != 92)
  {
    goto LABEL_44;
  }

  v23 = a1;
  if (v17)
  {
    v24 = sub_10000CED4(a1, a2 + 1, a3, __p);
  }

  else
  {
    v24 = sub_10000CCE4(a1, a2 + 1, a3, __p, a4);
  }

  v18 = v24;
  a1 = v23;
  if (v18 == a3)
  {
LABEL_52:
    if (SHIBYTE(v36) < 0)
    {
      if (!__p[1])
      {
        goto LABEL_69;
      }

      if (__p[1] != 1)
      {
        v28 = __p[0];
LABEL_68:
        sub_10000D830(a4, *v28, *(v28 + 1));
LABEL_69:
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

      v28 = __p[0];
    }

    else
    {
      if (!HIBYTE(v36))
      {
        goto LABEL_69;
      }

      v28 = __p;
      if (HIBYTE(v36) != 1)
      {
        goto LABEL_68;
      }
    }

    sub_10000AF44(a4, *v28);
    goto LABEL_69;
  }

LABEL_51:
  v27 = *v18;
  if (v27 == 93)
  {
    goto LABEL_52;
  }

  v29 = v18 + 1;
  if (v18 + 1 == a3 || v27 != 45 || *v29 == 93)
  {
    goto LABEL_52;
  }

  v37 = 0uLL;
  v38 = 0;
  v30 = v18 + 2;
  if (v18 + 2 != a3 && *v29 == 91 && *v30 == 46)
  {
    sub_10000CC10(a1, v18 + 3, a3, &v37);
    goto LABEL_79;
  }

  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v29) = *v29;
    goto LABEL_77;
  }

  LODWORD(v29) = *v29;
  if (v29 != 92)
  {
LABEL_77:
    HIBYTE(v38) = 1;
    LOWORD(v37) = v29;
    goto LABEL_79;
  }

  if (v17)
  {
    sub_10000CED4(a1, v30, a3, &v37);
  }

  else
  {
    sub_10000CCE4(a1, v30, a3, &v37, a4);
  }

LABEL_79:
  *v33 = *__p;
  v34 = v36;
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  *v31 = v37;
  v32 = v38;
  v37 = 0uLL;
  v38 = 0;
  sub_10000D394(a4, v33, v31);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
LABEL_81:
      if ((SHIBYTE(v38) & 0x80000000) == 0)
      {
        goto LABEL_82;
      }

LABEL_86:
      operator delete(v37);
      if (SHIBYTE(v36) < 0)
      {
        goto LABEL_70;
      }

      return;
    }
  }

  else if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
    goto LABEL_81;
  }

  operator delete(v33[0]);
  if (SHIBYTE(v38) < 0)
  {
    goto LABEL_86;
  }

LABEL_82:
  if (SHIBYTE(v36) < 0)
  {
LABEL_70:
    operator delete(__p[0]);
  }
}

void sub_10000C904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

_BYTE *sub_10000C994(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_38;
  }

  v7 = a2;
  v8 = a2 + 1;
  if (*a2 != 61)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v8 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v7 = v8;
      v9 = *v8++;
      if (v9 == 61)
      {
        goto LABEL_3;
      }
    }

LABEL_38:
    sub_10000C36C();
  }

  if (v7 == a3)
  {
    goto LABEL_38;
  }

  memset(v19, 170, sizeof(v19));
  sub_10000DADC(a1, a2, v7, v19);
  v10 = SHIBYTE(v19[2]);
  if ((SHIBYTE(v19[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v19[2]))
    {
      memset(__p, 170, sizeof(__p));
      v11 = v19;
      goto LABEL_13;
    }

LABEL_39:
    sub_10000DA84();
  }

  v10 = v19[1];
  if (!v19[1])
  {
    goto LABEL_39;
  }

  memset(__p, 170, sizeof(__p));
  v11 = v19[0];
LABEL_13:
  sub_10000DD90(a1, v11, v10 + v11, __p);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
LABEL_15:
      v12 = *(a4 + 144);
      if (v12 >= *(a4 + 152))
      {
        *(a4 + 144) = sub_100005AFC(a4 + 136, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (SHIBYTE(__p[2]) < 0)
        {
          sub_10000595C(*(a4 + 144), __p[0], __p[1]);
        }

        else
        {
          v13 = *__p;
          *(v12 + 16) = __p[2];
          *v12 = v13;
        }

        *(a4 + 144) = v12 + 24;
        *(a4 + 144) = v12 + 24;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_32;
    }
  }

  else if (HIBYTE(__p[2]))
  {
    goto LABEL_15;
  }

  v14 = HIBYTE(v19[2]);
  if (SHIBYTE(v19[2]) < 0)
  {
    v14 = v19[1];
  }

  if (v14 == 2)
  {
    v16 = v19;
    if (SHIBYTE(v19[2]) < 0)
    {
      v16 = v19[0];
    }

    sub_10000D830(a4, *v16, *(v16 + 1));
  }

  else
  {
    if (v14 != 1)
    {
      sub_10000DA84();
    }

    v15 = v19;
    if (SHIBYTE(v19[2]) < 0)
    {
      v15 = v19[0];
    }

    sub_10000AF44(a4, *v15);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_36:
    operator delete(__p[0]);
    if (SHIBYTE(v19[2]) < 0)
    {
      goto LABEL_37;
    }

    return v7 + 2;
  }

LABEL_32:
  if ((SHIBYTE(v19[2]) & 0x80000000) == 0)
  {
    return v7 + 2;
  }

LABEL_37:
  operator delete(v19[0]);
  return v7 + 2;
}

void sub_10000CBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 144) = v21;
  if (a14 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      _Unwind_Resume(a1);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_10000CC10(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  v7 = a2 + 1;
  if (*a2 != 46)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v7 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v6 = v7;
      v8 = *v7++;
      if (v8 == 46)
      {
        goto LABEL_3;
      }
    }

LABEL_14:
    sub_10000C36C();
  }

  if (v6 == a3)
  {
    goto LABEL_14;
  }

  sub_10000DADC(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_10000DA84();
  }

  return v6 + 2;
}

unsigned __int8 *sub_10000CCE4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_100009A44();
  }

  v5 = *a2;
  if (v5 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v5 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 119)
      {
        *(a5 + 160) |= 0x500u;
        sub_10000AF44(a5, 95);
        return a2 + 1;
      }

      goto LABEL_25;
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      goto LABEL_25;
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 8;
    return a2 + 1;
  }

  else
  {
    if (*a2 > 0x52u)
    {
      if (v5 == 83)
      {
        *(a5 + 164) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 87)
      {
        *(a5 + 164) |= 0x500u;
        sub_10000E120(a5, 95);
        return a2 + 1;
      }

      goto LABEL_25;
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

LABEL_25:

      return sub_100009CFC(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 0;
    return a2 + 1;
  }
}

unsigned __int8 *sub_10000CED4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_75:
    sub_100009A44();
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
    {
      if (v4 != 34 && v4 != 47)
      {
        goto LABEL_48;
      }
    }

    else if (v4 != 92)
    {
      if (v4 == 97)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 7;
          return a2 + 1;
        }

        else
        {
          sub_10000A1F0(a1, 7);
          return a2 + 1;
        }
      }

      if (v4 == 98)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 8;
          return a2 + 1;
        }

        else
        {
          sub_10000A1F0(a1, 8);
          return a2 + 1;
        }
      }

      goto LABEL_48;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    else
    {
      sub_10000A1F0(a1, v4);
      return a2 + 1;
    }
  }

  if (*a2 <= 0x71u)
  {
    if (v4 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      else
      {
        sub_10000A1F0(a1, 12);
        return a2 + 1;
      }
    }

    if (v4 == 110)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }

      else
      {
        sub_10000A1F0(a1, 10);
        return a2 + 1;
      }
    }
  }

  else
  {
    switch(v4)
    {
      case 'r':
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 13;
          return a2 + 1;
        }

        else
        {
          sub_10000A1F0(a1, 13);
          return a2 + 1;
        }

      case 't':
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 9;
          return a2 + 1;
        }

        else
        {
          sub_10000A1F0(a1, 9);
          return a2 + 1;
        }

      case 'v':
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 11;
          return a2 + 1;
        }

        else
        {
          sub_10000A1F0(a1, 11);
          return a2 + 1;
        }
    }
  }

LABEL_48:
  if ((v4 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_75;
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3 && (*v9 & 0xF8) == 0x30)
  {
    v8 = *v9 + 8 * v8 - 48;
    v9 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v10 = *v9 + 8 * v8 - 48;
      if ((*v9 & 0xF8) == 0x30)
      {
        v9 = a2 + 3;
        v8 = v10;
      }
    }
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    result = v9;
    *a4 = v8;
    *(a4 + 1) = 0;
  }

  else
  {
    sub_10000A1F0(a1, v8);
    return v9;
  }

  return result;
}

void sub_10000D394(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) != 1)
  {
    v11 = a2[23];
    if (v11 < 0)
    {
      if (*(a2 + 1) != 1)
      {
        goto LABEL_73;
      }
    }

    else if (v11 != 1)
    {
      goto LABEL_73;
    }

    v29 = a3[23];
    if (v29 < 0)
    {
      v29 = *(a3 + 1);
    }

    if (v29 != 1)
    {
LABEL_73:
      sub_10000E594();
    }

    if (*(a1 + 169) != 1)
    {
LABEL_63:
      *v39 = *v4;
      v40 = *(v4 + 2);
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
      *v4 = 0;
      *__p = *v3;
      v42 = *(v3 + 2);
      *v3 = 0;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      sub_10000E2C8((a1 + 88), v39);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v40) < 0)
        {
          goto LABEL_67;
        }
      }

      else if (SHIBYTE(v40) < 0)
      {
        goto LABEL_67;
      }

      return;
    }

    v30 = a2;
    if ((v11 & 0x80000000) != 0)
    {
      v30 = *a2;
    }

    v31 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v30);
    if (v4[23] < 0)
    {
      **v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
LABEL_60:
        v33 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v32);
        v34 = v3;
        if (v3[23] < 0)
        {
          v34 = *v3;
        }

        *v34 = v33;
        goto LABEL_63;
      }
    }

    v32 = *v3;
    goto LABEL_60;
  }

  if (*(a1 + 169))
  {
    for (i = 0; ; ++i)
    {
      v7 = v4[23];
      if ((v7 & 0x8000000000000000) != 0)
      {
        if (i >= *(v4 + 1))
        {
LABEL_25:
          for (j = 0; ; ++j)
          {
            v17 = v3[23];
            if ((v17 & 0x8000000000000000) != 0)
            {
              if (j >= *(v3 + 1))
              {
                goto LABEL_44;
              }
            }

            else if (j >= v17)
            {
              goto LABEL_44;
            }

            v18 = v3;
            if ((v17 & 0x80000000) != 0)
            {
              v18 = *v3;
            }

            v19 = (*(**(a1 + 24) + 40))(*(a1 + 24), v18[j]);
            v20 = v3;
            if (v3[23] < 0)
            {
              v20 = *v3;
            }

            v20[j] = v19;
          }
        }
      }

      else if (i >= v7)
      {
        goto LABEL_25;
      }

      v8 = v4;
      if ((v7 & 0x80000000) != 0)
      {
        v8 = *v4;
      }

      v9 = (*(**(a1 + 24) + 40))(*(a1 + 24), v8[i]);
      v10 = v4;
      if (v4[23] < 0)
      {
        v10 = *v4;
      }

      v10[i] = v9;
    }
  }

  for (k = 0; ; ++k)
  {
    v14 = a2[23];
    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (k >= v14)
    {
      goto LABEL_35;
    }

LABEL_23:
    v13 = a2;
    if ((v14 & 0x80000000) != 0)
    {
      v13 = *a2;
      v15 = *a2;
    }

    else
    {
      v15 = a2;
    }

    v15[k] = v13[k];
  }

  if (k < *(a2 + 1))
  {
    goto LABEL_23;
  }

LABEL_35:
  for (m = 0; ; ++m)
  {
    v23 = a3[23];
    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (m >= v23)
    {
      goto LABEL_44;
    }

LABEL_42:
    v22 = a3;
    if ((v23 & 0x80000000) != 0)
    {
      v22 = *a3;
      v24 = *a3;
    }

    else
    {
      v24 = a3;
    }

    v24[m] = v22[m];
  }

  if (m < *(a3 + 1))
  {
    goto LABEL_42;
  }

LABEL_44:
  v25 = v4[23];
  if (v25 < 0)
  {
    v26 = v4;
    v4 = *v4;
    v25 = *(v26 + 1);
  }

  sub_10000E440(a1 + 16, v4, &v4[v25]);
  v27 = v3[23];
  if (v27 < 0)
  {
    v28 = v3;
    v3 = *v3;
    v27 = *(v28 + 1);
  }

  sub_10000E440(a1 + 16, v3, &v3[v27]);
  *v39 = *v37;
  v40 = v38;
  *__p = *v35;
  v42 = v36;
  sub_10000E2C8((a1 + 88), v39);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      return;
    }

LABEL_67:
    operator delete(v39[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_67;
  }
}

void sub_10000D7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000BD1C(va);
  _Unwind_Resume(a1);
}

void sub_10000D7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  sub_10000BD1C(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}