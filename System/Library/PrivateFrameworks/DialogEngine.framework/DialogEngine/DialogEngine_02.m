void sub_10001E5A8(_Unwind_Exception *a1)
{
  if (STACK[0x338])
  {
    sub_100005EB4(STACK[0x338]);
  }

  siri::dialogengine::Context::~Context(&STACK[0x340]);
  _Unwind_Resume(a1);
}

uint64_t sub_10001F52C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v144 = v3;
  v4 = v0;
  siri::dialogengine::GetTemplateDirs();
  siri::dialogengine::Context::Context();
  v175.__r_.__value_.__r.__words[0] = &v171;
  sub_10000C88C(&v175);
  siri::dialogengine::PatternRegistry::GetSchema();
  if (v162)
  {
    sub_10000143C(&v161, "<?xml version=1.0 encoding=UTF-8 standalone=no?>\n");
    std::string::append(&v161, "<pattern xmlns=urn:apple:names:siri:pattern:1.0 ");
    siri::dialogengine::PatternSchema::GetName(&v169, v162);
    v5 = std::string::insert(&v169, 0, "type=");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v170.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v170.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v170, " id=");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v174.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v174.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = *(v2 + 23);
    if (v9 >= 0)
    {
      v10 = v2;
    }

    else
    {
      v10 = *v2;
    }

    if (v9 >= 0)
    {
      v11 = *(v2 + 23);
    }

    else
    {
      v11 = *(v2 + 8);
    }

    v12 = std::string::append(&v174, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v175.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v175.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v175, ">\n\n");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v171.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v171.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v171;
    }

    else
    {
      v16 = v171.__r_.__value_.__r.__words[0];
    }

    if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v171.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v171.__r_.__value_.__l.__size_;
    }

    std::string::append(&v161, v16, size);
    if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v171.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v175.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v174.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v170.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v169.__r_.__value_.__l.__data_);
    }

    siri::dialogengine::StringSplit();
    if (v159 == v160)
    {
      sub_10000143C(__dst, &unk_10006B9FB);
    }

    else if (*(v160 - 1) < 0)
    {
      sub_100001C60(__dst, *(v160 - 24), *(v160 - 16));
    }

    else
    {
      v18 = *(v160 - 24);
      v158 = *(v160 - 8);
      *__dst = v18;
    }

    v154 = 0;
    v155 = 0;
    v156 = 0;
    memset(v153, 0, sizeof(v153));
    if (*(v2 + 23) >= 0)
    {
      v20 = *(v2 + 23);
    }

    else
    {
      v20 = *(v2 + 8);
    }

    sub_1000094C0(v151, v20 + 7);
    if (v152 >= 0)
    {
      v21 = v151;
    }

    else
    {
      v21 = v151[0];
    }

    if (v20)
    {
      if (*(v2 + 23) >= 0)
      {
        v22 = v2;
      }

      else
      {
        v22 = *v2;
      }

      memmove(v21, v22, v20);
    }

    strcpy(v21 + v20, "_Dialog");
    if (*(v2 + 23) >= 0)
    {
      v23 = *(v2 + 23);
    }

    else
    {
      v23 = *(v2 + 8);
    }

    sub_1000094C0(v149, v23 + 7);
    if (v150 >= 0)
    {
      v24 = v149;
    }

    else
    {
      v24 = v149[0];
    }

    if (v23)
    {
      if (*(v2 + 23) >= 0)
      {
        v25 = v2;
      }

      else
      {
        v25 = *v2;
      }

      memmove(v24, v25, v23);
    }

    strcpy(v24 + v23, "_Visual");
    siri::dialogengine::PatternSchema::GetGroups(&v175, v162);
    v27 = v175.__r_.__value_.__l.__size_;
    for (i = v175.__r_.__value_.__r.__words[0]; i != v27; i += 16)
    {
      v29 = *i;
      v28 = *(i + 8);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v29 + 40))(&v171, v29);
      v30 = sub_1000255A0(&v171);
      v174.__r_.__value_.__r.__words[0] = &v171;
      sub_100007C5C(&v174);
      if ((v30 & 1) == 0)
      {
        goto LABEL_164;
      }

      siri::dialogengine::PatternSchemaGroup::GetName(&v170, v29);
      v31 = std::string::insert(&v170, 0, "  <group name=");
      v32 = *&v31->__r_.__value_.__l.__data_;
      v174.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v174.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v174, ">\n");
      v34 = *&v33->__r_.__value_.__l.__data_;
      v171.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v171.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v171;
      }

      else
      {
        v35 = v171.__r_.__value_.__r.__words[0];
      }

      if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(v171.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = v171.__r_.__value_.__l.__size_;
      }

      std::string::append(&v161, v35, v36);
      if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v171.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v174.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v170.__r_.__value_.__l.__data_);
      }

      if (v158 >= 0)
      {
        v37 = HIBYTE(v158);
      }

      else
      {
        v37 = __dst[1];
      }

      sub_1000094C0(&v171, v37 + 1);
      if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &v171;
      }

      else
      {
        v38 = v171.__r_.__value_.__r.__words[0];
      }

      if (v37)
      {
        if (v158 >= 0)
        {
          v39 = __dst;
        }

        else
        {
          v39 = __dst[0];
        }

        memmove(v38, v39, v37);
      }

      *(&v38->__r_.__value_.__l.__data_ + v37) = 35;
      siri::dialogengine::PatternSchemaGroup::GetName(&v174, v29);
      if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v174;
      }

      else
      {
        v40 = v174.__r_.__value_.__r.__words[0];
      }

      if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v174.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v174.__r_.__value_.__l.__size_;
      }

      v42 = std::string::append(&v171, v40, v41);
      v145 = v42->__r_.__value_.__r.__words[0];
      v43 = SHIBYTE(v42->__r_.__value_.__r.__words[2]);
      v42->__r_.__value_.__r.__words[0] = 0;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v174.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v171.__r_.__value_.__l.__data_);
      }

      (*(*v29 + 56))(&v171, v29);
      v44 = *&v171.__r_.__value_.__l.__data_;
      v174.__r_.__value_.__r.__words[0] = &v171;
      sub_100007C5C(&v174);
      if (*(&v44 + 1) != v44)
      {
        (*(*v29 + 56))(&v171, v29);
        v46 = *v171.__r_.__value_.__l.__data_;
        v45 = *(v171.__r_.__value_.__r.__words[0] + 8);
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v174.__r_.__value_.__r.__words[0] = &v171;
        sub_100007C5C(&v174);
        siri::dialogengine::PatternSchemaComponent::GetUsage(&v171, v46);
        v47 = sub_1000255A0(&v171);
        v174.__r_.__value_.__r.__words[0] = &v171;
        sub_100007C5C(&v174);
        if (!v47)
        {
          goto LABEL_126;
        }

        std::operator+<char>();
        v48 = std::string::append(&v169, "#");
        v49 = *&v48->__r_.__value_.__l.__data_;
        v170.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
        *&v170.__r_.__value_.__l.__data_ = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        siri::dialogengine::PatternSchemaGroup::GetName(&__p, v29);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v51 = __p.__r_.__value_.__l.__size_;
        }

        v52 = std::string::append(&v170, p_p, v51);
        v53 = *&v52->__r_.__value_.__l.__data_;
        v174.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
        *&v174.__r_.__value_.__l.__data_ = v53;
        v52->__r_.__value_.__l.__size_ = 0;
        v52->__r_.__value_.__r.__words[2] = 0;
        v52->__r_.__value_.__r.__words[0] = 0;
        v54 = std::string::append(&v174, "*/>\n");
        v55 = *&v54->__r_.__value_.__l.__data_;
        v171.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
        *&v171.__r_.__value_.__l.__data_ = v55;
        v54->__r_.__value_.__l.__size_ = 0;
        v54->__r_.__value_.__r.__words[2] = 0;
        v54->__r_.__value_.__r.__words[0] = 0;
        if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v171;
        }

        else
        {
          v56 = v171.__r_.__value_.__r.__words[0];
        }

        if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = HIBYTE(v171.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v57 = v171.__r_.__value_.__l.__size_;
        }

        std::string::append(&v161, v56, v57);
        if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v171.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v174.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v170.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v169.__r_.__value_.__l.__data_);
        }

        siri::dialogengine::PatternSchemaGroup::GetName(&v174, v29);
        *&v171.__r_.__value_.__l.__data_ = *&v174.__r_.__value_.__l.__data_;
        v58 = v174.__r_.__value_.__r.__words[2];
        memset(&v174, 0, sizeof(v174));
        v171.__r_.__value_.__r.__words[2] = v58;
        v172 = v46;
        v173 = v45;
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100025654(&v154, &v171);
        if (v173)
        {
          sub_100005EB4(v173);
        }

        if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v171.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v174.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_126:
          if (!v45)
          {
            goto LABEL_128;
          }

LABEL_127:
          sub_100005EB4(v45);
          goto LABEL_128;
        }

        operator delete(v174.__r_.__value_.__l.__data_);
        if (v45)
        {
          goto LABEL_127;
        }
      }

LABEL_128:
      (*(*v29 + 72))(&v171, v29);
      v59 = *&v171.__r_.__value_.__l.__data_;
      v174.__r_.__value_.__r.__words[0] = &v171;
      sub_100007C5C(&v174);
      if (*(&v59 + 1) == v59)
      {
        goto LABEL_163;
      }

      (*(*v29 + 72))(&v171, v29);
      v61 = *v171.__r_.__value_.__l.__data_;
      v60 = *(v171.__r_.__value_.__r.__words[0] + 8);
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v174.__r_.__value_.__r.__words[0] = &v171;
      sub_100007C5C(&v174);
      siri::dialogengine::PatternSchemaComponent::GetUsage(&v171, v61);
      v62 = sub_1000255A0(&v171);
      v174.__r_.__value_.__r.__words[0] = &v171;
      sub_100007C5C(&v174);
      if (!v62)
      {
        goto LABEL_161;
      }

      std::operator+<char>();
      v63 = std::string::append(&v169, "#");
      v64 = *&v63->__r_.__value_.__l.__data_;
      v170.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
      *&v170.__r_.__value_.__l.__data_ = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      siri::dialogengine::PatternSchemaGroup::GetName(&__p, v29);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = &__p;
      }

      else
      {
        v65 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v66 = __p.__r_.__value_.__l.__size_;
      }

      v67 = std::string::append(&v170, v65, v66);
      v68 = *&v67->__r_.__value_.__l.__data_;
      v174.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
      *&v174.__r_.__value_.__l.__data_ = v68;
      v67->__r_.__value_.__l.__size_ = 0;
      v67->__r_.__value_.__r.__words[2] = 0;
      v67->__r_.__value_.__r.__words[0] = 0;
      v69 = std::string::append(&v174, "*/>\n");
      v70 = *&v69->__r_.__value_.__l.__data_;
      v171.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
      *&v171.__r_.__value_.__l.__data_ = v70;
      v69->__r_.__value_.__l.__size_ = 0;
      v69->__r_.__value_.__r.__words[2] = 0;
      v69->__r_.__value_.__r.__words[0] = 0;
      if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = &v171;
      }

      else
      {
        v71 = v171.__r_.__value_.__r.__words[0];
      }

      if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = HIBYTE(v171.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v72 = v171.__r_.__value_.__l.__size_;
      }

      std::string::append(&v161, v71, v72);
      if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v171.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v174.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v170.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v169.__r_.__value_.__l.__data_);
      }

      siri::dialogengine::PatternSchemaGroup::GetName(&v174, v29);
      *&v171.__r_.__value_.__l.__data_ = *&v174.__r_.__value_.__l.__data_;
      v73 = v174.__r_.__value_.__r.__words[2];
      memset(&v174, 0, sizeof(v174));
      v171.__r_.__value_.__r.__words[2] = v73;
      v172 = v61;
      v173 = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100025654(v153, &v171);
      if (v173)
      {
        sub_100005EB4(v173);
      }

      if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v171.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v174.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_161:
        if (!v60)
        {
          goto LABEL_163;
        }

LABEL_162:
        sub_100005EB4(v60);
        goto LABEL_163;
      }

      operator delete(v174.__r_.__value_.__l.__data_);
      if (v60)
      {
        goto LABEL_162;
      }

LABEL_163:
      std::string::append(&v161, "  </group>\n\n");
      if (v43 < 0)
      {
        operator delete(v145);
        if (!v28)
        {
          continue;
        }

LABEL_165:
        sub_100005EB4(v28);
        continue;
      }

LABEL_164:
      if (v28)
      {
        goto LABEL_165;
      }
    }

    v171.__r_.__value_.__r.__words[0] = &v175;
    sub_100007C5C(&v171);
    std::string::append(&v161, "</pattern>\n");
    v74 = v162;
    v75 = v163;
    if (v163)
    {
      atomic_fetch_add_explicit(&v163->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10000143C(&v175, "<?xml version=1.0 encoding=UTF-8 standalone=no?>\n");
    std::operator+<char>();
    v76 = std::string::append(&v174, ">\n\n");
    v77 = *&v76->__r_.__value_.__l.__data_;
    v171.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
    *&v171.__r_.__value_.__l.__data_ = v77;
    v76->__r_.__value_.__l.__size_ = 0;
    v76->__r_.__value_.__r.__words[2] = 0;
    v76->__r_.__value_.__r.__words[0] = 0;
    if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v78 = &v171;
    }

    else
    {
      v78 = v171.__r_.__value_.__r.__words[0];
    }

    if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = HIBYTE(v171.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v79 = v171.__r_.__value_.__l.__size_;
    }

    std::string::append(&v175, v78, v79);
    if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v171.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v174.__r_.__value_.__l.__data_);
    }

    v146 = v74;
    siri::dialogengine::PatternSchema::GetRequiredParameters(&v171, v74);
    v80 = v171.__r_.__value_.__r.__words[2];
    sub_100005E58(&v171, v171.__r_.__value_.__l.__size_);
    if (v80)
    {
      std::string::append(&v175, "  <parameters>\n");
      siri::dialogengine::PatternSchema::GetRequiredParameters(&v174, v146);
      v81 = v174.__r_.__value_.__r.__words[0];
      if (v174.__r_.__value_.__l.__data_ != &v174.__r_.__value_.__r.__words[1])
      {
        do
        {
          sub_100005C00(&v171, (v81 + 32));
          siri::dialogengine::PropertyBase::GetType(&v170, v172);
          if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v170.__r_.__value_.__l.__size_ == 15)
            {
              v82 = v170.__r_.__value_.__r.__words[0];
LABEL_193:
              v83 = v82->__r_.__value_.__r.__words[0];
              v84 = *(v82->__r_.__value_.__r.__words + 7);
              v85 = v83 == 0x4F2E676F6C616964 && v84 == 0x5D5B7463656A624FLL;
              if (v85)
              {
                std::string::append(&v175, "    <!-- You must declare the type of your items array in the line below -->\n");
                std::string::assign(&v170, &unk_10006B9FB);
              }
            }
          }

          else if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) == 15)
          {
            v82 = &v170;
            goto LABEL_193;
          }

          siri::dialogengine::PropertyBase::GetName(&v165, v172);
          v86 = std::string::insert(&v165, 0, "    <parameter name=");
          v87 = *&v86->__r_.__value_.__l.__data_;
          v166.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
          *&v166.__r_.__value_.__l.__data_ = v87;
          v86->__r_.__value_.__l.__size_ = 0;
          v86->__r_.__value_.__r.__words[2] = 0;
          v86->__r_.__value_.__r.__words[0] = 0;
          v88 = std::string::append(&v166, " type=");
          v89 = *&v88->__r_.__value_.__l.__data_;
          v167.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
          *&v167.__r_.__value_.__l.__data_ = v89;
          v88->__r_.__value_.__l.__size_ = 0;
          v88->__r_.__value_.__r.__words[2] = 0;
          v88->__r_.__value_.__r.__words[0] = 0;
          if ((v170.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v90 = &v170;
          }

          else
          {
            v90 = v170.__r_.__value_.__r.__words[0];
          }

          if ((v170.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v91 = HIBYTE(v170.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v91 = v170.__r_.__value_.__l.__size_;
          }

          v92 = std::string::append(&v167, v90, v91);
          v93 = *&v92->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v93;
          v92->__r_.__value_.__l.__size_ = 0;
          v92->__r_.__value_.__r.__words[2] = 0;
          v92->__r_.__value_.__r.__words[0] = 0;
          v94 = std::string::append(&__p, "/>\n");
          v95 = *&v94->__r_.__value_.__l.__data_;
          v169.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
          *&v169.__r_.__value_.__l.__data_ = v95;
          v94->__r_.__value_.__l.__size_ = 0;
          v94->__r_.__value_.__r.__words[2] = 0;
          v94->__r_.__value_.__r.__words[0] = 0;
          if ((v169.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v96 = &v169;
          }

          else
          {
            v96 = v169.__r_.__value_.__r.__words[0];
          }

          if ((v169.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v97 = HIBYTE(v169.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v97 = v169.__r_.__value_.__l.__size_;
          }

          std::string::append(&v175, v96, v97);
          if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v169.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v167.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v166.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v165.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v170.__r_.__value_.__l.__data_);
          }

          if (v173)
          {
            sub_100005EB4(v173);
          }

          if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v171.__r_.__value_.__l.__data_);
          }

          v98 = *(v81 + 8);
          if (v98)
          {
            do
            {
              v99 = v98;
              v98 = v98->__r_.__value_.__r.__words[0];
            }

            while (v98);
          }

          else
          {
            do
            {
              v99 = *(v81 + 16);
              v85 = v99->__r_.__value_.__r.__words[0] == v81;
              v81 = v99;
            }

            while (!v85);
          }

          v81 = v99;
        }

        while (v99 != &v174.__r_.__value_.__r.__words[1]);
      }

      sub_100005E58(&v174, v174.__r_.__value_.__l.__size_);
      siri::dialogengine::PatternSchema::GetComputedParameters(&v174, v146);
      v100 = v174.__r_.__value_.__r.__words[0];
      if (v174.__r_.__value_.__l.__data_ != &v174.__r_.__value_.__r.__words[1])
      {
        do
        {
          sub_100005C00(&v171, (v100 + 32));
          siri::dialogengine::PropertyBase::GetName(&v166, v172);
          v101 = std::string::insert(&v166, 0, "    <parameter name=");
          v102 = *&v101->__r_.__value_.__l.__data_;
          v167.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
          *&v167.__r_.__value_.__l.__data_ = v102;
          v101->__r_.__value_.__l.__size_ = 0;
          v101->__r_.__value_.__r.__words[2] = 0;
          v101->__r_.__value_.__r.__words[0] = 0;
          v103 = std::string::append(&v167, " type=");
          v104 = *&v103->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v104;
          v103->__r_.__value_.__l.__size_ = 0;
          v103->__r_.__value_.__r.__words[2] = 0;
          v103->__r_.__value_.__r.__words[0] = 0;
          siri::dialogengine::PropertyBase::GetType(&v165, v172);
          if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v105 = &v165;
          }

          else
          {
            v105 = v165.__r_.__value_.__r.__words[0];
          }

          if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v106 = HIBYTE(v165.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v106 = v165.__r_.__value_.__l.__size_;
          }

          v107 = std::string::append(&__p, v105, v106);
          v108 = *&v107->__r_.__value_.__l.__data_;
          v169.__r_.__value_.__r.__words[2] = v107->__r_.__value_.__r.__words[2];
          *&v169.__r_.__value_.__l.__data_ = v108;
          v107->__r_.__value_.__l.__size_ = 0;
          v107->__r_.__value_.__r.__words[2] = 0;
          v107->__r_.__value_.__r.__words[0] = 0;
          v109 = std::string::append(&v169, "/>\n");
          v110 = *&v109->__r_.__value_.__l.__data_;
          v170.__r_.__value_.__r.__words[2] = v109->__r_.__value_.__r.__words[2];
          *&v170.__r_.__value_.__l.__data_ = v110;
          v109->__r_.__value_.__l.__size_ = 0;
          v109->__r_.__value_.__r.__words[2] = 0;
          v109->__r_.__value_.__r.__words[0] = 0;
          if ((v170.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v111 = &v170;
          }

          else
          {
            v111 = v170.__r_.__value_.__r.__words[0];
          }

          if ((v170.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v112 = HIBYTE(v170.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v112 = v170.__r_.__value_.__l.__size_;
          }

          std::string::append(&v175, v111, v112);
          if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v170.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v169.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v165.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v167.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v166.__r_.__value_.__l.__data_);
          }

          if (v173)
          {
            sub_100005EB4(v173);
          }

          if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v171.__r_.__value_.__l.__data_);
          }

          v113 = *(v100 + 8);
          if (v113)
          {
            do
            {
              v114 = v113;
              v113 = v113->__r_.__value_.__r.__words[0];
            }

            while (v113);
          }

          else
          {
            do
            {
              v114 = *(v100 + 16);
              v85 = v114->__r_.__value_.__r.__words[0] == v100;
              v100 = v114;
            }

            while (!v85);
          }

          v100 = v114;
        }

        while (v114 != &v174.__r_.__value_.__r.__words[1]);
      }

      sub_100005E58(&v174, v174.__r_.__value_.__l.__size_);
      std::string::append(&v175, "  </parameters>\n\n");
    }

    std::string::append(&v175, "</cat>\n");
    siri::dialogengine::CatIdToPath();
    siri::dialogengine::JoinPath();
    sub_10000143C(&v169, "_params.cat.xml");
    siri::dialogengine::JoinPath();
    if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v169.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v174.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v170.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v174, "Dialog CAT parameters file");
    v115 = sub_100027990(&v171, &v175, &v174);
    if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v174.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v171.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v175.__r_.__value_.__l.__data_);
    }

    if (v75)
    {
      sub_100005EB4(v75);
    }

    sub_10000143C(&v175, "<?xml version=1.0 encoding=UTF-8 standalone=no?>\n");
    std::operator+<char>();
    v116 = std::string::append(&v174, ">\n");
    v117 = *&v116->__r_.__value_.__l.__data_;
    v171.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
    *&v171.__r_.__value_.__l.__data_ = v117;
    v116->__r_.__value_.__l.__size_ = 0;
    v116->__r_.__value_.__r.__words[2] = 0;
    v116->__r_.__value_.__r.__words[0] = 0;
    if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v118 = &v171;
    }

    else
    {
      v118 = v171.__r_.__value_.__r.__words[0];
    }

    if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v119 = HIBYTE(v171.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v119 = v171.__r_.__value_.__l.__size_;
    }

    std::string::append(&v175, v118, v119);
    if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v171.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v174.__r_.__value_.__l.__data_);
    }

    v147 = v115;
    std::string::append(&v175, "  <all>\n");
    v120 = v154;
    for (j = v155; v120 != j; v120 = (v120 + 40))
    {
      sub_100005C00(&v171, v120);
      std::operator+<char>();
      v122 = std::string::append(&v170, ">\n");
      v123 = *&v122->__r_.__value_.__l.__data_;
      v174.__r_.__value_.__r.__words[2] = v122->__r_.__value_.__r.__words[2];
      *&v174.__r_.__value_.__l.__data_ = v123;
      v122->__r_.__value_.__l.__size_ = 0;
      v122->__r_.__value_.__r.__words[2] = 0;
      v122->__r_.__value_.__r.__words[0] = 0;
      if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v124 = &v174;
      }

      else
      {
        v124 = v174.__r_.__value_.__r.__words[0];
      }

      if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v125 = HIBYTE(v174.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v125 = v174.__r_.__value_.__l.__size_;
      }

      std::string::append(&v175, v124, v125);
      if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v174.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v170.__r_.__value_.__l.__data_);
      }

      siri::dialogengine::PatternSchemaComponent::GetFullExamples(&v170, v172);
      if (v170.__r_.__value_.__r.__words[0] == v170.__r_.__value_.__l.__size_)
      {
        sub_10000143C(&v174, &unk_10006B9FB);
      }

      else
      {
        siri::dialogengine::PatternSchemaComponent::GetFullExamples(&v169, v172);
        if (*(v169.__r_.__value_.__r.__words[0] + 23) < 0)
        {
          sub_100001C60(&v174, *v169.__r_.__value_.__l.__data_, *(v169.__r_.__value_.__r.__words[0] + 8));
        }

        else
        {
          v126 = *v169.__r_.__value_.__l.__data_;
          v174.__r_.__value_.__r.__words[2] = *(v169.__r_.__value_.__r.__words[0] + 16);
          *&v174.__r_.__value_.__l.__data_ = v126;
        }

        __p.__r_.__value_.__r.__words[0] = &v169;
        sub_100002260(&__p);
      }

      v169.__r_.__value_.__r.__words[0] = &v170;
      sub_100002260(&v169);
      siri::dialogengine::PatternSchemaComponent::GetFullUsage(&v170, v172);
      v127 = sub_1000255A0(&v170);
      v169.__r_.__value_.__r.__words[0] = &v170;
      sub_100007C5C(&v169);
      if (v127)
      {
        std::operator+<char>();
        v128 = std::string::append(&v169, "</content>\n");
        v129 = *&v128->__r_.__value_.__l.__data_;
        v170.__r_.__value_.__r.__words[2] = v128->__r_.__value_.__r.__words[2];
        *&v170.__r_.__value_.__l.__data_ = v129;
        v128->__r_.__value_.__l.__size_ = 0;
        v128->__r_.__value_.__r.__words[2] = 0;
        v128->__r_.__value_.__r.__words[0] = 0;
        if ((v170.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v130 = &v170;
        }

        else
        {
          v130 = v170.__r_.__value_.__r.__words[0];
        }

        if ((v170.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v131 = HIBYTE(v170.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v131 = v170.__r_.__value_.__l.__size_;
        }

        std::string::append(&v175, v130, v131);
        if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v170.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v169.__r_.__value_.__l.__data_);
        }
      }

      siri::dialogengine::PatternSchemaComponent::GetSupportingUsage(&v170, v172);
      v132 = sub_1000255A0(&v170);
      v169.__r_.__value_.__r.__words[0] = &v170;
      sub_100007C5C(&v169);
      if (v132)
      {
        std::operator+<char>();
        v133 = std::string::append(&v169, "</caption>\n");
        v134 = *&v133->__r_.__value_.__l.__data_;
        v170.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
        *&v170.__r_.__value_.__l.__data_ = v134;
        v133->__r_.__value_.__l.__size_ = 0;
        v133->__r_.__value_.__r.__words[2] = 0;
        v133->__r_.__value_.__r.__words[0] = 0;
        if ((v170.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v135 = &v170;
        }

        else
        {
          v135 = v170.__r_.__value_.__r.__words[0];
        }

        if ((v170.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v136 = HIBYTE(v170.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v136 = v170.__r_.__value_.__l.__size_;
        }

        std::string::append(&v175, v135, v136);
        if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v170.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v169.__r_.__value_.__l.__data_);
        }
      }

      std::string::append(&v175, "    </dialog>\n");
      if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v174.__r_.__value_.__l.__data_);
      }

      if (v173)
      {
        sub_100005EB4(v173);
      }

      if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v171.__r_.__value_.__l.__data_);
      }
    }

    std::string::append(&v175, "  </all>\n");
    std::string::append(&v175, "</cat>\n");
    siri::dialogengine::CatIdToPath();
    siri::dialogengine::JoinPath();
    sub_10000143C(&v169, "en.cat.xml");
    siri::dialogengine::JoinPath();
    if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v169.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v174.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v170.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v174, "Dialog CAT locale file");
    v137 = sub_100027990(&v171, &v175, &v174);
    if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v174.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v171.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v175.__r_.__value_.__l.__data_);
    }

    v138 = v163;
    v148[0] = v162;
    v148[1] = v163;
    if (v163)
    {
      atomic_fetch_add_explicit(&v163->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v139 = sub_10002579C(v144, v149, v148, v153);
    if (v138)
    {
      sub_100005EB4(v138);
    }

    sub_10000143C(&v174, ".patternxml");
    siri::dialogengine::PatternIdToPath();
    siri::dialogengine::JoinPath();
    if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v175.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v174.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v175, "Pattern file");
    v140 = sub_100027990(&v171, &v161, &v175);
    if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v175.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v171.__r_.__value_.__l.__data_);
    }

    if (v150 < 0)
    {
      operator delete(v149[0]);
    }

    if (v152 < 0)
    {
      operator delete(v151[0]);
    }

    v141 = v139 & v140;
    v142 = v147 & v137;
    v171.__r_.__value_.__r.__words[0] = v153;
    sub_10002A0B8(&v171);
    v171.__r_.__value_.__r.__words[0] = &v154;
    sub_10002A0B8(&v171);
    if (SHIBYTE(v158) < 0)
    {
      operator delete(__dst[0]);
    }

    v19 = v142 & v141;
    v171.__r_.__value_.__r.__words[0] = &v159;
    sub_100002260(&v171);
    if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v161.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::operator+<char>();
    sub_10000143C(&v175, &unk_10006B9FB);
    sub_1000498E0(v4, &v171, &v175.__r_.__value_.__l.__data_, 0);
    if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v175.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v171.__r_.__value_.__l.__data_);
    }

    v19 = 0;
  }

  if (v163)
  {
    sub_100005EB4(v163);
  }

  siri::dialogengine::Context::~Context(v164);
  return v19;
}

void sub_100020BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, char a39)
{
  if (*(v39 + 135) < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (*(v39 + 55) < 0)
  {
    operator delete(*(v40 - 208));
  }

  if (a38)
  {
    sub_100005EB4(a38);
  }

  siri::dialogengine::Context::~Context(&a39);
  _Unwind_Resume(a1);
}

BOOL sub_100021378()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v23 = v0;
  siri::dialogengine::GetTemplateDirs();
  siri::dialogengine::Context::Context();
  v35 = v28;
  sub_10000C88C(&v35);
  siri::dialogengine::PatternFile::LoadFromId();
  if (v39)
  {
    v37 = 0;
    v36 = 0;
    v35 = &v36;
    v38 = 0;
    siri::dialogengine::Context::GetRequestInfo(v28, v41);
    siri::dialogengine::RequestInfo::GetTemplateDirs(&v33, v28);
    siri::dialogengine::GetParamsForPattern();
    __p[0] = &v33;
    sub_10000C88C(__p);
    sub_10002A140(v28);
    siri::dialogengine::ParameterCollection::GetConflictingParameters(&v35, v41);
    v3 = v33;
    if (v33 != v34)
    {
      do
      {
        for (i = v3[9]; i; i = *i)
        {
          sub_100024C08(v28);
          v8 = sub_1000027F4(&v29, "The parameter '", 15);
          v9 = *(v3 + 55);
          if (v9 >= 0)
          {
            v10 = (v3 + 4);
          }

          else
          {
            v10 = v3[4];
          }

          if (v9 >= 0)
          {
            v11 = *(v3 + 55);
          }

          else
          {
            v11 = v3[5];
          }

          v12 = sub_1000027F4(v8, v10, v11);
          v13 = sub_1000027F4(v12, "' (", 3);
          siri::dialogengine::PropertyBase::GetType(__p, i[2]);
          if ((v27 & 0x80u) == 0)
          {
            v14 = __p;
          }

          else
          {
            v14 = __p[0];
          }

          if ((v27 & 0x80u) == 0)
          {
            v15 = v27;
          }

          else
          {
            v15 = __p[1];
          }

          v16 = sub_1000027F4(v13, v14, v15);
          sub_1000027F4(v16, ") is defined in multiple files with different types", 51);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }

          std::stringbuf::str();
          siri::dialogengine::LineNumberBase::GetFullPath(v24, (i[2] + 240));
          LineNumber = siri::dialogengine::LineNumberBase::GetLineNumber((i[2] + 240));
          sub_1000498E0(v23, __p, v24, LineNumber);
          if (v25 < 0)
          {
            operator delete(v24[0]);
          }

          if (v27 < 0)
          {
            operator delete(__p[0]);
          }

          v28[0] = v4;
          *(v28 + *(v4 - 3)) = v5;
          v29 = v6;
          if (v32 < 0)
          {
            operator delete(v31[7].__locale_);
          }

          std::locale::~locale(v31);
          std::iostream::~basic_iostream();
          std::ios::~ios();
        }

        v18 = v3[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v3[2];
            v20 = *v19 == v3;
            v3 = v19;
          }

          while (!v20);
        }

        v3 = v19;
      }

      while (v19 != v34);
    }

    siri::dialogengine::ParameterCollection::GetUniqueParameters(&v35, v41);
    sub_10000B478(v28, v2);
    sub_100005E58(v28, v28[1]);
    sub_10000C75C(&v33, v34[0]);
    sub_10000C75C(&v35, v36);
    v21 = 1;
  }

  else
  {
    std::operator+<char>();
    sub_10000143C(&v35, &unk_10006B9FB);
    v21 = sub_1000498E0(v23, v28, &v35, 0);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }
  }

  if (v40)
  {
    sub_100005EB4(v40);
  }

  siri::dialogengine::Context::~Context(v41);
  return v21;
}

void sub_10002180C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (STACK[0x278])
  {
    sub_100005EB4(STACK[0x278]);
  }

  siri::dialogengine::Context::~Context(&STACK[0x280]);
  _Unwind_Resume(a1);
}

void sub_10002192C(uint64_t a1, siri::dialogengine::ValidationEntry *this, const void **a3)
{
  siri::dialogengine::ValidationEntry::GetText(__p, this);
  LineNumber = siri::dialogengine::LineNumberBase::GetLineNumber(this);
  sub_1000498E0(a1, __p, a3, LineNumber);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10002199C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000219B8(uint64_t a1, siri::dialogengine::ValidationEntry *this, const void **a3)
{
  siri::dialogengine::ValidationEntry::GetText(__p, this);
  LineNumber = siri::dialogengine::LineNumberBase::GetLineNumber(this);
  sub_100049CB4(a1, __p, a3, LineNumber);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100021A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100021A44(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) || *(a1 + 64))
  {
    std::ios_base::getloc((&std::cout + std::cout.__vftable[-2].~basic_ostream_0));
    v4 = std::locale::use_facet(v30, &std::ctype<char>::id);
    (v4->__vftable[2].~facet_0)(v4, 10);
    std::locale::~locale(v30);
    std::ostream::put();
    std::ostream::flush();
    v5 = *(a1 + 64);
    if (v5)
    {
      std::to_string(&v28, v5);
      v6 = std::string::append(&v28, " validation warning(s) for ");
      v7 = *&v6->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      v8 = *(a1 + 23);
      if (v8 >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      if (v8 >= 0)
      {
        v10 = *(a1 + 23);
      }

      else
      {
        v10 = *(a1 + 8);
      }

      v11 = std::string::append(&v29, v9, v10);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v31 = v11->__r_.__value_.__r.__words[2];
      *&v30[0].__locale_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      sub_100049CDC(a2, v30);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30[0].__locale_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v13 = *(a1 + 48);
      if (v13 != (a1 + 56))
      {
        do
        {
          sub_10000143C(v30, &unk_10006B9FB);
          sub_1000219B8(a2, (v13 + 4), &v30[0].__locale_);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[0].__locale_);
          }

          v14 = v13[1];
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
            do
            {
              v15 = v13[2];
              v16 = *v15 == v13;
              v13 = v15;
            }

            while (!v16);
          }

          v13 = v15;
        }

        while (v15 != (a1 + 56));
      }
    }

    v17 = *(a1 + 40);
    if (v17)
    {
      std::to_string(&v28, v17);
      v18 = std::string::append(&v28, " validation error(s) for ");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = *(a1 + 23);
      if (v20 >= 0)
      {
        v21 = a1;
      }

      else
      {
        v21 = *a1;
      }

      if (v20 >= 0)
      {
        v22 = *(a1 + 23);
      }

      else
      {
        v22 = *(a1 + 8);
      }

      v23 = std::string::append(&v29, v21, v22);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v31 = v23->__r_.__value_.__r.__words[2];
      *&v30[0].__locale_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      sub_100049CDC(a2, v30);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30[0].__locale_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v25 = *(a1 + 24);
      if (v25 != (a1 + 32))
      {
        do
        {
          sub_10000143C(v30, &unk_10006B9FB);
          sub_10002192C(a2, (v25 + 4), &v30[0].__locale_);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[0].__locale_);
          }

          v26 = v25[1];
          if (v26)
          {
            do
            {
              v27 = v26;
              v26 = *v26;
            }

            while (v26);
          }

          else
          {
            do
            {
              v27 = v25[2];
              v16 = *v27 == v25;
              v25 = v27;
            }

            while (!v16);
          }

          v25 = v27;
        }

        while (v27 != (a1 + 32));
      }
    }

    else
    {
      std::operator+<char>();
      sub_100049CDC(a2, v30);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30[0].__locale_);
      }
    }
  }
}

void sub_100021D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100021E7C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100074EA0;
  bzero(a1 + 3, 0x308uLL);
  sub_100021F80((a1 + 3));
  return a1;
}

void sub_100021F04(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100074EA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100021F80(uint64_t a1)
{
  v2 = siri::dialogengine::ValidationBase::ValidationBase(a1);
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0;
  sub_10000143C((v2 + 152), "6.1");
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 200) = a1 + 208;
  *(a1 + 216) = 0;
  *(a1 + 280) = 0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  siri::dialogengine::GroupPhrases::GroupPhrases((a1 + 312));
  *(a1 + 576) = 0u;
  *(a1 + 568) = a1 + 576;
  *(a1 + 600) = 0u;
  *(a1 + 592) = a1 + 600;
  *(a1 + 616) = a1 + 624;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 1;
  *(a1 + 680) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 768) = 0;
  return a1;
}

void sub_1000220A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v7 = *(v2 + 304);
  if (v7)
  {
    sub_100005EB4(v7);
  }

  sub_100005E58(v4, *(v2 + 280));
  v8 = *(v2 + 264);
  if (v8)
  {
    sub_100005EB4(v8);
  }

  v9 = *(v2 + 248);
  if (v9)
  {
    sub_100005EB4(v9);
  }

  v10 = *(v2 + 232);
  if (v10)
  {
    sub_100005EB4(v10);
  }

  sub_100022170(v3, *(v2 + 208));
  sub_100005F20(va);
  if (*(v2 + 175) < 0)
  {
    operator delete(*(v2 + 152));
  }

  if (*(v2 + 151) < 0)
  {
    operator delete(*(v2 + 128));
  }

  if (*(v2 + 127) < 0)
  {
    operator delete(*(v2 + 104));
  }

  if (*(v2 + 103) < 0)
  {
    operator delete(*(v2 + 80));
  }

  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  if (*(v2 + 55) < 0)
  {
    operator delete(*v5);
  }

  siri::dialogengine::ValidationBase::~ValidationBase(v2);
  _Unwind_Resume(a1);
}

void sub_100022170(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100022170(a1, *a2);
    sub_100022170(a1, a2[1]);
    sub_1000221CC((a2 + 4));

    operator delete(a2);
  }
}

void sub_1000221CC(uint64_t a1)
{
  sub_10000623C(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_100022220(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000222A8(result, a4);
  }

  return result;
}

void sub_100022288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000225AC(&a9);
  _Unwind_Resume(a1);
}

void sub_1000222A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_1000222F8(a1, a2);
  }

  sub_1000020B0();
}

void sub_1000222F8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_100001B50();
}

uint64_t sub_100022354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_1000223D0(a4 + v7, v6);
      v6 += 88;
      v7 += 88;
    }

    while (v6 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1000223B4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100061080(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000223D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (*(a2 + 39) < 0)
  {
    sub_100001C60((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
  }

  if (*(a2 + 63) < 0)
  {
    sub_100001C60((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
  }

  *a1 = off_100074EF0;
  v7 = (a1 + 64);
  if (*(a2 + 87) < 0)
  {
    sub_100001C60(v7, *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v8 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *v7 = v8;
  }

  return a1;
}

void sub_1000224D8(void **this)
{
  *this = off_100074EF0;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  siri::dialogengine::LineNumberBase::~LineNumberBase(this);
}

void sub_100022538(void **this)
{
  *this = off_100074EF0;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  siri::dialogengine::LineNumberBase::~LineNumberBase(this);

  operator delete();
}

void sub_1000225AC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 88;
      v7 = v4 - 88;
      v8 = v4 - 88;
      do
      {
        v9 = *v8;
        v8 -= 88;
        (*v9)(v7);
        v6 -= 88;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10002266C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000226F4(result, a4);
  }

  return result;
}

void sub_1000226D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000228CC(&a9);
  _Unwind_Resume(a1);
}

void sub_1000226F4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_100022730(a1, a2);
  }

  sub_1000020B0();
}

void sub_100022730(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100001B50();
}

uint64_t sub_100022778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_100022220(v4, *v6, *(v6 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(v6 + 8) - *v6) >> 3));
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_100022848(v8);
  return v4;
}

uint64_t sub_100022848(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100022880(a1);
  }

  return a1;
}

void sub_100022880(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 4;
    v3 = v1;
    sub_1000225AC(&v3);
  }
}

void sub_1000228CC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 4;
        v6 = v4;
        sub_1000225AC(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_100022940(uint64_t a1, const void **a2)
{
  result = *sub_1000229D8(a1, &v3, a2);
  if (!result)
  {
    sub_100022AE0();
  }

  return result;
}

void *sub_1000229D8(uint64_t a1, void *a2, const void **a3)
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

void sub_100022B6C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100022C00(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_100022B88(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_100001C60(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  *(__dst + 40) = 0u;
  *(__dst + 24) = 0u;
  *(__dst + 56) = 0u;
  *(__dst + 6) = __dst + 56;
  *(__dst + 11) = 0;
  *(__dst + 10) = 0;
  *(__dst + 9) = __dst + 80;
  return __dst;
}

void sub_100022C00(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_100022C60(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void sub_100022C60(uint64_t a1, uint64_t a2)
{
  sub_100022CD0(a2 + 72, *(a2 + 80));
  sub_100022CD0(a2 + 48, *(a2 + 56));
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_100022CD0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100022CD0(a1, *a2);
    sub_100022CD0(a1, a2[1]);
    (*a2[4])();

    operator delete(a2);
  }
}

uint64_t sub_100022D60(uint64_t a1)
{
  v1 = *sub_100022DF0(a1, &v3);
  if (!v1)
  {
    sub_100022E78();
  }

  return v1;
}

void *sub_100022DF0(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (v3)
  {
    do
    {
      while (1)
      {
        v5 = v3;
        if (!siri::dialogengine::operator<())
        {
          break;
        }

        v3 = *v5;
        v4 = v5;
        if (!*v5)
        {
          goto LABEL_9;
        }
      }

      if (!siri::dialogengine::operator<())
      {
        break;
      }

      v4 = v5 + 1;
      v3 = v5[1];
    }

    while (v3);
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_9:
  *a2 = v5;
  return v4;
}

uint64_t sub_100022EF0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      (*v2[4])();
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_100022F5C(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_100022FA8(a1, a2);
  sub_100022C60(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t *sub_100022FA8(uint64_t **a1, uint64_t *a2)
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
  sub_10002301C(v6, a2);
  return v3;
}

uint64_t *sub_10002301C(uint64_t *result, uint64_t *a2)
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

void sub_10002339C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10002339C(a1, *a2);
    sub_10002339C(a1, a2[1]);
    sub_100022C60(a1, (a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_100023408(unint64_t a1, uint64_t a2)
{
  sub_100024C08(v13);
  sub_1000027F4(&v14, "<th", 3);
  if (a1 >= 2)
  {
    sub_1000027F4(&v14, " colspan=", 10);
    v4 = std::ostream::operator<<();
    sub_1000027F4(v4, "", 1);
  }

  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v6 = sub_1000027F4(&v14, " class=", 8);
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    v10 = sub_1000027F4(v6, v8, v9);
    sub_1000027F4(v10, "", 1);
  }

  sub_1000027F4(&v14, ">", 1);
  std::stringbuf::str();
  v14 = v11;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100023644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000012E8(va);
  _Unwind_Resume(a1);
}

void sub_100023658(std::string *a1@<X8>)
{
  std::operator+<char>();
  v2 = std::string::append(&v3, " -->\n");
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_1000236CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000236E8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  sub_10000143C(a4, "<td");
  if (a1 >= 2)
  {
    std::to_string(&v26, a1);
    v8 = std::string::insert(&v26, 0, " colspan=");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v27, "");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v29 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v29 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v29 >= 0)
    {
      v13 = HIBYTE(v29);
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(a4, v12, v13);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  if (a2 >= 2)
  {
    std::to_string(&v26, a2);
    v14 = std::string::insert(&v26, 0, " rowspan=");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v27, "");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v29 = v16->__r_.__value_.__r.__words[2];
    *__p = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (v29 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (v29 >= 0)
    {
      v19 = HIBYTE(v29);
    }

    else
    {
      v19 = __p[1];
    }

    std::string::append(a4, v18, v19);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  v20 = *(a3 + 23);
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a3 + 8);
  }

  if (v20)
  {
    std::operator+<char>();
    v21 = std::string::append(&v27, "");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v29 = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (v29 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    if (v29 >= 0)
    {
      v24 = HIBYTE(v29);
    }

    else
    {
      v24 = __p[1];
    }

    std::string::append(a4, v23, v24);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a4, ">");
}

void sub_100023954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000239FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, std::string *a6@<X8>)
{
  a6->__r_.__value_.__r.__words[0] = 0;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a6, "\n  ");
  if (a5)
  {
    std::string::append(a6, "<span title=Multiple Allowed>&equiv;</span>&nbsp;");
  }

  sub_100024F68(a1, &v66);
  v12 = std::string::insert(&v66, 0, "<b>");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v67.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v67.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v67, "</b><br/>\n");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v69 = v14->__r_.__value_.__r.__words[2];
  v68 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v69 >= 0)
  {
    v16 = &v68;
  }

  else
  {
    v16 = v68;
  }

  if (v69 >= 0)
  {
    v17 = HIBYTE(v69);
  }

  else
  {
    v17 = *(&v68 + 1);
  }

  std::string::append(a6, v16, v17);
  if (SHIBYTE(v69) < 0)
  {
    operator delete(v68);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  v18 = *(a1 + 23);
  if (v18 < 0)
  {
    if (*(a1 + 8) != 3)
    {
LABEL_24:
      if (*a3 == a3[1])
      {
        return;
      }

      v20 = sub_10000143C(&v67, "Variants:");
      sub_1000250A8(v20, byte_100078688);
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      sub_100024F68(a4, &v67);
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = v67;
      v21 = *a3;
      v22 = a3[1];
      if (*a3 != v22)
      {
        do
        {
          sub_100024F68(v21, &v67);
          if (*(v21 + 23) < 0)
          {
            operator delete(*v21);
          }

          v23 = *&v67.__r_.__value_.__l.__data_;
          *(v21 + 16) = *(&v67.__r_.__value_.__l + 2);
          *v21 = v23;
          v24 = *(a4 + 23);
          if (v24 < 0)
          {
            if (*(a4 + 8))
            {
LABEL_36:
              v25 = *(v21 + 23);
              if (v25 >= 0)
              {
                v26 = *(v21 + 23);
              }

              else
              {
                v26 = *(v21 + 8);
              }

              v27 = *(a4 + 8);
              if (v24 >= 0)
              {
                v27 = *(a4 + 23);
              }

              if (v26 == v27)
              {
                v28 = v25 >= 0 ? v21 : *v21;
                v29 = v24 >= 0 ? a4 : *a4;
                if (!memcmp(v28, v29, v26))
                {
                  sub_1000250A8(v21, byte_1000786B8);
                  if (*(v21 + 23) < 0)
                  {
                    operator delete(*v21);
                  }

                  v30 = *&v67.__r_.__value_.__l.__data_;
                  *(v21 + 16) = *(&v67.__r_.__value_.__l + 2);
                  *v21 = v30;
                }
              }
            }
          }

          else if (*(a4 + 23))
          {
            goto LABEL_36;
          }

          v21 += 24;
        }

        while (v21 != v22);
      }

      sub_10000143C(&v66, ", ");
      siri::dialogengine::StringJoin();
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (v69 >= 0)
      {
        v31 = HIBYTE(v69);
      }

      else
      {
        v31 = *(&v68 + 1);
      }

      v32 = &v61;
      sub_1000094C0(&v61, v31 + 1);
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v32 = v61.__r_.__value_.__r.__words[0];
      }

      if (v31)
      {
        if (v69 >= 0)
        {
          v33 = &v68;
        }

        else
        {
          v33 = v68;
        }

        memmove(v32, v33, v31);
      }

      *(&v32->__r_.__value_.__l.__data_ + v31) = 32;
      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v67;
      }

      else
      {
        v34 = v67.__r_.__value_.__r.__words[0];
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v67.__r_.__value_.__l.__size_;
      }

      v36 = std::string::append(&v61, v34, size);
      v37 = *&v36->__r_.__value_.__l.__data_;
      v63 = v36->__r_.__value_.__r.__words[2];
      *__p = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      sub_1000250A8(__p, byte_1000786A0);
      v38 = std::string::insert(&v64, 0, "  ");
      v39 = *&v38->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      v40 = std::string::append(&v65, "\n");
      v41 = *&v40->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v66;
      }

      else
      {
        v42 = v66.__r_.__value_.__r.__words[0];
      }

      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v43 = v66.__r_.__value_.__l.__size_;
      }

      goto LABEL_77;
    }

    a1 = *a1;
  }

  else if (v18 != 3)
  {
    goto LABEL_24;
  }

  if (*a1 != 28225 || *(a1 + 2) != 121)
  {
    goto LABEL_24;
  }

  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a2 + 8))
    {
      return;
    }
  }

  else if (!*(a2 + 23))
  {
    return;
  }

  v44 = sub_10000143C(&v67, "Default:");
  sub_1000250A8(v44, byte_100078688);
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  sub_100024F68(a2, &v67);
  v45 = *(a4 + 23);
  if (v45 < 0)
  {
    v45 = *(a4 + 8);
  }

  if (v45)
  {
    sub_100024F68(a4, &v65);
    v46 = std::string::insert(&v65, 0, " - ");
    v47 = *&v46->__r_.__value_.__l.__data_;
    v66.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v66.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v66;
    }

    else
    {
      v48 = v66.__r_.__value_.__r.__words[0];
    }

    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = v66.__r_.__value_.__l.__size_;
    }

    std::string::append(&v67, v48, v49);
    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }
  }

  if (v69 >= 0)
  {
    v50 = HIBYTE(v69);
  }

  else
  {
    v50 = *(&v68 + 1);
  }

  v51 = &v61;
  sub_1000094C0(&v61, v50 + 1);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v51 = v61.__r_.__value_.__r.__words[0];
  }

  if (v50)
  {
    if (v69 >= 0)
    {
      v52 = &v68;
    }

    else
    {
      v52 = v68;
    }

    memmove(v51, v52, v50);
  }

  *(&v51->__r_.__value_.__l.__data_ + v50) = 32;
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = &v67;
  }

  else
  {
    v53 = v67.__r_.__value_.__r.__words[0];
  }

  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v54 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v54 = v67.__r_.__value_.__l.__size_;
  }

  v55 = std::string::append(&v61, v53, v54);
  v56 = *&v55->__r_.__value_.__l.__data_;
  v63 = v55->__r_.__value_.__r.__words[2];
  *__p = v56;
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  sub_1000250A8(__p, byte_1000786A0);
  v57 = std::string::insert(&v64, 0, "  ");
  v58 = *&v57->__r_.__value_.__l.__data_;
  v65.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
  *&v65.__r_.__value_.__l.__data_ = v58;
  v57->__r_.__value_.__l.__size_ = 0;
  v57->__r_.__value_.__r.__words[2] = 0;
  v57->__r_.__value_.__r.__words[0] = 0;
  v59 = std::string::append(&v65, "\n");
  v60 = *&v59->__r_.__value_.__l.__data_;
  v66.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
  *&v66.__r_.__value_.__l.__data_ = v60;
  v59->__r_.__value_.__l.__size_ = 0;
  v59->__r_.__value_.__r.__words[2] = 0;
  v59->__r_.__value_.__r.__words[0] = 0;
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = &v66;
  }

  else
  {
    v42 = v66.__r_.__value_.__r.__words[0];
  }

  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v43 = v66.__r_.__value_.__l.__size_;
  }

LABEL_77:
  std::string::append(a6, v42, v43);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69) < 0)
  {
    operator delete(v68);
  }
}

void sub_100024098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  if (*(v41 - 73) < 0)
  {
    operator delete(*(v41 - 96));
  }

  if (*(v40 + 23) < 0)
  {
    operator delete(*v40);
  }

  _Unwind_Resume(exception_object);
}

void sub_100024230(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v6 = *v2;
      v5 = *(v2 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      memset(&v19, 0, sizeof(v19));
      Usage = siri::dialogengine::PatternSchemaUsage::GetUsage(v6);
      if (Usage > 2)
      {
        if (Usage == 3)
        {
          sub_10000143C(&__p, "Default Off");
          sub_1000252F0(&__p, &v18);
        }

        else
        {
          if (Usage != 4)
          {
LABEL_11:
            std::string::assign(&v19, &unk_10006B9FB);
            goto LABEL_18;
          }

          sub_10000143C(&__p, "Not Allowed");
          sub_1000252F0(&__p, &v18);
        }
      }

      else if (Usage == 1)
      {
        sub_10000143C(&__p, "Required");
        sub_1000252F0(&__p, &v18);
      }

      else
      {
        if (Usage != 2)
        {
          goto LABEL_11;
        }

        sub_10000143C(&__p, "Default On");
        sub_1000252F0(&__p, &v18);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      v19 = v18;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_18:
      v8 = *(a2 + 23);
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(a2 + 8);
      }

      if (v8)
      {
        std::string::append(a2, "<br/>");
        siri::dialogengine::PatternSchemaUsage::GetCondition(&v18, v6);
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          size = v18.__r_.__value_.__l.__size_;
          operator delete(v18.__r_.__value_.__l.__data_);
          if (size)
          {
            goto LABEL_26;
          }
        }

        else if (*(&v18.__r_.__value_.__s + 23))
        {
          goto LABEL_26;
        }

        std::string::append(a2, "Else:<br/>");
      }

LABEL_26:
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v19;
      }

      else
      {
        v10 = v19.__r_.__value_.__r.__words[0];
      }

      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v11 = v19.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v10, v11);
      siri::dialogengine::PatternSchemaUsage::GetCondition(&v18, v6);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        v12 = v18.__r_.__value_.__l.__size_;
        operator delete(v18.__r_.__value_.__l.__data_);
        if (!v12)
        {
          goto LABEL_46;
        }
      }

      else if (!*(&v18.__r_.__value_.__s + 23))
      {
        goto LABEL_46;
      }

      siri::dialogengine::PatternSchemaUsage::GetCondition(&__p, v6);
      v13 = std::string::insert(&__p, 0, "<br/>If ");
      v14 = *&v13->__r_.__value_.__l.__data_;
      v18.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v18.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v18;
      }

      else
      {
        v15 = v18.__r_.__value_.__r.__words[0];
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v16 = v18.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v15, v16);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_46:
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
        if (!v5)
        {
          goto LABEL_49;
        }

LABEL_48:
        sub_100005EB4(v5);
        goto LABEL_49;
      }

      if (v5)
      {
        goto LABEL_48;
      }

LABEL_49:
      v2 += 16;
    }

    while (v2 != v3);
  }
}

void sub_10002451C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (v29)
  {
    sub_100005EB4(v29);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000245B0(unint64_t a1, uint64_t *a2)
{
  sub_100024C08(v21);
  sub_10000143C(v18, &unk_10006B9FB);
  sub_1000236E8(1uLL, a1, v18, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_1000027F4(&v22, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (*a2 != a2[1])
  {
    v6 = sub_1000027F4(&v22, "\n", 1);
    sub_1000027F4(v6, "<ul>\n", 5);
    v7 = *a2;
    v8 = a2[1];
    if (*a2 != v8)
    {
      do
      {
        v9 = sub_1000027F4(&v22, "  <li>", 6);
        v10 = *(v7 + 23);
        if (v10 >= 0)
        {
          v11 = v7;
        }

        else
        {
          v11 = *v7;
        }

        if (v10 >= 0)
        {
          v12 = *(v7 + 23);
        }

        else
        {
          v12 = *(v7 + 8);
        }

        v13 = sub_1000027F4(v9, v11, v12);
        sub_1000027F4(v13, "</li>\n", 6);
        v7 += 24;
      }

      while (v7 != v8);
    }

    sub_1000027F4(&v22, "</ul>\n", 6);
  }

  sub_10000143C(&__p, "</td>\n");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  sub_1000027F4(&v22, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  v22 = v16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100024890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1000012E8(&a22);
  _Unwind_Resume(a1);
}

void *sub_100024968(void *a1, void *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100074F28;
  sub_100024A80(&v5, (a1 + 3), a2, a3);
  return a1;
}

void sub_1000249FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100074F28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100024A80(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v4 = a3[1];
  v5[0] = *a3;
  v5[1] = v4;
  *a3 = 0;
  a3[1] = 0;
  sub_100015ED0(a2, v5, a4);
  if (v4)
  {

    sub_100005EB4(v4);
  }
}

void sub_100024AE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100005EB4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100024B00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    sub_100005EB4(v3);
  }

  v4 = a2;
  sub_100007C5C(&v4);
}

uint64_t sub_100024B40(uint64_t a1, const void **a2)
{
  v2 = *sub_1000229D8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void (__cdecl ***sub_100024C08(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_100024EAC((a1 + 3), 24);
  return a1;
}

void sub_100024E84(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100024EAC(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_1000024B8(a1);
  return a1;
}

void sub_100024F40(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_100024F68(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  sub_10000143C(a2, &unk_10006B9FB);
  v4 = *(a1 + 23);
  v5 = a1[1];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(a1 + 23);
  }

  if (v5)
  {
    v6 = 0;
    v7 = v4 >> 63;
    do
    {
      if (v6)
      {
        v8 = (v7 & 1) != 0 ? *a1 : a1;
        v9 = *(v8 + v6);
        if (v9 < 0 ? __maskrune(v9, 0x8000uLL) : _DefaultRuneLocale.__runetype[v9] & 0x8000)
        {
          v11 = *(a1 + 23) >= 0 ? a1 : *a1;
          v12 = *(v11 + v6 - 1);
          if (v12 < 0 ? __maskrune(v12, 0x1000uLL) : _DefaultRuneLocale.__runetype[v12] & 0x1000)
          {
            std::string::append(a2, " ");
          }
        }
      }

      if (*(a1 + 23) >= 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      std::string::push_back(a2, *(v14 + v6++));
      v15 = *(a1 + 23);
      v7 = v15 >> 63;
      if ((v15 & 0x80000000) != 0)
      {
        v15 = a1[1];
      }
    }

    while (v6 < v15);
  }
}

void sub_10002508C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000250A8(uint64_t a1, uint64_t a2)
{
  sub_100024C08(v17);
  sub_1000027F4(&v18, "<span", 5);
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v5 = sub_1000027F4(&v18, " class=", 8);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = sub_1000027F4(v5, v7, v8);
    sub_1000027F4(v9, "", 1);
  }

  v10 = sub_1000027F4(&v18, ">", 1);
  v11 = *(a1 + 23);
  if (v11 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (v11 >= 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = *(a1 + 8);
  }

  v14 = sub_1000027F4(v10, v12, v13);
  sub_1000027F4(v14, "</span>", 7);
  std::stringbuf::str();
  v18 = v15;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1000252DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000012E8(va);
  _Unwind_Resume(a1);
}

void sub_1000252F0(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v12, " title=");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = std::string::append(&v13, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v14, " />");
  *a2 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1000253E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100025454(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100074F78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000254B4(uint64_t a1)
{
  v3 = (a1 + 272);
  sub_100002260(&v3);
  v3 = (a1 + 248);
  sub_100002260(&v3);
  v3 = (a1 + 224);
  sub_100002260(&v3);
  v3 = (a1 + 200);
  sub_100007C5C(&v3);
  v3 = (a1 + 176);
  sub_100007C5C(&v3);
  v3 = (a1 + 152);
  sub_100002260(&v3);
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v3 = (a1 + 72);
  sub_100007C5C(&v3);
  v3 = (a1 + 48);
  sub_100007C5C(&v3);
  v3 = (a1 + 24);
  sub_100007C5C(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000255A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  while (1)
  {
    v4 = *v1;
    v3 = *(v1 + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (siri::dialogengine::PatternSchemaUsage::GetUsage(v4) == 1 || siri::dialogengine::PatternSchemaUsage::GetUsage(v4) == 2)
    {
      break;
    }

    if (v3)
    {
      sub_100005EB4(v3);
    }

    v1 += 16;
    if (v1 == v2)
    {
      return 0;
    }
  }

  if (v3)
  {
    sub_100005EB4(v3);
  }

  return 1;
}

void sub_10002563C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100005EB4(v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_100025654(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      sub_1000020B0();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_100027BF0(result, v11);
    }

    v12 = 40 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v12 + 24) = *(a2 + 24);
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    v7 = 40 * v8 + 40;
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_100027C48(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v4 + 24) = *(a2 + 24);
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    v7 = (v4 + 40);
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_10002579C(uint64_t a1, uint64_t a2, siri::dialogengine::PatternSchema **a3, __int128 **a4)
{
  sub_10000143C(&v183, "<?xml version=1.0 encoding=UTF-8 standalone=no?>\n");
  std::operator+<char>();
  v6 = std::string::append(&__dst, ">\n");
  v7 = *&v6->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v183, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  siri::dialogengine::PatternSchema::GetRequiredParameters(&__p, *a3);
  v10 = __p.__r_.__value_.__r.__words[2];
  sub_100005E58(&__p, __p.__r_.__value_.__l.__size_);
  if (v10)
  {
    std::string::append(&v183, "  <parameters>\n");
    siri::dialogengine::PatternSchema::GetRequiredParameters(&__dst, *a3);
    v11 = __dst.__r_.__value_.__r.__words[0];
    if (__dst.__r_.__value_.__l.__data_ != &__dst.__r_.__value_.__r.__words[1])
    {
      do
      {
        sub_100005C00(&__p, (v11 + 32));
        siri::dialogengine::PropertyBase::GetType(&v184, v188);
        if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v184.__r_.__value_.__l.__size_ != 15)
          {
            operator delete(v184.__r_.__value_.__l.__data_);
            goto LABEL_31;
          }

          v14 = *v184.__r_.__value_.__l.__data_ != 0x4F2E676F6C616964 || *(v184.__r_.__value_.__r.__words[0] + 7) != 0x5D5B7463656A624FLL;
          operator delete(v184.__r_.__value_.__l.__data_);
          if (v14)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) != 15)
          {
            goto LABEL_31;
          }

          v12 = v184.__r_.__value_.__r.__words[0] == 0x4F2E676F6C616964 && *(v184.__r_.__value_.__r.__words + 7) == 0x5D5B7463656A624FLL;
          if (!v12)
          {
            goto LABEL_31;
          }
        }

        std::string::append(&v183, "    <!-- Replace the following empty type= with the type of your array -->\n");
LABEL_31:
        siri::dialogengine::PropertyBase::GetName(&v182, v188);
        v15 = std::string::insert(&v182, 0, "    <parameter name=");
        v16 = *&v15->__r_.__value_.__l.__data_;
        v197.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
        *&v197.__r_.__value_.__l.__data_ = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        v17 = std::string::append(&v197, " type=/>\n");
        v18 = *&v17->__r_.__value_.__l.__data_;
        v184.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v184.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v184;
        }

        else
        {
          v19 = v184.__r_.__value_.__r.__words[0];
        }

        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = HIBYTE(v184.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v20 = v184.__r_.__value_.__l.__size_;
        }

        std::string::append(&v183, v19, v20);
        if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v184.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v197.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v182.__r_.__value_.__l.__data_);
        }

        if (v189)
        {
          sub_100005EB4(v189);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v21 = *(v11 + 8);
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = v21->__r_.__value_.__r.__words[0];
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = *(v11 + 16);
            v12 = v22->__r_.__value_.__r.__words[0] == v11;
            v11 = v22;
          }

          while (!v12);
        }

        v11 = v22;
      }

      while (v22 != &__dst.__r_.__value_.__r.__words[1]);
    }

    sub_100005E58(&__dst, __dst.__r_.__value_.__l.__size_);
    siri::dialogengine::PatternSchema::GetComputedParameters(&__dst, *a3);
    v23 = __dst.__r_.__value_.__r.__words[0];
    if (__dst.__r_.__value_.__l.__data_ != &__dst.__r_.__value_.__r.__words[1])
    {
      do
      {
        sub_100005C00(&__p, (v23 + 32));
        siri::dialogengine::PropertyBase::GetName(&v180, v188);
        v24 = std::string::insert(&v180, 0, "    <parameter name=");
        v25 = *&v24->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        v26 = std::string::append(&__str, " type=");
        v27 = *&v26->__r_.__value_.__l.__data_;
        v182.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v182.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        siri::dialogengine::PropertyBase::GetType(&v177, v188);
        if ((v179 & 0x80u) == 0)
        {
          v28 = &v177;
        }

        else
        {
          v28 = v177;
        }

        if ((v179 & 0x80u) == 0)
        {
          v29 = v179;
        }

        else
        {
          v29 = v178;
        }

        v30 = std::string::append(&v182, v28, v29);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v197.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v197.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = std::string::append(&v197, "/>\n");
        v33 = *&v32->__r_.__value_.__l.__data_;
        v184.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&v184.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &v184;
        }

        else
        {
          v34 = v184.__r_.__value_.__r.__words[0];
        }

        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = HIBYTE(v184.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v35 = v184.__r_.__value_.__l.__size_;
        }

        std::string::append(&v183, v34, v35);
        if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v184.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v197.__r_.__value_.__l.__data_);
        }

        if (v179 < 0)
        {
          operator delete(v177);
        }

        if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v182.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v180.__r_.__value_.__l.__data_);
        }

        if (v189)
        {
          sub_100005EB4(v189);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v36 = *(v23 + 8);
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = v36->__r_.__value_.__r.__words[0];
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = *(v23 + 16);
            v12 = v37->__r_.__value_.__r.__words[0] == v23;
            v23 = v37;
          }

          while (!v12);
        }

        v23 = v37;
      }

      while (v37 != &__dst.__r_.__value_.__r.__words[1]);
    }

    sub_100005E58(&__dst, __dst.__r_.__value_.__l.__size_);
    std::string::append(&v183, "  </parameters>\n\n");
  }

  std::string::append(&v183, "  <response>\n");
  std::string::append(&v183, "    <hide-redacted-elements>false</hide-redacted-elements>\n");
  v38 = *a4;
  v170 = a4[1];
  if (*a4 != v170)
  {
    while (1)
    {
      v171 = v38;
      sub_100005C00(&__dst, v38);
      sub_10000143C(&v182, &unk_10006B9FB);
      siri::dialogengine::PatternSchemaComponent::GetDefaultVariant(&__p, v175);
      siri::dialogengine::PatternSchemaComponent::GetNameWithVariant();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_10000143C(&__p, "Button");
      if (siri::dialogengine::StringStartsWith())
      {
        sub_10000143C(&v184, "ButtonItem");
        v39 = siri::dialogengine::StringEndsWith();
        if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v184.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v39 = 0;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (v39)
      {
        goto LABEL_100;
      }

LABEL_101:
      sub_10000143C(&__p, "Any_");
      v40 = siri::dialogengine::StringStartsWith();
      v41 = v40;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v41)
        {
          goto LABEL_117;
        }
      }

      else if (!v40)
      {
        goto LABEL_117;
      }

      siri::dialogengine::PatternSchemaComponent::GetDefaultComponent(&__p, v175);
      std::string::basic_string(&v184, &__str, 3uLL, 0xFFFFFFFFFFFFFFFFLL, &v180);
      if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v184;
      }

      else
      {
        v42 = v184.__r_.__value_.__r.__words[0];
      }

      if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = HIBYTE(v184.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v43 = v184.__r_.__value_.__l.__size_;
      }

      v44 = std::string::append(&__p, v42, v43);
      v45 = v44->__r_.__value_.__r.__words[0];
      v197.__r_.__value_.__r.__words[0] = v44->__r_.__value_.__l.__size_;
      *(v197.__r_.__value_.__r.__words + 7) = *(&v44->__r_.__value_.__r.__words[1] + 7);
      v46 = HIBYTE(v44->__r_.__value_.__r.__words[2]);
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v45;
      __str.__r_.__value_.__l.__size_ = v197.__r_.__value_.__r.__words[0];
      *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v197.__r_.__value_.__r.__words + 7);
      *(&__str.__r_.__value_.__s + 23) = v46;
      if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v184.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_117:
      v47 = __str.__r_.__value_.__l.__size_;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      if (v47)
      {
        v48 = 0;
        v49 = SHIBYTE(__str.__r_.__value_.__r.__words[2]) >> 63;
        while (1)
        {
          v50 = (v49 & 1) != 0 ? __str.__r_.__value_.__r.__words[0] : &__str;
          v51 = v50->__r_.__value_.__s.__data_[v48];
          if (v48)
          {
            if (v51 < 0 ? __maskrune(v50->__r_.__value_.__s.__data_[v48], 0x8000uLL) : _DefaultRuneLocale.__runetype[v51] & 0x8000)
            {
              break;
            }
          }

          if (v51 != 95)
          {
            goto LABEL_131;
          }

LABEL_132:
          ++v48;
          v54 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
          v49 = SHIBYTE(__str.__r_.__value_.__r.__words[2]) >> 63;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v54 = __str.__r_.__value_.__l.__size_;
          }

          if (v48 >= v54)
          {
            goto LABEL_135;
          }
        }

        std::string::append(&v182, "-");
LABEL_131:
        v53 = __tolower(v51);
        std::string::push_back(&v182, v53);
        goto LABEL_132;
      }

LABEL_135:
      siri::dialogengine::PatternSchemaComponent::GetFullUsage(&__p, v175);
      v55 = sub_1000255A0(&__p);
      v184.__r_.__value_.__r.__words[0] = &__p;
      sub_100007C5C(&v184);
      siri::dialogengine::PatternSchemaComponent::GetSupportingUsage(&__p, v175);
      v56 = sub_1000255A0(&__p);
      v184.__r_.__value_.__r.__words[0] = &__p;
      sub_100007C5C(&v184);
      siri::dialogengine::PatternSchemaComponent::GetFullOverrides(&v180, v175);
      siri::dialogengine::PatternSchemaComponent::GetSupportingOverrides(&v177, v175);
      sub_10000143C(&v172, "            ");
      memset(&v197, 0, sizeof(v197));
      sub_10000143C(&__p, "button");
      v57 = siri::dialogengine::StringsEqual();
      v58 = v57;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v58)
        {
LABEL_137:
          v59 = v56;
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          sub_10000143C(&__p.__r_.__value_.__s.__data_[8], "action");
          LODWORD(v189) = 9;
          sub_10000143C(v190, "label");
          sub_100029764(&v197, &__p, &v191, 2uLL);
          for (i = 0; i != -64; i -= 32)
          {
            if (v190[i + 23] < 0)
            {
              operator delete(*&v190[i]);
            }
          }

LABEL_141:
          v56 = v59;
          goto LABEL_157;
        }
      }

      else if (v57)
      {
        goto LABEL_137;
      }

      sub_10000143C(&__p, "long-item-text");
      v61 = siri::dialogengine::StringsEqual();
      v62 = v61;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v62)
        {
          goto LABEL_403;
        }
      }

      else if (v61)
      {
        goto LABEL_403;
      }

      sub_10000143C(&__p, "primary-header-standard");
      v63 = siri::dialogengine::StringsEqual();
      v64 = v63;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v64)
        {
          goto LABEL_403;
        }
      }

      else if (v63)
      {
        goto LABEL_403;
      }

      sub_10000143C(&__p, "simple-item-visual");
      v65 = siri::dialogengine::StringsEqual();
      v66 = v65;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v66)
        {
LABEL_153:
          LODWORD(__p.__r_.__value_.__l.__data_) = 10;
          sub_10000143C(&__p.__r_.__value_.__s.__data_[8], "thumbnails");
          sub_100029764(&v197, &__p, &v189, 1uLL);
          goto LABEL_154;
        }
      }

      else if (v65)
      {
        goto LABEL_153;
      }

      sub_10000143C(&__p, "simple-item");
      v138 = siri::dialogengine::StringStartsWith();
      v139 = v138;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v139)
        {
LABEL_360:
          sub_10000143C(&__p, "fact-item");
          v142 = siri::dialogengine::StringStartsWith();
          v143 = v142;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (v143)
            {
LABEL_362:
              v59 = v56;
              LODWORD(__p.__r_.__value_.__l.__data_) = 9;
              sub_10000143C(&__p.__r_.__value_.__s.__data_[8], "text-1");
              LODWORD(v189) = 5;
              sub_10000143C(v190, "text-4");
              sub_100029764(&v197, &__p, &v191, 2uLL);
              for (j = 0; j != -64; j -= 32)
              {
                if (v190[j + 23] < 0)
                {
                  operator delete(*&v190[j]);
                }
              }

              goto LABEL_141;
            }
          }

          else if (v142)
          {
            goto LABEL_362;
          }

          sub_10000143C(&__p, "sash-standard");
          v145 = siri::dialogengine::StringStartsWith();
          v146 = v145;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (v146)
            {
LABEL_370:
              LODWORD(__p.__r_.__value_.__l.__data_) = 7;
              sub_10000143C(&__p.__r_.__value_.__s.__data_[8], "title");
              sub_100029764(&v197, &__p, &v189, 1uLL);
              goto LABEL_154;
            }
          }

          else if (v145)
          {
            goto LABEL_370;
          }

          sub_10000143C(&__p, "status-indicator-");
          v154 = siri::dialogengine::StringStartsWith();
          v155 = v154;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (v155)
            {
LABEL_385:
              LODWORD(__p.__r_.__value_.__l.__data_) = 9;
              sub_10000143C(&__p.__r_.__value_.__s.__data_[8], "text");
              sub_100029764(&v197, &__p, &v189, 1uLL);
              goto LABEL_154;
            }
          }

          else if (v154)
          {
            goto LABEL_385;
          }

          sub_10000143C(&__p, "summary-item-short-number");
          v161 = siri::dialogengine::StringsEqual();
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v161)
          {
            v59 = v56;
            LODWORD(__p.__r_.__value_.__l.__data_) = 9;
            sub_10000143C(&__p.__r_.__value_.__s.__data_[8], "number");
            LODWORD(v189) = 5;
            sub_10000143C(v190, "text-2");
            sub_100029764(&v197, &__p, &v191, 2uLL);
            for (k = 0; k != -64; k -= 32)
            {
              if (v190[k + 23] < 0)
              {
                operator delete(*&v190[k]);
              }
            }

            goto LABEL_141;
          }

          sub_10000143C(&__p, "summary-item-standard");
          v163 = siri::dialogengine::StringsEqual();
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v163)
          {
            goto LABEL_403;
          }

          sub_10000143C(&__p, "system-text-clarification-title");
          v164 = siri::dialogengine::StringsEqual();
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v164)
          {
LABEL_403:
            LODWORD(__p.__r_.__value_.__l.__data_) = 9;
            sub_10000143C(&__p.__r_.__value_.__s.__data_[8], "text-1");
            sub_100029764(&v197, &__p, &v189, 1uLL);
LABEL_154:
            if ((SHIBYTE(v188) & 0x80000000) == 0)
            {
              goto LABEL_157;
            }

            v67 = __p.__r_.__value_.__l.__size_;
LABEL_156:
            operator delete(v67);
            goto LABEL_157;
          }

          sub_10000143C(&__p, "table");
          v165 = siri::dialogengine::StringsEqual();
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v165)
          {
            v166 = v56;
            LODWORD(__p.__r_.__value_.__l.__data_) = 8;
            sub_10000143C(&__p.__r_.__value_.__s.__data_[8], "separator-lines");
            LODWORD(v189) = 2;
            sub_10000143C(v190, "columns");
            v191 = 2;
            sub_10000143C(v192, "columns");
            v193 = 6;
            sub_10000143C(v194, "rows");
            v195 = 6;
            sub_10000143C(v196, "rows");
            sub_100029764(&v197, &__p, &v197, 5uLL);
            for (m = 0; m != -160; m -= 32)
            {
              if (v196[m + 23] < 0)
              {
                operator delete(*&v196[m]);
              }
            }

            v56 = v166;
          }

          goto LABEL_157;
        }
      }

      else if (!v138)
      {
        goto LABEL_360;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 9;
      sub_10000143C(&__p.__r_.__value_.__s.__data_[8], "text-1");
      sub_100029764(&v197, &__p, &v189, 1uLL);
      if (SHIBYTE(v188) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__size_);
      }

      sub_10000143C(&__p, "simple-item-player");
      v140 = siri::dialogengine::StringsEqual();
      v141 = v140;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v141)
        {
          goto LABEL_157;
        }
      }

      else if (!v140)
      {
        goto LABEL_157;
      }

      LODWORD(v184.__r_.__value_.__l.__data_) = 3;
      sub_10000143C(&v184.__r_.__value_.__s.__data_[8], "player");
      v147 = v197.__r_.__value_.__l.__size_;
      if (v197.__r_.__value_.__l.__size_ >= v197.__r_.__value_.__r.__words[2])
      {
        v149 = v56;
        v150 = (v197.__r_.__value_.__l.__size_ - v197.__r_.__value_.__r.__words[0]) >> 5;
        v151 = v150 + 1;
        if ((v150 + 1) >> 59)
        {
          sub_1000020B0();
        }

        v152 = v197.__r_.__value_.__r.__words[2] - v197.__r_.__value_.__r.__words[0];
        if ((v197.__r_.__value_.__r.__words[2] - v197.__r_.__value_.__r.__words[0]) >> 4 > v151)
        {
          v151 = v152 >> 4;
        }

        if (v152 >= 0x7FFFFFFFFFFFFFE0)
        {
          v153 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v153 = v151;
        }

        v189 = &v197;
        if (v153)
        {
          sub_100029B0C(&v197, v153);
        }

        v156 = 32 * v150;
        *v156 = v184.__r_.__value_.__l.__data_;
        v157 = *&v184.__r_.__value_.__r.__words[1];
        *(v156 + 24) = v185;
        *(v156 + 8) = v157;
        v185 = 0;
        *&v184.__r_.__value_.__r.__words[1] = 0uLL;
        v158 = (32 * v150 - (v197.__r_.__value_.__l.__size_ - v197.__r_.__value_.__r.__words[0]));
        memcpy(v158, v197.__r_.__value_.__l.__data_, v197.__r_.__value_.__l.__size_ - v197.__r_.__value_.__r.__words[0]);
        v159 = v197.__r_.__value_.__r.__words[0];
        v160 = v197.__r_.__value_.__r.__words[2];
        v197.__r_.__value_.__r.__words[0] = v158;
        *&v197.__r_.__value_.__r.__words[1] = (32 * v150 + 32);
        __p.__r_.__value_.__r.__words[2] = v159;
        v188 = v160;
        __p.__r_.__value_.__r.__words[0] = v159;
        __p.__r_.__value_.__l.__size_ = v159;
        sub_100029B54(&__p);
        v197.__r_.__value_.__l.__size_ = 32 * v150 + 32;
        v56 = v149;
        if (SHIBYTE(v185) < 0)
        {
          v67 = v184.__r_.__value_.__l.__size_;
          goto LABEL_156;
        }
      }

      else
      {
        *v197.__r_.__value_.__l.__size_ = v184.__r_.__value_.__l.__data_;
        v148 = *&v184.__r_.__value_.__r.__words[1];
        *(v147 + 24) = v185;
        *(v147 + 8) = v148;
        v197.__r_.__value_.__l.__size_ = v147 + 32;
      }

LABEL_157:
      sub_10000143C(&v173, &unk_10006B9FB);
      v68 = v197.__r_.__value_.__l.__size_;
      if (v197.__r_.__value_.__r.__words[0] != v197.__r_.__value_.__l.__size_)
      {
        v69 = v197.__r_.__value_.__r.__words[0] + 8;
        do
        {
          v71 = v69 - 8;
          data = *(v69 - 8);
          LODWORD(__p.__r_.__value_.__l.__data_) = data;
          if (*(v69 + 23) < 0)
          {
            sub_100001C60(&__p.__r_.__value_.__s.__data_[8], *v69, *(v69 + 8));
            data = __p.__r_.__value_.__l.__data_;
          }

          else
          {
            v72 = *v69;
            v188 = *(v69 + 16);
            *&__p.__r_.__value_.__r.__words[1] = v72;
          }

          sub_100028344(data, &__p.__r_.__value_.__l.__size_, &v172, &v184);
          if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = &v184;
          }

          else
          {
            v73 = v184.__r_.__value_.__r.__words[0];
          }

          if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v74 = HIBYTE(v184.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v74 = v184.__r_.__value_.__l.__size_;
          }

          std::string::append(&v173, v73, v74);
          if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v184.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v188) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__size_);
          }

          v69 += 32;
        }

        while (v71 + 32 != v68);
      }

      v75 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
      if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v75 = v173.__r_.__value_.__l.__size_;
      }

      if (!v75)
      {
        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v76 = HIBYTE(v172.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v76 = v172.__r_.__value_.__l.__size_;
        }

        sub_1000094C0(&v184, v76 + 31);
        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v77 = &v184;
        }

        else
        {
          v77 = v184.__r_.__value_.__r.__words[0];
        }

        if (v76)
        {
          if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v78 = &v172;
          }

          else
          {
            v78 = v172.__r_.__value_.__r.__words[0];
          }

          memmove(v77, v78, v76);
        }

        strcpy(v77 + v76, "<!-- Add required elements for ");
        if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v79 = &v182;
        }

        else
        {
          v79 = v182.__r_.__value_.__r.__words[0];
        }

        if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = HIBYTE(v182.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v80 = v182.__r_.__value_.__l.__size_;
        }

        v81 = std::string::append(&v184, v79, v80);
        v82 = v56;
        v83 = *&v81->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v83;
        v81->__r_.__value_.__l.__size_ = 0;
        v81->__r_.__value_.__r.__words[2] = 0;
        v81->__r_.__value_.__r.__words[0] = 0;
        v84 = std::string::append(&__p, " here -->\n");
        v85 = v84->__r_.__value_.__r.__words[0];
        v186[0] = v84->__r_.__value_.__l.__size_;
        *(v186 + 7) = *(&v84->__r_.__value_.__r.__words[1] + 7);
        v86 = HIBYTE(v84->__r_.__value_.__r.__words[2]);
        v84->__r_.__value_.__l.__size_ = 0;
        v84->__r_.__value_.__r.__words[2] = 0;
        v84->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v173.__r_.__value_.__l.__data_);
        }

        v173.__r_.__value_.__r.__words[0] = v85;
        v173.__r_.__value_.__l.__size_ = v186[0];
        *(&v173.__r_.__value_.__r.__words[1] + 7) = *(v186 + 7);
        *(&v173.__r_.__value_.__s + 23) = v86;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v56 = v82;
        if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v184.__r_.__value_.__l.__data_);
        }
      }

      __p.__r_.__value_.__r.__words[0] = &v197;
      sub_100029E54(&__p);
      if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v172.__r_.__value_.__l.__data_);
      }

      if (v55 != v56 || v180.__r_.__value_.__r.__words[0] == v180.__r_.__value_.__l.__size_ && v177 == v178)
      {
        std::operator+<char>();
        v87 = std::string::append(&v184, ">\n");
        v88 = *&v87->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v88;
        v87->__r_.__value_.__l.__size_ = 0;
        v87->__r_.__value_.__r.__words[2] = 0;
        v87->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v89 = &__p;
        }

        else
        {
          v89 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v90 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v90 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v183, v89, v90);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v184.__r_.__value_.__l.__data_);
          if (v55)
          {
            goto LABEL_265;
          }
        }

        else
        {
          if (!v55)
          {
            goto LABEL_266;
          }

LABEL_265:
          std::string::append(&v183, "      <level-of-detail>FULL</level-of-detail>\n");
        }

LABEL_266:
        if (v56)
        {
          std::string::append(&v183, "      <level-of-detail>SUPPORTING</level-of-detail>\n");
        }

        memset(&__p, 0, sizeof(__p));
        if (v55)
        {
          v107 = &v180;
        }

        else
        {
          v107 = &v177;
        }

        v108 = v107->__r_.__value_.__r.__words[0];
        p_size = &v180.__r_.__value_.__l.__size_;
        if (!v55)
        {
          p_size = &v178;
        }

        sub_100029EA8(&__p, v108, *p_size, (*p_size - v108) >> 4);
        v111 = __p.__r_.__value_.__l.__size_;
        v110 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
        {
          do
          {
            siri::dialogengine::PatternSchemaOverride::GetUsage(&v184, *v110);
            v112 = sub_1000255A0(&v184);
            v197.__r_.__value_.__r.__words[0] = &v184;
            sub_100007C5C(&v197);
            siri::dialogengine::PatternSchemaOverride::GetIdioms(&v184, *v110);
            v113 = v184.__r_.__value_.__l.__size_;
            for (n = v184.__r_.__value_.__r.__words[0]; n != v113; n += 24)
            {
              std::operator+<char>();
              v115 = std::string::append(&v172, "</idioms>\n");
              v116 = *&v115->__r_.__value_.__l.__data_;
              v197.__r_.__value_.__r.__words[2] = v115->__r_.__value_.__r.__words[2];
              *&v197.__r_.__value_.__l.__data_ = v116;
              v115->__r_.__value_.__l.__size_ = 0;
              v115->__r_.__value_.__r.__words[2] = 0;
              v115->__r_.__value_.__r.__words[0] = 0;
              if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v117 = &v197;
              }

              else
              {
                v117 = v197.__r_.__value_.__r.__words[0];
              }

              if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v118 = HIBYTE(v197.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v118 = v197.__r_.__value_.__l.__size_;
              }

              std::string::append(&v183, v117, v118);
              if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v197.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v172.__r_.__value_.__l.__data_);
              }
            }

            v197.__r_.__value_.__r.__words[0] = &v184;
            sub_100002260(&v197);
            v110 += 2;
          }

          while (v110 != v111);
          siri::dialogengine::StringFromBool(&v172, (v112 ^ 1u), v119);
          v120 = std::string::insert(&v172, 0, "      <is-hidden-on-idioms>");
          v121 = *&v120->__r_.__value_.__l.__data_;
          v197.__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
          *&v197.__r_.__value_.__l.__data_ = v121;
          v120->__r_.__value_.__l.__size_ = 0;
          v120->__r_.__value_.__r.__words[2] = 0;
          v120->__r_.__value_.__r.__words[0] = 0;
          v122 = std::string::append(&v197, "</is-hidden-on-idioms>\n");
          v123 = *&v122->__r_.__value_.__l.__data_;
          v184.__r_.__value_.__r.__words[2] = v122->__r_.__value_.__r.__words[2];
          *&v184.__r_.__value_.__l.__data_ = v123;
          v122->__r_.__value_.__l.__size_ = 0;
          v122->__r_.__value_.__r.__words[2] = 0;
          v122->__r_.__value_.__r.__words[0] = 0;
          if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v124 = &v184;
          }

          else
          {
            v124 = v184.__r_.__value_.__r.__words[0];
          }

          if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v125 = HIBYTE(v184.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v125 = v184.__r_.__value_.__l.__size_;
          }

          std::string::append(&v183, v124, v125);
          if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v184.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v197.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v172.__r_.__value_.__l.__data_);
          }
        }

        std::string::append(&v183, "      <component-list>\n");
        std::string::append(&v183, "        <value>\n");
        std::operator+<char>();
        v126 = std::string::append(&v197, ">\n");
        v127 = *&v126->__r_.__value_.__l.__data_;
        v184.__r_.__value_.__r.__words[2] = v126->__r_.__value_.__r.__words[2];
        *&v184.__r_.__value_.__l.__data_ = v127;
        v126->__r_.__value_.__l.__size_ = 0;
        v126->__r_.__value_.__r.__words[2] = 0;
        v126->__r_.__value_.__r.__words[0] = 0;
        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v128 = &v184;
        }

        else
        {
          v128 = v184.__r_.__value_.__r.__words[0];
        }

        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v129 = HIBYTE(v184.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v129 = v184.__r_.__value_.__l.__size_;
        }

        std::string::append(&v183, v128, v129);
        if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v184.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v197.__r_.__value_.__l.__data_);
        }

        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v130 = &v173;
        }

        else
        {
          v130 = v173.__r_.__value_.__r.__words[0];
        }

        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v131 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v131 = v173.__r_.__value_.__l.__size_;
        }

        std::string::append(&v183, v130, v131);
        std::operator+<char>();
        v132 = std::string::append(&v197, ">\n");
        v133 = *&v132->__r_.__value_.__l.__data_;
        v184.__r_.__value_.__r.__words[2] = v132->__r_.__value_.__r.__words[2];
        *&v184.__r_.__value_.__l.__data_ = v133;
        v132->__r_.__value_.__l.__size_ = 0;
        v132->__r_.__value_.__r.__words[2] = 0;
        v132->__r_.__value_.__r.__words[0] = 0;
        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v134 = &v184;
        }

        else
        {
          v134 = v184.__r_.__value_.__r.__words[0];
        }

        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v135 = HIBYTE(v184.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v135 = v184.__r_.__value_.__l.__size_;
        }

        std::string::append(&v183, v134, v135);
        if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v184.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v197.__r_.__value_.__l.__data_);
        }

        std::string::append(&v183, "        </value>\n");
        std::string::append(&v183, "      </component-list>\n");
        std::string::append(&v183, "    </sections>\n");
        v184.__r_.__value_.__r.__words[0] = &__p;
        sub_100007C5C(&v184);
        goto LABEL_339;
      }

      std::string::append(&v183, "    <groups>\n");
      std::operator+<char>();
      v91 = std::string::append(&v184, "_group</id>\n");
      v92 = *&v91->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v92;
      v91->__r_.__value_.__l.__size_ = 0;
      v91->__r_.__value_.__r.__words[2] = 0;
      v91->__r_.__value_.__r.__words[0] = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v93 = &__p;
      }

      else
      {
        v93 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v94 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v94 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(&v183, v93, v94);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v184.__r_.__value_.__l.__data_);
      }

      std::string::append(&v183, "      <components>\n");
      std::string::append(&v183, "        <value>\n");
      std::operator+<char>();
      v95 = std::string::append(&v184, ">\n");
      v96 = *&v95->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v96;
      v95->__r_.__value_.__l.__size_ = 0;
      v95->__r_.__value_.__r.__words[2] = 0;
      v95->__r_.__value_.__r.__words[0] = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = &__p;
      }

      else
      {
        v97 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v98 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(&v183, v97, v98);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v184.__r_.__value_.__l.__data_);
      }

      if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v99 = &v173;
      }

      else
      {
        v99 = v173.__r_.__value_.__r.__words[0];
      }

      if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v100 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v100 = v173.__r_.__value_.__l.__size_;
      }

      std::string::append(&v183, v99, v100);
      std::operator+<char>();
      v101 = std::string::append(&v184, ">\n");
      v102 = *&v101->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v102;
      v101->__r_.__value_.__l.__size_ = 0;
      v101->__r_.__value_.__r.__words[2] = 0;
      v101->__r_.__value_.__r.__words[0] = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v103 = &__p;
      }

      else
      {
        v103 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v104 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v104 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(&v183, v103, v104);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v184.__r_.__value_.__l.__data_);
      }

      std::string::append(&v183, "        </value>\n");
      std::string::append(&v183, "      </components>\n");
      std::string::append(&v183, "    </groups>\n");
      if ((v55 & 1) == 0 && v180.__r_.__value_.__r.__words[0] == v180.__r_.__value_.__l.__size_)
      {
        goto LABEL_262;
      }

      sub_10000143C(&v184, "FULL");
      sub_100027D18(&v184, &v180, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v105 = &__p;
      }

      else
      {
        v105 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v106 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v106 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(&v183, v105, v106);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v184.__r_.__value_.__l.__data_);
        if (v56)
        {
          goto LABEL_329;
        }
      }

      else
      {
LABEL_262:
        if (v56)
        {
          goto LABEL_329;
        }
      }

      if (v177 != v178)
      {
LABEL_329:
        sub_10000143C(&v184, "SUPPORTING");
        sub_100027D18(&v184, &v177, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v136 = &__p;
        }

        else
        {
          v136 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v137 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v137 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v183, v136, v137);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v184.__r_.__value_.__l.__data_);
        }
      }

LABEL_339:
      if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v173.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = &v177;
      sub_100007C5C(&__p);
      __p.__r_.__value_.__r.__words[0] = &v180;
      sub_100007C5C(&__p);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v182.__r_.__value_.__l.__data_);
      }

      if (v176)
      {
        sub_100005EB4(v176);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v38 = (v171 + 40);
      if ((v171 + 40) == v170)
      {
        goto LABEL_412;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v39)
    {
      goto LABEL_101;
    }

LABEL_100:
    std::string::assign(&__str, "Button");
    goto LABEL_101;
  }

LABEL_412:
  std::string::append(&v183, "  </response>\n");
  std::string::append(&v183, "</cat>\n");
  sub_10000143C(&v184, ".vcatxml");
  siri::dialogengine::VisualCatIdToPath();
  siri::dialogengine::JoinPath();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v184.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&__dst, "Visual CAT file");
  v168 = sub_100027990(&__p, &v183, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v183.__r_.__value_.__l.__data_);
  }

  return v168;
}

void sub_100027280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, std::__shared_weak_count *a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  while (1)
  {
    if (*(a11 - 1) < 0)
    {
      operator delete(*(a11 - 3));
    }

    a11 -= 4;
    if (a11 == &a68)
    {
      a60 = (v68 - 128);
      sub_100029E54(&a60);
      if (a23 < 0)
      {
        operator delete(__p);
      }

      *(v68 - 128) = &a35;
      sub_100007C5C((v68 - 128));
      *(v68 - 128) = &a38;
      sub_100007C5C((v68 - 128));
      if (a46 < 0)
      {
        operator delete(a41);
      }

      if (a53 < 0)
      {
        operator delete(a48);
      }

      if (a34)
      {
        sub_100005EB4(a34);
      }

      if (a32 < 0)
      {
        operator delete(a27);
      }

      if (a59 < 0)
      {
        operator delete(a54);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_100027990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  siri::dialogengine::DirName();
  if ((siri::dialogengine::CreateDir() & 1) == 0)
  {
    v16 = sub_1000027F4(&std::cout, "Failed to create directory: ", 28);
    v17 = v26;
    v18 = __p[1];
    v19 = (v26 & 0x80u) != 0;
    if ((v26 & 0x80u) == 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

LABEL_22:
    if (v19)
    {
      v21 = v18;
    }

    else
    {
      v21 = v17;
    }

    v22 = sub_1000027F4(v16, v20, v21);
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v23 = std::locale::use_facet(&v27, &std::ctype<char>::id);
    (v23->__vftable[2].~facet_0)(v23, 10);
    std::locale::~locale(&v27);
    std::ostream::put();
    std::ostream::flush();
    v15 = 0;
    goto LABEL_26;
  }

  if ((siri::dialogengine::WriteFileFromString() & 1) == 0)
  {
    v16 = sub_1000027F4(&std::cout, "Failed to write file: ", 22);
    v17 = *(a1 + 23);
    v18 = *(a1 + 8);
    v19 = (v17 & 0x80u) != 0;
    if ((v17 & 0x80u) == 0)
    {
      v20 = a1;
    }

    else
    {
      v20 = *a1;
    }

    goto LABEL_22;
  }

  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = sub_1000027F4(&std::cout, v6, v7);
  v9 = sub_1000027F4(v8, " written to ", 12);
  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = *(a1 + 8);
  }

  v13 = sub_1000027F4(v9, v11, v12);
  std::ios_base::getloc((v13 + *(*v13 - 24)));
  v14 = std::locale::use_facet(&v27, &std::ctype<char>::id);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(&v27);
  std::ostream::put();
  std::ostream::flush();
  v15 = 1;
LABEL_26:
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

void sub_100027BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100027BF0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100001B50();
}

void **sub_100027C48(void **a1)
{
  sub_100027C7C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100027C7C(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 40;
    sub_100027CC4(v4, i - 40);
  }
}

void sub_100027CC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    sub_100005EB4(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

std::string *sub_100027D18@<X0>(uint64_t *a1@<X1>, siri::dialogengine::PatternSchemaOverride ***a2@<X2>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::operator+<char>();
  v6 = std::string::append(&v45, "_");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 23) >= 0)
  {
    v9 = *(a1 + 23);
  }

  else
  {
    v8 = *a1;
    v9 = a1[1];
  }

  siri::dialogengine::StringToLower();
  if ((v44 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v11 = v44;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v46, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v47, ">\n");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v49 = v14->__r_.__value_.__r.__words[2];
  v48 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v49 >= 0)
  {
    v16 = &v48;
  }

  else
  {
    v16 = v48;
  }

  if (v49 >= 0)
  {
    v17 = HIBYTE(v49);
  }

  else
  {
    v17 = *(&v48 + 1);
  }

  std::string::append(a3, v16, v17);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  v18 = std::string::append(&v47, "</level-of-detail>\n");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v49 = v18->__r_.__value_.__r.__words[2];
  v48 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v49 >= 0)
  {
    v20 = &v48;
  }

  else
  {
    v20 = v48;
  }

  if (v49 >= 0)
  {
    v21 = HIBYTE(v49);
  }

  else
  {
    v21 = *(&v48 + 1);
  }

  std::string::append(a3, v20, v21);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v22 = *a2;
  v23 = a2[1];
  if (*a2 != v23)
  {
    do
    {
      siri::dialogengine::PatternSchemaOverride::GetUsage(&v48, *v22);
      v24 = sub_1000255A0(&v48);
      v47.__r_.__value_.__r.__words[0] = &v48;
      sub_100007C5C(&v47);
      siri::dialogengine::PatternSchemaOverride::GetIdioms(&v48, *v22);
      v25 = *(&v48 + 1);
      for (i = v48; i != v25; i += 24)
      {
        std::operator+<char>();
        v27 = std::string::append(&v46, "</idioms>\n");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v47.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v47.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v47;
        }

        else
        {
          v29 = v47.__r_.__value_.__r.__words[0];
        }

        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v47.__r_.__value_.__l.__size_;
        }

        std::string::append(a3, v29, size);
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }
      }

      v47.__r_.__value_.__r.__words[0] = &v48;
      sub_100002260(&v47);
      v22 += 2;
    }

    while (v22 != v23);
    siri::dialogengine::StringFromBool(&v46, (v24 ^ 1u), v31);
    v32 = std::string::insert(&v46, 0, "      <is-hidden-on-idioms>");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v47, "</is-hidden-on-idioms>\n");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v49 = v34->__r_.__value_.__r.__words[2];
    v48 = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    if (v49 >= 0)
    {
      v36 = &v48;
    }

    else
    {
      v36 = v48;
    }

    if (v49 >= 0)
    {
      v37 = HIBYTE(v49);
    }

    else
    {
      v37 = *(&v48 + 1);
    }

    std::string::append(a3, v36, v37);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a3, "      <component-list>\n");
  std::string::append(a3, "        <value>\n");
  std::operator+<char>();
  v38 = std::string::append(&v47, "_group</group-id>\n");
  v39 = *&v38->__r_.__value_.__l.__data_;
  v49 = v38->__r_.__value_.__r.__words[2];
  v48 = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  if (v49 >= 0)
  {
    v40 = &v48;
  }

  else
  {
    v40 = v48;
  }

  if (v49 >= 0)
  {
    v41 = HIBYTE(v49);
  }

  else
  {
    v41 = *(&v48 + 1);
  }

  std::string::append(a3, v40, v41);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  std::string::append(a3, "        </value>\n");
  std::string::append(a3, "      </component-list>\n");
  return std::string::append(a3, "    </sections>\n");
}

void sub_1000281A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v36 - 89) < 0)
  {
    operator delete(*(v36 - 112));
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v35 + 23) < 0)
  {
    operator delete(*v35);
  }

  _Unwind_Resume(exception_object);
}

void sub_100028344(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((atomic_load_explicit(&qword_100078700, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078700))
  {
    sub_10000143C(&qword_1000786E8, "  ");
    __cxa_atexit(&std::string::~string, &qword_1000786E8, &_mh_execute_header);
    __cxa_guard_release(&qword_100078700);
  }

  v8 = *(a2 + 23);
  v9 = v8;
  v10 = *(a2 + 8);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    v87 = 0;
    v88 = 0;
    v89 = 0;
    if (a1 > 5)
    {
      if (a1 > 7)
      {
        if (a1 == 8)
        {
          if (v9 < 0)
          {
            sub_100001C60(&__dst, *a2, v10);
          }

          else
          {
            __dst = *a2;
          }

          sub_10000143C(&v96, "false");
          sub_100029CB4(&v87, &__dst, &v98, 2uLL);
          for (i = 0; i != -48; i -= 24)
          {
            if (*(&v97 + i + 7) < 0)
            {
              operator delete(*(&__dst + i + 24));
            }
          }

          goto LABEL_102;
        }

        if (a1 != 9)
        {
          goto LABEL_102;
        }

        if (v9 < 0)
        {
          sub_100001C60(&__dst, *a2, v10);
        }

        else
        {
          __dst = *a2;
        }

        sub_10000143C(&v96, "text-elements");
        sub_10000143C(&v98, "value");
        std::operator+<char>();
        v23 = std::string::append(&v86, " value</plain>\n");
        v24 = *&v23->__r_.__value_.__l.__data_;
        v99.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v99.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        sub_100029CB4(&v87, &__dst, &v100, 4uLL);
        for (j = 0; j != -12; j -= 3)
        {
          if (SHIBYTE(v99.__r_.__value_.__r.__words[j + 2]) < 0)
          {
            operator delete(*(&v99.__r_.__value_.__l.__data_ + j * 8));
          }
        }

        goto LABEL_99;
      }

      if (a1 != 6)
      {
        if (v9 < 0)
        {
          sub_100001C60(&__dst, *a2, v10);
        }

        else
        {
          __dst = *a2;
        }

        sub_10000143C(&v96, "value");
        sub_10000143C(&v98, "<!-- Valid children are <text> or <application-bundle-identifier> -->\n<application-bundle-identifier>Your bundle ID here</application-bundle-identifier>");
        sub_100029CB4(&v87, &__dst, &v99, 3uLL);
        for (k = 0; k != -9; k -= 3)
        {
          if (SHIBYTE(v98.__r_.__value_.__r.__words[k + 2]) < 0)
          {
            operator delete(*(&v98.__r_.__value_.__l.__data_ + k * 8));
          }
        }

        goto LABEL_102;
      }

      if (v9 < 0)
      {
        sub_100001C60(&__dst, *a2, v10);
      }

      else
      {
        __dst = *a2;
      }

      sub_10000143C(&v96, "cells");
      sub_10000143C(&v98, "value");
      sub_10000143C(&v86, "text");
      sub_10000143C(&v94, &unk_10006B9FB);
      sub_100028344(&v99, 5, &v86, &v94);
      sub_100029CB4(&v87, &__dst, &v100, 4uLL);
      for (m = 0; m != -12; m -= 3)
      {
        if (SHIBYTE(v99.__r_.__value_.__r.__words[m + 2]) < 0)
        {
          operator delete(*(&v99.__r_.__value_.__l.__data_ + m * 8));
        }
      }
    }

    else
    {
      if (a1 <= 1)
      {
        if (!a1)
        {
          if (v9 < 0)
          {
            sub_100001C60(&__dst, *a2, v10);
          }

          else
          {
            __dst = *a2;
          }

          sub_10000143C(&v96, "actions");
          sub_10000143C(&v98, "command");
          sub_10000143C(&v99, "value");
          sub_10000143C(&v100, "<!-- Replace with ace-command, sf-command, direct-invocation, etc. -->\n<no-op>true</no-op>\n");
          sub_100029CB4(&v87, &__dst, &v101, 5uLL);
          for (n = 0; n != -15; n -= 3)
          {
            if (SHIBYTE(v100.__r_.__value_.__r.__words[n + 2]) < 0)
            {
              operator delete(*(&v100.__r_.__value_.__l.__data_ + n * 8));
            }
          }

          goto LABEL_102;
        }

        if (a1 == 1)
        {
          if (v9 < 0)
          {
            sub_100001C60(&__dst, *a2, v10);
          }

          else
          {
            __dst = *a2;
          }

          sub_10000143C(&v94, "action");
          sub_10000143C(&v85, &unk_10006B9FB);
          sub_100028344(&v86, 0, &v94, &v85);
          sub_10000143C(&v93, "label");
          sub_10000143C(&v83, &unk_10006B9FB);
          sub_100028344(&__p, 9, &v93, &v83);
          v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          v17 = std::string::append(&v86, v15, v16);
          v18 = *&v17->__r_.__value_.__l.__data_;
          v97 = v17->__r_.__value_.__r.__words[2];
          v96 = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          sub_100029CB4(&v87, &__dst, &v98, 2uLL);
          for (ii = 0; ii != -48; ii -= 24)
          {
            if (*(&v97 + ii + 7) < 0)
            {
              operator delete(*(&__dst + ii + 24));
            }
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v83.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v86.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v85.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            v20 = v94.__r_.__value_.__r.__words[0];
LABEL_101:
            operator delete(v20);
            goto LABEL_102;
          }
        }

        goto LABEL_102;
      }

      if (a1 == 2)
      {
        if (v9 < 0)
        {
          sub_100001C60(&__dst, *a2, v10);
        }

        else
        {
          __dst = *a2;
        }

        sub_10000143C(&v96, "cell");
        sub_10000143C(&v98, "content");
        sub_10000143C(&v99, "size");
        sub_10000143C(&v100, "<auto/>\n");
        sub_100029CB4(&v87, &__dst, &v101, 5uLL);
        for (jj = 0; jj != -15; jj -= 3)
        {
          if (SHIBYTE(v100.__r_.__value_.__r.__words[jj + 2]) < 0)
          {
            operator delete(*(&v100.__r_.__value_.__l.__data_ + jj * 8));
          }
        }

        goto LABEL_102;
      }

      if (a1 != 5)
      {
        goto LABEL_102;
      }

      if (v9 < 0)
      {
        sub_100001C60(&__dst, *a2, v10);
      }

      else
      {
        __dst = *a2;
      }

      sub_10000143C(&v86, "lines");
      sub_10000143C(&v94, &unk_10006B9FB);
      sub_100028344(&v96, 9, &v86, &v94);
      sub_100029CB4(&v87, &__dst, &v98, 2uLL);
      for (kk = 0; kk != -48; kk -= 24)
      {
        if (*(&v97 + kk + 7) < 0)
        {
          operator delete(*(&__dst + kk + 24));
        }
      }
    }

    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
    }

LABEL_99:
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v86.__r_.__value_.__r.__words[0];
      goto LABEL_101;
    }

LABEL_102:
    sub_10000143C(a4, &unk_10006B9FB);
    if (v87 != v88)
    {
      v82 = a4;
      memset(&__dst, 0, sizeof(__dst));
      memset(&v86, 0, sizeof(v86));
      memset(&v94, 0, sizeof(v94));
      memset(&v85, 0, sizeof(v85));
      std::string::operator=(&v94, v88 - 1);
      std::string::operator=(&v85, a3);
      if (v88 - v87 != 24)
      {
        v26 = 0;
        v27 = 0;
        do
        {
          if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v85.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v85.__r_.__value_.__l.__size_;
          }

          sub_1000094C0(&v83, size + 1);
          if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v83;
          }

          else
          {
            v29 = v83.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = &v85;
            }

            else
            {
              v30 = v85.__r_.__value_.__r.__words[0];
            }

            memmove(v29, v30, size);
          }

          *(&v29->__r_.__value_.__l.__data_ + size) = 60;
          v31 = SHIBYTE(v87[v26].__r_.__value_.__r.__words[2]);
          if (v31 >= 0)
          {
            data = &v87[v26];
          }

          else
          {
            data = v87[v26].__r_.__value_.__l.__data_;
          }

          if (v31 >= 0)
          {
            v33 = HIBYTE(v87[v26].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v33 = v87[v26].__r_.__value_.__l.__size_;
          }

          v34 = std::string::append(&v83, data, v33);
          v35 = *&v34->__r_.__value_.__l.__data_;
          v93.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
          *&v93.__r_.__value_.__l.__data_ = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          v36 = std::string::append(&v93, ">\n");
          v37 = *&v36->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v37;
          v36->__r_.__value_.__l.__size_ = 0;
          v36->__r_.__value_.__r.__words[2] = 0;
          v36->__r_.__value_.__r.__words[0] = 0;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v39 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&__dst, p_p, v39);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v83.__r_.__value_.__l.__data_);
          }

          if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v40 = v85.__r_.__value_.__l.__size_;
          }

          sub_1000094C0(&v83, v40 + 2);
          if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v41 = &v83;
          }

          else
          {
            v41 = v83.__r_.__value_.__r.__words[0];
          }

          if (v40)
          {
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v42 = &v85;
            }

            else
            {
              v42 = v85.__r_.__value_.__r.__words[0];
            }

            memmove(v41, v42, v40);
          }

          strcpy(v41 + v40, "</");
          v43 = SHIBYTE(v87[v26].__r_.__value_.__r.__words[2]);
          if (v43 >= 0)
          {
            v44 = &v87[v26];
          }

          else
          {
            v44 = v87[v26].__r_.__value_.__l.__data_;
          }

          if (v43 >= 0)
          {
            v45 = HIBYTE(v87[v26].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v45 = v87[v26].__r_.__value_.__l.__size_;
          }

          v46 = std::string::append(&v83, v44, v45);
          v47 = *&v46->__r_.__value_.__l.__data_;
          v93.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
          *&v93.__r_.__value_.__l.__data_ = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          v48 = std::string::append(&v93, ">\n");
          v49 = *&v48->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v49;
          v48->__r_.__value_.__l.__size_ = 0;
          v48->__r_.__value_.__r.__words[2] = 0;
          v48->__r_.__value_.__r.__words[0] = 0;
          if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v50 = &v86;
          }

          else
          {
            v50 = v86.__r_.__value_.__r.__words[0];
          }

          if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v51 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v51 = v86.__r_.__value_.__l.__size_;
          }

          v52 = std::string::append(&__p, v50, v51);
          v53 = v52->__r_.__value_.__r.__words[0];
          v90[0] = v52->__r_.__value_.__l.__size_;
          *(v90 + 7) = *(&v52->__r_.__value_.__r.__words[1] + 7);
          v54 = HIBYTE(v52->__r_.__value_.__r.__words[2]);
          v52->__r_.__value_.__l.__size_ = 0;
          v52->__r_.__value_.__r.__words[2] = 0;
          v52->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v86.__r_.__value_.__l.__data_);
          }

          v86.__r_.__value_.__r.__words[0] = v53;
          v86.__r_.__value_.__l.__size_ = v90[0];
          *(&v86.__r_.__value_.__r.__words[1] + 7) = *(v90 + 7);
          *(&v86.__r_.__value_.__s + 23) = v54;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v83.__r_.__value_.__l.__data_);
          }

          if (byte_1000786FF >= 0)
          {
            v55 = &qword_1000786E8;
          }

          else
          {
            v55 = qword_1000786E8;
          }

          if (byte_1000786FF >= 0)
          {
            v56 = byte_1000786FF;
          }

          else
          {
            v56 = unk_1000786F0;
          }

          std::string::append(&v85, v55, v56);
          ++v27;
          ++v26;
        }

        while (v27 < -1 - 0x5555555555555555 * ((v88 - v87) >> 3));
      }

      siri::dialogengine::StringSplit();
      std::operator+<char>();
      siri::dialogengine::StringJoin();
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = &v85;
      }

      else
      {
        v57 = v85.__r_.__value_.__r.__words[0];
      }

      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = v85.__r_.__value_.__l.__size_;
      }

      a4 = v82;
      v59 = std::string::insert(&v93, 0, v57, v58);
      v60 = *&v59->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v60;
      v59->__r_.__value_.__l.__size_ = 0;
      v59->__r_.__value_.__r.__words[2] = 0;
      v59->__r_.__value_.__r.__words[0] = 0;
      v61 = std::string::append(&__p, "\n");
      v62 = v61->__r_.__value_.__r.__words[0];
      v92[0] = v61->__r_.__value_.__l.__size_;
      *(v92 + 7) = *(&v61->__r_.__value_.__r.__words[1] + 7);
      v63 = HIBYTE(v61->__r_.__value_.__r.__words[2]);
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }

      v94.__r_.__value_.__r.__words[0] = v62;
      v94.__r_.__value_.__l.__size_ = v92[0];
      *(&v94.__r_.__value_.__r.__words[1] + 7) = *(v92 + 7);
      *(&v94.__r_.__value_.__s + 23) = v63;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      if (v91 < 0)
      {
        operator delete(v90[0]);
      }

      v90[0] = &v83;
      sub_100002260(v90);
      sub_100029BE8(&__dst.__r_.__value_.__l.__data_, &v94.__r_.__value_.__l.__data_, &__p);
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = &v86;
      }

      else
      {
        v64 = v86.__r_.__value_.__r.__words[0];
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v65 = v86.__r_.__value_.__l.__size_;
      }

      v66 = std::string::append(&__p, v64, v65);
      v67 = v66->__r_.__value_.__r.__words[0];
      v93.__r_.__value_.__r.__words[0] = v66->__r_.__value_.__l.__size_;
      *(v93.__r_.__value_.__r.__words + 7) = *(&v66->__r_.__value_.__r.__words[1] + 7);
      v68 = HIBYTE(v66->__r_.__value_.__r.__words[2]);
      v66->__r_.__value_.__l.__size_ = 0;
      v66->__r_.__value_.__r.__words[2] = 0;
      v66->__r_.__value_.__r.__words[0] = 0;
      if (*(v82 + 23) < 0)
      {
        operator delete(*v82);
      }

      v69 = v93.__r_.__value_.__r.__words[0];
      *v82 = v67;
      *(v82 + 8) = v69;
      *(v82 + 15) = *(v93.__r_.__value_.__r.__words + 7);
      *(v82 + 23) = v68;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    v70 = *(a4 + 8);
    if (*(a4 + 23) >= 0)
    {
      v70 = *(a4 + 23);
    }

    if (!v70)
    {
      if (*(a3 + 23) >= 0)
      {
        v71 = *(a3 + 23);
      }

      else
      {
        v71 = *(a3 + 8);
      }

      sub_1000094C0(&v86, v71 + 31);
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = &v86;
      }

      else
      {
        v72 = v86.__r_.__value_.__r.__words[0];
      }

      if (v71)
      {
        if (*(a3 + 23) >= 0)
        {
          v73 = a3;
        }

        else
        {
          v73 = *a3;
        }

        memmove(v72, v73, v71);
      }

      strcpy(v72 + v71, "<!-- Add required elements for ");
      v74 = *(a2 + 23);
      if (v74 >= 0)
      {
        v75 = a2;
      }

      else
      {
        v75 = *a2;
      }

      if (v74 >= 0)
      {
        v76 = *(a2 + 23);
      }

      else
      {
        v76 = *(a2 + 8);
      }

      v77 = std::string::append(&v86, v75, v76);
      v78 = *&v77->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v78;
      v77->__r_.__value_.__l.__size_ = 0;
      v77->__r_.__value_.__r.__words[2] = 0;
      v77->__r_.__value_.__r.__words[0] = 0;
      v79 = std::string::append(&__dst, " here -->\n");
      v80 = v79->__r_.__value_.__r.__words[0];
      v94.__r_.__value_.__r.__words[0] = v79->__r_.__value_.__l.__size_;
      *(v94.__r_.__value_.__r.__words + 7) = *(&v79->__r_.__value_.__r.__words[1] + 7);
      v81 = HIBYTE(v79->__r_.__value_.__r.__words[2]);
      v79->__r_.__value_.__l.__size_ = 0;
      v79->__r_.__value_.__r.__words[2] = 0;
      v79->__r_.__value_.__r.__words[0] = 0;
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = v80;
      *(a4 + 8) = v94.__r_.__value_.__r.__words[0];
      *(a4 + 15) = *(v94.__r_.__value_.__r.__words + 7);
      *(a4 + 23) = v81;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }
    }

    __dst.__r_.__value_.__r.__words[0] = &v87;
    sub_100002260(&__dst);
    return;
  }

  siri::dialogengine::Log::Warn("You must supply a valid Visual CAT element name", a2);

  sub_10000143C(a4, &unk_10006B9FB);
}

void sub_100029764(uint64_t *a1, _DWORD *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    sub_1000298F0(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_100029930(a1, v11);
    }

    sub_1000020B0();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v8) >> 5)
  {
    if (a2 != a3)
    {
      v17 = a2;
      v18 = *a1;
      do
      {
        v19 = *v17;
        v17 += 8;
        *v18 = v19;
        v18 += 8;
        std::string::operator=((v8 + 8), (v6 + 2));
        v8 = v18;
        v6 = v17;
      }

      while (v17 != a3);
      v12 = a1[1];
      v8 = v18;
    }

    while (v12 != v8)
    {
      if (*(v12 - 1) < 0)
      {
        operator delete(*(v12 - 24));
      }

      v12 -= 32;
    }

    a1[1] = v8;
  }

  else
  {
    v13 = a2 + v12 - v8;
    if (v12 != v8)
    {
      v14 = a2;
      v15 = *a1;
      do
      {
        v16 = *v14;
        v14 += 8;
        *v15 = v16;
        v15 += 8;
        std::string::operator=((v8 + 8), (v6 + 2));
        v8 = v15;
        v6 = v14;
      }

      while (v14 != v13);
      v12 = a1[1];
    }

    a1[1] = sub_10002996C(a1, v13, a3, v12);
  }
}

void sub_1000298F0(uint64_t *a1)
{
  if (*a1)
  {
    sub_100029ABC(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100029930(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_100029B0C(a1, a2);
  }

  sub_1000020B0();
}

uint64_t sub_10002996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 2);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        sub_100001C60(v8, *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *v8 = v9;
      }

      v4 += 32;
      v14 = v4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
  }

  v12 = 1;
  sub_100029A3C(v11);
  return v4;
}

uint64_t sub_100029A3C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100029A74(a1);
  }

  return a1;
}

void sub_100029A74(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 32;
  }
}

void sub_100029ABC(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void sub_100029B0C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100001B50();
}

uint64_t sub_100029B54(uint64_t a1)
{
  sub_100029B8C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100029B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_100029BE8@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_1000094C0(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void sub_100029CB4(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_100005FE0(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_100002064(a1, v10);
    }

    sub_1000020B0();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_1000095D4(a1, (v6 + v12), a3, v11);
  }
}

void sub_100029E54(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100029ABC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_100029EA8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100029F30(result, a4);
  }

  return result;
}

void sub_100029F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100007C5C(&a9);
  _Unwind_Resume(a1);
}

void sub_100029F30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_100029F6C(a1, a2);
  }

  sub_1000020B0();
}

void sub_100029F6C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100001B50();
}

void *sub_100029FB4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_10002A03C(v7);
  return v4;
}

uint64_t sub_10002A03C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10002A074(a1);
  }

  return a1;
}

void sub_10002A074(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_100005EB4(v3);
    }

    v1 -= 16;
  }
}

void sub_10002A0B8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 40;
        sub_100027CC4(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10002A140(uint64_t a1)
{
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  v3 = (a1 + 416);
  sub_10002A294(&v3);
  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  sub_10002A374(a1 + 296, *(a1 + 304));
  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  v3 = (a1 + 232);
  sub_100002260(&v3);
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  sub_10002A374(a1 + 160, *(a1 + 168));
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = (a1 + 8);
  sub_10000C88C(&v3);
  return a1;
}

void sub_10002A294(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        sub_10002A31C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10002A31C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_10002A374(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10002A374(a1, *a2);
    sub_10002A374(a1, a2[1]);
    sub_10002A3D0((a2 + 4));

    operator delete(a2);
  }
}

void sub_10002A3D0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10002A428(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100029F30(result, a4);
  }

  return result;
}

void sub_10002A490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100007C5C(&a9);
  _Unwind_Resume(a1);
}

void *sub_10002A4B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_10002A538(v7);
  return v4;
}

uint64_t sub_10002A538(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10002A074(a1);
  }

  return a1;
}

void sub_10002A570(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10002A5C4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10002A5C4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 16);
    if (v4)
    {
      sub_100005EB4(v4);
    }
  }

  a1[1] = v2;
}

void sub_10002A630(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100074FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10002A6D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100075018;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10002A758(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 32);
  sub_100007C5C(&v3);
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

uint64_t sub_10002A7A0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000020B0();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_10002A914(a1, v7);
  }

  v14 = 0;
  v15 = 24 * v3;
  sub_10002A8DC(a1, (24 * v3), a2, a3);
  v16 = 24 * v3 + 24;
  v8 = a1[1];
  v9 = 24 * v3 + *a1 - v8;
  sub_10002A96C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10002AA94(&v14);
  return v13;
}

void sub_10002A8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002AA94(va);
  _Unwind_Resume(a1);
}

void sub_10002A8DC(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a3;
  v4 = a3[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a4;
    *a2 = v5;
    a2[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    a2[2] = v6;
    sub_100005EB4(v4);
  }

  else
  {
    v7 = *a4;
    *a2 = v5;
    a2[1] = 0;
    a2[2] = v7;
  }
}

void sub_10002A914(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100001B50();
}

uint64_t sub_10002A96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(a4 + 16) = *(v6 + 16);
      v6 += 24;
      a4 += 24;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        sub_100005EB4(v7);
      }

      v5 += 24;
    }
  }

  return sub_10002AA18(v9);
}

uint64_t sub_10002AA18(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10002AA50(a1);
  }

  return a1;
}

void sub_10002AA50(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 16);
    if (v3)
    {
      sub_100005EB4(v3);
    }

    v1 -= 24;
  }
}

void **sub_10002AA94(void **a1)
{
  sub_10002AAC8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10002AAC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 24;
    v4 = *(v1 - 16);
    if (v4)
    {
      sub_100005EB4(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 24;
    }
  }
}

uint64_t sub_10002AB1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      v8 += 24;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_10002ACF4(&v12, a2, v7, v6);
}

void *sub_10002AB8C(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    if (v5 <= *result)
    {
      v10 = v4 - *result;
      v9 = v10 == 0;
      v11 = 0x5555555555555556 * (v10 >> 3);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = result[4];
      v15[4] = v3[4];
      sub_1000020C8(v13, v12);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    result = sub_10002AD74(v15, v5, v4, v5 - 24 * (v6 >> 1));
    v4 = v8;
    v3[1] += 8 * v7;
    v3[2] = v8;
  }

  if (*(a2 + 23) < 0)
  {
    result = sub_100001C60(v4, *a2, *(a2 + 1));
  }

  else
  {
    v14 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v14;
  }

  v3[2] += 24;
  return result;
}

uint64_t sub_10002ACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

__int128 *sub_10002AD74(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_10002ADE8()
{
  sub_10000143C(byte_1000785B0, "iVBORw0KGgoAAAANSUhEUgAAACQAAAAWCAYAAACosj4+AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAJKADAAQAAAABAAAAFgAAAADx7wgaAAAC0UlEQVRIDc1WO2wTQRB9ez7b+AMmEIKE+bkgBQiJAikNIKHUkSloItFQUScSCkQUkZBiaBKJGigoItFhQBR0dEEYKCCISIAJiQOOQ8gFf+Lz2cvOmbv4/L2LILDS+WZn3uw8z+7NDkOLEZq70pWvqFEORBnHUQ6+T0CDLeCd1FkGtsgZ3jEg7pc8ceXQjR/NnITdOg4nx7YtYG0IHCMAD1mtf2rGFDDc3I8dk58jY+u1q1oI+eaHwloJD0RWTtaC/pYsgidkN84VDkymjBgmISJT0thzcB42jFvyZizllnmfQUqioLRNlJktJ0PBRQIoNnGgqUw/+plxuE2nvBGc9R0R3tUkr/MSPpaW8bQwiywv0rK2Bx2R3xxijL6mXFlNOj3A6YPXscsVaAiaLv/E+fRdTBfnGmztFUwJuDwRiT5tp2RoYYPMpcx9nFm8hei320gU57HXtR139gy2j93UykPERaY609RuU/lG/YoX6hcdnS6vYTo8jF53D7qlAJYrOZurVGHERaKi58irDTggeU2rhoop2xWIi8iQXoHt+jTgooHjOOENIyLvxoVgtXw9zs9gtVJowHZSEBf9K+sEbGcf2dlvMT/KvcVg5p5F52Qi0R3jxKEeezEzhb7UBJ4VPugmcU+hyLV6mK05cZHowrOFbgGaVZfwSl3A5ZW4qHEc/b5eDPiPtUC3VwsuMyJDiLeH2bO+VlOYyr3UwbGuAXtOdSjB5aFErYCotkqdreP0vZqGKrbmk/bdxF5beYLVcgHdomDK0G8l09ZZYApx0eu+nBy+KvI93tlpA+FnHgTEk6lkN5RC6pGCKEKDUrF0FRZM0wljo1pkIqb/DepLBLNEU2ALZZ6rDWQIuiQIOiVDsYkD+esZIuG/aj+IEPUj1Jc4zRT5bnZQrNpeiNaxnDwiFWah0xD7uZmDbp8YtbBslGIZjZnha26ZoTDe/6rJ/wXRihQSP/gzLgAAAABJRU5ErkJggg==");
  __cxa_atexit(&std::string::~string, byte_1000785B0, &_mh_execute_header);
  sub_10000143C(byte_1000785C8, "iVBORw0KGgoAAAANSUhEUgAAACQAAAAWCAYAAACosj4+AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAJKADAAQAAAABAAAAFgAAAADx7wgaAAACSklEQVRIDc1WSW4aQRT93YAEElMkEINX3ngRWFrKKmdwruKVz8AqVwm5QlaR2NKSzcIrMwikMAkaMfm9Ulerwcah2jZ2LbqmP7x6/1f1t+RAGw6HX+bz+ZVlWVfb7fYr+jL65AHxF5ehO4VuG72Dvp5IJOrZbPbfc0rW/iIU4r1e7xrrNxhn9vffYg5gI9ipFQqFnxi7QZs7gAaDwdlyufwFgcug0DuOG7FY7Ecul3vQPnxABLNarf6ClTO9eYoeDD1Eo9FvGpRNpwwTmTk1GM+3igoxcK4AeTlzqjDR73679DCIxdvkuu49EB6dwJvNRhBiSafTEo+rg/kOFouFwKbk83mxbXVef++lARMdts6jvNoQPBoMjRJMq9WSSCQilUpFUqmU8jWdTqXZbApyUQi6VCqp9WM+JIRYbCAjIKNGZpCIsl6vFYDJZCJBMGQmkzE6o/JPLFan07nF7MIIEYQJgmwQFJmCMcUMwZA1gg7R7shQOYSiClO1WlVgCIpheiUYHqp8fNYdQE1m3rLZSKZ2GIM6ZJoZho2JzDCOx+MwJvkethkyx1Qbz4Q4jrMTJh0+guLebDYzNcuQNclQ3VSTDGhmdAInk0mVzPr2jUb8f5o1YPkd+mHs9/vqJqGU2PFK9ggm7MNoe3VJbcfqfya8TSgdZB8M1fhyc48yhq1GLOqKgKp4t9v9AwMf9T9rFIvF78ghVx2DA9Yl6P26xPB0ocXp0/OtCjWfV9YjrEtguRHaurliI1gLUf3Jq8bwfZoSNnjAjyryHwGk5kJW4N53JgAAAABJRU5ErkJggg==");
  __cxa_atexit(&std::string::~string, byte_1000785C8, &_mh_execute_header);
  sub_10000143C(byte_1000785E0, "iVBORw0KGgoAAAANSUhEUgAAACQAAAAWCAYAAACosj4+AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAJKADAAQAAAABAAAAFgAAAADx7wgaAAACAUlEQVRIDc2WvU4CQRSF7wzB6MZAiNrsKmhlYgyFEq3pLIxYGBsK4iNY+QxUPoKxoNEGjIWdtQYtiJpYKejSqCEQg0QD454ha9Ao4MwmehP+duee/bhzZ+Yw+iEymcNQo1lPiBYlBKMZZ5hJgoZ/GN79MqNnZ0CZCbpinHKDPiOXTC5XvktiXy/uHB8PNouPm8xHW5FxKxgJWzQ2EiLDGJJD6/UXeniqULFk063zEkJ8lejnd5URS/sio9sb8XijM+ET0O7unvVGLBueMGOL81EKBLoXpFZ7ppOzgoTrFO33O2Ms7yexmkqt227OBxBgXolOFuaiVnR22r3f12fh4ppOHTClYGQPEC26UBwimCZURgUG+fgDC05FlUKQnBUwIF8CoWcwTb+tTCcActFvKuH0YQwMyGVyNbVebtZWloK9eqbXw9BT+9kj5UY3/MYUx9LGatKFASw0JhWr5KQHwcKxz6iW+ruK6WiBhWPTwz7jVehogQVNbbqbnhdQmlqmXGVegHilAaAyjgOvQlOrzHHg4WzyKjS1LjlOXxyUXoWOFmd0wGEFivd2FZuabkADDkAxqmDh8CWiSWmc2roBDUU7QrAjYJGrDL6kdFfO49RWDeSqThdsCBjwbAkEkwRfcnpesFWgdO0Hnu0atQ8/BLp/ZdAAhPhXFraN1H7/K5P/DlNODQLEpvAJAAAAAElFTkSuQmCC");
  __cxa_atexit(&std::string::~string, byte_1000785E0, &_mh_execute_header);
  sub_10000143C(byte_1000785F8, "iVBORw0KGgoAAAANSUhEUgAAACQAAAAWCAYAAACosj4+AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAJKADAAQAAAABAAAAFgAAAADx7wgaAAACEUlEQVRIDc1WSy9DQRT+ZlqvEkWsqCB2oisSe0vC9VckkjaxsSGaSPwVtxJLewmrlp0gHitBRevRx5hvmiu3olrjJnoWvXPnzPnu1zPnJVBHopfJ/kLl3VGAIxQmFdSQPtpT53ij7WcBcasETgXgRmS7mxvdevjOSOtrZex8vfMaTytQSAAqWqtt/BaGhNMdhxOZwnTHCIZCVYjbcg7Hb1dwC1mk89lcUVRSMfTuXIyvv/pRawh1Xa0Ml4rY1V6Z8R9qdu1E4kgNLGKibfBHk7PiHRL3e0gXMkfhNiy/jOzceAafhEimWBKHUGrYUzb71NeBzf4FrPbNNWtizm0/HmDtcf8mFK7MeqQkNbwmesaGDO1tyNCOf2Cjb97cCjlwzxBizPzlmn7rGX7YE9ouReIzJm71pmA25cvv57YBnI0lG8aM9/F6T8ZU/DqVaw+FxyVT24YMwZlNjQK4Hgn/PjGWuqei5CJZZ/zK36yZ2kEJschFsujZgrLOBCXEIhftIVOBrXC9omdl/MWIWORisuyL7l9fJXuMLQO2g6CEWOQi2fBsQdmbghJiaS4n2kNwbUHZKIMSYmkuaclRQNdHK9+7+QxY1P4qxOAEQC7SzCUCKRvQEiqma9vY+m3Y+TmOkIvJMs4l2l1H/kPNrt1CBuzatkJbjiHkQIyWGz8+CZFdSw1oJERpqRG2Sqn6+19D/gfZixHOWVphygAAAABJRU5ErkJggg==");
  __cxa_atexit(&std::string::~string, byte_1000785F8, &_mh_execute_header);
  sub_10000143C(byte_100078610, "greyColor");
  __cxa_atexit(&std::string::~string, byte_100078610, &_mh_execute_header);
  sub_10000143C(byte_100078628, "dialogColor");
  __cxa_atexit(&std::string::~string, byte_100078628, &_mh_execute_header);
  sub_10000143C(byte_100078640, "visualColor");
  __cxa_atexit(&std::string::~string, byte_100078640, &_mh_execute_header);
  sub_10000143C(byte_100078658, "usage");
  __cxa_atexit(&std::string::~string, byte_100078658, &_mh_execute_header);
  sub_10000143C(byte_100078670, "empty");
  __cxa_atexit(&std::string::~string, byte_100078670, &_mh_execute_header);
  sub_10000143C(byte_100078688, "variantsLabel");
  __cxa_atexit(&std::string::~string, byte_100078688, &_mh_execute_header);
  sub_10000143C(byte_1000786A0, "variants");
  __cxa_atexit(&std::string::~string, byte_1000786A0, &_mh_execute_header);
  sub_10000143C(byte_1000786B8, "defaultVariant");
  __cxa_atexit(&std::string::~string, byte_1000786B8, &_mh_execute_header);
  sub_10000143C(byte_1000786D0, "error");

  return __cxa_atexit(&std::string::~string, byte_1000786D0, &_mh_execute_header);
}

uint64_t sub_10002B038(uint64_t a1)
{
  if (siri::dialogengine::DirExists())
  {
    siri::dialogengine::GetCatLocales();
    if (v61 == v60)
    {
      v47 = sub_1000027F4(&std::cout, "Error: can't find any locales in CAT file: ", 43);
      v48 = *(a1 + 23);
      if (v48 >= 0)
      {
        v49 = a1;
      }

      else
      {
        v49 = *a1;
      }

      if (v48 >= 0)
      {
        v50 = *(a1 + 23);
      }

      else
      {
        v50 = *(a1 + 8);
      }

      v51 = sub_1000027F4(v47, v49, v50);
      std::ios_base::getloc((v51 + *(*v51 - 24)));
      v52 = std::locale::use_facet(&v58, &std::ctype<char>::id);
      (v52->__vftable[2].~facet_0)(v52, 10);
      std::locale::~locale(&v58);
      std::ostream::put();
      std::ostream::flush();
      v18 = 0;
    }

    else
    {
      v2 = sub_1000027F4(&std::cout, "Converting ", 11);
      v3 = *(a1 + 23);
      if (v3 >= 0)
      {
        v4 = a1;
      }

      else
      {
        v4 = *a1;
      }

      if (v3 >= 0)
      {
        v5 = *(a1 + 23);
      }

      else
      {
        v5 = *(a1 + 8);
      }

      v6 = sub_1000027F4(v2, v4, v5);
      v7 = sub_1000027F4(v6, " to ", 4);
      v8 = *(a1 + 96);
      if (v8)
      {
        v9 = "BINARY";
      }

      else
      {
        v9 = "XML";
      }

      if (v8)
      {
        v10 = 6;
      }

      else
      {
        v10 = 3;
      }

      v11 = sub_1000027F4(v7, v9, v10);
      if (*(a1 + 100))
      {
        v12 = " (preserve existing)";
      }

      else
      {
        v12 = " (delete existing)";
      }

      if (*(a1 + 100))
      {
        v13 = 20;
      }

      else
      {
        v13 = 18;
      }

      v14 = sub_1000027F4(v11, v12, v13);
      std::ios_base::getloc((v14 + *(*v14 - 24)));
      v15 = std::locale::use_facet(&v58, &std::ctype<char>::id);
      (v15->__vftable[2].~facet_0)(v15, 10);
      std::locale::~locale(&v58);
      std::ostream::put();
      std::ostream::flush();
      sub_10002B9E4(a1);
      v16 = v60;
      v17 = v61;
      if (v60 != v61)
      {
        v18 = 1;
        while (1)
        {
          if (*(v16 + 23) < 0)
          {
            sub_100001C60(&__dst, *v16, *(v16 + 1));
          }

          else
          {
            v19 = *v16;
            v69 = *(v16 + 2);
            __dst = v19;
          }

          v62.__locale_ = 0;
          v63 = 0;
          v64 = 0;
          sub_10000954C(&v62, &__dst, &v70, 1uLL);
          siri::dialogengine::FindLocaleFile();
          __p[0] = &v62;
          sub_100002260(__p);
          if (SHIBYTE(v69) < 0)
          {
            operator delete(__dst);
          }

          siri::dialogengine::ChangeCATExtension();
          siri::dialogengine::ChangeCATExtension();
          sub_10002E954(a1, &v62, &__dst);
          if (SHIBYTE(v69) < 0)
          {
            operator delete(__dst);
          }

          if (SHIBYTE(v64) < 0)
          {
            operator delete(v62.__locale_);
          }

          if (v59 < 0)
          {
            operator delete(v58.__locale_);
          }

          siri::dialogengine::Context::Context(&v58);
          siri::dialogengine::FindParamsFile();
          if (*(v16 + 23) < 0)
          {
            sub_100001C60(&v65, *v16, *(v16 + 1));
          }

          else
          {
            v20 = *v16;
            v66 = *(v16 + 2);
            v65 = v20;
          }

          __p[0] = 0;
          __p[1] = 0;
          v57 = 0;
          sub_10000954C(__p, &v65, &v67, 1uLL);
          siri::dialogengine::FindLocaleFile();
          Files = siri::dialogengine::Context::LoadFiles();
          if (SHIBYTE(v69) < 0)
          {
            operator delete(__dst);
          }

          v54 = __p;
          sub_100002260(&v54);
          if (SHIBYTE(v66) < 0)
          {
            operator delete(v65);
          }

          if (SHIBYTE(v64) < 0)
          {
            operator delete(v62.__locale_);
            if ((Files & 1) == 0)
            {
LABEL_51:
              v24 = sub_1000027F4(&std::cout, "Error: unable to load CAT file: ", 32);
              v25 = (a1 + 23);
              v26 = a1;
              v27 = (a1 + 8);
              goto LABEL_53;
            }
          }

          else if ((Files & 1) == 0)
          {
            goto LABEL_51;
          }

          v22 = *(a1 + 96);
          v23 = *(a1 + 101);
          if (siri::dialogengine::Context::Save())
          {
            if ((*(a1 + 100) & 1) == 0)
            {
              siri::dialogengine::Context::GetFile(&v54, &v58);
              if (v54)
              {
                siri::dialogengine::File::GetParamsFilename(__p, v54);
                siri::dialogengine::BaseName();
                siri::dialogengine::JoinPath();
                if (SHIBYTE(v69) < 0)
                {
                  operator delete(__dst);
                }

                if (SHIBYTE(v57) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                sub_10000143C(&v62, &unk_10006B9FB);
              }

              if (v54)
              {
                siri::dialogengine::File::GetLocaleFilename(&v65, v54);
                siri::dialogengine::BaseName();
                siri::dialogengine::JoinPath();
                if (SHIBYTE(v57) < 0)
                {
                  operator delete(__p[0]);
                }

                if (SHIBYTE(v66) < 0)
                {
                  operator delete(v65);
                }
              }

              else
              {
                sub_10000143C(&__dst, &unk_10006B9FB);
              }

              v40 = *(a1 + 96);
              if (siri::dialogengine::HasCATExtension() && siri::dialogengine::FileExists())
              {
                siri::dialogengine::DeleteFile();
              }

              if (siri::dialogengine::HasCATExtension() && siri::dialogengine::FileExists())
              {
                siri::dialogengine::DeleteFile();
              }

              if (SHIBYTE(v69) < 0)
              {
                operator delete(__dst);
              }

              if (SHIBYTE(v64) < 0)
              {
                operator delete(v62.__locale_);
              }

              if (v55)
              {
                sub_100005EB4(v55);
              }
            }

            goto LABEL_66;
          }

          v24 = sub_1000027F4(&std::cout, "Error: unable to save CAT file: ", 32);
          v27 = (a1 + 32);
          v25 = (a1 + 47);
          v26 = (a1 + 24);
LABEL_53:
          v28 = *v25;
          v29 = *v27;
          if ((v28 & 0x80u) == 0)
          {
            v30 = v26;
          }

          else
          {
            v30 = *v26;
          }

          if ((v28 & 0x80u) == 0)
          {
            v31 = v28;
          }

          else
          {
            v31 = v29;
          }

          v32 = sub_1000027F4(v24, v30, v31);
          v33 = sub_1000027F4(v32, " (", 2);
          v34 = *(v16 + 23);
          if (v34 >= 0)
          {
            v35 = v16;
          }

          else
          {
            v35 = *v16;
          }

          if (v34 >= 0)
          {
            v36 = *(v16 + 23);
          }

          else
          {
            v36 = *(v16 + 1);
          }

          v37 = sub_1000027F4(v33, v35, v36);
          v38 = sub_1000027F4(v37, ")  Skipping...", 14);
          std::ios_base::getloc((v38 + *(*v38 - 24)));
          v39 = std::locale::use_facet(&v62, &std::ctype<char>::id);
          (v39->__vftable[2].~facet_0)(v39, 10);
          std::locale::~locale(&v62);
          std::ostream::put();
          std::ostream::flush();
          v18 = 0;
LABEL_66:
          siri::dialogengine::Context::~Context(&v58);
          v16 = (v16 + 24);
          if (v16 == v17)
          {
            goto LABEL_102;
          }
        }
      }

      v18 = 1;
    }

LABEL_102:
    v58.__locale_ = &v60;
    sub_100002260(&v58);
  }

  else
  {
    v41 = sub_1000027F4(&std::cout, "Error: can't find input CAT file: ", 34);
    v42 = *(a1 + 23);
    if (v42 >= 0)
    {
      v43 = a1;
    }

    else
    {
      v43 = *a1;
    }

    if (v42 >= 0)
    {
      v44 = *(a1 + 23);
    }

    else
    {
      v44 = *(a1 + 8);
    }

    v45 = sub_1000027F4(v41, v43, v44);
    std::ios_base::getloc((v45 + *(*v45 - 24)));
    v46 = std::locale::use_facet(&v58, &std::ctype<char>::id);
    (v46->__vftable[2].~facet_0)(v46, 10);
    std::locale::~locale(&v58);
    std::ostream::put();
    std::ostream::flush();
    v18 = 0;
  }

  return v18 & 1;
}

void sub_10002B7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::locale a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 161) < 0)
  {
    operator delete(*(v24 - 184));
  }

  if (a12)
  {
    sub_100005EB4(a12);
  }

  siri::dialogengine::Context::~Context(&a19);
  *(v24 - 128) = v24 - 208;
  sub_100002260((v24 - 128));
  _Unwind_Resume(a1);
}

void sub_10002B9E4(uint64_t a1)
{
  sub_10000143C(__p, "_params.cat.xml");
  siri::dialogengine::JoinPath();
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000143C(&v2, "_params.cat.bin");
  siri::dialogengine::JoinPath();
  if (v3 < 0)
  {
    operator delete(v2);
  }

  sub_10002E954(a1, &v6, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

void sub_10002BA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002BAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *a1;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  if (v6 < 3)
  {
LABEL_5:
    memset(&v80, 0, sizeof(v80));
    if (v6 <= 1)
    {
      goto LABEL_136;
    }

    std::string::operator=(&v80, v5 + 1);
    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v80.__r_.__value_.__r.__words[2]) <= 0xDu)
      {
        switch(HIBYTE(v80.__r_.__value_.__r.__words[2]))
        {
          case 5u:
            v10 = v80.__r_.__value_.__s.__data_[4];
            v11 = LODWORD(v80.__r_.__value_.__l.__data_) == 1836609396;
            v12 = 108;
LABEL_71:
            if (!v11 || v10 != v12)
            {
              break;
            }

LABEL_138:
            sub_100039B10(a2);
LABEL_139:
            if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v80.__r_.__value_.__l.__data_);
            }

            return 0;
          case 8u:
            if (v80.__r_.__value_.__r.__words[0] == 0x7972616E69626F74)
            {
              goto LABEL_138;
            }

            break;
          case 0xCu:
            v10 = v80.__r_.__value_.__r.__words[1];
            v11 = v80.__r_.__value_.__r.__words[0] == 0x63736C6D61796F74;
            v12 = 1634559336;
            goto LABEL_71;
        }

LABEL_136:
        std::operator+<char>();
        siri::dialogengine::Log::Error();
        if (v79 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_139;
      }

      if (HIBYTE(v80.__r_.__value_.__r.__words[2]) == 14)
      {
        if (v80.__r_.__value_.__r.__words[0] != 0x7972616E69626F74 || *(v80.__r_.__value_.__r.__words + 6) != 0x616D656863737972)
        {
          goto LABEL_136;
        }

        goto LABEL_138;
      }

      v21 = &v80;
      if (HIBYTE(v80.__r_.__value_.__r.__words[2]) != 19)
      {
        if (HIBYTE(v80.__r_.__value_.__r.__words[2]) != 21)
        {
          goto LABEL_136;
        }

LABEL_129:
        v49 = v21->__r_.__value_.__r.__words[0];
        size = v21->__r_.__value_.__l.__size_;
        v51 = *(&v21->__r_.__value_.__r.__words[1] + 5);
        if (v49 != 0x7972616E69626F74 || size != 0x736E726574746170 || v51 != 0x616D656863736E72)
        {
          goto LABEL_136;
        }

        goto LABEL_138;
      }

      goto LABEL_61;
    }

    if (v80.__r_.__value_.__l.__size_ <= 11)
    {
      if (v80.__r_.__value_.__l.__size_ != 5)
      {
        if (v80.__r_.__value_.__l.__size_ == 8 && *v80.__r_.__value_.__l.__data_ == 0x7972616E69626F74)
        {
          goto LABEL_138;
        }

        goto LABEL_127;
      }

      v44 = *(v80.__r_.__value_.__r.__words[0] + 4);
      v45 = *v80.__r_.__value_.__l.__data_ == 1836609396;
      v46 = 108;
    }

    else
    {
      if (v80.__r_.__value_.__l.__size_ != 12)
      {
        if (v80.__r_.__value_.__l.__size_ == 14)
        {
          if (*v80.__r_.__value_.__l.__data_ == 0x7972616E69626F74 && *(v80.__r_.__value_.__r.__words[0] + 6) == 0x616D656863737972)
          {
            goto LABEL_138;
          }
        }

        else if (v80.__r_.__value_.__l.__size_ == 19)
        {
          v21 = v80.__r_.__value_.__r.__words[0];
LABEL_61:
          v27 = v21->__r_.__value_.__r.__words[0];
          v28 = v21->__r_.__value_.__l.__size_;
          v29 = *(&v21->__r_.__value_.__r.__words[1] + 3);
          if (v27 == 0x61706C6D61796F74 && v28 == 0x6863736E72657474 && v29 == 0x616D656863736E72)
          {
            goto LABEL_138;
          }

          if ((*(&v80.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_136;
          }
        }

LABEL_127:
        if (v80.__r_.__value_.__l.__size_ != 21)
        {
          goto LABEL_136;
        }

        v21 = v80.__r_.__value_.__r.__words[0];
        goto LABEL_129;
      }

      v44 = *(v80.__r_.__value_.__r.__words[0] + 8);
      v45 = *v80.__r_.__value_.__l.__data_ == 0x63736C6D61796F74;
      v46 = 1634559336;
    }

    if (v45 && v44 == v46)
    {
      goto LABEL_138;
    }

    goto LABEL_127;
  }

  v8 = sub_100039B20();
  v5 = *a1;
  v9 = *(a1 + 8);
  if (v8)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v5) >> 3);
    goto LABEL_5;
  }

  sub_10002AD74(&v80, &v5[1], v9, v5);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v16 = *(v15 - 1);
      v15 -= 3;
      if (v16 < 0)
      {
        operator delete(*v15);
      }
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
  v17 = *a1;
  if (*(*a1 + 23) < 0)
  {
    v22 = *(v17 + 8);
    if (v22 == 5)
    {
      if (**v17 == 1836609396 && *(*v17 + 4) == 108)
      {
LABEL_148:
        v43 = 0;
        goto LABEL_159;
      }
    }

    else if (v22 == 8)
    {
      if (**v17 == 0x7972616E69626F74)
      {
        goto LABEL_156;
      }
    }

    else if (v22 == 14 && **v17 == 0x7972616E69626F74 && *(*v17 + 6) == 0x616D656863737972)
    {
      goto LABEL_154;
    }

    if (*(v17 + 8) == 12 && **v17 == 0x63736C6D61796F74 && *(*v17 + 8) == 1634559336)
    {
LABEL_157:
      v43 = 3;
      goto LABEL_159;
    }

    if (*(v17 + 8) == 21)
    {
      v36 = **v17 == 0x7972616E69626F74 && *(*v17 + 8) == 0x736E726574746170;
      if (v36 && *(*v17 + 13) == 0x616D656863736E72)
      {
LABEL_158:
        v43 = 6;
        goto LABEL_159;
      }
    }

    if (*(v17 + 8) != 19)
    {
      return 0;
    }

    v24 = *v17;
LABEL_106:
    v38 = v24->__r_.__value_.__r.__words[0];
    v39 = v24->__r_.__value_.__l.__size_;
    v40 = *(&v24->__r_.__value_.__r.__words[1] + 3);
    if (v38 != 0x61706C6D61796F74 || v39 != 0x6863736E72657474 || v40 != 0x616D656863736E72)
    {
      return 0;
    }

    v43 = 5;
LABEL_159:
    *(a3 + 96) = v43;
    sub_10002AD74(&v80, (v17 + 24), v14, v17);
    v57 = v56;
    v58 = *(a1 + 8);
    if (v58 != v56)
    {
      do
      {
        v59 = *(v58 - 1);
        v58 -= 3;
        if (v59 < 0)
        {
          operator delete(*v58);
        }
      }

      while (v58 != v57);
    }

    *(a1 + 8) = v57;
    sub_10000143C(&v80, "--preserve");
    *(a3 + 100) = siri::dialogengine::PopOption();
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v80, "--optimize");
    *(a3 + 101) = siri::dialogengine::PopOption();
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v80, "--debug");
    *(a3 + 102) = siri::dialogengine::PopOption();
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    sub_10000143C(__p, "--templateDir");
    siri::dialogengine::PopStringOption();
    if (*(a3 + 95) < 0)
    {
      operator delete(*(a3 + 72));
    }

    *(a3 + 72) = v80;
    *(&v80.__r_.__value_.__s + 23) = 0;
    v80.__r_.__value_.__s.__data_[0] = 0;
    if (v79 < 0)
    {
      operator delete(__p[0]);
    }

    v60 = *a1;
    v61 = *(a1 + 8);
    if (*a1 != v61)
    {
      while (1)
      {
        v62 = *(v60 + 23) >= 0 ? v60 : *v60;
        if (*v62 == 45)
        {
          break;
        }

        v60 += 24;
        if (v60 == v61)
        {
          v60 = *(a1 + 8);
          goto LABEL_191;
        }
      }

      if (v60 != v61)
      {
        v63 = v60 + 24;
        if ((v60 + 24) != v61)
        {
          do
          {
            if (*(v63 + 23) >= 0)
            {
              v64 = v63;
            }

            else
            {
              v64 = *v63;
            }

            if (*v64 != 45)
            {
              if (*(v60 + 23) < 0)
              {
                operator delete(*v60);
              }

              v65 = *v63;
              *(v60 + 16) = *(v63 + 16);
              *v60 = v65;
              v60 += 24;
              *(v63 + 23) = 0;
              *v63 = 0;
            }

            v63 += 24;
          }

          while (v63 != v61);
          v61 = *(a1 + 8);
        }
      }
    }

LABEL_191:
    sub_10002C580(a1, v60, v61);
    if (*a1 == *(a1 + 8))
    {
      v70 = *(a3 + 95);
      if (v70 < 0)
      {
        v70 = *(a3 + 80);
      }

      if (!v70)
      {
        memset(&v80, 0, sizeof(v80));
        v71 = *(a3 + 96);
        if (v71 >= 7)
        {
          v72 = "UNKNOWN";
        }

        else
        {
          v72 = off_100075100[v71];
        }

        std::string::assign(&v80, v72);
        v73 = sub_1000027F4(&std::cout, "Error: insufficient arguments specified for catutil ", 52);
        if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v74 = &v80;
        }

        else
        {
          v74 = v80.__r_.__value_.__r.__words[0];
        }

        if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v75 = v80.__r_.__value_.__l.__size_;
        }

        v76 = sub_1000027F4(v73, v74, v75);
        std::ios_base::getloc((v76 + *(*v76 - 24)));
        v77 = std::locale::use_facet(__p, &std::ctype<char>::id);
        (v77->__vftable[2].~facet_0)(v77, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
        goto LABEL_139;
      }
    }

    else
    {
      std::string::operator=(a3, *a1);
      std::string::operator=((a3 + 24), *a1);
      sub_10002AD74(&v80, (*a1 + 24), *(a1 + 8), *a1);
      v67 = v66;
      v68 = *(a1 + 8);
      if (v68 != v66)
      {
        do
        {
          v69 = *(v68 - 1);
          v68 -= 3;
          if (v69 < 0)
          {
            operator delete(*v68);
          }
        }

        while (v68 != v67);
      }

      *(a1 + 8) = v67;
      if (*a1 != v67)
      {
        std::string::operator=((a3 + 24), *a1);
        std::string::operator=((a3 + 48), *a1);
      }
    }

    return 1;
  }

  result = 0;
  v19 = *(*a1 + 23);
  if (v19 > 0xD)
  {
    if (v19 != 14)
    {
      v24 = *a1;
      if (v19 != 19)
      {
        if (v19 != 21)
        {
          return result;
        }

        if (*v17 != 0x7972616E69626F74 || *(v17 + 8) != 0x736E726574746170 || *(v17 + 13) != 0x616D656863736E72)
        {
          return 0;
        }

        goto LABEL_158;
      }

      goto LABEL_106;
    }

    if (*v17 != 0x7972616E69626F74 || *(v17 + 6) != 0x616D656863737972)
    {
      return 0;
    }

LABEL_154:
    v43 = 4;
    goto LABEL_159;
  }

  if (v19 == 5)
  {
    if (*v17 != 1836609396 || *(v17 + 4) != 108)
    {
      return 0;
    }

    goto LABEL_148;
  }

  if (v19 != 8)
  {
    if (v19 != 12)
    {
      return result;
    }

    if (*v17 != 0x63736C6D61796F74 || *(v17 + 8) != 1634559336)
    {
      return 0;
    }

    goto LABEL_157;
  }

  if (*v17 == 0x7972616E69626F74)
  {
LABEL_156:
    v43 = 1;
    goto LABEL_159;
  }

  return 0;
}