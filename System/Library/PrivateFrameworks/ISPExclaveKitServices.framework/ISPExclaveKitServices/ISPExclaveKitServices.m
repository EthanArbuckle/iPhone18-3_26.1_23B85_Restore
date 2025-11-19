uint64_t ispExclaveKitCommandChRunMd(uint64_t a1)
{
  ServiceTypeFromChIdx = ispExclaveGetServiceTypeFromChIdx(*(a1 + 524));
  if (properties[0] != 1 || ServiceTypeFromChIdx == 0)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x4802000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v4 = *(a1 + 524);
    v19 = v4;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChRunMd();
    }

    v5 = motiontowakemodule_ekmotiontowake_channelrunmotiondetect(&properties[70 * v4 + 134], &v19);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChRunMd();
      if (v5)
      {
        goto LABEL_10;
      }
    }

    else if (v5)
    {
LABEL_10:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChRunMd();
      }

      v6 = 1;
      goto LABEL_30;
    }

    *(a1 + 768) = 0u;
    *(a1 + 784) = 0u;
    *(a1 + 736) = 0u;
    *(a1 + 752) = 0u;
    *(a1 + 704) = 0u;
    *(a1 + 720) = 0u;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
    *(a1 + 640) = 0u;
    *(a1 + 656) = 0u;
    *(a1 + 608) = 0u;
    *(a1 + 624) = 0u;
    *(a1 + 576) = 0u;
    *(a1 + 592) = 0u;
    *(a1 + 544) = 0u;
    *(a1 + 560) = 0u;
    *(a1 + 528) = 0u;
    v9 = v15 + 8;
    v8 = v15[8];
    if (v8 == 0x72C19E1404569D85)
    {
      v10 = 0;
    }

    else
    {
      if (v8 == 0x5762C2D532A6799ALL)
      {
        v10 = 1;
      }

      else
      {
        if (v8 != 0x94A1C7954E442A65)
        {
          v12 = qword_27F6132E0;
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChRunMd(v9, v12);
          }

          v6 = 4;
          goto LABEL_30;
        }

        v10 = 2;
      }

      *(a1 + 792) = 1;
      *(a1 + 796) = v10;
    }

    v11 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChRunMd(v10, v11);
    }

    v6 = 0;
LABEL_30:
    _Block_object_dispose(&v14, 8);
    return v6;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChRunMd();
  }

  return 3;
}

void sub_25497BB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

__n128 ___Z27ispExclaveKitCommandChRunMdP20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *a2;
  *(v2 + 56) = *(a2 + 16);
  *(v2 + 40) = result;
  return result;
}

uint64_t ispExclaveKitCommandChRunAndk(uint64_t a1)
{
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChRunAndk();
  }

  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v7[3] = 0;
  ServiceTypeFromChIdx = ispExclaveGetServiceTypeFromChIdx(*(a1 + 524));
  if (ServiceTypeFromChIdx == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChRunAndk();
    }

    goto LABEL_10;
  }

  v3 = *(a1 + 524);
  v6 = v3;
  if (ServiceTypeFromChIdx != 1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChRunAndk();
    }

LABEL_10:
    v4 = 3;
    goto LABEL_11;
  }

  andkmodule_ekandk_runandk(&properties[70 * v3 + 124], &v6);
  v4 = 0;
LABEL_11:
  _Block_object_dispose(v7, 8);
  return v4;
}

void sub_25497BD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unsigned __int8 *___Z29ispExclaveKitCommandChRunAndkP20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  result = ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v5);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t ispExclaveKitCommandChRunFd(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)))
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChRunFd();
    }

    v2 = 3;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v3 = *(a1 + 524);
    v9 = v3;
    v4 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "ispExclaveKitCommandChRunFd";
      v16 = 1024;
      v17 = 28;
      _os_log_impl(&dword_25497B000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d - [IR-EK] Run Face Detection\n", buf, 0x12u);
    }

    v5 = attentionawarenessmodule_ekattentionawareness_channelrunfacedetect(&properties[70 * v3 + 126], &v9);
    v6 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "ispExclaveKitCommandChRunFd";
      v16 = 1024;
      v17 = 30;
      _os_log_impl(&dword_25497B000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d - [IR-EK] Face Detection Finished\n", buf, 0x12u);
    }

    if (v5)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChRunFd();
      }

      v2 = 1;
    }

    else if (*(v11 + 24))
    {
      v2 = 0;
    }

    else
    {
      v2 = 4;
    }

    _Block_object_dispose(&v10, 8);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_25497BFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unsigned __int8 *___Z27ispExclaveKitCommandChRunFdP20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  result = facekitmodule_ekfacekit_channelrunkitfaceprocess__result_get_success(v5);
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

uint64_t ispExclaveKitCommandChRunEr(uint64_t a1)
{
  if (!ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x4802000000;
    v13 = __Block_byref_object_copy__0;
    v14 = __Block_byref_object_dispose__0;
    v3 = *(a1 + 524);
    v15 = v3;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChRunEr();
    }

    v4 = eyereliefmodule_ekeyerelief_channelruneyerelief(&properties[70 * v3 + 112], &v15);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChRunEr();
      if (v4)
      {
        goto LABEL_9;
      }
    }

    else if (v4)
    {
LABEL_9:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChRunEr();
      }

      v2 = 1;
LABEL_34:
      _Block_object_dispose(&v10, 8);
      return v2;
    }

    *(a1 + 768) = 0u;
    *(a1 + 784) = 0u;
    *(a1 + 736) = 0u;
    *(a1 + 752) = 0u;
    *(a1 + 704) = 0u;
    *(a1 + 720) = 0u;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
    *(a1 + 640) = 0u;
    *(a1 + 656) = 0u;
    *(a1 + 608) = 0u;
    *(a1 + 624) = 0u;
    *(a1 + 576) = 0u;
    *(a1 + 592) = 0u;
    *(a1 + 544) = 0u;
    *(a1 + 560) = 0u;
    *(a1 + 528) = 0u;
    v5 = v11[8];
    if (v5 > 0xFE569FEE078F38E1)
    {
      switch(v5)
      {
        case 0xFE569FEE078F38E2:
          v6 = 1;
          v7 = 1133903872;
          goto LABEL_30;
        case 0x164618EE45232C64:
          v6 = 5;
          break;
        case 0x791606184A4899E9:
          v6 = 4;
          break;
        default:
          goto LABEL_24;
      }
    }

    else
    {
      if (v5 != 0x8ABB8E8C07EC0C78)
      {
        if (v5 == 0x98F47D9A37472C10)
        {
          v8 = 1120403456;
LABEL_31:
          *(a1 + 796) = v8;
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommandChRunEr();
          }

          v2 = 0;
          goto LABEL_34;
        }

        if (v5 == 0xFC96C82EC774191CLL)
        {
          v6 = 2;
          v7 = 1120403456;
LABEL_30:
          v8 = v7;
          *(a1 + 792) = v6;
          goto LABEL_31;
        }

LABEL_24:
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
        {
          ispExclaveKitCommandChRunEr();
        }

        v2 = 4;
        goto LABEL_34;
      }

      v6 = 3;
    }

    v7 = 1148846080;
    goto LABEL_30;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChRunEr();
  }

  return 3;
}

void sub_25497C348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

__n128 ___Z27ispExclaveKitCommandChRunErP20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *a2;
  *(v2 + 56) = *(a2 + 16);
  *(v2 + 40) = result;
  return result;
}

uint64_t ispExclaveKitCommandChRunAnst(uint64_t a1)
{
  ServiceTypeFromChIdx = ispExclaveGetServiceTypeFromChIdx(*(a1 + 524));
  if (ServiceTypeFromChIdx == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChRunAnst();
    }

    return 3;
  }

  else
  {
    v3 = *(a1 + 524);
    v8 = v3;
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x2000000000;
    v7 = 0;
    if (ServiceTypeFromChIdx == 1)
    {
      if (anstmodule_ekanst_channelrunkitanstv150(&properties[70 * v3 + 118], &v8))
      {
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
        {
          ispExclaveKitCommandChRunAnst();
        }

        v4 = 1;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChRunAnst();
      }

      v4 = 3;
    }

    _Block_object_dispose(v6, 8);
  }

  return v4;
}

void sub_25497C508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___Z29ispExclaveKitCommandChRunAnstP20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  bzero((*(a1 + 40) + 528), 0x930uLL);
  success = facekitmodule_ekfacekit_channelrunkitfaceprocess__result_get_success(a2);
  if (success)
  {
    v5 = success;
    v6 = *(a1 + 40);
    if (*(success + 2) == 0x84C6269EC4CA2378)
    {
      v7 = 0;
      *(v6 + 536) = 1;
LABEL_13:
      *(*(*(a1 + 32) + 8) + 24) = v7;
      return;
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    *(v6 + 528) = *success;
    *(v6 + 536) = success[8];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = ___ZL16decodeAnstResultP49anstmodule_ispexclavecorechrunkitanstresultv150_sP26sExclaveKitIspCmdChRunAnst_block_invoke;
    v9[3] = &unk_2797978C8;
    v9[5] = 10;
    v9[6] = v6;
    v9[4] = &v10;
    anstmodule_anstfacev1502__v_visit(success + 3, v9);
    if (*(v11 + 24) == 1)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ___Z29ispExclaveKitCommandChRunAnstP20sExclaveKitIspCmdHdr_block_invoke_cold_2();
      }
    }

    else
    {
      *(v11 + 24) = 0;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 0x40000000;
      v8[2] = ___ZL16decodeAnstResultP49anstmodule_ispexclavecorechrunkitanstresultv150_sP26sExclaveKitIspCmdChRunAnst_block_invoke_3;
      v8[3] = &unk_2797978F0;
      v8[5] = 40;
      v8[6] = v6;
      v8[4] = &v10;
      anstmodule_anstobjectv1502__v_visit(v5 + 8, v8);
      if (*(v11 + 24) != 1)
      {
        v7 = 1;
        goto LABEL_12;
      }

      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ___Z29ispExclaveKitCommandChRunAnstP20sExclaveKitIspCmdHdr_block_invoke_cold_1();
      }
    }

    v7 = 0;
LABEL_12:
    _Block_object_dispose(&v10, 8);
    goto LABEL_13;
  }
}

float ___ZL16decodeAnstResultP49anstmodule_ispexclavecorechrunkitanstresultv150_sP26sExclaveKitIspCmdChRunAnst_block_invoke(void *a1, unint64_t a2, uint64_t a3)
{
  if (a1[5] <= a2)
  {
    *(*(a1[4] + 8) + 24) = 1;
  }

  else
  {
    *(a1[6] + (a2 << 6) + 796) = *a3;
    Category = getCategory((a3 + 8));
    v7 = a1[6] + (a2 << 6);
    *(v7 + 804) = Category;
    *(v7 + 808) = *(a3 + 16);
    if (anstmodule_anstfaceposedegree_invalid__get((a3 + 32)))
    {
      v8 = -361;
    }

    else
    {
      v8 = *anstmodule_anstfaceposedegree_value__get((a3 + 32));
    }

    *(a1[6] + (a2 << 6) + 828) = v8;
    if (anstmodule_anstfaceposedegree_invalid__get((a3 + 48)))
    {
      v9 = -361;
    }

    else
    {
      v9 = *anstmodule_anstfaceposedegree_value__get((a3 + 48));
    }

    *(a1[6] + (a2 << 6) + 832) = v9;
    if (anstmodule_anstfaceposedegree_invalid__get((a3 + 64)))
    {
      v10 = -361;
    }

    else
    {
      v10 = *anstmodule_anstfaceposedegree_value__get((a3 + 64));
    }

    *(a1[6] + (a2 << 6) + 836) = v10;
    if (anstmodule_anstfaceposedegree_invalid__get((a3 + 64)))
    {
      v11 = -361;
    }

    else
    {
      v11 = *anstmodule_anstfaceposedegree_value__get((a3 + 64));
    }

    *(a1[6] + (a2 << 6) + 840) = v11;
    if (anstmodule_anstfaceposedegree_invalid__get((a3 + 96)))
    {
      v12 = -361;
    }

    else
    {
      v12 = *anstmodule_anstfaceposedegree_value__get((a3 + 96));
    }

    v13 = a1[6];
    v14 = v13 + (a2 << 6);
    *(v14 + 844) = v12;
    *(v14 + 848) = *(a3 + 112);
    result = *(a3 + 116);
    *(v14 + 852) = result;
    *(v14 + 856) = *(a3 + 120);
    ++*(v13 + 792);
  }

  return result;
}

uint64_t getCategory(void *a1)
{
  if (anstmodule_anstcategory2_face__get(a1))
  {
    return 0;
  }

  if (anstmodule_anstcategory2_body__get(a1))
  {
    return 1;
  }

  if (anstmodule_anstcategory2_catbody__get(a1))
  {
    return 2;
  }

  if (anstmodule_anstcategory2_cathead__get(a1))
  {
    return 3;
  }

  if (anstmodule_anstcategory2_dogbody__get(a1))
  {
    return 4;
  }

  if (anstmodule_anstcategory2_doghead__get(a1))
  {
    return 5;
  }

  if (anstmodule_anstcategory2_fullbody__get(a1))
  {
    return 6;
  }

  if (anstmodule_anstcategory2_lefthand__get(a1))
  {
    return 7;
  }

  if (anstmodule_anstcategory2_righthand__get(a1))
  {
    return 8;
  }

  return 9;
}

void *___ZL16decodeAnstResultP49anstmodule_ispexclavecorechrunkitanstresultv150_sP26sExclaveKitIspCmdChRunAnst_block_invoke_3(void *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result[5] <= a2)
  {
    *(*(result[4] + 8) + 24) = 1;
  }

  else
  {
    v5 = 9 * a2;
    *(result[6] + 36 * a2 + 1440) = *a3;
    result = getCategory((a3 + 8));
    v6 = v3[6];
    v7 = v6 + 4 * v5;
    *(v7 + 1448) = result;
    *(v7 + 1452) = *(a3 + 16);
    *(v7 + 1472) = *(a3 + 32);
    ++*(v6 + 1436);
  }

  return result;
}

uint64_t _ispExclaveKitCommandChFacekitConfigSetV2(int a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (byte_27F6132C0 && (facekitmodule_ekfacekit_channelfaceconfigset(&properties[70 * a1 + 136], &dword_27F6132C4), (v4[3] & 1) == 0))
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      _ispExclaveKitCommandChFacekitConfigSetV2();
    }

    v1 = 1;
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_25497CB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL ___Z41_ispExclaveKitCommandChFacekitConfigSetV2j_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  result = facekitmodule_ekfacekit_channelrunkitfacesecondaryprocess__result_get_success(v5);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ispExclaveKitCommandChFacekitConfigSetV2(uint64_t a1)
{
  ServiceTypeFromChIdx = ispExclaveGetServiceTypeFromChIdx(*(a1 + 524));
  if (ServiceTypeFromChIdx == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChFacekitConfigSetV2();
    }
  }

  else
  {
    byte_27F6132C0 = 1;
    dword_27F6132C4 = *(a1 + 524);
    word_27F6132C8 = *(a1 + 528);
    if (ServiceTypeFromChIdx == 1)
    {
      return 0;
    }

    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChFacekitConfigSetV2();
    }
  }

  return 3;
}

uint64_t ispExclaveKitCommandChRunFacekitFirstPassV2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  ServiceTypeFromChIdx = ispExclaveGetServiceTypeFromChIdx(*(a1 + 524));
  if (ServiceTypeFromChIdx == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChRunFacekitFirstPassV2();
    }

    goto LABEL_13;
  }

  v3 = *(a1 + 524);
  v11 = v3;
  v4 = qword_27F6132E0;
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "ispExclaveKitCommandChRunFacekitFirstPassV2";
    v18 = 1024;
    v19 = 131;
    _os_log_impl(&dword_25497B000, v4, OS_LOG_TYPE_INFO, "%s:%d - facekit: debug 0\n", buf, 0x12u);
  }

  if (ServiceTypeFromChIdx != 1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChRunFacekitFirstPassV2();
    }

LABEL_13:
    v8 = 3;
    goto LABEL_14;
  }

  facekitmodule_ekfacekit_channelrunkitfaceprocess(&properties[70 * v3 + 136], &v11);
  v5 = qword_27F6132E0;
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 889);
    v7 = *(a1 + 892);
    *buf = 136315906;
    v17 = "ispExclaveKitCommandChRunFacekitFirstPassV2";
    v18 = 1024;
    v19 = 147;
    v20 = 1024;
    v21 = v6;
    v22 = 1024;
    v23 = v7;
    _os_log_impl(&dword_25497B000, v5, OS_LOG_TYPE_INFO, "%s:%d - trackedFaceValid %d confidence %u\n", buf, 0x1Eu);
  }

  if (v13[3])
  {
    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChRunFacekitFirstPassV2();
    }

    v8 = 1;
  }

LABEL_14:
  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_25497CE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unsigned __int8 *___Z43ispExclaveKitCommandChRunFacekitFirstPassV2P20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 40);
  v3[62] = 0u;
  v3[63] = 0u;
  v3[60] = 0u;
  v3[61] = 0u;
  v3[58] = 0u;
  v3[59] = 0u;
  v3[56] = 0u;
  v3[57] = 0u;
  v3[54] = 0u;
  v3[55] = 0u;
  v3[52] = 0u;
  v3[53] = 0u;
  v3[50] = 0u;
  v3[51] = 0u;
  v3[48] = 0u;
  v3[49] = 0u;
  v3[46] = 0u;
  v3[47] = 0u;
  v3[44] = 0u;
  v3[45] = 0u;
  v3[42] = 0u;
  v3[43] = 0u;
  v3[40] = 0u;
  v3[41] = 0u;
  v3[38] = 0u;
  v3[39] = 0u;
  v3[36] = 0u;
  v3[37] = 0u;
  v3[34] = 0u;
  v3[35] = 0u;
  v3[33] = 0u;
  result = facekitmodule_ekfacekit_channelrunkitfaceprocess__result_get_success(a2);
  v5 = result;
  if (result)
  {
    v6 = *(a1 + 40);
    *(v6 + 528) = *result;
    *(v6 + 536) = result[8];
    *(v6 + 792) = *(result + 2);
    v7 = *(result + 26);
    v8 = *(result + 88);
    v9 = *(result + 72);
    *(v6 + 832) = *(result + 56);
    *(v6 + 848) = v9;
    *(v6 + 864) = v8;
    *(v6 + 880) = v7;
    v10 = *(result + 40);
    *(v6 + 800) = *(result + 24);
    *(v6 + 816) = v10;
    *(v6 + 888) = result[112];
    v11 = BOOL__opt_get(result + 108);
    *(v6 + 884) = v11 != 0;
    if (v11)
    {
      *(v6 + 885) = *v11;
    }

    v12 = BOOL__opt_get(v5 + 110);
    if (v12)
    {
      *(v6 + 887) = *v12;
    }

    v13 = facekitmodule_facekitaccessibilitydata__opt_get(v5 + 116);
    if (v13)
    {
      *(v6 + 889) = 1;
      *(v6 + 892) = *v13;
      v14 = *(v13 + 8);
      v15 = *(v13 + 40);
      *(v6 + 916) = *(v13 + 24);
      *(v6 + 932) = v15;
      *(v6 + 900) = v14;
      v16 = *(v13 + 56);
      v17 = *(v13 + 88);
      *(v6 + 964) = *(v13 + 72);
      *(v6 + 980) = v17;
      *(v6 + 948) = v16;
      *(v6 + 996) = *(v13 + 52);
    }

    result = facekitmodule_facekitaccessibilitydata__opt_get(v5 + 228);
    if (result)
    {
      *(v6 + 1000) = 1;
      v18 = *result;
      *(v6 + 1009) = result[8];
      *(v6 + 1001) = v18;
      *(v6 + 1012) = *(result + 12);
    }

    *(v6 + 1020) = v5[252];
  }

  *(*(*(a1 + 32) + 8) + 24) = v5 != 0;
  return result;
}

uint64_t ispExclaveKitCommandChRunFacekitSecondPassV2(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  ServiceTypeFromChIdx = ispExclaveGetServiceTypeFromChIdx(*(a1 + 524));
  if (ServiceTypeFromChIdx == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChRunFacekitSecondPassV2();
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 524);
  v6 = v3;
  if (ServiceTypeFromChIdx != 1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChRunFacekitSecondPassV2();
    }

LABEL_9:
    v4 = 3;
    goto LABEL_10;
  }

  facekitmodule_ekfacekit_channelrunkitfacesecondaryprocess(&properties[70 * v3 + 136], &v6);
  if (v8[3])
  {
    v4 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChRunFacekitSecondPassV2();
    }

    v4 = 1;
  }

LABEL_10:
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_25497D1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL ___Z44ispExclaveKitCommandChRunFacekitSecondPassV2P20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  result = facekitmodule_ekfacekit_channelrunkitfacesecondaryprocess__result_get_success(v5);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void commandTimerCallback(ISPExclaveKitTimer *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = qword_27F6132E0;
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    commandTimerCallback(a1, v2);
  }

  ISPExclaveKitTimer::getCmdId(a1);
  ISPExclaveKitTimer::getCmdId(a1);
  if ((byte_27F6136E8 & 1) == 0)
  {
    v4 = 0;
    v5 = &unk_27F612E28;
    do
    {
      if (channelStateGet(v4) != 1)
      {
        v7[0] = 0;
        v7[1] = v7;
        v7[2] = 0x3802000000;
        v7[3] = __Block_byref_object_copy__1;
        v7[4] = __Block_byref_object_dispose__1;
        v6 = qword_27F6132E0;
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v9 = "commandTimerCallback";
          v10 = 1024;
          v11 = 84;
          _os_log_debug_impl(&dword_25497B000, v6, OS_LOG_TYPE_DEBUG, "%s:%d - before calling new IDL\n", buf, 0x12u);
        }

        ispexclavekitdebugmodule_ekdebug_channelcommandtimeout(v5);
        _Block_object_dispose(v7, 8);
      }

      ++v4;
      v5 += 35;
    }

    while (v4 != 5);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_25497D4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z20commandTimerCallbackP18ISPExclaveKitTimer_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t additionalTimeOut(int *a1)
{
  v1 = *a1;
  if (*a1 < 327680)
  {
    if (v1 == 65537)
    {
      return 5000;
    }

    if (v1 == 65542)
    {
      return 2000;
    }

    goto LABEL_14;
  }

  if (v1 == 327680)
  {
    return 9500;
  }

  if (v1 == 851968)
  {
    v3 = a1[132];
    if (v3 == 4)
    {
      v4 = 1;
    }

    else
    {
      if (v3 != 30)
      {
        goto LABEL_14;
      }

      v4 = 0;
    }

    isDumpMode = a1[133] != v4;
  }

LABEL_14:
  if (isDumpMode != 1)
  {
    return 0;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
  {
    additionalTimeOut();
  }

  return 3000;
}

uint64_t ispExclaveKitCommand(unsigned int *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!pTimerList)
  {
    operator new();
  }

  v2 = qword_27F6132E0;
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = cmdStringGet(*a1);
    v4 = *a1;
    v22 = 136315906;
    v23 = "ispExclaveKitCommand";
    v24 = 1024;
    v25 = 144;
    v26 = 2080;
    v27 = v3;
    v28 = 1024;
    v29 = v4;
    _os_log_impl(&dword_25497B000, v2, OS_LOG_TYPE_DEFAULT, "%s:%d - cmd: %s[0x%x]\n", &v22, 0x22u);
  }

  v5 = *a1 - 851970 < 2 || *a1 == 0;
  if (v5 || (DeviceType = _getDeviceType(), DeviceType == 9))
  {
    v6 = 0;
  }

  else
  {
    Timer = ISPExclaveKitTimerList::getTimer(pTimerList);
    v6 = Timer;
    if (Timer)
    {
      ISPExclaveKitTimer::registerCallback(&Timer->__opaque[8], commandTimerCallback);
      if (additionalTimeOut(a1) > 0x1F3)
      {
        v12 = 9500;
      }

      else
      {
        v12 = additionalTimeOut(a1) + 9000;
      }

      ISPExclaveKitTimer::updatePeriod(&v6->__opaque[8], v12);
      v13 = cmdStringGet(*a1);
      ISPExclaveKitTimer::updateInfo(&v6->__opaque[8], v13, *a1);
      ISPExclaveKitTimer::startTimer(&v6->__opaque[8]);
    }
  }

  v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v8 = *a1;
  if (*a1 < 0x40000)
  {
    if (v8 > 131074)
    {
      switch(v8)
      {
        case 196608:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChRunAe(a1);
          goto LABEL_221;
        case 196609:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChSendMetadata(a1);
          goto LABEL_221;
        case 196610:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChCameraConfigSet(a1);
          goto LABEL_221;
        case 196611:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChAeFrameRateMaxSet(a1);
          goto LABEL_221;
        case 196612:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChAeFrameRateMinSet(a1);
          goto LABEL_221;
        case 196613:
          updated = ispExclaveKitCommandChAeGainCapSet(a1);
          goto LABEL_221;
        case 196614:
          updated = ispExclaveKitCommandChAeIntegrationTimeMaxSet(a1);
          goto LABEL_221;
        case 196615:
          updated = ispExclaveKitCommandChAeUpdateResume(a1);
          goto LABEL_221;
        case 196616:
          updated = ispExclaveKitCommandChAeUpdateSuspend(a1);
          goto LABEL_221;
        case 196617:
          updated = ispExclaveKitCommandChAeIntegrationGainSet(a1);
          goto LABEL_221;
        case 196618:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChAeInitSettingGet(a1);
          goto LABEL_221;
        case 196619:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChAeFlickerFreqSet(a1);
          goto LABEL_221;
        case 196620:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChAeFrameRateMaxGet(a1);
          goto LABEL_221;
        case 196621:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChAeFrameRateMinGet(a1);
          goto LABEL_221;
        default:
          if (v8 == 131075)
          {
            updated = ispExclaveKitCommandChDpcSet(a1);
          }

          else
          {
            if (v8 != 131076)
            {
              goto LABEL_211;
            }

            updated = ispExclaveKitCommandChRunPostProcess(a1);
          }

          break;
      }

      goto LABEL_221;
    }

    if (v8 <= 65541)
    {
      if (v8 > 65537)
      {
        if (v8 > 65539)
        {
          if (v8 == 65540)
          {
            if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
            {
              ispExclaveKitCommand();
            }

            updated = ispExclaveKitCommandChConfigurationStatusRead(a1);
          }

          else
          {
            updated = ispExclaveKitCommandChAlgoEnable(a1);
          }
        }

        else if (v8 == 65538)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChInfoSet(a1);
        }

        else
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChConcurrentFlagSet(a1);
        }

        goto LABEL_221;
      }

      if (v8 >= 0x10000)
      {
        if (v8 == 0x10000)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChStart(a1);
        }

        else
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChStop(a1);
        }

        goto LABEL_221;
      }

      if (!v8)
      {
        updated = ispExclaveKitCommandFrameworkInit();
        goto LABEL_221;
      }

      if (v8 == 1)
      {
        updated = ispExclaveKitCommandDeviceInfoGet(a1);
LABEL_221:
        v14 = updated;
        goto LABEL_222;
      }

      goto LABEL_211;
    }

    if (v8 <= 65545)
    {
      if (v8 > 65543)
      {
        if (v8 == 65544)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChFrameRateControl(a1);
        }

        else
        {
          updated = ispExclaveKitCommandChFidSessionEnter(a1);
        }
      }

      else if (v8 == 65542)
      {
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          ispExclaveKitCommand();
        }

        updated = ispExclaveKitCommandChOn(a1);
      }

      else
      {
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          ispExclaveKitCommand();
        }

        updated = ispExclaveKitCommandChOff(a1);
      }

      goto LABEL_221;
    }

    if (v8 <= 0x20000)
    {
      if (v8 == 65546)
      {
        updated = ispExclaveKitCommandChFidSessionExit(a1);
        goto LABEL_221;
      }

      if (v8 == 0x20000)
      {
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          ispExclaveKitCommand();
        }

        updated = ispExclaveKitCommandChRunIsp(a1);
        goto LABEL_221;
      }

      goto LABEL_211;
    }

    if (v8 == 131073)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
      {
        ispExclaveKitCommand();
      }

      if ((byte_27F6136E8 & 1) == 0)
      {
        updated = ispExclaveKitCommandChLscSet();
        goto LABEL_221;
      }

      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommand();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
      {
        ispExclaveKitCommand();
      }

      if ((byte_27F6136E8 & 1) == 0)
      {
        updated = ispExclaveKitCommandChPdpSet();
        goto LABEL_221;
      }

      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommand();
      }
    }

    goto LABEL_213;
  }

  if (v8 <= 589827)
  {
    if (v8 < 458752)
    {
      if (v8 < 393216)
      {
        if (v8 == 0x40000)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChRunEr(a1);
          goto LABEL_221;
        }

        if (v8 == 327680)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChRunFd(a1);
          goto LABEL_221;
        }
      }

      else
      {
        switch(v8)
        {
          case 393216:
            if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
            {
              ispExclaveKitCommand();
            }

            updated = ispExclaveKitCommandChAdConfigSet(a1);
            goto LABEL_221;
          case 393217:
            if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
            {
              ispExclaveKitCommand();
            }

            updated = ispExclaveKitCommandChRunAd(a1);
            goto LABEL_221;
          case 393218:
            updated = ispExclaveKitCommandChRunAdv2(a1);
            goto LABEL_221;
        }
      }

      goto LABEL_211;
    }

    if (v8 <= 589824)
    {
      switch(v8)
      {
        case 458752:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChRunMd(a1);
          goto LABEL_221;
        case 524288:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChRunAnst(a1);
          goto LABEL_221;
        case 589824:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommand();
          }

          goto LABEL_213;
      }

      goto LABEL_211;
    }

    if (v8 == 589825)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommand();
      }
    }

    else
    {
      if (v8 != 589826)
      {
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          ispExclaveKitCommand();
        }

        updated = ispExclaveKitCommandChFacekitConfigSetV2(a1);
        goto LABEL_221;
      }

      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommand();
      }
    }

    goto LABEL_213;
  }

  if (v8 <= 851970)
  {
    if (v8 < 851968)
    {
      switch(v8)
      {
        case 589828:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChRunFacekitFirstPassV2(a1);
          goto LABEL_221;
        case 589829:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChRunFacekitSecondPassV2(a1);
          goto LABEL_221;
        case 720896:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
          {
            ispExclaveKitCommand();
          }

          updated = ispExclaveKitCommandChRunAndk(a1);
          goto LABEL_221;
      }

LABEL_211:
      v15 = qword_27F6132E0;
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommand(v8, v15);
      }

      goto LABEL_213;
    }

    if (v8 == 851968)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
      {
        ispExclaveKitCommand();
      }

      if ((byte_27F6136E8 & 1) == 0)
      {
        updated = ispExclaveKitCommandChPropertyWrite(a1);
        goto LABEL_221;
      }

      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommand();
      }
    }

    else if (v8 == 851969)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
      {
        ispExclaveKitCommand();
      }

      if ((byte_27F6136E8 & 1) == 0)
      {
        updated = ispExclaveKitCommandChPropertyRead(a1);
        goto LABEL_221;
      }

      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommand();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
      {
        ispExclaveKitCommand();
      }

      if ((byte_27F6136E8 & 1) == 0)
      {
        updated = ispExclaveKitCommandChInfiltration(a1);
        goto LABEL_221;
      }

      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommand();
      }
    }

LABEL_213:
    v14 = 0;
    goto LABEL_222;
  }

  if (v8 > 983040)
  {
    switch(v8)
    {
      case 983041:
        updated = ispExclaveKitCommandChFidSessionStop(a1);
        goto LABEL_221;
      case 983042:
        updated = ispExclaveKitCommandChFidBracketCapture(a1);
        goto LABEL_221;
      case 983043:
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          ispExclaveKitCommand();
        }

        goto LABEL_213;
    }

    goto LABEL_211;
  }

  if (v8 == 851971)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommand();
    }

    if ((byte_27F6136E8 & 1) == 0)
    {
      updated = ispExclaveKitCommandChExfiltration(a1);
      goto LABEL_221;
    }

    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommand();
    }

    goto LABEL_213;
  }

  if (v8 != 851972)
  {
    if (v8 == 983040)
    {
      updated = ispExclaveKitCommandChFidSessionStart(a1);
      goto LABEL_221;
    }

    goto LABEL_211;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
  {
    ispExclaveKitCommand();
  }

  if ((byte_27F6136E8 & 1) == 0)
  {
    updated = ispExclaveKitCommandChDebugCapability(a1);
    goto LABEL_221;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommand();
  }

  v14 = 0;
  a1[132] = 0;
LABEL_222:
  v16 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v17 = qword_27F6132E0;
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEFAULT))
  {
    v18 = cmdStringGet(*a1);
    v23 = "ispExclaveKitCommand";
    v25 = 479;
    v19 = *a1;
    v22 = 136316162;
    v26 = 2080;
    v24 = 1024;
    v27 = v18;
    v28 = 1024;
    v29 = v19;
    v30 = 2048;
    v31 = v16 / 0x3E8 - v7 / 0x3E8;
    _os_log_impl(&dword_25497B000, v17, OS_LOG_TYPE_DEFAULT, "%s:%d - cmd: %s[0x%x] - done, duration=%llu us\n", &v22, 0x2Cu);
  }

  if (v6)
  {
    ISPExclaveKitTimer::stopTimer(&v6->__opaque[8]);
    ISPExclaveKitTimerList::returnTimer(pTimerList, &v6->__sig);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

uint64_t _generateIdlAlgoEnableBitMap(BOOL *a1)
{
  v1 = 0;
  v2 = 0;
  do
  {
    v3 = !a1[v1] || v1 > 0xBu;
    if (!v3 && ((0xCFFu >> (v1 & 0xF)) & 1) != 0)
    {
      v2 = dword_25499D000[v1 & 0xF] | v2;
    }

    ++v1;
  }

  while (v1 != 255);
  return v2;
}

uint64_t getConfigurationType(int a1)
{
  if (!a1)
  {
    return 0x43534973E0734AAFLL;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    getConfigurationType();
  }

  return 0;
}

uint64_t _ispExclaveKitCommandAlgoEnable(unsigned int a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3802000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v7[0] = a1;
  v7[1] = _generateIdlAlgoEnableBitMap(algn_27F612C24);
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
  {
    _ispExclaveKitCommandAlgoEnable();
  }

  v2 = ispexclavekitshared_ekchannelstreamingcontrol_channelalgorithmenable(&properties[70 * a1 + 116], v7);
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
  {
    _ispExclaveKitCommandAlgoEnable();
  }

  failure = ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v9 + 40);
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = failure == 0;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      _ispExclaveKitCommandAlgoEnable();
    }

    v5 = 1;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_25497E638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z31_ispExclaveKitCommandAlgoEnablej_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChStop(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChStop();
    }

    return 3;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3802000000;
    v12 = __Block_byref_object_copy__1;
    v13 = __Block_byref_object_dispose__2;
    v2 = *(a1 + 524);
    v8 = v2;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChStop();
    }

    v3 = ispexclavekitshared_ekchannelstreamingcontrol_channelstop(&properties[70 * v2 + 116], &v8);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChStop();
    }

    failure = ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v10 + 40);
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = failure == 0;
    }

    if (v5)
    {
      channelStateUpdate(*(a1 + 524), 3);
      v6 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChStop();
      }

      v6 = 1;
    }

    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

void sub_25497E83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z26ispExclaveKitCommandChStopP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChConcurrentFlagSet(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChConcurrentFlagSet();
    }

    return 3;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3802000000;
    v12 = __Block_byref_object_copy__5;
    v13 = __Block_byref_object_dispose__6;
    v2 = *(a1 + 524);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChConcurrentFlagSet();
    }

    v3 = *(a1 + 528);
    v4 = ispexclavekitshared_ekchannelstreamingcontrol_channelconcurrentflagset(&properties[70 * v2 + 116]);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChConcurrentFlagSet();
    }

    failure = ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v10 + 40);
    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = failure == 0;
    }

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChConcurrentFlagSet();
      }

      v7 = 1;
    }

    _Block_object_dispose(&v9, 8);
  }

  return v7;
}

void sub_25497EA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

{
  v2 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v2;
  result = *(a2 + 72);
  v4 = *(a2 + 88);
  v5 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v5;
  *(a1 + 88) = v4;
  *(a1 + 72) = result;
  return result;
}

uint64_t ___Z39ispExclaveKitCommandChConcurrentFlagSetP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChConfigurationStatusRead(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChConfigurationStatusRead();
    }

    return 3;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3802000000;
    v12 = __Block_byref_object_copy__9;
    v13 = __Block_byref_object_dispose__10;
    v7 = *(a1 + 524);
    ConfigurationType = getConfigurationType(*(a1 + 528));
    v2 = *(a1 + 524);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChConfigurationStatusRead();
    }

    v3 = ispexclavekitshared_ekchannelstreamingcontrol_channelconfigurationstatusread(&properties[70 * v2 + 116], &v7);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChConfigurationStatusRead();
    }

    failure = ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v10 + 40);
    if (v3 || failure)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChConfigurationStatusRead();
      }

      v5 = 1;
    }

    else
    {
      v5 = 0;
      *(a1 + 532) = v10[48];
    }

    _Block_object_dispose(&v9, 8);
  }

  return v5;
}

void sub_25497EC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__9(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z45ispExclaveKitCommandChConfigurationStatusReadP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChAlgoEnable(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  if (channelStateGet(*(a1 + 524)) == 2)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChAlgoEnable();
    }

    goto LABEL_4;
  }

  v3 = 0;
  v69 = a1 + 528;
  v68 = a1;
  v4 = &properties[70 * *(a1 + 524)];
  v5 = v4 + 70;
  v70 = v4;
  v71 = v4 + 76;
  v6 = &unk_27F613A24;
  while (1)
  {
    v7 = *(v69 + v3);
    *(&properties[1] + v3) = v7;
    if (v7 == 1)
    {
      v8 = qword_27F6132E0;
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
        v73 = 1024;
        v74 = 271;
        v75 = 1024;
        v76 = v3;
        _os_log_debug_impl(&dword_25497B000, v8, OS_LOG_TYPE_DEBUG, "%s:%d - algoType: %d is enabled\n", buf, 0x18u);
      }

      v9 = (&algorithmTypeToServiceType + 76 * v3);
      if (*v9)
      {
        break;
      }
    }

LABEL_69:
    ++v3;
    v6 += 76;
    if (v3 == 255)
    {
      v65 = channelStateGet(*(v68 + 524));
      if ((v65 - 2) >= 2)
      {
        if (v65 != 1)
        {
          if (!v65)
          {
            goto LABEL_80;
          }

          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
          }

LABEL_4:
          result = 2;
          goto LABEL_76;
        }

        result = os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG);
        if (!result)
        {
          goto LABEL_76;
        }

        ispExclaveKitCommandChAlgoEnable();
LABEL_145:
        result = 0;
        goto LABEL_76;
      }

LABEL_80:
      if (ispExclaveGetServiceTypeFromChIdx(*(v68 + 524)) == -1)
      {
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
        {
          ispExclaveKitCommandChAlgoEnable();
        }

        result = 3;
        goto LABEL_76;
      }

      v66 = _ispExclaveKitCommandAlgoEnable(*(v68 + 524));
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
      {
        ispExclaveKitCommandChAlgoEnable();
        if (!v66)
        {
          goto LABEL_145;
        }
      }

      else if (!v66)
      {
        goto LABEL_145;
      }

      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChAlgoEnable();
      }

      goto LABEL_75;
    }
  }

  v10 = 0;
  while (1)
  {
    v11 = *&v6[4 * v10];
    v12 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
      v73 = 1024;
      v74 = 275;
      v75 = 1024;
      v76 = v3;
      v77 = 1024;
      v78 = v10;
      v79 = 1024;
      LODWORD(v80) = v11;
      _os_log_debug_impl(&dword_25497B000, v12, OS_LOG_TYPE_DEBUG, "%s:%d - algoType: %d is associated with serviceType[%d]: %d\n", buf, 0x24u);
    }

    if (*(v5 + v11))
    {
      goto LABEL_68;
    }

    v13 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
      v73 = 1024;
      v74 = 278;
      v75 = 1024;
      v76 = v11;
      _os_log_debug_impl(&dword_25497B000, v13, OS_LOG_TYPE_DEBUG, "%s:%d - serviceType: %d was not created, creating endpoint\n", buf, 0x18u);
    }

    v14 = algorithmTypeToConclaveName[v3];
    v15 = &v71[2 * v11];
    v16 = tb_conclave_endpoint_for_service();
    if (v16)
    {
      break;
    }

    v17 = *v15;
    if (!*v15)
    {
      break;
    }

    v18 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
      v73 = 1024;
      v74 = 295;
      v75 = 1024;
      v76 = v11;
      v77 = 1024;
      v78 = 0;
      v79 = 2048;
      v80 = v17;
      _os_log_debug_impl(&dword_25497B000, v18, OS_LOG_TYPE_DEBUG, "%s:%d - [Conclave] tb_conclave_endpoint_for_service is success (EKType:%d / tberr:%u / mConclaveEndpoint:%lu)\n\n", buf, 0x28u);
    }

    switch(v11)
    {
      case 2:
        v19 = *v15;
        v20 = ispexclavekitshared_ekstreamingcontrol__init(v70 + 57);
        v21 = qword_27F6132E0;
        if (v20)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
            v21 = *buf;
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
          }

          goto LABEL_75;
        }

        if (!os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_67;
        }

        *buf = 136315394;
        *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
        v73 = 1024;
        v74 = 308;
        v22 = v21;
        v23 = "%s:%d - ISP_EXCLAVE_KIT_SERVICE_TYPE_STREAMING_CONTROL handler is created\n";
        goto LABEL_66;
      case 3:
        v47 = *v15;
        v48 = ispexclavekitshared_ekchannelstreamingcontrol__init(v70 + 58);
        v49 = qword_27F6132E0;
        if (v48)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
            v49 = *buf;
          }

          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
          }

          goto LABEL_75;
        }

        if (!os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_67;
        }

        *buf = 136315394;
        *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
        v73 = 1024;
        v74 = 321;
        v22 = v49;
        v23 = "%s:%d - ISP_EXCLAVE_KIT_SERVICE_TYPE_CHANNEL_STREAMING_CONTROL handler is created\n";
        goto LABEL_66;
      case 4:
        v44 = *v15;
        v45 = ispexclavekitshared_ekispmanager__init(v70 + 61);
        v46 = qword_27F6132E0;
        if (v45)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
            v46 = *buf;
          }

          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
          }

          goto LABEL_75;
        }

        if (!os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_67;
        }

        *buf = 136315394;
        *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
        v73 = 1024;
        v74 = 334;
        v22 = v46;
        v23 = "%s:%d - ISP_EXCLAVE_KIT_SERVICE_TYPE_ISP_MANAGER handler is created\n";
        goto LABEL_66;
      case 5:
        v40 = *v15;
        v41 = ispexclavekitdebugmodule_ekdebug__init(v70 + 65);
        v42 = qword_27F6132E0;
        if (v41)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
            v42 = *buf;
          }

          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
          }

          goto LABEL_75;
        }

        if (!os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_67;
        }

        *buf = 136315394;
        *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
        v73 = 1024;
        v74 = 348;
        v22 = v42;
        v23 = "%s:%d - ISP_EXCLAVE_KIT_SERVICE_TYPE_DEBUG handler is created\n";
        goto LABEL_66;
      case 6:
        v27 = *v15;
        v28 = anstmodule_ekanst__init(v70 + 59);
        v29 = qword_27F6132E0;
        if (v28)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
            v29 = *buf;
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
          }

          goto LABEL_75;
        }

        if (!os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_67;
        }

        *buf = 136315394;
        *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
        v73 = 1024;
        v74 = 361;
        v22 = v29;
        v23 = "%s:%d - ISP_EXCLAVE_KIT_SERVICE_TYPE_ANST handler is created\n";
        goto LABEL_66;
      case 7:
        v34 = *v15;
        v35 = andkmodule_ekandk__init(v70 + 62);
        v36 = qword_27F6132E0;
        if (v35)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
            v36 = *buf;
          }

          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
          }

          goto LABEL_75;
        }

        if (!os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_67;
        }

        *buf = 136315394;
        *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
        v73 = 1024;
        v74 = 374;
        v22 = v36;
        v23 = "%s:%d - ISP_EXCLAVE_KIT_SERVICE_TYPE_ANDK handler is created\n";
        goto LABEL_66;
      case 8:
        v50 = *v15;
        v51 = facekitmodule_ekfacekit__init(v70 + 68);
        v52 = qword_27F6132E0;
        if (v51)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
            v52 = *buf;
          }

          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
          }

          goto LABEL_75;
        }

        if (!os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_67;
        }

        *buf = 136315394;
        *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
        v73 = 1024;
        v74 = 387;
        v22 = v52;
        v23 = "%s:%d - ISP_EXCLAVE_KIT_SERVICE_TYPE_FACEKIT handler is created\n";
        goto LABEL_66;
      case 11:
        v53 = *v15;
        v54 = autoexposuremodule_ekautoexposure__init(v70 + 60);
        v55 = qword_27F6132E0;
        if (v54)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
            v55 = *buf;
          }

          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
          }

          goto LABEL_75;
        }

        if (!os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_67;
        }

        *buf = 136315394;
        *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
        v73 = 1024;
        v74 = 442;
        v22 = v55;
        v23 = "%s:%d - ISP_EXCLAVE_KIT_SERVICE_TYPE_AUTO_EXPOSURE handler is created\n";
        goto LABEL_66;
      case 12:
        v59 = qword_27F6132E0;
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
          v73 = 1024;
          v74 = 447;
          _os_log_error_impl(&dword_25497B000, v59, OS_LOG_TYPE_ERROR, "%s:%d - TBD\n", buf, 0x12u);
        }

        v60 = *v15;
        v61 = attentionawarenessmodule_ekattentionawareness__init(v70 + 63);
        v62 = qword_27F6132E0;
        if (v61)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
            v62 = *buf;
          }

          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
          }

          goto LABEL_75;
        }

        if (!os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_67;
        }

        *buf = 136315394;
        *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
        v73 = 1024;
        v74 = 457;
        v22 = v62;
        v23 = "%s:%d - ISP_EXCLAVE_KIT_SERVICE_TYPE_ATTENTION_AWARENESS handler is created\n";
        goto LABEL_66;
      case 13:
        v56 = *v15;
        v57 = motiontowakemodule_ekmotiontowake__init(v70 + 67);
        v58 = qword_27F6132E0;
        if (v57)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
            v58 = *buf;
          }

          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
          }

          goto LABEL_75;
        }

        if (!os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_67;
        }

        *buf = 136315394;
        *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
        v73 = 1024;
        v74 = 485;
        v22 = v58;
        v23 = "%s:%d - ISP_EXCLAVE_KIT_SERVICE_TYPE_MOTION_TO_WAKE handler is created\n";
        goto LABEL_66;
      case 14:
        v24 = *v15;
        v25 = eyereliefmodule_ekeyerelief__init(v70 + 56);
        v26 = qword_27F6132E0;
        if (v25)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
            v26 = *buf;
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
          }

          goto LABEL_75;
        }

        if (!os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_67;
        }

        *buf = 136315394;
        *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
        v73 = 1024;
        v74 = 498;
        v22 = v26;
        v23 = "%s:%d - ISP_EXCLAVE_KIT_SERVICE_TYPE_EYE_RELIEF handler is created\n";
        goto LABEL_66;
      case 15:
        v37 = *v15;
        v38 = ispexclavekithardwaredefaultconfig_ekhardwaredefaultconfig__init(v70 + 66);
        v39 = qword_27F6132E0;
        if (v38)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
            v39 = *buf;
          }

          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
          }

          goto LABEL_75;
        }

        if (!os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_67;
        }

        *buf = 136315394;
        *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
        v73 = 1024;
        v74 = 512;
        v22 = v39;
        v23 = "%s:%d - ISP_EXCLAVE_KIT_SERVICE_TYPE_HARDWARE_DEFAULT_CONFIG handler is created\n";
        goto LABEL_66;
      case 17:
        v30 = qword_27F6132E0;
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
          v73 = 1024;
          v74 = 462;
          _os_log_error_impl(&dword_25497B000, v30, OS_LOG_TYPE_ERROR, "%s:%d - TBD\n", buf, 0x12u);
        }

        v31 = *v15;
        v32 = fidflowmodule_ekfidflow__init(v70 + 64);
        v33 = qword_27F6132E0;
        if (v32)
        {
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
            v33 = *buf;
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChAlgoEnable();
          }

          goto LABEL_75;
        }

        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
          v73 = 1024;
          v74 = 472;
          v22 = v33;
          v23 = "%s:%d - ISP_EXCLAVE_KIT_SERVICE_TYPE_FID_FLOW handler is created\n";
LABEL_66:
          _os_log_debug_impl(&dword_25497B000, v22, OS_LOG_TYPE_DEBUG, v23, buf, 0x12u);
        }

LABEL_67:
        *(v5 + v11) = 1;
        break;
      default:
        v43 = qword_27F6132E0;
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
          v73 = 1024;
          v74 = 517;
          v75 = 1024;
          v76 = v11;
          _os_log_error_impl(&dword_25497B000, v43, OS_LOG_TYPE_ERROR, "%s:%d - service: %d is not handled properly\n", buf, 0x18u);
        }

        goto LABEL_67;
    }

LABEL_68:
    if (++v10 >= *v9)
    {
      goto LABEL_69;
    }
  }

  v63 = qword_27F6132E0;
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    v67 = *v15;
    *buf = 136316162;
    *&buf[4] = "ispExclaveKitCommandChAlgoEnable";
    v73 = 1024;
    v74 = 287;
    v75 = 1024;
    v76 = v11;
    v77 = 1024;
    v78 = v16;
    v79 = 2048;
    v80 = v67;
    _os_log_error_impl(&dword_25497B000, v63, OS_LOG_TYPE_ERROR, "%s:%d - [Conclave] tb_conclave_endpoint_for_service failed (EKType:%d / tberr:%u / mConclaveEndpoint:%lu)\n\n", buf, 0x28u);
    v63 = qword_27F6132E0;
  }

  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChAlgoEnable();
  }

LABEL_75:
  result = 1;
LABEL_76:
  v64 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ispExclaveKitCommandChOn(unsigned int *a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(a1[131]) == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChOn();
    }

    return 3;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3802000000;
    v12 = __Block_byref_object_copy__13;
    v13 = __Block_byref_object_dispose__14;
    v2 = a1[131];
    channelStateUpdate(v2, 0);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChOn();
    }

    v3 = ispexclavekitshared_ekstreamingcontrol_on(&properties[70 * v2 + 114]);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChOn();
    }

    failure = ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v10 + 40);
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = failure == 0;
    }

    if (v5)
    {
      byte_27F6136E8 = v10[48];
      v7 = qword_27F6132E0;
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
      {
        ispExclaveKitCommandChOn();
        v7 = v14;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        ispExclaveKitCommandChOn(a1);
      }

      v6 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChOn();
      }

      v6 = 1;
    }

    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

void sub_25497FE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__13(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z24ispExclaveKitCommandChOnP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChOff(unsigned int *a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(a1[131]) == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChOff();
    }

    return 3;
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3802000000;
    v11 = __Block_byref_object_copy__17;
    v12 = __Block_byref_object_dispose__18;
    v2 = a1[131];
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChOff();
    }

    v3 = ispexclavekitshared_ekstreamingcontrol_off(&properties[70 * v2 + 114]);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChOff();
    }

    failure = ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v9 + 40);
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = failure == 0;
    }

    if (v5)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
      {
        ispExclaveKitCommandChOff(a1);
      }

      channelStateUpdate(a1[131], 1);
      v6 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChOff();
      }

      v6 = 1;
    }

    _Block_object_dispose(&v8, 8);
  }

  return v6;
}

void sub_254980048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__17(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z25ispExclaveKitCommandChOffP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChFrameRateControl(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChFrameRateControl();
    }

    return 3;
  }

  else if (channelStateGet(*(a1 + 524)) == 1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChFrameRateControl((a1 + 524));
    }

    return 2;
  }

  else
  {
    v3 = *(a1 + 524);
    v12[0] = v3;
    v12[2] = *(a1 + 784);
    v12[1] = _generateIdlAlgoEnableBitMap((a1 + 528));
    v7 = 0;
    v8 = &v7;
    v9 = 0x3802000000;
    v10 = __Block_byref_object_copy__21;
    v11 = __Block_byref_object_dispose__22;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChFrameRateControl();
    }

    v4 = ispexclavekitshared_ekchannelstreamingcontrol_channelsetalgoframerate(&properties[70 * v3 + 116], v12);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChFrameRateControl();
    }

    failure = ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v8 + 40);
    if (v4 || failure)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChFrameRateControl();
      }

      v2 = 1;
    }

    else
    {
      *(a1 + 788) = 1;
      *(a1 + 792) = *(v8 + 12);
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
      {
        ispExclaveKitCommandChFrameRateControl(a1);
      }

      v2 = 0;
    }

    _Block_object_dispose(&v7, 8);
  }

  return v2;
}

void sub_2549802DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__21(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z38ispExclaveKitCommandChFrameRateControlP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChInfoSet(uint64_t a1)
{
  v53[18] = *MEMORY[0x277D85DE8];
  v52 = 0;
  v53[0] = &v52;
  v53[1] = 0x9802000000;
  v53[2] = __Block_byref_object_copy__25;
  v53[3] = __Block_byref_object_dispose__26;
  v2 = *(a1 + 524);
  v31 = v2;
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
  {
    ispExclaveKitCommandChInfoSet();
  }

  v3 = ispexclavekitshared_ekispmanager_channelinformationget(&properties[70 * v2 + 122], &v31);
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
  {
    ispExclaveKitCommandChInfoSet();
  }

  if (v3)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChInfoSet();
    }
  }

  else if (*(v53[0] + 148) < 0x15u)
  {
    v4 = *(a1 + 564);
    if (v4 == 255 || *(v53[0] + 72) == v4)
    {
      v5 = *(a1 + 592);
      if (*(v53[0] + 100) == v5 && *(v53[0] + 104) == *(a1 + 596) && *(v53[0] + 108) == *(a1 + 600) && *(v53[0] + 112) == *(a1 + 604) && *(v53[0] + 116) == *(a1 + 608) && *(v53[0] + 120) == *(a1 + 612) && *(v53[0] + 124) == *(a1 + 616) && *(v53[0] + 128) == *(a1 + 620) && *(v53[0] + 132) == *(a1 + 624))
      {
        v19 = *(a1 + 628);
        if (*(v53[0] + 136) == v19 && *(v53[0] + 140) == *(a1 + 632) && *(v53[0] + 144) == *(a1 + 636))
        {
          if (*(v53[0] + 52) == *(a1 + 536))
          {
            if (*(a1 + 532) == *(v53[0] + 48))
            {
              v23 = *(a1 + 556);
              if (*(v53[0] + 64) == v23 && *(v53[0] + 68) == *(a1 + 560))
              {
                v24 = *(a1 + 548);
                if (*(v53[0] + 56) == v24 && *(v53[0] + 60) == *(a1 + 552))
                {
                  v8 = 0;
                  goto LABEL_31;
                }

                v28 = qword_27F6132E0;
                if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
                {
                  v30 = *(a1 + 552);
                  *buf = 136315906;
                  *&buf[4] = "ispExclaveKitCommandChInfoSet";
                  v33 = 1024;
                  v34 = 795;
                  v35 = 1024;
                  *v36 = v24;
                  *&v36[4] = 1024;
                  *&v36[6] = v30;
                  _os_log_error_impl(&dword_25497B000, v28, OS_LOG_TYPE_ERROR, "%s:%d - ERROR: Invalid window percentage in Ch info: %u %u\n", buf, 0x1Eu);
                  v28 = qword_27F6132E0;
                }

                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  ispExclaveKitCommandChInfoSet(v53);
                }
              }

              else
              {
                v27 = qword_27F6132E0;
                if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
                {
                  v29 = *(a1 + 560);
                  *buf = 136315906;
                  *&buf[4] = "ispExclaveKitCommandChInfoSet";
                  v33 = 1024;
                  v34 = 785;
                  v35 = 1024;
                  *v36 = v23;
                  *&v36[4] = 1024;
                  *&v36[6] = v29;
                  _os_log_error_impl(&dword_25497B000, v27, OS_LOG_TYPE_ERROR, "%s:%d - ERROR: Invalid lenslimitedocshift in Ch info: %d %d\n", buf, 0x1Eu);
                  v27 = qword_27F6132E0;
                }

                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  ispExclaveKitCommandChInfoSet(v53);
                }
              }
            }

            else
            {
              v26 = qword_27F6132E0;
              if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
              {
                ispExclaveKitCommandChInfoSet();
                v26 = *buf;
              }

              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                ispExclaveKitCommandChInfoSet(v53);
              }
            }
          }

          else
          {
            v25 = qword_27F6132E0;
            if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
            {
              ispExclaveKitCommandChInfoSet();
              v25 = *buf;
            }

            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              ispExclaveKitCommandChInfoSet(v53);
            }
          }
        }

        else
        {
          v20 = qword_27F6132E0;
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            v21 = *(a1 + 632);
            v22 = *(a1 + 636);
            *buf = 136316162;
            *&buf[4] = "ispExclaveKitCommandChInfoSet";
            v33 = 1024;
            v34 = 760;
            v35 = 2048;
            *v36 = v19;
            *&v36[8] = 2048;
            v37 = v21;
            v38 = 2048;
            v39 = v22;
            _os_log_error_impl(&dword_25497B000, v20, OS_LOG_TYPE_ERROR, "%s:%d - ERROR: Invalid extrinsicstranslation in Ch info: [%f %f %f] \n", buf, 0x30u);
            v20 = qword_27F6132E0;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChInfoSet(v53);
          }
        }
      }

      else
      {
        v6 = qword_27F6132E0;
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
        {
          v11 = *(a1 + 596);
          v12 = *(a1 + 600);
          v13 = *(a1 + 604);
          v14 = *(a1 + 608);
          v15 = *(a1 + 612);
          v16 = *(a1 + 616);
          v17 = *(a1 + 620);
          v18 = *(a1 + 624);
          *buf = 136317698;
          *&buf[4] = "ispExclaveKitCommandChInfoSet";
          v33 = 1024;
          v34 = 745;
          v35 = 2048;
          *v36 = v5;
          *&v36[8] = 2048;
          v37 = v11;
          v38 = 2048;
          v39 = v12;
          v40 = 2048;
          v41 = v13;
          v42 = 2048;
          v43 = v14;
          v44 = 2048;
          v45 = v15;
          v46 = 2048;
          v47 = v16;
          v48 = 2048;
          v49 = v17;
          v50 = 2048;
          v51 = v18;
          _os_log_error_impl(&dword_25497B000, v6, OS_LOG_TYPE_ERROR, "%s:%d - ERROR: Invalid extrinsicsrotation in Ch info: [%f %f %f %f %f %f %f %f %f]\n", buf, 0x6Cu);
          v6 = qword_27F6132E0;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          ispExclaveKitCommandChInfoSet(v53);
        }
      }
    }

    else
    {
      v7 = qword_27F6132E0;
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChInfoSet();
        v7 = *buf;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChInfoSet(v53);
      }
    }
  }

  else if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChInfoSet();
  }

  v8 = 1;
LABEL_31:
  _Block_object_dispose(&v52, 8);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

__n128 __Block_byref_object_copy__25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = v2;
  result = *(a2 + 88);
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  *(a1 + 88) = result;
  return result;
}

__n128 ___Z29ispExclaveKitCommandChInfoSetP20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  v5 = *(a2 + 64);
  *(v2 + 88) = *(a2 + 48);
  *(v2 + 136) = v4;
  *(v2 + 120) = v3;
  *(v2 + 104) = v5;
  result = *a2;
  v7 = *(a2 + 16);
  *(v2 + 72) = *(a2 + 32);
  *(v2 + 56) = v7;
  *(v2 + 40) = result;
  return result;
}

uint64_t ispExclaveKitCommandChStart(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3802000000;
  v7[3] = __Block_byref_object_copy__29;
  v7[4] = __Block_byref_object_dispose__30;
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChStart();
    }

    v3 = 3;
    goto LABEL_9;
  }

  v2 = (a1 + 524);
  if (_ispExclaveKitCommandAlgoEnable(*(a1 + 524)))
  {
LABEL_3:
    v3 = 1;
    goto LABEL_9;
  }

  v3 = _ispExclaveKitCommandChAdConfigSet(*v2);
  if (!v3)
  {
    v3 = _ispExclaveKitCommandChFacekitConfigSetV2(*v2);
    if (!v3)
    {
      v6 = *v2;
      v8 = *v2;
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
      {
        ispExclaveKitCommandChStart();
      }

      v5 = ispexclavekitshared_ekchannelstreamingcontrol_channelstart(&properties[70 * v6 + 116], &v8);
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
      {
        ispExclaveKitCommandChStart();
        if (v5)
        {
LABEL_14:
          if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
          {
            ispExclaveKitCommandChStart();
          }

          goto LABEL_3;
        }
      }

      else if (v5)
      {
        goto LABEL_14;
      }

      channelStateUpdate(*v2, 2);
      v3 = 0;
    }
  }

LABEL_9:
  _Block_object_dispose(v7, 8);
  return v3;
}

void sub_254980C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__29(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z27ispExclaveKitCommandChStartP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChFidSessionEnter(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChFidSessionEnter();
    }

    v4 = 3;
  }

  else
  {
    v2 = *(a1 + 524);
    v9 = v2;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3802000000;
    v8[3] = __Block_byref_object_copy__33;
    v8[4] = __Block_byref_object_dispose__34;
    v3 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "ispExclaveKitCommandChFidSessionEnter";
      v12 = 1024;
      v13 = 884;
      _os_log_impl(&dword_25497B000, v3, OS_LOG_TYPE_DEFAULT, "%s:%d - [EK] Run Fid Session Enter\n", buf, 0x12u);
    }

    v4 = fidflowmodule_ekfidflow_channelfidsessionenter(&properties[70 * v2 + 128], &v9);
    v5 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "ispExclaveKitCommandChFidSessionEnter";
      v12 = 1024;
      v13 = 888;
      _os_log_impl(&dword_25497B000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d - [EK] Run Fid Session Enter Done!\n", buf, 0x12u);
    }

    if (v4)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChFidSessionEnter();
      }

      v4 = 1;
    }

    _Block_object_dispose(v8, 8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

__n128 __Block_byref_object_copy__33(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z37ispExclaveKitCommandChFidSessionEnterP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChFidSessionExit(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    v2 = *(a1 + 524);
    v6 = v2;
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x3802000000;
    v5[3] = __Block_byref_object_copy__37;
    v5[4] = __Block_byref_object_dispose__38;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChFidSessionExit();
    }

    v3 = fidflowmodule_ekfidflow_channelfidsessionexit(&properties[70 * v2 + 128], &v6);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChFidSessionExit();
      if (v3)
      {
        goto LABEL_6;
      }
    }

    else if (v3)
    {
LABEL_6:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChFidSessionExit();
      }

      v3 = 1;
    }

    _Block_object_dispose(v5, 8);
    return v3;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChFidSessionExit();
  }

  return 3;
}

void sub_2549810D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__37(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z36ispExclaveKitCommandChFidSessionExitP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t *OUTLINED_FUNCTION_11@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

unsigned int *OUTLINED_FUNCTION_13@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t ispExclaveKitCommandChFidSessionStart(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    v2 = *(a1 + 524);
    v8 = v2;
    v3 = *(a1 + 528);
    if (v3 >= 4)
    {
      LOBYTE(v3) = 0;
    }

    v9 = v3;
    v4 = *(a1 + 532);
    if (v4 >= 4)
    {
      LOBYTE(v4) = 0;
    }

    v10 = v4;
    v11 = *(a1 + 536);
    v12 = *(a1 + 540);
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x3802000000;
    v7[3] = __Block_byref_object_copy__3;
    v7[4] = __Block_byref_object_dispose__3;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChFidSessionStart();
    }

    v5 = fidflowmodule_ekfidflow_channelfidsessionstart(&properties[70 * v2 + 128], &v8);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChFidSessionStart();
      if (v5)
      {
        goto LABEL_10;
      }
    }

    else if (v5)
    {
LABEL_10:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChFidSessionStart();
      }

      v5 = 1;
    }

    _Block_object_dispose(v7, 8);
    return v5;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChFidSessionStart();
  }

  return 3;
}

void sub_25498137C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z37ispExclaveKitCommandChFidSessionStartP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChFidSessionStop(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    v2 = *(a1 + 524);
    v6 = v2;
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x3802000000;
    v5[3] = __Block_byref_object_copy__1_0;
    v5[4] = __Block_byref_object_dispose__2_0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChFidSessionStop();
    }

    v3 = fidflowmodule_ekfidflow_channelfidsessionstop(&properties[70 * v2 + 128], &v6);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChFidSessionStop();
      if (v3)
      {
        goto LABEL_6;
      }
    }

    else if (v3)
    {
LABEL_6:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChFidSessionStop();
      }

      v3 = 1;
    }

    _Block_object_dispose(v5, 8);
    return v3;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChFidSessionStop();
  }

  return 3;
}

void sub_254981550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z36ispExclaveKitCommandChFidSessionStopP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChFidBracketCapture(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    v2 = *(a1 + 524);
    v15 = v2;
    v16 = *(a1 + 528);
    v3 = (a1 + 540);
    for (i = 540; i != 660; i += 12)
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      if (v5 == 2)
      {
        v7 = 2;
      }

      else
      {
        v7 = v5 == 1;
      }

      v8 = &v15 + i;
      *(&v15 + i - 532) = v7;
      if ((v6 - 1) >= 0xD)
      {
        v9 = 0;
      }

      else
      {
        v9 = v6;
      }

      *(v8 - 132) = v9;
      v11 = *v3;
      v3 += 3;
      v10 = v11;
      if (v11 >= 4)
      {
        v10 = 1;
      }

      *(v8 - 131) = v10;
    }

    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3802000000;
    v14[3] = __Block_byref_object_copy__5_0;
    v14[4] = __Block_byref_object_dispose__6_0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChFidBracketCapture();
    }

    v12 = fidflowmodule_ekfidflow_channelfidbracketcapture(&properties[70 * v2 + 128], &v15);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChFidBracketCapture();
      if (v12)
      {
        goto LABEL_16;
      }
    }

    else if (v12)
    {
LABEL_16:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChFidBracketCapture();
      }

      v12 = 1;
    }

    _Block_object_dispose(v14, 8);
    return v12;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChFidBracketCapture();
  }

  return 3;
}

void sub_254981794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__5_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z39ispExclaveKitCommandChFidBracketCaptureP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

void defaultTimerCallback(ISPExclaveKitTimer *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = qword_27F6132E0;
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315650;
    v5 = "defaultTimerCallback";
    v6 = 1024;
    v7 = 12;
    v8 = 2080;
    v9 = a1 + 96;
    _os_log_impl(&dword_25497B000, v2, OS_LOG_TYPE_DEFAULT, "%s:%d - calling default timer callback. note: %s\n", &v4, 0x1Cu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void ISPExclaveKitTimer::ISPExclaveKitTimer(ISPExclaveKitTimer *this)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 8) = 0;
  *(this + 9) = 0;
  v2 = (this + 64);
  *(this + 10) = 0;
  v3 = dispatch_queue_create("ek_timer", 0);
  v2[1] = v3;
  if (!v3)
  {
    v4 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315394;
      v8 = "ISPExclaveKitTimer";
      v9 = 1024;
      v10 = 18;
      _os_log_fault_impl(&dword_25497B000, v4, OS_LOG_TYPE_FAULT, "%s:%d - invalid queue\n", &v7, 0x12u);
      v3 = *(this + 9);
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  *v2 = v5;
  if (!v5 && os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_FAULT))
  {
    ISPExclaveKitTimer::ISPExclaveKitTimer();
  }

  *(this + 10) = 0;
  *(this + 11) = defaultTimerCallback;
  ISPExclaveKitTimer::updateState(this, 0);
  pthread_mutexattr_init(&v7);
  pthread_mutexattr_settype(&v7, 2);
  pthread_mutex_init(this, &v7);
  pthread_mutexattr_destroy(&v7);
  *(this + 58) = 0;
  v6 = *MEMORY[0x277D85DE8];
}

void ISPExclaveKitTimer::updateState(ISPExclaveKitTimer *this, int a2)
{
  v2 = a2;
  if (*(this + 228) == a2 && os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_FAULT))
  {
    ISPExclaveKitTimer::updateState();
  }

  *(this + 228) = v2;
}

void ISPExclaveKitTimer::~ISPExclaveKitTimer(pthread_mutex_t *this)
{
  if (this[3].__opaque[28] == 1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_FAULT))
    {
      ISPExclaveKitTimer::~ISPExclaveKitTimer();
    }

    ISPExclaveKitTimer::updateState(this, 0);
  }

  sig = this[1].__sig;
  if (sig)
  {
    dispatch_source_cancel(sig);
    ++*&this[3].__opaque[32];
    dispatch_resume(this[1].__sig);
    ISPExclaveKitTimer::_releaseTimer(this);
    this[1].__sig = 0;
  }

  v3 = *this[1].__opaque;
  if (v3)
  {
    dispatch_release(v3);
    *this[1].__opaque = 0;
  }

  pthread_mutex_destroy(this);
}

void ISPExclaveKitTimer::_releaseTimer(ISPExclaveKitTimer *this)
{
  if (*(this + 58) != 1)
  {
    v3 = *(this + 58);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ISPExclaveKitTimer::_releaseTimer();
    }

    __assert_rtn("_releaseTimer", "ISPExclaveKitTimer.cpp", 83, "false");
  }

  v2 = *(this + 8);

  dispatch_release(v2);
}

void ISPExclaveKitTimer::_suspendTimer(ISPExclaveKitTimer *this)
{
  v2 = *(this + 58);
  if (v2 < 0)
  {
    v4 = *(this + 58);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ISPExclaveKitTimer::_suspendTimer();
    }

    __assert_rtn("_suspendTimer", "ISPExclaveKitTimer.cpp", 68, "false");
  }

  *(this + 58) = v2 - 1;
  v3 = *(this + 8);

  dispatch_suspend(v3);
}

uint64_t ISPExclaveKitTimer::updatePeriod(pthread_mutex_t *this, uint64_t a2)
{
  pthread_mutex_lock(this);
  *&this[1].__opaque[8] = a2;

  return pthread_mutex_unlock(this);
}

uint64_t ISPExclaveKitTimer::updateInfo(pthread_mutex_t *this, const char *a2, int a3)
{
  pthread_mutex_lock(this);
  strcpy(&this[1].__opaque[24], a2);
  *&this[3].__opaque[24] = a3;

  return pthread_mutex_unlock(this);
}

uint64_t ISPExclaveKitTimer::registerCallback(pthread_mutex_t *this, void (*a2)(ISPExclaveKitTimer *))
{
  pthread_mutex_lock(this);
  *&this[1].__opaque[16] = a2;

  return pthread_mutex_unlock(this);
}

uint64_t ISPExclaveKitTimer::startTimer(ISPExclaveKitTimer *this)
{
  v13 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(this);
  if (!*(this + 9) && os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_FAULT))
  {
    ISPExclaveKitTimer::startTimer();
  }

  v2 = *(this + 8);
  if (!v2)
  {
    v3 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v10 = "startTimer";
      v11 = 1024;
      v12 = 130;
      _os_log_fault_impl(&dword_25497B000, v3, OS_LOG_TYPE_FAULT, "%s:%d - invalid timer\n", buf, 0x12u);
      v2 = *(this + 8);
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = dispatch_time(0, 1000000 * *(this + 10));
  dispatch_source_set_timer(v2, v4, 1000000 * *(this + 10), 0xF4240uLL);
  v5 = *(this + 8);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___ZN18ISPExclaveKitTimer10startTimerEv_block_invoke;
  handler[3] = &__block_descriptor_tmp_8;
  handler[4] = this;
  dispatch_source_set_event_handler(v5, handler);
  ++*(this + 58);
  dispatch_resume(*(this + 8));
  ISPExclaveKitTimer::updateState(this, 1);
  result = pthread_mutex_unlock(this);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ISPExclaveKitTimer::stopTimer(pthread_mutex_t *this)
{
  pthread_mutex_lock(this);
  if (!*this[1].__opaque && os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_FAULT))
  {
    ISPExclaveKitTimer::stopTimer();
  }

  if (!this[1].__sig && os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_FAULT))
  {
    ISPExclaveKitTimer::stopTimer();
  }

  ISPExclaveKitTimer::_suspendTimer(this);
  ISPExclaveKitTimer::updateState(this, 0);
  return pthread_mutex_unlock(this);
}

void ISPExclaveKitTimerList::ISPExclaveKitTimerList(ISPExclaveKitTimerList *this)
{
  v2 = 0;
  v7 = *MEMORY[0x277D85DE8];
  do
  {
    ISPExclaveKitTimer::ISPExclaveKitTimer((this + v2 + 16));
    v2 += 256;
  }

  while (v2 != 0x8000);
  v3 = 0;
  v4 = this + 8;
  do
  {
    *v4 = 0;
    *(v4 - 1) = v3++;
    v4 += 256;
  }

  while (v3 != 128);
  pthread_mutexattr_init(&v6);
  pthread_mutexattr_settype(&v6, 2);
  pthread_mutex_init(this + 512, &v6);
  pthread_mutexattr_destroy(&v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_254982090(_Unwind_Exception *a1)
{
  v3 = (v1 + 32528);
  v4 = -32768;
  do
  {
    ISPExclaveKitTimer::~ISPExclaveKitTimer(v3);
    v3 = (v5 - 256);
    v4 += 256;
  }

  while (v4);
  _Unwind_Resume(a1);
}

void ISPExclaveKitTimerList::~ISPExclaveKitTimerList(pthread_mutex_t *this)
{
  v2 = 0;
  v13 = *MEMORY[0x277D85DE8];
  opaque = this->__opaque;
  do
  {
    if (*opaque == 1)
    {
      v4 = qword_27F6132E0;
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        v8 = "~ISPExclaveKitTimerList";
        v9 = 1024;
        v10 = 199;
        v11 = 2048;
        v12 = v2;
        _os_log_fault_impl(&dword_25497B000, v4, OS_LOG_TYPE_FAULT, "%s:%d - timer[%zu] is still in use while delete\n", buf, 0x1Cu);
      }

      *opaque = 0;
    }

    ++v2;
    opaque += 256;
  }

  while (v2 != 128);
  pthread_mutex_destroy(this + 512);
  for (i = 32528; i != -240; i -= 256)
  {
    ISPExclaveKitTimer::~ISPExclaveKitTimer((this + i));
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_254982230(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

pthread_mutex_t *ISPExclaveKitTimerList::getTimer(pthread_mutex_t *this)
{
  pthread_mutex_lock(this + 512);
  v2 = 128;
  v3 = this;
  while ((v3->__opaque[0] & 1) != 0)
  {
    v3 += 4;
    if (!--v2)
    {
      v3 = 0;
      goto LABEL_6;
    }
  }

  v3->__opaque[0] = 1;
LABEL_6:
  pthread_mutex_unlock(this + 512);
  return v3;
}

uint64_t ISPExclaveKitTimerList::returnTimer(pthread_mutex_t *a1, uint64_t *a2)
{
  if (!a2)
  {
    ISPExclaveKitTimerList::returnTimer();
  }

  v3 = *a2;
  pthread_mutex_lock(a1 + 512);
  v4 = &a1[4 * v3];
  if ((v4->__opaque[0] & 1) == 0 && os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_FAULT))
  {
    ISPExclaveKitTimerList::returnTimer();
  }

  if (v4[3].__opaque[44] == 1 && os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_FAULT))
  {
    ISPExclaveKitTimerList::returnTimer();
  }

  v4->__opaque[0] = 0;
  return pthread_mutex_unlock(a1 + 512);
}

uint64_t _ispExclaveKitCommandChAdConfigSet(int a1)
{
  v1 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v2 = &properties[70 * a1];
  v3 = 1;
  while (1)
  {
    v4 = v3;
    v5 = &properties[3 * v1];
    if (*(v5 + 1672))
    {
      attentionawarenessmodule_ekattentionawareness_channelupdateattentionconfig(v2 + 63, (v5 + 419));
      if ((v10[3] & 1) == 0)
      {
        break;
      }
    }

    v3 = 0;
    v1 = 1;
    if ((v4 & 1) == 0)
    {
      v6 = 0;
      goto LABEL_9;
    }
  }

  v7 = qword_27F6132E0;
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    _ispExclaveKitCommandChAdConfigSet(v1, v7);
  }

  v6 = 1;
LABEL_9:
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_2549824BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unsigned __int8 *___Z34_ispExclaveKitCommandChAdConfigSetj_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  result = facekitmodule_ekfacekit_channelrunkitfaceprocess__result_get_success(v5);
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

uint64_t ispExclaveKitCommandChAdConfigSet(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)))
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChAdConfigSet();
    }

    result = 3;
  }

  else
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = 3 * v3;
      v7 = &properties[v6];
      *(v7 + 1672) = 0;
      v8 = a1 + 528 + 4 * v6;
      if (*(v8 + 8) == 1)
      {
        if (*v8)
        {
          if (*v8 != 1)
          {
            v9 = qword_27F6132E0;
            if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v13 = "getAdSetField";
              v14 = 1024;
              v15 = 49;
              _os_log_error_impl(&dword_25497B000, v9, OS_LOG_TYPE_ERROR, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", buf, 0x12u);
            }
          }

          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        v7[419] = v10;
        *(v7 + 1680) = *(v8 + 4) != 0;
        *(v7 + 1672) = 1;
      }

      v4 = 0;
      v3 = 1;
    }

    while ((v5 & 1) != 0);
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ispExclaveKitCommandChRunAd(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)))
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChRunAd();
    }

    v2 = 3;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v8 = *(a1 + 524);
    v3 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChRunAd(v3, buf);
      v3 = *buf;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "ispExclaveKitCommandChRunAd";
      v14 = 1024;
      v15 = 325;
      _os_log_impl(&dword_25497B000, v3, OS_LOG_TYPE_DEFAULT, "%s:%d - [IR-EK] Run Attention Detection\n", buf, 0x12u);
    }

    v4 = attentionawarenessmodule_ekattentionawareness_channelrunattentiondetect(&properties[70 * *(a1 + 524) + 126], &v8);
    v5 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "ispExclaveKitCommandChRunAd";
      v14 = 1024;
      v15 = 328;
      _os_log_impl(&dword_25497B000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d - [IR-EK] Attention Detection Finished\n", buf, 0x12u);
    }

    if (v4)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChRunAd();
      }

      v2 = 1;
    }

    else if (*(v10 + 24))
    {
      v2 = 0;
    }

    else
    {
      v2 = 4;
    }

    _Block_object_dispose(&v9, 8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_254982918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z27ispExclaveKitCommandChRunAdP20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  *(v4 + 880) = 0;
  *(v4 + 848) = 0u;
  *(v4 + 864) = 0u;
  *(v4 + 816) = 0u;
  *(v4 + 832) = 0u;
  *(v4 + 784) = 0u;
  *(v4 + 800) = 0u;
  *(v4 + 752) = 0u;
  *(v4 + 768) = 0u;
  *(v4 + 720) = 0u;
  *(v4 + 736) = 0u;
  *(v4 + 688) = 0u;
  *(v4 + 704) = 0u;
  *(v4 + 656) = 0u;
  *(v4 + 672) = 0u;
  *(v4 + 624) = 0u;
  *(v4 + 640) = 0u;
  *(v4 + 592) = 0u;
  *(v4 + 608) = 0u;
  *(v4 + 560) = 0u;
  *(v4 + 576) = 0u;
  *(v4 + 528) = 0u;
  *(v4 + 544) = 0u;
  v5 = *(a2 + 80);
  if (v5 > 0x643FA57BEBB425D3)
  {
    if (v5 != 0x643FA57BEBB425D4)
    {
      if (v5 == 0x7CE0AE3EF231FCDCLL)
      {
        v6 = 2;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v6 = 1;
  }

  else
  {
    if (v5 != 0xE3995D86684768F7)
    {
      if (v5 == 0xF6549FD117FC2467)
      {
        v6 = 4;
        goto LABEL_11;
      }

LABEL_8:
      v6 = 0;
      goto LABEL_11;
    }

    v6 = 3;
  }

LABEL_11:
  *(v4 + 836) = v6;
  *(v4 + 820) = *(a2 + 56);
  *(v4 + 828) = *(a2 + 64);
  *(v4 + 824) = *(a2 + 60);
  *(v4 + 832) = getPoseDistance(*(a2 + 72));
  *(v4 + 808) = *(a2 + 40);
  *(v4 + 812) = *(a2 + 44);
  *(v4 + 800) = *(a2 + 32);
  *(v4 + 804) = *(a2 + 36);
  v7 = *(a2 + 48);
  if (v7 == 0x4FDB984F657766B3)
  {
    v8 = 0.5;
  }

  else if (v7 == 0x694CCE200D3DDB4)
  {
    v8 = 0.75;
  }

  else
  {
    v8 = 0.0;
    if (v7 == 0x9DE6C21734E76B63)
    {
      v8 = 0.25;
    }
  }

  *(v4 + 816) = v8;
  *(v4 + 792) = *(a2 + 24);
  *(v4 + 840) = *(a2 + 25);
  *(v4 + 880) = *(a2 + 92);
  result = getEngagementStatus(*(a2 + 88));
  *(v4 + 876) = result;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

uint64_t ispExclaveKitCommandChRunAdv2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)))
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChRunAdv2();
    }

    v2 = 3;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v3 = *(a1 + 524);
    v9 = v3;
    v4 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "ispExclaveKitCommandChRunAdv2";
      v16 = 1024;
      v17 = 354;
      _os_log_impl(&dword_25497B000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d - [IR-EK] Run Attention Detection V2\n", buf, 0x12u);
      v3 = *(a1 + 524);
    }

    v5 = fidflowmodule_ekfidflow_channelrunattentiondetectv2(&properties[70 * v3 + 128], &v9);
    v6 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "ispExclaveKitCommandChRunAdv2";
      v16 = 1024;
      v17 = 362;
      _os_log_impl(&dword_25497B000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d - [IR-EK] Attention Detection V2 Finished\n", buf, 0x12u);
    }

    if (v5)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChRunAdv2();
      }

      v2 = 1;
    }

    else if (*(v11 + 24))
    {
      v2 = 0;
    }

    else
    {
      v2 = 4;
    }

    _Block_object_dispose(&v10, 8);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_254982D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z29ispExclaveKitCommandChRunAdv2P20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  bzero((v4 + 528), 0x210uLL);
  v5 = *(a2 + 32);
  *(v4 + 792) = *(a2 + 24);
  *(v4 + 800) = v5 != 0xEA06D2674FF0060FLL;
  v6 = *(a2 + 40);
  if (v6 >= 0xD)
  {
    v6 = 13;
  }

  *(v4 + 804) = v6;
  decodeBufferDescriptor(a2 + 48, v4 + 808);
  decodeBufferDescriptor(a2 + 112, v4 + 860);
  decodeBufferDescriptor(a2 + 176, v4 + 912);
  v7 = *(a2 + 296);
  if (v7 > 0x643FA57BEBB425D3)
  {
    if (v7 != 0x643FA57BEBB425D4)
    {
      if (v7 == 0x7CE0AE3EF231FCDCLL)
      {
        v8 = 2;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v8 = 1;
  }

  else
  {
    if (v7 != 0xE3995D86684768F7)
    {
      if (v7 == 0xF6549FD117FC2467)
      {
        v8 = 4;
        goto LABEL_13;
      }

LABEL_10:
      v8 = 0;
      goto LABEL_13;
    }

    v8 = 3;
  }

LABEL_13:
  *(v4 + 1008) = v8;
  *(v4 + 992) = *(a2 + 272);
  *(v4 + 1000) = *(a2 + 280);
  *(v4 + 996) = *(a2 + 276);
  *(v4 + 1004) = getPoseDistance(*(a2 + 288));
  *(v4 + 980) = *(a2 + 256);
  *(v4 + 984) = *(a2 + 260);
  *(v4 + 972) = *(a2 + 248);
  *(v4 + 976) = *(a2 + 252);
  v9 = *(a2 + 264);
  if (v9 == 0x4FDB984F657766B3)
  {
    v10 = 0.5;
  }

  else if (v9 == 0x694CCE200D3DDB4)
  {
    v10 = 0.75;
  }

  else
  {
    v10 = 0.0;
    if (v9 == 0x9DE6C21734E76B63)
    {
      v10 = 0.25;
    }
  }

  *(v4 + 988) = v10;
  *(v4 + 964) = *(a2 + 240);
  *(v4 + 1012) = *(a2 + 241);
  result = getEngagementStatus(*(a2 + 304));
  *(v4 + 1048) = result;
  *(v4 + 1052) = *(a2 + 308);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

float getPoseDistance(uint64_t a1)
{
  if (a1 <= 0x540E4F411BD8FE69)
  {
    switch(a1)
    {
      case 0xB2DCA7BD7FD685CLL:
        return 100.0;
      case 0x37A32E6830CFDA17:
        return 600.0;
      case 0x489FC3D712823AF2:
        return 190.0;
    }

    return 1000.0;
  }

  if (a1 == 0x540E4F411BD8FE6ALL)
  {
    return 525.0;
  }

  if (a1 != 0x64E16025E3B43FA8)
  {
    if (a1 == 0x6D019513B6874B7ALL)
    {
      return 300.0;
    }

    return 1000.0;
  }

  return 675.0;
}

uint64_t getEngagementStatus(uint64_t result)
{
  if (result <= 127)
  {
    if ((result - 1) <= 0x3F && ((1 << (result - 1)) & 0x800000008000808BLL) != 0)
    {
      return result;
    }

    return 0;
  }

  if (result <= 511)
  {
    if (result != 128 && result != 256)
    {
      return 0;
    }
  }

  else if (result != 512 && result != 1024 && result != 2048)
  {
    return 0;
  }

  return result;
}

uint64_t decodeBufferDescriptor(uint64_t result, uint64_t a2)
{
  *a2 = *result;
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = *(result + 24);
  *(a2 + 48) = *(result + 56);
  v2 = *(result + 40);
  v3 = *(result + 48);
  if (v2 == 0x7EBEBA8AE0FBC365)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if (v2 == 0x613A5560FD7EC2A2)
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  if (v2 == 0x56B9FDA5F5023189)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  if (v2 == 0x447E52DCF0166CF5)
  {
    v7 = 7;
  }

  else
  {
    v7 = v6;
  }

  if (v2 <= 0x613A5560FD7EC2A1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v2 == 0x33802151C6FC8407)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  if (v2 == 0xE10561889E3AF237)
  {
    v10 = 6;
  }

  else
  {
    v10 = v9;
  }

  if (v2 == 0x99C8205F3959757ALL)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (v2 <= 0x447E52DCF0166CF4)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  *(a2 + 40) = v12;
  *(a2 + 44) = v3 != 0x21758C45B12BEDB3;
  return result;
}

char *GetString_eIspExclaveKitCmdId(char *a1)
{
  v1 = &off_279797C80;
  v2 = 61;
  while (*(v1 - 1) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

const char *cmdStringGet(unsigned int a1)
{
  v1 = &off_279797C80;
  v2 = 61;
  while (*(v1 - 1) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      v3 = 0;
      goto LABEL_6;
    }
  }

  v3 = *v1;
LABEL_6:
  if (v3)
  {
    return v3;
  }

  else
  {
    return "ISP_EXCLAVEKIT_CMD_INVALID";
  }
}

uint64_t ispExclaveKitCommandChLscSet()
{
  v0 = MEMORY[0x28223BE20]();
  if (ispExclaveGetServiceTypeFromChIdx(*(v0 + 524)) != -1)
  {
    v1 = *(v0 + 524);
    v9 = v1;
    v10 = *(v0 + 528);
    v11 = *(v0 + 536);
    v12 = *(v0 + 540);
    v13 = *(v0 + 548);
    memcpy(v14, (v0 + 552), sizeof(v14));
    v4 = 0;
    v5 = &v4;
    v6 = 0x3802000000;
    v7 = __Block_byref_object_copy__4;
    v8 = __Block_byref_object_dispose__4;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChLscSet();
    }

    v2 = ispexclavekithardwaredefaultconfig_ekhardwaredefaultconfig_channellscset(&properties[70 * v1 + 132], &v9);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChLscSet();
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else if (v2)
    {
LABEL_6:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChLscSet();
      }

      v2 = 1;
    }

    if (ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v5 + 40))
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChLscSet();
      }

      v2 = 1;
    }

    _Block_object_dispose(&v4, 8);
    return v2;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChLscSet();
  }

  return 3;
}

void sub_2549834CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z28ispExclaveKitCommandChLscSetP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChPdpSet()
{
  v0 = MEMORY[0x28223BE20]();
  if (ispExclaveGetServiceTypeFromChIdx(*(v0 + 524)) != -1)
  {
    v21 = 0;
    v22 = &v21;
    *&v23 = 0x3802000000;
    *(&v23 + 1) = __Block_byref_object_copy__1_1;
    v24[0] = __Block_byref_object_dispose__2_1;
    v1 = *(v0 + 524);
    LODWORD(v16) = v1;
    v17 = 0x43534973E0734AAFLL;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChPdpSet();
    }

    v35 = MEMORY[0x277D85DD0];
    v36 = 0x40000000;
    v37 = ___Z28ispExclaveKitCommandChPdpSetP20sExclaveKitIspCmdHdr_block_invoke;
    v38 = &unk_279798078;
    v39 = &v21;
    v2 = ispexclavekitshared_ekchannelstreamingcontrol_channelconfigurationstatusread(&properties[70 * v1 + 116], &v16);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChPdpSet();
    }

    failure = ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v22 + 40);
    if (!v2 && failure && v22[48] == 1)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChPdpSet();
      }

      _Block_object_dispose(&v21, 8);
      return 2;
    }

    _Block_object_dispose(&v21, 8);
    LODWORD(v21) = *(v0 + 524);
    v5 = *(v0 + 528);
    if (*(v0 + 528))
    {
      if (v5 == 1)
      {
        ispexclavekithardwaredefaultconfig_ekpdpnongreenmode_nongreenmodegain__init(&v22);
      }

      else if (v5 == 2)
      {
        ispexclavekithardwaredefaultconfig_ekpdpnongreenmode_nongreenmodeinterpolation__init(&v22);
      }
    }

    else
    {
      ispexclavekithardwaredefaultconfig_ekpdpnongreenmode_nongreenmodebypass__init(&v22);
    }

    v23 = *(v0 + 532);
    memcpy(v24, (v0 + 548), sizeof(v24));
    v6 = v25;
    v7 = v0 + 5184;
    v8 = 16;
    do
    {
      *(v6 - 18) = *(v7 - 4);
      v9 = *(v7 - 3);
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          ispexclavekithardwaredefaultconfig_ekpdpgridtype_verticalpolarity0__init(v6 - 10);
        }

        else if (v9 == 3)
        {
          ispexclavekithardwaredefaultconfig_ekpdpgridtype_verticalpolarity1__init(v6 - 10);
        }
      }

      else if (*(v7 - 3))
      {
        if (v9 == 1)
        {
          ispexclavekithardwaredefaultconfig_ekpdpgridtype_horizontalpolarity1__init(v6 - 10);
        }
      }

      else
      {
        ispexclavekithardwaredefaultconfig_ekpdpgridtype_horizontalpolarity0__init(v6 - 10);
      }

      *(v6 - 2) = *(v7 - 2);
      v6 += 24;
      v7 += 6;
      --v8;
    }

    while (v8);
    v10 = *(v0 + 5292);
    *&v25[366] = *(v0 + 5276);
    v26 = v10;
    v11 = *(v0 + 5324);
    v27 = *(v0 + 5308);
    v28 = v11;
    v12 = *(v0 + 5356);
    v29 = *(v0 + 5340);
    v30 = v12;
    v13 = *(v0 + 5388);
    v31 = *(v0 + 5372);
    v32 = v13;
    v33 = *(v0 + 5404);
    v34 = *(v0 + 5412);
    v16 = 0;
    v17 = &v16;
    v18 = 0x3802000000;
    v19 = __Block_byref_object_copy__5_1;
    v20 = __Block_byref_object_dispose__6_1;
    v14 = *(v0 + 524);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChPdpSet();
    }

    v4 = ispexclavekithardwaredefaultconfig_ekhardwaredefaultconfig_channelpdpset(&properties[70 * v14 + 132], &v21);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChPdpSet();
      if (v4)
      {
        goto LABEL_36;
      }
    }

    else if (v4)
    {
LABEL_36:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChPdpSet();
      }

      v4 = 1;
    }

    if (ispexclavekitshared_ekstreamingcontrol_off__result_get_failure((v17 + 40)))
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChPdpSet();
      }

      v4 = 1;
    }

    _Block_object_dispose(&v16, 8);
    return v4;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChPdpSet();
  }

  return 3;
}

void sub_2549839A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1_1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z28ispExclaveKitCommandChPdpSetP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

__n128 __Block_byref_object_copy__5_1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z28ispExclaveKitCommandChPdpSetP20sExclaveKitIspCmdHdr_block_invoke_7(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t exclaveKitReadDefault(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v4 = CFPreferencesCopyValue(a1, a2, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v5);
      if (!IntValue)
      {
        SystemEncoding = CFStringGetSystemEncoding();
        CStringPtr = CFStringGetCStringPtr(v5, SystemEncoding);
        if (!CStringPtr || (IntValue = strtol(CStringPtr, 0, 0), !IntValue))
        {
          IntValue = 1;
          if (CFStringCompare(v5, @"true", 1uLL))
          {
            IntValue = 1;
            if (CFStringCompare(v5, @"yes", 1uLL))
            {
              if (CFStringCompare(v5, @"false", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"no", 1uLL) == kCFCompareEqualTo || (IntValue = a3, CFStringCompare(v5, @"0", 1uLL) == kCFCompareEqualTo))
              {
                IntValue = 0;
              }
            }
          }
        }
      }
    }

    else
    {
      v10 = CFGetTypeID(v5);
      if (v10 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
        {
          IntValue = valuePtr;
        }

        else
        {
          IntValue = a3;
        }
      }

      else
      {
        v11 = CFGetTypeID(v5);
        IntValue = a3;
        if (v11 == CFBooleanGetTypeID())
        {
          IntValue = CFEqual(v5, *MEMORY[0x277CBED28]);
        }
      }
    }

    CFRelease(v5);
    return IntValue;
  }

  return a3;
}

void exclaveKitDefaultsInit(int *a1)
{
  Default = exclaveKitReadDefault(@"searApprovedPathFlag", @"com.apple.coremedia", 0xFFFFFFFFLL);
  *a1 = Default;
  v3 = qword_27F6132E0;
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
  {
    exclaveKitDefaultsInit(Default, v3);
  }
}

void *ispExclavePrivatePropertiesReset(void)
{
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
  {
    ispExclavePrivatePropertiesReset();
  }

  properties[0] = -1;
  *algn_27F612C24 = 0u;
  unk_27F612C34 = 0u;
  unk_27F612C44 = 0u;
  unk_27F612C54 = 0u;
  unk_27F612C64 = 0u;
  unk_27F612C74 = 0u;
  unk_27F612C84 = 0u;
  unk_27F612C94 = 0u;
  unk_27F612CA4 = 0u;
  unk_27F612CB4 = 0u;
  unk_27F612CC4 = 0u;
  unk_27F612CD4 = 0u;
  unk_27F612CE4 = 0u;
  unk_27F612CF4 = 0u;
  unk_27F612D04 = 0u;
  unk_27F612D13 = 0u;
  qword_27F612D24 = -1;
  dword_27F612D30 = 1;
  dword_27F612E48 = 1;
  dword_27F612F60 = 1;
  dword_27F613078 = 1;
  dword_27F613190 = 1;
  byte_27F6132A8 = 0;
  LOBYTE(dword_27F6132B4) = 0;
  byte_27F6132C0 = 0;
  qword_27F6132E0 = os_log_create(off_27F6132D0[0], off_27F6132D8);
  bzero(&unk_27F6132E8, 0x3FCuLL);
  exclaveKitDefaultsInit(&dword_27F6136E4);
  v0 = exclaveKitDefaultGet(&dword_27F6136E4, 0) != 0;
  result = searApprovedInterfaceSwitcherUpdate(v0);
  byte_27F6136E8 = 0;
  return result;
}

void channelStateReset(void)
{
  dword_27F612D30 = 1;
  dword_27F612E48 = 1;
  dword_27F612F60 = 1;
  dword_27F613078 = 1;
  dword_27F613190 = 1;
}

uint64_t ispExclaveGetServiceTypeFromChIdx(int a1)
{
  if (properties > 6)
  {
    if (properties != 7 && properties != 8)
    {
      if (a1 == 2)
      {
        v2 = 1;
      }

      else
      {
        v2 = -1;
      }

      if (a1 == 3)
      {
        v2 = 0;
      }

      v3 = properties == 9;
      goto LABEL_18;
    }
  }

  else if (properties >= 2 && properties != 3)
  {
    if (a1)
    {
      v2 = -1;
    }

    else
    {
      v2 = 1;
    }

    v3 = properties == 4;
LABEL_18:
    if (v3)
    {
      return v2;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (a1 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (a1 == 3)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

BOOL channelStateUpdate(unsigned int a1, int a2)
{
  v4 = qword_27F6132E0;
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
  {
    channelStateUpdate(a1, a2, v4);
  }

  if (a1 >= 5)
  {
    result = os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    channelStateUpdate();
    return 0;
  }

  v6 = &properties[70 * a1 + 68];
  v7 = *v6;
  result = 1;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (v7 == 3 || v7 == 0)
        {
          *v6 = 1;
          return result;
        }

        result = os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG);
        if (result)
        {
          channelStateUpdate();
          return 0;
        }
      }
    }

    else
    {
      if (v7 == 1)
      {
        *v6 = 0;
        return result;
      }

      result = os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        channelStateUpdate();
        return 0;
      }
    }

    return result;
  }

  if (a2 == 2)
  {
    if (v7 != 3 && v7 != 0)
    {
      result = os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        channelStateUpdate();
        return 0;
      }

      return result;
    }

    v9 = 2;
LABEL_27:
    *v6 = v9;
    return result;
  }

  if (a2 != 3)
  {
    return result;
  }

  if (v7 == 2)
  {
    v9 = 3;
    goto LABEL_27;
  }

  result = os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    channelStateUpdate();
    return 0;
  }

  return result;
}

uint64_t channelStateGet(unsigned int a1)
{
  if (a1 < 5)
  {
    return properties[70 * a1 + 68];
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    channelStateGet();
  }

  return 0xFFFFFFFFLL;
}

void OUTLINED_FUNCTION_1_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Eu);
}

uint64_t ispExclaveKitCommandChAeGainCapSet(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    return 0;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChAeGainCapSet();
  }

  return 3;
}

uint64_t ispExclaveKitCommandChAeIntegrationTimeMaxSet(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    return 0;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChAeIntegrationTimeMaxSet();
  }

  return 3;
}

uint64_t ispExclaveKitCommandChAeUpdateResume(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    return 0;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChAeUpdateResume();
  }

  return 3;
}

uint64_t ispExclaveKitCommandChAeUpdateSuspend(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    return 0;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChAeUpdateSuspend();
  }

  return 3;
}

uint64_t ispExclaveKitCommandChAeIntegrationGainSet(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    return 0;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChAeIntegrationGainSet();
  }

  return 3;
}

uint64_t ispExclaveKitCommandChRunAe(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x8002000000;
    v9 = __Block_byref_object_copy__5;
    v10 = __Block_byref_object_dispose__5;
    v2 = *(a1 + 524);
    v11 = v2;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChRunAe();
    }

    v3 = autoexposuremodule_ekautoexposure_channelrunautoexposure(&properties[70 * v2 + 120], &v11);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChRunAe();
      if (v3)
      {
        goto LABEL_6;
      }
    }

    else if (v3)
    {
LABEL_6:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChRunAe();
      }

      v3 = 1;
      goto LABEL_14;
    }

    v4 = v7;
    *(a1 + 792) = *(v7 + 16);
    *(a1 + 796) = v4[9];
    *(a1 + 804) = *(v4 + 20);
    *(a1 + 808) = *(v4 + 21);
    *(a1 + 812) = *(v4 + 22);
    *(a1 + 816) = *(v4 + 23);
    *(a1 + 820) = *(v4 + 24);
    *(a1 + 824) = *(v4 + 25);
    *(a1 + 828) = *(v4 + 26);
    *(a1 + 832) = *(v4 + 27);
    *(a1 + 836) = *(v4 + 28);
    *(a1 + 840) = *(v4 + 29);
    *(a1 + 844) = *(v4 + 30);
    *(a1 + 848) = *(v4 + 124) ^ 1;
LABEL_14:
    _Block_object_dispose(&v6, 8);
    return v3;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChRunAe();
  }

  return 3;
}

void sub_254984418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 ___Z27ispExclaveKitCommandChRunAeP20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = *(a2 + 48);
  v3 = *(a2 + 64);
  v5 = *(a2 + 80);
  *(v2 + 72) = *(a2 + 32);
  *(v2 + 120) = v5;
  *(v2 + 104) = v3;
  *(v2 + 88) = v4;
  result = *a2;
  *(v2 + 56) = *(a2 + 16);
  *(v2 + 40) = result;
  return result;
}

uint64_t ispExclaveKitCommandChSendMetadata(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChSendMetadata();
    }

    return 3;
  }

  else
  {
    v2 = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3802000000;
    v12[3] = __Block_byref_object_copy__1_2;
    v12[4] = __Block_byref_object_dispose__2_2;
    v3 = *(a1 + 524);
    v13[0] = v3;
    v4 = *(a1 + 560);
    v13[1] = *(a1 + 532);
    v13[2] = v4;
    v14 = *(a1 + 568);
    v15 = *(a1 + 600);
    v16 = *(a1 + 612);
    v17 = *(a1 + 616);
    v22 = *(a1 + 580);
    v5 = (a1 + 620);
    do
    {
      v6 = v5[v2];
      if (v6 > 8192.0)
      {
        v9 = qword_27F6132E0;
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
        {
          ispExclaveKitCommandChSendMetadata(v2, v9, v6);
        }

        v8 = 3;
        goto LABEL_18;
      }

      v5[v2++] = v6 * 0.00012207;
    }

    while (v2 != 9);
    v11 = v3;
    v7 = *(a1 + 636);
    v18 = *v5;
    v19 = v7;
    v20 = *(a1 + 652);
    v21 = *(a1 + 660) < 0x3E9u;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChSendMetadata();
    }

    v8 = ispexclavekitshared_ekispmanager_channelsensormetadataset(&properties[70 * v11 + 122], v13);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChSendMetadata();
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    else if (!v8)
    {
      goto LABEL_18;
    }

    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChSendMetadata();
    }

    v8 = 1;
LABEL_18:
    _Block_object_dispose(v12, 8);
  }

  return v8;
}

void sub_254984718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1_2(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z34ispExclaveKitCommandChSendMetadataP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChCameraConfigSet(uint64_t a1)
{
  v64[14] = *MEMORY[0x277D85DE8];
  v63 = 0;
  v64[0] = &v63;
  v64[1] = 0x7802000000;
  v64[2] = __Block_byref_object_copy__5_2;
  v64[3] = __Block_byref_object_dispose__6_2;
  v35[0] = *(a1 + 524);
  ispExclaveGetServiceTypeFromChIdx(v35[0]);
  v35[1] = *(a1 + 576);
  v2 = *(a1 + 524);
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
  {
    ispExclaveKitCommandChCameraConfigSet();
  }

  v3 = ispexclavekitshared_ekispmanager_channelcameraconfigurationget(&properties[70 * v2 + 122], v35);
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
  {
    ispExclaveKitCommandChCameraConfigSet();
  }

  if (v3)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChCameraConfigSet();
    }

LABEL_35:
    v7 = 1;
    goto LABEL_36;
  }

  if (*(v64[0] + 56) != *(a1 + 568) || *(v64[0] + 58) != *(a1 + 570) || *(v64[0] + 52) != *(a1 + 572) || *(v64[0] + 54) != *(a1 + 574) || *(v64[0] + 64) != *(a1 + 528) || *(v64[0] + 68) != *(a1 + 532) || *(v64[0] + 72) != *(a1 + 536) || *(v64[0] + 76) != *(a1 + 540) || *(v64[0] + 78) != *(a1 + 542) || *(v64[0] + 80) != *(a1 + 544) || *(v64[0] + 84) != *(a1 + 548) || *(v64[0] + 88) != *(a1 + 552) || *(v64[0] + 92) != *(a1 + 556))
  {
    v8 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChCameraConfigSet(v8, buf);
      v8 = *buf;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 528);
      v12 = *(a1 + 532);
      v13 = *(a1 + 536);
      v14 = *(a1 + 540);
      v15 = *(a1 + 542);
      v16 = *(a1 + 544);
      v17 = *(a1 + 548);
      v18 = *(a1 + 552);
      v19 = *(a1 + 556);
      v20 = *(a1 + 558);
      v21 = *(a1 + 560);
      v22 = *(a1 + 564);
      *buf = 136318466;
      *&buf[4] = "ispExclaveKitCommandChCameraConfigSet";
      v37 = 1024;
      v38 = 498;
      v39 = 1024;
      v40 = v11;
      v41 = 1024;
      v42 = v12;
      v43 = 1024;
      v44 = v13;
      v45 = 1024;
      v46 = v14;
      v47 = 1024;
      v48 = v15;
      v49 = 1024;
      v50 = v16;
      v51 = 1024;
      v52 = v17;
      v53 = 1024;
      v54 = v18;
      v55 = 1024;
      v56 = v19;
      v57 = 1024;
      v58 = v20;
      v59 = 1024;
      v60 = v21;
      v61 = 1024;
      v62 = v22;
      _os_log_error_impl(&dword_25497B000, v8, OS_LOG_TYPE_ERROR, "%s:%d - Received values: %u %u %u %u %u %u %u %u %u %u %u %u\n", buf, 0x5Au);
      v8 = qword_27F6132E0;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChCameraConfigSet(v64);
    }

    goto LABEL_35;
  }

  v4 = *(v64[0] + 94);
  v5 = *(a1 + 558);
  if (v4 != v5)
  {
    v6 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "ispExclaveKitCommandChCameraConfigSet";
      v37 = 1024;
      v38 = 511;
      v39 = 1024;
      v40 = v5;
      v41 = 1024;
      v42 = v4;
      _os_log_error_impl(&dword_25497B000, v6, OS_LOG_TYPE_ERROR, "%s:%d - WARN: minFps is not equal to minFps. received: %u, expected : %u\n", buf, 0x1Eu);
      v6 = qword_27F6132E0;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 528);
      v24 = *(a1 + 532);
      v25 = *(a1 + 536);
      v26 = *(a1 + 540);
      v27 = *(a1 + 542);
      v28 = *(a1 + 544);
      v29 = *(a1 + 548);
      v30 = *(a1 + 552);
      v31 = *(a1 + 556);
      v32 = *(a1 + 558);
      v33 = *(a1 + 560);
      v34 = *(a1 + 564);
      *buf = 136318466;
      *&buf[4] = "ispExclaveKitCommandChCameraConfigSet";
      v37 = 1024;
      v38 = 518;
      v39 = 1024;
      v40 = v23;
      v41 = 1024;
      v42 = v24;
      v43 = 1024;
      v44 = v25;
      v45 = 1024;
      v46 = v26;
      v47 = 1024;
      v48 = v27;
      v49 = 1024;
      v50 = v28;
      v51 = 1024;
      v52 = v29;
      v53 = 1024;
      v54 = v30;
      v55 = 1024;
      v56 = v31;
      v57 = 1024;
      v58 = v32;
      v59 = 1024;
      v60 = v33;
      v61 = 1024;
      v62 = v34;
      _os_log_error_impl(&dword_25497B000, v6, OS_LOG_TYPE_ERROR, "%s:%d - Received values: %u %u %u %u %u %u %u %u %u %u %u %u\n", buf, 0x5Au);
      v6 = qword_27F6132E0;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChCameraConfigSet(v64);
    }
  }

  v7 = 0;
LABEL_36:
  _Block_object_dispose(&v63, 8);
  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

__n128 __Block_byref_object_copy__5_2(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  v3 = *(a2 + 72);
  v4 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v4;
  *(a1 + 72) = v3;
  *(a1 + 56) = result;
  return result;
}

__n128 ___Z37ispExclaveKitCommandChCameraConfigSetP20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  v5 = *(a2 + 32);
  *(v2 + 56) = *(a2 + 16);
  *(v2 + 104) = v4;
  *(v2 + 88) = v3;
  *(v2 + 72) = v5;
  result = *a2;
  *(v2 + 40) = *a2;
  return result;
}

uint64_t ispExclaveKitCommandChAeFrameRateMaxSet(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x3802000000;
    v5[3] = __Block_byref_object_copy__9_0;
    v5[4] = __Block_byref_object_dispose__10_0;
    v4 = *(a1 + 524);
    v6 = *(a1 + 524);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChAeFrameRateMaxSet();
    }

    v2 = autoexposuremodule_ekautoexposure_channelautoexposureframeratemaxset(&properties[70 * v4 + 120], &v6);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChAeFrameRateMaxSet();
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else if (v2)
    {
LABEL_6:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChAeFrameRateMaxSet();
      }

      v2 = 1;
    }

    _Block_object_dispose(v5, 8);
    return v2;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChAeFrameRateMaxSet();
  }

  return 3;
}

void sub_254984EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__9_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z39ispExclaveKitCommandChAeFrameRateMaxSetP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChAeFrameRateMinSet(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x3802000000;
    v7[3] = __Block_byref_object_copy__13_0;
    v7[4] = __Block_byref_object_dispose__14_0;
    v2 = *(a1 + 524);
    v3 = *(a1 + 528);
    v8[0] = v2;
    v8[1] = v3;
    v4 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChAeFrameRateMinSet(v2, v3, v4);
    }

    v5 = autoexposuremodule_ekautoexposure_channelautoexposureframerateminset(&properties[70 * v2 + 120], v8);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChAeFrameRateMinSet();
      if (v5)
      {
        goto LABEL_6;
      }
    }

    else if (v5)
    {
LABEL_6:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChAeFrameRateMinSet();
      }

      v5 = 1;
    }

    _Block_object_dispose(v7, 8);
    return v5;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChAeFrameRateMinSet();
  }

  return 3;
}

void sub_2549850B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__13_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z39ispExclaveKitCommandChAeFrameRateMinSetP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChAeInitSettingGet(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x8002000000;
    v9 = __Block_byref_object_copy__17_0;
    v10 = __Block_byref_object_dispose__18_0;
    v2 = *(a1 + 524);
    v11 = v2;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChAeInitSettingGet();
    }

    v3 = autoexposuremodule_ekautoexposure_channelautoexposureinitsettingget(&properties[70 * v2 + 120], &v11);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChAeInitSettingGet();
      if (v3)
      {
        goto LABEL_6;
      }
    }

    else if (v3)
    {
LABEL_6:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChAeInitSettingGet();
      }

      v3 = 1;
      goto LABEL_14;
    }

    v4 = v7;
    *(a1 + 792) = *(v7 + 16);
    *(a1 + 796) = v4[9];
    *(a1 + 804) = *(v4 + 20);
    *(a1 + 808) = *(v4 + 21);
    *(a1 + 812) = *(v4 + 22);
    *(a1 + 816) = *(v4 + 23);
    *(a1 + 820) = *(v4 + 24);
    *(a1 + 824) = *(v4 + 25);
    *(a1 + 828) = *(v4 + 26);
    *(a1 + 832) = *(v4 + 27);
    *(a1 + 836) = *(v4 + 28);
    *(a1 + 840) = *(v4 + 29);
    *(a1 + 844) = *(v4 + 30);
    *(a1 + 848) = *(v4 + 124) ^ 1;
LABEL_14:
    _Block_object_dispose(&v6, 8);
    return v3;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChAeInitSettingGet();
  }

  return 3;
}

void sub_254985308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__17_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v2;
  result = *(a2 + 72);
  v4 = *(a2 + 88);
  v5 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v5;
  *(a1 + 88) = v4;
  *(a1 + 72) = result;
  return result;
}

__n128 ___Z38ispExclaveKitCommandChAeInitSettingGetP20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = *(a2 + 48);
  v3 = *(a2 + 64);
  v5 = *(a2 + 80);
  *(v2 + 72) = *(a2 + 32);
  *(v2 + 120) = v5;
  *(v2 + 104) = v3;
  *(v2 + 88) = v4;
  result = *a2;
  *(v2 + 56) = *(a2 + 16);
  *(v2 + 40) = result;
  return result;
}

uint64_t ispExclaveKitCommandChAeFlickerFreqSet(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x3802000000;
    v5[3] = __Block_byref_object_copy__21_0;
    v5[4] = __Block_byref_object_dispose__22_0;
    v6[0] = *(a1 + 528);
    v6[1] = *(a1 + 536);
    v2 = *(a1 + 524);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChAeFlickerFreqSet();
    }

    v3 = autoexposuremodule_ekautoexposure_channelautoexposureflickerfreqset(&properties[70 * v2 + 120], v6);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChAeFlickerFreqSet();
      if (v3)
      {
        goto LABEL_6;
      }
    }

    else if (v3)
    {
LABEL_6:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChAeFlickerFreqSet();
      }

      v3 = 1;
    }

    _Block_object_dispose(v5, 8);
    return v3;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChAeFlickerFreqSet();
  }

  return 3;
}

void sub_254985534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__21_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z38ispExclaveKitCommandChAeFlickerFreqSetP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChAeFrameRateMaxGet(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3802000000;
    v8 = __Block_byref_object_copy__25_0;
    v9 = __Block_byref_object_dispose__26_0;
    v2 = *(a1 + 524);
    v10 = v2;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChAeFrameRateMaxGet();
    }

    v3 = autoexposuremodule_ekautoexposure_channelautoexposureframeratemaxget(&properties[70 * v2 + 120], &v10);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChAeFrameRateMaxGet();
      if (v3)
      {
        goto LABEL_6;
      }
    }

    else if (v3)
    {
LABEL_6:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChAeFrameRateMaxGet();
      }

      v3 = 1;
      goto LABEL_14;
    }

    *(a1 + 528) = *(v6 + 12);
LABEL_14:
    _Block_object_dispose(&v5, 8);
    return v3;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChAeFrameRateMaxGet();
  }

  return 3;
}

void sub_25498571C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__25_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z39ispExclaveKitCommandChAeFrameRateMaxGetP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChAeFrameRateMinGet(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3802000000;
    v8 = __Block_byref_object_copy__29_0;
    v9 = __Block_byref_object_dispose__30_0;
    v2 = *(a1 + 524);
    v10 = v2;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChAeFrameRateMinGet();
    }

    v3 = autoexposuremodule_ekautoexposure_channelautoexposureframerateminget(&properties[70 * v2 + 120], &v10);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChAeFrameRateMinGet();
      if (v3)
      {
        goto LABEL_6;
      }
    }

    else if (v3)
    {
LABEL_6:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChAeFrameRateMinGet();
      }

      v3 = 1;
      goto LABEL_14;
    }

    *(a1 + 528) = *(v6 + 12);
LABEL_14:
    _Block_object_dispose(&v5, 8);
    return v3;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChAeFrameRateMinGet();
  }

  return 3;
}

void sub_254985904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__29_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z39ispExclaveKitCommandChAeFrameRateMinGetP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 64);
  v4 = *(*result + 68);
  v5 = *(*result + 72);
  v6 = *(*result + 76);
  v7 = *(*result + 78);
  v8 = *(*result + 80);
  v9 = *(*result + 84);
  v10 = *(*result + 88);
  v11 = *(*result + 92);
  return result;
}

uint64_t _getDeviceType(void)
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = properties[0];
  if (properties[0] == -1)
  {
    v1 = MGCopyAnswer();
    if (v1)
    {
      v2 = v1;
      CFStringGetCString(v1, buffer, 128, 0x8000100u);
      v3 = qword_27F6132E0;
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = "_getDeviceType";
        v8 = 1024;
        v9 = 25;
        v10 = 2080;
        v11 = buffer;
        _os_log_impl(&dword_25497B000, v3, OS_LOG_TYPE_DEFAULT, "%s:%d - Device name: %s\n", &v6, 0x1Cu);
      }

      if (CFStringFind(v2, @"J717", 0).location == -1 && CFStringFind(v2, @"J718", 0).location == -1 && CFStringFind(v2, @"J720", 0).location == -1 && CFStringFind(v2, @"J721", 0).location == -1)
      {
        if (CFStringFind(v2, @"D93", 0).location == -1 && CFStringFind(v2, @"D94", 0).location == -1 && CFStringFind(v2, @"D47", 0).location == -1 && CFStringFind(v2, @"D48", 0).location == -1)
        {
          if (CFStringFind(v2, @"J704", 0).location == -1)
          {
            if (CFStringFind(v2, @"J817", 0).location == -1 && CFStringFind(v2, @"J818", 0).location == -1 && CFStringFind(v2, @"J820", 0).location == -1 && CFStringFind(v2, @"J821", 0).location == -1)
            {
              if (CFStringFind(v2, @"V53", 0).location == -1 && CFStringFind(v2, @"V54", 0).location == -1 && CFStringFind(v2, @"V57", 0).location == -1)
              {
                if (CFStringFind(v2, @"D23", 0).location == -1)
                {
                  v0 = 0xFFFFFFFFLL;
                }

                else
                {
                  v0 = 8;
                }
              }

              else
              {
                v0 = 7;
              }
            }

            else
            {
              v0 = 3;
            }
          }

          else
          {
            v0 = 4;
          }
        }

        else
        {
          v0 = 1;
        }
      }

      else
      {
        v0 = 0;
      }

      CFRelease(v2);
    }

    else
    {
      v0 = 0xFFFFFFFFLL;
    }

    properties[0] = v0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t ispExclaveKitCommandDeviceInfoGet(_OWORD *a1)
{
  DeviceType = _getDeviceType();
  v3 = DeviceType;
  if (DeviceType < 0xA)
  {
    properties[0] = DeviceType;
    a1[33] = 0u;
    a1[34] = 0u;
    a1[35] = 0u;
    a1[36] = 0u;
    a1[37] = 0u;
    a1[38] = 0u;
    a1[39] = 0u;
    a1[40] = 0u;
    a1[41] = 0u;
    a1[42] = 0u;
    a1[43] = 0u;
    a1[44] = 0u;
    a1[45] = 0u;
    a1[46] = 0u;
    a1[47] = 0u;
    *(a1 + 767) = 0u;
    v6 = &algorithmTypeAvailablePerDevice[56 * DeviceType];
    v7 = *v6;
    if (v7)
    {
      v8 = (v6 + 4);
      do
      {
        v9 = *v8++;
        *(a1 + v9 + 528) = 1;
        --v7;
      }

      while (v7);
    }

    return 0;
  }

  else
  {
    v4 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandDeviceInfoGet(v3, v4);
    }

    return 3;
  }
}

uint64_t ispExclaveKitCommandChPropertyWrite(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    v4 = *(a1 + 524);
    v10 = *(a1 + 524);
    v11 = *(a1 + 532);
    v5 = 0;
    v6 = &v5;
    v7 = 0x3802000000;
    v8 = __Block_byref_object_copy__6;
    v9 = __Block_byref_object_dispose__6;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChPropertyWrite();
    }

    v2 = ispexclavekitdebugmodule_ekdebug_channelpropertywrite(&properties[70 * v4 + 130], &v10);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChPropertyWrite();
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else if (v2)
    {
LABEL_6:
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChPropertyWrite();
      }

      v2 = 1;
    }

    if (ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v6 + 40))
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChPropertyWrite();
      }

      v2 = 1;
    }

    _Block_object_dispose(&v5, 8);
    return v2;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChPropertyWrite();
  }

  return 3;
}

void sub_254985F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z35ispExclaveKitCommandChPropertyWriteP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChPropertyRead(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *(a1 + 532) = 0;
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    v6 = *(a1 + 524);
    v7 = *(a1 + 524);
    v8 = 0;
    v9 = &v8;
    v10 = 0x4002000000;
    v11 = __Block_byref_object_copy__1_3;
    v12 = __Block_byref_object_dispose__2_3;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChPropertyRead();
    }

    v2 = ispexclavekitdebugmodule_ekdebug_channelpropertyread(&properties[70 * v6 + 130], &v7);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChPropertyRead();
    }

    if (v2)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChPropertyRead();
      }
    }

    else
    {
      if (!ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v9 + 40))
      {
        v3 = 0;
        *(a1 + 532) = *(v9 + 14);
        goto LABEL_16;
      }

      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChPropertyRead();
      }
    }

    v3 = 1;
LABEL_16:
    _Block_object_dispose(&v8, 8);
    goto LABEL_17;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChPropertyRead();
  }

  v3 = 3;
LABEL_17:
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_2549861C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1_3(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

__n128 ___Z34ispExclaveKitCommandChPropertyReadP20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, __n128 *a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *a2;
  *(v2 + 56) = a2[1].n128_u64[0];
  *(v2 + 40) = result;
  return result;
}

uint64_t ispExclaveKitCommandChInfiltration(int *a1)
{
  a1[133] = 0;
  if (ispExclaveGetServiceTypeFromChIdx(a1[131]) != -1)
  {
    v2 = a1[132];
    if (v2 == 1)
    {
      ispexclavekitdebugmodule_ekchannelfiltrationtype_exfiltration__init(&v12);
    }

    else if (!v2)
    {
      ispexclavekitdebugmodule_ekchannelfiltrationtype_infiltration__init(&v12);
    }

    v7 = 0;
    v8 = &v7;
    v9 = 0x3802000000;
    v10 = __Block_byref_object_copy__5_3;
    v11 = __Block_byref_object_dispose__6_3;
    v4 = a1[131];
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChInfiltration();
    }

    v5 = ispexclavekitdebugmodule_ekdebug_channelinfiltration(&properties[70 * v4 + 130], &v12);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChInfiltration();
      if (v5)
      {
LABEL_13:
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
        {
          ispExclaveKitCommandChInfiltration();
        }

        goto LABEL_19;
      }
    }

    else if (v5)
    {
      goto LABEL_13;
    }

    if (!ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v8 + 40))
    {
      v3 = 0;
      a1[133] = *(v8 + 12);
      goto LABEL_20;
    }

    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChInfiltration();
    }

LABEL_19:
    v3 = 1;
LABEL_20:
    _Block_object_dispose(&v7, 8);
    return v3;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChInfiltration();
  }

  return 3;
}

void sub_254986420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__5_3(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z34ispExclaveKitCommandChInfiltrationP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChExfiltration(int *a1)
{
  a1[133] = 0;
  if (ispExclaveGetServiceTypeFromChIdx(a1[131]) != -1)
  {
    v2 = a1[132];
    if (v2 == 1)
    {
      ispexclavekitdebugmodule_ekchannelfiltrationtype_exfiltration__init(&v12);
    }

    else if (!v2)
    {
      ispexclavekitdebugmodule_ekchannelfiltrationtype_infiltration__init(&v12);
    }

    v7 = 0;
    v8 = &v7;
    v9 = 0x3802000000;
    v10 = __Block_byref_object_copy__9_1;
    v11 = __Block_byref_object_dispose__10_1;
    v4 = a1[131];
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChExfiltration();
    }

    v5 = ispexclavekitdebugmodule_ekdebug_channelexfiltration(&properties[70 * v4 + 130], &v12);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChExfiltration();
      if (v5)
      {
LABEL_13:
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
        {
          ispExclaveKitCommandChExfiltration();
        }

        goto LABEL_19;
      }
    }

    else if (v5)
    {
      goto LABEL_13;
    }

    if (!ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v8 + 40))
    {
      v3 = 0;
      a1[133] = *(v8 + 12);
      goto LABEL_20;
    }

    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChExfiltration();
    }

LABEL_19:
    v3 = 1;
LABEL_20:
    _Block_object_dispose(&v7, 8);
    return v3;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChExfiltration();
  }

  return 3;
}

void sub_254986664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__9_1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z34ispExclaveKitCommandChExfiltrationP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChDebugCapability(uint64_t a1)
{
  *(a1 + 528) = 0;
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    v2 = *(a1 + 524);
    v11 = v2;
    v6 = 0;
    v7 = &v6;
    v8 = 0x3802000000;
    v9 = __Block_byref_object_copy__13_1;
    v10 = __Block_byref_object_dispose__14_1;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChDebugCapability();
    }

    v3 = ispexclavekitdebugmodule_ekdebug_channeldebugcapability(&properties[70 * v2 + 130], &v11);
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
    {
      ispExclaveKitCommandChDebugCapability();
      if (v3)
      {
LABEL_6:
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
        {
          ispExclaveKitCommandChDebugCapability();
        }

        goto LABEL_15;
      }
    }

    else if (v3)
    {
      goto LABEL_6;
    }

    if (!ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v7 + 40))
    {
      v4 = 0;
      *(a1 + 528) = *(v7 + 12);
      goto LABEL_16;
    }

    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChDebugCapability();
    }

LABEL_15:
    v4 = 1;
LABEL_16:
    _Block_object_dispose(&v6, 8);
    return v4;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChDebugCapability();
  }

  return 3;
}

void sub_254986888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__13_1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z37ispExclaveKitCommandChDebugCapabilityP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t isUsingSearApprovedInterface(unsigned int a1)
{
  if (a1 < 0x100003)
  {
    v3 = usingSearApprovedHandler[a1];
  }

  else
  {
    v2 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      isUsingSearApprovedInterface(a1, v2);
    }

    v3 = 0;
  }

  return v3 & 1;
}

void *searApprovedInterfaceSwitcherUpdate(int a1)
{
  v2 = qword_27F6132E0;
  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
  {
    searApprovedInterfaceSwitcherUpdate(a1, v2);
  }

  return memset(&usingSearApprovedHandler, a1, 0x100003uLL);
}

uint64_t ispExclaveKitCommandChRunIsp(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *(a1 + 532) = 1;
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) == -1)
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChRunIsp();
    }

    v6 = 3;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3802000000;
    v14 = __Block_byref_object_copy__7;
    v15 = __Block_byref_object_dispose__7;
    v2 = *(a1 + 524);
    v9 = v2;
    v10 = *(a1 + 528);
    v3 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "ispExclaveKitCommandChRunIsp";
      v18 = 1024;
      v19 = 35;
      _os_log_impl(&dword_25497B000, v3, OS_LOG_TYPE_DEFAULT, "%s:%d - [EK] Run ISP Manager\n", buf, 0x12u);
    }

    v4 = ispexclavekitshared_ekispmanager_channelrunispmanager(&properties[70 * v2 + 122], &v9);
    v5 = qword_27F6132E0;
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "ispExclaveKitCommandChRunIsp";
      v18 = 1024;
      v19 = 41;
      _os_log_impl(&dword_25497B000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d - [EK] ISP Manager Done\n", buf, 0x12u);
    }

    if (v4)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChRunIsp();
      }

      v6 = 1;
    }

    else
    {
      if (ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(v12 + 40))
      {
        *(a1 + 532) = 0;
        if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_DEBUG))
        {
          ispExclaveKitCommandChRunIsp();
        }
      }

      v6 = 0;
    }

    _Block_object_dispose(&v11, 8);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_254986C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__7(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___Z28ispExclaveKitCommandChRunIspP20sExclaveKitIspCmdHdr_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t ispExclaveKitCommandChDpcSet(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) != -1)
  {
    return 0;
  }

  if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ispExclaveKitCommandChDpcSet();
  }

  return 3;
}

uint64_t ispExclaveKitCommandChRunPostProcess(uint64_t a1)
{
  if (ispExclaveGetServiceTypeFromChIdx(*(a1 + 524)) == 1)
  {
    v3 = *(a1 + 524);
    result = ispexclavekitshared_ekispmanager_channelrunpostprocess(&properties[70 * v3 + 122], &v3);
    if (result)
    {
      if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
      {
        ispExclaveKitCommandChRunPostProcess();
      }

      return 1;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
    {
      ispExclaveKitCommandChRunPostProcess();
    }

    return 3;
  }

  return result;
}

void ___Z36ispExclaveKitCommandChRunPostProcessP20sExclaveKitIspCmdHdr_block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  *(v2 + 784) = 0;
  *(v2 + 752) = 0u;
  *(v2 + 768) = 0u;
  *(v2 + 720) = 0u;
  *(v2 + 736) = 0u;
  *(v2 + 688) = 0u;
  *(v2 + 704) = 0u;
  *(v2 + 656) = 0u;
  *(v2 + 672) = 0u;
  *(v2 + 624) = 0u;
  *(v2 + 640) = 0u;
  *(v2 + 592) = 0u;
  *(v2 + 608) = 0u;
  *(v2 + 560) = 0u;
  *(v2 + 576) = 0u;
  *(v2 + 528) = 0u;
  *(v2 + 544) = 0u;
  if (*(*(a1 + 32) + 8) == 792)
  {
    success = facekitmodule_ekfacekit_channelrunkitfaceprocess__result_get_success(a2);
    if (success)
    {
      v5 = *(a1 + 32);
      *(v5 + 528) = *success;
      *(v5 + 536) = success[8];
    }
  }

  else if (os_log_type_enabled(qword_27F6132E0, OS_LOG_TYPE_ERROR))
  {
    ___Z36ispExclaveKitCommandChRunPostProcessP20sExclaveKitIspCmdHdr_block_invoke_cold_1();
  }
}

uint64_t facekitmodule_facekittrackedface__decode(uint64_t a1, _DWORD *a2)
{
  tb_message_precheck_decoding();
  tb_message_raw_decode_s32();
  *a2 = 0;
  tb_message_raw_decode_s32();
  a2[1] = 0;
  v3 = a2 + 2;
  v4 = 9;
  do
  {
    tb_message_raw_decode_f32();
    ++v3;
    --v4;
  }

  while (v4);
  v5 = a2 + 11;
  v6 = 3;
  do
  {
    tb_message_raw_decode_f32();
    ++v5;
    --v6;
  }

  while (v6);
  v7 = a2 + 14;
  v8 = 9;
  do
  {
    tb_message_raw_decode_f32();
    ++v7;
    --v8;
  }

  while (v8);
  v9 = a2 + 23;
  v10 = 3;
  do
  {
    tb_message_raw_decode_f32();
    ++v9;
    --v10;
  }

  while (v10);
  tb_message_raw_decode_BOOL();
  return tb_message_raw_decode_BOOL();
}

unsigned __int8 *BOOL__opt_get(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t facekitmodule_facekitaccessibilitydata__decode(uint64_t a1, _BYTE *a2)
{
  tb_message_precheck_decoding();
  tb_message_raw_decode_u8();
  *a2 = 0;
  tb_message_raw_decode_u8();
  a2[1] = 0;
  tb_message_raw_decode_u8();
  a2[2] = 0;
  tb_message_raw_decode_u8();
  a2[3] = 0;
  tb_message_raw_decode_u8();
  a2[4] = 0;
  tb_message_raw_decode_u8();
  a2[5] = 0;
  tb_message_raw_decode_u8();
  a2[6] = 0;
  tb_message_raw_decode_u8();
  a2[7] = 0;
  tb_message_raw_decode_u8();
  a2[8] = 0;
  tb_message_raw_decode_f32();
  return tb_message_raw_decode_f32();
}

unsigned __int8 *facekitmodule_facekitaccessibilitydata__opt_get(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t facekitmodule_ekfacekitprocessresult__decode(uint64_t a1, _BYTE *a2)
{
  v3 = 9;
  tb_message_precheck_decoding();
  tb_message_raw_decode_u64();
  tb_message_raw_decode_BOOL();
  tb_message_decode_f64();
  v4 = a2 + 24;
  tb_message_precheck_decoding();
  do
  {
    tb_message_raw_decode_f32();
    v4 += 4;
    --v3;
  }

  while (v3);
  v5 = a2 + 60;
  v6 = 3;
  do
  {
    tb_message_raw_decode_f32();
    v5 += 4;
    --v6;
  }

  while (v6);
  v7 = a2 + 72;
  v8 = 9;
  do
  {
    tb_message_raw_decode_f32();
    v7 += 4;
    --v8;
  }

  while (v8);
  tb_message_decode_u8();
  a2[108] = 0;
  tb_message_decode_u8();
  a2[110] = 0;
  tb_message_decode_BOOL();
  tb_message_decode_u8();
  a2[116] = 0;
  tb_message_decode_u8();
  a2[228] = 0;
  return tb_message_decode_BOOL();
}

unsigned __int8 *facekitmodule_ekfacekit_channelrunkitfaceprocess__result_get_success(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t facekitmodule_ekfacekit_channelfaceconfigset(uint64_t *a1, unsigned int *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    v7 = *(a2 + 4);
    tb_message_raw_encode_BOOL();
    v8 = *(a2 + 5);
    tb_message_raw_encode_BOOL();
    tb_message_complete();
    v9 = *a1;
    v10 = tb_connection_send_query();
    if ((v10 & 0xFFFFFFF7) != 0)
    {
      v5 = v10;
      v11 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v14 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t facekitmodule_ekfacekit_channelrunkitfaceprocess(uint64_t *a1, unsigned int *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v13 = 0;
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t facekitmodule_ekfacekit_channelrunkitfacesecondaryprocess(uint64_t *a1, unsigned int *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t facekitmodule_ekfacekit__init(uint64_t *a1)
{
  tb_endpoint_set_interface_identifier();
  v2 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t ispexclavekitshared_ekchannelinformation__decode(uint64_t a1, uint64_t a2)
{
  tb_message_precheck_decoding();
  tb_message_raw_decode_BOOL();
  tb_message_raw_decode_u32();
  *(a2 + 4) = 0;
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_s32();
  tb_message_raw_decode_s32();
  tb_message_raw_decode_s8();
  v3 = a2 + 28;
  v4 = 3;
  do
  {
    tb_message_raw_decode_f32();
    v3 += 4;
    --v4;
  }

  while (v4);
  v5 = a2 + 40;
  v6 = 3;
  do
  {
    tb_message_raw_decode_f32();
    v5 += 4;
    --v6;
  }

  while (v6);
  v7 = a2 + 52;
  v8 = 9;
  do
  {
    tb_message_raw_decode_f32();
    v7 += 4;
    --v8;
  }

  while (v8);
  v9 = a2 + 88;
  v10 = 3;
  do
  {
    tb_message_raw_decode_f32();
    v9 += 4;
    --v10;
  }

  while (v10);
  return tb_message_raw_decode_u32();
}

uint64_t ispexclavekitshared_ekchannelcameraconfiguration__decode(uint64_t a1, uint64_t a2)
{
  tb_message_precheck_decoding();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u16();
  tb_message_raw_decode_u16();
  tb_message_raw_decode_u16();
  tb_message_raw_decode_u16();
  tb_message_raw_decode_u32();
  *(a2 + 12) = 0;
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u16();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u8();
  tb_message_raw_decode_u16();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u16();
  tb_message_raw_decode_u16();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  return tb_message_raw_decode_u32();
}

unsigned __int8 *ispexclavekitshared_ekstreamingcontrol_off__result_get_failure(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (v2 != 1)
  {
    return 0;
  }

  return result;
}

uint64_t ispexclavekitshared_ekstreamingcontrol_on(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = tb_client_connection_message_construct();
  if (!v3)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v4 = *a1;
    v5 = tb_connection_send_query();
    if ((v5 & 0xFFFFFFF7) != 0)
    {
      v3 = v5;
      v6 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v9 = *a1;
      tb_client_connection_message_destruct();
      v3 = 4;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ispexclavekitshared_ekstreamingcontrol_off(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = tb_client_connection_message_construct();
  if (!v3)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v4 = *a1;
    v5 = tb_connection_send_query();
    if ((v5 & 0xFFFFFFF7) != 0)
    {
      v3 = v5;
      v6 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v9 = *a1;
      tb_client_connection_message_destruct();
      v3 = 4;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ispexclavekitshared_ekstreamingcontrol__init(uint64_t *a1)
{
  tb_endpoint_set_interface_identifier();
  v2 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t ispexclavekitshared_ekchannelstreamingcontrol_channelstart(uint64_t *a1, unsigned int *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    v7 = a2[1];
    tb_message_raw_encode_u32();
    tb_message_complete();
    v8 = *a1;
    v9 = tb_connection_send_query();
    if ((v9 & 0xFFFFFFF7) != 0)
    {
      v5 = v9;
      v10 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v13 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitshared_ekchannelstreamingcontrol_channelstop(uint64_t *a1, unsigned int *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitshared_ekchannelstreamingcontrol_channelconcurrentflagset(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = tb_client_connection_message_construct();
  if (!v3)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_BOOL();
    tb_message_complete();
    v4 = *a1;
    v5 = tb_connection_send_query();
    if ((v5 & 0xFFFFFFF7) != 0)
    {
      v3 = v5;
      v6 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v9 = *a1;
      tb_client_connection_message_destruct();
      v3 = 4;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ispexclavekitshared_ekchannelstreamingcontrol_channelalgorithmenable(uint64_t *a1, unsigned int *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    v7 = a2[1] & 0xFFFFF000;
    if (v7)
    {
      ispexclavekitshared_ekchannelstreamingcontrol_channelalgorithmenable_cold_1(v7);
    }

    tb_message_raw_encode_u32();
    tb_message_complete();
    v8 = *a1;
    v9 = tb_connection_send_query();
    if ((v9 & 0xFFFFFFF7) != 0)
    {
      v5 = v9;
      v10 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v13 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitshared_ekchannelstreamingcontrol_channelconfigurationstatusread(uint64_t *a1, unsigned int *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    v7 = *(a2 + 1);
    tb_message_raw_encode_u64();
    v8 = *(a2 + 1);
    if (v8 != 0x43534973E0734AAFLL)
    {
      ispexclavekitshared_ekchannelstreamingcontrol_channelconfigurationstatusread_cold_1(v8);
    }

    tb_message_complete();
    v9 = *a1;
    v10 = tb_connection_send_query();
    if ((v10 & 0xFFFFFFF7) != 0)
    {
      v5 = v10;
      v11 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v14 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitshared_ekchannelstreamingcontrol_channelsetalgoframerate(uint64_t *a1, unsigned int *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    v7 = a2[1] & 0xFFFFF000;
    if (v7)
    {
      ispexclavekitshared_ekchannelstreamingcontrol_channelalgorithmenable_cold_1(v7);
    }

    tb_message_raw_encode_u32();
    v8 = a2[2];
    tb_message_raw_encode_f32();
    tb_message_complete();
    v9 = *a1;
    v10 = tb_connection_send_query();
    if ((v10 & 0xFFFFFFF7) != 0)
    {
      v5 = v10;
      v11 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v14 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitshared_ekchannelstreamingcontrol__init(uint64_t *a1)
{
  tb_endpoint_set_interface_identifier();
  v2 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t ispexclavekitshared_ekispmanager_channelrunispmanager(uint64_t *a1, unsigned int *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    v7 = *(a2 + 1);
    tb_message_raw_encode_u64();
    tb_message_complete();
    v8 = *a1;
    v9 = tb_connection_send_query();
    if ((v9 & 0xFFFFFFF7) != 0)
    {
      v5 = v9;
      v10 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v13 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitshared_ekispmanager_channelinformationget(uint64_t *a1, unsigned int *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitshared_ekispmanager_channelcameraconfigurationget(uint64_t *a1, unsigned int *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    v7 = a2[1];
    tb_message_raw_encode_u32();
    tb_message_complete();
    v8 = *a1;
    v9 = tb_connection_send_query();
    if ((v9 & 0xFFFFFFF7) != 0)
    {
      v5 = v9;
      v10 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v13 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitshared_ekispmanager_channelsensormetadataset(uint64_t *a1, unsigned int *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    v7 = a2[1];
    tb_message_raw_encode_u32();
    v8 = *(a2 + 1);
    tb_message_raw_encode_u64();
    v9 = *(a2 + 2);
    tb_message_raw_encode_u64();
    v10 = a2[6];
    tb_message_raw_encode_u32();
    if (a2[7] >= 0xE)
    {
      ispexclavekitshared_ekispmanager_channelsensormetadataset_cold_1(a2[7]);
    }

    tb_message_raw_encode_u32();
    if (a2[8] >= 4)
    {
      ispexclavekitshared_ekispmanager_channelsensormetadataset_cold_2(a2[8]);
    }

    tb_message_raw_encode_u32();
    v11 = a2[9];
    tb_message_raw_encode_u32();
    v12 = *(a2 + 40);
    tb_message_raw_encode_BOOL();
    for (i = 0; i != 9; ++i)
    {
      v14 = a2[i + 11];
      tb_message_raw_encode_f32();
    }

    v15 = *(a2 + 80);
    tb_message_raw_encode_BOOL();
    v16 = a2[21];
    tb_message_raw_encode_u32();
    tb_message_complete();
    v17 = *a1;
    v18 = tb_connection_send_query();
    if ((v18 & 0xFFFFFFF7) != 0)
    {
      v5 = v18;
      v19 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v22 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitshared_ekispmanager_channelrunpostprocess(uint64_t *a1, unsigned int *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v13 = 0;
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitshared_ekispmanager__init(uint64_t *a1)
{
  tb_endpoint_set_interface_identifier();
  v2 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t andkmodule_ekandk_runandk(uint64_t *a1, unsigned int *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t andkmodule_ekandk__init(uint64_t *a1)
{
  tb_endpoint_set_interface_identifier();
  v2 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t anstmodule_anstobjectv1502__decode(uint64_t a1, uint64_t a2)
{
  tb_message_precheck_decoding();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u64();
  v3 = *(a2 + 8);
  result = 7;
  if (v3 <= 0xF72949D39FB4EAF6)
  {
    if (v3 > 0x9D710C93BC4E0176)
    {
      if (v3 == 0x9D710C93BC4E0177)
      {
        goto LABEL_14;
      }

      v5 = 0xAE51AEAA4C0E0745;
    }

    else
    {
      if (v3 == 0x8D64C91BA9055961)
      {
        goto LABEL_14;
      }

      v5 = 0x98AA995720263868;
    }

LABEL_13:
    if (v3 != v5)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v3 <= 0x2A764FCF549265B3)
  {
    if (v3 == 0xF72949D39FB4EAF7)
    {
      goto LABEL_14;
    }

    v5 = 0x7747707966732DFLL;
    goto LABEL_13;
  }

  if (v3 != 0x2A764FCF549265B4 && v3 != 0x6DF8290E83C9E926)
  {
    v5 = 0x4214E846E3E619CCLL;
    goto LABEL_13;
  }

LABEL_14:
  tb_message_raw_decode_f32();
  tb_message_raw_decode_f32();
  tb_message_raw_decode_f32();
  tb_message_raw_decode_f32();
  tb_message_raw_decode_f32();
  return 0;
}

void *anstmodule_anstfaceposedegree_value__get(uint64_t *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (v2 != 0x2C7061AAF16187FFLL)
  {
    return 0;
  }

  return result;
}

uint64_t anstmodule_anstfacev1502__decode(uint64_t a1, void *a2)
{
  tb_message_decode_u32();
  tb_message_decode_u32();
  tb_message_decode_u64();
  v4 = a2[1];
  result = 7;
  if (v4 <= 0xF72949D39FB4EAF6)
  {
    if (v4 > 0x9D710C93BC4E0176)
    {
      if (v4 == 0x9D710C93BC4E0177)
      {
        goto LABEL_14;
      }

      v6 = 0xAE51AEAA4C0E0745;
    }

    else
    {
      if (v4 == 0x8D64C91BA9055961)
      {
        goto LABEL_14;
      }

      v6 = 0x98AA995720263868;
    }
  }

  else if (v4 <= 0x2A764FCF549265B3)
  {
    if (v4 == 0xF72949D39FB4EAF7)
    {
      goto LABEL_14;
    }

    v6 = 0x7747707966732DFLL;
  }

  else
  {
    if (v4 == 0x2A764FCF549265B4 || v4 == 0x6DF8290E83C9E926)
    {
      goto LABEL_14;
    }

    v6 = 0x4214E846E3E619CCLL;
  }

  if (v4 != v6)
  {
    return result;
  }

LABEL_14:
  tb_message_precheck_decoding();
  tb_message_raw_decode_f32();
  tb_message_raw_decode_f32();
  tb_message_raw_decode_f32();
  tb_message_raw_decode_f32();
  tb_message_decode_u64();
  v7 = a2[4];
  if (v7 != 0x9C1A4069785BB2FLL)
  {
    if (v7 != 0x2C7061AAF16187FFLL)
    {
      return 7;
    }

    tb_message_decode_u32();
  }

  tb_message_decode_u64();
  v8 = a2[6];
  if (v8 != 0x9C1A4069785BB2FLL)
  {
    if (v8 != 0x2C7061AAF16187FFLL)
    {
      return 7;
    }

    tb_message_decode_u32();
  }

  tb_message_decode_u64();
  v9 = a2[8];
  if (v9 == 0x9C1A4069785BB2FLL)
  {
    goto LABEL_23;
  }

  if (v9 != 0x2C7061AAF16187FFLL)
  {
    return 7;
  }

  tb_message_decode_u32();
LABEL_23:
  result = anstmodule_anstfaceposedegree__decode(a1, a2 + 10);
  if (!result)
  {
    result = anstmodule_anstfaceposedegree__decode(a1, a2 + 12);
    if (!result)
    {
      tb_message_decode_BOOL();
      tb_message_decode_f32();
      tb_message_decode_BOOL();
      return 0;
    }
  }

  return result;
}

uint64_t anstmodule_anstobjectv1502__v_visit(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  result = *a1;
  switch(result)
  {
    case 1:
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = a1[1];
      v11 = a1[2];
      tb_transport_message_buffer_wrap_buffer();
      if (tb_message_construct())
      {
        anstmodule_anstobjectv1502__v_visit_cold_2();
      }

      result = tb_message_configure_received();
      if (a1[3])
      {
        v12 = 0;
        do
        {
          v15 = 0;
          memset(v14, 0, sizeof(v14));
          if (anstmodule_anstobjectv1502__decode(v16, v14))
          {
            anstmodule_anstobjectv1502__v_visit_cold_3();
          }

          result = (*(a2 + 16))(a2, v12++, v14);
        }

        while (v12 < a1[3]);
      }

      break;
    case 2:
      v7 = a1[1];
      v8 = a1[2];
      v9 = a1[3];
      result = tb_message_subrange();
      if (result)
      {
        anstmodule_anstobjectv1502__v_visit_cold_1();
      }

      break;
    case 3:
      if (a1[2])
      {
        v5 = 0;
        v6 = 0;
        do
        {
          result = (*(a2 + 16))(a2, v6++, a1[1] + v5);
          v5 += 40;
        }

        while (v6 < a1[2]);
      }

      break;
    default:
      anstmodule_anstobjectv1502__v_visit_cold_4(result);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __anstmodule_anstobjectv1502__v_visit_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 40) + 32))
  {
    v4 = 0;
    do
    {
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      if (anstmodule_anstobjectv1502__decode(a2, v6))
      {
        __anstmodule_anstobjectv1502__v_visit_block_invoke_cold_1();
      }

      (*(*(a1 + 32) + 16))();
      ++v4;
    }

    while (v4 < *(*(a1 + 40) + 32));
  }

  return 0;
}

uint64_t anstmodule_anstfacev1502__v_visit(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  result = *a1;
  switch(result)
  {
    case 1:
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = a1[1];
      v11 = a1[2];
      tb_transport_message_buffer_wrap_buffer();
      if (tb_message_construct())
      {
        anstmodule_anstfacev1502__v_visit_cold_2();
      }

      result = tb_message_configure_received();
      if (a1[3])
      {
        v12 = 0;
        do
        {
          memset(v14, 0, sizeof(v14));
          if (anstmodule_anstfacev1502__decode(v15, v14))
          {
            anstmodule_anstfacev1502__v_visit_cold_3();
          }

          result = (*(a2 + 16))(a2, v12++, v14);
        }

        while (v12 < a1[3]);
      }

      break;
    case 2:
      v7 = a1[1];
      v8 = a1[2];
      v9 = a1[3];
      result = tb_message_subrange();
      if (result)
      {
        anstmodule_anstfacev1502__v_visit_cold_1();
      }

      break;
    case 3:
      if (a1[2])
      {
        v5 = 0;
        v6 = 0;
        do
        {
          result = (*(a2 + 16))(a2, v6++, a1[1] + v5);
          v5 += 128;
        }

        while (v6 < a1[2]);
      }

      break;
    default:
      anstmodule_anstfacev1502__v_visit_cold_4(result);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __anstmodule_anstfacev1502__v_visit_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 40) + 32))
  {
    v4 = 0;
    do
    {
      memset(v6, 0, sizeof(v6));
      if (anstmodule_anstfacev1502__decode(a2, v6))
      {
        __anstmodule_anstfacev1502__v_visit_block_invoke_cold_1();
      }

      (*(*(a1 + 32) + 16))();
      ++v4;
    }

    while (v4 < *(*(a1 + 40) + 32));
  }

  return 0;
}

uint64_t anstmodule_anstresultipcv1502__decode(uint64_t a1, uint64_t a2)
{
  tb_message_decode_u64();
  result = tb_message_measure_subrange();
  if (result)
  {
    *a2 = 0;
  }

  else
  {
    *(a2 + 8) = a1;
    *(a2 + 32) = 0;
    *a2 = 2;
    tb_message_decode_u64();
    result = tb_message_measure_subrange();
    if (result)
    {
      v5 = 0;
    }

    else
    {
      *(a2 + 48) = a1;
      *(a2 + 72) = 0;
      v5 = 2;
    }

    *(a2 + 40) = v5;
  }

  return result;
}

uint64_t anstmodule_ekanst_channelrunkitanstv150(uint64_t *a1, unsigned int *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v13 = 0;
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t anstmodule_ekanst__init(uint64_t *a1)
{
  tb_endpoint_set_interface_identifier();
  v2 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t attentionawarenessmodule_ekattentionawareness_channelrunfacedetect(uint64_t *a1, unsigned int *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t attentionawarenessmodule_ekattentionawareness_channelrunattentiondetect(uint64_t *a1, unsigned int *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v13 = 0;
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t attentionawarenessmodule_ekattentionawareness_channelupdateattentionconfig(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2 & 0xFFFFFFFC;
    if (v6)
    {
      attentionawarenessmodule_ekattentionawareness_channelupdateattentionconfig_cold_1(v6);
    }

    tb_message_raw_encode_u32();
    v7 = *(a2 + 4);
    tb_message_raw_encode_BOOL();
    tb_message_complete();
    v8 = *a1;
    v9 = tb_connection_send_query();
    if ((v9 & 0xFFFFFFF7) != 0)
    {
      v5 = v9;
      v10 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v13 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t attentionawarenessmodule_ekattentionawareness__init(uint64_t *a1)
{
  tb_endpoint_set_interface_identifier();
  v2 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t autoexposuremodule_ekautoexposureresult__decode(uint64_t a1, uint64_t a2)
{
  tb_message_precheck_decoding();
  tb_message_raw_decode_u64();
  tb_message_raw_decode_BOOL();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u64();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_f32();
  tb_message_raw_decode_f32();
  tb_message_raw_decode_u32();
  *(a2 + 68) = 0;
  tb_message_raw_decode_u32();
  *(a2 + 72) = 0;
  return tb_message_raw_decode_BOOL();
}

uint64_t autoexposuremodule_ekautoexposure_channelrunautoexposure(uint64_t *a1, unsigned int *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v13 = 0;
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t autoexposuremodule_ekautoexposure_channelautoexposureframeratemaxset(uint64_t *a1, unsigned int *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    v7 = a2[1];
    tb_message_raw_encode_u32();
    tb_message_complete();
    v8 = *a1;
    v9 = tb_connection_send_query();
    if ((v9 & 0xFFFFFFF7) != 0)
    {
      v5 = v9;
      v10 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v13 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t autoexposuremodule_ekautoexposure_channelautoexposureframerateminset(uint64_t *a1, unsigned int *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    v7 = a2[1];
    tb_message_raw_encode_u32();
    tb_message_complete();
    v8 = *a1;
    v9 = tb_connection_send_query();
    if ((v9 & 0xFFFFFFF7) != 0)
    {
      v5 = v9;
      v10 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v13 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t autoexposuremodule_ekautoexposure_channelautoexposureinitsettingget(uint64_t *a1, unsigned int *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v13 = 0;
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t autoexposuremodule_ekautoexposure_channelautoexposureflickerfreqset(uint64_t *a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u64();
    if (*(a2 + 2) >= 5u)
    {
      autoexposuremodule_ekautoexposure_channelautoexposureflickerfreqset_cold_1(*(a2 + 2));
    }

    tb_message_raw_encode_u32();
    v7 = *(a2 + 3);
    tb_message_raw_encode_u32();
    tb_message_complete();
    v8 = *a1;
    v9 = tb_connection_send_query();
    if ((v9 & 0xFFFFFFF7) != 0)
    {
      v5 = v9;
      v10 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v13 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t autoexposuremodule_ekautoexposure_channelautoexposureframeratemaxget(uint64_t *a1, unsigned int *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t autoexposuremodule_ekautoexposure_channelautoexposureframerateminget(uint64_t *a1, unsigned int *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t autoexposuremodule_ekautoexposure__init(uint64_t *a1)
{
  tb_endpoint_set_interface_identifier();
  v2 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t eyereliefmodule_ekeyerelief_channelruneyerelief(uint64_t *a1, unsigned int *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v13 = 0;
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t eyereliefmodule_ekeyerelief__init(uint64_t *a1)
{
  tb_endpoint_set_interface_identifier();
  v2 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t ispexclavekitdebugmodule_ekdebug_channelpropertywrite(uint64_t *a1, unsigned int *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    v7 = a2[1];
    tb_message_raw_encode_u32();
    v8 = a2[2];
    tb_message_raw_encode_u32();
    tb_message_complete();
    v9 = *a1;
    v10 = tb_connection_send_query();
    if ((v10 & 0xFFFFFFF7) != 0)
    {
      v5 = v10;
      v11 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v14 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitdebugmodule_ekdebug_channelpropertyread(uint64_t *a1, unsigned int *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    v7 = a2[1];
    tb_message_raw_encode_u32();
    tb_message_complete();
    v8 = *a1;
    v9 = tb_connection_send_query();
    if ((v9 & 0xFFFFFFF7) != 0)
    {
      v5 = v9;
      v10 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v13 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitdebugmodule_ekdebug_channeldebugcapability(uint64_t *a1, unsigned int *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitdebugmodule_ekdebug_channelinfiltration(uint64_t *a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u64();
    v7 = *a2;
    if (*a2 != 0x3235545A248E0987 && v7 != 0x3AF3F0E64085E320)
    {
      ispexclavekitdebugmodule_ekdebug_channelinfiltration_cold_1(v7);
    }

    tb_message_complete();
    v8 = *a1;
    v9 = tb_connection_send_query();
    if ((v9 & 0xFFFFFFF7) != 0)
    {
      v5 = v9;
      v10 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v13 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitdebugmodule_ekdebug_channelexfiltration(uint64_t *a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u64();
    v7 = *a2;
    if (*a2 != 0x3235545A248E0987 && v7 != 0x3AF3F0E64085E320)
    {
      ispexclavekitdebugmodule_ekdebug_channelinfiltration_cold_1(v7);
    }

    tb_message_complete();
    v8 = *a1;
    v9 = tb_connection_send_query();
    if ((v9 & 0xFFFFFFF7) != 0)
    {
      v5 = v9;
      v10 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v13 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekitdebugmodule_ekdebug_channelcommandtimeout(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = tb_client_connection_message_construct();
  if (!v3)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_u32();
    tb_message_raw_encode_BOOL();
    tb_message_complete();
    v4 = *a1;
    v5 = tb_connection_send_query();
    if ((v5 & 0xFFFFFFF7) != 0)
    {
      v3 = v5;
      v6 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v9 = *a1;
      tb_client_connection_message_destruct();
      v3 = 4;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ispexclavekitdebugmodule_ekdebug__init(uint64_t *a1)
{
  tb_endpoint_set_interface_identifier();
  v2 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t ispexclavekithardwaredefaultconfig_ekhardwaredefaultconfig_channellscset(uint64_t *a1, unsigned __int16 *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v15 = 0u;
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    ispexclavekithardwaredefaultconfig_eklscconfig__raw_encode(v13, a2 + 2);
    tb_message_complete();
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekithardwaredefaultconfig_ekhardwaredefaultconfig_channelpdpset(uint64_t *a1, unsigned int *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v15 = 0u;
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    ispexclavekithardwaredefaultconfig_ekpdpconfig__raw_encode(v13, (a2 + 2));
    tb_message_complete();
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ispexclavekithardwaredefaultconfig_ekhardwaredefaultconfig__init(uint64_t *a1)
{
  tb_endpoint_set_interface_identifier();
  v2 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t motiontowakemodule_ekmotiontowake_channelrunmotiondetect(uint64_t *a1, unsigned int *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *a1;
  v5 = tb_client_connection_message_construct();
  if (!v5)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v6 = *a2;
    tb_message_raw_encode_u32();
    tb_message_complete();
    v13 = 0;
    v7 = *a1;
    v8 = tb_connection_send_query();
    if ((v8 & 0xFFFFFFF7) != 0)
    {
      v5 = v8;
      v9 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v12 = *a1;
      tb_client_connection_message_destruct();
      v5 = 4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t motiontowakemodule_ekmotiontowake__init(uint64_t *a1)
{
  tb_endpoint_set_interface_identifier();
  v2 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t fidflowmodule_attentiondetectresultv2__decode(uint64_t a1, uint64_t a2)
{
  tb_message_precheck_decoding();
  tb_message_raw_decode_u64();
  tb_message_raw_decode_BOOL();
  tb_message_raw_decode_u64();
  tb_message_raw_decode_u64();
  v4 = *(a2 + 24);
  if (v4 != 0x3D5A64FE9E70D376 && v4 != 0xEA06D2674FF0060FLL)
  {
    return 7;
  }

  tb_message_raw_decode_u32();
  *(a2 + 32) = 0;
  tb_message_raw_decode_u64();
  tb_message_raw_decode_u64();
  tb_message_raw_decode_u64();
  result = fidflowmodule_bufferformatdescriptor__raw_decode(a1, a2 + 64);
  if (!result)
  {
    tb_message_raw_decode_u64();
    tb_message_raw_decode_u64();
    tb_message_raw_decode_u64();
    result = fidflowmodule_bufferformatdescriptor__raw_decode(a1, a2 + 128);
    if (!result)
    {
      tb_message_raw_decode_u64();
      tb_message_raw_decode_u64();
      tb_message_raw_decode_u64();
      result = fidflowmodule_bufferformatdescriptor__raw_decode(a1, a2 + 192);
      if (!result)
      {
        result = attentionawarenessmodule_attentioninfo2__raw_decode(a1, (a2 + 232));
        if (!result)
        {
          tb_message_raw_decode_u32();
          *(a2 + 296) = 0;
          tb_message_raw_decode_u32();
          result = 0;
          *(a2 + 300) = 0;
        }
      }
    }
  }

  return result;
}