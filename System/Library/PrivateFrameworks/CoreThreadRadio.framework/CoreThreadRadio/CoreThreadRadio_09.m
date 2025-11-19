uint64_t RcpHostContext::too_many_partitions(RcpHostContext *this)
{
  gettimeofday(&v11, &v10);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!logging_obg)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      v4 = *(this + 1488);
      tv_sec = v11.tv_sec;
      if (v4)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

LABEL_7:
    v4 = *(this + 1488);
    tv_sec = v11.tv_sec;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_19:
    result = 0;
    *(this + 1488) = 1;
    *(this + 743) = tv_sec;
    return result;
  }

  v3 = logging_obg;
  if (!syslog_is_the_mask_enabled(7) || !os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_7;
  }

  RcpHostContext::too_many_partitions(this, &v11.tv_sec, v3);
  v4 = *(this + 1488);
  tv_sec = v11.tv_sec;
  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_8:
  v6 = *(this + 743);
  if (tv_sec < v6 || tv_sec >= v6 + 3600)
  {
    goto LABEL_19;
  }

  *(this + 1488) = v4 + 1;
  if (v4 < 20)
  {
    return 0;
  }

  *(this + 1488) = 1;
  *(this + 743) = tv_sec;
  v7 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v7)
  {
    v8 = v7;
    if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      RcpHostContext::too_many_partitions();
      return 1;
    }

    return 1;
  }

  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    return 1;
  }

  CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  return 1;
}

void RcpHostContext::get_device_data(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v53 = 0;
  v54 = 0;
  v6 = 0;
  v7 = 0;
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  g_matter_total_subscription_count = 0;
  v58 = 0u;
  v59 = 0u;
  v60 = 1065353216;
  *v55 = 0u;
  *__p = 0u;
  v57 = 1065353216;
  v8 = *(a1 + 6136);
  if (v8 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = *(a1 + 6136);
  }

  v44 = a1 + 6144;
  do
  {
    v10 = v44 + 216 * (v8 & 3);
    v2 |= *v10;
    v3 |= *(v10 + 4) > 0;
    v4 |= *(v10 + 8);
    v11 = *(v10 + 72) | v6;
    BYTE4(v53) |= *(v10 + 88);
    LOBYTE(v54) = *(v10 + 73) | v54;
    v12 = *(v10 + 74) | v7;
    HIDWORD(v54) += *(v10 + 84);
    for (i = (v10 + 112); ; std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(&v58, i + 8))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }

    for (j = (v10 + 152); ; std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(v55, j + 8))
    {
      j = *j;
      if (!j)
      {
        break;
      }
    }

    if (v5)
    {
      v15 = *(v10 + 12);
      v16 = *(v10 + 16);
      v45 += v15 + *(v10 + 20);
      LODWORD(v46) = v15 + v46;
      HIDWORD(v46) += v16 + *(v10 + 24);
      LODWORD(v47) = v16 + v47;
      g_matter_total_subscription_count += *(v10 + 28);
      HIDWORD(v47) += *(v10 + 32);
      LODWORD(v48) = *(v10 + 36) + v48;
      if (*(v10 + 40) <= v50)
      {
        v17 = v50;
      }

      else
      {
        v17 = *(v10 + 40);
      }

      HIDWORD(v48) += *(v10 + 44);
      LODWORD(v49) = *(v10 + 48) + v49;
      v18 = HIDWORD(v49);
      if (*(v10 + 52) > HIDWORD(v49))
      {
        v18 = *(v10 + 52);
      }

      HIDWORD(v49) = v18;
      LODWORD(v50) = v17;
      HIDWORD(v50) += *(v10 + 56);
      LODWORD(v51) = *(v10 + 60) + v51;
      HIDWORD(v51) += *(v10 + 64);
      LODWORD(v52) = *(v10 + 68) + v52;
      HIDWORD(v52) += *(v10 + 80);
      LODWORD(v53) = *(v10 + 76) + v53;
    }

    v7 = v12;
    v6 = v11;
    LOBYTE(v8) = v8 - 1;
    v5 = 1;
    v20 = v9-- <= 0;
  }

  while (!v20);
  if (v2)
  {
    *(a2 + 1) |= 4u;
  }

  if (v3)
  {
    *(a2 + 2) |= 2u;
    if ((v4 & 1) == 0)
    {
LABEL_23:
      if ((v53 & 0x100000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_23;
  }

  *(a2 + 2) |= 1u;
  if ((v53 & 0x100000000) == 0)
  {
LABEL_24:
    if ((v11 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(a2 + 12) |= 8u;
  if ((v11 & 1) == 0)
  {
LABEL_25:
    if ((v54 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(a2 + 12) |= 0x10u;
  if ((v54 & 1) == 0)
  {
LABEL_26:
    if ((v12 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(a2 + 12) |= 0x20u;
  if ((v12 & 1) == 0)
  {
LABEL_27:
    v19 = 0;
    if (v45 < 0x33)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(a2 + 12) |= 0x40u;
  v19 = 0;
  if (v45 < 0x33)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v46 <= v45)
  {
    v19 = 100 * v46 / v45;
    if (v19 <= 0x4F)
    {
      *(a2 + 2) |= 4u;
    }
  }

LABEL_38:
  v20 = HIDWORD(v46) < 0x33 || v47 > HIDWORD(v46);
  v21 = v20;
  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = (100 * v47) / HIDWORD(v46);
    if (v22 <= 0x4F)
    {
      *(a2 + 2) |= 8u;
    }
  }

  if (HIDWORD(v47))
  {
    *(a2 + 2) |= 0x10u;
  }

  if (v48)
  {
    *(a2 + 2) |= 0x20u;
  }

  if (v50 <= 0x14)
  {
    if (!v50)
    {
      goto LABEL_58;
    }

    v23 = 0x80;
  }

  else
  {
    v23 = 64;
  }

  *(a2 + 2) |= v23;
LABEL_58:
  if (HIDWORD(v48))
  {
    *(a2 + 1) |= 0x10u;
  }

  if (v49)
  {
    *(a2 + 1) |= 0x20u;
  }

  if (HIDWORD(v49) <= 0x14)
  {
    if (!HIDWORD(v49) || v50 > 0x14)
    {
      goto LABEL_68;
    }

    v24 = 0x80;
  }

  else
  {
    v24 = 64;
  }

  *(a2 + 1) |= v24;
LABEL_68:
  v25 = HIDWORD(v50) < 0x65 || v51 > HIDWORD(v50);
  v26 = v25;
  if (!v25 && (100 * v51) / HIDWORD(v50) <= 0x4F)
  {
    *(a2 + 12) |= 1u;
  }

  if (HIDWORD(v51) >= 0x65 && v52 <= HIDWORD(v51) && (100 * v52) / HIDWORD(v51) <= 0x4F)
  {
    *(a2 + 12) |= 2u;
  }

  if (HIDWORD(v52) >= 0x65 && v53 <= HIDWORD(v52) && (100 * v53) / HIDWORD(v52) >= 0x15)
  {
    *(a2 + 12) |= 4u;
  }

  if (HIDWORD(v54))
  {
    *(a2 + 8) |= 2u;
  }

  v27 = *(&v59 + 1);
  *(a2 + 9) = BYTE8(v59);
  v28 = __p[1];
  *(a2 + 10) = __p[1];
  *a2 = 0;
  if (((v21 | v26) & 1) != 0 || ((v29 = v19 - 40, v19 >= 0x28) ? (v30 = v22 >= 0x28) : (v30 = 0), v30 ? (v31 = 0) : (v31 = 1), v30 && v29 >= 0x28 && v22 - 40 > 0x27))
  {
    if (!v27)
    {
      goto LABEL_104;
    }
  }

  else
  {
    if (v31)
    {
      v42 = 2;
    }

    else
    {
      v42 = 1;
    }

    *a2 = v42;
    if (!v27)
    {
      goto LABEL_104;
    }
  }

  v32 = v59;
  if (v59)
  {
    do
    {
      v33 = *v32;
      operator delete(v32);
      v32 = v33;
    }

    while (v33);
  }

  *&v59 = 0;
  if (*(&v58 + 1))
  {
    bzero(v58, 8 * *(&v58 + 1));
  }

  *(&v59 + 1) = 0;
  v28 = __p[1];
LABEL_104:
  if (v28)
  {
    v34 = __p[0];
    if (__p[0])
    {
      do
      {
        v35 = *v34;
        operator delete(v34);
        v34 = v35;
      }

      while (v35);
    }

    __p[0] = 0;
    if (v55[1])
    {
      bzero(v55[0], 8 * v55[1]);
    }

    __p[1] = 0;
  }

  v36 = __p[0];
  if (__p[0])
  {
    do
    {
      v37 = *v36;
      operator delete(v36);
      v36 = v37;
    }

    while (v37);
  }

  v38 = v55[0];
  v55[0] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  v39 = v59;
  if (v59)
  {
    do
    {
      v40 = *v39;
      operator delete(v39);
      v39 = v40;
    }

    while (v40);
  }

  v41 = v58;
  *&v58 = 0;
  if (v41)
  {
    operator delete(v41);
  }
}

void sub_1000CD218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::unordered_set<unsigned short>::~unordered_set[abi:ne200100](va);
  std::unordered_set<unsigned short>::~unordered_set[abi:ne200100](v13 - 128);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<unsigned short>::~unordered_set[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t update_group_abc_state(uint64_t result)
{
  v1 = RcpHostContext::sRcpHostContext;
  v2 = (RcpHostContext::sRcpHostContext + 4096);
  *(RcpHostContext::sRcpHostContext + 7080) = result;
  if ((result & 1) == 0)
  {
    if (v2[2935] < 0)
    {
      **(v1 + 7008) = 0;
      *(v1 + 7016) = 0;
      if ((v2[2959] & 0x80000000) == 0)
      {
LABEL_4:
        v2[2936] = 0;
        v2[2959] = 0;
        if ((v2[2983] & 0x80000000) == 0)
        {
LABEL_5:
          v2[2960] = 0;
          v2[2983] = 0;
LABEL_9:
          v2[2984] = 0;
          return result;
        }

LABEL_8:
        **(v1 + 7056) = 0;
        *(v1 + 7064) = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v2[2912] = 0;
      v2[2935] = 0;
      if ((v2[2959] & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    **(v1 + 7032) = 0;
    *(v1 + 7040) = 0;
    if ((v2[2983] & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  return result;
}

void _OTCTL_CMD_DATA::~_OTCTL_CMD_DATA(_OTCTL_CMD_DATA *this)
{
  v1 = *(this + 201);
  if (v1)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = this;
        v2(this + 1616, this + 1616, 2);
        this = v3;
      }
    }

    *(this + 201) = 0;
  }
}

void _PROPERTY_GET_CMD_DATA::~_PROPERTY_GET_CMD_DATA(_PROPERTY_GET_CMD_DATA *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = this;
        v2(this + 32, this + 32, 2);
        this = v3;
      }
    }

    *(this + 3) = 0;
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void _PROPERTY_SET_CMD_DATA::~_PROPERTY_SET_CMD_DATA(_PROPERTY_SET_CMD_DATA *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(this + 40, this + 40, 2);
      }
    }

    *(this + 4) = 0;
  }

  v4 = *(this + 3);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void _SERVICE_ADD_CMD_DATA::~_SERVICE_ADD_CMD_DATA(_SERVICE_ADD_CMD_DATA *this)
{
  v1 = *(this + 64);
  if (v1)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = this;
        v2(this + 520, this + 520, 2);
        this = v3;
      }
    }

    *(this + 64) = 0;
  }
}

void _SERVICE_REMOVE_CMD_DATA::~_SERVICE_REMOVE_CMD_DATA(_SERVICE_REMOVE_CMD_DATA *this)
{
  v1 = *(this + 33);
  if (v1)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = this;
        v2(this + 272, this + 272, 2);
        this = v3;
      }
    }

    *(this + 33) = 0;
  }
}

void _ROUTE_ADD_CMD_DATA::~_ROUTE_ADD_CMD_DATA(_ROUTE_ADD_CMD_DATA *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = this;
        v2(this + 40, this + 40, 2);
        this = v3;
      }
    }

    *(this + 4) = 0;
  }
}

void _ROUTE_REMOVE_CMD_DATA::~_ROUTE_REMOVE_CMD_DATA(_ROUTE_REMOVE_CMD_DATA *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = this;
        v2(this + 32, this + 32, 2);
        this = v3;
      }
    }

    *(this + 3) = 0;
  }
}

void _UPDATE_ACCESSORY_ADDR_DATA::~_UPDATE_ACCESSORY_ADDR_DATA(_UPDATE_ACCESSORY_ADDR_DATA *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(this + 80, this + 80, 2);
      }
    }

    *(this + 9) = 0;
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
    if ((*(this + 47) & 0x80000000) == 0)
    {
LABEL_8:
      if ((*(this + 23) & 0x80000000) == 0)
      {
        return;
      }

LABEL_12:
      operator delete(*this);
      return;
    }
  }

  else if ((*(this + 47) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*(this + 3));
  if (*(this + 23) < 0)
  {
    goto LABEL_12;
  }
}

void _FORM_NETWORK_CMD_DATA::~_FORM_NETWORK_CMD_DATA(_FORM_NETWORK_CMD_DATA *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(this + 48, this + 48, 2);
      }
    }

    *(this + 5) = 0;
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(this, *(this + 1));
}

void _NET_SCAN_CMD_DATA::~_NET_SCAN_CMD_DATA(_NET_SCAN_CMD_DATA *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(this + 32, this + 32, 2);
      }
    }

    *(this + 3) = 0;
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(this, *(this + 1));
}

void _GENERATE_PSKC_CMD_DATA::~_GENERATE_PSKC_CMD_DATA(_GENERATE_PSKC_CMD_DATA *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(this + 56, this + 56, 2);
      }
    }

    *(this + 6) = 0;
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(this + 24, *(this + 4));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void _PEEK_CMD_DATA::~_PEEK_CMD_DATA(_PEEK_CMD_DATA *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = this;
        v2(this + 16, this + 16, 2);
        this = v3;
      }
    }

    *(this + 1) = 0;
  }
}

void SendDiagnosticsCmdData::~SendDiagnosticsCmdData(SendDiagnosticsCmdData *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = this;
        v2(this + 48, this + 48, 2);
        this = v3;
      }
    }

    *(this + 5) = 0;
  }
}

void _DIAG_GET_DEVICE_DATA_CMD_DATA::~_DIAG_GET_DEVICE_DATA_CMD_DATA(_DIAG_GET_DEVICE_DATA_CMD_DATA *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = this;
        v2(this + 56, this + 56, 2);
        this = v3;
      }
    }

    *(this + 6) = 0;
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void DeviceDataInstance::clear(DeviceDataInstance *this)
{
  *this = 0;
  *(this + 4) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 67) = 0;
  *(this + 76) = 0;
  *(this + 81) = 0;
  if (*(this + 15))
  {
    v2 = *(this + 14);
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

    *(this + 14) = 0;
    v4 = *(this + 13);
    if (v4)
    {
      bzero(*(this + 12), 8 * v4);
    }

    *(this + 15) = 0;
  }

  if (*(this + 20))
  {
    v5 = *(this + 19);
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    *(this + 19) = 0;
    v7 = *(this + 18);
    if (v7)
    {
      bzero(*(this + 17), 8 * v7);
    }

    *(this + 20) = 0;
  }

  if (*(this + 25))
  {
    v8 = *(this + 24);
    if (v8)
    {
      do
      {
        v9 = *v8;
        operator delete(v8);
        v8 = v9;
      }

      while (v9);
    }

    *(this + 24) = 0;
    v10 = *(this + 23);
    if (v10)
    {
      bzero(*(this + 22), 8 * v10);
    }

    *(this + 25) = 0;
  }
}

void boost::signals2::signal<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = off_1004C2740;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
      }
    }
  }

  operator delete();
}

uint64_t boost::signals2::signal<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_1000CDCE8(_Unwind_Exception *a1)
{
  v3 = v2;
  boost::detail::shared_count::~shared_count(v3);
  boost::shared_ptr<void>::~shared_ptr(v1);
  _Unwind_Resume(a1);
}

void sub_1000CDD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  boost::detail::shared_count::~shared_count(v10);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~grouped_list(&a10);
  _Unwind_Resume(a1);
}

void sub_1000CDD4C(uint64_t a1, ...)
{
  va_start(va, a1);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~grouped_list(va);
  operator delete();
}

void sub_1000CDD70(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1000CDE2C(_Unwind_Exception *a1)
{
  boost::detail::shared_count::~shared_count(v2);
  boost::shared_ptr<void>::~shared_ptr(v1);
  _Unwind_Resume(a1);
}

void sub_1000CDF78(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete();
  }

  __cxa_rethrow();
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::optional_last_value<void>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy((a1 + 3), a1[4]);
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void sub_1000CE1C0(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::mutex>(v1);
  __cxa_rethrow();
}

pthread_mutex_t *boost::checked_delete<boost::signals2::mutex>(pthread_mutex_t *result)
{
  if (result)
  {
    pthread_mutex_destroy(result);

    operator delete();
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::mutex>::dispose(uint64_t result)
{
  if (*(result + 16))
  {
    pthread_mutex_destroy(*(result + 16));

    operator delete();
  }

  return result;
}

void sub_1000CE390(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>>(v1);
  __cxa_rethrow();
}

uint64_t boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>>(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 32);
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = result;
        (*(*v1 + 16))(v1);
        result = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          result = v2;
        }
      }
    }

    v3 = *(result + 8);
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete();
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete();
  }

  return result;
}

void boost::signals2::signal<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::WPAN::NetworkInstance const&)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = off_1004C2920;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
      }
    }
  }

  operator delete();
}

void sub_1000CE950(_Unwind_Exception *a1)
{
  v3 = v2;
  boost::detail::shared_count::~shared_count(v3);
  boost::shared_ptr<void>::~shared_ptr(v1);
  _Unwind_Resume(a1);
}

void sub_1000CE998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  boost::detail::shared_count::~shared_count(v10);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~grouped_list(&a10);
  _Unwind_Resume(a1);
}

void sub_1000CE9B4(uint64_t a1, ...)
{
  va_start(va, a1);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~grouped_list(va);
  operator delete();
}

void sub_1000CE9D8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1000CEA94(_Unwind_Exception *a1)
{
  boost::detail::shared_count::~shared_count(v2);
  boost::shared_ptr<void>::~shared_ptr(v1);
  _Unwind_Resume(a1);
}

void sub_1000CEBE0(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>>(v1);
  __cxa_rethrow();
}

void boost::signals2::signal<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::EnergyScanResultEntry const&)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = off_1004C29F0;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
      }
    }
  }

  operator delete();
}

void sub_1000CEED8(_Unwind_Exception *a1)
{
  v3 = v2;
  boost::detail::shared_count::~shared_count(v3);
  boost::shared_ptr<void>::~shared_ptr(v1);
  _Unwind_Resume(a1);
}

void sub_1000CEF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  boost::detail::shared_count::~shared_count(v10);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~grouped_list(&a10);
  _Unwind_Resume(a1);
}

void sub_1000CEF3C(uint64_t a1, ...)
{
  va_start(va, a1);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~grouped_list(va);
  operator delete();
}

void sub_1000CEF60(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1000CF01C(_Unwind_Exception *a1)
{
  boost::detail::shared_count::~shared_count(v2);
  boost::shared_ptr<void>::~shared_ptr(v1);
  _Unwind_Resume(a1);
}

void sub_1000CF168(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>>(v1);
  __cxa_rethrow();
}

void boost::signals2::signal<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = off_1004C2AC0;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
      }
    }
  }

  operator delete();
}

void sub_1000CF460(_Unwind_Exception *a1)
{
  v3 = v2;
  boost::detail::shared_count::~shared_count(v3);
  boost::shared_ptr<void>::~shared_ptr(v1);
  _Unwind_Resume(a1);
}

void sub_1000CF4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  boost::detail::shared_count::~shared_count(v10);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~grouped_list(&a10);
  _Unwind_Resume(a1);
}

void sub_1000CF4C4(uint64_t a1, ...)
{
  va_start(va, a1);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~grouped_list(va);
  operator delete();
}

void sub_1000CF4E8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(boost::any const&),boost::function<void ()(boost::any const&)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = v2[1];
      std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(boost::any const&),boost::function<void ()(boost::any const&)>>,boost::signals2::mutex>>>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(boost::any const&),boost::function<void ()(boost::any const&)>>,boost::signals2::mutex>>>::__delete_node[abi:ne200100](int a1, void *__p)
{
  v3 = __p[3];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  operator delete(__p);
}

void sub_1000CF6BC(_Unwind_Exception *a1)
{
  boost::detail::shared_count::~shared_count(v2);
  boost::shared_ptr<void>::~shared_ptr(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(boost::any const&),boost::function<void ()(boost::any const&)>>,boost::signals2::mutex>>>::grouped_list(uint64_t a1, uint64_t a2)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = a1 + 32;
  v4 = *(a2 + 24);
  v5 = (a2 + 32);
  if (v4 != (a2 + 32))
  {
    do
    {
      if (!*std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>((a1 + 24), (a1 + 32), &v23, &v22, v4 + 8))
      {
        operator new();
      }

      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  *(a1 + 56) = *(a2 + 56);
  v9 = *(a2 + 24);
  if (v9 != v5)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 8);
    do
    {
      v10[6] = v11;
      v12 = a2;
      if (v9 != v5)
      {
        v12 = *(v9 + 6);
      }

      v13 = *(v9 + 1);
      v14 = v13;
      v15 = v9;
      if (v13)
      {
        do
        {
          v16 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v16 = *(v15 + 2);
          v8 = *v16 == v15;
          v15 = v16;
        }

        while (!v8);
      }

      v17 = a2;
      if (v16 != v5)
      {
        v17 = *(v16 + 6);
      }

      while (v12 != v17)
      {
        v12 = *(v12 + 8);
        v11 = *(v11 + 8);
      }

      if (v13)
      {
        do
        {
          v18 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v18 = *(v9 + 2);
          v8 = *v18 == v9;
          v9 = v18;
        }

        while (!v8);
      }

      v19 = v10[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v10[2];
          v8 = *v20 == v10;
          v10 = v20;
        }

        while (!v8);
      }

      v9 = v18;
      v10 = v20;
    }

    while (v18 != v5);
  }

  return a1;
}

void sub_1000CF9E8(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(v2, *(v1 + 32));
  std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~list(v1);
  _Unwind_Resume(a1);
}

void sub_1000CFAF4(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>>(v1);
  __cxa_rethrow();
}

void sub_1000CFC08(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::invocation_state>(v1);
  __cxa_rethrow();
}

void sub_1000CFD1C(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>>(v1);
  __cxa_rethrow();
}

void boost::signals2::signal<void ()(std::string const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = off_1004C2C50;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
      }
    }
  }

  operator delete();
}

void sub_1000D0014(_Unwind_Exception *a1)
{
  v3 = v2;
  boost::detail::shared_count::~shared_count(v3);
  boost::shared_ptr<void>::~shared_ptr(v1);
  _Unwind_Resume(a1);
}

void sub_1000D005C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  boost::detail::shared_count::~shared_count(v10);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~grouped_list(&a10);
  _Unwind_Resume(a1);
}

void sub_1000D0078(uint64_t a1, ...)
{
  va_start(va, a1);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~grouped_list(va);
  operator delete();
}

void sub_1000D009C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1000D0158(_Unwind_Exception *a1)
{
  boost::detail::shared_count::~shared_count(v2);
  boost::shared_ptr<void>::~shared_ptr(v1);
  _Unwind_Resume(a1);
}

void sub_1000D02A4(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>>(v1);
  __cxa_rethrow();
}

void *boost::signals2::signal<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = off_1004C2740;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::WPAN::NetworkInstance const&)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = off_1004C2920;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::EnergyScanResultEntry const&)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = off_1004C29F0;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(std::string const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = off_1004C2C50;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

uint64_t boost::signals2::detail::signal_impl<void ()(std::string const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&)>,boost::signals2::mutex>::operator()(uint64_t a1, uint64_t a2)
{
  v26 = 0;
  v27 = 0;
  v4 = *(a1 + 24);
  v32 = 10;
  __p = v30;
  v34 = 0;
  v35 = v4;
  pthread_mutex_lock(v4);
  v5 = *(a1 + 8);
  if (!v5)
  {
    v7 = *a1;
    goto LABEL_13;
  }

  explicit = atomic_load_explicit(v5 + 2, memory_order_acquire);
  v7 = *a1;
  if (explicit == 1)
  {
    v8 = *v7;
    v9 = *(a1 + 16);
    if (v9 == *v7)
    {
      v9 = v8[1];
      *&v28 = v9;
      if (v8 == v9)
      {
LABEL_10:
        *(a1 + 16) = v9;
        goto LABEL_11;
      }
    }

    else
    {
      *&v28 = *(a1 + 16);
    }

    v10 = v9[2];
    if (*(v10 + 24))
    {
      v9 = v9[1];
    }

    else
    {
      v9 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>>>::erase(v8, (v10 + 64), &v28);
      v7 = *a1;
    }

    goto LABEL_10;
  }

LABEL_11:
  v5 = *(a1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
  }

LABEL_13:
  v11 = v27;
  v26 = v7;
  v27 = v5;
  if (v11)
  {
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
      if (atomic_fetch_add(v11 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v11 + 24))(v11);
      }
    }
  }

  pthread_mutex_unlock(v35);
  v12 = __p;
  if (__p)
  {
    if (v34 > 0)
    {
      v18 = __p + 16 * v34;
      do
      {
        v19 = *(v18 - 1);
        if (v19)
        {
          if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v19 + 16))(v19);
            if (atomic_fetch_add(v19 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v19 + 24))(v19);
            }
          }
        }

        v18 -= 16;
      }

      while (v18 > v12);
    }

    if (v32 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v30[0] = 0;
  v36 = 10;
  v37 = &v31;
  v38 = 0;
  v39 = a2;
  v40 = 0;
  v41 = 0;
  v13 = v26;
  v14 = *v26;
  v23 = v30;
  v24 = a1;
  v25 = v14;
  *&v21 = *(v14 + 8);
  *(&v21 + 1) = v14;
  *&v22 = v30;
  *(&v22 + 1) = v14;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::lock_next_callable(&v21);
  v20[0] = *v13;
  v20[1] = v20[0];
  v20[2] = v30;
  v20[3] = v20[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::lock_next_callable(v20);
  v28 = v21;
  v29 = v22;
  v15 = v20[0];
  if (v21 == v20[0])
  {
    if (HIDWORD(v40) <= v40)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  do
  {
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::dereference(&v28);
    *&v28 = *(v28 + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::lock_next_callable(&v28);
    if (*v29 == 1)
    {
      *v29 = 0;
    }
  }

  while (v28 != v15);
  if (*(v23 + 71) > *(v23 + 70))
  {
LABEL_28:
    boost::signals2::detail::signal_impl<void ()(std::string const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&)>,boost::signals2::mutex>::force_cleanup_connections(v24, v25);
  }

LABEL_29:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>>::~slot_call_iterator_cache(v30);
  v17 = v27;
  if (v27 && atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v17 + 16))(v17);
    if (atomic_fetch_add(v17 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v17 + 24))(v17);
    }
  }

  return result;
}

void sub_1000D09F0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1000D0A40);
}

uint64_t boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::dereference(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    v3 = *(*(*a1 + 16) + 32);
    v4 = *(v3 + 24);
    if (!v4)
    {
      std::runtime_error::runtime_error(&v6, "call to empty boost::function");
      v6.__vftable = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(&v6);
    }

    (*((v4 & 0xFFFFFFFFFFFFFFFELL) + 8))(v3 + 32, *(v2 + 272));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  return a1[2] + 1;
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v1 = *a1;
  if (*a1 == a1[3])
  {
    return;
  }

  if (v1 == a1[1])
  {
LABEL_31:
    v18 = a1[3];
    if (v18 != v1)
    {
      v19 = *(v18 + 16);
      v26 = 10;
      __p = v25;
      v28 = 0;
      v29 = v19;
      (*(*v19 + 24))(v19);
      v20 = a1[2];
      a1[3] = a1[1];
      v21 = *(v20 + 288);
      if (v21)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v21, v25);
      }

      *(v20 + 288) = 0;
      (*(*v29 + 32))(v29);
      v22 = __p;
      if (__p)
      {
        if (v28 > 0)
        {
          v23 = __p + 16 * v28;
          do
          {
            v24 = *(v23 - 1);
            if (v24)
            {
              if (atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v24 + 16))(v24);
                if (atomic_fetch_add(v24 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v24 + 24))(v24);
                }
              }
            }

            v23 -= 16;
          }

          while (v23 > v22);
        }

        if (v26 >= 0xB)
        {
          operator delete(__p);
        }
      }
    }

    return;
  }

  while (1)
  {
    boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear((a1[2] + 8));
    v3 = *(*a1 + 16);
    v26 = 10;
    __p = v25;
    v28 = 0;
    v29 = v3;
    (*(*v3 + 24))(v3);
    boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>::nolock_grab_tracked_objects<boost::signals2::detail::connection_body_base,std::back_insert_iterator<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>>>(*(*a1 + 16), v25, (a1[2] + 8));
    v4 = *(*a1 + 16);
    v5 = a1[2];
    if ((*(v4 + 24) & 1) == 0)
    {
      ++*(v5 + 284);
LABEL_13:
      v11 = 1;
      goto LABEL_14;
    }

    ++*(v5 + 280);
    v6 = *(v4 + 16);
    if (v6)
    {
      if (atomic_load_explicit((v6 + 8), memory_order_acquire))
      {
        goto LABEL_13;
      }

      v5 = a1[2];
    }

    v7 = *a1;
    v8 = a1[1];
    a1[3] = *a1;
    if (v8 == v7)
    {
      v17 = *(v5 + 288);
      if (v17)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v17, v25);
      }

      v11 = 0;
      *(v5 + 288) = 0;
    }

    else
    {
      v9 = *(v7 + 16);
      v10 = *(v5 + 288);
      if (v10)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v10, v25);
      }

      *(v5 + 288) = v9;
      v11 = 0;
      if (v9)
      {
        ++*(v9 + 28);
      }
    }

LABEL_14:
    (*(*v29 + 32))(v29);
    v12 = __p;
    if (__p)
    {
      if (v28 > 0)
      {
        v15 = __p + 16 * v28;
        do
        {
          v16 = *(v15 - 1);
          if (v16)
          {
            if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v16 + 16))(v16);
              if (atomic_fetch_add(v16 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v16 + 24))(v16);
              }
            }
          }

          v15 -= 16;
        }

        while (v15 > v12);
      }

      if (v26 >= 0xB)
      {
        operator delete(__p);
      }
    }

    v13 = *a1;
    v1 = a1[1];
    if (!v11)
    {
      break;
    }

    v14 = *(v13 + 8);
    *a1 = v14;
    if (v14 == v1)
    {
      goto LABEL_31;
    }
  }

  if (v13 == v1)
  {
    goto LABEL_31;
  }
}

void sub_1000D0F3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_1000D0F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(std::string const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t *result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(std::string const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&)>,boost::signals2::mutex>::force_cleanup_connections(result[1], result[2]);
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(std::string const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v14 = 10;
  __p = &v13;
  v16 = 0;
  v17 = v4;
  pthread_mutex_lock(v4);
  if (**a1 == a2)
  {
    v5 = *(a1 + 8);
    if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v6 = **a1;
    v7 = v6[1];
    v12 = v7;
    if (v6 != v7)
    {
      do
      {
        while (1)
        {
          v8 = v7[2];
          if ((*(v8 + 24) & 1) == 0)
          {
            break;
          }

          v7 = v7[1];
          v12 = v7;
          if (v7 == v6)
          {
            goto LABEL_10;
          }
        }

        v7 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>>>::erase(v6, (v8 + 64), &v12);
        v6 = **a1;
        v12 = v7;
      }

      while (v7 != v6);
LABEL_10:
      v7 = v6;
    }

    *(a1 + 16) = v7;
  }

  pthread_mutex_unlock(v17);
  v9 = __p;
  if (__p)
  {
    if (v16 > 0)
    {
      v10 = __p + 16 * v16;
      do
      {
        v11 = *(v10 - 1);
        if (v11)
        {
          if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v11 + 16))(v11);
            if (atomic_fetch_add(v11 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v11 + 24))(v11);
            }
          }
        }

        v10 -= 16;
      }

      while (v10 > v9);
    }

    if (v14 >= 0xB)
    {
      operator delete(__p);
    }
  }
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>>::~slot_call_iterator_cache(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    v8 = 10;
    __p = v7;
    v10 = 0;
    v11 = v2;
    (*(*v2 + 24))(v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 288), v7);
    (*(*v11 + 32))(v11);
    v3 = __p;
    if (__p)
    {
      if (v10 > 0)
      {
        v5 = __p + 16 * v10;
        do
        {
          v6 = *(v5 - 1);
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          v5 -= 16;
        }

        while (v5 > v3);
      }

      if (v8 >= 0xB)
      {
        operator delete(__p);
      }
    }
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1000D1498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1000D15BC(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<HostCmdTask>(v1);
  __cxa_rethrow();
}

_OTCTL_CMD_DATA **boost::checked_delete<HostCmdTask>(_OTCTL_CMD_DATA **result)
{
  if (result)
  {
    v1 = result;
    HostCmdTask::free_apidata(result);
    v1[1] = 0;

    operator delete();
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<HostCmdTask>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    HostCmdTask::free_apidata(*(result + 16));
    *(v1 + 8) = 0;

    operator delete();
  }

  return result;
}

uint64_t **std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 8) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void OUTLINED_FUNCTION_4_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

uint64_t *OUTLINED_FUNCTION_6@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  if (*(result + 23) < 0)
  {
    v3 = *result;
  }

  return result;
}

void _GLOBAL__sub_I_host_context_cpp()
{
  qword_1004E5738 = 0;
  qword_1004E5730 = 0;
  rcp_settings = &qword_1004E5730;
  __cxa_atexit(std::map<std::string,std::string>::~map[abi:ne200100], &rcp_settings, &_mh_execute_header);
  operator new();
}

void InternalIPCAPI::InternalIPCAPI(InternalIPCAPI *this)
{
  *(this + 4) = 0;
  *(this + 3) = this + 32;
  *(this + 5) = 0;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(5))
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        *v2 = 0;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "WPANTUND-InternalXPCIPC_rcp:  Constructor", v2, 2u);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

void InternalIPCAPI::~InternalIPCAPI(InternalIPCAPI *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "WPANTUND-InternalIPCAPI: Destructor", v3, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<InternalClient>>>>::destroy(this + 24, *(this + 4));
}

uint64_t InternalIPCAPI::getInstance(InternalIPCAPI *this)
{
  result = InternalIPCAPI::_instance;
  if (!InternalIPCAPI::_instance)
  {
    operator new();
  }

  return result;
}

void InternalIPCAPI::add_interface(InternalIPCAPI *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "OTD-InternalIPCAPI - Interface added ", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(this + 1) = dispatch_queue_create("internalIpcApiQueue.xpc.queue", v4);
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(this + 2) = dispatch_queue_create("internalIpcApiDebugQueue.xpc.queue", v5);
  v6 = RcpHostContext::sRcpHostContext;
  v9 = 0u;
  v11 = 0;
  v12 = this;
  *buf = boost::function2<void,std::string const&,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf2<void,InternalIPCAPI,std::string,boost::any>,boost::_bi::list3<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>>>>(boost::_bi::bind_t<void,boost::_mfi::mf2<void,InternalIPCAPI,std::string,boost::any>,boost::_bi::list3<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>>>)::stored_vtable + 1;
  *&buf[8] = InternalIPCAPI::property_changed;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(buf, &v9 + 8);
  if (*buf && (buf[0] & 1) == 0)
  {
    if (**buf)
    {
      (**buf)(&buf[8], &buf[8], 2);
    }
  }

  v7 = *(v6 + 184);
  v8 = *(v7 + 24);
  v13 = 10;
  __p = buf;
  v15 = 0;
  v16 = v8;
  pthread_mutex_lock(v8);
  boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::nolock_connect(v7, buf);
}

void sub_1000D2A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void InternalIPCAPI::property_changed(NSObject **a1, const std::string::value_type **a2, any *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, *a2, a2[1]);
  }

  else
  {
    v34 = *a2;
  }

  if (a3->var0)
  {
    v6 = (*(*a3->var0 + 16))(a3->var0);
  }

  else
  {
  }

  v7 = v6[1];
  if (v7 != 0x80000001004441B3 && (((v7 & 0x80000001004441B3 & 0x8000000000000000) != 0) == __OFSUB__(v7, 0x80000001004441B3) || strcmp((v7 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001004441B3 & 0x7FFFFFFFFFFFFFFFLL))))
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        v10 = a2;
        if (*(a2 + 23) < 0)
        {
          v10 = *a2;
        }

        any_to_string(a3, __p);
        v11 = SHIBYTE(v32);
        v12 = __p[0];
        SystemTime = TelephonyUtilGetSystemTime();
        v14 = __p;
        *buf = 136315650;
        if (v11 < 0)
        {
          v14 = v12;
        }

        v36 = v10;
        v37 = 2080;
        v38 = v14;
        v39 = 2048;
        v40 = SystemTime;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "InternalIPCAPI:PropChanged: Key %s, Value: %s, at: %llu", buf, 0x20u);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }
      }

      goto LABEL_28;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

LABEL_27:
    [PowerEventHandler_Rcp init:];
    goto LABEL_28;
  }

  v8 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v8)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "InternalIPCAPI:PropChanged: valMap Received", buf, 2u);
  }

LABEL_28:
  __p[0] = 0;
  __p[1] = __p;
  v32 = 0x2000000000;
  v33 = TelephonyUtilGetSystemTime();
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalIPCAPI16property_changedENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5boost3anyE_block_invoke;
  aBlock[3] = &unk_1004C2D78;
  aBlock[4] = __p;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a2, a2[1]);
  }

  else
  {
    v28 = *a2;
  }

  v15 = _Block_copy(aBlock);
  v16 = *a1;
  if (*a1)
  {
    dispatch_retain(*a1);
  }

  v29 = v15;
  v30 = v16;
  ++numPendingEventsToBeSent;
  ++numPendingEventsToRcvResponse;
  v17 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v17)
  {
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = a2;
      if (*(a2 + 23) < 0)
      {
        v18 = *a2;
      }

      v19 = TelephonyUtilGetSystemTime();
      *buf = 136315906;
      v36 = v18;
      v37 = 2048;
      v38 = v19;
      v39 = 2048;
      v40 = numPendingEventsToBeSent;
      v41 = 2048;
      v42 = numPendingEventsToRcvResponse;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Posting event (%s) to Internal Broadcast Event Handler, at: %llu, numPendingEventsToBeSent: %lld numPendingEventsToRcvResponse : %lld", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v20 = a1[1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = ___ZN14InternalIPCAPI16property_changedENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5boost3anyE_block_invoke_28;
  block[3] = &__block_descriptor_tmp_29;
  block[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *a2, a2[1]);
  }

  else
  {
    v23 = *a2;
  }

  var0 = a3->var0;
  if (a3->var0)
  {
    var0 = (*(*var0 + 24))(var0);
  }

  v24 = var0;
  if (v15)
  {
    v25 = _Block_copy(v15);
    object = v16;
    if (!v16)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v25 = 0;
  object = v16;
  if (v16)
  {
LABEL_48:
    dispatch_retain(v16);
  }

LABEL_49:
  dispatch_async(v20, block);
  if (object)
  {
    dispatch_release(object);
  }

  if (v25)
  {
    _Block_release(v25);
  }

  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    _Block_object_dispose(__p, 8);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_67:
    operator delete(v34.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v28.__r_.__value_.__l.__data_);
  _Block_object_dispose(__p, 8);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_67;
  }
}

void sub_1000D3230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  _Unwind_Resume(exception_object);
}

void InternalIPCAPI::received_beacon(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (*v3)
  {
    operator new();
  }

  memcpyrev(&__p, a2 + 24, 8uLL);
  if (__p.i64[0])
  {
    memcpyrev(&__p, a2 + 24, 8uLL);
    operator new();
  }

  v4 = *(a2 + 32);
  operator new();
}

void sub_1000D3C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v30 - 72, *(v30 - 64));
  _Unwind_Resume(a1);
}

void InternalIPCAPI::received_energy_scan_result(uint64_t a1, unsigned __int8 *a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!logging_obg)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
      v5 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_7:
    v5 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v4 = logging_obg;
  if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    goto LABEL_7;
  }

  LOWORD(v9[0]) = 0;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "InternalIPCAPI: Received energy scan results", v9, 2u);
  v5 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v5)
  {
LABEL_12:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    return;
  }

LABEL_8:
  v6 = v5;
  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *a2;
    v8 = a2[1];
    v9[0] = 67109376;
    v9[1] = v7;
    v10 = 1024;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Energy scan results: Channel: %2d dBm: %4d ", v9, 0xEu);
  }
}

void boost::signals2::signal<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::connect(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 24);
  v4 = 10;
  __p = v3;
  v6 = 0;
  v7 = v2;
  pthread_mutex_lock(v2);
  boost::signals2::detail::signal_impl<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::nolock_connect(v1, v3);
}

void sub_1000D4114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void InternalIPCAPI::received_network_diagnostics_response(InternalIPCAPI *this, const any *a2)
{
  if (a2->var0)
  {
    v3 = (*(*a2->var0 + 16))(a2->var0);
  }

  else
  {
  }

  v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v4 != (0x8000000100447D88 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v4, (0x8000000100447D88 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v6 = logging_obg;
      if (syslog_is_the_mask_enabled(3))
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          InternalIPCAPI::received_network_diagnostics_response(v6);
        }
      }

      return;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_24:
    [PowerEventHandler_Rcp init:];
    return;
  }

  var0 = a2->var0;
  v8 = *(a2->var0 + 1);
  v9 = *(a2->var0 + 2);
  v10 = log_get_logging_obg("com.apple.threadradiod", "default");
  v11 = v10;
  if (v8)
  {
    v12 = v8 == v9;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (v10)
    {
      if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sending nw_diag_response to internal-clients", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    operator new();
  }

  if (!v10)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_24;
  }

  if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    InternalIPCAPI::received_network_diagnostics_response(var0 + 2, var0 + 1, v11);
  }
}

void sub_1000D4478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InternalIPCAPI::received_network_data_nm_update(InternalIPCAPI *this, const any *a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v5 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Sending nw_data_nm_update to internal-clients", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v10 = 14;
  strcpy(__p, "nm:networkdata");
  if (a2->var0)
  {
    v6 = (*(*a2->var0 + 24))(a2->var0);
  }

  else
  {
    v6 = 0;
  }

  v7[1] = 0;
  v8 = v6;
  v7[0] = 0;
  InternalIPCAPI::IntBroadcastEvent(this, __p, &v8, v7);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000D462C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InternalIPCAPI::received_ping_stats_nm_update(InternalIPCAPI *this, const any *a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v5 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Sending ping_stats_nm_update to internal-clients", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v10 = 13;
  strcpy(__p, "nm:ping:stats");
  if (a2->var0)
  {
    v6 = (*(*a2->var0 + 24))(a2->var0);
  }

  else
  {
    v6 = 0;
  }

  v7[1] = 0;
  v8 = v6;
  v7[0] = 0;
  InternalIPCAPI::IntBroadcastEvent(this, __p, &v8, v7);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000D47E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InternalIPCAPI::received_ping_stats_trm_update(InternalIPCAPI *this, const any *a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v5 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Sending ping_stats_trm_update to internal-clients", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v10 = 14;
  strcpy(__p, "trm:ping:stats");
  if (a2->var0)
  {
    v6 = (*(*a2->var0 + 24))(a2->var0);
  }

  else
  {
    v6 = 0;
  }

  v7[1] = 0;
  v8 = v6;
  v7[0] = 0;
  InternalIPCAPI::IntBroadcastEvent(this, __p, &v8, v7);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000D4994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InternalIPCAPI::received_diag_device_data_update(InternalIPCAPI *this, const any *a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v5 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Sending diag_device_data_update to internal-clients", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v10 = 18;
  strcpy(__p, "nm:diag:devicedata");
  if (a2->var0)
  {
    v6 = (*(*a2->var0 + 24))(a2->var0);
  }

  else
  {
    v6 = 0;
  }

  v7[1] = 0;
  v8 = v6;
  v7[0] = 0;
  InternalIPCAPI::IntBroadcastEvent(this, __p, &v8, v7);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (v10 < 0)
  {
    operator delete(*__p);
  }
}

void sub_1000D4B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D4C7C()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 16) = v2;
    operator delete(v2);
  }

  operator delete();
}

void InternalIPCAPI::IntBroadcastEvent(void *a1, const std::string::value_type *a2, void *a3, uint64_t a4)
{
  group = dispatch_group_create();
  v5 = a1[3];
  v57 = a1;
  if (v5 != a1 + 4)
  {
    do
    {
      if (*(v5 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v76, v5[4], v5[5]);
      }

      else
      {
        v76 = *(v5 + 4);
      }

      v6 = v5[8];
      v77 = v5[7];
      v78 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v75, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
      }

      else
      {
        v75 = v76;
      }

      v8 = v77;
      v7 = v78;
      v73 = v77;
      v74 = v78;
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v8)
      {
        if (InternalClient::isEventsOn(v8))
        {
          InternalClient::getClientEventListenersPtr(v8, &v71);
          v10 = v71 + 8;
          v9 = *(v71 + 8);
          if (!v9)
          {
            goto LABEL_111;
          }

          v11 = a2[23];
          v12 = v11 >= 0 ? *(a2 + 23) : *(a2 + 1);
          v13 = v11 >= 0 ? a2 : *a2;
          v14 = v71 + 8;
          do
          {
            v15 = *(v9 + 55);
            if (v15 >= 0)
            {
              v16 = *(v9 + 55);
            }

            else
            {
              v16 = *(v9 + 40);
            }

            if (v15 >= 0)
            {
              v17 = (v9 + 32);
            }

            else
            {
              v17 = *(v9 + 32);
            }

            if (v12 >= v16)
            {
              v18 = v16;
            }

            else
            {
              v18 = v12;
            }

            v19 = memcmp(v17, v13, v18);
            v20 = v16 < v12;
            if (v19)
            {
              v20 = v19 < 0;
            }

            v21 = !v20;
            if (v20)
            {
              v22 = 8;
            }

            else
            {
              v22 = 0;
            }

            if (v21)
            {
              v14 = v9;
            }

            v9 = *(v9 + v22);
          }

          while (v9);
          if (v14 == v10)
          {
            goto LABEL_111;
          }

          v23 = *(v14 + 55);
          if (v23 >= 0)
          {
            v24 = *(v14 + 55);
          }

          else
          {
            v24 = *(v14 + 40);
          }

          if (v23 >= 0)
          {
            v25 = (v14 + 32);
          }

          else
          {
            v25 = *(v14 + 32);
          }

          if (v24 >= v12)
          {
            v26 = v12;
          }

          else
          {
            v26 = v24;
          }

          v27 = memcmp(v13, v25, v26);
          v28 = v12 >= v24;
          if (v27)
          {
            v28 = v27 >= 0;
          }

          if (!v28)
          {
            goto LABEL_111;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v29 = &v75;
            if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v29 = v75.__r_.__value_.__r.__words[0];
            }

            *buf = 136315394;
            *&buf[4] = v13;
            *&buf[12] = 2080;
            *&buf[14] = v29;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Sending internal event: %s, to: %s", buf, 0x16u);
          }

          v30 = *(v14 + 56);
          if (v30)
          {
            v31 = _Block_copy(v30);
            v32 = v31;
            v33 = *(v14 + 64);
            v69 = v31;
            v70 = v33;
            if (!v33)
            {
              if (v31)
              {
                goto LABEL_110;
              }

              goto LABEL_111;
            }

            dispatch_retain(v33);
            if (v32)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
              {
                v34 = a2;
                if (a2[23] < 0)
                {
                  v34 = *a2;
                }

                v35 = SHIBYTE(v75.__r_.__value_.__r.__words[2]);
                v36 = v75.__r_.__value_.__r.__words[0];
                SystemTime = TelephonyUtilGetSystemTime();
                *buf = 136315650;
                v38 = &v75;
                if (v35 < 0)
                {
                  v38 = v36;
                }

                *&buf[4] = v34;
                *&buf[12] = 2080;
                *&buf[14] = v38;
                *&buf[22] = 2048;
                v80 = SystemTime;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Sending internal event: %s, to: %s, at: %llu", buf, 0x20u);
              }

              dispatch_retain(v33);
              dispatch_release(v33);
              if (*a3)
              {
                v39 = (*(**a3 + 24))(*a3);
              }

              else
              {
                v39 = 0;
              }

              v45 = _Block_copy(v32);
              v46 = v45;
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 1174405120;
              *&buf[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN5boost3anyEEEclIJS2_EEEvDpT__block_invoke;
              v80 = &__block_descriptor_tmp_142;
              if (v45)
              {
                v81 = _Block_copy(v45);
                if (v39)
                {
                  goto LABEL_90;
                }

LABEL_101:
                v82 = 0;
                dispatch_async(v33, buf);
                v47 = v82;
                if (!v82)
                {
                  goto LABEL_92;
                }

LABEL_91:
                (*(*v47 + 8))(v47);
                goto LABEL_92;
              }

              v81 = 0;
              if (!v39)
              {
                goto LABEL_101;
              }

LABEL_90:
              v82 = (*(*v39 + 24))(v39);
              dispatch_async(v33, buf);
              v47 = v82;
              if (v82)
              {
                goto LABEL_91;
              }

LABEL_92:
              if (v81)
              {
                _Block_release(v81);
              }

              if (v46)
              {
                _Block_release(v46);
              }

              if (v39)
              {
                (*(*v39 + 8))(v39);
              }

              dispatch_group_enter(group);
              block[0] = _NSConcreteStackBlock;
              block[1] = 1174405120;
              block[2] = ___ZN14InternalIPCAPI17IntBroadcastEventENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5boost3anyEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke;
              block[3] = &__block_descriptor_tmp_30;
              if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v66, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
              }

              else
              {
                v66 = v75;
              }

              if (a2[23] < 0)
              {
                std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 1));
              }

              else
              {
                __p = *a2;
              }

              v68 = group;
              dispatch_async(v33, block);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
                if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_134;
                }
              }

              else
              {
                if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_109;
                }

LABEL_134:
                operator delete(v66.__r_.__value_.__l.__data_);
              }

LABEL_109:
              dispatch_release(v33);
LABEL_110:
              _Block_release(v32);
LABEL_111:
              v48 = v72;
              if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v48->__on_zero_shared)(v48);
                std::__shared_weak_count::__release_weak(v48);
              }

              v7 = v74;
              goto LABEL_115;
            }
          }

          else
          {
            v33 = *(v14 + 64);
            if (!v33)
            {
              goto LABEL_111;
            }

            dispatch_retain(v33);
          }

          dispatch_release(v33);
          goto LABEL_111;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v43 = a2;
          if (a2[23] < 0)
          {
            v43 = *a2;
          }

          v44 = &v75;
          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v44 = v75.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = v43;
          *&buf[12] = 2080;
          *&buf[14] = v44;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Events are turned off, event:%s not sent to client: %s , continue to next client", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v40 = a2;
        if (a2[23] < 0)
        {
          v40 = *a2;
        }

        v41 = &v75;
        if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v41 = v75.__r_.__value_.__r.__words[0];
        }

        v42 = a1[5];
        *buf = 136315650;
        *&buf[4] = v40;
        *&buf[12] = 2080;
        *&buf[14] = v41;
        *&buf[22] = 2048;
        v80 = v42;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ClientPtr is null.Event name:%s clientName:%s numClients:%lu ", buf, 0x20u);
      }

LABEL_115:
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_118:
          v49 = v78;
          if (!v78)
          {
            goto LABEL_123;
          }

          goto LABEL_122;
        }
      }

      else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_118;
      }

      operator delete(v75.__r_.__value_.__l.__data_);
      v49 = v78;
      if (!v78)
      {
        goto LABEL_123;
      }

LABEL_122:
      if (atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_123:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_124;
        }

        goto LABEL_127;
      }

      (v49->__on_zero_shared)(v49);
      std::__shared_weak_count::__release_weak(v49);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_124:
        v50 = v5[1];
        if (v50)
        {
          goto LABEL_128;
        }

        goto LABEL_130;
      }

LABEL_127:
      operator delete(v76.__r_.__value_.__l.__data_);
      v50 = v5[1];
      if (v50)
      {
        do
        {
LABEL_128:
          v51 = v50;
          v50 = *v50;
        }

        while (v50);
        goto LABEL_3;
      }

      do
      {
LABEL_130:
        v51 = v5[2];
        v21 = *v51 == v5;
        v5 = v51;
      }

      while (!v21);
LABEL_3:
      v5 = v51;
    }

    while (v51 != a1 + 4);
  }

  v52 = a4;
  v53 = *a4;
  if (*a4 && *(a4 + 8))
  {
    v54 = v57[2];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 1174405120;
    v61[2] = ___ZN14InternalIPCAPI17IntBroadcastEventENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5boost3anyEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_31;
    v61[3] = &__block_descriptor_tmp_33;
    if (a2[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v62, *a2, *(a2 + 1));
      v52 = a4;
      v53 = *a4;
      if (!*a4)
      {
LABEL_141:
        v55 = *(v52 + 8);
        aBlock = v53;
        object = v55;
        if (v55)
        {
          dispatch_retain(v55);
        }

        dispatch_group_notify(group, v54, v61);
        if (object)
        {
          dispatch_release(object);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        goto LABEL_149;
      }
    }

    else
    {
      v62 = *a2;
    }

    v53 = _Block_copy(v53);
    goto LABEL_141;
  }

LABEL_149:
  dispatch_release(group);
}

void sub_1000D55F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, char a46, uint64_t a47, char a48)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  dispatch::callback<void({block_pointer})(void)>::~callback(&a44);
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a46);
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a48);
  if (*(v48 - 233) < 0)
  {
    operator delete(*(v48 - 256));
  }

  std::pair<std::string const,std::shared_ptr<InternalClient>>::~pair(v48 - 224);
  _Unwind_Resume(a1);
}

void InternalIPCAPI::add_client(uint64_t a1, const void **a2, uint64_t *a3)
{
  v4 = a2;
  *buf = a2;
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<InternalClient>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 24, a2);
  v8 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v6[8];
  v6[7] = v8;
  v6[8] = v7;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      goto LABEL_6;
    }
  }

  else
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
LABEL_6:
      v11 = logging_obg;
      if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        if (*(v4 + 23) < 0)
        {
          v4 = *v4;
        }

        v12 = *(a1 + 40);
        *buf = 136315394;
        *&buf[4] = v4;
        v14 = 2048;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Add client:%s Number of Internal clients remaining: %lu", buf, 0x16u);
      }

      return;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

void InternalIPCAPI::remove_client(void *a1, const void **a2)
{
  v2 = a2;
  v4 = a1 + 4;
  v5 = a1[4];
  if (v5)
  {
    v6 = a1 + 3;
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = a2[1];
    }

    if (v7 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    v10 = (a1 + 4);
    do
    {
      v11 = *(v5 + 55);
      if (v11 >= 0)
      {
        v12 = *(v5 + 55);
      }

      else
      {
        v12 = *(v5 + 40);
      }

      if (v11 >= 0)
      {
        v13 = (v5 + 32);
      }

      else
      {
        v13 = *(v5 + 32);
      }

      if (v8 >= v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v8;
      }

      v15 = memcmp(v13, v9, v14);
      v16 = v12 < v8;
      if (v15)
      {
        v16 = v15 < 0;
      }

      v17 = !v16;
      if (v16)
      {
        v18 = 8;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v10 = v5;
      }

      v5 = *(v5 + v18);
    }

    while (v5);
    if (v10 != v4)
    {
      v19 = *(v10 + 55);
      if (v19 >= 0)
      {
        v20 = *(v10 + 55);
      }

      else
      {
        v20 = *(v10 + 40);
      }

      if (v19 >= 0)
      {
        v21 = (v10 + 32);
      }

      else
      {
        v21 = *(v10 + 32);
      }

      if (v20 >= v8)
      {
        v22 = v8;
      }

      else
      {
        v22 = v20;
      }

      v23 = memcmp(v9, v21, v22);
      v24 = v8 < v20;
      if (v23)
      {
        v24 = v23 < 0;
      }

      if (!v24)
      {
        std::__tree<std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<InternalClient>>>>::erase(v6, v10);
      }
    }
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v26 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      v27 = a1[5];
      v28 = 136315394;
      v29 = v2;
      v30 = 2048;
      v31 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Remove client:%s Number of Internal clients remaining: %lu", &v28, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

void InternalIPCAPI::CallbackOtctl_Helper(int a1, char *__s, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
  }

  __dst.__r_.__value_.__s.__data_[v11] = 0;
  v12 = std::string::compare(&__dst, "Done\n");
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      v14 = a5;
      if (*(a5 + 23) < 0)
      {
        v14 = *a5;
      }

      if (*(a4 + 23) < 0)
      {
        a4 = *a4;
      }

      p_dst = &__dst;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = v14;
      v21 = 2080;
      v22 = a4;
      v23 = 2080;
      v24 = p_dst;
      aBlock = 1024;
      aBlock_2 = v12 != 0;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "WPANTUND-InternalIPCAPI Sending Internal response for method %s to %s, retString : %s, ret = %d", buf, 0x26u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (*a6 && a6[1])
  {
    v17[0] = 0;
    v17[1] = 0;
    v16 = v17;
    HIBYTE(v23) = 6;
    strcpy(buf, "method");
    v19 = buf;
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v16, buf);
    operator new();
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void InternalIPCAPI::CallbackWithStatus2_Helper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, void *a7)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v11 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = a5;
      if (*(a5 + 23) < 0)
      {
        v12 = *a5;
      }

      if (*(a4 + 23) < 0)
      {
        a4 = *a4;
      }

      *buf = 136315394;
      *&buf[4] = v12;
      v16 = 2080;
      v17 = a4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "WPANTUND-InternalIPCAPI Sending response for method %s to %s", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (*a7)
  {
    if (a7[1])
    {
      v14[0] = 0;
      v14[1] = 0;
      v13 = v14;
      v18 = 6;
      strcpy(buf, "method");
      v14[3] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v13, buf);
      operator new();
    }
  }
}

void InternalIPCAPI::CallbackWithStatus_Helper(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v11 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = a5;
      if (*(a5 + 23) < 0)
      {
        v12 = *a5;
      }

      if (*(a4 + 23) < 0)
      {
        a4 = *a4;
      }

      *buf = 136315650;
      *&buf[4] = v12;
      v16 = 2080;
      v17 = a4;
      v18 = 1024;
      LODWORD(v19) = a2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "ThreadRadioD-InternalIPCAPI Sending Internal response for method %s to %s, ret : %d", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (*a6)
  {
    if (a6[1])
    {
      v14[0] = 0;
      v14[1] = 0;
      v13 = v14;
      HIBYTE(v18) = 6;
      strcpy(buf, "method");
      v14[3] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v13, buf);
      operator new();
    }
  }
}

void InternalIPCAPI::CallbackWithStatusArg1_Helper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v12 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = a5;
      if (*(a5 + 23) < 0)
      {
        v13 = *a5;
        v14 = a6;
        if ((*(a6 + 23) & 0x80000000) == 0)
        {
LABEL_6:
          if ((*(a4 + 23) & 0x80000000) == 0)
          {
LABEL_7:
            *buf = 136315650;
            *&buf[4] = v13;
            v19 = 2080;
            v20 = v14;
            v21 = 2080;
            v22 = a4;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "ThreadRadioD-InternalIPCAPI Sending internal response for method %s for property %s to %s", buf, 0x20u);
            goto LABEL_10;
          }

LABEL_21:
          a4 = *a4;
          goto LABEL_7;
        }
      }

      else
      {
        v14 = a6;
        if ((*(a6 + 23) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }
      }

      v14 = *a6;
      if ((*(a4 + 23) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

LABEL_10:
  if (*a7 && a7[1])
  {
    v15 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v15)
    {
      if (syslog_is_the_mask_enabled(5))
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Callbackwithstatusarg1_helper method", buf, 2u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v17[0] = 0;
    v17[1] = 0;
    v16 = v17;
    HIBYTE(v21) = 6;
    strcpy(buf, "method");
    v17[3] = buf;
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v16, buf);
    operator new();
  }
}

void InternalIPCAPI::getProperty(uint64_t a1, std::string::size_type a2, uint64_t a3)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v6 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a3;
      if (*(a3 + 23) < 0)
      {
        v7 = *a3;
      }

      v8 = a2;
      if (*(a2 + 23) < 0)
      {
        v8 = *a2;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v7;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "OTD InternalIPCAPI Handling method handler for property %s for client %s", &buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *a3, *(a3 + 8));
  }

  else
  {
    buf = *a3;
  }

  operator new();
}

void sub_1000D79B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if (*(v30 - 57) < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if (*(v30 - 57) < 0)
  {
LABEL_4:
    operator delete(*(v30 - 80));
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

void boost::function<void ()(int,boost::any const&)>::operator=<boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v3, (a2 + 1));
  boost::function<void ()(int,boost::any const&)>::function<boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(v4, &v2);
}

void sub_1000D7B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  boost::function<void ()(std::string const&,boost::any const&)>::~function((v9 - 48));
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void ___ZN14InternalIPCAPI16property_changedENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5boost3anyE_block_invoke(uint64_t a1)
{
  SystemTime = TelephonyUtilGetSystemTime();
  v3 = *(*(*(a1 + 32) + 8) + 24);
  --numPendingEventsToRcvResponse;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v5 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = SystemTime - v3;
      v7 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v7 = *v7;
      }

      v8 = 136316162;
      v9 = v7;
      v10 = 2048;
      v11 = TelephonyUtilGetSystemTime();
      v12 = 2048;
      v13 = v6;
      v14 = 2048;
      v15 = numPendingEventsToBeSent;
      v16 = 2048;
      v17 = numPendingEventsToRcvResponse;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "All Internal Clients Rcvd the Property Changed Event: %s, at: %llu, conf_time: %lld numPendingEventsToBeSent:%llu numPendingEventsToRcvResponse: %lld", &v8, 0x34u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN14InternalIPCAPI16property_changedENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5boost3anyE_block_invoke_28(uint64_t a1)
{
  v2 = *(a1 + 32);
  --numPendingEventsToBeSent;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v4 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315906;
      v16 = v5;
      v17 = 2048;
      SystemTime = TelephonyUtilGetSystemTime();
      v19 = 2048;
      v20 = numPendingEventsToBeSent;
      v21 = 2048;
      v22 = numPendingEventsToRcvResponse;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Posted event (%s) to Internal Broadcast Event Handler, at: %llu, numPendingEventsToBeSent: %lld numPendingEventsToRcvResponse:%lld ", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v14 = *(a1 + 40);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = (*(*v6 + 24))(v6);
    v13 = v7;
    v8 = *(a1 + 72);
    if (v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
    v13 = 0;
    v8 = *(a1 + 72);
    if (v8)
    {
LABEL_14:
      v9 = _Block_copy(v8);
      v10 = *(a1 + 80);
      v11 = v9;
      v12 = v10;
      if (!v10)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  v9 = 0;
  v10 = *(a1 + 80);
  v11 = 0;
  v12 = v10;
  if (v10)
  {
LABEL_15:
    dispatch_retain(v10);
  }

LABEL_16:
  InternalIPCAPI::IntBroadcastEvent(v2, &v14, &v13, &v11);
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1000D7FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c17_ZTSKN5boost3anyE72c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v5 = *(a2 + 64);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a2 + 64);
  if (v5)
  {
LABEL_5:
    v5 = (*(*v5 + 24))(v5);
  }

LABEL_6:
  *(a1 + 64) = v5;
  v6 = *(a2 + 72);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 80);
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void sub_1000D80C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c17_ZTSKN5boost3anyE72c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(a1 + 63) < 0)
  {
    v5 = *(a1 + 40);

    operator delete(v5);
  }
}

void ___ZN14InternalIPCAPI17IntBroadcastEventENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5boost3anyEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v2 = *v2;
      v3 = (a1 + 56);
      if ((*(a1 + 79) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = (a1 + 56);
      if ((*(a1 + 79) & 0x80000000) == 0)
      {
LABEL_4:
        v4 = 136315650;
        v5 = v2;
        v6 = 2080;
        v7 = v3;
        v8 = 2048;
        SystemTime = TelephonyUtilGetSystemTime();
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received callback from internal client: %s for event: %s, at: %llu", &v4, 0x20u);
        goto LABEL_5;
      }
    }

    v3 = *v3;
    goto LABEL_4;
  }

LABEL_5:
  dispatch_group_leave(*(a1 + 80));
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v5;
      return;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
}

void sub_1000D8300(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return;
  }

  v2 = *(a1 + 32);

  operator delete(v2);
}

void ___ZN14InternalIPCAPI17IntBroadcastEventENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5boost3anyEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_31(uint64_t a1)
{
  logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    v3 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v3 = *v3;
    }

    *v8 = 136315394;
    *&v8[4] = v3;
    *&v8[12] = 2048;
    *&v8[14] = TelephonyUtilGetSystemTime();
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "All clients were informed for: %s at: %llu", v8, 0x16u);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 64);
  *v8 = _NSConcreteStackBlock;
  *&v8[8] = 1174405120;
  *&v8[16] = ___ZNK8dispatch8callbackIU13block_pointerFvvEEclIJEEEvDpT__block_invoke;
  v9 = &__block_descriptor_tmp_143;
  if (!v5)
  {
    aBlock = 0;
    dispatch_async(v6, v8);
    v7 = aBlock;
    if (!aBlock)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  aBlock = _Block_copy(v5);
  dispatch_async(v6, v8);
  v7 = aBlock;
  if (aBlock)
  {
LABEL_12:
    _Block_release(v7);
  }

LABEL_13:
  if (v5)
  {
    _Block_release(v5);
  }
}

void sub_1000D8504(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
    v5 = *(a2 + 56);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v4;
  v5 = *(a2 + 56);
  if (v5)
  {
LABEL_5:
    v5 = _Block_copy(v5);
  }

LABEL_6:
  v6 = *(a2 + 64);
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_32c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 55) < 0)
  {
    v4 = *(a1 + 32);

    operator delete(v4);
  }
}

void InternalIPCAPI::interface_send_ping_req()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  v3 = 6;
  strcpy(buf, "method");
  v1[3] = buf;
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v0, buf);
  operator new();
}

void sub_1000D8A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, char *a26, uint64_t a27, char a28)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a25, a26);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v28 - 168, *(v28 - 160));
  _Unwind_Resume(a1);
}

void boost::bind<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>,InternalIPCAPI*,boost::arg<1>,std::map<std::string,boost::any>,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void ***a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  std::map<std::string,boost::any>::map[abi:ne200100](v22, a4);
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a5, *(a5 + 8));
  }

  else
  {
    v21 = *a5;
  }

  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a6, *(a6 + 8));
  }

  else
  {
    v20 = *a6;
  }

  v15 = *a7;
  if (*a7)
  {
    v15 = _Block_copy(v15);
  }

  v16 = *(a7 + 8);
  v18 = v15;
  v19 = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  boost::_bi::list6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::list6(v23, a3, v22, &v21, &v20, &v18);
  *a8 = a1;
  a8[1] = a2;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6((a8 + 2), v23);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v29 < 0)
  {
    operator delete(__p);
    if ((v27 & 0x80000000) == 0)
    {
LABEL_17:
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v24, v25);
      v17 = v19;
      if (!v19)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v27 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v26);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v24, v25);
  v17 = v19;
  if (v19)
  {
LABEL_18:
    dispatch_release(v17);
  }

LABEL_19:
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_28:
    operator delete(v21.__r_.__value_.__l.__data_);
    goto LABEL_23;
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v22, v22[1]);
}

void sub_1000D8CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, char *a25, uint64_t a26, char a27)
{
  if ((a23 & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a24, a25);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a24, a25);
  _Unwind_Resume(a1);
}

void boost::function<void ()(int)>::operator=<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(&v3, (a2 + 1));
  boost::function<void ()(int)>::function<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(v4, &v2);
}

void sub_1000D8E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  boost::function<void ()(std::string const&,boost::any const&)>::~function((v9 - 48));
  boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

uint64_t boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    operator delete(*(a1 + 48));
    goto LABEL_7;
  }

  if (*(a1 + 71) < 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(a1 + 24, *(a1 + 32));
  return a1;
}

void InternalIPCAPI::interface_trm_get_ot_data()
{
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  *(&v1.__r_.__value_.__s + 23) = 6;
  strcpy(&v1, "method");
  v0.__r_.__value_.__r.__words[0] = &v1;
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v2, &v1.__r_.__value_.__l.__data_);
  operator new();
}

void sub_1000D9380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if ((*(v32 - 121) & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v32 - 120, *(v32 - 112));
    _Unwind_Resume(a1);
  }

  operator delete(*(v32 - 144));
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v32 - 120, *(v32 - 112));
  _Unwind_Resume(a1);
}

void InternalIPCAPI::interface_get_device_data_diag_req()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  v3 = 6;
  strcpy(buf, "method");
  v1[3] = buf;
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v0, buf);
  operator new();
}

void sub_1000D990C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, char *a26, uint64_t a27, char a28)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a25, a26);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v28 - 152, *(v28 - 144));
  _Unwind_Resume(a1);
}

void InternalIPCAPI::interface_send_network_diagnostics_req(uint64_t a1, void *a2)
{
  v4[0] = 0;
  v4[1] = 0;
  v3 = v4;
  boost::any_cast<std::map<std::string,boost::any>>(a2, v2);
  operator new();
}

void sub_1000DA198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a27 < 0)
  {
    operator delete(__p);
    v50 = a28;
    if (!a28)
    {
LABEL_3:
      if (*(v48 - 193) < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v50 = a28;
    if (!a28)
    {
      goto LABEL_3;
    }
  }

  (*(*v50 + 8))(v50);
  if (*(v48 - 193) < 0)
  {
LABEL_4:
    operator delete(*(v48 - 216));
    if (v47)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  if (v47)
  {
LABEL_5:
    operator delete(v47);
    if (!v46)
    {
      goto LABEL_12;
    }

LABEL_11:
    operator delete(v46);
LABEL_12:
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v48 - 192, *(v48 - 184));
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v48 - 168, *(v48 - 160));
    _Unwind_Resume(a1);
  }

LABEL_10:
  if (!v46)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

uint64_t boost::bind<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>,InternalIPCAPI*,boost::arg<1>,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v15 = *a4;
  if (*a4)
  {
    v15 = (*(*v15 + 24))(v15);
  }

  v24 = v15;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *a5, *(a5 + 8));
  }

  else
  {
    v23 = *a5;
  }

  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a6, *(a6 + 8));
  }

  else
  {
    v22 = *a6;
  }

  v16 = *a7;
  if (*a7)
  {
    v16 = _Block_copy(v16);
  }

  v17 = *(a7 + 8);
  v20 = v16;
  v21 = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  boost::_bi::list6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::list6(v25, a3, &v24, &v23, &v22, &v20);
  *a8 = a1;
  a8[1] = a2;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6((a8 + 2), v25);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v30 < 0)
  {
    operator delete(__p);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_19:
      v18 = v26;
      if (!v26)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v27);
  v18 = v26;
  if (v26)
  {
LABEL_20:
    (*(*v18 + 8))(v18);
  }

LABEL_21:
  if (v21)
  {
    dispatch_release(v21);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_27:
      result = v24;
      if (!v24)
      {
        return result;
      }

      return (*(*result + 8))(result);
    }
  }

  else if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v23.__r_.__value_.__l.__data_);
  result = v24;
  if (!v24)
  {
    return result;
  }

  return (*(*result + 8))(result);
}

void sub_1000DA564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
    v26 = a24;
    if (!a24)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v26 = a24;
    if (!a24)
    {
      goto LABEL_3;
    }
  }

  (*(*v26 + 8))(v26);
  _Unwind_Resume(exception_object);
}

void boost::function<void ()(int)>::operator=<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(&v3, (a2 + 1));
  boost::function<void ()(int)>::function<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(v4, &v2);
}

void sub_1000DA71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  boost::function<void ()(std::string const&,boost::any const&)>::~function((v9 - 48));
  boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

uint64_t boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    _Block_release(v3);
  }

  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    operator delete(*(a1 + 32));
    v4 = *(a1 + 24);
    if (!v4)
    {
      return a1;
    }

    goto LABEL_8;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v4 = *(a1 + 24);
  if (v4)
  {
LABEL_8:
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void InternalIPCAPI::interface_update_primary_resident_handler()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  operator new();
}

void sub_1000DAC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, char *a25, uint64_t a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a24, a25);
  if ((*(v27 - 169) & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v27 - 168, *(v27 - 160));
    _Unwind_Resume(a1);
  }

  operator delete(*(v27 - 192));
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v27 - 168, *(v27 - 160));
  _Unwind_Resume(a1);
}

void InternalIPCAPI::interface_update_home_thread_info_handler()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  operator new();
}

void sub_1000DB188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, char *a25, uint64_t a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a24, a25);
  if ((*(v27 - 153) & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v27 - 152, *(v27 - 144));
    _Unwind_Resume(a1);
  }

  operator delete(*(v27 - 176));
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v27 - 152, *(v27 - 144));
  _Unwind_Resume(a1);
}

void InternalIPCAPI::interface_wed_start_handler()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  operator new();
}

void sub_1000DB6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, char *a25, uint64_t a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a24, a25);
  if ((*(v27 - 153) & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v27 - 152, *(v27 - 144));
    _Unwind_Resume(a1);
  }

  operator delete(*(v27 - 176));
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v27 - 152, *(v27 - 144));
  _Unwind_Resume(a1);
}

void InternalIPCAPI::interface_wed_stop_handler()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  operator new();
}

void sub_1000DBC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, char *a25, uint64_t a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a24, a25);
  if ((*(v27 - 137) & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v27 - 136, *(v27 - 128));
    _Unwind_Resume(a1);
  }

  operator delete(*(v27 - 160));
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v27 - 136, *(v27 - 128));
  _Unwind_Resume(a1);
}

void InternalIPCAPI::interface_leave_handler(uint64_t a1, uint64_t a2, int a3)
{
  v4[0] = 0;
  v4[1] = 0;
  v3 = v4;
  if (a3)
  {
    operator new();
  }

  operator new();
}

void sub_1000DC4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, char *a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, char a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a24, a25);
  if ((*(v59 - 137) & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v59 - 136, *(v59 - 128));
    _Unwind_Resume(a1);
  }

  operator delete(*(v59 - 160));
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v59 - 136, *(v59 - 128));
  _Unwind_Resume(a1);
}

void boost::function<void ()(char const*)>::operator=<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,char const*,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(&v3, (a2 + 1));
  boost::function<void ()(char const*)>::function<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,char const*,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(v4, &v2);
}

void sub_1000DC774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  boost::function<void ()(std::string const&,boost::any const&)>::~function((v9 - 48));
  boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void sub_1000DE55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (*(v57 - 105) < 0)
  {
    operator delete(*(v57 - 128));
  }

  if (a57)
  {
    JUMPOUT(0x1000DE500);
  }

  JUMPOUT(0x1000DE4BCLL);
}

void InternalIPCAPI::interface_join_handler(uint64_t a1, void *a2)
{
  v4[0] = 0;
  v4[1] = 0;
  v3 = v4;
  boost::any_cast<std::map<std::string,boost::any>>(a2, v2);
  operator new();
}

void sub_1000DF2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a27 < 0)
  {
    operator delete(__p);
    v61 = a28;
    if (!a28)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v61 = a28;
    if (!a28)
    {
LABEL_6:
      if (a52 < 0)
      {
        operator delete(a47);
      }

      if (v58)
      {
        operator delete(v58);
      }

      if (a58 < 0)
      {
        operator delete(a53);
      }

      if (*(v59 - 233) < 0)
      {
        operator delete(*(v59 - 256));
      }

      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v59 - 224, *(v59 - 216));
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v59 - 200, *(v59 - 192));
      _Unwind_Resume(a1);
    }
  }

  (*(*v61 + 8))(v61);
  goto LABEL_6;
}

void sub_1000DF51C()
{
  if (*(v0 - 137) < 0)
  {
    v1 = *(v0 - 160);
    JUMPOUT(0x1000DF4D8);
  }

  JUMPOUT(0x1000DF4DCLL);
}

void sub_1000DF93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, char *a25, uint64_t a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a24, a25);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v27 - 96, *(v27 - 88));
  if (*(v27 - 113) < 0)
  {
    operator delete(*(v27 - 136));
  }

  _Unwind_Resume(a1);
}

void InternalIPCAPI::interface_energy_scan_start_handler(uint64_t a1, void *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  boost::any_cast<std::map<std::string,boost::any>>(a2, v4);
  v8 = 6;
  strcpy(buf, "method");
  v6[3] = buf;
  v2 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, buf);
  any_to_string(v2 + 7, &__p);
  if (v8 < 0)
  {
    operator delete(*buf);
  }

  operator new();
}

void sub_1000DFF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a23 < 0)
  {
    operator delete(__p);
    v45 = a25;
    if (!a25)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v45 = a25;
    if (!a25)
    {
LABEL_6:
      if (a43 < 0)
      {
        operator delete(a38);
      }

      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v43 - 176, *(v43 - 168));
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v43 - 152, *(v43 - 144));
      _Unwind_Resume(a1);
    }
  }

  (*(*v45 + 8))(v45);
  goto LABEL_6;
}

void sub_1000E0A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, char *a28, uint64_t a29, char a30)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a27, a28);
  if (*(v30 - 193) < 0)
  {
    operator delete(*(v30 - 216));
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v30 - 192, *(v30 - 184));
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v30 - 168, *(v30 - 160));
  _Unwind_Resume(a1);
}

void sub_1000E0B60()
{
  if (*(v0 - 105) < 0)
  {
    v1 = *(v0 - 128);
    JUMPOUT(0x1000E0B3CLL);
  }

  JUMPOUT(0x1000E0B40);
}

void InternalIPCAPI::interface_net_scan_start_handler(uint64_t a1, void *a2)
{
  v4[0] = 0;
  v4[1] = 0;
  v3 = v4;
  boost::any_cast<std::map<std::string,boost::any>>(a2, v2);
  operator new();
}

void sub_1000E10B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a23 < 0)
  {
    operator delete(__p);
    v45 = a25;
    if (!a25)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v45 = a25;
    if (!a25)
    {
LABEL_6:
      if (a43 < 0)
      {
        operator delete(a38);
      }

      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v43 - 176, *(v43 - 168));
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v43 - 152, *(v43 - 144));
      _Unwind_Resume(a1);
    }
  }

  (*(*v45 + 8))(v45);
  goto LABEL_6;
}

void sub_1000E11EC()
{
  if (*(v0 - 89) < 0)
  {
    v1 = *(v0 - 112);
    JUMPOUT(0x1000E11C8);
  }

  JUMPOUT(0x1000E11CCLL);
}

void InternalIPCAPI::interface_hard_reset_handler(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    if (a3[1])
    {
      v4[0] = 0;
      v4[1] = 0;
      v3 = v4;
      v6 = 6;
      strcpy(&__p, "method");
      p_p = &__p;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v3, &__p);
      operator new();
    }
  }
}

void sub_1000E14D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, char a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v19)
  {
    _Block_release(v19);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a9, a10);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a12, a13);
  _Unwind_Resume(a1);
}

void sub_1000E1534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a12, a13);
  _Unwind_Resume(a1);
}

void InternalIPCAPI::interface_status_handler(uint64_t a1, void *a2, uint64_t **a3, uint64_t a4)
{
  boost::any_cast<std::map<std::string,boost::any>>(a2, v23);
  v27 = 6;
  strcpy(buf, "method");
  v25 = buf;
  v6 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v23, buf);
  any_to_string(v6 + 7, &v22);
  if (v27 < 0)
  {
    operator delete(*buf);
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      v8 = &v22;
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v8 = v22.__r_.__value_.__r.__words[0];
      }

      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      *buf = 136315394;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = a3;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "InternalIPCAPI Handling %s method handler for %s", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  RcpHostContext::get_rcp_state(RcpHostContext::sRcpHostContext, buf);
  if (v27 < 0)
  {
    if (*&buf[8] == 13 && **buf == 0x616974696E696E75 && *(*buf + 5) == 0x64657A696C616974)
    {
      goto LABEL_35;
    }

    if (*&buf[8] != 7)
    {
      goto LABEL_34;
    }

    v12 = *buf;
  }

  else
  {
    if (v27 != 7)
    {
      if (v27 != 13)
      {
        goto LABEL_34;
      }

      if (*buf != 0x616974696E696E75 || *&buf[5] != 0x64657A696C616974)
      {
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v12 = buf;
  }

  v13 = *v12;
  v14 = *(v12 + 3);
  if (v13 != 1818650223 || v14 != 1701734764)
  {
LABEL_34:
    operator new();
  }

LABEL_35:
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v22;
  }

  v16 = *a4;
  if (*a4)
  {
    v16 = _Block_copy(v16);
    v17 = v16;
    v18 = *(a4 + 8);
    v19 = v16;
    v20 = v18;
    if (!v18)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v17 = 0;
  v18 = *(a4 + 8);
  v19 = 0;
  v20 = v18;
  if (v18)
  {
LABEL_45:
    dispatch_retain(v18);
  }

LABEL_46:
  InternalIPCAPI::status_offline_response_helper(v16, 0, v9, &v19);
  if (v18)
  {
    dispatch_release(v18);
  }

  if (v17)
  {
    _Block_release(v17);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v27 < 0)
  {
    operator delete(*buf);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_41:
    operator delete(v22.__r_.__value_.__l.__data_);
    goto LABEL_39;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_41;
  }

LABEL_39:
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v23, v24);
}

void sub_1000E19A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (*(v33 - 121) < 0)
  {
    operator delete(*(v33 - 144));
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v33 - 120, *(v33 - 112));
  _Unwind_Resume(a1);
}

void InternalIPCAPI::status_offline_response_helper(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a4 && a4[1])
  {
    v9[0] = 0;
    v9[1] = 0;
    v8 = v9;
    RcpHostContext::get_rcp_state(RcpHostContext::sRcpHostContext, &block);
    size = HIBYTE(block.__r_.__value_.__r.__words[2]);
    if ((block.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = block.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v7 = 9;
      strcpy(__p, "NCP:State");
      v5.__r_.__value_.__r.__words[0] = __p;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v8, __p);
      operator new();
    }

    std::string::assign(&block, "true");
    v7 = 14;
    strcpy(__p, "Daemon:Enabled");
    v5.__r_.__value_.__r.__words[0] = __p;
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v8, __p);
    operator new();
  }
}

void InternalIPCAPI::status_response_helper(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a4)
  {
    if (a4[1])
    {
      v9[0] = 0;
      v9[1] = 0;
      v7 = 0;
      v8 = v9;
      v6 = 0;
      time(&v6);
      v4 = ctime(&v6);
      v4[strcspn(v4, "\n")] = 0;
      v11 = 14;
      strcpy(__p, "Status at Time");
      v5.__r_.__value_.__r.__words[0] = __p;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v8, __p);
      operator new();
    }
  }
}

void boost::function<void ()(int)>::operator=<boost::_bi::bind_t<void,boost::_mfi::mf3<void,InternalIPCAPI,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list4<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 3), *(a2 + 4));
    v3 = *(a2 + 6);
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *(a2 + 24);
    v3 = *(a2 + 6);
    __p.__r_.__value_.__r.__words[2] = *(a2 + 5);
    if (!v3)
    {
LABEL_6:
      v4 = *(a2 + 7);
      aBlock = v3;
      object = v4;
      if (v4)
      {
        dispatch_retain(v4);
      }

      boost::function<void ()(int)>::function<boost::_bi::bind_t<void,boost::_mfi::mf3<void,InternalIPCAPI,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list4<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(v10, &v5);
    }
  }

  v3 = _Block_copy(v3);
  goto LABEL_6;
}

void sub_1000E4EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  boost::function<void ()(std::string const&,boost::any const&)>::~function((v9 - 48));
  boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void sub_1000E57E4()
{
  if (*(v0 - 105) < 0)
  {
    v1 = *(v0 - 128);
    JUMPOUT(0x1000E57CCLL);
  }

  JUMPOUT(0x1000E57D0);
}

uint64_t boost::bind<void,InternalIPCAPI,int,boost::any,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>,InternalIPCAPI*,boost::arg<1>,boost::any,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v17 = *a4;
  if (*a4)
  {
    v17 = (*(*v17 + 24))(v17);
  }

  v27 = v17;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a5, *(a5 + 8));
  }

  else
  {
    v26 = *a5;
  }

  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *a6, *(a6 + 8));
  }

  else
  {
    v25 = *a6;
  }

  if (*(a7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a7, *(a7 + 8));
  }

  else
  {
    v24 = *a7;
  }

  v18 = *a8;
  if (*a8)
  {
    v18 = _Block_copy(v18);
  }

  v19 = *(a8 + 8);
  v22 = v18;
  v23 = v19;
  if (v19)
  {
    dispatch_retain(v19);
  }

  boost::_bi::list7<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::list7(v28, a3, &v27, &v26, &v25, &v24, &v22);
  *a9 = a1;
  a9[1] = a2;
  boost::_bi::list7<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::list7((a9 + 2), v28);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v35 < 0)
  {
    operator delete(__p);
    if ((v33 & 0x80000000) == 0)
    {
LABEL_22:
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }
  }

  else if ((v33 & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v32);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_23:
    v20 = v29;
    if (!v29)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_37:
  operator delete(v30);
  v20 = v29;
  if (v29)
  {
LABEL_24:
    (*(*v20 + 8))(v20);
  }

LABEL_25:
  if (v23)
  {
    dispatch_release(v23);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_31:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_32:
    result = v27;
    if (!v27)
    {
      return result;
    }

    return (*(*result + 8))(result);
  }

LABEL_41:
  operator delete(v26.__r_.__value_.__l.__data_);
  result = v27;
  if (!v27)
  {
    return result;
  }

  return (*(*result + 8))(result);
}

void sub_1000E5A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      v34 = a32;
      if (!a32)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  v34 = a32;
  if (!a32)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  (*(*v34 + 8))(v34);
  _Unwind_Resume(exception_object);
}

void boost::function<void ()(int)>::operator=<boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::list7<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::list7(&v3, (a2 + 1));
  boost::function<void ()(int)>::function<boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(v4, &v2);
}

void sub_1000E5C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  boost::function<void ()(std::string const&,boost::any const&)>::~function((v9 - 48));
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

uint64_t boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      operator delete(*(a1 + 32));
      v4 = *(a1 + 24);
      if (!v4)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 79) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v4 = *(a1 + 24);
  if (v4)
  {
LABEL_9:
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_1000E681C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, _Unwind_Exception *exception_object, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a41 < 0)
  {
    operator delete(__p);
    if ((a56 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a56 & 0x80000000) == 0)
  {
LABEL_3:
    if ((a50 & 0x80000000) == 0)
    {
LABEL_8:
      if (a62 < 0)
      {
        operator delete(a57);
      }

      if (*(v62 - 217) < 0)
      {
        operator delete(*(v62 - 240));
      }

      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v62 - 216, *(v62 - 208));
      if (*(v62 - 169) < 0)
      {
        operator delete(*(v62 - 192));
      }

      _Unwind_Resume(a1);
    }

LABEL_7:
    operator delete(exception_object);
    goto LABEL_8;
  }

  operator delete(a51);
  if ((a50 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t std::pair<std::string const,std::shared_ptr<InternalClient>>::~pair(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(result + 23) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_6:
    v3 = result;
    operator delete(*result);
    return v3;
  }

  v2 = result;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  result = v2;
  if (*(v2 + 23) < 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t boost::_bi::list6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::~list6(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    operator delete(*(a1 + 32));
    goto LABEL_7;
  }

  if (*(a1 + 55) < 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t boost::_bi::storage4<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>>::~storage4(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t boost::_bi::list6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::~list6(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_release(v3);
  }

  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    operator delete(*(a1 + 16));
    v4 = *(a1 + 8);
    if (!v4)
    {
      return a1;
    }

    goto LABEL_8;
  }

  operator delete(*(a1 + 40));
  if (*(a1 + 39) < 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v4 = *(a1 + 8);
  if (v4)
  {
LABEL_8:
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t boost::_bi::storage5<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>>::~storage5(uint64_t a1)
{
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator delete(*(a1 + 16));
    v2 = *(a1 + 8);
    if (!v2)
    {
      return a1;
    }

    goto LABEL_4;
  }

  operator delete(*(a1 + 40));
  if (*(a1 + 39) < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(a1 + 8);
  if (v2)
  {
LABEL_4:
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t boost::_bi::storage4<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>>::~storage4(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t boost::_bi::list7<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::~list7(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 39) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      operator delete(*(a1 + 16));
      v4 = *(a1 + 8);
      if (!v4)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 63) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(a1 + 40));
  if (*(a1 + 39) < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v4 = *(a1 + 8);
  if (v4)
  {
LABEL_9:
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<InternalClient>>>>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<InternalClient>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<InternalClient>>>>::destroy(a1, *(a2 + 8));
    v4 = *(a2 + 64);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_5:
        v5 = a2;

LABEL_7:
        operator delete(v5);
        return;
      }
    }

    else if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(a2 + 32));
    v5 = a2;

    goto LABEL_7;
  }
}

__int128 *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf2<void,InternalIPCAPI,std::string,boost::any>,boost::_bi::list3<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>>>>::manage(__int128 *result, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v3 = *result;
    a2[2] = *(result + 2);
    *a2 = v3;
    return result;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
LABEL_2:
      *(a2 + 4) = 0;
      return result;
    }

    v4 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == (0x80000001004464D9 & 0x7FFFFFFFFFFFFFFFLL) || (v5 = result, v6 = a2, v7 = strcmp(v4, (0x80000001004464D9 & 0x7FFFFFFFFFFFFFFFLL)), a2 = v6, v8 = v7, result = v5, !v8))
    {
      *a2 = result;
    }

    else
    {
      *v6 = 0;
    }
  }

  return result;
}

void boost::detail::function::void_function_obj_invoker2<boost::_bi::bind_t<void,boost::_mfi::mf2<void,InternalIPCAPI,std::string,boost::any>,boost::_bi::list3<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>>>,void,std::string const&,boost::any const&>::invoke(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3[0] = a2;
  v3[1] = a3;
  boost::_bi::list3<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::arg<2>>::operator()<boost::_mfi::mf2<void,InternalIPCAPI,std::string,boost::any>,boost::_bi::rrlist2<std::string const&,boost::any const&>>((a1 + 16), a1, v3);
}

void boost::_bi::list3<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::arg<2>>::operator()<boost::_mfi::mf2<void,InternalIPCAPI,std::string,boost::any>,boost::_bi::rrlist2<std::string const&,boost::any const&>>(uint64_t *a1, uint64_t a2, __int128 **a3)
{
  v5 = *a1;
  v6 = *a3;
  if (*(*a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *v6, *(v6 + 1));
    v8 = *a3[1];
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = *v6;
  v10.__r_.__value_.__r.__words[2] = *(v6 + 2);
  *&v10.__r_.__value_.__l.__data_ = v7;
  v8 = *a3[1];
  if (v8)
  {
LABEL_5:
    v8 = (*(*v8 + 24))(v8);
  }

LABEL_6:
  v9 = v8;
  boost::_mfi::mf2<void,InternalIPCAPI,std::string,boost::any>::operator()(a2, v5, &v10, &v9);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1000E704C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::_mfi::mf2<void,InternalIPCAPI,std::string,boost::any>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = (a2 + (v5 >> 1));
  if ((v5 & 1) == 0)
  {
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::string::__init_copy_ctor_external(&v10, *a3, *(a3 + 8));
    v8 = *a4;
    if (!*a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = *(*v7 + v6);
  if (*(a3 + 23) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = *a3;
  v8 = *a4;
  if (*a4)
  {
LABEL_7:
    v8 = (*(*v8 + 24))(v8);
  }

LABEL_8:
  v9 = v8;
  v6(v7, &v10, &v9);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1000E7190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf1<void,InternalIPCAPI,nl::wpantund::WPAN::NetworkInstance const&>,boost::_bi::list2<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>>>>::manage(__int128 *result, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v3 = *result;
    a2[2] = *(result + 2);
    *a2 = v3;
    return result;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
LABEL_2:
      *(a2 + 4) = 0;
      return result;
    }

    v4 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == (0x800000010044658FLL & 0x7FFFFFFFFFFFFFFFLL) || (v5 = result, v6 = a2, v7 = strcmp(v4, (0x800000010044658FLL & 0x7FFFFFFFFFFFFFFFLL)), a2 = v6, v8 = v7, result = v5, !v8))
    {
      *a2 = result;
    }

    else
    {
      *v6 = 0;
    }
  }

  return result;
}

uint64_t boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void,boost::_mfi::mf1<void,InternalIPCAPI,nl::wpantund::WPAN::NetworkInstance const&>,boost::_bi::list2<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>>>,void,nl::wpantund::WPAN::NetworkInstance const&>::invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = (*(a1 + 16) + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

__int128 *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf1<void,InternalIPCAPI,nl::wpantund::EnergyScanResultEntry const&>,boost::_bi::list2<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>>>>::manage(__int128 *result, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v3 = *result;
    a2[2] = *(result + 2);
    *a2 = v3;
    return result;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
LABEL_2:
      *(a2 + 4) = 0;
      return result;
    }

    v4 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == (0x8000000100446618 & 0x7FFFFFFFFFFFFFFFLL) || (v5 = result, v6 = a2, v7 = strcmp(v4, (0x8000000100446618 & 0x7FFFFFFFFFFFFFFFLL)), a2 = v6, v8 = v7, result = v5, !v8))
    {
      *a2 = result;
    }

    else
    {
      *v6 = 0;
    }
  }

  return result;
}

uint64_t boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void,boost::_mfi::mf1<void,InternalIPCAPI,nl::wpantund::EnergyScanResultEntry const&>,boost::_bi::list2<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>>>,void,nl::wpantund::EnergyScanResultEntry const&>::invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = (*(a1 + 16) + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

void sub_1000E756C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  boost::shared_ptr<void>::~shared_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::nolock_force_unique_connection_list(uint64_t ***a1, uint64_t a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit(v2 + 2, memory_order_acquire) != 1)
  {
    operator new();
  }

  v3 = **a1;
  v4 = a1[2];
  if (v4 == v3)
  {
    v4 = v3[1];
  }

  v6 = v4;
  return boost::signals2::detail::signal_impl<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::nolock_cleanup_connections_from(a1, a2, 1, &v6, 2);
}

void sub_1000E7828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::nolock_cleanup_connections_from(uint64_t ***a1, uint64_t a2, char a3, uint64_t **a4, int a5)
{
  result = *a4;
  v21 = result;
  v7 = **a1;
  if (v7 != result)
  {
    v8 = a5 - 1;
    if (a3)
    {
      v10 = 0;
      do
      {
        v12 = result[2];
        v13 = *(v12 + 32);
        if (v13)
        {
          for (i = *v13; i != v13[1]; i += 24)
          {
            if ((*i ^ (*i >> 31)) > 1)
            {
              if ((*(**(i + 8) + 24))(*(i + 8)))
              {
                goto LABEL_18;
              }
            }

            else
            {
              v15 = *(i + 16);
              if (!v15 || !atomic_load_explicit((v15 + 8), memory_order_acquire))
              {
LABEL_18:
                if (*(v12 + 24) == 1)
                {
                  *(v12 + 24) = 0;
                  boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(v12, a2);
                }

                break;
              }
            }
          }
        }

        v16 = v21[2];
        if (*(v16 + 24))
        {
          result = v21[1];
        }

        else
        {
          result = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(boost::any const&),boost::function<void ()(boost::any const&)>>,boost::signals2::mutex>>>::erase(**a1, (v16 + 64), &v21);
        }

        v21 = result;
        ++v10;
      }

      while (result != **a1 && v8 >= v10);
    }

    else
    {
      v17 = 1;
      do
      {
        while (1)
        {
          v19 = result[2];
          if (*(v19 + 24))
          {
            break;
          }

          result = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(boost::any const&),boost::function<void ()(boost::any const&)>>,boost::signals2::mutex>>>::erase(v7, (v19 + 64), &v21);
          v7 = **a1;
          v21 = result;
          if (result == v7 || v8 < v17++)
          {
            goto LABEL_33;
          }
        }

        result = result[1];
        v21 = result;
      }

      while (result != v7 && v8 >= v17++);
    }
  }

LABEL_33:
  a1[2] = result;
  return result;
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(boost::any const&),boost::function<void ()(boost::any const&)>>,boost::signals2::mutex>>>::erase(void *a1, int *a2, uint64_t **a3)
{
  v6 = a1 + 4;
  v5 = a1[4];
  if (!v5)
  {
    if (a1[10] != *a3)
    {
      goto LABEL_52;
    }

    v12 = (*a3)[1];
    v8 = v6;
    v13 = (v6 - 1);
    if (v12 != a1)
    {
LABEL_43:
      std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::piecewise_construct_t const&,std::tuple<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const&>,std::tuple<>>(v13, a2)[6] = v12;
      goto LABEL_52;
    }

    goto LABEL_12;
  }

  v7 = *a2;
  if (*a2 == 1)
  {
    v8 = v6;
    v9 = v5;
    do
    {
      while (1)
      {
        v10 = *(v9 + 8);
        v11 = v10 < 1;
        if (v10 == 1)
        {
          v11 = *(v9 + 10) < a2[2];
        }

        if (!v11)
        {
          break;
        }

        v9 = v9[1];
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      v8 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    v8 = v6;
    v16 = v5;
    do
    {
      v17 = *(v16 + 8);
      v18 = v17 == v7;
      v11 = v17 < v7;
      v19 = v17 < v7;
      if (v11)
      {
        v20 = v8;
      }

      else
      {
        v20 = v16;
      }

      if (v18)
      {
        v19 = 0;
        v8 = v16;
      }

      else
      {
        v8 = v20;
      }

      v16 = v16[v19];
    }

    while (v16);
  }

LABEL_23:
  if (v8[6] == *a3)
  {
    v12 = (*a3)[1];
    v21 = *a2;
    if (*a2 == 1)
    {
      v22 = v6;
      v23 = v5;
      while (1)
      {
        v24 = *(v23 + 8);
        if (v24 == 1)
        {
          if (a2[2] < *(v23 + 10))
          {
            goto LABEL_31;
          }

LABEL_26:
          v23 = v23[1];
          if (!v23)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v24 <= 1)
          {
            goto LABEL_26;
          }

LABEL_31:
          v22 = v23;
          v23 = *v23;
          if (!v23)
          {
            goto LABEL_41;
          }
        }
      }
    }

    v22 = v6;
    v25 = v5;
    do
    {
      v26 = *(v25 + 8);
      v27 = v21 == v26;
      v11 = v21 < v26;
      v28 = v21 >= v26;
      if (v11)
      {
        v29 = v25;
      }

      else
      {
        v29 = v22;
      }

      if (v27)
      {
        v28 = 1;
      }

      else
      {
        v22 = v29;
      }

      v25 = v25[v28];
    }

    while (v25);
LABEL_41:
    if (v22 == v6)
    {
      v13 = (v6 - 1);
      if (v12 != a1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = (v6 - 1);
      if (v12 != v22[6])
      {
        goto LABEL_43;
      }
    }

LABEL_12:
    v14 = v8[1];
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v30 = v8;
      do
      {
        v15 = v30[2];
        v18 = *v15 == v30;
        v30 = v15;
      }

      while (!v18);
    }

    if (*v13 == v8)
    {
      *v13 = v15;
    }

    --a1[5];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v5, v8);
    operator delete(v8);
  }

LABEL_52:
  v31 = *a3;
  v32 = **a3;
  v33 = (*a3)[1];
  *(v32 + 8) = v33;
  *v33 = v32;
  --a1[2];
  v34 = v31[3];
  if (v34)
  {
    if (atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v34 + 16))(v34);
      if (atomic_fetch_add(v34 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v34 + 24))(v34);
      }
    }
  }

  operator delete(v31);
  return v33;
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(boost::any const&),boost::function<void ()(boost::any const&)>>,boost::signals2::mutex>::connection_body(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_1004C2EA8;
  operator new();
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(boost::any const&),boost::function<void ()(boost::any const&)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(boost::any const&),boost::function<void ()(boost::any const&)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete();
}

void sub_1000E7F44(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>>(v1);
  __cxa_rethrow();
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(boost::any const&),boost::function<void ()(boost::any const&)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = off_1004C2EA8;
  v2 = a1[7];
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  v3 = a1[5];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  *a1 = off_1004C1E88;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

void sub_1000E8200(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    boost::detail::sp_pointer_construct<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>(v1);
  }

  __cxa_rethrow();
}

__int128 *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf1<void,InternalIPCAPI,boost::any const&>,boost::_bi::list2<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>>>>::manage(__int128 *result, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v3 = *result;
    a2[2] = *(result + 2);
    *a2 = v3;
    return result;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
LABEL_2:
      *(a2 + 4) = 0;
      return result;
    }

    v4 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == (0x8000000100446848 & 0x7FFFFFFFFFFFFFFFLL) || (v5 = result, v6 = a2, v7 = strcmp(v4, (0x8000000100446848 & 0x7FFFFFFFFFFFFFFFLL)), a2 = v6, v8 = v7, result = v5, !v8))
    {
      *a2 = result;
    }

    else
    {
      *v6 = 0;
    }
  }

  return result;
}

uint64_t boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void,boost::_mfi::mf1<void,InternalIPCAPI,boost::any const&>,boost::_bi::list2<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>>>,void,boost::any const&>::invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = (*(a1 + 16) + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

void *std::__tree<std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<InternalClient>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_1000E859C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<InternalClient>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<InternalClient>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<InternalClient>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<InternalClient>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v6;
        if ((*(v6 + 55) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*(v2 + 55) < 0)
      {
LABEL_6:
        v4 = v2;
        operator delete(*(v2 + 32));
        v2 = v4;
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<InternalClient>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<InternalClient>>>>::erase(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
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
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  --a1[2];
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);
  v8 = *(a2 + 64);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(a2 + 55) < 0)
  {
LABEL_12:
    operator delete(*(a2 + 32));
  }

LABEL_13:
  operator delete(a2);
  return v4;
}

uint64_t ___ZNK8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEclIJhS2_EEEvDpT__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v2)
  {
    v2 = (*(*v2 + 24))(v2);
  }

  v6 = v2;
  (*(v3 + 16))(v3, v4, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void sub_1000E8808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c55_ZTSN8dispatch5blockIU13block_pointerFvhN5boost3anyEEEE40c16_ZTSN5boost3anyE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 32) = v4;
  result = *(a2 + 40);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *(a1 + 40) = result;
  return result;
}

void sub_1000E8884(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c55_ZTSN8dispatch5blockIU13block_pointerFvhN5boost3anyEEEE40c16_ZTSN5boost3anyE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

uint64_t ___ZNK8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEclIJiS2_EEEvDpT__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v2)
  {
    v2 = (*(*v2 + 24))(v2);
  }

  v6 = v2;
  (*(v3 + 16))(v3, v4, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void sub_1000E89A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a10);
  }

  _Unwind_Resume(exception_object);
}

void boost::function<void ()(int,boost::any const&)>::function<boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(void *a1, __int128 *a2)
{
  v3 = *a2;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v4, (a2 + 1));
  *a1 = 0;
  v5 = v3;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v6, &v4);
  boost::function2<void,int,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(a1, &v5);
}

void sub_1000E8B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a23);
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void boost::function2<void,int,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v3, (a2 + 1));
  v4 = v2;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v5, &v3);
  boost::detail::function::basic_vtable2<void,int,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(boost::function2<void,int,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>)::stored_vtable, &v4);
}

void sub_1000E8C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a23);
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>::manage(void *result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>::manager(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

void boost::detail::function::void_function_obj_invoker2<boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>,void,int,boost::any const&>::invoke(uint64_t *a1, int a2, unsigned int *a3)
{
  v4 = a2;
  v3 = *a1;
  v5[0] = &v4;
  v5[1] = a3;
  boost::_bi::list7<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::operator()<boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::rrlist2<int,boost::any const&>>(v3 + 16, v3, v5);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list7<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>::manager(void *result, _WORD *a2, int a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6 = *result;
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v7 = *a2;
    if (!*a2)
    {
      goto LABEL_9;
    }

    v8 = *(v7 + 104);
    if (v8)
    {
      dispatch_release(v8);
    }

    v9 = *(v7 + 96);
    if (v9)
    {
      _Block_release(v9);
    }

    if (*(v7 + 95) < 0)
    {
      operator delete(*(v7 + 72));
      if ((*(v7 + 71) & 0x80000000) == 0)
      {
LABEL_19:
        if ((*(v7 + 47) & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_24:
        operator delete(*(v7 + 24));
LABEL_20:
        operator delete();
      }
    }

    else if ((*(v7 + 71) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(*(v7 + 48));
    if ((*(v7 + 47) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  if (a3 != 3)
  {
LABEL_10:
    a2[4] = 0;
    return result;
  }

  if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001004468CCLL & 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    v5 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001004468CCLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v4;
    if (v5)
    {
LABEL_9:
      *a2 = 0;
      return result;
    }
  }

  *a2 = *result;
  return result;
}

void boost::_bi::list7<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::operator()<boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::rrlist2<int,boost::any const&>>(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v5 = *a1;
  v6 = a3[1];
  v7 = **a3;
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a1 + 8), *(a1 + 16));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *(a1 + 8);
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v13 = *(a1 + 32);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v13, *(a1 + 32), *(a1 + 40));
LABEL_6:
  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v12 = *(a1 + 56);
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a1 + 88);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>::operator()(a2, v5, v7, v6, &v14, &v13, &v12, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_19:
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_23:
      operator delete(v14.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }
}

void sub_1000E9064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

void boost::_mfi::mf6<void,InternalIPCAPI,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = (a2 + (v13 >> 1));
  if ((v13 & 1) == 0)
  {
    if ((*(a5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::string::__init_copy_ctor_external(&v22, *a5, *(a5 + 8));
    if ((*(a6 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v14 = *(*v15 + v14);
  if (*(a5 + 23) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v22 = *a5;
  if ((*(a6 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    v21 = *a6;
    goto LABEL_8;
  }

LABEL_7:
  std::string::__init_copy_ctor_external(&v21, *a6, *(a6 + 8));
LABEL_8:
  if (*(a7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a7, *(a7 + 8));
  }

  else
  {
    v20 = *a7;
  }

  v16 = *a8;
  if (*a8)
  {
    v16 = _Block_copy(v16);
  }

  v17 = *(a8 + 8);
  aBlock = v16;
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  v14(v15, a3, a4, &v22, &v21, &v20, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_25:
      operator delete(v22.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }
}

void sub_1000E9274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

uint64_t ___ZNK8dispatch8callbackIU13block_pointerFvN5boost3anyEEEclIJS2_EEEvDpT__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = (*(*v1 + 24))(v1);
  }

  v4 = v1;
  (*(v2 + 16))(v2, &v4);
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

void sub_1000E938C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFvN5boost3anyEEEE40c16_ZTSN5boost3anyE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 32) = v4;
  result = *(a2 + 40);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *(a1 + 40) = result;
  return result;
}

void sub_1000E9408(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFvN5boost3anyEEEE40c16_ZTSN5boost3anyE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t boost::_bi::list6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::list6(uint64_t a1, uint64_t a2, const void ***a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  std::map<std::string,boost::any>::map[abi:ne200100](v18, a3);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a4, *(a4 + 8));
  }

  else
  {
    v17 = *a4;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a5, *(a5 + 8));
  }

  else
  {
    v16 = *a5;
  }

  v11 = *a6;
  if (*a6)
  {
    v11 = _Block_copy(v11);
  }

  v12 = *(a6 + 8);
  aBlock = v11;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(a1, a2, v18, &v17, &v16, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    operator delete(v17.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v18, v18[1]);
  return a1;
}

void sub_1000E9620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, char *a25)
{
  if ((a23 & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a24, a25);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a24, a25);
  _Unwind_Resume(a1);
}

uint64_t boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(uint64_t a1, uint64_t a2, const void ***a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  std::map<std::string,boost::any>::map[abi:ne200100](&v16, a3);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a4, *(a4 + 8));
  }

  else
  {
    v15 = *a4;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  boost::_bi::storage5<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>>::storage5(a1, a2, &v16, &v15, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(v15.__r_.__value_.__l.__data_);
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v16, v17);
    v11 = *a6;
    if (!*a6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v16, v17);
  v11 = *a6;
  if (*a6)
  {
LABEL_13:
    v11 = _Block_copy(v11);
  }

LABEL_14:
  v12 = *(a6 + 8);
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  return a1;
}

void sub_1000E97D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, char *a23)
{
  if ((a21 & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a22, a23);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a22, a23);
  _Unwind_Resume(a1);
}

uint64_t boost::_bi::storage5<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>>::storage5(uint64_t a1, uint64_t a2, const void ***a3, uint64_t a4, __int128 *a5)
{
  std::map<std::string,boost::any>::map[abi:ne200100](&v12, a3);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  std::map<std::string,boost::any>::map[abi:ne200100](v14, &v12);
  *a1 = a2;
  std::map<std::string,boost::any>::map[abi:ne200100](a1 + 8, v14);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v14, v14[1]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(a1 + 32) = __p;
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v12, v13);
    if (*(a5 + 23) < 0)
    {
      goto LABEL_11;
    }

LABEL_9:
    v9 = *a5;
    *(a1 + 72) = *(a5 + 2);
    *(a1 + 56) = v9;
    return a1;
  }

  std::string::__init_copy_ctor_external((a1 + 32), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v12, v13);
    if ((*(a5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v12, v13);
    if ((*(a5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  std::string::__init_copy_ctor_external((a1 + 56), *a5, *(a5 + 1));
  return a1;
}

void sub_1000E99B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, char *a17, uint64_t a18, char a19)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v20, *(v19 + 16));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a16, a17);
  _Unwind_Resume(a1);
}

uint64_t boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 32);
  std::map<std::string,boost::any>::map[abi:ne200100](a1 + 8, (a2 + 8));
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 48);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  v7 = *(a2 + 80);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a2 + 88);
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  return a1;
}

void boost::function<void ()(int)>::function<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(void *a1, __int128 *a2)
{
  v3 = *a2;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(v4, (a2 + 1));
  *a1 = 0;
  v5 = v3;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(&v6, v4);
  boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(a1, &v5);
}

void sub_1000E9C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(&a23);
  boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(v3, (a2 + 1));
  v4 = v2;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(&v5, v3);
  boost::detail::function::basic_vtable1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>)::stored_vtable, &v4);
}

void sub_1000E9DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(&a23);
  boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>::manage(void *result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>::manager(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

void boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>,void,int>::invoke(uint64_t *a1, int a2)
{
  v3 = a2;
  v2 = *a1;
  v4 = &v3;
  boost::_bi::list6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::operator()<boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::rrlist1<int>>((v2 + 16), v2, &v4);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>::manager(void *result, _WORD *a2, int a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6 = *result;
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = *(v7 + 104);
      if (v8)
      {
        dispatch_release(v8);
      }

      v9 = *(v7 + 96);
      if (v9)
      {
        _Block_release(v9);
      }

      if (*(v7 + 95) < 0)
      {
        operator delete(*(v7 + 72));
      }

      if (*(v7 + 71) < 0)
      {
        operator delete(*(v7 + 48));
      }

      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v7 + 24, *(v7 + 32));
      operator delete();
    }

    goto LABEL_9;
  }

  if (a3 != 3)
  {
LABEL_10:
    a2[4] = 0;
    return result;
  }

  if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001004469D2 & 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    v5 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001004469D2 & 0x7FFFFFFFFFFFFFFFLL));
    result = v4;
    if (v5)
    {
LABEL_9:
      *a2 = 0;
      return result;
    }
  }

  *a2 = *result;
  return result;
}

void boost::_bi::list6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::operator()<boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::rrlist1<int>>(uint64_t *a1, uint64_t a2, unsigned int **a3)
{
  v3 = *a1;
  v4 = **a3;
  operator new();
}

void sub_1000EA1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    v25 = a24;
    if (!a24)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v25 = a24;
    if (!a24)
    {
LABEL_6:
      _Unwind_Resume(exception_object);
    }
  }

  (*(*v25 + 8))(v25);
  _Unwind_Resume(exception_object);
}

uint64_t boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = (a2 + (v11 >> 1));
  if (v11)
  {
    v12 = *(*v13 + v12);
    v14 = *a4;
    if (!*a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = *a4;
  if (*a4)
  {
LABEL_5:
    v14 = (*(*v14 + 24))(v14);
  }

LABEL_6:
  v22 = v14;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a5, *(a5 + 8));
  }

  else
  {
    v21 = *a5;
  }

  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a6, *(a6 + 8));
  }

  else
  {
    v20 = *a6;
  }

  v15 = *a7;
  if (*a7)
  {
    v15 = _Block_copy(v15);
  }

  v16 = *(a7 + 8);
  aBlock = v15;
  object = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  v12(v13, a3, &v22, &v21, &v20, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_22:
      result = v22;
      if (!v22)
      {
        return result;
      }

      return (*(*result + 8))(result);
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  result = v22;
  if (!v22)
  {
    return result;
  }

  return (*(*result + 8))(result);
}

void sub_1000EA404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    v25 = a24;
    if (!a24)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v25 = a24;
    if (!a24)
    {
      goto LABEL_3;
    }
  }

  (*(*v25 + 8))(v25);
  _Unwind_Resume(exception_object);
}

void boost::detail::function::basic_vtable1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(&v3, (a2 + 1));
  operator new();
}

uint64_t boost::_bi::list6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::list6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a3;
  if (*a3)
  {
    v11 = (*(*v11 + 24))(v11);
  }

  v20 = v11;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *a4, *(a4 + 8));
  }

  else
  {
    v19 = *a4;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a5, *(a5 + 8));
  }

  else
  {
    v18 = *a5;
  }

  v12 = *a6;
  if (*a6)
  {
    v12 = _Block_copy(v12);
  }

  v13 = *(a6 + 8);
  aBlock = v12;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(a1, a2, &v20, &v19, &v18, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    operator delete(v19.__r_.__value_.__l.__data_);
    v14 = v20;
    if (!v20)
    {
      return a1;
    }

    goto LABEL_20;
  }

  operator delete(v18.__r_.__value_.__l.__data_);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v14 = v20;
  if (v20)
  {
LABEL_20:
    (*(*v14 + 8))(v14);
  }

  return a1;
}

void sub_1000EA6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    v25 = *(v23 - 56);
    if (!v25)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v25 = *(v23 - 56);
    if (!v25)
    {
      goto LABEL_3;
    }
  }

  (*(*v25 + 8))(v25);
  _Unwind_Resume(exception_object);
}

uint64_t boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a3;
  if (*a3)
  {
    v11 = (*(*v11 + 24))(v11);
  }

  v18 = v11;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a4, *(a4 + 8));
  }

  else
  {
    v17 = *a4;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  boost::_bi::storage5<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>>::storage5(a1, a2, &v18, &v17, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      v12 = v18;
      if (!v18)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  v12 = v18;
  if (v18)
  {
LABEL_12:
    (*(*v12 + 8))(v12);
  }

LABEL_13:
  v13 = *a6;
  if (*a6)
  {
    v13 = _Block_copy(v13);
  }

  v14 = *(a6 + 8);
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  return a1;
}

void sub_1000EA8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    v23 = a22;
    if (!a22)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v23 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  (*(*v23 + 8))(v23);
  _Unwind_Resume(exception_object);
}

uint64_t boost::_bi::storage5<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>>::storage5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, __int128 *a5)
{
  if (*a3)
  {
    v9 = (*(**a3 + 24))(*a3);
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *a4;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
LABEL_6:
  if (v9)
  {
    v10 = (*(*v9 + 24))(v9);
    v11 = v10;
    *a1 = a2;
    if (v10)
    {
      *(a1 + 8) = (*(*v10 + 24))(v10);
      (*(*v11 + 8))(v11);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      *(a1 + 16) = __p;
      goto LABEL_14;
    }
  }

  else
  {
    *a1 = a2;
  }

  *(a1 + 8) = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  std::string::__init_copy_ctor_external((a1 + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    *(a1 + 56) = *(a5 + 2);
    *(a1 + 40) = v12;
  }

  return a1;
}

void sub_1000EAB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*v15)
  {
    (*(**v15 + 8))(*v15);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if (!v14)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if (!v14)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  (*(*v14 + 8))(v14);
  _Unwind_Resume(exception_object);
}

uint64_t boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    v4 = (*(*v4 + 24))(v4);
  }

  *(a1 + 8) = v4;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
  }

  v7 = *(a2 + 64);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a2 + 72);
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  return a1;
}

void sub_1000EAD08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(v3);
  }

  _Unwind_Resume(exception_object);
}

void boost::function<void ()(int)>::function<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(void *a1, __int128 *a2)
{
  v3 = *a2;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(&v4, (a2 + 1));
  *a1 = 0;
  v5 = v3;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(&v6, &v4);
  boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(a1, &v5);
}

void sub_1000EAE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(&a21);
  boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(&v3, (a2 + 1));
  v4 = v2;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(&v5, &v3);
  boost::detail::function::basic_vtable1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>)::stored_vtable, &v4);
}

void sub_1000EB030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(&a21);
  boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>::manage(void *result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>::manager(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>,void,int>::invoke(uint64_t *a1, int a2)
{
  v4 = a2;
  v2 = *a1;
  v5 = &v4;
  return boost::_bi::list6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::operator()<boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::rrlist1<int>>(v2 + 16, v2, &v5);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>::manager(void *result, _WORD *a2, int a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6 = *result;
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v7 = *a2;
    if (!*a2)
    {
      goto LABEL_9;
    }

    v8 = *(v7 + 88);
    if (v8)
    {
      dispatch_release(v8);
    }

    v9 = *(v7 + 80);
    if (v9)
    {
      _Block_release(v9);
    }

    if (*(v7 + 79) < 0)
    {
      operator delete(*(v7 + 56));
      if ((*(v7 + 55) & 0x80000000) == 0)
      {
LABEL_19:
        v10 = *(v7 + 24);
        if (!v10)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else if ((*(v7 + 55) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(*(v7 + 32));
    v10 = *(v7 + 24);
    if (!v10)
    {
LABEL_21:
      operator delete();
    }

LABEL_20:
    (*(*v10 + 8))(v10);
    goto LABEL_21;
  }

  if (a3 != 3)
  {
LABEL_10:
    a2[4] = 0;
    return result;
  }

  if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x8000000100446B06 & 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    v5 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x8000000100446B06 & 0x7FFFFFFFFFFFFFFFLL));
    result = v4;
    if (v5)
    {
LABEL_9:
      *a2 = 0;
      return result;
    }
  }

  *a2 = *result;
  return result;
}

uint64_t boost::_bi::list6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::operator()<boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::rrlist1<int>>(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v5 = **a3;
  v7 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = (*(*v6 + 24))(v6);
  }

  v15 = v6;
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v14 = *(a1 + 16);
  }

  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v13 = *(a1 + 40);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a1 + 72);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>::operator()(a2, v7, v5, &v15, &v14, &v13, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_19:
      result = v15;
      if (!v15)
      {
        return result;
      }

      return (*(*result + 8))(result);
    }
  }

  else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  result = v15;
  if (!v15)
  {
    return result;
  }

  return (*(*result + 8))(result);
}

void sub_1000EB424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    v25 = *(v23 - 40);
    if (!v25)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v25 = *(v23 - 40);
    if (!v25)
    {
      goto LABEL_3;
    }
  }

  (*(*v25 + 8))(v25);
  _Unwind_Resume(exception_object);
}

void boost::detail::function::basic_vtable1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,int,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<boost::any>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(&v3, (a2 + 1));
  operator new();
}

void boost::function<void ()(char const*)>::function<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,char const*,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(void *a1, __int128 *a2)
{
  v3 = *a2;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(v4, (a2 + 1));
  *a1 = 0;
  v5 = v3;
  boost::_bi::storage6<boost::_bi::value<InternalIPCAPI *>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>::storage6(&v6, v4);
  boost::function1<void,char const*>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,InternalIPCAPI,char const*,boost::any,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>,boost::_bi::list6<boost::_bi::value<InternalIPCAPI*>,boost::arg<1>,boost::_bi::value<std::map<std::string,boost::any>>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,boost::any)>>>>>(a1, &v5);
}