@interface CtrInternalClient
- (Result)form:(Result *__return_ptr)retstr;
- (Result)generatePSKc:(Result *__return_ptr)retstr output:;
- (Result)getProperty:(Result *__return_ptr)retstr output:;
- (Result)get_device_data_diag:(Result *__return_ptr)retstr;
- (Result)join:(Result *__return_ptr)retstr;
- (Result)joiner:(Result *__return_ptr)retstr;
- (Result)scan:(Result *__return_ptr)retstr;
- (Result)send_diagnostics_req:(Result *__return_ptr)retstr;
- (Result)send_ping_node:(Result *__return_ptr)retstr;
- (Result)setProperty:(Result *__return_ptr)retstr property_val:;
- (Result)trm_get_ot_data:(Result *__return_ptr)retstr output:;
- (Result)updateHomeThreadInfo:(Result *__return_ptr)retstr;
- (Result)updatePrimaryResident:(Result *__return_ptr)retstr;
- (id).cxx_construct;
- (id)init:(const char *)a3;
- (void)setEventHandler:()basic_string<char InternalClientEventBlock:()std:(std::allocator<char>> *)a3 :char_traits<char> dqueue:;
- (void)signal_property_changed:()basic_string<char value:()std:(std::allocator<char>> *)a3 :char_traits<char>;
@end

@implementation CtrInternalClient

- (id)init:(const char *)a3
{
  v9.receiver = self;
  v9.super_class = CtrInternalClient;
  v4 = [(CtrInternalClient *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(CtrInternalClient *)v4 createClient:a3];
    cntrl = v5->ctrInternalClientPtr.__cntrl_;
    v5->ctrInternalClientPtr = v8;
    if (cntrl)
    {
      if (!atomic_fetch_add(&cntrl->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (cntrl->__on_zero_shared)(cntrl);
        std::__shared_weak_count::__release_weak(cntrl);
      }
    }
  }

  return v5;
}

- (void)setEventHandler:()basic_string<char InternalClientEventBlock:()std:(std::allocator<char>> *)a3 :char_traits<char> dqueue:
{
  v5 = v4;
  v8 = v3;
  ptr = self->ctrInternalClientPtr.__ptr_;
  if (*(&a3->var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, a3->var0.var1.var0, a3->var0.var1.var1);
  }

  else
  {
    v12 = *a3;
  }

  v11 = *v5;
  InternalClient::setEventHandler(ptr, &v12, v8, &v11);
  v10 = v11;
  v11 = 0;

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

- (Result)getProperty:(Result *__return_ptr)retstr output:
{
  v4 = v3;
  v5 = *(v1 + 8);
  if (*(v2 + 23) < 0)
  {
    v6 = retstr;
    std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 8));
    retstr = v6;
  }

  else
  {
    __p = *v2;
  }

  InternalClient::get(v5, &__p, v4, retstr);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return result;
}

- (Result)setProperty:(Result *__return_ptr)retstr property_val:
{
  v3 = *(v1 + 8);
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 8));
  }

  else
  {
    __p = *v2;
  }

  InternalClient::set(v3, &__p);
}

- (Result)scan:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  v5 = *v2;
  v6 = *(v2 + 2);
  InternalClient::scan(v3, &v5);
}

- (Result)updatePrimaryResident:(Result *__return_ptr)retstr
{
  v3 = v2;
  v5 = *(v1 + 8);
  v7 = *v2;
  v8 = *(v2 + 16);
  InternalClient::updatePrimaryResident(v5, &v7, retstr);

  return result;
}

- (Result)updateHomeThreadInfo:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  v5 = *v2;
  v6 = *(v2 + 16);
  InternalClient::updateHomeThreadInfo(v3, &v5, retstr);
  return result;
}

- (Result)form:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  v4 = *(v2 + 80);
  v8[4] = *(v2 + 64);
  v8[5] = v4;
  v9 = *(v2 + 96);
  v5 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v5;
  v6 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v6;
  InternalClient::form(v8, retstr);
  return result;
}

- (Result)join:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  v4 = *(v2 + 16);
  v6[0] = *v2;
  v6[1] = v4;
  v6[2] = *(v2 + 32);
  v7 = *(v2 + 48);
  InternalClient::join(v3, v6);
}

- (Result)joiner:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  v7 = v2[2];
  v8 = v2[3];
  v9 = *(v2 + 8);
  v5 = *v2;
  v6 = v2[1];
  InternalClient::joiner(retstr);
  return result;
}

- (Result)send_diagnostics_req:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 8);
  InternalClient::send_diagnostics_req();
}

- (Result)send_ping_node:(Result *__return_ptr)retstr
{
  v3 = v2;
  v4 = *(v1 + 8);
  if (*(v2 + 23) < 0)
  {
    v5 = retstr;
    std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 8));
    retstr = v5;
  }

  else
  {
    __p = *v2;
  }

  v8 = *(v3 + 24);
  v9 = *(v3 + 26);
  InternalClient::send_ping_node_req(v4, &__p, retstr);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return result;
}

- (Result)get_device_data_diag:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  if (*(v2 + 23) < 0)
  {
    v4 = v3;
    v5 = retstr;
    v6 = v2;
    std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 8));
    retstr = v5;
    v3 = v4;
    v2 = v6;
  }

  else
  {
    __p = *v2;
  }

  v9 = *(v2 + 24);
  v10 = *(v2 + 40);
  InternalClient::get_device_data_diag_req(v3, &__p, retstr);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return result;
}

- (Result)generatePSKc:(Result *__return_ptr)retstr output:
{
  v4 = v3;
  v5 = v2;
  v6 = *(v1 + 8);
  v7 = v2[1];
  v9[0] = *v2;
  v9[1] = v7;
  v10 = *(v5 + 1);
  InternalClient::generatePSKc(v6, v9, v4);
}

- (void)signal_property_changed:()basic_string<char value:()std:(std::allocator<char>> *)a3 :char_traits<char>
{
  v4 = v3;
  ptr = self->ctrInternalClientPtr.__ptr_;
  if (*(&a3->var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, a3->var0.var1.var0, a3->var0.var1.var1);
  }

  else
  {
    __p = *a3;
  }

  InternalClient::signal_property_changed(ptr, &__p, v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

- (Result)trm_get_ot_data:(Result *__return_ptr)retstr output:
{
  v4 = v3;
  v5 = v2;
  v6 = *(v1 + 8);
  if (*(v2 + 23) < 0)
  {
    v7 = retstr;
    std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 8));
    retstr = v7;
  }

  else
  {
    __p = *v2;
  }

  v10 = *(v5 + 24);
  InternalClient::trm_get_ot_data(v6, &__p, v4, retstr);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end