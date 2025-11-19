void *sub_245396FE8(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_2453A631C();
  }

  return result;
}

uint64_t sub_2453970B0(uint64_t result)
{
  v1 = result;
  v2 = (result + 396);
  v3 = *(result + 396);
  if (v3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v3 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_24542A030(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x10) != 0)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20) != 0)
    {
      v5 = *(v1 + 40);
      if (v5)
      {
        result = sub_2453DC6D0(v5 + 8);
        *(v5 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40) != 0)
    {
      v6 = *(v1 + 48);
      if (v6)
      {
        result = sub_2453DC6D0(v6 + 8);
        *(v6 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80) != 0)
    {
      v7 = *(v1 + 56);
      if (v7)
      {
        result = sub_2453DC6D0(v7 + 8);
        *(v7 + 36) = 0;
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v8 = *(v1 + 64);
      if (v8)
      {
        if (*(v8 + 36))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          *(v8 + 24) = 0;
        }

        *(v8 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x200) != 0)
    {
      v9 = *(v1 + 72);
      if (v9)
      {
        v10 = *(v9 + 76);
        if (v10)
        {
          *(v9 + 49) = 0u;
          *(v9 + 40) = 0u;
          *(v9 + 24) = 0u;
          *(v9 + 8) = 0u;
        }

        if ((v10 & 0xFF00) != 0)
        {
          *(v9 + 69) = 0;
          *(v9 + 65) = 0;
        }

        *(v9 + 76) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x400) != 0)
    {
      v11 = *(v1 + 80);
      if (v11)
      {
        if (*(v11 + 32))
        {
          *(v11 + 8) = 0;
          *(v11 + 16) = 0x400000000;
          *(v11 + 24) = 0;
        }

        *(v11 + 32) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x800) != 0)
    {
      v12 = *(v1 + 88);
      if (v12)
      {
        if (*(v12 + 24))
        {
          *(v12 + 8) = 0;
          *(v12 + 16) = 4;
        }

        *(v12 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x1000) != 0)
    {
      v13 = *(v1 + 96);
      if (v13)
      {
        if (*(v13 + 16))
        {
          *(v13 + 8) = 15;
        }

        *(v13 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000) != 0)
    {
      v14 = *(v1 + 104);
      if (v14)
      {
        if (*(v14 + 44))
        {
          *(v14 + 24) = 0u;
          *(v14 + 8) = 0u;
        }

        *(v14 + 44) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000) != 0)
    {
      v15 = *(v1 + 112);
      if (v15)
      {
        if (*(v15 + 36))
        {
          *(v15 + 8) = 0;
          *(v15 + 16) = 0;
          *(v15 + 24) = 0;
        }

        *(v15 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000) != 0)
    {
      result = *(v1 + 120);
      if (result)
      {
        result = sub_24542A204(result);
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v16 = *(v1 + 128);
      if (v16)
      {
        if (*(v16 + 20))
        {
          v17 = *(v16 + 8);
          if (v17 != MEMORY[0x277D82C30])
          {
            if (*(v17 + 23) < 0)
            {
              **v17 = 0;
              *(v17 + 8) = 0;
            }

            else
            {
              *v17 = 0;
              *(v17 + 23) = 0;
            }
          }
        }

        *(v16 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000) != 0)
    {
      v18 = *(v1 + 136);
      if (v18)
      {
        result = sub_2453DC6D0(v18 + 8);
        *(v18 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000) != 0)
    {
      v19 = *(v1 + 144);
      if (v19)
      {
        if (*(v19 + 20))
        {
          *(v19 + 8) = 0;
        }

        *(v19 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000) != 0)
    {
      v20 = *(v1 + 152);
      if (v20)
      {
        if (*(v20 + 20))
        {
          *(v20 + 8) = 1;
          *(v20 + 9) = 0;
          *(v20 + 13) = 0;
        }

        *(v20 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x100000) != 0)
    {
      v21 = *(v1 + 160);
      if (v21)
      {
        if (*(v21 + 20))
        {
          *(v21 + 8) = 0;
        }

        *(v21 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x200000) != 0)
    {
      v22 = *(v1 + 168);
      if (v22)
      {
        if (*(v22 + 20))
        {
          *(v22 + 8) = 0;
          *(v22 + 12) = 0;
        }

        *(v22 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x400000) != 0)
    {
      v23 = *(v1 + 176);
      if (v23)
      {
        if (*(v23 + 20))
        {
          *(v23 + 8) = 0;
        }

        *(v23 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x800000) != 0)
    {
      v24 = *(v1 + 184);
      if (v24)
      {
        if (*(v24 + 16))
        {
          *(v24 + 8) = 0;
        }

        *(v24 + 16) = 0;
        v3 = *v2;
      }
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      v25 = *(v1 + 192);
      if (v25)
      {
        if (*(v25 + 20))
        {
          v26 = *(v25 + 8);
          if (v26 != MEMORY[0x277D82C30])
          {
            if (*(v26 + 23) < 0)
            {
              **v26 = 0;
              *(v26 + 8) = 0;
            }

            else
            {
              *v26 = 0;
              *(v26 + 23) = 0;
            }
          }
        }

        *(v25 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000000) != 0)
    {
      v27 = *(v1 + 200);
      if (v27)
      {
        if (*(v27 + 20))
        {
          v28 = *(v27 + 8);
          if (v28 != MEMORY[0x277D82C30])
          {
            if (*(v28 + 23) < 0)
            {
              **v28 = 0;
              *(v28 + 8) = 0;
            }

            else
            {
              *v28 = 0;
              *(v28 + 23) = 0;
            }
          }
        }

        *(v27 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000000) != 0)
    {
      result = *(v1 + 208);
      if (result)
      {
        result = sub_24542A3D0(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000000) != 0)
    {
      v29 = *(v1 + 216);
      if (v29)
      {
        if (*(v29 + 24))
        {
          *(v29 + 16) = 0;
          *(v29 + 8) = 0;
        }

        *(v29 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x10000000) != 0)
    {
      v30 = *(v1 + 224);
      if (v30)
      {
        if (*(v30 + 24))
        {
          *(v30 + 8) = 0;
          *(v30 + 16) = 0;
        }

        *(v30 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000000) != 0)
    {
      v31 = *(v1 + 232);
      if (v31)
      {
        if (*(v31 + 16))
        {
          *(v31 + 8) = 0;
        }

        *(v31 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000000) != 0)
    {
      v32 = *(v1 + 240);
      if (v32)
      {
        if (*(v32 + 20))
        {
          v33 = *(v32 + 8);
          if (v33 != MEMORY[0x277D82C30])
          {
            if (*(v33 + 23) < 0)
            {
              **v33 = 0;
              *(v33 + 8) = 0;
            }

            else
            {
              *v33 = 0;
              *(v33 + 23) = 0;
            }
          }
        }

        *(v32 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000000) != 0)
    {
      result = *(v1 + 248);
      if (result)
      {
        result = sub_24541F3F0(result);
      }
    }
  }

  v34 = *(v1 + 400);
  if (v34)
  {
    if (v34)
    {
      v35 = *(v1 + 256);
      if (v35 != MEMORY[0x277D82C30])
      {
        if (*(v35 + 23) < 0)
        {
          **v35 = 0;
          *(v35 + 8) = 0;
        }

        else
        {
          *v35 = 0;
          *(v35 + 23) = 0;
        }
      }
    }

    v34 = *(v1 + 400);
    if ((v34 & 2) != 0)
    {
      v36 = *(v1 + 264);
      if (v36)
      {
        v37 = *(v36 + 80);
        if (v37)
        {
          *(v36 + 24) = 0u;
          *(v36 + 8) = 0u;
        }

        if ((v37 & 0xFF00) != 0)
        {
          *(v36 + 56) = 0u;
          *(v36 + 40) = 0u;
        }

        if ((v37 & 0xFF0000) != 0)
        {
          *(v36 + 72) = 0;
        }

        *(v36 + 80) = 0;
        v34 = *(v1 + 400);
      }
    }

    *(v1 + 304) = 0;
    if ((v34 & 8) != 0)
    {
      result = *(v1 + 272);
      if (result)
      {
        result = sub_245419C10(result);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x10) != 0)
    {
      v38 = *(v1 + 280);
      if (v38)
      {
        v39 = *(v38 + 68);
        if (v39)
        {
          *(v38 + 24) = 0u;
          *(v38 + 8) = 0u;
        }

        if ((v39 & 0xFF00) != 0)
        {
          *(v38 + 40) = 0;
          *(v38 + 48) = 0;
          *(v38 + 56) = 0;
        }

        *(v38 + 68) = 0;
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x20) != 0)
    {
      v40 = *(v1 + 288);
      if (v40)
      {
        if (*(v40 + 52))
        {
          *(v40 + 32) = 0;
          *(v40 + 40) = 0;
        }

        result = sub_2453DC6D0(v40 + 8);
        *(v40 + 52) = 0;
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x40) != 0)
    {
      result = *(v1 + 296);
      if (result)
      {
        result = sub_245420F00(result);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x80) != 0)
    {
      result = *(v1 + 312);
      if (result)
      {
        result = sub_245422048(result);
        v34 = *(v1 + 400);
      }
    }
  }

  if ((v34 & 0xFF00) != 0)
  {
    if ((v34 & 0x100) != 0)
    {
      result = *(v1 + 320);
      if (result)
      {
        result = sub_24541E99C(result);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x400) != 0)
    {
      result = *(v1 + 344);
      if (result)
      {
        result = sub_2453EFB50(result);
        v34 = *(v1 + 400);
      }
    }

    *(v1 + 308) = 0;
    *(v1 + 368) = 0;
    *(v1 + 372) = 0;
    if ((v34 & 0x8000) != 0)
    {
      result = *(v1 + 376);
      if (result)
      {
        result = sub_2453F4B50(result);
        v34 = *(v1 + 400);
      }
    }
  }

  if ((v34 & 0x10000) != 0)
  {
    v41 = *(v1 + 384);
    if (v41)
    {
      if (*(v41 + 40))
      {
        *(v41 + 32) = 0;
      }

      result = sub_2453DC6D0(v41 + 8);
      *(v41 + 40) = 0;
    }
  }

  *(v1 + 336) = 0;
  *(v1 + 360) = 0;
  *v2 = 0;
  return result;
}

void sub_245397744()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&dword_245396000, v0, OS_LOG_TYPE_DEBUG, "GnssEmergencyManager::handleIndicationDataRequest", v1, 2u);
  }

  operator new();
}

void sub_2453981A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_2453A13E8(&a39);
  if (v40)
  {
    operator delete(v40);
  }

  (*(*v39 + 8))(v39);
  _Unwind_Resume(a1);
}

void sub_245398218()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v0, OS_LOG_TYPE_DEBUG, "GnssEmergencyManager::handleRemoteDataRequest", buf, 2u);
  }

  operator new();
}

void sub_245398B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2453A7C24(&STACK[0x630]);
  sub_2453A7C24(va);
  if (v6)
  {
    operator delete(v6);
  }

  (*(*v5 + 8))(v5);
  _Unwind_Resume(a1);
}

uint64_t sub_245398C58(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this)
{
  v4 = (a1 + 304);
  v5 = (a1 + 308);
  v6 = (a1 + 372);
LABEL_2:
  while (2)
  {
    v7 = *(this + 1);
    if (v7 >= *(this + 2) || (TagFallback = *v7, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v7 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v9 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        *(a1 + 396) |= 1u;
        if (v13 < v10 && *v13 == 16)
        {
          v18 = v13 + 1;
          *(this + 1) = v18;
          goto LABEL_122;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v18 = *(this + 1);
        v10 = *(this + 2);
LABEL_122:
        if (v18 >= v10 || (v28 = *v18, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v29 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v28;
          v29 = v18 + 1;
          *(this + 1) = v29;
        }

        *(a1 + 396) |= 2u;
        if (v29 >= v10 || *v29 != 24)
        {
          continue;
        }

        v17 = v29 + 1;
        *(this + 1) = v17;
LABEL_130:
        v337[0] = 0;
        if (v17 >= v10 || (v30 = *v17, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337);
          if (!result)
          {
            return result;
          }

          v30 = v337[0];
        }

        else
        {
          *(this + 1) = v17 + 1;
        }

        if (sub_24539CC90(v30))
        {
          *(a1 + 396) |= 4u;
          *(a1 + 20) = v30;
        }

        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 != 34)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_140:
        *(a1 + 396) |= 8u;
        v32 = *(a1 + 24);
        if (!v32)
        {
          operator new();
        }

        v337[0] = 0;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v33;
          *(this + 1) = v33 + 1;
        }

        v34 = *(this + 14);
        v35 = *(this + 15);
        *(this + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24539C364(v32, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v36 = *(this + 14);
        v37 = __OFSUB__(v36, 1);
        v38 = v36 - 1;
        if (v38 < 0 == v37)
        {
          *(this + 14) = v38;
        }

        v39 = *(this + 1);
        if (v39 >= *(this + 2) || *v39 != 42)
        {
          continue;
        }

        *(this + 1) = v39 + 1;
LABEL_154:
        *(a1 + 396) |= 0x10u;
        v40 = *(a1 + 32);
        if (!v40)
        {
          operator new();
        }

        v337[0] = 0;
        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v41;
          *(this + 1) = v41 + 1;
        }

        v42 = *(this + 14);
        v43 = *(this + 15);
        *(this + 14) = v42 + 1;
        if (v42 >= v43)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24539DAC8(v40, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v44 = *(this + 14);
        v37 = __OFSUB__(v44, 1);
        v45 = v44 - 1;
        if (v45 < 0 == v37)
        {
          *(this + 14) = v45;
        }

        v46 = *(this + 1);
        if (v46 >= *(this + 2) || *v46 != 50)
        {
          continue;
        }

        *(this + 1) = v46 + 1;
LABEL_168:
        *(a1 + 396) |= 0x20u;
        v47 = *(a1 + 40);
        if (!v47)
        {
          operator new();
        }

        v337[0] = 0;
        v48 = *(this + 1);
        if (v48 >= *(this + 2) || *v48 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v48;
          *(this + 1) = v48 + 1;
        }

        v49 = *(this + 14);
        v50 = *(this + 15);
        *(this + 14) = v49 + 1;
        if (v49 >= v50)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543318C(v47, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v51 = *(this + 14);
        v37 = __OFSUB__(v51, 1);
        v52 = v51 - 1;
        if (v52 < 0 == v37)
        {
          *(this + 14) = v52;
        }

        v53 = *(this + 1);
        if (v53 >= *(this + 2) || *v53 != 58)
        {
          continue;
        }

        *(this + 1) = v53 + 1;
LABEL_182:
        *(a1 + 396) |= 0x40u;
        v54 = *(a1 + 48);
        if (!v54)
        {
          operator new();
        }

        v337[0] = 0;
        v55 = *(this + 1);
        if (v55 >= *(this + 2) || *v55 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v55;
          *(this + 1) = v55 + 1;
        }

        v56 = *(this + 14);
        v57 = *(this + 15);
        *(this + 14) = v56 + 1;
        if (v56 >= v57)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245433648(v54, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v58 = *(this + 14);
        v37 = __OFSUB__(v58, 1);
        v59 = v58 - 1;
        if (v59 < 0 == v37)
        {
          *(this + 14) = v59;
        }

        v60 = *(this + 1);
        if (v60 >= *(this + 2) || *v60 != 66)
        {
          continue;
        }

        *(this + 1) = v60 + 1;
LABEL_196:
        *(a1 + 396) |= 0x80u;
        v61 = *(a1 + 56);
        if (!v61)
        {
          operator new();
        }

        v337[0] = 0;
        v62 = *(this + 1);
        if (v62 >= *(this + 2) || *v62 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v62;
          *(this + 1) = v62 + 1;
        }

        v63 = *(this + 14);
        v64 = *(this + 15);
        *(this + 14) = v63 + 1;
        if (v63 >= v64)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245433C88(v61, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v65 = *(this + 14);
        v37 = __OFSUB__(v65, 1);
        v66 = v65 - 1;
        if (v66 < 0 == v37)
        {
          *(this + 14) = v66;
        }

        v67 = *(this + 1);
        if (v67 >= *(this + 2) || *v67 != 74)
        {
          continue;
        }

        *(this + 1) = v67 + 1;
LABEL_210:
        *(a1 + 396) |= 0x100u;
        v68 = *(a1 + 64);
        if (!v68)
        {
          operator new();
        }

        v337[0] = 0;
        v69 = *(this + 1);
        if (v69 >= *(this + 2) || *v69 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v69;
          *(this + 1) = v69 + 1;
        }

        v70 = *(this + 14);
        v71 = *(this + 15);
        *(this + 14) = v70 + 1;
        if (v70 >= v71)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453A1EB4(v68, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v72 = *(this + 14);
        v37 = __OFSUB__(v72, 1);
        v73 = v72 - 1;
        if (v73 < 0 == v37)
        {
          *(this + 14) = v73;
        }

        v74 = *(this + 1);
        if (v74 >= *(this + 2) || *v74 != 82)
        {
          continue;
        }

        *(this + 1) = v74 + 1;
LABEL_224:
        *(a1 + 396) |= 0x200u;
        v75 = *(a1 + 72);
        if (!v75)
        {
          operator new();
        }

        v337[0] = 0;
        v76 = *(this + 1);
        if (v76 >= *(this + 2) || *v76 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v76;
          *(this + 1) = v76 + 1;
        }

        v77 = *(this + 14);
        v78 = *(this + 15);
        *(this + 14) = v77 + 1;
        if (v77 >= v78)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543434C(v75, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v79 = *(this + 14);
        v37 = __OFSUB__(v79, 1);
        v80 = v79 - 1;
        if (v80 < 0 == v37)
        {
          *(this + 14) = v80;
        }

        v81 = *(this + 1);
        if (v81 >= *(this + 2) || *v81 != 90)
        {
          continue;
        }

        *(this + 1) = v81 + 1;
LABEL_238:
        *(a1 + 396) |= 0x400u;
        v82 = *(a1 + 80);
        if (!v82)
        {
          operator new();
        }

        v337[0] = 0;
        v83 = *(this + 1);
        if (v83 >= *(this + 2) || *v83 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v83;
          *(this + 1) = v83 + 1;
        }

        v84 = *(this + 14);
        v85 = *(this + 15);
        *(this + 14) = v84 + 1;
        if (v84 >= v85)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245434D7C(v82, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v86 = *(this + 14);
        v37 = __OFSUB__(v86, 1);
        v87 = v86 - 1;
        if (v87 < 0 == v37)
        {
          *(this + 14) = v87;
        }

        v88 = *(this + 1);
        if (v88 >= *(this + 2) || *v88 != 98)
        {
          continue;
        }

        *(this + 1) = v88 + 1;
LABEL_252:
        *(a1 + 396) |= 0x800u;
        v89 = *(a1 + 88);
        if (!v89)
        {
          operator new();
        }

        v337[0] = 0;
        v90 = *(this + 1);
        if (v90 >= *(this + 2) || *v90 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v90;
          *(this + 1) = v90 + 1;
        }

        v91 = *(this + 14);
        v92 = *(this + 15);
        *(this + 14) = v91 + 1;
        if (v91 >= v92)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245435368(v89, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v93 = *(this + 14);
        v37 = __OFSUB__(v93, 1);
        v94 = v93 - 1;
        if (v94 < 0 == v37)
        {
          *(this + 14) = v94;
        }

        v95 = *(this + 1);
        if (v95 >= *(this + 2) || *v95 != 106)
        {
          continue;
        }

        *(this + 1) = v95 + 1;
LABEL_266:
        *(a1 + 396) |= 0x1000u;
        v96 = *(a1 + 96);
        if (!v96)
        {
          operator new();
        }

        v337[0] = 0;
        v97 = *(this + 1);
        if (v97 >= *(this + 2) || *v97 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v97;
          *(this + 1) = v97 + 1;
        }

        v98 = *(this + 14);
        v99 = *(this + 15);
        *(this + 14) = v98 + 1;
        if (v98 >= v99)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543579C(v96, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v100 = *(this + 14);
        v37 = __OFSUB__(v100, 1);
        v101 = v100 - 1;
        if (v101 < 0 == v37)
        {
          *(this + 14) = v101;
        }

        v102 = *(this + 1);
        if (v102 >= *(this + 2) || *v102 != 114)
        {
          continue;
        }

        *(this + 1) = v102 + 1;
LABEL_280:
        *(a1 + 396) |= 0x2000u;
        v103 = *(a1 + 104);
        if (!v103)
        {
          operator new();
        }

        v337[0] = 0;
        v104 = *(this + 1);
        if (v104 >= *(this + 2) || *v104 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v104;
          *(this + 1) = v104 + 1;
        }

        v105 = *(this + 14);
        v106 = *(this + 15);
        *(this + 14) = v105 + 1;
        if (v105 >= v106)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245435AD8(v103, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v107 = *(this + 14);
        v37 = __OFSUB__(v107, 1);
        v108 = v107 - 1;
        if (v108 < 0 == v37)
        {
          *(this + 14) = v108;
        }

        v109 = *(this + 1);
        if (v109 >= *(this + 2) || *v109 != 122)
        {
          continue;
        }

        *(this + 1) = v109 + 1;
LABEL_294:
        *(a1 + 396) |= 0x4000u;
        v110 = *(a1 + 112);
        if (!v110)
        {
          operator new();
        }

        v337[0] = 0;
        v111 = *(this + 1);
        if (v111 >= *(this + 2) || *v111 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v111;
          *(this + 1) = v111 + 1;
        }

        v112 = *(this + 14);
        v113 = *(this + 15);
        *(this + 14) = v112 + 1;
        if (v112 >= v113)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245435FC4(v110, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v114 = *(this + 14);
        v37 = __OFSUB__(v114, 1);
        v115 = v114 - 1;
        if (v115 < 0 == v37)
        {
          *(this + 14) = v115;
        }

        v116 = *(this + 1);
        if (*(this + 4) - v116 <= 1 || *v116 != 130 || v116[1] != 1)
        {
          continue;
        }

        *(this + 1) = v116 + 2;
LABEL_309:
        *(a1 + 396) |= 0x8000u;
        v117 = *(a1 + 120);
        if (!v117)
        {
          operator new();
        }

        v337[0] = 0;
        v118 = *(this + 1);
        if (v118 >= *(this + 2) || *v118 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v118;
          *(this + 1) = v118 + 1;
        }

        v119 = *(this + 14);
        v120 = *(this + 15);
        *(this + 14) = v119 + 1;
        if (v119 >= v120)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543156C(v117, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v121 = *(this + 14);
        v37 = __OFSUB__(v121, 1);
        v122 = v121 - 1;
        if (v122 < 0 == v37)
        {
          *(this + 14) = v122;
        }

        v123 = *(this + 1);
        if (*(this + 4) - v123 <= 1 || *v123 != 138 || v123[1] != 1)
        {
          continue;
        }

        *(this + 1) = v123 + 2;
LABEL_324:
        *(a1 + 396) |= 0x10000u;
        v124 = *(a1 + 128);
        if (!v124)
        {
          operator new();
        }

        v337[0] = 0;
        v125 = *(this + 1);
        if (v125 >= *(this + 2) || *v125 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v125;
          *(this + 1) = v125 + 1;
        }

        v126 = *(this + 14);
        v127 = *(this + 15);
        *(this + 14) = v126 + 1;
        if (v126 >= v127)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245431A3C(v124, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v128 = *(this + 14);
        v37 = __OFSUB__(v128, 1);
        v129 = v128 - 1;
        if (v129 < 0 == v37)
        {
          *(this + 14) = v129;
        }

        v130 = *(this + 1);
        if (*(this + 4) - v130 <= 1 || *v130 != 146 || v130[1] != 1)
        {
          continue;
        }

        *(this + 1) = v130 + 2;
LABEL_339:
        *(a1 + 396) |= 0x20000u;
        v131 = *(a1 + 136);
        if (!v131)
        {
          operator new();
        }

        v337[0] = 0;
        v132 = *(this + 1);
        if (v132 >= *(this + 2) || *v132 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v132;
          *(this + 1) = v132 + 1;
        }

        v133 = *(this + 14);
        v134 = *(this + 15);
        *(this + 14) = v133 + 1;
        if (v133 >= v134)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2454321A8(v131, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v135 = *(this + 14);
        v37 = __OFSUB__(v135, 1);
        v136 = v135 - 1;
        if (v136 < 0 == v37)
        {
          *(this + 14) = v136;
        }

        v137 = *(this + 1);
        if (*(this + 4) - v137 <= 1 || *v137 != 154 || v137[1] != 1)
        {
          continue;
        }

        *(this + 1) = v137 + 2;
LABEL_354:
        *(a1 + 396) |= 0x40000u;
        v138 = *(a1 + 144);
        if (!v138)
        {
          operator new();
        }

        v337[0] = 0;
        v139 = *(this + 1);
        if (v139 >= *(this + 2) || *v139 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v139;
          *(this + 1) = v139 + 1;
        }

        v140 = *(this + 14);
        v141 = *(this + 15);
        *(this + 14) = v140 + 1;
        if (v140 >= v141)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245432B28(v138, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v142 = *(this + 14);
        v37 = __OFSUB__(v142, 1);
        v143 = v142 - 1;
        if (v143 < 0 == v37)
        {
          *(this + 14) = v143;
        }

        v144 = *(this + 1);
        if (*(this + 4) - v144 <= 1 || *v144 != 162 || v144[1] != 1)
        {
          continue;
        }

        *(this + 1) = v144 + 2;
LABEL_369:
        *(a1 + 396) |= 0x80000u;
        v145 = *(a1 + 152);
        if (!v145)
        {
          operator new();
        }

        v337[0] = 0;
        v146 = *(this + 1);
        if (v146 >= *(this + 2) || *v146 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v146;
          *(this + 1) = v146 + 1;
        }

        v147 = *(this + 14);
        v148 = *(this + 15);
        *(this + 14) = v147 + 1;
        if (v147 >= v148)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245430EA8(v145, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v149 = *(this + 14);
        v37 = __OFSUB__(v149, 1);
        v150 = v149 - 1;
        if (v150 < 0 == v37)
        {
          *(this + 14) = v150;
        }

        v151 = *(this + 1);
        if (*(this + 4) - v151 <= 1 || *v151 != 170 || v151[1] != 1)
        {
          continue;
        }

        *(this + 1) = v151 + 2;
LABEL_384:
        *(a1 + 396) |= 0x100000u;
        v152 = *(a1 + 160);
        if (!v152)
        {
          operator new();
        }

        v337[0] = 0;
        v153 = *(this + 1);
        if (v153 >= *(this + 2) || *v153 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v153;
          *(this + 1) = v153 + 1;
        }

        v154 = *(this + 14);
        v155 = *(this + 15);
        *(this + 14) = v154 + 1;
        if (v154 >= v155)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245432E20(v152, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v156 = *(this + 14);
        v37 = __OFSUB__(v156, 1);
        v157 = v156 - 1;
        if (v157 < 0 == v37)
        {
          *(this + 14) = v157;
        }

        v158 = *(this + 1);
        if (*(this + 4) - v158 <= 1 || *v158 != 178 || v158[1] != 1)
        {
          continue;
        }

        *(this + 1) = v158 + 2;
LABEL_399:
        *(a1 + 396) |= 0x200000u;
        v159 = *(a1 + 168);
        if (!v159)
        {
          operator new();
        }

        v337[0] = 0;
        v160 = *(this + 1);
        if (v160 >= *(this + 2) || *v160 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v160;
          *(this + 1) = v160 + 1;
        }

        v161 = *(this + 14);
        v162 = *(this + 15);
        *(this + 14) = v161 + 1;
        if (v161 >= v162)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245436828(v159, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v163 = *(this + 14);
        v37 = __OFSUB__(v163, 1);
        v164 = v163 - 1;
        if (v164 < 0 == v37)
        {
          *(this + 14) = v164;
        }

        v165 = *(this + 1);
        if (*(this + 4) - v165 <= 1 || *v165 != 186 || v165[1] != 1)
        {
          continue;
        }

        *(this + 1) = v165 + 2;
LABEL_414:
        *(a1 + 396) |= 0x400000u;
        v166 = *(a1 + 176);
        if (!v166)
        {
          operator new();
        }

        v337[0] = 0;
        v167 = *(this + 1);
        if (v167 >= *(this + 2) || *v167 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v167;
          *(this + 1) = v167 + 1;
        }

        v168 = *(this + 14);
        v169 = *(this + 15);
        *(this + 14) = v168 + 1;
        if (v168 >= v169)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245436C3C(v166, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v170 = *(this + 14);
        v37 = __OFSUB__(v170, 1);
        v171 = v170 - 1;
        if (v171 < 0 == v37)
        {
          *(this + 14) = v171;
        }

        v172 = *(this + 1);
        if (*(this + 4) - v172 <= 1 || *v172 != 194 || v172[1] != 1)
        {
          continue;
        }

        *(this + 1) = v172 + 2;
LABEL_429:
        *(a1 + 396) |= 0x800000u;
        v173 = *(a1 + 184);
        if (!v173)
        {
          operator new();
        }

        v337[0] = 0;
        v174 = *(this + 1);
        if (v174 >= *(this + 2) || *v174 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v174;
          *(this + 1) = v174 + 1;
        }

        v175 = *(this + 14);
        v176 = *(this + 15);
        *(this + 14) = v175 + 1;
        if (v175 >= v176)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245437428(v173, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v177 = *(this + 14);
        v37 = __OFSUB__(v177, 1);
        v178 = v177 - 1;
        if (v178 < 0 == v37)
        {
          *(this + 14) = v178;
        }

        v179 = *(this + 1);
        if (*(this + 4) - v179 <= 1 || *v179 != 202 || v179[1] != 1)
        {
          continue;
        }

        *(this + 1) = v179 + 2;
LABEL_444:
        *(a1 + 396) |= 0x1000000u;
        v180 = *(a1 + 192);
        if (!v180)
        {
          operator new();
        }

        v337[0] = 0;
        v181 = *(this + 1);
        if (v181 >= *(this + 2) || *v181 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v181;
          *(this + 1) = v181 + 1;
        }

        v182 = *(this + 14);
        v183 = *(this + 15);
        *(this + 14) = v182 + 1;
        if (v182 >= v183)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543775C(v180, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v184 = *(this + 14);
        v37 = __OFSUB__(v184, 1);
        v185 = v184 - 1;
        if (v185 < 0 == v37)
        {
          *(this + 14) = v185;
        }

        v186 = *(this + 1);
        if (*(this + 4) - v186 <= 1 || *v186 != 210 || v186[1] != 1)
        {
          continue;
        }

        *(this + 1) = v186 + 2;
LABEL_459:
        *(a1 + 396) |= 0x2000000u;
        v187 = *(a1 + 200);
        if (!v187)
        {
          operator new();
        }

        v337[0] = 0;
        v188 = *(this + 1);
        if (v188 >= *(this + 2) || *v188 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v188;
          *(this + 1) = v188 + 1;
        }

        v189 = *(this + 14);
        v190 = *(this + 15);
        *(this + 14) = v189 + 1;
        if (v189 >= v190)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245437AFC(v187, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v191 = *(this + 14);
        v37 = __OFSUB__(v191, 1);
        v192 = v191 - 1;
        if (v192 < 0 == v37)
        {
          *(this + 14) = v192;
        }

        v193 = *(this + 1);
        if (*(this + 4) - v193 <= 1 || *v193 != 218 || v193[1] != 1)
        {
          continue;
        }

        *(this + 1) = v193 + 2;
LABEL_474:
        *(a1 + 396) |= 0x4000000u;
        v194 = *(a1 + 208);
        if (!v194)
        {
          operator new();
        }

        v337[0] = 0;
        v195 = *(this + 1);
        if (v195 >= *(this + 2) || *v195 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v195;
          *(this + 1) = v195 + 1;
        }

        v196 = *(this + 14);
        v197 = *(this + 15);
        *(this + 14) = v196 + 1;
        if (v196 >= v197)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543BD84(v194, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v198 = *(this + 14);
        v37 = __OFSUB__(v198, 1);
        v199 = v198 - 1;
        if (v199 < 0 == v37)
        {
          *(this + 14) = v199;
        }

        v200 = *(this + 1);
        if (*(this + 4) - v200 <= 1 || *v200 != 226 || v200[1] != 1)
        {
          continue;
        }

        *(this + 1) = v200 + 2;
LABEL_489:
        *(a1 + 396) |= 0x8000000u;
        v201 = *(a1 + 216);
        if (!v201)
        {
          operator new();
        }

        v337[0] = 0;
        v202 = *(this + 1);
        if (v202 >= *(this + 2) || *v202 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v202;
          *(this + 1) = v202 + 1;
        }

        v203 = *(this + 14);
        v204 = *(this + 15);
        *(this + 14) = v203 + 1;
        if (v203 >= v204)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543E264(v201, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v205 = *(this + 14);
        v37 = __OFSUB__(v205, 1);
        v206 = v205 - 1;
        if (v206 < 0 == v37)
        {
          *(this + 14) = v206;
        }

        v207 = *(this + 1);
        if (*(this + 4) - v207 <= 1 || *v207 != 242 || v207[1] != 1)
        {
          continue;
        }

        *(this + 1) = v207 + 2;
LABEL_504:
        *(a1 + 396) |= 0x10000000u;
        v208 = *(a1 + 224);
        if (!v208)
        {
          operator new();
        }

        v337[0] = 0;
        v209 = *(this + 1);
        if (v209 >= *(this + 2) || *v209 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v209;
          *(this + 1) = v209 + 1;
        }

        v210 = *(this + 14);
        v211 = *(this + 15);
        *(this + 14) = v210 + 1;
        if (v210 >= v211)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245436420(v208, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v212 = *(this + 14);
        v37 = __OFSUB__(v212, 1);
        v213 = v212 - 1;
        if (v213 < 0 == v37)
        {
          *(this + 14) = v213;
        }

        v214 = *(this + 1);
        if (*(this + 4) - v214 <= 1 || *v214 != 250 || v214[1] != 1)
        {
          continue;
        }

        *(this + 1) = v214 + 2;
LABEL_519:
        *(a1 + 396) |= 0x20000000u;
        v215 = *(a1 + 232);
        if (!v215)
        {
          operator new();
        }

        v337[0] = 0;
        v216 = *(this + 1);
        if (v216 >= *(this + 2) || *v216 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v216;
          *(this + 1) = v216 + 1;
        }

        v217 = *(this + 14);
        v218 = *(this + 15);
        *(this + 14) = v217 + 1;
        if (v217 >= v218)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245437054(v215, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v219 = *(this + 14);
        v37 = __OFSUB__(v219, 1);
        v220 = v219 - 1;
        if (v220 < 0 == v37)
        {
          *(this + 14) = v220;
        }

        v221 = *(this + 1);
        if (*(this + 4) - v221 <= 1 || *v221 != 130 || v221[1] != 2)
        {
          continue;
        }

        *(this + 1) = v221 + 2;
LABEL_534:
        *(a1 + 396) |= 0x40000000u;
        v222 = *(a1 + 240);
        if (!v222)
        {
          operator new();
        }

        v337[0] = 0;
        v223 = *(this + 1);
        if (v223 >= *(this + 2) || *v223 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v223;
          *(this + 1) = v223 + 1;
        }

        v224 = *(this + 14);
        v225 = *(this + 15);
        *(this + 14) = v224 + 1;
        if (v224 >= v225)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245431DDC(v222, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v226 = *(this + 14);
        v37 = __OFSUB__(v226, 1);
        v227 = v226 - 1;
        if (v227 < 0 == v37)
        {
          *(this + 14) = v227;
        }

        v228 = *(this + 1);
        if (*(this + 4) - v228 <= 1 || *v228 != 146 || v228[1] != 3)
        {
          continue;
        }

        *(this + 1) = v228 + 2;
LABEL_549:
        *(a1 + 396) |= 0x80000000;
        v229 = *(a1 + 248);
        if (!v229)
        {
          operator new();
        }

        v337[0] = 0;
        v230 = *(this + 1);
        if (v230 >= *(this + 2) || *v230 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v230;
          *(this + 1) = v230 + 1;
        }

        v231 = *(this + 14);
        v232 = *(this + 15);
        *(this + 14) = v231 + 1;
        if (v231 >= v232)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24541F48C(v229, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v233 = *(this + 14);
        v37 = __OFSUB__(v233, 1);
        v234 = v233 - 1;
        if (v234 < 0 == v37)
        {
          *(this + 14) = v234;
        }

        v235 = *(this + 1);
        if (*(this + 4) - v235 <= 1 || *v235 != 154 || v235[1] != 3)
        {
          continue;
        }

        *(this + 1) = v235 + 2;
LABEL_564:
        *(a1 + 400) |= 1u;
        if (*(a1 + 256) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v236 = *(this + 1);
        if (*(this + 4) - v236 < 2 || *v236 != 226 || v236[1] != 3)
        {
          continue;
        }

        *(this + 1) = v236 + 2;
LABEL_571:
        *(a1 + 400) |= 2u;
        v237 = *(a1 + 264);
        if (!v237)
        {
          operator new();
        }

        v337[0] = 0;
        v238 = *(this + 1);
        if (v238 >= *(this + 2) || *v238 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v238;
          *(this + 1) = v238 + 1;
        }

        v239 = *(this + 14);
        v240 = *(this + 15);
        *(this + 14) = v239 + 1;
        if (v239 >= v240)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453F8B20(v237, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v241 = *(this + 14);
        v37 = __OFSUB__(v241, 1);
        v242 = v241 - 1;
        if (v242 < 0 == v37)
        {
          *(this + 14) = v242;
        }

        v243 = *(this + 1);
        v21 = *(this + 2);
        if (v21 - v243 <= 1 || *v243 != 232 || v243[1] != 3)
        {
          continue;
        }

        v22 = (v243 + 2);
        *(this + 1) = v22;
LABEL_586:
        if (v22 >= v21 || (v244 = *v22, (v244 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v4);
          if (!result)
          {
            return result;
          }

          v245 = *(this + 1);
          v21 = *(this + 2);
        }

        else
        {
          *v4 = v244;
          v245 = (v22 + 1);
          *(this + 1) = v245;
        }

        v23 = *(a1 + 400) | 4;
        *(a1 + 400) = v23;
        if (v21 - v245 < 2 || *v245 != 242 || v245[1] != 3)
        {
          continue;
        }

        *(this + 1) = v245 + 2;
LABEL_595:
        *(a1 + 400) = v23 | 8;
        v246 = *(a1 + 272);
        if (!v246)
        {
          operator new();
        }

        v337[0] = 0;
        v247 = *(this + 1);
        if (v247 >= *(this + 2) || *v247 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v247;
          *(this + 1) = v247 + 1;
        }

        v248 = *(this + 14);
        v249 = *(this + 15);
        *(this + 14) = v248 + 1;
        if (v248 >= v249)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245419C60(v246, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v250 = *(this + 14);
        v37 = __OFSUB__(v250, 1);
        v251 = v250 - 1;
        if (v251 < 0 == v37)
        {
          *(this + 14) = v251;
        }

        v252 = *(this + 1);
        if (*(this + 4) - v252 <= 1 || *v252 != 250 || v252[1] != 3)
        {
          continue;
        }

        *(this + 1) = v252 + 2;
LABEL_610:
        *(a1 + 400) |= 0x10u;
        v253 = *(a1 + 280);
        if (!v253)
        {
          operator new();
        }

        v337[0] = 0;
        v254 = *(this + 1);
        if (v254 >= *(this + 2) || *v254 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v254;
          *(this + 1) = v254 + 1;
        }

        v255 = *(this + 14);
        v256 = *(this + 15);
        *(this + 14) = v255 + 1;
        if (v255 >= v256)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24541AA2C(v253, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v257 = *(this + 14);
        v37 = __OFSUB__(v257, 1);
        v258 = v257 - 1;
        if (v258 < 0 == v37)
        {
          *(this + 14) = v258;
        }

        v259 = *(this + 1);
        if (*(this + 4) - v259 <= 1 || *v259 != 130 || v259[1] != 4)
        {
          continue;
        }

        *(this + 1) = v259 + 2;
LABEL_625:
        *(a1 + 400) |= 0x20u;
        v260 = *(a1 + 288);
        if (!v260)
        {
          operator new();
        }

        v337[0] = 0;
        v261 = *(this + 1);
        if (v261 >= *(this + 2) || *v261 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v261;
          *(this + 1) = v261 + 1;
        }

        v262 = *(this + 14);
        v263 = *(this + 15);
        *(this + 14) = v262 + 1;
        if (v262 >= v263)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24541DB58(v260, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v264 = *(this + 14);
        v37 = __OFSUB__(v264, 1);
        v265 = v264 - 1;
        if (v265 < 0 == v37)
        {
          *(this + 14) = v265;
        }

        v266 = *(this + 1);
        if (*(this + 4) - v266 <= 1 || *v266 != 138 || v266[1] != 4)
        {
          continue;
        }

        *(this + 1) = v266 + 2;
LABEL_640:
        *(a1 + 400) |= 0x40u;
        v267 = *(a1 + 296);
        if (!v267)
        {
          operator new();
        }

        v337[0] = 0;
        v268 = *(this + 1);
        if (v268 >= *(this + 2) || *v268 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v268;
          *(this + 1) = v268 + 1;
        }

        v269 = *(this + 14);
        v270 = *(this + 15);
        *(this + 14) = v269 + 1;
        if (v269 >= v270)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245420F4C(v267, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v271 = *(this + 14);
        v37 = __OFSUB__(v271, 1);
        v272 = v271 - 1;
        if (v272 < 0 == v37)
        {
          *(this + 14) = v272;
        }

        v273 = *(this + 1);
        if (*(this + 4) - v273 <= 1 || *v273 != 146 || v273[1] != 4)
        {
          continue;
        }

        *(this + 1) = v273 + 2;
LABEL_655:
        *(a1 + 400) |= 0x80u;
        v274 = *(a1 + 312);
        if (!v274)
        {
          operator new();
        }

        v337[0] = 0;
        v275 = *(this + 1);
        if (v275 >= *(this + 2) || *v275 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v275;
          *(this + 1) = v275 + 1;
        }

        v276 = *(this + 14);
        v277 = *(this + 15);
        *(this + 14) = v276 + 1;
        if (v276 >= v277)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245422088(v274, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v278 = *(this + 14);
        v37 = __OFSUB__(v278, 1);
        v279 = v278 - 1;
        if (v279 < 0 == v37)
        {
          *(this + 14) = v279;
        }

        v280 = *(this + 1);
        if (*(this + 4) - v280 <= 1 || *v280 != 154 || v280[1] != 4)
        {
          continue;
        }

        *(this + 1) = v280 + 2;
LABEL_670:
        *(a1 + 400) |= 0x100u;
        v281 = *(a1 + 320);
        if (!v281)
        {
          operator new();
        }

        v337[0] = 0;
        v282 = *(this + 1);
        if (v282 >= *(this + 2) || *v282 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v282;
          *(this + 1) = v282 + 1;
        }

        v283 = *(this + 14);
        v284 = *(this + 15);
        *(this + 14) = v283 + 1;
        if (v283 >= v284)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24541EA00(v281, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v285 = *(this + 14);
        v37 = __OFSUB__(v285, 1);
        v286 = v285 - 1;
        if (v286 < 0 == v37)
        {
          *(this + 14) = v286;
        }

        v287 = *(this + 1);
        v26 = *(this + 2);
        if (v26 - v287 > 1)
        {
          v288 = *v287;
          goto LABEL_683;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v17 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_130;
      case 4u:
        if (v9 == 2)
        {
          goto LABEL_140;
        }

        goto LABEL_111;
      case 5u:
        if (v9 == 2)
        {
          goto LABEL_154;
        }

        goto LABEL_111;
      case 6u:
        if (v9 == 2)
        {
          goto LABEL_168;
        }

        goto LABEL_111;
      case 7u:
        if (v9 == 2)
        {
          goto LABEL_182;
        }

        goto LABEL_111;
      case 8u:
        if (v9 == 2)
        {
          goto LABEL_196;
        }

        goto LABEL_111;
      case 9u:
        if (v9 == 2)
        {
          goto LABEL_210;
        }

        goto LABEL_111;
      case 0xAu:
        if (v9 == 2)
        {
          goto LABEL_224;
        }

        goto LABEL_111;
      case 0xBu:
        if (v9 == 2)
        {
          goto LABEL_238;
        }

        goto LABEL_111;
      case 0xCu:
        if (v9 == 2)
        {
          goto LABEL_252;
        }

        goto LABEL_111;
      case 0xDu:
        if (v9 == 2)
        {
          goto LABEL_266;
        }

        goto LABEL_111;
      case 0xEu:
        if (v9 == 2)
        {
          goto LABEL_280;
        }

        goto LABEL_111;
      case 0xFu:
        if (v9 == 2)
        {
          goto LABEL_294;
        }

        goto LABEL_111;
      case 0x10u:
        if (v9 == 2)
        {
          goto LABEL_309;
        }

        goto LABEL_111;
      case 0x11u:
        if (v9 == 2)
        {
          goto LABEL_324;
        }

        goto LABEL_111;
      case 0x12u:
        if (v9 == 2)
        {
          goto LABEL_339;
        }

        goto LABEL_111;
      case 0x13u:
        if (v9 == 2)
        {
          goto LABEL_354;
        }

        goto LABEL_111;
      case 0x14u:
        if (v9 == 2)
        {
          goto LABEL_369;
        }

        goto LABEL_111;
      case 0x15u:
        if (v9 == 2)
        {
          goto LABEL_384;
        }

        goto LABEL_111;
      case 0x16u:
        if (v9 == 2)
        {
          goto LABEL_399;
        }

        goto LABEL_111;
      case 0x17u:
        if (v9 == 2)
        {
          goto LABEL_414;
        }

        goto LABEL_111;
      case 0x18u:
        if (v9 == 2)
        {
          goto LABEL_429;
        }

        goto LABEL_111;
      case 0x19u:
        if (v9 == 2)
        {
          goto LABEL_444;
        }

        goto LABEL_111;
      case 0x1Au:
        if (v9 == 2)
        {
          goto LABEL_459;
        }

        goto LABEL_111;
      case 0x1Bu:
        if (v9 == 2)
        {
          goto LABEL_474;
        }

        goto LABEL_111;
      case 0x1Cu:
        if (v9 == 2)
        {
          goto LABEL_489;
        }

        goto LABEL_111;
      case 0x1Eu:
        if (v9 == 2)
        {
          goto LABEL_504;
        }

        goto LABEL_111;
      case 0x1Fu:
        if (v9 == 2)
        {
          goto LABEL_519;
        }

        goto LABEL_111;
      case 0x20u:
        if (v9 == 2)
        {
          goto LABEL_534;
        }

        goto LABEL_111;
      case 0x32u:
        if (v9 == 2)
        {
          goto LABEL_549;
        }

        goto LABEL_111;
      case 0x33u:
        if (v9 == 2)
        {
          goto LABEL_564;
        }

        goto LABEL_111;
      case 0x3Cu:
        if (v9 == 2)
        {
          goto LABEL_571;
        }

        goto LABEL_111;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v22 = *(this + 1);
        v21 = *(this + 2);
        goto LABEL_586;
      case 0x3Eu:
        if (v9 != 2)
        {
          goto LABEL_111;
        }

        v23 = *(a1 + 400);
        goto LABEL_595;
      case 0x3Fu:
        if (v9 == 2)
        {
          goto LABEL_610;
        }

        goto LABEL_111;
      case 0x40u:
        if (v9 == 2)
        {
          goto LABEL_625;
        }

        goto LABEL_111;
      case 0x41u:
        if (v9 == 2)
        {
          goto LABEL_640;
        }

        goto LABEL_111;
      case 0x42u:
        if (v9 == 2)
        {
          goto LABEL_655;
        }

        goto LABEL_111;
      case 0x43u:
        if (v9 == 2)
        {
          goto LABEL_670;
        }

        goto LABEL_111;
      case 0x46u:
        if ((TagFallback & 7) == 0)
        {
          v27 = *(this + 1);
          v26 = *(this + 2);
          while (1)
          {
            v336 = 0;
            if (v27 >= v26 || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v336))
              {
                return 0;
              }
            }

            else
            {
              v336 = *v27;
              *(this + 1) = v27 + 1;
            }

            v289 = *(a1 + 336);
            if (v289 == *(a1 + 340))
            {
              sub_2453B0370((a1 + 328), v289 + 1);
              v289 = *(a1 + 336);
            }

            v290 = v336;
            v291 = *(a1 + 328);
            *(a1 + 336) = v289 + 1;
            *(v291 + 4 * v289) = v290;
            v292 = *(a1 + 340) - *(a1 + 336);
            if (v292 >= 1)
            {
              v293 = v292 + 1;
              do
              {
                v294 = *(this + 1);
                v295 = *(this + 2);
                if (v295 - v294 < 2 || *v294 != 176 || v294[1] != 4)
                {
                  break;
                }

                *(this + 1) = v294 + 2;
                if ((v294 + 2) >= v295 || v294[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v336))
                  {
                    return 0;
                  }
                }

                else
                {
                  v336 = v294[2];
                  *(this + 1) = v294 + 3;
                }

                v296 = *(a1 + 336);
                if (v296 >= *(a1 + 340))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                  v296 = *(a1 + 336);
                }

                v297 = v336;
                v298 = *(a1 + 328);
                *(a1 + 336) = v296 + 1;
                *(v298 + 4 * v296) = v297;
                --v293;
              }

              while (v293 > 1);
            }

LABEL_704:
            v287 = *(this + 1);
            v26 = *(this + 2);
            if (v26 - v287 < 2)
            {
              goto LABEL_2;
            }

            v288 = *v287;
            if (v288 == 186)
            {
              break;
            }

LABEL_683:
            if (v288 != 176 || v287[1] != 4)
            {
              goto LABEL_2;
            }

            v27 = (v287 + 2);
            *(this + 1) = v27;
          }

          if (v287[1] == 4)
          {
            *(this + 1) = v287 + 2;
LABEL_708:
            *(a1 + 400) |= 0x400u;
            v299 = *(a1 + 344);
            if (!v299)
            {
              operator new();
            }

            v337[0] = 0;
            v300 = *(this + 1);
            if (v300 >= *(this + 2) || *v300 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
              {
                return 0;
              }
            }

            else
            {
              v337[0] = *v300;
              *(this + 1) = v300 + 1;
            }

            v301 = *(this + 14);
            v302 = *(this + 15);
            *(this + 14) = v301 + 1;
            if (v301 >= v302)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2453EFB98(v299, this) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v303 = *(this + 14);
            v37 = __OFSUB__(v303, 1);
            v304 = v303 - 1;
            if (v304 < 0 == v37)
            {
              *(this + 14) = v304;
            }

            v305 = *(this + 1);
            v14 = *(this + 2);
            if (v14 - v305 > 1 && *v305 == 192 && v305[1] == 4)
            {
              v15 = (v305 + 2);
              *(this + 1) = v15;
LABEL_723:
              if (v15 >= v14 || (v306 = *v15, (v306 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v5);
                if (!result)
                {
                  return result;
                }

                v307 = *(this + 1);
                v14 = *(this + 2);
              }

              else
              {
                *v5 = v306;
                v307 = (v15 + 1);
                *(this + 1) = v307;
              }

              *(a1 + 400) |= 0x800u;
              if (v14 - v307 >= 2)
              {
                v308 = *v307;
                goto LABEL_730;
              }
            }
          }

          continue;
        }

        if (v9 == 2)
        {
          result = sub_2453DD50C(this, a1 + 328);
          if (result)
          {
            goto LABEL_704;
          }

          return result;
        }

        goto LABEL_111;
      case 0x47u:
        if (v9 == 2)
        {
          goto LABEL_708;
        }

        goto LABEL_111;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_723;
      case 0x49u:
        if ((TagFallback & 7) == 0)
        {
          v25 = *(this + 1);
          v14 = *(this + 2);
          while (1)
          {
            v336 = 0;
            if (v25 >= v14 || *v25 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v336))
              {
                return 0;
              }
            }

            else
            {
              v336 = *v25;
              *(this + 1) = v25 + 1;
            }

            v309 = *(a1 + 360);
            if (v309 == *(a1 + 364))
            {
              sub_2453B0370((a1 + 352), v309 + 1);
              v309 = *(a1 + 360);
            }

            v310 = v336;
            v311 = *(a1 + 352);
            *(a1 + 360) = v309 + 1;
            *(v311 + 4 * v309) = v310;
            v312 = *(a1 + 364) - *(a1 + 360);
            if (v312 >= 1)
            {
              v313 = v312 + 1;
              do
              {
                v314 = *(this + 1);
                v315 = *(this + 2);
                if (v315 - v314 < 2 || *v314 != 200 || v314[1] != 4)
                {
                  break;
                }

                *(this + 1) = v314 + 2;
                if ((v314 + 2) >= v315 || v314[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v336))
                  {
                    return 0;
                  }
                }

                else
                {
                  v336 = v314[2];
                  *(this + 1) = v314 + 3;
                }

                v316 = *(a1 + 360);
                if (v316 >= *(a1 + 364))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                  v316 = *(a1 + 360);
                }

                v317 = v336;
                v318 = *(a1 + 352);
                *(a1 + 360) = v316 + 1;
                *(v318 + 4 * v316) = v317;
                --v313;
              }

              while (v313 > 1);
            }

LABEL_751:
            v307 = *(this + 1);
            v14 = *(this + 2);
            if (v14 - v307 < 2)
            {
              goto LABEL_2;
            }

            v308 = *v307;
            if (v308 == 208)
            {
              break;
            }

LABEL_730:
            if (v308 != 200 || v307[1] != 4)
            {
              goto LABEL_2;
            }

            v25 = (v307 + 2);
            *(this + 1) = v25;
          }

          if (v307[1] == 4)
          {
            v19 = (v307 + 2);
            *(this + 1) = v19;
LABEL_755:
            v337[0] = 0;
            if (v19 >= v14 || (v319 = *v19, (v319 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337);
              if (!result)
              {
                return result;
              }

              v319 = v337[0];
              v320 = *(this + 1);
              v14 = *(this + 2);
            }

            else
            {
              v320 = (v19 + 1);
              *(this + 1) = v320;
            }

            *(a1 + 368) = v319 != 0;
            *(a1 + 400) |= 0x2000u;
            if (v14 - v320 >= 2 && *v320 == 216 && v320[1] == 4)
            {
              v20 = (v320 + 2);
              *(this + 1) = v20;
LABEL_764:
              if (v20 >= v14 || (v321 = *v20, (v321 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v6);
                if (!result)
                {
                  return result;
                }

                v322 = *(this + 1);
                v14 = *(this + 2);
              }

              else
              {
                *v6 = v321;
                v322 = (v20 + 1);
                *(this + 1) = v322;
              }

              v24 = *(a1 + 400) | 0x4000;
              *(a1 + 400) = v24;
              if (v14 - v322 >= 2 && *v322 == 226 && v322[1] == 4)
              {
                *(this + 1) = v322 + 2;
LABEL_773:
                *(a1 + 400) = v24 | 0x8000;
                v323 = *(a1 + 376);
                if (!v323)
                {
                  operator new();
                }

                v337[0] = 0;
                v324 = *(this + 1);
                if (v324 >= *(this + 2) || *v324 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
                  {
                    return 0;
                  }
                }

                else
                {
                  v337[0] = *v324;
                  *(this + 1) = v324 + 1;
                }

                v325 = *(this + 14);
                v326 = *(this + 15);
                *(this + 14) = v325 + 1;
                if (v325 >= v326)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                if (!sub_2453F4C44(v323, this) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v327 = *(this + 14);
                v37 = __OFSUB__(v327, 1);
                v328 = v327 - 1;
                if (v328 < 0 == v37)
                {
                  *(this + 14) = v328;
                }

                v329 = *(this + 1);
                if (*(this + 4) - v329 > 1 && *v329 == 234 && v329[1] == 4)
                {
                  *(this + 1) = v329 + 2;
LABEL_788:
                  *(a1 + 400) |= 0x10000u;
                  v330 = *(a1 + 384);
                  if (!v330)
                  {
                    operator new();
                  }

                  v337[0] = 0;
                  v331 = *(this + 1);
                  if (v331 >= *(this + 2) || *v331 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v337))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v337[0] = *v331;
                    *(this + 1) = v331 + 1;
                  }

                  v332 = *(this + 14);
                  v333 = *(this + 15);
                  *(this + 14) = v332 + 1;
                  if (v332 >= v333)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                  if (!sub_2453F158C(v330, this) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                  v334 = *(this + 14);
                  v37 = __OFSUB__(v334, 1);
                  v335 = v334 - 1;
                  if (v335 < 0 == v37)
                  {
                    *(this + 14) = v335;
                  }

                  if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
                  {
                    *(this + 8) = 0;
                    result = 1;
                    *(this + 36) = 1;
                    return result;
                  }
                }
              }
            }
          }

          continue;
        }

        if (v9 != 2)
        {
LABEL_111:
          if (v9 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        result = sub_2453DD50C(this, a1 + 352);
        if (result)
        {
          goto LABEL_751;
        }

        return result;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v19 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_755;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v20 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_764;
      case 0x4Cu:
        if (v9 != 2)
        {
          goto LABEL_111;
        }

        v24 = *(a1 + 400);
        goto LABEL_773;
      case 0x4Du:
        if (v9 == 2)
        {
          goto LABEL_788;
        }

        goto LABEL_111;
      default:
        goto LABEL_111;
    }
  }
}

void sub_24539C210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24539C364(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_45;
          }
        }

        else if (v6 == 10 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_53;
        }

        goto LABEL_22;
      }

      if (v6 == 1)
      {
        break;
      }

      if (v6 == 2 && (TagFallback & 7) == 0)
      {
        v9 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_35;
      }

LABEL_22:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 2)
    {
      goto LABEL_22;
    }

    *(a1 + 36) |= 1u;
    v12 = *(a1 + 8);
    if (!v12)
    {
      operator new();
    }

    v30 = 0;
    v13 = *(this + 1);
    if (v13 >= *(this + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
      {
        return 0;
      }
    }

    else
    {
      v30 = *v13;
      *(this + 1) = v13 + 1;
    }

    v15 = *(this + 14);
    v16 = *(this + 15);
    *(this + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_24539C6C8(v12, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v17 = *(this + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(this + 14) = v19;
    }

    v20 = *(this + 1);
    v8 = *(this + 2);
    if (v20 < v8 && *v20 == 16)
    {
      v9 = v20 + 1;
      *(this + 1) = v9;
LABEL_35:
      v28 = 0;
      if (v9 >= v8 || (v21 = *v9, (v21 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
        if (!result)
        {
          return result;
        }

        v21 = v28;
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (v21 <= 3)
      {
        *(a1 + 36) |= 2u;
        *(a1 + 16) = v21;
      }

      v23 = *(this + 1);
      v10 = *(this + 2);
      if (v23 < v10 && *v23 == 24)
      {
        v14 = v23 + 1;
        *(this + 1) = v14;
LABEL_45:
        v29 = 0;
        if (v14 >= v10 || (v24 = *v14, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
          if (!result)
          {
            return result;
          }

          v24 = v29;
          v25 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v25 = v14 + 1;
          *(this + 1) = v25;
        }

        *(a1 + 20) = v24 != 0;
        *(a1 + 36) |= 4u;
        if (v25 < v10 && *v25 == 80)
        {
          v11 = v25 + 1;
          *(this + 1) = v11;
LABEL_53:
          if (v11 >= v10 || (v26 = *v11, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v27 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v26;
            v27 = v11 + 1;
            *(this + 1) = v27;
          }

          *(a1 + 36) |= 8u;
          if (v27 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }
  }
}

uint64_t sub_24539C6C8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 6)
        {
          if (TagFallback >> 3 > 9)
          {
            if (v6 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v13 = *(this + 1);
                v8 = *(this + 2);
                goto LABEL_85;
              }
            }

            else if (v6 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v23 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_95;
              }
            }

            else if (v6 == 12 && (TagFallback & 7) == 0)
            {
              v11 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_103;
            }
          }

          else if (v6 == 7)
          {
            if (v7 == 1)
            {
              goto LABEL_64;
            }
          }

          else if (v6 == 8)
          {
            if (v7 == 1)
            {
              goto LABEL_68;
            }
          }

          else if (v6 == 9 && (TagFallback & 7) == 0)
          {
            v9 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_72;
          }

          goto LABEL_76;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v6 == 4)
          {
            if (v7 == 1)
            {
              goto LABEL_49;
            }
          }

          else if (v6 == 5)
          {
            if (v7 == 1)
            {
              goto LABEL_56;
            }
          }

          else if (v6 == 6 && v7 == 1)
          {
            goto LABEL_60;
          }

          goto LABEL_76;
        }

        if (v6 != 1)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_76;
        }

        *v30 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v30) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v30;
        *(a1 + 96) |= 1u;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 17)
        {
          *(this + 1) = v12 + 1;
          goto LABEL_41;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_76;
      }

LABEL_41:
      *v30 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v30) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v30;
      *(a1 + 96) |= 2u;
      v14 = *(this + 1);
      if (v14 < *(this + 2) && *v14 == 25)
      {
        *(this + 1) = v14 + 1;
LABEL_45:
        *v30 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v30) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v30;
        *(a1 + 96) |= 4u;
        v15 = *(this + 1);
        if (v15 < *(this + 2) && *v15 == 33)
        {
          *(this + 1) = v15 + 1;
LABEL_49:
          *v30 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v30) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = *v30;
          *(a1 + 96) |= 8u;
          v16 = *(this + 1);
          if (v16 < *(this + 2) && *v16 == 41)
          {
            *(this + 1) = v16 + 1;
LABEL_56:
            *v30 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v30) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = *v30;
            *(a1 + 96) |= 0x10u;
            v17 = *(this + 1);
            if (v17 < *(this + 2) && *v17 == 49)
            {
              *(this + 1) = v17 + 1;
LABEL_60:
              *v30 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v30) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 48) = *v30;
              *(a1 + 96) |= 0x20u;
              v18 = *(this + 1);
              if (v18 < *(this + 2) && *v18 == 57)
              {
                *(this + 1) = v18 + 1;
LABEL_64:
                *v30 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v30) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 56) = *v30;
                *(a1 + 96) |= 0x40u;
                v19 = *(this + 1);
                if (v19 < *(this + 2) && *v19 == 65)
                {
                  *(this + 1) = v19 + 1;
LABEL_68:
                  *v30 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v30) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 64) = *v30;
                  *(a1 + 96) |= 0x80u;
                  v20 = *(this + 1);
                  v8 = *(this + 2);
                  if (v20 < v8 && *v20 == 72)
                  {
                    v9 = v20 + 1;
                    *(this + 1) = v9;
LABEL_72:
                    if (v9 >= v8 || (v21 = *v9, v21 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
                      if (!result)
                      {
                        return result;
                      }

                      v22 = *(this + 1);
                      v8 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 72) = v21;
                      v22 = v9 + 1;
                      *(this + 1) = v22;
                    }

                    *(a1 + 96) |= 0x100u;
                    if (v22 < v8 && *v22 == 80)
                    {
                      v13 = v22 + 1;
                      *(this + 1) = v13;
LABEL_85:
                      v30[0] = 0;
                      if (v13 >= v8 || (v25 = *v13, (v25 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v30);
                        if (!result)
                        {
                          return result;
                        }

                        v25 = v30[0];
                      }

                      else
                      {
                        *(this + 1) = v13 + 1;
                      }

                      if (sub_24539CC50(v25))
                      {
                        *(a1 + 96) |= 0x200u;
                        *(a1 + 76) = v25;
                      }

                      v26 = *(this + 1);
                      v10 = *(this + 2);
                      if (v26 < v10 && *v26 == 88)
                      {
                        v23 = v26 + 1;
                        *(this + 1) = v23;
LABEL_95:
                        if (v23 >= v10 || (v27 = *v23, v27 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 80));
                          if (!result)
                          {
                            return result;
                          }

                          v28 = *(this + 1);
                          v10 = *(this + 2);
                        }

                        else
                        {
                          *(a1 + 80) = v27;
                          v28 = v23 + 1;
                          *(this + 1) = v28;
                        }

                        *(a1 + 96) |= 0x400u;
                        if (v28 < v10 && *v28 == 96)
                        {
                          v11 = v28 + 1;
                          *(this + 1) = v11;
LABEL_103:
                          v30[0] = 0;
                          if (v11 >= v10 || (v29 = *v11, (v29 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v30);
                            if (!result)
                            {
                              return result;
                            }

                            v29 = v30[0];
                          }

                          else
                          {
                            *(this + 1) = v11 + 1;
                          }

                          if (v29 <= 5)
                          {
                            *(a1 + 96) |= 0x800u;
                            *(a1 + 88) = v29;
                          }

                          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
                          {
                            *(this + 8) = 0;
                            result = 1;
                            *(this + 36) = 1;
                            return result;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v6 == 3 && v7 == 1)
    {
      goto LABEL_45;
    }

LABEL_76:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

BOOL sub_24539CC50(unsigned int a1)
{
  result = 1;
  if (a1 > 0x32 || ((1 << a1) & 0x4000002000403) == 0)
  {
    return a1 == 75;
  }

  return result;
}

BOOL sub_24539CC90(unsigned int a1)
{
  result = 1;
  if (a1 - 31 > 0x2D || ((1 << (a1 - 31)) & 0x3FFFE7F001FBLL) == 0)
  {
    return a1 < 0x1E;
  }

  return result;
}

void sub_24539CCD8(void *a1)
{
  v2 = a1[32];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_24539DA30();
  if (qword_2813CEEB8 != a1)
  {
    v4 = a1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = a1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = a1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = a1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = a1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = a1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = a1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = a1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = a1[12];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = a1[13];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = a1[14];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = a1[15];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = a1[16];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = a1[17];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = a1[18];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = a1[19];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = a1[20];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = a1[21];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = a1[22];
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = a1[23];
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = a1[24];
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = a1[25];
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = a1[26];
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = a1[27];
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = a1[28];
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    v30 = a1[29];
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = a1[30];
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = a1[31];
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    v33 = a1[33];
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = a1[34];
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = a1[35];
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v36 = a1[36];
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    v37 = a1[37];
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    v38 = a1[39];
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v39 = a1[40];
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    v40 = a1[43];
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    v41 = a1[47];
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }

    v42 = a1[48];
    if (v42)
    {
      v43 = *(*v42 + 8);

      v43();
    }
  }
}

void sub_24539D418(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 36) & 1) == 0)
  {
    goto LABEL_43;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    sub_24539DA30();
    v4 = *(qword_2813CEEC0 + 8);
  }

  v5 = *(v4 + 96);
  if ((~v5 & 3) != 0 || (v6 = *(a2 + 36), (v6 & 8) == 0) || ((v7 = v5 & v6 & 4, (v5 & 0x2F0) == 0x2F0) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v42 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v42, OS_LOG_TYPE_ERROR, "#input,assistance position received has invalid payload", buf, 2u);
    }
  }

  else
  {
    v9 = *(a2 + 8);
    if (!v9)
    {
      sub_24539DA30();
      v9 = *(qword_2813CEEC0 + 8);
    }

    v10 = sub_24539D8D0();
    v11 = *(a2 + 16);
    v12 = v11 == 2;
    if (v11 == 2)
    {
      v13 = v10;
      v14 = qword_2813CF020;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v9 + 8);
        v15 = *(v9 + 16);
        v17 = *(v9 + 24);
        v18 = *(a2 + 20);
        v20 = *(v9 + 40);
        v19 = *(v9 + 48);
        v21 = *(v9 + 56);
        v22 = *(v9 + 72);
        v23 = *(v9 + 76);
        if (((v23 - 25) > 0x32 || ((1 << (v23 - 25)) & 0x4000002000001) == 0) && v23 != 10)
        {
          v23 = 0;
        }

        v24 = (v13 - *(a2 + 24)) * 0.000001;
        *buf = 134548225;
        *v49 = v16;
        *&v49[8] = 2053;
        *&v49[10] = v15;
        *&v49[18] = 2053;
        v50 = v17;
        LOWORD(v51) = 1026;
        *(&v51 + 2) = v12;
        HIWORD(v51) = 1026;
        LODWORD(v52.f64[0]) = v18;
        WORD2(v52.f64[0]) = 2050;
        *(v52.f64 + 6) = v20;
        HIWORD(v52.f64[1]) = 2050;
        v53 = v19;
        LOWORD(v54) = 2050;
        *(&v54 + 2) = v21;
        WORD5(v54) = 1026;
        HIDWORD(v54) = v22;
        LOWORD(v55) = 1026;
        *(&v55 + 2) = v23;
        HIWORD(v55) = 2050;
        v56 = v24;
        _os_log_impl(&dword_245396000, v14, OS_LOG_TYPE_DEFAULT, "#input,#nilr,injectAssistancePosition,received tightly coupling pos,lat,%{sensitive}.4f,lon,%{sensitive}.4f,alt,%{sensitive}.4f,type,%{public}d,altValid,%{public}d,vertUncM,%{public}.1f,semiMajUncM,%{public}.1f,semiMinUncM,%{public}.1f,source,%{public}d,reliability,%{public}d,delayMachMs,%{public}.2f,", buf, 0x60u);
      }

      v25 = *(v9 + 76);
      if ((v25 - 25 > 0x32 || ((1 << (v25 - 25)) & 0x4000002000001) == 0) && v25 != 10)
      {
        v25 = 0;
      }

      if (*(a1 + 696))
      {
        v26 = *(v9 + 72);
        if (v26 <= 0xB && ((1 << v26) & 0xCD0) != 0)
        {
          v27 = *(v9 + 24);
          v28 = *(v9 + 40);
          v29 = *(v9 + 48);
          v30 = *(v9 + 56);
          v46 = v30;
          v47 = *(v9 + 8);
          v31 = *(a2 + 24);
          v32 = (*(a1 + 672) + (v31 - *(a1 + 688))) * 0.000000001;
          if ((*(a1 + 768) & 0xFFFFFFFE) == 2)
          {
            v33 = (v32 / 604800.0) & 0x3FF;
          }

          else
          {
            v33 = (v32 / 604800.0);
          }

          v34 = ((v32 - (v32 / 604800.0) * 604800.0) * 1000.0);
          v35 = qword_2813CF020;
          if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109376;
            *v49 = v33;
            *&v49[4] = 1024;
            *&v49[6] = v34;
            _os_log_debug_impl(&dword_245396000, v35, OS_LOG_TYPE_DEBUG, "injectTcpFix,GPSTime-week,%d,GPSTow,%d", buf, 0xEu);
            if ((*(a1 + 696) & 1) == 0)
            {
              sub_2453AB38C();
            }
          }

          v36 = *(a1 + 680);
          v37 = sqrt(vmulq_f64(v46, v46).f64[0] + v29 * v29) / 1.41421356;
          if ((v26 & 0xE) == 6)
          {
            v38 = 3;
          }

          else
          {
            v38 = 0;
          }

          if ((v26 & 0xE) == 0xA || v26 == 4)
          {
            v40 = 2;
          }

          else
          {
            v40 = v38;
          }

          *buf = v40;
          *&v49[4] = v47;
          v50 = v37;
          v51 = v29;
          v52 = v46;
          v53 = __PAIR64__(v33, v25);
          LODWORD(v54) = v34;
          *(&v54 + 1) = v36;
          v55 = v31 / 0x3B9ACA00;
          v56 = v27;
          v57 = v28;
          v58 = v25;
          v59 = v31 / 0x3B9ACA00;
          v60 = 0;
          v61 = 0;
          sub_2453A162C(a1 + 208, buf);
          v41 = *(a1 + 72);
          if (*v41)
          {
            *(v41 + 63) = 1;
          }

          goto LABEL_43;
        }

        v44 = qword_2813CF020;
        if (!os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v45 = "injectTcpFix,received TCP is neither from WiFi source nor from Cell source";
      }

      else
      {
        v44 = qword_2813CF020;
        if (!os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v45 = "injectTcpFix,time info not available.  Returning ";
      }

      _os_log_debug_impl(&dword_245396000, v44, OS_LOG_TYPE_DEBUG, v45, buf, 2u);
    }
  }

LABEL_43:
  v43 = *MEMORY[0x277D85DE8];
}

unint64_t sub_24539D8D0()
{
  if ((atomic_load_explicit(&qword_2813CF000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2813CF000))
  {
    sub_24543E8CC();
    __cxa_guard_release(&qword_2813CF000);
  }

  v0 = mach_continuous_time();
  v1 = 8;
  if (!byte_27EE13510)
  {
    v1 = 0;
  }

  return ((v0 >> v1) * qword_2813CEDC0 / qword_2813CEDB8) << v1;
}

void sub_24539D970(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858C68;
  sub_24539CCD8(a1);
  v2 = *(a1 + 44);
  if (v2)
  {
    MEMORY[0x245D6A0A0](v2, 0x1000C8052888210);
  }

  v3 = *(a1 + 41);
  if (v3)
  {
    MEMORY[0x245D6A0A0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24539D9F8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24539D970(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_24539DA30()
{
  v0 = qword_2813CE6C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v1[0] = MEMORY[0x277D82C40] + 16;
    v1[1] = sub_245427954;
    v2 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v1);
  }
}

void sub_24539DAB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24539DAC8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v7 = *(this + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 36) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v14 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v13;
          v14 = v11 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 36) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(this + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v16 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v15;
            v16 = v12 + 1;
            *(this + 1) = v16;
          }

          *(a1 + 36) |= 4u;
          if (v16 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_25;
    }

LABEL_16:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

void sub_24539DCB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "handleGpsTime, received time assistance", buf, 2u);
  }

  if ((*(a2 + 396) & 0x10) == 0)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 32);
  if (!v7)
  {
    sub_24539DA30();
    v7 = *(qword_2813CEEB8 + 32);
  }

  if ((*(v7 + 36) & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 32);
  if (!v8)
  {
    sub_24539DA30();
    v8 = *(qword_2813CEEB8 + 32);
  }

  if ((*(v8 + 36) & 2) != 0)
  {
    v10 = *(a2 + 32);
    if (v10)
    {
      v11 = *(v10 + 8);
    }

    else
    {
      sub_24539DA30();
      v10 = *(a2 + 32);
      v11 = *(*(qword_2813CEEB8 + 32) + 8);
      if (!v10)
      {
        sub_24539DA30();
        v10 = *(qword_2813CEEB8 + 32);
      }
    }

    v12 = *(v10 + 16);
    v13 = *(a1 + 696);
    *(a1 + 672) = v11;
    *(a1 + 680) = v12;
    *(a1 + 688) = a3;
    if ((v13 & 1) == 0)
    {
      *(a1 + 696) = 1;
    }
  }

  else
  {
LABEL_10:
    v9 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "handleGpsTime,time assistace does not valid data. Returning", v14, 2u);
    }
  }
}

void sub_24539DE1C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858590A0;
  sub_24539DA30();
  if (qword_2813CEEC0 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24539DEB0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24539DE1C(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_24539DEE8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24539DFB8(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_24539DF20()
{
  v0 = qword_2813CE6D8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v1[0] = MEMORY[0x277D82C40] + 16;
    v1[1] = sub_2453B6ACC;
    v2 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v1);
  }
}

void sub_24539DFA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_24539DFB8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858529F8;
  sub_24539DF20();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_24539E010(uint64_t result)
{
  v1 = result;
  v2 = *(result + 216);
  if (v2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v2 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_2453B818C(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_2453DB408(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v3 = *(v1 + 40);
      if (v3)
      {
        if (*(v3 + 48))
        {
          *(v3 + 40) = 0;
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 48) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        if (*(v4 + 32))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 23) = 0;
        }

        *(v4 + 32) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      result = *(v1 + 56);
      if (result)
      {
        result = sub_2453B92E0(result);
        v2 = *(v1 + 216);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result = *(v1 + 64);
      if (result)
      {
        result = sub_24542F204(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      v5 = *(v1 + 72);
      if (v5)
      {
        if (*(v5 + 16))
        {
          *(v5 + 8) = 0;
        }

        *(v5 + 16) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      v6 = *(v1 + 80);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 28) = 0;
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x800) != 0)
    {
      v7 = *(v1 + 88);
      if (v7)
      {
        if (*(v7 + 24))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
        }

        *(v7 + 24) = 0;
        v2 = *(v1 + 216);
      }
    }

    *(v1 + 96) = 0;
    if ((v2 & 0x4000) != 0)
    {
      v8 = *(v1 + 104);
      if (v8)
      {
        if (*(v8 + 24))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
        }

        *(v8 + 24) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x8000) != 0)
    {
      result = *(v1 + 112);
      if (result)
      {
        result = sub_24542F2C8(result);
        v2 = *(v1 + 216);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v9 = *(v1 + 120);
      if (v9)
      {
        v10 = *(v9 + 124);
        if (v10)
        {
          *(v9 + 56) = 0;
          *(v9 + 40) = 0u;
          *(v9 + 24) = 0u;
          *(v9 + 8) = 0u;
        }

        if ((v10 & 0xFF00) != 0)
        {
          *(v9 + 89) = 0u;
          *(v9 + 64) = 0u;
          *(v9 + 80) = 0u;
        }

        if ((v10 & 0xFF0000) != 0)
        {
          *(v9 + 105) = 0;
          *(v9 + 112) = 0;
          *(v9 + 108) = 0;
        }

        *(v9 + 124) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x20000) != 0)
    {
      v11 = *(v1 + 128);
      if (v11 != MEMORY[0x277D82C30])
      {
        if (*(v11 + 23) < 0)
        {
          **v11 = 0;
          *(v11 + 8) = 0;
        }

        else
        {
          *v11 = 0;
          *(v11 + 23) = 0;
        }
      }
    }

    v2 = *(v1 + 216);
    if ((v2 & 0x40000) != 0)
    {
      result = *(v1 + 136);
      if (result)
      {
        result = sub_245409A00(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x80000) != 0)
    {
      result = *(v1 + 144);
      if (result)
      {
        result = sub_24540F354(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x100000) != 0)
    {
      result = *(v1 + 152);
      if (result)
      {
        result = sub_2454153E0(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x200000) != 0)
    {
      v12 = *(v1 + 160);
      if (v12)
      {
        if (*(v12 + 16))
        {
          *(v12 + 8) = 0;
        }

        *(v12 + 16) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x400000) != 0)
    {
      result = *(v1 + 168);
      if (result)
      {
        result = sub_24542580C(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x800000) != 0)
    {
      result = *(v1 + 176);
      if (result)
      {
        result = sub_2453F5B74(result);
        v2 = *(v1 + 216);
      }
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      result = *(v1 + 184);
      if (result)
      {
        result = sub_2453F3C08(result);
        v2 = *(v1 + 216);
      }
    }

    *(v1 + 192) = 0;
    *(v1 + 208) = 0;
    if ((v2 & 0x10000000) != 0)
    {
      v13 = *(v1 + 200);
      if (v13)
      {
        if (*(v13 + 20))
        {
          *(v13 + 8) = 0;
          *(v13 + 12) = 0;
        }

        *(v13 + 20) = 0;
      }
    }
  }

  *(v1 + 216) = 0;
  return result;
}

uint64_t sub_24539E2FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (2)
  {
    v4 = *(this + 1);
    if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v4 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v183 = 0;
        v7 = *(this + 1);
        if (v7 < *(this + 2))
        {
          v8 = *v7;
          if ((v8 & 0x80000000) == 0)
          {
            *(this + 1) = v7 + 1;
            goto LABEL_72;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183);
        if (result)
        {
          v8 = v183;
LABEL_72:
          if (v8 <= 0x1B && ((1 << v8) & 0xFDFFE3F) != 0)
          {
            if (v8 > 0x1B || ((1 << v8) & 0xFDFFE3F) == 0)
            {
              __assert_rtn("set_type", "GpsdProtocol.pb.h", 7737, "::CoreGem::proto::gpsd::Indication_Type_IsValid(value)");
            }

            *(a1 + 216) |= 1u;
            *(a1 + 8) = v8;
          }

          v26 = *(this + 1);
          v18 = *(this + 2);
          if (v26 < v18 && *v26 == 16)
          {
            v19 = v26 + 1;
            *(this + 1) = v19;
            goto LABEL_82;
          }

          continue;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
LABEL_82:
        v183 = 0;
        if (v19 >= v18 || (v27 = *v19, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183);
          if (!result)
          {
            return result;
          }

          v27 = v183;
        }

        else
        {
          *(this + 1) = v19 + 1;
        }

        if (sub_24539CC90(v27))
        {
          *(a1 + 216) |= 2u;
          *(a1 + 12) = v27;
        }

        v28 = *(this + 1);
        v16 = *(this + 2);
        if (v28 >= v16 || *v28 != 24)
        {
          continue;
        }

        v17 = v28 + 1;
        *(this + 1) = v17;
LABEL_92:
        if (v17 >= v16 || (v29 = *v17, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v30 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v29;
          v30 = v17 + 1;
          *(this + 1) = v30;
        }

        v20 = *(a1 + 216) | 4;
        *(a1 + 216) = v20;
        if (v30 >= v16 || *v30 != 34)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_100:
        *(a1 + 216) = v20 | 8;
        v31 = *(a1 + 24);
        if (!v31)
        {
          operator new();
        }

        v183 = 0;
        v32 = *(this + 1);
        if (v32 >= *(this + 2) || *v32 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v32;
          *(this + 1) = v32 + 1;
        }

        v33 = *(this + 14);
        v34 = *(this + 15);
        *(this + 14) = v33 + 1;
        if (v33 >= v34)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453A014C(v31, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v35 = *(this + 14);
        v36 = __OFSUB__(v35, 1);
        v37 = v35 - 1;
        if (v37 < 0 == v36)
        {
          *(this + 14) = v37;
        }

        v38 = *(this + 1);
        if (v38 >= *(this + 2) || *v38 != 42)
        {
          continue;
        }

        *(this + 1) = v38 + 1;
LABEL_114:
        *(a1 + 216) |= 0x10u;
        v39 = *(a1 + 32);
        if (!v39)
        {
          operator new();
        }

        v183 = 0;
        v40 = *(this + 1);
        if (v40 >= *(this + 2) || *v40 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v40;
          *(this + 1) = v40 + 1;
        }

        v41 = *(this + 14);
        v42 = *(this + 15);
        *(this + 14) = v41 + 1;
        if (v41 >= v42)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453DB4D4(v39, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v43 = *(this + 14);
        v36 = __OFSUB__(v43, 1);
        v44 = v43 - 1;
        if (v44 < 0 == v36)
        {
          *(this + 14) = v44;
        }

        v45 = *(this + 1);
        if (v45 >= *(this + 2) || *v45 != 50)
        {
          continue;
        }

        *(this + 1) = v45 + 1;
LABEL_128:
        *(a1 + 216) |= 0x20u;
        v46 = *(a1 + 40);
        if (!v46)
        {
          operator new();
        }

        v183 = 0;
        v47 = *(this + 1);
        if (v47 >= *(this + 2) || *v47 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v47;
          *(this + 1) = v47 + 1;
        }

        v48 = *(this + 14);
        v49 = *(this + 15);
        *(this + 14) = v48 + 1;
        if (v48 >= v49)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453BAE38(v46, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v50 = *(this + 14);
        v36 = __OFSUB__(v50, 1);
        v51 = v50 - 1;
        if (v51 < 0 == v36)
        {
          *(this + 14) = v51;
        }

        v52 = *(this + 1);
        if (v52 >= *(this + 2) || *v52 != 74)
        {
          continue;
        }

        *(this + 1) = v52 + 1;
LABEL_142:
        *(a1 + 216) |= 0x40u;
        v53 = *(a1 + 48);
        if (!v53)
        {
          operator new();
        }

        v183 = 0;
        v54 = *(this + 1);
        if (v54 >= *(this + 2) || *v54 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v54;
          *(this + 1) = v54 + 1;
        }

        v55 = *(this + 14);
        v56 = *(this + 15);
        *(this + 14) = v55 + 1;
        if (v55 >= v56)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245430898(v53, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v57 = *(this + 14);
        v36 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v36)
        {
          *(this + 14) = v58;
        }

        v59 = *(this + 1);
        if (v59 >= *(this + 2) || *v59 != 82)
        {
          continue;
        }

        *(this + 1) = v59 + 1;
LABEL_156:
        *(a1 + 216) |= 0x80u;
        v60 = *(a1 + 56);
        if (!v60)
        {
          operator new();
        }

        v183 = 0;
        v61 = *(this + 1);
        if (v61 >= *(this + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v61;
          *(this + 1) = v61 + 1;
        }

        v62 = *(this + 14);
        v63 = *(this + 15);
        *(this + 14) = v62 + 1;
        if (v62 >= v63)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453B9324(v60, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v64 = *(this + 14);
        v36 = __OFSUB__(v64, 1);
        v65 = v64 - 1;
        if (v65 < 0 == v36)
        {
          *(this + 14) = v65;
        }

        v66 = *(this + 1);
        if (*(this + 4) - v66 <= 1 || *v66 != 130 || v66[1] != 1)
        {
          continue;
        }

        *(this + 1) = v66 + 2;
LABEL_171:
        *(a1 + 216) |= 0x100u;
        v67 = *(a1 + 64);
        if (!v67)
        {
          operator new();
        }

        v183 = 0;
        v68 = *(this + 1);
        if (v68 >= *(this + 2) || *v68 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v68;
          *(this + 1) = v68 + 1;
        }

        v69 = *(this + 14);
        v70 = *(this + 15);
        *(this + 14) = v69 + 1;
        if (v69 >= v70)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245438D7C(v67, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v71 = *(this + 14);
        v36 = __OFSUB__(v71, 1);
        v72 = v71 - 1;
        if (v72 < 0 == v36)
        {
          *(this + 14) = v72;
        }

        v73 = *(this + 1);
        if (*(this + 4) - v73 <= 1 || *v73 != 138 || v73[1] != 1)
        {
          continue;
        }

        *(this + 1) = v73 + 2;
LABEL_186:
        *(a1 + 216) |= 0x200u;
        v74 = *(a1 + 72);
        if (!v74)
        {
          operator new();
        }

        v183 = 0;
        v75 = *(this + 1);
        if (v75 >= *(this + 2) || *v75 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v75;
          *(this + 1) = v75 + 1;
        }

        v76 = *(this + 14);
        v77 = *(this + 15);
        *(this + 14) = v76 + 1;
        if (v76 >= v77)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2454393FC(v74, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v78 = *(this + 14);
        v36 = __OFSUB__(v78, 1);
        v79 = v78 - 1;
        if (v79 < 0 == v36)
        {
          *(this + 14) = v79;
        }

        v80 = *(this + 1);
        if (*(this + 4) - v80 <= 1 || *v80 != 146 || v80[1] != 1)
        {
          continue;
        }

        *(this + 1) = v80 + 2;
LABEL_201:
        *(a1 + 216) |= 0x400u;
        v81 = *(a1 + 80);
        if (!v81)
        {
          operator new();
        }

        v183 = 0;
        v82 = *(this + 1);
        if (v82 >= *(this + 2) || *v82 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v82;
          *(this + 1) = v82 + 1;
        }

        v83 = *(this + 14);
        v84 = *(this + 15);
        *(this + 14) = v83 + 1;
        if (v83 >= v84)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453BB9FC(v81, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v85 = *(this + 14);
        v36 = __OFSUB__(v85, 1);
        v86 = v85 - 1;
        if (v86 < 0 == v36)
        {
          *(this + 14) = v86;
        }

        v87 = *(this + 1);
        if (*(this + 4) - v87 <= 1 || *v87 != 154 || v87[1] != 1)
        {
          continue;
        }

        *(this + 1) = v87 + 2;
LABEL_216:
        *(a1 + 216) |= 0x800u;
        v88 = *(a1 + 88);
        if (!v88)
        {
          operator new();
        }

        v183 = 0;
        v89 = *(this + 1);
        if (v89 >= *(this + 2) || *v89 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v89;
          *(this + 1) = v89 + 1;
        }

        v90 = *(this + 14);
        v91 = *(this + 15);
        *(this + 14) = v90 + 1;
        if (v90 >= v91)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453BB4AC(v88, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v92 = *(this + 14);
        v36 = __OFSUB__(v92, 1);
        v93 = v92 - 1;
        if (v93 < 0 == v36)
        {
          *(this + 14) = v93;
        }

        v94 = *(this + 1);
        v14 = *(this + 2);
        if (v14 - v94 <= 1 || *v94 != 160 || v94[1] != 1)
        {
          continue;
        }

        v15 = (v94 + 2);
        *(this + 1) = v15;
LABEL_231:
        v183 = 0;
        if (v15 >= v14 || (v95 = *v15, (v95 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183);
          if (!result)
          {
            return result;
          }

          v95 = v183;
        }

        else
        {
          *(this + 1) = v15 + 1;
        }

        if (v95 <= 9)
        {
          *(a1 + 216) |= 0x2000u;
          *(a1 + 100) = v95;
        }

        v96 = *(this + 1);
        v9 = *(this + 2);
        if (v9 - v96 < 2 || *v96 != 176 || v96[1] != 1)
        {
          continue;
        }

        v10 = (v96 + 2);
        *(this + 1) = v10;
LABEL_242:
        v183 = 0;
        if (v10 >= v9 || (v97 = *v10, (v97 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183);
          if (!result)
          {
            return result;
          }

          v97 = v183;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v97 <= 9)
        {
          *(a1 + 216) |= 0x1000u;
          *(a1 + 96) = v97;
        }

        v98 = *(this + 1);
        if (*(this + 4) - v98 < 2 || *v98 != 186 || v98[1] != 1)
        {
          continue;
        }

        *(this + 1) = v98 + 2;
LABEL_253:
        *(a1 + 216) |= 0x4000u;
        v99 = *(a1 + 104);
        if (!v99)
        {
          operator new();
        }

        v183 = 0;
        v100 = *(this + 1);
        if (v100 >= *(this + 2) || *v100 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v100;
          *(this + 1) = v100 + 1;
        }

        v101 = *(this + 14);
        v102 = *(this + 15);
        *(this + 14) = v101 + 1;
        if (v101 >= v102)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543C94C(v99, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v103 = *(this + 14);
        v36 = __OFSUB__(v103, 1);
        v104 = v103 - 1;
        if (v104 < 0 == v36)
        {
          *(this + 14) = v104;
        }

        v105 = *(this + 1);
        if (*(this + 4) - v105 <= 1 || *v105 != 202 || v105[1] != 1)
        {
          continue;
        }

        *(this + 1) = v105 + 2;
LABEL_268:
        *(a1 + 216) |= 0x8000u;
        v106 = *(a1 + 112);
        if (!v106)
        {
          operator new();
        }

        v183 = 0;
        v107 = *(this + 1);
        if (v107 >= *(this + 2) || *v107 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v107;
          *(this + 1) = v107 + 1;
        }

        v108 = *(this + 14);
        v109 = *(this + 15);
        *(this + 14) = v108 + 1;
        if (v108 >= v109)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543CEAC(v106, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v110 = *(this + 14);
        v36 = __OFSUB__(v110, 1);
        v111 = v110 - 1;
        if (v111 < 0 == v36)
        {
          *(this + 14) = v111;
        }

        v112 = *(this + 1);
        if (*(this + 4) - v112 <= 1 || *v112 != 242 || v112[1] != 1)
        {
          continue;
        }

        *(this + 1) = v112 + 2;
LABEL_283:
        *(a1 + 216) |= 0x10000u;
        v113 = *(a1 + 120);
        if (!v113)
        {
          operator new();
        }

        v183 = 0;
        v114 = *(this + 1);
        if (v114 >= *(this + 2) || *v114 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v114;
          *(this + 1) = v114 + 1;
        }

        v115 = *(this + 14);
        v116 = *(this + 15);
        *(this + 14) = v115 + 1;
        if (v115 >= v116)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453EC308(v113, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v117 = *(this + 14);
        v36 = __OFSUB__(v117, 1);
        v118 = v117 - 1;
        if (v118 < 0 == v36)
        {
          *(this + 14) = v118;
        }

        v119 = *(this + 1);
        if (*(this + 4) - v119 <= 1 || *v119 != 250 || v119[1] != 1)
        {
          continue;
        }

        *(this + 1) = v119 + 2;
LABEL_298:
        *(a1 + 216) |= 0x20000u;
        if (*(a1 + 128) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v120 = *(this + 1);
        if (*(this + 4) - v120 < 2 || *v120 != 194 || v120[1] != 2)
        {
          continue;
        }

        *(this + 1) = v120 + 2;
LABEL_305:
        *(a1 + 216) |= 0x40000u;
        v121 = *(a1 + 136);
        if (!v121)
        {
          operator new();
        }

        v183 = 0;
        v122 = *(this + 1);
        if (v122 >= *(this + 2) || *v122 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v122;
          *(this + 1) = v122 + 1;
        }

        v123 = *(this + 14);
        v124 = *(this + 15);
        *(this + 14) = v123 + 1;
        if (v123 >= v124)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245409AB4(v121, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v125 = *(this + 14);
        v36 = __OFSUB__(v125, 1);
        v126 = v125 - 1;
        if (v126 < 0 == v36)
        {
          *(this + 14) = v126;
        }

        v127 = *(this + 1);
        if (*(this + 4) - v127 <= 1 || *v127 != 202 || v127[1] != 2)
        {
          continue;
        }

        *(this + 1) = v127 + 2;
LABEL_320:
        *(a1 + 216) |= 0x80000u;
        v128 = *(a1 + 144);
        if (!v128)
        {
          operator new();
        }

        v183 = 0;
        v129 = *(this + 1);
        if (v129 >= *(this + 2) || *v129 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v129;
          *(this + 1) = v129 + 1;
        }

        v130 = *(this + 14);
        v131 = *(this + 15);
        *(this + 14) = v130 + 1;
        if (v130 >= v131)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24540F3D4(v128, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v132 = *(this + 14);
        v36 = __OFSUB__(v132, 1);
        v133 = v132 - 1;
        if (v133 < 0 == v36)
        {
          *(this + 14) = v133;
        }

        v134 = *(this + 1);
        if (*(this + 4) - v134 <= 1 || *v134 != 210 || v134[1] != 2)
        {
          continue;
        }

        *(this + 1) = v134 + 2;
LABEL_335:
        *(a1 + 216) |= 0x100000u;
        v135 = *(a1 + 152);
        if (!v135)
        {
          operator new();
        }

        v183 = 0;
        v136 = *(this + 1);
        if (v136 >= *(this + 2) || *v136 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v136;
          *(this + 1) = v136 + 1;
        }

        v137 = *(this + 14);
        v138 = *(this + 15);
        *(this + 14) = v137 + 1;
        if (v137 >= v138)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245415470(v135, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v139 = *(this + 14);
        v36 = __OFSUB__(v139, 1);
        v140 = v139 - 1;
        if (v140 < 0 == v36)
        {
          *(this + 14) = v140;
        }

        v141 = *(this + 1);
        if (*(this + 4) - v141 <= 1 || *v141 != 218 || v141[1] != 2)
        {
          continue;
        }

        *(this + 1) = v141 + 2;
LABEL_350:
        *(a1 + 216) |= 0x200000u;
        v142 = *(a1 + 160);
        if (!v142)
        {
          operator new();
        }

        v183 = 0;
        v143 = *(this + 1);
        if (v143 >= *(this + 2) || *v143 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v143;
          *(this + 1) = v143 + 1;
        }

        v144 = *(this + 14);
        v145 = *(this + 15);
        *(this + 14) = v144 + 1;
        if (v144 >= v145)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245421B48(v142, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v146 = *(this + 14);
        v36 = __OFSUB__(v146, 1);
        v147 = v146 - 1;
        if (v147 < 0 == v36)
        {
          *(this + 14) = v147;
        }

        v148 = *(this + 1);
        if (*(this + 4) - v148 <= 1 || *v148 != 226 || v148[1] != 2)
        {
          continue;
        }

        *(this + 1) = v148 + 2;
LABEL_365:
        *(a1 + 216) |= 0x400000u;
        v149 = *(a1 + 168);
        if (!v149)
        {
          operator new();
        }

        v183 = 0;
        v150 = *(this + 1);
        if (v150 >= *(this + 2) || *v150 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v150;
          *(this + 1) = v150 + 1;
        }

        v151 = *(this + 14);
        v152 = *(this + 15);
        *(this + 14) = v151 + 1;
        if (v151 >= v152)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24542588C(v149, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v153 = *(this + 14);
        v36 = __OFSUB__(v153, 1);
        v154 = v153 - 1;
        if (v154 < 0 == v36)
        {
          *(this + 14) = v154;
        }

        v155 = *(this + 1);
        if (*(this + 4) - v155 <= 1 || *v155 != 146 || v155[1] != 3)
        {
          continue;
        }

        *(this + 1) = v155 + 2;
LABEL_380:
        *(a1 + 216) |= 0x800000u;
        v156 = *(a1 + 176);
        if (!v156)
        {
          operator new();
        }

        v183 = 0;
        v157 = *(this + 1);
        if (v157 >= *(this + 2) || *v157 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v157;
          *(this + 1) = v157 + 1;
        }

        v158 = *(this + 14);
        v159 = *(this + 15);
        *(this + 14) = v158 + 1;
        if (v158 >= v159)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453F5C2C(v156, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v160 = *(this + 14);
        v36 = __OFSUB__(v160, 1);
        v161 = v160 - 1;
        if (v161 < 0 == v36)
        {
          *(this + 14) = v161;
        }

        v162 = *(this + 1);
        if (*(this + 4) - v162 <= 1 || *v162 != 154 || v162[1] != 3)
        {
          continue;
        }

        *(this + 1) = v162 + 2;
LABEL_395:
        *(a1 + 216) |= 0x1000000u;
        v163 = *(a1 + 184);
        if (!v163)
        {
          operator new();
        }

        v183 = 0;
        v164 = *(this + 1);
        if (v164 >= *(this + 2) || *v164 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v164;
          *(this + 1) = v164 + 1;
        }

        v165 = *(this + 14);
        v166 = *(this + 15);
        *(this + 14) = v165 + 1;
        if (v165 >= v166)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453F3CA4(v163, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v167 = *(this + 14);
        v36 = __OFSUB__(v167, 1);
        v168 = v167 - 1;
        if (v168 < 0 == v36)
        {
          *(this + 14) = v168;
        }

        v169 = *(this + 1);
        v11 = *(this + 2);
        if (v11 - v169 <= 1 || *v169 != 160 || v169[1] != 3)
        {
          continue;
        }

        v12 = (v169 + 2);
        *(this + 1) = v12;
LABEL_410:
        if (v12 >= v11 || (v170 = *v12, v170 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 192));
          if (!result)
          {
            return result;
          }

          v171 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 192) = v170;
          v171 = (v12 + 1);
          *(this + 1) = v171;
        }

        *(a1 + 216) |= 0x2000000u;
        if (v11 - v171 < 2 || *v171 != 168 || v171[1] != 3)
        {
          continue;
        }

        v23 = (v171 + 2);
        *(this + 1) = v23;
LABEL_419:
        v183 = 0;
        if (v23 >= v11 || (v172 = *v23, (v172 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183);
          if (!result)
          {
            return result;
          }

          v172 = v183;
        }

        else
        {
          *(this + 1) = v23 + 1;
        }

        if (v172 <= 4 && v172 != 3)
        {
          *(a1 + 216) |= 0x4000000u;
          *(a1 + 196) = v172;
        }

        v174 = *(this + 1);
        v21 = *(this + 2);
        if (v21 - v174 < 2 || *v174 != 176 || v174[1] != 3)
        {
          continue;
        }

        v22 = (v174 + 2);
        *(this + 1) = v22;
LABEL_433:
        if (v22 >= v21 || (v175 = *v22, v175 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 208));
          if (!result)
          {
            return result;
          }

          v176 = *(this + 1);
          v21 = *(this + 2);
        }

        else
        {
          *(a1 + 208) = v175;
          v176 = (v22 + 1);
          *(this + 1) = v176;
        }

        v13 = *(a1 + 216) | 0x8000000;
        *(a1 + 216) = v13;
        if (v21 - v176 < 2 || *v176 != 186 || v176[1] != 3)
        {
          continue;
        }

        *(this + 1) = v176 + 2;
LABEL_442:
        *(a1 + 216) = v13 | 0x10000000;
        v177 = *(a1 + 200);
        if (!v177)
        {
          operator new();
        }

        v183 = 0;
        v178 = *(this + 1);
        if (v178 >= *(this + 2) || *v178 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v178;
          *(this + 1) = v178 + 1;
        }

        v179 = *(this + 14);
        v180 = *(this + 15);
        *(this + 14) = v179 + 1;
        if (v179 >= v180)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453F0618(v177, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v181 = *(this + 14);
        v36 = __OFSUB__(v181, 1);
        v182 = v181 - 1;
        if (v182 < 0 == v36)
        {
          *(this + 14) = v182;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_92;
      case 4u:
        if (v6 != 2)
        {
          goto LABEL_66;
        }

        v20 = *(a1 + 216);
        goto LABEL_100;
      case 5u:
        if (v6 == 2)
        {
          goto LABEL_114;
        }

        goto LABEL_66;
      case 6u:
        if (v6 == 2)
        {
          goto LABEL_128;
        }

        goto LABEL_66;
      case 9u:
        if (v6 == 2)
        {
          goto LABEL_142;
        }

        goto LABEL_66;
      case 0xAu:
        if (v6 == 2)
        {
          goto LABEL_156;
        }

        goto LABEL_66;
      case 0x10u:
        if (v6 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_66;
      case 0x11u:
        if (v6 == 2)
        {
          goto LABEL_186;
        }

        goto LABEL_66;
      case 0x12u:
        if (v6 == 2)
        {
          goto LABEL_201;
        }

        goto LABEL_66;
      case 0x13u:
        if (v6 == 2)
        {
          goto LABEL_216;
        }

        goto LABEL_66;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_231;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_242;
      case 0x17u:
        if (v6 == 2)
        {
          goto LABEL_253;
        }

        goto LABEL_66;
      case 0x19u:
        if (v6 == 2)
        {
          goto LABEL_268;
        }

        goto LABEL_66;
      case 0x1Eu:
        if (v6 == 2)
        {
          goto LABEL_283;
        }

        goto LABEL_66;
      case 0x1Fu:
        if (v6 == 2)
        {
          goto LABEL_298;
        }

        goto LABEL_66;
      case 0x28u:
        if (v6 == 2)
        {
          goto LABEL_305;
        }

        goto LABEL_66;
      case 0x29u:
        if (v6 == 2)
        {
          goto LABEL_320;
        }

        goto LABEL_66;
      case 0x2Au:
        if (v6 == 2)
        {
          goto LABEL_335;
        }

        goto LABEL_66;
      case 0x2Bu:
        if (v6 == 2)
        {
          goto LABEL_350;
        }

        goto LABEL_66;
      case 0x2Cu:
        if (v6 == 2)
        {
          goto LABEL_365;
        }

        goto LABEL_66;
      case 0x32u:
        if (v6 == 2)
        {
          goto LABEL_380;
        }

        goto LABEL_66;
      case 0x33u:
        if (v6 == 2)
        {
          goto LABEL_395;
        }

        goto LABEL_66;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_410;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v23 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_419;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v22 = *(this + 1);
        v21 = *(this + 2);
        goto LABEL_433;
      case 0x37u:
        if (v6 != 2)
        {
          goto LABEL_66;
        }

        v13 = *(a1 + 216);
        goto LABEL_442;
      default:
LABEL_66:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }

    return result;
  }
}

uint64_t sub_2453A014C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || v7 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_38;
        }

        if (v7 != 2)
        {
          goto LABEL_21;
        }

        *(a1 + 48) |= 1u;
        v11 = *(a1 + 8);
        if (!v11)
        {
          operator new();
        }

        v37 = 0;
        v12 = *(this + 1);
        if (v12 >= *(this + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37))
          {
            return 0;
          }
        }

        else
        {
          v37 = *v12;
          *(this + 1) = v12 + 1;
        }

        v13 = *(this + 14);
        v14 = *(this + 15);
        *(this + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453A06A0(v11, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v15 = *(this + 14);
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v17 < 0 == v16)
        {
          *(this + 14) = v17;
        }

        v18 = *(this + 1);
        if (v18 < *(this + 2) && *v18 == 18)
        {
          *(this + 1) = v18 + 1;
LABEL_38:
          *(a1 + 48) |= 2u;
          v19 = *(a1 + 16);
          if (!v19)
          {
            operator new();
          }

          v37 = 0;
          v20 = *(this + 1);
          if (v20 >= *(this + 2) || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37))
            {
              return 0;
            }
          }

          else
          {
            v37 = *v20;
            *(this + 1) = v20 + 1;
          }

          v21 = *(this + 14);
          v22 = *(this + 15);
          *(this + 14) = v21 + 1;
          if (v21 >= v22)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_24539C6C8(v19, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v23 = *(this + 14);
          v16 = __OFSUB__(v23, 1);
          v24 = v23 - 1;
          if (v24 < 0 == v16)
          {
            *(this + 14) = v24;
          }

          v25 = *(this + 1);
          if (v25 < *(this + 2) && *v25 == 26)
          {
            *(this + 1) = v25 + 1;
LABEL_52:
            *(a1 + 48) |= 4u;
            v26 = *(a1 + 24);
            if (!v26)
            {
              operator new();
            }

            v37 = 0;
            v27 = *(this + 1);
            if (v27 >= *(this + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37))
              {
                return 0;
              }
            }

            else
            {
              v37 = *v27;
              *(this + 1) = v27 + 1;
            }

            v28 = *(this + 14);
            v29 = *(this + 15);
            *(this + 14) = v28 + 1;
            if (v28 >= v29)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2453A0B28(v26, this) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v30 = *(this + 14);
            v16 = __OFSUB__(v30, 1);
            v31 = v30 - 1;
            if (v31 < 0 == v16)
            {
              *(this + 14) = v31;
            }

            v32 = *(this + 1);
            v8 = *(this + 2);
            if (v32 < v8 && *v32 == 32)
            {
              v10 = v32 + 1;
              *(this + 1) = v10;
              goto LABEL_66;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if (v7 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_52;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v10 = *(this + 1);
      v8 = *(this + 2);
LABEL_66:
      if (v10 >= v8 || (v33 = *v10, v33 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
        if (!result)
        {
          return result;
        }

        v34 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 32) = v33;
        v34 = v10 + 1;
        *(this + 1) = v34;
      }

      *(a1 + 48) |= 8u;
      if (v34 < v8 && *v34 == 40)
      {
        v9 = v34 + 1;
        *(this + 1) = v9;
LABEL_74:
        v37 = 0;
        if (v9 >= v8 || (v36 = *v9, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37);
          if (!result)
          {
            return result;
          }

          v36 = v37;
        }

        else
        {
          *(this + 1) = v9 + 1;
        }

        if (v36 <= 4)
        {
          *(a1 + 48) |= 0x10u;
          *(a1 + 40) = v36;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_74;
    }

LABEL_21:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453A06A0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = *(this + 1);
          if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          v7 = TagFallback & 7;
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v6 != 3)
            {
              if (v6 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v11 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_58;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v16 = *(this + 1);
            v10 = *(this + 2);
LABEL_50:
            v33[0] = 0;
            if (v16 >= v10 || (v21 = *v16, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v33);
              if (!result)
              {
                return result;
              }

              v21 = v33[0];
              v22 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v22 = v16 + 1;
              *(this + 1) = v22;
            }

            *(a1 + 20) = v21 != 0;
            *(a1 + 72) |= 4u;
            if (v22 < v10 && *v22 == 32)
            {
              v11 = v22 + 1;
              *(this + 1) = v11;
LABEL_58:
              v33[0] = 0;
              if (v11 >= v10 || (v23 = *v11, (v23 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v33);
                if (!result)
                {
                  return result;
                }

                v23 = v33[0];
                v24 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v24 = v11 + 1;
                *(this + 1) = v24;
              }

              *(a1 + 64) = v23;
              *(a1 + 72) |= 8u;
              if (v24 < v10 && *v24 == 40)
              {
                v17 = v24 + 1;
                *(this + 1) = v17;
                goto LABEL_66;
              }
            }
          }

          else
          {
            if (v6 != 1)
            {
              if (v6 != 2 || v7 != 5)
              {
                goto LABEL_37;
              }

              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v13 = *(this + 1);
            v12 = *(this + 2);
            if (v13 >= v12 || (v14 = *v13, v14 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
              if (!result)
              {
                return result;
              }

              v15 = *(this + 1);
              v12 = *(this + 2);
            }

            else
            {
              *(a1 + 8) = v14;
              v15 = v13 + 1;
              *(this + 1) = v15;
            }

            *(a1 + 72) |= 1u;
            if (v15 < v12 && *v15 == 21)
            {
              *(this + 1) = v15 + 1;
LABEL_46:
              v33[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v33) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 16) = v33[0];
              *(a1 + 72) |= 2u;
              v20 = *(this + 1);
              v10 = *(this + 2);
              if (v20 < v10 && *v20 == 24)
              {
                v16 = v20 + 1;
                *(this + 1) = v16;
                goto LABEL_50;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v6 != 5)
        {
          if (v6 != 6 || v7 != 1)
          {
            goto LABEL_37;
          }

          goto LABEL_74;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(this + 1);
        v10 = *(this + 2);
LABEL_66:
        if (v17 >= v10 || (v25 = *v17, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v26 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v25;
          v26 = v17 + 1;
          *(this + 1) = v26;
        }

        *(a1 + 72) |= 0x10u;
        if (v26 < v10 && *v26 == 49)
        {
          *(this + 1) = v26 + 1;
LABEL_74:
          *v33 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v33) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = *v33;
          *(a1 + 72) |= 0x20u;
          v27 = *(this + 1);
          if (v27 < *(this + 2) && *v27 == 57)
          {
            *(this + 1) = v27 + 1;
LABEL_78:
            *v33 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v33) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = *v33;
            *(a1 + 72) |= 0x40u;
            v28 = *(this + 1);
            v8 = *(this + 2);
            if (v28 < v8 && *v28 == 64)
            {
              v18 = v28 + 1;
              *(this + 1) = v18;
              goto LABEL_82;
            }
          }
        }
      }

      if (v6 == 7)
      {
        if (v7 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_78;
      }

      if (v6 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v18 = *(this + 1);
      v8 = *(this + 2);
LABEL_82:
      if (v18 >= v8 || (v29 = *v18, v29 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 48));
        if (!result)
        {
          return result;
        }

        v30 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 48) = v29;
        v30 = v18 + 1;
        *(this + 1) = v30;
      }

      *(a1 + 72) |= 0x80u;
      if (v30 < v8 && *v30 == 72)
      {
        v9 = v30 + 1;
        *(this + 1) = v9;
LABEL_90:
        if (v9 >= v8 || (v31 = *v9, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v32 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v31;
          v32 = v9 + 1;
          *(this + 1) = v32;
        }

        *(a1 + 72) |= 0x100u;
        if (v32 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 9 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_90;
    }

LABEL_37:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_2453A0B28(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = *(this + 1);
          if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          v7 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v6 == 4)
          {
            if (v7 == 1)
            {
              goto LABEL_33;
            }

            goto LABEL_38;
          }

          if (v6 == 5)
          {
            if (v7 == 1)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          if (v6 != 6 || v7 != 1)
          {
            goto LABEL_38;
          }

LABEL_45:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 48) = v14;
          *(a1 + 60) |= 0x20u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }

        if (v6 != 1)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_38;
        }

        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = v14;
        *(a1 + 60) |= 1u;
        v8 = *(this + 1);
        if (v8 < *(this + 2) && *v8 == 17)
        {
          *(this + 1) = v8 + 1;
          goto LABEL_25;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v14;
      *(a1 + 60) |= 2u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 25)
      {
        *(this + 1) = v9 + 1;
LABEL_29:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v14;
        *(a1 + 60) |= 4u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 33)
        {
          *(this + 1) = v10 + 1;
LABEL_33:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v14;
          *(a1 + 60) |= 8u;
          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 41)
          {
            *(this + 1) = v11 + 1;
LABEL_41:
            v14 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = v14;
            *(a1 + 60) |= 0x10u;
            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 49)
            {
              *(this + 1) = v12 + 1;
              goto LABEL_45;
            }
          }
        }
      }
    }

    if (v6 == 3 && v7 == 1)
    {
      goto LABEL_29;
    }

LABEL_38:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

BOOL sub_2453A0DFC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a2 != 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_24539DF20();
    v4 = *(qword_2813CEFD0 + 8);
  }

  *a2 = *(v4 + 8);
  *(a2 + 8) = *(v4 + 16);
  *(a2 + 12) = *(v4 + 20);
  *(a2 + 16) = *(v4 + 64);
  *(a2 + 24) = *(v4 + 24);
  v5 = *(a1 + 16);
  if (!v5)
  {
    sub_24539DF20();
    v5 = *(qword_2813CEFD0 + 16);
  }

  *(a2 + 48) = *(v5 + 8);
  *(a2 + 64) = *(v5 + 24);
  *(a2 + 80) = *(v5 + 40);
  *(a2 + 96) = *(v5 + 56);
  v6 = *(v5 + 76);
  if (v6 <= 0x32)
  {
    if (((1 << v6) & 0x4000002000400) != 0)
    {
LABEL_11:
      *(a2 + 116) = v6;
      goto LABEL_12;
    }

    if (((1 << v6) & 3) != 0)
    {
      v6 = 0;
      goto LABEL_11;
    }
  }

  if (v6 == 75)
  {
    goto LABEL_11;
  }

LABEL_12:
  *(a2 + 120) = *(v5 + 80);
  v7 = *(v5 + 88);
  if (v7 <= 5)
  {
    *(a2 + 128) = dword_2454883F4[v7];
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
    sub_24539DF20();
    v8 = *(qword_2813CEFD0 + 24);
  }

  *(a2 + 136) = *(v8 + 8);
  *(a2 + 152) = *(v8 + 24);
  *(a2 + 168) = *(v8 + 40);
  *(a2 + 184) = *(a1 + 32);
  if (*(a1 + 40) <= 4u)
  {
    *(a2 + 192) = 0;
  }

  return a2 != 0;
}

void sub_2453A0F5C(void *a1)
{
  v2 = a1[16];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_24539DA30();
  if (qword_2813CEEC8 != a1)
  {
    v4 = a1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = a1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = a1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = a1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = a1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = a1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = a1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = a1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = a1[13];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = a1[14];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = a1[15];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = a1[17];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = a1[18];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = a1[19];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = a1[20];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = a1[21];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = a1[22];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = a1[23];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = a1[25];
    if (v23)
    {
      v24 = *(*v23 + 8);

      v24();
    }
  }
}

void sub_2453A1358(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859118;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453A13B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453A1358(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_2453A13E8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858D58;
  sub_2453A0F5C(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453A1440(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453A13E8(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_2453A1478(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285852B60;
  sub_24539DF20();
  if (qword_2813CEFD0 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453A1564(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453A1478(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_2453A159C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285852AE8;
  sub_24539DF20();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453A15F4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453A159C(a1);

  JUMPOUT(0x245D6A0D0);
}

__n128 sub_2453A162C(uint64_t a1, int *a2)
{
  v4 = *(a2 + 7);
  v29[6] = *(a2 + 6);
  v29[7] = v4;
  v30 = *(a2 + 16);
  v5 = *(a2 + 3);
  v29[2] = *(a2 + 2);
  v29[3] = v5;
  v6 = *(a2 + 5);
  v29[4] = *(a2 + 4);
  v29[5] = v6;
  v7 = *(a2 + 1);
  v29[0] = *a2;
  v29[1] = v7;
  sub_2453A1800(v29, "GemHeloEstimator::injectFix");
  v9 = *a2;
  if (*a2 == 3)
  {
    sub_2453A1A70(a1 + 272, a2, &v20);
    v17 = v27;
    *(a1 + 368) = v26;
    *(a1 + 384) = v17;
    *(a1 + 400) = v28;
    v18 = v23;
    *(a1 + 304) = v22;
    *(a1 + 320) = v18;
    v19 = v25;
    *(a1 + 336) = v24;
    *(a1 + 352) = v19;
    result = v21;
    *(a1 + 272) = v20;
    *(a1 + 288) = result;
  }

  else if (v9 == 2)
  {
    sub_2453A1A70(a1 + 136, a2, &v20);
    v13 = v24;
    *(a1 + 216) = v25;
    v14 = v27;
    *(a1 + 232) = v26;
    *(a1 + 248) = v14;
    v15 = v20;
    *(a1 + 152) = v21;
    result.n128_u64[0] = v22;
    v16 = v23;
    *(a1 + 168) = v22;
    *(a1 + 184) = v16;
    *(a1 + 200) = v13;
    *(a1 + 264) = v28;
    *(a1 + 136) = v15;
  }

  else if (v9 == 1)
  {
    sub_2453A1A70(a1, a2, &v20);
    v10 = v27;
    *(a1 + 96) = v26;
    *(a1 + 112) = v10;
    *(a1 + 128) = v28;
    v11 = v23;
    *(a1 + 32) = v22;
    *(a1 + 48) = v11;
    v12 = v25;
    *(a1 + 64) = v24;
    *(a1 + 80) = v12;
    result = v21;
    *a1 = v20;
    *(a1 + 16) = result;
  }

  return result;
}

void sub_2453A17A8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285852A70;
  sub_24539DF20();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453A1800(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = &unk_24549677E;
    }

    v7 = v24;
    sub_2453B4204(v24, *a1);
    if (v25 < 0)
    {
      v7 = v24[0];
    }

    v8 = *(a1 + 80);
    v9 = *(a1 + 8);
    v16 = *(a1 + 16);
    v17 = *(a1 + 24);
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    sub_2453B40D8(v22, *(a1 + 56));
    v10 = v23;
    v11 = v22[0];
    v12 = *(a1 + 88);
    v13 = *(a1 + 96);
    sub_2453B40D8(__p, *(a1 + 104));
    v14 = v22;
    if (v10 < 0)
    {
      v14 = v11;
    }

    if (v21 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    *buf = 136317955;
    v27 = v6;
    v28 = 2080;
    v29 = v7;
    v30 = 2048;
    v31 = v8;
    v32 = 2053;
    v33 = v9;
    v34 = 2053;
    v35 = v16;
    v36 = 2049;
    v37 = v17;
    v38 = 2049;
    v39 = v18;
    v40 = 2049;
    v41 = v19;
    v42 = 2081;
    v43 = v14;
    v44 = 2053;
    v45 = v12;
    v46 = 2049;
    v47 = v13;
    v48 = 2081;
    v49 = v15;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#heloInputFix,%s,%s,ts,%llu,lat,%{sensitive}.8f,lon,%{sensitive}.8f,hunc,%{private}.2f,smj,%{private}.2f,smn,%{private}.2f,hrel,%{private}s,alt,%{sensitive}.2f,vunc,%{private}.2f,vrel,%{private}s", buf, 0x7Au);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2453A19FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_2453A1A38(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453A17A8(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_2453A1A70(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 3);
  if (v5 != -1.0 && *(a2 + 12) != -1.0)
  {
    v8 = *(a1 + 24);
    if (v8 == -1.0 || (v9 = *(a2 + 10) - *(a1 + 80), v9 >= 0x12D))
    {
      v10 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v10, OS_LOG_TYPE_DEBUG, "#heloFix,GemHeloInputFix::battle, no fix available or fix aged.", buf, 2u);
      }

      memmove(a1, a2, 0x88uLL);
    }

    else
    {
      v11 = sqrt((3 * v9 * 3 * v9) + v8 * v8);
      v12 = a2[28] - *(a1 + 112);
      v13 = vcvtd_n_f64_s32(v12, 1uLL);
      v14 = v13 * v13 + *(a1 + 96) * *(a1 + 96);
      v15 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v39 = v9;
        *&v39[4] = 1024;
        *&v39[6] = v11;
        _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#heloFix,GemHeloInputFix::battle, horiz_pos_age,%d,aged_horiz_pos_uncertainty,%d", buf, 0xEu);
        v5 = *(a2 + 3);
        v15 = qword_2813CF018;
      }

      v16 = sqrt(v14);
      if (v5 < v11)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#heloFix,GemHeloInputFix::battle, updating xy", buf, 2u);
        }

        memmove((a1 + 8), a2 + 2, 0x50uLL);
        *a1 = *a2;
        v15 = qword_2813CF018;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v39 = v12;
        *&v39[4] = 1024;
        *&v39[6] = v16;
        _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#heloFix,GemHeloInputFix::battle, vertical_pos_age,%d,aged_vertical_pos_uncertainty,%d", buf, 0xEu);
        v15 = qword_2813CF018;
      }

      if (*(a2 + 12) < v16)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#heloFix,GemHeloInputFix::battle, updating z", buf, 2u);
          v15 = qword_2813CF018;
        }

        v17 = *(a2 + 22);
        *(a1 + 104) = *(a2 + 26);
        *(a1 + 88) = v17;
        *(a1 + 112) = *(a2 + 10);
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(a1 + 8);
        v23 = *(a1 + 16);
        v25 = *(a1 + 24);
        v32 = *(a1 + 32);
        v33 = *(a1 + 40);
        sub_2453B40D8(v36, *(a1 + 56));
        v26 = v37;
        v27 = v36[0];
        v29 = *(a1 + 88);
        v28 = *(a1 + 96);
        sub_2453B40D8(__p, *(a1 + 104));
        v30 = v36;
        if (v26 < 0)
        {
          v30 = v27;
        }

        v31 = __p;
        if (v35 < 0)
        {
          v31 = __p[0];
        }

        *buf = 136317443;
        *v39 = "GemHeloInputFix::battle";
        *&v39[8] = 2053;
        v40 = v24;
        v41 = 2053;
        v42 = v23;
        v43 = 2049;
        v44 = v25;
        v45 = 2049;
        v46 = v32;
        v47 = 2049;
        v48 = v33;
        v49 = 2081;
        v50 = v30;
        v51 = 2053;
        v52 = v29;
        v53 = 2049;
        v54 = v28;
        v55 = 2081;
        v56 = v31;
        _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#heloFix,%s,lat,%{sensitive}.8f,lon,%{sensitive}.8f,hunc,%{private}.2f,smj,%{private}.2f,smn,%{private}.2f,hrel,%{private}s,alt,%{sensitive}.2f,vunc,%{private}.2f,vrel,%{private}s", buf, 0x66u);
        if (v35 < 0)
        {
          operator delete(__p[0]);
        }

        if (v37 < 0)
        {
          operator delete(v36[0]);
        }
      }
    }
  }

  v18 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v18;
  *(a3 + 128) = *(a1 + 128);
  v19 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v19;
  v20 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v20;
  v21 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v21;
  v22 = *MEMORY[0x277D85DE8];
}

void sub_2453A1E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2453A1EB4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  do
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 1)
        {
          goto LABEL_28;
        }

        goto LABEL_16;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 36) |= 1u;
      if (v11 < v8 && *v11 == 17)
      {
        *(this + 1) = v11 + 1;
LABEL_24:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v14;
        *(a1 + 36) |= 2u;
        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 25)
        {
          *(this + 1) = v13 + 1;
LABEL_28:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v14;
          *(a1 + 36) |= 4u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v7 == 1)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

void sub_2453A207C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858593E8;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453A20D4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453A207C(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_2453A2ADC(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v34[20] = *MEMORY[0x277D85DE8];
  if (a1 && (v3 = a2) != 0)
  {
    v4 = a1;
    memset(&__str, 0, sizeof(__str));
    v24 = *MEMORY[0x277D82818];
    v5 = *(MEMORY[0x277D82818] + 64);
    v6 = *(MEMORY[0x277D82818] + 72);
    do
    {
      sub_2453A2FDC(buf);
      v7 = *&v29[2];
      *(&v30 + *(*&v29[2] - 24)) = *(&v30 + *(*&v29[2] - 24)) & 0xFFFFFFB5 | 8;
      *(v32 + *(v7 - 24) + 6) = 2;
      v8 = &v29[*(v7 - 24) + 2];
      if (*(v8 + 36) == -1)
      {
        std::ios_base::getloc(&v29[*(v7 - 24) + 2]);
        v9 = std::locale::use_facet(&v25, MEMORY[0x277D82680]);
        (v9->__vftable[2].~facet_0)(v9, 32);
        std::locale::~locale(&v25);
      }

      *(v8 + 36) = 48;
      MEMORY[0x245D69F60](&v29[2], *v4);
      std::stringbuf::str();
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v25;
      }

      else
      {
        v10 = v25.__r_.__value_.__r.__words[0];
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v25.__r_.__value_.__l.__size_;
      }

      std::string::append(&__str, v10, size);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      *buf = v24;
      *&buf[*(v24 - 24)] = v5;
      *&v29[2] = v6;
      v30 = MEMORY[0x277D82878] + 16;
      if (v33 < 0)
      {
        operator delete(*(&v32[6] + 6));
      }

      v30 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v31);
      std::iostream::~basic_iostream();
      MEMORY[0x245D6A070](v34);
      ++v4;
      --v3;
    }

    while (v3);
    v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = __str.__r_.__value_.__l.__size_ / 0x1F4;
      v14 = __str.__r_.__value_.__l.__size_ % 0x1F4;
    }

    else
    {
      v13 = 0;
      v14 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    v16 = 0;
    if (v14)
    {
      v17 = v13 + 1;
    }

    else
    {
      v17 = v13;
    }

    if (a3)
    {
      v18 = "In";
    }

    else
    {
      v18 = "Out";
    }

    v19 = 1;
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_31;
    }

    while (v16 < v12)
    {
      while (1)
      {
        std::string::basic_string(&v25, &__str, v16, 0x1F4uLL, buf);
        v20 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
        {
          v21 = &v25;
          if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v21 = v25.__r_.__value_.__r.__words[0];
          }

          *buf = 134546435;
          *&buf[4] = v19;
          v28 = 2053;
          *v29 = v17;
          *&v29[8] = 2085;
          v30 = v21;
          v31 = 2085;
          v32[0] = v18;
          _os_log_impl(&dword_245396000, v20, OS_LOG_TYPE_DEFAULT, "#supl,#pdu,%{sensitive}zu,of,%{sensitive}zu,%{sensitive}s,%{sensitive}s", buf, 0x2Au);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v16 += 500;
        ++v19;
        if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          break;
        }

LABEL_31:
        if (v16 >= __str.__r_.__value_.__l.__size_)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
          goto LABEL_41;
        }
      }
    }
  }

  else
  {
    v15 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v15, OS_LOG_TYPE_ERROR, "#supl,PDU is empty", buf, 2u);
    }
  }

LABEL_41:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_2453A2F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  std::locale::~locale(&a13);
  sub_2453A3280(&a25);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2453A2FDC(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_2453A5818((a1 + 3), 24);
  return a1;
}

void sub_2453A3258(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x245D6A070](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2453A3280(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x245D6A070](a1 + 128);
  return a1;
}

uint64_t sub_2453A33D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285851DB8;
  *(a1 + 24) = -1;
  *(a1 + 28) = 0;
  *(a1 + 55) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 850045863;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1018212795;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 180) = 0u;
  sub_2453A5A84(a1 + 200, a2);
  sub_2453A5B1C(a1 + 232, a3);
  sub_2453A5BB4(a1 + 264, a4);
  sub_2453A5C4C(a1 + 296, a5);
  sub_24543F30C((a1 + 64), QOS_CLASS_USER_INITIATED, "suplConnMgr");
  return a1;
}

void sub_2453A34D0(_Unwind_Exception *a1)
{
  sub_2453A5E64(v1 + 296);
  sub_2453A5DE4(v1 + 264);
  sub_2453A5D64(v1 + 232);
  sub_2453A5CE4(v1 + 200);
  std::condition_variable::~condition_variable(v3);
  std::mutex::~mutex(v2);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2453A353C(uint64_t a1)
{
  *a1 = &unk_285851DB8;
  sub_2453A35CC(a1);
  dispatch_release(*(a1 + 64));
  sub_2453A5E64(a1 + 296);
  sub_2453A5DE4(a1 + 264);
  sub_2453A5D64(a1 + 232);
  sub_2453A5CE4(a1 + 200);
  std::condition_variable::~condition_variable((a1 + 144));
  std::mutex::~mutex((a1 + 80));
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

uint64_t sub_2453A35CC(uint64_t a1)
{
  atomic_store(0, (a1 + 28));
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2)
  {
    CFReadStreamClose(v2);
    CFRelease(*v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFWriteStreamClose(v4);
    CFRelease(*(a1 + 16));
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  *(a1 + 24) = -1;
  result = MEMORY[0x245D69EE0](a1 + 32, &unk_24549677E);
  *(a1 + 56) = 0;
  return result;
}

void sub_2453A3658(uint64_t a1)
{
  sub_2453A353C(a1);

  JUMPOUT(0x245D6A0D0);
}

BOOL sub_2453A3690(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  __p = 0;
  v27 = 0;
  v28 = 0;
  v2 = *(a1 + 256);
  if (!v2)
  {
    sub_2453A5EE4();
  }

  (*(*v2 + 48))(v2, &__p);
  v3 = CFDataCreate(0, __p, v27 - __p);
  if (!v3)
  {
    v22 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v22, OS_LOG_TYPE_ERROR, "suplCertData alloc", buf, 2u);
      v22 = qword_2813CF018;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v31 = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Emergency/GnssConnectionManager.mm";
      v32 = 1026;
      v33 = 304;
      v34 = 2082;
      v35 = "verifySSL";
      _os_log_error_impl(&dword_245396000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    __assert_rtn("verifySSL", "GnssConnectionManager.mm", 304, "false && suplCertData alloc");
  }

  v4 = SecCertificateCreateWithData(0, v3);
  v5 = v4;
  if (v4)
  {
    values = v4;
    v6 = CFArrayCreate(0, &values, 1, 0);
    if (!v6)
    {
      v23 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_245396000, v23, OS_LOG_TYPE_ERROR, "myCerts alloc", buf, 2u);
        v23 = qword_2813CF018;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v31 = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Emergency/GnssConnectionManager.mm";
        v32 = 1026;
        v33 = 313;
        v34 = 2082;
        v35 = "verifySSL";
        _os_log_error_impl(&dword_245396000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      __assert_rtn("verifySSL", "GnssConnectionManager.mm", 313, "false && myCerts alloc");
    }

    BasicX509 = SecPolicyCreateBasicX509();
    if (!BasicX509)
    {
      v24 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_245396000, v24, OS_LOG_TYPE_ERROR, "myPolicy alloc", buf, 2u);
        v24 = qword_2813CF018;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v31 = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Emergency/GnssConnectionManager.mm";
        v32 = 1026;
        v33 = 316;
        v34 = 2082;
        v35 = "verifySSL";
        _os_log_error_impl(&dword_245396000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      __assert_rtn("verifySSL", "GnssConnectionManager.mm", 316, "false && myPolicy alloc");
    }

    v8 = CFWriteStreamCopyProperty(*(a1 + 16), *MEMORY[0x277CBAE60]);
    v9 = v8;
    if (!v8)
    {
      v15 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_245396000, v15, OS_LOG_TYPE_FAULT, "#supl unable to obtain trust", buf, 2u);
      }

      v14 = 0;
      goto LABEL_20;
    }

    v10 = SecTrustSetPolicies(v8, BasicX509);
    if (v10)
    {
      v11 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
      {
        *buf = 67240192;
        LODWORD(v31) = v10;
        v12 = "#supl unable to set trust policy status,%{public}d";
LABEL_32:
        _os_log_fault_impl(&dword_245396000, v11, OS_LOG_TYPE_FAULT, v12, buf, 8u);
      }
    }

    else
    {
      v16 = SecTrustSetAnchorCertificates(v9, v6);
      if (!v16)
      {
        error = 0;
        v19 = SecTrustEvaluateWithError(v9, &error);
        v20 = error;
        if (error)
        {
          v14 = 0;
        }

        else
        {
          v14 = v19;
        }

        if (v14)
        {
          goto LABEL_19;
        }

        v21 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v31 = v20;
          _os_log_fault_impl(&dword_245396000, v21, OS_LOG_TYPE_FAULT, "#supl: Invalid trust (EV) error: %{public}@", buf, 0xCu);
          v20 = error;
          if (!error)
          {
            goto LABEL_19;
          }
        }

        else if (!v20)
        {
          goto LABEL_19;
        }

        CFRelease(v20);
        goto LABEL_19;
      }

      v11 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
      {
        *buf = 67240192;
        LODWORD(v31) = v16;
        v12 = "#supl unable to set anchor certs status,%{public}d";
        goto LABEL_32;
      }
    }

    v14 = 0;
LABEL_19:
    CFRelease(v9);
LABEL_20:
    CFRelease(BasicX509);
    CFRelease(v6);
    CFRelease(v5);
    CFRelease(v3);
    goto LABEL_21;
  }

  v13 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_245396000, v13, OS_LOG_TYPE_FAULT, "#supl unable to read SUPL certificate data", buf, 2u);
  }

  CFRelease(v3);
  v14 = 0;
LABEL_21:
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_2453A3C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2453A3C8C(uint64_t a1)
{
  std::mutex::lock((a1 + 80));
  *(a1 + 72) = 1;
  std::mutex::unlock((a1 + 80));

  std::condition_variable::notify_one((a1 + 144));
}

void sub_2453A3CD8(uint64_t a1, CFIndex a2, UInt32 a3)
{
  keys[1] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = *(a2 + 23);
  }

  v8 = qword_2813CF018;
  if (!a3 || !v7)
  {
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
    {
      if ((v6 & 0x80000000) != 0)
      {
        if (*(a2 + 8))
        {
          v40 = *a2;
        }

        else
        {
          v40 = "(null)";
        }
      }

      else
      {
        v40 = "(null)";
        if (v6)
        {
          v40 = a2;
        }
      }

      LODWORD(clientContext.version) = 136380931;
      *(&clientContext.version + 4) = v40;
      WORD2(clientContext.info) = 1026;
      *(&clientContext.info + 6) = a3;
      _os_log_fault_impl(&dword_245396000, v8, OS_LOG_TYPE_FAULT, "#supl,connect,bad inputs,serverName,%{private}s,port,%{public}d", &clientContext, 0x12u);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v41 = a2;
    if ((v6 & 0x80000000) != 0)
    {
      v41 = *a2;
    }

    LODWORD(clientContext.version) = 136315394;
    *(&clientContext.version + 4) = v41;
    WORD2(clientContext.info) = 1024;
    *(&clientContext.info + 6) = a3;
    _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "#supl,connect,opening server,%s,port,%d", &clientContext, 0x12u);
  }

  v9 = atomic_load((a1 + 28));
  if (v9)
  {
    v10 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v46 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v46 = *v46;
      }

      v47 = *(a1 + 56);
      LODWORD(clientContext.version) = 136380931;
      *(&clientContext.version + 4) = v46;
      WORD2(clientContext.info) = 1026;
      *(&clientContext.info + 6) = v47;
      _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#supl,connect,connection still open to serverName,%{private}s,port,%{public}d", &clientContext, 0x12u);
    }

LABEL_9:
    sub_2453A48E4(*(a1 + 288), 4);
    goto LABEL_76;
  }

  v11 = a2;
  if (*(a2 + 23) < 0)
  {
    v11 = *a2;
  }

  v12 = CFStringCreateWithCString(0, v11, 0x8000100u);
  if (!v12)
  {
    v51 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(clientContext.version) = 0;
      _os_log_error_impl(&dword_245396000, v51, OS_LOG_TYPE_ERROR, "hostNameCFStr alloc", &clientContext, 2u);
      v51 = qword_2813CF018;
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      LODWORD(clientContext.version) = 136446722;
      *(&clientContext.version + 4) = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Emergency/GnssConnectionManager.mm";
      WORD2(clientContext.info) = 1026;
      *(&clientContext.info + 6) = 144;
      WORD1(clientContext.retain) = 2082;
      *(&clientContext.retain + 4) = "connect";
      _os_log_error_impl(&dword_245396000, v51, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", &clientContext, 0x1Cu);
    }

    __assert_rtn("connect", "GnssConnectionManager.mm", 144, "false && hostNameCFStr alloc");
  }

  CFStreamCreatePairWithSocketToHost(0, v12, a3, (a1 + 8), (a1 + 16));
  CFRelease(v12);
  keys[0] = *MEMORY[0x277CBAED0];
  values = *MEMORY[0x277CBED10];
  v13 = CFDictionaryCreate(0, keys, &values, 1, 0, 0);
  if (!v13)
  {
    v52 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(clientContext.version) = 0;
      _os_log_error_impl(&dword_245396000, v52, OS_LOG_TYPE_ERROR, "sslDictionary alloc", &clientContext, 2u);
      v52 = qword_2813CF018;
    }

    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      LODWORD(clientContext.version) = 136446722;
      *(&clientContext.version + 4) = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Emergency/GnssConnectionManager.mm";
      WORD2(clientContext.info) = 1026;
      *(&clientContext.info + 6) = 154;
      WORD1(clientContext.retain) = 2082;
      *(&clientContext.retain + 4) = "connect";
      _os_log_error_impl(&dword_245396000, v52, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", &clientContext, 0x1Cu);
    }

    __assert_rtn("connect", "GnssConnectionManager.mm", 154, "false && sslDictionary alloc");
  }

  v14 = *MEMORY[0x277CBF070];
  v15 = *MEMORY[0x277CBED28];
  CFReadStreamSetProperty(*(a1 + 8), *MEMORY[0x277CBF070], *MEMORY[0x277CBED28]);
  CFWriteStreamSetProperty(*(a1 + 16), v14, v15);
  v16 = *(a1 + 224);
  if (!v16)
  {
    sub_2453A5EE4();
  }

  v17 = (*(*v16 + 48))(v16);
  v18 = qword_2813CF018;
  v19 = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG);
  if (v17)
  {
    if (v19)
    {
      LOWORD(clientContext.version) = 0;
      _os_log_debug_impl(&dword_245396000, v18, OS_LOG_TYPE_DEBUG, "#supl,connect,using LTE,service type set to Emergency", &clientContext, 2u);
    }

    v20 = MEMORY[0x277CC39C8];
  }

  else
  {
    if (v19)
    {
      LOWORD(clientContext.version) = 0;
      _os_log_debug_impl(&dword_245396000, v18, OS_LOG_TYPE_DEBUG, "#supl,connect,not using LTE,service type set to EmergencyLocation", &clientContext, 2u);
    }

    v20 = MEMORY[0x277CC39D0];
  }

  v21 = *v20;
  v22 = *MEMORY[0x277CBADD0];
  CFReadStreamSetProperty(*(a1 + 8), *MEMORY[0x277CBADD0], *v20);
  CFWriteStreamSetProperty(*(a1 + 16), v22, v21);
  __p[0] = 0;
  __p[1] = 0;
  v56 = 0;
  v23 = *(a1 + 320);
  if (!v23)
  {
    sub_2453A5EE4();
  }

  (*(*v23 + 48))(v23, __p);
  if (v56 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v24];
  v26 = *MEMORY[0x277CBADA0];
  CFReadStreamSetProperty(*(a1 + 8), *MEMORY[0x277CBADA0], v25);
  CFWriteStreamSetProperty(*(a1 + 16), v26, v25);
  v27 = *MEMORY[0x277CBAE68];
  CFReadStreamSetProperty(*(a1 + 8), *MEMORY[0x277CBAE68], v13);
  CFWriteStreamSetProperty(*(a1 + 16), v27, v13);
  CFRelease(v13);
  clientContext.version = 0;
  clientContext.info = a1;
  memset(&clientContext.retain, 0, 24);
  *(a1 + 72) = 0;
  *(a1 + 192) = 0;
  if (!CFReadStreamSetClient(*(a1 + 8), 0xDuLL, sub_2453A4934, &clientContext))
  {
    v34 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    LOWORD(__lk.__m_) = 0;
    v35 = "#supl,connect,unable to set read stream client";
LABEL_105:
    _os_log_error_impl(&dword_245396000, v34, OS_LOG_TYPE_ERROR, v35, &__lk, 2u);
LABEL_73:
    sub_2453A48E4(*(a1 + 288), 3);
    goto LABEL_74;
  }

  if (!CFWriteStreamSetClient(*(a1 + 16), 0xDuLL, sub_2453A4A98, &clientContext))
  {
    v34 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    LOWORD(__lk.__m_) = 0;
    v35 = "#supl,connect,unable to set write stream client";
    goto LABEL_105;
  }

  MEMORY[0x245D69A90](*(a1 + 8), *(a1 + 64));
  MEMORY[0x245D69B50](*(a1 + 16), *(a1 + 64));
  if (!CFReadStreamOpen(*(a1 + 8)))
  {
    v36 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__lk.__m_) = 0;
      _os_log_error_impl(&dword_245396000, v36, OS_LOG_TYPE_ERROR, "#supl,connect,read stream open failed", &__lk, 2u);
    }

    Status = CFReadStreamGetStatus(*(a1 + 8));
    v38 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__lk.__m_) = 134349056;
      *(&__lk.__m_ + 4) = Status;
      _os_log_error_impl(&dword_245396000, v38, OS_LOG_TYPE_ERROR, "#supl,read stream in bad state streamStatus,%{public}lu", &__lk, 0xCu);
    }

    v39 = CFReadStreamCopyError(*(a1 + 8));
    sub_2453A4E78(a1, v39);
    goto LABEL_71;
  }

  if (!CFWriteStreamOpen(*(a1 + 16)))
  {
    v42 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__lk.__m_) = 0;
      _os_log_error_impl(&dword_245396000, v42, OS_LOG_TYPE_ERROR, "#supl,connect,write stream open failed", &__lk, 2u);
    }

    v43 = CFWriteStreamGetStatus(*(a1 + 16));
    v44 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__lk.__m_) = 134349056;
      *(&__lk.__m_ + 4) = v43;
      _os_log_error_impl(&dword_245396000, v44, OS_LOG_TYPE_ERROR, "#supl,write stream in bad state streamStatus,%{public}lu", &__lk, 0xCu);
    }

    v39 = CFWriteStreamCopyError(*(a1 + 16));
    sub_2453A4E78(a1, v39);
LABEL_71:
    if (v39)
    {
      CFRelease(v39);
    }

    goto LABEL_73;
  }

  __lk.__m_ = (a1 + 80);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 80));
  v28.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 10000000000;
  do
  {
    if (*(a1 + 72))
    {
      goto LABEL_50;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v28.__d_.__rep_)
    {
      break;
    }

    v29.__d_.__rep_ = v28.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v29.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v30.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v30.__d_.__rep_)
      {
        v31 = 0;
        goto LABEL_46;
      }

      if (v30.__d_.__rep_ < 1)
      {
        if (v30.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v31 = 0x8000000000000000;
          goto LABEL_46;
        }
      }

      else if (v30.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_44;
      }

      v31 = 1000 * v30.__d_.__rep_;
LABEL_44:
      if (v31 > (v29.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v32.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_47:
        std::condition_variable::__do_timed_wait((a1 + 144), &__lk, v32);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_46:
      v32.__d_.__rep_ = v31 + v29.__d_.__rep_;
      goto LABEL_47;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v28.__d_.__rep_);
  if (*(a1 + 72) == 1)
  {
LABEL_50:
    v33 = 0;
    goto LABEL_84;
  }

  v33 = 1;
LABEL_84:
  if (!__lk.__owns_)
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
    return;
  }

  std::mutex::unlock(__lk.__m_);
  __lk.__owns_ = 0;
  v48 = *(a1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2453A4E34;
  block[3] = &unk_278E36C40;
  block[4] = a1;
  dispatch_sync(v48, block);
  if (v33)
  {
    v49 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v49, OS_LOG_TYPE_ERROR, "#supl,connect,timeout waiting for connection", buf, 2u);
    }
  }

  if ((*(a1 + 193) & 1) == 0)
  {
    sub_2453A4C7C(a1);
LABEL_96:
    sub_2453A48E4(*(a1 + 288), 3);
    goto LABEL_97;
  }

  if ((*(a1 + 194) & 1) == 0)
  {
    sub_2453A4D58(a1);
    goto LABEL_96;
  }

  v50 = qword_2813CF018;
  if (*(a1 + 192))
  {
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v50, OS_LOG_TYPE_DEFAULT, "#supl,connect,success", buf, 2u);
    }

    atomic_store(1u, (a1 + 28));
    std::string::operator=((a1 + 32), a2);
    *(a1 + 56) = a3;
    sub_2453A48E4(*(a1 + 288), 2);
  }

  else
  {
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v50, OS_LOG_TYPE_ERROR, "#supl,connect,SSL failure", buf, 2u);
    }

    sub_2453A35CC(a1);
    sub_2453A48E4(*(a1 + 288), 3);
  }

LABEL_97:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

LABEL_74:
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_76:
  v45 = *MEMORY[0x277D85DE8];
}