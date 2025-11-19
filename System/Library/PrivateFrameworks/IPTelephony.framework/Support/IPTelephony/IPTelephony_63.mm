void sub_1E50D9408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v18 = *(v16 - 104);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  _Unwind_Resume(a1);
}

void anonymous namespace::CallEndEventImpl::~CallEndEventImpl(_anonymous_namespace_::CallEndEventImpl *this)
{
  *this = &unk_1F5EF3430;
  *(this + 1) = &unk_1F5EF3468;
  *(this + 18) = &unk_1F5EF34C8;
  xpc_release(*(this + 20));
  *(this + 20) = 0;
  MEMORY[0x1E69225A0](this + 152);
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
  *this = &unk_1F5EF3430;
  *(this + 1) = &unk_1F5EF3468;
  *(this + 18) = &unk_1F5EF34C8;
  xpc_release(*(this + 20));
  *(this + 20) = 0;
  MEMORY[0x1E69225A0](this + 152);
  *(this + 1) = &unk_1F5ED7318;
  if (*(this + 88) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  JUMPOUT(0x1E69235B0);
}

xpc_object_t anonymous namespace::CallEndEventImpl::getDict@<X0>(_anonymous_namespace_::CallEndEventImpl *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 20);
  *a2 = v2;
  if (v2)
  {
    return xpc_retain(v2);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void non-virtual thunk toanonymous namespace::CallEndEventImpl::~CallEndEventImpl(_anonymous_namespace_::CallEndEventImpl *this)
{
  *(this - 1) = &unk_1F5EF3430;
  *this = &unk_1F5EF3468;
  *(this + 17) = &unk_1F5EF34C8;
  xpc_release(*(this + 19));
  *(this + 19) = 0;
  MEMORY[0x1E69225A0](this + 144);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    v2 = *(this + 1);

    operator delete(v2);
  }
}

{
  *(this - 1) = &unk_1F5EF3430;
  *this = &unk_1F5EF3468;
  *(this + 17) = &unk_1F5EF34C8;
  xpc_release(*(this + 19));
  *(this + 19) = 0;
  MEMORY[0x1E69225A0](this + 144);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1E69235B0);
}

{
  *(this - 18) = &unk_1F5EF3430;
  *(this - 17) = &unk_1F5EF3468;
  *this = &unk_1F5EF34C8;
  xpc_release(*(this + 2));
  *(this + 2) = 0;
  MEMORY[0x1E69225A0](this + 8);
  *(this - 17) = &unk_1F5ED7318;
  if (*(this - 56) == 1 && *(this - 65) < 0)
  {
    operator delete(*(this - 11));
  }

  if (*(this - 105) < 0)
  {
    v2 = *(this - 16);

    operator delete(v2);
  }
}

{
  *(this - 18) = &unk_1F5EF3430;
  *(this - 17) = &unk_1F5EF3468;
  *this = &unk_1F5EF34C8;
  xpc_release(*(this + 2));
  *(this + 2) = 0;
  MEMORY[0x1E69225A0](this + 8);
  *(this - 17) = &unk_1F5ED7318;
  if (*(this - 56) == 1 && *(this - 65) < 0)
  {
    operator delete(*(this - 11));
  }

  if (*(this - 105) < 0)
  {
    operator delete(*(this - 16));
  }

  JUMPOUT(0x1E69235B0);
}

_BYTE *anonymous namespace::getDropOrSetupFailStatus(_BYTE *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a2 + 464);
    if (v3 < 1 || a3 - v3 < 11)
    {
      v5 = "ATM_CALL_Setup_failure";
    }

    else
    {
      v5 = "ATM_CALL_Drop";
    }

    return std::string::basic_string[abi:ne200100]<0>(result, v5);
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 2) = 0;
  }

  return result;
}

void anonymous namespace::CallEndEventImpl::processReasonCode(_anonymous_namespace_::CallEndEventImpl *this, const BambiCallSessionTerminationBaseEvent *a2, const AnalyticsLogger::AnalyticsData *a3)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    v7 = *(a2 + 2);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = std::__shared_weak_count::lock(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (v8)
    {
      if (v7)
      {
        v9 = *(a3 + 34);
        if (v9 == *(a3 + 33))
        {
          v13 = 0;
        }

        else
        {
          v10 = *(v9 - 8);
          v11 = v7[48];
          if (v11)
          {
            v11 = std::__shared_weak_count::lock(v11);
            v12 = v11;
            if (v11)
            {
              v11 = v7[47];
            }
          }

          else
          {
            v12 = 0;
          }

          v14 = SipStack::prefs(v11);
          v15 = ImsPrefs::InactivityTimerRTPSeconds(v14);
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }

          v13 = *(this + 21) - (v7[57] + v10) < v15;
        }

        v217[0] = 0;
        v217[1] = 0;
        v218 = 0;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        switch(*(a2 + 8))
        {
          case 0:
            v215 = xpc_string_create("ATM_CALL_END_LocalHangup");
            if (!v215)
            {
              v215 = xpc_null_create();
            }

            v42 = this + 160;
            v213 = v42;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v215, &v216);
            xpc_release(v216);
            v216 = 0;
            xpc_release(v215);
            v215 = 0;
            v211 = xpc_string_create("ATM_CALL_END_REASON_LocalHangup");
            if (!v211)
            {
              v211 = xpc_null_create();
            }

            v213 = v42;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v211, &v212);
            xpc_release(v212);
            v212 = 0;
            xpc_release(v211);
            v211 = 0;
            break;
          case 1:
            v209 = xpc_string_create("ATM_CALL_END_RemoteHangup");
            if (!v209)
            {
              v209 = xpc_null_create();
            }

            v43 = this + 160;
            v213 = v43;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v209, &v210);
            xpc_release(v210);
            v210 = 0;
            xpc_release(v209);
            v209 = 0;
            v207 = xpc_string_create("ATM_CALL_END_REASON_RemoteHangup");
            if (!v207)
            {
              v207 = xpc_null_create();
            }

            v213 = v43;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v207, &v208);
            xpc_release(v208);
            v208 = 0;
            xpc_release(v207);
            v207 = 0;
            break;
          case 2:
            v187 = xpc_string_create("ATM_CALL_END_LocalCallRejected");
            if (!v187)
            {
              v187 = xpc_null_create();
            }

            v37 = this + 160;
            v213 = v37;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v187, &v188);
            xpc_release(v188);
            v188 = 0;
            xpc_release(v187);
            v187 = 0;
            v185 = xpc_string_create("ATM_CALL_END_REASON_LocalCallRejected");
            if (!v185)
            {
              v185 = xpc_null_create();
            }

            v213 = v37;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v185, &v186);
            xpc_release(v186);
            v186 = 0;
            xpc_release(v185);
            v185 = 0;
            break;
          case 3:
            v183 = xpc_string_create("ATM_CALL_END_RemoteCallRejected");
            if (!v183)
            {
              v183 = xpc_null_create();
            }

            v41 = this + 160;
            v213 = v41;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v183, &v184);
            xpc_release(v184);
            v184 = 0;
            xpc_release(v183);
            v183 = 0;
            v181 = xpc_string_create("ATM_CALL_END_REASON_RemoteCallRejected");
            if (!v181)
            {
              v181 = xpc_null_create();
            }

            v213 = v41;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v181, &v182);
            xpc_release(v182);
            v182 = 0;
            xpc_release(v181);
            v181 = 0;
            break;
          case 4:
            v201 = xpc_string_create("ATM_CALL_END_LocalRequestCanceled");
            if (!v201)
            {
              v201 = xpc_null_create();
            }

            v29 = this + 160;
            v213 = v29;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v201, &v202);
            xpc_release(v202);
            v202 = 0;
            xpc_release(v201);
            v201 = 0;
            v199 = xpc_string_create("ATM_CALL_END_REASON_LocalRequestCanceled");
            if (!v199)
            {
              v199 = xpc_null_create();
            }

            v213 = v29;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v199, &v200);
            xpc_release(v200);
            v200 = 0;
            xpc_release(v199);
            v199 = 0;
            break;
          case 5:
            v197 = xpc_string_create("ATM_CALL_END_RemoteRequestCanceled");
            if (!v197)
            {
              v197 = xpc_null_create();
            }

            v44 = this + 160;
            v213 = v44;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v197, &v198);
            xpc_release(v198);
            v198 = 0;
            xpc_release(v197);
            v197 = 0;
            v195 = xpc_string_create("ATM_CALL_END_REASON_RemoteRequestCanceled");
            if (!v195)
            {
              v195 = xpc_null_create();
            }

            v213 = v44;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v195, &v196);
            xpc_release(v196);
            v196 = 0;
            xpc_release(v195);
            v195 = 0;
            break;
          case 6:
            v179 = xpc_string_create("ATM_CALL_END_CallAnsweredElsewhere");
            if (!v179)
            {
              v179 = xpc_null_create();
            }

            v213 = this + 160;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v179, &v180);
            xpc_release(v180);
            v180 = 0;
            xpc_release(v179);
            v179 = 0;
            break;
          case 7:
            v177 = xpc_string_create("ATM_CALL_END_SecondaryDeviceInUse");
            if (!v177)
            {
              v177 = xpc_null_create();
            }

            v213 = this + 160;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v177, &v178);
            xpc_release(v178);
            v178 = 0;
            xpc_release(v177);
            v177 = 0;
            break;
          case 8:
            v193 = xpc_string_create("ATM_CALL_END_TELEVCC");
            if (!v193)
            {
              v193 = xpc_null_create();
            }

            v45 = this + 160;
            v213 = v45;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v193, &v194);
            xpc_release(v194);
            v194 = 0;
            xpc_release(v193);
            v193 = 0;
            v191 = xpc_BOOL_create(1);
            if (!v191)
            {
              v191 = xpc_null_create();
            }

            v213 = v45;
            v214 = "is_televcc";
            xpc::dict::object_proxy::operator=(&v213, &v191, &v192);
            xpc_release(v192);
            v192 = 0;
            xpc_release(v191);
            v191 = 0;
            v189 = xpc_string_create("ATM_CALL_END_REASON_TELEVCC");
            if (!v189)
            {
              v189 = xpc_null_create();
            }

            v213 = v45;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v189, &v190);
            xpc_release(v190);
            v190 = 0;
            xpc_release(v189);
            v189 = 0;
            break;
          case 9:
            v205 = xpc_string_create("ATM_CALL_END_CallTransferred");
            if (!v205)
            {
              v205 = xpc_null_create();
            }

            v34 = this + 160;
            v213 = v34;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v205, &v206);
            xpc_release(v206);
            v206 = 0;
            xpc_release(v205);
            v205 = 0;
            v203 = xpc_string_create("ATM_CALL_END_REASON_BYE");
            if (!v203)
            {
              v203 = xpc_null_create();
            }

            v213 = v34;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v203, &v204);
            xpc_release(v204);
            v204 = 0;
            xpc_release(v203);
            v203 = 0;
            break;
          case 0xA:
          case 0x26:
            v67 = xpc_string_create("ATM_CALL_END_UnknownError");
            if (!v67)
            {
              v67 = xpc_null_create();
            }

            v20 = this + 160;
            v213 = v20;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v67, &v68);
            xpc_release(v68);
            v68 = 0;
            xpc_release(v67);
            v67 = 0;
            v65 = xpc_string_create("ATM_CALL_END_REASON_UnknownError");
            if (!v65)
            {
              v65 = xpc_null_create();
            }

            v213 = v20;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v65, &v66);
            xpc_release(v66);
            v66 = 0;
            xpc_release(v65);
            v65 = 0;
            if (v218 >= 0)
            {
              v21 = v217;
            }

            else
            {
              v21 = v217[0];
            }

            v63 = xpc_string_create(v21);
            if (!v63)
            {
              v63 = xpc_null_create();
            }

            v213 = v20;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v63, &v64);
            xpc_release(v64);
            v64 = 0;
            xpc_release(v63);
            v63 = 0;
            break;
          case 0xB:
          case 0x1D:
          case 0x24:
            v159 = xpc_string_create("ATM_CALL_END_NetworkError");
            if (!v159)
            {
              v159 = xpc_null_create();
            }

            v18 = this + 160;
            v213 = v18;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v159, &v160);
            xpc_release(v160);
            v160 = 0;
            xpc_release(v159);
            v159 = 0;
            v157 = xpc_string_create("ATM_CALL_END_REASON_NetworkError");
            if (!v157)
            {
              v157 = xpc_null_create();
            }

            v213 = v18;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v157, &v158);
            xpc_release(v158);
            v158 = 0;
            xpc_release(v157);
            v157 = 0;
            if (v218 >= 0)
            {
              v19 = v217;
            }

            else
            {
              v19 = v217[0];
            }

            v155 = xpc_string_create(v19);
            if (!v155)
            {
              v155 = xpc_null_create();
            }

            v213 = v18;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v155, &v156);
            xpc_release(v156);
            v156 = 0;
            xpc_release(v155);
            v155 = 0;
            break;
          case 0xC:
            v175 = xpc_string_create("ATM_CALL_END_RemoteRequestTerminated");
            if (!v175)
            {
              v175 = xpc_null_create();
            }

            v28 = this + 160;
            v213 = v28;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v175, &v176);
            xpc_release(v176);
            v176 = 0;
            xpc_release(v175);
            v175 = 0;
            v173 = xpc_string_create("ATM_CALL_END_REASON_RemoteRequestTerminated");
            if (!v173)
            {
              v173 = xpc_null_create();
            }

            v213 = v28;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v173, &v174);
            xpc_release(v174);
            v174 = 0;
            xpc_release(v173);
            v173 = 0;
            break;
          case 0xD:
            v153 = xpc_string_create("ATM_CALL_END_RequestTimeout");
            if (!v153)
            {
              v153 = xpc_null_create();
            }

            v48 = this + 160;
            v213 = v48;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v153, &v154);
            xpc_release(v154);
            v154 = 0;
            xpc_release(v153);
            v153 = 0;
            v151 = xpc_string_create("ATM_CALL_END_REASON_RequestTimeout");
            if (!v151)
            {
              v151 = xpc_null_create();
            }

            v213 = v48;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v151, &v152);
            xpc_release(v152);
            v152 = 0;
            xpc_release(v151);
            v151 = 0;
            if (v218 >= 0)
            {
              v49 = v217;
            }

            else
            {
              v49 = v217[0];
            }

            v149 = xpc_string_create(v49);
            if (!v149)
            {
              v149 = xpc_null_create();
            }

            v213 = v48;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v149, &v150);
            xpc_release(v150);
            v150 = 0;
            xpc_release(v149);
            v149 = 0;
            break;
          case 0xE:
            v147 = xpc_string_create("ATM_CALL_END_TemporarilyUnavailable");
            if (!v147)
            {
              v147 = xpc_null_create();
            }

            v32 = this + 160;
            v213 = v32;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v147, &v148);
            xpc_release(v148);
            v148 = 0;
            xpc_release(v147);
            v147 = 0;
            v145 = xpc_string_create("ATM_CALL_END_REASON_TemporarilyUnavailable");
            if (!v145)
            {
              v145 = xpc_null_create();
            }

            v213 = v32;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v145, &v146);
            xpc_release(v146);
            v146 = 0;
            xpc_release(v145);
            v145 = 0;
            if (v218 >= 0)
            {
              v33 = v217;
            }

            else
            {
              v33 = v217[0];
            }

            v143 = xpc_string_create(v33);
            if (!v143)
            {
              v143 = xpc_null_create();
            }

            v213 = v32;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v143, &v144);
            xpc_release(v144);
            v144 = 0;
            xpc_release(v143);
            v143 = 0;
            break;
          case 0xF:
            v171 = xpc_string_create("ATM_CALL_END_EmergencySessionRequired");
            if (!v171)
            {
              v171 = xpc_null_create();
            }

            v38 = this + 160;
            v213 = v38;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v171, &v172);
            xpc_release(v172);
            v172 = 0;
            xpc_release(v171);
            v171 = 0;
            v169 = xpc_string_create("ATM_CALL_END_REASON_EmergencySessionRequired");
            if (!v169)
            {
              v169 = xpc_null_create();
            }

            v213 = v38;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v169, &v170);
            xpc_release(v170);
            v170 = 0;
            xpc_release(v169);
            v169 = 0;
            break;
          case 0x10:
            v141 = xpc_string_create("ATM_CALL_END_Forbidden");
            if (!v141)
            {
              v141 = xpc_null_create();
            }

            v46 = this + 160;
            v213 = v46;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v141, &v142);
            xpc_release(v142);
            v142 = 0;
            xpc_release(v141);
            v141 = 0;
            v139 = xpc_string_create("ATM_CALL_END_REASON_Forbidden");
            if (!v139)
            {
              v139 = xpc_null_create();
            }

            v213 = v46;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v139, &v140);
            xpc_release(v140);
            v140 = 0;
            xpc_release(v139);
            v139 = 0;
            if (v218 >= 0)
            {
              v47 = v217;
            }

            else
            {
              v47 = v217[0];
            }

            v137 = xpc_string_create(v47);
            if (!v137)
            {
              v137 = xpc_null_create();
            }

            v213 = v46;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v137, &v138);
            xpc_release(v138);
            v138 = 0;
            xpc_release(v137);
            v137 = 0;
            break;
          case 0x11:
            v135 = xpc_string_create("ATM_CALL_END_InviteResponseTimeout");
            if (!v135)
            {
              v135 = xpc_null_create();
            }

            v35 = this + 160;
            v213 = v35;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v135, &v136);
            xpc_release(v136);
            v136 = 0;
            xpc_release(v135);
            v135 = 0;
            v133 = xpc_string_create("ATM_CALL_END_REASON_InviteResponseTimeout");
            if (!v133)
            {
              v133 = xpc_null_create();
            }

            v213 = v35;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v133, &v134);
            xpc_release(v134);
            v134 = 0;
            xpc_release(v133);
            v133 = 0;
            if (v218 >= 0)
            {
              v36 = v217;
            }

            else
            {
              v36 = v217[0];
            }

            v131 = xpc_string_create(v36);
            if (!v131)
            {
              v131 = xpc_null_create();
            }

            v213 = v35;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v131, &v132);
            xpc_release(v132);
            v132 = 0;
            xpc_release(v131);
            v131 = 0;
            break;
          case 0x12:
          case 0x20:
          case 0x21:
          case 0x23:
            v129 = xpc_string_create("ATM_CALL_END_LocalError");
            if (!v129)
            {
              v129 = xpc_null_create();
            }

            v16 = this + 160;
            v213 = v16;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v129, &object);
            xpc_release(object);
            object = 0;
            xpc_release(v129);
            v129 = 0;
            v127 = xpc_string_create("ATM_CALL_END_REASON_LocalError");
            if (!v127)
            {
              v127 = xpc_null_create();
            }

            v213 = v16;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v127, &v128);
            xpc_release(v128);
            v128 = 0;
            xpc_release(v127);
            v127 = 0;
            if (v218 >= 0)
            {
              v17 = v217;
            }

            else
            {
              v17 = v217[0];
            }

            v125 = xpc_string_create(v17);
            if (!v125)
            {
              v125 = xpc_null_create();
            }

            v213 = v16;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v125, &v126);
            xpc_release(v126);
            v126 = 0;
            xpc_release(v125);
            v125 = 0;
            break;
          case 0x13:
            if (v13)
            {
              v123 = xpc_string_create("ATM_CALL_END_REASON_MediaHandOverTimeout");
              if (!v123)
              {
                v123 = xpc_null_create();
              }

              v213 = this + 160;
              v214 = "status_code";
              xpc::dict::object_proxy::operator=(&v213, &v123, &v124);
              xpc_release(v124);
              v124 = 0;
              xpc_release(v123);
              v123 = 0;
              v26 = (*(*(this + 1) + 64))(this + 8);
              (*(*(this + 1) + 16))(this + 8, v26);
              v27 = ImsOutStream::operator<<(v26, "media timeout after handover ");
              (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v27[17] = 0;
            }

            else
            {
              v121 = xpc_string_create("ATM_CALL_END_REASON_MediaError");
              if (!v121)
              {
                v121 = xpc_null_create();
              }

              v213 = this + 160;
              v214 = "status_code";
              xpc::dict::object_proxy::operator=(&v213, &v121, &v122);
              xpc_release(v122);
              v122 = 0;
              xpc_release(v121);
              v121 = 0;
            }

            v119 = xpc_string_create("ATM_CALL_END_MediaError");
            if (!v119)
            {
              v119 = xpc_null_create();
            }

            v59 = this + 160;
            v213 = v59;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v119, &v120);
            xpc_release(v120);
            v120 = 0;
            xpc_release(v119);
            v119 = 0;
            if (v218 >= 0)
            {
              v60 = v217;
            }

            else
            {
              v60 = v217[0];
            }

            v117 = xpc_string_create(v60);
            if (!v117)
            {
              v117 = xpc_null_create();
            }

            v213 = v59;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v117, &v118);
            xpc_release(v118);
            v118 = 0;
            xpc_release(v117);
            v117 = 0;
            break;
          case 0x14:
            if (v13)
            {
              v115 = xpc_string_create("ATM_CALL_END_REASON_MediaHandOverTimeout");
              if (!v115)
              {
                v115 = xpc_null_create();
              }

              v213 = this + 160;
              v214 = "status_code";
              xpc::dict::object_proxy::operator=(&v213, &v115, &v116);
              xpc_release(v116);
              v116 = 0;
              xpc_release(v115);
              v115 = 0;
              v53 = (*(*(this + 1) + 64))(this + 8);
              (*(*(this + 1) + 16))(this + 8, v53);
              v54 = ImsOutStream::operator<<(v53, "media timeout after handover ");
              (*(*v54 + 64))(v54, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v54[17] = 0;
            }

            else
            {
              v113 = xpc_string_create("ATM_CALL_END_REASON_MediaTimeout");
              if (!v113)
              {
                v113 = xpc_null_create();
              }

              v213 = this + 160;
              v214 = "status_code";
              xpc::dict::object_proxy::operator=(&v213, &v113, &v114);
              xpc_release(v114);
              v114 = 0;
              xpc_release(v113);
              v113 = 0;
            }

            v111 = xpc_string_create("ATM_CALL_END_MediaTimeout");
            if (!v111)
            {
              v111 = xpc_null_create();
            }

            v61 = this + 160;
            v213 = v61;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v111, &v112);
            xpc_release(v112);
            v112 = 0;
            xpc_release(v111);
            v111 = 0;
            if (v218 >= 0)
            {
              v62 = v217;
            }

            else
            {
              v62 = v217[0];
            }

            v109 = xpc_string_create(v62);
            if (!v109)
            {
              v109 = xpc_null_create();
            }

            v213 = v61;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v109, &v110);
            xpc_release(v110);
            v110 = 0;
            xpc_release(v109);
            v109 = 0;
            break;
          case 0x15:
            v107 = xpc_string_create("ATM_CALL_END_MediaHeartbeatTimeout");
            if (!v107)
            {
              v107 = xpc_null_create();
            }

            v55 = this + 160;
            v213 = v55;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v107, &v108);
            xpc_release(v108);
            v108 = 0;
            xpc_release(v107);
            v107 = 0;
            v105 = xpc_string_create("ATM_CALL_END_REASON_MediaHeartbeatTimeout");
            if (!v105)
            {
              v105 = xpc_null_create();
            }

            v213 = v55;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v105, &v106);
            xpc_release(v106);
            v106 = 0;
            xpc_release(v105);
            v105 = 0;
            if (v218 >= 0)
            {
              v56 = v217;
            }

            else
            {
              v56 = v217[0];
            }

            v103 = xpc_string_create(v56);
            if (!v103)
            {
              v103 = xpc_null_create();
            }

            v213 = v55;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v103, &v104);
            xpc_release(v104);
            v104 = 0;
            xpc_release(v103);
            v103 = 0;
            break;
          case 0x16:
            v101 = xpc_string_create("ATM_CALL_END_LocalSocketError");
            if (!v101)
            {
              v101 = xpc_null_create();
            }

            v50 = this + 160;
            v213 = v50;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v101, &v102);
            xpc_release(v102);
            v102 = 0;
            xpc_release(v101);
            v101 = 0;
            v99 = xpc_string_create("ATM_CALL_END_REASON_LocalSocketError");
            if (!v99)
            {
              v99 = xpc_null_create();
            }

            v213 = v50;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v99, &v100);
            xpc_release(v100);
            v100 = 0;
            xpc_release(v99);
            v99 = 0;
            if (v218 >= 0)
            {
              v51 = v217;
            }

            else
            {
              v51 = v217[0];
            }

            v97 = xpc_string_create(v51);
            if (!v97)
            {
              v97 = xpc_null_create();
            }

            v213 = v50;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v97, &v98);
            xpc_release(v98);
            v98 = 0;
            xpc_release(v97);
            v97 = 0;
            break;
          case 0x17:
            v95 = xpc_string_create("ATM_CALL_END_WaitForRingingTimeout");
            if (!v95)
            {
              v95 = xpc_null_create();
            }

            v52 = this + 160;
            v213 = v52;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v95, &v96);
            xpc_release(v96);
            v96 = 0;
            xpc_release(v95);
            v95 = 0;
            v93 = xpc_string_create("ATM_CALL_END_REASON_WaitForRingingTimeout");
            if (!v93)
            {
              v93 = xpc_null_create();
            }

            v213 = v52;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v93, &v94);
            xpc_release(v94);
            v94 = 0;
            xpc_release(v93);
            v93 = 0;
            v91 = xpc_string_create("ATM_CALL_Setup_failure");
            if (!v91)
            {
              v91 = xpc_null_create();
            }

            v213 = v52;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v91, &v92);
            xpc_release(v92);
            v92 = 0;
            xpc_release(v91);
            v91 = 0;
            break;
          case 0x18:
            v83 = xpc_string_create("ATM_CALL_END_LocalQoSTimeout");
            if (!v83)
            {
              v83 = xpc_null_create();
            }

            v39 = this + 160;
            v213 = v39;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v83, &v84);
            xpc_release(v84);
            v84 = 0;
            xpc_release(v83);
            v83 = 0;
            if (v218 >= 0)
            {
              v40 = v217;
            }

            else
            {
              v40 = v217[0];
            }

            v81 = xpc_string_create(v40);
            if (!v81)
            {
              v81 = xpc_null_create();
            }

            v213 = v39;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v81, &v82);
            xpc_release(v82);
            v82 = 0;
            xpc_release(v81);
            v81 = 0;
            break;
          case 0x19:
            v89 = xpc_string_create("ATM_CALL_END_VoiceNotSupported");
            if (!v89)
            {
              v89 = xpc_null_create();
            }

            v30 = this + 160;
            v213 = v30;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v89, &v90);
            xpc_release(v90);
            v90 = 0;
            xpc_release(v89);
            v89 = 0;
            v87 = xpc_string_create("ATM_CALL_END_REASON_VoiceNotSupported");
            if (!v87)
            {
              v87 = xpc_null_create();
            }

            v213 = v30;
            v214 = "status_code";
            xpc::dict::object_proxy::operator=(&v213, &v87, &v88);
            xpc_release(v88);
            v88 = 0;
            xpc_release(v87);
            v87 = 0;
            if (v218 >= 0)
            {
              v31 = v217;
            }

            else
            {
              v31 = v217[0];
            }

            v85 = xpc_string_create(v31);
            if (!v85)
            {
              v85 = xpc_null_create();
            }

            v213 = v30;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v85, &v86);
            xpc_release(v86);
            v86 = 0;
            xpc_release(v85);
            v85 = 0;
            break;
          case 0x1A:
            v167 = xpc_string_create("ATM_CALL_END_EmergencyStateExited");
            if (!v167)
            {
              v167 = xpc_null_create();
            }

            v213 = this + 160;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v167, &v168);
            xpc_release(v168);
            v168 = 0;
            xpc_release(v167);
            v167 = 0;
            break;
          case 0x1B:
            v165 = xpc_string_create("ATM_CALL_END_AccessBarring");
            if (!v165)
            {
              v165 = xpc_null_create();
            }

            v213 = this + 160;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v165, &v166);
            xpc_release(v166);
            v166 = 0;
            xpc_release(v165);
            v165 = 0;
            break;
          case 0x1C:
            v79 = xpc_string_create("ATM_CALL_END_OnEmergencyCall");
            if (!v79)
            {
              v79 = xpc_null_create();
            }

            v24 = this + 160;
            v213 = v24;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v79, &v80);
            xpc_release(v80);
            v80 = 0;
            xpc_release(v79);
            v79 = 0;
            if (v218 >= 0)
            {
              v25 = v217;
            }

            else
            {
              v25 = v217[0];
            }

            v77 = xpc_string_create(v25);
            if (!v77)
            {
              v77 = xpc_null_create();
            }

            v213 = v24;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v77, &v78);
            xpc_release(v78);
            v78 = 0;
            xpc_release(v77);
            v77 = 0;
            break;
          case 0x1E:
            v75 = xpc_string_create("ATM_CALL_END_Deinitializing");
            if (!v75)
            {
              v75 = xpc_null_create();
            }

            v57 = this + 160;
            v213 = v57;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v75, &v76);
            xpc_release(v76);
            v76 = 0;
            xpc_release(v75);
            v75 = 0;
            if (v218 >= 0)
            {
              v58 = v217;
            }

            else
            {
              v58 = v217[0];
            }

            v73 = xpc_string_create(v58);
            if (!v73)
            {
              v73 = xpc_null_create();
            }

            v213 = v57;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v73, &v74);
            xpc_release(v74);
            v74 = 0;
            xpc_release(v73);
            v73 = 0;
            break;
          case 0x1F:
            v71 = xpc_string_create("ATM_CALL_END_NoEmergencyLocation");
            if (!v71)
            {
              v71 = xpc_null_create();
            }

            v22 = this + 160;
            v213 = v22;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v71, &v72);
            xpc_release(v72);
            v72 = 0;
            xpc_release(v71);
            v71 = 0;
            if (v218 >= 0)
            {
              v23 = v217;
            }

            else
            {
              v23 = v217[0];
            }

            v69 = xpc_string_create(v23);
            if (!v69)
            {
              v69 = xpc_null_create();
            }

            v213 = v22;
            v214 = "callEndStatus";
            xpc::dict::object_proxy::operator=(&v213, &v69, &v70);
            xpc_release(v70);
            v70 = 0;
            xpc_release(v69);
            v69 = 0;
            break;
          case 0x22:
            v163 = xpc_string_create("ATM_CALL_END_LocalBusy");
            if (!v163)
            {
              v163 = xpc_null_create();
            }

            v213 = this + 160;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v163, &v164);
            xpc_release(v164);
            v164 = 0;
            xpc_release(v163);
            v163 = 0;
            break;
          case 0x25:
            v161 = xpc_string_create("ATM_CALL_END_RequiresRedial");
            if (!v161)
            {
              v161 = xpc_null_create();
            }

            v213 = this + 160;
            v214 = "end_reason";
            xpc::dict::object_proxy::operator=(&v213, &v161, &v162);
            xpc_release(v162);
            v162 = 0;
            xpc_release(v161);
            v161 = 0;
            break;
          default:
            break;
        }

        if (SHIBYTE(v218) < 0)
        {
          operator delete(v217[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E50DC050(_Unwind_Exception *a1)
{
  if (*(v2 - 65) < 0)
  {
    operator delete(*(v2 - 88));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12_GLOBAL__N_116CallEndEventImpl13applyAddendumEN3xpc4dictE_block_invoke(uint64_t a1, const char *a2, xpc_object_t object)
{
  v4 = *(a1 + 32);
  objecta = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    objecta = xpc_null_create();
  }

  v5 = (*(*(v4 + 8) + 64))(v4 + 8);
  (*(*(v4 + 8) + 16))(v4 + 8, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "overriding ", 11);
  *(v5 + 17) = 0;
  v6 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), a2, v6);
  *(v5 + 17) = 0;
  v7 = *(v5 + 8);
  LOBYTE(__p[0]) = 61;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, __p, 1);
  *(v5 + 17) = 0;
  xpc::object::to_string(__p, &objecta);
  (*(*v5 + 32))(v5, __p);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = objecta;
  if (objecta)
  {
    xpc_retain(objecta);
  }

  else
  {
    v9 = xpc_null_create();
  }

  __p[0] = (v4 + 160);
  __p[1] = a2;
  xpc::dict::object_proxy::operator=(__p, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  xpc_release(objecta);
  return 1;
}

void SipUserAgentHeader::~SipUserAgentHeader(void **this)
{
  *this = &unk_1F5EBEF98;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5EBEF98;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void ims::CFType::setRef(ims::CFType *this, CFTypeRef cf, int a3)
{
  v4 = *(this + 1);
  if (v4 != cf)
  {
    if (cf && v4)
    {
      v7 = CFGetTypeID(cf);
      if (v7 != (*(*this + 32))(this))
      {
        return;
      }

      v4 = *(this + 1);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    *(this + 1) = cf;
    if (cf && a3)
    {

      CFRetain(cf);
    }
  }
}

void ims::CFType::shortLog(ims::CFType *this, void *a2, ImsOutStream *a3, char a4)
{
  v5 = a3;
  if (!this)
  {
    TypeID = CFNullGetTypeID();
    if (TypeID == CFBooleanGetTypeID())
    {
LABEL_25:
      if (a4)
      {
        std::string::basic_string[abi:ne200100](&__b, v5, 32);
        LoggableString::LoggableString(&__p, &__b);
        (*(*a2 + 40))(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__b.__r_.__value_.__l.__data_);
        }
      }

      Value = CFBooleanGetValue(this);
      v20 = Value == 0;
      if (Value)
      {
        v13 = "true";
      }

      else
      {
        v13 = "false";
      }

      v12 = a2[1];
      if (v20)
      {
        v14 = 5;
      }

      else
      {
        v14 = 4;
      }

LABEL_36:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
LABEL_37:
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      return;
    }

    goto LABEL_11;
  }

  v8 = CFGetTypeID(this);
  if (v8 == CFStringGetTypeID())
  {
    if (a4)
    {
      std::string::basic_string[abi:ne200100](&__b, v5, 32);
      LoggableString::LoggableString(&__p, &__b);
      (*(*a2 + 40))(a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }
    }

    v9 = a2[1];
    __p.__r_.__value_.__s.__data_[0] = 34;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &__p, 1);
    *(a2 + 17) = 0;
    ims::CFString::asString(this, 0x8000100, &__p);
    (*(*a2 + 32))(a2, &__p);
    v10 = a2[1];
    __b.__r_.__value_.__s.__data_[0] = 34;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &__b, 1);
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return;
  }

  v15 = CFGetTypeID(this);
  if (v15 == CFNumberGetTypeID())
  {
    if (a4)
    {
      std::string::basic_string[abi:ne200100](&__b, v5, 32);
      LoggableString::LoggableString(&__p, &__b);
      (*(*a2 + 40))(a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }
    }

    v17 = ims::CFNumber::asUint32(this, v16);
    MEMORY[0x1E6923350](a2[1], v17);
    goto LABEL_37;
  }

  v18 = CFGetTypeID(this);
  if (v18 == CFBooleanGetTypeID())
  {
    goto LABEL_25;
  }

  v21 = CFGetTypeID(this);
  if (v21 == CFArrayGetTypeID())
  {
    theArray = this;
    CFRetain(this);
    v31 = &unk_1F5EC8AD0;
    v22 = a2[1];
    __p.__r_.__value_.__s.__data_[0] = 91;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, &__p, 1);
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          ims::CFType::shortLog(ValueAtIndex, a2, (v5 + 4), 1, v26);
        }
      }
    }

    std::string::basic_string[abi:ne200100](&__b, v5, 32);
    LoggableString::LoggableString(&__p, &__b);
    (*(*a2 + 40))(a2, &__p);
    v27 = a2[1];
    v35 = 93;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, &v35, 1);
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_47;
  }

  v28 = CFGetTypeID(this);
  if (v28 != CFDictionaryGetTypeID())
  {
LABEL_11:
    if (a4)
    {
      std::string::basic_string[abi:ne200100](&__b, v5, 32);
      LoggableString::LoggableString(&__p, &__b);
      (*(*a2 + 40))(a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }
    }

    v12 = a2[1];
    v13 = "???";
    v14 = 3;
    goto LABEL_36;
  }

  theArray = this;
  CFRetain(this);
  v31 = &unk_1F5EF3760;
  v29 = a2[1];
  __p.__r_.__value_.__s.__data_[0] = 123;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, &__p, 1);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  ims::CFDictionary::shortLog(&v31, a2, (v5 + 4), 1);
  std::string::basic_string[abi:ne200100](&__b, v5, 32);
  LoggableString::LoggableString(&__p, &__b);
  (*(*a2 + 40))(a2, &__p);
  v30 = a2[1];
  v35 = 125;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, &v35, 1);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_47:
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__b.__r_.__value_.__l.__data_);
  }

  ims::CFType::~CFType(&v31);
}

void sub_1E50DCC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  ims::CFType::~CFType(&a10);
  _Unwind_Resume(a1);
}

ims::CFNumber *ims::CFNumber::asUint32(ims::CFNumber *this, const void *a2)
{
  if (this)
  {
    v2 = this;
    v3 = CFGetTypeID(this);
    if (v3 == CFNumberGetTypeID())
    {
      if (ims::CFNumber::isFloatingPointType(v2, v4))
      {
        return ims::CFNumber::asDouble(v2, v5);
      }

      else
      {
        valuePtr = 0;
        CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr);
        return valuePtr;
      }
    }

    else
    {
      return 0;
    }
  }

  return this;
}

void ims::CFDictionary::shortLog(ims::CFDictionary *this, ImsOutStream *a2, ImsOutStream *a3, int a4)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  ims::CFDictionary::getKeysAndValues(this, &v17, &v14, 0x8000100);
  v7 = v17;
  if (v18 != v17)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v14 + v9);
      if (a4)
      {
        std::string::basic_string[abi:ne200100](&v12, a3, 32);
        LoggableString::LoggableString(&__p, &v12);
        (*(*a2 + 40))(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v12.__r_.__value_.__l.__data_);
        }
      }

      LoggableString::LoggableString(&__p, (v7 + v8));
      (*(*a2 + 40))(a2, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
      *(a2 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ims::CFType::shortLog(v10, a2, a3, 0, v11);
      ++v9;
      v7 = v17;
      v8 += 24;
    }

    while (v9 < 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3));
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  v14 = &v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
}

void sub_1E50DCF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char *__p, char *a22, uint64_t a23, char a24)
{
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  __p = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

ImsOutStream *ims::CFString::log(const __CFString **this, ImsOutStream *a2)
{
  ims::CFString::asString(this[1], 0x8000100, &__p);
  (*(*a2 + 32))(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a2;
}

void sub_1E50DD080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ims::CFNumber *ims::CFNumber::CFNumber(ims::CFNumber *this, uint64_t a2)
{
  *this = &unk_1F5EF3708;
  *(this + 1) = 0;
  valuePtr = a2;
  *(this + 1) = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  return this;
}

ims::CFNumber *ims::CFNumber::CFNumber(ims::CFNumber *this, unsigned int a2)
{
  *this = &unk_1F5EF3708;
  *(this + 1) = 0;
  valuePtr = a2;
  *(this + 1) = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  return this;
}

{
  *this = &unk_1F5EF3708;
  *(this + 1) = 0;
  valuePtr = a2;
  *(this + 1) = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  return this;
}

double ims::CFNumber::asDouble(ims::CFNumber *this, const void *a2)
{
  v2 = 0.0;
  if (this)
  {
    v4 = CFGetTypeID(this);
    if (v4 == CFNumberGetTypeID())
    {
      if (ims::CFNumber::isFloatingPointType(this, v5))
      {
        valuePtr = 0.0;
        CFNumberGetValue(this, kCFNumberDoubleType, &valuePtr);
        return valuePtr;
      }

      else
      {
        return ims::CFNumber::asUint32(this, v6);
      }
    }
  }

  return v2;
}

const __CFNumber *ims::CFNumber::isFloatingPointType(const __CFNumber *this, const void *a2)
{
  if (this)
  {
    v2 = this;
    v3 = CFGetTypeID(this);
    if (v3 == CFNumberGetTypeID())
    {
      return (CFNumberIsFloatType(v2) != 0);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

ImsOutStream *ims::CFNumber::log(const __CFNumber **this, ImsOutStream *a2)
{
  v5 = ims::CFNumber::isFloatingPointType(this[1], a2);
  v6 = this[1];
  if (v5)
  {
    v7 = ims::CFNumber::asDouble(v6, v4);
    MEMORY[0x1E6923330](*(a2 + 1), v7);
  }

  else
  {
    v8 = ims::CFNumber::asUint32(v6, v4);
    MEMORY[0x1E6923350](*(a2 + 1), v8);
  }

  *(a2 + 17) = 0;
  return a2;
}

ims::CFData *ims::CFData::CFData(ims::CFData *this, UInt8 *a2, CFIndex a3)
{
  *this = &unk_1F5EE1298;
  *(this + 1) = 0;
  ims::CFData::set(this, a2, a3);
  return this;
}

CFDataRef ims::CFData::set(ims::CFData *this, UInt8 *bytes, CFIndex length)
{
  v6 = *(this + 1);
  if (v6)
  {
    CFRelease(v6);
  }

  result = CFDataCreate(0, bytes, length);
  *(this + 1) = result;
  return result;
}

ims::CFData *ims::CFData::CFData(ims::CFData *a1, uint64_t a2)
{
  *a1 = &unk_1F5EE1298;
  *(a1 + 1) = 0;
  ims::CFData::set(a1, *a2, *(a2 + 8) - *a2);
  return a1;
}

void ims::CFMutableArray::appendValue(ims::CFMutableArray *this, const ims::CFType *a2)
{
  v4 = *(this + 1);
  if (!v4)
  {
    ims::CFMutableArray::create(this);
    v4 = *(this + 1);
  }

  v5 = *(a2 + 1);

  CFArrayAppendValue(v4, v5);
}

void ims::CFMutableArray::appendValue(ims::CFMutableArray *this, const void *value)
{
  v4 = *(this + 1);
  if (!v4)
  {
    ims::CFMutableArray::create(this);
    v4 = *(this + 1);
  }

  CFArrayAppendValue(v4, value);
}

void ims::CFMutableArray::merge(__CFArray **this, const ims::CFArray *a2)
{
  if (!this[1])
  {
    ims::CFMutableArray::create(this);
  }

  v4 = *(a2 + 1);
  if (v4)
  {
    v7.length = CFArrayGetCount(v4);
    v5 = this[1];
    v6 = *(a2 + 1);
    v7.location = 0;

    CFArrayAppendArray(v5, v6, v7);
  }
}

void ims::CFMutableEnum::addToEnum(ims::CFMutableEnum *this, const void *a2)
{
  v4 = *(this + 1);
  if (!v4)
  {
    ims::CFMutableEnum::create(this);
    v4 = *(this + 1);
  }

  Value = CFDictionaryGetValue(v4, qword_1EE2BD0F8);
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFArrayGetTypeID())
    {
      CFArrayAppendValue(v6, a2);
      v8 = *(this + 1);
      v9 = qword_1EE2BD0F8;

      CFDictionaryReplaceValue(v8, v9, v6);
    }
  }
}

void ims::CFMutableEnum::create(ims::CFMutableEnum *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 1) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(*(this + 1), qword_1EE2BD0F8, Mutable);
  v4 = *(this + 1);
  v5 = qword_1EE2BD108;
  v6 = qword_1EE2BD0E8;

  CFDictionaryAddValue(v4, v5, v6);
}

void ims::CFMutableEnum::setValue(ims::CFMutableEnum *this@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 1);
  if (!v6)
  {
    ims::CFMutableEnum::create(this);
    v6 = *(this + 1);
  }

  Value = CFDictionaryGetValue(v6, qword_1EE2BD0F8);
  if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFArrayGetTypeID()))
  {
    v19.length = CFArrayGetCount(v8);
    v19.location = 0;
    if (CFArrayContainsValue(v8, v19, a2))
    {
      CFDictionaryReplaceValue(*(this + 1), qword_1EE2BD108, a2);
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *a3 = &unk_1F5EBDEF8;
      *(a3 + 8) = &_bambiDomain;
      *(a3 + 16) = 0;
      return;
    }

    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = &unk_1F5EBDEF8;
    v13 = &_bambiDomain;
    v14 = 0x40000000;
    v11 = ImsResult::operator<<<char [31]>(&v12, "value to be set is not allowed");
    ImsResult::ImsResult(a3, v11);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = &unk_1F5EBDEF8;
    v13 = &_bambiDomain;
    v14 = 0x40000000;
    v10 = ImsResult::operator<<<char [39]>(&v12, "No allowed values in enum to set value");
    ImsResult::ImsResult(a3, v10);
  }

  ImsResult::~ImsResult(&v12);
}

void sub_1E50DD838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void ims::CFEnum::valueAsString(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v13.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v13.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v13.__r_.__value_.__r.__words[2]) = 0x40000000;
    v9 = ImsResult::operator<<<char [13]>(&v13, "enum is NULL");
    ImsResult::ImsResult(a3, v9);
LABEL_10:
    ImsResult::~ImsResult(&v13);
    return;
  }

  Value = CFDictionaryGetValue(v4, qword_1EE2BD108);
  if (!Value)
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v13.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v13.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v13.__r_.__value_.__r.__words[2]) = 0x40000000;
    v10 = ImsResult::operator<<<char [27]>(&v13, "no value set for this enum");
    ImsResult::ImsResult(a3, v10);
    goto LABEL_10;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != CFStringGetTypeID())
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v13.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v13.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v13.__r_.__value_.__r.__words[2]) = 0x40000000;
    v11 = ImsResult::operator<<<char [27]>(&v13, "enum value is not a string");
    ImsResult::ImsResult(a3, v11);
    goto LABEL_10;
  }

  v12[1] = v7;
  CFRetain(v7);
  v12[0] = &unk_1F5EF36B0;
  ims::CFString::asString(v7, 0x8000100, &v13);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v13;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
  ims::CFType::~CFType(v12);
}

void sub_1E50DDA90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ims::CFType::~CFType(va);
  _Unwind_Resume(a1);
}

CFDictionaryRef ims::CFDictionary::createEmpty(ims::CFDictionary *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  result = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(this + 1) = result;
  return result;
}

uint64_t ims::CFDictionary::getStringValue(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = &unk_1F5EF36B0;
  v8 = 0;
  v4 = ims::CFDictionary::getValue<ims::CFString>(a1, a2, &v7);
  if (v4)
  {
    ims::CFString::asString(v8, 0x8000100, &v6);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v6;
  }

  ims::CFType::~CFType(&v7);
  return v4;
}

void sub_1E50DDBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ims::CFType::~CFType(va);
  _Unwind_Resume(a1);
}

uint64_t ims::CFDictionary::getStringValue@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return ims::CFDictionary::getStringValue(a1, a2, a3);
}

void sub_1E50DDBF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::CFDictionary::getUint32Value(uint64_t a1, char *a2, _DWORD *a3)
{
  v7 = &unk_1F5EF3708;
  v8 = 0;
  v5 = ims::CFDictionary::getValue<ims::CFNumber>(a1, a2, &v7);
  if (v5)
  {
    *a3 = ims::CFNumber::asUint32(v8, v4);
  }

  ims::CFType::~CFType(&v7);
  return v5;
}

BOOL ims::CFDictionary::getBoolValue(uint64_t a1, char *a2, BOOL *a3)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v8 = 0;
  key = 0;
  ims::CFString::CFString(&v8, a2);
  Value = CFDictionaryGetValue(*(a1 + 8), key);
  v6 = Value != 0;
  if (Value)
  {
    *a3 = CFBooleanGetValue(Value) != 0;
  }

  ims::CFType::~CFType(&v8);
  return v6;
}

void ims::CFDictionary::keys(uint64_t a1, const void ***a2)
{
  __p = 0;
  v3 = 0;
  v4 = 0;
  ims::CFDictionary::getKeysAndValues(a1, a2, &__p);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }
}

void sub_1E50DDD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ims::CFDictionary::getKeysAndValues(uint64_t a1, const void ***a2, const void ***a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    Count = CFDictionaryGetCount(v4);
    if (Count)
    {
      v8 = Count;
      std::vector<void const*>::resize(a2, Count);
      std::vector<void const*>::resize(a3, v8);
      v9 = *(a1 + 8);
      v10 = *a2;
      v11 = *a3;

      CFDictionaryGetKeysAndValues(v9, v10, v11);
    }
  }
}

uint64_t ims::CFDictionary::keysAsStrings(uint64_t a1, uint64_t *a2, const void *a3)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  ims::CFDictionary::keys(a1, &v16);
  v5 = v16;
  v6 = v17;
  while (v5 != v6)
  {
    v7 = *v5;
    if (!*v5 || (v8 = CFGetTypeID(*v5), v8 != CFStringGetTypeID()))
    {
      v13 = 0;
      goto LABEL_13;
    }

    ims::CFString::asString(v7, a3, &__p);
    std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v5;
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3));
  if (v10 == *a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = 1;
  std::__introsort<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,false>(v9, v10, v12, 1);
LABEL_13:
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return v13;
}

void sub_1E50DDF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void const*>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<void const*>::__append(a1, a2 - v2);
  }
}

uint64_t ims::CFDictionary::getKeysAndValues(uint64_t a1, uint64_t a2, const void ***a3, const void *a4)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  ims::CFDictionary::getKeysAndValues(a1, &v13, a3);
  v6 = v13;
  v7 = v14;
  if (v13 == v14)
  {
    v10 = 1;
    if (!v13)
    {
      return v10;
    }

    goto LABEL_10;
  }

  while (1)
  {
    v8 = *v6;
    if (!*v6)
    {
      break;
    }

    v9 = CFGetTypeID(*v6);
    if (v9 != CFStringGetTypeID())
    {
      break;
    }

    ims::CFString::asString(v8, a4, &__p);
    std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (++v6 == v7)
    {
      v10 = 1;
      goto LABEL_9;
    }
  }

  v10 = 0;
LABEL_9:
  v6 = v13;
  if (v13)
  {
LABEL_10:
    v14 = v6;
    operator delete(v6);
  }

  return v10;
}

void sub_1E50DE058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFDictionary *ims::CFDictionary::hasKey(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    ims::CFString::CFString(v4, a2);
    v2 = (CFDictionaryContainsKey(v2, v4[1]) != 0);
    ims::CFType::~CFType(v4);
  }

  return v2;
}

void ims::CFArray::asStrings(uint64_t a1@<X0>, void ***a2@<X1>, uint64_t a3@<X8>)
{
  std::vector<std::string>::clear[abi:ne200100](a2);
  v6 = *(a1 + 8);
  if (v6 && (Count = CFArrayGetCount(v6), v26 = 0, Count >= 1))
  {
    v8 = Count;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), v9);
      if (!ValueAtIndex)
      {
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
        __p.__r_.__value_.__l.__size_ = &_bambiDomain;
        LODWORD(__p.__r_.__value_.__r.__words[2]) = 0x40000000;
        v13 = ImsResult::operator<<<char [6]>(&__p, "item ");
        v14 = ImsResult::operator<<<long>(v13, &v26);
        v15 = ImsResult::operator<<<char [9]>(v14, " is NULL");
        ImsResult::ImsResult(a3, v15);
        goto LABEL_12;
      }

      v11 = ValueAtIndex;
      v12 = CFGetTypeID(ValueAtIndex);
      if (v12 != CFStringGetTypeID())
      {
        break;
      }

      v19 = &unk_1F5EF3658;
      v20 = v11;
      CFRetain(v11);
      v19 = &unk_1F5EF36B0;
      ims::CFString::asString(v20, 0x8000100, &__p);
      std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ims::CFType::~CFType(&v19);
      v9 = v26 + 1;
      v26 = v9;
      if (v9 >= v8)
      {
        goto LABEL_9;
      }
    }

    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    __p.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = 0x40000000;
    v16 = ImsResult::operator<<<char [6]>(&__p, "item ");
    v17 = ImsResult::operator<<<long>(v16, &v26);
    v18 = ImsResult::operator<<<char [17]>(v17, " is not a string");
    ImsResult::ImsResult(a3, v18);
LABEL_12:
    ImsResult::~ImsResult(&__p);
  }

  else
  {
LABEL_9:
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
  }
}

void ims::CFArray::asUint32s(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 8) = *a2;
  v5 = *(a1 + 8);
  if (v5 && (Count = CFArrayGetCount(v5), v28 = 0, Count >= 1))
  {
    v8 = Count;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), v9);
      if (!ValueAtIndex)
      {
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v21 = &unk_1F5EBDEF8;
        v22 = &_bambiDomain;
        v23 = 0x40000000;
        v14 = ImsResult::operator<<<char [6]>(&v21, "item ");
        v15 = ImsResult::operator<<<long>(v14, &v28);
        v16 = ImsResult::operator<<<char [9]>(v15, " is NULL");
        ImsResult::ImsResult(a3, v16);
        goto LABEL_10;
      }

      v11 = ValueAtIndex;
      v12 = CFGetTypeID(ValueAtIndex);
      if (v12 != CFNumberGetTypeID())
      {
        break;
      }

      v21 = &unk_1F5EF3658;
      v22 = v11;
      CFRetain(v11);
      v21 = &unk_1F5EF3708;
      v20 = ims::CFNumber::asUint32(v22, v13);
      std::vector<unsigned int>::push_back[abi:ne200100](a2, &v20);
      ims::CFType::~CFType(&v21);
      v9 = v28 + 1;
      v28 = v9;
      if (v9 >= v8)
      {
        goto LABEL_7;
      }
    }

    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = &unk_1F5EBDEF8;
    v22 = &_bambiDomain;
    v23 = 0x40000000;
    v17 = ImsResult::operator<<<char [6]>(&v21, "item ");
    v18 = ImsResult::operator<<<long>(v17, &v28);
    v19 = ImsResult::operator<<<char [17]>(v18, " is not a number");
    ImsResult::ImsResult(a3, v19);
LABEL_10:
    ImsResult::~ImsResult(&v21);
  }

  else
  {
LABEL_7:
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
  }
}

void sub_1E50DE5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void ims::CFDictionary::asStringMap(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (a2 + 8);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a2, *(a2 + 8));
  *a2 = v6;
  *(a2 + 16) = 0;
  *v6 = 0;
  v7 = *(a1 + 8);
  if (v7)
  {
    Count = CFDictionaryGetCount(v7);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    ims::CFDictionary::getKeysAndValues(a1, &v40, &v37);
    v36 = 0;
    if (Count < 1)
    {
LABEL_19:
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *a3 = &unk_1F5EBDEF8;
      *(a3 + 8) = &_bambiDomain;
      *(a3 + 16) = 0;
    }

    else
    {
      v9 = 0;
      while (1)
      {
        v10 = v40[v9];
        if (!v10 || (v11 = CFGetTypeID(v10), v11 != CFStringGetTypeID()))
        {
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v29 = &unk_1F5EBDEF8;
          v30 = &_bambiDomain;
          LODWORD(v31) = 0x40000000;
          v17 = ImsResult::operator<<<char [5]>(&v29, "key ");
          v18 = ImsResult::operator<<<long>(v17, &v36);
          v19 = ImsResult::operator<<<char [17]>(v18, " is not a string");
          ImsResult::ImsResult(a3, v19);
          ImsResult::~ImsResult(&v29);
          goto LABEL_25;
        }

        v27 = 0;
        v28 = 0;
        v12 = v40[v9];
        v27 = &unk_1F5EF3658;
        v28 = v12;
        if (v12)
        {
          CFRetain(v12);
        }

        v27 = &unk_1F5EF36B0;
        v13 = v37[v9];
        if (!v13)
        {
          break;
        }

        v14 = CFGetTypeID(v13);
        if (v14 != CFStringGetTypeID())
        {
          break;
        }

        v24 = 0;
        v25 = 0;
        v15 = v37[v9];
        v24 = &unk_1F5EF3658;
        v25 = v15;
        if (v15)
        {
          CFRetain(v15);
          v15 = v25;
        }

        v24 = &unk_1F5EF36B0;
        ims::CFString::asString(v15, 0x8000100, &v26);
        ims::CFString::asString(v28, 0x8000100, &__p);
        v43 = 0;
        v16 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a2, &v43, &__p.__r_.__value_.__l.__data_);
        if (!v16)
        {
          operator new();
        }

        if (*(v16 + 79) < 0)
        {
          operator delete(*(v16 + 56));
        }

        *(v16 + 56) = v26;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ims::CFType::~CFType(&v24);
        ims::CFType::~CFType(&v27);
        v36 = ++v9;
        if (Count == v9)
        {
          goto LABEL_19;
        }
      }

      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v29 = &unk_1F5EBDEF8;
      v30 = &_bambiDomain;
      LODWORD(v31) = 0x40000000;
      v20 = ImsResult::operator<<<char [11]>(&v29, "value for ");
      ims::CFString::asString(v28, 0x8000100, &v26);
      v21 = ImsResult::operator<<<std::string>(v20, &v26);
      v22 = ImsResult::operator<<<char [16]>(v21, " isn't a string");
      ImsResult::ImsResult(a3, v22);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      ImsResult::~ImsResult(&v29);
      ims::CFType::~CFType(&v27);
    }

LABEL_25:
    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }
  }

  else
  {
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
  }
}

void sub_1E50DEA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, char a25)
{
  ImsResult::~ImsResult(&a25);
  ims::CFType::~CFType(&a23);
  v27 = *(v25 - 144);
  if (v27)
  {
    *(v25 - 136) = v27;
    operator delete(v27);
  }

  v28 = *(v25 - 120);
  if (v28)
  {
    *(v25 - 112) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t ims::CFDictionary::getMemorySize(ims::CFDictionary *this)
{
  memset(v21, 0, sizeof(v21));
  __p = 0;
  v19 = 0;
  v20 = 0;
  if (ims::CFDictionary::getKeysAndValues(this, v21, &__p, 0x8000100))
  {
    v2 = *(this + 1);
    if (v2)
    {
      Count = CFDictionaryGetCount(v2);
      if (Count >= 1)
      {
        v4 = 0;
        v5 = 0;
        v6 = 0;
        while (1)
        {
          v7 = *(v21[0] + v4 + 23);
          if (v7 < 0)
          {
            v7 = *(v21[0] + v4 + 8);
          }

          v8 = *(__p + v5);
          v6 += v7;
          if (v8)
          {
            v9 = CFGetTypeID(*(__p + v5));
            if (v9 == CFStringGetTypeID())
            {
              v16 = &unk_1F5EF3658;
              v17 = v8;
              CFRetain(v8);
              v16 = &unk_1F5EF36B0;
              MemorySize = ims::CFString::getMemorySize(&v16);
              goto LABEL_23;
            }

            v12 = CFGetTypeID(v8);
            if (v12 == CFNumberGetTypeID())
            {
              v16 = &unk_1F5EF3658;
              v17 = v8;
              CFRetain(v8);
              v16 = &unk_1F5EF3708;
              v6 += 4;
LABEL_24:
              ims::CFType::~CFType(&v16);
              goto LABEL_25;
            }

            TypeID = CFGetTypeID(v8);
          }

          else
          {
            TypeID = CFNullGetTypeID();
          }

          if (TypeID == CFBooleanGetTypeID())
          {
            v16 = &unk_1F5EF3658;
            v17 = v8;
            if (v8)
            {
              CFRetain(v8);
            }

            v16 = &unk_1F5EF38A0;
            v6 += 16;
            goto LABEL_24;
          }

          if (v8)
          {
            v13 = CFGetTypeID(v8);
            if (v13 == CFArrayGetTypeID())
            {
              v16 = &unk_1F5EF3658;
              v17 = v8;
              CFRetain(v8);
              v16 = &unk_1F5EC8AD0;
              MemorySize = ims::CFArray::getMemorySize(&v16);
LABEL_23:
              v6 += MemorySize;
              goto LABEL_24;
            }

            v14 = CFGetTypeID(v8);
            if (v14 == CFDictionaryGetTypeID())
            {
              v16 = &unk_1F5EF3658;
              v17 = v8;
              CFRetain(v8);
              v16 = &unk_1F5EF3760;
              MemorySize = ims::CFDictionary::getMemorySize(&v16);
              goto LABEL_23;
            }
          }

LABEL_25:
          ++v5;
          v4 += 24;
          if (Count == v5)
          {
            goto LABEL_28;
          }
        }
      }
    }
  }

  v6 = 0;
LABEL_28:
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  __p = v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v6;
}

void sub_1E50DEE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14)
{
  ims::CFType::~CFType(&a9);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

std::string::size_type ims::CFString::getMemorySize(const __CFString **this)
{
  ims::CFString::asString(this[1], 0x8000100, &v3);
  size = SHIBYTE(v3.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v3.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v3.__r_.__value_.__l.__size_;
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  return size;
}

CFMutableDictionaryRef ims::CFMutableDictionary::create(ims::CFMutableDictionary *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(this + 1) = result;
  return result;
}

void ims::CFMutableDictionary::setValue(ims::CFMutableDictionary *this, const void *key, const void *value)
{
  v6 = *(this + 1);
  if (!v6)
  {
    ims::CFMutableDictionary::create(this);
    v6 = *(this + 1);
  }

  CFDictionarySetValue(v6, key, value);
}

void ims::CFMutableDictionary::setUintValue(ims::CFMutableDictionary *this, const void *a2, unsigned int a3)
{
  v5 = 0;
  value = 0;
  ims::CFNumber::CFNumber(&v5, a3);
  ims::CFMutableDictionary::setValue(this, a2, value);
  ims::CFType::~CFType(&v5);
}

void ims::CFMutableDictionary::setStringValue(ims::CFMutableDictionary *a1, const void *a2, char *a3)
{
  ims::CFString::CFString(v5, a3);
  ims::CFMutableDictionary::setValue(a1, a2, v5[1]);
  ims::CFType::~CFType(v5);
}

void ims::CFMutableDictionary::setDataValue(ims::CFMutableDictionary *a1, const void *a2, uint64_t a3)
{
  ims::CFData::CFData(&v5, a3);
  ims::CFMutableDictionary::setValue(a1, a2, value);
  ims::CFType::~CFType(&v5);
}

void ims::CFMutableDictionary::merge(const __CFDictionary **this, const ims::CFDictionary *a2)
{
  if (!this[1])
  {
    ims::CFMutableDictionary::create(this);
  }

  if (*(a2 + 1))
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    __p = 0;
    v27 = 0;
    v28 = 0;
    ims::CFDictionary::getKeysAndValues(a2, &v29, &__p);
    v4 = *(a2 + 1);
    if (v4)
    {
      Count = CFDictionaryGetCount(v4);
      if (Count >= 1)
      {
        v6 = 0;
        while (1)
        {
          v7 = this[1];
          if (!v7)
          {
            break;
          }

          v8 = *(v29 + v6);
          v32 = &unk_1F5EF3658;
          v33 = v8;
          if (v8)
          {
            CFRetain(v8);
            v9 = v33;
          }

          else
          {
            v9 = 0;
          }

          v32 = &unk_1F5EF36B0;
          v10 = CFDictionaryContainsKey(v7, v9);
          ims::CFType::~CFType(&v32);
          if (!v10)
          {
            break;
          }

          v11 = *(__p + v6);
          if (!v11)
          {
            goto LABEL_32;
          }

          v12 = CFGetTypeID(v11);
          if (v12 == CFArrayGetTypeID())
          {
            v32 = &unk_1F5EC8AD0;
            v33 = 0;
            v24 = 0;
            v25 = 0;
            v13 = *(v29 + v6);
            v24 = &unk_1F5EF3658;
            v25 = v13;
            if (v13)
            {
              CFRetain(v13);
            }

            v24 = &unk_1F5EF36B0;
            ims::CFDictionary::getValue<ims::CFArray>(this, &v24, &v32);
            v22 = &unk_1F5EBE6A8;
            value = 0;
            v20 = &unk_1F5EF3658;
            v21 = v33;
            if (v33)
            {
              CFRetain(v33);
            }

            v20 = &unk_1F5EC8AD0;
            ims::CFMutableArray::merge(&v22, &v20);
            ims::CFType::~CFType(&v20);
            v14 = *(__p + v6);
            v20 = &unk_1F5EF3658;
            v21 = v14;
            if (v14)
            {
              CFRetain(v14);
            }

            v20 = &unk_1F5EC8AD0;
            ims::CFMutableArray::merge(&v22, &v20);
            ims::CFType::~CFType(&v20);
            ims::CFMutableDictionary::setValue(this, *(v29 + v6), value);
          }

          else
          {
            v15 = *(__p + v6);
            if (!v15)
            {
LABEL_32:
              v19 = 0;
              goto LABEL_33;
            }

            v16 = CFGetTypeID(v15);
            if (v16 != CFDictionaryGetTypeID())
            {
              break;
            }

            v32 = &unk_1F5EF3760;
            v33 = 0;
            v24 = 0;
            v25 = 0;
            v17 = *(v29 + v6);
            v24 = &unk_1F5EF3658;
            v25 = v17;
            if (v17)
            {
              CFRetain(v17);
            }

            v24 = &unk_1F5EF36B0;
            ims::CFDictionary::getValue<ims::CFArray>(this, &v24, &v32);
            v22 = &unk_1F5EBED08;
            value = 0;
            v20 = &unk_1F5EF3658;
            v21 = v33;
            if (v33)
            {
              CFRetain(v33);
            }

            v20 = &unk_1F5EF3760;
            ims::CFMutableDictionary::merge(&v22, &v20);
            ims::CFType::~CFType(&v20);
            v18 = *(__p + v6);
            v20 = &unk_1F5EF3658;
            v21 = v18;
            if (v18)
            {
              CFRetain(v18);
            }

            v20 = &unk_1F5EF3760;
            ims::CFMutableDictionary::merge(&v22, &v20);
            ims::CFType::~CFType(&v20);
            ims::CFMutableDictionary::setValue(this, *(v29 + v6), value);
          }

          ims::CFType::~CFType(&v22);
          ims::CFType::~CFType(&v24);
          ims::CFType::~CFType(&v32);
LABEL_34:
          if (Count == ++v6)
          {
            goto LABEL_35;
          }
        }

        v19 = *(__p + v6);
LABEL_33:
        ims::CFMutableDictionary::setValue(this, *(v29 + v6), v19);
        goto LABEL_34;
      }
    }

LABEL_35:
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }
  }
}

void sub_1E50DF528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  ims::CFType::~CFType(&a11);
  ims::CFType::~CFType(&a13);
  ims::CFType::~CFType((v19 - 80));
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void *ims::CFUUID::CFUUID(void *a1, char *a2)
{
  *a1 = &unk_1F5EF37B8;
  a1[1] = 0;
  ims::CFString::CFString(v4, a2);
  a1[1] = CFUUIDCreateFromString(*MEMORY[0x1E695E480], v4[1]);
  ims::CFType::~CFType(v4);
  return a1;
}

void sub_1E50DF63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ims::CFType::~CFType(&a9);
  ims::CFType::~CFType(v9);
  _Unwind_Resume(a1);
}

ImsOutStream *ims::CFUUID::log(ims::CFUUID *this, ImsOutStream *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    v4 = CFUUIDCreateString(*MEMORY[0x1E695E480], v3);
    v7 = &unk_1F5EF3658;
    v8 = v4;
    if (v4)
    {
      CFRetain(v4);
      v4 = v8;
    }

    v7 = &unk_1F5EF36B0;
    ims::CFString::asString(v4, 0x8000100, &__p);
    ims::CFType::~CFType(&v7);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
  }

  (*(*a2 + 32))(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a2;
}

ImsOutStream *ims::CFBoolean::log(ims::CFBoolean *this, ImsOutStream *a2)
{
  v3 = *(this + 1);
  v4 = "false";
  if (v3 && CFBooleanGetValue(v3))
  {
    v4 = "true";
  }

  v5 = strlen(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), v4, v5);
  *(a2 + 17) = 0;
  return a2;
}

void ims::CFString::~CFString(ims::CFString *this)
{
  ims::CFType::~CFType(this);

  JUMPOUT(0x1E69235B0);
}

void ims::CFNumber::~CFNumber(ims::CFNumber *this)
{
  ims::CFType::~CFType(this);

  JUMPOUT(0x1E69235B0);
}

void ims::CFDictionary::~CFDictionary(ims::CFDictionary *this)
{
  ims::CFType::~CFType(this);

  JUMPOUT(0x1E69235B0);
}

void ims::CFUUID::~CFUUID(ims::CFUUID *this)
{
  ims::CFType::~CFType(this);

  JUMPOUT(0x1E69235B0);
}

void ims::CFBoolean::~CFBoolean(ims::CFBoolean *this)
{
  ims::CFType::~CFType(this);

  JUMPOUT(0x1E69235B0);
}

void std::__introsort<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4)
{
  v125[2] = *MEMORY[0x1E69E9840];
  while (2)
  {
    v7 = &a2[-2].n128_i8[8];
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = a2 - v8;
          v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 3);
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(a1, a1 + 24, v7);
                goto LABEL_238;
              case 4:
                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(a1, a1 + 24, a1 + 48, v7);
                goto LABEL_238;
              case 5:
                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(a1, a1 + 24, a1 + 48, a1 + 72, v7);
                goto LABEL_238;
            }
          }

          else
          {
            if (v10 < 2)
            {
              goto LABEL_238;
            }

            if (v10 == 2)
            {
              ims::lowerCase(v7, &v124);
              ims::lowerCase(a1, &__p);
              v52 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              v53 = v52;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }

              if (v53 < 0)
              {
                v54 = *a1;
                v124.__r_.__value_.__r.__words[2] = *(a1 + 16);
                *&v124.__r_.__value_.__l.__data_ = v54;
                v55 = *v7;
                *(a1 + 16) = a2[-1].n128_u64[1];
                *a1 = v55;
                v56 = *&v124.__r_.__value_.__l.__data_;
                a2[-1].n128_u64[1] = v124.__r_.__value_.__r.__words[2];
                *v7 = v56;
              }

              goto LABEL_238;
            }
          }

          if (v9 <= 575)
          {
            if (a4)
            {
              if (a1 != a2)
              {
                v57 = a1 + 24;
                if ((a1 + 24) != a2)
                {
                  v58 = 0;
                  v59 = a1;
                  do
                  {
                    v60 = v57;
                    ims::lowerCase(v57, &v124);
                    ims::lowerCase(v59, &__p);
                    v61 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (v61 < 0)
                    {
                      v62 = *v60;
                      v122 = *(v60 + 16);
                      v121 = v62;
                      *(v60 + 8) = 0;
                      *(v60 + 16) = 0;
                      *v60 = 0;
                      v63 = v58;
                      do
                      {
                        v64 = a1 + v63;
                        if (*(a1 + v63 + 47) < 0)
                        {
                          operator delete(*(v64 + 24));
                        }

                        *(v64 + 24) = *v64;
                        *(v64 + 40) = *(v64 + 16);
                        *(v64 + 23) = 0;
                        *v64 = 0;
                        if (!v63)
                        {
                          v66 = a1;
                          goto LABEL_143;
                        }

                        ims::lowerCase(&v121, &v124);
                        ims::lowerCase(a1 + v63 - 24, &__p);
                        v65 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v124.__r_.__value_.__l.__data_);
                        }

                        v63 -= 24;
                      }

                      while (v65 < 0);
                      v66 = a1 + v63 + 24;
                      if (*(a1 + v63 + 47) < 0)
                      {
                        operator delete(*v66);
                      }

LABEL_143:
                      v67 = v121;
                      *(v66 + 16) = v122;
                      *v66 = v67;
                    }

                    v57 = v60 + 24;
                    v58 += 24;
                    v59 = v60;
                  }

                  while ((v60 + 24) != a2);
                }
              }
            }

            else if (a1 != a2)
            {
              v107 = a1 + 24;
              if ((a1 + 24) != a2)
              {
                v108 = a1 - 24;
                do
                {
                  v109 = v107;
                  ims::lowerCase(v107, &v124);
                  ims::lowerCase(a1, &__p);
                  v110 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v124.__r_.__value_.__l.__data_);
                  }

                  if (v110 < 0)
                  {
                    v111 = *v109;
                    v122 = *(v109 + 16);
                    v121 = v111;
                    *(v109 + 8) = 0;
                    *(v109 + 16) = 0;
                    *v109 = 0;
                    v112 = v108;
                    do
                    {
                      if (*(v112 + 71) < 0)
                      {
                        operator delete(*(v112 + 48));
                      }

                      *(v112 + 48) = *(v112 + 24);
                      *(v112 + 64) = *(v112 + 40);
                      *(v112 + 47) = 0;
                      *(v112 + 24) = 0;
                      ims::lowerCase(&v121, &v124);
                      ims::lowerCase(v112, &__p);
                      v113 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v124.__r_.__value_.__l.__data_);
                      }

                      v112 -= 24;
                    }

                    while (v113 < 0);
                    if (*(v112 + 71) < 0)
                    {
                      operator delete(*(v112 + 48));
                    }

                    v114 = v121;
                    *(v112 + 64) = v122;
                    *(v112 + 48) = v114;
                  }

                  v107 = v109 + 24;
                  v108 += 24;
                  a1 = v109;
                }

                while ((v109 + 24) != a2);
              }
            }

            goto LABEL_238;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v68 = v11 >> 1;
              v69 = v11 >> 1;
              do
              {
                v70 = v69;
                if (v68 >= v69)
                {
                  v71 = (2 * v69) | 1;
                  v72 = a1 + 24 * v71;
                  if (2 * v69 + 2 < v10)
                  {
                    ims::lowerCase(a1 + 24 * v71, &v124);
                    ims::lowerCase(v72 + 24, &__p);
                    v73 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (v73 < 0)
                    {
                      v72 += 24;
                      v71 = 2 * v70 + 2;
                    }
                  }

                  ims::lowerCase(v72, &v124);
                  v74 = a1 + 24 * v70;
                  ims::lowerCase(v74, &__p);
                  v75 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v124.__r_.__value_.__l.__data_);
                  }

                  if ((v75 & 0x80000000) == 0)
                  {
                    v118 = v70;
                    v76 = *v74;
                    v122 = *(v74 + 16);
                    v121 = v76;
                    *(v74 + 8) = 0;
                    *(v74 + 16) = 0;
                    *v74 = 0;
                    while (1)
                    {
                      v77 = v72;
                      if (*(v74 + 23) < 0)
                      {
                        operator delete(*v74);
                      }

                      v78 = *v72;
                      *(v74 + 16) = *(v72 + 16);
                      *v74 = v78;
                      *(v72 + 23) = 0;
                      *v72 = 0;
                      if (v68 < v71)
                      {
                        break;
                      }

                      v79 = (2 * v71) | 1;
                      v72 = a1 + 24 * v79;
                      v71 = 2 * v71 + 2;
                      if (v71 >= v10)
                      {
                        v71 = v79;
                      }

                      else
                      {
                        ims::lowerCase(a1 + 24 * v79, &v124);
                        ims::lowerCase(v72 + 24, &__p);
                        v80 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v124.__r_.__value_.__l.__data_);
                        }

                        if (v80 >= 0)
                        {
                          v71 = v79;
                        }

                        else
                        {
                          v72 += 24;
                        }
                      }

                      ims::lowerCase(v72, &v124);
                      ims::lowerCase(&v121, &__p);
                      v81 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v124.__r_.__value_.__l.__data_);
                      }

                      v82 = v81;
                      v74 = v77;
                      if (v82 < 0)
                      {
                        if (*(v77 + 23) < 0)
                        {
                          operator delete(*v77);
                        }

                        break;
                      }
                    }

                    v83 = v121;
                    *(v77 + 16) = v122;
                    *v77 = v83;
                    v70 = v118;
                  }
                }

                v69 = v70 - 1;
              }

              while (v70);
              v84 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
              do
              {
                v85 = 0;
                v116 = a2;
                v117 = *a1;
                v125[0] = *(a1 + 8);
                *(v125 + 7) = *(a1 + 15);
                v119 = *(a1 + 23);
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                v86 = a1;
                do
                {
                  v87 = v86;
                  v88 = v86 + 24 * v85;
                  v86 = v88 + 24;
                  v89 = 2 * v85;
                  v85 = (2 * v85) | 1;
                  v90 = v89 + 2;
                  if (v89 + 2 < v84)
                  {
                    ims::lowerCase(v88 + 24, &v124);
                    v91 = v88 + 48;
                    ims::lowerCase(v91, &__p);
                    v92 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (v92 < 0)
                    {
                      v86 = v91;
                      v85 = v90;
                    }

                    if (*(v87 + 23) < 0)
                    {
                      operator delete(*v87);
                    }
                  }

                  v93 = *v86;
                  *(v87 + 16) = *(v86 + 16);
                  *v87 = v93;
                  *(v86 + 23) = 0;
                  *v86 = 0;
                }

                while (v85 <= ((v84 - 2) >> 1));
                a2 = (a2 - 24);
                if (v86 == &v116[-2].n128_i8[8])
                {
                  *v86 = v117;
                  v105 = *(v125 + 7);
                  *(v86 + 8) = v125[0];
                  *(v86 + 15) = v105;
                  *(v86 + 23) = v119;
                }

                else
                {
                  v94 = *(&v116[-2] + 8);
                  *(v86 + 16) = v116[-1].n128_u64[1];
                  *v86 = v94;
                  v116[-2].n128_u64[1] = v117;
                  v95 = v125[0];
                  *(v116[-1].n128_u64 + 7) = *(v125 + 7);
                  v116[-1].n128_u64[0] = v95;
                  v116[-1].n128_u8[15] = v119;
                  v96 = v86 - a1 + 24;
                  if (v96 >= 25)
                  {
                    v97 = (-2 - 0x5555555555555555 * (v96 >> 3)) >> 1;
                    v98 = a1 + 24 * v97;
                    ims::lowerCase(v98, &v124);
                    ims::lowerCase(v86, &__p);
                    v99 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (v99 < 0)
                    {
                      v100 = *v86;
                      v122 = *(v86 + 16);
                      v121 = v100;
                      *(v86 + 8) = 0;
                      *(v86 + 16) = 0;
                      *v86 = 0;
                      while (1)
                      {
                        v101 = v98;
                        if (*(v86 + 23) < 0)
                        {
                          operator delete(*v86);
                        }

                        v102 = *v98;
                        *(v86 + 16) = *(v98 + 16);
                        *v86 = v102;
                        *(v98 + 23) = 0;
                        *v98 = 0;
                        if (!v97)
                        {
                          break;
                        }

                        v97 = (v97 - 1) >> 1;
                        v98 = a1 + 24 * v97;
                        ims::lowerCase(v98, &v124);
                        ims::lowerCase(&v121, &__p);
                        v103 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v124.__r_.__value_.__l.__data_);
                        }

                        v86 = v101;
                        if ((v103 & 0x80000000) == 0)
                        {
                          if (*(v101 + 23) < 0)
                          {
                            operator delete(*v101);
                          }

                          break;
                        }
                      }

                      v104 = v121;
                      *(v101 + 16) = v122;
                      *v101 = v104;
                    }
                  }
                }
              }

              while (v84-- > 2);
            }

            goto LABEL_238;
          }

          v12 = v10 >> 1;
          v13 = a1 + 24 * (v10 >> 1);
          if (v9 < 0xC01)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(v13, a1, v7);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(a1, v13, v7);
            v14 = a1 + 24 * v12 - 24;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(a1 + 24, v14, &a2[-3]);
            v15 = a1 + 24 * v12;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(a1 + 48, v15 + 24, &a2[-5].n128_i64[1]);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(v14, v13, v15 + 24);
            v16 = *a1;
            v124.__r_.__value_.__r.__words[2] = *(a1 + 16);
            *&v124.__r_.__value_.__l.__data_ = v16;
            v17 = *v13;
            *(a1 + 16) = *(v13 + 16);
            *a1 = v17;
            v18 = *&v124.__r_.__value_.__l.__data_;
            *(v13 + 16) = *(&v124.__r_.__value_.__l + 2);
            *v13 = v18;
          }

          --a3;
          if (a4)
          {
            break;
          }

          ims::lowerCase(a1 - 24, &v124);
          ims::lowerCase(a1, &__p);
          v19 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }

          if (v19 < 0)
          {
            break;
          }

          v37 = *a1;
          v122 = *(a1 + 16);
          v121 = v37;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          ims::lowerCase(&v121, &v124);
          ims::lowerCase(v7, &__p);
          v38 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }

          if (v38 < 0)
          {
            v8 = a1;
            do
            {
              ims::lowerCase(&v121, &v124);
              v8 = (v8 + 24);
              ims::lowerCase(v8, &__p);
              v41 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while ((v41 & 0x80000000) == 0);
          }

          else
          {
            v39 = (a1 + 24);
            do
            {
              v8 = v39;
              if (v39 >= a2)
              {
                break;
              }

              ims::lowerCase(&v121, &v124);
              ims::lowerCase(v8, &__p);
              v40 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }

              v39 = (v8 + 24);
            }

            while ((v40 & 0x80000000) == 0);
          }

          v42 = a2;
          if (v8 < a2)
          {
            v42 = a2;
            do
            {
              ims::lowerCase(&v121, &v124);
              v42 -= 24;
              ims::lowerCase(v42, &__p);
              v43 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while (v43 < 0);
          }

          while (v8 < v42)
          {
            v44 = *v8;
            v124.__r_.__value_.__r.__words[2] = v8[1].n128_u64[0];
            *&v124.__r_.__value_.__l.__data_ = v44;
            v45 = *v42;
            v8[1].n128_u64[0] = *(v42 + 16);
            *v8 = v45;
            v46 = *&v124.__r_.__value_.__l.__data_;
            *(v42 + 16) = *(&v124.__r_.__value_.__l + 2);
            *v42 = v46;
            do
            {
              ims::lowerCase(&v121, &v124);
              v8 = (v8 + 24);
              ims::lowerCase(v8, &__p);
              v47 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while ((v47 & 0x80000000) == 0);
            do
            {
              ims::lowerCase(&v121, &v124);
              v42 -= 24;
              ims::lowerCase(v42, &__p);
              v48 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while (v48 < 0);
          }

          v49 = &v8[-2].n128_u64[1];
          if (&v8[-2].n128_i8[8] == a1)
          {
            if (v8[-1].n128_i8[15] < 0)
            {
              operator delete(*v49);
            }
          }

          else
          {
            if (*(a1 + 23) < 0)
            {
              operator delete(*a1);
            }

            v50 = *v49;
            *(a1 + 16) = v8[-1].n128_u64[1];
            *a1 = v50;
            v8[-1].n128_u8[15] = 0;
            v8[-2].n128_u8[8] = 0;
          }

          a4 = 0;
          v51 = v121;
          v8[-1].n128_u64[1] = v122;
          *v49 = v51;
        }

        v20 = 0;
        v21 = *a1;
        v122 = *(a1 + 16);
        v121 = v21;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        do
        {
          ims::lowerCase(a1 + v20 + 24, &v124);
          ims::lowerCase(&v121, &__p);
          v22 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }

          v20 += 24;
        }

        while (v22 < 0);
        v23 = a1 + v20;
        v24 = a2;
        if (v20 == 24)
        {
          v24 = a2;
          do
          {
            if (v23 >= v24)
            {
              break;
            }

            v24 -= 24;
            ims::lowerCase(v24, &v124);
            ims::lowerCase(&v121, &__p);
            v26 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v124.__r_.__value_.__l.__data_);
            }
          }

          while ((v26 & 0x80000000) == 0);
        }

        else
        {
          do
          {
            v24 -= 24;
            ims::lowerCase(v24, &v124);
            ims::lowerCase(&v121, &__p);
            v25 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v124.__r_.__value_.__l.__data_);
            }
          }

          while ((v25 & 0x80000000) == 0);
        }

        v8 = (a1 + v20);
        if (v23 < v24)
        {
          v27 = v24;
          do
          {
            v28 = *v8;
            v124.__r_.__value_.__r.__words[2] = v8[1].n128_u64[0];
            *&v124.__r_.__value_.__l.__data_ = v28;
            v29 = *v27;
            v8[1].n128_u64[0] = *(v27 + 16);
            *v8 = v29;
            v30 = *&v124.__r_.__value_.__l.__data_;
            *(v27 + 16) = *(&v124.__r_.__value_.__l + 2);
            *v27 = v30;
            do
            {
              v8 = (v8 + 24);
              ims::lowerCase(v8, &v124);
              ims::lowerCase(&v121, &__p);
              v31 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while (v31 < 0);
            do
            {
              v27 -= 24;
              ims::lowerCase(v27, &v124);
              ims::lowerCase(&v121, &__p);
              v32 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while ((v32 & 0x80000000) == 0);
          }

          while (v8 < v27);
        }

        v33 = &v8[-2].n128_u64[1];
        if (&v8[-2].n128_i8[8] == a1)
        {
          if (v8[-1].n128_i8[15] < 0)
          {
            operator delete(*v33);
          }
        }

        else
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v34 = *v33;
          *(a1 + 16) = v8[-1].n128_u64[1];
          *a1 = v34;
          v8[-1].n128_u8[15] = 0;
          v8[-2].n128_u8[8] = 0;
        }

        v35 = v121;
        v8[-1].n128_u64[1] = v122;
        *v33 = v35;
        if (v23 >= v24)
        {
          break;
        }

LABEL_64:
        std::__introsort<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,false>(a1, &v8[-2].n128_i8[8], a3, a4 & 1);
        a4 = 0;
      }

      v36 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*>(a1, (v8 - 24));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*>(v8, a2))
      {
        break;
      }

      if (!v36)
      {
        goto LABEL_64;
      }
    }

    a2 = (v8 - 24);
    if (!v36)
    {
      continue;
    }

    break;
  }

LABEL_238:
  v115 = *MEMORY[0x1E69E9840];
}

void sub_1E50E0940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ims::lowerCase(a2, v24);
  ims::lowerCase(a1, &__p);
  v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24[0].__r_.__value_.__l.__data_);
  }

  if (v6 < 0)
  {
    ims::lowerCase(a3, v24);
    ims::lowerCase(a2, &__p);
    v9 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24[0].__r_.__value_.__l.__data_);
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
LABEL_15:
      v10 = *(a1 + 16);
      v11 = *a1;
      v12 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v12;
      *a2 = v11;
      *(a2 + 16) = v10;
      ims::lowerCase(a3, v24);
      ims::lowerCase(a2, &__p);
      v13 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24[0].__r_.__value_.__l.__data_);
        if ((v13 & 0x80000000) == 0)
        {
          return result;
        }
      }

      else if ((v13 & 0x80000000) == 0)
      {
        return result;
      }

      v18 = *(a2 + 16);
      result = *a2;
      v20 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v20;
      goto LABEL_30;
    }

    v18 = *(a1 + 16);
    result = *a1;
    v19 = *(a3 + 16);
    *a1 = *a3;
    *(a1 + 16) = v19;
LABEL_30:
    *a3 = result;
    *(a3 + 16) = v18;
    return result;
  }

  ims::lowerCase(a3, v24);
  ims::lowerCase(a2, &__p);
  v7 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24[0].__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    return result;
  }

  v14 = *(a2 + 16);
  v15 = *a2;
  v16 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v16;
  *a3 = v15;
  *(a3 + 16) = v14;
  ims::lowerCase(a2, v24);
  ims::lowerCase(a1, &__p);
  v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24[0].__r_.__value_.__l.__data_);
    if ((v17 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    return result;
  }

  v21 = *(a1 + 16);
  result = *a1;
  v22 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v22;
  *a2 = result;
  *(a2 + 16) = v21;
  return result;
}

void sub_1E50E0CCC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(a1, a2, a3);
  ims::lowerCase(a4, v21);
  ims::lowerCase(a3, &__p);
  v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21[0].__r_.__value_.__l.__data_);
    if ((v8 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    return result;
  }

  v10 = *(a3 + 16);
  v11 = *a3;
  v12 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v12;
  *a4 = v11;
  *(a4 + 16) = v10;
  ims::lowerCase(a3, v21);
  ims::lowerCase(a2, &__p);
  v13 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21[0].__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    return result;
  }

  v14 = *(a2 + 16);
  v15 = *a2;
  v16 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v16;
  *a3 = v15;
  *(a3 + 16) = v14;
  ims::lowerCase(a2, v21);
  ims::lowerCase(a1, &__p);
  v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21[0].__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    v18 = a1[1].n128_u64[0];
    result = *a1;
    v19 = *(a2 + 16);
    *a1 = *a2;
    a1[1].n128_u64[0] = v19;
    *a2 = result;
    *(a2 + 16) = v18;
  }

  return result;
}

void sub_1E50E0EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(a1, a2, a3, a4);
  ims::lowerCase(a5, v27);
  ims::lowerCase(a4, &__p);
  v10 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v27, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[0].__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    return result;
  }

  v12 = *(a4 + 16);
  v13 = *a4;
  v14 = *(a5 + 16);
  *a4 = *a5;
  *(a4 + 16) = v14;
  *a5 = v13;
  *(a5 + 16) = v12;
  ims::lowerCase(a4, v27);
  ims::lowerCase(a3, &__p);
  v15 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v27, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[0].__r_.__value_.__l.__data_);
    if ((v15 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    return result;
  }

  v16 = *(a3 + 16);
  v17 = *a3;
  v18 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v18;
  *a4 = v17;
  *(a4 + 16) = v16;
  ims::lowerCase(a3, v27);
  ims::lowerCase(a2, &__p);
  v19 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v27, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[0].__r_.__value_.__l.__data_);
    if ((v19 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    return result;
  }

  v20 = *(a2 + 16);
  v21 = *a2;
  v22 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v22;
  *a3 = v21;
  *(a3 + 16) = v20;
  ims::lowerCase(a2, v27);
  ims::lowerCase(a1, &__p);
  v23 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v27, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[0].__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    v24 = a1[1].n128_u64[0];
    result = *a1;
    v25 = *(a2 + 16);
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = result;
    *(a2 + 16) = v24;
  }

  return result;
}

void sub_1E50E10E8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*>(__n128 *a1, __n128 *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = (a2 - 24);
        ims::lowerCase(&a2[-2].n128_i64[1], &v23);
        ims::lowerCase(a1, &__p);
        v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        if (v6 < 0)
        {
          v7 = a1[1].n128_u64[0];
          v8 = *a1;
          v9 = v5[1].n128_u64[0];
          *a1 = *v5;
          a1[1].n128_u64[0] = v9;
          *v5 = v8;
          v5[1].n128_u64[0] = v7;
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(a1, &a1[1].n128_i64[1], &a2[-2].n128_i64[1]);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(a1, &a1[1].n128_i64[1], &a1[3], &a2[-2].n128_i64[1]);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(a1, &a1[1].n128_i64[1], &a1[3], &a1[4].n128_i64[1], &a2[-2].n128_i64[1]);
      return 1;
  }

LABEL_15:
  v10 = &a1[3];
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ims::CFDictionary::keysAsStrings(std::vector<std::string> *,unsigned int)::$_0 &,std::string*,0>(a1, &a1[1].n128_i64[1], &a1[3]);
  v11 = &a1[4].n128_i64[1];
  if (&a1[4].n128_i8[8] == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    ims::lowerCase(v11, &v23);
    ims::lowerCase(v10, &__p);
    v14 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v14 < 0)
    {
      v20 = *v11;
      v21 = *(v11 + 16);
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = 0;
      v15 = v12;
      do
      {
        v16 = (a1 + v15);
        if (a1[5].n128_i8[v15 + 15] < 0)
        {
          operator delete(v16[9]);
        }

        *(v16 + 9) = *(v16 + 3);
        v16[11] = v16[8];
        *(v16 + 71) = 0;
        *(v16 + 48) = 0;
        if (v15 == -48)
        {
          v18 = a1;
          goto LABEL_34;
        }

        ims::lowerCase(&v20, &v23);
        ims::lowerCase(&a1[1].n128_i64[1] + v15, &__p);
        v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        v15 -= 24;
      }

      while (v17 < 0);
      v18 = &a1[4].n128_i64[1] + v15;
      if (a1[5].n128_i8[v15 + 15] < 0)
      {
        operator delete(*v18);
      }

LABEL_34:
      *v18 = v20;
      *(v18 + 16) = v21;
      if (++v13 == 8)
      {
        return v11 + 24 == a2;
      }
    }

    v10 = v11;
    v12 += 24;
    v11 += 24;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

void sub_1E50E13DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void const*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t _GLOBAL__sub_I_ImsCFWrappers_cpp()
{
  v0 = *MEMORY[0x1E695E4D0];
  _MergedGlobals_30 = &unk_1F5EF38A0;
  *algn_1EE2BCA08 = v0;
  __cxa_atexit(ims::CFBoolean::~CFBoolean, &_MergedGlobals_30, &dword_1E4C3F000);
  v1 = *MEMORY[0x1E695E4C0];
  qword_1EE2BCA10 = &unk_1F5EF38A0;
  unk_1EE2BCA18 = v1;
  __cxa_atexit(ims::CFBoolean::~CFBoolean, &qword_1EE2BCA10, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(__p, "allowedValues");
  ims::CFString::CFString(&ims::CFEnum::kCFEnumAllowedValuesKey, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  __cxa_atexit(ims::CFString::~CFString, &ims::CFEnum::kCFEnumAllowedValuesKey, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(__p, "value");
  ims::CFString::CFString(&ims::CFEnum::kCFEnumValueKey, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  __cxa_atexit(ims::CFString::~CFString, &ims::CFEnum::kCFEnumValueKey, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(__p, "_");
  ims::CFString::CFString(&ims::CFEnum::kCFEnumPlaceholderValue, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return __cxa_atexit(ims::CFString::~CFString, &ims::CFEnum::kCFEnumPlaceholderValue, &dword_1E4C3F000);
}

void sub_1E50E1728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipDigestAuthChallenge::SipDigestAuthChallenge(SipDigestAuthChallenge *this, SipStandardDigestAuthScheme *a2)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F5EF38F8;
  if (!a2)
  {
    operator new();
  }

  *(this + 8) = a2;
}

SipAuthChallenge *SipDigestAuthChallenge::SipDigestAuthChallenge(SipAuthChallenge *a1, const SipAuthChallenge *a2)
{
  SipAuthChallenge::SipAuthChallenge(a1, a2);
  *v4 = &unk_1F5EF38F8;
  *(a1 + 8) = (*(**(a2 + 8) + 32))(*(a2 + 8));
  return a1;
}

void SipDigestAuthChallenge::~SipDigestAuthChallenge(SipDigestAuthChallenge *this)
{
  *this = &unk_1F5EF38F8;
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  SipAuthChallenge::~SipAuthChallenge(this);
}

{
  SipDigestAuthChallenge::~SipDigestAuthChallenge(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipDigestAuthChallenge::scheme(SipDigestAuthChallenge *this)
{
  return *(this + 8);
}

{
  return *(this + 8);
}

uint64_t SipDigestAuthChallenge::isValid(SipDigestAuthChallenge *this)
{
  result = *(this + 8);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

void sub_1E50E1E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, std::__shared_weak_count *a22, int a23, __int16 a24, char a25, char a26)
{
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  _Unwind_Resume(a1);
}

void XcapBsfServerInfo::~XcapBsfServerInfo(void **this)
{
  *this = &unk_1F5EF3950;
  v2 = std::string::basic_string[abi:ne200100]<0>(&v9, kXcapLoggingFacility);
  v5[0] = 0;
  v8 = 0;
  v3 = ims::debug(v2, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ": ", 2);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Deleting BsfServerInfo: ", 24);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923310](*(v3 + 8), this);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  v4 = this[68];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 575) < 0)
  {
    operator delete(this[69]);
  }

  XcapServerInfo::~XcapServerInfo(this);
}

{
  XcapBsfServerInfo::~XcapBsfServerInfo(this);

  JUMPOUT(0x1E69235B0);
}

void XcapBsfServerInfo::host(XcapBsfServerInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 231) < 0)
  {
    v4 = *(this + 27);
    if (v4)
    {
      v5 = *(this + 26);

      std::string::__init_copy_ctor_external(a2, v5, v4);
      return;
    }
  }

  else if (*(this + 231))
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 13);
    a2->__r_.__value_.__r.__words[2] = *(this + 28);
    return;
  }

  memset(&v18, 0, sizeof(v18));
  std::string::basic_string[abi:ne200100]<0>(&v18, "bsf.");
  memset(&__p, 0, sizeof(__p));
  XcapServerInfo::_constructHostSuffix(this, &__p);
  if (*(this + 264) == 1)
  {
    v6 = XcapServerInfo::k3gppDomain;
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

    v9 = strlen(XcapServerInfo::k3gppDomain);
    if (v9)
    {
      v10 = v9;
      if (size >= v9)
      {
        v11 = p_p + size;
        v12 = *XcapServerInfo::k3gppDomain;
        v13 = p_p;
        do
        {
          if (size - v10 == -1)
          {
            break;
          }

          v14 = memchr(v13, v12, size - v10 + 1);
          if (!v14)
          {
            break;
          }

          v15 = v14;
          if (!memcmp(v14, v6, v10))
          {
            if (v15 == v11 || v15 - p_p == -1)
            {
              break;
            }

            goto LABEL_25;
          }

          v13 = (v15 + 1);
          size = v11 - (v15 + 1);
        }

        while (size >= v10);
      }
    }

    else
    {
LABEL_25:
      v16 = strlen(XcapServerInfo::kImsPrefix);
      std::string::append(&v18, XcapServerInfo::kImsPrefix, v16);
    }
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v18.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_1E50E224C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E50E2560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XcapBsfServerInfo::_constructInitialAuthHeader(XcapBsfServerInfo *this, uint64_t a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  SipAkaAuthResponse::SipAkaAuthResponse(v10, 0);
  v3 = v11;
  __p[0] = "username";
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v11 + 8), "username");
  std::string::operator=((v4 + 5), (a2 + 104));
  std::string::basic_string[abi:ne200100]<0>(__p, "/");
  std::string::operator=((v3 + 56), __p);
  if (SBYTE7(v8) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a2 + 80))(__p, a2);
  v12 = "realm";
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v3 + 8), "realm");
  std::string::operator=((v5 + 5), __p);
  if (SBYTE7(v8) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v12 = "response";
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v3 + 8), "response");
  std::string::operator=((v6 + 5), __p);
  if (SBYTE7(v8) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 0;
  *__p = 0u;
  v8 = 0u;
  ImsStringOutStream::ImsStringOutStream(__p);
}

void XcapBsfServerInfo::setDigestCredentials(XcapBsfServerInfo *this, const SipAuthResponse *a2)
{
  memset(&v33, 0, sizeof(v33));
  if (*(this + 175) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *(this + 19), *(this + 20));
  }

  else
  {
    v33 = *(this + 152);
  }

  v4 = (*(*a2 + 16))(a2);
  *(this + 67) = v4;
  if (v4)
  {
    if (*(this + 108))
    {
      v5 = "PUT";
    }

    else
    {
      v5 = "GET";
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v5);
    std::string::basic_string[abi:ne200100]<0>(&v30, "/");
    v6 = (*(*v4 + 48))(v4, __p, &v30, this + 488);
    if (SBYTE7(v31) < 0)
    {
      operator delete(v30);
    }

    if (v24 < 0)
    {
      operator delete(__p[0]);
      if (v6)
      {
LABEL_12:
        v32 = 0;
        v30 = 0u;
        v31 = 0u;
        ImsStringOutStream::ImsStringOutStream(&v30);
      }
    }

    else if (v6)
    {
      goto LABEL_12;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, kXcapLoggingFacility);
    v18[0] = 0;
    v21 = 0;
    v9 = ims::error(__p, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ": ", 2);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Failed to compute auth response for AKA", 39);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      v8 = v19;
      goto LABEL_20;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, kXcapLoggingFacility);
    v14[0] = 0;
    v17 = 0;
    v7 = ims::error(__p, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ": ", 2);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Auth response is not AKA/Digest", 31);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      v8 = v15;
LABEL_20:
      operator delete(v8);
    }
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *(this + 8);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = *(this + 7);
      if (v13)
      {
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        __p[0] = &unk_1F5EBDEF8;
        __p[1] = &_bambiDomain;
        v23 = 0x40000000;
        v25 = 0;
        v26 = 0;
        XcapSession::operationFailure(v13, __p);
        ImsResult::~ImsResult(__p);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_1E50E2F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  HttpRequest::~HttpRequest(&a49);
  *(v54 - 128) = &unk_1F5EDED18;
  if (*(v54 - 112) == 1)
  {
    v56 = *(v54 - 120);
    if (v56)
    {
      (*(*v56 + 8))(v56);
    }
  }

  if (*(v54 - 57) < 0)
  {
    operator delete(*(v54 - 80));
  }

  _Unwind_Resume(a1);
}

char **XcapBsfServerInfo::fetchRand@<X0>(XcapBsfServerInfo *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = *(this + 66);
  if (result)
  {
    v4 = **result;
    if (result)
    {
      v5 = (*(*result + 3))(result);
      return std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a2, (v5 + 184), (v5 + 200), 0x10uLL);
    }
  }

  return result;
}

void sub_1E50E31E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char **XcapBsfServerInfo::fetchCk(XcapBsfServerInfo *this)
{
  result = *(this + 67);
  if (result)
  {
    v2 = **result;
    if (result)
    {
      return ((*(*result + 4))(result) + 230);
    }
  }

  return result;
}

char **XcapBsfServerInfo::fetchIk(XcapBsfServerInfo *this)
{
  result = *(this + 67);
  if (result)
  {
    v2 = **result;
    if (result)
    {
      return ((*(*result + 4))(result) + 246);
    }
  }

  return result;
}

void XcapBsfServerInfo::fetchBTid(XcapBsfServerInfo *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 68);
  if (v2)
  {
    if (*(v2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *(v2 + 8), *(v2 + 16));
    }

    else
    {
      v3 = *(v2 + 8);
      a2->__r_.__value_.__r.__words[2] = *(v2 + 24);
      *&a2->__r_.__value_.__l.__data_ = v3;
    }
  }

  else
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }
}

void XcapBsfServerInfo::fetchKeyLifetime(XcapBsfServerInfo *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 68);
  if (v2)
  {
    if (*(v2 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *(v2 + 32), *(v2 + 40));
    }

    else
    {
      v3 = *(v2 + 32);
      a2->__r_.__value_.__r.__words[2] = *(v2 + 48);
      *&a2->__r_.__value_.__l.__data_ = v3;
    }
  }

  else
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }
}

void XcapBsfServerInfo::handleHttpResponseSuccess(uint64_t a1)
{
  v1 = *(a1 + 544);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator new();
}

void sub_1E50E3780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  ImsResult::~ImsResult(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  _Unwind_Resume(a1);
}

void XcapBsfServerInfo::handleHttpResponseRedirect(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, kXcapLoggingFacility);
  v15[0] = 0;
  v18 = 0;
  v2 = ims::warn(__p, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), ": ", 2);
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Not implemented", 15);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 56);
      if (v6)
      {
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        __p[0] = &unk_1F5EBDEF8;
        __p[1] = &_bambiDomain;
        v8 = 0x40000000;
        v10 = 0;
        v11 = 0;
        XcapSession::operationFailure(v6, __p);
        ImsResult::~ImsResult(__p);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E50E39AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  ImsResult::~ImsResult(&__p);
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void XcapBsfServerInfo::handleHttpResponseAuthChallenge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 528))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, kXcapLoggingFacility);
    v41[0] = 0;
    v44 = 0;
    v5 = ims::error(&__p, v41);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ": ", 2);
    *(v5 + 17) = 0;
    (*(*a1 + 16))(v39, a1);
    (*(*v5 + 32))(v5, v39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " server has challenged us twice. Probably didn't like our response to the 1st challenge. Failing request", 104);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v40 < 0)
    {
      operator delete(v39[0]);
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42);
    }

    if (v33 < 0)
    {
      operator delete(__p);
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = *(a1 + 56);
        if (v9)
        {
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          __p = &unk_1F5EBDEF8;
          v31 = &_bambiDomain;
          v32 = 0x40000000;
          v34 = 0;
          v35 = 0;
          XcapSession::operationFailure(v9, &__p);
LABEL_35:
          ImsResult::~ImsResult(&__p);
          goto LABEL_36;
        }

        goto LABEL_36;
      }
    }
  }

  else
  {
    XcapServerInfo::_saveCookie(a1, a4);
    v11 = SipAuthScheme::createFromString(a3);
    if (v11)
    {
      v12 = (*(*v11 + 64))(v11);
      *(a1 + 528) = v12;
      if (v12)
      {
        v13 = **v12;
        if (v14)
        {
          v15 = v14;
          v16 = (*(*v14 + 24))(v14);
          __p = "username";
          v17 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v16 + 8), "username");
          std::string::operator=((v17 + 5), (a1 + 104));
          v18 = *(a1 + 64);
          if (v18)
          {
            v19 = std::__shared_weak_count::lock(v18);
            if (v19)
            {
              v20 = v19;
              v21 = *(a1 + 56);
              if (v21)
              {
                XcapSession::handleBsfChallenge(v21, v15);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }
          }

          return;
        }
      }
    }

    else
    {
      *(a1 + 528) = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, kXcapLoggingFacility);
    v26[0] = 0;
    v29 = 0;
    v22 = ims::error(&__p, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), ": ", 2);
    *(v22 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Cannot create challenge from ", 29);
    *(v22 + 17) = 0;
    (*(*a1 + 16))(v39, a1);
    (*(*v22 + 32))(v22, v39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " client. Challenge Header:", 26);
    *(v22 + 17) = 0;
    (*(*v22 + 32))(v22, a3);
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    if (v40 < 0)
    {
      operator delete(v39[0]);
    }

    if (v29 == 1 && v28 < 0)
    {
      operator delete(v27);
    }

    if (v33 < 0)
    {
      operator delete(__p);
    }

    v23 = *(a1 + 64);
    if (v23)
    {
      v24 = std::__shared_weak_count::lock(v23);
      if (v24)
      {
        v8 = v24;
        v25 = *(a1 + 56);
        if (v25)
        {
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          __p = &unk_1F5EBDEF8;
          v31 = &_bambiDomain;
          v32 = 0x40000000;
          v34 = 0;
          v35 = 0;
          XcapSession::operationFailure(v25, &__p);
          goto LABEL_35;
        }

LABEL_36:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }
}

void XcapBsfServerInfo::handleHttpResponseFailure(uint64_t a1, uint64_t a2, const ImsResult *a3)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 56);
      if (v8)
      {
        XcapSession::operationFailure(v8, a3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void XcapBsfServerInfo::httpVersion(XcapBsfServerInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 423) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 50), *(this + 51));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 25);
    a2->__r_.__value_.__r.__words[2] = *(this + 52);
  }
}

void std::__shared_ptr_emplace<XcapBsfServerInfo::create(std::weak_ptr<XcapSession>,XcapConfig const&,unsigned long long)::make_shared_enabler,std::allocator<XcapBsfServerInfo::create(std::weak_ptr<XcapSession>,XcapConfig const&,unsigned long long)::make_shared_enabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EF3A18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void XcapBsfServerInfo::create(std::weak_ptr<XcapSession>,XcapConfig const&,unsigned long long)::make_shared_enabler::~make_shared_enabler(void **a1)
{
  XcapBsfServerInfo::~XcapBsfServerInfo(a1);

  JUMPOUT(0x1E69235B0);
}

void SipPrivacyHeader::~SipPrivacyHeader(void **this)
{
  *this = &unk_1F5EBEF98;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5EBEF98;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void SipFromHeader::~SipFromHeader(SipFromHeader *this)
{
  *this = &unk_1F5EE3838;
  SipUri::~SipUri((this + 104));
  *this = &unk_1F5EEE300;
  *(this + 8) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 72, *(this + 10));

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5EE3838;
  SipUri::~SipUri((this + 104));
  *this = &unk_1F5EEE300;
  *(this + 8) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 72, *(this + 10));
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::pair<XcapNs::nsType const,bambi::XmlTreeNs>::pair[abi:ne200100]<true,0>(uint64_t a1, char a2, __int128 *a3)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v6 = *(a3 + 24);
    *(a1 + 48) = *(a3 + 5);
    *(a1 + 32) = v6;
  }

  return a1;
}

void sub_1E50E44F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void XcapNs::stripXcapNs(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = XcapNs::_allNamespaces;
  if (XcapNs::_allNamespaces == &qword_1EE2BD0D0)
  {
LABEL_41:
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }

    return;
  }

  while (1)
  {
    if (*(v4 + 87) >= 0)
    {
      v5 = *(v4 + 87);
    }

    else
    {
      v5 = *(v4 + 72);
    }

    v22 = 0;
    v23 = 0;
    __p = 0;
    std::string::basic_string[abi:ne200100](&__p, v5 + 1);
    if (v23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v5)
    {
      if (*(v4 + 87) >= 0)
      {
        v7 = (v4 + 64);
      }

      else
      {
        v7 = *(v4 + 64);
      }

      memmove(p_p, v7, v5);
    }

    *&p_p[v5] = 58;
    if (v23 >= 0)
    {
      v8 = HIBYTE(v23);
    }

    else
    {
      v8 = v22;
    }

    std::string::basic_string(&v20, a1, 0, v8, &v24);
    v9 = SHIBYTE(v20.__r_.__value_.__r.__words[2]);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    v11 = HIBYTE(v23);
    v12 = HIBYTE(v23);
    if (v23 < 0)
    {
      v11 = v22;
    }

    if (size != v11)
    {
      v15 = 0;
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

LABEL_31:
      operator delete(v20.__r_.__value_.__l.__data_);
      v12 = HIBYTE(v23);
      goto LABEL_32;
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v20;
    }

    else
    {
      v13 = v20.__r_.__value_.__r.__words[0];
    }

    if (v23 >= 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p;
    }

    v15 = memcmp(v13, v14, size) == 0;
    if (v9 < 0)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (v15)
    {
      break;
    }

    if ((v12 & 0x80) != 0)
    {
      operator delete(__p);
    }

    v16 = *(v4 + 8);
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = *(v4 + 16);
        v18 = *v17 == v4;
        v4 = v17;
      }

      while (!v18);
    }

    v4 = v17;
    if (v17 == &qword_1EE2BD0D0)
    {
      goto LABEL_41;
    }
  }

  if ((v12 & 0x80u) == 0)
  {
    v19 = v12;
  }

  else
  {
    v19 = v22;
  }

  std::string::basic_string(a2, a1, v19, 0xFFFFFFFFFFFFFFFFLL, &v20);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E50E4754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<SipWarning,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::destroy(*a1);
    std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<SipWarning,0>((a1 + 4));

    operator delete(a1);
  }
}

uint64_t *std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<XcapNs::nsType>::__emplace_unique_key_args<XcapNs::nsType,XcapNs::nsType const&>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 25);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void _GLOBAL__sub_I_XcapNs_cpp()
{
  v19[7] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v13, "http://uri.etsi.org/ngn/params/xml/simservs/xcap");
  std::string::basic_string[abi:ne200100]<0>(&v12, "ss");
  bambi::XmlTreeNs::XmlTreeNs(&v14, &v13, &v12);
  std::pair<XcapNs::nsType const,bambi::XmlTreeNs>::pair[abi:ne200100]<true,0>(v15, 0, &v14);
  std::string::basic_string[abi:ne200100]<0>(&v10, "urn:ietf:params:xml:ns:common-policy");
  std::string::basic_string[abi:ne200100]<0>(&v9, "cp");
  bambi::XmlTreeNs::XmlTreeNs(&v11, &v10, &v9);
  std::pair<XcapNs::nsType const,bambi::XmlTreeNs>::pair[abi:ne200100]<true,0>(&v16, 1, &v11);
  std::string::basic_string[abi:ne200100]<0>(&v7, "urn:oma:xml:xdm:common-policy");
  std::string::basic_string[abi:ne200100]<0>(&v6, "ocp");
  bambi::XmlTreeNs::XmlTreeNs(&v8, &v7, &v6);
  std::pair<XcapNs::nsType const,bambi::XmlTreeNs>::pair[abi:ne200100]<true,0>(&v17, 2, &v8);
  std::string::basic_string[abi:ne200100]<0>(&v4, "urn:com:att:tlv:utx");
  std::string::basic_string[abi:ne200100]<0>(&v3, "utns");
  bambi::XmlTreeNs::XmlTreeNs(&v5, &v4, &v3);
  std::pair<XcapNs::nsType const,bambi::XmlTreeNs>::pair[abi:ne200100]<true,0>(&v18, 3, &v5);
  std::string::basic_string[abi:ne200100]<0>(&v1, "urn:ietf:params:xml:ns:xcap-error");
  std::string::basic_string[abi:ne200100]<0>(&v0, "xe");
  bambi::XmlTreeNs::XmlTreeNs(&v2, &v1, &v0);
  std::pair<XcapNs::nsType const,bambi::XmlTreeNs>::pair[abi:ne200100]<true,0>(v19, 4, &v2);
  qword_1EE2BD0D8 = 0;
  qword_1EE2BD0D0 = 0;
  XcapNs::_allNamespaces = &qword_1EE2BD0D0;
  operator new();
}

void sub_1E50E4ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  ims::AccessNetwork::~AccessNetwork(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  ims::AccessNetwork::~AccessNetwork(&a39);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  ims::AccessNetwork::~AccessNetwork(&a57);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  ims::AccessNetwork::~AccessNetwork(&a73);
  if (a68 < 0)
  {
    operator delete(a63);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  ims::AccessNetwork::~AccessNetwork(&a78);
  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  while (v79 != &a79)
  {
    v79 -= 7;
    SipWarning::~SipWarning(v79);
  }

  _Unwind_Resume(a1);
}

void SipResponseCodeMap::fromString(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    ims::tokenize(a2, &v11, 0x3Bu);
    v4 = v11;
    for (i = v12; v4 != i; v4 += 24)
    {
      v6 = std::string::find(v4, 58, 0);
      if (v6 != -1)
      {
        v7 = v6;
        v8 = *(v4 + 23);
        if (v8 < 0)
        {
          v8 = *(v4 + 8);
        }

        if (v6 != v8 - 1)
        {
          memset(&__str, 0, sizeof(__str));
          std::string::basic_string(&__str, v4, 0, v6, &__p);
          ims::chomp(&__str, "\r\n\t ", 3);
          memset(&__p, 0, sizeof(__p));
          std::string::basic_string(&__p, v4, v7 + 1, 0xFFFFFFFFFFFFFFFFLL, &v14);
          SipResponseCodeMap::addResponseCodesForMethodFromString(a1, &__str.__r_.__value_.__l.__data_, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    __str.__r_.__value_.__r.__words[0] = &v11;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  }
}

void sub_1E50E524C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  __p = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void SipResponseCodeMap::addResponseCodesForMethodFromString(uint64_t a1, void **a2, std::string *a3)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  ims::tokenize(a3, &v22, 0x2Cu);
  if (v22 != v23)
  {
    v26 = 0;
    v5 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1 + 8, &v26, a2);
    if (!v5)
    {
      operator new();
    }

    v6 = v22;
    v7 = v23;
    while (v6 != v7)
    {
      LODWORD(v8) = HIBYTE(v6->__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
      {
        size = v6->__r_.__value_.__l.__size_;
        if (!size)
        {
          goto LABEL_47;
        }

        v9 = v6->__r_.__value_.__r.__words[0];
        if (size == 9 && v9->__r_.__value_.__r.__words[0] == 0x554F44454D495445 && v9->__r_.__value_.__s.__data_[8] == 84)
        {
LABEL_43:
          LODWORD(v25.__r_.__value_.__l.__data_) = 60;
          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(v5 + 56, 0x3Cu);
          goto LABEL_47;
        }
      }

      else
      {
        if (!*(&v6->__r_.__value_.__s + 23))
        {
          goto LABEL_47;
        }

        v9 = v6;
        if (v8 == 9)
        {
          v10 = v6->__r_.__value_.__r.__words[0] == 0x554F44454D495445 && v6->__r_.__value_.__s.__data_[8] == 84;
          v9 = v6;
          if (v10)
          {
            goto LABEL_43;
          }
        }
      }

      if (v9->__r_.__value_.__s.__data_[0] == 45)
      {
        std::string::basic_string(&v25, v6, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v26);
        if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v6->__r_.__value_.__l.__data_);
        }

        v13 = *&v25.__r_.__value_.__l.__data_;
        v14 = v25.__r_.__value_.__r.__words[2];
        v6->__r_.__value_.__r.__words[2] = v25.__r_.__value_.__r.__words[2];
        *&v6->__r_.__value_.__l.__data_ = v13;
        v8 = HIBYTE(v14);
        v15 = 0x80000000;
        if ((v8 & 0x80) == 0)
        {
LABEL_29:
          v18 = v6->__r_.__value_.__s.__data_[0];
          if (v8 == 1 && v18 == 42)
          {
LABEL_31:
            v19 = 0x40000000;
LABEL_46:
            LODWORD(v25.__r_.__value_.__l.__data_) = v19 | v15;
            std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(v5 + 56, v19 | v15);
            goto LABEL_47;
          }

          if (v8 != 3)
          {
            goto LABEL_45;
          }

          v17 = v6;
          if ((v18 - 48) >= 0xA)
          {
            goto LABEL_45;
          }

LABEL_34:
          if (__tolower(v17->__r_.__value_.__s.__data_[1]) == 120)
          {
            v20 = (v6->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v6 : v6->__r_.__value_.__r.__words[0];
            if (__tolower(v20[2]) == 120)
            {
              if ((v6->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v21 = v6;
              }

              else
              {
                v21 = v6->__r_.__value_.__r.__words[0];
              }

              v19 = (v21->__r_.__value_.__s.__data_[0] - 48) | 0x40000000;
              goto LABEL_46;
            }
          }

          goto LABEL_45;
        }
      }

      else
      {
        v15 = 0;
        if ((v8 & 0x80) == 0)
        {
          goto LABEL_29;
        }
      }

      v16 = v6->__r_.__value_.__l.__size_;
      if (v16 == 1)
      {
        if (*v6->__r_.__value_.__l.__data_ == 42)
        {
          goto LABEL_31;
        }
      }

      else if (v16 == 3)
      {
        v17 = v6->__r_.__value_.__r.__words[0];
        if (*v6->__r_.__value_.__l.__data_ - 48 <= 9)
        {
          goto LABEL_34;
        }
      }

LABEL_45:
      v19 = ims::strToUint32(v6, 0);
      if (v19)
      {
        goto LABEL_46;
      }

LABEL_47:
      ++v6;
    }
  }

  v25.__r_.__value_.__r.__words[0] = &v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
}

void sub_1E50E55A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, char a13)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](&a13);
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

BOOL SipResponseCodeMap::containsResponseCodeForMethod(uint64_t a1, void **a2, unsigned __int16 a3, _BYTE *a4)
{
  v7 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 8, a2);
  v8 = a1 + 16;
  if (a1 + 16 == v7)
  {
    goto LABEL_8;
  }

  v9 = setContainsResponseCodeOrWildcard(v7 + 56, a3);
  v10 = v9;
  if (a4 && v9 == 2)
  {
    result = 1;
    *a4 = 1;
    return result;
  }

  result = 1;
  if (v10 <= 1)
  {
    return v10 == 0;
  }

  if (v10 != 2)
  {
LABEL_8:
    std::string::basic_string[abi:ne200100]<0>(__p, "*");
    v12 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 8, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    return v8 != v12 && (setContainsResponseCodeOrWildcard(v12 + 56, a3) & 1) == 0;
  }

  return result;
}

void sub_1E50E56CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t setContainsResponseCodeOrWildcard(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_47;
  }

  v5 = v2;
  v6 = v3;
  do
  {
    v7 = *(v6 + 28);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v5 = v6;
    }

    v6 = *(v6 + 8 * v9);
  }

  while (v6);
  if (v5 != v2 && *(v5 + 28) <= a2)
  {
    return 2;
  }

  v10 = a2 | 0x80000000;
  v11 = v2;
  v12 = v3;
  do
  {
    v13 = *(v12 + 28);
    v8 = v13 >= v10;
    v14 = v13 < v10;
    if (v8)
    {
      v11 = v12;
    }

    v12 = *(v12 + 8 * v14);
  }

  while (v12);
  if (v11 != v2 && v10 >= *(v11 + 28))
  {
    return 1;
  }

  v15 = (a2 / 0x64) | 0x40000000;
  v16 = v2;
  v17 = v3;
  do
  {
    v18 = *(v17 + 28);
    v8 = v18 >= v15;
    v19 = v18 < v15;
    if (v8)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v19);
  }

  while (v17);
  if (v16 != v2 && v15 >= *(v16 + 28))
  {
    return 0;
  }

  v20 = (a2 / 0x64) | 0xC0000000;
  v21 = v2;
  v22 = v3;
  do
  {
    v23 = *(v22 + 28);
    v8 = v23 >= v20;
    v24 = v23 < v20;
    if (v8)
    {
      v21 = v22;
    }

    v22 = *(v22 + 8 * v24);
  }

  while (v22);
  if (v21 != v2 && v20 >= *(v21 + 28))
  {
    return 1;
  }

  v25 = v2;
  v26 = v3;
  do
  {
    if (*(v26 + 28) >> 30)
    {
      v25 = v26;
      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v26 = *(v26 + 8 * v27);
  }

  while (v26);
  if (v25 != v2 && *(v25 + 28) < 0x40000001u)
  {
    return 0;
  }

  v29 = v2;
  do
  {
    if (*(v3 + 28) >> 30 == 3)
    {
      v29 = v3;
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v3 = *(v3 + 8 * v30);
  }

  while (v3);
  if (v29 == v2 || *(v29 + 28) >= 0xC0000001)
  {
LABEL_47:
    v29 = v2;
  }

  if (v29 == v2)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t SipResponseCodeMap::operator==(void *a1, uint64_t a2)
{
  if (a1[3] != *(a2 + 24))
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a1 + 2;
  if (v2 == a1 + 2)
  {
    return 1;
  }

  v4 = *(a2 + 8);
  while (1)
  {
    v5 = *(v2 + 55);
    if (v5 >= 0)
    {
      v6 = *(v2 + 55);
    }

    else
    {
      v6 = v2[5];
    }

    v7 = *(v4 + 55);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = v4[5];
    }

    if (v6 != v7)
    {
      return 0;
    }

    v9 = v5 >= 0 ? v2 + 4 : v2[4];
    v10 = v8 >= 0 ? v4 + 4 : v4[4];
    if (memcmp(v9, v10, v6) || v2[9] != v4[9])
    {
      return 0;
    }

    v11 = v2[7];
    if (v11 != v2 + 8)
    {
      v12 = v4[7];
      while (*(v11 + 7) == *(v12 + 7))
      {
        v13 = v11[1];
        v14 = v11;
        if (v13)
        {
          do
          {
            v11 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v11 = v14[2];
            v15 = *v11 == v14;
            v14 = v11;
          }

          while (!v15);
        }

        v16 = v12[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v12[2];
            v15 = *v17 == v12;
            v12 = v17;
          }

          while (!v15);
        }

        v12 = v17;
        if (v11 == v2 + 8)
        {
          goto LABEL_32;
        }
      }

      return 0;
    }

LABEL_32:
    v18 = v2[1];
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
        v19 = v2[2];
        v15 = *v19 == v2;
        v2 = v19;
      }

      while (!v15);
    }

    v20 = v4[1];
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v4[2];
        v15 = *v21 == v4;
        v4 = v21;
      }

      while (!v15);
    }

    result = 1;
    v4 = v21;
    v2 = v19;
    if (v19 == v3)
    {
      return result;
    }
  }
}

ImsOutStream *SipResponseCodeMap::log(SipResponseCodeMap *this, ImsOutStream *a2)
{
  v3 = *(this + 1);
  v24 = this + 16;
  if (v3 != this + 16)
  {
    v4 = 1;
    v5 = *(MEMORY[0x1E69E54E8] + 24);
    v25 = v5;
    v26 = *MEMORY[0x1E69E54E8];
    while (1)
    {
      if ((v4 & 1) == 0)
      {
        v6 = *(a2 + 1);
        LOBYTE(v29) = 59;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v29, 1);
        *(a2 + 17) = 0;
      }

      (*(*a2 + 32))(a2, v3 + 4);
      v7 = *(a2 + 1);
      LOBYTE(v29) = 58;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v29, 1);
      *(a2 + 17) = 0;
      v8 = *(v3 + 7);
      if (v8 != v3 + 64)
      {
        break;
      }

LABEL_46:
      v21 = *(v3 + 1);
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
          v22 = *(v3 + 2);
          v15 = *v22 == v3;
          v3 = v22;
        }

        while (!v15);
      }

      v4 = 0;
      v3 = v22;
      if (v22 == v24)
      {
        return a2;
      }
    }

    v9 = 1;
    while (1)
    {
      v10 = *(v8 + 7);
      if ((v9 & 1) == 0)
      {
        v11 = *(a2 + 1);
        LOBYTE(v29) = 44;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v29, 1);
        *(a2 + 17) = 0;
      }

      if ((v10 & 0x80000000) != 0)
      {
        v10 &= 0x7FFFFFFFu;
        v12 = *(a2 + 1);
        LOBYTE(v29) = 45;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v29, 1);
        *(a2 + 17) = 0;
      }

      if (v10 == 60)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "ETIMEDOUT", 9);
      }

      else
      {
        if (v10 >> 30)
        {
          if ((v10 & 0x3FFFFFFF) != 0)
          {
            if ((v10 & 0x3FFFFFFF) >= 0xA)
            {
              v16 = "???";
              goto LABEL_27;
            }

            v37 = 0;
            memset(v36, 0, sizeof(v36));
            v34 = 0u;
            v35 = 0u;
            *__src = 0u;
            *__p = 0u;
            v30 = 0u;
            v31 = 0u;
            v29 = 0u;
            std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
            v17 = MEMORY[0x1E6923350](&v29, v10 & 0x3FFFFFFF);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "xx", 2);
            if ((BYTE8(v35) & 0x10) != 0)
            {
              v19 = v35;
              if (v35 < __src[1])
              {
                *&v35 = __src[1];
                v19 = __src[1];
              }

              v20 = __src[0];
            }

            else
            {
              if ((BYTE8(v35) & 8) == 0)
              {
                v18 = 0;
                v28 = 0;
                goto LABEL_41;
              }

              v20 = *(&v30 + 1);
              v19 = *(&v31 + 1);
            }

            v18 = v19 - v20;
            if ((v19 - v20) >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v18 >= 0x17)
            {
              operator new();
            }

            v28 = v19 - v20;
            if (v18)
            {
              memmove(&__dst, v20, v18);
            }

LABEL_41:
            *(&__dst + v18) = 0;
            *&v29 = v26;
            *(&v29 + *(v26 - 24)) = v25;
            *(&v29 + 1) = MEMORY[0x1E69E5548] + 16;
            if (SHIBYTE(v34) < 0)
            {
              operator delete(__p[1]);
            }

            *(&v29 + 1) = MEMORY[0x1E69E5538] + 16;
            std::locale::~locale(&v30);
            std::ostream::~ostream();
            MEMORY[0x1E6923510](v36);
          }

          else
          {
            v16 = "*";
LABEL_27:
            std::string::basic_string[abi:ne200100]<0>(&__dst, v16);
          }

          (*(*a2 + 32))(a2, &__dst);
          if (v28 < 0)
          {
            operator delete(__dst);
          }

          goto LABEL_16;
        }

        MEMORY[0x1E6923350](*(a2 + 1), v10);
      }

      *(a2 + 17) = 0;
LABEL_16:
      v13 = *(v8 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v8 + 2);
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v9 = 0;
      v8 = v14;
      if (v14 == v3 + 64)
      {
        goto LABEL_46;
      }
    }
  }

  return a2;
}

void sub_1E50E5ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::ostringstream::~ostringstream(&a11, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  _Unwind_Resume(a1);
}

BOOL SipResponseCodeMap::empty(SipResponseCodeMap *this)
{
  v1 = *(this + 1);
  v2 = this + 16;
  if (v1 == this + 16)
  {
    return 1;
  }

  do
  {
    v3 = *(v1 + 9);
    result = v3 == 0;
    if (v3)
    {
      break;
    }

    v5 = *(v1 + 1);
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = *(v1 + 2);
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

void SipResponseCodeMap::~SipResponseCodeMap(SipResponseCodeMap *this)
{
  *this = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 8, *(this + 2));
}

{
  *this = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 8, *(this + 2));

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void IpAddress::loggableName(IpAddress *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E50E61F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a18 == 1)
  {
    if (a17)
    {
      (*(*a17 + 8))(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void IpAddress::asString()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E50E6378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    if (a14)
    {
      (*(*a14 + 8))(a14);
    }
  }

  _Unwind_Resume(exception_object);
}

void IpAddress::asString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  IpAddress::asString();
}

void sub_1E50E6414(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL IpAddress::parseIPv4Address(const std::string *a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *a2 = 528;
  memset(&__p, 0, sizeof(__p));
  memset(&v12, 0, sizeof(v12));
  v4 = std::string::find(a1, 58, 0);
  if (v4 == -1)
  {
    std::string::operator=(&__p, a1);
  }

  else
  {
    v5 = v4;
    std::string::basic_string(&v11, a1, 0, v4, &v14);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v11;
    std::string::basic_string(&v11, a1, v5 + 1, 0xFFFFFFFFFFFFFFFFLL, &v14);
    v12 = v11;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v7 = inet_pton(2, p_p, (a2 + 4));
  v8 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if (v7 == 1)
  {
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = v12.__r_.__value_.__r.__words[0];
      if (!v12.__r_.__value_.__l.__size_)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (!*(&v12.__r_.__value_.__s + 23))
      {
        goto LABEL_18;
      }

      v9 = &v12;
    }

    *(a2 + 2) = bswap32(strtoul(v9, 0, 10)) >> 16;
  }

  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  v9 = v12.__r_.__value_.__r.__words[0];
LABEL_17:
  operator delete(v9);
LABEL_18:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7 == 1;
}

void sub_1E50E658C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL IpAddress::parseIPv6Address(std::string *__str, uint64_t a2, BOOL *a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *a2 = 7708;
  memset(&__p, 0, sizeof(__p));
  memset(&__stra, 0, sizeof(__stra));
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = __str;
  }

  else
  {
    v6 = __str->__r_.__value_.__r.__words[0];
  }

  if (v6->__r_.__value_.__s.__data_[0] == 91)
  {
    v7 = std::string::find(__str, 93, 0);
    if (v7 == -1)
    {
      goto LABEL_24;
    }

    v8 = v7;
    std::string::basic_string(&v25, __str, 1uLL, v7 - 1, &v28);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v25;
    v9 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    size = __str->__r_.__value_.__l.__size_;
    if (v9 >= 0)
    {
      size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    if (size != v8 + 1)
    {
      if (v9 >= 0)
      {
        v11 = __str;
      }

      else
      {
        v11 = __str->__r_.__value_.__r.__words[0];
      }

      if (v11->__r_.__value_.__s.__data_[v8 + 1] == 58)
      {
        std::string::basic_string(&v25, __str, v8 + 2, 0xFFFFFFFFFFFFFFFFLL, &v28);
        __stra = v25;
        goto LABEL_17;
      }

LABEL_24:
      v15 = 0;
      goto LABEL_49;
    }
  }

  else
  {
    std::string::operator=(&__p, __str);
  }

LABEL_17:
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v13 = inet_pton(30, p_p, (a2 + 8));
  v14 = SHIBYTE(__stra.__r_.__value_.__r.__words[2]);
  v15 = v13 == 1;
  if (v13 == 1)
  {
    if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!__stra.__r_.__value_.__l.__size_)
      {
        goto LABEL_28;
      }

      p_stra = __stra.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&__stra.__r_.__value_.__s + 23))
      {
        goto LABEL_28;
      }

      p_stra = &__stra;
    }

    *(a2 + 2) = bswap32(strtoul(p_stra, 0, 10)) >> 16;
LABEL_28:
    if (a3)
    {
      v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &__p;
      }

      else
      {
        v18 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v17 = __p.__r_.__value_.__l.__size_;
      }

      v19 = v18 + v17;
      if (v17 >= 2)
      {
        v20 = v18;
        do
        {
          v21 = memchr(v20, 58, v17 - 1);
          if (!v21)
          {
            break;
          }

          if (*v21 == 14906)
          {
            goto LABEL_40;
          }

          v20 = (v21 + 1);
          v17 = v19 - v20;
        }

        while (v19 - v20 > 1);
      }

      v21 = v19;
LABEL_40:
      v23 = v21 != v19 && v21 - v18 != -1;
      *a3 = v23;
    }
  }

  if (v14 < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

LABEL_49:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_1E50E680C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL IpAddress::isAddress(std::string *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5 = 0;
  if (IpAddress::parseIPv4Address(a1, &v4))
  {
    result = 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v7 = 0;
    v6 = 0;
    result = IpAddress::parseIPv6Address(a1, &v4, 0);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL IpAddress::createAddress@<W0>(std::string *a1@<X0>, void *a2@<X8>)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v10[1] = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  if (IpAddress::parseIPv4Address(a1, v10))
  {
    std::allocate_shared[abi:ne200100]<Ip4Address,std::allocator<Ip4Address>,sockaddr_in &,0>();
  }

  v6 = 1;
  result = IpAddress::parseIPv6Address(a1, v8, &v6);
  if (result)
  {
    v7 = 0uLL;
    std::allocate_shared[abi:ne200100]<Ip6Address,std::allocator<Ip6Address>,sockaddr_in6 &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IpAddress::createAddress@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 1);
  if (v4 == 30)
  {
    std::allocate_shared[abi:ne200100]<Ip6Address,std::allocator<Ip6Address>,sockaddr_in6 &,0>();
  }

  if (v4 == 2)
  {
    std::allocate_shared[abi:ne200100]<Ip4Address,std::allocator<Ip4Address>,sockaddr_in &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

void IpAddress::addressTypeMaskToString(IpAddress *this)
{
  v1 = this;
  memset(v3, 0, sizeof(v3));
  if (this)
  {
    std::vector<std::string>::push_back[abi:ne200100](v3, &IpAddress::kAddressTypeIPv4);
  }

  if ((v1 & 2) != 0)
  {
    std::vector<std::string>::push_back[abi:ne200100](v3, &IpAddress::kAddressTypeIPv6);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, ",");
  ims::join<std::__wrap_iter<std::string const*>>();
}

void sub_1E50E6AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

BOOL IpAddress::equalsWithDefaultPort(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v6 = (*(*a1 + 104))(a1, a2, 0);
  result = 0;
  if (v6)
  {
    v8 = (*(*a1 + 56))(a1);
    v9 = (*(**a2 + 56))();
    if (v8 == v9)
    {
      return 1;
    }

    if (v8 == a3 && v9 == 0)
    {
      return 1;
    }

    else
    {
      return !v8 && v9 == a3;
    }
  }

  return result;
}

void IpAddress::logStr(IpAddress *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E50E6CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void asString(const IpAddress *a1)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E50E6DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void asString()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E50E6F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ip4Address::fromSockaddr(Ip4Address *this, const sockaddr *a2)
{
  if (a2->sa_len != 16 || a2->sa_family != 2)
  {
    return 0;
  }

  *(this + 28) = *a2;
  return 1;
}

BOOL Ip4Address::fromString(uint64_t a1, const std::string *a2)
{
  v3 = a1 + 28;
  (*(*a1 + 96))(a1);

  return IpAddress::parseIPv4Address(a2, v3);
}

uint64_t Ip4Address::clear(uint64_t this)
{
  *(this + 30) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t Ip4Address::equals(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v7 = **v4;
  if (!v8)
  {
    return 0;
  }

  v9 = *(a2 + 8);
  v12 = v8;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = (*(*a1 + 232))(a1, &v12, a3);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v10;
}

void sub_1E50E7140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL Ip4Address::isPrivate(Ip4Address *this)
{
  v1 = *(this + 8);
  v2 = v1 & 0xFFF00000;
  v3 = HIBYTE(v1);
  v4 = HIWORD(v1) == 49320;
  return v3 == 10 || v2 == -1408237568 || v4;
}

uint64_t Ip4Address::asUintArray(Ip4Address *this, unsigned __int8 *a2, unint64_t a3)
{
  if (a3 < 4)
  {
    return 0;
  }

  *a2 = *(this + 8);
  return 4;
}

uint64_t Ip6Address::fromSockaddr(Ip6Address *this, const sockaddr *a2)
{
  if (a2->sa_len != 28 || a2->sa_family != 30)
  {
    return 0;
  }

  v2 = *a2;
  *(this + 40) = *&a2->sa_data[10];
  *(this + 28) = v2;
  *(this + 6) = 0;
  v3 = 1;
  *(this + 56) = 1;
  return v3;
}

BOOL Ip6Address::fromString(BOOL *a1, std::string *a2)
{
  v4 = a1 + 56;
  (*(*a1 + 96))(a1);

  return IpAddress::parseIPv6Address(a2, (a1 + 28), v4);
}

ImsOutStream *Ip6Address::toStream(Ip6Address *this, ImsOutStream *a2, char a3)
{
  v28 = *MEMORY[0x1E69E9840];
  memset(&v19, 0, sizeof(v19));
  if ((*(this + 56) & 1) != 0 || IpAddress::_alwaysCompressIPv6Addresses == 1)
  {
    *v20 = 0u;
    memset(v21, 0, 30);
    v6 = inet_ntop(30, this + 36, v20, 0x2Eu);
    if (!v6)
    {
      goto LABEL_29;
    }

    std::string::__assign_external(&v19, v6);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    memset(v26, 0, sizeof(v26));
    v24 = 0u;
    v22 = 0u;
    *__p = 0u;
    memset(v21, 0, sizeof(v21));
    *v20 = 0u;
    std::ostringstream::basic_ostringstream[abi:ne200100](v20);
    for (i = 0; ; i += 2)
    {
      *(&v21[1].__locale_ + *(v20[0] - 3)) = 2;
      v18.__r_.__value_.__s.__data_[0] = 48;
      v8 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, &v18);
      *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
      v9 = *(this + i + 36);
      MEMORY[0x1E6923390]();
      *(&v21[1].__locale_ + *(v20[0] - 3)) = 2;
      v18.__r_.__value_.__s.__data_[0] = 48;
      v10 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, &v18);
      *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
      v11 = *(this + i + 37);
      MEMORY[0x1E6923390]();
      if (i > 0xD)
      {
        break;
      }

      v18.__r_.__value_.__s.__data_[0] = 58;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v18, 1);
    }

    std::ostringstream::str[abi:ne200100](v20, &v18);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    v19 = v18;
    v20[0] = *MEMORY[0x1E69E54E8];
    *(v20 + *(v20[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
    v20[1] = (MEMORY[0x1E69E5548] + 16);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[1]);
    }

    v20[1] = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(v21);
    std::ostream::~ostream();
    MEMORY[0x1E6923510](v26);
  }

  if (*(a2 + 18) == 1)
  {
    std::string::__assign_external(&v19, IpAddress::kAnonymousIPv6);
  }

  memset(v21, 0, sizeof(v21));
  *v20 = 0u;
  std::string::basic_string[abi:ne200100]<0>(&v18, "xx:xx:xx:xx");
  PIIString::PIIString(v20, &v19, &v18);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if ((a3 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((a3 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (*(this + 15))
  {
    v12 = *(a2 + 1);
    v18.__r_.__value_.__s.__data_[0] = 91;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v18, 1);
    *(a2 + 17) = 0;
    v13 = a2 + 17;
    (*(*a2 + 48))(a2, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "]:", 2);
    *(a2 + 17) = 0;
    MEMORY[0x1E6923390](*(a2 + 1), bswap32(*(this + 15)) >> 16);
LABEL_24:
    *v13 = 0;
    goto LABEL_25;
  }

LABEL_21:
  if ((a3 & 2) != 0)
  {
    v14 = *(a2 + 1);
    v18.__r_.__value_.__s.__data_[0] = 91;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &v18, 1);
    *(a2 + 17) = 0;
    v13 = a2 + 17;
    (*(*a2 + 48))(a2, v20);
    v15 = *(a2 + 1);
    v18.__r_.__value_.__s.__data_[0] = 93;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v18, 1);
    goto LABEL_24;
  }

  (*(*a2 + 48))(a2, v20);
LABEL_25:
  if (SHIBYTE(v21[3].__locale_) < 0)
  {
    operator delete(v21[1].__locale_);
  }

  if (SHIBYTE(v21[0].__locale_) < 0)
  {
    operator delete(v20[0]);
  }

LABEL_29:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v16 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1E50E77D0(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  std::ostringstream::~ostringstream(&a16, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t Ip6Address::clear(uint64_t this)
{
  *(this + 56) = 1;
  *(this + 30) = 0;
  *(this + 44) = 0;
  *(this + 36) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t Ip6Address::equals(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v7 = **v4;
  if (!v8)
  {
    return 0;
  }

  v9 = *(a2 + 8);
  v12 = v8;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = (*(*a1 + 232))(a1, &v12, a3);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v10;
}

void sub_1E50E7978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL Ip6Address::equals(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = *a2;
  if (a3 && *(a1 + 30) != *(v3 + 30))
  {
    return 0;
  }

  v4 = *(v3 + 36);
  v5 = *(v3 + 44);
  return *(a1 + 36) == v4 && *(a1 + 44) == v5;
}

__n128 Ip6Address::makeWildcard(Ip6Address *this)
{
  *(this + 56) = 1;
  result = *MEMORY[0x1E69E99B8];
  *(this + 36) = *MEMORY[0x1E69E99B8];
  return result;
}

uint64_t Ip6Address::asUintArray(Ip6Address *this, unsigned __int8 *a2, unint64_t a3)
{
  if (a3 < 0x10)
  {
    return 0;
  }

  *a2 = *(this + 36);
  return 16;
}

void Ip4Address::~Ip4Address(Ip4Address *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

void Ip6Address::~Ip6Address(Ip6Address *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<Ip6Address>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EF3EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t ImsPowerAssertion::ImsPowerAssertion(uint64_t a1, const std::string *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::string::operator=(a1, a2);
  *(a1 + 24) = 0;
  return a1;
}

void sub_1E50E7FD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ImsPowerAssertion::~ImsPowerAssertion(void **this)
{
  ImsPowerAssertion::deinitialize(this);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void PowerAssertionLock::~PowerAssertionLock(PowerAssertionLock **this)
{
  v2 = this + 1;
  v3 = *this;
  if (*this != (this + 1))
  {
    do
    {
      AssertionCounter::deinitialize(*(v3 + 7));
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v2);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::destroy(this, this[1]);
  this[1] = 0;
  this[2] = 0;
  *this = v2;
}

void sub_1E50E8140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AssertionCounter>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<AssertionCounter>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EF3F48;
  std::construct_at[abi:ne200100]<AssertionCounter,std::string const&,AssertionCounter*>((a1 + 3), a2);
}

void std::__shared_ptr_emplace<AssertionCounter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EF3F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<AssertionCounter>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

void std::construct_at[abi:ne200100]<AssertionCounter,std::string const&,AssertionCounter*>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  AssertionCounter::AssertionCounter(a1, &__p);
}

void sub_1E50E8400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AssertionCounter::AssertionCounter(uint64_t a1, const std::string *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  std::string::operator=(a1, a2);
  atomic_store(0, (a1 + 24));
  operator new();
}

void sub_1E50E84C0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  v5 = *(v1 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ImsPowerAssertion>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EF3F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>>>::__erase_unique<std::string>(uint64_t **a1, void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(a1, v3);
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>((v4 + 4));
  operator delete(v4);
  return 1;
}

void ImsFileManager::moveFile(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  LOBYTE(v36) = 0;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
  v9 = [v6 fileExistsAtPath:v8 isDirectory:&v36];

  if ((v9 & v36 & 1) == 0)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, *a2, *(a2 + 8));
    }

    else
    {
      __dst = *a2;
    }

    goto LABEL_57;
  }

  v44 = 0;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v41 = 0u;
  *__src = 0u;
  *__p = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v36);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, v11, v12);
  v13 = *(a2 + 23);
  if ((v13 & 0x80u) == 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a2 + 8);
  }

  if (*(v14 + v13 - 1) != 47)
  {
    v35.__r_.__value_.__s.__data_[0] = 47;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, &v35, 1);
  }

  v15 = *(a1 + 23);
  if (v15 >= 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = *a1;
  }

  if (v15 >= 0)
  {
    v17 = *(a1 + 23);
  }

  else
  {
    v17 = *(a1 + 8);
  }

  if (v17)
  {
    v18 = v17;
    while (v18)
    {
      v19 = *(v16 + v18-- - 1);
      if (v19 == 47)
      {
        if (v18 == -1)
        {
          break;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, v16, v17);
        goto LABEL_40;
      }
    }
  }

  std::string::basic_string(&v35, a1, 0, 0xFFFFFFFFFFFFFFFFLL, &v45);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v35;
  }

  else
  {
    v20 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v35.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, v20, size);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

LABEL_40:
  if ((BYTE8(v42) & 0x10) != 0)
  {
    v23 = v42;
    if (v42 < __src[1])
    {
      *&v42 = __src[1];
      v23 = __src[1];
    }

    v24 = __src[0];
    goto LABEL_48;
  }

  if ((BYTE8(v42) & 8) != 0)
  {
    v24 = *(&v37 + 1);
    v23 = *(&v38 + 1);
LABEL_48:
    v22 = v23 - v24;
    if ((v23 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v23 - v24;
    if (v22)
    {
      memmove(&__dst, v24, v22);
    }

    goto LABEL_54;
  }

  v22 = 0;
  *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_54:
  __dst.__r_.__value_.__s.__data_[v22] = 0;
  *&v36 = *MEMORY[0x1E69E54E8];
  *(&v36 + *(v36 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v36 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v36 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v37);
  std::ostream::~ostream();
  MEMORY[0x1E6923510](v43);
LABEL_57:
  if (*(a1 + 23) >= 0)
  {
    v25 = a1;
  }

  else
  {
    v25 = *a1;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:4];
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v29 = [MEMORY[0x1E696AC08] defaultManager];
  v33 = 0;
  v30 = [v29 moveItemAtPath:v26 toPath:v28 error:&v33];
  v31 = v33;

  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  if (v30)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0x40000000;
  }

  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = v32;

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1E50E8A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, __int16 a7, char a8, char a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  _Unwind_Resume(a1);
}

uint64_t ImsNotificationCenter::addObserverForNotification@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (result)
  {
    goto LABEL_7;
  }

  v4 = *MEMORY[0x1E695DA60];
  if (!*MEMORY[0x1E695DA60] || (v6 = [MEMORY[0x1E696AD88] defaultCenter], v36[0] = MEMORY[0x1E69E9820], v36[1] = 3221225472, v36[2] = ___ZN21ImsNotificationCenter26addObserverForNotificationE15ImsNotificationU13block_pointerFvvE_block_invoke, v36[3] = &unk_1E876C990, v36[4] = a2, (result = objc_msgSend(v6, "addObserverForName:object:queue:usingBlock:", v4, 0, 0, v36)) == 0))
  {
LABEL_7:
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    return result;
  }

  v7 = result;
  v35 = 0;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  __src = 0u;
  v27 = 0u;
  v28 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v27);
  MEMORY[0x1E6923310](&v27, v7);
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if ((BYTE8(v33) & 0x10) != 0)
  {
    v9 = v33;
    if (v33 < *(&__src + 1))
    {
      *&v33 = *(&__src + 1);
      v9 = *(&__src + 1);
    }

    v10 = __src;
  }

  else
  {
    if ((BYTE8(v33) & 8) == 0)
    {
      v8 = 0;
      goto LABEL_15;
    }

    v10 = *(&v28 + 1);
    v9 = *(&v29 + 1);
  }

  v8 = v9 - v10;
  if ((v9 - v10) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&a3->__r_.__value_.__s + 23) = v8;
  v11 = a3;
  if (v8)
  {
    memmove(a3, v10, v8);
    goto LABEL_18;
  }

LABEL_15:
  v11 = a3;
LABEL_18:
  v11->__r_.__value_.__s.__data_[v8] = 0;
  v26 = v4;
  CFRetain(v4);
  v24 = 0;
  v25 = &unk_1F5EF36B0;
  v23 = 0;
  ims::CFString::CFString(&v23, a3);
  std::string::basic_string[abi:ne200100]<0>(v21, "util");
  v17[0] = 0;
  v20 = 0;
  v12 = ims::debug(v21, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Adding observer ", 16);
  *(v12 + 17) = 0;
  LoggableString::LoggableString(&v16, a3);
  (*(*v12 + 40))(v12, &v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), " for ", 5);
  *(v12 + 17) = 0;
  ims::CFString::asString(v26, 0x8000100, &v14);
  LoggableString::LoggableString(&__p, &v14);
  (*(*v12 + 40))(v12, &__p);
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  v13 = _dict;
  if (!_dict)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    _dict = v13;
  }

  [v13 setObject:v7 forKey:v24];
  ims::CFType::~CFType(&v23);
  ims::CFType::~CFType(&v25);
  *&v27 = *MEMORY[0x1E69E54E8];
  *(&v27 + *(v27 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v27 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(*(&v31 + 1));
  }

  *(&v27 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v28);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v34);
}

void sub_1E50E9018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a37 == 1 && a35 < 0)
  {
    operator delete(a30);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  ims::CFType::~CFType(&a44);
  ims::CFType::~CFType(&a46);
  if (*(v62 + 23) < 0)
  {
    operator delete(*v62);
  }

  std::ostringstream::~ostringstream(&a48, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a62);
  _Unwind_Resume(a1);
}

void ___ZN21ImsNotificationCenter26addObserverForNotificationE15ImsNotificationU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  ims::getQueue(&v4);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN21ImsNotificationCenter26addObserverForNotificationE15ImsNotificationU13block_pointerFvvE_block_invoke_2;
  v3[3] = &unk_1E876C968;
  v3[4] = *(a1 + 32);
  v2 = v4;
  dispatch_async(v4, v3);
  if (v2)
  {
    dispatch_release(v2);
  }
}

void ImsNotificationCenter::removeObserver(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (v1)
  {
    v2 = _dict == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v21 = 0;
    v22 = 0;
    ims::CFString::CFString(&v21, a1);
    v4 = v22;
    v5 = [_dict objectForKey:v22];
    if (v5)
    {
      v6 = std::string::basic_string[abi:ne200100]<0>(v19, "util");
      v10[0] = 0;
      v13 = 0;
      v7 = ims::debug(v6, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Removing observer ", 18);
      *(v7 + 17) = 0;
      LoggableString::LoggableString(&__p, a1);
      (*(*v7 + 40))(v7, &__p);
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v13 == 1 && v12 < 0)
      {
        operator delete(v11);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      [_dict removeObjectForKey:v4];
    }

    else
    {
      v8 = std::string::basic_string[abi:ne200100]<0>(v19, "util");
      v15[0] = 0;
      v18 = 0;
      v9 = ims::error(v8, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "no observer found with id ", 26);
      *(v9 + 17) = 0;
      LoggableString::LoggableString(&__p, a1);
      (*(*v9 + 40))(v9, &__p);
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v18 == 1 && v17 < 0)
      {
        operator delete(v16);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }
    }

    ims::CFType::~CFType(&v21);
  }
}

void sub_1E50E9434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  if (a34 == 1 && a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 65) < 0)
  {
    operator delete(*(v34 - 88));
  }

  ims::CFType::~CFType((v34 - 64));
  _Unwind_Resume(a1);
}

void IMSTimerManager::~IMSTimerManager(IMSTimerManager *this)
{
  *this = &unk_1F5EF3FE8;
  std::__tree<std::__value_type<std::string,IMSTimerManager::TimerData>,std::__map_value_compare<std::string,std::__value_type<std::string,IMSTimerManager::TimerData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,IMSTimerManager::TimerData>>>::destroy(*(this + 10));
  pthread_mutex_destroy((this + 8));
}

{
  *this = &unk_1F5EF3FE8;
  std::__tree<std::__value_type<std::string,IMSTimerManager::TimerData>,std::__map_value_compare<std::string,std::__value_type<std::string,IMSTimerManager::TimerData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,IMSTimerManager::TimerData>>>::destroy(*(this + 10));
  pthread_mutex_destroy((this + 8));

  JUMPOUT(0x1E69235B0);
}

void IMSTimerManager::timerFired(uint64_t a1, void **a2)
{
  v12 = 0;
  ImsLock::set(&v12, (a1 + 8), v13);
  ImsResult::~ImsResult(v13);
  v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 72, a2);
  if (a1 + 80 == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "timer");
    v8[0] = 0;
    v11 = 0;
    v7 = ims::warn(v13, v8);
    (*(*v7 + 32))(v7, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " fired, but that timer id is not registered", 43);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v11 == 1 && v10 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    ImsLock::~ImsLock(&v12);
  }

  else
  {
    v6 = *(v4 + 80);
    v5 = *(v4 + 88);
    ImsLock::~ImsLock(&v12);
    if (v5)
    {
      (*(*v5 + 32))(v5, v6);
    }
  }
}

void std::__tree<std::__value_type<std::string,IMSTimerManager::TimerData>,std::__map_value_compare<std::string,std::__value_type<std::string,IMSTimerManager::TimerData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,IMSTimerManager::TimerData>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,IMSTimerManager::TimerData>,std::__map_value_compare<std::string,std::__value_type<std::string,IMSTimerManager::TimerData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,IMSTimerManager::TimerData>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,IMSTimerManager::TimerData>,std::__map_value_compare<std::string,std::__value_type<std::string,IMSTimerManager::TimerData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,IMSTimerManager::TimerData>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

void QMIRTPStackController::QMIRTPStackController(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, void *a5)
{
  v8 = a2[1];
  v15 = *a2;
  v16 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a5[1];
  v13 = *a5;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "rtp.qmistackcontroller");
  RTPStackController::RTPStackController(a1, &v15, a3, &v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  *a1 = &unk_1F5EF4030;
  *(a1 + 96) = &unk_1F5EF40C8;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  SipTimerContainer::SipTimerContainer((a1 + 216));
  v10 = *(*a5 + 312);
  __p[0] = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  operator new();
}

void sub_1E50E9AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  v29 = *(v26 + 392);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  SipTimerContainer::~SipTimerContainer((v26 + 216));
  std::__tree<unsigned int>::destroy(v27, *(v26 + 200));
  std::__tree<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::__map_value_compare<SDPType,std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::less<SDPType>,true>,std::allocator<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>>>::destroy(*(v26 + 176));
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(v26 + 152));
  std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&__p);
  RTPStackController::~RTPStackController(v26);
  _Unwind_Resume(a1);
}

void QMIRTPStackController::~QMIRTPStackController(int8x8_t *this)
{
  *this = &unk_1F5EF4030;
  this[12] = &unk_1F5EF40C8;
  v2 = std::string::basic_string[abi:ne200100]<0>(v11, "rtp.qmistackcontroller");
  v7[0] = 0;
  v10 = 0;
  v3 = ims::debug(v2, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~QMIRTPStackController", 22);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  SipTimerContainer::cancelTimer(this + 27, "UninitializeAllTimer");
  v4 = this[48];
  v6[0] = 0;
  v6[1] = 0;
  QMIRTPCommandDriver::setStackController(v4, v6);
  if (this[52].i8[7] < 0)
  {
    operator delete(*&this[50]);
  }

  v5 = this[49];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  SipTimerContainer::~SipTimerContainer(&this[27]);
  std::__tree<unsigned int>::destroy(&this[24], *&this[25]);
  std::__tree<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::__map_value_compare<SDPType,std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::less<SDPType>,true>,std::allocator<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>>>::destroy(*&this[22]);
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*&this[19]);
  v11[0] = &this[15];
  std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v11);
  RTPStackController::~RTPStackController(this);
}

{
  QMIRTPStackController::~QMIRTPStackController(this);

  JUMPOUT(0x1E69235B0);
}

void QMIRTPCommandDriver::setStackController(uint64_t a1, uint64_t *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.qmidriver");
  v8[0] = 0;
  v11 = 0;
  v4 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "setStackController", 18);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 168);
  *(a1 + 160) = v6;
  *(a1 + 168) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1E50E9E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toQMIRTPStackController::~QMIRTPStackController(int8x8_t *this)
{
  QMIRTPStackController::~QMIRTPStackController(this - 12);
}

{
  QMIRTPStackController::~QMIRTPStackController(this - 12);

  JUMPOUT(0x1E69235B0);
}

void QMIRTPStackController::createRTPSession(uint64_t a1@<X0>, uint64_t *a2@<X3>, void **a3@<X5>, void *a4@<X8>)
{
  if (a1 + 152 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 144, a3))
  {
    v8 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1 + 144, &v19, a3);
    if (!v8)
    {
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    v9 = *(v8 + 56);
  }

  v10 = a2[1];
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = *a2;
      if (v12)
      {
        v13 = *(v12 + 128);
        if (v13)
        {
          v13 = std::__shared_weak_count::lock(v13);
          if (v13)
          {
            v13 = *(v12 + 120);
          }
        }

        SipStack::prefs(v13);
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v19, (a1 + 8));
        operator new();
      }
    }
  }

  else
  {
    v11 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v19, "rtp.qmistackcontroller");
  v15[0] = 0;
  v18 = 0;
  v14 = ims::error(&v19, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "SDPSession expired in QMIRTPStackController::createRTPSession", 61);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v18 == 1 && v17 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  *a4 = 0;
  a4[1] = 0;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1E50EA344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, void *a28, std::__shared_weak_count *a29, int a30, __int16 a31, char a32, char a33)
{
  v36 = *(v34 - 112);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v37 = *(v34 - 96);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  std::__shared_weak_count::~__shared_weak_count(v33);
  operator delete(v38);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  _Unwind_Resume(a1);
}

void QMIRTPStackController::getSessionByQMIid(QMIRTPStackController *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v23, "rtp.qmistackcontroller");
  v19[0] = 0;
  v22 = 0;
  v6 = ims::debug(v23, v19);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v7 = v6;
  v8 = *(*(*this - 8) + 8);
  v9 = *(v6 + 8);
  v10 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v8 & 0x7FFFFFFFFFFFFFFFLL, v10);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "getSessionByQMIid", 17);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [qmiSessionId=", 15);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  v11 = *(this + 16);
  if (v11 != *(this + 15))
  {
    while (1)
    {
      v12 = v11 - 1;
      *a3 = 0;
      a3[1] = 0;
      v13 = *(v11 - 1);
      if (!v13)
      {
        break;
      }

      v14 = std::__shared_weak_count::lock(v13);
      a3[1] = v14;
      if (!v14)
      {
        goto LABEL_14;
      }

      v15 = *v12;
      *a3 = *v12;
      if (!v15)
      {
        goto LABEL_14;
      }

      if (*(v15 + 362) == a2)
      {
        return;
      }

LABEL_19:
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
LABEL_20:
      v11 = v12;
      if (v12 == *(this + 15))
      {
        goto LABEL_21;
      }
    }

    v14 = 0;
LABEL_14:
    v16 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::weak_ptr<QMIRTPSession> *,std::weak_ptr<QMIRTPSession> *,std::weak_ptr<QMIRTPSession> *>(v11, *(this + 16), (v11 - 1));
    for (i = *(this + 16); i != v16; i -= 16)
    {
      v18 = *(i - 8);
      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }
    }

    *(this + 16) = v16;
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  *a3 = 0;
  a3[1] = 0;
}

void sub_1E50EA66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QMIRTPStackController::getProfileByStackId(uint64_t a1, void **a2)
{
  v3 = a1 + 152;
  v4 = *(a1 + 152);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1 + 152;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v4 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v4 = *(v4 + ((v6 >> 4) & 8));
  }

  while (v4);
  if (v5 == v3 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
LABEL_9:
    std::string::basic_string[abi:ne200100]<0>(v14, "rtp.qmistackcontroller");
    v10[0] = 0;
    v13 = 0;
    v9 = ims::error(v14, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "No profile for stackId ", 23);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, a2);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v13 == 1 && v12 < 0)
    {
      operator delete(__p);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    return 0;
  }

  else
  {
    result = *(v5 + 56);
    v8 = *(v5 + 64) | 0x100000000;
  }

  return result;
}

void sub_1E50EA810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::setVoiceSystemIdForInstance(QMIRTPStackController *this, unsigned int a2, uint64_t a3)
{
  v16 = a2;
  v14[0] = &v16;
  *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 192, &v16) + 8) = a3;
  v5 = *(this + 18);
  if (v5 != (this + 152))
  {
    do
    {
      if (*(v5 + 16) == v16)
      {
        std::string::basic_string[abi:ne200100]<0>(v14, "rtp.qmidriver");
        v10[0] = 0;
        v13 = 0;
        v6 = ims::debug(v14, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Recording voice system Id ", 26);
        *(v6 + 17) = 0;
        MEMORY[0x1E6923350](*(v6 + 8), a3);
        *(v6 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " for ", 5);
        *(v6 + 17) = 0;
        (*(*v6 + 32))(v6, v5 + 32);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " with instance ", 15);
        *(v6 + 17) = 0;
        MEMORY[0x1E6923350](*(v6 + 8), v16);
        *(v6 + 17) = 0;
        (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v6 + 17) = 0;
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }

        if (v15 < 0)
        {
          operator delete(v14[0]);
        }

        *(v5 + 15) = a3;
      }

      v7 = *(v5 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != (this + 152));
  }
}

void sub_1E50EAA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::initialize(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[48];
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&block, a1 + 1);
  v7 = v46;
  v44[0] = block;
  v44[1] = v46;
  QMIRTPCommandDriver::setStackController(v6, v44);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  IPTelephonyManager::getBambiClient(&v38);
  (*(*v38.__r_.__value_.__l.__data_ + 184))(&block);
  v8 = block[1093];
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (v38.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38.__r_.__value_.__l.__size_);
  }

  v43 = v8;
  v9 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 18), a2);
  if (a1 + 19 != v9 && *(v9 + 56) == a3)
  {
    v10 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.qmistackcontroller");
    v39[0] = 0;
    v42 = 0;
    v11 = ims::warn(v10, v39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "AppId : ", 8);
    *(v11 + 17) = 0;
    MEMORY[0x1E6923340](*(v11 + 8), a3);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " is already initialized for ", 28);
    *(v11 + 17) = 0;
    (*(*v11 + 32))(v11, a2);
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v42 == 1 && v41 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(block);
    }
  }

  block = a2;
  *(std::__tree<std::__value_type<std::string,QMIRTPStackController::ProfileData>,std::__map_value_compare<std::string,std::__value_type<std::string,QMIRTPStackController::ProfileData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,QMIRTPStackController::ProfileData>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 18), a2) + 56) = a3;
  v12 = v43;
  block = a2;
  *(std::__tree<std::__value_type<std::string,QMIRTPStackController::ProfileData>,std::__map_value_compare<std::string,std::__value_type<std::string,QMIRTPStackController::ProfileData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,QMIRTPStackController::ProfileData>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 18), a2) + 64) = v12;
  v13 = a1[25];
  v14 = v43;
  if (v13)
  {
    v15 = a1 + 25;
    do
    {
      v16 = *(v13 + 28);
      v17 = v16 >= v43;
      v18 = v16 < v43;
      if (v17)
      {
        v15 = v13;
      }

      v13 = *(v13 + 8 * v18);
    }

    while (v13);
    if (v15 != a1 + 25 && v43 >= *(v15 + 7))
    {
      block = &v43;
      v19 = *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 24), &v43) + 8);
      block = a2;
      *(std::__tree<std::__value_type<std::string,QMIRTPStackController::ProfileData>,std::__map_value_compare<std::string,std::__value_type<std::string,QMIRTPStackController::ProfileData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,QMIRTPStackController::ProfileData>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 18), a2) + 60) = v19;
      v14 = v43;
    }
  }

  v20 = a1[22];
  if (!v20)
  {
    goto LABEL_34;
  }

  v21 = a1 + 22;
  do
  {
    v22 = *(v20 + 28);
    v17 = v22 >= v14;
    v23 = v22 < v14;
    if (v17)
    {
      v21 = v20;
    }

    v20 = *(v20 + 8 * v23);
  }

  while (v20);
  if (v21 == a1 + 22 || v14 < *(v21 + 7))
  {
    goto LABEL_34;
  }

  block = &v43;
  v24 = *(std::__tree<std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 21), v14) + 8);
  if (v24 == 2)
  {
    memset(&v38, 0, sizeof(v38));
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, *a2, *(a2 + 8));
    }

    else
    {
      v38 = *a2;
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 1174405120;
    v35[2] = ___ZN21QMIRTPStackController10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEh_block_invoke;
    v35[3] = &__block_descriptor_tmp_62;
    v35[4] = a1;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v36, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
    }

    else
    {
      v36 = v38;
    }

    v37 = a3;
    v52 = 0;
    v53 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v52, a1 + 1);
    v30 = a1[3];
    block = MEMORY[0x1E69E9820];
    v46 = 1174405120;
    v47 = ___ZNK3ctu20SharedSynchronizableI18RTPStackControllerE15execute_wrappedEU13block_pointerFvvE_block_invoke_1;
    v48 = &unk_1F5EF4258;
    v50 = v52;
    v51 = v53;
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v49 = v35;
    dispatch_async(v30, &block);
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      v29 = v38.__r_.__value_.__r.__words[0];
      goto LABEL_57;
    }
  }

  else
  {
    if (!v24)
    {
      v14 = v43;
LABEL_34:
      block = &v43;
      *(std::__tree<std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 21), v14) + 8) = 1;
      v25 = a1[48];
      block = a2;
      v26 = std::__tree<std::__value_type<std::string,QMIRTPStackController::ProfileData>,std::__map_value_compare<std::string,std::__value_type<std::string,QMIRTPStackController::ProfileData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,QMIRTPStackController::ProfileData>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 18), a2);
      QMIRTPCommandDriver::initializeDriverForInstance(v25, *(v26 + 64));
      return;
    }

    v27 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.qmistackcontroller");
    v31[0] = 0;
    v34 = 0;
    v28 = ims::warn(v27, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "not acting on appId ", 20);
    *(v28 + 17) = 0;
    MEMORY[0x1E6923340](*(v28 + 8), a3);
    *(v28 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), " while stack is still initializing", 34);
    *(v28 + 17) = 0;
    (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v28 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v47) < 0)
    {
      v29 = block;
LABEL_57:
      operator delete(v29);
    }
  }
}