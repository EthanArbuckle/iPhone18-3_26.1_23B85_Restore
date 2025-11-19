uint64_t sub_25616CF44(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25616C000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Location Access Store #CLLA XPC invalidation handler", v5, 2u);
  }

  return objc_msgSend_handleMessageResend(*(a1 + 32), v2, v3);
}

uint64_t sub_25616CFB4(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_25616C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Location Access Store #CLLA XPC interruption handler", v5, 2u);
  }

  return objc_msgSend_handleMessageResend(*(a1 + 32), v2, v3);
}

void sub_25616D0D0(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_25616C000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Location Access Store #CLLA Error with proxy, error:%@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_25616D344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  _Block_object_dispose(&a22, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_25616D38C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25616D3A4(uint64_t a1, void *a2)
{
  v10 = a2;
  v5 = objc_msgSend_copy(v10, v3, v4);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_msgSend_removeAllObjects(v10, v8, v9);
}

void sub_25616D670(uint64_t a1, void *a2)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CCABB0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v6 + 1;
  v8 = objc_msgSend_numberWithUnsignedLong_(v4, v7, v6);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v21[0] = @"kCLConnectionMessageSetLocationAccessRecordAsActive";
  v20[0] = @"kInfoMessageNameKey";
  v20[1] = @"kInfoMessageHandlerKey";
  v13 = objc_msgSend_copy(*(a1 + 40), v11, v12);
  v21[1] = v13;
  v20[2] = @"kInfoSetRecordDaysKey";
  v15 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v14, *(a1 + 56));
  v21[2] = v15;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v21, v20, 3);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v18, v17, *(*(*(a1 + 48) + 8) + 40));

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25616D7E8(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[4];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_25616D878;
  v5[3] = &unk_279824668;
  v5[4] = a1[6];
  return objc_msgSend_accessInflightMessageCache_(v2, v3, v5);
}

void sub_25616DAD0(uint64_t a1, void *a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CCABB0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v6 + 1;
  v8 = objc_msgSend_numberWithUnsignedLong_(v4, v7, v6);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v18[0] = @"kInfoMessageNameKey";
  v18[1] = @"kInfoMessageHandlerKey";
  v19[0] = @"kCLConnectionMessageExportLocationAccessActivity";
  v13 = objc_msgSend_copy(*(a1 + 40), v11, v12);
  v19[1] = v13;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v19, v18, 2);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v16, v15, *(*(*(a1 + 48) + 8) + 40));

  v17 = *MEMORY[0x277D85DE8];
}

void sub_25616DC0C(void *a1, void *a2)
{
  v3 = a2;
  (*(a1[5] + 16))();
  v4 = a1[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_25616DCBC;
  v6[3] = &unk_279824668;
  v6[4] = a1[6];
  objc_msgSend_accessInflightMessageCache_(v4, v5, v6);
}

void sub_25616DD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25616DE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}