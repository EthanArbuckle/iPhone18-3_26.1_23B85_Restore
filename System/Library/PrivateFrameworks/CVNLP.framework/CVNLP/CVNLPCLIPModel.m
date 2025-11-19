@interface CVNLPCLIPModel
- (CVNLPCLIPModel)initWithOptions:(id)a3 error:(id *)a4;
- (id).cxx_construct;
- (id)encodeImage:(__CVBuffer *)a3 error:(id *)a4;
- (id)encodeText:(id)a3 error:(id *)a4;
- (id)encodeTextAverage:(id)a3 error:(id *)a4;
- (shared_ptr<cvnlp::clip::CLIPModel>)model;
@end

@implementation CVNLPCLIPModel

- (CVNLPCLIPModel)initWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  memset(&v63, 0, sizeof(v63));
  v62 = &unk_1F554E258;
  v9 = objc_msgSend_objectForKeyedSubscript_(v6, v7, CVNLPCLIPModelURL, v8);

  if (v9)
  {
    modelName = self->_modelName;
    self->_modelName = 0;

    v15 = objc_msgSend_objectForKeyedSubscript_(v6, v13, CVNLPCLIPModelURL, v14);
    v16 = v15;
    if (v15)
    {
      CFRetain(v15);
      v61 = v16;
      v17 = CFGetTypeID(v16);
      if (v17 != CFURLGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v61 = 0;
    }

    sub_1D9D87260(&v61, v52);
    if (v61)
    {
      CFRelease(v61);
    }

    if (SHIBYTE(v53) < 0)
    {
      sub_1D9D12B94(__p, v52[0], v52[1]);
    }

    else
    {
      *__p = *v52;
      v60 = v53;
    }

    sub_1D9D89D38(buf, __p);
    std::string::operator=(&v63, &v65);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v60) & 0x80000000) == 0)
      {
LABEL_18:
        if ((SHIBYTE(v53) & 0x80000000) == 0)
        {
LABEL_19:

          goto LABEL_59;
        }

LABEL_22:
        operator delete(v52[0]);
        goto LABEL_19;
      }
    }

    else if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(__p[0]);
    if ((SHIBYTE(v53) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  v19 = objc_msgSend_objectForKeyedSubscript_(v6, v10, CVNLPCLIPModelName, v11);

  if (v19)
  {
    v22 = objc_msgSend_objectForKeyedSubscript_(v6, v20, CVNLPCLIPModelName, v21);
    v23 = self->_modelName;
    self->_modelName = v22;

    v27 = objc_msgSend_UTF8String(self->_modelName, v24, v25, v26);
    v28 = strlen(v27);
    if (v28 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1D9D12168();
    }

    v29 = v28;
    if (v28 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v58) = v28;
    if (v28)
    {
      memmove(&__dst, v27, v28);
    }

    *(&__dst + v29) = 0;
    strcpy(v52, "Models");
    HIBYTE(v53) = 6;
    v54 = objc_alloc_init(BundleHelper);
    sub_1D9D87378(v55, v52);
    sub_1D9D89D38(buf, v55);
    std::string::operator=(&v63, &v65);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
      if ((v56 & 0x80000000) == 0)
      {
LABEL_31:

        if ((SHIBYTE(v53) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_36;
      }
    }

    else if ((v56 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    operator delete(v55[0]);

    if ((SHIBYTE(v53) & 0x80000000) == 0)
    {
LABEL_32:
      v36 = SHIBYTE(v58);
      if ((SHIBYTE(v58) & 0x80000000) == 0)
      {
LABEL_33:
        *v50 = __dst;
        v51 = v58;
        goto LABEL_38;
      }

LABEL_37:
      sub_1D9D12B94(v50, __dst, *(&__dst + 1));
LABEL_38:
      sub_1D9D877C8(buf, &v62, v50);
      std::string::operator=(&v63, &v65);
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
        if (SHIBYTE(v51) < 0)
        {
          goto LABEL_42;
        }
      }

      else if (SHIBYTE(v51) < 0)
      {
LABEL_42:
        operator delete(v50[0]);
        if ((v36 & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

LABEL_57:
      if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

LABEL_36:
    operator delete(v52[0]);
    v36 = SHIBYTE(v58);
    if ((SHIBYTE(v58) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  objc_storeStrong(&self->_modelName, CVNLPCLIPModelNameDefaultValue);
  v33 = objc_msgSend_UTF8String(self->_modelName, v30, v31, v32);
  v34 = strlen(v33);
  if (v34 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1D9D12168();
  }

  v35 = v34;
  if (v34 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v58) = v34;
  if (v34)
  {
    memmove(&__dst, v33, v34);
  }

  *(&__dst + v35) = 0;
  strcpy(v52, "Models");
  HIBYTE(v53) = 6;
  v54 = objc_alloc_init(BundleHelper);
  sub_1D9D87378(v48, v52);
  sub_1D9D89D38(buf, v48);
  std::string::operator=(&v63, &v65);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
    if ((v49 & 0x80000000) == 0)
    {
LABEL_48:

      if ((SHIBYTE(v53) & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_53;
    }
  }

  else if ((v49 & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  operator delete(v48[0]);

  if ((SHIBYTE(v53) & 0x80000000) == 0)
  {
LABEL_49:
    v36 = SHIBYTE(v58);
    if ((SHIBYTE(v58) & 0x80000000) == 0)
    {
LABEL_50:
      *v46 = __dst;
      v47 = v58;
      goto LABEL_55;
    }

LABEL_54:
    sub_1D9D12B94(v46, __dst, *(&__dst + 1));
LABEL_55:
    sub_1D9D877C8(buf, &v62, v46);
    std::string::operator=(&v63, &v65);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v47) & 0x80000000) == 0)
      {
        goto LABEL_57;
      }
    }

    else if ((SHIBYTE(v47) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    operator delete(v46[0]);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_59:
      if (!sub_1D9D54A80(&v62))
      {
        v44 = __cxa_allocate_exception(0x28uLL);
        sub_1D9D89E50(v44, &v62);
        __cxa_throw(v44, &unk_1F554F2D0, sub_1D9D87920);
      }

      v39 = objc_msgSend_objectForKeyedSubscript_(v6, v37, CVNLPCLIPModelEspressoEngine, v38);

      if (v39)
      {
        v42 = objc_msgSend_objectForKeyedSubscript_(v6, v40, CVNLPCLIPModelEspressoEngine, v41);
        sub_1D9D87968(v42, buf);

        sub_1D9D87A5C(buf);
        if (v65.__r_.__value_.__s.__data_[15] < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        if (qword_1EE0005B0 == -1)
        {
          if (byte_1EE0005A8)
          {
            goto LABEL_76;
          }
        }

        else
        {
          dispatch_once(&qword_1EE0005B0, &unk_1F554F368);
          if (byte_1EE0005A8)
          {
            goto LABEL_76;
          }
        }

        if (qword_1ECB72028 != -1)
        {
          dispatch_once(&qword_1ECB72028, &unk_1F554E288);
        }

        v43 = qword_1ECB72018;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1D9D0A000, v43, OS_LOG_TYPE_DEBUG, "Setting Espresso engine to CPU since ANE is not available and we are investigating issues when running on pre-ANE devices with MPS.", buf, 2u);
        }
      }

LABEL_76:
      objc_storeStrong(&self->_options, a3);
      operator new();
    }

LABEL_58:
    operator delete(__dst);
    goto LABEL_59;
  }

LABEL_53:
  operator delete(v52[0]);
  v36 = SHIBYTE(v58);
  if ((SHIBYTE(v58) & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

  goto LABEL_54;
}

- (id)encodeImage:(__CVBuffer *)a3 error:(id *)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_options(self, a2, a3, a4);
  v10 = objc_msgSend_objectForKeyedSubscript_(v7, v8, CVNLPCLIPModelURL, v9);

  if (v10)
  {
    if (qword_1ECB72028 != -1)
    {
      dispatch_once(&qword_1ECB72028, &unk_1F554E288);
    }

    v11 = qword_1ECB72018;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9D0A000, v11, OS_LOG_TYPE_DEBUG, "Using user-provided CLIP model to encode image instead of Vision.", buf, 2u);
    }

    objc_msgSend_model(self, v12, v13, v14);
    sub_1D9DCCC78(*v59);
  }

  v64 = 0;
  v65 = &v64;
  v66 = 0x2050000000;
  v15 = qword_1EE0005B8;
  v67 = qword_1EE0005B8;
  if (!qword_1EE0005B8)
  {
    v59 = MEMORY[0x1E69E9820];
    v60 = 3221225472;
    v61 = sub_1D9D89A1C;
    v62 = &unk_1E858DFE0;
    v63 = &v64;
    v68 = 0;
    if (!qword_1EE0005C0)
    {
      *buf = MEMORY[0x1E69E9820];
      v55 = 3221225472;
      __p = sub_1D9D89B70;
      v57 = &unk_1E858E018;
      v58 = &v68;
      v70 = xmmword_1E858E000;
      v71 = 0;
      qword_1EE0005C0 = _sl_dlopen();
      if (!qword_1EE0005C0)
      {
        goto LABEL_31;
      }

      if (v68)
      {
        free(v68);
      }
    }

    *(v63[1] + 24) = objc_getClass("VNCreateSceneprintRequest");
    if (!*(v63[1] + 24))
    {
      goto LABEL_31;
    }

    qword_1EE0005B8 = *(v63[1] + 24);
    v15 = v65[3];
  }

  v16 = v15;
  _Block_object_dispose(&v64, 8);
  v17 = objc_alloc_init(v15);
  if (objc_msgSend_setRevision_error_(v17, v18, 3737841671, a4))
  {
    v64 = 0;
    v65 = &v64;
    v66 = 0x2050000000;
    v19 = qword_1EE0005C8;
    v67 = qword_1EE0005C8;
    if (qword_1EE0005C8)
    {
LABEL_24:
      v21 = v19;
      _Block_object_dispose(&v64, 8);
      v22 = [v19 alloc];
      v24 = objc_msgSend_initWithCVPixelBuffer_options_(v22, v23, a3, MEMORY[0x1E695E0F8]);
      v69 = v17;
      v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v25, &v69, 1);
      v28 = objc_msgSend_performRequests_error_(v24, v27, v26, a4);

      if (v28)
      {
        v32 = objc_msgSend_results(v17, v29, v30, v31);
        v36 = objc_msgSend_firstObject(v32, v33, v34, v35);
        v40 = objc_msgSend_sceneprints(v36, v37, v38, v39);
        v44 = objc_msgSend_firstObject(v40, v41, v42, v43);

        v45 = [CVNLPCLIPEmbedding alloc];
        v49 = objc_msgSend_descriptorData(v44, v46, v47, v48);
        v20 = objc_msgSend_initWithData_(v45, v50, v49, v51);
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_28;
    }

    v59 = MEMORY[0x1E69E9820];
    v60 = 3221225472;
    v61 = sub_1D9D89BE4;
    v62 = &unk_1E858DFE0;
    v63 = &v64;
    v68 = 0;
    if (!qword_1EE0005C0)
    {
      *buf = MEMORY[0x1E69E9820];
      v55 = 3221225472;
      __p = sub_1D9D89B70;
      v57 = &unk_1E858E018;
      v58 = &v68;
      v70 = xmmword_1E858E000;
      v71 = 0;
      qword_1EE0005C0 = _sl_dlopen();
      if (!qword_1EE0005C0)
      {
        goto LABEL_31;
      }

      if (v68)
      {
        free(v68);
      }
    }

    *(v63[1] + 24) = objc_getClass("VNImageRequestHandler");
    if (*(v63[1] + 24))
    {
      qword_1EE0005C8 = *(v63[1] + 24);
      v19 = v65[3];
      goto LABEL_24;
    }

LABEL_31:
    result = abort_report_np();
    __break(1u);
    return result;
  }

  v20 = 0;
LABEL_28:

  v52 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)encodeText:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_msgSend_model(self, v6, v7, v8);
  v9 = v20;
  v10 = v5;
  v14 = objc_msgSend_UTF8String(v10, v11, v12, v13);
  v15 = strlen(v14);
  if (v15 < 0x7FFFFFFFFFFFFFF8)
  {
    v16 = v15;
    if (v15 < 0x17)
    {
      v19 = v15;
      if (v15)
      {
        memmove(&__dst, v14, v15);
      }

      *(&__dst + v16) = 0;
      sub_1D9DC94A4(*(v9 + 8), &__dst);
    }

    operator new();
  }

  sub_1D9D12168();
}

- (id)encodeTextAverage:(id)a3 error:(id *)a4
{
  v37[16] = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = a3;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v33, v37, 16, a4);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v30 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = v9;
        v14 = objc_msgSend_UTF8String(v9, v11, v12, v13);
        v15 = strlen(v14);
        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_1D9D12168();
        }

        v16 = v15;
        if (v15 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v32) = v15;
        if (v15)
        {
          memmove(&__dst, v14, v15);
        }

        *(&__dst + v16) = 0;

        v17 = v7 - v6;
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) + 1;
        if (v18 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D9D84AB0();
        }

        if (0x5555555555555556 * (-v6 >> 3) > v18)
        {
          v18 = 0x5555555555555556 * (-v6 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v6 >> 3) >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          if (v19 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1D9D10E9C();
        }

        v20 = 8 * ((v7 - v6) >> 3);
        *v20 = __dst;
        *(v20 + 16) = v32;
        memcpy((v20 - v17), v6, v17);
        v29 = v20 - v17;
        if (v6)
        {
          operator delete(v6);
        }

        v6 = v20 - v17;
        v7 = v20 + 24;
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v33, v37, 16);
      v6 = v29;
    }

    while (v5);
  }

  objc_msgSend_model(self, v22, v23, v24);
  sub_1D9DCD4FC(v33);
}

- (shared_ptr<cvnlp::clip::CLIPModel>)model
{
  cntrl = self->_model.__cntrl_;
  *v2 = self->_model.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end