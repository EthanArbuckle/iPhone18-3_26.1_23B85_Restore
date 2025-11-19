id _CloudServicesSignpostLogSystem()
{
  if (qword_27DA7DF40 != -1)
  {
    sub_22E9F2B10();
  }

  v1 = qword_27DA7DF38;

  return v1;
}

uint64_t sub_22E9CB240()
{
  qword_27DA7DF38 = os_log_create("com.apple.sbd", "signpost");

  return MEMORY[0x2821F96F8]();
}

os_signpost_id_t _CloudServicesSignpostCreate(NSObject *a1)
{
  v1 = os_signpost_id_generate(a1);
  mach_continuous_time();
  return v1;
}

double _CloudServicesSignpostGetNanoseconds(uint64_t a1, uint64_t a2)
{
  if (qword_27DA7DF50 != -1)
  {
    sub_22E9F2B24();
  }

  v3 = mach_continuous_time();
  LODWORD(v4) = dword_27DA7DF48;
  LODWORD(v5) = *algn_27DA7DF4C;
  return v4 / v5 * (v3 - a2);
}

uint64_t sub_22E9CB788(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_length(a1, a2, a3) < 0xBE)
  {
    return 0;
  }

  return MEMORY[0x2821F9670](a1, sel_hasSuffix_, @"PET");
}

void sub_22E9CCDA0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = objc_msgSend_reason(v3, v5, v6);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v8, v7, *MEMORY[0x277CCA450]);

    v10 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v9, *MEMORY[0x277CCA050], 4864, v4);
    v11 = *(v2 + 272);
    *(v2 + 272) = v10;

    objc_end_catch();
    JUMPOUT(0x22E9CCD64);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E9CDAB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F2BE8(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9CDB28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9CDBD8;
  v5[3] = &unk_278859650;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_getAccountInfoWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9CDBD8(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v5)
    {
      v8 = v5;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "getAccountInfoWithRequest in daemon came back with %@", &v12, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9CDE28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F2C60();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9CDEA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9CDF50;
  v5[3] = &unk_2788596A0;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_fetchStingrayAccountStatusInDaemon_reply_(v2, v4, v3, v5);
}

void sub_22E9CDF50(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v5)
    {
      v8 = v5;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "fetchStingrayAccountStatus in daemon came back with %@", &v12, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9CE2A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F2CC8(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9CE31C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9CE3D4;
  v5[3] = &unk_2788596C8;
  v8 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_enableWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9CE3D4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Nanoseconds = _CloudServicesSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v5 = _CloudServicesSignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 48);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v15 = 67240192;
    LODWORD(v16) = v3 == 0;
    _os_signpost_emit_with_name_impl(&dword_22E9CA000, v6, OS_SIGNPOST_INTERVAL_END, v7, "EnableWithRequest", " CloudServicesSignpostNameEnableWithRequest=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameEnableWithRequest}d ", &v15, 8u);
  }

  v8 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 48);
    v15 = 134218496;
    v16 = v9;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 1026;
    v20 = v3 == 0;
    _os_log_impl(&dword_22E9CA000, v8, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: EnableWithRequest  CloudServicesSignpostNameEnableWithRequest=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameEnableWithRequest}d ", &v15, 0x1Cu);
  }

  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"no error";
    if (v3)
    {
      v11 = v3;
    }

    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&dword_22E9CA000, v10, OS_LOG_TYPE_DEFAULT, "enableWithRequest in daemon came back with %@", &v15, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v12, v13);
  (*(*(a1 + 40) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22E9CE718(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F2D40(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9CE790(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9CE840;
  v5[3] = &unk_278859650;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_recoverWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9CE840(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v5)
    {
      v8 = v5;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "recoverWithRequest came back with %@", &v12, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9CEA90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F2DB8(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9CEB08(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9CEBB8;
  v5[3] = &unk_278859650;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_recoverRecordContentsWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9CEBB8(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v5)
    {
      v8 = v5;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "recoverRecordContents came back with %@", &v12, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9CEE34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F2E30(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9CEEA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E9CEF5C;
  v6[3] = &unk_278859718;
  v4 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  objc_msgSend_createICDPRecordWithRequest_recordContents_reply_(v2, v5, v3, v4, v6);
}

void sub_22E9CEF5C(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"no error";
    if (v3)
    {
      v5 = v3;
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_22E9CA000, v4, OS_LOG_TYPE_DEFAULT, "createICDPRecord came back with %@", &v9, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v6, v7);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9CF198(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F2EA8(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9CF20C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9CF2BC;
  v5[3] = &unk_278859718;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_disableWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9CF2BC(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"no error";
    if (v3)
    {
      v5 = v3;
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_22E9CA000, v4, OS_LOG_TYPE_DEFAULT, "disableWithRequest came back with %@", &v9, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v6, v7);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9CF4F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F2F20(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9CF56C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9CF61C;
  v5[3] = &unk_278859718;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_stashRecoveryDataWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9CF61C(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"no error";
    if (v3)
    {
      v5 = v3;
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_22E9CA000, v4, OS_LOG_TYPE_DEFAULT, "stashRecoveryDataWithRequest came back with %@", &v9, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v6, v7);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9CF858(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F2F98(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9CF8CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9CF97C;
  v5[3] = &unk_278859718;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_updateMetadataWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9CF97C(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"no error";
    if (v3)
    {
      v5 = v3;
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_22E9CA000, v4, OS_LOG_TYPE_DEFAULT, "updateMetadata came back with %@", &v9, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v6, v7);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22E9CFB94(uint64_t a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22E9CA000, v2, OS_LOG_TYPE_DEFAULT, "invalidating connection", v6, 2u);
  }

  return objc_msgSend_invalidate(*(a1 + 32), v3, v4);
}

void sub_22E9CFD6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3010(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9CFDE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9CFE90;
  v5[3] = &unk_278859718;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_cachePassphraseWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9CFE90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  objc_msgSend_invalidate(v3, v4, v5);
  (*(*(a1 + 40) + 16))();
}

void sub_22E9D004C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3088(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9D00C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9D0170;
  v5[3] = &unk_278859718;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_uncachePassphraseWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9D0170(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  objc_msgSend_invalidate(v3, v4, v5);
  (*(*(a1 + 40) + 16))();
}

void sub_22E9D032C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3100(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9D03A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9D0450;
  v5[3] = &unk_278859718;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_cacheRecoveryKeyWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9D0450(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  objc_msgSend_invalidate(v3, v4, v5);
  (*(*(a1 + 40) + 16))();
}

void sub_22E9D060C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3178(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9D0680(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9D0730;
  v5[3] = &unk_278859718;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_uncacheRecoveryKeyWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9D0730(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  objc_msgSend_invalidate(v3, v4, v5);
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_22E9D08C8(uint64_t a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22E9CA000, v2, OS_LOG_TYPE_DEFAULT, "invalidating connection", v6, 2u);
  }

  return objc_msgSend_invalidate(*(a1 + 32), v3, v4);
}

void sub_22E9D0AA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F31F0(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9D0B18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9D0BC8;
  v5[3] = &unk_278859650;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_startSMSChallengeWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9D0BC8(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v5)
    {
      v8 = v5;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "startSMSChallengeWithRequest came back with %@", &v12, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9D0E18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3268(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9D0E90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9D0F40;
  v5[3] = &unk_278859650;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_getCountrySMSCodesWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9D0F40(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v5)
    {
      v8 = v5;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "getCountrySMSCodesWithRequest came back with %@", &v12, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9D1190(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F32E0(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9D1204(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9D12B4;
  v5[3] = &unk_278859718;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_changeSMSTargetWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9D12B4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"no error";
    if (v3)
    {
      v5 = v3;
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_22E9CA000, v4, OS_LOG_TYPE_DEFAULT, "changeSMSTargetWithRequest came back with %@", &v9, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v6, v7);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9D1510(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3358(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9D1584(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9D1634;
  v5[3] = &unk_278859718;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_backupWithInfo_reply_(v2, v4, v3, v5);
}

void sub_22E9D1634(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"no error";
    if (v3)
    {
      v5 = v3;
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_22E9CA000, v4, OS_LOG_TYPE_DEFAULT, "backupWithInfo came back with %@", &v9, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v6, v7);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9D1870(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F33D0(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9D18E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9D1998;
  v5[3] = &unk_278859650;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_backOffDateWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9D1998(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v5)
    {
      v8 = v5;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "backOffDateWithRequest came back with %@", &v12, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9D1BE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3448(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9D1C5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9D1D0C;
  v5[3] = &unk_278859718;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_setBackOffDateWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9D1D0C(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"no error";
    if (v3)
    {
      v5 = v3;
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_22E9CA000, v4, OS_LOG_TYPE_DEFAULT, "setBackOffDateWithRequest came back with %@", &v9, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v6, v7);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9D1F8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F34C0(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9D2004(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22E9D20A4;
  v4[3] = &unk_278859650;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  objc_msgSend_notificationInfoWithReply_(v2, v3, v4);
}

void sub_22E9D20A4(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v5)
    {
      v8 = v5;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "notificationInfo came back with %@", &v12, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9D2338(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3538(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9D23B0(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22E9D2450;
  v4[3] = &unk_278859650;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  objc_msgSend_stateCaptureWithReply_(v2, v3, v4);
}

void sub_22E9D2450(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v5)
    {
      v8 = v5;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "stateCapture came back with %@", &v12, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9D2784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22E9D27B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E9D27C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F2BE8(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D2838(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E9D28DC;
  v6[3] = &unk_278859808;
  v8 = *(a1 + 64);
  v5 = *(a1 + 48);
  v3 = v5;
  v7 = v5;
  objc_msgSend_getAccountInfoWithRequest_reply_(v1, v4, v2, v6);
}

void sub_22E9D28DC(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "getAccountInfoWithRequest came back with %@", &v17, 0xCu);
  }

  v9 = 40;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v9 = 48;
    v10 = v5;
  }

  v11 = *(*(a1 + v9) + 8);
  v12 = v10;
  v13 = *(v11 + 40);
  *(v11 + 40) = v12;

  objc_msgSend_invalidate(*(a1 + 32), v14, v15);
  v16 = *MEMORY[0x277D85DE8];
}

void sub_22E9D2CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E9D2CCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F36A0(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D2D3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E9D2DD8;
  v6[3] = &unk_278859858;
  v5 = *(a1 + 48);
  v3 = v5;
  v7 = v5;
  objc_msgSend_updateMetadataWithRequest_reply_(v1, v4, v2, v6);
}

void sub_22E9D2DD8(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"no error";
    if (v4)
    {
      v6 = v4;
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_22E9CA000, v5, OS_LOG_TYPE_DEFAULT, "updateMetadataWithRequest came back with %@", &v10, 0xCu);
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  objc_msgSend_invalidate(*(a1 + 32), v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9D317C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E9D319C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F2CC8(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D320C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E9D32A8;
  v6[3] = &unk_278859858;
  v5 = *(a1 + 48);
  v3 = v5;
  v7 = v5;
  objc_msgSend_enableWithRequest_reply_(v1, v4, v2, v6);
}

void sub_22E9D32A8(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"no error";
    if (v4)
    {
      v6 = v4;
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_22E9CA000, v5, OS_LOG_TYPE_DEFAULT, "enableWithRequest came back with %@", &v10, 0xCu);
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  objc_msgSend_invalidate(*(a1 + 32), v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9D36AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22E9D36D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F2D40(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D3748(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E9D37EC;
  v6[3] = &unk_278859808;
  v8 = *(a1 + 64);
  v5 = *(a1 + 48);
  v3 = v5;
  v7 = v5;
  objc_msgSend_recoverWithRequest_reply_(v1, v4, v2, v6);
}

void sub_22E9D37EC(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "recoverWithRequest came back with %@", &v17, 0xCu);
  }

  v9 = 40;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v9 = 48;
    v10 = v5;
  }

  v11 = *(*(a1 + v9) + 8);
  v12 = v10;
  v13 = *(v11 + 40);
  *(v11 + 40) = v12;

  objc_msgSend_invalidate(*(a1 + 32), v14, v15);
  v16 = *MEMORY[0x277D85DE8];
}

void sub_22E9D3C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_22E9D3C38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3880(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D3CA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22E9D3D5C;
  v7[3] = &unk_278859808;
  v9 = *(a1 + 72);
  v6 = *(a1 + 56);
  v4 = v6;
  v8 = v6;
  objc_msgSend_recoverWithCDPContextInDaemon_escrowRecord_reply_(v1, v5, v2, v3, v7);
}

void sub_22E9D3D5C(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "recoverWithCDPContextInDaemon came back with %@", &v17, 0xCu);
  }

  v9 = 40;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v9 = 48;
    v10 = v5;
  }

  v11 = *(*(a1 + v9) + 8);
  v12 = v10;
  v13 = *(v11 + 40);
  *(v11 + 40) = v12;

  objc_msgSend_invalidate(*(a1 + 32), v14, v15);
  v16 = *MEMORY[0x277D85DE8];
}

void sub_22E9D41E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22E9D421C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3880(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D428C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22E9D4358;
  v10[3] = &unk_278859808;
  v12 = *(a1 + 96);
  v9 = *(a1 + 80);
  v7 = v9;
  v11 = v9;
  objc_msgSend_recoverWithCDPContextInDaemon_escrowRecord_altDSID_flowID_deviceSessionID_reply_(v1, v8, v2, v3, v4, v5, v6, v10);
}

void sub_22E9D4358(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "recoverWithCDPContextInDaemon came back with %@", &v17, 0xCu);
  }

  v9 = 40;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v9 = 48;
    v10 = v5;
  }

  v11 = *(*(a1 + v9) + 8);
  v12 = v10;
  v13 = *(v11 + 40);
  *(v11 + 40) = v12;

  objc_msgSend_invalidate(*(a1 + 32), v14, v15);
  v16 = *MEMORY[0x277D85DE8];
}

void sub_22E9D476C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_22E9D47A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F39E8(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D4814(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22E9D48C8;
  v7[3] = &unk_278859808;
  v9 = *(a1 + 72);
  v6 = *(a1 + 56);
  v4 = v6;
  v8 = v6;
  objc_msgSend_recoverSilentWithCDPContextInDaemon_allRecords_reply_(v1, v5, v2, v3, v7);
}

void sub_22E9D48C8(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "recoverSilentWithCDPContextInDaemon came back with %@", &v17, 0xCu);
  }

  v9 = 40;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v9 = 48;
    v10 = v5;
  }

  v11 = *(*(a1 + v9) + 8);
  v12 = v10;
  v13 = *(v11 + 40);
  *(v11 + 40) = v12;

  objc_msgSend_invalidate(*(a1 + 32), v14, v15);
  v16 = *MEMORY[0x277D85DE8];
}

void sub_22E9D4D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22E9D4D88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F39E8(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D4DF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22E9D4EC4;
  v10[3] = &unk_278859808;
  v12 = *(a1 + 96);
  v9 = *(a1 + 80);
  v7 = v9;
  v11 = v9;
  objc_msgSend_recoverSilentWithCDPContextInDaemon_allRecords_altDSID_flowID_deviceSessionID_reply_(v1, v8, v2, v3, v4, v5, v6, v10);
}

void sub_22E9D4EC4(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "recoverSilentWithCDPContextInDaemon came back with %@", &v17, 0xCu);
  }

  v9 = 40;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v9 = 48;
    v10 = v5;
  }

  v11 = *(*(a1 + v9) + 8);
  v12 = v10;
  v13 = *(v11 + 40);
  *(v11 + 40) = v12;

  objc_msgSend_invalidate(*(a1 + 32), v14, v15);
  v16 = *MEMORY[0x277D85DE8];
}

void sub_22E9D5214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22E9D5244(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3B50(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D52B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9D5354;
  v5[3] = &unk_2788598F8;
  v7 = *(a1 + 56);
  v4 = *(a1 + 40);
  v2 = v4;
  v6 = v4;
  objc_msgSend_isRecoveryKeySetInDaemon_(v1, v3, v5);
}

void sub_22E9D5354(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "isRecoveryKeySetInDaemon came back with %@", &v12, 0xCu);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9D571C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3C40(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D578C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 80);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22E9D584C;
  v9[3] = &unk_278859858;
  v8 = *(a1 + 64);
  v6 = v8;
  v10 = v8;
  objc_msgSend_restoreKeychainAsyncWithPasswordInDaemon_keybagDigest_haveBottledPeer_viewsNotToBeRestored_reply_(v1, v7, v2, v4, v3, v5, v9);
}

void sub_22E9D584C(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"no error";
    if (v4)
    {
      v6 = v4;
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_22E9CA000, v5, OS_LOG_TYPE_DEFAULT, "restoreKeychainAsyncWithPasswordInDaemon came back with %@", &v10, 0xCu);
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  objc_msgSend_invalidate(*(a1 + 32), v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9D5BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22E9D5BD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3D30(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D5C44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E9D5CE8;
  v6[3] = &unk_2788598F8;
  v8 = *(a1 + 64);
  v5 = *(a1 + 48);
  v3 = v5;
  v7 = v5;
  objc_msgSend_restoreKeychainWithBackupPasswordInDaemon_reply_(v1, v4, v2, v6);
}

void sub_22E9D5CE8(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "restoreKeychainWithBackupPassword came back with %@", &v12, 0xCu);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9D605C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22E9D608C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3E20(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D60FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E9D61A0;
  v6[3] = &unk_2788598F8;
  v8 = *(a1 + 64);
  v5 = *(a1 + 48);
  v3 = v5;
  v7 = v5;
  objc_msgSend_verifyRecoveryKeyInDaemon_reply_(v1, v4, v2, v6);
}

void sub_22E9D61A0(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "verifyRecoveryKey came back with %@", &v12, 0xCu);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9D64EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22E9D651C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3F10(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D658C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9D662C;
  v5[3] = &unk_2788598F8;
  v7 = *(a1 + 56);
  v4 = *(a1 + 40);
  v2 = v4;
  v6 = v4;
  objc_msgSend_removeRecoveryKeyFromBackupInDaemon_(v1, v3, v5);
}

void sub_22E9D662C(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "removeRecoveryKeyFromBackup came back with %@", &v12, 0xCu);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9D6890(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  (*(*(a1 + 32) + 16))();
}

void sub_22E9D6B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E9D6B20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F2EA8(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D6B90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E9D6C2C;
  v6[3] = &unk_278859858;
  v5 = *(a1 + 48);
  v3 = v5;
  v7 = v5;
  objc_msgSend_disableWithRequest_reply_(v1, v4, v2, v6);
}

void sub_22E9D6C2C(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"no error";
    if (v4)
    {
      v6 = v4;
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_22E9CA000, v5, OS_LOG_TYPE_DEFAULT, "disableWithRequest came back with %@", &v10, 0xCu);
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  objc_msgSend_invalidate(*(a1 + 32), v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9D6ECC(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 32) + 16))();
}

void sub_22E9D729C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22E9D72C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F31F0(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D7338(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E9D73DC;
  v6[3] = &unk_278859808;
  v8 = *(a1 + 64);
  v5 = *(a1 + 48);
  v3 = v5;
  v7 = v5;
  objc_msgSend_startSMSChallengeWithRequest_reply_(v1, v4, v2, v6);
}

void sub_22E9D73DC(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "startSMSChallengeWithRequest came back with %@", &v17, 0xCu);
  }

  v9 = 40;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v9 = 48;
    v10 = v5;
  }

  v11 = *(*(a1 + v9) + 8);
  v12 = v10;
  v13 = *(v11 + 40);
  *(v11 + 40) = v12;

  objc_msgSend_invalidate(*(a1 + 32), v14, v15);
  v16 = *MEMORY[0x277D85DE8];
}

void sub_22E9D78C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E9D78E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F32E0(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D7950(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E9D79EC;
  v6[3] = &unk_278859858;
  v5 = *(a1 + 48);
  v3 = v5;
  v7 = v5;
  objc_msgSend_changeSMSTargetWithRequest_reply_(v1, v4, v2, v6);
}

void sub_22E9D79EC(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"no error";
    if (v4)
    {
      v6 = v4;
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_22E9CA000, v5, OS_LOG_TYPE_DEFAULT, "changeSMSTargetWithRequest came back with %@", &v10, 0xCu);
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  objc_msgSend_invalidate(*(a1 + 32), v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9D7DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F4168();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_22E9D7E30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E9D7ECC;
  v6[3] = &unk_278859858;
  v5 = *(a1 + 48);
  v3 = v5;
  v7 = v5;
  objc_msgSend_backupForRecoveryKeyWithInfoInDaemon_reply_(v1, v4, v2, v6);
}

void sub_22E9D7ECC(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"no error";
    if (v4)
    {
      v6 = v4;
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_22E9CA000, v5, OS_LOG_TYPE_DEFAULT, "backupForRecoveryKeyWithInfoInDaemon came back with %@", &v10, 0xCu);
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  objc_msgSend_invalidate(*(a1 + 32), v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9D81C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F3358(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D8234(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E9D82D0;
  v6[3] = &unk_278859858;
  v5 = *(a1 + 48);
  v3 = v5;
  v7 = v5;
  objc_msgSend_backupWithInfo_reply_(v1, v4, v2, v6);
}

void sub_22E9D82D0(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"no error";
    if (v4)
    {
      v6 = v4;
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_22E9CA000, v5, OS_LOG_TYPE_DEFAULT, "backupWithInfo came back with %@", &v10, 0xCu);
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  objc_msgSend_invalidate(*(a1 + 32), v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E9D87BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F42C0(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9D8830(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E9D88E8;
  v6[3] = &unk_278859718;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  objc_msgSend_prepareHSA2EscrowRecordContents_usesComplexPassphrase_reply_(v2, v5, v3, v4, v6);
}

void sub_22E9D88E8(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"no error";
    if (v3)
    {
      v5 = v3;
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_22E9CA000, v4, OS_LOG_TYPE_DEFAULT, "prepareHSA2EscrowRecordContents came back with %@", &v9, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v6, v7);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9D8A74(uint64_t a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = objc_msgSend_daemonPasscodeRequestOpinion_(v2, a2, &v7);
  v4 = v7;
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_22E9CA000, v5, OS_LOG_TYPE_DEFAULT, "initial state fetch completed with: %d %@", buf, 0x12u);
  }

  atomic_store(0, byte_280B5F980);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22E9D8F88(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_UTF8String(@"com.apple.sbd.passcode_request", a2, a3);
  if (notify_register_check(v3, &dword_280B5F9BC))
  {
    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22E9CA000, v4, OS_LOG_TYPE_DEFAULT, "unable to fetch passcode_request token", v5, 2u);
    }
  }

  else
  {
    byte_280B5F9B9 = 1;
  }
}

void sub_22E9D9218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22E9D9244(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F4434(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D92B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9D9354;
  v5[3] = &unk_2788599E0;
  v7 = *(a1 + 56);
  v4 = *(a1 + 40);
  v2 = v4;
  v6 = v4;
  objc_msgSend_daemonPasscodeRequestOpinion_(v1, v3, v5);
}

void sub_22E9D9354(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "daemonPasscodeRequestOpinion came back with %@", &v12, 0xCu);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  objc_msgSend_invalidate(*(a1 + 32), v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9D9794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22E9D97C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F4524(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9D9830(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 88);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22E9D98F8;
  v9[3] = &unk_278859A08;
  v11 = *(a1 + 80);
  v8 = *(a1 + 64);
  v6 = v8;
  v10 = v8;
  objc_msgSend_beginHSA2PasscodeRequest_desirePasscodeImmediately_uuid_reason_reply_(v1, v7, v2, v3, v4, v5, v9);
}

void sub_22E9D98F8(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "beginHSA2PasscodeRequest came back with %@", &v15, 0xCu);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  objc_msgSend_invalidate(*(a1 + 32), v12, v13);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_22E9D9B6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F459C(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9D9BEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9D9C9C;
  v5[3] = &unk_278859A58;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_getCertificatesWithRequest_reply_(v2, v4, v3, v5);
}

void sub_22E9D9C9C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v15 = a2;
  objc_msgSend_invalidate(v9, v13, v14);
  (*(*(a1 + 40) + 16))();
}

void sub_22E9D9F64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F4614(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9D9FD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9DA088;
  v5[3] = &unk_278859718;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_saveTermsAcceptance_reply_(v2, v4, v3, v5);
}

void sub_22E9DA088(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"no error";
    if (v3)
    {
      v5 = v3;
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_22E9CA000, v4, OS_LOG_TYPE_DEFAULT, "saveTermsAcceptance came back with %@", &v9, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v6, v7);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22E9DA2E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F468C(v3, v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22E9DA35C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9DA40C;
  v5[3] = &unk_278859A80;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  objc_msgSend_getAcceptedTermsForAltDSID_reply_(v2, v4, v3, v5);
}

void sub_22E9DA40C(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "getAcceptedTermsForAltDSID came back with %@", &v17, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);
  v11 = *(a1 + 40);
  if (objc_msgSend_count(v5, v12, v13))
  {
    v15 = objc_msgSend_objectAtIndexedSubscript_(v5, v14, 0);
    (*(v11 + 16))(v11, v15, v6);
  }

  else
  {
    (*(v11 + 16))(v11, 0, v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22E9DA77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22E9DA7A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F468C(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9DA814(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E9DA8B8;
  v6[3] = &unk_278859AA8;
  v8 = *(a1 + 64);
  v5 = *(a1 + 48);
  v3 = v5;
  v7 = v5;
  objc_msgSend_getAcceptedTermsForAltDSID_reply_(v1, v4, v2, v6);
}

void sub_22E9DA8B8(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "getAcceptedTermsForAltDSID came back with %@", &v15, 0xCu);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  objc_msgSend_invalidate(*(a1 + 32), v12, v13);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_22E9DAC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22E9DAC84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F4704(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9DACF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22E9DADA8;
  v7[3] = &unk_2788598F8;
  v9 = *(a1 + 72);
  v6 = *(a1 + 56);
  v4 = v6;
  v8 = v6;
  objc_msgSend_moveToFederationAllowed_altDSID_reply_(v1, v5, v2, v3, v7);
}

void sub_22E9DADA8(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_22E9CA000, v7, OS_LOG_TYPE_DEFAULT, "moveToFederationAllowed came back with %@", &v12, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  objc_msgSend_invalidate(*(a1 + 32), v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22E9DB0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22E9DB0D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F477C(v3, v4, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_22E9DB144(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E9DB1E4;
  v5[3] = &unk_278859AA8;
  v7 = *(a1 + 56);
  v4 = *(a1 + 40);
  v2 = v4;
  v6 = v4;
  objc_msgSend_knownICDPFederations_(v1, v3, v5);
}

void sub_22E9DB1E4(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"no error";
    if (v7)
    {
      v9 = v7;
    }

    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_22E9CA000, v8, OS_LOG_TYPE_DEFAULT, "knownICDPFederations came back with %@", &v13, 0xCu);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  objc_msgSend_invalidate(*(a1 + 32), v10, v11);

  v12 = *MEMORY[0x277D85DE8];
}

void SecureBackupGetAccountInfoWithInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [SecureBackup alloc];
  v7 = objc_msgSend_initWithUserActivityLabel_(v5, v6, @"getAccountInfo (legacy API)");
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22E9DBA0C;
  v10[3] = &unk_278859970;
  v8 = v3;
  v11 = v8;
  objc_msgSend_getAccountInfoWithInfo_completionBlock_(v7, v9, a1, v10);

  objc_autoreleasePoolPop(v4);
}

void SecureBackupEnableWithInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [SecureBackup alloc];
  v7 = objc_msgSend_initWithUserActivityLabel_(v5, v6, @"enable (legacy API)");
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22E9DBAF0;
  v10[3] = &unk_278859628;
  v8 = v3;
  v11 = v8;
  objc_msgSend_enableWithInfo_completionBlock_(v7, v9, a1, v10);

  objc_autoreleasePoolPop(v4);
}

void SecureBackupRecoverWithInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [SecureBackup alloc];
  v7 = objc_msgSend_initWithUserActivityLabel_(v5, v6, @"recover (legacy API)");
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22E9DBBD4;
  v10[3] = &unk_278859970;
  v8 = v3;
  v11 = v8;
  objc_msgSend_recoverWithInfo_completionBlock_(v7, v9, a1, v10);

  objc_autoreleasePoolPop(v4);
}

void SecureBackupDisableWithInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [SecureBackup alloc];
  v7 = objc_msgSend_initWithUserActivityLabel_(v5, v6, @"disable (legacy API)");
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22E9DBCB8;
  v10[3] = &unk_278859628;
  v8 = v3;
  v11 = v8;
  objc_msgSend_disableWithInfo_completionBlock_(v7, v9, a1, v10);

  objc_autoreleasePoolPop(v4);
}

void SecureBackupUpdateMetadataWithInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [SecureBackup alloc];
  v7 = objc_msgSend_initWithUserActivityLabel_(v5, v6, @"updateMetadata (legacy API)");
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22E9DBD9C;
  v10[3] = &unk_278859628;
  v8 = v3;
  v11 = v8;
  objc_msgSend_updateMetadataWithInfo_completionBlock_(v7, v9, a1, v10);

  objc_autoreleasePoolPop(v4);
}

void SecureBackupBackOffDateWithInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [SecureBackup alloc];
  v7 = objc_msgSend_initWithUserActivityLabel_(v5, v6, @"backOffDate (legacy API)");
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22E9DBE80;
  v10[3] = &unk_278859970;
  v8 = v3;
  v11 = v8;
  objc_msgSend_backOffDateWithInfo_completionBlock_(v7, v9, a1, v10);

  objc_autoreleasePoolPop(v4);
}

void SecureBackupSetBackOffDateWithInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [SecureBackup alloc];
  v7 = objc_msgSend_initWithUserActivityLabel_(v5, v6, @"setBackOffDate (legacy API)");
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22E9DBF64;
  v10[3] = &unk_278859628;
  v8 = v3;
  v11 = v8;
  objc_msgSend_setBackOffDateWithInfo_completionBlock_(v7, v9, a1, v10);

  objc_autoreleasePoolPop(v4);
}

void SecureBackupKVSState(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [SecureBackup alloc];
  v5 = objc_msgSend_initWithUserActivityLabel_(v3, v4, @"stateCapture (legacy API)");
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22E9DC040;
  v8[3] = &unk_278859970;
  v6 = v1;
  v9 = v6;
  objc_msgSend_stateCaptureWithCompletionBlock_(v5, v7, v8);

  objc_autoreleasePoolPop(v2);
}

void SecureBackupIsGuitarfishEnabledOverride(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  dword_27DA7DF58 = v2;
  v3 = CloudServicesLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "disabled";
    if (a1)
    {
      v4 = "enabled";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_22E9CA000, v3, OS_LOG_TYPE_DEFAULT, "Guitarfish ff overridden to %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void SecureBackupIsGuitarfishEnabledClearOverride()
{
  dword_27DA7DF58 = 0;
  v0 = CloudServicesLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_22E9CA000, v0, OS_LOG_TYPE_DEFAULT, "Guitarfish ff override removed", v1, 2u);
  }
}

uint64_t SecureBackupIsGuitarfishEnabled()
{
  if (dword_27DA7DF58)
  {
    v0 = dword_27DA7DF58 == 1;
  }

  else
  {
    if (qword_280B5F988 != -1)
    {
      sub_22E9F47F4();
    }

    v0 = byte_280B5F994;
  }

  return v0 & 1;
}

void sub_22E9DC1E4()
{
  v5 = *MEMORY[0x277D85DE8];
  byte_280B5F994 = _os_feature_enabled_impl();
  v0 = CloudServicesLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_280B5F994)
    {
      v1 = "enabled";
    }

    else
    {
      v1 = "disabled";
    }

    v3 = 136315138;
    v4 = v1;
    _os_log_impl(&dword_22E9CA000, v0, OS_LOG_TYPE_DEFAULT, "Guitarfish set via feature flag to %s", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void sub_22E9DC744(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], a2, a3);
  v5 = objc_msgSend_processName(v7, v3, v4);
  v6 = qword_280B5F9A0;
  qword_280B5F9A0 = v5;
}

void sub_22E9DC7A0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_22E9DC7CC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t SecureBackupTermsInfoReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v43 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3) - 1;
      if (v32 >= 5)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v33 = off_278859AC8[v32];
        v34 = PBReaderReadString();
        v35 = *v33;
        v36 = *(a1 + v35);
        *(a1 + v35) = v34;
      }

      v39 = objc_msgSend_position(a2, v37, v38);
    }

    while (v39 < objc_msgSend_length(a2, v40, v41));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CSFDERecordFDEClientMetadataFDEKeyRegistryFDEEntryReadFrom(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v41 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41 & 0x7F) << v10;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = a1[1];
        a1[1] = v32;
LABEL_22:

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = PBReaderReadData();
    if (v33)
    {
      objc_msgSend_addPublicKeys_(a1, v34, v33);
    }

    goto LABEL_22;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CSFDERecordFDEClientMetadataReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41 & 0x7F) << v10;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CSFDERecordFDEClientMetadataFDEiCloudDataProtection);
        objc_storeStrong((a1 + 8), v32);
        v41 = 0xAAAAAAAAAAAAAAAALL;
        v42 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !CSFDERecordFDEClientMetadataFDEiCloudDataProtectionReadFrom(v32, a2, v33))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = objc_alloc_init(CSFDERecordFDEClientMetadataFDEKeyRegistry);
    objc_storeStrong((a1 + 16), v32);
    v41 = 0xAAAAAAAAAAAAAAAALL;
    v42 = 0xAAAAAAAAAAAAAAAALL;
    if (!PBReaderPlaceMark() || !CSFDERecordFDEClientMetadataFDEKeyRegistryReadFrom(v32, a2, v34))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CSFDERecordFDEClientMetadataFDEiCloudDataProtectionReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadData();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CSFDERecordFDEClientMetadataFDEKeyRegistryReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CSFDERecordFDEClientMetadataFDEKeyRegistryFDEEntry);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0xAAAAAAAAAAAAAAAALL;
        v40[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !CSFDERecordFDEClientMetadataFDEKeyRegistryFDEEntryReadFrom(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CSFDERecordReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v43[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43[0] & 0x7F) << v10;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 == 2)
      {
        v35 = PBReaderReadString();
        v36 = 24;
LABEL_25:
        v33 = *(a1 + v36);
        *(a1 + v36) = v35;
LABEL_26:

        goto LABEL_28;
      }

      if (v32 == 1)
      {
        v33 = objc_alloc_init(CSFDERecordFDEClientMetadata);
        objc_storeStrong((a1 + 16), v33);
        v43[0] = 0xAAAAAAAAAAAAAAAALL;
        v43[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !CSFDERecordFDEClientMetadataReadFrom(v33, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v39 = objc_msgSend_position(a2, v37, v38);
      if (v39 >= objc_msgSend_length(a2, v40, v41))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v35 = PBReaderReadData();
    v36 = 8;
    goto LABEL_25;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22E9DFEA8(void *a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(a1, v4, v3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_BOOLValue(v5, v6, v7);
  }

  else
  {
    if (v5)
    {
      v9 = CloudServicesLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22E9F484C();
      }
    }

    v8 = 0;
  }

  return v8;
}

uint64_t sub_22E9DFF5C(void *a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(a1, v4, v3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_integerValue(v5, v6, v7);
  }

  else
  {
    if (v5)
    {
      v9 = CloudServicesLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22E9F484C();
      }
    }

    v8 = 0;
  }

  return v8;
}

id sub_22E9E0534(id a1)
{

  return a1;
}

void sub_22E9E0558(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id SecureBackupSetupProtocol(void *a1)
{
  v52[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (qword_280B5F9A8 != -1)
  {
    sub_22E9F48D4();
  }

  v2 = MEMORY[0x277CBEB98];
  v52[0] = objc_opt_class();
  v52[1] = objc_opt_class();
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v3, v52, 2);
  v6 = objc_msgSend_setWithArray_(v2, v5, v4);

  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v1, v7, v6, sel_recoverSilentWithCDPContextInDaemon_allRecords_reply_, 1, 0);
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObject_(v8, v10, v9);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v1, v12, v11, sel_recoverSilentWithCDPContextInDaemon_allRecords_reply_, 0, 0);

  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v1, v13, v6, sel_recoverSilentWithCDPContextInDaemon_allRecords_altDSID_flowID_deviceSessionID_reply_, 1, 0);
  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v17 = objc_msgSend_setWithObject_(v14, v16, v15);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v1, v18, v17, sel_recoverSilentWithCDPContextInDaemon_allRecords_altDSID_flowID_deviceSessionID_reply_, 0, 0);

  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v1, v19, qword_280B5F9B0, sel_recoverSilentWithCDPContextInDaemon_allRecords_altDSID_flowID_deviceSessionID_reply_, 1, 1);
  v20 = MEMORY[0x277CBEB98];
  v21 = objc_opt_class();
  v23 = objc_msgSend_setWithObject_(v20, v22, v21);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v1, v24, v23, sel_recoverWithCDPContextInDaemon_escrowRecord_reply_, 0, 0);

  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v1, v25, qword_280B5F9B0, sel_recoverWithCDPContextInDaemon_escrowRecord_reply_, 1, 1);
  v26 = MEMORY[0x277CBEB98];
  v27 = objc_opt_class();
  v29 = objc_msgSend_setWithObject_(v26, v28, v27);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v1, v30, v29, sel_recoverWithCDPContextInDaemon_escrowRecord_altDSID_flowID_deviceSessionID_reply_, 0, 0);

  v31 = MEMORY[0x277CBEB98];
  v51[0] = objc_opt_class();
  v51[1] = objc_opt_class();
  v51[2] = objc_opt_class();
  v51[3] = objc_opt_class();
  v51[4] = objc_opt_class();
  v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, v51, 5);
  v35 = objc_msgSend_setWithArray_(v31, v34, v33);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v1, v36, v35, sel_restoreKeychainAsyncWithPasswordInDaemon_keybagDigest_haveBottledPeer_viewsNotToBeRestored_reply_, 3, 0);

  v37 = MEMORY[0x277CBEB98];
  v50[0] = objc_opt_class();
  v50[1] = objc_opt_class();
  v50[2] = objc_opt_class();
  v50[3] = objc_opt_class();
  v50[4] = objc_opt_class();
  v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, v50, 5);
  v41 = objc_msgSend_setWithArray_(v37, v40, v39);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v1, v42, v41, sel_createICDPRecordWithRequest_recordContents_reply_, 1, 0);

  v43 = MEMORY[0x277CBEB98];
  v44 = objc_opt_class();
  v46 = objc_msgSend_setWithObject_(v43, v45, v44);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v1, v47, v46, sel_beginHSA2PasscodeRequest_desirePasscodeImmediately_uuid_reason_reply_, 3, 0);

  v48 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t sub_22E9E095C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, a3);
  v4 = qword_280B5F9B0;
  qword_280B5F9B0 = v3;

  for (i = 0; i != 13; ++i)
  {
    result = objc_getClass(off_278859B00[i]);
    if (result)
    {
      result = objc_msgSend_addObject_(qword_280B5F9B0, v7, result);
    }
  }

  return result;
}

id SecureBackupSetupConcurrentProtocol(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v6 = objc_msgSend_setWithObjects_(v2, v5, v3, v4, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v1, v7, v6, sel_getAcceptedTermsForAltDSID_reply_, 0, 1);

  return v1;
}

uint64_t SecureBackupEscrowReasonReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v60 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v54 = PBReaderReadString();
        v55 = *(a1 + 8);
        *(a1 + 8) = v54;
      }

      else if (v32 == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v61 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v61, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v61 & 0x7F) << v33;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_34;
          }
        }

        v53 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v35;
LABEL_34:
        *(a1 + 16) = v53;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CSStingrayRecordReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v84[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v84[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v84, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v84[0] & 0x7F) << v10;
        if ((v84[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 3)
      {
        break;
      }

      if (v32 != 1)
      {
        if (v32 == 2)
        {
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 52) |= 2u;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v62 = objc_msgSend_position(a2, v32, v9, v84[0]) + 1;
            if (v62 >= objc_msgSend_position(a2, v63, v64) && (v67 = objc_msgSend_position(a2, v65, v66) + 1, v67 <= objc_msgSend_length(a2, v68, v69)))
            {
              v70 = objc_msgSend_data(a2, v65, v66);
              v73 = objc_msgSend_position(a2, v71, v72);
              objc_msgSend_getBytes_range_(v70, v74, v84, v73, 1);

              v77 = objc_msgSend_position(a2, v75, v76);
              objc_msgSend_setPosition_(a2, v78, v77 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v65, v66);
            }

            v61 |= (v84[0] & 0x7F) << v59;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v30 = v60++ >= 9;
            if (v30)
            {
              LOBYTE(v55) = 0;
              goto LABEL_57;
            }
          }

          v55 = (v61 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_57:
          v79 = 49;
          goto LABEL_58;
        }

        if (v32 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 52) |= 1u;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v38 = objc_msgSend_position(a2, v32, v9, v84[0]) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, v84, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v84[0] & 0x7F) << v35;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              LOBYTE(v55) = 0;
              goto LABEL_55;
            }
          }

          v55 = (v37 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_55:
          v79 = 48;
LABEL_58:
          *(a1 + v79) = v55;
          goto LABEL_59;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_59;
      }

      v56 = objc_alloc_init(CSStingrayRecordClientMetadata);
      objc_storeStrong((a1 + 24), v56);
      v84[0] = 0xAAAAAAAAAAAAAAAALL;
      v84[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !CSStingrayRecordClientMetadataReadFrom(v56, a2, v57))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_59:
      v80 = objc_msgSend_position(a2, v32, v9);
      if (v80 >= objc_msgSend_length(a2, v81, v82))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 > 5)
    {
      if (v32 == 6)
      {
        v33 = PBReaderReadString();
        v34 = 40;
        goto LABEL_44;
      }

      if (v32 == 7)
      {
        v33 = PBReaderReadData();
        v34 = 16;
        goto LABEL_44;
      }
    }

    else
    {
      if (v32 == 4)
      {
        v33 = PBReaderReadData();
        v34 = 8;
        goto LABEL_44;
      }

      if (v32 == 5)
      {
        v33 = PBReaderReadData();
        v34 = 32;
LABEL_44:
        v58 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_59;
      }
    }

    goto LABEL_40;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CSStingrayRecordClientMetadataKeyRegistryReadFrom(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CSStingrayRecordClientMetadataKeyRegistryEntry);
        objc_msgSend_addServiceEntry_(a1, v33, v32);
        v41[0] = 0xAAAAAAAAAAAAAAAALL;
        v41[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !CSStingrayRecordClientMetadataKeyRegistryEntryReadFrom(v32, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = objc_msgSend_position(a2, v35, v36);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CSStingrayRecordClientMetadataReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v86) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v86) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v86, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v86 & 0x7F) << v10;
        if ((v86 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 3)
      {
        switch(v32)
        {
          case 1:
            v54 = objc_alloc_init(CSStingrayRecordClientMetadataICloudDataProtection);
            objc_storeStrong((a1 + 24), v54);
            v86 = 0xAAAAAAAAAAAAAAAALL;
            v87 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !CSStingrayRecordClientMetadataICloudDataProtectionReadFrom(v54, a2, v58))
            {
LABEL_69:

              return 0;
            }

            goto LABEL_57;
          case 2:
            v54 = objc_alloc_init(CSStingrayRecordClientMetadataKeyRegistry);
            objc_storeStrong((a1 + 40), v54);
            v86 = 0xAAAAAAAAAAAAAAAALL;
            v87 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !CSStingrayRecordClientMetadataKeyRegistryReadFrom(v54, a2, v80))
            {
              goto LABEL_69;
            }

            goto LABEL_57;
          case 3:
            v54 = objc_alloc_init(CSStingrayRecordClientMetadataStableMetadata);
            objc_storeStrong((a1 + 56), v54);
            v86 = 0xAAAAAAAAAAAAAAAALL;
            v87 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !CSStingrayRecordClientMetadataStableMetadataReadFrom(v54, a2, v55))
            {
              goto LABEL_69;
            }

LABEL_57:
            PBReaderRecallMark();

            goto LABEL_67;
        }
      }

      else if (v32 > 5)
      {
        if (v32 == 6)
        {
          v60 = 0;
          v61 = 0;
          v62 = 0;
          *(a1 + 64) |= 2u;
          while (1)
          {
            LOBYTE(v86) = 0;
            v63 = objc_msgSend_position(a2, v32, v9, v86) + 1;
            if (v63 >= objc_msgSend_position(a2, v64, v65) && (v68 = objc_msgSend_position(a2, v66, v67) + 1, v68 <= objc_msgSend_length(a2, v69, v70)))
            {
              v71 = objc_msgSend_data(a2, v66, v67);
              v74 = objc_msgSend_position(a2, v72, v73);
              objc_msgSend_getBytes_range_(v71, v75, &v86, v74, 1);

              v78 = objc_msgSend_position(a2, v76, v77);
              objc_msgSend_setPosition_(a2, v79, v78 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v66, v67);
            }

            v62 |= (v86 & 0x7F) << v60;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v30 = v61++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_61;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v62;
          }

LABEL_61:
          v81 = 16;
          goto LABEL_66;
        }

        if (v32 == 7)
        {
          v56 = PBReaderReadString();
          v57 = 48;
LABEL_45:
          v59 = *(a1 + v57);
          *(a1 + v57) = v56;

          goto LABEL_67;
        }
      }

      else
      {
        if (v32 == 4)
        {
          v56 = PBReaderReadData();
          v57 = 32;
          goto LABEL_45;
        }

        if (v32 == 5)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            LOBYTE(v86) = 0;
            v36 = objc_msgSend_position(a2, v32, v9, v86) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v86, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v86 & 0x7F) << v33;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_65;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35;
          }

LABEL_65:
          v81 = 8;
LABEL_66:
          *(a1 + v81) = v53;
          goto LABEL_67;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_67:
      v82 = objc_msgSend_position(a2, v32, v9);
    }

    while (v82 < objc_msgSend_length(a2, v83, v84));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CSStingrayRecordClientMetadataICloudDataProtectionReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v162 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v162, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v162 & 0x7F) << v10;
        if ((v162 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 4)
      {
        break;
      }

      if (v32 <= 6)
      {
        if (v32 != 5)
        {
          if (v32 != 6)
          {
LABEL_87:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_102;
          }

          v94 = 0;
          v95 = 0;
          v96 = 0;
          *(a1 + 40) |= 0x10u;
          while (1)
          {
            v164 = 0;
            v97 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v97 >= objc_msgSend_position(a2, v98, v99) && (v102 = objc_msgSend_position(a2, v100, v101) + 1, v102 <= objc_msgSend_length(a2, v103, v104)))
            {
              v105 = objc_msgSend_data(a2, v100, v101);
              v108 = objc_msgSend_position(a2, v106, v107);
              objc_msgSend_getBytes_range_(v105, v109, &v164, v108, 1);

              v112 = objc_msgSend_position(a2, v110, v111);
              objc_msgSend_setPosition_(a2, v113, v112 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v100, v101);
            }

            v96 |= (v164 & 0x7F) << v94;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v94 += 7;
            v30 = v95++ >= 9;
            if (v30)
            {
              LOBYTE(v53) = 0;
              goto LABEL_94;
            }
          }

          v53 = (v96 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_94:
          v158 = 36;
          goto LABEL_101;
        }

        v154 = PBReaderReadData();
        v155 = 16;
      }

      else
      {
        switch(v32)
        {
          case 7:
            v154 = PBReaderReadData();
            v155 = 24;
            break;
          case 8:
            v154 = PBReaderReadData();
            v155 = 8;
            break;
          case 9:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 40) |= 4u;
            while (1)
            {
              v163 = 0;
              v36 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
              {
                v44 = objc_msgSend_data(a2, v39, v40);
                v47 = objc_msgSend_position(a2, v45, v46);
                objc_msgSend_getBytes_range_(v44, v48, &v163, v47, 1);

                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_setPosition_(a2, v52, v51 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v39, v40);
              }

              v35 |= (v163 & 0x7F) << v33;
              if ((v163 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v30 = v34++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_100;
              }
            }

            v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_100:
            v158 = 34;
LABEL_101:
            *(a1 + v158) = v53;
            goto LABEL_102;
          default:
            goto LABEL_87;
        }
      }

      v156 = *(a1 + v155);
      *(a1 + v155) = v154;

LABEL_102:
      v159 = objc_msgSend_position(a2, v32, v9);
      if (v159 >= objc_msgSend_length(a2, v160, v161))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 > 2)
    {
      if (v32 == 3)
      {
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 40) |= 0x20u;
        while (1)
        {
          v166 = 0;
          v137 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v137 >= objc_msgSend_position(a2, v138, v139) && (v142 = objc_msgSend_position(a2, v140, v141) + 1, v142 <= objc_msgSend_length(a2, v143, v144)))
          {
            v145 = objc_msgSend_data(a2, v140, v141);
            v148 = objc_msgSend_position(a2, v146, v147);
            objc_msgSend_getBytes_range_(v145, v149, &v166, v148, 1);

            v152 = objc_msgSend_position(a2, v150, v151);
            objc_msgSend_setPosition_(a2, v153, v152 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v140, v141);
          }

          v136 |= (v166 & 0x7F) << v134;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v30 = v135++ >= 9;
          if (v30)
          {
            LOBYTE(v53) = 0;
            goto LABEL_98;
          }
        }

        v53 = (v136 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_98:
        v158 = 37;
      }

      else
      {
        if (v32 != 4)
        {
          goto LABEL_87;
        }

        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 40) |= 8u;
        while (1)
        {
          v165 = 0;
          v77 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v77 >= objc_msgSend_position(a2, v78, v79) && (v82 = objc_msgSend_position(a2, v80, v81) + 1, v82 <= objc_msgSend_length(a2, v83, v84)))
          {
            v85 = objc_msgSend_data(a2, v80, v81);
            v88 = objc_msgSend_position(a2, v86, v87);
            objc_msgSend_getBytes_range_(v85, v89, &v165, v88, 1);

            v92 = objc_msgSend_position(a2, v90, v91);
            objc_msgSend_setPosition_(a2, v93, v92 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v80, v81);
          }

          v76 |= (v165 & 0x7F) << v74;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v30 = v75++ >= 9;
          if (v30)
          {
            LOBYTE(v53) = 0;
            goto LABEL_92;
          }
        }

        v53 = (v76 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_92:
        v158 = 35;
      }
    }

    else if (v32 == 1)
    {
      v114 = 0;
      v115 = 0;
      v116 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v168 = 0;
        v117 = objc_msgSend_position(a2, v32, v9) + 1;
        if (v117 >= objc_msgSend_position(a2, v118, v119) && (v122 = objc_msgSend_position(a2, v120, v121) + 1, v122 <= objc_msgSend_length(a2, v123, v124)))
        {
          v125 = objc_msgSend_data(a2, v120, v121);
          v128 = objc_msgSend_position(a2, v126, v127);
          objc_msgSend_getBytes_range_(v125, v129, &v168, v128, 1);

          v132 = objc_msgSend_position(a2, v130, v131);
          objc_msgSend_setPosition_(a2, v133, v132 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v120, v121);
        }

        v116 |= (v168 & 0x7F) << v114;
        if ((v168 & 0x80) == 0)
        {
          break;
        }

        v114 += 7;
        v30 = v115++ >= 9;
        if (v30)
        {
          LOBYTE(v53) = 0;
          goto LABEL_96;
        }
      }

      v53 = (v116 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_96:
      v158 = 32;
    }

    else
    {
      if (v32 != 2)
      {
        goto LABEL_87;
      }

      v54 = 0;
      v55 = 0;
      v56 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        v167 = 0;
        v57 = objc_msgSend_position(a2, v32, v9) + 1;
        if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
        {
          v65 = objc_msgSend_data(a2, v60, v61);
          v68 = objc_msgSend_position(a2, v66, v67);
          objc_msgSend_getBytes_range_(v65, v69, &v167, v68, 1);

          v72 = objc_msgSend_position(a2, v70, v71);
          objc_msgSend_setPosition_(a2, v73, v72 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v60, v61);
        }

        v56 |= (v167 & 0x7F) << v54;
        if ((v167 & 0x80) == 0)
        {
          break;
        }

        v54 += 7;
        v30 = v55++ >= 9;
        if (v30)
        {
          LOBYTE(v53) = 0;
          goto LABEL_90;
        }
      }

      v53 = (v56 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_90:
      v158 = 33;
    }

    goto LABEL_101;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CSStingrayAccountStatusReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v43) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v43) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v33 = objc_alloc_init(CSStingrayRecord);
          v34 = 8;
          goto LABEL_30;
        }

        if (v32 == 4)
        {
          v33 = objc_alloc_init(CSFDERecord);
          objc_storeStrong((a1 + 16), v33);
          v43 = 0xAAAAAAAAAAAAAAAALL;
          v44 = 0xAAAAAAAAAAAAAAAALL;
          if (!PBReaderPlaceMark() || !CSFDERecordReadFrom(v33, a2, v35))
          {
LABEL_35:

            return 0;
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = objc_alloc_init(CSStingrayRecord);
          v34 = 32;
          goto LABEL_30;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(CSStingrayRecord);
          v34 = 24;
LABEL_30:
          objc_storeStrong((a1 + v34), v33);
          v43 = 0xAAAAAAAAAAAAAAAALL;
          v44 = 0xAAAAAAAAAAAAAAAALL;
          if (!PBReaderPlaceMark() || !CSStingrayRecordReadFrom(v33, a2, v38))
          {
            goto LABEL_35;
          }

LABEL_32:
          PBReaderRecallMark();

          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_33:
      v39 = objc_msgSend_position(a2, v36, v37);
    }

    while (v39 < objc_msgSend_length(a2, v40, v41));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CSStingrayRecordClientMetadataStableMetadataReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CSStingrayRecordClientMetadataKeyRegistryEntryReadFrom(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v41 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41 & 0x7F) << v10;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = a1[1];
        a1[1] = v32;
LABEL_22:

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = PBReaderReadData();
    if (v33)
    {
      objc_msgSend_addPublicKeys_(a1, v34, v33);
    }

    goto LABEL_22;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22E9E7228()
{
  if (qword_27DA7DF68 != -1)
  {
    sub_22E9F48E8();
  }

  dispatch_sync(qword_27DA7DF70, &unk_284351B88);
  return dword_27DA7DF60;
}

void sub_22E9E7270()
{
  if (!dword_27DA7DF60)
  {
    dword_27DA7DF60 = sub_22E9E72DC("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

dispatch_queue_t sub_22E9E72B0()
{
  result = dispatch_queue_create("aks-client-queue", 0);
  qword_27DA7DF70 = result;
  return result;
}

uint64_t sub_22E9E72DC(char *path, const char *a2)
{
  connect = 0;
  v3 = *MEMORY[0x277CD28A0];
  v4 = IORegistryEntryFromPath(*MEMORY[0x277CD28A0], path);
  v5 = MEMORY[0x277D85F48];
  if (!v4 || (v6 = v4, v7 = IOServiceOpen(v4, *MEMORY[0x277D85F48], 0, &connect), IOObjectRelease(v6), v7))
  {
    v8 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(v3, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      IOServiceOpen(MatchingService, *v5, 0, &connect);
      IOObjectRelease(v10);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t sub_22E9E7424(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t sub_22E9E7480(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t sub_22E9E7498(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t sub_22E9E7518(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t sub_22E9E7544()
{
  v3 = v1 + *(v0 + 1) - v0;

  return ccder_blob_encode_body();
}

uint64_t sub_22E9E7570()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t sub_22E9E7590()
{

  return ccder_blob_encode_tl();
}

uint64_t sub_22E9E75E4()
{

  return ccder_sizeof();
}

void *sub_22E9E7600()
{

  return calloc(0x18uLL, 1uLL);
}

void *sub_22E9E7618(size_t a1)
{

  return calloc(a1, 1uLL);
}

unint64_t sub_22E9E763C(uint64_t *a1)
{
  *a1 = ccrng();
  a1[1] = ccsha256_di();
  a1[2] = ccaes_cbc_encrypt_mode();
  a1[3] = ccaes_cbc_decrypt_mode();
  a1[4] = ccaes_gcm_encrypt_mode();
  a1[5] = ccaes_gcm_decrypt_mode();
  ccsrp_gp_rfc5054_2048();
  result = ccdh_ccn_size();
  if (result >> 62)
  {
    goto LABEL_9;
  }

  v3 = 4 * result + 48;
  if (4 * result >= 0xFFFFFFFFFFFFFFD0)
  {
LABEL_10:
    __break(0x5500u);
    return result;
  }

  v4 = *a1[1];
  if (v4 >> 62)
  {
LABEL_9:
    __break(0x550Cu);
    goto LABEL_10;
  }

  if (__CFADD__(v3, 4 * v4))
  {
    goto LABEL_10;
  }

  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, v3 + 4 * v4, 0x91F4CA49uLL))
  {
    v5 = 0;
  }

  else
  {
    v5 = memptr;
  }

  a1[6] = v5;
  v6 = a1[1];
  ccsrp_gp_rfc5054_2048();
  v7 = *a1;
  return ccsrp_ctx_init_option();
}

void sub_22E9E7724(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(*(a1 + 48) + 8);
  v3 = ccdh_ccn_size();
  if (v3 >> 62)
  {
    goto LABEL_14;
  }

  if (4 * v3 >= 0xFFFFFFFFFFFFFFD0)
  {
    goto LABEL_15;
  }

  v4 = ***(a1 + 48);
  if (v4 >> 62)
  {
LABEL_14:
    __break(0x550Cu);
    goto LABEL_15;
  }

  if (__CFADD__(4 * v3 + 48, 4 * v4))
  {
LABEL_15:
    __break(0x5500u);
    return;
  }

  cc_clear();
  ccsrp_gp_rfc5054_2048();
  v5 = ccdh_ccn_size();
  if (v5 >> 62)
  {
    goto LABEL_14;
  }

  if (4 * v5 >= 0xFFFFFFFFFFFFFFD0)
  {
    goto LABEL_15;
  }

  v6 = **(a1 + 8);
  if (v6 >> 62)
  {
    goto LABEL_14;
  }

  if (__CFADD__(4 * v5 + 48, 4 * v6))
  {
    goto LABEL_15;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *(a1 + 48);
    cc_clear();
    free(v7);
  }

  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
}

unint64_t sub_22E9E77E8(uint64_t a1)
{
  result = MEMORY[0x2318F0660](*(*(a1 + 48) + 8));
  if (result >> 61)
  {
    __break(0x550Cu);
  }

  else
  {
    result *= 8;
  }

  return result;
}

unint64_t sub_22E9E7818(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  result = MEMORY[0x2318F0660](*(a1[6] + 8));
  if (result >> 61)
  {
    __break(0x550Cu);
  }

  else if (a3 >= 8 * result)
  {
    v6 = a1[6];
    v7 = *a1;
    return ccsrp_client_start_authentication() == 0;
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_22E9E7890(uint64_t a1)
{
  v1 = *(a1 + 48);
  result = MEMORY[0x2318F0660](*(v1 + 8));
  if (!(result >> 62))
  {
    return v1 + 32 * result + 32;
  }

  __break(0x550Cu);
  return result;
}

uint64_t sub_22E9E78F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, int a8, void (*a9)(const char *, ...), uint64_t a10)
{
  memptr[4] = *MEMORY[0x277D85DE8];
  v15 = MEMORY[0x2318F0660](*(*(a1 + 48) + 8));
  if (v15 >> 61)
  {
    __break(0x550Cu);
  }

  v16 = v15;
  v17 = *(a1 + 48);
  session_key_length = ccsrp_get_session_key_length();
  if (!session_key_length)
  {
    v31 = 4294967197;
    goto LABEL_35;
  }

  v19 = a5 + 44;
  v20 = *(a5 + 44 + *(a5 + 32));
  if ((v20 - 257) <= 0xFFFFFEFF)
  {
    v43 = *(a5 + 44 + *(a5 + 32));
    sub_22E9EBDE0();
    v31 = 4294967294;
LABEL_35:
    v42 = *MEMORY[0x277D85DE8];
    return v31;
  }

  v21 = session_key_length;
  v65 = a8;
  v22 = 8 * v16;
  memptr[0] = 0;
  v23 = malloc_type_posix_memalign(memptr, 0x10uLL, v20, 0x91F4CA49uLL);
  v24 = memptr[0];
  if (v23)
  {
    v24 = 0;
  }

  __dst = v24;
  v70 = 8 * v16;
  v25 = *(v19 + *(a5 + 28));
  if ((v25 - 257) <= 0xFFFFFEFF)
  {
    v46 = *(v19 + *(a5 + 28));
    sub_22E9EBD98();
    v27 = 0;
    v32 = 0;
    v33 = 0;
    v31 = 4294967294;
    goto LABEL_27;
  }

  v63 = a6;
  v64 = a7;
  v26 = *(v19 + *(a5 + 36));
  memptr[0] = 0;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, v25, 0x91F4CA49uLL))
  {
    v27 = 0;
  }

  else
  {
    v27 = memptr[0];
  }

  memptr[0] = 0;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, v22, 0x91F4CA49uLL))
  {
    v28 = 0;
  }

  else
  {
    v28 = memptr[0];
  }

  memptr[0] = 0;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, v21, 0x91F4CA49uLL))
  {
    v29 = 0;
  }

  else
  {
    v29 = memptr[0];
  }

  cc_clear();
  v68 = v28;
  result = cc_clear();
  if (v70 < v26)
  {
    a9("pki_size %zd < B_len %zd", v70, v26);
    (*(a10 + 16))(a10, "pki_size %zd < B_len %zd", v70, v26);
    v31 = 4294967254;
    v32 = v28;
    v33 = v29;
LABEL_27:
    if (__dst)
    {
      cc_clear();
      free(__dst);
    }

    if (v27)
    {
      cc_clear();
      free(v27);
    }

    if (v32)
    {
      cc_clear();
      free(v32);
    }

    if (v33)
    {
      cc_clear();
      free(v33);
    }

    goto LABEL_35;
  }

  if (v70 > v26)
  {
    a9("pki_size %zd > B_len %zd", v70, v26);
    result = (*(a10 + 16))(a10, "pki_size %zd > B_len %zd", v70, v26);
  }

  if (v70 < v26)
  {
LABEL_61:
    __break(0x5515u);
  }

  else
  {
    v33 = v29;
    v34 = (v19 + *(a5 + 28));
    v35 = *v34;
    if (v25 < v35)
    {
      v32 = v68;
LABEL_26:
      a9("unpack_srp_init_resp_rec failed");
      (*(a10 + 16))(a10, "unpack_srp_init_resp_rec failed");
      v31 = 0xFFFFFFFFLL;
      goto LABEL_27;
    }

    v36 = *v34;
    memcpy(v27, v34 + 1, v35);
    v37 = (v19 + *(a5 + 32));
    v38 = *v37;
    if (v20 < v38 || (v39 = *v37, memcpy(__dst, v37 + 1, v38), v40 = (v19 + *(a5 + 36)), v41 = *v40, v26 < v41))
    {
      v32 = v68;
      goto LABEL_26;
    }

    v32 = v68;
    memcpy(&v68[v70 - v26], v40 + 1, v41);
    v44 = *(a1 + 48);
    result = ccsrp_client_process_challenge();
    if (result)
    {
      v45 = result;
      a9("ccsrp_client_process_challenge failed: %d", result);
      (*(a10 + 16))(a10, "ccsrp_client_process_challenge failed: %d", v45);
      v31 = 4294967293;
      goto LABEL_27;
    }

    v47 = 0;
    *(v64 + 4) = 165;
    *(v64 + 8) = v65;
    *(v64 + 12) = *(a5 + 12);
    memptr[1] = v27;
    memptr[0] = v36;
    memptr[3] = v33;
    memptr[2] = v21;
    *(v64 + 28) = 0;
    v48 = v64 + 28;
    v67 = v64 + 40;
    v49 = *v63;
    v66 = *v63;
    while (((16 * v47) | 8uLL) <= 0x20 && (16 * v47) <= 0x1F)
    {
      v50 = *(v48 + 4 * v47);
      v51 = &memptr[2 * v47];
      v52 = v51[1];
      if (v52)
      {
        v53 = *v51;
        if (v53 >= 0xFFFFFFFD)
        {
          goto LABEL_63;
        }

        v54 = v21;
        v55 = (v53 + 3) & 0xFFFFFFFC;
        if (v55 < v53)
        {
          goto LABEL_58;
        }

        v56 = v55 + 4;
        if (v55 >= 0xFFFFFFFC)
        {
          goto LABEL_63;
        }

        if (v55 + 3 >= v49)
        {
LABEL_58:
          a9("pack_srp_recovery_rec failed");
          (*(a10 + 16))(a10, "pack_srp_recovery_rec failed");
          v31 = 4294967291;
          v32 = v68;
          goto LABEL_27;
        }

        v57 = (v67 + v50);
        *(v67 + v50) = v53;
        result = memcpy((v67 + v50 + 4), v52, v53);
        *v57 = bswap32(v53);
        v58 = *(v48 + 4 * v47);
        v59 = __CFADD__(v56, v58);
        v60 = v56 + v58;
        if (v59)
        {
          goto LABEL_63;
        }

        ++v47;
        *(v48 + 4 * v47) = v60;
        v59 = v49 >= v56;
        v49 -= v56;
        if (!v59)
        {
          goto LABEL_61;
        }

        v21 = v54;
      }

      else
      {
        ++v47;
        *(v48 + 4 * v47) = v50;
      }

      if (v47 == 2)
      {
        if (v66 < v49)
        {
          goto LABEL_61;
        }

        v61 = 0;
        v62 = v66 - v49 + 40;
        *v63 = v62;
        *v64 = bswap32(v62);
        *(v64 + 4) = vrev32_s8(*(v64 + 4));
        do
        {
          *(v48 + v61) = bswap32(*(v48 + v61));
          v61 += 4;
        }

        while (v61 != 12);
        v31 = 0;
        v32 = v68;
        goto LABEL_27;
      }
    }
  }

  __break(1u);
LABEL_63:
  __break(0x5500u);
  return result;
}

unint64_t sub_22E9E7F1C(unint64_t result, _DWORD *a2)
{
  if (!HIDWORD(result) && result >= 0x2C && *a2 == result)
  {
    v2 = 0;
    v3 = result - 44;
    v4 = a2 + 8;
    v5 = 3;
    while (*(v4 - 1) == v2 && (*(v4 - 1) & 3) == 0)
    {
      if (*v4 < v2 || *v4 > v3)
      {
        break;
      }

      v8 = __CFADD__(v2, *v4 - v2);
      v2 = *v4;
      if (v8)
      {
        __break(0x5500u);
        return result;
      }

      ++v4;
      if (!--v5)
      {
        if (v2 != v3)
        {
          return -1;
        }

        return *(a2 + a2[8] + 44);
      }
    }
  }

  return -1;
}

uint64_t sub_22E9E7FA4(unint64_t a1, _DWORD *a2, size_t *a3, void *a4)
{
  v7 = sub_22E9E7F1C(a1, a2);
  if (v7 == -1 || v7 > *a3)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v7;
  memcpy(a4, a2 + a2[8] + 48, v7);
  return 0;
}

uint64_t sub_22E9E8014(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 16) + 8) >= 0xFFFFFFFFFFFFFFF0 || ((MEMORY[0x28223BE20])(), bzero(v10 - v2, v2), v3 = cccbc_set_iv(), v4 = *(a1 + 16), *v4 >= 0xFFFFFFFFFFFFFFF0))
  {
    __break(0x5500u);
  }

  v5 = *v4 + 15;
  MEMORY[0x28223BE20](v3);
  bzero(v10 - v6, v6);
  cccbc_init();
  v7 = *(a1 + 16);
  result = ccpad_pkcs7_encrypt();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22E9E8164(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 24) + 8) >= 0xFFFFFFFFFFFFFFF0 || (MEMORY[0x28223BE20](a1), bzero(v10 - v2, v2), v3 = cccbc_set_iv(), v4 = *(a1 + 24), *v4 >= 0xFFFFFFFFFFFFFFF0))
  {
    __break(0x5500u);
  }

  v5 = *v4 + 15;
  MEMORY[0x28223BE20](v3);
  bzero(v10 - v6, v6);
  cccbc_init();
  v7 = *(a1 + 24);
  result = ccpad_pkcs7_decrypt();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22E9E82B4(uint64_t a1, void *a2)
{
  memptr[1] = *MEMORY[0x277D85DE8];
  memptr[0] = 0;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, 0x40uLL, 0x91F4CA49uLL))
  {
    v4 = 0;
  }

  else
  {
    v4 = memptr[0];
  }

  (**a1)();
  v5 = sub_22E9E8014(a1);
  v6 = *(a1 + 8);
  v7 = *(v6 + 8);
  v8 = v7 + 8;
  if (v7 >= 0xFFFFFFFFFFFFFFF8)
  {
    goto LABEL_22;
  }

  v9 = *(v6 + 16);
  v10 = __CFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
    goto LABEL_22;
  }

  v10 = __CFADD__(v11, 4);
  v12 = v11 + 4;
  if (v10)
  {
    goto LABEL_22;
  }

  v10 = __CFADD__(v12, 8);
  v13 = v12 + 8;
  if (v10)
  {
    goto LABEL_22;
  }

  v14 = (v13 - 1) & 0xFFFFFFFFFFFFFFF8;
  v10 = __CFADD__(v14, v7);
  v15 = v14 + v7;
  if (v10)
  {
    goto LABEL_22;
  }

  if (v15 >= 0xFFFFFFFFFFFFFFF8)
  {
    goto LABEL_22;
  }

  MEMORY[0x28223BE20](v5);
  bzero(memptr - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  cchmac_init();
  v17 = *(a1 + 8);
  v18 = *(*(a1 + 16) + 8);
  cchmac_update();
  v19 = *(a1 + 8);
  cchmac_update();
  v20 = *(a1 + 8);
  cchmac_final();
  v21 = *(a1 + 8);
  v22 = *(v21 + 8);
  v23 = v22 + 8;
  if (v22 >= 0xFFFFFFFFFFFFFFF8)
  {
    goto LABEL_22;
  }

  v24 = *(v21 + 16);
  v10 = __CFADD__(v23, v24);
  v25 = v23 + v24;
  if (v10)
  {
    goto LABEL_22;
  }

  v10 = __CFADD__(v25, 4);
  v26 = v25 + 4;
  if (v10)
  {
    goto LABEL_22;
  }

  v10 = __CFADD__(v26, 8);
  v27 = v26 + 8;
  if (v10 || __CFADD__((v27 - 1) & 0xFFFFFFFFFFFFFFF8, v22))
  {
    goto LABEL_22;
  }

  cc_clear();
  if (*a2 >> 61)
  {
    goto LABEL_23;
  }

  v28 = 8 * *a2;
  v10 = __CFADD__(v28, 8);
  v29 = v28 + 8;
  if (v10)
  {
    goto LABEL_22;
  }

  v30 = (v29 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (!is_mul_ok(v30, 3uLL))
  {
    goto LABEL_23;
  }

  v31 = 3 * v30;
  v10 = __CFADD__(v31, 40);
  v32 = (v31 + 40);
  if (v10)
  {
LABEL_22:
    __break(0x5500u);
LABEL_23:
    __break(0x550Cu);
  }

  memptr[0] = v32;
  ccsha1_di();
  v33 = *a1;
  v34 = ccrsa_encrypt_oaep();
  if (v4)
  {
    cc_clear();
    free(v4);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t sub_22E9E8548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41[1] = a3;
  v41[2] = a8;
  memptr[1] = *MEMORY[0x277D85DE8];
  v41[3] = 256;
  memptr[0] = 0;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, 0x100uLL, 0x91F4CA49uLL))
  {
    v9 = 0;
  }

  else
  {
    v9 = memptr[0];
  }

  v10 = **(a1 + 8);
  memptr[0] = 0;
  v11 = malloc_type_posix_memalign(memptr, 0x10uLL, v10, 0x91F4CA49uLL);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = memptr[0];
  }

  v13 = *(a1 + 8);
  v14 = *(v13 + 8);
  v15 = v14 + 8;
  if (v14 >= 0xFFFFFFFFFFFFFFF8)
  {
    goto LABEL_27;
  }

  v16 = *(v13 + 16);
  v17 = __CFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    goto LABEL_27;
  }

  v17 = __CFADD__(v18, 4);
  v19 = v18 + 4;
  if (v17)
  {
    goto LABEL_27;
  }

  v17 = __CFADD__(v19, 8);
  v20 = v19 + 8;
  if (v17)
  {
    goto LABEL_27;
  }

  v21 = (v20 - 1) & 0xFFFFFFFFFFFFFFF8;
  v17 = __CFADD__(v21, v14);
  v22 = v21 + v14;
  if (v17 || v22 >= 0xFFFFFFFFFFFFFFF8)
  {
    goto LABEL_27;
  }

  MEMORY[0x28223BE20](v11);
  bzero(v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  ccsha1_di();
  if (ccrsa_decrypt_oaep())
  {
    goto LABEL_20;
  }

  v24 = *(a1 + 8);
  cchmac_init();
  v25 = *(a1 + 8);
  v26 = *(*(a1 + 16) + 8);
  cchmac_update();
  v27 = *(a1 + 8);
  cchmac_update();
  v28 = *(a1 + 8);
  cchmac_final();
  v29 = *(a1 + 8);
  v30 = *(v29 + 8);
  v31 = v30 + 8;
  if (v30 >= 0xFFFFFFFFFFFFFFF8 || (v32 = *(v29 + 16), v17 = __CFADD__(v31, v32), v33 = v31 + v32, v17) || (v17 = __CFADD__(v33, 4), v34 = v33 + 4, v17) || (v17 = __CFADD__(v34, 8), v35 = v34 + 8, v17) || __CFADD__((v35 - 1) & 0xFFFFFFFFFFFFFFF8, v30))
  {
LABEL_27:
    __break(0x5500u);
  }

  cc_clear();
  v36 = **(a1 + 8);
  if (cc_cmp_safe())
  {
LABEL_20:
    v37 = -1;
    if (!v9)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v37 = sub_22E9E8164(a1);
  if (v9)
  {
LABEL_21:
    cc_clear();
    free(v9);
  }

LABEL_22:
  if (v12)
  {
    v38 = **(a1 + 8);
    cc_clear();
    free(v12);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v37;
}

uint64_t sub_22E9E87F0(unsigned int a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, unsigned int a9, uint64_t a10, int a11, int a12, unsigned int a13, uint64_t a14, unsigned int *a15, uint64_t a16)
{
  v16 = 0;
  v17 = a16;
  v36[12] = *MEMORY[0x277D85DE8];
  *(a16 + 4) = 160;
  *(a16 + 12) = a11;
  v36[0] = a1;
  v36[1] = a2;
  v36[2] = a7;
  v36[3] = a8;
  v36[4] = a9;
  v36[5] = a10;
  v36[6] = a13;
  v36[7] = a14;
  v36[8] = a3;
  v36[9] = a4;
  v36[10] = a5;
  v36[11] = a6;
  v18 = a16 + 20;
  v19 = a16 + 48;
  v20 = *a15;
  v21 = *a15;
  *(a16 + 16) = 10;
  do
  {
    if (((16 * v16) | 8uLL) > 0x60 || (16 * v16) > 0x5F)
    {
      __break(1u);
LABEL_21:
      __break(0x5500u);
LABEL_22:
      __break(0x5515u);
    }

    v22 = *(v18 + 4 * v16);
    v23 = &v36[2 * v16];
    v24 = *(v23 + 1);
    if (v24)
    {
      v25 = *v23;
      if (v25 >= 0xFFFFFFFD)
      {
        goto LABEL_21;
      }

      v26 = (v25 + 3) & 0xFFFFFFFC;
      if (v26 < v25)
      {
        goto LABEL_18;
      }

      v27 = v26 + 4;
      if (v26 >= 0xFFFFFFFC)
      {
        goto LABEL_21;
      }

      if (v26 + 3 >= v21)
      {
LABEL_18:
        v17 = 0;
        goto LABEL_19;
      }

      v28 = (v19 + v22);
      *(v19 + v22) = v25;
      memcpy((v19 + v22 + 4), v24, v25);
      *v28 = bswap32(v25);
      v29 = *(v18 + 4 * v16);
      v30 = __CFADD__(v27, v29);
      v31 = v27 + v29;
      if (v30)
      {
        goto LABEL_21;
      }

      ++v16;
      *(v18 + 4 * v16) = v31;
      v30 = v21 >= v27;
      v21 -= v27;
      if (!v30)
      {
        goto LABEL_22;
      }
    }

    else
    {
      ++v16;
      *(v18 + 4 * v16) = v22;
    }
  }

  while (v16 != 6);
  if (v20 < v21)
  {
    goto LABEL_22;
  }

  *a15 = v20 - v21 + 48;
  v32.i32[0] = v20 - v21 + 48;
  v32.i32[1] = *(a16 + 4);
  v32.i64[1] = *(a16 + 8);
  *a16 = vrev32q_s8(v32);
  *(a16 + 16) = bswap32(*(a16 + 16));
  for (i = 20; i != 48; i += 4)
  {
    *(a16 + i) = bswap32(*(a16 + i));
  }

LABEL_19:
  v34 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_22E9E89FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8)
{
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 0x10uLL, 0x91F4CA49uLL))
  {
    v11 = 0;
  }

  else
  {
    v11 = memptr;
  }

  v12 = *(a1 + 8);
  result = ccpbkdf2_hmac();
  v14 = *(*(a1 + 16) + 8);
  v15 = a6 / v14 + 1;
  if (a6 / v14 == -1)
  {
    __break(0x5500u);
  }

  else if (is_mul_ok(v15, v14))
  {
    if (*a8 >= v15 * v14)
    {
      sub_22E9E8014(a1);
      v16 = 0;
      if (!v11)
      {
        return v16;
      }
    }

    else
    {
      v16 = 0xFFFFFFFFLL;
      if (!v11)
      {
        return v16;
      }
    }

    cc_clear();
    free(v11);
    return v16;
  }

  __break(0x550Cu);
  return result;
}

uint64_t sub_22E9E8B30(uint64_t result, size_t __n, void *__src, void *a4, _BYTE *a5)
{
  v5 = __n + 5;
  if (__n >= 0xFFFFFFFFFFFFFFFBLL || !(v5 % *(*(result + 16) + 8)) && (v6 = __CFADD__(v5, 1), v5 = __n + 6, v6))
  {
    __break(0x5500u);
  }

  else if (*a4 >= v5)
  {
    *a4 = v5;
    *a5 = 0;
    a5[1] = BYTE3(__n);
    a5[2] = BYTE2(__n);
    a5[3] = BYTE1(__n);
    a5[4] = __n;
    memcpy(a5 + 5, __src, __n);
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_22E9E8BC0(uint64_t result, int a2, int a3, int a4, int a5, size_t a6, uint64_t a7, size_t *a8, void *__dst)
{
  if (!(a6 % *(*(result + 16) + 8)))
  {
    v13 = result;
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x10uLL, 0x10uLL, 0x91F4CA49uLL))
    {
      v14 = 0;
    }

    else
    {
      v14 = memptr;
    }

    v15 = *(v13 + 8);
    ccpbkdf2_hmac();
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x10uLL, a6, 0x91F4CA49uLL))
    {
      v16 = 0;
    }

    else
    {
      v16 = memptr;
    }

    v17 = sub_22E9E8164(v13);
    if (v17 <= *a8)
    {
      v18 = v17;
      memcpy(__dst, v16, v17);
      v12 = 0;
      *a8 = v18;
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
      if (!v16)
      {
LABEL_19:
        if (v14)
        {
          cc_clear();
          free(v14);
        }

        return v12;
      }
    }

    cc_clear();
    free(v16);
    goto LABEL_19;
  }

  if (a6 < 5 || *a7)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = bswap32(*(a7 + 1));
  if (v11 < 0xFFFFFFFB)
  {
    if ((v11 + 5) <= a6 && *a8 >= v11)
    {
      *a8 = v11;
      memcpy(__dst, (a7 + 5), v11);
      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  __break(0x5500u);
  return result;
}

unint64_t sub_22E9E8D90(unint64_t result, int a2, int a3, unint64_t a4, _DWORD *a5, size_t *a6, void *a7, size_t *a8, void *a9, size_t *a10, void *a11)
{
  v65 = 256;
  *v64 = 0;
  if (HIDWORD(a4) || a4 < 0x2C || *a5 != a4)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = result;
  v18 = 0;
  v19 = a4 - 44;
  v20 = a5 + 8;
  v21 = 3;
  do
  {
    if (*(v20 - 1) != v18 || (*(v20 - 1) & 3) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (*v20 < v18 || *v20 > v19)
    {
      return 0xFFFFFFFFLL;
    }

    v24 = __CFADD__(v18, *v20 - v18);
    v18 = *v20;
    if (v24)
    {
      __break(0x5500u);
      goto LABEL_69;
    }

    ++v20;
    --v21;
  }

  while (v21);
  if (v18 != v19)
  {
    return 0xFFFFFFFFLL;
  }

  v25 = a5 + 11;
  if (*(a5 + a5[9] + 44) > 0x10000u)
  {
    return 0xFFFFFFFFLL;
  }

  size = *(a5 + a5[9] + 44);
  v26 = *(v25 + a5[8]);
  v27 = **(result + 48);
  v60 = *(v25 + a5[7]);
  if (ccsrp_sizeof_M_HAMK() != v60 || *(*(v17 + 16) + 8) != v26)
  {
    return 0xFFFFFFFFLL;
  }

  memptr[0] = 0;
  v28 = malloc_type_posix_memalign(memptr, 0x10uLL, size, 0x91F4CA49uLL);
  v29 = memptr[0];
  v54 = memptr[0];
  if (v28)
  {
    v29 = 0;
  }

  v55 = v29;
  memptr[0] = 0;
  v30 = malloc_type_posix_memalign(memptr, 0x10uLL, size, 0x91F4CA49uLL);
  v31 = memptr[0];
  if (v30)
  {
    v31 = 0;
  }

  v56 = v31;
  memptr[0] = 0;
  v32 = malloc_type_posix_memalign(memptr, 0x10uLL, v60, 0x91F4CA49uLL);
  v33 = memptr[0];
  if (v32)
  {
    v33 = 0;
  }

  __dst = v33;
  memptr[0] = 0;
  v34 = malloc_type_posix_memalign(memptr, 0x10uLL, v26, 0x91F4CA49uLL);
  v35 = memptr[0];
  if (v34)
  {
    v35 = 0;
  }

  v57 = v35;
  v36 = (v25 + a5[7]);
  if (v60 < *v36)
  {
    v37 = 0;
    v38 = 0xFFFFFFFFLL;
    goto LABEL_34;
  }

  memcpy(__dst, v36 + 1, *v36);
  v39 = (v25 + a5[8]);
  v40 = *v39;
  if (v26 < v40)
  {
    v37 = 0;
    v38 = 0xFFFFFFFFLL;
    goto LABEL_34;
  }

  memcpy(v57, v39 + 1, v40);
  v44 = (v25 + a5[9]);
  v45 = *v44;
  if (size >= v45)
  {
    v53 = *v44;
    memcpy(v56, v44 + 1, v45);
    v46 = *(v17 + 48);
    if (!ccsrp_client_verify_session())
    {
      v37 = 0;
      v38 = 0xFFFFFFFFLL;
      v42 = v57;
      v41 = __dst;
      goto LABEL_55;
    }

    result = MEMORY[0x2318F0660](*(*(v17 + 48) + 8));
    if (!(result >> 62))
    {
      v47 = *(v17 + 48);
      ccsrp_get_session_key_length();
      v42 = v57;
      sizea = sub_22E9E8164(v17);
      result = sub_22E9E9294(sizea, v55);
      if (result)
      {
        v63 = 0;
        v49 = v55[2].u32[0];
        v48 = v55[2].u32[1];
        v50 = v48 - v49;
        if (v48 >= v49)
        {
          *v64 = v48 - v49;
          if (v50 <= 0x10000)
          {
            memptr[0] = 0;
            if (malloc_type_posix_memalign(memptr, 0x10uLL, 0x100uLL, 0x91F4CA49uLL))
            {
              v51 = 0;
            }

            else
            {
              v51 = memptr[0];
            }

            memptr[0] = 0;
            if (malloc_type_posix_memalign(memptr, 0x10uLL, v50, 0x91F4CA49uLL))
            {
              v52 = 0;
            }

            else
            {
              v52 = memptr[0];
            }

            v59 = v52;
            if (sub_22E9E93AC(v55, &v65, v51, &v63, v64, v52, a8, a9, a10, a11))
            {
              v38 = sub_22E9E8BC0(v17, a2, a3, 64, v51, *v64, v59, a6, a7);
            }

            else
            {
              v38 = 0xFFFFFFFFLL;
            }

            if (v51)
            {
              cc_clear();
              free(v51);
            }

            v43 = v54;
            v42 = v57;
            v41 = __dst;
            v37 = v59;
          }

          else
          {
            v37 = 0;
            v38 = 0xFFFFFFFFLL;
            v43 = v54;
            v42 = v57;
            v41 = __dst;
          }

          goto LABEL_35;
        }

LABEL_70:
        __break(0x5515u);
        return result;
      }

      v37 = 0;
      v38 = 0xFFFFFFFFLL;
      v41 = __dst;
LABEL_55:
      v43 = v55;
      goto LABEL_35;
    }

LABEL_69:
    __break(0x550Cu);
    goto LABEL_70;
  }

  v37 = 0;
  v38 = 0xFFFFFFFFLL;
LABEL_34:
  v42 = v57;
  v41 = __dst;
  v43 = v55;
LABEL_35:
  if (v56)
  {
    cc_clear();
    free(v56);
  }

  if (v43)
  {
    cc_clear();
    free(v43);
  }

  if (v37)
  {
    cc_clear();
    free(v37);
  }

  if (v41)
  {
    cc_clear();
    free(v41);
  }

  if (v42)
  {
    cc_clear();
    free(v42);
  }

  return v38;
}

BOOL sub_22E9E9294(unint64_t a1, int8x16_t *a2)
{
  if (a1 < 0x30)
  {
    return 0;
  }

  v3 = a1;
  v4 = 0;
  v5 = vrev32q_s8(*a2);
  *a2 = v5;
  a2[1].i32[0] = bswap32(a2[1].u32[0]);
  do
  {
    a2[1].i32[v4 + 1] = bswap32(a2[1].u32[v4 + 1]);
    ++v4;
  }

  while (v4 != 7);
  result = 0;
  if (v3 >= 0x30 && v5.i32[0] == v3)
  {
    v6 = 0;
    v7 = v5.i32[0] - 48;
    v8 = &a2[1].i32[2];
    v9 = 6;
    while (*(v8 - 1) == v6 && (*(v8 - 1) & 3) == 0)
    {
      if (*v8 < v6 || *v8 > v7)
      {
        break;
      }

      v12 = __CFADD__(v6, *v8 - v6);
      v6 = *v8;
      if (v12)
      {
LABEL_31:
        __break(0x5500u);
LABEL_32:
        __break(0x5515u);
        return result;
      }

      ++v8;
      if (!--v9)
      {
        if (v6 != v7)
        {
          return 0;
        }

        v13 = a2 + 3;
        v14 = &a2[1].i32[2];
        v15 = 6;
        do
        {
          result = v15 == 0;
          if (!v15)
          {
            break;
          }

          v16 = *(v14 - 1);
          v17 = *v14 - v16;
          if (*v14 < v16)
          {
            goto LABEL_32;
          }

          v12 = v17 >= 4;
          v18 = v17 - 4;
          if (!v12)
          {
            break;
          }

          v19 = bswap32(*(v13->u32 + v16));
          *(v13->i32 + v16) = v19;
          if (v19 >= 0xFFFFFFFD)
          {
            goto LABEL_31;
          }

          v20 = (v19 + 3) & 0xFFFFFFFC;
          --v15;
          ++v14;
        }

        while (v20 >= v19 && v20 == v18);
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_22E9E93AC(unsigned int *a1, size_t *a2, void *__dst, void *a4, size_t *a5, void *a6, size_t *a7, void *a8, size_t *a9, void *__dsta)
{
  *a4 = a1[3];
  v10 = a1 + 12;
  v11 = (a1 + a1[6] + 48);
  v12 = *v11;
  if (*a2 < v12)
  {
    return 0;
  }

  *a2 = v12;
  memcpy(__dst, v11 + 1, v12);
  v18 = (v10 + a1[8]);
  v19 = *v18;
  if (*a5 < v19)
  {
    return 0;
  }

  *a5 = v19;
  memcpy(a6, v18 + 1, v19);
  v20 = (v10 + a1[9]);
  v21 = *v20;
  if (*a7 < v21)
  {
    return 0;
  }

  *a7 = v21;
  memcpy(a8, v20 + 1, v21);
  v22 = (v10 + a1[10]);
  v23 = *v22;
  if (*a9 < v23)
  {
    return 0;
  }

  *a9 = v23;
  memcpy(__dsta, v22 + 1, v23);
  return 1;
}

unint64_t sub_22E9E94AC(uint64_t a1, int a2, int a3, unint64_t a4, _DWORD *a5, unint64_t a6, uint64_t a7, size_t *a8, void *a9, size_t *a10, void *a11, size_t *a12, void *a13)
{
  v86 = *MEMORY[0x277D85DE8];
  if (HIDWORD(a4) || a4 < 0x40 || *a5 != a4)
  {
    goto LABEL_32;
  }

  v19 = 0;
  result = a12;
  v21 = a4 - 64;
  v22 = a5 + 12;
  v23 = 4;
  do
  {
    if (*(v22 - 1) != v19 || (*(v22 - 1) & 3) != 0)
    {
      goto LABEL_32;
    }

    if (*v22 < v19 || *v22 > v21)
    {
      goto LABEL_32;
    }

    v26 = __CFADD__(v19, *v22 - v19);
    v19 = *v22;
    if (v26)
    {
      goto LABEL_83;
    }

    ++v22;
    --v23;
  }

  while (v23);
  if (v19 != v21)
  {
    goto LABEL_32;
  }

  v28 = a5[14];
  v27 = a5[15];
  if (v27 < v28)
  {
    goto LABEL_84;
  }

  v29 = *(a5 + a5[13] + 64);
  v30 = *(a5 + a5[11] + 64);
  v78 = *(a5 + a5[12] + 64);
  v81 = 0;
  v82 = 0;
  v84 = 0u;
  v85 = 0u;
  if (v29 > 0x10000 || (v74 = v27 - v28, v75 = a5 + 16, v31 = **(a1 + 48), v76 = v30, ccsrp_sizeof_M_HAMK() != v30))
  {
LABEL_32:
    v32 = 0xFFFFFFFFLL;
LABEL_33:
    v44 = *MEMORY[0x277D85DE8];
    return v32;
  }

  size = v29;
  v32 = 0xFFFFFFFFLL;
  if (*(*(a1 + 16) + 8) != v78 || v74 > 0x100)
  {
    goto LABEL_33;
  }

  memptr = 0;
  v33 = malloc_type_posix_memalign(&memptr, 0x10uLL, size, 0x91F4CA49uLL);
  v34 = memptr;
  v67 = memptr;
  if (v33)
  {
    v34 = 0;
  }

  v68 = v34;
  memptr = 0;
  v35 = malloc_type_posix_memalign(&memptr, 0x10uLL, size, 0x91F4CA49uLL);
  v36 = memptr;
  if (v35)
  {
    v36 = 0;
  }

  v69 = v36;
  memptr = 0;
  v37 = malloc_type_posix_memalign(&memptr, 0x10uLL, v76, 0x91F4CA49uLL);
  v38 = memptr;
  if (v37)
  {
    v38 = 0;
  }

  __dst = v38;
  memptr = 0;
  v39 = malloc_type_posix_memalign(&memptr, 0x10uLL, v78, 0x91F4CA49uLL);
  v40 = memptr;
  if (v39)
  {
    v40 = 0;
  }

  v70 = v40;
  v41 = (v75 + a5[11]);
  v42 = *v41;
  if (v76 < v42)
  {
    v43 = 0;
    v32 = 0xFFFFFFFFLL;
LABEL_37:
    v49 = v70;
    v48 = __dst;
    v50 = v69;
LABEL_38:
    if (v50)
    {
      cc_clear();
      free(v50);
    }

    if (v68)
    {
      cc_clear();
      free(v68);
    }

    if (v43)
    {
      cc_clear();
      free(v43);
    }

    if (v48)
    {
      cc_clear();
      free(v48);
    }

    if (v49)
    {
      cc_clear();
      free(v49);
    }

    goto LABEL_33;
  }

  v66 = a5[14];
  v77 = *v41;
  memcpy(__dst, v41 + 1, v42);
  v45 = (v75 + a5[12]);
  if (v78 < *v45 || (memcpy(v70, v45 + 1, *v45), v46 = (v75 + a5[13]), v47 = *v46, size < v47))
  {
    v43 = 0;
    v32 = 0xFFFFFFFFLL;
    goto LABEL_37;
  }

  v65 = *v46;
  memcpy(v69, v46 + 1, v47);
  v51 = *(a1 + 48);
  if (!ccsrp_client_verify_session())
  {
    goto LABEL_69;
  }

  result = ccrsa_import_pub_n();
  if (!result)
  {
    goto LABEL_69;
  }

  v52 = result;
  if (result >> 61)
  {
    goto LABEL_85;
  }

  if (8 * result >= 0xFFFFFFFFFFFFFFF8)
  {
    goto LABEL_83;
  }

  v53 = (8 * result + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!is_mul_ok(v53, 3uLL))
  {
    goto LABEL_85;
  }

  v54 = 3 * v53;
  if (v54 >= 0xFFFFFFFFFFFFFFD8)
  {
LABEL_83:
    __break(0x5500u);
  }

  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, v54 + 40, 0x91F4CA49uLL))
  {
    v55 = 0;
  }

  else
  {
    v55 = memptr;
  }

  *v55 = v52;
  result = ccrsa_import_pub();
  if (a6 < v74)
  {
LABEL_84:
    __break(0x5515u);
    goto LABEL_85;
  }

  ccsha256_di();
  ccdigest();
  v80 = 0;
  result = ccrsa_verify_pkcs1v15();
  if (*v55 >> 61)
  {
    goto LABEL_85;
  }

  v56 = 8 * *v55;
  v26 = __CFADD__(v56, 8);
  v57 = v56 + 8;
  if (v26)
  {
    goto LABEL_83;
  }

  v58 = (v57 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (!is_mul_ok(v58, 3uLL))
  {
    goto LABEL_85;
  }

  v59 = result;
  if (3 * v58 >= 0xFFFFFFFFFFFFFFD8)
  {
    goto LABEL_83;
  }

  cc_clear();
  free(v55);
  if (v59 || v80 != 1)
  {
    goto LABEL_69;
  }

  result = MEMORY[0x2318F0660](*(*(a1 + 48) + 8));
  if (!(result >> 62))
  {
    v60 = *(a1 + 48);
    ccsrp_get_session_key_length();
    sizea = sub_22E9E8164(a1);
    result = sub_22E9E9294(sizea, v68);
    if (result)
    {
      v82 = 256;
      v79 = 0;
      v62 = v68[2].u32[0];
      v61 = v68[2].u32[1];
      v63 = v61 - v62;
      if (v61 >= v62)
      {
        v81 = v61 - v62;
        if (v63 <= 0x10000)
        {
          memptr = 0;
          if (malloc_type_posix_memalign(&memptr, 0x10uLL, 0x100uLL, 0x91F4CA49uLL))
          {
            v64 = 0;
          }

          else
          {
            v64 = memptr;
          }

          memptr = 0;
          if (malloc_type_posix_memalign(&memptr, 0x10uLL, v63, 0x91F4CA49uLL))
          {
            v43 = 0;
          }

          else
          {
            v43 = memptr;
          }

          if (sub_22E9E93AC(v68, &v82, v64, &v79, &v81, v43, a10, a11, a12, a13))
          {
            v32 = sub_22E9E8BC0(a1, a2, a3, 64, v64, v81, v43, a8, a9);
          }

          else
          {
            v32 = 0xFFFFFFFFLL;
          }

          if (v64)
          {
            cc_clear();
            free(v64);
          }
        }

        else
        {
          v43 = 0;
          v32 = 0xFFFFFFFFLL;
        }

        v68 = v67;
        goto LABEL_70;
      }

      goto LABEL_84;
    }

LABEL_69:
    v43 = 0;
    v32 = 0xFFFFFFFFLL;
LABEL_70:
    v49 = v70;
    v48 = __dst;
    v50 = v69;
    goto LABEL_38;
  }

LABEL_85:
  __break(0x550Cu);
  return result;
}

unint64_t sub_22E9E9B18(unint64_t result, int a2, int a3, unint64_t a4, _DWORD *a5, size_t *a6, void *a7, size_t *a8, void *a9, size_t *a10, void *a11)
{
  if (HIDWORD(a4) || a4 < 0x3C || *a5 != a4)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = result;
  v18 = 0;
  v19 = a4 - 60;
  v20 = a5 + 12;
  v21 = 3;
  do
  {
    if (*(v20 - 1) != v18 || (*(v20 - 1) & 3) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (*v20 < v18 || *v20 > v19)
    {
      return 0xFFFFFFFFLL;
    }

    v24 = __CFADD__(v18, *v20 - v18);
    v18 = *v20;
    if (v24)
    {
      __break(0x5500u);
      goto LABEL_72;
    }

    ++v20;
    --v21;
  }

  while (v21);
  if (v18 != v19)
  {
    return 0xFFFFFFFFLL;
  }

  v25 = a5 + 15;
  v26 = *(a5 + a5[13] + 60);
  if (v26 < 0x10)
  {
    goto LABEL_72;
  }

  v27 = *(v25 + a5[11]);
  v28 = *(v25 + a5[12]);
  v65 = 0;
  v66 = 0;
  if (v26 > 0x10000)
  {
    return 0xFFFFFFFFLL;
  }

  size = v26 - 16;
  v62 = v26;
  v63 = v27;
  v29 = **(result + 48);
  if (ccsrp_sizeof_M_HAMK() != v27 || *(v17[2] + 8) != v28)
  {
    return 0xFFFFFFFFLL;
  }

  memptr[0] = 0;
  v30 = malloc_type_posix_memalign(memptr, 0x10uLL, size, 0x91F4CA49uLL);
  v31 = memptr[0];
  v56 = memptr[0];
  if (v30)
  {
    v31 = 0;
  }

  v57 = v31;
  memptr[0] = 0;
  v32 = malloc_type_posix_memalign(memptr, 0x10uLL, v62, 0x91F4CA49uLL);
  v33 = memptr[0];
  if (v32)
  {
    v33 = 0;
  }

  v58 = v33;
  memptr[0] = 0;
  v34 = malloc_type_posix_memalign(memptr, 0x10uLL, v63, 0x91F4CA49uLL);
  v35 = memptr[0];
  if (v34)
  {
    v35 = 0;
  }

  __dst = v35;
  memptr[0] = 0;
  v36 = malloc_type_posix_memalign(memptr, 0x10uLL, v28, 0x91F4CA49uLL);
  v37 = memptr[0];
  if (v36)
  {
    v37 = 0;
  }

  v59 = v37;
  v38 = (v25 + a5[11]);
  if (v63 < *v38)
  {
    v39 = 0;
    v40 = 0xFFFFFFFFLL;
    v41 = __dst;
    goto LABEL_44;
  }

  memcpy(__dst, v38 + 1, *v38);
  v42 = (v25 + a5[12]);
  v43 = *v42;
  if (v28 < v43)
  {
    v39 = 0;
    v40 = 0xFFFFFFFFLL;
    v41 = __dst;
    goto LABEL_44;
  }

  v44 = *v42;
  memcpy(v59, v42 + 1, v43);
  v45 = (v25 + a5[13]);
  v46 = *v45;
  if (v62 >= v46)
  {
    v47 = *v45;
    memcpy(v58, v45 + 1, v46);
    v48 = v17[6];
    if (!ccsrp_client_verify_session())
    {
      v39 = 0;
      v40 = 0xFFFFFFFFLL;
      goto LABEL_43;
    }

    result = MEMORY[0x2318F0660](*(v17[6] + 8));
    if (result >> 62)
    {
LABEL_73:
      __break(0x550Cu);
      return result;
    }

    v49 = v17[6];
    v55 = v17[5];
    result = ccsrp_get_session_key_length();
    if (v47 >= 0x10)
    {
      if (ccgcm_one_shot())
      {
        v39 = 0;
        v40 = 0xFFFFFFFFLL;
        goto LABEL_43;
      }

      result = sub_22E9E9294(size, v57);
      if (!result)
      {
        v39 = 0;
        v40 = 0xFFFFFFFFLL;
        goto LABEL_43;
      }

      v66 = 256;
      v64 = 0;
      v51 = v57[2].u32[0];
      v50 = v57[2].u32[1];
      v52 = v50 - v51;
      if (v50 >= v51)
      {
        v65 = v50 - v51;
        if (v52 <= 0x10000)
        {
          memptr[0] = 0;
          if (malloc_type_posix_memalign(memptr, 0x10uLL, 0x100uLL, 0x91F4CA49uLL))
          {
            v53 = 0;
          }

          else
          {
            v53 = memptr[0];
          }

          memptr[0] = 0;
          if (malloc_type_posix_memalign(memptr, 0x10uLL, v52, 0x91F4CA49uLL))
          {
            v39 = 0;
          }

          else
          {
            v39 = memptr[0];
          }

          v54 = v53;
          if (sub_22E9E93AC(v57, &v66, v53, &v64, &v65, v39, a8, a9, a10, a11))
          {
            v40 = sub_22E9E8BC0(v17, a2, a3, 64, v53, v65, v39, a6, a7);
          }

          else
          {
            v40 = 0xFFFFFFFFLL;
          }

          if (v54)
          {
            cc_clear();
            free(v54);
          }
        }

        else
        {
          v39 = 0;
          v40 = 0xFFFFFFFFLL;
        }

        v57 = v56;
        goto LABEL_43;
      }
    }

LABEL_72:
    __break(0x5515u);
    goto LABEL_73;
  }

  v39 = 0;
  v40 = 0xFFFFFFFFLL;
LABEL_43:
  v41 = __dst;
LABEL_44:
  if (v58)
  {
    cc_clear();
    free(v58);
  }

  if (v57)
  {
    cc_clear();
    free(v57);
  }

  if (v39)
  {
    cc_clear();
    free(v39);
  }

  if (v41)
  {
    cc_clear();
    free(v41);
  }

  if (v59)
  {
    cc_clear();
    free(v59);
  }

  return v40;
}

unint64_t sub_22E9EA050(unint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  if (result < 0xFFFFFFFD && a2 < 0xFFFFFFFD && a3 < 0xFFFFFFFD && a4 < 0xFFFFFFFD && a5 < 0xFFFFFFFD && a6 < 0xFFFFFFFD)
  {
    return ((result + 3) & 0xFFFFFFFC) + ((a2 + 3) & 0xFFFFFFFC) + ((a3 + 3) & 0xFFFFFFFC) + ((a4 + 3) & 0xFFFFFFFC) + ((a5 + 3) & 0xFFFFFFFC) + ((a6 + 3) & 0xFFFFFFFC) + 72;
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_22E9EA0B8(uint64_t result, unint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v6 = __CFADD__(a3, 5);
  v7 = a3 + 5;
  if (!v6)
  {
    if (v7 % *(*(result + 16) + 8))
    {
      return sub_22E9EA0E4(result, a2, v7, a4, a5, a6);
    }

    v6 = __CFADD__(v7, 1);
    LODWORD(v7) = v7 + 1;
    if (!v6)
    {
      return sub_22E9EA0E4(result, a2, v7, a4, a5, a6);
    }
  }

  __break(0x5500u);
  return result;
}

unint64_t sub_22E9EA0E4(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  result = MEMORY[0x2318F0660](*(*(a1 + 48) + 8));
  if (result >> 61)
  {
    goto LABEL_17;
  }

  result = sub_22E9EA050(a2, a4, a5, a6, 8 * result, a3);
  v13 = *(*(a1 + 16) + 8);
  v14 = result / v13 + 1;
  if (!is_mul_ok(v14, v13))
  {
    goto LABEL_17;
  }

  result = ccrsa_import_pub_n();
  if (!result)
  {
    return result;
  }

  v15 = result;
  if (result >> 61)
  {
    goto LABEL_17;
  }

  if (8 * result >= 0xFFFFFFFFFFFFFFF8)
  {
    goto LABEL_18;
  }

  v16 = (8 * result + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!is_mul_ok(v16, 3uLL))
  {
LABEL_17:
    __break(0x550Cu);
    goto LABEL_18;
  }

  v17 = 3 * v16;
  if (v17 >= 0xFFFFFFFFFFFFFFD8)
  {
    goto LABEL_18;
  }

  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, v17 + 40, 0x91F4CA49uLL))
  {
    v18 = 0;
  }

  else
  {
    v18 = memptr;
  }

  *v18 = v15;
  ccrsa_import_pub();
  result = ccrsa_block_size();
  if (*v18 >> 61)
  {
    goto LABEL_17;
  }

  v19 = 8 * *v18;
  v20 = __CFADD__(v19, 8);
  v21 = v19 + 8;
  if (v20)
  {
LABEL_18:
    __break(0x5500u);
    return result;
  }

  v22 = (v21 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (!is_mul_ok(v22, 3uLL))
  {
    goto LABEL_17;
  }

  v23 = result;
  v24 = 3 * v22;
  result = v24 + 40;
  if (v24 >= 0xFFFFFFFFFFFFFFD8)
  {
    goto LABEL_18;
  }

  cc_clear();
  free(v18);
  return sub_22E9EBD0C(v14 * v13, **(a1 + 8), *(*(a1 + 16) + 8), v23, **(a1 + 8), **(a1 + 8));
}

unint64_t sub_22E9EA294(unint64_t result, unint64_t a2, unint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = *(*(result + 16) + 8);
  v6 = a3 / v5 + 1;
  if (a3 / v5 == -1)
  {
    __break(0x5500u);
  }

  else if (is_mul_ok(v6, v5))
  {
    return sub_22E9EA0E4(result, a2, v6 * v5, a4, a5, 0x40u);
  }

  __break(0x550Cu);
  return result;
}

uint64_t sub_22E9EA2D0(uint64_t a1, unint64_t a2, uint64_t a3, size_t a4, void *a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, uint64_t a11, unsigned int a12, uint64_t a13, void *a14, int a15, uint64_t a16)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  result = sub_22E9EA34C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, v18);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22E9EA34C(uint64_t result, unint64_t a2, uint64_t a3, size_t a4, void *a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, uint64_t a11, unsigned int a12, uint64_t a13, void *a14, int a15, uint64_t a16, uint64_t a17)
{
  v18 = a4 + 5;
  if (a4 < 0xFFFFFFFFFFFFFFFBLL)
  {
    v25 = result;
    if (v18 % *(*(result + 16) + 8) || (v26 = __CFADD__(v18, 1), v18 = a4 + 6, !v26))
    {
      v29 = v18;
      memptr = 0;
      if (malloc_type_posix_memalign(&memptr, 0x10uLL, v18, 0x91F4CA49uLL))
      {
        v27 = 0;
      }

      else
      {
        v27 = memptr;
      }

      if (sub_22E9E8B30(v25, a4, a5, &v29, v27))
      {
        v28 = 0xFFFFFFFFLL;
        if (!v27)
        {
          return v28;
        }
      }

      else
      {
        v28 = sub_22E9EA494(v25, a2, a3, v29, v27, a6, a7, a10, a11, a8, a9, a12, a13, a14, a15, a16, a17);
        if (!v27)
        {
          return v28;
        }
      }

      cc_clear();
      free(v27);
      return v28;
    }
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_22E9EA494(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, uint64_t a11, unsigned int a12, uint64_t a13, void *a14, int a15, uint64_t a16, uint64_t a17)
{
  v86 = *MEMORY[0x277D85DE8];
  v21 = MEMORY[0x2318F0660](*(*(a1 + 48) + 8));
  if (v21 >> 61)
  {
LABEL_71:
    __break(0x550Cu);
  }

  v76 = sub_22E9EA050(a2, a6, a10, a8, 8 * v21, a4);
  memptr[0] = 0;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, v76, 0x91F4CA49uLL))
  {
    v22 = 0;
  }

  else
  {
    v22 = memptr[0];
  }

  v74 = v22;
  v23 = sub_22E9E87F0(a2, a3, a6, a7, a10, a11, a8, a9, a12, a13, a15, 0, a4, a5, &v76, v22);
  if (!v23)
  {
    v29 = 0;
    v30 = 0;
    v73 = 0;
    v34 = 0;
    v35 = 0xFFFFFFFFLL;
    v24 = a1;
    goto LABEL_55;
  }

  v24 = a1;
  v25 = *(*(a1 + 16) + 8);
  v26 = v76 / v25 + 1;
  if (v76 / v25 == -1)
  {
    goto LABEL_68;
  }

  if (!is_mul_ok(v26, v25))
  {
    goto LABEL_71;
  }

  v27 = v26 * v25;
  v28 = ccrsa_block_size();
  memptr[0] = 0;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, v27, 0x91F4CA49uLL))
  {
    v29 = 0;
  }

  else
  {
    v29 = memptr[0];
  }

  memptr[0] = 0;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, v25, 0x91F4CA49uLL))
  {
    v30 = 0;
  }

  else
  {
    v30 = memptr[0];
  }

  memptr[0] = 0;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, v28, 0x91F4CA49uLL))
  {
    v31 = 0;
  }

  else
  {
    v31 = memptr[0];
  }

  v32 = **(a1 + 8);
  memptr[0] = 0;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, v32, 0x91F4CA49uLL))
  {
    v33 = 0;
  }

  else
  {
    v33 = memptr[0];
  }

  (**a1)();
  v73 = v33;
  v23 = v31;
  if (sub_22E9E82B4(a1, a14))
  {
    v34 = 0;
    v35 = 0xFFFFFFFFLL;
    goto LABEL_55;
  }

  __srca = v30;
  v71 = v31;
  v36 = *(a1 + 8);
  ccdigest();
  v37 = **(a1 + 8);
  memptr[0] = 0;
  v34 = malloc_type_posix_memalign(memptr, 0x10uLL, v37, 0x91F4CA49uLL) ? 0 : memptr[0];
  v38 = MEMORY[0x2318F0740](a14);
  memptr[0] = 0;
  v39 = malloc_type_posix_memalign(memptr, 0x10uLL, v38, 0x91F4CA49uLL) ? 0 : memptr[0];
  ccrsa_export_pub();
  v40 = *(a1 + 8);
  v66 = v39;
  ccdigest();
  v67 = sub_22E9EBD0C(v27, **(a1 + 8), v25, v28, **(a1 + 8), **(a1 + 8));
  if (__CFADD__(v25, v27))
  {
LABEL_68:
    __break(0x5500u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(0x5515u);
    goto LABEL_71;
  }

  v41 = **(a1 + 8);
  memptr[0] = 0;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, v25 + v27, 0x91F4CA49uLL))
  {
    v42 = 0;
  }

  else
  {
    v42 = memptr[0];
  }

  memcpy(v42, v30, v25);
  memcpy(&v42[v25], v29, v27);
  v43 = 0;
  *a16 = xmmword_22E9F8950;
  *(a16 + 16) = 0xA00000000;
  memptr[0] = v41;
  memptr[1] = v73;
  v78 = (v25 + v27);
  v65 = v42;
  v79 = v42;
  v80 = v28;
  v81 = v71;
  v82 = v41;
  v83 = v34;
  v84 = v41;
  v85 = a17;
  *(a16 + 24) = 0;
  v44 = a16 + 24;
  v45 = a16 + 48;
  v46 = v67;
  do
  {
    if (((16 * v43) | 8uLL) > 0x50 || (16 * v43) > 0x4F)
    {
      goto LABEL_69;
    }

    v47 = *(v44 + 4 * v43);
    v48 = &memptr[2 * v43];
    v49 = v48[1];
    if (v49)
    {
      v50 = *v48;
      if (v50 >= 0xFFFFFFFD)
      {
        goto LABEL_68;
      }

      v51 = (v50 + 3) & 0xFFFFFFFC;
      if (v51 < v50)
      {
        goto LABEL_50;
      }

      v52 = v51 + 4;
      if (v51 >= 0xFFFFFFFC)
      {
        goto LABEL_68;
      }

      if (v51 + 3 >= v46)
      {
LABEL_50:
        v35 = 0xFFFFFFFFLL;
        v24 = a1;
        v23 = v71;
        goto LABEL_51;
      }

      v53 = (v45 + v47);
      *(v45 + v47) = v50;
      memcpy((v45 + v47 + 4), v49, v50);
      *v53 = bswap32(v50);
      v54 = *(v44 + 4 * v43);
      v55 = __CFADD__(v52, v54);
      v56 = v52 + v54;
      if (v55)
      {
        goto LABEL_68;
      }

      ++v43;
      *(v44 + 4 * v43) = v56;
      v55 = v46 >= v52;
      v46 -= v52;
      if (!v55)
      {
        goto LABEL_70;
      }
    }

    else
    {
      ++v43;
      *(v44 + 4 * v43) = v47;
    }
  }

  while (v43 != 5);
  if (v67 < v46)
  {
    goto LABEL_70;
  }

  v57 = 0;
  v58.i32[0] = v67 - v46 + 48;
  v58.i32[1] = *(a16 + 4);
  v59 = *(a16 + 16);
  v58.i64[1] = *(a16 + 8);
  *a16 = vrev32q_s8(v58);
  *(a16 + 16) = vrev32_s8(v59);
  v24 = a1;
  v23 = v71;
  do
  {
    *(v44 + v57) = bswap32(*(v44 + v57));
    v57 += 4;
  }

  while (v57 != 24);
  v35 = 0;
LABEL_51:
  v30 = __srca;
  if (v65)
  {
    cc_clear();
    free(v65);
  }

  if (v66)
  {
    cc_clear();
    free(v66);
  }

LABEL_55:
  v60 = *(v24 + 8);
  if (v34)
  {
    v61 = *v60;
    cc_clear();
    free(v34);
    v60 = *(v24 + 8);
  }

  if (v73)
  {
    v62 = *v60;
    cc_clear();
    free(v73);
  }

  if (v23)
  {
    cc_clear();
    free(v23);
  }

  if (v30)
  {
    cc_clear();
    free(v30);
  }

  if (v29)
  {
    cc_clear();
    free(v29);
  }

  if (v74)
  {
    cc_clear();
    free(v74);
  }

  v63 = *MEMORY[0x277D85DE8];
  return v35;
}

unint64_t sub_22E9EAAD8(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14)
{
  memptr[0] = 0;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, 0x40uLL, 0x91F4CA49uLL))
  {
    v22 = 0;
  }

  else
  {
    v22 = memptr[0];
  }

  result = MEMORY[0x2318F0660](*(a1[6] + 8));
  if (result >> 61)
  {
    goto LABEL_15;
  }

  memptr[0] = 0;
  v24 = malloc_type_posix_memalign(memptr, 0x10uLL, 8 * result, 0x91F4CA49uLL) ? 0 : memptr[0];
  v25 = a1[6];
  v26 = *a1;
  ccsrp_generate_salt_and_verification();
  result = MEMORY[0x2318F0660](*(a1[6] + 8));
  if (result >> 61 || (v27 = sub_22E9EACF0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, 0x40u, v22, 8 * result, v24, a12, 10000, a13, a14), result = MEMORY[0x2318F0660](*(a1[6] + 8)), result >> 61))
  {
LABEL_15:
    __break(0x550Cu);
  }

  else
  {
    if (v24)
    {
      cc_clear();
      free(v24);
    }

    if (v22)
    {
      cc_clear();
      free(v22);
    }

    return v27;
  }

  return result;
}

unint64_t sub_22E9EAC84(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, uint64_t a11, void *a12, uint64_t a13)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  result = sub_22E9EAAD8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, v15);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22E9EACF0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, uint64_t a11, unsigned int a12, uint64_t a13, unsigned int a14, uint64_t a15, void *a16, int a17, uint64_t a18, uint64_t a19)
{
  v19 = *(*(result + 16) + 8);
  v20 = a6 / v19 + 1;
  if (a6 / v19 == -1)
  {
    __break(0x5500u);
  }

  else if (is_mul_ok(v20, v19))
  {
    v25 = result;
    v28 = v20 * v19;
    v32 = v20 * v19;
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x10uLL, v20 * v19, 0x91F4CA49uLL))
    {
      v29 = 0;
    }

    else
    {
      v29 = memptr;
    }

    if (sub_22E9E89FC(v25, a4, a5, 64, a13, a6, a7, &v32))
    {
      v30 = 0xFFFFFFFFLL;
      if (!v29)
      {
        return v30;
      }
    }

    else
    {
      v30 = sub_22E9EA494(v25, a2, a3, v28, v29, a8, a9, a12, a13, a10, a11, a14, a15, a16, a17, a18, a19);
      if (!v29)
      {
        return v30;
      }
    }

    cc_clear();
    free(v29);
    return v30;
  }

  __break(0x550Cu);
  return result;
}

uint64_t sub_22E9EAE98(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, unint64_t a6, uint64_t a7, unsigned int *a8, uint64_t a9)
{
  v46 = *MEMORY[0x277D85DE8];
  v13 = *(*(a1 + 16) + 8);
  memptr[0] = 0;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, v13, 0x91F4CA49uLL))
  {
    v14 = 0;
  }

  else
  {
    v14 = memptr[0];
  }

  v40 = v13;
  (**a1)();
  v15 = *(*(a1 + 16) + 8);
  v16 = a6 / v15 + 1;
  if (a6 / v15 == -1)
  {
    goto LABEL_31;
  }

  if (!is_mul_ok(v16, v15))
  {
    goto LABEL_33;
  }

  v17 = v16 * v15;
  memptr[0] = 0;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, v16 * v15, 0x91F4CA49uLL))
  {
    v18 = 0;
  }

  else
  {
    v18 = memptr[0];
  }

  sub_22E9E8014(a1);
  v19 = 0;
  *(a9 + 4) = 164;
  memptr[0] = a4;
  memptr[1] = a5;
  v42 = v40;
  v43 = v14;
  v38 = v18;
  v44 = v17;
  v45 = v18;
  *(a9 + 28) = 0;
  v20 = a9 + 28;
  v21 = a9 + 44;
  v22 = *a8;
  v37 = *a8;
  while (1)
  {
    if (((16 * v19) | 8uLL) > 0x30 || (16 * v19) > 0x2F)
    {
      __break(1u);
LABEL_31:
      __break(0x5500u);
LABEL_32:
      __break(0x5515u);
LABEL_33:
      __break(0x550Cu);
    }

    v23 = *(v20 + 4 * v19);
    v24 = &memptr[2 * v19];
    v25 = v24[1];
    if (v25)
    {
      break;
    }

    ++v19;
    *(v20 + 4 * v19) = v23;
LABEL_21:
    if (v19 == 3)
    {
      if (v37 >= v22)
      {
        v33 = 0;
        v34 = v37 - v22 + 44;
        *a8 = v34;
        *a9 = bswap32(v34);
        *(a9 + 4) = vrev32_s8(*(a9 + 4));
        *(a9 + 28) = vrev32q_s8(*(a9 + 28));
        goto LABEL_25;
      }

      goto LABEL_32;
    }
  }

  v26 = *v24;
  if (v26 >= 0xFFFFFFFD)
  {
    goto LABEL_31;
  }

  v27 = (v26 + 3) & 0xFFFFFFFC;
  if (v27 >= v26)
  {
    v28 = v27 + 4;
    if (v27 >= 0xFFFFFFFC)
    {
      goto LABEL_31;
    }

    if (v27 + 3 < v22)
    {
      v29 = (v21 + v23);
      *(v21 + v23) = v26;
      memcpy((v21 + v23 + 4), v25, v26);
      *v29 = bswap32(v26);
      v30 = *(v20 + 4 * v19);
      v31 = __CFADD__(v28, v30);
      v32 = v28 + v30;
      if (v31)
      {
        goto LABEL_31;
      }

      ++v19;
      *(v20 + 4 * v19) = v32;
      v31 = v22 >= v28;
      v22 -= v28;
      if (!v31)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }
  }

  v33 = 0xFFFFFFFFLL;
LABEL_25:
  if (v14)
  {
    cc_clear();
    free(v14);
  }

  if (v38)
  {
    cc_clear();
    free(v38);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t sub_22E9EB158(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  result = ccsrp_get_session_key_length();
  v5 = *(a2 + *(a2 + 28) + 44);
  v6 = __CFADD__(v5, 3);
  v7 = v5 + 3;
  if (!v6 && result < 0xFFFFFFFD)
  {
    return ((result + 3) & 0xFFFFFFFC) + (v7 & 0xFFFFFFFC) + 48;
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_22E9EB1B0(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 + 12;
  v6 = *(a2 + a2[6] + 48);
  if (**(a1 + 8) != v6)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v5 + a2[7]);
  v9 = 0xFFFFFFFFLL;
  if (v8 > 0x10000)
  {
    return v9;
  }

  v10 = *(v5 + a2[8]);
  if (v10 > 0x10000)
  {
    return v9;
  }

  v12 = *(*(a1 + 16) + 8);
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, v6, 0x91F4CA49uLL))
  {
    v13 = 0;
  }

  else
  {
    v13 = memptr;
  }

  memptr = 0;
  v14 = malloc_type_posix_memalign(&memptr, 0x10uLL, v8, 0x91F4CA49uLL);
  v15 = memptr;
  if (v14)
  {
    v15 = 0;
  }

  __dst = v15;
  memptr = 0;
  __len = v12;
  v16 = malloc_type_posix_memalign(&memptr, 0x10uLL, v12, 0x91F4CA49uLL);
  v17 = memptr;
  if (v16)
  {
    v17 = 0;
  }

  v34 = v17;
  memptr = 0;
  v18 = malloc_type_posix_memalign(&memptr, 0x10uLL, v10, 0x91F4CA49uLL);
  v19 = memptr;
  if (v18)
  {
    v19 = 0;
  }

  v33 = v19;
  v20 = (v5 + a2[6]);
  v21 = *v20;
  if (v6 < v21)
  {
LABEL_19:
    v28 = v34;
    if (!v13)
    {
LABEL_21:
      if (__dst)
      {
        cc_clear();
        free(__dst);
      }

      if (v28)
      {
        cc_clear();
        free(v28);
      }

      if (v33)
      {
        cc_clear();
        free(v33);
      }

      return v9;
    }

LABEL_20:
    cc_clear();
    free(v13);
    goto LABEL_21;
  }

  memcpy(v13, v20 + 1, v21);
  v22 = (v5 + a2[7]);
  v23 = *v22;
  if (v8 < v23)
  {
LABEL_18:
    v9 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  result = memcpy(__dst, v22 + 1, *v22);
  v25 = v23 - __len;
  if (v23 < __len)
  {
    __break(0x5515u);
  }

  else
  {
    result = memmove(v34, __dst, __len);
    if (!__CFADD__(__dst, __len))
    {
      memmove(__dst, &__dst[__len], v25);
      v26 = (v5 + a2[8]);
      v27 = *v26;
      if (v10 >= v27)
      {
        memcpy(v33, v26 + 1, *v26);
        v28 = v34;
        v29 = sub_22E9E8548(a1, a5, v13, v34, v27, v33, v25, __dst);
        if (v29 < 0)
        {
          v9 = 0xFFFFFFFFLL;
        }

        else
        {
          v9 = 0;
          *a3 = v29;
        }

        if (!v13)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_22E9EB488(unsigned int *a1, size_t *a2, void *__dst, size_t *a4, void *a5, size_t *a6, void *a7, size_t *a8, void *a9, size_t *a10, void *__dsta, void *a12, size_t *a13, void *a14)
{
  *a12 = a1[3];
  v14 = a1 + 12;
  v15 = (a1 + a1[5] + 48);
  v16 = *v15;
  if (*a2 < v16)
  {
    return 0;
  }

  *a2 = v16;
  memcpy(__dst, v15 + 1, v16);
  v23 = (v14 + a1[9]);
  v24 = *v23;
  if (*a4 < v24)
  {
    return 0;
  }

  *a4 = v24;
  memcpy(a5, v23 + 1, v24);
  v25 = (v14 + a1[10]);
  v26 = *v25;
  if (*a6 < v26)
  {
    return 0;
  }

  *a6 = v26;
  memcpy(a7, v25 + 1, v26);
  v27 = (v14 + a1[6]);
  v28 = *v27;
  if (*a8 < v28)
  {
    return 0;
  }

  *a8 = v28;
  memcpy(a9, v27 + 1, v28);
  v29 = (v14 + a1[7]);
  v30 = *v29;
  if (*a10 < v30)
  {
    return 0;
  }

  *a10 = v30;
  memcpy(__dsta, v29 + 1, v30);
  v31 = (v14 + a1[8]);
  v32 = *v31;
  if (*a13 < v32)
  {
    return 0;
  }

  *a13 = v32;
  memcpy(a14, v31 + 1, v32);
  return 1;
}

uint64_t sub_22E9EB5E8(uint64_t a1, _OWORD *a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, unsigned int *a9, uint64_t a10)
{
  v28[7] = *MEMORY[0x277D85DE8];
  *(a10 + 4) = 164;
  if (a1 != 16)
  {
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v10 = 0;
  *(a10 + 12) = *a2;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v28[3] = a6;
  v28[4] = a7;
  v28[5] = a8;
  *(a10 + 28) = 0;
  v11 = a10 + 28;
  v12 = a10 + 44;
  v13 = *a9;
  v14 = *a9;
  do
  {
    if (((16 * v10) | 8uLL) > 0x30 || (16 * v10) > 0x2F)
    {
      __break(1u);
LABEL_20:
      __break(0x5500u);
LABEL_21:
      __break(0x5515u);
    }

    v15 = *(v11 + 4 * v10);
    v16 = &v28[2 * v10];
    v17 = *(v16 + 1);
    if (v17)
    {
      v18 = *v16;
      if (v18 >= 0xFFFFFFFD)
      {
        goto LABEL_20;
      }

      v19 = (v18 + 3) & 0xFFFFFFFC;
      if (v19 < v18)
      {
        goto LABEL_17;
      }

      v20 = v19 + 4;
      if (v19 >= 0xFFFFFFFC)
      {
        goto LABEL_20;
      }

      if (v19 + 3 >= v14)
      {
        goto LABEL_17;
      }

      v21 = (v12 + v15);
      *(v12 + v15) = v18;
      memcpy((v12 + v15 + 4), v17, v18);
      *v21 = bswap32(v18);
      v22 = *(v11 + 4 * v10);
      v23 = __CFADD__(v20, v22);
      v24 = v20 + v22;
      if (v23)
      {
        goto LABEL_20;
      }

      ++v10;
      *(v11 + 4 * v10) = v24;
      v23 = v14 >= v20;
      v14 -= v20;
      if (!v23)
      {
        goto LABEL_21;
      }
    }

    else
    {
      ++v10;
      *(v11 + 4 * v10) = v15;
    }
  }

  while (v10 != 3);
  if (v13 < v14)
  {
    goto LABEL_21;
  }

  v25 = v13 - v14 + 44;
  *a9 = v25;
  *a10 = bswap32(v25);
  *(a10 + 4) = vrev32_s8(*(a10 + 4));
  *(a10 + 28) = vrev32q_s8(*(a10 + 28));
  result = 1;
LABEL_18:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22E9EB7AC(unint64_t result, unsigned int a2, unsigned int a3)
{
  if (result < 0xFFFFFFFD && a2 < 0xFFFFFFFD && a3 < 0xFFFFFFFD)
  {
    return ((result + 3) & 0xFFFFFFFC) + ((a2 + 3) & 0xFFFFFFFC) + ((a3 + 3) & 0xFFFFFFFC) + 56;
  }

  __break(0x5500u);
  return result;
}

BOOL sub_22E9EB7E4(unint64_t a1, uint64_t a2)
{
  if (a1 < 0x2C)
  {
    return 0;
  }

  v3 = a1;
  result = 0;
  v4 = vrev32_s8(*a2);
  *a2 = v4;
  *(a2 + 8) = bswap32(*(a2 + 8));
  *(a2 + 28) = vrev32q_s8(*(a2 + 28));
  if (v3 >= 0x2C && v4.i32[0] == v3)
  {
    v5 = 0;
    v6 = v4.i32[0] - 44;
    v7 = (a2 + 32);
    v8 = 3;
    while (*(v7 - 1) == v5 && (*(v7 - 1) & 3) == 0)
    {
      if (*v7 < v5 || *v7 > v6)
      {
        break;
      }

      v11 = __CFADD__(v5, *v7 - v5);
      v5 = *v7;
      if (v11)
      {
LABEL_29:
        __break(0x5500u);
LABEL_30:
        __break(0x5515u);
        return result;
      }

      ++v7;
      if (!--v8)
      {
        if (v5 != v6)
        {
          return 0;
        }

        v12 = a2 + 44;
        v13 = (a2 + 32);
        v14 = 3;
        do
        {
          result = v14 == 0;
          if (!v14)
          {
            break;
          }

          v15 = *(v13 - 1);
          v16 = *v13 - v15;
          if (*v13 < v15)
          {
            goto LABEL_30;
          }

          v11 = v16 >= 4;
          v17 = v16 - 4;
          if (!v11)
          {
            break;
          }

          v18 = bswap32(*(v12 + v15));
          *(v12 + v15) = v18;
          if (v18 >= 0xFFFFFFFD)
          {
            goto LABEL_29;
          }

          v19 = (v18 + 3) & 0xFFFFFFFC;
          --v14;
          ++v13;
        }

        while (v19 >= v18 && v19 == v17);
        return result;
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_22E9EB8E8(unint64_t a1, int8x8_t *a2)
{
  if (a1 < 0x28)
  {
    return 0;
  }

  v3 = a1;
  v4 = 0;
  v5 = vrev32_s8(*a2);
  *a2 = v5;
  a2[1].i32[0] = bswap32(a2[1].u32[0]);
  do
  {
    a2[3].i32[v4 + 1] = bswap32(a2[3].u32[v4 + 1]);
    ++v4;
  }

  while (v4 != 3);
  result = 0;
  if (v3 >= 0x28 && v5.i32[0] == v3)
  {
    v6 = 0;
    v7 = v5.i32[0] - 40;
    v8 = a2 + 4;
    v9 = 2;
    while (v8[-1].i32[1] == v6 && (v8[-1].i32[1] & 3) == 0)
    {
      if (v8->i32[0] < v6 || v8->i32[0] > v7)
      {
        break;
      }

      v12 = __CFADD__(v6, v8->i32[0] - v6);
      v6 = v8->i32[0];
      if (v12)
      {
LABEL_31:
        __break(0x5500u);
LABEL_32:
        __break(0x5515u);
        return result;
      }

      v8 = (v8 + 4);
      if (!--v9)
      {
        if (v6 != v7)
        {
          return 0;
        }

        v13 = a2 + 5;
        v14 = a2 + 4;
        v15 = 2;
        do
        {
          result = v15 == 0;
          if (!v15)
          {
            break;
          }

          v16 = v14[-1].u32[1];
          v17 = v14->i32[0] - v16;
          if (v14->i32[0] < v16)
          {
            goto LABEL_32;
          }

          v12 = v17 >= 4;
          v18 = v17 - 4;
          if (!v12)
          {
            break;
          }

          v19 = bswap32(*(v13->u32 + v16));
          *(v13->i32 + v16) = v19;
          if (v19 >= 0xFFFFFFFD)
          {
            goto LABEL_31;
          }

          v20 = (v19 + 3) & 0xFFFFFFFC;
          --v15;
          v14 = (v14 + 4);
        }

        while (v20 >= v19 && v20 == v18);
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_22E9EBA00(uint64_t a1, size_t *a2, void *__dst, void *a4, _OWORD *a5, size_t *a6, void *a7)
{
  if (*a4 < 0x10uLL)
  {
    return 0;
  }

  *a4 = 16;
  *a5 = *(a1 + 12);
  v9 = a1 + 40;
  v10 = (a1 + 40 + *(a1 + 28));
  v11 = *v10;
  if (*a2 < v11)
  {
    return 0;
  }

  *a2 = v11;
  memcpy(__dst, v10 + 1, v11);
  v14 = (v9 + *(a1 + 32));
  v15 = *v14;
  if (*a6 < v15)
  {
    return 0;
  }

  *a6 = v15;
  memcpy(a7, v14 + 1, v15);
  return 1;
}

BOOL sub_22E9EBABC(unint64_t a1, uint64_t a2)
{
  if (a1 < 0x40)
  {
    return 0;
  }

  v3 = a1;
  v4 = 0;
  v5 = vrev32_s8(*a2);
  *a2 = v5;
  *(a2 + 8) = bswap32(*(a2 + 8));
  *(a2 + 28) = vrev32q_s8(*(a2 + 28));
  do
  {
    *(a2 + 44 + v4) = bswap32(*(a2 + 44 + v4));
    v4 += 4;
  }

  while (v4 != 20);
  result = 0;
  if (v3 >= 0x40 && v5.i32[0] == v3)
  {
    v6 = 0;
    v7 = v5.i32[0] - 64;
    v8 = (a2 + 48);
    v9 = 4;
    while (*(v8 - 1) == v6 && (*(v8 - 1) & 3) == 0)
    {
      if (*v8 < v6 || *v8 > v7)
      {
        break;
      }

      v12 = __CFADD__(v6, *v8 - v6);
      v6 = *v8;
      if (v12)
      {
LABEL_31:
        __break(0x5500u);
LABEL_32:
        __break(0x5515u);
        return result;
      }

      ++v8;
      if (!--v9)
      {
        if (v6 != v7)
        {
          return 0;
        }

        v13 = a2 + 64;
        v14 = (a2 + 48);
        v15 = 3;
        do
        {
          result = v15 == 0;
          if (!v15)
          {
            break;
          }

          v16 = *(v14 - 1);
          v17 = *v14 - v16;
          if (*v14 < v16)
          {
            goto LABEL_32;
          }

          v12 = v17 >= 4;
          v18 = v17 - 4;
          if (!v12)
          {
            break;
          }

          v19 = bswap32(*(v13 + v16));
          *(v13 + v16) = v19;
          if (v19 >= 0xFFFFFFFD)
          {
            goto LABEL_31;
          }

          v20 = (v19 + 3) & 0xFFFFFFFC;
          --v15;
          ++v14;
        }

        while (v20 >= v19 && v20 == v18);
        return result;
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_22E9EBBE0(unint64_t a1, uint64_t a2)
{
  if (a1 < 0x3C)
  {
    return 0;
  }

  v3 = a1;
  result = 0;
  v4 = vrev32_s8(*a2);
  *a2 = v4;
  *(a2 + 8) = bswap32(*(a2 + 8));
  *(a2 + 28) = vrev32q_s8(*(a2 + 28));
  *(a2 + 44) = vrev32q_s8(*(a2 + 44));
  if (v3 >= 0x3C && v4.i32[0] == v3)
  {
    v5 = 0;
    v6 = v4.i32[0] - 60;
    v7 = (a2 + 48);
    v8 = 3;
    while (*(v7 - 1) == v5 && (*(v7 - 1) & 3) == 0)
    {
      if (*v7 < v5 || *v7 > v6)
      {
        break;
      }

      v11 = __CFADD__(v5, *v7 - v5);
      v5 = *v7;
      if (v11)
      {
LABEL_29:
        __break(0x5500u);
LABEL_30:
        __break(0x5515u);
        return result;
      }

      ++v7;
      if (!--v8)
      {
        if (v5 != v6)
        {
          return 0;
        }

        v12 = a2 + 60;
        v13 = (a2 + 48);
        v14 = 3;
        do
        {
          result = v14 == 0;
          if (!v14)
          {
            break;
          }

          v15 = *(v13 - 1);
          v16 = *v13 - v15;
          if (*v13 < v15)
          {
            goto LABEL_30;
          }

          v11 = v16 >= 4;
          v17 = v16 - 4;
          if (!v11)
          {
            break;
          }

          v18 = bswap32(*(v12 + v15));
          *(v12 + v15) = v18;
          if (v18 >= 0xFFFFFFFD)
          {
            goto LABEL_29;
          }

          v19 = (v18 + 3) & 0xFFFFFFFC;
          --v14;
          ++v13;
        }

        while (v19 >= v18 && v19 == v17);
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_22E9EBCF0(unint64_t a1, unsigned int *a2)
{
  if (a1 >= 8)
  {
    return bswap32(*a2);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22E9EBD0C(unint64_t result, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v6 = result + a3;
  if (!__CFADD__(result, a3))
  {
    v7 = __CFADD__(v6, 3);
    v8 = v6 + 3;
    if (!v7 && a2 < 0xFFFFFFFD && a4 < 0xFFFFFFFD && a5 < 0xFFFFFFFD && a6 < 0xFFFFFFFD)
    {
      return ((a2 + 3) & 0xFFFFFFFC) + ((a4 + 3) & 0xFFFFFFFC) + (v8 & 0xFFFFFFFC) + ((a5 + 3) & 0xFFFFFFFC) + ((a6 + 3) & 0xFFFFFFFC) + 68;
    }
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_22E9EBD98()
{
  sub_22E9EBD84();
  v0("hsm_id_len %zu not in (0,%d)", v4, v5);
  v1 = sub_22E9EBD6C();
  return v2(v1);
}

uint64_t sub_22E9EBDE0()
{
  sub_22E9EBD84();
  v0("salt_len (%zu) out of bounds (0,%zu]", v4, v5);
  v1 = sub_22E9EBD6C();
  return v2(v1);
}

uint64_t sub_22E9EC004(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v60[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v60[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60[0] & 0x7F) << v10;
        if ((v60[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v54 = objc_alloc_init(SecureBackupTermsInfo);
        objc_storeStrong((a1 + 16), v54);
        v60[0] = 0xAAAAAAAAAAAAAAAALL;
        v60[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !SecureBackupTermsInfoReadFrom(v54, a2, v55))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v32 == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v60[0]) = 0;
          v36 = objc_msgSend_position(a2, v32, v9, v60[0]) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, v60, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v60[0] & 0x7F) << v33;
          if ((v60[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_36;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v53 = 0;
        }

        else
        {
          v53 = v35;
        }

LABEL_36:
        *(a1 + 8) = v53;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v56 = objc_msgSend_position(a2, v32, v9);
    }

    while (v56 < objc_msgSend_length(a2, v57, v58));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22E9EC6C4()
{
  if (qword_27DA7DF80 != -1)
  {
    sub_22E9F5040();
  }

  return byte_27DA7DF78;
}

uint64_t sub_22E9EC6FC()
{
  result = SecIsInternalRelease();
  byte_27DA7DF78 = result;
  return result;
}

BOOL sub_22E9EC71C(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v9 = SecItemUpdate(v5, v6);
  if (v9 == -25300)
  {
    v10 = objc_msgSend_mutableCopy(v5, v7, v8);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v6;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v23, v27, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = objc_msgSend_objectForKeyedSubscript_(v11, v14, v18, v23);
          objc_msgSend_setObject_forKeyedSubscript_(v10, v20, v19, v18);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v23, v27, 16);
      }

      while (v15);
    }

    v9 = SecItemAdd(v10, 0);
  }

  if (a3 && v9)
  {
    *a3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v7, *MEMORY[0x277CCA590], v9, 0);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v9 == 0;
}

id sub_22E9ED680(unsigned int a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = _os_feature_enabled_impl();
  v10 = v9;
  if (a4)
  {
    if (v9)
    {
      sub_22E9F5100();
    }

    if (!sub_22E9EECE4(v8))
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = objc_alloc(MEMORY[0x277CBEA90]);
      if ((a1 & 0xFFFFFFFE) == 2)
      {
        v14 = objc_msgSend_initWithBytes_length_(v12, v13, &unk_22E9F8970, 981);
      }

      else
      {
        v14 = objc_msgSend_initWithBytes_length_(v12, v13, &unk_22E9F8D45, 981);
      }

      v15 = v14;
      if (v14)
      {
        v17 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], v14);
        if (v17)
        {
          objc_msgSend_addObject_(v11, v16, v17);
        }
      }

      v19 = SecCertificateCopyEscrowRoots();
      if (v19)
      {
        objc_msgSend_addObjectsFromArray_(v11, v18, v19);
      }

LABEL_24:

      goto LABEL_52;
    }

    goto LABEL_19;
  }

  v20 = sub_22E9EECE4(v8);
  v21 = v10 ^ 1;
  if ((a1 & 0xFFFFFFFE) == 2)
  {
    v21 = 1;
  }

  if (v21)
  {
    if (v20)
    {
LABEL_19:
      v22 = &unk_284357260;
      goto LABEL_20;
    }

    v15 = v7;
    if (a1 <= 7)
    {
      if (((1 << a1) & 0x33) != 0)
      {
        v26 = SecCertificateCopyEscrowRoots();
LABEL_28:
        v27 = CloudServicesLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22E9CA000, v27, OS_LOG_TYPE_DEFAULT, "adding extra cert", buf, 2u);
        }

        v30 = objc_msgSend_mutableCopy(v26, v28, v29);
        v31 = objc_alloc(MEMORY[0x277CBEA90]);
        v33 = objc_msgSend_initWithBytes_length_(v31, v32, &unk_22E9F911A, 981);
        if (v33)
        {
          v34 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], v33);
          if (v34)
          {
            v36 = v34;
            objc_msgSend_addObject_(v30, v35, v34);
          }

          else
          {
            v38 = CloudServicesLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *v45 = 0;
              _os_log_impl(&dword_22E9CA000, v38, OS_LOG_TYPE_DEFAULT, "failed to create SecCertificate", v45, 2u);
            }

            v36 = 0;
          }
        }

        else
        {
          v36 = CloudServicesLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *v44 = 0;
            _os_log_impl(&dword_22E9CA000, v36, OS_LOG_TYPE_DEFAULT, "failed to create cert data", v44, 2u);
          }
        }

        if (v30)
        {
          if (_os_feature_enabled_impl())
          {
            v39 = v30;
            v30 = v39;
          }

          else
          {
            v40 = CloudServicesLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *v42 = 0;
              _os_log_impl(&dword_22E9CA000, v40, OS_LOG_TYPE_DEFAULT, "dropping extra cert, feature is disabled", v42, 2u);
            }

            v39 = v26;
            v26 = v39;
          }

          goto LABEL_51;
        }

LABEL_50:
        v39 = v26;
        v26 = v39;
        v30 = 0;
LABEL_51:
        v11 = v39;

        goto LABEL_52;
      }

      if (((1 << a1) & 0xC0) != 0)
      {
        v26 = SecCertificateCopyEscrowRoots();
        if (!sub_22E9EEAE4(v15))
        {
          v37 = CloudServicesLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *v43 = 0;
            _os_log_impl(&dword_22E9CA000, v37, OS_LOG_TYPE_DEFAULT, "skipping extra cert because terms were not accepted", v43, 2u);
          }

          goto LABEL_50;
        }

        goto LABEL_28;
      }
    }

    v26 = SecCertificateCopyEscrowRoots();
    goto LABEL_50;
  }

  if (v20)
  {
    v22 = &unk_284357278;
LABEL_20:
    v11 = sub_22E9EED34(v22);
    goto LABEL_53;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = objc_alloc(MEMORY[0x277CBEA90]);
  v15 = objc_msgSend_initWithBytes_length_(v23, v24, &unk_22E9F8D45, 981);
  if (v15)
  {
    v19 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], v15);
    if (v19)
    {
      objc_msgSend_addObject_(v11, v25, v19);
    }

    goto LABEL_24;
  }

LABEL_52:

LABEL_53:

  return v11;
}