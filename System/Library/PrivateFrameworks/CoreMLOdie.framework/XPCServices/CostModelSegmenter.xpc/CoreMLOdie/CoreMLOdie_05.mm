uint64_t llvm::consumeUnsignedInteger(unsigned __int8 **a1, unsigned int a2, unint64_t *a3)
{
  v3 = a1[1];
  if (a2)
  {
    if (!v3)
    {
      return 1;
    }

    goto LABEL_3;
  }

  if (v3 < 2)
  {
    a2 = 10;
    if (!v3)
    {
      return 1;
    }

    goto LABEL_3;
  }

  v11 = *a1;
  v12 = **a1;
  if ((v12 - 65) >= 0x1A)
  {
    v13 = **a1;
  }

  else
  {
    v13 = v12 + 32;
  }

  if (v13 != 48)
  {
LABEL_31:
    if (*v11 == 28464)
    {
      a2 = 8;
      v3 -= 2;
      *a1 = v11 + 2;
      a1[1] = v3;
      if (!v3)
      {
        return 1;
      }
    }

    else if (v12 == 48 && (v16 = v11[1], v15 = v11 + 1, (v16 - 48) <= 9))
    {
      a2 = 8;
      --v3;
      *a1 = v15;
      a1[1] = v3;
      if (!v3)
      {
        return 1;
      }
    }

    else
    {
      a2 = 10;
    }

    goto LABEL_3;
  }

  v14 = v11[1];
  if ((v14 - 65) < 0x1A)
  {
    v14 += 32;
  }

  if (v14 != 98)
  {
    if (v14 == 120)
    {
      a2 = 16;
      v3 -= 2;
      *a1 = v11 + 2;
      a1[1] = v3;
      if (!v3)
      {
        return 1;
      }

      goto LABEL_3;
    }

    goto LABEL_31;
  }

  a2 = 2;
  v3 -= 2;
  *a1 = v11 + 2;
  a1[1] = v3;
  if (!v3)
  {
    return 1;
  }

LABEL_3:
  v4 = 0;
  v5 = *a1;
  *a3 = 0;
  v6 = v3;
  do
  {
    if (*v5 < 48)
    {
      break;
    }

    v7 = *v5;
    if (v7 >= 0x3A)
    {
      if (v7 < 0x61)
      {
        if (v7 - 65 > 0x19)
        {
          break;
        }

        v8 = v7 - 55;
        if (v8 >= a2)
        {
          break;
        }
      }

      else
      {
        if (v7 >= 0x7B)
        {
          break;
        }

        v8 = v7 - 87;
        if (v8 >= a2)
        {
          break;
        }
      }
    }

    else
    {
      v8 = v7 - 48;
      if (v8 >= a2)
      {
        break;
      }
    }

    v9 = v4 * a2 + v8;
    *a3 = v9;
    if (v9 / a2 < v4)
    {
      return 1;
    }

    ++v5;
    v4 = v9;
    --v6;
  }

  while (v6);
  if (v3 != v6)
  {
    *a1 = v5;
    a1[1] = v6;
    return 0;
  }

  return 1;
}

uint64_t llvm::getAsUnsignedInteger(unsigned __int8 *a1, uint64_t a2, unsigned int a3, unint64_t *a4)
{
  v5 = a1;
  v6 = a2;
  LODWORD(result) = llvm::consumeUnsignedInteger(&v5, a3, a4);
  if (v6)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

BOOL llvm::getAsSignedInteger(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v9 = 0;
  if (a2 && *a1 == 45)
  {
    *&v8 = a1 + 1;
    *(&v8 + 1) = a2 - 1;
    if ((llvm::consumeUnsignedInteger(&v8, a3, &v9) & 1) == 0 && v9 < 0x8000000000000001)
    {
      v7 = v8;
      v5 = -v9;
LABEL_8:
      *a4 = v5;
      return *(&v7 + 1) != 0;
    }
  }

  else if ((llvm::consumeUnsignedInteger(&v7, a3, &v9) & 1) == 0)
  {
    v5 = v9;
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  return 1;
}

BOOL llvm::StringRef::consumeInteger(llvm::StringRef *this, unsigned int a2, llvm::APInt *a3)
{
  v6 = *this;
  v5 = *(this + 1);
  if (!a2)
  {
    if (v5 < 2)
    {
      v7 = 10;
      if (!v5)
      {
        return 1;
      }

      goto LABEL_24;
    }

    v8 = *v6;
    if ((v8 - 65) >= 0x1A)
    {
      v9 = *v6;
    }

    else
    {
      v9 = v8 + 32;
    }

    if (v9 == 48)
    {
      v10 = v6[1];
      if ((v10 - 65) < 0x1A)
      {
        v10 += 32;
      }

      if (v10 == 98)
      {
        v6 += 2;
        v7 = 2;
        v5 -= 2;
        if (v5)
        {
          goto LABEL_24;
        }

        return 1;
      }

      if (v10 == 120)
      {
        v6 += 2;
        v7 = 16;
        v5 -= 2;
        if (!v5)
        {
          return 1;
        }

        goto LABEL_24;
      }
    }

    if (*v6 != 28464)
    {
      if (v8 == 48 && v6[1] - 48 <= 9)
      {
        v7 = 8;
        ++v6;
        if (!--v5)
        {
          return 1;
        }
      }

      else
      {
        v7 = 10;
      }

      goto LABEL_24;
    }

    v6 += 2;
    v7 = 8;
    v5 -= 2;
    if (v5)
    {
      goto LABEL_24;
    }

    return 1;
  }

  v7 = a2;
  if (!v5)
  {
    return 1;
  }

LABEL_24:
  v11 = 0;
  while (v6[v11] == 48)
  {
    if (v5 == ++v11)
    {
      v11 = -1;
      break;
    }
  }

  if (v11 >= v5)
  {
    v11 = v5;
  }

  v12 = &v6[v11];
  v13 = v5 - v11;
  if (v5 == v11)
  {
    if (*(a3 + 2) >= 0x41u && *a3)
    {
      operator delete[]();
    }

    result = 0;
    *a3 = 0;
    *(a3 + 2) = 64;
    *this = v12;
    *(this + 1) = 0;
  }

  else
  {
    v14 = v11 - v5;
    v15 = v5 - v11;
    v16 = -1;
    do
    {
      v17 = 1 << ++v16;
      v14 += v15;
    }

    while (1 << v16 < v7);
    v18 = *(a3 + 2);
    if (v14 >= v18)
    {
      if (v14 > v18)
      {
        llvm::APInt::zext(a3, v14, &v37);
        if (*(a3 + 2) >= 0x41u && *a3)
        {
          operator delete[]();
        }

        *a3 = v37;
        v18 = v38;
        *(a3 + 2) = v38;
      }
    }

    else
    {
      v14 = *(a3 + 2);
    }

    v38 = 1;
    v37 = 0;
    v36 = 1;
    v35 = 0;
    if (v17 != v7)
    {
      v34 = v14;
      if (v14 > 0x40)
      {
        llvm::APInt::initSlowCase(&v33);
      }

      v37 = v7;
      v38 = v34;
      v34 = v14;
      v33 = 0;
      v35 = 0;
      v36 = v14;
      v18 = *(a3 + 2);
    }

    if (v18 <= 0x40)
    {
      *a3 = 0;
      if (v17 != v7)
      {
        goto LABEL_52;
      }

      while (1)
      {
LABEL_70:
        if (*v12 < 48)
        {
          goto LABEL_90;
        }

        v25 = *v12;
        if (v25 >= 0x3A)
        {
          if (v25 <= 0x60)
          {
            if (v25 - 65 >= 0x1A)
            {
              goto LABEL_90;
            }

            v26 = -55;
          }

          else
          {
            if (v25 > 0x7A)
            {
              goto LABEL_90;
            }

            v26 = -87;
          }
        }

        else
        {
          v26 = -48;
        }

        v27 = v26 + v25;
        if (v27 >= v7)
        {
          goto LABEL_90;
        }

        v28 = *(a3 + 2);
        if (v28 <= 0x40)
        {
          break;
        }

        llvm::APInt::shlSlowCase(a3, v16);
        v28 = *(a3 + 2);
        if (v28 >= 0x41)
        {
          **a3 |= v27;
          ++v12;
          if (!--v13)
          {
            goto LABEL_90;
          }
        }

        else
        {
LABEL_86:
          if (v28)
          {
            v31 = 0xFFFFFFFFFFFFFFFFLL >> -v28;
          }

          else
          {
            v31 = 0;
          }

          *a3 = (*a3 | v27) & v31;
          ++v12;
          if (!--v13)
          {
            goto LABEL_90;
          }
        }
      }

      v29 = *a3 << v16;
      if (v28 == v16)
      {
        v29 = 0;
      }

      v30 = 0xFFFFFFFFFFFFFFFFLL >> -v28;
      if (!v28)
      {
        v30 = 0;
      }

      *a3 = v29 & v30;
      goto LABEL_86;
    }

    **a3 = 0;
    bzero((*a3 + 8), (((v18 + 63) >> 3) - 8) & 0xFFFFFFF8);
    if (v17 == v7)
    {
      goto LABEL_70;
    }

LABEL_52:
    while (*v12 >= 48)
    {
      v20 = *v12;
      if (v20 >= 0x3A)
      {
        if (v20 < 0x61)
        {
          if (v20 - 65 > 0x19)
          {
            break;
          }

          v21 = -55;
        }

        else
        {
          if (v20 >= 0x7B)
          {
            break;
          }

          v21 = -87;
        }
      }

      else
      {
        v21 = -48;
      }

      v22 = v21 + v20;
      if (v22 >= v7)
      {
        break;
      }

      llvm::APInt::operator*=(a3, &v37);
      v23 = v36;
      if (v36 > 0x40)
      {
        *v35 = v22;
        bzero(v35 + 1, (((v23 + 63) >> 3) - 8) & 0xFFFFFFF8);
        llvm::APInt::operator+=(a3, &v35);
        ++v12;
        if (!--v13)
        {
          break;
        }
      }

      else
      {
        if (v36)
        {
          v24 = 0xFFFFFFFFFFFFFFFFLL >> -v36;
        }

        else
        {
          v24 = 0;
        }

        v35 = (v24 & v22);
        llvm::APInt::operator+=(a3, &v35);
        ++v12;
        if (!--v13)
        {
          break;
        }
      }
    }

LABEL_90:
    v32 = *(this + 1);
    result = v32 == v13;
    if (v32 != v13)
    {
      *this = v12;
      *(this + 1) = v13;
    }

    if (v36 >= 0x41 && v35)
    {
      operator delete[]();
    }

    if (v38 >= 0x41)
    {
      if (v37)
      {
        operator delete[]();
      }
    }
  }

  return result;
}

uint64_t llvm::StringRef::getAsInteger(llvm::StringRef *this, unsigned int a2, llvm::APInt *a3)
{
  v4 = *this;
  LODWORD(result) = llvm::StringRef::consumeInteger(&v4, a2, a3);
  if (*(&v4 + 1))
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t llvm::StringRef::getAsDouble(llvm::StringRef *this, double *a2, int a3)
{
  v6 = llvm::detail::IEEEFloat::IEEEFloat(&v16, 0.0);
  v7 = llvm::APFloatBase::IEEEdouble(v6);
  llvm::APFloat::Storage::Storage(v15, &v16, v7);
  llvm::detail::IEEEFloat::~IEEEFloat(&v16);
  v8 = llvm::APFloat::convertFromString(v15, *this, *(this + 1), 1, &v16);
  if ((v17 & 1) == 0)
  {
    if (v16)
    {
      v10 = 1;
      if ((v16 & 0x10) == 0 || !a3)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = 0;
    *a2 = llvm::APFloat::convertToDouble(v15);
    goto LABEL_10;
  }

  v9 = v16;
  v16 = 0;
  if (!v9)
  {
    goto LABEL_9;
  }

  v13 = v9;
  sub_10002B334(&v13, &v14);
  v8 = v13;
  if (v13)
  {
    v8 = (*(*v13 + 8))(v13);
  }

  v10 = 1;
LABEL_10:
  if (v17)
  {
    v8 = v16;
    v16 = 0;
    if (v8)
    {
      v8 = (*(*v8 + 8))(v8);
    }
  }

  v11 = v15[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v8) == v11)
  {
    sub_100029F40(v15);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v15);
  }

  return v10;
}

uint64_t llvm::StdThreadPool::StdThreadPool(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  *a1 = &off_1002B4458;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((a1 + 32));
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1018212795;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1018212795;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 288) = 1;
  *(a1 + 292) = a2;
  *(a1 + 300) = llvm::ThreadPoolStrategy::compute_thread_count(&v5);
  return a1;
}

BOOL llvm::StdThreadPool::grow(pthread_rwlock_t **this, int a2)
{
  llvm::sys::RWMutexImpl::lock(this + 4);
  v4 = this[1];
  v5 = this[2];
  v6 = (v5 - v4) >> 3;
  v7 = *(this + 75);
  if (v6 < v7)
  {
    v8 = v7 >= a2 ? a2 : *(this + 75);
    if (v8 > ((v5 - v4) >> 3))
    {
      v9 = this[3];
      if (v5 >= v9)
      {
        if (!((v6 + 1) >> 61))
        {
          v10 = v9 - v4;
          v11 = v10 >> 2;
          if (v10 >> 2 <= v6 + 1)
          {
            v11 = v6 + 1;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            if (!(v12 >> 61))
            {
              operator new();
            }

            sub_10002BC08();
          }

          operator new();
        }

        sub_10002BC08();
      }

      operator new();
    }
  }

  return llvm::sys::RWMutexImpl::unlock(this + 4);
}

uint64_t llvm::StdThreadPool::processTasks(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 96);
  v5 = (a2 >> 4) ^ (a2 >> 9);
  do
  {
    v60 = 0;
    v58 = 0;
    __lk.__m_ = v4;
    v7 = 1;
    __lk.__owns_ = 1;
    std::mutex::lock(v4);
    v8 = *(a1 + 288);
    if (v8 == 1)
    {
      if (a2)
      {
        LOBYTE(v8) = 1;
        while (1)
        {
          v9 = *(a1 + 88);
          v7 = v9 != 0;
          if (v9)
          {
            break;
          }

          v10 = *(a1 + 280);
          if (!v10)
          {
            goto LABEL_27;
          }

          v11 = *(a1 + 264);
          v12 = v10 - 1;
          v13 = v12 & v5;
          v14 = *(v11 + 16 * (v12 & v5));
          if (v14 != a2)
          {
            v15 = 1;
            while (v14 != -4096)
            {
              v16 = v13 + v15++;
              v13 = v16 & v12;
              v14 = *(v11 + 16 * (v16 & v12));
              if (v14 == a2)
              {
                goto LABEL_10;
              }
            }

LABEL_27:
            v7 = 0;
            if (v8)
            {
              goto LABEL_31;
            }

            goto LABEL_18;
          }

LABEL_10:
          std::condition_variable::wait((a1 + 160), &__lk);
          LOBYTE(v8) = *(a1 + 288);
          if ((v8 & 1) == 0)
          {
            LOBYTE(v8) = 0;
            goto LABEL_29;
          }
        }
      }

      else
      {
        if (*(a1 + 88))
        {
          goto LABEL_31;
        }

        do
        {
          std::condition_variable::wait((a1 + 160), &__lk);
          LOBYTE(v8) = *(a1 + 288);
        }

        while ((v8 & 1) != 0 && !*(a1 + 88));
LABEL_29:
        v7 = 1;
      }
    }

    if (v8)
    {
LABEL_31:
      v19 = !v7;
      if (!a2)
      {
        v19 = 0;
      }

      if (v19)
      {
        v17 = 0;
        goto LABEL_53;
      }

      goto LABEL_34;
    }

LABEL_18:
    v17 = 0;
    if (a2)
    {
      v18 = v7;
    }

    else
    {
      v18 = 1;
    }

    if (!*(a1 + 88) || (v18 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_34:
    ++*(a1 + 256);
    v20 = *(a1 + 80);
    v21 = *(*(a1 + 56) + 8 * (v20 / 0x66));
    v22 = v60;
    v60 = 0;
    if (v22 == v59)
    {
      (*(*v22 + 32))(v22);
      v23 = v21 + 40 * (v20 % 0x66);
      v24 = *(v23 + 24);
      if (v24)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v22)
      {
        (*(*v22 + 40))(v22);
      }

      v23 = v21 + 40 * (v20 % 0x66);
      v24 = *(v23 + 24);
      if (v24)
      {
LABEL_38:
        if (v24 == v23)
        {
          v60 = v59;
          (*(**(v23 + 24) + 24))(*(v23 + 24), v59);
        }

        else
        {
          v60 = v24;
          *(v23 + 24) = 0;
        }

        goto LABEL_44;
      }
    }

    v60 = 0;
LABEL_44:
    v25 = *(a1 + 80);
    v26 = *(*(a1 + 56) + 8 * (v25 / 0x66));
    v27 = v25 % 0x66;
    v58 = *(v26 + 40 * v27 + 32);
    if (v58)
    {
      v28 = sub_10003C58C(a1 + 264, &v58);
      ++*v28;
      v29 = *(a1 + 80);
      v26 = *(*(a1 + 56) + 8 * (v29 / 0x66));
      v27 = v29 % 0x66;
    }

    v30 = v26 + 40 * v27;
    v31 = *(v30 + 24);
    if (v31 == v30)
    {
      (*(*v31 + 32))(v31);
    }

    else if (v31)
    {
      (*(*v31 + 40))(v31);
    }

    v32 = vaddq_s64(*(a1 + 80), xmmword_10028F1E0);
    *(a1 + 80) = v32;
    if (v32.i64[0] >= 0xCCuLL)
    {
      operator delete(**(a1 + 56));
      *(a1 + 56) += 8;
      *(a1 + 80) -= 102;
    }

    v17 = 1;
LABEL_53:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!v17)
    {
      goto LABEL_86;
    }

    if (!v60)
    {
      sub_100033DA0();
    }

    (*(*v60 + 48))(v60);
    std::mutex::lock(v4);
    v33 = *(a1 + 256) - 1;
    *(a1 + 256) = v33;
    v34 = v58;
    if (v58)
    {
      v35 = *(a1 + 264);
      v36 = *(a1 + 280);
      if (!v36)
      {
        goto LABEL_64;
      }

      v37 = (v36 - 1) & ((v58 >> 4) ^ (v58 >> 9));
      v38 = *(v35 + 16 * v37);
      if (v38 != v58)
      {
        v39 = 1;
        while (v38 != -4096)
        {
          v40 = v37 + v39++;
          v37 = v40 & (v36 - 1);
          v38 = *(v35 + 16 * v37);
          if (v38 == v58)
          {
            goto LABEL_65;
          }
        }

LABEL_64:
        v37 = *(a1 + 280);
      }

LABEL_65:
      v41 = v35 + 16 * v37;
      v42 = *(v41 + 8) - 1;
      *(v41 + 8) = v42;
      if (v42)
      {
        if (v34)
        {
          goto LABEL_67;
        }
      }

      else
      {
        *v41 = -8192;
        *(a1 + 272) = vadd_s32(*(a1 + 272), 0x1FFFFFFFFLL);
        v34 = v58;
        if (v58)
        {
LABEL_67:
          if (v36)
          {
            v43 = v36 - 1;
            v44 = (v36 - 1) & ((v34 >> 4) ^ (v34 >> 9));
            v45 = *(v35 + 16 * v44);
            if (v45 == v34)
            {
              goto LABEL_75;
            }

            v46 = 1;
            while (v45 != -4096)
            {
              v47 = v44 + v46++;
              v44 = v47 & v43;
              v45 = *(v35 + 16 * v44);
              if (v45 == v34)
              {
                goto LABEL_75;
              }
            }
          }

          v50 = *(a1 + 56);
          if (*(a1 + 64) != v50)
          {
            v51 = *(a1 + 80);
            v52 = (v50 + 8 * (v51 / 0x66));
            v53 = *v52;
            v54 = *v52 + 40 * (v51 % 0x66);
            v55 = *(v50 + 8 * ((*(a1 + 88) + v51) / 0x66)) + 40 * ((*(a1 + 88) + v51) % 0x66);
            while (v54 != v55)
            {
              if (*(v54 + 32) == v34)
              {
                goto LABEL_75;
              }

              v54 += 40;
              if (v54 - v53 == 4080)
              {
                v56 = v52[1];
                ++v52;
                v53 = v56;
                v54 = v56;
              }
            }
          }

          std::mutex::unlock(v4);
          std::condition_variable::notify_all((a1 + 208));
          v49 = (a1 + 160);
          goto LABEL_85;
        }
      }
    }

    if (v33)
    {
LABEL_75:
      std::mutex::unlock(v4);
      goto LABEL_86;
    }

    v48 = *(a1 + 88);
    std::mutex::unlock(v4);
    if (!v48)
    {
      v49 = (a1 + 208);
LABEL_85:
      std::condition_variable::notify_all(v49);
    }

LABEL_86:
    result = v60;
    if (v60 == v59)
    {
      result = (*(*v60 + 32))(v60);
    }

    else if (v60)
    {
      result = (*(*v60 + 40))();
    }
  }

  while ((v17 & 1) != 0);
  return result;
}

uint64_t sub_10003C58C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 16 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = *a1 + 16 * (v12 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    sub_10003DA78(a1, v2);
    sub_10003D9D4(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  *(v5 + 8) = 0;
  return v5 + 8;
}

void llvm::StdThreadPool::wait(llvm::StdThreadPool *this)
{
  v2.__m_ = (this + 96);
  v2.__owns_ = 1;
  std::mutex::lock((this + 96));
  while (*(this + 64) || *(this + 11))
  {
    std::condition_variable::wait((this + 208), &v2);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void llvm::StdThreadPool::wait(uint64_t a1, uint64_t a2)
{
  llvm::sys::RWMutexImpl::lock_shared((a1 + 32));
  current_id_impl = llvm::llvm_thread_get_current_id_impl();
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 == v7)
  {
LABEL_5:
    llvm::sys::RWMutexImpl::unlock_shared((a1 + 32));
    v24.__m_ = (a1 + 96);
    v24.__owns_ = 1;
    std::mutex::lock((a1 + 96));
    v9 = (a2 >> 4) ^ (a2 >> 9);
    v10 = *(a1 + 280);
    if (v10)
    {
      while (1)
      {
        v11 = *(a1 + 264);
        v12 = v10 - 1;
        v13 = v12 & v9;
        v14 = *(v11 + 16 * (v12 & v9));
        if (v14 != a2)
        {
          break;
        }

LABEL_7:
        std::condition_variable::wait((a1 + 208), &v24);
        v10 = *(a1 + 280);
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      v15 = 1;
      while (v14 != -4096)
      {
        v16 = v13 + v15++;
        v13 = v16 & v12;
        v14 = *(v11 + 16 * v13);
        if (v14 == a2)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_13:
    v17 = *(a1 + 56);
    if (*(a1 + 64) != v17)
    {
      v18 = *(a1 + 80);
      v19 = (v17 + 8 * (v18 / 0x66));
      v20 = *v19;
      v21 = *v19 + 40 * (v18 % 0x66);
      v22 = *(v17 + 8 * ((*(a1 + 88) + v18) / 0x66)) + 40 * ((*(a1 + 88) + v18) % 0x66);
      while (v21 != v22)
      {
        if (*(v21 + 32) == a2)
        {
          goto LABEL_7;
        }

        v21 += 40;
        if (v21 - v20 == 4080)
        {
          v23 = v19[1];
          ++v19;
          v20 = v23;
          v21 = v23;
        }
      }
    }

    if (v24.__owns_)
    {
      std::mutex::unlock(v24.__m_);
    }
  }

  else
  {
    v8 = current_id_impl;
    while (v8 != llvm::llvm_thread_get_id_impl(*v6, v5))
    {
      if (++v6 == v7)
      {
        goto LABEL_5;
      }
    }

    llvm::sys::RWMutexImpl::unlock_shared((a1 + 32));

    llvm::StdThreadPool::processTasks(a1, a2);
  }
}

void llvm::StdThreadPool::~StdThreadPool(llvm::StdThreadPool *this)
{
  *this = &off_1002B4458;
  std::mutex::lock((this + 96));
  *(this + 288) = 0;
  std::mutex::unlock((this + 96));
  std::condition_variable::notify_all((this + 160));
  llvm::sys::RWMutexImpl::lock_shared(this + 4);
  v3 = *(this + 1);
  for (i = *(this + 2); v3 != i; ++v3)
  {
    llvm::llvm_thread_join_impl(*v3, v2);
    *v3 = 0;
  }

  llvm::sys::RWMutexImpl::unlock_shared(this + 4);
  llvm::deallocate_buffer(*(this + 33), (16 * *(this + 70)), 8uLL);
  std::condition_variable::~condition_variable((this + 208));
  std::condition_variable::~condition_variable((this + 160));
  std::mutex::~mutex((this + 96));
  sub_10003D3B0(this + 48);
  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 4);
  v5 = *(this + 1);
  if (v5)
  {
    for (j = *(this + 2); j != v5; j -= 8)
    {
      if (*(j - 1))
      {
        std::terminate();
      }
    }

    *(this + 2) = v5;
    operator delete(v5);
  }
}

{
  llvm::StdThreadPool::~StdThreadPool(this);

  operator delete();
}

BOOL sub_10003CA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 96));
  v6 = *(a2 + 24);
  if (v6)
  {
    if (v6 == a2)
    {
      v11 = v10;
      (*(*v6 + 24))(v6, v10);
    }

    else
    {
      v11 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  sub_10003CBCC((a1 + 48), v10);
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))();
  }

  v7 = *(a1 + 256);
  v8 = *(a1 + 88);
  std::mutex::unlock((a1 + 96));
  std::condition_variable::notify_one((a1 + 160));
  return llvm::StdThreadPool::grow(a1, v7 + v8);
}

uint64_t sub_10003CBCC(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 102 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_10003CD3C(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
    v9 = *(a2 + 24);
    if (v9)
    {
LABEL_7:
      if (v9 == a2)
      {
        *(v8 + 24) = v8;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v8);
        v4 = a1[1];
        v5 = a1[2];
      }

      else
      {
        *(v8 + 24) = v9;
        *(a2 + 24) = 0;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
    v9 = *(a2 + 24);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  *(v8 + 24) = 0;
LABEL_12:
  *(v8 + 32) = *(a2 + 32);
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = (v4 + 8 * (v12 / 0x66));
  v14 = *v13 + 40 * (v12 % 0x66);
  if (v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == *v13)
  {
    return *(v13 - 1) + 4040;
  }

  else
  {
    return v15 - 40;
  }
}

void *sub_10003CD3C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_10002BC08();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_10003D08C(a1, &v11);
}

void *sub_10003D08C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_10002BC08();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **sub_10003D218(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10002BC08();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

uint64_t sub_10003D3B0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v4 = *(a1 + 32);
  v5 = &v2[v4 / 0x66];
  v6 = *v5 + 40 * (v4 % 0x66);
  v7 = v2[(*(a1 + 40) + v4) / 0x66] + 40 * ((*(a1 + 40) + v4) % 0x66);
  if (v6 == v7)
  {
    goto LABEL_13;
  }

  do
  {
    v8 = *(v6 + 24);
    if (v8 == v6)
    {
      (*(*v8 + 32))(v8);
      v6 += 40;
      if (v6 - *v5 != 4080)
      {
        continue;
      }

LABEL_11:
      v9 = v5[1];
      ++v5;
      v6 = v9;
      continue;
    }

    if (v8)
    {
      (*(*v8 + 40))(v8);
    }

    v6 += 40;
    if (v6 - *v5 == 4080)
    {
      goto LABEL_11;
    }
  }

  while (v6 != v7);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
LABEL_13:
  *(a1 + 40) = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

LABEL_15:
  if (v10 == 1)
  {
    v11 = 51;
LABEL_20:
    *(a1 + 32) = v11;
  }

  else if (v10 == 2)
  {
    v11 = 102;
    goto LABEL_20;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10003D5A8(uint64_t a1, const llvm::Twine *a2)
{
  v3 = *a1;
  v4[0] = "llvm-worker-{0}";
  v4[1] = 15;
  v4[2] = &v7;
  v4[3] = 1;
  v5 = 1;
  v6[0] = &off_1002B4498;
  v6[1] = a1 + 8;
  v7 = v6;
  v9 = 263;
  v8 = v4;
  llvm::set_thread_name(&v8, a2);
  llvm::ThreadPoolStrategy::apply_thread_strategy((v3 + 292), *(a1 + 8));
  llvm::StdThreadPool::processTasks(v3, 0);
  operator delete();
}

void *sub_10003D688(unsigned int *a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  v14 = a3;
  v15 = a4;
  v6 = sub_10003D7C8(&v14);
  if ((v6 & 0x100000000) == 0)
  {
    if (v15)
    {
      v7 = 0;
      v8 = *v14;
      if (v8 <= 0x63)
      {
        if (v8 != 68)
        {
          if (v8 != 78)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_18:
        v7 = 0;
        ++v14;
        goto LABEL_19;
      }

      if (v8 == 100)
      {
        goto LABEL_18;
      }

      if (v8 == 110)
      {
LABEL_17:
        ++v14;
        v7 = 1;
LABEL_19:
        --v15;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_20:
    v16 = 0;
    if (llvm::consumeUnsignedInteger(&v14, 0xAu, &v16))
    {
      v13 = 0;
    }

    else
    {
      v13 = v16;
    }

    return llvm::write_integer(a2, *a1, v13, v7);
  }

  v9 = v6;
  v16 = 0;
  if (llvm::consumeUnsignedInteger(&v14, 0xAu, &v16))
  {
    v10 = 0;
  }

  else
  {
    v10 = v16;
  }

  if (llvm::isPrefixedHexStyle(v9))
  {
    v11 = v10 + 2;
  }

  else
  {
    v11 = v10;
  }

  return llvm::write_hex(a2, *a1, v9, v11, 1);
}

const mach_header_64 *sub_10003D7C8(uint64_t a1)
{
  if (!llvm::StringRef::starts_with_insensitive(a1, "x", 1uLL))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = v2 - 2;
  if (v2 < 2)
  {
    if (!v2)
    {
      goto LABEL_5;
    }

    v4 = *a1;
    if (**a1 != 120)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v4 = *a1;
  if (**a1 == 11640)
  {
    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return (&_mh_execute_header.magic + 1);
  }

  else if (*v4 == 11608)
  {
    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return &_mh_execute_header;
  }

  else if (*v4 == 11128)
  {
    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return (&_mh_execute_header.magic + 3);
  }

  else
  {
    if (*v4 == 120)
    {
LABEL_11:
      *a1 = v4 + 1;
      *(a1 + 8) = v2 - 1;
      return (&_mh_execute_header.magic + 3);
    }

    if (*v4 != 11096)
    {
LABEL_5:
      sub_10003D948(a1, "X", 1uLL);
      return (&_mh_execute_header.magic + 2);
    }

    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return (&_mh_execute_header.magic + 2);
  }
}

uint64_t sub_10003D948(const void **a1, const void *a2, size_t a3)
{
  v3 = a1[1];
  v4 = &v3[-a3];
  if (v3 < a3)
  {
    return 0;
  }

  v6 = *a1;
  if (a3)
  {
    v7 = a1;
    v8 = a3;
    v9 = memcmp(*a1, a2, a3);
    a3 = v8;
    v10 = v9;
    a1 = v7;
    if (v10)
    {
      return 0;
    }
  }

  *a1 = &v6[a3];
  a1[1] = v4;
  return 1;
}

uint64_t sub_10003D9D4(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void sub_10003DA78(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &buffer[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = 0;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v23 = &buffer[2 * v26];
          v27 = *v23;
          if (v24 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v23 = &buffer[2 * (v31 & v25)];
              v27 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_24:
          *v23 = v24;
          *(v23 + 2) = *(v17 + 2);
          *(a1 + 8) = ++v16;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v18 = *(a1 + 16);
    if (v18)
    {
      if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_19;
      }

      v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
      v20 = buffer + 2;
      v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v20 - 2) = -4096;
        *v20 = -4096;
        v20 += 4;
        v21 -= 2;
      }

      while (v21);
      if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_19:
        v22 = &buffer[2 * v18];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v22);
      }
    }
  }
}

void llvm::Twine::str(llvm::Twine *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 32);
  if (v3 == 7)
  {
    if (*(this + 33) == 1)
    {
      v6 = *this;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      LODWORD(v19) = 0;
      v22 = 0;
      v23 = 1;
      v20 = 0;
      v21 = 0;
      *(&v19 + 1) = 0;
      v18 = &off_1002B45C0;
      v24 = a2;
      llvm::raw_ostream::SetBufferAndMode(&v18, 0, 0, 0);
      llvm::raw_ostream::operator<<(&v18, v6, v7, v8, v9, v10, v11);
      if (v21 != *(&v19 + 1))
      {
        llvm::raw_ostream::flush_nonempty(&v18);
      }

      llvm::raw_ostream::~raw_ostream(&v18);
      return;
    }
  }

  else if (v3 == 4 && *(this + 33) == 1)
  {
    v4 = *this;
    if (*(*this + 23) < 0)
    {
      v16 = *v4;
      v17 = *(v4 + 8);

      sub_100033C24(a2, v16, v17);
    }

    else
    {
      v5 = *v4;
      *(a2 + 16) = *(v4 + 16);
      *a2 = v5;
    }

    return;
  }

  v18 = &v20;
  v19 = xmmword_10028ED90;
  v12 = sub_10003DEC8(this, &v18);
  if (!v12)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v15 = v18;
    if (v18 == &v20)
    {
      return;
    }

    goto LABEL_20;
  }

  v14 = v13;
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10002BC08();
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v13;
  if (v13)
  {
    memmove(a2, v12, v13);
  }

  *(a2 + v14) = 0;
  v15 = v18;
  if (v18 != &v20)
  {
LABEL_20:
    free(v15);
  }
}

uint64_t sub_10003DEC8(void **a1, uint64_t *a2)
{
  if (*(a1 + 33) != 1)
  {
    goto LABEL_15;
  }

  v3 = *(a1 + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      result = *a1;
      v7 = a1[1];
      return result;
    }

    goto LABEL_15;
  }

  if (v3 == 1)
  {
    return 0;
  }

  if (v3 == 3)
  {
    v16 = *a1;
    if (*a1)
    {
      strlen(v16);
      return v16;
    }

    return 0;
  }

  if (v3 != 4)
  {
LABEL_15:
    v18 = 2;
    v22 = 0;
    v23 = 1;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v17 = off_1002B4638;
    v24 = a2;
    v9 = llvm::raw_ostream::SetBufferAndMode(&v17, 0, 0, 0);
    v12 = llvm::Twine::printOneChild(v9, &v17, *a1, a1[1], *(a1 + 32), v10, v11);
    llvm::Twine::printOneChild(v12, &v17, a1[2], a1[3], *(a1 + 33), v13, v14);
    llvm::raw_ostream::~raw_ostream(&v17);
    result = *a2;
    v15 = a2[1];
    return result;
  }

  v4 = *(*a1 + 23);
  if (v4 >= 0)
  {
    result = *a1;
  }

  else
  {
    result = **a1;
  }

  if (v4 >= 0)
  {
    v6 = *(*a1 + 23);
  }

  else
  {
    v6 = (*a1)[1];
  }

  return result;
}

void llvm::Twine::toVector(uint64_t a1, uint64_t a2)
{
  v10 = 2;
  v14 = 0;
  v15 = 1;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v9 = off_1002B4638;
  v16 = a2;
  v3 = llvm::raw_ostream::SetBufferAndMode(&v9, 0, 0, 0);
  v6 = llvm::Twine::printOneChild(v3, &v9, *a1, *(a1 + 8), *(a1 + 32), v4, v5);
  llvm::Twine::printOneChild(v6, &v9, *(a1 + 16), *(a1 + 24), *(a1 + 33), v7, v8);
  llvm::raw_ostream::~raw_ostream(&v9);
}

llvm::raw_ostream *llvm::Twine::print(size_t *this, llvm::raw_ostream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = llvm::Twine::printOneChild(this, a2, *this, this[1], *(this + 32), a6, a7);
  v12 = this[2];
  v13 = this[3];
  v14 = *(this + 33);

  return llvm::Twine::printOneChild(v9, a2, v12, v13, v14, v10, v11);
}

void *llvm::Twine::toNullTerminatedStringRef(uint64_t a1, void *a2)
{
  if (*(a1 + 33) != 1 || (v4 = *(a1 + 32), v4 < 2))
  {
LABEL_9:
    v18 = 2;
    v22 = 0;
    v23 = 1;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v17 = off_1002B4638;
    v24 = a2;
    v7 = llvm::raw_ostream::SetBufferAndMode(&v17, 0, 0, 0);
    v10 = llvm::Twine::printOneChild(v7, &v17, *a1, *(a1 + 8), *(a1 + 32), v8, v9);
    llvm::Twine::printOneChild(v10, &v17, *(a1 + 16), *(a1 + 24), *(a1 + 33), v11, v12);
    llvm::raw_ostream::~raw_ostream(&v17);
    v13 = a2[1];
    if ((v13 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v13 + 1, 1);
      v13 = a2[1];
    }

    *(*a2 + v13) = 0;
    result = *a2;
    v14 = a2[1];
    return result;
  }

  if (v4 == 6)
  {
    result = *a1;
    v16 = *(a1 + 8);
    return result;
  }

  if (v4 != 4)
  {
    if (v4 == 3)
    {
      v5 = *a1;
      if (!*a1)
      {
        return 0;
      }

      strlen(*a1);
      return v5;
    }

    goto LABEL_9;
  }

  result = *a1;
  if ((*(*a1 + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v15 = *(*a1 + 8);
  }

  return result;
}

llvm::raw_ostream *llvm::Twine::printOneChild(llvm::raw_ostream *result, llvm::raw_ostream *a2, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a3;
  for (i = a5; a5 == 2; i = a5)
  {
    result = llvm::Twine::printOneChild(result, a2, *v7, *(v7 + 8), *(v7 + 32));
    a5 = *(v7 + 33);
    v10 = v7 + 16;
    v7 = *(v7 + 16);
    a4 = *(v10 + 8);
  }

  if (i > 9)
  {
    if (i > 12)
    {
      switch(i)
      {
        case 13:
          v20 = *v7;

          return llvm::raw_ostream::operator<<(a2, v20);
        case 14:
          v21 = *v7;

          return llvm::raw_ostream::operator<<(a2, v21);
        case 15:
          v17 = *v7;

          return llvm::raw_ostream::write_hex(a2, v17);
      }

      return result;
    }

    if (i == 10)
    {
      v15 = v7;
      v16 = a2;
    }

    else
    {
      if (i == 11)
      {
        v18 = *v7;
        v19 = a2;

        return llvm::raw_ostream::operator<<(v19, v18);
      }

      v15 = *v7;
      v16 = a2;
    }

    return llvm::raw_ostream::operator<<(v16, v15);
  }

  if (i > 6)
  {
    if (i == 7)
    {

      return llvm::raw_ostream::operator<<(a2, v7, a3, a4, a5, a6, a7);
    }

    if (i == 8)
    {
      v23 = *(a2 + 4);
      if (v23 >= *(a2 + 3))
      {

        return llvm::raw_ostream::write(a2, v7);
      }

      else
      {
        *(a2 + 4) = v23 + 1;
        *v23 = v7;
      }

      return result;
    }

    v18 = v7;
    v19 = a2;

    return llvm::raw_ostream::operator<<(v19, v18);
  }

  if ((i - 5) < 2)
  {
    result = *(a2 + 4);
    if (a4 > *(a2 + 3) - result)
    {
      v14 = a2;
      v12 = v7;
      v13 = a4;

      return llvm::raw_ostream::write(v14, v12, v13);
    }

    if (a4)
    {
      v24 = v7;
      v25 = a4;
      result = memcpy(result, v24, a4);
      *(a2 + 4) += v25;
    }
  }

  else if (i == 3)
  {
    if (v7)
    {
      v22 = strlen(v7);
      result = *(a2 + 4);
      if (v22 > *(a2 + 3) - result)
      {
        v14 = a2;
        v12 = v7;
        v13 = v22;

        return llvm::raw_ostream::write(v14, v12, v13);
      }

      if (v22)
      {
        result = memcpy(result, v7, v22);
        *(a2 + 4) += v22;
      }
    }
  }

  else if (i == 4)
  {
    v11 = *(v7 + 23);
    if (v11 >= 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    if (v11 >= 0)
    {
      v13 = *(v7 + 23);
    }

    else
    {
      v13 = *(v7 + 8);
    }

    v14 = a2;

    return llvm::raw_ostream::write(v14, v12, v13);
  }

  return result;
}

uint64_t sub_10003E618(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = (a2 + 24);
    v3 = *a2;
    if (v3 == v4)
    {
      v6 = *(a2 + 8);
      v7 = *(result + 8);
      if (v7 >= v6)
      {
        if (v6)
        {
          v9 = result;
          memmove(*result, v3, *(a2 + 8));
          result = v9;
        }

        *(result + 8) = v6;
      }

      else
      {
        if (*(result + 16) >= v6)
        {
          v8 = result;
          if (v7)
          {
            memmove(*result, v3, v7);
          }
        }

        else
        {
          *(result + 8) = 0;
          v8 = result;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(result, (result + 24), v6, 1);
          v7 = 0;
        }

        v10 = *(a2 + 8);
        if (v10 != v7)
        {
          memcpy((*v8 + v7), (*a2 + v7), v10 - v7);
        }

        result = v8;
        v8[1] = v6;
      }
    }

    else
    {
      if (*result != result + 24)
      {
        v5 = result;
        free(*result);
        result = v5;
        v3 = *a2;
      }

      *result = v3;
      *(result + 8) = *(a2 + 8);
      *(a2 + 16) = 0;
      *a2 = v4;
    }

    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t *sub_10003E738(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t *sub_10003E8E4(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer((a3 + 9), 8uLL);
    v11 = buffer + 1;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer((a3 + 9), 8uLL);
    v11 = buffer + 1;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

uint64_t sub_10003EA00(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = 8 * v2;
    v5 = v3;
    do
    {
      v6 = ((v3 - *(a1 + 16)) >> 10) & 0x1FFFFFF;
      if (v6 >= 0x1E)
      {
        LOBYTE(v6) = 30;
      }

      v7 = *v5++;
      llvm::deallocate_buffer(v7, (4096 << v6), 8uLL);
      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  if (v9)
  {
    v10 = &v8[2 * v9];
    do
    {
      v11 = *v8;
      v12 = v8[1];
      v8 += 2;
      llvm::deallocate_buffer(v11, v12, 8uLL);
    }

    while (v8 != v10);
    v8 = *(a1 + 64);
  }

  if (v8 != (a1 + 80))
  {
    free(v8);
  }

  v13 = *(a1 + 16);
  if (v13 != (a1 + 32))
  {
    free(v13);
  }

  return a1;
}

void llvm::raw_ostream::~raw_ostream(llvm::raw_ostream *this)
{
  *this = off_1002B44C8;
  if (*(this + 11) == 1)
  {
    if (*(this + 2))
    {
      operator delete[]();
    }
  }
}

uint64_t llvm::raw_ostream::SetBuffered(llvm::raw_ostream *this)
{
  result = (*(*this + 88))(this);
  v4 = (this + 16);
  v3 = *(this + 2);
  v5 = *(this + 4);
  if (result)
  {
    if (v5 != v3)
    {
      *(this + 4) = v3;
      (*(*this + 72))(this);
    }

    operator new[]();
  }

  if (v5 != v3)
  {
    *(this + 4) = v3;
    result = (*(*this + 72))(this);
  }

  if (*(this + 11) == 1)
  {
    result = *v4;
    if (*v4)
    {
      operator delete[]();
    }
  }

  *(this + 11) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *v4 = 0;
  return result;
}

uint64_t llvm::raw_ostream::SetBufferAndMode(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 44) == 1 && *(result + 16))
  {
    operator delete[]();
  }

  *(result + 16) = a2;
  *(result + 24) = a2 + a3;
  *(result + 32) = a2;
  *(result + 44) = a4;
  return result;
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, unint64_t a2)
{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

void *llvm::raw_ostream::operator<<(void *a1, uint64_t a2)
{
  v4 = a1[3] - a1[4];
  if (v4 <= 3)
  {
    v7 = 127;
  }

  else
  {
    v5 = (*(*a2 + 8))(a2);
    if (v5 < v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 + 1;
    }

    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = (2 * v4);
    }

    if (v4 >= v7)
    {
      a1[4] += v7;
      return a1;
    }
  }

  v14 = v16;
  v15 = xmmword_10028F100;
  do
  {
    v12 = v15;
    if (v15 != v7)
    {
      if (v15 <= v7)
      {
        if (*(&v15 + 1) < v7)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v14, v16, v7, 1);
          v12 = v15;
        }

        if (v7 != v12)
        {
          bzero(&v14[v12], v7 - v12);
        }
      }

      *&v15 = v7;
    }

    v8 = (*(*a2 + 8))(a2, v14, v7);
    if (v8 < v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = (2 * v7);
    }

    v11 = v7 >= v10;
    v7 = v10;
  }

  while (!v11);
  llvm::raw_ostream::write(a1, v14, v10);
  if (v14 != v16)
  {
    free(v14);
  }

  return a1;
}

{
  if (*(a2 + 20) == 1)
  {
    if (*(a2 + 22))
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (*(a2 + 22))
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    if (*(a2 + 21))
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    llvm::write_hex(a1, *a2, v5, *(a2 + 16), 1);
  }

  else
  {
    v18 = &v19;
    v19 = v21;
    v20 = xmmword_10028EDC0;
    v12 = 2;
    v16 = 0;
    v17 = 0;
    v11 = off_1002B4638;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    llvm::write_integer(&v11, *(a2 + 8), 0, 0);
    v7 = *(a2 + 16);
    if (v20 < v7)
    {
      v8 = v7 - v20;
      if ((v7 - v20) >= 0x50)
      {
        do
        {
          if (v8 >= 0x4F)
          {
            v9 = 79;
          }

          else
          {
            v9 = v8;
          }

          llvm::raw_ostream::write(a1, "                                                                                ^\n]", v9);
          v8 -= v9;
        }

        while (v8);
      }

      else
      {
        llvm::raw_ostream::write(a1, "                                                                                ^\n]", (v7 - v20));
      }
    }

    llvm::raw_ostream::write(a1, v19, v20);
    v11 = off_1002B44C8;
    if (v17 == 1 && v13)
    {
      operator delete[]();
    }

    if (v19 != v21)
    {
      free(v19);
    }
  }

  return a1;
}

uint64_t llvm::raw_ostream::flush_nonempty(llvm::raw_ostream *this)
{
  v1 = *(this + 4);
  *(this + 4) = *(this + 2);
  return (*(*this + 72))();
}

llvm::raw_ostream *llvm::raw_ostream::write(llvm::raw_ostream *this, char a2)
{
  v2 = *(this + 4);
  if (v2 < *(this + 3))
  {
LABEL_2:
    *(this + 4) = v2 + 1;
    *v2 = a2;
    return this;
  }

  v3 = a2;
  v4 = *(this + 2);
  if (v4)
  {
LABEL_4:
    *(this + 4) = v4;
    v5 = this;
    (*(*this + 72))();
    this = v5;
    v2 = *(v5 + 4);
LABEL_5:
    a2 = v3;
    goto LABEL_2;
  }

  while (1)
  {
    v6 = this;
    if (!*(this + 11))
    {
      break;
    }

    llvm::raw_ostream::SetBuffered(this);
    v2 = *(v6 + 4);
    if (v2 < *(v6 + 3))
    {
      this = v6;
      goto LABEL_5;
    }

    this = v6;
    v4 = *(v6 + 2);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v7 = v3;
  (*(*this + 72))(this, &v7, 1);
  return v6;
}

void *llvm::raw_ostream::write(void *this, const char *a2, size_t a3)
{
  v3 = this[4];
  v4 = this[3] - v3;
  if (v4 < a3)
  {
    while (1)
    {
      v6 = this[2];
      if (!v6)
      {
        break;
      }

LABEL_16:
      v11 = a3;
      if (v3 == v6)
      {
        v4 *= a3 / v4;
        v7 = a3 - v4;
        v8 = this;
        v9 = a2;
        (*(*this + 72))();
        v3 = v8[4];
        this = v8;
        v10 = v8[3] - v3;
        a3 = v7;
        if (v7 <= v10)
        {
          llvm::raw_ostream::copy_to_buffer(v8, &v9[v4], v7);
          return v8;
        }
      }

      else
      {
        v12 = this;
        v9 = a2;
        llvm::raw_ostream::copy_to_buffer(this, a2, v4);
        v13 = v12[2];
        v14 = v12[4] - v13;
        v12[4] = v13;
        (*(*v12 + 72))(v12);
        this = v12;
        a3 = v11 - v4;
        v3 = v12[4];
        v10 = v12[3] - v3;
      }

      a2 = &v9[v4];
      v4 = v10;
      if (v10 >= a3)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v17 = a2;
      v18 = a3;
      v5 = this;
      if (!*(this + 11))
      {
        (*(*this + 72))(this, a2, a3);
        return v5;
      }

      llvm::raw_ostream::SetBuffered(this);
      v3 = v5[4];
      v4 = v5[3] - v3;
      if (v4 >= v18)
      {
        break;
      }

      this = v5;
      v6 = v5[2];
      a2 = v17;
      a3 = v18;
      if (v6)
      {
        goto LABEL_16;
      }
    }

    this = v5;
    a2 = v17;
    a3 = v18;
    if (v18 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_2:
    if (a3 > 1)
    {
LABEL_3:
      switch(a3)
      {
        case 2uLL:
LABEL_8:
          v3[1] = a2[1];
          v3 = this[4];
LABEL_23:
          *v3 = *a2;
          goto LABEL_24;
        case 3uLL:
LABEL_7:
          v3[2] = a2[2];
          v3 = this[4];
          goto LABEL_8;
        case 4uLL:
          v3[3] = a2[3];
          v3 = this[4];
          goto LABEL_7;
      }

LABEL_25:
      v15 = this;
      v16 = a3;
      memcpy(v3, a2, a3);
      a3 = v16;
      this = v15;
      goto LABEL_24;
    }
  }

  if (a3)
  {
    if (a3 == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_24:
  this[4] += a3;
  return this;
}

uint64_t llvm::raw_ostream::copy_to_buffer(uint64_t this, const char *a2, int64_t a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
LABEL_11:
      *(this + 32) += a3;
      return this;
    }

    if (a3 == 1)
    {
LABEL_10:
      **(this + 32) = *a2;
      goto LABEL_11;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
LABEL_7:
        *(*(this + 32) + 1) = a2[1];
        goto LABEL_10;
      case 3:
LABEL_6:
        *(*(this + 32) + 2) = a2[2];
        goto LABEL_7;
      case 4:
        *(*(this + 32) + 3) = a2[3];
        goto LABEL_6;
    }
  }

  v3 = this;
  memcpy(*(this + 32), a2, a3);
  this = v3;
  *(v3 + 32) += a3;
  return this;
}

void sub_10003F4BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  llvm::formatv_object_base::parseFormatString(*a1, *(a1 + 8), *(a1 + 24), *(a1 + 32), a5, a6, a7, &v22);
  v9 = v22;
  if (v23)
  {
    v10 = 56 * v23;
    v11 = (v22 + 24);
    do
    {
      if (*(v11 - 6) == 1 || (v12 = *v11, *(a1 + 24) <= v12))
      {
        v16 = *(v11 - 2);
        v17 = *(v11 - 1);
        v18 = a2[4];
        if (v17 > a2[3] - v18)
        {
          llvm::raw_ostream::write(a2, v16, v17);
        }

        else if (v17)
        {
          v19 = *(v11 - 1);
          memcpy(v18, v16, v17);
          a2[4] += v19;
        }
      }

      else
      {
        v13 = *(v11 + 12);
        v20[0] = *(*(a1 + 16) + 8 * v12);
        v20[1] = vrev64_s32(*(v11 + 1));
        v21 = v13;
        v14 = *(v11 + 2);
        v15 = *(v11 + 3);
        sub_100040828(v20, a2);
      }

      v11 += 14;
      v10 -= 56;
    }

    while (v10);
    v9 = v22;
  }

  if (v9 != &v24)
  {
    free(v9);
  }
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, uint64_t a2)
{
  v4 = *(a2 + 16) - *(a2 + 8);
  if (v4 < 1)
  {
    LODWORD(v4) = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v5 = *(a2 + 20);
  if (v5 == 3)
  {
    v6 = v4 - (v4 >> 1);
    v4 = v4 >> 1;
    if (v4 < 0x50)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v5 != 2)
    {
      if (v5 == 1)
      {
        v6 = *(a2 + 16) - *(a2 + 8);
      }

      else
      {
        v6 = 0;
      }

      LODWORD(v4) = 0;
      goto LABEL_10;
    }

    v6 = 0;
    if (v4 < 0x50)
    {
LABEL_10:
      llvm::raw_ostream::write(this, "                                                                                ^\n]", v4);
      goto LABEL_11;
    }
  }

  do
  {
    if (v4 >= 0x4F)
    {
      v13 = 79;
    }

    else
    {
      v13 = v4;
    }

    llvm::raw_ostream::write(this, "                                                                                ^\n]", v13);
    LODWORD(v4) = v4 - v13;
  }

  while (v4);
LABEL_11:
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(this + 4);
  if (v8 <= *(this + 3) - v9)
  {
    if (v8)
    {
      v10 = *(a2 + 8);
      memcpy(v9, v7, v8);
      *(this + 4) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(this, v7, v8);
  }

  if (v6 >= 0x50)
  {
    do
    {
      if (v6 >= 0x4F)
      {
        v11 = 79;
      }

      else
      {
        v11 = v6;
      }

      llvm::raw_ostream::write(this, "                                                                                ^\n]", v11);
      v6 -= v11;
    }

    while (v6);
  }

  else
  {
    llvm::raw_ostream::write(this, "                                                                                ^\n]", v6);
  }

  return this;
}

void *llvm::raw_ostream::indent(void *this, unsigned int a2)
{
  v2 = a2;
  if (a2 < 0x50)
  {
    return llvm::raw_ostream::write(this, "                                                                                ^\n]", a2);
  }

  do
  {
    if (v2 >= 0x4F)
    {
      v3 = 79;
    }

    else
    {
      v3 = v2;
    }

    this = llvm::raw_ostream::write(this, "                                                                                ^\n]", v3);
    v2 -= v3;
  }

  while (v2);
  return this;
}

uint64_t sub_10003F9D0(uint64_t result)
{
  *result = off_1002B44C8;
  if (*(result + 44) == 1)
  {
    if (*(result + 16))
    {
      operator delete[]();
    }
  }

  return result;
}

uint64_t llvm::raw_ostream::changeColor(uint64_t a1, int a2, int a3, llvm::sys::Process *a4)
{
  if (*(a1 + 40) == 1)
  {
    v8 = llvm::sys::Process::ColorNeedsFlush(a1);
    if (!v8 || (v8 = (*(*a1 + 48))(a1), v8))
    {
      if (llvm::sys::Process::ColorNeedsFlush(v8))
      {
        v9 = *(a1 + 16);
        if (*(a1 + 32) != v9)
        {
          *(a1 + 32) = v9;
          (*(*a1 + 72))(a1);
        }
      }

      if (a2 == 16)
      {
        v10 = llvm::sys::Process::OutputBold(a4);
        if (!v10)
        {
          return a1;
        }

        goto LABEL_11;
      }

      v10 = llvm::sys::Process::OutputColor(a2, a3, a4);
      if (v10)
      {
LABEL_11:
        v11 = v10;
        v12 = strlen(v10);
        llvm::raw_ostream::write(a1, v11, v12);
      }
    }
  }

  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::resetColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    v2 = llvm::sys::Process::ColorNeedsFlush(this);
    if (!v2 || (v2 = (*(*this + 48))(this), v2))
    {
      v3 = llvm::sys::Process::ColorNeedsFlush(v2);
      if (v3)
      {
        v4 = *(this + 2);
        if (*(this + 4) != v4)
        {
          *(this + 4) = v4;
          v3 = (*(*this + 72))(this);
        }
      }

      v5 = llvm::sys::Process::ResetColor(v3);
      if (v5)
      {
        v6 = v5;
        v7 = strlen(v5);
        llvm::raw_ostream::write(this, v6, v7);
      }
    }
  }

  return this;
}

llvm::raw_ostream *llvm::raw_ostream::reverseColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    v2 = llvm::sys::Process::ColorNeedsFlush(this);
    if (!v2 || (v2 = (*(*this + 48))(this), v2))
    {
      v3 = llvm::sys::Process::ColorNeedsFlush(v2);
      if (v3)
      {
        v4 = *(this + 2);
        if (*(this + 4) != v4)
        {
          *(this + 4) = v4;
          v3 = (*(*this + 72))(this);
        }
      }

      v5 = llvm::sys::Process::OutputReverse(v3);
      if (v5)
      {
        v6 = v5;
        v7 = strlen(v5);
        llvm::raw_ostream::write(this, v6, v7);
      }
    }
  }

  return this;
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a3 == 1 && *a2 == 45)
  {
    v7 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v7;
    llvm::sys::ChangeStdoutMode();
    v8 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 261;
    v12[0] = a2;
    v12[1] = a3;
    v9 = llvm::sys::fs::openFile(v12, &v14, 0, 2, a5, 438);
    *a4 = v9;
    *(a4 + 8) = v10;
    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = v14;
    }
  }

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, v8, 1, 0, 0);
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, unsigned int a2, char a3, int a4, int a5)
{
  *(a1 + 8) = a5;
  *(a1 + 40) = 0;
  *(a1 + 44) = a4 ^ 1;
  *(a1 + 48) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1002B4540;
  *(a1 + 52) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = std::system_category();
  *(a1 + 53) = 0;
  *(a1 + 80) = v7;
  *(a1 + 88) = 0;
  if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 52) = 0;
    return a1;
  }

  else
  {
    *(a1 + 40) = 1;
    if (a2 <= 2)
    {
      *(a1 + 52) = 0;
    }

    v8 = lseek(a2, 0, 1);
    memset(v12, 0, sizeof(v12));
    v13 = 0xFFFFLL;
    v14 = 0;
    v15 = 0;
    v9 = llvm::sys::fs::status(*(a1 + 48), v12);
    *(a1 + 54) = *&v12[40] == 2;
    *(a1 + 53) = v9 == 0 && v8 != -1;
    if (v9 == 0 && v8 != -1)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 88) = v10;
    return a1;
  }
}

void llvm::raw_fd_ostream::~raw_fd_ostream(llvm::raw_fd_ostream *this)
{
  *this = off_1002B4540;
  if ((*(this + 12) & 0x80000000) == 0)
  {
    v2 = *(this + 4);
    v3 = *(this + 2);
    if (v2 != v3)
    {
      *(this + 4) = v3;
      llvm::raw_fd_ostream::write_impl(this, v3, v2 - v3);
    }

    if (*(this + 52) == 1)
    {
      v4 = llvm::sys::Process::SafelyCloseFileDescriptor(*(this + 12));
      if (v4)
      {
        *(this + 9) = v4;
        *(this + 10) = v5;
      }
    }
  }

  if (*(this + 18))
  {
    v10 = "IO failure on output stream: ";
    v11 = 259;
    v6 = *(this + 72);
    std::error_code::message(&v7, &v6);
    v9 = 260;
    v8 = &v7;
    sub_100038624(&v10, &v8, v12);
    llvm::report_fatal_error(v12, 0);
  }

  *this = off_1002B44C8;
  if (*(this + 11) == 1)
  {
    if (*(this + 2))
    {
      operator delete[]();
    }
  }
}

{
  llvm::raw_fd_ostream::~raw_fd_ostream(this);

  operator delete();
}

uint64_t llvm::raw_fd_ostream::write_impl(llvm::raw_fd_ostream *this, const char *__buf, unint64_t a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    v7 = v6[2];
    if (v6[4] != v7)
    {
      v6[4] = v7;
      (*(*v6 + 72))(v6);
    }
  }

  *(this + 11) += a3;
  while (1)
  {
    v8 = a3 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : a3;
    result = write(*(this + 12), __buf, v8);
    if (result < 0)
    {
      break;
    }

    __buf += result;
    a3 -= result;
LABEL_6:
    if (!a3)
    {
      return result;
    }
  }

  result = __error();
  if (*result == 4)
  {
    goto LABEL_6;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_6;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_6;
  }

  v10 = *__error();
  result = std::generic_category();
  *(this + 9) = v10;
  *(this + 10) = result;
  return result;
}

uint64_t llvm::raw_fd_ostream::pwrite_impl(llvm::raw_fd_ostream *this, const char *a2, size_t a3, off_t a4)
{
  v8 = (*(*this + 80))(this);
  v9 = *(this + 4);
  v10 = *(this + 2);
  v11 = v8 + v9;
  if (v9 != v10)
  {
    *(this + 4) = v10;
    (*(*this + 72))(this, v10, v9 - v10);
  }

  v12 = v11 - v10;
  v13 = lseek(*(this + 12), a4, 0);
  *(this + 11) = v13;
  if (v13 == -1)
  {
    v14 = *__error();
    v15 = std::generic_category();
    *(this + 9) = v14;
    *(this + 10) = v15;
  }

  llvm::raw_ostream::write(this, a2, a3);
  v16 = *(this + 2);
  if (*(this + 4) != v16)
  {
    *(this + 4) = v16;
    (*(*this + 72))(this);
  }

  result = lseek(*(this + 12), v12, 0);
  *(this + 11) = result;
  if (result == -1)
  {
    v18 = *__error();
    result = std::generic_category();
    *(this + 9) = v18;
    *(this + 10) = result;
  }

  return result;
}

uint64_t llvm::raw_fd_ostream::preferred_buffer_size(llvm::raw_fd_ostream *this)
{
  if (fstat(*(this + 12), &v3))
  {
    return 0;
  }

  if (v3.st_mode & 0xF000) == 0x2000 && ((*(*this + 48))(this))
  {
    return 0;
  }

  return v3.st_blksize;
}

uint64_t llvm::raw_fd_ostream::has_colors(llvm::raw_fd_ostream *this)
{
  if (*(this + 56) == 1)
  {
    return *(this + 55) & 1;
  }

  HasColors = llvm::sys::Process::FileDescriptorHasColors(*(this + 12));
  *(this + 55) = HasColors | 0x100;
  return HasColors & 1;
}

void *llvm::outs(llvm *this)
{
  std::system_category();
  if ((atomic_load_explicit(&qword_1002C4408, memory_order_acquire) & 1) == 0)
  {
    sub_100278C34();
  }

  return &unk_1002C4450;
}

void *llvm::errs(llvm *this)
{
  if ((atomic_load_explicit(qword_1002C4410, memory_order_acquire) & 1) == 0)
  {
    sub_100278CA8();
  }

  return &unk_1002C44B0;
}

void llvm::raw_null_ostream::~raw_null_ostream(llvm::raw_null_ostream *this)
{
  *this = off_1002B44C8;
  if (*(this + 11) == 1)
  {
    if (*(this + 2))
    {
      operator delete[]();
    }
  }
}

{
  *this = off_1002B44C8;
  if (*(this + 11) == 1 && *(this + 2))
  {
    operator delete[]();
  }

  operator delete();
}

void llvm::raw_svector_ostream::write_impl(llvm::raw_svector_ostream *this, const char *a2, size_t __n)
{
  v4 = *(this + 6);
  v5 = v4[1];
  v6 = v5 + __n;
  if (v4[2] < v6)
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(*(this + 6), v4 + 3, v6, 1);
    a2 = v7;
    v5 = v4[1];
  }

  if (__n)
  {
    memcpy((*v4 + v5), a2, __n);
    v5 = v4[1];
  }

  v4[1] = v5 + __n;
}

void sub_1000405D4(uint64_t a1)
{
  *a1 = off_1002B44C8;
  if (*(a1 + 44) == 1 && *(a1 + 16))
  {
    operator delete[]();
  }

  operator delete();
}

void sub_100040660(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = (*(*a1 + 80))(a1) + a2 + a1[4] - a1[2];

  std::string::reserve(v2, v3);
}

uint64_t sub_1000406DC(uint64_t a1)
{
  v1 = *(a1 + 48);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void sub_1000406F4(uint64_t a1)
{
  *a1 = off_1002B44C8;
  if (*(a1 + 44) == 1 && *(a1 + 16))
  {
    operator delete[]();
  }

  operator delete();
}

void sub_100040780(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = (*(*a1 + 80))(a1) + a2 + a1[4] - a1[2];
  if (*(v2 + 16) < v3)
  {

    llvm::SmallVectorBase<unsigned long long>::grow_pod(v2, (v2 + 24), v3, 1);
  }
}

void sub_100040828(void *a1, uint64_t a2)
{
  if (*(a1 + 3))
  {
    v38 = v40;
    *v39 = xmmword_10028F190;
    v30 = 2;
    v34 = 0;
    v36 = &v38;
    v35 = 0;
    v29 = off_1002B4638;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    (*(**a1 + 24))(*a1, &v29);
    v4 = *(a1 + 3);
    v5 = v39[0];
    if (v39[0] < v4)
    {
      v6 = v4 - LODWORD(v39[0]);
      v7 = *(a1 + 2);
      if (v7 == 1)
      {
        v14 = v6 >> 1;
        v15 = v39[0];
        if (v6 >= 2)
        {
          v16 = 0;
          do
          {
            while (1)
            {
              v17 = *(a1 + 16);
              v18 = *(a2 + 32);
              if (v18 >= *(a2 + 24))
              {
                break;
              }

LABEL_28:
              *(a2 + 32) = v18 + 1;
              *v18 = v17;
              if (++v16 == v14)
              {
                goto LABEL_31;
              }
            }

            while (1)
            {
              v19 = *(a2 + 16);
              if (v19)
              {
                *(a2 + 32) = v19;
                (*(*a2 + 72))(a2);
                v18 = *(a2 + 32);
                goto LABEL_28;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v18 = *(a2 + 32);
              if (v18 < *(a2 + 24))
              {
                goto LABEL_28;
              }
            }

            v37 = v17;
            (*(*a2 + 72))(a2, &v37, 1);
            ++v16;
          }

          while (v16 != v14);
LABEL_31:
          v15 = v39[0];
        }

        llvm::raw_ostream::write(a2, v38, v15);
        if (v4 != v5)
        {
          v20 = 0;
          v21 = v6 - v14;
          do
          {
            while (1)
            {
              v22 = *(a1 + 16);
              v23 = *(a2 + 32);
              if (v23 >= *(a2 + 24))
              {
                break;
              }

LABEL_40:
              *(a2 + 32) = v23 + 1;
              *v23 = v22;
              if (++v20 == v21)
              {
                goto LABEL_57;
              }
            }

            while (1)
            {
              v24 = *(a2 + 16);
              if (v24)
              {
                *(a2 + 32) = v24;
                (*(*a2 + 72))(a2);
                v23 = *(a2 + 32);
                goto LABEL_40;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v23 = *(a2 + 32);
              if (v23 < *(a2 + 24))
              {
                goto LABEL_40;
              }
            }

            v37 = v22;
            (*(*a2 + 72))(a2, &v37, 1);
            ++v20;
          }

          while (v20 != v21);
        }

        goto LABEL_57;
      }

      if (!v7)
      {
        llvm::raw_ostream::write(a2, v38, v39[0]);
        if (v4 != v5)
        {
          v8 = 0;
          do
          {
            while (1)
            {
              v9 = *(a1 + 16);
              v10 = *(a2 + 32);
              if (v10 >= *(a2 + 24))
              {
                break;
              }

LABEL_13:
              *(a2 + 32) = v10 + 1;
              *v10 = v9;
              if (++v8 == v6)
              {
                goto LABEL_57;
              }
            }

            while (1)
            {
              v11 = *(a2 + 16);
              if (v11)
              {
                *(a2 + 32) = v11;
                (*(*a2 + 72))(a2);
                v10 = *(a2 + 32);
                goto LABEL_13;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v10 = *(a2 + 32);
              if (v10 < *(a2 + 24))
              {
                goto LABEL_13;
              }
            }

            v37 = v9;
            (*(*a2 + 72))(a2, &v37, 1);
            ++v8;
          }

          while (v8 != v6);
        }

        goto LABEL_57;
      }

      if (v4 != LODWORD(v39[0]))
      {
        v25 = 0;
        do
        {
          while (1)
          {
            v26 = *(a1 + 16);
            v27 = *(a2 + 32);
            if (v27 >= *(a2 + 24))
            {
              break;
            }

LABEL_52:
            *(a2 + 32) = v27 + 1;
            *v27 = v26;
            if (++v25 == v6)
            {
              goto LABEL_55;
            }
          }

          while (1)
          {
            v28 = *(a2 + 16);
            if (v28)
            {
              *(a2 + 32) = v28;
              (*(*a2 + 72))(a2);
              v27 = *(a2 + 32);
              goto LABEL_52;
            }

            if (!*(a2 + 44))
            {
              break;
            }

            llvm::raw_ostream::SetBuffered(a2);
            v27 = *(a2 + 32);
            if (v27 < *(a2 + 24))
            {
              goto LABEL_52;
            }
          }

          v37 = v26;
          (*(*a2 + 72))(a2, &v37, 1);
          ++v25;
        }

        while (v25 != v6);
LABEL_55:
        v5 = v39[0];
      }
    }

    llvm::raw_ostream::write(a2, v38, v5);
LABEL_57:
    v29 = off_1002B44C8;
    if (v35 == 1 && v31)
    {
      operator delete[]();
    }

    if (v38 != v40)
    {
      free(v38);
    }

    return;
  }

  v12 = *a1;
  v13 = *(**a1 + 24);

  v13();
}

uint64_t sub_100040DC0(uint64_t a1, _BYTE *a2)
{

  return llvm::raw_fd_ostream::raw_fd_ostream(v2 + 72, a2, 1, v3, 0);
}

uint64_t llvm_regcomp(uint64_t a1, char *__s, int a3)
{
  if ((~a3 & 0x11) == 0)
  {
    return 16;
  }

  v86 = v3;
  v87 = v4;
  if ((a3 & 0x20) != 0)
  {
    v10 = *(a1 + 16);
    v9 = v10 - __s;
    if (v10 < __s)
    {
      return 16;
    }

    v6 = a3;
    v8 = __s;
    v7 = a1;
  }

  else
  {
    v6 = a3;
    v7 = a1;
    v8 = __s;
    v9 = strlen(__s);
  }

  v11 = malloc_type_malloc(0x18FuLL, 0x10300409EB0E935uLL);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  v74 = 0;
  ptr[0] = 0;
  v73 = 0u;
  v13 = 3 * (v9 >> 1);
  v14 = v13 + 1;
  *&v73 = v13 + 1;
  v15 = malloc_type_calloc(v13 + 1, 8uLL, 0x100004000313F17uLL);
  ptr[1] = v15;
  if (!v15)
  {
    free(v12);
    return 12;
  }

  v19 = v6;
  v75 = v12;
  v20 = v8;
  v21 = &v8[v9];
  v70 = v20;
  v71 = v21;
  LODWORD(ptr[0]) = 0;
  LODWORD(v74) = 0;
  v22 = 0.0;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v12[4] = 256;
  *(v12 + 5) = 0;
  v23 = v12 + 5;
  *(v12 + 7) = 0;
  v12[9] = 0;
  *(v12 + 34) = 0u;
  *(v12 + 66) = 0u;
  v12[10] = v6 & 0xFFFFFF7F;
  *(v12 + 11) = v12 + 66;
  *(v12 + 12) = 0;
  v12[26] = 0;
  *(v12 + 14) = 0;
  *(v12 + 9) = 0;
  *(v12 + 10) = &_mh_execute_header;
  *(v12 + 38) = 0u;
  *(v12 + 42) = 0u;
  *(v12 + 46) = 0u;
  *(v12 + 50) = 0u;
  *(v12 + 54) = 0u;
  *(v12 + 58) = 0u;
  *(v12 + 62) = 0u;
  *(v12 + 70) = 0u;
  *(v12 + 74) = 0u;
  *(v12 + 78) = 0u;
  *(v12 + 82) = 0u;
  *(v12 + 86) = 0u;
  *(v12 + 90) = 0u;
  *(v12 + 94) = 0u;
  v12[30] = 0;
  if (v13 < 0x7FFFFFFFFFFFFFFFLL || (v24 = (v13 + 2) / 2, v25 = ((v13 + 2 + ((v13 + 2) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v24, v14 >= v25))
  {
    v26 = 1;
  }

  else if (v25 >> 61)
  {
    v26 = 0;
    LODWORD(ptr[0]) = 12;
    v20 = &byte_1002C4510;
    v70 = &byte_1002C4510;
    v71 = &byte_1002C4510;
    v21 = &byte_1002C4510;
  }

  else
  {
    v54 = v6;
    v55 = v20;
    v56 = v15;
    v15 = malloc_type_realloc(v15, 24 * v24, 0x100004000313F17uLL);
    if (v15)
    {
      ptr[1] = v15;
      *&v73 = v25;
      v26 = 1;
      v20 = v55;
      v19 = v54;
    }

    else
    {
      v26 = 0;
      LODWORD(ptr[0]) = 12;
      v20 = &byte_1002C4510;
      v70 = &byte_1002C4510;
      v71 = &byte_1002C4510;
      v21 = &byte_1002C4510;
      v19 = v54;
      v15 = v56;
    }
  }

  *(&v73 + 1) = 1;
  *v15 = 0x8000000;
  *(v12 + 7) = *(&v73 + 1) - 1;
  if (v19)
  {
    sub_100041550(&v70, 128, v22, v16, v17, v18);
  }

  else if ((v19 & 0x10) != 0)
  {
    if (v21 - v20 <= 0)
    {
      if (v26)
      {
        LODWORD(ptr[0]) = 14;
      }

      v20 = &byte_1002C4510;
      v70 = &byte_1002C4510;
      v71 = &byte_1002C4510;
      v21 = &byte_1002C4510;
    }

    if (v21 - v20 >= 1)
    {
      do
      {
        v70 = v20 + 1;
        *&v22 = sub_100044CC4(&v70, *v20, v22, v16, v17, v18).n128_u64[0];
        v20 = v70;
      }

      while (v71 - v70 > 0);
    }
  }

  else
  {
    sub_1000428D0(&v70, 128, 128, v22, v16, v17, v18);
  }

  v27 = *(&v73 + 1);
  if (!LODWORD(ptr[0]))
  {
    if (*(&v73 + 1) < v73 || (v28 = (v73 + 1) / 2, v29 = ((v73 + 1 + ((v73 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v28, v73 >= v29))
    {
      v30 = 1;
    }

    else
    {
      if (v29 >> 61)
      {
        v30 = 0;
        LODWORD(ptr[0]) = 12;
        v70 = &byte_1002C4510;
        v71 = &byte_1002C4510;
        goto LABEL_35;
      }

      v57 = malloc_type_realloc(ptr[1], 24 * v28, 0x100004000313F17uLL);
      if (v57)
      {
        ptr[1] = v57;
        *&v73 = v29;
        v30 = LODWORD(ptr[0]) == 0;
      }

      else
      {
        if (!LODWORD(ptr[0]))
        {
          LODWORD(ptr[0]) = 12;
        }

        v30 = 0;
        v70 = &byte_1002C4510;
        v71 = &byte_1002C4510;
      }
    }

    v27 = *(&v73 + 1);
LABEL_35:
    *(&v73 + 1) = v27 + 1;
    *(ptr[1] + v27) = 0x8000000;
    v27 = *(&v73 + 1);
    *(v12 + 8) = *(&v73 + 1) - 1;
    if (v30)
    {
      v31 = *(v12 + 11);
      for (i = -128; i != 128; ++i)
      {
        if (!*(v31 + i) && *v23 >= 1)
        {
          v33 = (*v23 + 7) >> 3;
          v34 = *(v12 + 4);
          while (!*(v34 + i))
          {
            v34 += v12[4];
            if (!--v33)
            {
              goto LABEL_37;
            }
          }

          v35 = v12[21];
          v12[21] = v35 + 1;
          *(v31 + i) = v35;
          if (i <= 126)
          {
            v36 = i;
            do
            {
              ++v36;
              if (!*(v31 + v36))
              {
                if (*v23 < 1)
                {
LABEL_46:
                  *(v31 + v36) = v35;
                }

                else
                {
                  v37 = (*v23 + 7) >> 3;
                  v38 = *(v12 + 4);
                  while (*(v38 + i) == *(v38 + v36))
                  {
                    v38 += v12[4];
                    if (!--v37)
                    {
                      goto LABEL_46;
                    }
                  }
                }
              }
            }

            while (v36 != 127);
          }
        }

LABEL_37:
        ;
      }

      v27 = *(&v73 + 1);
    }

    goto LABEL_55;
  }

  *(v12 + 8) = *(&v73 + 1) - 1;
LABEL_55:
  *(v12 + 6) = v27;
  if (v27 >> 61)
  {
    *(v12 + 1) = ptr[1];
    LODWORD(v39) = ptr[0];
    v40 = v7;
    if (!LODWORD(ptr[0]))
    {
      LODWORD(v39) = 12;
      LODWORD(ptr[0]) = 12;
    }

    v41 = 0;
    v42 = 0;
    v70 = &byte_1002C4510;
    v71 = &byte_1002C4510;
    goto LABEL_86;
  }

  v43 = malloc_type_realloc(ptr[1], 8 * v27, 0x100004000313F17uLL);
  *(v12 + 1) = v43;
  LODWORD(v39) = ptr[0];
  if (!v43)
  {
    v40 = v7;
    if (!LODWORD(ptr[0]))
    {
      LODWORD(v39) = 12;
      LODWORD(ptr[0]) = 12;
    }

    v41 = 0;
    v42 = 0;
    v70 = &byte_1002C4510;
    v71 = &byte_1002C4510;
    *(v12 + 1) = ptr[1];
    goto LABEL_86;
  }

  v44 = v43;
  v40 = v7;
  if (LODWORD(ptr[0]))
  {
    goto LABEL_85;
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = (v44 + 8);
  v49 = (v44 + 8);
  do
  {
    v51 = *v49++;
    LODWORD(v50) = v51;
    v52 = ((v51 & 0xF8000000) - 0x10000000) >> 27;
    if (v52 > 0xD)
    {
      goto LABEL_76;
    }

    if (((1 << v52) & 0x1880) != 0)
    {
      goto LABEL_63;
    }

    if (((1 << v52) & 0x2200) != 0)
    {
      v49 = v48;
      while (1)
      {
        v49 += v50 & 0x7FFFFFF;
        v50 = *v49;
        v53 = *v49 & 0xF8000000;
        if (v53 == 1610612736)
        {
          break;
        }

        if (v53 != -2013265920)
        {
          if (v53 == -1879048192)
          {
            break;
          }

          v12[18] |= 4u;
          goto LABEL_84;
        }
      }

LABEL_76:
      if (v47 > v12[26])
      {
        v12[26] = v47;
        v45 = v46;
      }

      v47 = 0;
      goto LABEL_63;
    }

    if (v52)
    {
      goto LABEL_76;
    }

    if (!v47)
    {
      v46 = v48;
    }

    ++v47;
LABEL_63:
    v48 = v49;
  }

  while ((v50 & 0xF8000000) != 0x8000000);
  v63 = v12[26];
  if (v63)
  {
    v64 = malloc_type_malloc(v63 + 1, 0xAAABC376uLL);
    *(v12 + 12) = v64;
    if (v64)
    {
      v65 = v64;
      v66 = v12[26];
      if (v66 < 1)
      {
        v40 = v7;
      }

      else
      {
        v40 = v7;
        do
        {
          do
          {
            v68 = *v45++;
            v67 = v68;
          }

          while ((v68 & 0xF8000000) != 0x10000000);
          *v65++ = v67;
        }

        while (v66-- > 1);
      }

      *v65 = 0;
    }

    else
    {
      v12[26] = 0;
      v40 = v7;
    }
  }

LABEL_84:
  LODWORD(v39) = ptr[0];
  if (LODWORD(ptr[0]))
  {
LABEL_85:
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v39 = 0;
    v42 = 0;
    v58 = (*(v12 + 1) + 8);
    do
    {
      v59 = *v58++;
      v60 = v59 & 0xF8000000;
      if (v39 <= v42)
      {
        v61 = v42;
      }

      else
      {
        v61 = v39;
      }

      v62 = v39 - 1;
      if (v60 == 1207959552)
      {
        ++v39;
      }

      if (v60 == 1342177280)
      {
        v39 = v62;
        v42 = v61;
      }
    }

    while (v60 != 0x8000000);
    if (v39)
    {
      LODWORD(v39) = 0;
      v12[18] |= 4u;
    }

    v41 = 1;
  }

LABEL_86:
  *(v12 + 16) = v42;
  *v12 = 53829;
  *(v40 + 8) = *(v12 + 14);
  *(v40 + 24) = v12;
  *v40 = 62053;
  if ((v12[18] & 4) != 0)
  {
    if (v41)
    {
      LODWORD(v39) = 15;
      LODWORD(ptr[0]) = 15;
    }

    v70 = &byte_1002C4510;
    v71 = &byte_1002C4510;
  }

  if (!v39)
  {
    return 0;
  }

  llvm_regfree(v40);
  return LODWORD(ptr[0]);
}

void sub_100041550(uint64_t a1, int a2, double a3, double a4, double a5, int32x4_t a6)
{
  v161 = 0;
  v162 = 0;
  v163 = 0;
  v159 = a1 + 64;
  v160 = a1 + 144;
  while (2)
  {
    v10 = *(a1 + 40);
    v11 = *a1;
    v12 = *(a1 + 8);
    v8 = v10;
    if (&v12[-*a1] < 1)
    {
LABEL_314:
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 14;
      }

      *a1 = &byte_1002C4510;
      *(a1 + 8) = &byte_1002C4510;
      v11 = &byte_1002C4510;
      v12 = &byte_1002C4510;
      goto LABEL_317;
    }

    while (1)
    {
      v13 = *v11;
      v8 = *(a1 + 40);
      if (v13 == 124 || v13 == a2)
      {
        break;
      }

      v15 = v11 + 1;
      *a1 = v11 + 1;
      v16 = *v11;
      if (v16 > 62)
      {
        if (v16 > 93)
        {
          if (v16 != 94)
          {
            if (v16 == 123)
            {
              if (v12 - v15 >= 1 && *v15 - 48 <= 9)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 13;
                }

                *a1 = &byte_1002C4510;
                *(a1 + 8) = &byte_1002C4510;
              }
            }

            else if (v16 == 124)
            {
              if (*(a1 + 16))
              {
                goto LABEL_142;
              }

              v18 = 14;
              goto LABEL_141;
            }

            goto LABEL_71;
          }

          if (!*(a1 + 16))
          {
            v25 = *(a1 + 32);
            if (v8 >= v25)
            {
              v26 = (v25 + 1) / 2;
              v27 = ((v25 + 1 + ((v25 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v26;
              if (v25 < v27)
              {
                if (v27 >> 61)
                {
                  goto LABEL_55;
                }

                v48 = malloc_type_realloc(*(a1 + 24), 24 * v26, 0x100004000313F17uLL);
                if (v48)
                {
                  *(a1 + 24) = v48;
                  *(a1 + 32) = v27;
                }

                else
                {
                  if (!*(a1 + 16))
                  {
LABEL_55:
                    *(a1 + 16) = 12;
                  }

                  *a1 = &byte_1002C4510;
                  *(a1 + 8) = &byte_1002C4510;
                }
              }
            }

            v49 = *(a1 + 24);
            v50 = *(a1 + 40);
            *(a1 + 40) = v50 + 1;
            *(v49 + 8 * v50) = 402653184;
          }

          v33 = 0;
          v51 = *(a1 + 56);
          v52 = v51[9];
          a4 = COERCE_DOUBLE(vadd_s32(v52, 0x100000001));
          LODWORD(a3) = v52.i32[0] | 1;
          HIDWORD(a3) = HIDWORD(a4);
          *&v51[9] = a3;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (v16 == 63)
        {
          goto LABEL_30;
        }

        if (v16 == 91)
        {
          sub_1000438C0(a1, a3, a4, a5, a6);
          v33 = 1;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (v16 != 92)
        {
          goto LABEL_71;
        }

        if (v12 - v15 <= 0)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 5;
          }

          *a1 = &byte_1002C4511;
          *(a1 + 8) = &byte_1002C4510;
          v17 = byte_1002C4510;
          if ((byte_1002C4510 - 49) > 8)
          {
            goto LABEL_72;
          }
        }

        else
        {
          *a1 = v15 + 1;
          v17 = *v15;
          if ((v17 - 49) > 8)
          {
            goto LABEL_72;
          }
        }

        v35 = (v17 - 48);
        v36 = *(v160 + 8 * v35);
        v37 = *(a1 + 16);
        if (!v36)
        {
          if (v37)
          {
            goto LABEL_142;
          }

          v18 = 6;
          goto LABEL_141;
        }

        if (v37)
        {
          v38 = *(v159 + 8 * v35) + 1;
          v39 = v36 - v38;
          if (v36 == v38)
          {
            goto LABEL_82;
          }

LABEL_270:
          if (v39 >= 1)
          {
            v127 = *(a1 + 32) + v39;
            if (v127 >> 61 || (v128 = malloc_type_realloc(*(a1 + 24), 8 * v127, 0x100004000313F17uLL)) == 0)
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002C4510;
              *(a1 + 8) = &byte_1002C4510;
            }

            else
            {
              *(a1 + 24) = v128;
              *(a1 + 32) = v127;
            }
          }

          memmove((*(a1 + 24) + 8 * *(a1 + 40)), (*(a1 + 24) + 8 * v38), 8 * v39);
          *(a1 + 40) += v39;
          if (!*(a1 + 16))
          {
            goto LABEL_278;
          }

LABEL_286:
          v33 = 1;
          *(*(a1 + 56) + 120) = 1;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        v41 = *(a1 + 32);
        if (v8 >= v41)
        {
          v42 = (v41 + 1) / 2;
          v43 = ((v41 + 1 + ((v41 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v42;
          if (v41 < v43)
          {
            if (v43 >> 61)
            {
              goto LABEL_95;
            }

            v123 = malloc_type_realloc(*(a1 + 24), 24 * v42, 0x100004000313F17uLL);
            if (v123)
            {
              *(a1 + 24) = v123;
              *(a1 + 32) = v43;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_95:
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002C4510;
              *(a1 + 8) = &byte_1002C4510;
            }
          }
        }

        v124 = *(a1 + 24);
        v125 = *(a1 + 40);
        *(a1 + 40) = v125 + 1;
        *(v124 + 8 * v125) = v35 | 0x38000000;
        v126 = *(v160 + 8 * v35);
        v38 = *(v159 + 8 * v35) + 1;
        v39 = v126 - v38;
        if (v126 != v38)
        {
          goto LABEL_270;
        }

LABEL_82:
        if (*(a1 + 16))
        {
          goto LABEL_286;
        }

LABEL_278:
        v129 = *(a1 + 32);
        if (*(a1 + 40) >= v129)
        {
          v130 = (v129 + 1) / 2;
          v131 = ((v129 + 1 + ((v129 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v130;
          if (v129 < v131)
          {
            if (v131 >> 61)
            {
              goto LABEL_281;
            }

            v132 = malloc_type_realloc(*(a1 + 24), 24 * v130, 0x100004000313F17uLL);
            if (v132)
            {
              *(a1 + 24) = v132;
              *(a1 + 32) = v131;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_281:
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002C4510;
              *(a1 + 8) = &byte_1002C4510;
            }
          }
        }

        v133 = *(a1 + 24);
        v134 = *(a1 + 40);
        *(a1 + 40) = v134 + 1;
        *(v133 + 8 * v134) = v35 | 0x40000000;
        goto LABEL_286;
      }

      if (v16 > 41)
      {
        if ((v16 - 42) < 2)
        {
LABEL_30:
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 13;
          }

          goto LABEL_142;
        }

        if (v16 != 46)
        {
          goto LABEL_71;
        }

        if ((*(*(a1 + 56) + 40) & 8) != 0)
        {
          *a1 = "^\n]";
          *(a1 + 8) = "";
          sub_1000438C0(a1, a3, a4, a5, a6);
          *a1 = v15;
          *(a1 + 8) = v12;
          v33 = 1;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (*(a1 + 16))
        {
          goto LABEL_143;
        }

        v19 = *(a1 + 32);
        if (v8 >= v19)
        {
          v20 = (v19 + 1) / 2;
          v21 = ((v19 + 1 + ((v19 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v20;
          if (v19 < v21)
          {
            if (v21 >> 61)
            {
              goto LABEL_43;
            }

            v54 = malloc_type_realloc(*(a1 + 24), 24 * v20, 0x100004000313F17uLL);
            if (v54)
            {
              *(a1 + 24) = v54;
              *(a1 + 32) = v21;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_43:
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002C4510;
              *(a1 + 8) = &byte_1002C4510;
            }
          }
        }

        v55 = *(a1 + 24);
        v56 = *(a1 + 40);
        *(a1 + 40) = v56 + 1;
        *(v55 + 8 * v56) = 671088640;
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v16 == 36)
      {
        if (!*(a1 + 16))
        {
          v22 = *(a1 + 32);
          if (v8 >= v22)
          {
            v23 = (v22 + 1) / 2;
            v24 = ((v22 + 1 + ((v22 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v23;
            if (v22 < v24)
            {
              if (v24 >> 61)
              {
                goto LABEL_49;
              }

              v44 = malloc_type_realloc(*(a1 + 24), 24 * v23, 0x100004000313F17uLL);
              if (v44)
              {
                *(a1 + 24) = v44;
                *(a1 + 32) = v24;
              }

              else
              {
                if (!*(a1 + 16))
                {
LABEL_49:
                  *(a1 + 16) = 12;
                }

                *a1 = &byte_1002C4510;
                *(a1 + 8) = &byte_1002C4510;
              }
            }
          }

          v45 = *(a1 + 24);
          v46 = *(a1 + 40);
          *(a1 + 40) = v46 + 1;
          *(v45 + 8 * v46) = 0x20000000;
        }

        v47 = *(a1 + 56);
        *(v47 + 72) |= 2u;
        ++*(v47 + 80);
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v16 != 40)
      {
        if (v16 == 41)
        {
          if (*(a1 + 16))
          {
            goto LABEL_142;
          }

LABEL_140:
          v18 = 8;
LABEL_141:
          *(a1 + 16) = v18;
          goto LABEL_142;
        }

LABEL_71:
        v17 = v16;
LABEL_72:
        *&a3 = sub_100044CC4(a1, v17, a3, a4, a5, a6).n128_u64[0];
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v12 - v15 <= 0)
      {
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 8;
        }

        *a1 = &byte_1002C4510;
        *(a1 + 8) = &byte_1002C4510;
        v15 = &byte_1002C4510;
        v12 = &byte_1002C4510;
        v40 = *(a1 + 56);
        v29 = *(v40 + 112) + 1;
        *(v40 + 112) = v29;
        if (v29 <= 9)
        {
LABEL_59:
          *(v159 + 8 * v29) = v8;
          if (!*(a1 + 16))
          {
            goto LABEL_60;
          }

          goto LABEL_88;
        }
      }

      else
      {
        v28 = *(a1 + 56);
        v29 = *(v28 + 112) + 1;
        *(v28 + 112) = v29;
        if (v29 <= 9)
        {
          goto LABEL_59;
        }
      }

      if (!*(a1 + 16))
      {
LABEL_60:
        v30 = *(a1 + 32);
        if (*(a1 + 40) >= v30)
        {
          v31 = (v30 + 1) / 2;
          v32 = ((v30 + 1 + ((v30 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v31;
          if (v30 < v32)
          {
            if (v32 >> 61)
            {
              *(a1 + 16) = 12;
              v15 = &byte_1002C4510;
              v12 = &byte_1002C4510;
              *a1 = &byte_1002C4510;
              *(a1 + 8) = &byte_1002C4510;
            }

            else
            {
              v53 = malloc_type_realloc(*(a1 + 24), 24 * v31, 0x100004000313F17uLL);
              if (v53)
              {
                *(a1 + 24) = v53;
                *(a1 + 32) = v32;
                v15 = *a1;
                v12 = *(a1 + 8);
              }

              else
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 12;
                }

                *a1 = &byte_1002C4510;
                *(a1 + 8) = &byte_1002C4510;
                v15 = &byte_1002C4510;
                v12 = &byte_1002C4510;
              }
            }
          }
        }

        v57 = *(a1 + 24);
        v58 = *(a1 + 40);
        *(a1 + 40) = v58 + 1;
        *(v57 + 8 * v58) = v29 | 0x68000000;
        if (v12 - v15 < 1)
        {
          goto LABEL_129;
        }

        goto LABEL_121;
      }

LABEL_88:
      if (v12 - v15 < 1)
      {
        goto LABEL_129;
      }

LABEL_121:
      if (*v15 == 41)
      {
        if (v29 <= 9)
        {
          goto LABEL_123;
        }

        goto LABEL_130;
      }

LABEL_129:
      sub_100041550(a1, 41);
      if (v29 <= 9)
      {
LABEL_123:
        *(v160 + 8 * v29) = *(a1 + 40);
        if (!*(a1 + 16))
        {
          goto LABEL_124;
        }

        goto LABEL_131;
      }

LABEL_130:
      if (!*(a1 + 16))
      {
LABEL_124:
        v59 = *(a1 + 32);
        if (*(a1 + 40) >= v59)
        {
          v60 = (v59 + 1) / 2;
          v61 = ((v59 + 1 + ((v59 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v60;
          if (v59 < v61)
          {
            if (v61 >> 61)
            {
              goto LABEL_127;
            }

            v63 = malloc_type_realloc(*(a1 + 24), 24 * v60, 0x100004000313F17uLL);
            if (v63)
            {
              *(a1 + 24) = v63;
              *(a1 + 32) = v61;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_127:
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002C4510;
              *(a1 + 8) = &byte_1002C4510;
            }
          }
        }

        v64 = *(a1 + 24);
        v65 = *(a1 + 40);
        *(a1 + 40) = v65 + 1;
        *(v64 + 8 * v65) = v29 | 0x70000000;
        v62 = *a1;
        if ((*(a1 + 8) - *a1) < 1)
        {
          goto LABEL_139;
        }

        goto LABEL_136;
      }

LABEL_131:
      v62 = *a1;
      if ((*(a1 + 8) - *a1) < 1)
      {
        goto LABEL_139;
      }

LABEL_136:
      *a1 = v62 + 1;
      if (*v62 != 41)
      {
LABEL_139:
        if (!*(a1 + 16))
        {
          goto LABEL_140;
        }

LABEL_142:
        *a1 = &byte_1002C4510;
        *(a1 + 8) = &byte_1002C4510;
LABEL_143:
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      v33 = 1;
      v11 = *a1;
      v12 = *(a1 + 8);
      v34 = &v12[-*a1];
      if (v34 < 1)
      {
        goto LABEL_10;
      }

LABEL_144:
      v66 = *v11;
      if ((v66 - 42) < 2 || v66 == 63 || v66 == 123 && v34 != 1 && v11[1] - 48 <= 9)
      {
        v67 = v11 + 1;
        *a1 = v11 + 1;
        if ((v33 & 1) == 0)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 13;
          }

          *a1 = &byte_1002C4510;
          *(a1 + 8) = &byte_1002C4510;
          v67 = &byte_1002C4510;
          v12 = &byte_1002C4510;
        }

        if (v66 <= 62)
        {
          if (v66 != 42)
          {
            if (v66 == 43)
            {
              sub_100043554(a1, 1207959552, *(a1 + 40) - v8 + 1, v8);
              if (!*(a1 + 16))
              {
                v68 = *(a1 + 32);
                v69 = *(a1 + 40);
                if (v69 >= v68)
                {
                  v70 = (v68 + 1) / 2;
                  v71 = ((v68 + 1 + ((v68 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v70;
                  if (v68 < v71)
                  {
                    if (v71 >> 61)
                    {
                      goto LABEL_160;
                    }

                    v102 = malloc_type_realloc(*(a1 + 24), 24 * v70, 0x100004000313F17uLL);
                    if (v102)
                    {
                      *(a1 + 24) = v102;
                      *(a1 + 32) = v71;
                    }

                    else
                    {
                      if (!*(a1 + 16))
                      {
LABEL_160:
                        *(a1 + 16) = 12;
                      }

                      *a1 = &byte_1002C4510;
                      *(a1 + 8) = &byte_1002C4510;
                    }
                  }
                }

                v87 = (v69 - v8) | 0x50000000;
LABEL_235:
                v113 = *(a1 + 24);
                v114 = *(a1 + 40);
                *(a1 + 40) = v114 + 1;
                *(v113 + 8 * v114) = v87;
              }
            }

LABEL_297:
            v11 = *a1;
            v12 = *(a1 + 8);
            v137 = &v12[-*a1];
            if (v137 >= 1)
            {
              if ((v138 = *v11, (v138 - 42) < 2) || v138 == 63 || (v138 == 123 ? (v139 = v12 != *a1, v140 = v137 == 1) : (v140 = 1), !v140 && v11[1] - 48 <= 9))
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 13;
                }

                *a1 = &byte_1002C4510;
                *(a1 + 8) = &byte_1002C4510;
                v11 = &byte_1002C4510;
                v12 = &byte_1002C4510;
              }
            }

            goto LABEL_10;
          }

          sub_100043554(a1, 1207959552, *(a1 + 40) - v8 + 1, v8);
          v77 = *(a1 + 40);
          v78 = v77 - v8;
          if (!*(a1 + 16))
          {
            v79 = *(a1 + 32);
            if (v77 >= v79)
            {
              v80 = (v79 + 1) / 2;
              v81 = ((v79 + 1 + ((v79 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v80;
              if (v79 < v81)
              {
                if (v81 >> 61)
                {
                  goto LABEL_175;
                }

                v103 = malloc_type_realloc(*(a1 + 24), 24 * v80, 0x100004000313F17uLL);
                if (v103)
                {
                  *(a1 + 24) = v103;
                  *(a1 + 32) = v81;
                }

                else
                {
                  if (!*(a1 + 16))
                  {
LABEL_175:
                    *(a1 + 16) = 12;
                  }

                  *a1 = &byte_1002C4510;
                  *(a1 + 8) = &byte_1002C4510;
                }
              }
            }

            v104 = *(a1 + 24);
            v105 = *(a1 + 40);
            *(a1 + 40) = v105 + 1;
            *(v104 + 8 * v105) = v78 | 0x50000000;
            v78 = *(a1 + 40) - v8;
          }

          sub_100043554(a1, 1476395008, v78 + 1, v8);
          if (*(a1 + 16))
          {
            goto LABEL_297;
          }

          v106 = *(a1 + 32);
          v107 = *(a1 + 40);
          if (v107 >= v106)
          {
            v108 = (v106 + 1) / 2;
            v109 = ((v106 + 1 + ((v106 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v108;
            if (v106 < v109)
            {
              if (v109 >> 61)
              {
                goto LABEL_227;
              }

              v112 = malloc_type_realloc(*(a1 + 24), 24 * v108, 0x100004000313F17uLL);
              if (v112)
              {
                *(a1 + 24) = v112;
                *(a1 + 32) = v109;
              }

              else
              {
                if (!*(a1 + 16))
                {
LABEL_227:
                  *(a1 + 16) = 12;
                }

                *a1 = &byte_1002C4510;
                *(a1 + 8) = &byte_1002C4510;
              }
            }
          }

          v87 = (v107 - v8) | 0x60000000;
          goto LABEL_235;
        }

        if (v66 != 63)
        {
          if (v66 != 123)
          {
            goto LABEL_297;
          }

          v72 = v12 - v67;
          if (v12 - v67 < 1)
          {
            v74 = 0;
            goto LABEL_186;
          }

          v73 = 0;
          v74 = 0;
          while (*v67 - 48 <= 9 && v74 <= 255)
          {
            v75 = v67 + 1;
            *a1 = v67 + 1;
            v74 = (*v67 + 10 * v74 - 48);
            ++v73;
            ++v67;
            if (v72-- <= 1)
            {
              goto LABEL_185;
            }
          }

          v75 = v67;
          if (!v73)
          {
            goto LABEL_186;
          }

LABEL_185:
          if (v74 >= 256)
          {
LABEL_186:
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 10;
            }

            *a1 = &byte_1002C4510;
            *(a1 + 8) = &byte_1002C4510;
            v75 = &byte_1002C4510;
            v12 = &byte_1002C4510;
          }

          v88 = v74;
          if (v12 - v75 < 1)
          {
            goto LABEL_240;
          }

          v88 = v74;
          if (*v75 != 44)
          {
            goto LABEL_240;
          }

          v89 = v75 + 1;
          *a1 = v75 + 1;
          if (v75[1] - 48 > 9)
          {
            v88 = 256;
            goto LABEL_240;
          }

          v90 = (v12 - v89);
          if (v12 - v89 < 1)
          {
            v88 = 0;
          }

          else
          {
            v91 = 0;
            v88 = 0;
            while (1)
            {
              v92 = &v89[v91];
              if (v89[v91] - 48 > 9 || v88 > 255)
              {
                break;
              }

              *a1 = v92 + 1;
              v88 = (*v92 + 10 * v88 - 48);
              ++v91;
              if (--v90 <= 0)
              {
                LODWORD(v91) = 1;
                break;
              }
            }

            if (v91 && v88 < 256)
            {
              if (v74 <= v88)
              {
                goto LABEL_240;
              }

LABEL_237:
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 10;
              }

              *a1 = &byte_1002C4510;
              *(a1 + 8) = &byte_1002C4510;
              goto LABEL_240;
            }
          }

          if (!*(a1 + 16))
          {
            *(a1 + 16) = 10;
            *a1 = &byte_1002C4510;
            *(a1 + 8) = &byte_1002C4510;
            if (v74 <= v88)
            {
              goto LABEL_240;
            }

            goto LABEL_237;
          }

          *a1 = &byte_1002C4510;
          *(a1 + 8) = &byte_1002C4510;
          if (v74 > v88)
          {
            goto LABEL_237;
          }

LABEL_240:
          sub_100044EB8(a1, v8, v74, v88);
          v116 = *a1;
          v115 = *(a1 + 8);
          if (v115 - *a1 >= 1)
          {
            if (*v116 == 125)
            {
              *a1 = v116 + 1;
              goto LABEL_297;
            }

            v117 = (v116 + 1);
            v118 = ~v116 + v115;
            while (1)
            {
              *a1 = v117;
              if (v118 <= 0)
              {
                break;
              }

              v119 = *v117++;
              --v118;
              if (v119 == 125)
              {
                if (*(a1 + 16))
                {
                  goto LABEL_251;
                }

                v120 = 10;
                goto LABEL_250;
              }
            }
          }

          if (!*(a1 + 16))
          {
            v120 = 9;
LABEL_250:
            *(a1 + 16) = v120;
          }

LABEL_251:
          *a1 = &byte_1002C4510;
          *(a1 + 8) = &byte_1002C4510;
          goto LABEL_297;
        }

        sub_100043554(a1, 2013265920, *(a1 + 40) - v8 + 1, v8);
        if (*(a1 + 16))
        {
          goto LABEL_297;
        }

        v83 = *(a1 + 32);
        v82 = *(a1 + 40);
        v84 = v82 - v8;
        if (v82 < v83 || (v85 = (v83 + 1) / 2, v86 = ((v83 + 1 + ((v83 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v85, v83 >= v86))
        {
          v93 = *(a1 + 24);
          v94 = *(a1 + 40);
          *(a1 + 40) = v94 + 1;
          v93[v94] = v84 | 0x80000000;
        }

        else
        {
          if (v86 >> 61)
          {
            goto LABEL_181;
          }

          v93 = malloc_type_realloc(*(a1 + 24), 24 * v85, 0x100004000313F17uLL);
          if (!v93)
          {
            if (!*(a1 + 16))
            {
LABEL_181:
              *(a1 + 16) = 12;
            }

            *a1 = &byte_1002C4510;
            *(a1 + 8) = &byte_1002C4510;
            v87 = v84 | 0x80000000;
            goto LABEL_235;
          }

          *(a1 + 24) = v93;
          *(a1 + 32) = v86;
          v110 = *(a1 + 16);
          v111 = *(a1 + 40);
          *(a1 + 40) = v111 + 1;
          v93[v111] = v84 | 0x80000000;
          if (v110)
          {
            goto LABEL_297;
          }
        }

        v93[v8] = v93[v8] & 0xF8000000 | (*(a1 + 40) - v8);
        v95 = *(a1 + 32);
        if (*(a1 + 40) >= v95)
        {
          v96 = (v95 + 1) / 2;
          v97 = ((v95 + 1 + ((v95 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v96;
          if (v95 < v97)
          {
            if (v97 >> 61)
            {
              *(a1 + 16) = 12;
              *a1 = &byte_1002C4510;
              *(a1 + 8) = &byte_1002C4510;
              goto LABEL_291;
            }

            v93 = malloc_type_realloc(v93, 24 * v96, 0x100004000313F17uLL);
            if (v93)
            {
              *(a1 + 24) = v93;
              *(a1 + 32) = v97;
              v121 = *(a1 + 16);
              v122 = *(a1 + 40);
              *(a1 + 40) = v122 + 1;
              v93[v122] = 2281701376;
              if (v121)
              {
                goto LABEL_297;
              }

LABEL_208:
              v93[*(a1 + 40) - 1] = v93[*(a1 + 40) - 1] & 0xF8000000 | 1;
              v99 = *(a1 + 32);
              if (*(a1 + 40) >= v99)
              {
                v100 = (v99 + 1) / 2;
                v101 = ((v99 + 1 + ((v99 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v100;
                if (v99 < v101)
                {
                  if (v101 >> 61)
                  {
                    *(a1 + 16) = 12;
                    *a1 = &byte_1002C4510;
                    *(a1 + 8) = &byte_1002C4510;
                  }

                  else
                  {
                    v93 = malloc_type_realloc(v93, 24 * v100, 0x100004000313F17uLL);
                    if (v93)
                    {
                      *(a1 + 24) = v93;
                      *(a1 + 32) = v101;
                    }

                    else
                    {
                      if (!*(a1 + 16))
                      {
                        *(a1 + 16) = 12;
                      }

                      *a1 = &byte_1002C4510;
                      *(a1 + 8) = &byte_1002C4510;
                      v93 = *(a1 + 24);
                    }
                  }
                }
              }

              v135 = *(a1 + 40);
              *(a1 + 40) = v135 + 1;
              v136 = 2415919106;
            }

            else
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002C4510;
              *(a1 + 8) = &byte_1002C4510;
              v93 = *(a1 + 24);
LABEL_291:
              v135 = *(a1 + 40);
              *(a1 + 40) = v135 + 1;
              v136 = 2281701376;
            }

            v93[v135] = v136;
            goto LABEL_297;
          }
        }

        v98 = *(a1 + 40);
        *(a1 + 40) = v98 + 1;
        v93[v98] = 2281701376;
        goto LABEL_208;
      }

LABEL_10:
      if (v12 - v11 <= 0)
      {
        v8 = *(a1 + 40);
        break;
      }
    }

    if (v8 == v10)
    {
      goto LABEL_314;
    }

LABEL_317:
    if (v12 - v11 >= 1 && *v11 == 124)
    {
      *a1 = v11 + 1;
      if (v163)
      {
        v10 = v161;
        if (!*(a1 + 16))
        {
          goto LABEL_321;
        }

LABEL_3:
        v9 = v8;
LABEL_4:
        v161 = v9 - 1;
        v162 = v8;
        v163 = 1;
        continue;
      }

      sub_100043554(a1, 2013265920, v8 - v10 + 1, v10);
      v8 = *(a1 + 40);
      v162 = v10;
      if (*(a1 + 16))
      {
        goto LABEL_3;
      }

LABEL_321:
      v141 = *(a1 + 32);
      if (v8 < v141 || (v142 = (v141 + 1) / 2, v143 = ((v141 + 1 + ((v141 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v142, v141 >= v143))
      {
        v144 = 1;
      }

      else
      {
        if (v143 >> 61)
        {
          v144 = 0;
          *(a1 + 16) = 12;
          goto LABEL_339;
        }

        v150 = malloc_type_realloc(*(a1 + 24), 24 * v142, 0x100004000313F17uLL);
        if (v150)
        {
          *(a1 + 24) = v150;
          *(a1 + 32) = v143;
          v144 = *(a1 + 16) == 0;
        }

        else
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 12;
          }

          v144 = 0;
LABEL_339:
          *a1 = &byte_1002C4510;
          *(a1 + 8) = &byte_1002C4510;
        }
      }

      v145 = *(a1 + 24);
      v146 = *(a1 + 40);
      *(a1 + 40) = v146 + 1;
      v145[v146] = (v8 - v10) | 0x80000000;
      v9 = *(a1 + 40);
      if (v144)
      {
        v145[v162] = v145[v162] & 0xF8000000 | (v9 - v162);
        v147 = *(a1 + 32);
        v8 = *(a1 + 40);
        if (v8 >= v147)
        {
          v148 = (v147 + 1) / 2;
          v149 = ((v147 + 1 + ((v147 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v148;
          if (v147 < v149)
          {
            if (v149 >> 61)
            {
              *(a1 + 16) = 12;
              *a1 = &byte_1002C4510;
              *(a1 + 8) = &byte_1002C4510;
            }

            else
            {
              v145 = malloc_type_realloc(v145, 24 * v148, 0x100004000313F17uLL);
              if (v145)
              {
                *(a1 + 24) = v145;
                *(a1 + 32) = v149;
              }

              else
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 12;
                }

                *a1 = &byte_1002C4510;
                *(a1 + 8) = &byte_1002C4510;
                v145 = *(a1 + 24);
              }
            }
          }
        }

        v151 = *(a1 + 40);
        *(a1 + 40) = v151 + 1;
        v145[v151] = 2281701376;
      }

      else
      {
        v8 = *(a1 + 40);
      }

      goto LABEL_4;
    }

    break;
  }

  if ((v163 & 1) != 0 && !*(a1 + 16))
  {
    v152 = *(a1 + 24);
    v152[v162] = v152[v162] & 0xF8000000 | (v8 - v162);
    v153 = *(a1 + 32);
    v154 = *(a1 + 40);
    v155 = v154 - v161;
    if (v154 >= v153)
    {
      v156 = (v153 + 1) / 2;
      v157 = ((v153 + 1 + ((v153 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v156;
      if (v153 < v157)
      {
        if (v157 >> 61)
        {
          *(a1 + 16) = 12;
          *a1 = &byte_1002C4510;
          *(a1 + 8) = &byte_1002C4510;
        }

        else
        {
          v152 = malloc_type_realloc(v152, 24 * v156, 0x100004000313F17uLL);
          if (v152)
          {
            *(a1 + 24) = v152;
            *(a1 + 32) = v157;
          }

          else
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 12;
            }

            *a1 = &byte_1002C4510;
            *(a1 + 8) = &byte_1002C4510;
            v152 = *(a1 + 24);
          }
        }
      }
    }

    v158 = *(a1 + 40);
    *(a1 + 40) = v158 + 1;
    v152[v158] = v155 | 0x90000000;
  }
}

void sub_1000428D0(uint64_t a1, int a2, int a3, double a4, double a5, double a6, int32x4_t a7)
{
  v8 = *(a1 + 40);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = &v10[-*a1];
  if (v11 < 1)
  {
    goto LABEL_14;
  }

  if (*v9 == 94)
  {
    *a1 = ++v9;
    if (*(a1 + 16))
    {
      goto LABEL_12;
    }

    v13 = *(a1 + 32);
    if (v8 >= v13)
    {
      v14 = (v13 + 1) / 2;
      v15 = ((v13 + 1 + ((v13 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v14;
      if (v13 < v15)
      {
        if (v15 >> 61)
        {
          goto LABEL_7;
        }

        v16 = malloc_type_realloc(*(a1 + 24), 24 * v14, 0x100004000313F17uLL);
        if (v16)
        {
          *(a1 + 24) = v16;
          *(a1 + 32) = v15;
          v9 = *a1;
          v10 = *(a1 + 8);
          goto LABEL_11;
        }

        if (!*(a1 + 16))
        {
LABEL_7:
          *(a1 + 16) = 12;
        }

        *a1 = &byte_1002C4510;
        *(a1 + 8) = &byte_1002C4510;
        v9 = &byte_1002C4510;
        v10 = &byte_1002C4510;
      }
    }

LABEL_11:
    v17 = *(a1 + 24);
    v18 = *(a1 + 40);
    *(a1 + 40) = v18 + 1;
    *(v17 + 8 * v18) = 402653184;
LABEL_12:
    v19 = *(a1 + 56);
    v20 = v19[9];
    a5 = COERCE_DOUBLE(vadd_s32(v20, 0x100000001));
    LODWORD(a4) = v20.i32[0] | 1;
    HIDWORD(a4) = HIDWORD(a5);
    *&v19[9] = a4;
    v11 = v10 - v9;
    if (v10 - v9 >= 1)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (*(a1 + 40) == v8)
    {
      goto LABEL_227;
    }

    return;
  }

LABEL_13:
  v110 = v8;
  v21 = 0;
  v22 = 0;
  v23 = a1 + 144;
  v112 = a1 + 64;
  while (v11 == 1 || *v9 != a2 || v9[1] != a3)
  {
    v27 = *(a1 + 40);
    v28 = v9 + 1;
    *a1 = v9 + 1;
    v29 = *v9;
    if (v29 == 92)
    {
      if (v10 - v28 <= 0)
      {
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 5;
        }

        *(a1 + 8) = &byte_1002C4510;
        v10 = &byte_1002C4510;
        v28 = &byte_1002C4510;
      }

      *a1 = v28 + 1;
      v29 = *v28++ | 0x100;
    }

    if (v29 <= 304)
    {
      if (v29 <= 90)
      {
        if (v29 == 42)
        {
          if (v22)
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 13;
            }

            *a1 = &byte_1002C4510;
            *(a1 + 8) = &byte_1002C4510;
          }

LABEL_65:
          *&a4 = sub_100044CC4(a1, v29, a4, a5, a6, a7).n128_u64[0];
          goto LABEL_138;
        }

        if (v29 != 46)
        {
          goto LABEL_65;
        }

        if ((*(*(a1 + 56) + 40) & 8) != 0)
        {
          *a1 = "^\n]";
          *(a1 + 8) = "";
          sub_1000438C0(a1, a4, a5, a6, a7);
          *a1 = v28;
          *(a1 + 8) = v10;
          goto LABEL_138;
        }

        if (*(a1 + 16))
        {
          goto LABEL_138;
        }

        v35 = *(a1 + 32);
        if (v27 >= v35)
        {
          v36 = (v35 + 1) / 2;
          v37 = ((v35 + 1 + ((v35 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v36;
          if (v35 < v37)
          {
            if (v37 >> 61)
            {
              goto LABEL_54;
            }

            v61 = malloc_type_realloc(*(a1 + 24), 24 * v36, 0x100004000313F17uLL);
            if (v61)
            {
              *(a1 + 24) = v61;
              *(a1 + 32) = v37;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_54:
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002C4510;
              *(a1 + 8) = &byte_1002C4510;
            }
          }
        }

        v62 = *(a1 + 24);
        v63 = *(a1 + 40);
        *(a1 + 40) = v63 + 1;
        *(v62 + 8 * v63) = 671088640;
        goto LABEL_138;
      }

      if (v29 == 91)
      {
        sub_1000438C0(a1, a4, a5, a6, a7);
        goto LABEL_138;
      }

      if (v29 != 296)
      {
        if (v29 != 297)
        {
          goto LABEL_65;
        }

        goto LABEL_134;
      }

      v41 = *(a1 + 56);
      v42 = *(v41 + 112) + 1;
      *(v41 + 112) = v42;
      if (v42 > 9)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_68;
        }
      }

      else
      {
        *(v112 + 8 * v42) = v27;
        if (!*(a1 + 16))
        {
LABEL_68:
          v43 = *(a1 + 32);
          if (*(a1 + 40) >= v43)
          {
            v44 = (v43 + 1) / 2;
            v45 = ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v44;
            if (v43 < v45)
            {
              if (v45 >> 61)
              {
                *(a1 + 16) = 12;
                v28 = &byte_1002C4510;
                v10 = &byte_1002C4510;
                *a1 = &byte_1002C4510;
                *(a1 + 8) = &byte_1002C4510;
              }

              else
              {
                v60 = malloc_type_realloc(*(a1 + 24), 24 * v44, 0x100004000313F17uLL);
                if (v60)
                {
                  *(a1 + 24) = v60;
                  *(a1 + 32) = v45;
                  v28 = *a1;
                  v10 = *(a1 + 8);
                }

                else
                {
                  if (!*(a1 + 16))
                  {
                    *(a1 + 16) = 12;
                  }

                  *a1 = &byte_1002C4510;
                  *(a1 + 8) = &byte_1002C4510;
                  v28 = &byte_1002C4510;
                  v10 = &byte_1002C4510;
                }
              }
            }
          }

          v64 = *(a1 + 24);
          v65 = *(a1 + 40);
          *(a1 + 40) = v65 + 1;
          *(v64 + 8 * v65) = v42 | 0x68000000;
          v46 = v10 - v28 == 1;
          if (v10 - v28 >= 1)
          {
LABEL_114:
            if (v46 || *v28 != 92 || v28[1] != 41)
            {
              sub_1000428D0(a1, 92, 41);
            }
          }

LABEL_118:
          if (v42 > 9)
          {
            if (!*(a1 + 16))
            {
              goto LABEL_120;
            }
          }

          else
          {
            *(v23 + 8 * v42) = *(a1 + 40);
            if (!*(a1 + 16))
            {
LABEL_120:
              v66 = *(a1 + 32);
              if (*(a1 + 40) >= v66)
              {
                v67 = (v66 + 1) / 2;
                v68 = ((v66 + 1 + ((v66 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67;
                if (v66 < v68)
                {
                  if (v68 >> 61)
                  {
                    goto LABEL_123;
                  }

                  v70 = malloc_type_realloc(*(a1 + 24), 24 * v67, 0x100004000313F17uLL);
                  if (v70)
                  {
                    *(a1 + 24) = v70;
                    *(a1 + 32) = v68;
                  }

                  else
                  {
                    if (!*(a1 + 16))
                    {
LABEL_123:
                      *(a1 + 16) = 12;
                    }

                    *a1 = &byte_1002C4510;
                    *(a1 + 8) = &byte_1002C4510;
                  }
                }
              }

              v71 = *(a1 + 24);
              v72 = *(a1 + 40);
              *(a1 + 40) = v72 + 1;
              *(v71 + 8 * v72) = v42 | 0x70000000;
              v69 = *a1;
              if ((*(a1 + 8) - *a1) < 2)
              {
                goto LABEL_134;
              }

LABEL_131:
              if (*v69 == 92 && v69[1] == 41)
              {
                *a1 = v69 + 2;
                goto LABEL_138;
              }

LABEL_134:
              if (!*(a1 + 16))
              {
                v47 = 8;
                goto LABEL_136;
              }

              goto LABEL_137;
            }
          }

          v69 = *a1;
          if ((*(a1 + 8) - *a1) < 2)
          {
            goto LABEL_134;
          }

          goto LABEL_131;
        }
      }

      v46 = v10 - v28 == 1;
      if (v10 - v28 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_118;
    }

    if ((v29 - 305) < 9)
    {
      v30 = (v29 & 0xFFFFFEFF) - 48;
      v31 = *(v23 + 8 * v30);
      v32 = *(a1 + 16);
      if (!v31)
      {
        if (!v32)
        {
          *(a1 + 16) = 6;
        }

        *a1 = &byte_1002C4510;
        *(a1 + 8) = &byte_1002C4510;
        goto LABEL_98;
      }

      if (v32)
      {
        v33 = *(v112 + 8 * v30) + 1;
        v34 = v31 - v33;
        if (v31 == v33)
        {
          goto LABEL_34;
        }

LABEL_82:
        if (v34 >= 1)
        {
          v52 = *(a1 + 32) + v34;
          if (v52 >> 61 || (v53 = malloc_type_realloc(*(a1 + 24), 8 * v52, 0x100004000313F17uLL)) == 0)
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 12;
            }

            *a1 = &byte_1002C4510;
            *(a1 + 8) = &byte_1002C4510;
          }

          else
          {
            *(a1 + 24) = v53;
            *(a1 + 32) = v52;
          }
        }

        memmove((*(a1 + 24) + 8 * *(a1 + 40)), (*(a1 + 24) + 8 * v33), 8 * v34);
        *(a1 + 40) += v34;
        if (!*(a1 + 16))
        {
          goto LABEL_90;
        }

LABEL_98:
        *(*(a1 + 56) + 120) = 1;
        goto LABEL_138;
      }

      v38 = *(a1 + 32);
      if (v27 >= v38)
      {
        v39 = (v38 + 1) / 2;
        v40 = ((v38 + 1 + ((v38 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v39;
        if (v38 < v40)
        {
          if (v40 >> 61)
          {
            goto LABEL_59;
          }

          v48 = malloc_type_realloc(*(a1 + 24), 24 * v39, 0x100004000313F17uLL);
          if (v48)
          {
            *(a1 + 24) = v48;
            *(a1 + 32) = v40;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_59:
              *(a1 + 16) = 12;
            }

            *a1 = &byte_1002C4510;
            *(a1 + 8) = &byte_1002C4510;
          }
        }
      }

      v49 = *(a1 + 24);
      v50 = *(a1 + 40);
      *(a1 + 40) = v50 + 1;
      *(v49 + 8 * v50) = v30 | 0x38000000;
      v51 = *(v23 + 8 * v30);
      v33 = *(v112 + 8 * v30) + 1;
      v34 = v51 - v33;
      if (v51 != v33)
      {
        goto LABEL_82;
      }

LABEL_34:
      if (*(a1 + 16))
      {
        goto LABEL_98;
      }

LABEL_90:
      v54 = *(a1 + 32);
      if (*(a1 + 40) >= v54)
      {
        v55 = (v54 + 1) / 2;
        v56 = ((v54 + 1 + ((v54 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v55;
        if (v54 < v56)
        {
          if (v56 >> 61)
          {
            goto LABEL_93;
          }

          v57 = malloc_type_realloc(*(a1 + 24), 24 * v55, 0x100004000313F17uLL);
          if (v57)
          {
            *(a1 + 24) = v57;
            *(a1 + 32) = v56;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_93:
              *(a1 + 16) = 12;
            }

            *a1 = &byte_1002C4510;
            *(a1 + 8) = &byte_1002C4510;
          }
        }
      }

      v58 = *(a1 + 24);
      v59 = *(a1 + 40);
      *(a1 + 40) = v59 + 1;
      *(v58 + 8 * v59) = v30 | 0x40000000;
      goto LABEL_98;
    }

    if (v29 != 379)
    {
      if (v29 != 381)
      {
        goto LABEL_65;
      }

      goto LABEL_134;
    }

    if (!*(a1 + 16))
    {
      v47 = 13;
LABEL_136:
      *(a1 + 16) = v47;
    }

LABEL_137:
    *a1 = &byte_1002C4510;
    *(a1 + 8) = &byte_1002C4510;
LABEL_138:
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = &v10[-*a1];
    if (v11 < 1)
    {
      goto LABEL_155;
    }

    v73 = *v9;
    if (v73 == 42)
    {
      *a1 = v9 + 1;
      sub_100043554(a1, 1207959552, *(a1 + 40) - v27 + 1, v27);
      v74 = *(a1 + 40);
      v75 = v74 - v27;
      if (!*(a1 + 16))
      {
        v76 = *(a1 + 32);
        if (v74 >= v76)
        {
          v77 = (v76 + 1) / 2;
          v78 = ((v76 + 1 + ((v76 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v77;
          if (v76 < v78)
          {
            if (v78 >> 61)
            {
              goto LABEL_144;
            }

            v94 = malloc_type_realloc(*(a1 + 24), 24 * v77, 0x100004000313F17uLL);
            if (v94)
            {
              *(a1 + 24) = v94;
              *(a1 + 32) = v78;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_144:
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002C4510;
              *(a1 + 8) = &byte_1002C4510;
            }
          }
        }

        v95 = *(a1 + 24);
        v96 = *(a1 + 40);
        *(a1 + 40) = v96 + 1;
        *(v95 + 8 * v96) = v75 | 0x50000000;
        v75 = *(a1 + 40) - v27;
      }

      sub_100043554(a1, 1476395008, v75 + 1, v27);
      if (*(a1 + 16))
      {
        goto LABEL_19;
      }

      v97 = *(a1 + 32);
      v98 = *(a1 + 40);
      if (v98 >= v97)
      {
        v99 = (v97 + 1) / 2;
        v100 = ((v97 + 1 + ((v97 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v99;
        if (v97 < v100)
        {
          if (v100 >> 61)
          {
            goto LABEL_206;
          }

          v24 = malloc_type_realloc(*(a1 + 24), 24 * v99, 0x100004000313F17uLL);
          if (v24)
          {
            *(a1 + 24) = v24;
            *(a1 + 32) = v100;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_206:
              *(a1 + 16) = 12;
            }

            *a1 = &byte_1002C4510;
            *(a1 + 8) = &byte_1002C4510;
          }
        }
      }

      v25 = *(a1 + 24);
      v26 = *(a1 + 40);
      *(a1 + 40) = v26 + 1;
      *(v25 + 8 * v26) = (v98 - v27) | 0x60000000;
      goto LABEL_19;
    }

    v79 = v10 != *a1;
    if (v11 != 1 && v73 == 92 && v9[1] == 123)
    {
      v80 = v9 + 2;
      *a1 = v9 + 2;
      v81 = v10 - (v9 + 2);
      if (v81 < 1)
      {
        v83 = 0;
      }

      else
      {
        v82 = 0;
        v83 = 0;
        while (*v80 - 48 <= 9 && v83 <= 255)
        {
          v84 = v80 + 1;
          *a1 = v80 + 1;
          v83 = (*v80 + 10 * v83 - 48);
          ++v82;
          --v81;
          ++v80;
          if (v81 <= 0)
          {
            goto LABEL_160;
          }
        }

        v84 = v80;
        if (!v82)
        {
          goto LABEL_161;
        }

LABEL_160:
        if (v83 < 256)
        {
          goto LABEL_164;
        }
      }

LABEL_161:
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 10;
      }

      *a1 = &byte_1002C4510;
      *(a1 + 8) = &byte_1002C4510;
      v84 = &byte_1002C4510;
      v10 = &byte_1002C4510;
LABEL_164:
      v85 = v83;
      if (v10 - v84 >= 1)
      {
        v85 = v83;
        if (*v84 == 44)
        {
          v86 = v84 + 1;
          *a1 = v86;
          v87 = v10 - v86;
          if (v10 - v86 < 1 || *v86 - 48 > 9)
          {
            v85 = 256;
          }

          else
          {
            v88 = 0;
            v85 = 0;
            while (1)
            {
              v89 = &v86[v88];
              if (v86[v88] - 48 > 9 || v85 > 255)
              {
                break;
              }

              *a1 = v89 + 1;
              v85 = (*v89 + 10 * v85 - 48);
              ++v88;
              if (--v87 <= 0)
              {
                LODWORD(v88) = 1;
                break;
              }
            }

            if (!v88 || v85 >= 256)
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 10;
              }

              *a1 = &byte_1002C4510;
              *(a1 + 8) = &byte_1002C4510;
            }

            if (v83 > v85)
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 10;
              }

              *a1 = &byte_1002C4510;
              *(a1 + 8) = &byte_1002C4510;
            }
          }
        }
      }

      sub_100044EB8(a1, v27, v83, v85);
      v90 = *a1;
      v91 = *(a1 + 8) - *a1;
      if (v91 <= 1)
      {
        if (v91 == 1)
        {
LABEL_188:
          v92 = v90 + 1;
          while (1)
          {
            if (--v91)
            {
              if (*(v92 - 1) == 92 && *v92 == 125)
              {
                break;
              }
            }

            *a1 = v92++;
            if (v91 <= 0)
            {
              goto LABEL_195;
            }
          }

          if (!*(a1 + 16))
          {
            v93 = 10;
            goto LABEL_197;
          }
        }

        else
        {
LABEL_195:
          if (!*(a1 + 16))
          {
            v93 = 9;
LABEL_197:
            *(a1 + 16) = v93;
          }
        }

        *a1 = &byte_1002C4510;
        *(a1 + 8) = &byte_1002C4510;
        goto LABEL_19;
      }

      if (*v90 != 92 || v90[1] != 125)
      {
        goto LABEL_188;
      }

      *a1 = v90 + 2;
LABEL_19:
      v21 = 0;
      v9 = *a1;
      v10 = *(a1 + 8);
      v11 = &v10[-*a1];
      v22 = 1;
      if (v11 <= 0)
      {
        break;
      }
    }

    else
    {
LABEL_155:
      if (v29 != 36)
      {
        goto LABEL_19;
      }

      v21 = 1;
      v22 = 1;
      v46 = v10 == *a1;
      if (v11 <= 0)
      {
        break;
      }
    }
  }

  v101 = *(a1 + 40);
  if (v21)
  {
    v102 = v101 - 1;
    *(a1 + 40) = v101 - 1;
    if (!*(a1 + 16))
    {
      v103 = *(a1 + 32);
      if (v101 > v103)
      {
        v104 = (v103 + 1) / 2;
        v105 = ((v103 + 1 + ((v103 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v104;
        if (v103 < v105)
        {
          if (v105 >> 61)
          {
            goto LABEL_219;
          }

          v106 = malloc_type_realloc(*(a1 + 24), 24 * v104, 0x100004000313F17uLL);
          if (v106)
          {
            *(a1 + 24) = v106;
            *(a1 + 32) = v105;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_219:
              *(a1 + 16) = 12;
            }

            *a1 = &byte_1002C4510;
            *(a1 + 8) = &byte_1002C4510;
          }
        }
      }

      v107 = *(a1 + 24);
      v108 = *(a1 + 40);
      *(a1 + 40) = v108 + 1;
      *(v107 + 8 * v108) = 0x20000000;
      v102 = *(a1 + 40);
    }

    v109 = *(a1 + 56);
    *(v109 + 72) |= 2u;
    ++*(v109 + 80);
    if (v102 == v110)
    {
LABEL_227:
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 14;
      }

      *a1 = &byte_1002C4510;
      *(a1 + 8) = &byte_1002C4510;
    }
  }

  else if (v101 == v110)
  {
    goto LABEL_227;
  }
}

void *sub_100043554(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(result + 4))
  {
    v4 = *(result + 4);
    v5 = *(result + 5);
    v6 = (v4 + 1) / 2;
    v7 = ((v4 + 1 + ((v4 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v6;
    if (v5 < v4 || v4 >= v7)
    {
LABEL_6:
      v9 = *(result + 3);
      v10 = *(result + 5);
      *(result + 5) = v10 + 1;
      *(v9 + 8 * v10) = a3 | a2;
      v11 = *(v9 + 8 * v5);
      v12 = *(result + 9);
      if (v12 >= a4)
      {
        *(result + 9) = v12 + 1;
        v13 = *(result + 19);
        if (v13 < a4)
        {
LABEL_8:
          v14 = *(result + 10);
          if (v14 < a4)
          {
            goto LABEL_9;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v13 = *(result + 19);
        if (v13 < a4)
        {
          goto LABEL_8;
        }
      }

      *(result + 19) = v13 + 1;
      v14 = *(result + 10);
      if (v14 < a4)
      {
LABEL_9:
        v15 = *(result + 20);
        if (v15 < a4)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }

LABEL_28:
      *(result + 10) = v14 + 1;
      v15 = *(result + 20);
      if (v15 < a4)
      {
LABEL_10:
        v16 = *(result + 11);
        if (v16 < a4)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      }

LABEL_29:
      *(result + 20) = v15 + 1;
      v16 = *(result + 11);
      if (v16 < a4)
      {
LABEL_11:
        v17 = *(result + 21);
        if (v17 < a4)
        {
          goto LABEL_12;
        }

        goto LABEL_31;
      }

LABEL_30:
      *(result + 11) = v16 + 1;
      v17 = *(result + 21);
      if (v17 < a4)
      {
LABEL_12:
        v18 = *(result + 12);
        if (v18 < a4)
        {
          goto LABEL_13;
        }

        goto LABEL_32;
      }

LABEL_31:
      *(result + 21) = v17 + 1;
      v18 = *(result + 12);
      if (v18 < a4)
      {
LABEL_13:
        v19 = *(result + 22);
        if (v19 < a4)
        {
          goto LABEL_14;
        }

        goto LABEL_33;
      }

LABEL_32:
      *(result + 12) = v18 + 1;
      v19 = *(result + 22);
      if (v19 < a4)
      {
LABEL_14:
        v20 = *(result + 13);
        if (v20 < a4)
        {
          goto LABEL_15;
        }

        goto LABEL_34;
      }

LABEL_33:
      *(result + 22) = v19 + 1;
      v20 = *(result + 13);
      if (v20 < a4)
      {
LABEL_15:
        v21 = *(result + 23);
        if (v21 < a4)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }

LABEL_34:
      *(result + 13) = v20 + 1;
      v21 = *(result + 23);
      if (v21 < a4)
      {
LABEL_16:
        v22 = *(result + 14);
        if (v22 < a4)
        {
          goto LABEL_17;
        }

        goto LABEL_36;
      }

LABEL_35:
      *(result + 23) = v21 + 1;
      v22 = *(result + 14);
      if (v22 < a4)
      {
LABEL_17:
        v23 = *(result + 24);
        if (v23 < a4)
        {
          goto LABEL_18;
        }

        goto LABEL_37;
      }

LABEL_36:
      *(result + 14) = v22 + 1;
      v23 = *(result + 24);
      if (v23 < a4)
      {
LABEL_18:
        v24 = *(result + 15);
        if (v24 < a4)
        {
          goto LABEL_19;
        }

        goto LABEL_38;
      }

LABEL_37:
      *(result + 24) = v23 + 1;
      v24 = *(result + 15);
      if (v24 < a4)
      {
LABEL_19:
        v25 = *(result + 25);
        if (v25 < a4)
        {
          goto LABEL_20;
        }

        goto LABEL_39;
      }

LABEL_38:
      *(result + 15) = v24 + 1;
      v25 = *(result + 25);
      if (v25 < a4)
      {
LABEL_20:
        v26 = *(result + 16);
        if (v26 < a4)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }

LABEL_39:
      *(result + 25) = v25 + 1;
      v26 = *(result + 16);
      if (v26 < a4)
      {
LABEL_21:
        v27 = *(result + 26);
        if (v27 < a4)
        {
          goto LABEL_22;
        }

        goto LABEL_41;
      }

LABEL_40:
      *(result + 16) = v26 + 1;
      v27 = *(result + 26);
      if (v27 < a4)
      {
LABEL_22:
        v28 = *(result + 17);
        if (v28 < a4)
        {
          goto LABEL_23;
        }

        goto LABEL_42;
      }

LABEL_41:
      *(result + 26) = v27 + 1;
      v28 = *(result + 17);
      if (v28 < a4)
      {
LABEL_23:
        v29 = *(result + 27);
        if (v29 < a4)
        {
LABEL_25:
          v30 = 8 * a4;
          v31 = result;
          result = memmove((v9 + 8 * a4 + 8), (v9 + 8 * a4), 8 * (*(result + 5) + ~a4));
          *(v31[3] + v30) = v11;
          return result;
        }

LABEL_24:
        *(result + 27) = v29 + 1;
        goto LABEL_25;
      }

LABEL_42:
      *(result + 17) = v28 + 1;
      v29 = *(result + 27);
      if (v29 < a4)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v7 >> 61)
    {
      goto LABEL_45;
    }

    v32 = a2;
    v33 = a3;
    v34 = a4;
    v35 = result;
    v36 = malloc_type_realloc(*(result + 3), 24 * v6, 0x100004000313F17uLL);
    if (v36)
    {
      v37 = v36;
      result = v35;
      *(v35 + 3) = v37;
      *(v35 + 4) = v7;
      a4 = v34;
      a3 = v33;
      a2 = v32;
      goto LABEL_6;
    }

    result = v35;
    a4 = v34;
    a3 = v33;
    a2 = v32;
    if (!*(v35 + 4))
    {
LABEL_45:
      *(result + 4) = 12;
    }

    *result = &byte_1002C4510;
    *(result + 1) = &byte_1002C4510;
    goto LABEL_6;
  }

  return result;
}

void sub_1000438C0(uint64_t a1, double a2, double a3, double a4, int32x4_t a5)
{
  v6 = *a1;
  if ((*(a1 + 8) - *a1) >= 6)
  {
    if (strncmp(*a1, "[:<:]]", 6uLL))
    {
      if (strncmp(v6, "[:>:]]", 6uLL))
      {
        goto LABEL_4;
      }

      if (!*(a1 + 16))
      {
        v30 = *(a1 + 32);
        if (*(a1 + 40) < v30)
        {
          goto LABEL_249;
        }

        v31 = (v30 + 1) / 2;
        v32 = ((v30 + 1 + ((v30 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v31;
        if (v30 >= v32)
        {
          goto LABEL_249;
        }

        if (v32 >> 61)
        {
          goto LABEL_30;
        }

        v112 = malloc_type_realloc(*(a1 + 24), 24 * v31, 0x100004000313F17uLL);
        if (v112)
        {
          *(a1 + 24) = v112;
          *(a1 + 32) = v32;
          v6 = *a1;
          goto LABEL_249;
        }

        if (!*(a1 + 16))
        {
LABEL_30:
          *(a1 + 16) = 12;
        }

        v6 = &byte_1002C4510;
        *(a1 + 8) = &byte_1002C4510;
LABEL_249:
        v93 = *(a1 + 24);
        v94 = *(a1 + 40);
        *(a1 + 40) = v94 + 1;
        v95 = 2684354560;
        goto LABEL_250;
      }

LABEL_251:
      *a1 = v6 + 6;
      return;
    }

    if (*(a1 + 16))
    {
      goto LABEL_251;
    }

    v27 = *(a1 + 32);
    if (*(a1 + 40) >= v27)
    {
      v28 = (v27 + 1) / 2;
      v29 = ((v27 + 1 + ((v27 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v28;
      if (v27 < v29)
      {
        if (v29 >> 61)
        {
          goto LABEL_24;
        }

        v92 = malloc_type_realloc(*(a1 + 24), 24 * v28, 0x100004000313F17uLL);
        if (v92)
        {
          *(a1 + 24) = v92;
          *(a1 + 32) = v29;
          v6 = *a1;
          goto LABEL_225;
        }

        if (!*(a1 + 16))
        {
LABEL_24:
          *(a1 + 16) = 12;
        }

        v6 = &byte_1002C4510;
        *(a1 + 8) = &byte_1002C4510;
      }
    }

LABEL_225:
    v93 = *(a1 + 24);
    v94 = *(a1 + 40);
    *(a1 + 40) = v94 + 1;
    v95 = 2550136832;
LABEL_250:
    *(v93 + 8 * v94) = v95;
    goto LABEL_251;
  }

LABEL_4:
  v7 = *(a1 + 56);
  v8 = *(v7 + 20);
  v9 = *(v7 + 16);
  *(v7 + 20) = v8 + 1;
  v10 = *(a1 + 48);
  if (v8 < v10)
  {
    v11 = *(v7 + 24);
    if (!v11)
    {
      goto LABEL_187;
    }

    goto LABEL_6;
  }

  v21 = (v10 + 8);
  *(a1 + 48) = v21;
  if (v10 < -8)
  {
    goto LABEL_187;
  }

  v22 = malloc_type_realloc(*(v7 + 24), 32 * (v10 + 8), 0x1010040FE74B554uLL);
  v7 = *(a1 + 56);
  if (!v22)
  {
    goto LABEL_187;
  }

  v23 = (v21 >> 3) * v9;
  *(v7 + 24) = v22;
  v24 = malloc_type_realloc(*(v7 + 32), v23, 0x100004077774924uLL);
  v7 = *(a1 + 56);
  if (!v24)
  {
    goto LABEL_187;
  }

  *(v7 + 32) = v24;
  if (v8 >= 1)
  {
    v25 = *(v7 + 24);
    if (v8 == 1)
    {
      v26 = 0;
LABEL_184:
      v80 = (v25 + 32 * v26);
      do
      {
        *v80 = &v24[(v26 >> 3) * v9];
        v80 += 4;
        ++v26;
      }

      while (v8 != v26);
      goto LABEL_186;
    }

    v77 = 0;
    v26 = v8 & 0x7FFFFFFE;
    v78 = (v25 + 32);
    do
    {
      v79 = &v24[(v77 >> 3) * v9];
      *(v78 - 4) = v79;
      *v78 = v79;
      v78 += 8;
      v77 += 2;
    }

    while (v26 != v77);
    if (v26 != v8)
    {
      goto LABEL_184;
    }
  }

LABEL_186:
  bzero(&v24[v23 - v9], v9);
  v7 = *(a1 + 56);
  v11 = *(v7 + 24);
  if (!v11)
  {
    goto LABEL_187;
  }

LABEL_6:
  v12 = *(v7 + 32);
  if (v12)
  {
    v13 = (v11 + 32 * v8);
    v14 = v12 + v9 * (v8 / 8);
    *v13 = v14;
    v15 = 1;
    v16 = 1 << (v8 & 7);
    *(v13 + 4) = v16;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    v17 = *a1;
    v18 = *(a1 + 8);
    if (v18 - *a1 < 1)
    {
      goto LABEL_34;
    }

    v19 = *v17;
    v15 = v19 != 94;
    if (v19 == 94)
    {
      *a1 = ++v17;
      if (v18 - v17 < 1)
      {
        v15 = 0;
        v34 = *a1;
        v33 = *(a1 + 8);
        v35 = &v33[-*a1];
        if (v35 < 1)
        {
          goto LABEL_191;
        }

LABEL_35:
        v36 = "NUL";
        do
        {
          v37 = *v34;
          if (v37 == 93)
          {
            break;
          }

          if (v35 != 1 && v37 == 45)
          {
            if (v34[1] != 93)
            {
LABEL_78:
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 11;
              }

              goto LABEL_38;
            }

            *a1 = v34 + 1;
            *(*v13 + 45) |= v13[8];
            v13[9] += 45;
            v34 = *a1;
            v33 = *(a1 + 8);
            break;
          }

          if (v37 == 45)
          {
            goto LABEL_78;
          }

          if (v37 == 91 && v35 != 1)
          {
            v44 = v34[1];
            if (v44 == 61)
            {
              v52 = v34 + 2;
              *a1 = v34 + 2;
              if (v33 - (v34 + 2) <= 0)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &byte_1002C4510;
                *(a1 + 8) = &byte_1002C4510;
                v33 = &byte_1002C4510;
                v52 = &byte_1002C4510;
              }

              v53 = *v52;
              if (v53 == 93 || v53 == 45)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 3;
                }

                *a1 = &byte_1002C4510;
                *(a1 + 8) = &byte_1002C4510;
                v33 = &byte_1002C4510;
                v52 = &byte_1002C4510;
              }

              v54 = v33 - v52;
              if (v54 < 1)
              {
LABEL_102:
                if (!*(a1 + 16))
                {
                  v60 = 7;
                  goto LABEL_104;
                }

LABEL_105:
                v59 = 0;
                *a1 = &byte_1002C4510;
                *(a1 + 8) = &byte_1002C4510;
              }

              else
              {
                v55 = 0;
                v56 = 0;
                while (v54 - 1 == v56 || v52[v56] != 61 || v52[v56 + 1] != 93)
                {
                  *a1 = &v52[++v56];
                  --v55;
                  if (v54 + v55 <= 0)
                  {
                    goto LABEL_102;
                  }
                }

                v57 = &off_1002B4870;
                while (strncmp(v36, v52, v56) || strlen(v36) != v56)
                {
                  v58 = *v57;
                  v57 += 2;
                  v36 = v58;
                  if (!v58)
                  {
                    if (v56 == 1)
                    {
                      v59 = *v52;
                      v36 = "NUL";
                      goto LABEL_106;
                    }

                    v36 = "NUL";
                    if (!*(a1 + 16))
                    {
                      v60 = 3;
LABEL_104:
                      *(a1 + 16) = v60;
                    }

                    goto LABEL_105;
                  }
                }

                v59 = *(v57 - 8);
                v36 = "NUL";
              }

LABEL_106:
              *(*v13 + v59) |= v13[8];
              v13[9] += v59;
              v61 = *a1;
              v33 = *(a1 + 8);
              if (&v33[-*a1] < 1)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &byte_1002C4510;
                *(a1 + 8) = &byte_1002C4510;
                v61 = &byte_1002C4510;
                v33 = &byte_1002C4510;
              }

              if (v33 - v61 > 1 && *v61 == 61 && v61[1] == 93)
              {
                goto LABEL_180;
              }

              if (!*(a1 + 16))
              {
                *(a1 + 16) = 3;
              }

              goto LABEL_38;
            }

            if (v44 == 58)
            {
              v45 = (v34 + 2);
              *a1 = v34 + 2;
              if (v33 - (v34 + 2) <= 0)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &byte_1002C4510;
                *(a1 + 8) = &byte_1002C4510;
                v33 = &byte_1002C4510;
                v45 = &byte_1002C4510;
              }

              v46 = *v45;
              if (v46 == 93 || v46 == 45)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 4;
                }

                *a1 = &byte_1002C4510;
                *(a1 + 8) = &byte_1002C4510;
                v33 = &byte_1002C4510;
                v45 = &byte_1002C4510;
              }

              if (&v33[-v45] < 1)
              {
                v51 = v45;
                goto LABEL_118;
              }

              v47 = v36;
              v48 = -v45;
              v49 = (v45 + 1);
              while (1)
              {
                v50 = *(v49 - 1);
                if (v50 < 0)
                {
                  if (!__maskrune(*(v49 - 1), 0x100uLL))
                  {
LABEL_116:
                    v51 = *a1;
LABEL_117:
                    v36 = v47;
LABEL_118:
                    v62 = v51 - v45;
                    if (!strncmp("alnum", v45, v51 - v45) && !aAlnum[v62])
                    {
                      v63 = off_1002B4728;
                    }

                    else if (!strncmp("alpha", v45, v62) && !aAlpha[v62])
                    {
                      v63 = off_1002B4740;
                    }

                    else if (!strncmp("blank", v45, v62) && !aBlank[v62])
                    {
                      v63 = off_1002B4758;
                    }

                    else if (!strncmp("cntrl", v45, v62) && !aCntrl[v62])
                    {
                      v63 = off_1002B4770;
                    }

                    else if (!strncmp("digit", v45, v62) && !aDigit[v62])
                    {
                      v63 = off_1002B4788;
                    }

                    else if (!strncmp("graph", v45, v62) && !aGraph[v62])
                    {
                      v63 = off_1002B47A0;
                    }

                    else if (!strncmp("lower", v45, v62) && !aLower[v62])
                    {
                      v63 = off_1002B47B8;
                    }

                    else if (!strncmp("print", v45, v62) && !aPrint[v62])
                    {
                      v63 = off_1002B47D0;
                    }

                    else if (!strncmp("punct", v45, v62) && !aPunct[v62])
                    {
                      v63 = off_1002B47E8;
                    }

                    else if (!strncmp("space", v45, v62) && !aSpace[v62])
                    {
                      v63 = off_1002B4800;
                    }

                    else if (!strncmp("upper", v45, v62) && !aUpper[v62])
                    {
                      v63 = off_1002B4818;
                    }

                    else
                    {
                      if (strncmp("xdigit", v45, v62) || aXdigit[v62])
                      {
                        if (!*(a1 + 16))
                        {
                          *(a1 + 16) = 4;
                        }

                        *a1 = &byte_1002C4510;
                        *(a1 + 8) = &byte_1002C4510;
                        goto LABEL_173;
                      }

                      v63 = off_1002B4830;
                    }

                    v64 = v63[1];
                    v65 = *v64;
                    if (*v64)
                    {
                      v66 = (v64 + 1);
                      do
                      {
                        *(*v13 + v65) |= v13[8];
                        v13[9] += v65;
                        v67 = *v66++;
                        v65 = v67;
                      }

                      while (v67);
                    }

                    v68 = v63[2];
                    if (*v68)
                    {
                      do
                      {
                        while (1)
                        {
                          v71 = *(v13 + 2);
                          v72 = v71 + strlen(v68) + 1;
                          *(v13 + 2) = v72;
                          v73 = malloc_type_realloc(*(v13 + 3), v72, 0xBC45E43CuLL);
                          if (!v73)
                          {
                            break;
                          }

                          *(v13 + 3) = v73;
                          llvm_strlcpy(&v73[v71 - 1], v68, *(v13 + 2) - v71 + 1);
                          v69 = &v68[strlen(v68)];
                          v70 = *(v69 + 1);
                          v68 = v69 + 1;
                          if (!v70)
                          {
                            goto LABEL_173;
                          }
                        }

                        v74 = *(v13 + 3);
                        if (v74)
                        {
                          free(v74);
                        }

                        *(v13 + 3) = 0;
                        if (!*(a1 + 16))
                        {
                          *(a1 + 16) = 12;
                        }

                        *a1 = &byte_1002C4510;
                        *(a1 + 8) = &byte_1002C4510;
                        v75 = &v68[strlen(v68)];
                        v76 = *(v75 + 1);
                        v68 = v75 + 1;
                      }

                      while (v76);
                    }

LABEL_173:
                    v61 = *a1;
                    v33 = *(a1 + 8);
                    if (&v33[-*a1] < 1)
                    {
                      if (!*(a1 + 16))
                      {
                        *(a1 + 16) = 7;
                      }

                      *a1 = &byte_1002C4510;
                      *(a1 + 8) = &byte_1002C4510;
                      v61 = &byte_1002C4510;
                      v33 = &byte_1002C4510;
                    }

                    if (v33 - v61 > 1 && *v61 == 58 && v61[1] == 93)
                    {
LABEL_180:
                      v34 = v61 + 2;
                      *a1 = v34;
                      goto LABEL_39;
                    }

                    if (!*(a1 + 16))
                    {
                      *(a1 + 16) = 4;
                    }

LABEL_38:
                    *a1 = &byte_1002C4510;
                    *(a1 + 8) = &byte_1002C4510;
                    v34 = &byte_1002C4510;
                    v33 = &byte_1002C4510;
                    goto LABEL_39;
                  }
                }

                else if ((_DefaultRuneLocale.__runetype[v50] & 0x100) == 0)
                {
                  goto LABEL_116;
                }

                *a1 = v49;
                --v48;
                ++v49;
                if (*(a1 + 8) + v48 <= 0)
                {
                  v51 = -v48;
                  goto LABEL_117;
                }
              }
            }
          }

          v39 = sub_100045848(a1);
          v40 = v39;
          v41 = *a1;
          v42 = *(a1 + 8);
          if (v42 - *a1 >= 2 && *v41 == 45)
          {
            v43 = v41 + 1;
            if (v41[1] != 93)
            {
              *a1 = v43;
              if (v42 - v43 >= 1 && *v43 == 45)
              {
                *a1 = v41 + 2;
                v39 = 45;
              }

              else
              {
                v39 = sub_100045848(a1);
              }

              if (v40 > v39)
              {
                goto LABEL_78;
              }
            }
          }

          do
          {
            *(*v13 + v40) |= v13[8];
            v13[9] += v40++;
          }

          while (v39 + 1 != v40);
          v34 = *a1;
          v33 = *(a1 + 8);
LABEL_39:
          v35 = v33 - v34;
        }

        while (v33 - v34 > 0);
LABEL_191:
        if (v33 - v34 >= 1 && (*a1 = v34 + 1, *v34 == 93))
        {
          if (!*(a1 + 16))
          {
            v82 = *(a1 + 56);
            if ((*(v82 + 40) & 2) != 0)
            {
              v83 = *(v82 + 16);
              if (v83 >= 1)
              {
                while (1)
                {
                  v84 = v83 - 1;
                  v85 = (v83 - 1);
                  if ((v13[8] & *(*v13 + v85)) == 0)
                  {
                    goto LABEL_197;
                  }

                  if (v83 > 0x80)
                  {
                    if (!__maskrune(v83 - 1, 0x100uLL))
                    {
                      goto LABEL_197;
                    }
                  }

                  else if ((*(&_DefaultRuneLocale.__invalid_rune + v83) & 0x100) == 0)
                  {
                    goto LABEL_197;
                  }

                  if (v84 > 0x7Fu)
                  {
                    if (__maskrune(v84, 0x8000uLL))
                    {
LABEL_207:
                      v87 = __tolower(v84);
                      if (v84 != v87)
                      {
                        goto LABEL_214;
                      }

                      goto LABEL_197;
                    }

                    v86 = __maskrune(v84, 0x1000uLL);
                  }

                  else
                  {
                    if ((_DefaultRuneLocale.__runetype[v85] & 0x8000) != 0)
                    {
                      goto LABEL_207;
                    }

                    v86 = _DefaultRuneLocale.__runetype[v85] & 0x1000;
                  }

                  if (v86)
                  {
                    v87 = __toupper(v84);
                    if (v84 != v87)
                    {
                      goto LABEL_214;
                    }
                  }

                  else
                  {
                    v87 = v84;
                    if (v84 != v84)
                    {
LABEL_214:
                      *(*v13 + v87) |= v13[8];
                      v13[9] += v87;
                    }
                  }

LABEL_197:
                  v83 = v84;
                  if (v84 + 1 <= 1)
                  {
                    v82 = *(a1 + 56);
                    break;
                  }
                }
              }
            }

            if (!v15)
            {
              v96 = *(v82 + 16);
              if (v96 >= 1)
              {
                v97 = v96 + 1;
                do
                {
                  while (1)
                  {
                    v98 = v97 - 2;
                    v99 = *v13;
                    v100 = (v97 - 2);
                    v101 = *(*v13 + v100);
                    v102 = v13[8];
                    if ((v102 & v101) == 0)
                    {
                      break;
                    }

                    *(v99 + v100) = v101 & ~v102;
                    v13[9] -= v98;
                    if (--v97 <= 1)
                    {
                      goto LABEL_233;
                    }
                  }

                  *(v99 + v100) = v102 | v101;
                  v13[9] += v98;
                  --v97;
                }

                while (v97 > 1);
LABEL_233:
                v82 = *(a1 + 56);
              }

              if ((*(v82 + 40) & 8) != 0)
              {
                *(*v13 + 10) &= ~v13[8];
                v13[9] -= 10;
                v82 = *(a1 + 56);
              }
            }

            v103 = *(v82 + 16);
            v104 = v103;
            if (!v103)
            {
              v109 = *(v82 + 20);
              if (v109 >= 1)
              {
                v110 = *(v82 + 24);
                v111 = &v110[32 * v109];
                while (v110 == v13 || v110[9] != v13[9])
                {
                  v110 += 32;
                  if (v110 >= v111)
                  {
                    goto LABEL_285;
                  }
                }

                goto LABEL_279;
              }

LABEL_285:
              v110 = v13;
              goto LABEL_286;
            }

            v105 = 0;
            v106 = 0;
            v107 = *v13;
            v108 = v13[8];
            if (v104 >= 4 && (v104 - 257) >= 0xFFFFFFFFFFFFFF00)
            {
              if (v104 < 0x20)
              {
                v106 = 0;
                v105 = 0;
LABEL_259:
                v131 = v105;
                v105 = v104 & 0x1FC;
                v132 = v106;
                v133 = vdup_n_s16(v108);
                v134.i64[0] = 0x100000001;
                v134.i64[1] = 0x100000001;
                do
                {
                  a5.i32[0] = *(v107 + (v131 & 0xFC));
                  a5 = vandq_s8(vmovl_u16(vtst_s16(*&vmovl_u8(*a5.i8), v133)), v134);
                  v132 = vaddq_s32(v132, a5);
                  v131 += 4;
                }

                while (v105 != v131);
                v106 = vaddvq_s32(v132);
                if (v105 == v104)
                {
                  goto LABEL_265;
                }

                goto LABEL_262;
              }

              v113 = 0;
              v114 = vdupq_n_s8(v108);
              v115 = 0uLL;
              v116.i64[0] = 0x100000001;
              v116.i64[1] = 0x100000001;
              v105 = v104 & 0x1E0;
              v117 = 0uLL;
              v118 = 0uLL;
              v119 = 0uLL;
              v120 = 0uLL;
              v121 = 0uLL;
              v122 = 0uLL;
              v123 = 0uLL;
              do
              {
                v124 = (v107 + (v113 & 0xE0));
                v125 = vtstq_s8(*v124, v114);
                v126 = vmovl_u8(*v125.i8);
                v127 = vmovl_high_u8(v125);
                v128 = vtstq_s8(v124[1], v114);
                v129 = vmovl_u8(*v128.i8);
                v130 = vmovl_high_u8(v128);
                v119 = vaddq_s32(v119, vandq_s8(vmovl_high_u16(v127), v116));
                v118 = vaddq_s32(v118, vandq_s8(vmovl_u16(*v127.i8), v116));
                v117 = vaddq_s32(v117, vandq_s8(vmovl_high_u16(v126), v116));
                v115 = vaddq_s32(v115, vandq_s8(vmovl_u16(*v126.i8), v116));
                v123 = vaddq_s32(v123, vandq_s8(vmovl_high_u16(v130), v116));
                v122 = vaddq_s32(v122, vandq_s8(vmovl_u16(*v130.i8), v116));
                v121 = vaddq_s32(v121, vandq_s8(vmovl_high_u16(v129), v116));
                v120 = vaddq_s32(v120, vandq_s8(vmovl_u16(*v129.i8), v116));
                v113 += 32;
              }

              while (v105 != v113);
              a5 = vaddq_s32(v122, v118);
              v106 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v120, v115), a5), vaddq_s32(vaddq_s32(v121, v117), vaddq_s32(v123, v119))));
              if (v105 == v104)
              {
                goto LABEL_265;
              }

              if ((v104 & 0x1C) != 0)
              {
                goto LABEL_259;
              }
            }

            do
            {
LABEL_262:
              if ((*(v107 + v105) & v108) != 0)
              {
                ++v106;
              }

              ++v105;
            }

            while (v104 != v105);
LABEL_265:
            if (v106 == 1)
            {
              v135 = 0;
              v136 = 0;
              while ((*(v107 + v136) & v108) == 0)
              {
                ++v136;
                v135 += 0x1000000;
                if (v104 == v136)
                {
                  v137 = 0;
                  goto LABEL_293;
                }
              }

              v137 = v135 >> 24;
LABEL_293:
              v145 = *(v82 + 88);
              if ((*(v82 + 40) & 2) == 0)
              {
                goto LABEL_310;
              }

              if (v137 > 0x7Fu)
              {
                if (!__maskrune(v137, 0x100uLL))
                {
                  goto LABEL_310;
                }

                if (!__maskrune(v137, 0x8000uLL))
                {
                  v147 = __maskrune(v137, 0x1000uLL);
LABEL_307:
                  v148 = v137;
                  if (v147)
                  {
                    v148 = __toupper(v137);
                  }

LABEL_309:
                  if (v137 != v148)
                  {
                    sub_100045A58(a1, v137);
                    v157 = *(a1 + 56);
                    v153 = *(v157 + 16);
                    v90 = *(v157 + 24) + 32 * *(v157 + 20);
                    if (!v153)
                    {
LABEL_221:
                      if ((v90 - 32) == v13)
                      {
                        --*(*(a1 + 56) + 20);
                      }

                      return;
                    }

LABEL_325:
                    for (i = 0; i != v153; ++i)
                    {
                      *(*v13 + i) &= ~v13[8];
                      v13[9] -= i;
                    }

                    goto LABEL_221;
                  }

LABEL_310:
                  if (*(a1 + 16))
                  {
                    if (*(v145 + v137))
                    {
                      goto LABEL_312;
                    }

                    goto LABEL_324;
                  }

                  v154 = *(a1 + 32);
                  if (*(a1 + 40) >= v154)
                  {
                    v155 = (v154 + 1) / 2;
                    v156 = ((v154 + 1 + ((v154 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v155;
                    if (v154 < v156)
                    {
                      if (v156 >> 61)
                      {
LABEL_317:
                        *(a1 + 16) = 12;
LABEL_318:
                        *a1 = &byte_1002C4510;
                        *(a1 + 8) = &byte_1002C4510;
                        goto LABEL_323;
                      }

                      v158 = malloc_type_realloc(*(a1 + 24), 24 * v155, 0x100004000313F17uLL);
                      if (!v158)
                      {
                        if (*(a1 + 16))
                        {
                          goto LABEL_318;
                        }

                        goto LABEL_317;
                      }

                      *(a1 + 24) = v158;
                      *(a1 + 32) = v156;
                    }
                  }

LABEL_323:
                  v159 = *(a1 + 24);
                  v160 = *(a1 + 40);
                  *(a1 + 40) = v160 + 1;
                  *(v159 + 8 * v160) = v137 | 0x10000000u;
                  if (*(v145 + v137))
                  {
LABEL_312:
                    v152 = *(a1 + 56);
                    v153 = *(v152 + 16);
                    v90 = *(v152 + 24) + 32 * *(v152 + 20);
                    if (!v153)
                    {
                      goto LABEL_221;
                    }

                    goto LABEL_325;
                  }

LABEL_324:
                  v161 = *(a1 + 56);
                  v162 = *(v161 + 84);
                  *(v161 + 84) = v162 + 1;
                  *(v145 + v137) = v162;
                  v163 = *(a1 + 56);
                  v153 = *(v163 + 16);
                  v90 = *(v163 + 24) + 32 * *(v163 + 20);
                  if (!v153)
                  {
                    goto LABEL_221;
                  }

                  goto LABEL_325;
                }
              }

              else
              {
                v146 = _DefaultRuneLocale.__runetype[v137];
                if ((v146 & 0x100) == 0)
                {
                  goto LABEL_310;
                }

                if ((v146 & 0x8000) == 0)
                {
                  v147 = _DefaultRuneLocale.__runetype[v137] & 0x1000;
                  goto LABEL_307;
                }
              }

              v148 = __tolower(v137);
              goto LABEL_309;
            }

            v138 = *(v82 + 20);
            if (v138 >= 1)
            {
              v110 = *(v82 + 24);
              v111 = &v110[32 * v138];
              while (1)
              {
                if (v110 != v13 && v110[9] == v13[9])
                {
                  v139 = 0;
                  while (((*(*v110 + v139) & v110[8]) != 0) != ((*(*v13 + v139) & v13[8]) == 0))
                  {
                    if (v104 == ++v139)
                    {
                      goto LABEL_279;
                    }
                  }

                  if (v104 == v139)
                  {
                    break;
                  }
                }

                v110 += 32;
                if (v110 >= v111)
                {
                  goto LABEL_285;
                }
              }

LABEL_279:
              if (v104)
              {
                for (j = 0; j != v104; ++j)
                {
                  *(*v13 + j) &= ~v13[8];
                  v13[9] -= j;
                }

                v82 = *(a1 + 56);
              }

              if (v111 - 32 == v13)
              {
                --*(v82 + 20);
              }

LABEL_286:
              if (*(a1 + 16))
              {
                return;
              }

              v141 = (&v110[-*(v82 + 24)] >> 5);
              v142 = *(a1 + 32);
              if (*(a1 + 40) >= v142)
              {
                v143 = (v142 + 1) / 2;
                v144 = ((v142 + 1 + ((v142 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v143;
                if (v142 < v144)
                {
                  if (v144 >> 61)
                  {
                    goto LABEL_290;
                  }

                  v149 = malloc_type_realloc(*(a1 + 24), 24 * v143, 0x100004000313F17uLL);
                  if (v149)
                  {
                    *(a1 + 24) = v149;
                    *(a1 + 32) = v144;
                    goto LABEL_305;
                  }

                  if (!*(a1 + 16))
                  {
LABEL_290:
                    *(a1 + 16) = 12;
                  }

                  *a1 = &byte_1002C4510;
                  *(a1 + 8) = &byte_1002C4510;
                }
              }

LABEL_305:
              v150 = *(a1 + 24);
              v151 = *(a1 + 40);
              *(a1 + 40) = v151 + 1;
              *(v150 + 8 * v151) = v141 | 0x30000000;
              return;
            }

            goto LABEL_285;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 7;
          }

          *a1 = &byte_1002C4510;
          *(a1 + 8) = &byte_1002C4510;
        }

        v88 = *(a1 + 56);
        v89 = *(v88 + 16);
        v90 = *(v88 + 24) + 32 * *(v88 + 20);
        if (v89)
        {
          for (k = 0; k != v89; ++k)
          {
            *(*v13 + k) &= ~v13[8];
            v13[9] -= k;
          }
        }

        goto LABEL_221;
      }

      v19 = *v17;
    }

    if (v19 == 93)
    {
      v20 = 93;
    }

    else
    {
      if (v19 != 45)
      {
        goto LABEL_34;
      }

      v20 = 45;
    }

    *a1 = v17 + 1;
    *(v14 + v20) |= v16;
    v13[9] += v19;
LABEL_34:
    v34 = *a1;
    v33 = *(a1 + 8);
    v35 = &v33[-*a1];
    if (v35 < 1)
    {
      goto LABEL_191;
    }

    goto LABEL_35;
  }

LABEL_187:
  free(*(v7 + 24));
  v81 = *(a1 + 56);
  *(v81 + 24) = 0;
  free(*(v81 + 32));
  *(*(a1 + 56) + 32) = 0;
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 12;
  }

  *a1 = &byte_1002C4510;
  *(a1 + 8) = &byte_1002C4510;
}

__n128 sub_100044CC4(uint64_t a1, int a2, double a3, double a4, double a5, int32x4_t a6)
{
  v8 = *(a1 + 56);
  v9 = *(v8 + 88);
  v10 = a2;
  if ((*(v8 + 40) & 2) == 0)
  {
    goto LABEL_13;
  }

  if (a2 > 0x7Fu)
  {
    if (!__maskrune(a2, 0x100uLL))
    {
      goto LABEL_13;
    }

    if (!__maskrune(v10, 0x8000uLL))
    {
      v14 = __maskrune(v10, 0x1000uLL);
      v12 = a2;
      if (!v14)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    v12 = __tolower(v10);
    goto LABEL_12;
  }

  v11 = _DefaultRuneLocale.__runetype[a2];
  if ((v11 & 0x100) == 0)
  {
    goto LABEL_13;
  }

  if ((v11 & 0x8000) != 0)
  {
    goto LABEL_9;
  }

  v12 = a2;
  if ((v11 & 0x1000) != 0)
  {
LABEL_11:
    v12 = __toupper(v10);
  }

LABEL_12:
  if (a2 != v12)
  {
    v26 = a2;
    v27 = 93;
    v23 = *a1;
    v25 = *a1;
    *a1 = &v26;
    *(a1 + 8) = &v27 + 1;
    sub_1000438C0(a1, v23.n128_f64[0], a4, a5, a6);
    result = v25;
    *a1 = v25;
    return result;
  }

LABEL_13:
  if (*(a1 + 16))
  {
    if (*(v9 + a2))
    {
      return result;
    }

LABEL_21:
    v21 = *(a1 + 56);
    v22 = *(v21 + 84);
    *(v21 + 84) = v22 + 1;
    *(v9 + a2) = v22;
    return result;
  }

  v15 = *(a1 + 32);
  v16 = (v15 + 1) / 2;
  v17 = ((v15 + 1 + ((v15 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v16;
  if (*(a1 + 40) >= v15 && v15 < v17)
  {
    if (v17 >> 61)
    {
      goto LABEL_24;
    }

    v24 = malloc_type_realloc(*(a1 + 24), 24 * v16, 0x100004000313F17uLL);
    if (v24)
    {
      *(a1 + 24) = v24;
      *(a1 + 32) = v17;
      goto LABEL_20;
    }

    if (!*(a1 + 16))
    {
LABEL_24:
      *(a1 + 16) = 12;
    }

    *a1 = &byte_1002C4510;
    *(a1 + 8) = &byte_1002C4510;
  }

LABEL_20:
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  *(a1 + 40) = v20 + 1;
  *(v19 + 8 * v20) = v10 | 0x10000000u;
  if (!*(v9 + a2))
  {
    goto LABEL_21;
  }

  return result;
}

_DWORD *sub_100044EB8(_DWORD *result, uint64_t a2, int a3, uint64_t a4)
{
  if (result[4])
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 5);
LABEL_3:
  while (2)
  {
    while (1)
    {
      v8 = a4 == 256 ? 3 : 2;
      v9 = a4 >= 2 ? v8 : a4;
      v10 = a3 - 1;
      v11 = a2;
      while (1)
      {
        v13 = v11;
        v11 = v7;
        if (a3 == 256)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        if (a3 < 2)
        {
          v14 = a3;
        }

        v15 = v9 + 8 * v14;
        if (v15 != 19)
        {
          if (v15 <= 8)
          {
            if ((v15 - 1) >= 3)
            {
              if (v15)
              {
                goto LABEL_127;
              }

              v11 = v13;
LABEL_114:
              v6[5] = v11;
              return result;
            }

LABEL_106:
            sub_100043554(v6, 2013265920, v11 - v13 + 1, v13);
            result = sub_100044EB8(v6, v13 + 1, 1, a4);
            if (*(v6 + 4))
            {
              return result;
            }

            v47 = v6[4];
            v46 = v6[5];
            v48 = v46 - v13;
            if (v46 < v47 || (v49 = (v47 + 1) / 2, v50 = ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v49, v47 >= v50))
            {
              result = v6[3];
              v52 = v6[5];
              v6[5] = v52 + 1;
              *&result[2 * v52] = v48 | 0x80000000;
            }

            else
            {
              if (v50 >> 61)
              {
LABEL_110:
                *(v6 + 4) = 12;
LABEL_111:
                *v6 = &byte_1002C4510;
                v6[1] = &byte_1002C4510;
                v51 = v48 | 0x80000000;
LABEL_148:
                v69 = v6[3];
                v70 = v6[5];
                v6[5] = v70 + 1;
                *(v69 + 8 * v70) = v51;
                return result;
              }

              result = malloc_type_realloc(v6[3], 24 * v49, 0x100004000313F17uLL);
              if (!result)
              {
                if (*(v6 + 4))
                {
                  goto LABEL_111;
                }

                goto LABEL_110;
              }

              v6[3] = result;
              v6[4] = v50;
              v60 = *(v6 + 4);
              v61 = v6[5];
              v6[5] = v61 + 1;
              *&result[2 * v61] = v48 | 0x80000000;
              if (v60)
              {
                return result;
              }
            }

            *&result[2 * v13] = *&result[2 * v13] & 0xF8000000 | (v6[5] - v13);
            v53 = v6[4];
            if (v6[5] < v53 || (v54 = (v53 + 1) / 2, v55 = ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v54, v53 >= v55))
            {
              v56 = v6[5];
              v6[5] = v56 + 1;
              *&result[2 * v56] = 2281701376;
            }

            else
            {
              if (v55 >> 61)
              {
                *(v6 + 4) = 12;
                *v6 = &byte_1002C4510;
                v6[1] = &byte_1002C4510;
LABEL_152:
                v71 = v6[5];
                v6[5] = v71 + 1;
                v72 = 2281701376;
LABEL_157:
                *&result[2 * v71] = v72;
                return result;
              }

              result = malloc_type_realloc(result, 24 * v54, 0x100004000313F17uLL);
              if (!result)
              {
                if (!*(v6 + 4))
                {
                  *(v6 + 4) = 12;
                }

                *v6 = &byte_1002C4510;
                v6[1] = &byte_1002C4510;
                result = v6[3];
                goto LABEL_152;
              }

              v6[3] = result;
              v6[4] = v55;
              v62 = *(v6 + 4);
              v63 = v6[5];
              v6[5] = v63 + 1;
              *&result[2 * v63] = 2281701376;
              if (v62)
              {
                return result;
              }
            }

            *&result[2 * v6[5] - 2] = *&result[2 * v6[5] - 2] & 0xF8000000 | 1;
            v57 = v6[4];
            if (v6[5] >= v57)
            {
              v58 = (v57 + 1) / 2;
              v59 = ((v57 + 1 + ((v57 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v58;
              if (v57 < v59)
              {
                if (v59 >> 61)
                {
                  *(v6 + 4) = 12;
                  *v6 = &byte_1002C4510;
                  v6[1] = &byte_1002C4510;
                }

                else
                {
                  result = malloc_type_realloc(result, 24 * v58, 0x100004000313F17uLL);
                  if (result)
                  {
                    v6[3] = result;
                    v6[4] = v59;
                  }

                  else
                  {
                    if (!*(v6 + 4))
                    {
                      *(v6 + 4) = 12;
                    }

                    *v6 = &byte_1002C4510;
                    v6[1] = &byte_1002C4510;
                    result = v6[3];
                  }
                }
              }
            }

            v71 = v6[5];
            v6[5] = v71 + 1;
            v72 = 2415919106;
            goto LABEL_157;
          }

          if (v15 <= 10)
          {
            if (v15 == 9)
            {
              return result;
            }

            goto LABEL_29;
          }

          if (v15 == 11)
          {
LABEL_135:
            result = sub_100043554(v6, 1207959552, v11 - v13 + 1, v13);
            if (*(v6 + 4))
            {
              return result;
            }

            v65 = v6[4];
            v64 = v6[5];
            v66 = v64 - v13;
            if (v64 < v65)
            {
              goto LABEL_147;
            }

            v67 = (v65 + 1) / 2;
            v68 = ((v65 + 1 + ((v65 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67;
            if (v65 >= v68)
            {
              goto LABEL_147;
            }

            if (v68 >> 61)
            {
              goto LABEL_139;
            }

            result = malloc_type_realloc(v6[3], 24 * v67, 0x100004000313F17uLL);
            if (result)
            {
              v6[3] = result;
              v6[4] = v68;
              goto LABEL_147;
            }

            if (!*(v6 + 4))
            {
LABEL_139:
              *(v6 + 4) = 12;
            }

            *v6 = &byte_1002C4510;
            v6[1] = &byte_1002C4510;
LABEL_147:
            v51 = v66 | 0x50000000;
            goto LABEL_148;
          }

          if (v15 != 18)
          {
            goto LABEL_127;
          }

          v7 = v11;
          v26 = v11 - v13;
          if (v11 == v13)
          {
            goto LABEL_64;
          }

          if (v26 >= 1)
          {
            v27 = v6[4] + v26;
            if (v27 >> 61)
            {
              goto LABEL_50;
            }

            v33 = malloc_type_realloc(v6[3], 8 * v27, 0x100004000313F17uLL);
            if (v33)
            {
              v6[3] = v33;
              v6[4] = v27;
              goto LABEL_63;
            }

            if (!*(v6 + 4))
            {
LABEL_50:
              *(v6 + 4) = 12;
            }

            *v6 = &byte_1002C4510;
            v6[1] = &byte_1002C4510;
          }

LABEL_63:
          result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13), 8 * v26);
          v7 = v6[5] + v26;
          v6[5] = v7;
LABEL_64:
          --a3;
          a2 = v11;
          a4 = (a4 - 1);
          if (!*(v6 + 4))
          {
            goto LABEL_3;
          }

          return result;
        }

        v16 = v11 - v13;
        if (v11 == v13)
        {
          break;
        }

        if (v16 >= 1)
        {
          v17 = v6[4] + v16;
          if (v17 >> 61)
          {
            goto LABEL_22;
          }

          v12 = malloc_type_realloc(v6[3], 8 * v17, 0x100004000313F17uLL);
          if (!v12)
          {
            if (!*(v6 + 4))
            {
LABEL_22:
              *(v6 + 4) = 12;
            }

            *v6 = &byte_1002C4510;
            v6[1] = &byte_1002C4510;
            goto LABEL_12;
          }

          v6[3] = v12;
          v6[4] = v17;
        }

LABEL_12:
        result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13), 8 * v16);
        v7 = v6[5] + v16;
        v6[5] = v7;
        --a3;
        --v10;
        if (*(v6 + 4))
        {
          return result;
        }
      }

      do
      {
        if (v10 == 256)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        if (v10 + 1 >= 3)
        {
          v24 = v23;
        }

        else
        {
          v24 = v10;
        }

        v25 = v9 + 8 * v24;
        --v10;
      }

      while (v25 == 19);
      if (v25 <= 8)
      {
        v13 = v11;
        if ((v25 - 1) >= 3)
        {
          if (v25)
          {
            goto LABEL_127;
          }

          goto LABEL_114;
        }

        goto LABEL_106;
      }

      if (v25 > 10)
      {
        if (v25 != 11)
        {
          if (v25 == 18)
          {
            a3 = v10 + 1;
            v7 = v11;
            goto LABEL_64;
          }

LABEL_127:
          *(v6 + 4) = 15;
          *v6 = &byte_1002C4510;
          v6[1] = &byte_1002C4510;
          return result;
        }

        v13 = v11;
        goto LABEL_135;
      }

      if (v25 == 9)
      {
        return result;
      }

      v13 = v11;
LABEL_29:
      v18 = v11 - v13;
      result = sub_100043554(v6, 2013265920, v11 - v13 + 1, v13);
      a2 = v6[5];
      if (*(v6 + 4))
      {
        goto LABEL_83;
      }

      v19 = v6[4];
      if (a2 < v19 || (v20 = (v19 + 1) / 2, v21 = ((v19 + 1 + ((v19 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v20, v19 >= v21))
      {
        v22 = 1;
      }

      else
      {
        if (v21 >> 61)
        {
          v22 = 0;
          *(v6 + 4) = 12;
          goto LABEL_98;
        }

        v38 = v6[5];
        v39 = malloc_type_realloc(v6[3], 24 * v20, 0x100004000313F17uLL);
        if (v39)
        {
          v6[3] = v39;
          v6[4] = v21;
          v22 = *(v6 + 4) == 0;
          a2 = v38;
        }

        else
        {
          a2 = v38;
          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          v22 = 0;
LABEL_98:
          *v6 = &byte_1002C4510;
          v6[1] = &byte_1002C4510;
        }
      }

      result = v6[3];
      v28 = v6[5];
      v6[5] = v28 + 1;
      *&result[2 * v28] = (a2 - v13) | 0x80000000;
      a2 = v6[5];
      if (!v22)
      {
        goto LABEL_83;
      }

      *&result[2 * v13] = *&result[2 * v13] & 0xF8000000 | (a2 - v13);
      v29 = v6[4];
      if (v6[5] < v29 || (v30 = (v29 + 1) / 2, v31 = ((v29 + 1 + ((v29 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v30, v29 >= v31))
      {
        v34 = v6[5];
        v6[5] = v34 + 1;
        *&result[2 * v34] = 2281701376;
        a2 = v6[5];
LABEL_67:
        *&result[2 * a2 - 2] = *&result[2 * a2 - 2] & 0xF8000000 | 1;
        v35 = v6[4];
        if (v6[5] < v35 || (v36 = (v35 + 1) / 2, v37 = ((v35 + 1 + ((v35 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v36, v35 >= v37))
        {
LABEL_81:
          v32 = 2415919106;
        }

        else
        {
          if (v37 >> 61)
          {
            *(v6 + 4) = 12;
            v32 = 2415919106;
LABEL_71:
            *v6 = &byte_1002C4510;
            v6[1] = &byte_1002C4510;
            goto LABEL_82;
          }

          result = malloc_type_realloc(result, 24 * v36, 0x100004000313F17uLL);
          if (result)
          {
            v6[3] = result;
            v6[4] = v37;
            goto LABEL_81;
          }

          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          *v6 = &byte_1002C4510;
          v6[1] = &byte_1002C4510;
          v32 = 2415919106;
          result = v6[3];
        }

LABEL_82:
        v42 = v6[5];
        v6[5] = v42 + 1;
        *&result[2 * v42] = v32;
        a2 = v6[5];
        goto LABEL_83;
      }

      if (v31 >> 61)
      {
        *(v6 + 4) = 12;
        v32 = 2281701376;
        goto LABEL_71;
      }

      result = malloc_type_realloc(result, 24 * v30, 0x100004000313F17uLL);
      if (!result)
      {
        if (!*(v6 + 4))
        {
          *(v6 + 4) = 12;
        }

        *v6 = &byte_1002C4510;
        v6[1] = &byte_1002C4510;
        v32 = 2281701376;
        result = v6[3];
        goto LABEL_82;
      }

      v6[3] = result;
      v6[4] = v31;
      v40 = *(v6 + 4);
      v41 = v6[5];
      v6[5] = v41 + 1;
      *&result[2 * v41] = 2281701376;
      a2 = v6[5];
      if (!v40)
      {
        goto LABEL_67;
      }

LABEL_83:
      if (v11 == v13)
      {
        break;
      }

      v43 = a2;
      if (v18 >= 1)
      {
        v44 = v6[4] + v18;
        if (v44 >> 61 || (v45 = malloc_type_realloc(v6[3], 8 * v44, 0x100004000313F17uLL)) == 0)
        {
          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          *v6 = &byte_1002C4510;
          v6[1] = &byte_1002C4510;
        }

        else
        {
          v6[3] = v45;
          v6[4] = v44;
        }
      }

      result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13 + 8), 8 * v18);
      v7 = v6[5] + v18;
      v6[5] = v7;
      a3 = 1;
      a2 = v43;
      a4 = (a4 - 1);
      if (*(v6 + 4))
      {
        return result;
      }
    }

    a3 = 1;
    v7 = a2;
    a4 = (a4 - 1);
    if (!*(v6 + 4))
    {
      continue;
    }

    return result;
  }
}