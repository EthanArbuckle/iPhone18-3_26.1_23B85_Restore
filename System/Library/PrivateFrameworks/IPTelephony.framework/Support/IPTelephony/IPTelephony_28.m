void SipTransportLayer::cancelTransportInit(SipTransportLayer *this)
{
  v2 = *(this + 46);
  *(this + 45) = 0;
  *(this + 46) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *(this + 266) = 0;
  SipTimerContainer::cancelAllTimers((this + 896));
  v3 = NetworkInterfaceMonotorManager::_instance;
  if (!NetworkInterfaceMonotorManager::_instance)
  {
    operator new();
  }

  NetworkInterfaceMonotorManager::stopMonitoring(v3, this + 134);
}

void SipTransportLayer::localClientAddress(SipTransportLayer *this, void *a2)
{
  v3 = a2[138];
  if (v3)
  {
    v4 = *(*v3 + 168);

    v4();
    return;
  }

  v6 = a2[2];
  if (!v6 || (v7 = std::__shared_weak_count::lock(v6)) == 0)
  {
LABEL_11:
    *this = 0;
    *(this + 1) = 0;
    return;
  }

  v8 = v7;
  v9 = a2[1];
  if (!v9 || !a2[144] || (v10 = SipStack::prefs(v9), ImsPrefs::AlwaysUseDefaultTransport(v10)))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    goto LABEL_11;
  }

  (*(*a2[144] + 168))(a2[144]);

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

void SipTransportLayer::initializeTransportToProxy(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v231 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (!v6 || (v213 = std::__shared_weak_count::lock(v6)) == 0)
  {
    v213 = 0;
    goto LABEL_11;
  }

  v211 = *(a1 + 8);
  if (!v211)
  {
LABEL_11:
    v225 = 0u;
    v226 = 0u;
    v227 = 0u;
    v228 = 0u;
    v224.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v224.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v224.__r_.__value_.__r.__words[2]) = 1073741826;
    v23 = ImsResult::operator<<<char [12]>(&v224, "no sipstack");
    ImsResult::ImsResult(a5, v23);
    goto LABEL_12;
  }

  v205 = a3;
  v206 = a2;
  v207 = a4;
  if ((a1 + 2080) == a2)
  {
    goto LABEL_97;
  }

  v10 = a2[4];
  v11 = (v10 >> 1) & 0x7FFFFFFFFFFFFFF8;
  v12 = a2[1];
  v13 = (v12 + v11);
  if (a2[2] == v12)
  {
    v14 = 0;
    v24 = 0;
LABEL_15:
    v17 = 0;
    v209 = (a1 + 2120);
    goto LABEL_17;
  }

  v14 = *v13 + 408 * (a2[4] & 0xFLL);
  v15 = a2[5] + v10;
  v16 = (v15 >> 1) & 0x7FFFFFFFFFFFFFF8;
  if (*(v12 + v16) + 408 * (v15 & 0xF) == v14)
  {
    v24 = *v13 + 408 * (a2[4] & 0xFLL);
    goto LABEL_15;
  }

  v17 = (v15 & 0xF) - (a2[4] & 0xFLL) + 2 * (v16 - v11);
  v209 = (a1 + 2120);
  v18 = *(a1 + 2120);
  if (v18 < v17)
  {
    v224.__r_.__value_.__r.__words[0] = v12 + v11;
    v224.__r_.__value_.__l.__size_ = v14;
    std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>::operator+=[abi:ne200100](&v224, v18);
    size = v224.__r_.__value_.__l.__size_;
    v19 = v224.__r_.__value_.__r.__words[0];
    v21 = *(a1 + 2088);
    if (*(a1 + 2096) == v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v21 + 8 * (*(a1 + 2112) >> 4)) + 408 * (*(a1 + 2112) & 0xFLL);
    }

    v224.__r_.__value_.__r.__words[0] = v21 + 8 * (*(a1 + 2112) >> 4);
    v224.__r_.__value_.__l.__size_ = v22;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>,std::__copy_impl::_CopySegment<std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>,std::__deque_iterator<SipUri,SipUri*,SipUri&,SipUri**,long,16l>>>(v13, v14, v19, size, &v224);
    v46 = *(a1 + 2096);
    v47 = *(a1 + 2088);
    v48 = v46 - v47;
    v49 = *(a1 + 2120);
    if (v46 == v47)
    {
      v50 = 0;
    }

    else
    {
      v50 = 2 * (v46 - v47) - 1;
    }

    i = v17 - v49;
    v52 = *(a1 + 2112);
    v53 = v52 + v49;
    v54 = v50 - (v52 + v49);
    v55 = v17 - v49 >= v54;
    v56 = v17 - v49 - v54;
    if (v56 != 0 && v55)
    {
      v204 = v17 - v49;
      if (v46 == v47)
      {
        v57 = v56 + 1;
      }

      else
      {
        v57 = v56;
      }

      if ((v57 & 0xF) != 0)
      {
        v58 = (v57 >> 4) + 1;
      }

      else
      {
        v58 = v57 >> 4;
      }

      if (v58 >= v52 >> 4)
      {
        v59 = v52 >> 4;
      }

      else
      {
        v59 = v58;
      }

      if (v58 <= v52 >> 4)
      {
        *(a1 + 2112) = v52 - 16 * v59;
        i = v204;
        if (v59)
        {
          v64 = -v59;
          do
          {
            v65 = *(a1 + 2088);
            v224.__r_.__value_.__r.__words[0] = *v65;
            *(a1 + 2088) = v65 + 1;
            std::__split_buffer<SipUri *>::emplace_back<SipUri *&>((a1 + 2080), &v224);
            v55 = __CFADD__(v64++, 1);
          }

          while (!v55);
        }
      }

      else
      {
        v60 = v58 - v59;
        v61 = *(a1 + 2104) - *(a1 + 2080);
        if (v58 - v59 > (v61 >> 3) - (v48 >> 3))
        {
          v62 = v61 >> 2;
          if (v62 <= v60 + (v48 >> 3))
          {
            v63 = v60 + (v48 >> 3);
          }

          else
          {
            v63 = v62;
          }

          *(&v225 + 1) = a1 + 2080;
          if (v63)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a1 + 2080, v63);
          }

          v224.__r_.__value_.__r.__words[0] = 0;
          v224.__r_.__value_.__l.__size_ = 8 * ((v48 >> 3) - v59);
          v224.__r_.__value_.__r.__words[2] = v224.__r_.__value_.__l.__size_;
          *&v225 = 0;
          operator new();
        }

        if (v60)
        {
          if (*(a1 + 2104) != *(a1 + 2096))
          {
            operator new();
          }

          operator new();
        }

        *(a1 + 2112) = v52 - 16 * v59;
        for (i = v204; v59; --v59)
        {
          v66 = *(a1 + 2088);
          v224.__r_.__value_.__r.__words[0] = *v66;
          *(a1 + 2088) = v66 + 1;
          std::__split_buffer<SipUri *>::emplace_back<SipUri *&>((a1 + 2080), &v224);
        }
      }

      v49 = *(a1 + 2120);
      v47 = *(a1 + 2088);
      v46 = *(a1 + 2096);
      v53 = *(a1 + 2112) + v49;
    }

    v67 = (v47 + 8 * (v53 >> 4));
    if (v46 == v47)
    {
      v68 = 0;
      v69 = 0;
    }

    else
    {
      v68 = *v67 + 408 * (v53 & 0xF);
      v69 = v68;
    }

    v224.__r_.__value_.__r.__words[0] = v67;
    v224.__r_.__value_.__l.__size_ = v69;
    std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>::operator+=[abi:ne200100](&v224, i);
    v70 = v224.__r_.__value_.__l.__size_;
    if (v68 != v224.__r_.__value_.__l.__size_)
    {
      v71 = v224.__r_.__value_.__r.__words[0];
      do
      {
        if (v67 == v71)
        {
          v72 = v70;
        }

        else
        {
          v72 = *v67 + 6528;
        }

        if (v68 == v72)
        {
          v72 = v68;
          v77 = (a1 + 2120);
        }

        else
        {
          v73 = 0;
          v74 = v68;
          do
          {
            SipUri::SipUri(v74, size);
            size = (size + 408);
            if ((size - *v19) == 6528)
            {
              v76 = v19[1];
              ++v19;
              size = v76;
            }

            v74 = (v75 + 408);
            v73 -= 408;
          }

          while (v74 != v72);
          v77 = (a1 + 2120);
          v49 = *v209;
        }

        v49 -= 0x505050505050505 * ((v72 - v68) >> 3);
        *v77 = v49;
        if (v67 == v71)
        {
          break;
        }

        v78 = v67[1];
        ++v67;
        v68 = v78;
      }

      while (v78 != v70);
    }

    goto LABEL_97;
  }

  v24 = *v13 + 408 * (a2[4] & 0xFLL);
LABEL_17:
  v25 = *(a1 + 2088);
  v26 = (v25 + 8 * (*(a1 + 2112) >> 4));
  if (*(a1 + 2096) == v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = *v26 + 408 * (*(a1 + 2112) & 0xFLL);
  }

  v224.__r_.__value_.__r.__words[0] = v13;
  v224.__r_.__value_.__l.__size_ = v24;
  std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>::operator+=[abi:ne200100](&v224, v17);
  v28 = *&v224.__r_.__value_.__l.__data_;
  v224.__r_.__value_.__r.__words[0] = v26;
  v224.__r_.__value_.__l.__size_ = v27;
  std::__for_each_segment[abi:ne200100]<std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>,std::__copy_impl::_CopySegment<std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>,std::__deque_iterator<SipUri,SipUri*,SipUri&,SipUri**,long,16l>>>(v13, v14, v28, *(&v28 + 1), &v224);
  v29 = *(a1 + 2120);
  v30 = *(a1 + 2112);
  v31 = *(a1 + 2088);
  v32 = (v31 + 8 * ((v30 + v29) >> 4));
  v33 = *(a1 + 2096);
  if (v33 == v31)
  {
    v34 = 0;
  }

  else
  {
    v34 = *v32 + 408 * ((v30 + v29) & 0xF);
  }

  if (v34 != v224.__r_.__value_.__l.__size_)
  {
    v35 = (v224.__r_.__value_.__l.__size_ - *v224.__r_.__value_.__l.__data_) >> 3;
    v36 = 0xFAFAFAFAFAFAFAFBLL * ((v34 - *v32) >> 3) + 2 * (v32 - v224.__r_.__value_.__r.__words[0]) + 0x505050505050505 * v35;
    if (v36 >= 1)
    {
      v37 = (v31 + 8 * (v30 >> 4));
      if (v33 == v31)
      {
        v38 = 0;
      }

      else
      {
        v38 = *v37 + 408 * (*(a1 + 2112) & 0xFLL);
      }

      if (v224.__r_.__value_.__l.__size_ == v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = 0xFAFAFAFAFAFAFAFBLL * v35 + 2 * (v224.__r_.__value_.__r.__words[0] - v37) + 0x505050505050505 * ((v38 - *v37) >> 3);
      }

      v224.__r_.__value_.__r.__words[0] = v31 + 8 * (v30 >> 4);
      v224.__r_.__value_.__l.__size_ = v38;
      std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>::operator+=[abi:ne200100](&v224, v39);
      v40 = v224.__r_.__value_.__l.__size_;
      if (v224.__r_.__value_.__l.__size_ != v34)
      {
        v41 = v224.__r_.__value_.__r.__words[0];
        do
        {
          (**v40)(v40);
          v40 += 51;
          if ((v40 - *v41) == 6528)
          {
            v42 = v41[1];
            ++v41;
            v40 = v42;
          }
        }

        while (v40 != v34);
        v29 = *(a1 + 2120);
        v33 = *(a1 + 2096);
        v31 = *(a1 + 2088);
        v30 = *(a1 + 2112);
      }

      v43 = 2 * (v33 - v31) - 1;
      if (v33 == v31)
      {
        v43 = 0;
      }

      *v209 = v29 - v36;
      if (v43 - (v29 - v36 + v30) >= 0x20)
      {
        do
        {
          operator delete(*(v33 - 8));
          v33 = *(a1 + 2096) - 8;
          v44 = *(a1 + 2088);
          *(a1 + 2096) = v33;
          if (v33 == v44)
          {
            v45 = 0;
          }

          else
          {
            v45 = 2 * (v33 - v44) - 1;
          }
        }

        while ((v45 - (*(a1 + 2120) + *(a1 + 2112))) > 0x1F);
      }
    }
  }

LABEL_97:
  SipTransportLayer::localClientAddress(&v224, a1);
  v79 = v224.__r_.__value_.__r.__words[0];
  if (v224.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v224.__r_.__value_.__l.__size_);
  }

  if (!v79)
  {
    v96 = *(a1 + 232);
    if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_226;
    }

    (*(*a1 + 224))(&v224, a1);
    if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v97 = &v224;
    }

    else
    {
      v97 = v224.__r_.__value_.__r.__words[0];
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v97;
    v98 = "%{private, mask.hash}sno existing usable transport";
    goto LABEL_140;
  }

  memset(&v224, 0, sizeof(v224));
  v80 = *(a1 + 1176);
  if (v80)
  {
    v81 = std::string::operator=(&v224, (v80 + 32));
  }

  else
  {
    v81 = *(a1 + 16);
    if (v81)
    {
      v81 = std::__shared_weak_count::lock(v81);
      if (v81)
      {
        v99 = v81;
        v100 = *(a1 + 8);
        if (v100)
        {
          v101 = *(v100 + 1751);
          if (v101 < 0)
          {
            v101 = *(v100 + 1736);
          }

          if (v101)
          {
            std::string::operator=(&v224, (v100 + 1728));
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v99);
      }
    }
  }

  v82 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
  if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v82 = v224.__r_.__value_.__l.__size_;
  }

  if (v82)
  {
    IPTelephonyManager::getBambiClient(buf, v81);
    v83 = *(*buf + 680);
    v84 = *(*buf + 688);
    if (v84)
    {
      atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v85 = (*(*v83 + 40))(v83, &v224);
    SipTransportLayer::setInterface(a1, v85);
    if (v84)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v84);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v86 = *(a1 + 1176) != 0;
    if ((*(&v224.__r_.__value_.__s + 23) & 0x80) == 0)
    {
LABEL_112:
      if (v86)
      {
        goto LABEL_113;
      }

      goto LABEL_135;
    }
  }

  else
  {
    v86 = 0;
    if ((*(&v224.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_112;
    }
  }

  operator delete(v224.__r_.__value_.__l.__data_);
  if (!v86)
  {
LABEL_135:
    v96 = *(a1 + 232);
    if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_226;
    }

    (*(*a1 + 224))(&v224, a1);
    if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v102 = &v224;
    }

    else
    {
      v102 = v224.__r_.__value_.__r.__words[0];
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v102;
    v98 = "%{private, mask.hash}sno existing network interface";
LABEL_140:
    _os_log_impl(&dword_1E4C3F000, v96, OS_LOG_TYPE_DEFAULT, v98, buf, 0x16u);
    if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v224.__r_.__value_.__l.__data_);
    }

    goto LABEL_226;
  }

LABEL_113:
  v87 = *(a1 + 1176);
  SipTransportLayer::localClientAddress(&v224, a1);
  v88 = *(v87 + 8);
  v89 = *(v87 + 16);
  if (v88 == v89)
  {
    v94 = 0;
    v92 = v205;
    v91 = v206;
  }

  else
  {
    v90 = v88 + 16;
    v92 = v205;
    v91 = v206;
    do
    {
      v93 = (*(**(v90 - 16) + 104))(*(v90 - 16), &v224, 0);
      v94 = v93;
      if (v90 == v89)
      {
        v95 = 1;
      }

      else
      {
        v95 = v93;
      }

      v90 += 16;
    }

    while (v95 != 1);
  }

  if (v224.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v224.__r_.__value_.__l.__size_);
  }

  if ((v94 & 1) == 0)
  {
    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 224))(buf, a1);
      v141 = *(a1 + 1176);
      if (*(v141 + 55) < 0)
      {
        v142 = *(v141 + 32);
      }

      SipTransportLayer::localClientAddress(&v220, a1);
      IpAddress::asString(&__p);
    }

    goto LABEL_226;
  }

  v103 = v91[5];
  if (v103 <= v92 || (v104 = v91[1], v91[2] == v104) || (v105 = v91[4], v106 = (v104 + 8 * (v105 >> 4)), v107 = *v106, v108 = (*v106 + 408 * (v105 & 0xF)), v109 = *(v104 + (((v105 + v103) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((v105 + v103) & 0xF), v108 == v109))
  {
LABEL_155:
    v111 = *(a1 + 2088);
    if (*(a1 + 2096) == v111)
    {
      goto LABEL_193;
    }

    v112 = *(a1 + 2112);
    v113 = (v111 + 8 * (v112 >> 4));
    v114 = *v113 + 408 * (v112 & 0xF);
    v115 = *(v111 + (((*(a1 + 2120) + v112) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((*(a1 + 2120) + v112) & 0xF);
    if (v114 == v115)
    {
      goto LABEL_193;
    }

    while (1)
    {
      memset(&v224, 0, sizeof(v224));
      (*(*v114 + 48))(buf, v114);
      v116 = (*(**buf + 152))(*buf);
      if (*(v116 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v224, *v116, *(v116 + 8));
      }

      else
      {
        v117 = *v116;
        v224.__r_.__value_.__r.__words[2] = *(v116 + 16);
        *&v224.__r_.__value_.__l.__data_ = v117;
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      v118 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
      if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v118 = v224.__r_.__value_.__l.__size_;
      }

      if (v118)
      {
        break;
      }

      v125 = 0;
      if ((*(&v224.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_188;
      }

LABEL_189:
      if (v125)
      {
        goto LABEL_226;
      }

      v114 += 408;
      if (v114 - *v113 == 6528)
      {
        v126 = v113[1];
        ++v113;
        v114 = v126;
      }

      if (v114 == v115)
      {
        goto LABEL_193;
      }
    }

    SipTransportLayer::localClientAddress(buf, a1);
    if (*buf)
    {
      SipTransportLayer::localClientAddress(&__p, a1);
      v119 = (*(*__p + 152))(__p);
      if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v120 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v120 = v224.__r_.__value_.__l.__size_;
      }

      v121 = *(v119 + 23);
      v122 = v121;
      if ((v121 & 0x80u) != 0)
      {
        v121 = *(v119 + 8);
      }

      if (v120 == v121)
      {
        if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v123 = &v224;
        }

        else
        {
          v123 = v224.__r_.__value_.__r.__words[0];
        }

        if (v122 >= 0)
        {
          v124 = v119;
        }

        else
        {
          v124 = *v119;
        }

        v125 = memcmp(v123, v124, v120) != 0;
      }

      else
      {
        v125 = 1;
      }

      if (v222)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v222);
      }
    }

    else
    {
      v125 = 0;
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if ((*(&v224.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_189;
    }

LABEL_188:
    operator delete(v224.__r_.__value_.__l.__data_);
    goto LABEL_189;
  }

  while (v92)
  {
LABEL_152:
    v108 = (v108 + 408);
    if (v108 - v107 == 6528)
    {
      v110 = v106[1];
      ++v106;
      v107 = v110;
      v108 = v110;
    }

    --v92;
    if (v108 == v109)
    {
      goto LABEL_155;
    }
  }

  if ((SipUri::equals((a1 + 376), v108, 1) & 1) == 0)
  {
    v107 = *v106;
    goto LABEL_152;
  }

  if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 224))(buf, a1);
    SipHop::logStr(v108);
  }

LABEL_193:
  v127 = *(a1 + 2088);
  if (*(a1 + 2096) == v127 || (v128 = *(a1 + 2112), v129 = (v127 + 8 * (v128 >> 4)), v130 = (*v129 + 408 * (v128 & 0xF)), v131 = *(v127 + (((*(a1 + 2120) + v128) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((*(a1 + 2120) + v128) & 0xF), v130 == v131))
  {
LABEL_226:
    v143 = *(a1 + 232);
    if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 224))(&v224, a1);
      v144 = (v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v224 : v224.__r_.__value_.__r.__words[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v144;
      _os_log_impl(&dword_1E4C3F000, v143, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sDesired proxies cannot be reached by the existing transport.  Transport will be initialized.", buf, 0x16u);
      if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v224.__r_.__value_.__l.__data_);
      }
    }

    SipTransportLayer::closeTransports(a1);
    SipTransportLayer::cancelTransportInit(a1);
    v145 = *(a1 + 208);
    if (!v145 || (v146 = *(a1 + 200), (v147 = std::__shared_weak_count::lock(v145)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v148 = v147;
    p_shared_weak_owners = &v147->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v147->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v147);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    if (*(v211 + 2304))
    {
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      v223 = 0;
      operator new();
    }

    v151 = *v207;
    v150 = v207[1];
    if (v150)
    {
      atomic_fetch_add_explicit((v150 + 16), 1uLL, memory_order_relaxed);
    }

    v152 = *(a1 + 368);
    *(a1 + 360) = v151;
    *(a1 + 368) = v150;
    if (v152)
    {
      std::__shared_weak_count::__release_weak(v152);
    }

    *(a1 + 1064) = 0;
    memset(&v215, 0, sizeof(v215));
    if (*(v211 + 1751) < 0)
    {
      std::string::__init_copy_ctor_external(&v215, *(v211 + 1728), *(v211 + 1736));
    }

    else
    {
      v215 = *(v211 + 1728);
    }

    v153 = HIBYTE(v215.__r_.__value_.__r.__words[2]);
    LOBYTE(v154) = *(&v215.__r_.__value_.__s + 23);
    v155 = v215.__r_.__value_.__l.__size_;
    if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v156 = HIBYTE(v215.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v156 = v215.__r_.__value_.__l.__size_;
    }

    if (!v156)
    {
      v157 = *(a1 + 232);
      v158 = os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT);
      if (v158)
      {
        (*(*a1 + 224))(&v224, a1);
        v159 = (v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v224 : v224.__r_.__value_.__r.__words[0];
        *buf = 141558275;
        *&buf[4] = 1752392040;
        *&buf[12] = 2081;
        *&buf[14] = v159;
        _os_log_impl(&dword_1E4C3F000, v157, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sno local interface specified.  I'll pick one.", buf, 0x16u);
        if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v224.__r_.__value_.__l.__data_);
        }
      }

      memset(&v220, 0, sizeof(v220));
      v217 = 0;
      v218 = 0;
      v219 = 0;
      IPTelephonyManager::getBambiClient(buf, v158);
      v160 = *(*buf + 680);
      v161 = *(*buf + 688);
      if (v161)
      {
        atomic_fetch_add_explicit(&v161->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v160 + 32))(&v224);
      v162 = (*(*v224.__r_.__value_.__l.__size_ + 24))(v224.__r_.__value_.__l.__size_, LODWORD(v224.__r_.__value_.__r.__words[2]));
      ImsResult::~ImsResult(&v224);
      if (v161)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v161);
      }

      v163 = *&buf[8];
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      if (v162)
      {
        v164 = *(a1 + 232);
        if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
        {
          (*(*a1 + 224))(&v224, a1);
          v202 = (v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v224 : v224.__r_.__value_.__r.__words[0];
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v202;
          _os_log_error_impl(&dword_1E4C3F000, v164, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNo network interfaces available", buf, 0x16u);
          if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v224.__r_.__value_.__l.__data_);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v214, "");
      }

      else
      {
        v165 = v217;
        v208 = v148;
        v210 = v218;
        if (v217 != v218)
        {
          while (1)
          {
            v166 = *(a1 + 2088);
            if (*(a1 + 2096) != v166)
            {
              v167 = *(a1 + 2112);
              v168 = (v166 + 8 * (v167 >> 4));
              v169 = (*v168 + 408 * (v167 & 0xF));
              v170 = *(v166 + (((*(a1 + 2120) + v167) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((*(a1 + 2120) + v167) & 0xF);
              if (v169 != v170)
              {
                break;
              }
            }

LABEL_280:
            if (++v165 == v210)
            {
              goto LABEL_285;
            }
          }

          v171 = *v165;
          v172 = (*v165 + 32);
          while (1)
          {
            IPTelephonyManager::getBambiClient(&v224, v163);
            v173 = *(v224.__r_.__value_.__r.__words[0] + 680);
            v174 = *(v224.__r_.__value_.__r.__words[0] + 688);
            if (v174)
            {
              atomic_fetch_add_explicit(&v174->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v169 + 48))(buf, v169);
            v175 = (*(*v173 + 64))(v173, v171, buf);
            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
            }

            if (v174)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v174);
            }

            if (v224.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v224.__r_.__value_.__l.__size_);
            }

            v163 = os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT);
            if (v175)
            {
              break;
            }

            if (v163)
            {
              (*(*a1 + 224))(buf, a1);
              SipHop::logStr(v169);
            }

            v169 = (v169 + 408);
            if ((v169 - *v168) == 6528)
            {
              v176 = v168[1];
              ++v168;
              v169 = v176;
            }

            if (v169 == v170)
            {
              goto LABEL_280;
            }
          }

          if (v163)
          {
            (*(*a1 + 224))(buf, a1);
            SipHop::logStr(v169);
          }

          std::string::operator=(&v220, v172);
          SipUri::operator=((a1 + 376), v169);
        }

LABEL_285:
        v177 = v217;
        v178 = v218;
        v148 = v208;
        if (v217 != v218)
        {
          do
          {
            if (*v177)
            {
              (*(**v177 + 8))(*v177);
            }

            ++v177;
          }

          while (v177 != v178);
        }

        v179 = HIBYTE(v220.__r_.__value_.__r.__words[2]);
        if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v179 = v220.__r_.__value_.__l.__size_;
        }

        if (!v179)
        {
          v180 = *(a1 + 232);
          if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
          {
            (*(*a1 + 224))(&v224, a1);
            v203 = (v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v224 : v224.__r_.__value_.__r.__words[0];
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v203;
            _os_log_error_impl(&dword_1E4C3F000, v180, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}scan't find a suitable local address for proxies in list", buf, 0x16u);
            if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v224.__r_.__value_.__l.__data_);
            }
          }
        }

        v214 = v220;
        memset(&v220, 0, sizeof(v220));
      }

      if (v217)
      {
        v218 = v217;
        operator delete(v217);
        if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v220.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v215.__r_.__value_.__l.__data_);
      }

      v215 = v214;
      v153 = HIBYTE(v214.__r_.__value_.__r.__words[2]);
      v155 = v214.__r_.__value_.__l.__size_;
      v154 = HIBYTE(v214.__r_.__value_.__r.__words[2]);
    }

    if ((v154 & 0x80u) != 0)
    {
      v153 = v155;
    }

    if (!v153)
    {
      v225 = 0u;
      v226 = 0u;
      v227 = 0u;
      v228 = 0u;
      v224.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
      v224.__r_.__value_.__l.__size_ = &_bambiDomain;
      LODWORD(v224.__r_.__value_.__r.__words[2]) = 0x40000000;
      v191 = ImsResult::operator<<<char [39]>(&v224, "no usable network interfaces available");
      ImsResult::ImsResult(a5, v191);
      ImsResult::~ImsResult(&v224);
LABEL_344:
      if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v215.__r_.__value_.__l.__data_);
      }

      std::__shared_weak_count::__release_weak(v148);
      std::__shared_weak_count::__release_weak(v148);
      goto LABEL_347;
    }

    v181 = SipTransportLayer::setState(a1, &unk_1EE2BC568);
    IPTelephonyManager::getBambiClient(&v224, v181);
    v182 = *(v224.__r_.__value_.__r.__words[0] + 680);
    v183 = *(v224.__r_.__value_.__r.__words[0] + 688);
    if (v183)
    {
      atomic_fetch_add_explicit(&v183->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v184 = (*(*v182 + 40))(v182, &v215);
    SipTransportLayer::setInterface(a1, v184);
    if (v183)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v183);
    }

    if (v224.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v224.__r_.__value_.__l.__size_);
    }

    __p = 0;
    v222 = 0;
    if (*(a1 + 1176))
    {
      SipTransportLayer::resolveLocalAddressFromProxies(&v224, a1, 1);
      v187 = v224.__r_.__value_.__l.__size_;
      v186 = v224.__r_.__value_.__r.__words[0];
      if (v224.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v224.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v187);
      }

      __p = v186;
      v222 = v187;
      if (v186)
      {
        v188 = *(a1 + 232);
        if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 224))(buf, a1);
          if (v230 >= 0)
          {
            v189 = buf;
          }

          else
          {
            v189 = *buf;
          }

          v190 = &v215;
          if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v190 = v215.__r_.__value_.__r.__words[0];
          }

          LODWORD(v224.__r_.__value_.__l.__data_) = 141558531;
          *(v224.__r_.__value_.__r.__words + 4) = 1752392040;
          WORD2(v224.__r_.__value_.__r.__words[1]) = 2081;
          *(&v224.__r_.__value_.__r.__words[1] + 6) = v189;
          HIWORD(v224.__r_.__value_.__r.__words[2]) = 2080;
          *&v225 = v190;
          _os_log_impl(&dword_1E4C3F000, v188, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s is already up", &v224, 0x20u);
          if (v230 < 0)
          {
            operator delete(*buf);
          }
        }

        SipHost::SipHost(&v224, &__p);
        SipUri::makeSipUri(a1 + 1232);
        SipHost::operator=(a1 + 1240, &v224);
        *(a1 + 1552) = 0;
        SipHost::~SipHost(&v224);
        SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(a1);
LABEL_341:
        if (v187)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v187);
        }

        *(a5 + 24) = 0u;
        *(a5 + 40) = 0u;
        *(a5 + 56) = 0u;
        *(a5 + 72) = 0u;
        *a5 = &unk_1F5EBDEF8;
        *(a5 + 8) = &_bambiDomain;
        *(a5 + 16) = 0;
        goto LABEL_344;
      }
    }

    else
    {
      v192 = *(a1 + 232);
      v185 = os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT);
      if (v185)
      {
        (*(*a1 + 224))(buf, a1);
        if (v230 >= 0)
        {
          v193 = buf;
        }

        else
        {
          v193 = *buf;
        }

        v194 = &v215;
        if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v194 = v215.__r_.__value_.__r.__words[0];
        }

        LODWORD(v224.__r_.__value_.__l.__data_) = 141558531;
        *(v224.__r_.__value_.__r.__words + 4) = 1752392040;
        WORD2(v224.__r_.__value_.__r.__words[1]) = 2081;
        *(&v224.__r_.__value_.__r.__words[1] + 6) = v193;
        HIWORD(v224.__r_.__value_.__r.__words[2]) = 2080;
        *&v225 = v194;
        _os_log_impl(&dword_1E4C3F000, v192, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}swaiting for %s to come up", &v224, 0x20u);
        if (v230 < 0)
        {
          operator delete(*buf);
        }
      }

      v187 = 0;
    }

    if (!NetworkInterfaceMonotorManager::_instance)
    {
      operator new();
    }

    v195 = *(a1 + 1095);
    if (v195 < 0)
    {
      v195 = *(a1 + 1080);
    }

    if (!v195)
    {
      IPTelephonyManager::getBambiClient(&v220, v185);
      v196 = *(v220.__r_.__value_.__r.__words[0] + 688);
      *buf = *(v220.__r_.__value_.__r.__words[0] + 680);
      *&buf[8] = v196;
      if (v196)
      {
        atomic_fetch_add_explicit((v196 + 8), 1uLL, memory_order_relaxed);
      }

      NetworkInterfaceMonotorManager::createMonitor(&v224);
    }

    NetworkInterfaceMonotorManager::startMonitoring(NetworkInterfaceMonotorManager::_instance, (a1 + 1072), &v215, 3);
    goto LABEL_341;
  }

  while (2)
  {
    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 224))(buf, a1);
      SipHop::logStr(v130);
    }

    if (!v130[6])
    {
      SipHost::resolve((v130 + 1), 1, &v224);
      v132 = (*(*v224.__r_.__value_.__l.__size_ + 24))(v224.__r_.__value_.__l.__size_, LODWORD(v224.__r_.__value_.__r.__words[2]));
      ImsResult::~ImsResult(&v224);
      if (v132)
      {
        if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 224))(buf, a1);
          SipHop::logStr(v130);
        }

LABEL_218:
        v130 += 51;
        if ((v130 - *v129) == 6528)
        {
          v140 = v129[1];
          ++v129;
          v130 = v140;
        }

        if (v130 == v131)
        {
          goto LABEL_226;
        }

        continue;
      }
    }

    break;
  }

  (*v130[1])(&v224, v130 + 1);
  v133 = v224.__r_.__value_.__r.__words[0];
  (**(a1 + 384))(buf, a1 + 384);
  v134 = (*(*v133 + 104))(v133, buf, 1);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v135 = v224.__r_.__value_.__l.__size_;
  if (v224.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v224.__r_.__value_.__l.__size_);
  }

  if (!v134)
  {
    v136 = SipTransportLayer::usingNullTransport(v135);
    if (v136)
    {
      SipUri::operator=((a1 + 376), v130);
      if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(buf, a1);
        SipHop::logStr(v130);
      }

      goto LABEL_354;
    }

    IPTelephonyManager::getBambiClient(&v224, v136);
    v137 = *(v224.__r_.__value_.__r.__words[0] + 680);
    v138 = *(v224.__r_.__value_.__r.__words[0] + 688);
    if (v138)
    {
      atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipTransportLayer::localClientAddress(buf, a1);
    (*(*v130 + 48))(&__p, v130);
    v139 = (*(*v137 + 72))(v137, buf, &__p);
    if (v222)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v222);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v138)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v138);
    }

    if (v224.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v224.__r_.__value_.__l.__size_);
    }

    if (v139)
    {
      SipUri::operator=((a1 + 376), v130);
      if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(buf, a1);
        SipHop::logStr(v130);
      }

      v201 = *(a1 + 1096);
      SipTransportLayer::localClientAddress(&v224, a1);
      SipHost::ipAddress((a1 + 384), buf);
      ImsNetworkReachabilityMonitor::startMonitoring(v201, &v224, buf);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      if (v224.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v224.__r_.__value_.__l.__size_);
      }

      goto LABEL_226;
    }

    goto LABEL_218;
  }

  SipUri::operator=((a1 + 376), v130);
  if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 224))(buf, a1);
    SipHop::logStr(v130);
  }

LABEL_354:
  v198 = *(a1 + 232);
  if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 224))(&v224, a1);
    v199 = (v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v224 : v224.__r_.__value_.__r.__words[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v199;
    _os_log_impl(&dword_1E4C3F000, v198, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}stransport is already initialized", buf, 0x16u);
    if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v224.__r_.__value_.__l.__data_);
    }
  }

  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v224.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
  v224.__r_.__value_.__l.__size_ = &_bambiDomain;
  LODWORD(v224.__r_.__value_.__r.__words[2]) = 0;
  v200 = v207[1];
  v216[0] = *v207;
  v216[1] = v200;
  if (v200)
  {
    atomic_fetch_add_explicit(&v200->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportLayer::notifyDelegate(a5, a1, &v224, v216);
  if (v200)
  {
    std::__shared_weak_count::__release_weak(v200);
  }

LABEL_12:
  ImsResult::~ImsResult(&v224);
LABEL_347:
  if (v213)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v213);
  }

  v197 = *MEMORY[0x1E69E9840];
}

void sub_1E4E3521C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1E4E35370);
}

void sub_1E4E3522C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  if (*(v1 - 216))
  {
    JUMPOUT(0x1E4E35248);
  }

  JUMPOUT(0x1E4E352E8);
}

void sub_1E4E3525C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (!*(v18 - 120))
  {
    if (a18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a18);
    }

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E4E3532CLL);
}

void sub_1E4E35288()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  if (*(v1 - 216))
  {
    JUMPOUT(0x1E4E352B4);
  }

  JUMPOUT(0x1E4E352C8);
}

void sub_1E4E352BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

uint64_t SipTransportLayer::usingNullTransport(SipTransportLayer *this)
{
  IPTelephonyManager::getBambiClient(&v5, this);
  v1 = *(v5 + 680);
  v2 = *(v5 + 688);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = (*(*v1 + 112))(v1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void sub_1E4E35404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::notifyDelegate(ImsResult *a1, os_log_t *a2, ImsResult *a3, uint64_t *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4[1];
  if (v7)
  {
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      v10 = *a4;
      if (v10)
      {
        if (os_log_type_enabled(a2[29], OS_LOG_TYPE_DEFAULT))
        {
          ((*a2)[28].isa)(v14, a2);
          ImsResult::logStr(a3);
        }

        (*(*v10 + 16))(v10, a2 + 47, a3);
LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        goto LABEL_16;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = a2[29];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    ((*a2)[28].isa)(buf, a2);
    v12 = v18 >= 0 ? buf : *buf;
    *v14 = 141558275;
    *&v14[4] = 1752392040;
    v15 = 2081;
    v16 = v12;
    _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sno delegate to notify of transport initialization", v14, 0x16u);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*buf);
    }
  }

  if (v9)
  {
    goto LABEL_15;
  }

LABEL_16:
  ImsResult::ImsResult(a1, a3);
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E4E356A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  _Unwind_Resume(a1);
}

void SipTransportLayer::initializeTransportGroup(SipTransportLayer *this)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 1);
      if (!v5)
      {
LABEL_82:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        goto LABEL_83;
      }

      SipTransportLayer::setState(this, &unk_1EE2BC5A8);
      v42 = 0;
      v43 = 0;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v40 = &unk_1F5EBDEF8;
      v41 = &_bambiDomain;
      v44 = 0;
      v38 = 0;
      v39 = 0;
      if (*(v5 + 2169) == 1 && !*(this + 208))
      {
        SipHop::setHostPort((this + 376), *(v5 + 2162));
      }

      memset(&v37, 0, sizeof(v37));
      v6 = *(this + 147);
      if (v6)
      {
        if (*(v6 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v37, *(v6 + 32), *(v6 + 40));
        }

        else
        {
          v37 = *(v6 + 32);
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v37, "");
      }

      if (*(v5 + 2817) == 1)
      {
        v7 = *(this + 29);
        v8 = 0;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 224))(v48, this);
          if (v49 >= 0)
          {
            v9 = v48;
          }

          else
          {
            v9 = *v48;
          }

          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v9;
          _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}ssetting local SIP port to be ephemeral", buf, 0x16u);
          if (SHIBYTE(v49) < 0)
          {
            operator delete(*v48);
          }

          v8 = 0;
        }
      }

      else
      {
        v8 = *(v5 + 2160);
        if (!v8)
        {
LABEL_29:
          IPTelephonyManager::getBambiClient(buf);
          v13 = *(*buf + 680);
          v14 = *(*buf + 688);
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v15 = *(this + 26);
          if (!v15 || (v16 = *(this + 25), (v17 = std::__shared_weak_count::lock(v15)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v35 = v16;
          v36 = v17;
          SipHost::ipAddress((this + 1240), &__p);
          (**(this + 48))(&v29);
          (*(*v13 + 104))(v48, v13, &v38, &v35, &__p, &v29, &v37, *(v5 + 2169));
          ImsResult::operator=(&v40, v48);
          ImsResult::~ImsResult(v48);
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }

          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }

          SipUri::operator=((this + 1640), this + 1232);
          v18 = (*(*v41 + 24))(v41, v42);
          if (v38)
          {
            v19 = v18;
          }

          else
          {
            v19 = 1;
          }

          v20 = *(this + 29);
          if (v19)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              (*(*this + 224))(buf, this);
              ImsResult::logStr(&v40);
            }

            (*(*this + 64))(this, &v40);
            if (v44 && *(v44 + 16) == 65 && *(v44 + 8) == &_posixDomain && *(v5 + 2817) == 1)
            {
              if (os_log_type_enabled(*(this + 29), OS_LOG_TYPE_ERROR))
              {
                (*(*this + 224))(buf, this);
                SipHop::logStr((this + 376));
              }

              SipTransportLayer::setNextInterfaceAddress(this);
            }

            SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(this);
          }

          else
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 224))(buf, this);
              SipTransportInterface::logStr(v38);
            }

            SipTransportLayer::setState(this, &unk_1EE2BC548);
            v21 = v38;
            v22 = v39;
            if (v39)
            {
              atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *(this + 138) = v21;
            v23 = *(this + 139);
            *(this + 139) = v22;
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v23);
              v21 = v38;
            }

            *(this + 2129) = 0;
            v24 = v39;
            if (v39)
            {
              atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *(this + 144) = v21;
            v25 = *(this + 145);
            *(this + 145) = v24;
            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
              v21 = v38;
            }

            (*(*v21 + 176))(v48);
            if (*v48)
            {
              (*(*v38 + 176))(buf);
              v26 = (*(**buf + 56))(*buf) != 0;
              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
              }
            }

            else
            {
              v26 = 0;
            }

            if (*&v48[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&v48[8]);
            }

            if (v26)
            {
              v27 = *(this + 46);
              v31[0] = *(this + 45);
              v31[1] = v27;
              if (v27)
              {
                atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              SipTransportLayer::notifyDelegate(v32, this, &v40, v31);
              ImsResult::~ImsResult(v32);
              if (v27)
              {
                std::__shared_weak_count::__release_weak(v27);
              }

              SipTransportLayer::cancelTransportInit(this);
            }
          }

          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }

          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }

          ImsResult::~ImsResult(&v40);
          goto LABEL_82;
        }

        v10 = *(this + 29);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 224))(buf, this);
          if (v52 >= 0)
          {
            v11 = buf;
          }

          else
          {
            v11 = *buf;
          }

          v12 = *(v5 + 2160);
          *v48 = 141558531;
          *&v48[4] = 1752392040;
          *&v48[12] = 2081;
          *&v48[14] = v11;
          v49 = 1024;
          LODWORD(v50) = v12;
          _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdefaulting local SIP port to %d", v48, 0x1Cu);
          if (v52 < 0)
          {
            operator delete(*buf);
          }

          v8 = *(v5 + 2160);
        }
      }

      SipHop::setHostPort((this + 1232), v8);
      goto LABEL_29;
    }
  }

LABEL_83:
  v28 = *MEMORY[0x1E69E9840];
}

void sub_1E4E36130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, std::__shared_weak_count *a43, char a44)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a43);
  }

  ImsResult::~ImsResult(&a44);
  std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  _Unwind_Resume(a1);
}

void SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(os_log_t *this)
{
  v18 = *MEMORY[0x1E69E9840];
  SipTransportLayer::setState(this, &unk_1EE2BC588);
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  SipHost::resolve((this + 48), 1, &v10);
  if (!(*(**(&v10 + 1) + 24))(*(&v10 + 1), v11))
  {
    ++*(this + 266);
    v3 = this[26];
    if (v3)
    {
      v4 = this[25];
      v5 = std::__shared_weak_count::lock(v3);
      if (v5)
      {
        p_shared_weak_owners = &v5->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        v16 = 0;
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  if (os_log_type_enabled(this[29], OS_LOG_TYPE_ERROR))
  {
    ((*this)[28].isa)(buf, this);
    SipHop::logStr((this + 47));
  }

  v2 = this[46];
  v8[0] = this[45];
  v8[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportLayer::notifyDelegate(v9, this, &v10, v8);
  ImsResult::~ImsResult(v9);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipTransportLayer::cancelTransportInit(this);
  ImsResult::~ImsResult(&v10);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4E36900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44)
{
  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  std::__shared_weak_count::__release_weak(v44);
  std::__shared_weak_count::__release_weak(v44);
  ImsResult::~ImsResult(&a44);
  _Unwind_Resume(a1);
}

void SipTransportLayer::handleTimer(uint64_t a1, uint64_t **a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = qword_1EE2BC518;
  if (byte_1EE2BC527 >= 0)
  {
    v6 = byte_1EE2BC527;
  }

  if (v5 == v6 && (v4 >= 0 ? (v7 = a2) : (v7 = *a2), byte_1EE2BC527 >= 0 ? (v8 = &qword_1EE2BC510) : (v8 = qword_1EE2BC510), !memcmp(v7, v8, v5)))
  {
    v27 = *MEMORY[0x1E69E9840];

    SipTransportLayer::initializeTransportGroup(a1);
  }

  else
  {
    if (v5 == 21)
    {
      v17 = *a2;
      if (v4 >= 0)
      {
        v17 = a2;
      }

      v18 = *v17;
      v19 = v17[1];
      v20 = *(v17 + 13);
      if (v18 == 0x61576D6574737953 && v19 == 0x695474696157656BLL && v20 == 0x74756F656D695474)
      {
        IPTelephonyManager::getBambiClient(&__p);
        v23 = *(__p + 696);
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        if (v23)
        {
          *(a1 + 2128) = 1;
          v24 = *(a1 + 232);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            (*(*a1 + 224))(&__p, a1);
            v25 = v32 >= 0 ? &__p : __p;
            *buf = 141558275;
            v39 = 1752392040;
            v40 = 2081;
            v41 = v25;
            _os_log_impl(&dword_1E4C3F000, v24, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}stimed out waiting for system wake event. Processing deferred incoming messages.", buf, 0x16u);
            if (v32 < 0)
            {
              operator delete(__p);
            }
          }

          SipTransportLayer::processDeferredIncomingMessages(a1);
        }
      }
    }

    else if (v5 == 20)
    {
      v9 = *a2;
      if (v4 >= 0)
      {
        v9 = a2;
      }

      v10 = *v9;
      v11 = v9[1];
      v12 = *(v9 + 4);
      if (v10 == 0x726F70736E617254 && v11 == 0x6D695474696E4974 && v12 == 1953853285)
      {
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        __p = &unk_1F5EBDEF8;
        v30 = &_bambiDomain;
        v31 = 0x40000000;
        v15 = ImsResult::operator<<<char [25]>(&__p, "transport init timed out");
        v16 = *(a1 + 368);
        v28[0] = *(a1 + 360);
        v28[1] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        SipTransportLayer::notifyDelegate(v37, a1, v15, v28);
        ImsResult::~ImsResult(v37);
        if (v16)
        {
          std::__shared_weak_count::__release_weak(v16);
        }

        ImsResult::~ImsResult(&__p);
        SipTransportLayer::cancelTransportInit(a1);
      }
    }

    v26 = *MEMORY[0x1E69E9840];
  }
}

void sub_1E4E36D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  ImsResult::~ImsResult(&a11);
  _Unwind_Resume(a1);
}

void SipTransportLayer::processDeferredIncomingMessages(SipTransportLayer *this)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(this + 44);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 43);
      if (v4)
      {
        memset(v38, 0, 24);
        std::list<IncomingSipMessage *>::list(v38, *(this + 257) + 32);
        v5 = *&v38[16];
        if (*&v38[16])
        {
          while (1)
          {
            v6 = *&v38[8];
            v7 = *(*&v38[8] + 8);
            v8 = *(*&v38[8] + 16);
            v9 = **&v38[8];
            *(v9 + 8) = v7;
            *v7 = v9;
            *&v38[16] = v5 - 1;
            operator delete(v6);
            v10 = *(this + 29);
            if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              goto LABEL_18;
            }

            (*(*this + 224))(v33, this);
            if (v34 >= 0)
            {
              v11 = v33;
            }

            else
            {
              v11 = v33[0];
            }

            v12 = *v8;
            v13 = *(v8 + 1);
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v12 + 40))(v31);
            v14 = v31;
            if (v32 < 0)
            {
              v14 = v31[0];
            }

            *buf = 141558531;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v11;
            v36 = 2080;
            v37 = v14;
            _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sprocessing deferred %s", buf, 0x20u);
            if ((v32 & 0x80000000) == 0)
            {
              break;
            }

            operator delete(v31[0]);
            if (v13)
            {
              goto LABEL_15;
            }

LABEL_16:
            if (v34 < 0)
            {
              operator delete(v33[0]);
            }

LABEL_18:
            v15 = *(v8 + 1);
            v29 = *v8;
            v30 = v15;
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v16 = *(v8 + 3);
            *buf = *(v8 + 2);
            *&buf[8] = v16;
            if (v16)
            {
              atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
            }

            v17 = *(v8 + 6);
            if (!v17)
            {
              v22 = *(v8 + 5);
              v27 = *(v8 + 4);
              v28 = v22;
              if (v22)
              {
                atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              goto LABEL_35;
            }

            v18 = *(v17 + 280);
            if (!v18)
            {
              v20 = 0;
LABEL_31:
              v23 = *(v8 + 5);
              v27 = *(v8 + 4);
              v28 = v23;
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (!v20)
              {
                goto LABEL_35;
              }

              goto LABEL_34;
            }

            v19 = *(v17 + 272);
            atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v20 = std::__shared_weak_count::lock(v18);
            std::__shared_weak_count::__release_weak(v18);
            if (!v20 || !v19)
            {
              goto LABEL_31;
            }

            v21 = *(v8 + 7);
            v27 = *(v8 + 6);
            v28 = v21;
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

LABEL_34:
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
LABEL_35:
            (*(*v4 + 24))(v4, &v29, buf, &v27);
            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
            }

            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v30);
            }

            IncomingSipMessage::~IncomingSipMessage(v8);
            MEMORY[0x1E69235B0]();
            v5 = *&v38[16];
            if (!*&v38[16])
            {
              goto LABEL_55;
            }
          }

          if (!v13)
          {
            goto LABEL_16;
          }

LABEL_15:
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          goto LABEL_16;
        }

LABEL_55:
        SipTransportLayer::IncomingMessageList::clear(*(this + 257));
        std::__list_imp<unsigned long long>::clear(v38);
        goto LABEL_53;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v24 = *(this + 29);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 224))(buf, this);
    v25 = v36 >= 0 ? buf : *buf;
    *v38 = 141558275;
    *&v38[4] = 1752392040;
    *&v38[12] = 2081;
    *&v38[14] = v25;
    _os_log_impl(&dword_1E4C3F000, v24, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sno delegate. Dropping deferred incoming messages", v38, 0x16u);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(*buf);
    }
  }

  SipTransportLayer::dropDeferredIncomingMessages(this);
  if (v3)
  {
LABEL_53:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E4E3719C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::__list_imp<unsigned long long>::clear(&a28);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(a1);
}

void SipTransportLayer::resolveLocalAddressFromProxies(SipTransportLayer *this, os_log_t *a2, char a3)
{
  v79 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  v73 = 0;
  v72 = 0;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v70 = &unk_1F5EBDEF8;
  v71 = &_bambiDomain;
  v74 = 0;
  v4 = a2[2];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_45;
  }

  v6 = std::__shared_weak_count::lock(v4);
  v7 = v6;
  if (!v6 || (v47 = a2[1]) == 0)
  {
LABEL_45:
    v26 = a2[29];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      ((*a2)[28].isa)(&v61, a2);
      v40 = v63 >= 0 ? &v61 : v61;
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v40;
      _os_log_error_impl(&dword_1E4C3F000, v26, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sstack is null. Unable to find resolvable proxy", buf, 0x16u);
      if (SHIBYTE(v63) < 0)
      {
        operator delete(v61);
      }
    }

    v27 = a2[46];
    v68[0] = a2[45];
    v68[1] = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    SipTransportLayer::notifyDelegate(v69, a2, &v70, v68);
    ImsResult::~ImsResult(v69);
    if (v27)
    {
      std::__shared_weak_count::__release_weak(v27);
    }

    SipTransportLayer::cancelTransportInit(a2);
    goto LABEL_51;
  }

  v8 = a2[261];
  if (a2[262] == v8 || (v9 = a2[264], v10 = (v8[v9 >> 4].isa + 408 * (v9 & 0xF)), v46 = *(&v8->isa + (((v9 + a2[265]) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((*(a2 + 530) + v9) & 0xF), v10 == v46))
  {
    v11 = 0;
    v12 = 3;
    v29 = 1;
    goto LABEL_56;
  }

  v44 = a3;
  v45 = v6;
  v11 = 0;
  v49 = 0;
  v12 = 3;
  v13 = &v8[v9 >> 4];
  while (1)
  {
    v63 = 0;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v61 = &unk_1F5EBDEF8;
    v62 = &_bambiDomain;
    v64 = 0uLL;
    if (v10[6])
    {
      v14 = 0;
      v15 = &_bambiDomain;
    }

    else
    {
      SipHost::resolve((v10 + 1), 1, buf);
      ImsResult::operator=(&v61, buf);
      ImsResult::~ImsResult(buf);
      v15 = v62;
      v14 = v63;
    }

    if (!(*(*v15 + 24))(v15, v14))
    {
      break;
    }

    if (os_log_type_enabled(a2[29], OS_LOG_TYPE_ERROR))
    {
      ((*a2)[28].isa)(v60, a2);
      SipHop::logStr(v10);
    }

    if (!v49 || ((*(*v71 + 24))(v71, v72) & 1) == 0)
    {
      ImsResult::operator=(&v70, &v61);
    }

    ++v49;
    ImsResult::~ImsResult(&v61);
LABEL_39:
    v10 += 51;
    if ((v10 - v13->isa) == 6528)
    {
      isa = v13[1].isa;
      ++v13;
      v10 = isa;
    }

    if (v10 == v46)
    {
      goto LABEL_55;
    }
  }

  (*(*v10 + 48))(buf, v10);
  v12 = (*(**buf + 160))(*buf);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v16 = a2[29];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    ((*a2)[28].isa)(v60, a2);
    NetworkInterface::logStr(a2[147]);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    ((*a2)[28].isa)(v60, a2);
    (*(*v10 + 48))(&v57, v10);
    v17 = (*(*v57 + 152))(v57);
    if (*(v17 + 23) < 0)
    {
      v18 = *v17;
    }

    (*(a2[147]->isa + 3))(&__p);
    (*(*v10 + 48))(&v56, v10);
    IpAddress::logStr(v56);
  }

  v57 = 0;
  v58 = 0;
  if (BYTE1(v47[352].isa))
  {
    v19 = &qword_1EE2BC4F8;
  }

  else
  {
    v19 = &_MergedGlobals_11;
  }

  NetworkInterface::firstAddress(a2[147], v12, v19, &v57);
  v20 = v57;
  if (v57)
  {
    (*(*v57 + 32))(buf, v57);
    v21 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v22 = *(this + 1);
    *this = v21;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    SipUri::operator=((a2 + 47), v10);
    if (os_log_type_enabled(a2[29], OS_LOG_TYPE_DEFAULT))
    {
      ((*a2)[28].isa)(v60, a2);
      SipHost::ipAddress((a2 + 48), &v56);
      v23 = (*(*v56 + 152))(v56);
      if (*(v23 + 23) < 0)
      {
        v24 = *v23;
      }

      IpAddress::logStr(*this);
    }
  }

  else
  {
    ++v49;
  }

  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  ImsResult::~ImsResult(&v61);
  v11 = 1;
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_55:
  v29 = *this == 0;
  v7 = v45;
  a3 = v44;
LABEL_56:
  if (BYTE1(v47[352].isa) == 1)
  {
    if (v29)
    {
      NetworkInterface::firstAddress(a2[147], v12, &qword_1EE2BC4F8, &v61);
      v30 = v61;
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      if (v30)
      {
        v31 = a2[29];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          ((*a2)[28].isa)(&v61, a2);
          v43 = v63 >= 0 ? &v61 : v61;
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v43;
          _os_log_error_impl(&dword_1E4C3F000, v31, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}slocal address cannot reach any proxies", buf, 0x16u);
          if (SHIBYTE(v63) < 0)
          {
            operator delete(v61);
          }
        }

        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v61 = &unk_1F5EBDEF8;
        v62 = &_bambiDomain;
        LODWORD(v63) = 1073741842;
        v32 = ImsResult::operator<<<char [31]>(&v61, "network configuration mismatch");
        v33 = a2[46];
        v54[0] = a2[45];
        v54[1] = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        SipTransportLayer::notifyDelegate(v55, a2, v32, v54);
        v34 = v55;
        goto LABEL_73;
      }

LABEL_66:
      NetworkInterface::firstAddress(a2[147], 3, 1, &v61);
      v35 = v61;
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      if (v35)
      {
        v36 = a2[29];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          ((*a2)[28].isa)(&v61, a2);
          v42 = v63 >= 0 ? &v61 : v61;
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v42;
          _os_log_error_impl(&dword_1E4C3F000, v36, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}slocal address cannot reach any proxies", buf, 0x16u);
          if (SHIBYTE(v63) < 0)
          {
            operator delete(v61);
          }
        }

        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v61 = &unk_1F5EBDEF8;
        v62 = &_bambiDomain;
        LODWORD(v63) = 1073741842;
        v37 = ImsResult::operator<<<char [31]>(&v61, "network configuration mismatch");
        v33 = a2[46];
        v52[0] = a2[45];
        v52[1] = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        SipTransportLayer::notifyDelegate(v53, a2, v37, v52);
        v34 = v53;
LABEL_73:
        ImsResult::~ImsResult(v34);
        if (v33)
        {
          std::__shared_weak_count::__release_weak(v33);
        }

        ImsResult::~ImsResult(&v61);
        SipTransportLayer::cancelTransportInit(a2);
      }
    }
  }

  else if (v29)
  {
    goto LABEL_66;
  }

  if (!(v11 & 1 | ((a3 & 1) == 0)))
  {
    v38 = a2[29];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      ((*a2)[28].isa)(&v61, a2);
      v41 = v63 >= 0 ? &v61 : v61;
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v41;
      _os_log_error_impl(&dword_1E4C3F000, v38, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sunable to find resolvable proxy", buf, 0x16u);
      if (SHIBYTE(v63) < 0)
      {
        operator delete(v61);
      }
    }

    v39 = a2[46];
    v50[0] = a2[45];
    v50[1] = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    SipTransportLayer::notifyDelegate(v51, a2, &v70, v50);
    ImsResult::~ImsResult(v51);
    if (v39)
    {
      std::__shared_weak_count::__release_weak(v39);
    }

    SipTransportLayer::cancelTransportInit(a2);
  }

LABEL_51:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  ImsResult::~ImsResult(&v70);
  v28 = *MEMORY[0x1E69E9840];
}

void sub_1E4E38148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  ImsResult::~ImsResult(&STACK[0x2D8]);
  v23 = *(a21 + 8);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

void SipTransportLayer::reachabilityChanged(SipTransportLayer *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 40) & 2) == 0)
  {
    v3 = *(a1 + 29);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 224))(__p, a1);
      if (v14 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 141558275;
      v16 = 1752392040;
      v17 = 2081;
      v18 = v4;
      _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sproxy is no longer reachable", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a1 + 1168) = 0;
    goto LABEL_25;
  }

  if (!ImsUuid::operator==(a1 + 296, &unk_1EE2BC588))
  {
    v9 = *(a1 + 29);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 224))(__p, a1);
      v10 = v14 >= 0 ? __p : __p[0];
      *buf = 141558275;
      v16 = 1752392040;
      v17 = 2081;
      v18 = v10;
      _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snot waiting for reachability", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_25;
  }

  *(a1 + 1168) = 1;
  v5 = *(a1 + 2);
  if (v5 && (v6 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v7 = *(a1 + 1);
    if (v7)
    {
      v8 = *(v7 + 2817);
    }

    else
    {
      v8 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = 0;
  }

  if (!SipUri::isValidUri((a1 + 376)) || *(a1 + 138) || (v8 & 1) == 0 && *(a1 + 266) < 2u)
  {
LABEL_25:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  SipTimerContainer::cancelAllTimers((a1 + 896));
  v12 = *MEMORY[0x1E69E9840];

  SipTransportLayer::initializeTransportGroup(a1);
}

void SipTransportLayer::networkInterfaceChanged(uint64_t a1, uint64_t *a2, NetworkInterface **a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v7 = *(a1 + 327);
    if (v7 >= 0)
    {
      v8 = *(a1 + 327);
    }

    else
    {
      v8 = *(a1 + 312);
    }

    v9 = qword_1EE2BC578;
    if (byte_1EE2BC587 >= 0)
    {
      v9 = byte_1EE2BC587;
    }

    if (v8 != v9 || (v7 >= 0 ? (v10 = (a1 + 304)) : (v10 = *(a1 + 304)), byte_1EE2BC587 >= 0 ? (v11 = &qword_1EE2BC570) : (v11 = qword_1EE2BC570), memcmp(v10, v11, v8)))
    {
      v12 = *(a1 + 232);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(__p, a1);
        if (v45 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = *__p;
        }

        *buf = 141558275;
        *&buf[4] = 1752392040;
        v50 = 2081;
        v51 = v13;
        _os_log_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snot waiting for interface", buf, 0x16u);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(*__p);
        }
      }

      goto LABEL_73;
    }

    *a3 = 0;
    SipTransportLayer::setInterface(a1, v5);
    v22 = *(a1 + 336);
    if (v22)
    {
      v23 = std::__shared_weak_count::lock(v22);
      if (v23)
      {
        v24 = v23;
        v25 = *(a1 + 328);
        if (v25)
        {
          v26 = *(a1 + 1176);
          (*(*v25 + 56))(v41);
          ImsResult::~ImsResult(v41);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }
    }

    v27 = (*(*(a1 + 40) + 64))(a1 + 40);
    (*(*(a1 + 40) + 16))(a1 + 40, v27);
    (*(*v5 + 16))(v5, v27);
    (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v27[17] = 0;
    v39 = 0;
    v40 = 0;
    SipTransportLayer::resolveLocalAddressFromProxies(&v39, a1, 0);
    v28 = v39;
    if (v39)
    {
      v29 = *(a1 + 232);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(buf, a1);
        if (v52 >= 0)
        {
          v30 = buf;
        }

        else
        {
          v30 = *buf;
        }

        if (*(a2 + 23) >= 0)
        {
          v31 = a2;
        }

        else
        {
          v31 = *a2;
        }

        *__p = 141558531;
        *&__p[4] = 1752392040;
        v43 = 2081;
        v44 = v30;
        v45 = 2080;
        v46 = v31;
        _os_log_impl(&dword_1E4C3F000, v29, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sinterface %s is up", __p, 0x20u);
        if (v52 < 0)
        {
          operator delete(*buf);
        }

        v29 = *(a1 + 232);
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(buf, a1);
        IpAddress::logStr(v28);
      }

      SipHost::SipHost(__p, &v39);
      SipUri::makeSipUri(a1 + 1232);
      SipHost::operator=(a1 + 1240, __p);
      *(a1 + 1552) = 0;
      SipHost::~SipHost(__p);
      if (!NetworkInterfaceMonotorManager::_instance)
      {
        operator new();
      }

      NetworkInterfaceMonotorManager::releaseMonitor(NetworkInterfaceMonotorManager::_instance, (a1 + 1072));
      if (*(a1 + 1095) < 0)
      {
        **(a1 + 1072) = 0;
        *(a1 + 1080) = 0;
      }

      else
      {
        *(a1 + 1072) = 0;
        *(a1 + 1095) = 0;
      }

      SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(a1);
    }

    else
    {
      SipUri::operator=((a1 + 376), *(*(a1 + 2088) + ((*(a1 + 2112) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * (*(a1 + 2112) & 0xFLL));
      v32 = *(a1 + 232);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = buf;
        (*(*a1 + 224))(buf, a1);
        if (v52 < 0)
        {
          v33 = *buf;
        }

        if (*(a2 + 23) < 0)
        {
          a2 = *a2;
        }

        SipHost::ipAddress((a1 + 384), &v37);
        v34 = (*(*v37 + 152))(v37);
        if (*(v34 + 23) >= 0)
        {
          v35 = v34;
        }

        else
        {
          v35 = *v34;
        }

        *__p = 141558787;
        *&__p[4] = 1752392040;
        v43 = 2081;
        v44 = v33;
        v45 = 2080;
        v46 = a2;
        v47 = 2080;
        v48 = v35;
        _os_log_impl(&dword_1E4C3F000, v32, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s is up, but it doesn't have an %s address.", __p, 0x2Au);
        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        }

        if (v52 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    v21 = v40;
    if (v40)
    {
LABEL_72:
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  else
  {
    v14 = *(a1 + 232);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 224))(buf, a1);
      v15 = v52 >= 0 ? buf : *buf;
      v16 = *(a2 + 23) >= 0 ? a2 : *a2;
      *__p = 141558531;
      *&__p[4] = 1752392040;
      v43 = 2081;
      v44 = v15;
      v45 = 2080;
      v46 = v16;
      _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sinterface %s is not up", __p, 0x20u);
      if (v52 < 0)
      {
        operator delete(*buf);
      }
    }

    v17 = *(a1 + 336);
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = v18;
        v20 = *(a1 + 328);
        if (v20)
        {
          (*(*v20 + 72))(v20, a2);
        }

        v21 = v19;
        goto LABEL_72;
      }
    }
  }

LABEL_73:
  v36 = *MEMORY[0x1E69E9840];
}

void sub_1E4E38D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (*(v25 - 73) < 0)
  {
    operator delete(*(v25 - 96));
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTransportLayer::isIPSecAvailable(SipTransportLayer *this)
{
  v2 = *(this + 42);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 41);
  if (v5)
  {
    v6 = (*(*v5 + 16))(v5, 1);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

uint64_t SipTransportLayer::isIPSecAvailableAndEnabled(SipTransportLayer *this)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 1);
  if (v5 && *(v5 + 2166) == 1)
  {
    isIPSecAvailable = SipTransportLayer::isIPSecAvailable(this);
  }

  else
  {
    isIPSecAvailable = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return isIPSecAvailable;
}

uint64_t SipTransportLayer::maxUdpMessageSize(SipTransportLayer *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 1);
      if (v4)
      {
        v5 = *(v4 + 2232);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v3);
          return v5;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v6 = *(this + 147);
  if (!v6)
  {
    return 1300;
  }

  v5 = *(v6 + 56);
  if (v5 > 0x5DB)
  {
    return 1300;
  }

  if (v5 >= 0xC9)
  {
    return (v5 - 200);
  }

  return v5;
}

void SipTransportLayer::fillContactHost(SipTransportLayer *this@<X0>, SipUri *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(this + 144);
  if (v5)
  {
    v18 = 0;
    v19 = 0;
    (*(*v5 + 176))(&v18);
    if (v18)
    {
      SipUri::operator=(a2, this + 1232);
      memset(v21, 0, sizeof(v21));
      *__p = 0u;
      SipHost::SipHost(__p, this + 1240);
      SipHost::setAddress(__p, &v18);
      (*(*a2 + 32))(a2, __p);
      v7 = *(this + 2);
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = *(this + 1);
          if (v10)
          {
            SipHop::setSupportsCompression(a2, *(v10 + 2165));
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *a3 = &unk_1F5EBDEF8;
      *(a3 + 8) = &_bambiDomain;
      *(a3 + 16) = 0;
      SipHost::~SipHost(__p);
    }

    else
    {
      v14 = *(this + 29);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 224))(__p, this);
        v15 = v21[7] >= 0 ? __p : __p[0];
        *buf = 141558275;
        v25 = 1752392040;
        v26 = 2081;
        v27 = v15;
        _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sfillContactHost: no local address", buf, 0x16u);
        if ((v21[7] & 0x80000000) != 0)
        {
          operator delete(__p[0]);
        }
      }

      memset(&v21[8], 0, 32);
      v22 = 0u;
      v23 = 0u;
      __p[0] = &unk_1F5EBDEF8;
      __p[1] = &_bambiDomain;
      *v21 = 1073741826;
      v16 = ImsResult::operator<<<char [17]>(__p, "no local address");
      ImsResult::ImsResult(a3, v16);
      ImsResult::~ImsResult(__p);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  else
  {
    v11 = *(this + 29);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 224))(__p, this);
      v12 = v21[7] >= 0 ? __p : __p[0];
      *buf = 141558275;
      v25 = 1752392040;
      v26 = 2081;
      v27 = v12;
      _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sfillContactHost: no active transport", buf, 0x16u);
      if ((v21[7] & 0x80000000) != 0)
      {
        operator delete(__p[0]);
      }
    }

    memset(&v21[8], 0, 32);
    v22 = 0u;
    v23 = 0u;
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_bambiDomain;
    *v21 = 1073741826;
    v13 = ImsResult::operator<<<char [20]>(__p, "no active transport");
    ImsResult::ImsResult(a3, v13);
    ImsResult::~ImsResult(__p);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E4E39304(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  SipHost::~SipHost(va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  _Unwind_Resume(a1);
}

void SipTransportLayer::sendMessage(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, SipTransportInterface **a4@<X3>, ImsResult *a5@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 72);
  if (v7 < 0)
  {
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    *buf = &unk_1F5EBDEF8;
    v27 = &_bambiDomain;
    v28 = 0x40000000;
    v8 = ImsResult::operator<<<char [38]>(buf, "sendMessage: failing send for testing");
    v9 = ImsLogContainer::logResult((a1 + 5), v8);
    ImsResult::ImsResult(a5, v9);
    goto LABEL_5;
  }

  if (v7)
  {
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    *buf = &unk_1F5EBDEF8;
    v27 = &_posixDomain;
    v28 = v7;
    ImsLogContainer::logResult((a1 + 5), buf, a5);
LABEL_5:
    ImsResult::~ImsResult(buf);
    goto LABEL_6;
  }

  if (a3)
  {
    v15 = *a3;
    v14 = *(a3 + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v15)
    {
      if (os_log_type_enabled(a1[29], OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(&v25, a1);
        SipTransportInterface::logStr(v15);
      }

      goto LABEL_20;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = a1[144];
  if (!v15)
  {
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    *buf = &unk_1F5EBDEF8;
    v27 = &_bambiDomain;
    v28 = 1073741827;
    v20 = ImsResult::operator<<<char [33]>(buf, "sendMessage: no active transport");
    v21 = ImsLogContainer::logResult((a1 + 5), v20);
    ImsResult::ImsResult(a5, v21);
    ImsResult::~ImsResult(buf);
    if (!v14)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

  v16 = a1[145];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v14 = v16;
LABEL_20:
  v17 = a2[1];
  v24[0] = *a2;
  v24[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportLayer::logMessageMetrics(a1, v24, 0, &ims::kEmptyString);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a4)
  {
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = a4[1];
    *a4 = v15;
    a4[1] = v14;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  v19 = a2[1];
  v22 = *a2;
  v23 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v15 + 32))(v15, &v22, a3);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v14)
  {
LABEL_34:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

LABEL_6:
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E4E39744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::logMessageMetrics(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = a1[2];
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = a1[1];
      if (v10)
      {
        v11 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
        v12 = off_1EE2BBBC0;
        if (!off_1EE2BBBC0)
        {
          IMSMetricsManager::create_default_global(v11);
        }

        v15 = *(&off_1EE2BBBC0 + 1);
        if (*(&off_1EE2BBBC0 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
        v16 = *a2;
        if (!*a2)
        {
          goto LABEL_86;
        }

        v17 = *v16;
        v18 = **v16;
        if (v19)
        {
          v20 = v19;
          v21 = a2[1];
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            v67 = v9;
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            v65 = v21;
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v67 = v9;
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            v65 = 0;
          }

          v66 = v10;
          v64 = v19;
          IMSMetricsManager::logSipRequest(v12, &v66, &v64, a3, a4);
          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          if (v67)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v67);
          }

          v24 = SipMessage::header<SipConversationIdHeader>(*a2);
          v25 = (v24 + 64);
          if (!v24)
          {
            v25 = &ims::kEmptyString;
          }

          v26 = *(v25 + 23);
          v27 = *(v25 + 1);
          if ((v26 & 0x80u) == 0)
          {
            v27 = v26;
          }

          if (!v27)
          {
            v28 = SipMessage::header<SipContributionIdHeader>(*a2);
            v29 = (v28 + 64);
            if (!v28)
            {
              v29 = &ims::kEmptyString;
            }

            v30 = *(v29 + 23);
            v31 = *(v29 + 1);
            if ((v30 & 0x80u) == 0)
            {
              v31 = v30;
            }

            if (!v31)
            {
              v32 = SipMessage::header<SipInReplyToContributionIdHeader>(*a2);
              v33 = (v32 + 64);
              if (!v32)
              {
                v33 = &ims::kEmptyString;
              }

              v34 = *(v33 + 23);
              v35 = *(v33 + 1);
              if ((v34 & 0x80u) == 0)
              {
                v35 = v34;
              }

              if (!v35)
              {
                goto LABEL_84;
              }
            }
          }

          isWifi = ims::AccessNetwork::isWifi((v10 + 3432));
          v37 = (*(*v20 + 120))(v20);
          v38 = *(v37 + 23);
          v39 = v38;
          if ((v38 & 0x80u) != 0)
          {
            v38 = *(v37 + 8);
          }

          if (v38 == 6 && (v39 >= 0 ? (v40 = v37) : (v40 = *v37), (v41 = *v40, v42 = *(v40 + 4), v41 == *"INVITE") ? (v43 = v42 == *"TE") : (v43 = 0), v43))
          {
            v58 = 1;
          }

          else
          {
            v44 = (*(*v20 + 120))(v20);
            v45 = *(v44 + 23);
            v46 = v45;
            if ((v45 & 0x80u) != 0)
            {
              v45 = *(v44 + 8);
            }

            if (v45 == 3 && (v46 >= 0 ? (v47 = v44) : (v47 = *v44), (v48 = *v47, v49 = *(v47 + 2), v48 == SipRequest::kMethodBye) ? (v50 = v49 == BYTE2(SipRequest::kMethodBye)) : (v50 = 0), v50))
            {
              v58 = 2;
            }

            else
            {
              v51 = (*(*v20 + 120))(v20);
              v52 = *(v51 + 23);
              v53 = v52;
              if ((v52 & 0x80u) != 0)
              {
                v52 = *(v51 + 8);
              }

              if (v52 != 5)
              {
                goto LABEL_84;
              }

              v54 = v53 >= 0 ? v51 : *v51;
              v55 = *v54;
              v56 = *(v54 + 4);
              if (v55 != *"REFER" || v56 != SipRequest::kMethodRefer[4])
              {
                goto LABEL_84;
              }

              v58 = 3;
            }
          }

          powerlog::PowerLogger::logLazuliSipRequest(*(v12 + 200), a3, isWifi, v58, 0);
        }

        else
        {
          v22 = *v17;
          if (!v23)
          {
LABEL_86:
            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }

LABEL_88:
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            goto LABEL_89;
          }

          v21 = a2[1];
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            v63 = v9;
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            v61 = v21;
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v63 = v9;
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            v61 = 0;
          }

          v62 = v10;
          v60 = v23;
          IMSMetricsManager::logSipResponse(v12, &v62, &v60, a3, a4);
          if (v61)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v61);
          }

          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v63);
          }
        }

LABEL_84:
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        goto LABEL_86;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = a1[29];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 224))(__p, a1);
    v14 = v69 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v71 = 1752392040;
    v72 = 2081;
    v73 = v14;
    _os_log_error_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}slogMessageMetrics() no stack", buf, 0x16u);
    if (v69 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v9)
  {
    goto LABEL_88;
  }

LABEL_89:
  v59 = *MEMORY[0x1E69E9840];
}

void sub_1E4E39D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void SipTransportLayer::setServiceRouteFromMessage(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v29 = *MEMORY[0x1E69E9840];
  SipRouteSet::clear((a1 + 784));
  v4 = *a2;
  v5 = *(*a2 + 48);
  v6 = *(*a2 + 56);
  if (v6 != v5)
  {
    v27 = v3;
    v7 = 0;
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = *(v5 + 8 * v8);
      v11 = *(v10 + 31);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v12 = v10[1];
        v11 = v10[2];
      }

      else
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0xD)
      {
        v13 = 13;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v12, "Service-Route", v13);
      if (v11 == 13 && v14 == 0)
      {
        v16 = **v10;
        v18 = v7;
        v19 = v7 >> 3;
        if (((v7 >> 3) + 1) >> 61)
        {
          std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
        }

        if (v7 >> 3 != -1)
        {
          if (!(((v7 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v19) = v17;
        v7 = 8 * v19 + 8;
        memcpy(0, 0, v18);
        v5 = *(v4 + 48);
        v6 = *(v4 + 56);
      }

      v8 = v9++;
    }

    while (v8 < (v6 - v5) >> 3);
    if (v7)
    {
      v3 = v27;
      v20 = 0;
      if ((v7 >> 3) <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v7 >> 3;
      }

      do
      {
        SipRouteSet::addHops((v27 + 784), (*(8 * v20++) + 64), 0, 0, 0);
      }

      while (v21 != v20);
    }

    else
    {
      v3 = v27;
    }
  }

  if (*(v3 + 792) != *(v3 + 800) && os_log_type_enabled(*(v3 + 232), OS_LOG_TYPE_DEFAULT))
  {
    (*(*v3 + 224))(v28, v3);
    SipRouteSet::logStr((v3 + 784));
  }

  SipRouteSet::clear((v3 + 840));
  v22 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((*a2 + 72), "Path");
  if (v22)
  {
    v23 = v22[5];
    if (v23)
    {
      v24 = **v23;
      if (v25)
      {
        SipRouteSet::addHops((v3 + 840), (v25 + 64), 0, 0, 0);
      }
    }
  }

  if (*(v3 + 848) != *(v3 + 856) && os_log_type_enabled(*(v3 + 232), OS_LOG_TYPE_DEFAULT))
  {
    (*(*v3 + 224))(v28, v3);
    SipRouteSet::logStr((v3 + 840));
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E4E3A2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::printTransportInfo(SipTransportLayer *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Transport:", 10);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    State:             ", 23);
  *(a2 + 17) = 0;
  (*(*(this + 37) + 16))(this + 296, a2);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (*(this + 138))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Default transport: ", 23);
    *(a2 + 17) = 0;
    (*(**(this + 138) + 256))();
  }

  if (*(this + 140))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Secure transport:  ", 23);
    *(a2 + 17) = 0;
    (*(**(this + 140) + 256))();
  }

  if (*(this + 99) != *(this + 100))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Service route:     ", 23);
    *(a2 + 17) = 0;
    SipRouteSet::toStream((this + 784), a2);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  if ((*(this + 503) & 0x8000000000000000) != 0)
  {
    if (!*(this + 61))
    {
      goto LABEL_15;
    }
  }

  else if (!*(this + 503))
  {
    goto LABEL_15;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Proxy:             ", 23);
  *(a2 + 17) = 0;
  SipUri::asString(this + 376, &v9);
  LoggableString::LoggableString(__p, &v9);
  (*(*a2 + 40))(a2, __p);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (SBYTE7(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

LABEL_15:
  if (*(this + 265))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Proxy-List ", 15);
    *(a2 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v8, ",");
    v4 = *(this + 261);
    v5 = *(this + 264);
    if (*(this + 262) != v4)
    {
      v6 = *(v4 + 8 * (v5 >> 4)) + 408 * (*(this + 264) & 0xFLL);
      v7 = *(v4 + (((*(this + 265) + v5) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((*(this + 530) + v5) & 0xF);
    }

    v12 = 0;
    *__p = 0u;
    v11 = 0u;
    ImsStringOutStream::ImsStringOutStream(__p);
  }
}

void sub_1E4E3A830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, char a23, int a24, __int16 a25, char a26)
{
  if (a23 == 1 && a22)
  {
    (*(*a22 + 8))(a22);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTransportLayer::dropInfoForMethod(uint64_t a1, void **a2, int a3)
{
  v3 = a2;
  v4 = 264;
  if (a3)
  {
    v4 = 240;
  }

  v5 = a1 + v4;
  v6 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + v4, a2);
  if (v5 + 8 == v6)
  {
    v7 = *(v3 + 23);
    if (v7 < 0)
    {
      if (v3[1] != 1)
      {
        goto LABEL_10;
      }

      v3 = *v3;
    }

    else if (v7 != 1)
    {
LABEL_10:
      std::string::basic_string[abi:ne200100]<0>(__p, "*");
      v6 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v5, __p);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_12;
    }

    if (*v3 == 42)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_12:
  if (v6 == v5 + 8)
  {
    return 0;
  }

  else
  {
    return v6 + 56;
  }
}

uint64_t SipTransportLayer::shouldDropMessage(void *a1, uint64_t a2, int a3)
{
  v65 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a1[32])
    {
      v6 = "incoming";
      goto LABEL_6;
    }

LABEL_29:
    v27 = 0;
    goto LABEL_76;
  }

  if (!a1[35])
  {
    goto LABEL_29;
  }

  v6 = "outgoing";
LABEL_6:
  v55[0] = 0;
  v55[1] = 0;
  v56 = 0;
  std::string::basic_string[abi:ne200100]<0>(v55, v6);
  v7 = *a2;
  if (*a2)
  {
    v8 = **v7;
    if (v9)
    {
      v10 = v9;
      v11 = *(a2 + 8);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = SipMessage::header<SipCSeqHeader>(v9);
      if (v12)
      {
        v13 = (v12 + 64);
      }

      else
      {
        v13 = &ims::kEmptyString;
      }

      v14 = SipTransportLayer::dropInfoForMethod(a1, v13, a3);
      if (!v14)
      {
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

LABEL_36:
        v28 = *a2;
        if (*a2)
        {
          v29 = **v28;
          if (v30)
          {
            v31 = v30;
            v32 = *(a2 + 8);
            if (v32)
            {
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v33 = (*(*v30 + 120))(v30);
            v34 = SipTransportLayer::dropInfoForMethod(a1, v33, a3);
            if (v34)
            {
              v35 = *(v34 + 24);
              if (v32)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v32);
                if (v35)
                {
LABEL_59:
                  v40 = a1[29];
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*a1 + 224))(__p, a1);
                    v41 = v54;
                    v42 = __p[0];
                    v43 = SHIBYTE(v56);
                    v44 = v55[0];
                    v45 = (*(*v31 + 120))(v31);
                    v46 = v55;
                    if (v43 < 0)
                    {
                      v46 = v44;
                    }

                    v47 = __p;
                    if (v41 < 0)
                    {
                      v47 = v42;
                    }

                    v48 = *(v45 + 23);
                    v49 = *v45;
                    *buf = 141558787;
                    v58 = 1752392040;
                    if (v48 >= 0)
                    {
                      v50 = v45;
                    }

                    else
                    {
                      v50 = v49;
                    }

                    v59 = 2081;
                    v60 = v47;
                    v61 = 2080;
                    v62 = v46;
                    v63 = 2080;
                    v64 = v50;
                    _os_log_impl(&dword_1E4C3F000, v40, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sDROPPING %s %s request", buf, 0x2Au);
                    if (v54 < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }

                  v27 = 1;
                  if (!v32)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_70;
                }

LABEL_46:
                v27 = 0;
LABEL_70:
                std::__shared_weak_count::__release_shared[abi:ne200100](v32);
                goto LABEL_72;
              }

              if (*(v34 + 24))
              {
                goto LABEL_59;
              }
            }

            else if (v32)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v32);
              goto LABEL_46;
            }
          }
        }

        v27 = 0;
LABEL_72:
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        goto LABEL_74;
      }

      v16 = v14 + 40;
      v15 = *(v14 + 40);
      if (v15)
      {
        v17 = v10[32];
        v18 = v14 + 40;
        v19 = *(v14 + 40);
        do
        {
          v20 = *(v19 + 28);
          v21 = v20 >= v17;
          v22 = v20 < v17;
          if (v21)
          {
            v18 = v19;
          }

          v19 = *(v19 + 8 * v22);
        }

        while (v19);
        if (v18 != v16 && v17 >= *(v18 + 28))
        {
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          goto LABEL_49;
        }

        v23 = v14 + 40;
        do
        {
          v24 = *(v15 + 28);
          v25 = v24 == -1;
          v26 = v24 != -1;
          if (v25)
          {
            v23 = v15;
          }

          v15 = *(v15 + 8 * v26);
        }

        while (v15);
        if (v11)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = v14 + 40;
        if (v11)
        {
LABEL_27:
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          if (v23 == v16)
          {
            goto LABEL_36;
          }

LABEL_49:
          v36 = a1[29];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            (*(*a1 + 224))(__p, a1);
            if (v54 >= 0)
            {
              v37 = __p;
            }

            else
            {
              v37 = __p[0];
            }

            v38 = v55;
            if (v56 < 0)
            {
              v38 = v55[0];
            }

            v39 = v10[32];
            *buf = 141558787;
            v58 = 1752392040;
            v59 = 2081;
            v60 = v37;
            v61 = 2080;
            v62 = v38;
            v63 = 1024;
            LODWORD(v64) = v39;
            _os_log_impl(&dword_1E4C3F000, v36, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sDROPPING %s %u response", buf, 0x26u);
            if (v54 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v27 = 1;
          goto LABEL_72;
        }
      }

      if (v23 != v16)
      {
        goto LABEL_49;
      }
    }

    v11 = 0;
    goto LABEL_36;
  }

  v27 = 0;
LABEL_74:
  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55[0]);
  }

LABEL_76:
  v51 = *MEMORY[0x1E69E9840];
  return v27;
}

void sub_1E4E3AEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::processMessageFromTransport(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, IpAddress **a5, SipTransportInterface **a6, SipTransportInterface **a7)
{
  v117 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 2129) == 1 && (*(**a6 + 192))() == 5060;
  v11 = *a6;
  v12 = a6[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    if (*(a1 + 1152) == v11)
    {
      v14 = 1;
      goto LABEL_20;
    }

    v13 = **v11;
    {
      if (!v12)
      {
        LOBYTE(v14) = 1;
        goto LABEL_25;
      }

      v14 = 1;
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = v12;
      goto LABEL_19;
    }
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = std::__shared_weak_count::lock(v16);
    if (v17)
    {
      v15 = v17;
      v18 = *(a1 + 8);
      if (v18)
      {
        v19 = SipStack::prefs(v18);
        v14 = !ImsPrefs::DropTrafficOnUnknownTransports(v19);
      }

      else
      {
        v14 = 0;
      }

LABEL_19:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      goto LABEL_20;
    }
  }

  v14 = 0;
LABEL_20:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v10 || v14)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    LODWORD(v12) = (*(**a6 + 192))() == 5060;
    LOBYTE(v14) = v12;
  }

LABEL_25:
  memset(&v112, 0, sizeof(v112));
  std::string::basic_string[abi:ne200100]<0>(&v112, " ");
  v89 = v12;
  v87 = a3;
  v20 = *(a1 + 2088);
  if (*(a1 + 2096) != v20)
  {
    v21 = *(a1 + 2112);
    v22 = *(v20 + 8 * (v21 >> 4)) + 408 * (v21 & 0xF);
    if (v22 != *(v20 + (((*(a1 + 2120) + v21) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((*(a1 + 2120) + v21) & 0xF))
    {
      (*(*v22 + 48))(&buf, v22);
      IpAddress::asString(&v111);
    }
  }

  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = std::__shared_weak_count::lock(v23);
    if (v24)
    {
      v25 = v24;
      v26 = *(a1 + 8);
      if (!v26)
      {
LABEL_183:
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        goto LABEL_184;
      }

      v27 = v14;
      v86 = v24;
      v28 = SipStack::prefs(v26);
      if (ImsPrefs::AcceptMsgFromNonProxy(v28))
      {
        if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 224))(&v111, a1);
          if (*(v26 + 4455) < 0)
          {
            std::string::__init_copy_ctor_external(&buf, *(v26 + 4432), *(v26 + 4440));
          }

          else
          {
            buf = *(v26 + 4432);
          }

          IpAddress::logStr(*a5);
        }

        v30 = 0;
        v38 = 0;
        memset(&v111, 0, sizeof(v111));
        v29 = v10;
        if (!v10 && v27)
        {
LABEL_61:
          v41 = a2[1];
          v109[0] = *a2;
          v109[1] = v41;
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipTransportLayer::logMessageMetrics(a1, v109, 1, &v111);
          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }

          v42.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
          v43 = *a2;
          v44 = a2[1];
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v45 = *(a1 + 352);
          v85 = v38;
          if (v45 && (v46 = std::__shared_weak_count::lock(v45)) != 0)
          {
            v47 = v46;
            v48 = *(a1 + 344);
            if (v48)
            {
              *v114 = v43;
              *&v114[8] = v44;
              if (v44)
              {
                atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v49 = (*(*v48 + 16))(v48, v114);
              if (*&v114[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&v114[8]);
              }
            }

            else
            {
              v49 = 0;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v47);
            if (!v44)
            {
LABEL_76:
              v50.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
              v51 = *(a1 + 232);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                (*(*a1 + 224))(&buf, a1);
                *v114 = 141558531;
                v52 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
                *&v114[4] = 1752392040;
                *&v114[12] = 2081;
                *&v114[14] = v52;
                v115 = 2048;
                v116 = (v50.__d_.__rep_ - v42.__d_.__rep_) / 1000;
                _os_log_impl(&dword_1E4C3F000, v51, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sTime taken to determine IncomingMessageCategory %lld", v114, 0x20u);
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }

              v107 = 0;
              v108 = 0;
              v53 = *(a1 + 2064);
              v54 = *(a1 + 2072);
              if (v54)
              {
                atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              isWifi = ims::AccessNetwork::isWifi((v26 + 3432));
              v56 = isWifi;
              SipTransportLayer::assertionStringForCategory(v105, v49, isWifi);
              v107 = 0;
              v108 = 0;
              if (v54)
              {
                atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
                v57 = v108;
                v107 = v53;
                v108 = v54;
                if (v57)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v57);
                }

                if (!v53)
                {
LABEL_91:
                  if (v106 < 0)
                  {
                    operator delete(v105[0]);
                  }

                  if (v54)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
                  }

                  v59 = *(a1 + 1136);
                  v25 = v86;
                  if (v59)
                  {
                    if (*a6 == *(a1 + 1120))
                    {
                      if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                      {
                        (*(*a1 + 224))(&buf, a1);
                        SipTransportInterface::logStr(*(a1 + 1136));
                      }

                      v60 = *(a1 + 1144);
                      *(a1 + 1136) = 0u;
                      if (v60)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v60);
                      }
                    }

                    else if (*a6 == v59 && os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 224))(&buf, a1);
                      SipTransportInterface::logStr(*(a1 + 1136));
                    }
                  }

                  if (v10)
                  {
                    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 224))(&buf, a1);
                      SipTransportInterface::logStr(*a6);
                    }

                    goto LABEL_181;
                  }

                  if (!v27)
                  {
                    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 224))(&buf, a1);
                      SipTransportInterface::logStr(*a6);
                    }

                    goto LABEL_181;
                  }

                  if (v89 && os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*a1 + 224))(&buf, a1);
                    SipTransportInterface::logStr(*a6);
                  }

                  (*(**a2 + 72))(v114);
                  v61 = (*(**&v114[8] + 24))(*&v114[8], *&v114[16]);
                  ImsResult::~ImsResult(v114);
                  if (v61)
                  {
                    v62 = *(a1 + 232);
                    if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT) || (((*(*a1 + 224))(v114, a1), v115 >= 0) ? (v63 = v114) : (v63 = *v114), LODWORD(buf.__r_.__value_.__l.__data_) = 141558275, *(buf.__r_.__value_.__r.__words + 4) = 1752392040, WORD2(buf.__r_.__value_.__r.__words[1]) = 2081, *(&buf.__r_.__value_.__r.__words[1] + 6) = v63, _os_log_impl(&dword_1E4C3F000, v62, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sincoming message has invalid Via header.  Dropping.", &buf, 0x16u), (SHIBYTE(v115) & 0x80000000) == 0))
                    {
LABEL_181:
                      PowerAssertionTerminationLock::~PowerAssertionTerminationLock(&v107);
                      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v111.__r_.__value_.__l.__data_);
                      }

                      goto LABEL_183;
                    }

                    v64 = *v114;
LABEL_180:
                    operator delete(v64);
                    goto LABEL_181;
                  }

                  if (v85)
                  {
                    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 224))(&buf, a1);
                      if (*(v26 + 4455) < 0)
                      {
                        std::string::__init_copy_ctor_external(&__p, *(v26 + 4432), *(v26 + 4440));
                      }

                      else
                      {
                        __p = *(v26 + 4432);
                      }

                      IpAddress::logStr(*a5);
                    }

                    goto LABEL_181;
                  }

                  memset(&buf, 0, sizeof(buf));
                  v65 = *a6;
                  v66 = a7[1];
                  v101 = *a7;
                  v102 = v66;
                  if (v66)
                  {
                    atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  (*(*v65 + 224))(v65, &v101, &buf);
                  if (v102)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v102);
                  }

                  size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    size = buf.__r_.__value_.__l.__size_;
                  }

                  if (!size)
                  {
                    std::string::operator=(&buf, &SipTransport::kTransportUDP);
                  }

                  v99 = 0;
                  v100 = 0;
                  v68 = *a7;
                  if (*a7)
                  {
                    v69 = *(v68 + 32);
                    if (v69)
                    {
                      (*(*v69 + 144))(&v97);
                      if (v97)
                      {
                        v70 = *(*a7 + 32);
                        if (v70)
                        {
                          (*(*v70 + 144))(&v99);
                        }

                        else
                        {
                          v99 = 0;
                          v100 = 0;
                        }

                        goto LABEL_142;
                      }
                    }

                    else
                    {
                      v97 = 0;
                      v98 = 0;
                    }
                  }

                  (*(**a6 + 176))(&v99);
                  if (!v68)
                  {
LABEL_144:
                    if (v99)
                    {
                      v71 = a2[1];
                      v95 = *a2;
                      v96 = v71;
                      if (v71)
                      {
                        atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v84 = (*(**a6 + 208))();
                      (*(*a1 + 40))(a1, &v95, v87, a4, &buf, &v99, a5, 1, v84);
                      if (v96)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v96);
                      }
                    }

                    if (*(v26 + 2318) == 1 && (*(a1 + 2128) & 1) == 0)
                    {
                      IPTelephonyManager::getBambiClient(v114);
                      v72 = *(*v114 + 696);
                      if (*&v114[8])
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](*&v114[8]);
                      }

                      if (v72)
                      {
                        v73 = *(a1 + 232);
                        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                        {
                          (*(*a1 + 224))(&__p, a1);
                          v74 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                          v75 = __p.__r_.__value_.__r.__words[0];
                          (*(**a2 + 40))(v103);
                          p_p = &__p;
                          if (v74 < 0)
                          {
                            p_p = v75;
                          }

                          if (v104 >= 0)
                          {
                            v77 = v103;
                          }

                          else
                          {
                            v77 = v103[0];
                          }

                          *v114 = 141558531;
                          *&v114[4] = 1752392040;
                          *&v114[12] = 2081;
                          *&v114[14] = p_p;
                          v115 = 2080;
                          v116 = v77;
                          _os_log_impl(&dword_1E4C3F000, v73, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sdeferring delivery of incoming %s until system wake", v114, 0x20u);
                          if (v104 < 0)
                          {
                            operator delete(v103[0]);
                          }

                          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__p.__r_.__value_.__l.__data_);
                          }
                        }

                        v78 = *(a1 + 2056);
                        operator new();
                      }
                    }

                    v79 = a2[1];
                    v94[0] = *a2;
                    v94[1] = v79;
                    if (v79)
                    {
                      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v80 = *a7;
                    if (*a7)
                    {
                      v81 = a7[1];
                    }

                    else
                    {
                      v80 = *a6;
                      v81 = a6[1];
                    }

                    v93[0] = v80;
                    v93[1] = v81;
                    if (v81)
                    {
                      atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    SipTransportLayer::sendIncomingMessageToDelegate(a1, v94, a5, v93);
                    if (v81)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v81);
                    }

                    if (v79)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v79);
                    }

                    if (v100)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v100);
                    }

                    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_181;
                    }

                    v64 = buf.__r_.__value_.__r.__words[0];
                    goto LABEL_180;
                  }

LABEL_142:
                  if (v98)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v98);
                  }

                  goto LABEL_144;
                }
              }

              else
              {
                v107 = v53;
                v108 = 0;
                if (!v53)
                {
                  goto LABEL_91;
                }
              }

              *v114 = v105;
              v58 = std::__tree<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v53, v105);
              AssertionCounter::initialize(*(v58 + 56), 300.0, !v56, v114);
              ImsResult::~ImsResult(v114);
              goto LABEL_91;
            }
          }

          else
          {
            v49 = 0;
            if (!v44)
            {
              goto LABEL_76;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
          goto LABEL_76;
        }

LABEL_54:
        if (v29)
        {
          v39 = 23;
        }

        else
        {
          v39 = 25;
        }

        if (v29)
        {
          v40 = "DroppedOnDefaultSipPort";
        }

        else
        {
          v40 = "DroppedOnInvalidTransport";
        }

        std::string::__assign_external(&v111, v40, v39);
        v38 = v30;
        goto LABEL_61;
      }

      memset(&v111, 0, sizeof(v111));
      v29 = v10;
      if (v10 || !v14)
      {
        v30 = 1;
        goto LABEL_54;
      }

      *(&v111.__r_.__value_.__s + 23) = 22;
      qmemcpy(&v111, "DroppedMsgFromNonProxy", 22);
      v31 = *(a1 + 16);
      if (v31)
      {
        v32 = std::__shared_weak_count::lock(v31);
        if (v32)
        {
          v33 = *(a1 + 8);
          if (v33)
          {
            v34 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
            v35 = off_1EE2BBBC0;
            if (!off_1EE2BBBC0)
            {
              IMSMetricsManager::create_default_global(v34);
            }

            v83 = *(&off_1EE2BBBC0 + 1);
            if (*(&off_1EE2BBBC0 + 1))
            {
              atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
            *v114 = v33;
            *&v114[8] = v32;
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            IMSMetricsManager::logSipRequestFromNonProxyDropped(v35, v114);
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
            if (v83)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v83);
            }

LABEL_194:
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
LABEL_195:
            v38 = 1;
            goto LABEL_61;
          }
        }
      }

      else
      {
        v32 = 0;
      }

      v36 = *(a1 + 232);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(v114, a1);
        v37 = v115 >= 0 ? v114 : *v114;
        LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
        *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v37;
        _os_log_impl(&dword_1E4C3F000, v36, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}slogSipRequestFromNonProxyDropped() no stack", &buf, 0x16u);
        if (SHIBYTE(v115) < 0)
        {
          operator delete(*v114);
        }
      }

      if (!v32)
      {
        goto LABEL_195;
      }

      goto LABEL_194;
    }
  }

LABEL_184:
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  v82 = *MEMORY[0x1E69E9840];
}

void sub_1E4E3C67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v63 - 256);
  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
    std::__shared_weak_count::__release_weak(v62);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (*(v63 - 201) < 0)
  {
    operator delete(*(v63 - 224));
  }

  PowerAssertionTerminationLock::~PowerAssertionTerminationLock(&a43);
  if (a56 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  if (a62 < 0)
  {
    operator delete(a57);
  }

  _Unwind_Resume(a1);
}

void SipTransportLayer::sendIncomingMessageToDelegate(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a1[44];
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = a1[43];
      if (v11)
      {
        v12 = a2[1];
        v20 = *a2;
        v21 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = (*(*a1 + 32))(a1, &v20, 1);
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        if ((v13 & 1) == 0)
        {
          v14 = a2[1];
          v18 = *a2;
          v19 = v14;
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v15 = a4[1];
          v16 = *a4;
          v17 = v15;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v11 + 24))(v11, &v18, a3, &v16);
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void sub_1E4E3CB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void SipTransportLayer::createIPSecTransport(SipTransportLayer *this@<X0>, ImsResult *a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 2);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7 && *(this + 1))
    {
      SipTransportLayer::localClientAddress(v26, this);
      v8 = *&v26[0];
      if (*(&v26[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26[0] + 1));
      }

      if (v8)
      {
        memset(v26, 0, 88);
        SipHost::resolve((this + 384), 1, v26);
        if ((*(**(&v26[0] + 1) + 24))(*(&v26[0] + 1), LODWORD(v26[1])))
        {
          if (a2)
          {
            v16 = 0u;
            v17 = 0u;
            v18 = 0u;
            v19 = 0u;
            v15.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
            v15.__r_.__value_.__l.__size_ = &_bambiDomain;
            LODWORD(v15.__r_.__value_.__r.__words[2]) = 1073741826;
            v9 = ImsResult::operator<<<char [20]>(&v15, "can't resolve proxy");
            ims::result::resultWithCause(v9, v26, v20);
          }
        }

        else
        {
          if (SipTransportLayer::isIPSecAvailable(this))
          {
            *a3 = 0;
            a3[1] = 0;
            v12 = *(this + 26);
            if (v12)
            {
              v13 = *(this + 25);
              if (std::__shared_weak_count::lock(v12))
              {
                operator new();
              }
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          if (a2)
          {
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v20[0] = &unk_1F5EBDEF8;
            v20[1] = &_bambiDomain;
            v21 = 1073741833;
            v14 = ImsResult::operator<<<char [31]>(v20, "IPSec support is not available");
            ImsResult::operator=(a2, v14);
            ImsResult::~ImsResult(v20);
          }
        }

        *a3 = 0;
        a3[1] = 0;
        ImsResult::~ImsResult(v26);
      }

      else
      {
        if (a2)
        {
          memset(&v26[1] + 8, 0, 64);
          *&v26[0] = &unk_1F5EBDEF8;
          *(&v26[0] + 1) = &_bambiDomain;
          LODWORD(v26[1]) = 1073741826;
          v11 = ImsResult::operator<<<char [55]>(v26, "creating secure transport requires an active transport");
          ImsResult::operator=(a2, v11);
          ImsResult::~ImsResult(v26);
        }

        *a3 = 0;
        a3[1] = 0;
      }

LABEL_25:
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      return;
    }
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
    memset(&v26[1] + 8, 0, 64);
    *&v26[0] = &unk_1F5EBDEF8;
    *(&v26[0] + 1) = &_bambiDomain;
    LODWORD(v26[1]) = 1073741826;
    v10 = ImsResult::operator<<<char [14]>(v26, "stack is null");
    ImsResult::operator=(a2, v10);
    ImsResult::~ImsResult(v26);
  }

  *a3 = 0;
  a3[1] = 0;
  if (v7)
  {
    goto LABEL_25;
  }
}

void sub_1E4E3D05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  ImsResult::~ImsResult((v30 - 192));
  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

void SipTransportLayer::setIPSecTransport(uint64_t a1, uint64_t *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1120);
  if (*a2 != v2)
  {
    if (*(a1 + 1136))
    {
      v5 = *(a1 + 1144);
      *(a1 + 1136) = 0u;
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        v2 = *(a1 + 1120);
      }
    }

    if (v2)
    {
      if (*a2)
      {
        v6 = *(a1 + 1128);
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        }

        *(a1 + 1136) = v2;
        v7 = *(a1 + 1144);
        *(a1 + 1144) = v6;
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 224))(v36, a1);
          SipTransportInterface::logStr(*(a1 + 1136));
        }
      }

      v8 = *(a1 + 1128);
      *(a1 + 1120) = 0u;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    v9 = *a2;
    if (*a2)
    {
      v10 = *(a1 + 1152);
      v11 = *(a1 + 1160);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *a2;
      }

      *(v9 + 69) = a1 + 184;
      v12 = a2[1];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 1120) = v9;
      v13 = *(a1 + 1128);
      *(a1 + 1128) = v12;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        v12 = *(a1 + 1128);
        v9 = *(a1 + 1120);
      }

      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 1152) = v9;
      v14 = *(a1 + 1160);
      *(a1 + 1160) = v12;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_INFO))
      {
        (*(*a1 + 224))(v36, a1);
        SipTransportInterface::logStr(*a2);
      }

      if (v10)
      {
        v15 = *(a1 + 232);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 224))(v36, a1);
          v16 = v39;
          v17 = *v36;
          v18 = (*(*v10 + 192))(v10);
          v19 = v36;
          *buf = 141558531;
          if (v16 < 0)
          {
            v19 = v17;
          }

          *&buf[4] = 1752392040;
          v41 = 2081;
          v42 = v19;
          v43 = 1024;
          LODWORD(v44) = v18;
          _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sold transport using port %u", buf, 0x1Cu);
          if (v39 < 0)
          {
            operator delete(*v36);
          }
        }

        v20 = *(a1 + 16);
        if (v20)
        {
          v21 = std::__shared_weak_count::lock(v20);
          if (v21)
          {
            v22 = v21;
            if (v10 == *(a1 + 1104))
            {
              v23 = *(a1 + 8);
              if (v23)
              {
                v24 = SipStack::prefs(*(a1 + 8));
                if (!ImsPrefs::AlwaysUseDefaultTransport(v24))
                {
                  v25 = (*(*v10 + 192))(v10);
                  v26 = *(v23 + 2160);
                  v27 = os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT);
                  if (v25 == v26)
                  {
                    if (v27)
                    {
                      (*(*a1 + 224))(v36, a1);
                      SipTransportInterface::logStr(*(a1 + 1104));
                    }

                    *(a1 + 2129) = 1;
                  }

                  else
                  {
                    if (v27)
                    {
                      (*(*a1 + 224))(v36, a1);
                      SipTransportInterface::logStr(v10);
                    }

                    v34 = *(a1 + 1112);
                    *(a1 + 1104) = 0u;
                    if (v34)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
                    }
                  }
                }
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }
        }
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    else
    {
      v28 = *(a1 + 1128);
      *(a1 + 1120) = 0u;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v29 = *(a1 + 1104);
      v30 = *(a1 + 1112);
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 1152) = v29;
      v31 = *(a1 + 1160);
      *(a1 + 1160) = v30;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (*(a1 + 2129) == 1)
      {
        if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 224))(v36, a1);
          SipTransportInterface::logStr(*(a1 + 1104));
        }

        *(a1 + 2129) = 0;
      }

      v32 = *(a1 + 232);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        (*(*a1 + 224))(buf, a1);
        v33 = v43 >= 0 ? buf : *buf;
        *v36 = 141558275;
        *&v36[4] = 1752392040;
        v37 = 2081;
        v38 = v33;
        _os_log_impl(&dword_1E4C3F000, v32, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sset active transport to default transport", v36, 0x16u);
        if (SHIBYTE(v43) < 0)
        {
          operator delete(*buf);
        }
      }
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

void sub_1E4E3D9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void SipTransportLayer::handleTransportError(SipTransportLayer *this, const ImsResult *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 1);
      if (v6)
      {
        v7 = a2;
        do
        {
          v8 = v7;
          v7 = *(v7 + 4);
        }

        while (v7);
        if (ImsResultSet::containsResult((v6 + 2272), *(v8 + 4)))
        {
          v9 = *(this + 512) + 1;
          *(this + 512) = v9;
          v10 = *(v6 + 2268);
          if (v10 && v9 <= v10)
          {
            if (os_log_type_enabled(*(this + 29), OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 224))(v21, this);
              v11 = *(this + 512);
              ImsResult::logStr(a2);
            }

            if (v9 == v10)
            {
              v12 = *(this + 29);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                (*(*this + 224))(&buf, this);
                v19 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
                *v21 = 141558275;
                *&v21[4] = 1752392040;
                *&v21[12] = 2081;
                *&v21[14] = v19;
                _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}stoo many transport errors", v21, 0x16u);
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }

              v13 = *(this + 2);
              if (v13)
              {
                v14 = std::__shared_weak_count::lock(v13);
                if (v14)
                {
                  v15 = v14;
                  v16 = *(this + 1);
                  if (v16)
                  {
                    IPTelephonyManager::getBambiClient(v21);
                    v17 = *v21;
                    if (*(v16 + 4455) < 0)
                    {
                      std::string::__init_copy_ctor_external(&buf, *(v16 + 4432), *(v16 + 4440));
                    }

                    else
                    {
                      buf = *(v16 + 4432);
                    }

                    BambiClient::handleTransportErrors(v17, &buf);
                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(buf.__r_.__value_.__l.__data_);
                    }

                    if (*&v21[8])
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](*&v21[8]);
                    }
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
                }
              }
            }
          }

LABEL_22:
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(*(this + 29), OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 224))(v21, this);
    ImsResult::logStr(a2);
  }

  if (v5)
  {
    goto LABEL_22;
  }

LABEL_23:
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E4E3DE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, std::__shared_weak_count *a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

void SipTransportLayer::handleTransportInitCompletion(SipTransportLayer *this, const ImsResult *a2)
{
  if (((*(**(a2 + 1) + 24))(*(a2 + 1), *(a2 + 4)) & 1) == 0)
  {
    v4 = *(this + 46);
    v5[0] = *(this + 45);
    v5[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    SipTransportLayer::notifyDelegate(v6, this, a2, v5);
    ImsResult::~ImsResult(v6);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  SipTransportLayer::cancelTransportInit(this);
}

void sub_1E4E3DF94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::ipsecTransportExpired(SipTransportLayer *a1, SipTransportInterface **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((SipTransportLayer::usingNullTransport(a1) & 1) == 0)
  {
    if (!*a2)
    {
LABEL_21:
      v13 = *MEMORY[0x1E69E9840];
      return;
    }

    if (*a2 != *(a1 + 140))
    {
      if (os_log_type_enabled(*(a1 + 29), OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(&v15, a1);
        SipTransportInterface::logStr(*a2);
      }

      goto LABEL_21;
    }
  }

  v14[0] = 0;
  v14[1] = 0;
  SipTransportLayer::setIPSecTransport(a1, v14);
  v4 = *(a1 + 2);
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v5;
  v7 = *(a1 + 1);
  if (v7)
  {
    v8 = *(v7 + 248);
    v9 = *(v7 + 256);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v8)
    {
      v10 = *(v8 + 336);
      v11 = *(v8 + 344);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v10 + 176))(v10, 16, 0, 0);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1E4E3E214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  v22 = v21;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void SipTransportLayer::removeConnections(SipTransportLayer *this, int a2, int a3, char a4)
{
  v8 = *(this + 138);
  if (v8)
  {
    SipTransportGroup::removeConnections(v8, a2, a3, a4);
  }

  v9 = *(this + 140);
  if (v9)
  {
    SipTransportGroup::removeConnections(v9, a2, a3, a4);
  }

  v10 = *(this + 142);
  if (v10)
  {

    SipTransportGroup::removeConnections(v10, a2, a3, a4);
  }
}

uint64_t SipTransportLayer::updateServiceClass(SipTransportLayer *this)
{
  v2 = *(this + 138);
  if (v2)
  {
    (*(*v2 + 272))(v2);
  }

  v3 = *(this + 140);
  if (v3)
  {
    (*(*v3 + 272))(v3);
  }

  result = *(this + 142);
  if (result)
  {
    v5 = *(*result + 272);

    return v5();
  }

  return result;
}

void SipTransportLayer::updateCrlfKeepAliveInterval(SipTransportLayer *this, int a2, int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(this + 1);
      if (v9)
      {
        v9[544] = a3;
        v9[543] = a3;
        isWifi = ims::AccessNetwork::isWifi((v9 + 858));
        v11 = *(this + 29);
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (isWifi)
        {
          if (v12)
          {
            (*(*this + 224))(__p, this);
            v13 = v24 >= 0 ? __p : __p[0];
            v14 = *(this + 534);
            v15 = v9[545];
            *buf = 141558787;
            v26 = 1752392040;
            v27 = 2081;
            v28 = v13;
            v29 = 1024;
            v30 = v14;
            v31 = 1024;
            v32 = v15;
            _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sWiFi: Keep current keepalive interval at %u, min: %u", buf, 0x22u);
            if (v24 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        else
        {
          if (v12)
          {
            (*(*this + 224))(__p, this);
            v16 = v24 >= 0 ? __p : __p[0];
            v17 = *(this + 534);
            v18 = v9[545];
            *buf = 141559299;
            v26 = 1752392040;
            v27 = 2081;
            v28 = v16;
            v29 = 1024;
            v30 = v17;
            v31 = 1024;
            v32 = a3;
            v33 = 1024;
            v34 = v18;
            v35 = 1024;
            v36 = a2;
            _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sCell: Set current keepalive interval: %u --> %u, min: %u --> %u", buf, 0x2Eu);
            if (v24 < 0)
            {
              operator delete(__p[0]);
            }
          }

          *(this + 534) = a3;
          v9[545] = a2;
        }

        v19 = *(this + 138);
        if (v19)
        {
          (*(*v19 + 280))(v19, *(this + 534));
        }

        v20 = *(this + 140);
        if (v20)
        {
          (*(*v20 + 280))(v20, *(this + 534));
        }

        v21 = *(this + 142);
        if (v21)
        {
          (*(*v21 + 280))(v21, *(this + 534));
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void SipTransportLayer::updateCrlfKeepAliveNetwork(SipTransportLayer *this, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 1);
      if (v7)
      {
        if (a2 && !*(this + 533) && (*(this + 2141) != 1 || (*(this + 2140) & 1) == 0))
        {
          v8 = *(v7 + 2184);
          v9 = *(this + 29);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            (*(*this + 224))(__p, this);
            v10 = v18 >= 0 ? __p : __p[0];
            v11 = *(this + 534);
            v12 = *(this + 533);
            *buf = 141559299;
            v20 = 1752392040;
            v21 = 2081;
            v22 = v10;
            v23 = 1024;
            v24 = v11;
            v25 = 1024;
            v26 = 0;
            v27 = 1024;
            v28 = v12;
            v29 = 1024;
            v30 = v8;
            _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sWiFi network: Reset keepalive interval: %u --> %u, delta: %u --> %u", buf, 0x2Eu);
            if (v18 < 0)
            {
              operator delete(__p[0]);
            }
          }

          *(this + 534) = 0;
          *(this + 533) = v8;
        }

        v13 = *(this + 138);
        if (v13)
        {
          (*(*v13 + 288))(v13, a2);
        }

        v14 = *(this + 140);
        if (v14)
        {
          (*(*v14 + 288))(v14, a2);
        }

        v15 = *(this + 142);
        if (v15)
        {
          (*(*v15 + 288))(v15, a2);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void SipTransportLayer::growKeepaliveInterval(SipTransportLayer *this, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 1);
      if (v7 && *(v7 + 2817) == 1)
      {
        v8 = 2176;
        if (a2)
        {
          v8 = 2172;
        }

        v9 = *(v7 + v8);
        if (v9 >= *(this + 533) + *(this + 534))
        {
          v10 = *(this + 533) + *(this + 534);
        }

        else
        {
          v10 = v9;
        }

        v11 = *(this + 29);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 224))(__p, this);
          if (v16 >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          v13 = *(this + 534);
          *buf = 141558787;
          v18 = 1752392040;
          v19 = 2081;
          v20 = v12;
          v21 = 1024;
          v22 = v13;
          v23 = 1024;
          v24 = v10;
          _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sGrow CRLF ping interval: %u --> %u", buf, 0x22u);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        *(this + 534) = v10;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void SipTransportLayer::shrinkKeepaliveInterval(SipTransportLayer *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 1);
      if (v5 && *(v5 + 2817) == 1 && ims::AccessNetwork::isWifi((v5 + 3432)))
      {
        if ((*(this + 534) - *(v5 + 2184)) <= *(v5 + 2180))
        {
          v6 = *(v5 + 2180);
        }

        else
        {
          v6 = *(this + 534) - *(v5 + 2184);
        }

        v7 = *(this + 29);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 224))(__p, this);
          if (v12 >= 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          v9 = *(this + 534);
          *buf = 141558787;
          v14 = 1752392040;
          v15 = 2081;
          v16 = v8;
          v17 = 1024;
          v18 = v9;
          v19 = 1024;
          v20 = v6;
          _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sShrink CRLF ping interval: %u --> %u", buf, 0x22u);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }

        *(this + 534) = v6;
        *(this + 533) = 0;
        *(this + 1070) = ims::AccessNetwork::isWifi((v5 + 3432)) | 0x100;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void SipTransportLayer::setDropMaskFromString(void *a1, std::string *a2, int a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = 0;
  v40 = 0;
  ims::tokenize(a2, &v38, 0x2Cu);
  v5 = v38;
  v6 = v39;
  if (v38 != v39)
  {
    if (a3)
    {
      v7 = "incoming ";
    }

    else
    {
      v7 = "outgoing ";
    }

    v8 = 33;
    if (a3)
    {
      v8 = 30;
    }

    v9 = &a1[v8 + 1];
    while (1)
    {
      memset(&__str, 0, sizeof(__str));
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v5, *(v5 + 1));
      }

      else
      {
        v10 = *v5;
        __str.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&__str.__r_.__value_.__l.__data_ = v10;
      }

      memset(&v36, 0, sizeof(v36));
      v35 = 0;
      v11 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__str.__r_.__value_.__r.__words[2]) : __str.__r_.__value_.__l.__size_;
      if (!v11)
      {
        break;
      }

      v12 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      v13 = memchr(v12, 58, v11);
      v14 = v13 - v12;
      if (!v13 || v14 == -1)
      {
        break;
      }

      std::string::basic_string(&v41, &__str, 0, v14, __p);
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      v36 = v41;
      memset(&v41, 0, sizeof(v41));
      std::string::basic_string(&v41, &__str, v14 + 1, 0xFFFFFFFFFFFFFFFFLL, __p);
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        v23 = v41.__r_.__value_.__r.__words[0];
        if (v41.__r_.__value_.__l.__size_ == 1 && *v41.__r_.__value_.__l.__data_ == 42)
        {
          v35 = -1;
          operator delete(v41.__r_.__value_.__l.__data_);
          goto LABEL_24;
        }
      }

      else
      {
        v23 = &v41;
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) == 1 && v41.__r_.__value_.__s.__data_[0] == 42)
        {
          v35 = -1;
          goto LABEL_24;
        }
      }

      v24 = strtoul(v23, 0, 10);
      v35 = v24;
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      if (v24)
      {
        goto LABEL_24;
      }

LABEL_73:
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v5 = (v5 + 24);
      if (v5 == v6)
      {
        goto LABEL_78;
      }
    }

    std::string::operator=(&v36, &__str);
LABEL_24:
    v16 = *v9;
    if (!*v9)
    {
      goto LABEL_54;
    }

    v17 = v9;
    do
    {
      v18 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16 + 4, &v36.__r_.__value_.__l.__data_);
      if ((v18 & 0x80u) == 0)
      {
        v17 = v16;
      }

      v16 = *(v16 + ((v18 >> 4) & 8));
    }

    while (v16);
    if (v17 == v9 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v36, v17 + 4) & 0x80) != 0)
    {
      v20 = *v9;
      if (!*v9)
      {
        goto LABEL_54;
      }

      v21 = v9;
      while (1)
      {
        while (1)
        {
          v22 = v20;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v36, (v20 + 32)) & 0x80) == 0)
          {
            break;
          }

          v20 = *v22;
          v21 = v22;
          if (!*v22)
          {
            goto LABEL_54;
          }
        }

        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v22 + 4, &v36.__r_.__value_.__l.__data_) & 0x80) == 0)
        {
          break;
        }

        v21 = v22 + 1;
        v20 = v22[1];
        if (!v20)
        {
          goto LABEL_54;
        }
      }

      if (!*v21)
      {
LABEL_54:
        operator new();
      }

      v19 = (*v21 + 56);
      std::string::operator=(v19, &v36);
    }

    else
    {
      v19 = (v17 + 7);
    }

    v25 = v35;
    v26 = a1[29];
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v27)
      {
        (*(*a1 + 224))(__p, a1);
        v28 = __p;
        if (v34 < 0)
        {
          v28 = __p[0];
        }

        v29 = &v36;
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = v36.__r_.__value_.__r.__words[0];
        }

        LODWORD(v41.__r_.__value_.__l.__data_) = 141559043;
        *(v41.__r_.__value_.__r.__words + 4) = 1752392040;
        WORD2(v41.__r_.__value_.__r.__words[1]) = 2081;
        *(&v41.__r_.__value_.__r.__words[1] + 6) = v28;
        HIWORD(v41.__r_.__value_.__r.__words[2]) = 2080;
        v42 = v7;
        v43 = 1024;
        *v44 = v35;
        *&v44[4] = 2080;
        *&v44[6] = v29;
        _os_log_impl(&dword_1E4C3F000, v26, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}swill drop %s%u responses to %s", &v41, 0x30u);
        if (v34 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v19[1].__r_.__value_.__l.__size_, &v35);
    }

    else
    {
      if (v27)
      {
        (*(*a1 + 224))(__p, a1);
        v30 = __p;
        if (v34 < 0)
        {
          v30 = __p[0];
        }

        v31 = &v36;
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v36.__r_.__value_.__r.__words[0];
        }

        LODWORD(v41.__r_.__value_.__l.__data_) = 141558787;
        *(v41.__r_.__value_.__r.__words + 4) = 1752392040;
        WORD2(v41.__r_.__value_.__r.__words[1]) = 2081;
        *(&v41.__r_.__value_.__r.__words[1] + 6) = v30;
        HIWORD(v41.__r_.__value_.__r.__words[2]) = 2080;
        v42 = v7;
        v43 = 2080;
        *v44 = v31;
        _os_log_impl(&dword_1E4C3F000, v26, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}swill drop %s%s requests", &v41, 0x2Au);
        if (v34 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v19[1].__r_.__value_.__s.__data_[0] = 1;
    }

    goto LABEL_73;
  }

LABEL_78:
  v41.__r_.__value_.__r.__words[0] = &v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
  v32 = *MEMORY[0x1E69E9840];
}

void sub_1E4E3F22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, char *a33)
{
  a33 = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

void SipTransportLayer::networkManager(void *a1@<X8>)
{
  IPTelephonyManager::getBambiClient(&v5);
  v3 = *(v5 + 688);
  *a1 = *(v5 + 680);
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void SipTransportLayer::handleSystemWake(int8x8_t *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = this[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = this[1];
      if (v5)
      {
        v6 = this[138];
        if (*&v6 && *(*&v5 + 2192))
        {
          v7 = this[29];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            (*(*this + 224))(__p, this);
            if (v11 >= 0)
            {
              v8 = __p;
            }

            else
            {
              v8 = __p[0];
            }

            *buf = 141558275;
            v13 = 1752392040;
            v14 = 2081;
            v15 = v8;
            _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipTransportLayer::handleSystemWake()", buf, 0x16u);
            if (v11 < 0)
            {
              operator delete(__p[0]);
            }

            v6 = this[138];
          }

          (*(**&v6 + 232))(v6);
        }

        SipTimerContainer::cancelTimer(this + 112, "SystemWakeWaitTimeout");
        this[266].i8[0] = 0;
        SipTransportLayer::processDeferredIncomingMessages(this);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void SipTransportLayer::handleTcpIdleExtend(SipTransportLayer *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 1);
      if (v5)
      {
        v6 = *(this + 138);
        if (v6)
        {
          if (*(v5 + 2325) == 1)
          {
            v7 = *(this + 29);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 224))(__p, this);
              if (v11 >= 0)
              {
                v8 = __p;
              }

              else
              {
                v8 = __p[0];
              }

              *buf = 141558275;
              v13 = 1752392040;
              v14 = 2081;
              v15 = v8;
              _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sExternal activity extending SIP idle timer", buf, 0x16u);
              if (v11 < 0)
              {
                operator delete(__p[0]);
              }

              v6 = *(this + 138);
            }

            (*(*v6 + 304))(v6);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void SipTransportLayer::terminateRegistration(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = a1[1];
      if (v7)
      {
        v8 = *(v7 + 248);
        v9 = *(v7 + 256);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v8)
        {
          v10 = *(v8 + 336);
          v11 = *(v8 + 344);
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v10 + 176))(v10, a2, 0, 0);
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v12 = a1[2];
    if (v12)
    {
      v13 = std::__shared_weak_count::lock(v12);
      if (v13)
      {
        v14 = v13;
        v15 = a1[1];
        if (v15 && *(v15 + 2817) == 1)
        {
          v16 = (*(a1[5] + 64))(a1 + 5);
          (*(a1[5] + 16))(a1 + 5, v16);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Closing transports for lazuli upon terminating registration", 59);
          *(v16 + 17) = 0;
          (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v16 + 17) = 0;
          v17 = a1[26];
          if (!v17 || (v18 = a1[25], (v19 = std::__shared_weak_count::lock(v17)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v20 = v19;
          p_shared_weak_owners = &v19->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          ims::getQueue(&queue);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 1174405120;
          v23[2] = ___ZN17SipTransportLayer21terminateRegistrationE29RegistrationTerminationReasonl_block_invoke;
          v23[3] = &__block_descriptor_tmp_41;
          v23[4] = a1;
          v23[5] = v18;
          v24 = v20;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          v22 = queue;
          dispatch_async(queue, v23);
          if (v22)
          {
            dispatch_release(v22);
          }

          if (v24)
          {
            std::__shared_weak_count::__release_weak(v24);
          }

          std::__shared_weak_count::__release_weak(v20);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }
  }
}

void ___ZN17SipTransportLayer21terminateRegistrationE29RegistrationTerminationReasonl_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        SipTransportLayer::closeTransports(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t __copy_helper_block_e8_40c43_ZTSKNSt3__18weak_ptrI17SipTransportLayerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c43_ZTSKNSt3__18weak_ptrI17SipTransportLayerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void SipTransportLayer::addUAHeaders(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *(v7 + 248);
        v9 = *(v7 + 256);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v8)
        {
          v10 = a2[1];
          v11 = *a2;
          v12 = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipUserAgent::addUAHeaders(v8, &v11);
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4E3FA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void SipTransportLayer::preferredSeviceClass(SipTransportLayer *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 1);
    if (v7 && (v8 = SipStack::prefs(v7), ImsPrefs::AddQosOptionsToSockets(v8)))
    {
      if (ims::AccessNetwork::isWifi((v7 + 3432)))
      {
        if (*(v7 + 3480) == 1 && (v9 = SipStack::prefs(v7), !ImsPrefs::IgnoreWifiHotspot(v9)))
        {
          v10 = 2328;
        }

        else
        {
          v10 = 2340;
        }
      }

      else
      {
        v10 = 2352;
      }

      v11 = v7 + v10;
      *a2 = *v11;
      *(a2 + 8) = *(v11 + 8);
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

void SipTransportLayer::clientConfig(SipTransportLayer *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 1);
    if (v7)
    {
      v8 = *(v7 + 200);
      *(a2 + 8) = *(v7 + 208);
      *a2 = v8;
      if (*(v7 + 239) < 0)
      {
        std::string::__init_copy_ctor_external((a2 + 16), *(v7 + 216), *(v7 + 224));
      }

      else
      {
        v9 = *(v7 + 216);
        *(a2 + 32) = *(v7 + 232);
        *(a2 + 16) = v9;
      }

      *(a2 + 40) = *(v7 + 240);
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(a2 + 40) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
  }
}

uint64_t SipTransportLayer::securityDelegate@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 336);
  *a2 = *(this + 328);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t SipTransportLayer::stack@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_1E4E3FD00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

uint64_t SipTransportLayer::State::State(uint64_t a1, const std::string *a2)
{
  *a1 = &unk_1F5ED3398;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::operator=((a1 + 8), a2);
  return a1;
}

void sub_1E4E3FDB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *SipStackLayer::SipStackLayer(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5ED34B0;
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v3;
    a1[2] = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    a1[1] = v3;
    a1[2] = 0;
  }

  return a1;
}

void SipStackLayer::~SipStackLayer(SipStackLayer *this)
{
  *this = &unk_1F5ED34B0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5ED34B0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t IncomingSipMessage::IncomingSipMessage(uint64_t a1, SipMessage **a2, uint64_t a3, void *a4, void *a5, char a6)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a4;
  v8 = a4[1];
  *(a1 + 40) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *a5;
  v9 = a5[1];
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = a6;
  SipMessage::clone(*a2, &v15);
  v10 = v15;
  v15 = 0uLL;
  v11 = *(a1 + 8);
  *a1 = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    if (*(&v15 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
    }
  }

  (*(**a3 + 32))(&v15);
  v12 = v15;
  v15 = 0uLL;
  v13 = *(a1 + 24);
  *(a1 + 16) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    if (*(&v15 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
    }
  }

  return a1;
}

void sub_1E4E40090(_Unwind_Exception *exception_object)
{
  v3 = v1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v1[1];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(exception_object);
}

void PowerAssertionTerminationLock::~PowerAssertionTerminationLock(PowerAssertionTerminationLock *this)
{
  v2 = *this;
  if (*this)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    PowerAssertionLock::deinitialize(v2, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *std::list<IncomingSipMessage *>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

void IncomingSipMessage::~IncomingSipMessage(IncomingSipMessage *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t ims::SharedLoggable<SipTransportLayer>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipTransportLayer>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>>>::destroy(*(a1 + 1));
    std::__tree<unsigned int>::destroy((a1 + 88), *(a1 + 12));
    if (a1[79] < 0)
    {
      operator delete(*(a1 + 7));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__shared_ptr_emplace<PowerAssertionLock>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED3570;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t **std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>::operator+=[abi:ne200100](uint64_t **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x505050505050505 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v7 = 15 - v3;
      v8 = &v2[-(v7 >> 4)];
      *result = v8;
      v5 = *v8;
      v6 = ~v7 & 0xF;
    }

    else
    {
      v4 = (v2 + ((v3 >> 1) & 0x7FFFFFFFFFFFFFF8));
      *result = v4;
      v5 = *v4;
      v6 = v3 & 0xF;
    }

    result[1] = (v5 + 408 * v6);
  }

  return result;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>,std::__copy_impl::_CopySegment<std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>,std::__deque_iterator<SipUri,SipUri*,SipUri&,SipUri**,long,16l>>>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v12 = *a5;
    v13 = *(a5 + 8);
    v16 = 0;
    v17 = 0uLL;
    std::__copy_impl::operator()[abi:ne200100]<SipUri const*,std::__deque_iterator<SipUri,SipUri*,SipUri&,SipUri**,long,16l>,0>(&v16, a2, v10 + 6528, v12, v13);
    v8 = *(&v17 + 1);
    v7 = v17;
    *a5 = v17;
    for (*(a5 + 8) = v8; v11 != a3; *(a5 + 8) = v8)
    {
      v14 = *v11++;
      v16 = 0;
      v17 = 0uLL;
      std::__copy_impl::operator()[abi:ne200100]<SipUri const*,std::__deque_iterator<SipUri,SipUri*,SipUri&,SipUri**,long,16l>,0>(&v16, v14, v14 + 6528, v7, v8);
      v8 = *(&v17 + 1);
      v7 = v17;
      *a5 = v17;
    }

    a2 = *v11;
  }

  v16 = 0;
  v17 = 0uLL;
  std::__copy_impl::operator()[abi:ne200100]<SipUri const*,std::__deque_iterator<SipUri,SipUri*,SipUri&,SipUri**,long,16l>,0>(&v16, a2, a4, v7, v8);
  result = *&v17;
  *a5 = v17;
  return result;
}

SipUri *std::__copy_impl::operator()[abi:ne200100]<SipUri const*,std::__deque_iterator<SipUri,SipUri*,SipUri&,SipUri**,long,16l>,0>(SipUri *result, uint64_t a2, uint64_t a3, void *a4, SipUri *this)
{
  v6 = a4;
  v7 = a2;
  v8 = result;
  if (a2 == a3)
  {
    v12 = a2;
    goto LABEL_14;
  }

  v10 = *a4;
  while (1)
  {
    v11 = 0xFAFAFAFAFAFAFAFBLL * ((v10 - this + 6528) >> 3);
    if ((0xFAFAFAFAFAFAFAFBLL * ((a3 - v7) >> 3)) < v11)
    {
      v11 = 0xFAFAFAFAFAFAFAFBLL * ((a3 - v7) >> 3);
    }

    if (v11)
    {
      break;
    }

LABEL_10:
    v14 = v6[1];
    ++v6;
    v10 = v14;
    this = v14;
  }

  v12 = v7 + 408 * v11;
  v13 = 408 * v11;
  do
  {
    result = SipUri::operator=(this, v7);
    v7 += 408;
    this = (this + 408);
    v13 -= 408;
  }

  while (v13);
  if (v12 != a3)
  {
    v7 = v12;
    goto LABEL_10;
  }

  if (this == (*v6 + 6528))
  {
    v15 = v6[1];
    ++v6;
    this = v15;
  }

LABEL_14:
  *v8 = v12;
  *(v8 + 1) = v6;
  *(v8 + 2) = this;
  return result;
}

void *std::__function::__func<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0,std::allocator<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED35C0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0,std::allocator<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED35C0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0,std::allocator<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED35C0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0,std::allocator<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0,std::allocator<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0,std::allocator<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 192))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0,std::allocator<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0,std::allocator<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED3640;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0,std::allocator<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED3640;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0,std::allocator<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED3640;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0,std::allocator<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0,std::allocator<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0,std::allocator<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 192))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0,std::allocator<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0,std::allocator<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED36D8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0,std::allocator<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED36D8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0,std::allocator<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED36D8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0,std::allocator<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0,std::allocator<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0,std::allocator<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 192))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0,std::allocator<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<SipIPSecTransportGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED3758;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t __cxx_global_var_init_68()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

uint64_t __cxx_global_var_init_69()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

void _GLOBAL__sub_I_SipTransportLayer_cpp()
{
  v1[1] = *MEMORY[0x1E69E9840];
  *__p = xmmword_1E516F660;
  qword_1EE2BC4E8 = 0;
  unk_1EE2BC4F0 = 0;
  _MergedGlobals_11 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&_MergedGlobals_11, __p, v1, 4uLL);
}

void sub_1E4E41308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallOptions::initializeFromPrefs(BambiCallOptions *this, const ImsPrefs *a2)
{
  *(this + 8) = ImsPrefs::SessionExpiresSeconds(a2);
  *(this + 9) = ImsPrefs::MinSessionExpiresSeconds(a2);
  *(this + 11) = ImsPrefs::SessionExpiresCushion(a2);
  *(this + 50) = ImsPrefs::SendOfferWithInvite(a2);
  *(this + 60) = ImsPrefs::StrictTS24930PreconditionHeaders(a2);
  *(this + 61) = ImsPrefs::EchoRemotePreconditionStrength(a2);
  memset(&v8, 0, sizeof(v8));
  ImsPrefs::InitialRemotePreconditionStrength(a2, &v8);
  size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    *(this + 14) = SipPreconditions::strengthFromString(&v8, 2);
  }

  *(this + 62) = ImsPrefs::OnlyUpdatePreconditionsIfConfPresent(a2);
  *(this + 16) = ImsPrefs::PreconditionUpdateDelayTimerMilliseconds(a2);
  *(this + 72) = ImsPrefs::PreconditionAllowMTUpdate(a2);
  *(this + 73) = ImsPrefs::SendPreconditionsInConfirmedSessions(a2);
  *(this + 74) = ImsPrefs::SendPreconditionsInPrack(a2);
  *(this + 63) = ImsPrefs::RequirePreconditionsWhenSdpPresent(a2);
  *(this + 75) = ImsPrefs::IgnoreNonCompliantSupportedHeaders(a2);
  *(this + 76) = ImsPrefs::RequirePreconditionsWhenMandatory(a2);
  std::string::basic_string[abi:ne200100]<0>(v5, "Preconditions");
  ImsPrefs::enumAsString(a2, v5, &__p);
  *(this + 13) = SipPreconditions::supportLevelFromString(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  *(this + 49) = ImsPrefs::SetSessionTimerRefresherInInitialRequest(a2);
  *(this + 84) = ImsPrefs::SendReInviteInInactiveSessions(a2);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E414C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiCall::BambiCall(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  *a1 = &unk_1F5EBEEC0;
  v8 = a1 + 8;
  std::string::basic_string[abi:ne200100]<0>(&v39, "bambi.call");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v34, (*a2 + 200));
  ImsLogContainer::ImsLogContainer(v8, &v39, v34);
  if (v37 == 1 && v36 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  std::string::basic_string[abi:ne200100]<0>(v32, "bambi.call");
  v9 = *a2;
  v28 = *(*a2 + 200);
  v29 = *(v9 + 208);
  if (*(v9 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *(v9 + 216), *(v9 + 224));
  }

  else
  {
    v30 = *(v9 + 216);
  }

  v31 = *(v9 + 240);
  ims::getQueue(&v41);
  ClientConfig::getLogTag(&v28, &v38);
  if ((v33 & 0x80u) == 0)
  {
    v10 = v32;
  }

  else
  {
    v10 = v32[0];
  }

  if ((v33 & 0x80u) == 0)
  {
    v11 = v33;
  }

  else
  {
    v11 = v32[1];
  }

  v12 = std::string::insert(&v38, 0, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v40 = v12->__r_.__value_.__r.__words[2];
  v39 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v14 = &v39;
  }

  else
  {
    v14 = v39;
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v15 = v41;
  *(a1 + 168) = v41;
  if (v15)
  {
    dispatch_retain(v15);
  }

  *(a1 + 176) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 184), "com.apple.ipTelephony", v14);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v15)
  {
    dispatch_release(v15);
  }

  *(a1 + 144) = &unk_1F5ED39E0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  *a1 = &unk_1F5ED37A8;
  *(a1 + 8) = &unk_1F5ED3830;
  *(a1 + 144) = &unk_1F5ED3890;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  SipTimerContainer::SipTimerContainer((a1 + 208));
  *(a1 + 488) = 0;
  *(a1 + 494) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 592) = 0x40A7700000000000;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 690) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 744) = 90;
  *(a1 + 752) = 1;
  *(a1 + 754) = 1;
  *(a1 + 756) = 0x200000001;
  *(a1 + 764) = 256;
  *(a1 + 766) = 1;
  *(a1 + 767) = 0;
  *(a1 + 775) = 256;
  *(a1 + 777) = 0;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 784) = 0;
  *(a1 + 788) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0;
  *(a1 + 880) = 0x40A7700000000000;
  *(a1 + 1024) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0;
  SipUri::SipUri((a1 + 1080));
  *(a1 + 1592) = 0;
  *(a1 + 1600) = 0;
  *(a1 + 1536) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0;
  *(a1 + 1664) = 0;
  *(a1 + 1672) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1608) = 0u;
  *(a1 + 1624) = 0u;
  *(a1 + 1640) = 0u;
  *(a1 + 1488) = 0u;
  *(a1 + 1504) = 0u;
  *(a1 + 1513) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1740) = 0u;
  *(a1 + 1784) = 0;
  *(a1 + 1776) = 0;
  *(a1 + 1760) = 0u;
  *(a1 + 1788) = 0x10000;
  *(a1 + 1856) = 0;
  *(a1 + 1860) = 0;
  *(a1 + 1792) = 0u;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1839) = 0;
  *(a1 + 1844) = 0;
  *(a1 + 1852) = 0;
  v16 = *(a1 + 416);
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(a1 + 200);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v19 = *a2;
  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
  }

  v20 = *(a1 + 384);
  *(a1 + 376) = v19;
  *(a1 + 384) = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  v22 = *a3;
  v21 = a3[1];
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = *(a1 + 400);
  *(a1 + 392) = v22;
  *(a1 + 400) = v21;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  *(a1 + 336) = a1;
  v24 = *a2;
  std::string::operator=((a1 + 256), (a1 + 16));
  v25 = *(v24 + 200);
  *(a1 + 288) = *(v24 + 208);
  *(a1 + 280) = v25;
  std::string::operator=((a1 + 296), (v24 + 216));
  *(a1 + 320) = *(v24 + 240);
  *(a1 + 456) = time(0);
  *(a1 + 464) = 0u;
  *(a1 + 480) = 1;
  *(a1 + 493) = 0;
  *(a1 + 495) = 0;
  v26 = *(a1 + 1520);
  *(a1 + 1512) = 0u;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  *(a1 + 484) = 1;
  *(a1 + 492) = 0;
  *(a1 + 552) = a4;
  *(a1 + 1529) = 0;
  *(a1 + 497) = 0;
  return a1;
}

void sub_1E4E41A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ImsLogContainer::~ImsLogContainer(a9);
  _Unwind_Resume(a1);
}

void BambiCall::~BambiCall(BambiCall *this)
{
  *this = &unk_1F5ED37A8;
  v2 = this + 8;
  *(this + 1) = &unk_1F5ED3830;
  *(this + 18) = &unk_1F5ED3890;
  v3 = ImsLogContainer::debugStream((this + 8));
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~BambiCall()", 12);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  v4 = *(this + 51);
  if (v4)
  {
    v15[0] = 0;
    v15[1] = 0;
    SipSession::setCall(v4, v15);
  }

  v5 = *(this + 69);
  if (v5)
  {
    if (*(v5 + 4775) < 0)
    {
      operator delete(*(v5 + 4752));
    }

    SipUri::~SipUri((v5 + 4344));
    SipStackConfig::~SipStackConfig((v5 + 1752));
    SipRegistrationConfig::~SipRegistrationConfig((v5 + 80));
    if (*(v5 + 71) < 0)
    {
      operator delete(*(v5 + 48));
    }

    if (*(v5 + 47) < 0)
    {
      operator delete(*(v5 + 24));
    }

    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    MEMORY[0x1E69235B0](v5, 0x10B2C40F20492F8);
  }

  v6 = *(this + 227);
  if (v6)
  {
    *(this + 228) = v6;
    operator delete(v6);
  }

  v7 = *(this + 224);
  if (v7)
  {
    *(this + 225) = v7;
    operator delete(v7);
  }

  if (*(this + 1727) < 0)
  {
    operator delete(*(this + 213));
  }

  if (*(this + 1703) < 0)
  {
    operator delete(*(this + 210));
  }

  if (*(this + 1655) < 0)
  {
    operator delete(*(this + 204));
  }

  if (*(this + 1631) < 0)
  {
    operator delete(*(this + 201));
  }

  if (*(this + 1583) < 0)
  {
    operator delete(*(this + 195));
  }

  if (*(this + 1559) < 0)
  {
    operator delete(*(this + 192));
  }

  v8 = *(this + 190);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(this + 1511) < 0)
  {
    operator delete(*(this + 186));
  }

  SipUri::~SipUri((this + 1080));
  if (*(this + 1079) < 0)
  {
    operator delete(*(this + 132));
  }

  BambiCallOptions::~BambiCallOptions(this + 88);
  if (*(this + 703) < 0)
  {
    operator delete(*(this + 85));
  }

  if (*(this + 679) < 0)
  {
    operator delete(*(this + 82));
  }

  if (*(this + 655) < 0)
  {
    operator delete(*(this + 79));
  }

  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  if (*(this + 551) < 0)
  {
    operator delete(*(this + 66));
  }

  if (*(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  v9 = *(this + 56);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(this + 54);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(this + 52);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 50);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 48);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  SipTimerContainer::~SipTimerContainer((this + 208));
  v14 = *(this + 25);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  MEMORY[0x1E69225A0](this + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 19);
  *(this + 1) = &unk_1F5ED7318;
  if (*(this + 88) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  BambiCall::~BambiCall(this);

  JUMPOUT(0x1E69235B0);
}

void SipSession::setCall(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  a1[103] = v5;
  v6 = a1[104];
  a1[104] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (!*a2)
  {
    v7 = *(*a1 + 104);

    v7(a1);
  }
}

void non-virtual thunk toBambiCall::~BambiCall(BambiCall *this)
{
  BambiCall::~BambiCall((this - 8));
}

{
  BambiCall::~BambiCall((this - 144));
}

{
  BambiCall::~BambiCall((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCall::~BambiCall((this - 144));

  JUMPOUT(0x1E69235B0);
}

BOOL BambiCall::setMediaDirection(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = 0;
  if (!a2 || !a3)
  {
    return result;
  }

  v8 = *(a2 + 60);
  v21 = v8;
  if (a3 == 2)
  {
    *(a2 + 60) = 3;
    goto LABEL_11;
  }

  if (a3 != 3)
  {
    *(a2 + 60) = a3;
LABEL_11:
    if ((*(a1 + 480) & 0xFFFFFFFE) != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *(a2 + 60) = 2;
  if ((*(a1 + 480) & 0xFFFFFFFE) != 2)
  {
    v9 = *(a1 + 384);
    if (v9)
    {
      v9 = std::__shared_weak_count::lock(v9);
      v10 = v9;
      if (v9)
      {
        v9 = *(a1 + 376);
      }
    }

    else
    {
      v10 = 0;
    }

    v14 = SipStack::prefs(v9);
    v15 = ImsPrefs::AllowHoldMusic(v14);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v15)
    {
      goto LABEL_13;
    }
  }

LABEL_12:
  *(a2 + 60) = 4;
LABEL_13:
  *(a1 + 484) = *(a2 + 60);
  if (a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "SetMediaDirection");
    BambiCall::activateMediaSessionIfAppropriate(a1, a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v12 = *(a1 + 8);
  v11 = a1 + 8;
  v13 = (*(v12 + 64))(v11);
  (*(*v11 + 16))(v11, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Stream ", 7);
  *(v13 + 17) = 0;
  MEMORY[0x1E69233B0](*(v13 + 8), *(a2 + 48));
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " direction set to ", 18);
  *(v13 + 17) = 0;
  v18 = *(a2 + 60);
  ims::toString<MediaDirection>(&v18, &v19);
  LoggableString::LoggableString(&__p, &v19);
  (*(*v13 + 40))(v13, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " (was ", 6);
  *(v13 + 17) = 0;
  ims::toString<MediaDirection>(&v21, &v16);
  LoggableString::LoggableString(&v17, &v16);
  (*(*v13 + 40))(v13, &v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), ")", 1);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v8 != *(a2 + 60);
}

void sub_1E4E423F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiCall::activateMediaSessionIfAppropriate(uint64_t a1, uint64_t a2, std::string *a3)
{
  if (a2)
  {
    v5 = *(a1 + 408);
    if (!v5)
    {
      goto LABEL_21;
    }

    v8 = *(v5 + 240);
    v7 = *(v5 + 248);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v8)
    {
      if (*(a1 + 493))
      {
        v9 = *(a1 + 408);
        v11 = *(v9 + 240);
        v10 = *(v9 + 248);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(v11 + 2968);
        v13 = *(v11 + 2976);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        if (v12)
        {
          if (*(a1 + 496))
          {
            if (SipSession::confirmed(*(a1 + 408)))
            {
              goto LABEL_16;
            }

            if (*(a1 + 1529) != 1)
            {
              v42 = *(a1 + 8);
              v41 = a1 + 8;
              v43 = (*(v42 + 64))(v41);
              (*(*v41 + 16))(v41, v43);
              v44 = ImsOutStream::operator<<(v43, "activateMediaSession (");
              LoggableString::LoggableString(&v109, a3);
              (*(*v44 + 40))(v44, &v109);
              v37 = ImsOutStream::operator<<(v44, "): waiting for session to be confirmed");
              (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              goto LABEL_52;
            }

            if ((SipDialogFork::preconditionsSatisfied(v12) & 1) == 0)
            {
              v48 = *(a1 + 8);
              v47 = a1 + 8;
              v49 = (*(v48 + 64))(v47);
              (*(*v47 + 16))(v47, v49);
              v50 = ImsOutStream::operator<<(v49, "activateMediaSession (");
              LoggableString::LoggableString(&v109, a3);
              (*(*v50 + 40))(v50, &v109);
              v51 = ImsOutStream::operator<<(v50, "): fork ");
              (*(*v51 + 32))(v51, v12 + 264);
              v37 = ImsOutStream::operator<<(v51, " preconditions have not been met yet, can’t activate the session");
              (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              goto LABEL_52;
            }

            if (*(*(a1 + 408) + 1500) == 1)
            {
              v34 = *(a1 + 8);
              v33 = a1 + 8;
              v35 = (*(v34 + 64))(v33);
              (*(*v33 + 16))(v33, v35);
              v36 = ImsOutStream::operator<<(v35, "activateMediaSession (");
              LoggableString::LoggableString(&v109, a3);
              (*(*v36 + 40))(v36, &v109);
              v37 = ImsOutStream::operator<<(v36, "): no early media, waiting for session to be confirmed");
              (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_52:
              v37[17] = 0;
              goto LABEL_31;
            }

            v53 = *(a1 + 384);
            if (v53)
            {
              v53 = std::__shared_weak_count::lock(v53);
              v54 = v53;
              if (v53)
              {
                v53 = *(a1 + 376);
              }
            }

            else
            {
              v54 = 0;
            }

            v73 = SipStack::prefs(v53);
            if (ImsPrefs::UseRTPDetectionAutoStart(v73))
            {
              v74 = *(a1 + 494);
              if (v54)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v54);
              }

              if ((v74 & 1) == 0)
              {
                v75 = *(a1 + 384);
                if (v75)
                {
                  v75 = std::__shared_weak_count::lock(v75);
                  v76 = v75;
                  if (v75)
                  {
                    v75 = *(a1 + 376);
                  }
                }

                else
                {
                  v76 = 0;
                }

                v96 = SipStack::prefs(v75);
                if (!ImsPrefs::EnforceEarlyMediaInactiveDirection(v96))
                {
                  if (v76)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
                  }

                  goto LABEL_152;
                }

                v97 = *(a1 + 488);
                if (v76)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v76);
                }

                if (v97 != 4)
                {
LABEL_152:
                  v99 = *(a1 + 8);
                  v98 = a1 + 8;
                  v100 = (*(v99 + 64))(v98);
                  (*(*v98 + 16))(v98, v100);
                  v101 = ImsOutStream::operator<<(v100, "activateMediaSession (");
                  LoggableString::LoggableString(&v109, a3);
                  (*(*v101 + 40))(v101, &v109);
                  v37 = ImsOutStream::operator<<(v101, "): RTP auto detection running");
                  (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  goto LABEL_52;
                }
              }
            }

            else if (v54)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v54);
            }

LABEL_16:
            if ((*(a1 + 480) & 0xFFFFFFFE) == 2)
            {
              v14 = (*(*(a1 + 8) + 64))(a1 + 8);
              (*(*(a1 + 8) + 16))(a1 + 8, v14);
              v15 = ImsOutStream::operator<<(v14, "activateMediaSession (");
              LoggableString::LoggableString(&v109, a3);
              (*(*v15 + 40))(v15, &v109);
              v16 = ImsOutStream::operator<<(v15, "): call is ");
              v17 = *(a1 + 480);
              if (v17 == 3)
              {
                v107.__r_.__value_.__r.__words[2] = 0x400000000000000;
                v18 = "held";
              }

              else if (v17 == 2)
              {
                v107.__r_.__value_.__r.__words[2] = 0x700000000000000;
                v18 = "holding";
              }

              else if (v17)
              {
                v107.__r_.__value_.__r.__words[2] = 0x700000000000000;
                v18 = "resumed";
              }

              else
              {
                v107.__r_.__value_.__r.__words[2] = 0x800000000000000;
                v18 = "resuming";
              }

              *&v107.__r_.__value_.__l.__data_ = *v18;
              LoggableString::LoggableString(&__p, &v107);
              (*(*v16 + 40))(v16, &__p);
              v52 = ImsOutStream::operator<<(v16, ", can't activate the session");
              (*(*v52 + 64))(v52, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v52[17] = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v107.__r_.__value_.__l.__data_);
              }

              goto LABEL_31;
            }

            v38 = (a1 + 484);
            if ((*(a1 + 484) - 1) < 2)
            {
LABEL_42:
              v105 = 0;
              v106 = 0;
              BambiCall::localSdp(a1, &v105);
              if (v105)
              {
                v39 = *(a2 + 64);
                for (i = *(v105 + 448); i != *(v105 + 456); i += 200)
                {
                  if (*(i + 12) == v39)
                  {
                    goto LABEL_64;
                  }
                }

                if (v39 != 2)
                {
                  v65 = *(a1 + 8);
                  v64 = a1 + 8;
                  v66 = (*(v65 + 64))(v64);
                  (*(*v64 + 16))(v64, v66);
                  v67 = ImsOutStream::operator<<(v66, "activateMediaSession: local SDP does not contain a media stream for type ");
                  (*(*v67 + 32))(v67, &v109);
                  (*(*v67 + 64))(v67, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_123:
                  v67[17] = 0;
                  if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_126:
                    v25 = 0;
LABEL_142:
                    if (v106)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v106);
                    }

                    goto LABEL_35;
                  }

                  v72 = v109.__r_.__value_.__r.__words[0];
LABEL_125:
                  operator delete(v72);
                  goto LABEL_126;
                }
              }

LABEL_64:
              v55 = *v38;
              v104 = *v38;
              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, "PreconditionsSatisfied"))
              {
                if (*(*(a1 + 408) + 1500) != 2)
                {
                  v69 = *(a1 + 8);
                  v68 = a1 + 8;
                  v70 = (*(v69 + 64))(v68);
                  (*(*v68 + 16))(v68, v70);
                  v71 = ImsOutStream::operator<<(v70, "activateMediaSession: preconditions are satisfied, but early media is not enforced, won't activate the session with direction ");
                  ims::toString<MediaDirection>(v38, &__p);
                  LoggableString::LoggableString(&v109, &__p);
                  (*(*v71 + 40))(v71, &v109);
                  (*(*v71 + 64))(v71, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v71[17] = 0;
                  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v109.__r_.__value_.__l.__data_);
                  }

                  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_126;
                  }

                  v72 = __p.__r_.__value_.__r.__words[0];
                  goto LABEL_125;
                }

                v56 = 0;
                goto LABEL_114;
              }

              v57 = *(a1 + 384);
              if (v57)
              {
                v57 = std::__shared_weak_count::lock(v57);
                v58 = v57;
                if (v57)
                {
                  v57 = *(a1 + 376);
                }
              }

              else
              {
                v58 = 0;
              }

              v77 = SipStack::prefs(v57);
              if (ImsPrefs::EnforceEarlyMediaDirection(v77) && *(a1 + 1529) == 1)
              {
                v78 = SipSession::confirmed(*(a1 + 408));
                if (v58)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
                }

                if ((v78 & 1) == 0 && *(a1 + 488) > v55)
                {
                  v79 = (*(*(a1 + 8) + 64))(a1 + 8);
                  (*(*(a1 + 8) + 16))(a1 + 8, v79);
                  v80 = ImsOutStream::operator<<(v79, "Changing early media direction from ");
                  ims::toString<MediaDirection>(&v104, &__p);
                  LoggableString::LoggableString(&v109, &__p);
                  (*(*v80 + 40))(v80, &v109);
                  v81 = ImsOutStream::operator<<(v80, " to ");
                  ims::toString<MediaDirection>((a1 + 488), &v103);
                  LoggableString::LoggableString(&v107, &v103);
                  (*(*v81 + 40))(v81, &v107);
                  (*(*v81 + 64))(v81, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v81[17] = 0;
                  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v107.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v103.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v109.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  v104 = *(a1 + 488);
                  v56 = v104 != 4;
                  goto LABEL_114;
                }
              }

              else if (v58)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v58);
              }

              v56 = 1;
LABEL_114:
              shouldContinueUpdatingSession = BambiCall::shouldContinueUpdatingSession(a1);
              v83 = a1 + 8;
              v84 = *(*(a1 + 8) + 64);
              if (shouldContinueUpdatingSession)
              {
                v85 = v84(a1 + 8);
                (*(*v83 + 16))(a1 + 8, v85);
                v86 = ImsOutStream::operator<<(v85, "activating ");
                (*(*v86 + 32))(v86, &v109);
                v87 = ImsOutStream::operator<<(v86, " media session (");
                LoggableString::LoggableString(&__p, a3);
                (*(*v87 + 40))(v87, &__p);
                v88 = ImsOutStream::operator<<(v87, ")");
                (*(*v88 + 64))(v88, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v88[17] = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v109.__r_.__value_.__l.__data_);
                }

                *&v109.__r_.__value_.__l.__data_ = 0uLL;
                SipSession::getMostRecentRemoteFork(*(a1 + 408), &v109);
                if (v109.__r_.__value_.__r.__words[0])
                {
                  if (SipSession::confirmed(*(a1 + 408)))
                  {
                    v89 = v109.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    v89 = v109.__r_.__value_.__r.__words[0];
                    if ((*(a1 + 488) & 0xFFFFFFFB) != 0 && (*(v109.__r_.__value_.__r.__words[0] + 984) & 0xFFFFFFFB) != 0)
                    {
                      *(v109.__r_.__value_.__r.__words[0] + 988) = 1;
                      *(*(a1 + 408) + 1504) = 1;
                    }
                  }

                  if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v89 + 264), (a1 + 1056)))
                  {
                    v93 = (*(*v83 + 64))(a1 + 8);
                    (*(*v83 + 16))(a1 + 8, v93);
                    v94 = ImsOutStream::operator<<(v93, "Media settings mismatch: maybe we should update media settings");
                    (*(*v94 + 64))(v94, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    v94[17] = 0;
                    size = v109.__r_.__value_.__l.__size_;
                    v102 = *&v109.__r_.__value_.__l.__data_;
                    if (v109.__r_.__value_.__l.__size_)
                    {
                      atomic_fetch_add_explicit((v109.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
                    }

                    BambiCall::applyMediaSettingsUsingForkIfRequired(a1, a2, &v102, 1);
                    if (size)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](size);
                    }
                  }
                }

                if (v109.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v109.__r_.__value_.__l.__size_);
                }

                RTPManager::activateSessionWithId(*(a1 + 392), *(a2 + 48), v104, v56);
                v25 = 1;
                goto LABEL_142;
              }

              v90 = v84(a1 + 8);
              (*(*v83 + 16))(v83, v90);
              v91 = ImsOutStream::operator<<(v90, "Skipped activating media session (");
              LoggableString::LoggableString(&v109, a3);
              (*(*v91 + 40))(v91, &v109);
              v67 = ImsOutStream::operator<<(v91, ")");
              (*(*v67 + 64))(v67, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              goto LABEL_123;
            }

            v45 = *(a1 + 384);
            if (v45)
            {
              v45 = std::__shared_weak_count::lock(v45);
              v46 = v45;
              if (v45)
              {
                v45 = *(a1 + 376);
              }
            }

            else
            {
              v46 = 0;
            }

            v59 = SipStack::prefs(v45);
            if (ImsPrefs::EnforceEarlyMediaInactiveDirection(v59) && *(a1 + 1529) == 1 && (SipSession::confirmed(*(a1 + 408)) & 1) == 0)
            {
              v92 = *(a1 + 488);
              if (v46)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v46);
              }

              if (v92 != 4)
              {
                goto LABEL_42;
              }
            }

            else if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v46);
            }

            v61 = *(a1 + 8);
            v60 = a1 + 8;
            v62 = (*(v61 + 64))(v60);
            (*(*v60 + 16))(v60, v62);
            v63 = ImsOutStream::operator<<(v62, "activateMediaSession: session is not expecting remote RTP packets, won't activate the session with direction ");
            ims::toString<MediaDirection>(v38, &__p);
            LoggableString::LoggableString(&v109, &__p);
            (*(*v63 + 40))(v63, &v109);
            (*(*v63 + 64))(v63, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v63[17] = 0;
            if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v109.__r_.__value_.__l.__data_);
            }

            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_34;
            }

            v32 = __p.__r_.__value_.__r.__words[0];
            goto LABEL_33;
          }

          v31 = *(a1 + 8);
          v30 = a1 + 8;
          v29 = (*(v31 + 64))(v30);
          (*(*v30 + 16))(v30, v29);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "activateMediaSession (", 22);
          *(v29 + 17) = 0;
          LoggableString::LoggableString(&v109, a3);
          (*(*v29 + 40))(v29, &v109);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "): no valid remote IP address", 29);
          *(v29 + 17) = 0;
          (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        }

        else
        {
          v28 = *(a1 + 8);
          v27 = a1 + 8;
          v29 = (*(v28 + 64))(v27);
          (*(*v27 + 16))(v27, v29);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "activateMediaSession (", 22);
          *(v29 + 17) = 0;
          LoggableString::LoggableString(&v109, a3);
          (*(*v29 + 40))(v29, &v109);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "): no active fork", 17);
          *(v29 + 17) = 0;
          (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        }

        *(v29 + 17) = 0;
LABEL_31:
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_34:
          v25 = 0;
LABEL_35:
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          return v25;
        }

        v32 = v109.__r_.__value_.__r.__words[0];
LABEL_33:
        operator delete(v32);
        goto LABEL_34;
      }

      v24 = *(a1 + 8);
      v23 = a1 + 8;
      v21 = (*(v24 + 64))(v23);
      (*(*v23 + 16))(v23, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "activateMediaSession (", 22);
      *(v21 + 17) = 0;
      LoggableString::LoggableString(&v109, a3);
      (*(*v21 + 40))(v21, &v109);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "): waiting for media session to be configured", 45);
      *(v21 + 17) = 0;
      (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    else
    {
LABEL_21:
      v20 = *(a1 + 8);
      v19 = a1 + 8;
      v21 = (*(v20 + 56))(v19);
      (*(*v19 + 16))(v19, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "activateMediaSession (", 22);
      *(v21 + 17) = 0;
      LoggableString::LoggableString(&v109, a3);
      (*(*v21 + 40))(v21, &v109);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "): no SIP session", 17);
      *(v21 + 17) = 0;
      (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }
  }

  else
  {
    v22 = a1 + 8;
    v21 = (*(*(a1 + 8) + 56))(a1 + 8);
    (*(*v22 + 16))(v22, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "activateMediaSession (", 22);
    *(v21 + 17) = 0;
    LoggableString::LoggableString(&v109, a3);
    (*(*v21 + 40))(v21, &v109);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "): no media stream", 18);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  *(v21 + 17) = 0;
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E4E43B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 65) < 0)
  {
    operator delete(*(v33 - 88));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiCall::checkForPause(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = a2;
  v25 = a3;
  if (!a2)
  {
    goto LABEL_20;
  }

  v8 = a1 + 8;
  v9 = *(a1 + 480);
  v10 = (*(*(a1 + 8) + 64))(a1 + 8);
  (*(*v8 + 16))(v8, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Checking for pause (local= ", 27);
  *(v10 + 17) = 0;
  v22 = *(v4 + 60);
  ims::toString<MediaDirection>(&v22, v23);
  (*(*v10 + 32))(v10, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ", remote= ", 10);
  *(v10 + 17) = 0;
  ims::toString<MediaDirection>(&v25, __p);
  (*(*v10 + 32))(v10, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ")", 1);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  v11 = v9 & 0xFFFFFFFE;
  v12 = *(v4 + 60);
  if (v12 == 3)
  {
    v12 = 2;
  }

  else if (v12 == 2)
  {
    v12 = 3;
  }

  if (v11 == 2)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12 >= a3 || a3 == 1;
  if (!v14 || v13)
  {
    v16 = BambiCall::setMediaDirection(a1, v4, a3, 0);
    if (BambiCall::shouldContinueUpdatingSession(a1))
    {
      if (v11 == 2)
      {
        v17 = 4;
      }

      else
      {
        v17 = *(v4 + 60);
      }

      RTPManager::deactivateSessionWithId(*(a1 + 392), *(v4 + 48), v17);
      if (!v16)
      {
        v15 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v18 = (*(*v8 + 64))(v8);
      (*(*v8 + 16))(v8, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Skipped deactivating media session (", 36);
      *(v18 + 17) = 0;
      MEMORY[0x1E69233B0](*(v18 + 8), *(v4 + 48));
      *(v18 + 17) = 0;
      LODWORD(v4) = 1;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), ")", 1);
      *(v18 + 17) = 0;
      (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v18 + 17) = 0;
      if (!v16)
      {
        goto LABEL_20;
      }
    }

    v15 = 256;
LABEL_30:
    LODWORD(v4) = 1;
    return v15 | v4;
  }

  LODWORD(v4) = 0;
LABEL_20:
  v15 = 0;
  return v15 | v4;
}

void sub_1E4E44078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiCall::shouldContinueUpdatingSession(SipSession **this)
{
  if (SipSession::confirmed(this[51]))
  {
    return 1;
  }

  v2 = this[51];
  if (*(v2 + 1504) != 1)
  {
    return 1;
  }

  SipSessionInterface::stack(v2, &v9);
  v3 = SipStack::prefs(v9);
  active = ImsPrefs::SelectLatestForkWithActiveEarlyMedia(v3);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (!active)
  {
    SipSessionInterface::stack(this[51], &v9);
    v5 = SipStack::prefs(v9);
    v6 = ImsPrefs::SelectForkWithActiveEarlyMedia(v5);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v6)
    {
      v9 = 0;
      v10 = 0;
      SipSession::getMostRecentRemoteFork(this[51], &v9);
      if (!v9 || (*(v9 + 988) & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_14:
      v7 = 1;
      goto LABEL_18;
    }

    return 1;
  }

  v9 = 0;
  v10 = 0;
  SipSession::getMostRecentRemoteFork(this[51], &v9);
  if (v9 && (*(v9 + 246) & 0xFFFFFFFB) != 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v7 = 0;
LABEL_18:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v7;
}

void sub_1E4E441B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void BambiCall::handleSdpOfferInFork(uint64_t a1@<X0>, uint64_t *a2@<X1>, SipDialogFork **a3@<X2>, uint64_t a4@<X8>)
{
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v121[1] = &_bambiDomain;
  v121[2] = 0;
  v8 = a2[1];
  v120[0] = *a2;
  v120[1] = v8;
  v121[0] = &unk_1F5EBDEF8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCall::checkRemoteSdpForValidAddress(a1, v120);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *a2;
  v10 = *(a1 + 384);
  if (v10)
  {
    v10 = std::__shared_weak_count::lock(v10);
    v11 = v10;
    if (v10)
    {
      v10 = *(a1 + 376);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = SipStack::prefs(v10);
  v13 = ImsPrefs::UseRestrictiveDirectionWhenCreatingAnswer(v12);
  v14 = SDPModel::preferredDirection(v9, 2, v13);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v15 = *(a1 + 192);
  if (v15)
  {
    hasStream = SDPSession::hasStream(*(a1 + 192));
    if (hasStream & 1) != 0 || (*(a1 + 1529))
    {
      if (hasStream)
      {
        v17 = *a3;
        if (*a3)
        {
          v18 = a2[1];
          v110 = *a2;
          v111 = v18;
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            v17 = *a3;
          }

          v108 = 0;
          v109 = 0;
          v19 = SipDialogFork::incrementSdpVersion(v17);
          v20 = SDPSession::handleOfferAnswer(v15, &v110, &v108, v19);
          if (v109)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v109);
          }

          if (v111)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v111);
          }

          if (v20)
          {
            v21 = v20 == 2;
            v22 = *(a1 + 432);
            if (v22 && (v23 = std::__shared_weak_count::lock(v22)) != 0)
            {
              v96 = v23;
              v100 = *(a1 + 424);
            }

            else
            {
              v100 = 0;
              v96 = 0;
            }

            v48 = *(a1 + 192);
            v102 = &_bambiDomain;
            v103 = 0;
            v104 = 0u;
            v105 = 0u;
            v106 = 0u;
            v107 = 0u;
            v101 = &unk_1F5EBDEF8;
            v49 = *(v48 + 1904);
            v98 = (v48 + 1912);
            if (v49 != (v48 + 1912))
            {
              v97 = a1 + 8;
              v99 = v14;
              while (1)
              {
                v50 = v49[5];
                v51 = BambiCall::checkForPause(a1, v50, v14, 0);
                if (*(a1 + 496))
                {
                  v52 = v99;
                }

                else
                {
                  v52 = 4;
                }

                v53 = BambiCall::setMediaDirection(a1, v50, v52, 0);
                v54 = v51 > 0xFFu || v53;
                BambiCall::localSdp(a1, v133);
                v55 = *(v50 + 64);
                v56 = *(*v133 + 448);
                if (*(v56 + 12) != v55)
                {
                  v57 = v56 + 200;
                  do
                  {
                    v58 = *(v57 + 12);
                    v57 += 200;
                  }

                  while (v58 != v55);
                  v56 = v57 - 200;
                }

                v59 = v56 + 136;
                for (i = *(v56 + 144); ; i = *(i + 8))
                {
                  if (i == v59)
                  {
                    v61 = 3;
                    goto LABEL_81;
                  }

                  if (*(i + 136) == 4)
                  {
                    break;
                  }
                }

                BambiCall::localSdp(a1, &v135);
                v62 = *(v50 + 64);
                v63 = *(v135 + 448);
                if (*(v63 + 12) != v62)
                {
                  v64 = v63 + 200;
                  do
                  {
                    v65 = *(v64 + 12);
                    v64 += 200;
                  }

                  while (v65 != v62);
                  v63 = v64 - 200;
                }

                  ;
                }

                v67 = *(j + 56);
                if (v136)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v136);
                }

                v61 = v67 - 1;
LABEL_81:
                if (*&v133[8])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&v133[8]);
                }

                if (v61 > 2)
                {
                  v68 = 0;
                }

                else
                {
                  v68 = dword_1E517019C[v61];
                }

                if (v51 & v54)
                {
                  v69 = *(v50 + 60);
                  if ((v69 == 4 || v69 == 2) && *(v50 + 64) == 4 && v100)
                  {
                    *(a1 + 1860) = 1;
                    v70 = (*(*(a1 + 8) + 64))();
                    (*(*v97 + 16))(v97, v70);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v70 + 8), "RTT remote hold detected!!", 26);
                    *(v70 + 17) = 0;
                    (*(*v70 + 64))(v70, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    *(v70 + 17) = 0;
                    (*(*v100 + 248))(v100, 0);
                  }
                }

                if (v54)
                {
                  v71 = *(v50 + 60);
                  if (v71 != 2 && v71 != 4 && *(a1 + 1860) == 1)
                  {
                    v72 = *(v50 + 64);
                    if (v72 != 4)
                    {
                      goto LABEL_100;
                    }

                    if (v100)
                    {
                      *(a1 + 1860) = 0;
                      v73 = (*(*(a1 + 8) + 64))();
                      (*(*v97 + 16))(v97, v73);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v73 + 8), "RTT remote resume detected!!", 28);
                      *(v73 + 17) = 0;
                      (*(*v73 + 64))(v73, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                      *(v73 + 17) = 0;
                      (*(*v100 + 248))(v100, 1);
                    }
                  }
                }

                v72 = *(v50 + 64);
LABEL_100:
                *(v50 + 68) = v68;
                if (v100)
                {
                  v134 = 0;
                  memset(v133, 0, sizeof(v133));
                  v74 = v72 - 1;
                  if (v74 > 3)
                  {
                    v75 = 0;
                  }

                  else
                  {
                    v75 = dword_1E51701B0[v74];
                  }

                  v76 = *(a1 + 480);
                  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v135, (a1 + 152));
                  BambiCallHoldResumeIndicationEvent::BambiCallHoldResumeIndicationEvent(v133, (v76 & 0xFFFFFFFE) == 2, v68, v75, &v135);
                  if (v136)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v136);
                  }

                  (*(*v100 + 16))(v100, v133);
                  *v133 = &unk_1F5EC4090;
                  if (*&v133[24])
                  {
                    std::__shared_weak_count::__release_weak(*&v133[24]);
                  }

                  v72 = *(v50 + 64);
                }

                v77 = *(a1 + 192);
                if (v72 == 2)
                {
                  if (v77[584])
                  {
                    v78 = v77 + 152;
                    goto LABEL_118;
                  }
                }

                else if (v72 == 6 && (v77[1856] & 1) != 0)
                {
                  v78 = v77 + 1496;
                  goto LABEL_118;
                }

                if (v77[1328] != 1)
                {
                  goto LABEL_119;
                }

                v78 = v77 + 1032;
LABEL_118:
                *(v50 + 72) = *(v78 + 13);
LABEL_119:
                v79 = *(a1 + 384);
                if (!v79)
                {
                  v80 = 0;
LABEL_126:
                  if (v21)
                  {
                    goto LABEL_127;
                  }

                  v21 = 0;
                  goto LABEL_129;
                }

                v80 = std::__shared_weak_count::lock(v79);
                if (!v80)
                {
                  goto LABEL_126;
                }

                v81 = *(a1 + 392);
                if (*(v81 + 308) != 2)
                {
                  goto LABEL_126;
                }

                v82 = *(a1 + 376);
                if (!v82)
                {
                  goto LABEL_126;
                }

                if (*(v82 + 4455) < 0)
                {
                  std::string::__init_copy_ctor_external(v133, *(v82 + 4432), *(v82 + 4440));
                }

                else
                {
                  v83 = v82 + 4432;
                  *v133 = *v83;
                  *&v133[16] = *(v83 + 16);
                }

                v88 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v81 + 280, v133);
                v89 = v81 + 288 != v88 && *(v88 + 56) == 2;
                if ((v133[23] & 0x80000000) != 0)
                {
                  operator delete(*v133);
                }

                v90 = v21 | v54;
                if (!v89)
                {
                  v90 = v21;
                }

                if (v90)
                {
LABEL_127:
                  BambiCall::updateMediaSettings(a1, v50);
                  v21 = 1;
                  goto LABEL_129;
                }

                v21 = 0;
LABEL_129:
                std::string::basic_string[abi:ne200100]<0>(v133, "HandleSdpOffer");
                BambiCall::activateMediaSessionIfAppropriate(a1, v50, v133);
                if ((v133[23] & 0x80000000) != 0)
                {
                  operator delete(*v133);
                }

                v129 = 0u;
                v130 = 0u;
                v131 = 0u;
                v132 = 0u;
                v126 = &unk_1F5EBDEF8;
                v127 = &_bambiDomain;
                v128 = 0;
                if (v80)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v80);
                }

                ImsResult::operator=(&v101, &v126);
                ImsResult::~ImsResult(&v126);
                v129 = 0u;
                v130 = 0u;
                v131 = 0u;
                v132 = 0u;
                v126 = &unk_1F5EBDEF8;
                v127 = &_bambiDomain;
                v128 = 0;
                v14 = v99;
                if (v102 != &_bambiDomain)
                {
                  ImsResult::~ImsResult(v84);
                  break;
                }

                v85 = v103;
                ImsResult::~ImsResult(v84);
                if (!v85)
                {
                  v86 = v49[1];
                  if (v86)
                  {
                    do
                    {
                      v87 = v86;
                      v86 = *v86;
                    }

                    while (v86);
                  }

                  else
                  {
                    do
                    {
                      v87 = v49[2];
                      v44 = *v87 == v49;
                      v49 = v87;
                    }

                    while (!v44);
                  }

                  v49 = v87;
                  if (v87 != v98)
                  {
                    continue;
                  }
                }

                break;
              }
            }

            ImsResult::operator=(v121, &v101);
            ImsResult::~ImsResult(&v101);
            v34 = v96;
            if (!v96)
            {
              goto LABEL_158;
            }

            goto LABEL_157;
          }

          v92 = *(a1 + 8);
          v91 = a1 + 8;
          v93 = (*(v92 + 56))(v91);
          (*(*v91 + 16))(v91, v93);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v93 + 8), "handleSdpOffer: couldn't create answer for offer", 48);
          *(v93 + 17) = 0;
          v27 = (v93 + 17);
          (*(*v93 + 64))(v93, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v28 = 488;
        }

        else
        {
          v46 = *(a1 + 8);
          v45 = a1 + 8;
          v47 = (*(v46 + 56))(v45);
          (*(*v45 + 16))(v45, v47);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), "handleSdpOffer: fork is null", 28);
          *(v47 + 17) = 0;
          v27 = (v47 + 17);
          (*(*v47 + 64))(v47, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v28 = 481;
        }

LABEL_28:
        *v27 = 0;
        *(a4 + 24) = 0u;
        *(a4 + 40) = 0u;
        *(a4 + 56) = 0u;
        *(a4 + 72) = 0u;
        *a4 = &unk_1F5EBDEF8;
        *(a4 + 8) = &SipResultDomain::_domain;
        *(a4 + 16) = v28;
        goto LABEL_163;
      }

LABEL_27:
      v25 = *(a1 + 8);
      v24 = a1 + 8;
      v26 = (*(v25 + 48))(v24);
      (*(*v24 + 16))(v24, v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "Received a new offer/answer, but we don't have any media streams to handle it!", 78);
      *(v26 + 17) = 0;
      v27 = (v26 + 17);
      (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v28 = 491;
      goto LABEL_28;
    }
  }

  else if (*(a1 + 1529))
  {
    goto LABEL_27;
  }

  v29 = (*(*(a1 + 8) + 64))(a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "handleSdpOffer: initializing MT media session", 45);
  *(v29 + 17) = 0;
  (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v29 + 17) = 0;
  v30 = *a2;
  for (k = *(*a2 + 448); k != *(*a2 + 456); k += 200)
  {
    if (*(k + 12) == 3)
    {
      *(a1 + 1784) = 1;
      break;
    }
  }

  v32 = a2[1];
  v119[0] = v30;
  v119[1] = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCall::initializeMediaForMTSession(a1, v119, &v126);
  ImsResult::operator=(v121, &v126);
  ImsResult::~ImsResult(&v126);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(a1 + 384);
  if (!v33)
  {
    goto LABEL_158;
  }

  v34 = std::__shared_weak_count::lock(v33);
  if (!v34)
  {
    goto LABEL_158;
  }

  v35 = *(a1 + 376);
  if (v35 && *(v35 + 1144) == 1)
  {
    v36 = v34;
    v37 = *(a1 + 192);
    v113 = &_bambiDomain;
    v114 = 0;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v112 = &unk_1F5EBDEF8;
    v38 = *(v37 + 1904);
    v39 = (v37 + 1912);
    if (v38 != (v37 + 1912))
    {
      while (1)
      {
        BambiCall::checkForPause(a1, v38[5], v14, 0);
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v126 = &unk_1F5EBDEF8;
        v127 = &_bambiDomain;
        v128 = 0;
        ImsResult::operator=(&v112, &v126);
        ImsResult::~ImsResult(&v126);
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v126 = &unk_1F5EBDEF8;
        v127 = &_bambiDomain;
        v128 = 0;
        if (v113 != &_bambiDomain)
        {
          break;
        }

        v41 = v114;
        ImsResult::~ImsResult(v40);
        if (!v41)
        {
          v42 = v38[1];
          if (v42)
          {
            do
            {
              v43 = v42;
              v42 = *v42;
            }

            while (v42);
          }

          else
          {
            do
            {
              v43 = v38[2];
              v44 = *v43 == v38;
              v38 = v43;
            }

            while (!v44);
          }

          v38 = v43;
          if (v43 != v39)
          {
            continue;
          }
        }

        goto LABEL_154;
      }

      ImsResult::~ImsResult(v40);
    }

LABEL_154:
    ImsResult::~ImsResult(&v112);
    v34 = v36;
  }

LABEL_157:
  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
LABEL_158:
  v94 = *a2;
  v95 = a2[1];
  if (v95)
  {
    atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCall::handleRttInSDP(a1, *(v94 + 448), *(v94 + 456));
  if (v95)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v95);
  }

  ImsResult::ImsResult(a4, v121);
LABEL_163:
  ImsResult::~ImsResult(v121);
}